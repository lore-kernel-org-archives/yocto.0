Subject: Re: The following packages have unmet dependencies: packagegroup-core-x11-base : Depends: packagegroup-core-x11-xserver but it is not going to be installed #yocto
To: yocto@lists.yoctoproject.org
From: "Pankaj  Vinadrao Joshi" <pankaj.vj@exaleapsemi.com>
X-Originating-Location: Pune, Maharashtra, IN (49.35.219.96)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 03 Jul 2020 00:38:23 -0700
References: <6208.1593761482623104508@lists.yoctoproject.org>
In-Reply-To: <6208.1593761482623104508@lists.yoctoproject.org>
Message-ID: <8184.1593761903948245805@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="A5aSnrz8gIQBMzPLRp6c"

--A5aSnrz8gIQBMzPLRp6c
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Sorry i forgot to attach the complete error log also i dont know while post=
ing why the local.conf features it got copied twice,

ERROR: core-image-sato-1.0-r0 do_rootfs: Unable to install packages. Comma=
nd '/home/performance-team/pankaj/Oe_raspberrypi4/tmp-glibc/work/raspberryp=
i4_64-oe-linux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/opkg --=
volatile-cache -f /home/performance-team/pankaj/Oe_raspberrypi4/tmp-glibc/w=
ork/raspberrypi4_64-oe-linux/core-image-sato/1.0-r0/opkg.conf -t /home/perf=
ormance-team/pankaj/Oe_raspberrypi4/tmp-glibc/work/raspberrypi4_64-oe-linux=
/core-image-sato/1.0-r0/temp/ipktemp/ -o /home/performance-team/pankaj/Oe_r=
aspberrypi4/tmp-glibc/work/raspberrypi4_64-oe-linux/core-image-sato/1.0-r0/=
rootfs=C2=A0 --force_postinstall --prefer-arch-to-version=C2=A0 =C2=A0insta=
ll cpufrequtils cups dbus dhcp-client dhcp-server dhcpcd dosfstools dstat e=
2fsprogs gdbserver hostapd iperf3 libnss-mdns libsdl2 libtirpc lzo make man=
-pages minicom mtd-utils nasm ncurses-libncurses ncurses-terminfo-base ncur=
ses-tools nfs-utils opkg packagegroup-core-eclipse-debug packagegroup-core-=
nfs-client packagegroup-core-nfs-server packagegroup-core-sdk packagegroup-=
core-ssh-openssh packagegroup-core-standalone-sdk-target packagegroup-core-=
tools-debug packagegroup-core-tools-profile packagegroup-core-tools-testapp=
s packagegroup-core-x11 packagegroup-core-x11-base packagegroup-core-x11-sa=
to pciutils perf psplash-raspberrypi python3-flask python3-matplotlib rsync=
 run-postinsts strace sudo unzip vim zlib' returned 2:
Collected errors:
* Solver encountered 2 problem(s):
* Problem 1/2:
*=C2=A0 =C2=A0- package packagegroup-core-x11-base-1.0-r1.all requires pac=
kagegroup-core-x11-xserver, but none of the providers can be installed
*=C2=A0 =C2=A0- conflicting requests
*=C2=A0 =C2=A0- nothing provides xserver-xorg-extension-glx needed by pack=
agegroup-core-x11-xserver-1.0-r40.raspberrypi4_64
*
* Solution 1:
*=C2=A0 =C2=A0- do not ask to install a package providing packagegroup-cor=
e-x11-base

* Problem 2/2:
*=C2=A0 =C2=A0- package packagegroup-core-x11-1.0-r40.all requires package=
group-core-x11-xserver, but none of the providers can be installed
*=C2=A0 =C2=A0- conflicting requests
*=C2=A0 =C2=A0- nothing provides xserver-xorg-extension-glx needed by pack=
agegroup-core-x11-xserver-1.0-r40.raspberrypi4_64
*
* Solution 1:
*=C2=A0 =C2=A0- do not ask to install a package providing packagegroup-cor=
e-x11

