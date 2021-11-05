//
//  LandmarkDetail.swift
//  ChinaLandMark
//
//  Created by jixiang on 2021/11/5.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame( height: 350)
            Image("tiananmen")
                .resizable()
                .frame(width: 250, height: 250, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading, spacing: 8) {
                Text("天安门")
                    .font(.title)
                HStack{
                    Text("北京").font(.subheadline)
                    Spacer()
                    Text("北京市").font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle(Text("天安门"), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LandmarkDetail()
        }
    }
}
