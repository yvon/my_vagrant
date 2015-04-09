# vim: set filetype=ruby:

Vagrant.configure(2) do |config|
  config.vm.provision :file,
    source: File.join(File.dirname(__FILE__), 'sources.list'),
    destination: '/tmp/sources.list'

  config.vm.synced_folder \
    File.join(File.dirname(__FILE__), 'home'),
    '/vagrant/home'

  config.vm.provision :shell, inline: <<-SHELL
    export DEBIAN_FRONTEND=noninteractive

    cp /tmp/sources.list /etc/apt/sources.list
    apt-get -q update

    apt-get -q install -y unzip
    apt-get -q install -y curl
    apt-get -q install -y build-essential
    apt-get -q install -y vim
    apt-get -q install -y git

    # Zsh
    apt-get -q install -y zsh
    chsh -s /bin/zsh vagrant

    # Tmux
    apt-get -q install -y libevent-dev
    apt-get -q install -y libncurses5-dev
    wget -q http://downloads.sourceforge.net/tmux/tmux-1.9a.tar.gz
    tar zxvf tmux-1.9a.tar.gz
    cd tmux-1.9a
    ./configure
    make
    make install
    cd
  SHELL

  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    cp -r /vagrant/home/. ~

    # OhMyZsh
    git clone -q git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

    # Rbenv
    git clone -q https://github.com/sstephenson/rbenv.git ~/.rbenv
    git clone -q https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  SHELL
end
