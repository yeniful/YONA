//
//  StudioView.swift
//  YONA
//
//  Created by Yeni Hwang on 2023/01/12.
//

import CoreLocationUI
import MapKit
import SwiftUI

struct StudioListView: View {
    
    let decoder = JSONDecoder()
    
    @State private var selection: Int? = 0
    
    var body: some View {
        
        let studios = try! decoder.decode([Studio].self, from: studioJson)
        
        NavigationView {
                
                List {
                    // tag: 1~, StudioDetailView
                    ForEach(studios, id: \.self.id) { studio in
                        
                        NavigationLink(
                            destination: StudioDetailView(),
                            tag: studio.id,
                            selection: $selection
                        ) {
                            Button(studio.name) {
                                selection = studio.id
                            }
                        } // NavigationLink
                        
                    } // ForEach
                } // List
                
            // title
            .navigationTitle("요가 스튜디오")
            // toolbar
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing){
                    
                    NavigationLink(
                        destination: StudioMapView(),
                        tag: -1,
                        selection: $selection
                    ) {
                        // 버튼
                        Button("지도 보기") {
                            selection = -1
                        }.foregroundColor(.blue)
                    } // NavigationLink
                }
            })
            
            // to reveal tabbar on StudioMapView
            .background(TabBarAccessor { tabBar in
                tabBar.isHidden = false
            })
        }
        
    }
}

struct StudioView_Previews: PreviewProvider {
    static var previews: some View {
        StudioListView()
    }
}
