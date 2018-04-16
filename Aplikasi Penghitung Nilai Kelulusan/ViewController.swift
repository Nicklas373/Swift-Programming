//
//  ViewController.swift
//  Aplikasi Penghitung Nilai Kelulusan
//
//  Created by Matsuura Hana on 16/04/18.
//  Copyright © 2018 Matsuura Hana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nama: UITextField!
    @IBOutlet weak var absen: UITextField!
    @IBOutlet weak var uts: UITextField!
    @IBOutlet weak var uas: UITextField!
    @IBOutlet weak var output: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func hitung(sender: AnyObject) {
        let name = String(nama.text!)
        let abn = Double(absen.text!)
        let u1 = Double(uts.text!)
        let u2 = Double(uas.text!)
        
        if abn != nil && u1 != nil && u2 != nil
        {
            let hasil = Double(abn! + ((u1!*0.20)+(u2!*0.40)))
            if hasil > 80
            {
                output.text! = "\(name) lulus, nilai anda adalah \(hasil)"
            } else {
            output.text! = "\(name) tidak lulus, nilai anda adalah \(hasil)"
            }
        } else {
            output.text! = "\(name) tidak lulus, karena data tidak di isi "
        }
    }
}
