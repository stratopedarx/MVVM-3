//
//  NetworkManager.swift
//  MVVM-3
//
//  Created by Sergey Lobanov on 22.10.2021.
//

import Foundation

class NetworkManager: NSObject {
    // умеет получить кино
    func fetchMovies(comletion: ([String]) -> ()) {
        comletion(["Movie 1", "Movie 2", "Movie 3"])
    }
}
