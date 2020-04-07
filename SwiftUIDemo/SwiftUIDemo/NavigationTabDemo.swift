//
//  NavigationTabDemo.swift
//  SwiftUIDemo
//
//  Created by 魂断星戈幂 on 2020/3/30.
//  Copyright © 2020 魂断星戈幂. All rights reserved.
//

import SwiftUI

struct NavigationTabDemo: View {
    
    @State private var index = 0
    
    let imgs = ["tabBar_home","tabBar_dynamic","tabBar_contact","tabBar_message","tabBar_personal"]
    
    private let backImgs = ["backgroud0","backgroud1","backgroud2","backgroud3","backgroud4"]
    
    private let titles = ["首页","动态","联系人","聊天","我的"]
    
    var body: some View {
  
        TabView {
            
            ForEach(0..<self.imgs.count){index in
                
                BadgeView(badgeNumber:self.$index,index: index, backImg: self.backImgs[index])
                               .tabItem {
                                Image(self.imgs[index])
                                Text(self.titles[index])
                }.tag(index)
            }
        }
    }
}

struct NavigationTabDemo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTabDemo()
    }
}

struct BadgeView: View {
    @Binding var  badgeNumber: Int
    var index : Int
    var backImg:String
    
    var body: some View {

        NavigationView{
            VStack{
                Spacer()
                Button("增加新消息  \(index)"){
                    self.badgeNumber += 1
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.orange)
                .cornerRadius(8)
                .padding()
                
                Button(" 全部已读  \(index) "){
                    self.badgeNumber = 0
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.orange)
                .cornerRadius(8)
                
                Spacer()
                
            }
            .background(
                Image(backImg)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
        .navigationBarTitle(Text("仿微信TabView新消息提醒"),displayMode: .inline)
        }
    }
}

func allAction() {
    print("全部已读")
}

func addbuttonAction() {
    print("全部已读")
}
