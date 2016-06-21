//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testImageView: UIImageView!
    var imageName:String!
    
    //最初からあるメソッド
    override func viewDidLoad() {
        super.viewDidLoad()

        //画像を設定する。
        if(imageName != nil) {
            testImageView.image = UIImage(named: imageName)
        }
    }

}

