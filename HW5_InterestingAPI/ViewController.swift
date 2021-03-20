//
//  ViewController.swift
//  HW5_InterestingAPI
//
//  Created by Kerem Gurses on 17.03.2021.
//

import UIKit
import ARKit

class ViewController: UIViewController {

    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var sceneView: ARSCNView!
    @IBOutlet weak var myButton: UIButton!
    
    
    
    
    var counter:Int = 0 {
        didSet {
            counterLabel.text = "\(counter)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = SCNScene()
        sceneView.scene = scene
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let configuration = ARWorldTrackingConfiguration()
        sceneView.session.run(configuration)
        //addObject()
        
    }
    func addObject() {
        let imposter = ARModel()
        imposter.loadModal()
        imposter.scale = SCNVector3(0.3,0.3,0.3)
        let xPos = randomPosition(lowerBound: -1.5, upperBound: 1.5)
        let yPos = randomPosition(lowerBound: -1.5, upperBound: 1.5)
        imposter.position = SCNVector3(xPos, yPos, -5)
        sceneView.scene.rootNode.addChildNode(imposter)
    }
    
    func randomPosition (lowerBound lower:Float, upperBound upper:Float) -> Float {
        return Float(arc4random()) / Float(UInt32.max) * (lower - upper) + upper
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        //let configuration = ARWorldTrackingConfiguration()
        //sceneView.session.run(configuration)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

