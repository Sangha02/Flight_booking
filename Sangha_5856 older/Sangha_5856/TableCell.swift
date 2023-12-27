//
//  TableCell.swift
//  Sangha_5856
//
//  Created by ayush on 03/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {

    
    @IBOutlet weak var flightImg: UIImageView!
    @IBOutlet weak var EndLbl: UILabel!
    @IBOutlet weak var StartLbl: UILabel!
    
    @IBOutlet weak var bookOutlet: UIButton!
    @IBOutlet weak var tolbl: UILabel!
    
    @IBOutlet weak var FromLbl: UILabel!
    @IBOutlet weak var PriceLbl: UILabel!
    @IBOutlet weak var DurationLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
