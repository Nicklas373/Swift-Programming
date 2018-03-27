//
//  ViewController.swift
//  Program Luas Segitiga
//
//  Created by Matsuura Hana on 3/27/18.
//  Copyright © 2018 Matsuura Hana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Alas: UITextField!
    @IBOutlet weak var Tinggi: UITextField!
    @IBOutlet weak var Hasil: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnhasil(sender: AnyObject) {
        // Operasi Luas Segitiga
        let angka1 = Double(Alas.text!)
        let angka2 = Double(Tinggi.text!)
        
        if angka1 != nil && angka2 != nil {
        let luas = Double(angka1! * angka2! / 2)
        Hasil.text = "Hasilnya adalah \(luas)"
        } else
        {
            Hasil.text = "Harap isi!!!"
        }
    }

}
