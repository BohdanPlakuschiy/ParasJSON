//
//  NetworkService.swift
//  JSON
//
//  Created by Богдан Плакущий on 13.03.2023.
//

import Foundation

class NetworkService {
    func request(urlString: String, completion: @escaping (Result<Welcome, Error>) -> Void) {
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
                    let currency = try JSONDecoder().decode(Welcome.self , from: data)
                    completion(.success(currency))
                } catch let jsonError {
                    print("Failed to decode Json", jsonError)
                    completion(.failure(jsonError))
                }
                
            }
        }.resume()
    }
}
