//
//  RegisterViewController.swift
//  HotelDataBase
//
//  Created by Sebastian on /18/5/19.
//  Copyright © 2019 Sebastian Laursen. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var seguePath: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
//accFinishSegue reservationFinishSegue
    
    @IBAction func doneBtn(_ sender: Any) {
        performSegue(withIdentifier: seguePath, sender: nil)
    }
    
}
