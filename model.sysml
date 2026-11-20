package ElectricBike {
    part def Battery {
        attribute capacity :> ISQ::energy = 500 [SI::W * SI::h];
        attribute mass :> ISQ::mass = 3.2 [SI::kg];
    }

    part def Motor {
        attribute power :> ISQ::power = 250 [SI::W];
        attribute mass :> ISQ::mass = 2.5 [SI::kg];
    }

    part def EBike {
        part battery : Battery;
        part motor : Motor;
        attribute totalMass :> ISQ::mass = battery.mass + motor.mass;
    }
}
