# YBTextPicker
Yet another text picker / selector written in swift 4.2.

![](https://github.com/YahyaBagia/YBTextPicker/blob/master/YBTextPicker/Images/YBTextPicker_Logo.png)

### Screenshots
|![](https://github.com/YahyaBagia/YBTextPicker/blob/master/YBTextPicker/Images/YBTextPicker_1.gif)|![](https://github.com/YahyaBagia/YBTextPicker/blob/master/YBTextPicker/Images/YBTextPicker_2.gif)|
| ------------- |  -------------: |

|![](https://github.com/YahyaBagia/YBTextPicker/blob/master/YBTextPicker/Images/YBTextPicker_3.gif)|![](https://github.com/YahyaBagia/YBTextPicker/blob/master/YBTextPicker/Images/YBTextPicker_4.gif)|
| ------------- |  -------------: |

### Installation
Drag and Drop YBTextPicker Directory into your XCode Project Directory.

### Usage
```
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
self.btnCountyPicker.setTitle("Select countries", for: .normal)
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
```

### Requirements
iOS 9.0+

### License
MIT License
