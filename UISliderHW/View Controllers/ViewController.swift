//
//  ViewController.swift
//  UISliderHW
//
//  Created by Самир Кафаров on 07.08.2022.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IBOutlet's
    @IBOutlet var displayView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redSliderLabel: UILabel!
    @IBOutlet var greenSliderLabel: UILabel!
    @IBOutlet var blueSliderLabel: UILabel!
    
 // MARK: - LifeCicle view
    override func viewDidLoad() {
        super.viewDidLoad()
        
         displayView.layer.cornerRadius = 50
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        setColor()
    }
    
    // MARK: - IBAction
    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()
        
        redSliderLabel.text = String(format: "%.1f", redSlider.value)
        greenSliderLabel.text = String(format: "%.1f", greenSlider.value)
        blueSliderLabel.text = String(format: "%.1f", blueSlider.value)
    }
    
    // MARK: - Privat methods
    private func setColor() {
        displayView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    
}

