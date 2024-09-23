//
//  TemperatureCardTableViewCell.swift
//  WeatherApp
//
//  Created by Kshitij Singh Chauhan on 24/09/24.
//

import UIKit

class TemperatureCardTableViewCell: UITableViewCell {

    @IBOutlet weak var mainCardView: UIView!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var temperatureValueLabel: UILabel!
    @IBOutlet weak var temperatureDegreeLabel: UILabel!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
