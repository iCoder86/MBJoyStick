# MBJoyStick

<a href="https://imgflip.com/gif/1wug6k"><img src="https://i.imgflip.com/1wug6k.gif" title="made at imgflip.com"/></a>

Comstom UIView


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches) {
            let location = touch.location(in: self)
            if (ball.frame.contains(location)) {
                stickActive = true
            }
            else {
                stickActive = false
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in (touches) {
            var location = touch.location(in: self)
            let selfCenter = CGPoint(x: self.frame.width/2, y: self.frame.height/2)
            let selfRadius = self.frame.size.width/2
            let distance = distanceBetweenTwoPoints(point1: location, point2: selfCenter)
            if (distance > selfRadius) {
                let vX = location.x - selfCenter.x
                let vY = location.y - selfCenter.y
                location.x = selfCenter.x + ((vX / distance) * selfRadius)
                location.y = selfCenter.y + ((vY / distance) * selfRadius)
            }
            ball.center = location
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if (stickActive==true) {
            UIView.animate(withDuration: 0.3, animations: {
                self.ball.center = CGPoint(x: self.frame.width/2, y: self.frame.height/2)
            })
        }
    }
    
    func distanceBetweenTwoPoints(point1:CGPoint,point2:CGPoint)-> CGFloat {
        let dx = point2.x - point1.x
        let dy = point2.y - point1.y
        return sqrt(dx * dx + dy * dy)
    }

