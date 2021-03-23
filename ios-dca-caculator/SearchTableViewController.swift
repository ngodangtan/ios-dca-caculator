//
//  ViewController.swift
//  ios-dca-caculator
//
//  Created by Ngo Dang tan on 23/03/2021.
//

import UIKit

class SearchTableViewController: UITableViewController {
    private lazy var searchController : UISearchController = {
        let sc = UISearchController(searchResultsController: nil)
        sc.searchResultsUpdater = self
        sc.delegate = self
        sc.obscuresBackgroundDuringPresentation = false
        sc.searchBar.placeholder = "Enter a company name or symbol"
        sc.searchBar.autocapitalizationType = .allCharacters
        return sc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupNavigationBar()
        
    }
    
    private func setupNavigationBar(){
        navigationItem.searchController = searchController
    }

}
extension SearchTableViewController: UISearchResultsUpdating, UISearchControllerDelegate {
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    
}
