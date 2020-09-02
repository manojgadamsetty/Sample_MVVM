//
//  ArrayExtension.swift
//  Manoj-MVVM-Demo
//
//  Created by Manoj Gadamsetty on 02/09/20.
//  Copyright © 2020 Manoj Gadamsetty. All rights reserved.
//

import Foundation

// MARK: Array extension

extension Array where Element == Movie {
    
    func matching(_ query: String) -> [Movie] {
        return self.filter({ $0.title == query || $0.original_title == query})
    }
    
    func sortByName() -> [Movie] {
        return self.sorted(by: { (first, next) -> Bool in
            return first.title?.compare(next.title!) == .orderedAscending
        })
    }
}
