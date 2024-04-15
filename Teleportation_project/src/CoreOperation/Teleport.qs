namespace TeleportLib {

    open PrepareBell;

    operation Teleport(msg : Qubit, target : Qubit) : Unit {
        use here = Qubit();

        PrepareBellPair(here, target);
        Adjoint PrepareBellPair(msg, here);

        if M(msg) == One { Z(target); }
        if M(here) == One { X(target); }

        Reset(here);
    }
}