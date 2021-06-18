//
//  Registration6Controller.swift
//  AnimeFan
//
//  Created by MacBook Pro on 18/06/21.
//

import UIKit

class Registration6Controller: UIViewController {

    private let acc : UILabel = {
        let welcome = UILabel()
        welcome.text = "Account Succesfully Created"
        welcome.textColor = .white
        welcome.textAlignment = .center
        welcome.shadowColor = .darkGray
        return welcome
        
    }()
    
    private let welcomeimage : UIImageView = {
        let welcomeimage = UIImageView()
        welcomeimage.contentMode = .scaleAspectFit
        welcomeimage.image = UIImage(named: "8")
        return welcomeimage
    }()
    
    private let roll : UILabel = {
        let welcome = UILabel()
        welcome.text = "Great!, Now Let's Roll"
        welcome.textColor = .white
        welcome.textAlignment = .center
        welcome.shadowColor = .darkGray
        return welcome
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(acc)
        view.addSubview(welcomeimage)
        view.addSubview(roll)
        title = "Account Created"
        self.view.backgroundColor = .black

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        acc.frame = CGRect(x: 20, y: 70, width: view.width - 40, height: 40)
        welcomeimage.frame = CGRect(x: 20, y: acc.bottom + 30, width: view.width - 20, height: 250)
        roll.frame = CGRect(x: 20, y: welcomeimage.bottom + 20, width: view.width - 40, height: 40)
        
    }
   

}
