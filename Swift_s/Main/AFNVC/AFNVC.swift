//
//  AFNVC.swift
//  Swift_s
//
//  Created by 薛坤龙 on 2016/12/2.
//  Copyright © 2016年 sigboat. All rights reserved.
//

import UIKit

class AFNVC: BaseViewController
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad();
        self.navigationItem.title = "AFN";
        
        initSubView();
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(true);
        
        
    }
    
    //创建子视图
    func initSubView()
    {
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning();
       
    }

}
