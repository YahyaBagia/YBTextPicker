# YBTextPicker
Yet another text picker / selector written in swift 4.2.

![](https://github.com/YahyaBagia/YBTextPicker/blob/master/YBTextPicker/Images/YBTextPicker_Logo.png)

### Screenshots
|![](https://github.com/YahyaBagia/YBTextPicker/blob/master/YBTextPicker/Images/YBTextPicker1.gif)|![](https://github.com/YahyaBagia/YBTextPicker/blob/master/YBTextPicker/Images/YBTextPicker2.gif)|![](https://github.com/YahyaBagia/YBTextPicker/blob/master/YBTextPicker/Images/YBTextPicker3.gif)|![](https://github.com/YahyaBagia/YBTextPicker/blob/master/YBTextPicker/Images/YBTextPicker4.gif)|
| ------------- | ------------- | ------------- | -------------: |

### Installation
Drag and Drop YBTextPicker Directory into your XCode Project Directory.

### Usage
```
let regularFont = UIFont.systemFont(ofSize: 16)
let boldFont = UIFont.boldSystemFont(ofSize: 16)
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
```

### Requirements
iOS 9.0+

### License
MIT License
