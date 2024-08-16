//
//  NetworkRequest.swift
//  StreamLand
//
//  Created by Vaibhav on 16/08/24.
//

import Foundation

struct Constants {
    
    static let API_KEY_TMDB = "806b888919dfcd264c583785be512d26"
    static let baseUrlTmdb = "https://api.themoviedb.org"
}

enum APIError: Error {
    case failedToGetData
}

class NetworkRequest {
    
    static let sharedNetwork = NetworkRequest ()
    
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        
        guard let url = URL(string: "\(Constants.baseUrlTmdb)/3/trending/movie/day?api_key=\(Constants.API_KEY_TMDB)") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let data = data, let _ = response, error == nil  else {
                return
            }
            
            do {
                let result = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                completion(.success(result.results))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
  
