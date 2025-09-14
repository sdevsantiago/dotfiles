1. Change keyboard distribution
```zsh
loadkeys es
```

2. Connect to Wi-Fi
```zsh
iwctl station wlan0 connect <network_name>
```

4. List disks
```zsh
lsblk
```

4. Create and format partitions on disk
```zsh
cfdisk /dev/<disk>

mkfs.fat -F32 /dev/<disk> # boot (/boot) partition
mkswap /dev/<disk>        # [SWAP] partition
mkfs.ext4 /dev/<disk>     # root (/) partition
```

5. Update archinstall and keyring
```zsh
pacman -Sy archinstall archlinux-keyring
```

6. Run archinstall with config file

```zsh
pacman -Sy git
git clone https://github.com/sdevsantiago/dotfiles
archinstall --config path/to/config/file.json # also install intel-ucode/amd-ucode
```

If dual-booting, follow the next steps

7. Run os-prober
```zsh
os-prober
```

8. Enable os-prober on grub
```zsh
sudo vim /etc/default/grub # uncomment GRUB_DISABLE_OS_PROBER=false line
```

9. Update grub config
```zsh
grub-mkconfig -o /boot/grub/grub.cfg
```

10. Reboot the system
```zsh
exit
reboot now
```
