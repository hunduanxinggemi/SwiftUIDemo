//
//  ToggleDemo.swift
//  SwiftUIDemo
//
//  Created by 魂断星戈幂 on 2020/3/27.
//  Copyright © 2020 魂断星戈幂. All rights reserved.
//

import SwiftUI
import Combine

struct ToggleDemo: View {
    @State var isOn = true
    @State var progress = 0.55
    @State var sumValue = 0
    
    //segmentControl
    @State private var pickerSelection = "one"

    
    var body: some View {
        VStack(spacing:20){
            HStack{
                    Toggle(isOn: $isOn) {
                        Image("icon")
                        Text("State:\(self.isOn == true ? "开":"关")")
                            .font(.largeTitle)
                            .foregroundColor(.orange)
                            .italic()
                            .bold()
                        
                          }.padding(20)
                    Spacer()
                }
            
            Text("进度条的值是：\(progress)")
            HStack{
                Slider(value: $progress,in:1...100,step:1,onEditingChanged:{(c) in
                    
                    print("当前进度的值是\(self.progress)")
                })
                    .accentColor(.red)
                    .padding(5)
                Image("tabBar_messageSelect")
            }
            
            
            
            HStack{
                Stepper(value: $sumValue, step: 2,onEditingChanged:  { (c) in
                    print("3333计步器的值是：\(self.sumValue)")
                }){
                    Text("计步器的值是\(self.sumValue)")
                }.padding(30)
            }
            
            Picker("最新基金", selection: $pickerSelection) {
                Text("我的自选").tag("one")
                Text("热门板块").tag("two")
                Text("基金排行").tag("three")
            }

            .pickerStyle(SegmentedPickerStyle())
            .background(Color.orange)
            .accentColor(.red)
            .padding()
            
        }.navigationBarTitle("Slider")
    }
}

struct ToggleDemo_Previews: PreviewProvider {
    static var previews: some View {
        ToggleDemo()
    }
}
