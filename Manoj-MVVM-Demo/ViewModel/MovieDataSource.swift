//
//  MovieDataSource.swift
//  Manoj-MVVM-Demo
//
//  Created by Manoj Gadamsetty on 03/08/20.
//  Copyright © 2020 Manoj Gadamsetty. All rights reserved.
//

import UIKit

protocol MovieDataSourceProtocol: class {
    
}

class MovieDataSource: NSObject {
    
    //weak var parentView: MovieDataSourceProtocol?
    weak var parentView: MovieViewController?
    
     init(attachView: MovieViewController) {
        super.init()
        self.parentView = attachView
        attachView.tableView.delegate = self
        attachView.tableView.dataSource = self
    }
    
}

// MARK: - UITableView Delegate And Datasource Methods

extension MovieDataSource: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.parentView!.viewModel.movies!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell : UITableViewCell!
        cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cellIdentifier")
        }
        cell.textLabel?.text = self.parentView!.viewModel.movies![indexPath.row].title ?? ""
        
        return cell
    }
}
