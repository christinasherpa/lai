//
//  ContentViewController.swift
//  Social Justice
//
//  Created by Girls Who Code on 7/30/18.
//  Copyright © 2018 Girls Who Code. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    
    var topics: String = ""
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var contentText: UITextView!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBAction func link1(_ sender: Any) {
        if(topics == "Human Trafficking"){
            
            UIApplication.shared.open (URL( string: "https://www.dosomething.org/us/facts/11-facts-about-human-trafficking")! as URL, options:[:], completionHandler: nil)
        }
            
        else if(topics == "Police Brutality"){
                UIApplication.shared.open (URL( string: "https://vittana.org/42-shocking-police-brutality-statistics")! as URL, options:[:], completionHandler: nil)
            }
        else if(topics == "Suicide / Self Harm"){
            UIApplication.shared.open (URL( string: "https://afsp.org/about-suicide/")! as URL, options:[:], completionHandler: nil)
            
        }

        else if(topics ==  "Sexual Assualt"){
            UIApplication.shared.open (URL( string: "https://www.equalrights.org/legal-help/know-your-rights/sexual-harassment-at-school/")! as URL, options:[:], completionHandler: nil)
            
        }

        else if(topics == "Cyber Bullying"){
            UIApplication.shared.open (URL( string: "https://www.stopbullying.gov/cyberbullying/what-is-it/index.html")! as URL, options:[:], completionHandler: nil)
            
        }

        else{
            UIApplication.shared.open (URL( string: "https://www.fairus.org/issue/illegal-immigration/truth-about-zero-tolerance-and-family-separation-what-americans-need-know")! as URL, options:[:], completionHandler: nil)
            
        }

        
        
    }
    
    @IBOutlet weak var link1Label: UIButton!
    
    @IBOutlet weak var link2Label: UIButton!
    
    @IBAction func link2(_ sender: Any) {
        if(topics == "Human Trafficking"){
            
            UIApplication.shared.open (URL( string: "https://www.antislavery.org/slavery-today/human-trafficking/")! as URL, options:[:], completionHandler: nil)
        }
            
        else if(topics == "Police Brutality"){
            UIApplication.shared.open (URL( string: "https://copcrisis.com/")! as URL, options:[:], completionHandler: nil)
        }
        else if(topics == "Suicide / Self Harm"){
            UIApplication.shared.open (URL( string: "https://www.medicinenet.com/suicide/article.htm#what_is_suicide")! as URL, options:[:], completionHandler: nil)
            
        }
            
        else if(topics ==  "Sexual Assualt"){
            UIApplication.shared.open (URL( string: "https://www.theatlantic.com/education/archive/2017/08/the-younger-victims-of-sexual-violence-in-school/536418/")! as URL, options:[:], completionHandler: nil)
            
        }
            
        else if(topics == "Cyber Bullying"){
            UIApplication.shared.open (URL( string: "https://cyberbullying.org")! as URL, options:[:], completionHandler: nil)
            
        }
            
        else{
            UIApplication.shared.open (URL( string: "https://www.isidewith.com/poll/3493858070")! as URL, options:[:], completionHandler: nil)
            
        }

    }
    
    @IBOutlet weak var link3Label: UIButton!
    
    @IBAction func link3(_ sender: Any) {
        if(topics == "Human Trafficking"){
            
            UIApplication.shared.open (URL( string: "http://16days.thepixelproject.net/16-ways-to-take-action-against-human-trafficking/")! as URL, options:[:], completionHandler: nil)
        }
            
        else if(topics == "Police Brutality"){
            UIApplication.shared.open (URL( string: "https://www.huffingtonpost.com/ravishly/what-you-can-do-right-now_1_b_7050424.html")! as URL, options:[:], completionHandler: nil)
        }
        else if(topics == "Suicide / Self Harm"){
            UIApplication.shared.open (URL( string: "https://afsp.org/take-action/")! as URL, options:[:], completionHandler: nil)
            
        }
            
        else if(topics ==  "Sexual Assualt"){
            UIApplication.shared.open (URL( string: "https://www.aauw.org/resource/campus-sexual-assault-tool-kit/")! as URL, options:[:], completionHandler: nil)
            
        }
            
        else if(topics == "Cyber Bullying"){
            UIApplication.shared.open (URL( string: "https://www.stopbullying.gov")! as URL, options:[:], completionHandler: nil)
            
        }
            
        else{
            UIApplication.shared.open (URL( string: "https://www.mother.ly/news/how-to-help-immigrant-children-separated-from-parentss/")! as URL, options:[:], completionHandler: nil)
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getRec()
    }

        


        var topic: [String] = ["Human Trafficking", "Police Brutality", "Suicide / Self Harm", "Sexual Assualt", "Cyber Bullying", "Immigration"]
        var content: [String] = ["Human Trafficking is the action or practice of illegally transporting people from one country or area to another, typically for the purposes of forced labor or commercial sexual exploitation.", "Police brutality is the use of excessive and/or unnecessary force by police when dealing with civilians.", "Suicide is the act or instance of taking one’s life voluntarily and intentionally", "Sexual harassment/assault is unwelcome sexual behavior. This is more common in educational institutions such as schools and colleges because students are usually too afraid to speak up", "Cyber bullying/harassment, also known as online bullying, is the form of bullying through electronic means. In this day and age, this is a rapidly growing issue.", "After the Presidential elections in 2016, the issue of legal and illegal immigration has been very prominent. Trump’s “No Tolerance” policy has separated families and sparked many controversial topics."]
    var links1: [String] = ["www.dosomething.org", "hvittana.org", "afsp.org", "www.equalrights.org", "www.stopbullying.gov", "www.fairus.org"]
    var links2: [String] = ["www.antislavery.org", "vittana.org", "www.medicinenet.com", "www.theatlantic.com", "cyberbullying.org", "www.isidewith.com"]
    var links3: [String] = ["16days.thepixelproject.net", "www.huffingtonpost.com", "www.aauw.org", "afsp.org", "stopbullying.gov", "mother.ly"]
    
        var index: Int = 0
        
        func getRec() {
            let size: Int = topic.count
            let randIndex: Int =
                Int(arc4random_uniform(UInt32(size)))
            topics = topic[randIndex]
            titleLabel.text = topic[randIndex]
            contentText.text = content[randIndex]
            link1Label.setTitle (links1[randIndex], for: .normal)
            link2Label.setTitle (links2[randIndex], for: .normal)
            link3Label.setTitle (links3[randIndex], for: .normal)
            image.image = UIImage(named: images[randIndex])
        }

    var images: [String] = ["humanTraffic", "police", "suicide", "sexualAssualt", "cyberbullying", "immigration"]
    
    
    
        // Do any additional setup after loading the view.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
