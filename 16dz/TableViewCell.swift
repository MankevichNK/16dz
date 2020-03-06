//
//  TableViewCell.swift
//  16dz
//
//  Created by Пользователь on 3/5/20.
//  Copyright © 2020 Пользователь. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var labelCell: UILabel!
    
    @IBOutlet weak var imageCell: UIImageView!
    
    func set(photo: UIImage, name: String?){
        labelCell.text = name
        imageCell.image = photo
    }
}
