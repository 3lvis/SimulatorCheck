struct SimulatorCheck {
    /**
     Method to check wheter your code is running on the simulator or not.
     - returns: A Bool, `true` if you're on the simulator, `false` if you're not.
     */
    static let isSimulator: Bool = {
        var isSimulator = false
        #if arch(i386) || arch(x86_64)
            isSimulator = true
        #endif

        return isSimulator
    }()
}
