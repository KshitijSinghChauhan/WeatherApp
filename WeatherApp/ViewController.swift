//
//  ViewController.swift
//  WeatherApp
//
//  Created by Kshitij Singh Chauhan on 23/09/24.
//

import UIKit

class ViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let weatherViewContrller = StoryboardScene.WeatherScreen.mainWeatherController.instantiate()
        pushViewController(weatherViewContrller, animated: false)
    }
}

