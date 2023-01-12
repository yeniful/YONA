//
//  StudioMapView.swift
//  YONA
//
//  Created by Yeni Hwang on 2023/01/12.
//

import CoreLocationUI
import MapKit
import SwiftUI

struct StudioMapView: View {
    
    @StateObject private var viewModel = StudioMapViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom){
            
            // MapView
            Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                .ignoresSafeArea()
                
            // LocationButton
            LocationButton(.currentLocation){
                viewModel.requestAllOnceLocationPermission()
            }
            .foregroundColor(.white)
            .cornerRadius(8)
            .labelStyle(.titleAndIcon)
            .symbolVariant(.fill)
            .tint(.gray)
            .padding(.bottom, 40)
        }
        
        // to hide tabbar on StudioMapView
        .background(TabBarAccessor { tabBar in
            tabBar.isHidden = true
        })
        
    }
}

struct StudioMapView_Previews: PreviewProvider {
    static var previews: some View {
        StudioMapView()
    }
}
