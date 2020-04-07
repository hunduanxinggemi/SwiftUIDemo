//
//  FormDemo.swift
//  SwiftUIDemo
//
//  Created by 魂断星戈幂 on 2020/3/29.
//  Copyright © 2020 魂断星戈幂. All rights reserved.
//

import SwiftUI

struct FormDemo: View {
    @State var firstName:String
    @State var lastName:String
    
    var body: some View {
        Form{
            TextField("请输入第一个名字", text: $firstName)
            TextField("请输入最后一个名字",text: $lastName)
            
            Section(header:Text("我是Tableview的头部\(1)"), footer:
            Text("我是tableview的尾部\(2)")) {
                ForEach(0..<2){_ in
                    HStack{
                        Image("icon")
                        Text("自古落花有意流水无情，明月总是照沟渠")
                        .padding(10)
                            
                    }
                }
            }
            
        }
    }
}

struct FormDemo_Previews: PreviewProvider {
    static var previews: some View {
        FormDemo(firstName: "", lastName: "")
    }
}
