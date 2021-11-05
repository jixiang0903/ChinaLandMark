//
//  LandmarkCell.swift
//  ChinaLandMark
//
//  Created by jixiang on 2021/11/5.
//

import SwiftUI

struct LandmarkCell: View {
    let landmark : Landmark
    
    var body: some View {
        HStack{
            Image(landmark.imageName)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
                .cornerRadius(8)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkCell_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkCell(landmark: landmarks[5])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
