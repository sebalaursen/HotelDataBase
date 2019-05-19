//
//  RoomCellTableViewCell.swift
//  HotelDataBase
//
//  Created by Sebastian on /18/5/19.
//  Copyright © 2019 Sebastian Laursen. All rights reserved.
//

import UIKit

class RoomTableViewCell: UITableViewCell {

    let cellView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    var roomNumLabel: UILabel = {
        let la = UILabel()
        la.translatesAutoresizingMaskIntoConstraints = false
        return la
    }()
    
    var roomTypeLabel: UILabel = {
        let la = UILabel()
        la.translatesAutoresizingMaskIntoConstraints = false
        return la
    }()
    
    var roomsLabel: UILabel = {
        let la = UILabel()
        la.translatesAutoresizingMaskIntoConstraints = false
        return la
    }()
    
    var capacityLabel: UILabel = {
        let la = UILabel()
        la.translatesAutoresizingMaskIntoConstraints = false
        return la
    }()
    
    var priceLabel: UILabel = {
        let la = UILabel()
        la.translatesAutoresizingMaskIntoConstraints = false
        return la
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup() {
        addSubview(cellView)
        cellView.addSubview(roomNumLabel)
        cellView.addSubview(roomTypeLabel)
        cellView.addSubview(capacityLabel)
        cellView.addSubview(roomsLabel)
        cellView.addSubview(priceLabel)
        
        cellView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        cellView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        cellView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        cellView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        
        roomNumLabel.font = UIFont.systemFont(ofSize: 20.0)
        roomNumLabel.leftAnchor.constraint(equalTo: cellView.leftAnchor, constant: 10).isActive = true
        roomNumLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive  = true
        
        roomTypeLabel.font = UIFont.systemFont(ofSize: 20.0)
        roomTypeLabel.leftAnchor.constraint(equalTo: roomNumLabel.rightAnchor, constant: 50).isActive = true
        roomTypeLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive  = true
        
        capacityLabel.font = UIFont.systemFont(ofSize: 20.0)
        capacityLabel.leftAnchor.constraint(equalTo: roomTypeLabel.rightAnchor, constant: 50).isActive = true
        capacityLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive  = true
        
        roomsLabel.font = UIFont.systemFont(ofSize: 20.0)
        roomsLabel.leftAnchor.constraint(equalTo: capacityLabel.rightAnchor, constant: 50).isActive = true
        roomsLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive  = true
        
        priceLabel.font = UIFont.systemFont(ofSize: 20.0)
        priceLabel.leftAnchor.constraint(equalTo: roomsLabel.rightAnchor, constant: 50).isActive = true
        priceLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive  = true
    }

}
