//
//  ButtonDemo.swift
//  SwiftUIDemo
//
//  Created by 魂断星戈幂 on 2020/3/21.
//  Copyright © 2020 魂断星戈幂. All rights reserved.
//

import SwiftUI

struct ButtonDemo: View {
   
    var body: some View {
      
        NavigationView {
            VStack {
                NavigationLink("Tap me to Next Page", destination: DetialView())
                    .navigationBarTitle("Home Page")
                Button(action: {
                      print("我被点击了")
                  }){
                      HStack {
                           Text("我被点击了")
                             .font(.title)
                             .foregroundColor(.red)
                             .bold()
                             .italic()

                          Image("icon")
                              .scaledToFit()
                              .accessibility(label: Text("User Profile"))
                              .padding(5)
                      }
                  }.buttonStyle(PlainButtonStyle())
            }
                   
               
        }
    }
}

struct ButtonDemo_Previews: PreviewProvider {
    static var previews: some View {
        ButtonDemo()
    }
}

struct DetialView:View {
    var body: some View{
        VStack {
                   Text("This is detail view")
                   NavigationLink("Tap me to next page", destination: DetailChildView()).isDetailLink(true)
               }
               .navigationBarTitle("Detail")
    }
}

struct DetailChildView: View {
    var body: some View {
        Text("This is detail view")
        .navigationBarTitle("This is detail view")
    }
}
