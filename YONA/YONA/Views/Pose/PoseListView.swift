//
//  PoseListView.swift
//  YONA
//
//  Created by Yeni Hwang on 2023/01/12.
//

import SwiftUI

struct PoseListView: View {
    
    let decoder = JSONDecoder()
    @State private var selection: Int? = 0

    var body: some View {
        
        let poses = try! decoder.decode([Pose].self, from: poseJson)
        
        NavigationView{
            List {
                ForEach(poses, id: \.self.id) { pose in
                    NavigationLink {
                        PoseDetailView(pose: pose)
                    } label : {
                        Text(pose.title)
                    }
                }
            }.navigationBarTitle(Text("요가 자세"))
        }
    }
}

struct PoseListView_Previews: PreviewProvider {
    static var previews: some View {
        PoseListView()
    }
}
