//
//  ViewController.swift
//  TrafficLights
//
//  Created by Artem Avramenko on 06.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightTraffic: UIView!
    @IBOutlet weak var yellowLightTraffic: UIView!
    @IBOutlet weak var greenLightTraffic: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    var lightColour: Int = 0
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        redLightTraffic.layer.cornerRadius  = redLightTraffic.frame.height / 2
        yellowLightTraffic.layer.cornerRadius = yellowLightTraffic.frame.height / 2
        greenLightTraffic.layer.cornerRadius = greenLightTraffic.frame.height / 2
        startButton.layer.cornerRadius = startButton.frame.height / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightTraffic.alpha = 0.3
        yellowLightTraffic.alpha = 0.3
        greenLightTraffic.alpha = 0.3
    }

    @IBAction func pressStartButton(_ sender: Any) {
        lightColour = (lightColour + 1) % 4
        switch lightColour {
        case 1:
            redLightTraffic.alpha = 1
            yellowLightTraffic.alpha = 0.3
            greenLightTraffic.alpha = 0.3
            startButton.setTitle("NEXT", for: .normal)
        case 2:
            redLightTraffic.alpha = 0.3
            yellowLightTraffic.alpha = 1
            greenLightTraffic.alpha = 0.3
            startButton.setTitle("NEXT", for: .normal)
        case 3:
            redLightTraffic.alpha = 0.3
            yellowLightTraffic.alpha = 0.3
            greenLightTraffic.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        case 0:
            redLightTraffic.alpha = 0.3
            yellowLightTraffic.alpha = 0.3
            greenLightTraffic.alpha = 0.3
            startButton.setTitle("START", for: .normal)
        default: break
        }
    }
    
}

