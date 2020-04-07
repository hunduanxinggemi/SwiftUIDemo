//
//  AlertActionSheetDemo.swift
//  SwiftUIDemo
//
//  Created by 魂断星戈幂 on 2020/4/1.
//  Copyright © 2020 魂断星戈幂. All rights reserved.
//

import SwiftUI

struct AlertActionSheetDemo: View {
    
    @State var showAlert = false
    @State var showActionSheet = false

    var body: some View {
        VStack{
            
            Text("Alert 和 ActionSheet的Demo")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.black)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 150, trailing: 20))
            
            Divider()
            Button(action: {
                self.showAlert = true

            }) {
                Text("Click show alert!")
                    .font(.system(size:40))
                    .foregroundColor(.purple)
            }
            Divider()
            Button(action: {
                self.showActionSheet = true

            }) {
                 Text("Click show ActionSheet")
                    .font(.system(size:40))
                    .foregroundColor(.orange)
            }
        }
        
        .alert(isPresented: $showAlert) { () -> Alert in
            Alert(title: Text("确定要支付1000000美金吗？"), message: Text("谨慎操作\n一旦确认，钱款将立即转入对方账户"), primaryButton: .destructive(Text("确认"), action: {
                print("这时候就会将100w美金的钱款转出去了。。。")
            }), secondaryButton: .cancel({
                print("这时候就会取消付款操作")
                self.showAlert = false
            }))
                                                    
        }.navigationBarTitle(Text("Alert"))
        .actionSheet(isPresented: $showActionSheet, content:{sheet})
    }
    
    private var sheet:ActionSheet{
            
        let action = ActionSheet(title: Text("拍照和录像"), message: Text("选择拍照或者录像"), buttons: [
            .default(Text("相册"), action: {
                print("取消显示")
                self.showActionSheet = false
            }), .destructive(Text("拍照"), action: {
                print("拍照--取消显示")
                self.showActionSheet = false
            }),.cancel(Text("取消"), action: {
                print("取消anctionsheet显示")
                self.showActionSheet = false
            })
        ])
        
        return action
    }
}




struct AlertActionSheetDemo_Previews: PreviewProvider {
    static var previews: some View {
        AlertActionSheetDemo()
    }
}
