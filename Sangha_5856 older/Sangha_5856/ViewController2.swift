//
//  ViewController2.swift
//  Sangha_5856
//
//  Created by Student on 11/10/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import WebKit

class ViewController2: UIViewController {
    var Fromtxt = "";
    var Totxt = "";
    var price = "";

    
    @IBOutlet weak var FromLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    
    @IBOutlet weak var ToLbl: UILabel!
    
    @IBOutlet weak var webView: WKWebView!
    var urlReq : URLRequest!
    var url: URL!
    
    @IBOutlet weak var Cost: UILabel!
    
    @IBAction func VideoChk(_ sender: Any) {
        url = URL(string: "https://www.youtube.com/watch?v=3ntw24P-_EU")
        urlReq = URLRequest(url: url)
        webView.load(urlReq)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FromLbl.text = (Fromtxt)
        ToLbl.text = (Totxt)
        Cost.text = price
        
        // Do any additional setup after loading the view.
    }

    

//    @IBAction func Okbtn(_ sender: Any) {
//        var submit = UIAlertController(title: "Message :", message: "Ticket booked successfully", preferredStyle: UIAlertController.Style.alert)
//        submit.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler : nil
//        ))
//        present(submit, animated:true, completion: nil)
//    }
    
    

}
  


