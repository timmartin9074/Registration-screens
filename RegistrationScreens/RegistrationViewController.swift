//
//  RegistrationViewController.swift
//  RegistrationScreens
//
//  Created by Dev on 8/22/17.
//  Copyright © 2017 Tanaka. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var btnSendPhone: UIButton!
    @IBOutlet weak var btnRegisterPhone: UIButton!
    
    @IBOutlet weak var btnSendPad: UIButton!
    @IBOutlet weak var btnRegisterPad: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        btnSendPhone.layer.borderWidth = 1
        btnSendPhone.layer.borderColor = UIColor(colorLiteralRed: 245/255.0, green: 166/255.0, blue: 35/255.0, alpha: 1).cgColor
        btnSendPhone.layer.cornerRadius = 5
        
        btnRegisterPhone.layer.borderWidth = 1
        btnRegisterPhone.layer.borderColor = UIColor(colorLiteralRed: 33/255.0, green: 167/255.0, blue: 206/255.0, alpha: 1).cgColor
        btnRegisterPhone.layer.cornerRadius = 5
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        btnRegisterPad.layer.borderWidth = 1
        btnRegisterPad.layer.borderColor = UIColor(colorLiteralRed: 33/255.0, green: 167/255.0, blue: 206/255.0, alpha: 1).cgColor
        btnRegisterPad.layer.cornerRadius = btnRegisterPad.frame.size.width / 2.0
        
        btnSendPad.layer.borderWidth = 1
        btnSendPad.layer.borderColor = UIColor(colorLiteralRed: 245/255.0, green: 166/255.0, blue: 35/255.0, alpha: 1).cgColor
        btnSendPad.layer.cornerRadius = btnSendPad.frame.size.width / 2.0
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onBack(_ sender: Any) {
        
    }

    @IBAction func onStartAuction(_ sender: Any) {
        
    }

    
    
    // tableview datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RegistrationPhoneCell", for: indexPath)
        
        let row = indexPath.row
        
        var cellBgColor = UIColor(colorLiteralRed: 151/255.0, green: 151/255.0, blue: 151/255.0, alpha: 1)
        if row % 2 == 0 {
            cell.backgroundColor = cellBgColor
        } else {
            cellBgColor = UIColor(colorLiteralRed: 41/255.0, green: 41/255.0, blue: 41/255.0, alpha: 1)
            cell.backgroundColor = cellBgColor
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80;
    }
}

