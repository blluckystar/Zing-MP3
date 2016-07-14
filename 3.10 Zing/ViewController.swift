//
//  ViewController.swift
//  3.10 Zing
//
//  Created by Ba Loi Mac on 7/15/16.
//  Copyright © 2016 AloCentral. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var text: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        logo!.alpha = 0
        text!.alpha = 0
        
        
        
    }
    //TAT CA DEU BEN TRONG CLASS VIEWCONTROLLER, xoa cai defaul override, them 1 cai override moi
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
        UIView.animateWithDuration(4, animations: {
            self.logo!.alpha = 1
            })
        { (finish) in
            
            UIView.animateWithDuration(2, animations: {
                
                self.text!.center = CGPointMake(self.logo!.center.x, 70)
                self.text!.alpha = 1
            })

        }
    }

}