//
//  ViewController.swift
//  ParsingJSON
//
//  Created by Jesse Brior on 11/7/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var refreshBtn: UIButton!
    
    let url = "https://briors.com/test.php"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData(from: url)
    }
    
    @IBAction func btnTapped(_ sender: UIButton) {
        getData(from: url)
    }
    
    private func getData(from url: String) {
        var result: Result?
        
        let url = URL(string: url)!
        
        do {
            let jsonData = try Data(contentsOf: url)
            result = try JSONDecoder().decode(Result.self, from: jsonData)
        }
        catch {
            print("Error: \(error.localizedDescription)")
        }
        
        guard let json = result else {
            return
        }
        
        let j = json.data
        
        var index = 0
        for i in j {
            print(i.title)
            for i in j[index].items {
                print("- \(i)")
            }
            index += 1
        }
    }
}

