//
//  SearchFoodsView.swift
//  GSP Nutrition
//
//  Created by gabriel subutzki portes on 08/09/25.
//

import UIKit

class SearchFoodsView : UIViewController{
    private let searchController = UISearchController(searchResultsController: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSearchController()
        backgroundGradient()

    }
    
    
    private func setupSearchController(){
        self.searchController.searchResultsUpdater = self
        self.searchController.obscuresBackgroundDuringPresentation = false
        self.searchController.hidesNavigationBarDuringPresentation = false
        self.searchController.searchBar.placeholder = "Pesquisar alimentos"
        
        self.navigationItem.searchController = searchController
        self.definesPresentationContext = false
        self.navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    private func backgroundGradient(){
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = view.bounds
        
        gradientLayer.colors = [
            UIColor.yellow.cgColor,
            UIColor.white.cgColor,
            UIColor.yellow.cgColor
        ]
        
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        
        view.layer.insertSublayer(gradientLayer, at: 0)
        
    }
}

extension SearchFoodsView: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        print("debug prin", searchController.searchBar.text)
    }
}
