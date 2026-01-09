# installing \<package\> breaks dependency
1. Remove the conflicting package
```bash
sudo pacman -Rdd <package>
```

2. Reinstall all dependant packages
```bash
sudo pacman -Sy <dependant-package>
```

3. Reinstall the conflicting package
```bash
sudo pacman -Sy <package>
```
