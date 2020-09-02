//
//  MovieAPIService.swift
//  Manoj-MVVM-Demo
//
//  Created by Manoj Gadamsetty on 03/08/20.
//  Copyright © 2020 Manoj Gadamsetty. All rights reserved.
//

import UIKit

class MovieAPIService: NSObject, Requestable {

    static let instance = MovieAPIService()
    public var movies: [Movie]?

    // Prepare the service
    func prepare(callback: @escaping([Movie]?,Bool) -> Void) {
    
        let filePath = Bundle.main.url(forResource: "movie", withExtension: "json")
        let originalContents = try? Data(contentsOf: filePath!)
        let movies = try? JSONDecoder().decode([Movie].self, from: originalContents!)
        callback(movies!, false)
    }
    
    func fetchMovies(callback: @escaping Handler) {
        request(method: .get, url: Domain.baseUrl() + APIEndpoint.movies) { (result) in
           callback(result)
        }
    }
}
