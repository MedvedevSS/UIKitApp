//
//  ViewController.swift
//  UIKitApp
//
//  Created by Sergey Medvedev on 26.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedControll: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    @IBOutlet var mainButton: UIButton!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var switchForm: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Segmental Controll
        segmentedControll.insertSegment(withTitle: "Third", at: 2, animated: false)
       
        // MARK: Label
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(30)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        // MARK: Slider
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .blue
        slider.thumbTintColor = .red
        
        // MARK: TextField
        textField.backgroundColor = .white
        
        // MARK: Button
        mainButton.layer.cornerRadius = 10
        mainButton.setTitle("Готова" , for: .normal)
        
        // MARK: Date Picker
        
        
                
    }
    @IBAction func segmentedControlAction(_ sender: Any) {
        switch segmentedControll.selectedSegmentIndex {
        case 0:
            mainLabel.text = "Привет"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "Здраствуй!"
            mainLabel.textColor = .yellow
        case 2:
            mainLabel.text = "Пока!"
            mainLabel.textColor = .green
        default:
            break
        }
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        mainLabel.text = String(Int(slider.value))
    }
    @IBAction func buttonAction(_ sender: UIButton) {
        guard let text = textField.text, !text.isEmpty else { return }
        mainLabel.text = text
        
    }
    @IBAction func datePickerAction(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        
        mainLabel.text = dateFormatter.string(from: datePicker.date)
    }
    @IBAction func toggleElements(_ sender: UISwitch) {
        segmentedControll.isHidden = !switchForm.isOn
        mainLabel.isHidden = !switchForm.isOn
        slider.isHidden = !switchForm.isOn
        textField.isHidden = !switchForm.isOn
        mainButton.isHidden = !switchForm.isOn
        datePicker.isHidden = !switchForm.isOn
        
        
    }
    
    
    

}

