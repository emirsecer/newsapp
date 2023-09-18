//
//  newsCell.swift
//  haberuygulamasi
//
//  Created by Emir Seçer on 16.09.2023.
//

import UIKit

class newsCell: UITableViewCell {

    @IBOutlet weak var storylabel: UILabel!
    @IBOutlet weak var titlelabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
