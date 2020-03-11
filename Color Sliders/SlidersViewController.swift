//
//  SlidersViewController.swift
//  Color Sliders
//
//  Created by David Fisher on 3/11/20.
//  Copyright © 2020 David Fisher. All rights reserved.
//


import UIKit

class SlidersViewController: UIViewController {

  @IBOutlet weak var redLabel: UILabel!
  @IBOutlet weak var redSlider: UISlider!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    print("Hello World")
  }

  @IBAction func sliderChanged(_ sender: Any) {
//    redLabel.text = "\(redSlider.value)"
    redLabel.text = String(format: "%.2f", redSlider.value)
    
  }
}
