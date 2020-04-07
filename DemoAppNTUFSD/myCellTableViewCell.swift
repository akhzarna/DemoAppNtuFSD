//
//  myCellTableViewCell.swift
//  DemoAppNTUFSD
//
//  Created by Akhzar Nazir on 07/04/2020.
//  Copyright © 2020 letlechnologies. All rights reserved.
//

import UIKit

class myCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
