//
//  Shot.swift
//  d-fence
//

import SpriteKit

class Shot: Hashable {
    
    // MARK: Components of a shot 🔫
    
    static func == (lhs: Shot, rhs: Shot) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    var hashValue: Int {
        return node.hashValue
    }
    
    let node: SKSpriteNode
    var direction: CGPoint
    
    required init(size: CGSize, scoutPosition: CGPoint, direction: CGPoint, upgrade: String) {
        self.node = SKSpriteNode(imageNamed: upgrade)
        
        self.node.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.node.position = scoutPosition
        self.node.zPosition = 7
        self.node.scale(to: CGSize(width: size.height / 70, height: size.height / 70))
        
        self.direction = direction
    }
}
