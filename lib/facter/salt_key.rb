Facter.add(:salt_key) do
    config :kernel => :linux
    setcode do
        salt_k = Facter::Core::Execution.exec('salt-call --local key-finger')
        salt_key = salt_k.split(':', 2)[1].strip
        salt_key
    end
end
