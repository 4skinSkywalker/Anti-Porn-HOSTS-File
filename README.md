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
### Using Hosts Go
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

