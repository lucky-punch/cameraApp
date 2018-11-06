//
//  PreviewControllerViewController.swift
//  cameraApp
//
//  Created by nowall on 2018/10/28.
//  Copyright © 2018 鈴木貴大. All rights reserved.
//

import UIKit
import AVFoundation
import Photos

class PreviewControllerViewController: UIViewController,AVCapturePhotoCaptureDelegate {

    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         imageView.image = image
        
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func preserve(_ sender: Any) {
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        dismiss(animated: true, completion: nil)
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
