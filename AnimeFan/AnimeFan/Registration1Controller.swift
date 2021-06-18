//
//  Registration1Controller.swift
//  AnimeFan
//
//  Created by MacBook Pro on 18/06/21.
//

import UIKit

class Registration1Controller: UIViewController {

    private let welcomeimage : UIImageView = {
        let welcomeimage = UIImageView()
        welcomeimage.contentMode = .scaleAspectFit // if using fills we have to use "clipstobounds"
        //welcomeimage.clipsToBounds = true
        welcomeimage.image = UIImage(named: "2")
        return welcomeimage
    }()
    
    private let welcome : UILabel = {
        let welcome = UILabel()
        welcome.text = "Please Fill Up The Details"
        welcome.textColor = .black
        welcome.textAlignment = .center
        welcome.shadowColor = .darkGray
        return welcome
        
    }()
    
    private let name : UILabel = {
        let welcome = UILabel()
        welcome.text = "Enter Your Name Below"
        welcome.textColor = .white
        welcome.textAlignment = .center
        welcome.shadowColor = .darkGray
        return welcome
        
    }()
    private let Username : UITextView = {
        let txtview = UITextView()
        //txtview.text = "Enter Your Name"
        txtview.backgroundColor = .systemFill
        txtview.textColor = .white
        txtview.textAlignment = .center
        return txtview
    } ()
    
    private let password: UITextField = {
        let text = UITextField()
        text.borderStyle = .roundedRect
        text.backgroundColor = .systemFill
        text.textAlignment = .center
        text.textColor = .black
        text.placeholder = "Set Up Your Password"
        return text
        
    } ()
    
    private let date : UILabel = {
        let welcome = UILabel()
        welcome.text = "Date Of Birth"
        welcome.textColor = .white
        welcome.layer.cornerRadius = 20
        welcome.shadowColor = .darkGray
        welcome.textAlignment = .center
        return welcome
        
    }()
    
    private let datep :UIDatePicker = {
        let datep = UIDatePicker()
        datep.datePickerMode = .date
        datep.timeZone = TimeZone(secondsFromGMT: 0)
        
        //datep.addTarget(self, action: #selector(), for: .valueChanged)
        return datep
    }()
    
    private let nextvc : UIButton = {
        let nextvc = UIButton()
        nextvc.setTitle("Continue", for: .normal)
        nextvc.backgroundColor = .gray
        nextvc.addTarget(self, action: #selector(redirect), for: .touchUpInside)
        nextvc.layer.cornerRadius = 20
        return nextvc
    } ()
    
    @objc func redirect()
    {
        let vc = Registration2Controller() //change it
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(welcomeimage)
        view.addSubview(welcome)
        view.addSubview(name)
        view.addSubview(Username)
        view.addSubview(password)
        view.addSubview(date)
        view.addSubview(datep)
        view.addSubview(nextvc)
        title = "Sign Up"
        self.view.backgroundColor = .brown
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        welcomeimage.frame = CGRect(x: 20, y: 70, width: view.width - 40, height: 120)
        welcome.frame = CGRect(x: 20, y: welcomeimage.bottom + 10, width: view.width - 40, height: 40)
        name.frame = CGRect(x: 20, y: welcome.bottom + 5, width: view.width - 40, height: 30)
        Username.frame = CGRect(x: 20, y: name.bottom + 5, width: view.width - 40, height: 30)
        password.frame = CGRect(x: 20, y: Username.bottom + 20, width: view.width - 40, height: 40)
        date.frame = CGRect(x: 20, y: password.bottom + 20, width: view.width - 40, height: 40)
        datep.frame = CGRect(x: 100, y: date.bottom + 5, width: view.width - 40, height: 40)
        nextvc.frame = CGRect(x: 20, y: datep.bottom + 5, width: view.width - 40, height: 40)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
