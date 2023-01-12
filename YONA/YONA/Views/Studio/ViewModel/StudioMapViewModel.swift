//
//  StudioMapViewModel.swift
//  YONA
//
//  Created by Yeni Hwang on 2023/01/12.
//
//  Reference:
//  - https://www.youtube.com/watch?v=P6ZUiH1IZlQ&ab_channel=SeanAllen
//

import SwiftUI
import MapKit

class StudioMapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published var region =
        MKCoordinateRegion(
            center:
                CLLocationCoordinate2D(
                    latitude : 36.015_6822,
                    longitude: 129.322_4559
                ),
            span: MKCoordinateSpan(
                latitudeDelta: 0.1,
                longitudeDelta: 0.1
            )
//                latitudinalMeters: 3_000,
//                longitudinalMeters: 3_000
    )
    
    // init
    override init() {
        super.init()
        locationManager.delegate = self
    }
    
    let locationManager = CLLocationManager()
    
    // permission
    func requestAllOnceLocationPermission(){
        locationManager.requestLocation()
    }
    
    // update
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let latestLocation = locations.first else {
            print("error")
            return
        }
        
        DispatchQueue.main.async {
            self.region = MKCoordinateRegion(
                center: latestLocation.coordinate,
                span: MKCoordinateSpan(
                    latitudeDelta: 0.05,
                    longitudeDelta: 0.05
                )
            )
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
}
