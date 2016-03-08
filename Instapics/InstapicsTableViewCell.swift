//
//  InstapicsTableViewCell.swift
//  Instapics
//
//  Created by Aditya Balwani on 3/8/16.
//  Copyright © 2016 Aditya Balwani. All rights reserved.
//

import UIKit
import ParseUI

class InstapicsTableViewCell: UITableViewCell {

    @IBOutlet weak var instaImageView: PFImageView!
    
    var instagramPost: PFObject! {
        didSet {
            self.instaImageView.file = instagramPost["media"] as? PFFile
            self.instaImageView.loadInBackground()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
