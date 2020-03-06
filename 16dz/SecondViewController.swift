//
//  SecondViewController.swift
//  16dz
//
//  Created by Пользователь on 3/5/20.
//  Copyright © 2020 Пользователь. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,
UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    var saveData: ((UIImage?, String?) -> Void)?
    
    let picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
    }
    

    @IBAction func chooseButtonDidCilck(_ sender: Any) {
        
        picker.allowsEditing = false
        picker.sourceType = .photoLibrary
        
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                                      didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
                   imageView.image = image
               }
        chooseButton.isHidden = true
               picker.dismiss(animated: true, completion: nil)
           }

    @IBAction func addButton2VC(_ sender: Any) {
        
        saveData?(imageView.image, textField.text)
        navigationController?.popViewController(animated: true)
        
    }
    
    
    
}
