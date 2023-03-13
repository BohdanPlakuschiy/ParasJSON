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
    let networkService = NetworkService()
    var seerchResponce: Welcome? = nil
    var xx = [WelcomeValue]()
    private var timer: Timer?
    
    var ident = "Cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Seach"

        createTableView()
        setupSearchController()
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
        return xx.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ident, for: indexPath)
        
        let item = xx[indexPath.row].self
        cell.textLabel?.text = item.avg
        
        return cell
    }
    
    
}

// MARK: -
extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        let urlString = "https://api.exmoney.com/v1/ticker\(searchText)"
        
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false, block: { (_) in
            self.networkService.request(urlString: urlString) { [weak self] (result) in
                switch result {
                case .success(let currency):
                    self?.xx = Array(currency.values)
                    self?.seerchResponce = currency
                    self?.tableViewController.reloadData()
                case .failure(let error):
                    print("error", error)
                }
            }
        })
     
    }
}

