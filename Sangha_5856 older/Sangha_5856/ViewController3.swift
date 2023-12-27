//
//  ViewController3.swift
//  Sangha_5856
//
//  Created by ayush on 03/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ViewController3: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "UI2" {
//              var destObj = segue.destination as! ViewController2
//       destObj.a = FromLbl.text
//              destObj.b = tolbl.text
//          }
//
//      }
    
    
    
    
    @IBOutlet weak var myTable: UITableView!
    var start = ["15:25","09.55","00:20","01:55","21:15","01:55"]
    var end = ["09:45","09:45","07:35","15:50","09:15","07:40"]
    var duration = ["14h 50m | 1 Stop", "20h 20m | 1 Stop","27h 45m | 1 Stop", "10h 25m | 1 Stop", "8h 30m | 1 Stop", "26h 15m | 1 Stop"]
    var prices = ["Rs 35,802","Rs 39,299","Rs 40,430","Rs 38,799","Rs 32,829", "Rs 35,999"]
    var images : [UIImage] = [UIImage(named : "air india")!, UIImage(named : "akasa")!,UIImage(named : "indigo")!,UIImage(named: "spicejet")!,UIImage(named: "vistara")!,UIImage(named: "emirates")!]
    var from: String! = "";
    var to:String! = "";
    var costSelected = "";
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let obj = myTable.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableCell
//        obj.StartLbl
        obj.PriceLbl.text = prices[indexPath.row]
        obj.StartLbl.text = start[indexPath.row]
        obj.EndLbl.text = end[indexPath.row]
        obj.DurationLbl.text = duration[indexPath.row]
        obj.flightImg.image = images[indexPath.row]
        obj.FromLbl.text = from
        obj.tolbl.text = to
//        obj.bookOutlet.tag = indexPath.row
        obj.bookOutlet.addTarget(self, action: #selector(book), for: .touchUpInside)
        return obj
    }

    
    
    
    @objc func book(sender : UIButton){
        let index = sender.tag
        if(index < prices.count){
            let confirmationAlert = UIAlertController(title: "Message", message: "Are you sure you want to book this flight?", preferredStyle: .alert)
            confirmationAlert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: {_ in self.bookFlight(at: index)}))
            confirmationAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            present(confirmationAlert, animated: true, completion: nil)
        }
    }

    
    func bookFlight(at index : Int){
     
        let indexPath = IndexPath(row:index, section: 0)
        costSelected = prices[indexPath.row]
        performSegue(withIdentifier: "UI2", sender: nil)
    }

    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "UI2" {
              var destObj = segue.destination as! ViewController2
       destObj.Fromtxt = from
              destObj.Totxt = to
            destObj.price = costSelected
            
          }
      
      }
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
    

        // Do any additional setup after loading the view
        
        
    }
    

}
