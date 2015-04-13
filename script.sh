#!/bin/bash
cd ~/Works/mgl/bastly/infra/frontend/
vagrant up frontend
gnome-terminal -x sh -c "vagrant ssh chaski1" -t frontend
gnome-terminal -x sh -c "vagrant ssh chaski1" -t frontend
gnome-terminal -x sh -c "vagrant ssh chaski1" -t frontend

cd -
