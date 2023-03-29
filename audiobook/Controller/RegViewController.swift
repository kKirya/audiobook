import UIKit

class RegViewController: UIViewController {
    
    
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func reg(_ sender: Any) {
        
        let l = login.text!
        let p = password.text!
                
                if l.isEmpty || p.isEmpty {
                    let alert = UIAlertController(title: "Сообщение", message: "Логин или пароль не могут быть пустыми", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Ок", style: .default))
                    self.present(alert, animated: true, completion: nil)
                } else if l.count < 7 || p.count < 7 {
                    let alert = UIAlertController(title: "Сообщение", message: "Логин и пароль должны содержать не менее 7 символов", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Ок", style: .default))
                    self.present(alert, animated: true, completion: nil)
                } else if !l.contains("@") {
                    let alert = UIAlertController(title: "Сообщение", message: "Логин должен содержать символ '@'", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Ок", style: .default))
                    self.present(alert, animated: true, completion: nil)
                } else if l.rangeOfCharacter(from: CharacterSet(charactersIn: "!#$%^&*()_+{}[]\\|?/,.<>")) != nil {
                    let alert = UIAlertController(title: "Сообщение", message: "Логин содержит недопустимые символы: !#$%^&*()_+{}[]\\|?/,.<>", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Ок", style: .default))
                    self.present(alert, animated: true, completion: nil)
                } else if p.rangeOfCharacter(from: .letters) == nil {
                    let alert = UIAlertController(title: "Сообщение", message: "Пароль должен содержать хотя бы одну букву", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Ок", style: .default))
                    self.present(alert, animated: true, completion: nil)
                } else {
                    mainLogin = l
                    mainPassword = p
                    
                    if let newViewController = storyboard?.instantiateViewController(withIdentifier: "authViewController") as? AuthViewController {
                        newViewController.modalPresentationStyle = .fullScreen
                        present(newViewController, animated: true, completion: nil)
                    }
                }
            }
        }
        






        
        /*let l = login.text!
        let p = password.text!
        
        
        if l.isEmpty || p.isEmpty {
            
            let alert = UIAlertController (title: "Сообщение", message: "Логин или пароль не могут быть пустыми", preferredStyle: .alert)
            
            alert.addAction (UIAlertAction (title: "Ок", style: .default))
            
            self.present (alert, animated: true, completion: nil)
            
        } else if l.count < 7 || p.count < 7 {
            
            let alert = UIAlertController (title: "Сообщением", message: "Логин и пароль должны содержать не менее 7 символов", preferredStyle: .alert)
            alert.addAction (UIAlertAction (title: "Ок", style: .default))
            
            self.present (alert, animated: true, completion: nil)
            
        } else if p.rangeOfCharacter(from: .letters) == nil { //Чтобы узнать, есть ли в пароле хотя бы одна буква, можно использовать метод rangeOfCharacter(from:), который проверяет строку пароля на наличие букв из алфавита. Если метод не найдет ни одной буквы, то значит, пароль не содержит букв.
            
            let alert = UIAlertController (title: "Сообщение", message: "Пароль должен содержать хотя бы одну букву", preferredStyle: .alert)
            alert.addAction (UIAlertAction (title: "Ок", style: .default))
            
            self.present (alert, animated: true, completion: nil)
            
        } else {
            
            mainLogin = l
            mainPassword = p
            
            if let newViewController = storyboard?
                
                .instantiateViewController (withIdentifier: "authViewController") as? AuthViewController {
                newViewController.modalPresentationStyle = .fullScreen
                present(newViewController, animated: true, completion: nil)
                
                
            }
        }
         */
   




