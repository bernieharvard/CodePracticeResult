let expert = Expert()
let character= Character()
expert.turnLeft()
func move(distance: Int) {
    for i in 1 ... distance {
        expert.moveForward()
    }
}
move(distance: 3)
expert.turnRight()
move(distance: 2)
expert.turnLeft()
expert.turnLockDown()
expert.turnLockDown()
expert.turnRight()
move(distance: 2)
expert.turnRight()
move(distance: 6)
expert.turnRight()
move(distance: 2)
expert.turnLeft()
expert.turnLockUp()
character.moveForward()
character.moveForward()
character.collectGem()
character.moveForward()
character.moveForward()
character.toggleSwitch()
