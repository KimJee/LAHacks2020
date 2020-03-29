//
//  ViewController.swift
//  DrawingApp
//
//  Created by Natalia Pinpin on 3/28/20.
//  Copyright © 2020 Natalia Pinpin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var drawThis: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var lastPoint = CGPoint.zero
    var color = UIColor.black
    var brushWidth: CGFloat = 10.0
    var opacity: CGFloat = 1.0
    var swiped = false
    var drawings = ["Race Car", "Pirate Ship", "Palm Tree", "Tulip", "Pine Cone", "Space Ship", "Stick Person", "Sunflower", "Koala Bear", "Ballerina", "Candy Corn", "Cupcake", "Tiger", "Pizza", "Disco Ball", "Ninja", "Hula Girl", "Ice Cream Cone", "Rubber Duck", "Flamingo",  "Football", "Fried Egg", "Zombie", "Mummy", "Bag of Popcorn", "Vampire", "Duck", "Hummingbird", "Dolphin", "Panda", "Cobra", "Bunny", "Gnome", "Fairy", "Birthday Present", "Hot Air Balloon", "Dragon", "Shamrock", "Castle", "Log Cabin", "Shooting Star", "Octopus", "Toucan", "Violin", "Seal", "Dachshund", "Train", "Mermaid", "Waffle", "Hamburger", "Angel", "Paintbrush", "Garbage Can", "Gumball Machine"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let randNum = Int(arc4random_uniform(UInt32(drawings.count)))
        drawThis.text = drawings[randNum]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        swiped = false
        if let touch = touches.first {
            lastPoint = touch.location(in: self.view)
        }
    }
    
    func drawLines(fromPoint:CGPoint, toPoint:CGPoint) {
        UIGraphicsBeginImageContext(self.view.frame.size)
        imageView.image?.draw(in: self.view.bounds)
        
        let context = UIGraphicsGetCurrentContext()
        context?.move(to: CGPoint(x: fromPoint.x, y: fromPoint.y))
        context?.addLine(to: CGPoint(x: toPoint.x, y: toPoint.y))
        context?.setBlendMode(CGBlendMode.normal)
        context?.setLineCap(CGLineCap.round)
        context?.setLineWidth(5)
        context?.setStrokeColor(color.cgColor)
        context?.strokePath()
        
        imageView.image = UIGraphicsGetImageFromCurrentImageContext()
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        swiped = true
        if let touch = touches.first {
            let currentPoint = touch.location(in: view)
            drawLines(fromPoint: lastPoint, toPoint: currentPoint)
            lastPoint = currentPoint
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !swiped {
            drawLines(fromPoint: lastPoint, toPoint: lastPoint)
        }
    }

    @IBAction func drawingSuggestion(_ sender: UIButton) {
        let randNum = Int(arc4random_uniform(UInt32(drawings.count)))
        drawThis.text = drawings[randNum]
        imageView.image = nil
    }
   
    @IBAction func black(_ sender: UIButton) {
        color = UIColor.black
    }
    
    @IBAction func gray(_ sender: UIButton) {
        color = UIColor.gray
    }
    
    @IBAction func brown(_ sender: UIButton) {
        color = UIColor.brown
    }
    
    @IBAction func pink(_ sender: UIButton) {
        color = UIColor(red: 1.0, green: 0, blue: 0.6, alpha: 1.0)
    }
    
    @IBAction func red(_ sender: UIButton) {
        color = UIColor.red
    }
    
    @IBAction func orange(_ sender: UIButton) {
        color = UIColor.orange
    }
    
    @IBAction func yellow(_ sender: UIButton) {
        color = UIColor.yellow
    }
    
    @IBAction func green(_ sender: UIButton) {
        color = UIColor.green
    }
    
    @IBAction func blue(_ sender: UIButton) {
        color = UIColor.blue
    }
    
    @IBAction func purple(_ sender: UIButton) {
        color = UIColor.purple
    }
    
    @IBAction func eraser(_ sender: UIButton) {
        color = UIColor.white
    }
    
    @IBAction func reset(_ sender: UIButton) {
        imageView.image = nil
    }
    
    
    
    
}

