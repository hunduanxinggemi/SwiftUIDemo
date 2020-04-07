//
//  DeleteDemo.swift
//  SwiftUIDemo
//
//  Created by 魂断星戈幂 on 2020/3/23.
//  Copyright © 2020 魂断星戈幂. All rights reserved.
//

import SwiftUI

public var source = ["望山跑死马","横看成岭侧成峰","远近高低各不同","不识庐山真面目","资源身在此山中","君不见，黄河之水天上来","奔流到海不复回","君不见，高堂明镜悲白发","朝如青丝暮成雪","人生得意须尽欢","莫使金樽空对月"]

struct DeleteDemo: View {
    
    var body: some View {

        List {
            ForEach(source, id: \.self) { idex in
                
                PeomCell(peomName: idex)
            }
        .onDelete(perform: deleAcition)
        .onMove(perform: moveAction)
           
        }
        .navigationBarTitle(Text("Edit Row"),displayMode: .large)
        .navigationBarItems(trailing: EditButton())
        
    }
    
}

struct DeleteDemo_Previews: PreviewProvider {
    static var previews: some View {
        DeleteDemo()
    }
}

func deleAcition(at offset:IndexSet)  {
    
    if let last = offset.last {
        source.remove(at: last)
    }
    print("删除这行")
}

func moveAction(from source:IndexSet,to destination:Int)  {
    print("移动这行")
}

struct PeomCell:View {
    var peomName:String
    var body: some View{
     
        Text(peomName)
            .font(.system(size: 25))
            .italic()
            .bold()
            .foregroundColor(.gray)
    }
}
