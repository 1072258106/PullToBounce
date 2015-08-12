//
//  ViewController.swift
//  springAnimation
//
//  Created by Takuya Okamoto on 2015/08/05.
//  Copyright (c) 2015年 Uniface. All rights reserved.
//

import UIKit

class ScrollViewExample: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scrollView = UIScrollView()
        scrollView.frame = view.frame
        // Please set colors
        scrollView.backgroundColor = UIColor.whiteColor()
        self.view.backgroundColor = UIColor(red: 0.207843, green: 0.611765, blue: 0.890196, alpha: 1)

        //🌟 Usage
        let wrapper = PullToBounceScrollViewWrapper(scrollView: scrollView)
        wrapper.didPullToRefresh = {
            NSTimer.schedule(delay: 3) { timer in
                wrapper.stopLoadingAnimation()
            }
        }
        self.view.addSubview(wrapper)

        
        let testView = UIView()
        testView.frame = CGRect(x: 10, y: 0, width: 100, height: 300)
        testView.backgroundColor = UIColor.orangeColor().colorWithAlphaComponent(0.3)
        scrollView.addSubview(testView)
        scrollView.contentSize = CGSize(width: 100, height: 900)
    }
}
