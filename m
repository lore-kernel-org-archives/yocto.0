Subject: dunfell actual package.bbclass causing problems after commit #dunfell
To: yocto@lists.yoctoproject.org
From: "TRO" <thomas.roos@industronic.de>
X-Originating-Location: Würzburg, Bavaria, DE (212.63.82.130)
X-Originating-Platform: Linux Firefox 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 19 Nov 2020 08:20:56 -0800
Message-ID: <s9ep.1605802856967465697.JI63@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="nNXMpLa52AleyfeCfn9B"

--nNXMpLa52AleyfeCfn9B
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

this commit 087a099c288c6bedf368c8756d998172b02b50ad
package: get_package_mapping: avoid dependency mapping if renamed package =
provides original name
is causing this problem:
NOTE: recipe intronix-introndplus-initramfs-1.0-r0: task do_rootfs: Starte=
d
ERROR: intronix-introndplus-initramfs-1.0-r0 do_rootfs: Unable to install =
packages. Command '/home/dev-build2/yocto/poky/build-xco/tmp/work/xco-poky-=
linux/intronix-introndplus-initramfs/1.0-r0/recipe-sysroot-native/usr/bin/o=
pkg --volatile-cache -f /home/dev-build2/yocto/poky/build-xco/tmp/work/xco-=
poky-linux/intronix-introndplus-initramfs/1.0-r0/opkg.conf -t /home/dev-bui=
ld2/yocto/poky/build-xco/tmp/work/xco-poky-linux/intronix-introndplus-initr=
amfs/1.0-r0/temp/ipktemp/ -o /home/dev-build2/yocto/poky/build-xco/tmp/work=
/xco-poky-linux/intronix-introndplus-initramfs/1.0-r0/rootfs=C2=A0 --force_=
postinstall --prefer-arch-to-version=C2=A0=C2=A0 --add-ignore-recommends bu=
sybox-syslog install base-passwd busybox gptfdisk initrdscripts-intronix pa=
ckagegroup-luks-initramfs packagegroup-tpm2-initramfs run-postinsts' return=
ed 1:
Collected errors:
* Solver encountered 1 problem(s):
* Problem 1/1:
*=C2=A0=C2=A0 - package initrdscripts-intronix-1.0-r0.corei7-64 requires c=
gos, but none of the providers can be installed
*
* Solution 1:
*=C2=A0=C2=A0 - do not ask to install a package providing initrdscripts-in=
tronix
* opkg_finalize_intercepts: Failed to open dir /home/dev-build2/yocto/poky=
/build-xco/tmp/work/xco-poky-linux/intronix-introndplus-initramfs/1.0-r0/te=
mp/ipktemp//opkg-JQVGKK/opkg-intercept-DEACdL: No such file or directory.
* rm_r: Failed to open dir /home/dev-build2/yocto/poky/build-xco/tmp/work/=
xco-poky-linux/intronix-introndplus-initramfs/1.0-r0/temp/ipktemp//opkg-JQV=
GKK/opkg-intercept-DEACdL: No such file or directory.
* rm_r: Failed to open dir /home/dev-build2/yocto/poky/build-xco/tmp/work/=
xco-poky-linux/intronix-introndplus-initramfs/1.0-r0/temp/ipktemp//opkg-JQV=
GKK: No such file or directory.
Disfavor package: busybox-syslog

cgos is that:
https://git.congatec.com/x86/meta-congatec-x86/-/blob/dunfell/recipes-tool=
s/cgos/cgos-mod_1.03.025.bb

--nNXMpLa52AleyfeCfn9B
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

this commit 087a099c288c6bedf368c8756d998172b02b50ad <br />package: get_pac=
kage_mapping: avoid dependency mapping if renamed package provides original=
 name<br />is causing this problem:<br />NOTE: recipe intronix-introndplus-=
initramfs-1.0-r0: task do_rootfs: Started<br />ERROR: intronix-introndplus-=
initramfs-1.0-r0 do_rootfs: Unable to install packages. Command '/home/dev-=
build2/yocto/poky/build-xco/tmp/work/xco-poky-linux/intronix-introndplus-in=
itramfs/1.0-r0/recipe-sysroot-native/usr/bin/opkg --volatile-cache -f /home=
/dev-build2/yocto/poky/build-xco/tmp/work/xco-poky-linux/intronix-introndpl=
us-initramfs/1.0-r0/opkg.conf -t /home/dev-build2/yocto/poky/build-xco/tmp/=
work/xco-poky-linux/intronix-introndplus-initramfs/1.0-r0/temp/ipktemp/ -o =
/home/dev-build2/yocto/poky/build-xco/tmp/work/xco-poky-linux/intronix-intr=
ondplus-initramfs/1.0-r0/rootfs&nbsp; --force_postinstall --prefer-arch-to-=
version&nbsp;&nbsp; --add-ignore-recommends busybox-syslog install base-pas=
swd busybox gptfdisk initrdscripts-intronix packagegroup-luks-initramfs pac=
kagegroup-tpm2-initramfs run-postinsts' returned 1:<br />Collected errors:<=
br />&nbsp;* Solver encountered 1 problem(s):<br />&nbsp;* Problem 1/1:<br =
/>&nbsp;*&nbsp;&nbsp; - package initrdscripts-intronix-1.0-r0.corei7-64 req=
uires cgos, but none of the providers can be installed<br />&nbsp;* <br />&=
nbsp;* Solution 1:<br />&nbsp;*&nbsp;&nbsp; - do not ask to install a packa=
ge providing initrdscripts-intronix<br />&nbsp;* opkg_finalize_intercepts: =
Failed to open dir /home/dev-build2/yocto/poky/build-xco/tmp/work/xco-poky-=
linux/intronix-introndplus-initramfs/1.0-r0/temp/ipktemp//opkg-JQVGKK/opkg-=
intercept-DEACdL: No such file or directory.<br />&nbsp;* rm_r: Failed to o=
pen dir /home/dev-build2/yocto/poky/build-xco/tmp/work/xco-poky-linux/intro=
nix-introndplus-initramfs/1.0-r0/temp/ipktemp//opkg-JQVGKK/opkg-intercept-D=
EACdL: No such file or directory.<br />&nbsp;* rm_r: Failed to open dir /ho=
me/dev-build2/yocto/poky/build-xco/tmp/work/xco-poky-linux/intronix-intrond=
plus-initramfs/1.0-r0/temp/ipktemp//opkg-JQVGKK: No such file or directory.=
<br />Disfavor package: busybox-syslog<br /><br />cgos is that:<br />https:=
//git.congatec.com/x86/meta-congatec-x86/-/blob/dunfell/recipes-tools/cgos/=
cgos-mod_1.03.025.bb

--nNXMpLa52AleyfeCfn9B--
