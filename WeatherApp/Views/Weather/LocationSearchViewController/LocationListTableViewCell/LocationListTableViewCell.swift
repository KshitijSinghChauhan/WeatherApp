//
//  LocationListTableViewCell.swift
//  WeatherApp
//
//  Created by Kshitij Singh Chauhan on 24/09/24.
//

import Reusable
import UIKit

class LocationListTableViewCell: UITableViewCell, NibReusable {

    @IBOutlet weak var listView: UIView!
    @IBOutlet weak var locationLabel: UILabel!
    
    var location: String? {
        didSet {
            locationLabel.text = location
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
}
