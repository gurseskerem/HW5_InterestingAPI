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
    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = SCNScene()
        sceneView.scene = scene
        // Do any additional setup after loading the view.
    }


}

