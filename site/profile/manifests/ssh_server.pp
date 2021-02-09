class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@vm.master.puppet001':
                ensure => present,
                user => 'root',
                type => 'ssh-rsa',
                key => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQDT9rSCGxj0JZl4dnOj4UsUALPVnbwwz53zol8luZQLpddwGYV7qjG8TSdUUWpAWelk3WiOEZyZUP2YYz3jEPYXoBYhSGIt4eAIFvEuSR8okvPO1O/TttbnrNYjqSDzIS+nmxM2b89ZK18/HrKZt7CLjgpDQYsHNmKNuYAbVLHnCnTQzMDmN9vLhdFuWPOe3RMH+PmFmsU30n6cVtyLAmDhwxzLIZkmmedPdPYZ4gg0Y9gBc7zhjjCJ+pea4UdAVJEugBfSex6RfLbXExpXpd8AeL6Yh7qvYaTPh9inxF+G4a/WLNd3HIF+peGCQ73sLD3B5xLhl634EuSsRFxQnGnvXm3uqjB3emMyVsyv9d3ZJmSOpz0i3/eYrq9lcPnuu7uLcxFc4l4CQdkxlxxTaBxx+BqD4s9EAfIJ+HH5hqXzR9fN0AfgKS+zsLZMgHYt7dc4FBR2A09kBT840d2L9/9Ea/tmTNjo+VWG0kse9rjCNWFfWfhxwTNwHVBOgvAR6t8= root@vm.master.puppet001',
        }
}
      
