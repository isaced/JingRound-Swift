//
//  ViewController.swift
//  JingFM-RoundEffect-Swift
//
//  Created by isaced on 14-6-11.
//  Copyright (c) 2014 Year isaced. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var roundView : JingRoundView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.jpg"))
//        self.roundView.roundImage = UIImage(named: "girl")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
