//
//  PoseDetailView.swift
//  YONA
//
//  Created by Yeni Hwang on 2023/01/12.
//

import SwiftUI

struct PoseDetailView: View {
    
    @State var pose: Pose
    
    var body: some View {
        VStack{
            HStack{
                Text(pose.title).font(.largeTitle).bold()
                Spacer()
            }
            HStack{
                Text(pose.description)
                Spacer()
            }
            Spacer()
        }.padding(.all, 16)
    }
}
