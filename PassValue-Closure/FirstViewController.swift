//
//  FirstViewController.swift
//  PassValue-Closure
//
//  Created by Nick Lee on 2017/8/15.
//  Copyright © 2017年 nicklee. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var inputTextfield: UITextField!

    @IBAction func btnSend(_ sender: UIButton) {
        
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController

        secondVC.firstVC = self

        self.present(secondVC, animated: true, completion: nil)
        
    }
    
    func prepareText(_ handler: (String) -> Void) {
        
        guard let text = inputTextfield.text else { return }
        
        handler(text)
        
    }

}
