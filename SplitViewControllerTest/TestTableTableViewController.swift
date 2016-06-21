//
//  TestTableTableViewController.swift
//

import UIKit

class TestTableTableViewController: UITableViewController {

    private let tableData = ["test_morning_sample", "test_evening_sample", "test_night_sample"]

    //最初からあるメソッド
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    //データの個数を返すメソッド
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    
    
    //データを返すメソッド
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        //セルを取得し、テキストを設定して返す。
        let cell = tableView.dequeueReusableCellWithIdentifier("TestCell") as UITableViewCell!
        cell.textLabel?.text = tableData[indexPath.row]
        
        return cell
    }
    

    
    //画面遷移実行前の呼び出しメソッド
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //選択されているセルの文字列を遷移先ビューコントローラーのインスタンス変数に設定する。
        if let viewController = segue.destinationViewController as? ViewController {
            if let selectedRowIndexPath = tableView.indexPathForSelectedRow {
                viewController.imageName = tableData[selectedRowIndexPath.row]
            }
        }
    }

}