ERROR: Logfile of failure stored in: /home/performance-team/pankaj/Oe_rasp=
berrypi4/tmp-glibc/work/raspberrypi4_64-oe-linux/core-image-sato/1.0-r0/tem=
p/log.do_rootfs.645
ERROR: Task (/home/performance-team/pankaj/openembedded-core/meta/recipes-=
sato/images/core-image-sato.bb:do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 6537 tasks of which 6536 didn't need to be =
rerun and 1 failed.

--A5aSnrz8gIQBMzPLRp6c
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Sorry i forgot to attach the complete error log also i dont know while post=
ing why the local.conf features it got copied twice,<br /><br />
<div>ERROR: core-image-sato-1.0-r0 do_rootfs: Unable to install packages. =
Command '/home/performance-team/pankaj/Oe_raspberrypi4/tmp-glibc/work/raspb=
errypi4_64-oe-linux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/op=
kg --volatile-cache -f /home/performance-team/pankaj/Oe_raspberrypi4/tmp-gl=
ibc/work/raspberrypi4_64-oe-linux/core-image-sato/1.0-r0/opkg.conf -t /home=
/performance-team/pankaj/Oe_raspberrypi4/tmp-glibc/work/raspberrypi4_64-oe-=
linux/core-image-sato/1.0-r0/temp/ipktemp/ -o /home/performance-team/pankaj=
/Oe_raspberrypi4/tmp-glibc/work/raspberrypi4_64-oe-linux/core-image-sato/1.=
0-r0/rootfs&nbsp; --force_postinstall --prefer-arch-to-version&nbsp; &nbsp;=
install cpufrequtils cups dbus dhcp-client dhcp-server dhcpcd dosfstools ds=
tat e2fsprogs gdbserver hostapd iperf3 libnss-mdns libsdl2 libtirpc lzo mak=
e man-pages minicom mtd-utils nasm ncurses-libncurses ncurses-terminfo-base=
 ncurses-tools nfs-utils opkg packagegroup-core-eclipse-debug packagegroup-=
core-nfs-client packagegroup-core-nfs-server packagegroup-core-sdk packageg=
roup-core-ssh-openssh packagegroup-core-standalone-sdk-target packagegroup-=
core-tools-debug packagegroup-core-tools-profile packagegroup-core-tools-te=
stapps packagegroup-core-x11 packagegroup-core-x11-base packagegroup-core-x=
11-sato pciutils perf psplash-raspberrypi python3-flask python3-matplotlib =
rsync run-postinsts strace sudo unzip vim zlib' returned 2:</div>
<div>Collected errors:</div>
<div>&nbsp;* Solver encountered 2 problem(s):</div>
<div>&nbsp;* Problem 1/2:</div>
<div>&nbsp;*&nbsp; &nbsp;- package packagegroup-core-x11-base-1.0-r1.all r=
equires packagegroup-core-x11-xserver, but none of the providers can be ins=
talled</div>
<div>&nbsp;*&nbsp; &nbsp;- conflicting requests</div>
<div>&nbsp;*&nbsp; &nbsp;- nothing provides xserver-xorg-extension-glx nee=
ded by packagegroup-core-x11-xserver-1.0-r40.raspberrypi4_64</div>
<div>&nbsp;*&nbsp;</div>
<div>&nbsp;* Solution 1:</div>
<div>&nbsp;*&nbsp; &nbsp;- do not ask to install a package providing packa=
gegroup-core-x11-base</div>
<div>&nbsp;</div>
<div>&nbsp;* Problem 2/2:</div>
<div>&nbsp;*&nbsp; &nbsp;- package packagegroup-core-x11-1.0-r40.all requi=
res packagegroup-core-x11-xserver, but none of the providers can be install=
ed</div>
<div>&nbsp;*&nbsp; &nbsp;- conflicting requests</div>
<div>&nbsp;*&nbsp; &nbsp;- nothing provides xserver-xorg-extension-glx nee=
ded by packagegroup-core-x11-xserver-1.0-r40.raspberrypi4_64</div>
<div>&nbsp;*&nbsp;</div>
<div>&nbsp;* Solution 1:</div>
<div>&nbsp;*&nbsp; &nbsp;- do not ask to install a package providing packa=
gegroup-core-x11</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>ERROR: Logfile of failure stored in: /home/performance-team/pankaj/Oe=
_raspberrypi4/tmp-glibc/work/raspberrypi4_64-oe-linux/core-image-sato/1.0-r=
0/temp/log.do_rootfs.645</div>
<div>ERROR: Task (/home/performance-team/pankaj/openembedded-core/meta/rec=
ipes-sato/images/core-image-sato.bb:do_rootfs) failed with exit code '1'</d=
iv>
<div>NOTE: Tasks Summary: Attempted 6537 tasks of which 6536 didn't need t=
o be rerun and 1 failed.</div>
<div>&nbsp;</div>

--A5aSnrz8gIQBMzPLRp6c--
