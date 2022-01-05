//
//  CategoryCell.swift
//  ChinaLandMark
//
//  Created by jixiang on 2021/12/15.
//

import SwiftUI

struct CategoryCell: View {
    let categoryName : String
    let landmarks : [Landmark]
    
    
    var body: some View {
        VStack(alignment: .leading){
            Text(categoryName).font(.headline)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 15) {
                    ForEach(landmarks){
                        landmark in
                        CategoyItem(landmark: landmark)
                    }
                }
            }
        }
        .padding(.leading, 15)
        .padding([.top, .bottom])
    }
}

struct CategoryCell_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCell(categoryName: landmarks[0].category, landmarks: Array(landmarks.prefix(4)))
    }
}

struct CategoyItem: View {
    let landmark : Landmark
    
    var body: some View {
        NavigationLink(destination: LandmarkDetail(landmark: landmark)){
            VStack {
                Image(landmark.imageName)
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(5)
                Text(landmark.name)
                    .font(.caption)
                    .foregroundColor(.primary)
            }
        }
    }
}
