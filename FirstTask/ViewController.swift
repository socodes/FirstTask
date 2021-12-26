//
//  ViewController.swift
//  FirstTask
//
//  Created by Muhammed Didin on 26.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mailText: UITextField!
    @IBOutlet weak var mesageText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        var mail :String = mailText.text!
        let message :String = mesageText.text!
        
        let mailArray = mail.components(separatedBy: ",")
        var text:String = ""
        mail = mail.replacingOccurrences(of: " ", with: "")
        for element in mailArray{
            text += "To:\(element) \n"
        }
        let attrs1 = [NSAttributedString.Key.foregroundColor : UIColor.black]
        let messageAttr = NSMutableAttributedString(string:message, attributes:attrs1)
        
        
        
        text += "Message: \(messageAttr.string)"
        for mail in mailArray{
            if(mail.contains("@")){
                
                
                if(message.isEmpty){
                    resultLabel.text = "Boş bir mesaj yollanamaz!"
                }
                else{
                    resultLabel.text = text
                }
                
            }else{
                resultLabel.text = "Lütfen doğru bir e-posta adresi giriniz!"
            }
            
        }

        
        
    }
    
    @IBAction func oncelikButton(_ sender: Any) {
        var mail :String = mailText.text!
        var message :String = mesageText.text!
        
        let mailArray = mail.components(separatedBy: ",")
        var text:String = ""
        mail = mail.replacingOccurrences(of: " ", with: "")
        for element in mailArray{
            text += "To:\(element) \n"
        }
        text += "Message: "
        let attrs1 = [NSAttributedString.Key.foregroundColor : UIColor.red]
        let messageAttr = NSMutableAttributedString(string:message, attributes:attrs1)
        
        let attrs2 = [NSAttributedString.Key.foregroundColor : UIColor.black]
        let mailAttr = NSMutableAttributedString(string:text, attributes:attrs2)
        
        mailAttr.append(messageAttr)
        
        for mail in mailArray{
            if(mail.contains("@")){
                
                
                if(message.isEmpty){
                    resultLabel.text = "Boş bir mesaj yollanamaz!"
                }
                else{
                    resultLabel.attributedText = mailAttr
                }
                
            }else{
                resultLabel.text = "Lütfen doğru bir e-posta adresi giriniz!"
            }
            
        }
        
        
        
    }
    
}

