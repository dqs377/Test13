//
//  DetailViewController.swift
//  Test13
//
//  Created by fpm0259 on 2018/12/17.
//  Copyright © 2018年 fpm0259. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    
    
    
    @IBOutlet weak var nameLab: UILabel!
    @IBOutlet weak var wenduLab: UILabel!
    @IBOutlet weak var shidu: UILabel!
    @IBOutlet weak var quality: UILabel!
    @IBOutlet weak var wendu: UILabel!
    @IBOutlet weak var ganmao: UILabel!

    var model:CityModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameLab.text = model?.name;
        self.wenduLab.text = model?.wendu;
        self.shidu.text = model?.shidu;
        
        self.quality.text = model?.quality;
        self.ganmao.text = model?.ganmao;
        self.wendu.text = model?.wendu;
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
