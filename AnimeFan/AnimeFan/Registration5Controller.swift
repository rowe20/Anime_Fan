//
//  Registration5Controller.swift
//  AnimeFan
//
//  Created by MacBook Pro on 18/06/21.
//

import UIKit

class Registration5Controller: UIViewController {

    private let welcomeimage : UIImageView = {
        let welcomeimage = UIImageView()
        welcomeimage.contentMode = .scaleAspectFit
        welcomeimage.image = UIImage(named: "7")
        return welcomeimage
    }()
    
    private let toolbar :UIToolbar = {
        let toolbar = UIToolbar()
        let close = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(handleback))
        let space = UIBarButtonItem(systemItem: .flexibleSpace)
        let gallery = UIBarButtonItem(barButtonSystemItem: .organize, target: self, action: #selector(handlegallery))
        toolbar.items = [close,space,gallery]
        
        return toolbar
    } ()
    
    @objc func handleback() {
        
        self.dismiss(animated: true)
    }
    @objc func handlegallery() {
        profileimg.sourceType = .photoLibrary
        DispatchQueue.main.async {
            self.present(self.profileimg, animated: true)
        }
        
    }
    
    private let tabbar: UITabBar = {
        let tabbar = UITabBar()
        let history = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        let downloads = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        tabbar.items = [history,downloads]
        return tabbar
    } ()
    
    private let profileimg : UIImagePickerController = {
        let profile = UIImagePickerController()
        profile.allowsEditing = false
        return profile
    } ()
    
    private let propic : UILabel = {
        let welcome = UILabel()
        welcome.text = "Please Choose Your Profile Picture"
        welcome.textColor = .black
        welcome.textAlignment = .center
        welcome.shadowColor = .darkGray
        return welcome
        
    }()
    
    private let welcomeimg : UIImageView = {
        let welcomeimage = UIImageView()
        welcomeimage.contentMode = .scaleAspectFit
        welcomeimage.image = UIImage(named: "6")
        return welcomeimage
    }()
    
    private let done : UIButton = {
        let done = UIButton()
        done.setTitle("Submit", for: .normal)
        done.backgroundColor = .black
        done.layer.cornerRadius = 20
        done.addTarget(self, action: #selector(redirect), for: .touchUpInside)
        return done
    } ()
    
    @objc func redirect()
    {
        let vc = Registration6Controller()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(toolbar)
        view.addSubview(tabbar)
        view.addSubview(welcomeimage)
        view.addSubview(welcomeimg)
        view.addSubview(propic)
        view.addSubview(done)
        title = "Sign Up"
        self.view.backgroundColor = .gray
        tabbar.delegate = self
        profileimg.delegate = self
        
      
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let toolbarH:CGFloat = view.safeAreaInsets.top + 40
        toolbar.frame = CGRect(x: 0, y: 0, width: view.width, height: toolbarH)
        let tabbarH:CGFloat = view.safeAreaInsets.top + 49
        tabbar.frame = CGRect(x: 0, y: view.height - tabbarH, width: view.width, height: tabbarH)
        welcomeimage.frame = CGRect(x: 20, y: 70, width: view.width - 40, height: 120)
        propic.frame = CGRect(x: 20, y: welcomeimage.bottom + 10, width: view.width - 40, height: 40)
        welcomeimg.frame = CGRect(x: 20, y: propic.bottom + 20, width: view.width - 40, height: 150)
        done.frame = CGRect(x: 20, y: welcomeimg.bottom + 20, width: view.width - 40, height: 40)
    }

}

extension Registration5Controller: UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print(item.tag)
    }
}
extension Registration5Controller : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedimg = info[.originalImage] as? UIImage {
            welcomeimage.image = selectedimg
        }
        picker.dismiss(animated: true)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
}
