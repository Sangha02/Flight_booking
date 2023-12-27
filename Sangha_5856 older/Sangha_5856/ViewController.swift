//
//  ViewController.swift
//  Sangha_5856
//
//  Created by Student on 30/08/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        img.animationImages = image
        img.animationDuration = 3
        img.animationRepeatCount = 0
        img.startAnimating()
    }

    @IBOutlet weak var switchBtn: UISwitch!
    
    @IBOutlet weak var ToLbl: UILabel!
    
  
    @IBOutlet weak var FromLbl2: UILabel!
    
    
    @IBOutlet weak var FomLbl: UITextField!
    
    @IBAction func SearchBtn(_ sender: Any) {
         self.performSegue(withIdentifier: "UI3", sender: nil)
    
}

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "UI3" {
        var destObj = segue.destination as! ViewController3
            destObj.from = FomLbl.text
            destObj.to = Totxt.text
    }
}
    @IBOutlet weak var Totxt: UITextField!
    
    @IBOutlet weak var DateLbl: UILabel!
    
    @IBOutlet weak var PriceLbl: UILabel!
    @IBOutlet weak var submitBtn: UIButton!
    
    @IBOutlet weak var DateTxt: UITextField!
    
    
    @IBOutlet weak var image2: UIImageView!
    
    
    @IBOutlet weak var img: UIImageView!
    
 var image: [UIImage] = [ UIImage(named: "indigo")!,
                             UIImage(named: "akasa")!,
                             UIImage(named: "air india")!,
                             UIImage(named: "spicejet")!,
                             UIImage(named: "vistara")!
                            ]
   
    
//    @IBOutlet weak var RegForm: UITextField!
    @IBOutlet weak var Theme: UILabel!
    //Adding alert box
   
    
    @IBAction func switchAction(_ sender: Any) {
        if switchBtn.isOn == true{
            
            //view.backgroundColor = UIColor.brown
//            switchLbl.textColor = UIColor.black
            switchBtn.tintColor = UIColor.brown
            switchBtn.thumbTintColor = UIColor.black
            view.backgroundColor = UIColor.white
            Theme.textColor = UIColor.black
//            RegForm.backgroundColor = UIColor.black
//            RegForm.textColor = UIColor.white
            ToLbl.textColor = UIColor.black
            FomLbl.textColor = UIColor.black
        
        
            FromLbl2.textColor = UIColor.black
            
            
        } else {
//            switchLbl.text = "Dark Mode"
//            switchLbl.textColor = UIColor.white
            switchBtn.tintColor = UIColor.white
            switchBtn.thumbTintColor = UIColor.brown
            view.backgroundColor = UIColor.black
            Theme.textColor = UIColor.brown
//            RegForm.backgroundColor = UIColor.brown
            ToLbl.textColor = UIColor.brown
            FomLbl.textColor = UIColor.brown
            
        
            FromLbl2.textColor = UIColor.brown
        }
        
        
    }
    var places = ["Select Your Source", "Select Your Destination"]
    var source = ["Kolkata", "Delhi", "Hyderabad", "Mumbai","Bangalore", "Pune", "Goa", "Guwahati", "Chennai", "Coimbatore", "Dehradun", "Srinagar"]
    
    var destination = ["Tokyo","Germany","Qatar", "China", "Malaysia","Georgia","Sydney","Singapore","Bali","Dubai",
                       "Istanbul", "London"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0) {
            return source.count
        } else {
            return destination.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellObj = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
        if(indexPath.section == 0){
            cellObj.textLabel?.text = source[indexPath.row]
        } else {
            cellObj.textLabel?.text = destination[indexPath.row]
        }
        return cellObj
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return places[section]
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return " "
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.section == 0){
            FomLbl.text = source[indexPath.row]
        } else {
           Totxt.text  = destination[indexPath.row ]
        }
    }
    
    
    @IBOutlet weak var switchLbl: UILabel!
    @IBAction func unwindToHome(_ segue: UIStoryboardSegue) {
        // This method can be empty or perform any necessary actions when returning to the home page.
    }
}

