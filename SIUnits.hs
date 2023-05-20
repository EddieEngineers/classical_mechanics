import Control.Monad (unless)
import Text.Printf (printf)

type Second     = Float
type Meter      = Float
type Kilogram   = Float
type Ampere     = Float
type Kelvin     = Float
type Newton     = Float

data Velocity = Velocity {  }

data Acceleration = 
      Acceleration          { meter  :: Meter, second :: Second } 
    | AccelerationForceMass { force :: Newton, mass :: Kilogram } deriving (Show)

calculateAcceleration :: Acceleration -> Float
calculateAcceleration AccelerationForceMass{force=f, mass=m}    = f / m

main = do
    unless (calculateAcceleration (AccelerationForceMass 3 3) == 1) (error "Acceleration is buggy!")
    print "All working!"
