//
//  ViewController.swift
//  83-84
//
//  Created by hamdi on 05/02/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bntChangeLanguage: UIButton!
    @IBOutlet weak var lblTittle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTittle.text = NSLocalizedString("hello", comment: "")
        bntChangeLanguage.setTitle(NSLocalizedString("btn", comment: ""), for: .normal)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func btnChangeLanAction(_ sender: Any) {
        var currentlang = Locale.current.languageCode
        var   newLang = currentlang == "en" ? "ar" : "en"
        UserDefaults.standard.setValue([newLang], forKey: "AppleLanguages")
        exit(0)
    }
    
}

