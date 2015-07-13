# Peradventure Rails App
This the Rails app for the Peradventure game.

Peradventure is a "Choose Your Own Adventure" game that allows players to explore an existing world of Situations. Each Situation may present one or two choices of new situations, otherwise you are left with no choices other than to create new situations to extend the adventure for other players.

## Development

Peradventure is an open source Rails project which encourages contribution.



The following commands will get your development environment set up (provided you have Vagrant and VirtualBox installed on your host machine already).

```
host $ git clone https://github.com/rails/rails-dev-box.git
host $ cd rails-dev-box
host $ git clone git@github.com:Peradventure/app.git rails
host $ vagrant up
host $ vagrant ssh
vagrant $ cd /vagrant/rails
vagrant $ bundle
vagrant $ rake db:migrate
vagrant $ rake db:seed
```
