//
//  ViewController.swift
//  Is It Prime
//
//  Created by karur4n on 2015/10/03.
//  Copyright © 2015年 karur4n. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func isItPrime(sender: AnyObject) {
        
        if let number = Int(numberTextField.text!) {
            
            var isPrime = true
            
            if number == 1 {
                isPrime = false
            }
            
            if number != 2 && number != 1 {
                for var i = 2; i < number; i++ {
                    if number % i == 0 {
                        isPrime = false
                    }
                }
            }
            
            if isPrime {
                resultLabel.text = "\(number) is prime."
            } else {
                resultLabel.text = "\(number) is not prime."
            }
        } else {
            resultLabel.text = "Please Enter a whole number"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

