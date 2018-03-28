//
//  ViewController.swift
//  proj2
//
//  Created by carduo on 2018/3/28.
//  Copyright © 2018年 jwz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var tapBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(longPressed(gesture:)))
        tapBtn.addGestureRecognizer(longPress)
        
    }

    @IBAction func tapOrHoldClick() {
        
        increase()
        
    }
    @objc
    func longPressed(gesture: UILongPressGestureRecognizer) {
        
        increase()
        
    }
    
    func increase() {
        var number = Int(countLabel.text!)!
        number = number + 1
        countLabel.text = "\(number)"
    }
    
    @IBAction func clearClick(_ sender: Any) {
        countLabel.text = "0"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

