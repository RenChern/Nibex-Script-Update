![](https://cdn.discordapp.com/attachments/460803845614862337/462105794498789376/Nibex.png)

# Nibex v2.2 Masternode Update Guide [ Ubuntu 16.04 ]

THIS GUIDE IS FOR ROOT USERS THAT INSTALLED USING NIBEX v1.0-

YOU MUST BE A MEMBER OF THE FOLLOWING GROUP
```
User=root
Group=root
```

Shell script to update a [Nibex Masternode](https://www.nibex.net/) on a Linux server running Ubuntu 16.04. Use it on your own risk.
***

## VPS UPDATE
```
wget -q https://raw.githubusercontent.com/RenChern/Nibex-Script-Update/master/nibex-update.sh
chmod +x nibex-update.sh
./nibex-update.sh
```
Once the update is finished.

Check the block height

We want the blocks to match whats on the Nibex block explorer (https://explorer.nibex.net/)

Once they match you can proceed with the rest of the guide.

Check the block height with the following command
```
watch nibex-cli getinfo
```
Make sure the version number matches.
```
"version" : 2020000,     ------------------This is the latest version (Nibex v2.2)
```

Once the block height matches the block explorer issue the following command.
```
CTRL and C  at the same time  (CTRL KEY and C KEY)
```
***

You Masternode has been updated!!!!!!!!!!!!!!!!!
