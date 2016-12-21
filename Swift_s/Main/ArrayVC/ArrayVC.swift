//
//  ArrayVC.swift
//  Swift_s
//
//  Created by 薛坤龙 on 2016/12/2.
//  Copyright © 2016年 sigboat. All rights reserved.
//

import UIKit

class ArrayVC: BaseViewController
{
    
    var someInts = [Int](); // int类型的数组 (空数组)    数组声明为变量，为可变数组。
    
    override func viewDidLoad()
    {
        super.viewDidLoad();
        self.navigationItem.title = "集合的使用";
        
        //*****************************数组的操作
    
        var shopList = ["xue","kun"]; //类型推断机制 shopList为string类型的数组
        
        if(!shopList.isEmpty)
        {
            print("shopList:数组不为空");
        }
        print("shopList:\(shopList),个数:\(shopList.count)");
        shopList.append("long"); //数组增加一个元素
        print("shopList:\(shopList),个数:\(shopList.count)");
        print("shopList:最后一个元素\(shopList.last)");
        
        //改变第一个元素
        shopList[0] = "修改";
        print("shopList:\(shopList),个数:\(shopList.count)");
        
        //在第一个元素前加一个元素
        shopList.insert("0前增加一个元素", at: 0);
        print("shopList:\(shopList),个数:\(shopList.count)");
        
        //移除某一个元素
        shopList.remove(at: 0);
        print("shopList:\(shopList),个数:\(shopList.count)");
        
        //移除最后一个元素
        shopList.removeLast();
        print("shopList:\(shopList),个数:\(shopList.count)");
        
        //遍历数组
        for value in shopList
        {
            print("shopList:\(value)");
        }
        
        for (index,value) in shopList.enumerated()
        {
            print("shopList:\(index):\(value)");
        }
        
        //*****************************Sets的操作,集合元素顺序不重要时或者希望确保每个元素只出现一次 时可以使用集合而不是数组
     
        var letters = Set<String>();
        letters .insert("A");  // 插入一个元素
//        letters = [];  现在是一个空的 Set, 但是它依然是 Set<Character> 类型
        print("letters is of type Set<Character> with \(letters.count) items.");
        var favoriteGenres:Set<String> = ["Rock","Class","D","F","M","A"];
        print("favoriteGenres is of type Set<String> with \(favoriteGenres.count) items.");
        favoriteGenres.insert("kun");
        print("favoriteGenres is of type Set<String> with \(favoriteGenres.count) items.");
        if (!favoriteGenres.isEmpty)  //判断一个集合是否为空
        {
            print("Set不为空");
        }
        
        print("favoriteGenres is of type Set<String> with \(favoriteGenres).");
        //移除某个元素  如果该值是该 Set 的一个元素则删除该元素并且返回 被删除的元素值，否则如果该 Set 不包含该值，则返回 nil
        let removedGenre = favoriteGenres.remove("kun");
        if((removedGenre) != nil)
        {
            print("\(removedGenre)? I'm over it.");
        }else
        {
            print("I never much cared for that.");
        }
        
        print("移除后的favoriteGenres is of type Set<String> with \(favoriteGenres).");
        
        //contains(_:) 方法去检查 Set 中是否包含一个特定的值:
        if (favoriteGenres.contains("Rock"))
        {
            print("包含Rock");
            
        }else
        {
            print("不包含Rock");
        }
        
        //遍历一个集合
        for value in favoriteGenres
        {
            print("set无序遍历:\(value)");
        }
        
        for value in favoriteGenres.sorted()
        {
            print("set有序遍历:\(value)");
        }
        
        
        //*****************************字典的操作
        var namesOfIntegers = Dictionary<Int,String>();// namesOfIntegers 是一个空的 [Int: String] 字典  键-值
        namesOfIntegers[16] = "sixteen"; //增加 键值对
        print("字典:\(namesOfIntegers)");
        
        
        var dic:Dictionary<String,String> = ["三国演义":"罗贯中"];
        
        print("初始化-dic:\(dic)");
        dic["水浒传"] = "施耐庵";  //增加
        dic["11111111"] = "22222222";
        print("增加后-dic:\(dic)");
        dic.updateValue("施耐庵2", forKey: "水浒传"); //更改
        print("更改后-dic:\(dic)");
        dic.removeValue(forKey: "水浒传");//删除
        print("删除后-dic:\(dic)");
        
        //获得键对应的值
        let value = dic["三国演义"];
        print("三国演义 的 value \(value)");
        
        //遍历
        for (key,value) in dic
        {
            print("键：\(key),值：\(value)")
        
        }
    
        for tuples in dic //无序
        {
            print("tuples:键:\(tuples.0) 值:\(tuples.1)");
        
        }
        
        for key in dic.keys  //key
        {
            print("key \(key)");
        }
        
        for value in dic.values //value
        {
            print("value \(value)");
        }
        
     
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning();
    }

}
