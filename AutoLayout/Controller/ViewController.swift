//
//  ViewController.swift
//  AutoLayout
//
//  Created by elina.peiseniece on 25/07/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var styleOutleCollection: [UIButton]!
    @IBOutlet weak var buttonDOutlet: UIButton!
    @IBOutlet weak var buttonEOutlet: UIButton!
    @IBOutlet weak var buttonAOutlet: UIButton!
    @IBOutlet weak var buttonBOutlet: UIButton!
    @IBOutlet weak var buttonCOutlet: UIButton!
    @IBOutlet weak var imageCheckmark: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleOutleCollection.forEach {button in
            button.layer.cornerRadius = 15
            button.layer.backgroundColor = UIColor.lightGray.cgColor
            button.layer.borderWidth = 3
            button.layer.borderColor = UIColor.blue.cgColor

        }
        self.imageCheckmark.isHidden = true
    }

    @IBAction func refreshItemTapped(_ sender: Any) {
        navigationItem.title = "Auto Layout"
        self.buttonDOutlet.isHidden = false
        self.buttonEOutlet.setImage(UIImage(), for: .normal)
        self.buttonEOutlet.isHidden = false
        self.buttonDOutlet.setImage(UIImage(), for: .normal)
        self.buttonAOutlet.isHidden = false
        self.buttonBOutlet.isHidden = false
        self.buttonCOutlet.isHidden = false
        self.imageCheckmark.isHidden = true
    }
    
    @IBAction func ButtonATapped(_ sender: Any) {
        navigationItem.title = "Button A"
        self.buttonDOutlet.isHidden = true
        self.buttonEOutlet.setImage(UIImage(systemName: "trash.slash"), for: .normal)
        self.buttonEOutlet.isHidden = false
        self.buttonDOutlet.setImage(UIImage(), for: .normal)
        self.buttonAOutlet.isHidden = false
        self.buttonBOutlet.isHidden = false
        self.buttonCOutlet.isHidden = false
    }
    @IBAction func buttonBTapped(_ sender: Any) {
        navigationItem.title = "Button B"
        self.buttonEOutlet.isHidden = true
        self.buttonDOutlet.setImage(UIImage(systemName: "trash.slash"), for: .normal)
        self.buttonAOutlet.isHidden = false
        self.buttonBOutlet.isHidden = false
        self.buttonCOutlet.isHidden = false
        self.buttonDOutlet.isHidden = false
        self.buttonEOutlet.setImage(UIImage(), for: .normal)
    }
    @IBAction func buttonCTapped(_ sender: Any) {
        navigationItem.title = "Button C"
        self.buttonDOutlet.isHidden = true
        self.buttonEOutlet.isHidden = true
        self.buttonAOutlet.isHidden = true
        self.buttonBOutlet.isHidden = true
        self.buttonCOutlet.isHidden = true
        self.imageCheckmark.isHidden = false
        
        
    }
}

