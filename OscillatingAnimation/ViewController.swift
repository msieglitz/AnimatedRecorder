//
//  ViewController.swift
//  OscillatingAnimation
//
//  Created by Mechelle Sieglitz on 2/26/16.
//  Copyright © 2016 Mechelle Sieglitz. All rights reserved.
//

import UIKit
import pop
import Foundation

class ViewController: UIViewController, POPAnimationDelegate {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    
    //constraints
    @IBOutlet weak var view1HeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var view2HeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var view3HeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var view4HeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var view5HeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var view6HeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var view7HeightConstraint: NSLayoutConstraint!
    
    var timer = NSTimer()
    var timerGoing: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func makeThingsGoAllBouncy(sender: UIButton) {
        
        if timerGoing == false {
            timerGoing = true
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "animateAllTheThings", userInfo: nil, repeats: true)
        } else {
            timer.invalidate()
            timerGoing = false
        }
        
    }
    
    func animateAllTheThings() {
        self.animateView1()
        self.animateView2()
        self.animateView3()
        self.animateView4()
        self.animateView5()
        self.animateView6()
        self.animateView7()
    }
    
    func animateView1() {
        let growView1 = POPSpringAnimation(propertyNamed: kPOPLayoutConstraintConstant)
        growView1.toValue = randomNumber()
        growView1.springBounciness = 20
        growView1.springSpeed = 20
//        growView1To200.autoreverses = true
//        growView1To200.repeatForever = true
        view1HeightConstraint.pop_addAnimation(growView1, forKey: "view1HeightGrow")
    }
    
    func animateView2() {
        let growView2 = POPSpringAnimation(propertyNamed: kPOPLayoutConstraintConstant)
        growView2.toValue = randomNumber()
        growView2.springBounciness = 20
        growView2.springSpeed = 20
//        growView2To180.autoreverses = true
//        growView2To180.repeatForever = true
        view2HeightConstraint.pop_addAnimation(growView2, forKey: "view2HeightGrow")
    }
    
    func animateView3() {
        let growView3 = POPSpringAnimation(propertyNamed: kPOPLayoutConstraintConstant)
        growView3.toValue = randomNumber()
        growView3.springBounciness = 20
        growView3.springSpeed = 20
//        growView2To180.autoreverses = true
//        growView2To180.repeatForever = true
        view3HeightConstraint.pop_addAnimation(growView3, forKey: "view3HeightGrow")
    }
    
    func animateView4() {
        let growView4 = POPSpringAnimation(propertyNamed: kPOPLayoutConstraintConstant)
        growView4.toValue = randomNumber()
        growView4.springBounciness = 20
        growView4.springSpeed = 20
//        growView2To180.autoreverses = true
//        growView2To180.repeatForever = true
        view4HeightConstraint.pop_addAnimation(growView4, forKey: "view4HeightGrow")
    }
    
    func animateView5() {
        let growView5 = POPSpringAnimation(propertyNamed: kPOPLayoutConstraintConstant)
        growView5.toValue = randomNumber()
        growView5.springBounciness = 20
        growView5.springSpeed = 20
//        growView2To180.autoreverses = true
//        growView2To180.repeatForever = true
        view5HeightConstraint.pop_addAnimation(growView5, forKey: "view5HeightGrow")
    }
    
    func animateView6() {
        let growView6 = POPSpringAnimation(propertyNamed: kPOPLayoutConstraintConstant)
        growView6.toValue = randomNumber()
        growView6.springBounciness = 20
        growView6.springSpeed = 20
//        growView2To180.autoreverses = true
//        growView2To180.repeatForever = true
        view6HeightConstraint.pop_addAnimation(growView6, forKey: "view6HeightGrow")
    }
    
    func animateView7() {
        let growView7 = POPSpringAnimation(propertyNamed: kPOPLayoutConstraintConstant)
        growView7.toValue = randomNumber()
        growView7.springBounciness = 20
        growView7.springSpeed = 20
//        growView2To180.autoreverses = true
//        growView2To180.repeatForever = true
        view7HeightConstraint.pop_addAnimation(growView7, forKey: "view7HeightGrow")
    }
    
    func randomNumber(range: Range<Int> = 70...128) -> Int {
        let min = range.startIndex
        let max = range.endIndex
        return Int(arc4random_uniform(UInt32(max-min))) + min
    }
}

