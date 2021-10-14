//
//  TimeTable_create_ViewController.swift
//  Washi-no-Jikanwari
//
//  Created by Shogo Taguchi on 2021/10/12.
//

import UIKit


class TimeTable_create_ViewController:UIViewController
                                      ,UITableViewDelegate, UITableViewDataSource{
    

    

    @IBOutlet weak var MapView: UITableView!
    

    @IBOutlet weak var CreateTimeTableView: UITableViewCell!
    
    //配列settingsを設定
    let settings = ["時間割作成", "時間割削除", "テーマ設定", "通知設定"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //CreateTimeTableView.delegate=self
        //CreateTimeTableView.dataSource = self

    }
    
    
    override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()

    }
    


    //setting配列数取得
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        return settings.count
    }
        
    //TableViewCell指定、取得
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            // セルを取得する
            let cell: UITableViewCell = CreateTimeTableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath)
        
        // セルに表示する値を設定する
        cell.textLabel!.text = settings[indexPath.row]
        
        return cell
    }
}
