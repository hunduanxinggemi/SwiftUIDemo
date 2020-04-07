//
//  TextInputDemo.swift
//  SwiftUIDemo
//
//  Created by 魂断星戈幂 on 2020/3/19.
//  Copyright © 2020 魂断星戈幂. All rights reserved.
//

import SwiftUI

struct TextInputDemo: View {

    @State var name :String     = ""
    @State var password :String = ""
    let namePlaceholder         = "请输入用户名"
    let passwordPlaceholder     = "请输入密码"
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        VStack(spacing: 10) {
            Button(action: {
                       
                self.mode.wrappedValue.dismiss()
                
            }, label: {
                
                Text("Dismiss")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            
            }).background(Color.orange)
            
            Text("登录")
                .font(.system(size: 38))
                .bold()
                .foregroundColor(.secondary)
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 140, trailing: 10))
            
            HStack() {
                Text("昵称：")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 5))
                TextField(namePlaceholder, text: self.$name,onCommit: {
                    print("提交按钮已经响应")
                })
                    .frame(height:60)
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 20))
                    .textFieldStyle(RoundedBorderTextFieldStyle())

            }
            HStack() {
                         Text("密码：")
                            .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 5))
                            .font(.subheadline)
                            .foregroundColor(.secondary)

                SecureField(passwordPlaceholder, text: self.$password,onCommit: {
                    print("输入密码")
                })
                  
                    .frame(height:60)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 20))
            }
            
            Button(action: {
                
                print("登录按钮已被响应")
                
            }) {
                
                Text("登录")
                    .font(.title)
                    .bold()
                    .italic()
                    .foregroundColor(.orange)
                .padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
            }
            
            
        }.offset(y:-130)
    }
}

struct TextInputDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextInputDemo()
    }
}
