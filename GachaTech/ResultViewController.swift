//
//  ResultViewController.swift
//  GachaTech
//
//  Created by Rimika Inoguchi on 2018/03/31.
//  Copyright © 2018年 Rimika Inoguchi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController{
    
    @IBOutlet var haikeiImageView:UIImageView!
    @IBOutlet var monsterImageView:UIImageView!
    var monsterArray:[UIImage]!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        let number=Int(arc4random_uniform(10))
        
        monsterArray=[UIImage(named:"monster001.png")!,
                      UIImage(named:"monster002.png")!,
                      UIImage(named:"monster003.png")!,
                      UIImage(named:"monster004.png")!,
                      UIImage(named:"monster005.png")!,
                      UIImage(named:"monster006.png")!,
                      UIImage(named:"monster007.png")!,
                      UIImage(named:"monster008.png")!,
                      UIImage(named:"monster009.png")!,
                      UIImage(named:"monster010.png")!]
        
        monsterImageView.image = monsterArray[number]
        
        if number == 9 {
            haikeiImageView.image=UIImage(named:"bg_gold.png")
        }else if number > 6 {
            haikeiImageView.image=UIImage(named:"bg_red.png")
        }else{
            haikeiImageView.image=UIImage(named:"bg_blue.png")
        }
        
    }
    
    
    override func viewDidAppear(_ animated:Bool){
        super.viewDidAppear(true)
        
        let animation = CABasicAnimation(keyPath: "transform")
        
        animation.fromValue = NSNumber(value: 0)
        
        animation.toValue=NSNumber(value: 2 * Double.pi)
        
        animation.valueFunction=CAValueFunction(name: kCAValueFunctionRotateZ)
        
        animation.duration = 5
        
        animation.repeatCount = Float.infinity
        
        haikeiImageView.layer.add(animation, forKey:nil)
        
        
    }
    
    @IBAction func modoru(){
        self.dismiss(animated:true,completion:nil)
        
    }

}
