//
//  FirstVC.swift
//  Swift_s
//
//  Created by 薛坤龙 on 2016/12/2.
//  Copyright © 2016年 sigboat. All rights reserved.
//

import UIKit


class FirstVC: BaseViewController,UITableViewDelegate,UITableViewDataSource
{
    var tableView : UITableView?;
//    var items:[String] = [];
    var items = [String]();
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad();
        
        self.navigationItem.title = "学习";
        items.append("UserDefaults");
        items.append("AFN");
        items.append("Array");
        initTableView();

    }

    func initTableView()
    {
        self.tableView=UITableView(frame:self.view.frame,style:UITableViewStyle.plain);
        self.tableView!.dataSource=self;
        self.tableView!.delegate = self;
        self.tableView!.register(UITableViewCell.self, forCellReuseIdentifier: "cell");
        self.view.addSubview(self.tableView!);
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.items.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView .dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell;
        let row=indexPath.row as Int;
        cell.textLabel?.text=self.items[row];
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {        
        switch indexPath.row
        {
        case 0:
            let userDefaultsVC = UserDefaultsVC();
            userDefaultsVC.hidesBottomBarWhenPushed = true;
            self.navigationController?.pushViewController(userDefaultsVC, animated: true);
        case 1:
            let afnVC = AFNVC();
            afnVC.hidesBottomBarWhenPushed = true;
            self.navigationController?.pushViewController(afnVC, animated: true);
        case 2:
            let arrayVC = ArrayVC();
            arrayVC.hidesBottomBarWhenPushed = true;
            self.navigationController?.pushViewController(arrayVC, animated: true);
            
        default: break
            
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
}
