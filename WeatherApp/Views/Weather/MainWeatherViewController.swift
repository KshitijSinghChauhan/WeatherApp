//
//  MainWeatherViewController.swift
//  WeatherApp
//
//  Created by Kshitij Singh Chauhan on 23/09/24.
//

import UIKit

class MainWeatherViewController: UIViewController {
    
    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configTheme()
        self.configDependencies()
        self.title = "London"
    }
}

extension MainWeatherViewController {
    private func configTheme() {
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        self.view.backgroundColor = .black
        
    }

    private func configDependencies() {
        let searchIcon = UIBarButtonItem(
            image: UIImage(systemName: "magnifyingglass"),
            style: .plain,
            target: self,
            action: #selector(searchLocation)
        )
        searchIcon.tintColor = .white
        self.navigationItem.rightBarButtonItem = searchIcon
    }

    @objc func searchLocation() {
        let searchController = StoryboardScene.WeatherScreen.locationSearchViewController.instantiate()
        self.navigationController?.present(searchController, animated: true)
    }
}
