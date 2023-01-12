//
//  YONAApp.swift
//  YONA
//
//  Created by Yeni Hwang on 2023/01/12.
//

import SwiftUI

@main
struct YONAApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TabView{
                PoseListView()
                    .tabItem{
                        Image(systemName: "leaf")
                        Text("자세")
                    }
                
                
                ContentView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .tabItem{
                        Image(systemName: "pencil")
                        Text("일지")
                    }
                
                StudioListView()
                    .tabItem{
                        Image(systemName: "map")
                        Text("스튜디오")
                    }
            }

        }
    }
}
