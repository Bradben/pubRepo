namespace RunTeleport {

    open TeleportLib;

    @EntryPoint()
    operation RunTeleportationExample() : Unit {
        use msg = Qubit();
        use target = Qubit();

        H(msg);
        Teleport(msg, target);
        H(target);

        if M(target) == Zero {
            Message("Teleported successfully!");
        
        Reset(msg);
        Reset(target);
        }
    }
}