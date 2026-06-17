# Anti Porn HOSTS File
The purpose of this repository is to distribute a useful means to fight porn addiction.

If you are willing to improve your life and get rid of porn addiction then visit [NoFap®](https://nofap.com)

## What's the HOSTS file and how it can prevent access to porn sites?
A HOSTS file contains the mappings of IP addresses to host names on a system.

Within that HOSTS file we can prevent our browser from accessing porn sites.

## What's so special about this repository?
HOSTS.txt contains a huge list of porn sites (probably the biggest list you can find on the Internet).

Just copy-pasting its contents on your machine's HOSTS file enables the blocking mechanism.

## HOSTS on Windows 7/8.x/10/11
### Using Notepad
1. Right mouse click on Notepad icon then click on `Run as administrator`
2. File → Open... then insert the path `C:\windows\system32\drivers\etc\hosts`
3. Add a new line and copy-paste the entire content of HOSTS.txt
4. Save
5. Reboot

### Using Windows PowerShell
1.  Open HOSTS.txt and add a newline to the beginning
2.  Save and close HOSTS.txt
3.  Open Windows PowerShell
4.  Run this command in Windows PowerShell: `Get-Content HOSTS.txt | Add-Content "C:\windows\system32\drivers\etc\hosts"`

### Using Cygwin
1. Open HOSTS.txt and add a newline to the beginning
2. Save and close HOSTS.txt
3. Right mouse click on Cygwin icon then click on 'Run as adminstrator`
4. `cd` to where HOSTS.txt lives
5. Run this command in Cygwin: `cat HOSTS.txt >> /cygdrive/c/Windows/System32/drivers/etc/hosts`
6. Reboot

The steps in Cygwin should be similar on in any POSIX compatible system running on Windows.

## HOSTS on Linux and macOS
1. Open the terminal
2. Type `sudo vim /etc/hosts`
3. Add a new line and copy-paste the entire content of HOSTS.txt
4. Save
5. Reboot

## HOSTS on Android
### Using Hosts Go (not available anymore)
1. Install [Hosts Go](https://play.google.com/store/apps/details?id=dns.hosts.server.change.vip)
2. Download "HOSTS.txt" and put it somewhere inside your phone
3. Open [Hosts Go](https://play.google.com/store/apps/details?id=dns.hosts.server.change.vip)
4. Click on HOSTS EDITOR button
5. Click on three dots top-right corner
6. Import HOSTS file you previously downloaded
7. Go back and START

### Using DNS66
1. Install [DNS66](https://github.com/julian-klode/dns66#installing)
2. Open [DNS66](https://github.com/julian-klode/dns66#installing)
3. Click on HOSTS button to select the "HOSTS" section of the APP
4. Click on the + floating button on the lower-right corner
5. Insert a title of your choice and the following url: https://raw.githubusercontent.com/4skinSkywalker/Anti-Porn-HOSTS-File/master/HOSTS.txt
6. Save the filter you created by clicking the check mark on the top-right corner
7. Press the refresh button on the top-right corner
8. Go back to the "START" section of the APP and start it
9. You should notice a symbol indicating an active VPN on your Android system

### Rooting (requires computer)
##### THIS METHOD IS FOR ADVANCED USERS ONLY
*Assuming you already took the steps to root your device, which won't be instructed here, have `adb` installed on a computer, and also understand the risks that can come with rooting a device:*
1. Connect your device via USB to your computer.
2. Enable Developer mode on your device if you haven't done so already. (Settings > About phone > Tap "Build number" five times)
3. Make sure the USB Debugging (and Rooted Debugging), options are enabled. (Settings > System > Developer options > "USB debugging" & "Rooted debugging")
4. Find your device by running `adb devices` on your computer. (If it prints "unauthorized", check for a pop up on your device asking for permission to use USB debugging")
5. Pull the device's hosts file by running `adb pull /system/etc/hosts`.
6. Open the `hosts` file in your preferred editor, and copy-paste all the contents of HOSTS.txt in a new line. Save the file.
7. Enable root access on ADB by running `adb root`.
8. Remount the filesystem by running `adb remount`.
9. Push the file back to your device by running `adb push hosts /system/etc`.
10. If the device was rooted properly, it should successfully block all sites listed. If it doesn't work right away, try rebooting.
11. (optional) If you want to make it a little more difficult to edit the file (so that you dont delete it), go into your device's shell with `adb shell`, and make the `hosts` file immutable by running `chattr +i /system/etc/hosts`. You can remove the immutability by replacing `+i` with `-i`.

## Alternative Method

### Using DNS for Family

Besides modifying hosts file, using DNS for Family can also be very useful for blocking adult websites. It is a DNS service that comes ready with content filtering such as malware, harmful ads, and adult sites.

Setting DNS manually on a PC ensures that the device always uses the selected filtering service, even without relying on the router. Though it is always better to set it on the router-level for network-wide effect.

1. Open **Settings**
2. Go to **Network & Internet**
3. Select **Advanced network settings**
4. Click **More network adapter options**
5. Right click on the network you are using → **Properties**
6. Select **Internet Protocol Version 4 (IPv4)** → **Properties**
7. Select **Use the following DNS server addresses**
8. Enter the preferred DNS (example: `1.1.1.3` and `1.0.0.3`) 
9. Repeat the steps for **Internet Protocol Version 6 (IPv6)** if necessary *(See table below for more DNS for Family providers)*
10. Click OK.

![dns settings](https://i.imgur.com/lgVAUxk.png)

**Notes:**

- Set both IPv4 and IPv6 to avoid bypass
- Configure the router so that the entire network uses the same DNS

**Available DNS for Family providers:**

| DNS                           | IPv4                                   | IPv6                                             |
| ----------------------------- | -------------------------------------- | ------------------------------------------------ |
| Cloudflare for Families       | `1.1.1.3`<br>`1.0.0.3`                 | `2606:4700:4700::1113`<br>`2606:4700:4700::1003` |
| OpenDNS FamilyShield          | `208.67.222.123`<br>`208.67.220.123`   | `2620:0:ccc::2`<br>`2620:0:ccd::2`               |
| CleanBrowsing Family Filter   | `185.228.168.168`<br>`185.228.169.168` | `2a00:5a60::bad1:0ff`<br>`2a00:5a60::bad2:0ff`   |
| AdGuard DNS Family Protection | `94.140.14.15`<br>`94.140.15.16`       | `2a10:50c0::bad1:ff`<br>`2a10:50c0::bad2:ff`     |

## Make a promise
Once the mechanism is in place and working, do not disable it.

If you disable it on demand to watch porn then you defeat the very purpose of it, but more than that you betray yourself.

## Contribute

Become an open source contributor in 7 steps (_it takes less than 30 minutes_):
1. Fork this repository
2. Clone the repository into your PC
3. Create a new branch
4. Change whatever you think it has to be improved
5. Commit your changes
6. Push your changes to GitHub
7. Submit a PR

Your changes **won't be visible immediately**; first they have to be merged by the project maintainer.

## Donation
If you feel like you want to donate something

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=3UN95QQCD4B7E)

