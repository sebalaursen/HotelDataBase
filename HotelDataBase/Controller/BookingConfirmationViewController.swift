//
//  BookingConfirmationViewController.swift
//  HotelDataBase
//
//  Created by Sebastian on /18/5/19.
//  Copyright © 2019 Sebastian Laursen. All rights reserved.
//

import UIKit

class BookingConfirmationViewController: UIViewController {
    
    @IBOutlet weak var guestL: UILabel!
    @IBOutlet weak var guestsL: UILabel!
    @IBOutlet weak var checkInL: UILabel!
    @IBOutlet weak var checkOutL: UILabel!
    @IBOutlet weak var priceL: UILabel!
    @IBOutlet weak var feeL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func doneBtn(_ sender: Any) {
        performSegue(withIdentifier: "finishedReservation", sender: nil)
    }

}
