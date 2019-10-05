//
//  ViewController.swift
//  DemoApplication
//
//  Created by Darshan on 5/27/19.
//  Copyright © 2019 Darshan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnCheckBox:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnCheckBox.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        btnCheckBox.setImage(UIImage(named:"Checkmark"), for: .selected)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- checkMarkTapped
    @IBAction func checkMarkTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
        }) { (success) in
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
                sender.isSelected = !sender.isSelected
                sender.transform = .identity
            }, completion: nil)
        }

}
}
