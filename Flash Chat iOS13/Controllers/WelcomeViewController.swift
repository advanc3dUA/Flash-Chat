
import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //animateLogo()
        titleLabel.text = K.appName
    }
    
    fileprivate func animateLogo() {
        titleLabel.text = ""
        let appName = K.appName
        var charNumber = 0.0
        for letter in appName {
            Timer.scheduledTimer(withTimeInterval: 0.12 * charNumber, repeats: false) { timer in
                self.titleLabel.text?.append(letter)
            }
            charNumber += 1
        }
    }
}
