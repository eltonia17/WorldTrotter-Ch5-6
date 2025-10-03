//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Eltonia Leonard on 9/20/25.
//
import UIKit

class ConversionViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setRandomBackground()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setRandomBackground()
    }

    private func setRandomBackground() {
        view.backgroundColor = UIColor(
            hue: CGFloat.random(in: 0...1),
            saturation: CGFloat.random(in: 0.4...0.7),
            brightness: CGFloat.random(in: 0.9...1.0),
            alpha: 1.0
        )
    }
}
