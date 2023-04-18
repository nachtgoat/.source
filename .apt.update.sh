#!/usr/bin/env zsh

# @title                    .apt.update.sh
# @version                  0.004
# @description              apt, snap and do-release-upgrade update script
# @author                   NachtZiege
# @shell                    zsh
# @zsource                  $myRepo/?/.apt.update
# @zdestination             $myRepo/public/?/.source/.apt.update
# @update                   cp @zsource @zdestination
# @destination              ${HOME}/.apt.update
# @date                     2023-01-05 01:17:50 -0500
# @usage                    /bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/nachtziege/.source/main/.apt.update)"
# @dependencies             ubuntu, zsh, #expects sudo, recommend adding user to sudoers, visudo and add "user ALL=NOPASSWD:/usr/bin/apt,/usr/sbin/shutdown,/usr/sbin/reboot,/usr/bin/snap,/usr/bin/do-release-upgrade"

# apt updates
sudo apt update && sudo apt --yes upgrade
sudo apt --yes autoremove --purge && sudo apt autoclean --yes

# snap updates
sudo snap refresh
