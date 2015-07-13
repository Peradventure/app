# Peradventure Rails App
This the Rails app for the Peradventure game.

Peradventure is a "Choose Your Own Adventure" game that allows players to explore an existing world of Situations. Each Situation may present one or two choices of new situations, otherwise you are left with no choices other than to create new situations to extend the adventure for other players.

## Development

Peradventure is an open source Rails project which encourages contribution.

The commands below will get your development environment set up (provided you have [Vagrant](https://www.vagrantup.com/downloads.html) and [VirtualBox](https://www.virtualbox.org/wiki/Downloads) installed on your host machine already).

Everything command labeled `host` should be run on your local development workstation. Everything command labeled `vagrant` should be run on the VM over ssh.
```
host $ git clone https://github.com/Peradventure/rails-dev-box
host $ cd rails-dev-box
host $ git clone git@github.com:Peradventure/app.git rails
host $ vagrant up
host $ vagrant ssh
vagrant $ cd /vagrant/rails
vagrant $ bundle
vagrant $ rake db:migrate
vagrant $ rake db:seed
```

If you need to reset the database to the original state use `rake db:clear && rake db:migrate && rake db:seed`
