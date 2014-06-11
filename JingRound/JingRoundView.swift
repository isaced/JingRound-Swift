//
//  JingRoundView.swift
//  JingFM-RoundEffect-Swift
//
//  Created by isaced on 14-6-11.
//  Copyright (c) 2014 Year isaced. All rights reserved.
//

import UIKit

class JingRoundView: UIView {

    var roundImage:UIImage{
        get{
            return self.roundImage
        }
        set(newValue){
            self.roundImage = newValue
            roundImageView.image = newValue
        }
    }
    
    var roundImageView:UIImageView!
    var playStateView:UIImageView!
    
    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
        
        self.initJingRound()
    }
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
        
        self.initJingRound()
    }
    
    func initJingRound(){
        
        let center:CGPoint = CGPoint(x: self.frame.size.width / 2.0, y: self.frame.size.height / 2.0)
        
        //set JingRoundView
        self.clipsToBounds = true
        self.userInteractionEnabled = true
        
        self.layer.cornerRadius = center.x
        self.layer.borderColor = UIColor.lightGrayColor().CGColor
        self.layer.borderWidth = 1.0
        
        self.layer.shadowColor = UIColor.blackColor().CGColor
        self.layer.shadowRadius = 2;
        self.layer.shadowOpacity = 0.6;
        self.layer.shadowOffset = CGSizeMake(0, 1);
        
        //set roundImageView
        let roundImage:UIImage = self.roundImage
        self.roundImageView = UIImageView(frame: CGRectMake(0, 0, self.frame.size.width, self.frame.size.height))
        self.roundImageView.center = center
        self.roundImageView.image = roundImage
        self.addSubview(self.roundImageView)
        
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
    }
    */

}
