import UIKit

class AuthViewController: UIViewController {
    
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func vxod(_ sender: Any) {
        
        let l = login.text!
        let p = password.text!

        if l == mainLogin && p == mainPassword {
            
            

        if let newViewController = storyboard?.instantiateViewController (withIdentifier: "menuViewController")

        as? MenuViewController {
            newViewController.modalPresentationStyle = .fullScreen
            present(newViewController, animated: true, completion: nil)
            
            }
        }
        else {

        let alert = UIAlertController(title: "Сообщение", message: "Неверный логин или пароль", preferredStyle: .alert)

        alert.addAction (UIAlertAction(title: "Ок", style: .default))
            self.present (alert, animated: true, completion: nil)

        }
    }
}
