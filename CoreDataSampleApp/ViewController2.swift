import Foundation
import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var tblView: UITableView!
    var test:[String] = []
    ////////////////////////////////////////
    ////////////////////////////////////////
    ////////////////////////////////////////
    ///Zoom Out & Zoom iN using scale >>>> SLIDE OUT
    //UIView.animate(withDuration: 0.4, delay: 0.0, options: .curveEaseInOut, animations: {
    //self.view.layoutIfNeeded()
    //}) { (animationComplete) in
    //print("the animation is complete")
    //}
    //////////
    ////////////////////////////////////////
    ////////////////////////////////////////
    ////////////////////////////////////////
    ///Zoom Out & Zoom iN using scale >>>> SLIDE OUT
    //if !hamburgerMenuIsVisible {
    //leadingC.constant = 300
    //trailingC.constant = -300
    //hamburgerMenuIsVisible = true
    //UIView.animate(withDuration: 0.4, animations: {
    //self.stackView.transform = CGAffineTransform(scaleX: 1,y: 1);
    //}) { (animationComplete) in
    /// print("the animation is complete")
    //}
    //} else {
    //leadingC.constant = 0
    //trailingC.constant = 0
    //hamburgerMenuIsVisible = false
    //UIView.animate(withDuration: 0.4, animations: {
    //self.stackView.transform = CGAffineTransform(scaleX: 1.5,y: 1.5);
    //}) { (animationComplete) in
    //print("the animation is complete")
    //}
    //}
    ////////////////////////////////////////
    ////////////////////////////////////////
    ////////////////////////////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblView.shake()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        for i in 0..<99 {
            test.append(" Row \(i + 1) ")
        }
    }
}
extension ViewController2 : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return test.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! tblCell
        cell.lbl?.text = test[indexPath.row]
        return cell
    }
}
extension UIView {
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.7 //0.07 //0.9
        animation.repeatCount = 1
        animation.autoreverses = false
        //animation.fromValue = CGPoint(x: self.center.x - 800, y: self.center.y)
        //animation.toValue = CGPoint(x: self.center.x + 0 , y: self.center.y)
        animation.fromValue = CGPoint(x: self.center.x + 800, y: self.center.y)
        animation.toValue = CGPoint(x: self.center.x - 0 , y: self.center.y)
        self.layer.add(animation, forKey: "position")
    }
}


class tblCell : UITableViewCell {
    @IBOutlet weak var lbl: UILabel!
}


