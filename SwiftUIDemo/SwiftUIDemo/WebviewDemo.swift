//
//  WebviewDemo.swift
//  SwiftUIDemo
//
//  Created by 魂断星戈幂 on 2020/3/27.
//  Copyright © 2020 魂断星戈幂. All rights reserved.
//

import SwiftUI
import WebKit

struct WebviewDemo: UIViewRepresentable {
    
    func makeUIView(context:Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView:WKWebView,context:Context){
        let request = URLRequest(url:URL(string:"https://www.apple.com")!)
        uiView.load(request)
    }
}

struct WebviewDemo_Previews: PreviewProvider {
    static var previews: some View {
        WebviewDemo()
    }
}
