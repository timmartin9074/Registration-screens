//
//  NewBidderViewController.swift
//  RegistrationScreens
//
//  Created by Dev on 8/23/17.
//  Copyright © 2017 Tanaka. All rights reserved.
//

import UIKit

class NewBidderViewController: UIViewController {

    @IBOutlet weak var btnAddPaddleNumber: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnAddPaddleNumber.layer.borderWidth = 1
        btnAddPaddleNumber.layer.borderColor = UIColor(colorLiteralRed: 33/255.0, green: 167/255.0, blue: 206/255.0, alpha: 1).cgColor
        btnAddPaddleNumber.layer.cornerRadius = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onBack(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
}
