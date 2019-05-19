//
//  AccViewController.swift
//  HotelDataBase
//
//  Created by Sebastian on /18/5/19.
//  Copyright © 2019 Sebastian Laursen. All rights reserved.
//

import UIKit

struct f {
    let num: Int?
    let type: String?
}

class AccViewController: UIViewController {
    var tableView = UITableView()
    
    @IBOutlet weak var navBar: UINavigationBar!
    let list = [f(num: 1, type: "lix"), f(num: 2, type: "lux")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView() {
        self.view.addSubview(tableView)
        
        tableView.register(RoomTableViewCell.self, forCellReuseIdentifier: "CellID")
        tableView.dataSource = self
        tableView.delegate = self
        //tableView.contentInset = UIEdgeInsets(top: 5, left: 0, bottom: 0, right: 0)
        
        //constarints adding
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: (self.view.topAnchor) ).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let registerVC = segue.destination as? RegisterViewController {
            registerVC.seguePath = "accFinishSegue"
        }
    }

}

extension AccViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID", for: indexPath) as! RoomTableViewCell
        cell.roomNumLabel.text = "Room №: " + "\(list[indexPath.row].num ?? 9)"
        cell.roomTypeLabel.text = "Room Type: " +  "\(list[indexPath.row].type ?? "a")"
        cell.capacityLabel.text = "Capacity: 3"
        cell.roomsLabel.text = "Rooms: 2"
        cell.priceLabel.text = "Price: "  + "100"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "accomodateSegue", sender: nil)
    }
}
