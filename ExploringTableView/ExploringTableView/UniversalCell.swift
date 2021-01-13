//
//  UniversalCell.swift
//  ExploringTableView
//
//  Created by Serhio Brit on 07.01.2021.
//

import UIKit

class UniversalCell: UITableViewCell {
    
    @IBOutlet weak var userName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
