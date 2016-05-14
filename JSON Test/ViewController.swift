//
//  ViewController.swift
//  JSON Test
//
//  Created by Justin Doo on 5/14/16.
//  Copyright © 2016 Justin Doo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let apiKey = "rKk09BXyG0kXF1lnde9GOltFq6FfvNQd"
  let JSONParser = JSONConnect()
  
  
  
  @IBOutlet weak var show1Image: UIImageView!
  @IBOutlet weak var show2image: UIImageView!
  @IBOutlet weak var show3image: UIImageView!
  @IBOutlet weak var show4image: UIImageView!
  
  
  @IBOutlet weak var show1label: UILabel!
  @IBOutlet weak var show2label: UILabel!
  @IBOutlet weak var show3label: UILabel!
  @IBOutlet weak var show4label: UILabel!
  

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let newURL = "http://api-public.guidebox.com/v1.43/us/\(apiKey)/channels/all/0/4"
   JSONParser.getJSON(newURL)
    
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

