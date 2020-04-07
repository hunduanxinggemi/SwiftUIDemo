//
//  ImageDemo.swift
//  SwiftUIDemo
//
//  Created by 魂断星戈幂 on 2020/3/21.
//  Copyright © 2020 魂断星戈幂. All rights reserved.
//

import SwiftUI

struct ImageDemo: View {
    var body: some View {
        VStack(spacing: 15) {
            ForEach((0..<6),content: {
                _ in
                HStack {
                    ForEach((0..<6),content: {
                    _ in
                    Image("test1")
                      .resizable()
                      .scaledToFill()
                      .clipShape(Circle())
                      .frame(width:60,height:60,alignment: .center)
                        .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
                        .onTapGesture {
                            print("点击的是第几个")
                        }
                        
                })
                }
            })
            Image("test1")
            .resizable()
            .scaledToFit()
            .onAppear(perform: downloadUrl)

        }
    }
}

func downloadUrl()  {
    print("图片已经加载出来了")
}

struct ImageDemo_Previews: PreviewProvider {
    static var previews: some View {
        ImageDemo()
    }
}
