//
//  ViewController.swift
//  iOSSample
//
//  Created by DAO QUAN on 2022/01/18.
//

import UIKit


class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        title = "第1画面"
        view.backgroundColor = .white
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    let listData:[String:[String]] = ["魚":["マグロ","カツオ","サンマ"],
                                      "果物":["リンゴ","イチゴ","ナシ","ミカン","スイカ","オレンジ","イチジク","モモ","マンゴー"]]
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return listData.keys.count
    }
  
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let sectionTitle = Array(listData.keys)[section]
        var frame = CGRect(origin: .zero, size: CGSize(width: tableView.frame.size.width, height: 40))
        let view = UIView(frame: frame)
        view.backgroundColor = .gray
                           
        frame.origin.x = 10
        frame.size.width = frame.size.width - 10
        let lbl = UILabel(frame: frame)
        lbl.text = sectionTitle
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 20.0)

        view.addSubview(lbl)
        
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
           return 40
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let key = Array(listData.keys)[section]
        return listData[key]?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let key = Array(listData.keys)[indexPath.section]
        let data = listData[key]
        cell.textLabel?.text = data?[indexPath.row]

        return cell
    }
}

