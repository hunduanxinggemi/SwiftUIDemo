//
//  PopViewDemo.swift
//  SwiftUIDemo
//
//  Created by 魂断星戈幂 on 2020/4/3.
//  Copyright © 2020 魂断星戈幂. All rights reserved.
//

import SwiftUI

struct PopViewDemo: View {
    var body: some View {
        VStack{
            
            Button(action: {
                
                print("Pop回上一页面")
                
            }){
                Text("button的标题")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .bold()
                
                Image("backgroud0")
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width:350,height: 350)
            }.buttonStyle(PlainButtonStyle())
            
            
        }
    }
}

struct PopViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        PopViewDemo()
    }
}
