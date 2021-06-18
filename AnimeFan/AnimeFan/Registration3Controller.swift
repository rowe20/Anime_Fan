//
//  Registration3Controller.swift
//  AnimeFan
//
//  Created by MacBook Pro on 18/06/21.
//

import UIKit

class Registration3Controller: UIViewController {

    private let welcomeimage : UIImageView = {
        let welcomeimage = UIImageView()
        welcomeimage.contentMode = .scaleAspectFit
        welcomeimage.image = UIImage(named: "5")
        return welcomeimage
    }()
    
    private let welcome : UILabel = {
        let welcome = UILabel()
        welcome.text = "Tell Us More About You"
        welcome.textColor = .black
        welcome.textAlignment = .center
        welcome.shadowColor = .darkGray
        return welcome
        
    }()
    
    private let Gender : UILabel = {
        let welcome = UILabel()
        welcome.text = "Gender"
        welcome.textColor = .white
        welcome.textAlignment = .center
        welcome.shadowColor = .darkGray
        return welcome
        
    }()
    
    private let segment:UISegmentedControl = {
        let segment = UISegmentedControl()
        segment.insertSegment(withTitle: "Male", at: 0, animated: true)
        segment.insertSegment(withTitle: "Female", at: 1, animated: true)
        return segment
    }()
    
    private let height : UILabel = {
        let welcome = UILabel()
        welcome.text = "Height"
        welcome.textColor = .white
        welcome.textAlignment = .center
        welcome.shadowColor = .darkGray
        return welcome
        
    }()
    
    private let stepper : UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.addTarget(self, action: #selector(handleheight), for: .valueChanged)
        return stepper
    } ()
    
    @objc func handleheight()
    {
        let height = stepper.value
        fheightresult.text = String(height)
        //activity part
    
        activityIndicator.isHidden = true
        activityIndicator.stopAnimating()
        nextvc.isHidden = false
        
    }
    
    private let fheightresult : UITextView = {
        let txtview = UITextView()
        txtview.isEditable = false
        txtview.font = UIFont.systemFont(ofSize: 17.0)
        txtview.backgroundColor = .systemFill
        txtview.textColor = .white
        txtview.textAlignment = .center
        txtview.layer.cornerRadius = 10
        return txtview
    } ()
    
    private let activityIndicator : UIActivityIndicatorView = {
        let activity = UIActivityIndicatorView()
        activity.style = .large
        activity.color = .systemYellow
        activity.startAnimating()
        return activity
    } ()
    
    private let nextvc : UIButton = {
        let nextvc = UIButton()
        nextvc.setTitle("Continue", for: .normal)
        nextvc.backgroundColor = .darkText
        
        nextvc.addTarget(self, action: #selector(redirect), for: .touchUpInside)
        nextvc.isHidden = true
        nextvc.layer.cornerRadius = 20
        return nextvc
    } ()
    
    @objc func redirect()
    {
        let vc = Registration4Controller() //change it
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        view.addSubview(welcomeimage)
        view.addSubview(welcome)
        view.addSubview(Gender)
        view.addSubview(segment)
        view.addSubview(height)
        view.addSubview(stepper)
        view.addSubview(fheightresult)
        view.addSubview(activityIndicator)
        view.addSubview(nextvc)
        title = "Sign Up"
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        welcomeimage.frame = CGRect(x: 20, y: 70, width: view.width - 40, height: 120)
        welcome.frame = CGRect(x: 20, y: welcomeimage.bottom + 10, width: view.width - 40, height: 40)
        Gender.frame = CGRect(x: 20, y: welcome.bottom + 5, width: view.width - 40, height: 40)
        segment.frame = CGRect(x: 20, y: Gender.bottom + 1, width: view.width - 40, height: 40)
        height.frame = CGRect(x: 20, y: segment.bottom + 10, width: view.width - 40, height: 40)
        
        stepper.frame = CGRect(x: 30, y: height.bottom + 1, width: view.width - 40, height: 40)
        fheightresult.frame = CGRect(x: 160, y: height.bottom + 1, width: view.width - 180, height: 40)
        activityIndicator.frame = CGRect(x: 20, y: stepper.bottom + 15, width: view.width - 40, height: 50)
        nextvc.frame = CGRect(x: 20, y: stepper.bottom + 20, width: view.width - 40, height: 40)
        
    }


}

