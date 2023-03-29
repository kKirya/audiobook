import UIKit
import AVFoundation

class DushiViewController: UIViewController {
    var audioPlayer : AVAudioPlayer!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let mp3Url = Bundle.main.url(forResource: "Мертвые души", withExtension: "mp3")?.relativeString {
            if let stringUrl = URL(string: mp3Url) {
                audioPlayer = try! AVAudioPlayer(contentsOf: stringUrl)
                audioPlayer.prepareToPlay()
            }
        }
    }
    
    @IBAction func play(_ sender: Any) {
        if !audioPlayer.isPlaying {
            audioPlayer.play()
        }
    }
    
    @IBAction func pause(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.pause()
        }
    }
    
}
