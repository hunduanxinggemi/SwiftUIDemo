//
//  ScrollviewDemo.swift
//  SwiftUIDemo
//
//  Created by 魂断星戈幂 on 2020/3/27.
//  Copyright © 2020 魂断星戈幂. All rights reserved.
//

import SwiftUI

struct ScrollviewDemo: View {
    
    let style = AngularGradient(gradient: Gradient(colors: [.orange]), center: UnitPoint(x: 0, y: 0))
    var body: some View {
        
        ScrollView(showsIndicators: false){
           
            Text("不得已而为之").padding(20)
                       Divider()
                       Image("icon")
                       .resizable()
                       .frame(width:300,height: 300,alignment: .center)
                       Divider()
                       Text("Views and controllers are visual buliding blocks of your app .")
                        .border(style,width: 0.5)
                        .padding(10)
            
            Text("不得已而为之").padding(20)
                      Divider()
                      Image("icon")
                      .resizable()
                      .frame(width:300,height: 300,alignment: .center)
                      Divider()
                      Text("Views and controllers are visual buliding blocks of your app .")
                       .border(style,width: 0.5)
                       .padding(10)
        }
    }
}

struct ScrollviewDemo_Previews: PreviewProvider {
    static var previews: some View {
        ScrollviewDemo()
    }
}
