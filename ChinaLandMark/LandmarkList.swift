//
//  LandmarkList.swift
//  ChinaLandMark
//
//  Created by jixiang on 2021/11/5.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showFavoritesOnly = false
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView{
            List {
                Toggle(isOn: $showFavoritesOnly){
                    Text("只展示收藏")
                }
                ForEach(userData.userLandmarks){ landmark in
                    
                    if !self.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark).environmentObject(self.userData)){
                            LandmarkCell(landmark: landmark)
                        }
                    }
                    
                    
                }
            }
            .navigationBarTitle(Text("中国地标"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(UserData())
    }
}
