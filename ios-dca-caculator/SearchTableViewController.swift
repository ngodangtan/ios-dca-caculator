//
//  ViewController.swift
//  ios-dca-caculator
//
//  Created by Ngo Dang tan on 23/03/2021.
//

import UIKit

class SearchTableViewController: UITableViewController {
    // MARK: - Properties
    
    private lazy var searchController : UISearchController = {
        let sc = UISearchController(searchResultsController: nil)
        sc.searchResultsUpdater = self
        sc.delegate = self
        sc.obscuresBackgroundDuringPresentation = false
        sc.searchBar.placeholder = "Enter a company name or symbol"
        sc.searchBar.autocapitalizationType = .allCharacters
        return sc
    }()
    private let apiService = APIService()
    
    
    // MARK: - Lifecycle
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupNavigationBar()
        performSearch()
        
    }

    
    
    // MARK: - Helpers
    private func performSearch(){
        apiService.fetchSymbolsPublisher(keywords: "S&P500")
    }
    private func setupNavigationBar(){
        navigationItem.searchController = searchController
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        return cell
    }

}
    // MARK: - UISearchControllerDelegate
extension SearchTableViewController: UISearchResultsUpdating, UISearchControllerDelegate {
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    
}
