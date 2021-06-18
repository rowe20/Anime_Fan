//
//  SignUpController.swift
//  AnimeFan
//
//  Created by MacBook Pro on 17/06/21.
//

import UIKit

class SignUpController: UIViewController {

    private let welcomeimage : UIImageView = {
        let welcomeimage = UIImageView()
        welcomeimage.contentMode = .scaleAspectFit // if using fills we have to use "clipstobounds"
        //welcomeimage.clipsToBounds = true
        welcomeimage.image = UIImage(named: "1")
        return welcomeimage
    }()
    
    private let welcome : UILabel = {
        let welcome = UILabel()
        welcome.text = " Welcome To The World Of Anime"
        welcome.textColor = .white
        welcome.shadowColor = .darkGray
        return welcome
        
    }()
    
    private let signup : UIButton = {
        let signup = UIButton()
        signup.setTitle("Sign Up", for: .normal)
        signup.backgroundColor = .blue
        signup.layer.cornerRadius = 40
        signup.addTarget(self, action: #selector(redirect), for: .touchUpInside)
        return signup
    } ()
    
    @objc func redirect()
    {
        let vc = Registration1Controller()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(welcomeimage)
        view.addSubview(welcome)
        view.addSubview(signup)
        self.view.backgroundColor = .black

        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        welcomeimage.frame = CGRect(x: 20, y: 100, width: view.width - 40, height: 240)
        welcome.frame = CGRect(x: 30, y: welcomeimage.bottom + 20, width: view.width - 40, height: 40)
        signup.frame = CGRect(x: 25, y: welcome.bottom + 20, width: view.width - 40, height: 40)
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
