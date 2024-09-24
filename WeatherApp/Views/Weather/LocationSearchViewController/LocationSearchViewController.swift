//
//  LocationSearchViewController.swift
//  WeatherApp
//
//  Created by Kshitij Singh Chauhan on 24/09/24.
//

import Reusable
import UIKit

class LocationSearchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var serchTextField: UITextField!
    @IBOutlet weak var searchResultTableView: UITableView!

    private var viewModel = LocationSearchViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchResultTableView.dataSource = self
        searchResultTableView.delegate = self
        searchResultTableView.register(cellType: LocationListTableViewCell.self)
        
        viewModel.getCountries("Lon")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.countries.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, cellType: LocationListTableViewCell.self)
        cell.location = viewModel.countries.value[indexPath.row].getCountryName()
        return cell
    }
    
}
