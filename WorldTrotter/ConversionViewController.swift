//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Eltonia Leonard on 9/20/25.
//
import UIKit

final class ConversionViewController: UIViewController {
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        print("ConversionViewController loaded its view.")
    }

    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField) {
        // Set Celsius text field
        if let text = textField.text, !text.isEmpty {
                celsiusLabel.text = text
            } else {
                celsiusLabel.text = "???"
            }
    }
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
}
