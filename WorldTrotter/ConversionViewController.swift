//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Eltonia Leonard on 9/20/25.
//
import UIKit

final class ConversionViewController: UIViewController {
    @IBOutlet var celsiusLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        print("ConversionViewController loaded its view.")
    }

    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField) {
        celsiusLabel.text = textField.text
    }
}
