//
//  MovieViewController.swift
//  Manoj-MVVM-Demo
//
//  Created by Manoj Gadamsetty on 03/08/20.
//  Copyright © 2020 Manoj Gadamsetty. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {
    
    //MARK: Internal Properties
    
    let tableView = UITableView(frame: .zero, style: .plain)
    
    let viewModel = MovieViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        prepareUI()
        prepareViewModelObserver()
        setData()
        fetchMovieList()
    }
    
    func setData() {
        navigationItem.title = "Movie"
    }
    
}

//MARK: Action

extension MovieViewController {
    
    @objc func filterButtonTapped(_ button: UIButton) {
         viewModel.movies = viewModel.movies?.sortByName()
    }
}
//MARK: Private Methods

extension MovieViewController {
    
    func fetchMovieList() {
        viewModel.fetchMovieList()
    }
    
    func prepareViewModelObserver() {
        self.viewModel.movieDidChanges = { (finished, error) in
            if !error {
                self.reloadTableView()
            }
        }
    }
    
    func reloadTableView() {
        self.tableView.reloadData()
    }
}

// MARK: - UITableView Delegate And Datasource Methods

extension MovieViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.movies!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell: MovieViewCell = tableView.dequeueReusableCell(withIdentifier: "MovieViewCell", for: indexPath as IndexPath) as? MovieViewCell else {
            fatalError("AddressCell cell is not found")
        }
        
        let movie = viewModel.movies![indexPath.row]
       cell.movieItem = movie
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
