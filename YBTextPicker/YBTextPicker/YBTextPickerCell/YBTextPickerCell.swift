//
//  YBTextPickerCell.swift
//  YBTextPicker
//
//  Created by Yahya on 01/07/18.
//  Copyright © 2018 Yahya. All rights reserved.
//

import UIKit

class YBTextPickerCell: UITableViewCell {

    @IBOutlet weak var lblItem: UILabel!
    
    @IBOutlet weak var imgLeadingCheck: UIImageView!
    @IBOutlet weak var widthOfImgLeadingCheck: NSLayoutConstraint!
    
    @IBOutlet weak var imgTrailingCheck: UIImageView!
    @IBOutlet weak var widthOfImgTrailingCheck: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
