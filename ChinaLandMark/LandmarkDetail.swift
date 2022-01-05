//
//  LandmarkDetail.swift
//  ChinaLandMark
//
//  Created by jixiang on 2021/11/5.
//

import SwiftUI

struct LandmarkDetail: View {
    let landmark: Landmark
    @EnvironmentObject var userData: UserData
    var landmarkIndex : Int {
        userData.userLandmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        VStack {
            MapView(center: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame( height: 350)
            Image(landmark.imageName)
                .resizable()
                .frame(width: 250, height: 250, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    Button(action: {
                        self.userData.userLandmarks[landmarkIndex].isFavorite.toggle()
                    }){
                        if userData.userLandmarks[landmarkIndex].isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }else{
                            Image(systemName: "star")
                                .foregroundColor(.gray)
                        }
                    }
                }
                HStack{
                    Text(landmark.city).font(.subheadline)
                    Spacer()
                    Text(landmark.province).font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LandmarkDetail(landmark: landmarks[6])
                .environmentObject(UserData())
        }
    }
}
