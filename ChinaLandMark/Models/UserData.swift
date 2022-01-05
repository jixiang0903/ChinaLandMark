//
//  UserData.swift
//  ChinaLandMark
//
//  Created by jixiang on 2021/11/9.
//

import SwiftUI
import Combine
//SwiftUI监视可观察对象（ObservableObject）的任何数据更改，并在数据更改后刷新视图。
final class UserData: ObservableObject{
    //当数据变化时发送更新后的数据给视图，视图就会刷新
    @Published var userLandmarks = landmarks
}

//final class UserData: ObservableObject{
//    var didChange = PassthroughSubject<UserData, Never>()
//    var userLandmark = landmarks {
//        didSet{
//            didChange.send(self)
//        }
//    }
//
//}
