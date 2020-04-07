//
//  PickerDemo.swift
//  SwiftUIDemo
//
//  Created by 魂断星戈幂 on 2020/3/25.
//  Copyright © 2020 魂断星戈幂. All rights reserved.
//

import SwiftUI
import Combine

struct PickerDemo: View {
    
    @State var leftIndex = 0
    @State var rightIndex = 0
    
    let leftSource = (0..<12).map {($0%2 == 0 ? "🧜‍♀️\($0)":"🦋\($0)")}
    let rightSource = (11..<37).map{String($0-1,radix: $0).uppercased()}
    
    private let item = (0..<10).map{"\($0)"}
    
    var body: some View {
        
     
        
        HStack {
            
           VStack() {
                        
            Text("Left Value:")
            Text("\(self.leftSource[self.leftIndex])")
               .foregroundColor(.orange)
               .bold()
               .font(.largeTitle)
            Picker(selection: $leftIndex,label: Text("Left Picker")) {
                ForEach(0..<leftSource.count){
                    Text(self.leftSource[$0])
                }
            }.frame(width:UIScreen.main.bounds.width/2.0)
                        
            }
            VStack() {
                
                Text("Right Value:")
                Text("\(self.rightSource[self.rightIndex])")
                    .foregroundColor(.orange)
                    .bold()
                    .font(.largeTitle)
                
                Picker(selection: $rightIndex, label: Text("Rigth Picker")) {
                    
                    ForEach(0..<rightSource.count){
                        Text(self.rightSource[$0])
                    }
                }.frame(width:UIScreen.main.bounds.width/2.0)
            }
        }.navigationBarTitle("Picker")
    }
}

struct PickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        PickerDemo()
    }
}
