//
//  SlidersViewController.swift
//  Color Sliders
//
//  Created by David Fisher on 3/11/20.
//  Copyright © 2020 David Fisher. All rights reserved.
//


import UIKit

class SlidersViewController: UIViewController {


  @IBOutlet weak var redSlider: UISlider!
  @IBOutlet weak var greenSlider: UISlider!
  @IBOutlet weak var blueSlider: UISlider!
  @IBOutlet weak var alphaSlider: UISlider!
  @IBOutlet weak var redLabel: UILabel!
  @IBOutlet weak var greenLabel: UILabel!
  @IBOutlet weak var blueLabel: UILabel!
  @IBOutlet weak var alphaLabel: UILabel!

  @IBOutlet weak var colorView: UIView!
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    print("Hello World")
  }

  @IBAction func sliderChanged(_ sender: Any) {
//    redLabel.text = "\(redSlider.value)"
    updateView()
  }
  func updateView() {
    redLabel.text = String(format: "%.2f", redSlider.value)
    greenLabel.text = String(format: "%.2f", greenSlider.value)
    blueLabel.text = String(format: "%.2f", blueSlider.value)
    alphaLabel.text = String(format: "%.2f", alphaSlider.value)

    colorView.backgroundColor = UIColor(
      red: CGFloat(redSlider.value),
      green: CGFloat(greenSlider.value),
      blue: CGFloat(blueSlider.value),
      alpha: CGFloat(alphaSlider.value))

  }
}
