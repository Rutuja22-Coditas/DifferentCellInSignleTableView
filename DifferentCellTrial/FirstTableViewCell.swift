//
//  FirstTableViewCell.swift
//  DifferentCellTrial
//
//  Created by Coditas on 19/09/21.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet weak var empImage: UIImageView!
    @IBOutlet weak var idLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
