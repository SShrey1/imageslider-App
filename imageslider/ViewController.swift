//
//  ViewController.swift
//  imageslider
//
//  Created by user@59 on 02/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    var sign = Signs()
    var currentIndex = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = 20
        imageView.layer.borderWidth = 10
        imageView.layer.borderColor = UIColor.green.cgColor
        // Do any additional setup after loading the view.
        updateUI()
    }
    fileprivate func updateUI(){
        let currentSign = sign.getSign(for: currentIndex)
        signLabel.text = "\(currentIndex) - \(currentSign)"
        
    imageView.image = UIImage(named: "\(currentIndex)\(currentSign)")
        
    }

    @IBAction func nextButtTapped(_ sender: Any) {
        if currentIndex < 12
        {
            currentIndex += 1
        }
        updateUI()
        
            }
    
    
    @IBAction func prevButtTapped(_ sender: Any) {
        if currentIndex > 1 {
            currentIndex -= 1
        }
        print(currentIndex)
        updateUI()
    }
    @IBAction func imageSwpied(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .left{
            nextButtTapped(sender)
        }
        else if sender.direction == .right
        {
            prevButtTapped(sender)
        }
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        
        if sender.numberOfTapsRequired == 1{
            nextButtTapped(sender)
        }
        else if sender.numberOfTapsRequired == 2
        {
            prevButtTapped(sender)
        }
    }
     
    
}

