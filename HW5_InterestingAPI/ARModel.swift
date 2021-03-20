//
//  ARModel.swift
//  HW5_InterestingAPI
//
//  Created by Kerem Gurses on 19.03.2021.
//

import ARKit

class ARModel: SCNNode {
    
    func loadModal() {
        guard let virtualObjectScene = SCNScene(named: "Pizza.usdz") else {return}
        let wrapperNode = SCNNode()
        for child in virtualObjectScene.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        self.addChildNode(wrapperNode)
    }

}
