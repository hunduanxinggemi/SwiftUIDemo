//
//  SectionDemo.swift
//  SwiftUIDemo
//
//  Created by 魂断星戈幂 on 2020/3/29.
//  Copyright © 2020 魂断星戈幂. All rights reserved.
//

import SwiftUI

struct SectionDemo: View {
    var body: some View {
        
        VStack(){
            List{
                ForEach(0..<5){index in
                    
                    Section(header:Text("我是Tableview的头部\(index)"), footer:
                    Text("我是tableview的尾部\(index)")) {
                        ForEach(0..<5){_ in
                            HStack{
                                Image("icon")
                                Text("自古落花有意流水无情，明月总是照沟渠")
                                .padding(10)
                                    
                            }
                        }
                    }
                }
        }
            .background(Color.white)
            .listStyle(GroupedListStyle())
            Button(action: {
               print("提交资料")
           }){
               Text("Commit")
                        .foregroundColor(.white)
                   .frame(width:UIScreen.main.bounds.width-30,height:50)
           }
           .background(Color.orange)
           .cornerRadius(10)
           
       }
        
    }
}

struct SectionDemo_Previews: PreviewProvider {
    static var previews: some View {
        SectionDemo()
    }
}
