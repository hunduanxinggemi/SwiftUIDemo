//
//  MoTaiDemo.swift
//  SwiftUIDemo
//
//  Created by 魂断星戈幂 on 2020/4/1.
//  Copyright © 2020 魂断星戈幂. All rights reserved.
//

import SwiftUI

struct MoTaiDemo: View {
    
    @State var showModal     = false
    @State var showAlertView = false
    @State var active        = true
    var body: some View {
        
        VStack{
            Button(action: {
                
                self.showModal = true
                print("模态出别的页面")
                
            }) {
                Text("模态页面")
                .bold()
                .font(.system(.largeTitle))
            }
            .padding()
            Button(action: {
                print("push到下一个页面")

            }) {
                Text("按钮")
                    .foregroundColor(.orange)
                    .bold()
                    .font(.system(.largeTitle))
            }
            
                    .padding()
            Button(action: {
                self.showAlertView = true
                print("出现自定义弹窗")
            }) {
                Text("自定义弹窗")
                .bold()
                .font(.system(.largeTitle))
            }
            .padding()
                
            .sheet(isPresented: $showModal, onDismiss: {
                print("消失模态页面")
                self.showModal = false
                
            }) {
                TextInputDemo()
            }
            
            //自定义弹窗
          if $showAlertView.wrappedValue {
            alertTipView(showAlertView: true, alertBack: {
                 self.showAlertView = false
                print("自定义弹窗视图消失")
            })
          }
        }
    }
}

struct MoTaiDemo_Previews: PreviewProvider {
    static var previews: some View {
        MoTaiDemo()
    }
}


struct alertTipView:View {
    
    @State var showAlertView:Bool
    var alertBack:(()->())?;
    
    var body: some View{
        ZStack {
            Color.white
            VStack {
              Text("这个是自定义的弹窗")
              Image("icon")
                  .resizable()
                  .scaledToFit()
                  .clipShape(Circle())
              Spacer()
              Button(action: {
                self.showAlertView = false
                if self.alertBack != nil{
                    self.alertBack!()
                }

              }, label: {
                  Text("关闭")
              })
            }.padding()
        }
        .frame(width: 350, height: 300)
        .cornerRadius(20).shadow(radius: 5)
    }
    
}
