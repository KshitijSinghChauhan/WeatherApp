//
//  ViewController.swift
//  WeatherApp
//
//  Created by Kshitij Singh Chauhan on 23/09/24.
//


// 36f5ab74949b4c9394e122919242309 Token expiry date is 7th Oct
import UIKit

class ViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let weatherViewContrller = StoryboardScene.WeatherScreen.mainWeatherController.instantiate()
        pushViewController(weatherViewContrller, animated: false)
    }
}

