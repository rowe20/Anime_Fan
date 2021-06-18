//
//  Registration2Controller.swift
//  AnimeFan
//
//  Created by MacBook Pro on 18/06/21.
//

import UIKit

class Registration2Controller: UIViewController {

    private let welcomeimage : UIImageView = {
        let welcomeimage = UIImageView()
        welcomeimage.contentMode = .scaleAspectFit
        welcomeimage.image = UIImage(named: "3")
        return welcomeimage
    }()
    
    private let welcome : UILabel = {
        let welcome = UILabel()
        welcome.text = "Almost There"
        welcome.textColor = .black
        welcome.textAlignment = .center
        welcome.shadowColor = .darkGray
        return welcome
        
    }()
    
    private let rate : UILabel = {
        let welcome = UILabel()
        welcome.text = "Rate Your Craziness For Anime"
        welcome.textColor = .black
        welcome.textAlignment = .center
        welcome.shadowColor = .darkGray
        return welcome
        
    }()
    
    private let slider : UISlider = {
        let slider = UISlider()
        slider.maximumValue = 100
        slider.minimumValue = 0
        slider.addTarget(self, action: #selector(fanrate), for: .valueChanged)
        return slider
    }()
    
    @objc func fanrate() {
        let res = Int(slider.value)
        frateresult.text = String(res)
    }
    
    private let frateresult : UITextView = {
        let txtview = UITextView()
        txtview.isEditable = false
        txtview.font = UIFont.systemFont(ofSize: 17.0)
        txtview.backgroundColor = .systemFill
        txtview.textColor = .black
        txtview.textAlignment = .center
        return txtview
    } ()
    
    private let subscribe : UILabel = {
        let welcome = UILabel()
        welcome.text = "Subscribe Us For Daily Updates"
        welcome.textColor = .black
        welcome.textAlignment = .center
        welcome.shadowColor = .darkGray
        return welcome
        
    }()
    
    private let switche : UISwitch = {
        let switche = UISwitch()
        return switche
    }()
    
    private let nextvc : UIButton = {
        let nextvc = UIButton()
        nextvc.setTitle("Continue", for: .normal)
        nextvc.backgroundColor = .black
        nextvc.addTarget(self, action: #selector(redirect), for: .touchUpInside)
        nextvc.layer.cornerRadius = 20
        return nextvc
    } ()
    
    @objc func redirect()
    {
        let vc = Registration3Controller() //change it
        navigationController?.pushViewController(vc, animated: true)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign Up"
        self.view.backgroundColor = .white
        view.addSubview(welcomeimage)
        view.addSubview(welcome)
        view.addSubview(rate)
        view.addSubview(frateresult)
        view.addSubview(slider)
        view.addSubview(subscribe)
        view.addSubview(switche)
        view.addSubview(nextvc)
        
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        welcomeimage.frame = CGRect(x: 20, y: 70, width: view.width - 40, height: 120)
        welcome.frame = CGRect(x: 20, y: welcomeimage.bottom + 10, width: view.width - 40, height: 40)
        rate.frame = CGRect(x: 20, y: welcome.bottom + 10, width: view.width - 40, height: 40)
        frateresult.frame = CGRect(x: 20, y: rate.bottom + 5, width: view.width - 40, height: 40)
        slider.frame = CGRect(x: 20, y: frateresult.bottom + 10, width: view.width - 40, height: 40)
        subscribe.frame = CGRect(x: 20, y: slider.bottom + 10, width: view.width - 40, height: 40)
        switche.frame = CGRect(x: 20, y: subscribe.bottom + 10, width: view.width - 40, height: 40)
        nextvc.frame = CGRect(x: 20, y: switche.bottom + 10, width: view.width - 40, height: 40)
        
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
