//
//  CustomSplashVC.swift
//  GoSmart
//
//  Created by Cears on 18/04/19.
//  Copyright © 2019 Cears. All rights reserved.
//

import UIKit
class CustomSplashVC: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet  var tblvw1: EndlessTableView!
    @IBOutlet  var tblvw2: EndlessTableView!
    @IBOutlet  var tblvw3: EndlessTableView!
    @IBOutlet  var tblvw4: EndlessTableView!

    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.SetupXibAndAnimation()
    }
    func SetupXibAndAnimation(){
        self.tblvw1.register(UINib(nibName: "CellOfTbl1", bundle: nil), forCellReuseIdentifier: "tbl1")
        self.tblvw2.register(UINib(nibName: "CellOfTbl2", bundle: nil), forCellReuseIdentifier: "tbl2")
        self.tblvw3.register(UINib(nibName: "CellOfTbl3", bundle: nil), forCellReuseIdentifier: "tbl3")
        self.tblvw4.register(UINib(nibName: "CellOfTbl4", bundle: nil), forCellReuseIdentifier: "tbl4")
        
        tblvw1.upToDown = false
        tblvw2.upToDown = true
        tblvw3.upToDown = false
        tblvw4.upToDown = true
        
        tblvw1.enableAutoScrolling = true
        tblvw2.enableAutoScrolling = true
        tblvw3.enableAutoScrolling = true
        tblvw4.enableAutoScrolling = true
    }
}
//MARK:- UITableViewDelegate & UITableViewDataSource
extension CustomSplashVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 500
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(tableView == tblvw1){
            let cell = tblvw1.dequeueReusableCell(withIdentifier: "tbl1", for: indexPath) as! CellOfTbl1
            return cell
        } else if (tableView == tblvw2){
            let cell = tblvw2.dequeueReusableCell(withIdentifier: "tbl2", for: indexPath) as! CellOfTbl2
            return cell
        } else if (tableView == tblvw3){
            let cell = tblvw3.dequeueReusableCell(withIdentifier: "tbl3", for: indexPath) as! CellOfTbl3
            return cell
        } else {
            let cell = tblvw4.dequeueReusableCell(withIdentifier: "tbl4", for: indexPath) as! CellOfTbl4
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 845
    }
}
