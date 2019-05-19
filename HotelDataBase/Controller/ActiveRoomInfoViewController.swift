//
//  ActiveRoomInfoViewController.swift
//  HotelDataBase
//
//  Created by Sebastian on /18/5/19.
//  Copyright © 2019 Sebastian Laursen. All rights reserved.
//

import UIKit

class ActiveRoomInfoViewController: UIViewController {
    @IBOutlet weak var guestL: UILabel!
    @IBOutlet weak var guestsL: UILabel!
    @IBOutlet weak var checkInL: UILabel!
    @IBOutlet weak var checkOutL: UILabel!
    @IBOutlet weak var lCheckOutL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func doneBtn(_ sender: Any) {
        performSegue(withIdentifier: "doneEvictingSegue", sender: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
