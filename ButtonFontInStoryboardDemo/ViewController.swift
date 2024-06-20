import UIKit

class ViewController: UIViewController {
    @IBAction func doButton (_ sender: UIButton) {
        sender.replaceTitle("Hello There!")
    }
}

extension UIButton {
    func replaceTitle(_ newTitle: String) {
        guard configuration != nil else {
            setTitle(newTitle, for: .normal)
            return
        }
        guard configuration?.attributedTitle != nil else {
            configuration?.title = newTitle
            return
        }
        configuration?.attributedTitle?.characters = .init(newTitle)
    }
}

