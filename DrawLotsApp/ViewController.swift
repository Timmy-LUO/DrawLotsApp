//
//  ViewController.swift
//  DrawLotsApp
//
//  Created by 羅承志 on 2021/5/4.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lotsImageView: UIImageView!
    @IBOutlet weak var drawLotsButton: UIButton!
    
    //把66張籤詩排好array(64張籤詩含2張頭尾籤)
    var images = ["00","01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66"]
    
    //設定一個變數以利之後切換圖片呼叫用
    var item:Int! = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //開啟時會看到搖籤筒的圖片，抽完籤後讓籤詩蓋住籤桶圖片
    @IBAction func drawLotsButton(_ sender: Any) {
        view.addSubview(lotsImageView)
        updateImage()
    }
    //更換影像，item為籤詩數量，＋到66時變0從頭開始
    //.shuffle()可讓陣列隨機排序
    func updateImage() {
        images.shuffle()
        lotsImageView.image = UIImage(named: "\(images[item])")
        lotsImageView.contentMode = .scaleAspectFit
        item = item + 1
        if item <= 66 {
            lotsImageView.image = UIImage(named: "\(images[item])")
        } else {
            item = 00
            lotsImageView.image = UIImage(named: "\(images[item])")
        }
    }
}

