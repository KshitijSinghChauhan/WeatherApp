//
//  MainWeatherViewModel.swift
//  WeatherApp
//
//  Created by Kshitij Singh Chauhan on 24/09/24.
//

import RxSwift
import RxCocoa

class MainWeatherViewModel {
    private let disposeBag = DisposeBag()
    var weatherDataApiStatus: BehaviorRelay<ApiStatus>
    
    init() {
        weatherDataApiStatus = BehaviorRelay<ApiStatus>(value: .idle)
    }
}
