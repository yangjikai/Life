//
//  ViewController.swift
//  Life
//
//  Created by tiens on 2519/6/12.
//  Copyright © 2519 yyy. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    let animationView = AnimationView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        btn.backgroundColor = UIColor.red
        btn.addTarget(self, action: #selector(ddd), for: .touchUpInside)
        view.addSubview(btn)
        
        let animation = Animation.named("IconTransitions")
        
        animationView.frame = CGRect(x: 0, y: 200, width: kScreenWidth, height: 300)
        animationView.backgroundColor = UIColor.cyan
        animationView.animation = animation
        animationView.backgroundBehavior = .pause
        view.addSubview(animationView)
    }
    
    @objc func ddd() {
        print("点击了")
        let sse: CGFloat = -123.454534
        print(abs(sse),sse)
//        view.makeToast("测试toastViwe")
        
        animationView.play()
        animationView.play { (finsh) in
            if finsh {
                print("结束")
            } else {
                print("没有结束")
            }
        }
    }
    

}

