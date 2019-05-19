//
//  AccFiltersViewController.swift
//  HotelDataBase
//
//  Created by Sebastian on /19/5/19.
//  Copyright © 2019 Sebastian Laursen. All rights reserved.
//

import UIKit

class AccFiltersViewController: UIViewController {

    @IBOutlet weak var typeTF: UITextField!
    @IBOutlet weak var guestsTF: UITextField!
    @IBOutlet weak var priceTF: UITextField!
    @IBOutlet weak var priceToTF: UITextField!
    
    let types = ["", "Suite", "Studio", "Double", "Single"]
    let guests = ["", "1", "2", "3", "4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPickers()
    }
    
    func setupPickers() {
        
        let typePicker = UIPickerView()
        typePicker.delegate = self
        typePicker.backgroundColor = .lightGray
        
        let guestsPicker = UIPickerView()
        guestsPicker.delegate = self
        guestsPicker.backgroundColor = .lightGray
        
        typeTF.inputView = typePicker
        guestsTF.inputView = guestsPicker
        
        setUpToolbar()
    }
    
    func setUpToolbar() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        toolBar.backgroundColor = UIColor.darkGray
        
        let doneBtn = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(dismissPicker))
        
        toolBar.setItems([doneBtn], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        typeTF.autocorrectionType = .no
        typeTF.inputAccessoryView = toolBar
        guestsTF.autocorrectionType = .no
        guestsTF.inputAccessoryView = toolBar
    }
    
    @objc func dismissPicker() {
        view.endEditing(true)
    }
    
    @IBAction func doneBtn(_ sender: Any) {
    }
    
    @IBAction func cancelBtn(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    
}

extension AccFiltersViewController:  UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == typeTF.inputView {
            return types.count
        }
        else {
            return guests.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == typeTF.inputView {
            return types[row]
        }
        else {
            return guests[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == typeTF.inputView {
            typeTF.text = types[row]
        }
        else {
            guestsTF.text = guests[row]
        }
    }
}
