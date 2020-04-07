//
//  UIViewControllerDemo.swift
//  SwiftUIDemo
//
//  Created by 魂断星戈幂 on 2020/3/27.
//  Copyright © 2020 魂断星戈幂. All rights reserved.
//
import Foundation
import SwiftUI
import UIKit

class UIKitController: UIViewController {
    override func viewDidLoad() {
        view.addSubview(button)
    }
    
    lazy var button:UIButton = {
        let button = UIButton(type:.system)
        button.setTitle("下一页", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 28)
        button.setTitleColor(.orange, for: .normal)
        button.setImage(UIImage(named: "icon"), for: .normal)
        button.addTarget(self, action: #selector(openContentView), for: .touchUpInside)
        return button
    }()
    
    @objc func openContentView() {
        let hostVC = UIHostingController(rootView: TextDemo())
        present(hostVC, animated: true) {
            print("跳转到文字页面")
        }
    }
    
}

struct  ControllerPage < T: UIViewController >:UIViewControllerRepresentable{
   
    func makeUIViewController(context: UIViewControllerRepresentableContext<ControllerPage<T>>) -> UIViewController {
        return T()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<ControllerPage<T>>) {
        debugPrint("\(#function):\(type(of: T.self))")
    }
}
