//
//  ViewController.swift
//  YBTextPicker
//
//  Created by Yahya on 01/07/18.
//  Copyright © 2018 Yahya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let regularFont = UIFont.systemFont(ofSize: 16)
    let boldFont = UIFont.boldSystemFont(ofSize: 16)
    
    @IBOutlet weak var btnFruitsPicker: UIButton!
    @IBOutlet weak var btnCountyPicker: UIButton!
    @IBOutlet weak var btnThemePicker: UIButton!
    @IBOutlet weak var btnGenderPicker: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func openFruitsPickerAction(_ sender:UIButton) {
        let blueColor = sender.backgroundColor
        
        let blueAppearance = YBTextPickerAppearanceManager.init(
            pickerTitle         : "Select Fruits",
            titleFont           : boldFont,
            titleTextColor      : .black,
            titleBackground     : .clear,
            searchBarFont       : regularFont,
            searchBarPlaceholder: "Search Fruits",
            closeButtonTitle    : "Cancel",
            closeButtonColor    : .darkGray,
            closeButtonFont     : regularFont,
            doneButtonTitle     : "Done",
            doneButtonColor     : blueColor,
            doneButtonFont      : boldFont,
            checkMarkPosition   : .Right,
            itemCheckedImage    : UIImage(named:"blue_ic_checked"),
            itemUncheckedImage  : UIImage(),
            itemColor           : .black,
            itemFont            : regularFont
        )
        
        let fruits = ["Cherry", "Apricots", "Banana", "Blueberry", "Orange", "Apple", "Grapes", "Guava", "Mango", "Cherries", "Damson", "Grapefruit", "Pluot", "Plums", "Kiwi", "Peach", "Pear", "Pomegranate", "Starfruit", "Watermelon", "Pineapples"]
        let picker = YBTextPicker.init(with: fruits, appearance: blueAppearance,
                                       onCompletion: { (selectedIndexes, selectedValues) in
                                        if selectedValues.count > 0{
                                            
                                            var values = [String]()
                                            for index in selectedIndexes{
                                                values.append(fruits[index])
                                            }
                                            
                                            self.btnFruitsPicker.setTitle(values.joined(separator: ", "), for: .normal)
                                            
                                        }else{
                                            self.btnFruitsPicker.setTitle("Select Fruits", for: .normal)
                                        }
        },
                                       onCancel: {
                                        print("Cancelled")
        }
        )
        
        if let title = btnFruitsPicker.title(for: .normal){
            if title.contains(","){
                picker.preSelectedValues = title.components(separatedBy: ", ")
            }
        }
        picker.allowMultipleSelection = true
        
        picker.show(withAnimation: .Fade)
    }

    @IBAction func openCountriesPickerAction(_ sender: UIButton) {
        let greenColor = sender.backgroundColor
        
        let greenAppearance = YBTextPickerAppearanceManager.init(
            pickerTitle         : "Select Countries",
            titleFont           : boldFont,
            titleTextColor      : .white,
            titleBackground     : greenColor,
            searchBarFont       : regularFont,
            searchBarPlaceholder: "Search Countries",
            closeButtonTitle    : "Cancel",
            closeButtonColor    : .darkGray,
            closeButtonFont     : regularFont,
            doneButtonTitle     : "Okay",
            doneButtonColor     : greenColor,
            doneButtonFont      : boldFont,
            checkMarkPosition   : .Left,
            itemCheckedImage    : UIImage(named:"green_ic_checked"),
            itemUncheckedImage  : UIImage(named:"green_ic_unchecked"),
            itemColor           : .black,
            itemFont            : regularFont
        )
        
        let countries = ["India", "Bangladesh", "Sri-Lanka", "Japan", "United States", "United Kingdom", "United Arab Emirates", "Egypt", "France", "Russia", "Poland", "Australia", "New Zealand", "Saudi Arabia", "South Africa", "Somalia", "Turkey", "Ukraine"]
        let picker = YBTextPicker.init(with: countries, appearance: greenAppearance,
            onCompletion: { (selectedIndexes, selectedValues) in
                if selectedValues.count > 0{
                    
                    var values = [String]()
                    for index in selectedIndexes{
                        values.append(countries[index])
                    }
                    
                    self.btnCountyPicker.setTitle(values.joined(separator: ", "), for: .normal)
                    
                }else{
                    self.btnCountyPicker.setTitle("Select Countries", for: .normal)
                }
            },
            onCancel: {
                print("Cancelled")
            }
        )
        
        if let title = btnCountyPicker.title(for: .normal){
            if title.contains(","){
                picker.preSelectedValues = title.components(separatedBy: ", ")
            }
        }
        picker.allowMultipleSelection = true
        
        picker.show(withAnimation: .Fade)
    }
    
    @IBAction func openThemePickerAction(_ sender: Any) {
        
        let theme = YBTextPickerAppearanceManager.init(
            pickerTitle         : "Pick a Theme",
            titleFont           : boldFont,
            titleTextColor      : .white,
            titleBackground     : nil,
            searchBarFont       : regularFont,
            searchBarPlaceholder: "Search Countries",
            closeButtonTitle    : "Cancel",
            closeButtonColor    : .darkGray,
            closeButtonFont     : regularFont,
            doneButtonTitle     : "Okay",
            doneButtonColor     : nil,
            doneButtonFont      : boldFont,
            checkMarkPosition   : .Right,
            itemCheckedImage    : nil,
            itemUncheckedImage  : nil,
            itemColor           : .black,
            itemFont            : regularFont
        )
        
        let arrTheme = ["Dracula", "Opa", "Moss"]
        let picker = YBTextPicker.init(with: arrTheme, appearance: theme, onCompletion: { (selectedIndexes, selectedValues) in
            if let selectedValue = selectedValues.first{
                self.btnThemePicker.setTitle(selectedValue, for: .normal)
            }else{
                self.btnThemePicker.setTitle("Pick a theme", for: .normal)
            }
        }, onCancel: {
            
        })
        picker.show(withAnimation: .FromBottom)
    }
    
    @IBAction func openGenderPickerAction(_ sender: UIButton) {
        
        let redAppearance = YBTextPickerAppearanceManager.init(
            pickerTitle         : "What's your gender?",
            titleFont           : boldFont,
            titleTextColor      : .white,
            titleBackground     : sender.backgroundColor,
            searchBarFont       : regularFont,
            searchBarPlaceholder: "Search Gender",
            closeButtonTitle    : "Cancel",
            closeButtonColor    : .darkGray,
            closeButtonFont     : regularFont,
            doneButtonTitle     : "Okay",
            doneButtonColor     : sender.backgroundColor,
            doneButtonFont      : boldFont,
            checkMarkPosition   : .Right,
            itemCheckedImage    : UIImage(named:"red_ic_checked"),
            itemUncheckedImage  : UIImage(named:"red_ic_unchecked"),
            itemColor           : .black,
            itemFont            : regularFont
        )
        
        let arrGender = ["Male", "Female", "Prefer not to Say"]
        let picker = YBTextPicker.init(with: arrGender, appearance: redAppearance,
                                       onCompletion: { (selectedIndexes, selectedValues) in
                                        if let selectedValue = selectedValues.first{
                                            if selectedValue == arrGender.last!{
                                                self.btnGenderPicker.setTitle("I'm a human", for: .normal)
                                            }else{
                                                self.btnGenderPicker.setTitle("I'm \(selectedValue)", for: .normal)
                                            }
                                        }else{
                                            self.btnGenderPicker.setTitle("What's your gender?", for: .normal)
                                        }
        },
                                       onCancel: {
                                        print("Cancelled")
        }
        )
        
        picker.show(withAnimation: .FromBottom)
    }
    
}
