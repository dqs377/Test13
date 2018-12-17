//
//  JsonViewController.swift
//  Test13
//
//  Created by fpm0259 on 2018/12/17.
//  Copyright © 2018年 fpm0259. All rights reserved.
//

import UIKit

class JsonViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    

    @IBOutlet weak var table: UITableView!
    var datas:[CityModel] = [CityModel]();
    override func viewDidLoad() {
        super.viewDidLoad()
     
        //数据请求
        
        let session:URLSession = URLSession.shared;
        let request:URLRequest = URLRequest.init(url: URL.init(string: "http://t.weather.sojson.com/api/weather/city/101270101")!);
        session.dataTask(with: request) { (data, response, error) in
            
            do{
                let dict:[String:Any] = try JSONSerialization.jsonObject(with: data!, options:.allowFragments) as! [String : Any];
                  let datas:[String:Any] = dict["data"] as! [String : Any];
                let citys:[String] = ["河北","南京","北京","重庆"];
                
                for name:String in citys{
                    let model:CityModel = CityModel();
                    model.name = name;
                    model.date = (dict["date"] as! String);

                    model.shidu = datas["shidu"] as? String;
                    model.quality = datas["quality"] as? String;
                    model.wendu = datas["wendu"] as? String ;
                    model.ganmao = datas["ganmao"] as? String ;
                    
                    self.datas.append(model);
                    

                }
                
                
                DispatchQueue.main.async(execute: {
                    self.table.reloadData();
                });
                
                
              
                
            }catch{
                
            }
            
            }.resume();
        
        
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.datas.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model:CityModel = self.datas[indexPath.row];
        
        let cell:CityCell = tableView.dequeueReusableCell(withIdentifier: "CityCell") as! CityCell;
        cell.model = model;
        
        return cell

    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model:CityModel = self.datas[indexPath.row];
        let board:UIStoryboard = UIStoryboard.init(name: "Main", bundle: nil);
        let vc:DetailViewController = board.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController;
        vc.model = model;
        self.navigationController?.pushViewController(vc, animated: true);
        
        
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
