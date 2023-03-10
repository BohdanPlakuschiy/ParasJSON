//
//  ViewController.swift
//  JSON
//
//  Created by Богдан Плакущий on 10.03.2023.
//
import UIKit

class ViewController: UIViewController {
    
    var tableViewController = UITableView()
    let searchController = UISearchController(searchResultsController: nil)
    
    var array = ["dea","dadadda", "efsadf"]
    var ident = "Cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Seach"

        createTableView()
        setupSearchController()
        
        let urlString = "https://api.exmoney.com/v1/ticker"
        request(urlString: urlString) { (result) in
            switch result {
                
            case .success(let currency): break
            case .failure(let error):
                <#code#>
            }
            }
        }
        
    
    
    func request(urlString: String, completion: @escaping (Result<Currency, Error>) -> Void) {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, responce, error) in
            DispatchQueue.main.async {
                if let error = error {
                    print("Some error")
                    completion(.failure(error))
                    return
                }
                guard let data = data else { return }
                do {
                    let currency = try JSONDecoder().decode(Currency.self , from: data)
                    completion(.success(currency))
                } catch let jsonError {
                    print("Failed to decode Json", jsonError)
                    completion(.failure(jsonError))
                }
                
            }
        }.resume()
    }

    
    func setupSearchController() {
        self.navigationItem.searchController = searchController
        searchController.searchBar.delegate = self
        navigationController?.navigationBar.prefersLargeTitles = true
        searchController.obscuresBackgroundDuringPresentation = false
    }
    
    func createTableView() {
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        tableViewController = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        tableViewController.register(UITableViewCell.self, forCellReuseIdentifier: ident)
        tableViewController.delegate = self
        tableViewController.dataSource = self
        self.view.addSubview(tableViewController)
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ident, for: indexPath)
        
        let item = array[indexPath.row]
        cell.textLabel?.text = item
        
        return cell
    }
    
    
}

// MARK: -
extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchBar)
    }
}
