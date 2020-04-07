//
//  TextDemo.swift
//  SwiftUIDemo
//
//  Created by 魂断星戈幂 on 2020/3/25.
//  Copyright © 2020 魂断星戈幂. All rights reserved.
//

import SwiftUI
let str = "这是一个例子，用来检测文字复制的demo"

struct TextDemo: View {
    var body: some View {
          VStack (alignment: .leading, spacing: 10) {
                  Text("Text Demo Title")
                      .font(.title)
                      .bold()
                  Text("This is a Title")
                      .foregroundColor(.orange)
                      .font(.system(size: 20))
                      .fontWeight(.medium)
                      .italic()
                      .shadow(color: .green, radius: 3, x: 1, y: 1)
                  Text(str)
                      .foregroundColor(.purple)
                      .underline(true, color: .red)
                      .font(.system(size:18, design: .serif)).onTapGesture {
                          print(str)
                  }
                  HStack(spacing: 8) {
                      Text("这个是第一")
                      Text("这个是第二")
                      Text("这个是第三段")
                                      
                  }
                  ZStack() {
                      Image("test1")
                          .resizable().scaledToFill()
                          .clipShape(Circle())
                          .clipped()
                          .frame(width: 300, height: 200, alignment: .center)
                      
                      Text("这是提现ZStack的布局")
                          .font(.subheadline)
                          .foregroundColor(.white)
                  }
              .shadow(radius: 10)
              .padding(.top,5)
                  
              }
    }
}

struct TextDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextDemo()
    }
}
