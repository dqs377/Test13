//
//  CityCell.swift
//  Test13
//
//  Created by fpm0259 on 2018/12/17.
//  Copyright © 2018年 fpm0259. All rights reserved.
//

import UIKit

class CityCell: UITableViewCell {

    @IBOutlet weak var dateLab: UILabel!
    @IBOutlet weak var typeLab: UILabel!
    var _model:CityModel?
    var model: CityModel {
        get {
            return _model!;
        }
        set {
            _model = newValue;
            self.dateLab.text = model.name;
            self.typeLab.text = model.quality;
            
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
