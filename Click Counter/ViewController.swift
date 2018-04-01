//
//  ViewController.swift
//  Click Counter
//
//  Created by Lennart Telwest on 01.04.18.
//  Copyright © 2018 Telwest. All rights reserved.
//

import UIKit

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}

class ViewController: UIViewController {

    var count = 0
    @IBOutlet var label: UILabel!
    var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // label
        let label = UILabel()
        label.frame = CGRect(x: 150, y:150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // label1
        let label1 = UILabel()
        label1.frame = CGRect(x: 150, y:50, width: 60, height: 60)
        label1.text = "0"
        view.addSubview(label1)
        self.label1 = label1
        
        // button - increase
        let button = UIButton()
        button.frame = CGRect(x: 150, y:250, width: 100, height: 60)
        button.setTitle("Increase", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        // button - decrease
        let button1 = UIButton()
        button1.frame = CGRect(x: 150, y:350, width: 100, height: 60)
        button1.setTitle("Decrease", for: .normal)
        button1.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button1)
        
        button1.addTarget(self, action: #selector(ViewController.reductionCount), for: UIControlEvents.touchUpInside)
        
    }
    


    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.label1.text = "\(self.count)"
        self.view.backgroundColor = .random()

    }
    
    @objc func reductionCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.label1.text = "\(self.count)"
        self.view.backgroundColor = .random()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

