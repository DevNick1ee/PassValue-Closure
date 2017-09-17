//
//  SecondViewController.swift
//  PassValue-Closure
//
//  Created by Nick Lee on 2017/8/15.
//  Copyright © 2017年 nicklee. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var firstVC: FirstViewController?

    @IBOutlet weak var displayTextview: UITextView!

    @IBAction func btnBack(_ sender: UIButton) {

        self.dismiss(animated: true, completion: nil)

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstVC?.prepareText { (text) in
            
            displayTextview.text = text
            
        }

    }
    
    deinit {
        
        print("Second VC is died.")
        
    }

}
