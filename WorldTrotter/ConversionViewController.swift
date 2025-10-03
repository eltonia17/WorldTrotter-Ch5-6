//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Eltonia Leonard on 9/20/25.
//
import UIKit

final class ConversionViewController: UIViewController {

    // change color on first load + every time the tab appears
    override func viewDidLoad() {
        super.viewDidLoad()
        setRandomBackground()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setRandomBackground()
    }

    override func loadView() {
        // root view
        let root = UIView()
        root.backgroundColor = .systemBackground
        self.view = root

        // labels (big numbers and text rows)
        let fValue = makeLabel("212", font: .systemFont(ofSize: 96, weight: .bold))
        let fText  = makeLabel("degrees Fahrenheit", font: .preferredFont(forTextStyle: .title2))

        let isReally = makeLabel("is really", font: .preferredFont(forTextStyle: .title3))

        let cValue = makeLabel("100", font: .systemFont(ofSize: 96, weight: .bold))
        let cText  = makeLabel("degrees Celsius", font: .preferredFont(forTextStyle: .title2))

        // vertical stack to lay them out
        let stack = UIStackView(arrangedSubviews: [fValue, fText, isReally, cValue, cText])
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 8
        stack.translatesAutoresizingMaskIntoConstraints = false
        root.addSubview(stack)

        // center the stack and respect safe area/margins
        NSLayoutConstraint.activate([
            stack.centerXAnchor.constraint(equalTo: root.layoutMarginsGuide.centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: root.safeAreaLayoutGuide.centerYAnchor),
            stack.leadingAnchor.constraint(greaterThanOrEqualTo: root.layoutMarginsGuide.leadingAnchor),
            stack.trailingAnchor.constraint(lessThanOrEqualTo: root.layoutMarginsGuide.trailingAnchor)
        ])

        // wrap body labels and center them
        [fText, isReally, cText].forEach {
            $0.numberOfLines = 0
            $0.textAlignment = .center
        }
    }

    // small helper to create labels
    private func makeLabel(_ text: String, font: UIFont) -> UILabel {
        let l = UILabel()
        l.text = text
        l.font = font
        l.textColor = .label
        l.textAlignment = .center
        l.adjustsFontForContentSizeCategory = true
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }

    // random background color
    private func setRandomBackground() {
        view.backgroundColor = UIColor(
            hue: CGFloat.random(in: 0...1),
            saturation: CGFloat.random(in: 0.4...0.7),
            brightness: CGFloat.random(in: 0.9...1.0),
            alpha: 1.0
        )
    }
}
