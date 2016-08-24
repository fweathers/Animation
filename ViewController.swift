//
//  ViewController.swift
//  Animations
//
//  Created by Felicia Weathers on 8/17/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    
    var timer = Timer()
    
    var isAnimating = true
    
    @IBOutlet weak var alienImage: UIImageView!
    
    @IBAction func updateImageButtonTapped(_ sender: UIButton) {
        
        if isAnimating == true {
            
            timer.invalidate()
            
            isAnimating = false
            
        } else {
            
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            
            isAnimating = true
        }
        
        
        
        /*
        if counter == 5 {
            
            counter = 1
            
        } else {
            
            counter += 1
            
        }
        
        alienImage.image = UIImage(named: "frame\(counter).jpeg")
    */
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
    }
    
    func doAnimation() {
        
        if counter == 5 {
            
            counter = 1
            
        } else {
            
            counter += 1
            
        }
        
        alienImage.image = UIImage(named: "frame\(counter).jpeg")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   /*
    // All of the objects have been created but not yet displayed on the screen
    override func viewDidLayoutSubviews() {
        
        /*
        // image will appear to the left of the screen
        alienImage.center = CGPoint(x: alienImage.center.x - 400, y: alienImage.center.y)
 
        // fade the image in
        alienImage.alpha = 0
         */

        // change the size
        alienImage.frame = CGRect(x: 100, y: 20, width: 0, height: 0)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 2, animations: { () -> Void in
            
            /*
            // animate the image into the screen from the left
            self.alienImage.center = CGPoint(x: self.alienImage.center.x + 400, y: self.alienImage.center.y)
 
            // fade image in
            self.alienImage.alpha = 1
             */

            // change the size
            self.alienImage.frame = CGRect(x: 100, y: 20, width: 100, height: 200)

            
        })
 
    }
     */

}

