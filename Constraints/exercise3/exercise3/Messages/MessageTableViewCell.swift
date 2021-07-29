//
//  MessageTableViewCell.swift
//  exercise3
//
//  Created by Maximiliano Riquelme Vera on 27/07/2021.
//

import UIKit

class MessageTableViewCell: UITableViewCell {
    
    @IBOutlet var background: UIView!
    @IBOutlet var message: UILabel!
    @IBOutlet var username: UILabel!
    @IBOutlet var timeMessage: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
