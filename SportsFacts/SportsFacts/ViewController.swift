//
//  ViewController.swift
//  SportsFacts
//
//  Created by jordan kruger on 3/16/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funSportsFactLabel: UILabel!
    
    @IBOutlet weak var funSportsFactButton: UIButton!
    
    let sportsFacts = SportsFacts()

    override func viewDidLoad() {
        super.viewDidLoad()
        funSportsFactLabel.text = sportsFacts.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunSportsFact() {
        let randomColor = RandomColors().getRandomColor()
        view.backgroundColor = randomColor
        funSportsFactButton.tintColor = randomColor
        funSportsFactLabel.text = sportsFacts.getRandomFact()
    }

}