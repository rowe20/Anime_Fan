//
//  Registration4Controller.swift
//  AnimeFan
//
//  Created by MacBook Pro on 18/06/21.
//

import UIKit

class Registration4Controller: UIViewController {

    private let pickerview = UIPickerView()
    private let charactername = ["None","Naruto Uzamaki","Monkey D Luffy","Pickachu"]
    
    private let welcomeimage : UIImageView = {
        let welcomeimage = UIImageView()
        welcomeimage.contentMode = .scaleAspectFit
        welcomeimage.image = UIImage(named: "4")
        return welcomeimage
    }()
    
    private let welcome : UILabel = {
        let welcome = UILabel()
        welcome.text = "Almost Done"
        welcome.textColor = .black
        welcome.textAlignment = .center
        welcome.shadowColor = .darkGray
        return welcome
        
    }()
    
    private let bsthero : UILabel = {
        let welcome = UILabel()
        welcome.text = "Select Your Favourite Character"
        welcome.textColor = .white
        welcome.textAlignment = .center
        welcome.shadowColor = .darkGray
        return welcome
        
    }()
    
    private let progress : UIProgressView = {
        let progress = UIProgressView()
        progress.setProgress(0.0, animated: true)
        progress.progressTintColor = .black
        return progress
    } ()
    
    private let nextvc : UIButton = {
        let nextvc = UIButton()
        nextvc.setTitle("Continue", for: .normal)
        nextvc.backgroundColor = .darkText
        
        nextvc.addTarget(self, action: #selector(redirect), for: .touchUpInside)
        nextvc.layer.cornerRadius = 20
        return nextvc
    } ()
    
    @objc func redirect()
    {
        let vc = Registration5Controller() //change it
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        nav.setNavigationBarHidden(true, animated: false)
        present(nav, animated: false)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 10.0)
        {
            self.progress.setProgress(1.0, animated: true)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBlue
        view.addSubview(pickerview)
        view.addSubview(welcomeimage)
        view.addSubview(welcome)
        view.addSubview(bsthero)
        view.addSubview(progress)
        view.addSubview(nextvc)
        pickerview.dataSource = self
        pickerview.delegate = self
        title = "Sign Up"
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        welcomeimage.frame = CGRect(x: 20, y: 70, width: view.width - 40, height: 120)
        welcome.frame = CGRect(x: 20, y: welcomeimage.bottom + 10, width: view.width - 40, height: 40)
        bsthero.frame = CGRect(x: 20, y: welcome.bottom + 10, width: view.width - 40, height: 40)
        pickerview.frame = CGRect(x: 20, y: bsthero.bottom + 1, width: view.width - 40, height: 80)
        progress.frame = CGRect(x: 20, y: pickerview.bottom + 10, width: view.width - 40, height: 50)
        nextvc.frame = CGRect(x: 20, y: progress.bottom + 20, width: view.width - 40, height: 50)
    }
    

}
extension Registration4Controller: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1 //no of columns
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        charactername.count //no of rows
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        charactername[row]
    }
    
    
}
