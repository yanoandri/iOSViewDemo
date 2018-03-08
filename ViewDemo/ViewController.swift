//
//  ViewController.swift
//  ViewDemo
//
//  Created by Developer 1 on 06/03/18.
//  Copyright © 2018 DyCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let width = UIScreen.main.bounds.width
        let frame : CGRect = CGRect(x: 20, y: 20, width: width - 40, height: 80)
        let aView : UIView = UIView(frame: frame)
        aView.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
        aView.autoresizingMask = UIViewAutoresizing.flexibleWidth
        
        self.view.addSubview(aView)
        
//        let newFrame = CGRect(x: 50, y: 300, width: width - 100, height: 80)
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: {
//            UIView.animate(withDuration: 1, animations: {
//                aView.frame = newFrame
//            })
//        })
        
        aView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[view]-20-|",
                                                                options: NSLayoutFormatOptions.directionLeadingToTrailing,
                                                                metrics: nil,
                                                                views: ["view" : aView]))
        
        let topConstraint = aView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20)
        topConstraint.isActive = true
        
        let heightConstraint = NSLayoutConstraint.init(item: aView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.height, multiplier: 1, constant: 80)
        aView.addConstraint(heightConstraint)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: {
            topConstraint.constant = 200
            heightConstraint.constant = 200
            
            UIView.animate(withDuration: 1, animations: {
                self.view.layoutIfNeeded()
            })
        })
//        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[s]-20-[view(200)]",
//                                                                options: NSLayoutFormatOptions.directionLeadingToTrailing,
//                                                                metrics: nil,
//                                                                views: ["view" : aView, "s" : topLayoutGuide]))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

