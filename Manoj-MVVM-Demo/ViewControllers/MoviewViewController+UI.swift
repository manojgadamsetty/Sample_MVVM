//
//  MoviewViewController+UI.swift
//  Manoj-MVVM-Demo
//
//  Created by Manoj Gadamsetty on 03/08/20.
//  Copyright © 2020 Manoj Gadamsetty. All rights reserved.
//

import UIKit

//MARK: Prepare UI

extension MovieViewController {
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func prepareUI() {
        prepareTableView()
    }
  
    func prepareTableView() {
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0.0).isActive = true
        tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0.0).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0.0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0.0).isActive = true
        
        
        view.backgroundColor = .white
        tableView.separatorStyle   = .none
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 160
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(UINib(nibName: MovieViewCell.identifier, bundle: nil), forCellReuseIdentifier: MovieViewCell.identifier)
        
    }
}
