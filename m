Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A84ABE014D5
	for <yocto@yoctoproject.org>; Sun, 21 Apr 2013 20:39:41 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 99B88428B9; Mon, 22 Apr 2013 03:39:41 +0000 (UTC)
Date: Mon, 22 Apr 2013 03:39:41 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130422033941.GA7329@ab01.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-12-10)
Subject: Warning! Some failures happened on pkg-report system!
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 22 Apr 2013 03:39:41 -0000
X-Groupsio-MsgNum: 13317
Content-Type: multipart/mixed; boundary="Kj7319i9nmIyA2yE"
Content-Disposition: inline

--Kj7319i9nmIyA2yE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=46rom git://git.yoctoproject.org/poky-contrib
 * [new branch]      stage/master_under_test -> stage
Now updating daily_check database, please wait for a minute......
Now updating pkginfotable,please wait a minute........
['Package', 'Version', 'Upver', 'License', 'Section', 'Home', 'Release', 'D=
epends', 'BugTracker', 'PE', 'Description', 'Status', 'Tracking', 'URI', 'M=
AINTAINER', 'NoUpReason']
['grub-efi-i586-native', '2.00', '2.00', 'GPLv3', 'bootloaders', 'http://ww=
w.gnu.org/software/grub/', 'r2', 'autoconf-native automake-native libtool-n=
ative gnu-config-native gettext-minimal-native  autogen-native', 'None', 'N=
one', 'GRUB2 is the next generaion of a GPLed bootloader intended to unify =
bootloading across x86 operating systems. In addition to loading the Linux =
kernel, it implements the Multiboot standard, which allows for flexible loa=
ding of multiple boot images. This recipe builds an EFI binary for the targ=
et. It does not install or package anything, it only deploys a target-arch =
GRUB EFI image.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/grub/grub-2.00.tar=
=2Egz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (grub-efi-i586-native,2.00,2.00,GPLv3,bootloaders,r2,None,http://w=
ww.gnu.org/software/grub/,None,MATCH,autoconf-native automake-native libtoo=
l-native gnu-config-native gettext-minimal-native  autogen-native,GRUB2 is =
the next generaion of a GPLed bootloader intended to unify bootloading acro=
ss x86 operating systems. In addition to loading the Linux kernel, it imple=
ments the Multiboot standard, which allows for flexible loading of multiple=
 boot images. This recipe builds an EFI binary for the target. It does not =
install or package anything, it only deploys a target-arch GRUB EFI image.,=
N/A,ftp://ftp.gnu.org/gnu/grub/grub-2.00.tar.gz,Saul Wold <sgw@linux.intel.=
com>)
['busybox', '1.20.2', '1.21.0', 'GPLv2 & bzip2', 'base', 'http://www.busybo=
x.net', 'r7', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc   kern-tools-native update-rc.d-native virtual/update-al=
ternatives', 'https://bugs.busybox.net/', 'None', 'BusyBox combines tiny ve=
rsions of many common UNIX utilities into a single small executable. It pro=
vides minimalist replacements for most of the utilities you usually find in=
 GNU fileutils, shellutils, etc. The utilities in BusyBox generally have fe=
wer options than their full-featured GNU cousins; however, the options that=
 are included provide the expected functionality and behave very much like =
their GNU counterparts. BusyBox provides a fairly complete POSIX environmen=
t for any small or embedded system.', 'UPDATE', 'N/A', 'http://www.busybox.=
net/downloads/busybox-1.20.2.tar.bz2;name=3Dtarball', 'Radu Moisan <radu.mo=
isan@intel.com>', 'None']
inserted (busybox,1.20.2,1.21.0,GPLv2 & bzip2,base,r7,None,http://www.busyb=
ox.net,https://bugs.busybox.net/,UPDATE, virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc   kern-tools-native update-rc.d=
-native virtual/update-alternatives,BusyBox combines tiny versions of many =
common UNIX utilities into a single small executable. It provides minimalis=
t replacements for most of the utilities you usually find in GNU fileutils,=
 shellutils, etc. The utilities in BusyBox generally have fewer options tha=
n their full-featured GNU cousins; however, the options that are included p=
rovide the expected functionality and behave very much like their GNU count=
erparts. BusyBox provides a fairly complete POSIX environment for any small=
 or embedded system.,N/A,http://www.busybox.net/downloads/busybox-1.20.2.ta=
r.bz2;name=3Dtarball,Radu Moisan <radu.moisan@intel.com>)
['telepathy-mission-control', '5.14.0', '5.14.0', 'LGPLv2.1+', 'libs', 'htt=
p://mission-control.sourceforge.net/', 'r0', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  lib=
telepathy dbus-glib gconf  python-native ', 'None', 'None', 'Central contro=
l for Telepathy connection managers', 'MATCH', 'N/A', 'http://telepathy.fre=
edesktop.org/releases/telepathy-mission-control/telepathy-mission-control-5=
=2E14.0.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (telepathy-mission-control,5.14.0,5.14.0,LGPLv2.1+,libs,r0,None,ht=
tp://mission-control.sourceforge.net/,None,MATCH,pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
libtelepathy dbus-glib gconf  python-native ,Central control for Telepathy =
connection managers,N/A,http://telepathy.freedesktop.org/releases/telepathy=
-mission-control/telepathy-mission-control-5.14.0.tar.gz,Cristian Iorga <cr=
istian.iorga@intel.com>)
['base-files', '3.0.14', 'INVALID', 'GPLv2', 'base', 'unknown', 'r73', ' ',=
 'None', 'None', 'The base-files package creates the basic system directory=
 structure and provides a small set of key configuration files for the syst=
em.', 'MATCH', 'N/A', 'file://rotation', 'Saul Wold <sgw@linux.intel.com>',=
 'None']
inserted (base-files,3.0.14,INVALID,GPLv2,base,r73,None,unknown,None,MATCH,=
 ,The base-files package creates the basic system directory structure and p=
rovides a small set of key configuration files for the system.,N/A,file://r=
otation,Saul Wold <sgw@linux.intel.com>)
['pth', '2.0.7', '2.0.7', 'GPLv2+', 'libs', 'http://www.gnu.org/software/pt=
h/', 'r3', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'GNU Portable Thre=
ads', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/pth/pth-2.0.7.tar.gz', 'Saul W=
old <sgw@linux.intel.com>', 'None']
inserted (pth,2.0.7,2.0.7,GPLv2+,libs,r3,None,http://www.gnu.org/software/p=
th/,None,MATCH,pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  ,GNU Portable Threads,N/A,ftp://ft=
p.gnu.org/gnu/pth/pth-2.0.7.tar.gz,Saul Wold <sgw@linux.intel.com>)
['iputils', 's20101006', 's20121221', 'BSD & GPLv2+', 'console/network', 'h=
ttp://www.skbuff.net/iputils', 'r6', ' virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  openssl docbook-utils-native sgm=
lspl-native virtual/update-alternatives', 'None', 'None', 'Utilities for th=
e IP protocol, including traceroute6, tracepath, tracepath6, ping, ping6 an=
d arping.', 'UPDATE', 'N/A', 'http://www.skbuff.net/iputils/iputils-s201010=
06.tar.bz2', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (iputils,s20101006,s20121221,BSD & GPLv2+,console/network,r6,None,=
http://www.skbuff.net/iputils,None,UPDATE, virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  openssl docbook-utils-native=
 sgmlspl-native virtual/update-alternatives,Utilities for the IP protocol, =
including traceroute6, tracepath, tracepath6, ping, ping6 and arping.,N/A,h=
ttp://www.skbuff.net/iputils/iputils-s20101006.tar.bz2,Radu Moisan <radu.mo=
isan@intel.com>)
['sysfsutils', '2.1.0', '2.1.0', 'GPLv2 & LGPLv2.1', 'base', 'http://linux-=
diag.sourceforge.net/Sysfsutils.html', 'r5', 'autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', "=
Tools for working with the sysfs virtual filesystem.  The tool 'systool' ca=
n query devices by bus, class and topology.", 'MATCH', 'N/A', 'http://downl=
oads.sourceforge.net/linux-diag/sysfsutils-2.1.0.tar.gz', 'Saul Wold <sgw@l=
inux.intel.com>', 'None']
inserted (sysfsutils,2.1.0,2.1.0,GPLv2 & LGPLv2.1,base,r5,None,http://linux=
-diag.sourceforge.net/Sysfsutils.html,None,MATCH,autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Tools for workin=
g with the sysfs virtual filesystem.  The tool 'systool' can query devices =
by bus, class and topology.,N/A,http://downloads.sourceforge.net/linux-diag=
/sysfsutils-2.1.0.tar.gz,Saul Wold <sgw@linux.intel.com>)
['qemu-helper-native', '1.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r1', =
' ', 'None', 'None', 'Qemu helper utilities from Poky', 'MATCH', 'N/A', 'fi=
le://tunctl.c', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (qemu-helper-native,1.0,INVALID,GPLv2,base,r1,None,unknown,None,MA=
TCH, ,Qemu helper utilities from Poky,N/A,file://tunctl.c,Constantin Musca =
<constantinx.musca@intel.com>)
['gdbm', '1.10', '1.10', 'GPLv3', 'libs', 'http://www.gnu.org/software/gdbm=
/', 'r3', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'GNU =
dbm is a set of database routines that use extensible hashing.', 'MATCH', '=
N/A', 'ftp://ftp.gnu.org/gnu/gdbm/gdbm-1.10.tar.gz', 'Saul Wold <sgw@linux.=
intel.com>', 'None']
inserted (gdbm,1.10,1.10,GPLv3,libs,r3,None,http://www.gnu.org/software/gdb=
m/,None,MATCH,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  ,GNU dbm is a set of =
database routines that use extensible hashing.,N/A,ftp://ftp.gnu.org/gnu/gd=
bm/gdbm-1.10.tar.gz,Saul Wold <sgw@linux.intel.com>)
['binutils-cross', '2.23.1', '2.23.2', 'GPLv3', 'devel', 'http://www.gnu.or=
g/software/binutils/', 'r3', '  flex-native bison-native zlib-native', 'htt=
p://sourceware.org/bugzilla/', 'None', 'The GNU Binutils are a collection o=
f binary tools. The main ones are ld (GNU Linker), and as (GNU Assembler). =
This package also includes addition tools such as addr2line (Converts addre=
sses into filenames and line numbers), ar (utility for creating, modifying =
and extracting archives), nm (list symbols in object files), objcopy (copy =
and translate object files), objdump (Display object information), and othe=
r tools and related libraries.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/bi=
nutils/binutils-2.23.1.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@inte=
l.com>', 'None']
inserted (binutils-cross,2.23.1,2.23.2,GPLv3,devel,r3,None,http://www.gnu.o=
rg/software/binutils/,http://sourceware.org/bugzilla/,UPDATE,  flex-native =
bison-native zlib-native,The GNU Binutils are a collection of binary tools.=
 The main ones are ld (GNU Linker), and as (GNU Assembler). This package al=
so includes addition tools such as addr2line (Converts addresses into filen=
ames and line numbers), ar (utility for creating, modifying and extracting =
archives), nm (list symbols in object files), objcopy (copy and translate o=
bject files), objdump (Display object information), and other tools and rel=
ated libraries.,N/A,ftp://ftp.gnu.org/gnu/binutils/binutils-2.23.1.tar.bz2,=
Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['gpgme', '1.4.0', '1.4.0', 'GPLv2+ & LGPLv2.1+', 'base', 'http://www.gnupg=
=2Eorg/gpgme.html', 'r0', 'autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  libgpg-error libassuan pth', 'https://b=
ugs.g10code.com/gnupg/index', 'None', 'GnuPG Made Easy (GPGME) is a library=
 designed to make access to GnuPG easier for applications. It provides a Hi=
gh-Level Crypto API for encryption, decryption, signing, signature verifica=
tion and key management', 'MATCH', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/gpgme=
/gpgme-1.4.0.tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>', 'N=
one']
inserted (gpgme,1.4.0,1.4.0,GPLv2+ & LGPLv2.1+,base,r0,None,http://www.gnup=
g.org/gpgme.html,https://bugs.g10code.com/gnupg/index,MATCH,autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libgpg=
-error libassuan pth,GnuPG Made Easy (GPGME) is a library designed to make =
access to GnuPG easier for applications. It provides a High-Level Crypto AP=
I for encryption, decryption, signing, signature verification and key manag=
ement,N/A,ftp://ftp.gnupg.org/gcrypt/gpgme/gpgme-1.4.0.tar.bz2,Constantin M=
usca <constantinx.musca@intel.com>)
['xserver-xorg', '1.14.0', '1.14.1', 'MIT-X', 'x11/base', 'http://www.x.org=
', 'r8.1', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  randrproto renderproto fixesproto dam=
ageproto xextproto xproto xf86dgaproto xf86miscproto xf86vidmodeproto compo=
siteproto recordproto resourceproto videoproto scrnsaverproto  xineramaprot=
o fontsproto kbproto inputproto bigreqsproto xcmiscproto glproto pixman lib=
xfont xtrans libxau libxext libxdmcp libdrm libxkbfile libpciaccess openssl=
 libgcrypt font-util                       xf86driproto dri2proto mesa udev=
', 'None', '2', 'The X.Org X server', 'UPDATE', 'N/A', 'http://xorg.freedes=
ktop.org/releases/individual/xserver/xorg-server-1.14.0.tar.bz2', 'Laurenti=
u Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xserver-xorg,1.14.0,1.14.1,MIT-X,x11/base,r8.1,2,http://www.x.org=
,None,UPDATE,pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  randrproto renderproto fixesproto da=
mageproto xextproto xproto xf86dgaproto xf86miscproto xf86vidmodeproto comp=
ositeproto recordproto resourceproto videoproto scrnsaverproto  xineramapro=
to fontsproto kbproto inputproto bigreqsproto xcmiscproto glproto pixman li=
bxfont xtrans libxau libxext libxdmcp libdrm libxkbfile libpciaccess openss=
l libgcrypt font-util                       xf86driproto dri2proto mesa ude=
v,The X.Org X server,N/A,http://xorg.freedesktop.org/releases/individual/xs=
erver/xorg-server-1.14.0.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com=
>)
['swabber-native', '0.0+gitAUTOINC+a079239', '0.0+gitAUTOINC+2d1fe36', 'GPL=
v2', 'base', 'http://git.yoctoproject.org/cgit/cgit.cgi/swabber', 'r0', ' '=
, 'None', 'None', "Swabber is a tool that can help with understanding a pro=
gram's use of host files.", 'UPDATE', 'N/A', 'git://git.yoctoproject.org/sw=
abber;protocol=3Dgit', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (swabber-native,0.0+gitAUTOINC+a079239,0.0+gitAUTOINC+2d1fe36,GPLv=
2,base,r0,None,http://git.yoctoproject.org/cgit/cgit.cgi/swabber,None,UPDAT=
E, ,Swabber is a tool that can help with understanding a program's use of h=
ost files.,N/A,git://git.yoctoproject.org/swabber;protocol=3Dgit,Saul Wold =
<sgw@linux.intel.com>)
['libpng12', '1.2.50', 'N/A', 'Libpng', 'libs', 'http://www.libpng.org/', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  zlib', 'None', 'None', 'PNG Library', 'ErrP=
arseInterDir:/project/libpng/libpng12/1.2.50/libpng-1.2.50.tar.xz:1.2.50:-:=
downloads.sourceforge.net/project/libpng/libpng12/1.2.50/libpng-1.2.50.tar.=
xz', 'N/A', 'http://downloads.sourceforge.net/project/libpng/libpng12/1.2.5=
0/libpng-1.2.50.tar.xz', 'None', 'None']
inserted (libpng12,1.2.50,N/A,Libpng,libs,r0,None,http://www.libpng.org/,No=
ne,ErrParseInterDir:/project/libpng/libpng12/1.2.50/libpng-1.2.50.tar.xz:1.=
2.50:-:downloads.sourceforge.net/project/libpng/libpng12/1.2.50/libpng-1.2.=
50.tar.xz,pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  zlib,PNG Library,N/A,http://downloads.s=
ourceforge.net/project/libpng/libpng12/1.2.50/libpng-1.2.50.tar.xz,None)
['ldconfig-native', '2.12.1', 'INVALID', 'GPLv2+', 'base', 'unknown', 'r2',=
 ' ', 'None', 'None', 'A standalone native ldconfig build', 'MATCH', 'N/A',=
 'file://ldconfig-native-2.12.1.tar.bz2', 'Saul Wold <sgw@linux.intel.com>'=
, 'None']
inserted (ldconfig-native,2.12.1,INVALID,GPLv2+,base,r2,None,unknown,None,M=
ATCH, ,A standalone native ldconfig build,N/A,file://ldconfig-native-2.12.1=
=2Etar.bz2,Saul Wold <sgw@linux.intel.com>)
['xset', '1.2.2', '1.2.2', 'MIT', 'x11/apps', 'http://www.x.org/', 'r8.2', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  util-macros-native virtual/libx11 libxext libxxf=
86misc libxmu libxau', 'https://bugs.freedesktop.org', '1', 'xset is a util=
ity that is used to set various user preference options of the display.', '=
MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/xset-1.=
2.2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xset,1.2.2,1.2.2,MIT,x11/apps,r8.2,1,http://www.x.org/,https://bu=
gs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native virtu=
al/libx11 libxext libxxf86misc libxmu libxau,xset is a utility that is used=
 to set various user preference options of the display.,N/A,http://xorg.fre=
edesktop.org/releases/individual/app/xset-1.2.2.tar.bz2,Laurentiu Palcu <la=
urentiu.palcu@intel.com>)
['dropbear', '2012.55', '2013.58', 'MIT', 'console/network', 'http://matt.u=
cc.asn.au/dropbear/dropbear.html', 'r2.1', 'autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  zlib  update-rc.d-nati=
ve virtual/update-alternatives', 'None', 'None', 'Dropbear is a lightweight=
 SSH and SCP implementation', 'UPDATE', 'N/A', 'http://matt.ucc.asn.au/drop=
bear/releases/dropbear-2012.55.tar.gz', 'Radu Moisan <radu.moisan@intel.com=
>', 'None']
inserted (dropbear,2012.55,2013.58,MIT,console/network,r2.1,None,http://mat=
t.ucc.asn.au/dropbear/dropbear.html,None,UPDATE,autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib  update-rc.d-=
native virtual/update-alternatives,Dropbear is a lightweight SSH and SCP im=
plementation,N/A,http://matt.ucc.asn.au/dropbear/releases/dropbear-2012.55.=
tar.gz,Radu Moisan <radu.moisan@intel.com>)
['bluez-hcidump', '2.5', '2.5', 'GPLv2+', 'console', 'unknown', 'r1', 'auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  bluez4', 'None', 'None', 'The hcidump tool reads raw HCI data coming f=
rom and going to a Bluetooth device and displays the commands, events and d=
ata in a human-readable form.', 'MATCH', 'N/A', 'http://www.kernel.org/pub/=
linux/bluetooth/bluez-hcidump-2.5.tar.gz', 'Cristian Iorga <cristian.iorga@=
intel.com>', 'None']
inserted (bluez-hcidump,2.5,2.5,GPLv2+,console,r1,None,unknown,None,MATCH,a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  bluez4,The hcidump tool reads raw HCI data coming from and going to=
 a Bluetooth device and displays the commands, events and data in a human-r=
eadable form.,N/A,http://www.kernel.org/pub/linux/bluetooth/bluez-hcidump-2=
=2E5.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['genext2fs', '1.4.1', '1.4.1', 'GPLv2', 'console/utils', 'http://genext2fs=
=2Esourceforge.net/', 'r2', 'autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'A tool to generat=
e an ext2 filesystem as a normal (non-root) user.', 'MATCH', 'N/A', 'ftp://=
ftp.debian.org/debian/pool/main/g/genext2fs/genext2fs_1.4.1.orig.tar.gz', '=
Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (genext2fs,1.4.1,1.4.1,GPLv2,console/utils,r2,None,http://genext2f=
s.sourceforge.net/,None,MATCH,autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  ,A tool to generate an ext2 filesyst=
em as a normal (non-root) user.,N/A,ftp://ftp.debian.org/debian/pool/main/g=
/genext2fs/genext2fs_1.4.1.orig.tar.gz,Bogdan Marinescu <bogdan.a.marinescu=
@intel.com>)
['libcgroup', '0.38', '0.38', 'LGPLv2.1', 'libs', 'unknown', 'r1', 'pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  ', 'None', 'None', 'Libcgroup', 'MATCH', 'N/A', 'http://=
downloads.sourceforge.net/project/libcg/libcgroup/v.038/libcgroup-0.38.tar.=
bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libcgroup,0.38,0.38,LGPLv2.1,libs,r1,None,unknown,None,MATCH,pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ,Libcgroup,N/A,http://downloads.sourceforge.net/proje=
ct/libcg/libcgroup/v.038/libcgroup-0.38.tar.bz2,Saul Wold <sgw@linux.intel.=
com>)
['kbproto', '1.0.6', '1.0.6', 'MIT-style', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire proto=
col for the X Keyboard extension.  This extension is used to control option=
s related to keyboard handling and layout.', 'MATCH', 'N/A', 'http://xorg.f=
reedesktop.org/releases/individual/proto/kbproto-1.0.6.tar.bz2', 'Laurentiu=
 Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (kbproto,1.0.6,1.0.6,MIT-style,x11/libs,r0,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros,This package provides the wire protocol for the X Ke=
yboard extension.  This extension is used to control options related to key=
board handling and layout.,N/A,http://xorg.freedesktop.org/releases/individ=
ual/proto/kbproto-1.0.6.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['python-setuptools', '0.6c11', '0.6c11', 'PSF', 'devel/python', 'http://ch=
eeseshop.python.org/pypi/setuptools', 'ml5', ' virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc   python python-native py=
thon  python-native ', 'None', 'None', 'Download, build, install, upgrade, =
and uninstall Python packages', 'MATCH', 'N/A', 'http://cheeseshop.python.o=
rg/packages/source/s/setuptools/setuptools-0.6c11.tar.gz', 'Bogdan Marinesc=
u <bogdan.a.marinescu@intel.com>', 'None']
inserted (python-setuptools,0.6c11,0.6c11,PSF,devel/python,ml5,None,http://=
cheeseshop.python.org/pypi/setuptools,None,MATCH, virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc   python python-native=
 python  python-native ,Download, build, install, upgrade, and uninstall Py=
thon packages,N/A,http://cheeseshop.python.org/packages/source/s/setuptools=
/setuptools-0.6c11.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['unzip', '6.0', '60', 'BSD-3-Clause', 'console/utils', 'http://www.info-zi=
p.org', 'r4', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ', 'None', '1', 'A (de)compression library for the ZIP =
format', 'UPDATE', '6.0', 'ftp://ftp.info-zip.org/pub/infozip/src/unzip60.t=
gz', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (unzip,6.0,60,BSD-3-Clause,console/utils,r4,1,http://www.info-zip.=
org,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ,A (de)compression library for the ZIP format,6.0,ftp:=
//ftp.info-zip.org/pub/infozip/src/unzip60.tgz,Radu Moisan <radu.moisan@int=
el.com>)
['libusb-compat', '0.1.4', '0.1.4', 'LGPLv2.1+', 'libs', 'http://www.libusb=
=2Eorg/', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  libusb1', 'http://www.libusb.org=
/report', '1', 'libusb-0.1 compatible layer for libusb1, a drop-in replacem=
ent that aims to look, feel and behave exactly like libusb-0.1', 'MATCH', '=
N/A', 'http://downloads.sourceforge.net/libusb/libusb-compat-0.1.4.tar.bz2'=
, 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libusb-compat,0.1.4,0.1.4,LGPLv2.1+,libs,r1,1,http://www.libusb.o=
rg/,http://www.libusb.org/report,MATCH,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libusb1,li=
busb-0.1 compatible layer for libusb1, a drop-in replacement that aims to l=
ook, feel and behave exactly like libusb-0.1,N/A,http://downloads.sourcefor=
ge.net/libusb/libusb-compat-0.1.4.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['gnome-common', '3.7.4', '3.7.4', 'GPLv2+', 'x11/gnome', 'http://www.gnome=
=2Eorg/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative gnu-config-native  ', 'https://bugzilla.gnome.org/', 'None', 'Common =
macros for building GNOME applications', 'MATCH', 'N/A', 'http://ftp.gnome.=
org/pub/GNOME/sources/gnome-common/3.7/gnome-common-3.7.4.tar.xz;name=3Darc=
hive', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (gnome-common,3.7.4,3.7.4,GPLv2+,x11/gnome,r0,None,http://www.gnom=
e.org/,https://bugzilla.gnome.org/,MATCH,pkgconfig-native autoconf-native a=
utomake-native libtool-native gnu-config-native  ,Common macros for buildin=
g GNOME applications,N/A,http://ftp.gnome.org/pub/GNOME/sources/gnome-commo=
n/3.7/gnome-common-3.7.4.tar.xz;name=3Darchive,Constantin Musca <constantin=
x.musca@intel.com>)
['libxfont', '1.4.5', '1.4.5', 'MIT & MIT-style & BSD', 'x11/libs', 'http:/=
/www.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  util-macros freetype xtrans f=
ontsproto libfontenc zlib', 'https://bugs.freedesktop.org/enter_bug.cgi?pro=
duct=3Dxorg', '1', 'libXfont provides various services for X servers, most =
notably font selection and rasterisation (through external libraries such a=
s freetype).', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/indivi=
dual/lib/libXfont-1.4.5.tar.bz2', 'Constantin Musca <constantinx.musca@inte=
l.com>', 'None']
inserted (libxfont,1.4.5,1.4.5,MIT & MIT-style & BSD,x11/libs,r1,1,http://w=
ww.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  util-macros freetype xtrans fontsproto libfontenc z=
lib,libXfont provides various services for X servers, most notably font sel=
ection and rasterisation (through external libraries such as freetype).,N/A=
,http://xorg.freedesktop.org/releases/individual/lib/libXfont-1.4.5.tar.bz2=
,Constantin Musca <constantinx.musca@intel.com>)
['puzzles', 'r9765', '9835', 'MIT', 'base', 'http://www.chiark.greenend.org=
=2Euk/~sgtatham/puzzles/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  gtk+ libxt', 'None', 'None', "Simon =
Tatham's Portable Puzzle Collection", 'UPDATE', 'N/A', 'svn://svn.tartarus.=
org/sgt;module=3Dpuzzles;rev=3D9765;protocol=3Dsvn', 'Constantin Musca <con=
stantinx.musca@intel.com>', 'None']
inserted (puzzles,r9765,9835,MIT,base,r0,None,http://www.chiark.greenend.or=
g.uk/~sgtatham/puzzles/,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  gtk+ libxt,Simon Tatham's Portable=
 Puzzle Collection,N/A,svn://svn.tartarus.org/sgt;module=3Dpuzzles;rev=3D97=
65;protocol=3Dsvn,Constantin Musca <constantinx.musca@intel.com>)
['gtk+', '2.24.15', '3.8.1', 'LGPLv2 & LGPLv2+ & LGPLv2.1+', 'libs', 'http:=
//www.gtk.org', 'r1', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  qemu-native glib-2.0 pango=
 atk jpeg libpng gdk-pixbuf-native docbook-utils-native  libgcrypt cairo gd=
k-pixbuf gtk-doc-stub-native virtual/libx11 libxext libxcursor libxrandr li=
bxdamage libxrender libxcomposite virtual/update-alternatives', 'https://bu=
gzilla.gnome.org/', 'None', 'GTK+ is a multi-platform toolkit for creating =
graphical user interfaces. Offering a complete set of widgets, GTK+ is suit=
able for projects ranging from small one-off projects to complete applicati=
on suites.', 'UPDATE', 'N/A', 'http://download.gnome.org/sources/gtk+/2.24/=
gtk+-2.24.15.tar.xz', 'Constantin Musca <constantinx.musca@intel.com>', 'Do=
 not upgrade to version: 2.99.2 because prefer stable tree']
inserted (gtk+,2.24.15,3.8.1,LGPLv2 & LGPLv2+ & LGPLv2.1+,libs,r1,None,http=
://www.gtk.org,https://bugzilla.gnome.org/,UPDATE,pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 qemu-native glib-2.0 pango atk jpeg libpng gdk-pixbuf-native docbook-utils=
-native  libgcrypt cairo gdk-pixbuf gtk-doc-stub-native virtual/libx11 libx=
ext libxcursor libxrandr libxdamage libxrender libxcomposite virtual/update=
-alternatives,GTK+ is a multi-platform toolkit for creating graphical user =
interfaces. Offering a complete set of widgets, GTK+ is suitable for projec=
ts ranging from small one-off projects to complete application suites.,N/A,=
http://download.gnome.org/sources/gtk+/2.24/gtk+-2.24.15.tar.xz,Constantin =
Musca <constantinx.musca@intel.com>)
['lttng-modules', '2.1.1', '2.2.0', 'LGPLv2.1 & GPLv2', 'devel', 'unknown',=
 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  virtual/kernel virtual/kernel', 'None', 'None', 'The lttng-mod=
ules 2.0 package contains the kernel tracer modules', 'UPDATE', 'N/A', 'git=
://git.lttng.org/lttng-modules.git;protocol=3Dgit', 'Bogdan Marinescu <bogd=
an.a.marinescu@intel.com>', 'None']
inserted (lttng-modules,2.1.1,2.2.0,LGPLv2.1 & GPLv2,devel,r0,None,unknown,=
None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  virtual/kernel virtual/kernel,The lttng-modules 2.0 packag=
e contains the kernel tracer modules,N/A,git://git.lttng.org/lttng-modules.=
git;protocol=3Dgit,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['gnutls', '2.12.21', '3.1.5', 'GPLv3+ & LGPLv2.1+', 'base', 'http://www.gn=
u.org/software/gnutls/', 'r8.4', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native virtual/gettext gett=
ext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  zlib lzo libtasn1 libgcrypt (>=3D 1.4.2) libcap readline', =
'https://savannah.gnu.org/support/?group=3Dgnutls', 'None', 'GNU Transport =
Layer Security Library', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/gnutls/gnu=
tls-2.12.21.tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>', 'No=
ne']
inserted (gnutls,2.12.21,3.1.5,GPLv3+ & LGPLv2.1+,base,r8.4,None,http://www=
=2Egnu.org/software/gnutls/,https://savannah.gnu.org/support/?group=3Dgnutl=
s,UPDATE,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib lzo =
libtasn1 libgcrypt (>=3D 1.4.2) libcap readline,GNU Transport Layer Securit=
y Library,N/A,ftp://ftp.gnu.org/gnu/gnutls/gnutls-2.12.21.tar.bz2,Constanti=
n Musca <constantinx.musca@intel.com>)
['apmd', '3.2.2-14', '3.2.2-14', 'GPLv2+', 'base', 'http://apenwarr.ca/apmd=
/', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  libtool-cross update-rc.d-native', 'None', 'None', 'The Adv=
anced Power Management (APM) support provides access to battery status info=
rmation and a set of tools for managing notebook power consumption.', 'MATC=
H', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/a/apmd/apmd_3.2.2.orig.ta=
r.gz;name=3Dtarball', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (apmd,3.2.2-14,3.2.2-14,GPLv2+,base,r2,None,http://apenwarr.ca/apm=
d/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  libtool-cross update-rc.d-native,The Advanced Power Mana=
gement (APM) support provides access to battery status information and a se=
t of tools for managing notebook power consumption.,N/A,ftp://ftp.debian.or=
g/debian/pool/main/a/apmd/apmd_3.2.2.orig.tar.gz;name=3Dtarball,Andrei Dinu=
 <andrei.adrianx.dinu@intel.com>)
['libxscrnsaver', '1.2.2', '1.2.2', 'MIT', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros libxext scrnsaverproto', 'http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The X Window =
System provides support for changing the image on a display screen after a =
user-settable period of inactivity to avoid burning the cathode ray tube ph=
osphors. However, no interfaces are provided for the user to control the im=
age that is drawn. This extension allows an external \\"screen saver\\" cli=
ent to detect when the alternate image is to be displayed and to provide th=
e graphics.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individ=
ual/lib/libXScrnSaver-1.2.2.tar.bz2', 'Constantin Musca <constantinx.musca@=
intel.com>', 'None']
inserted (libxscrnsaver,1.2.2,1.2.2,MIT,x11/libs,r0,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros libxext scrnsaverproto,The X Window System provides =
support for changing the image on a display screen after a user-settable pe=
riod of inactivity to avoid burning the cathode ray tube phosphors. However=
, no interfaces are provided for the user to control the image that is draw=
n. This extension allows an external \"screen saver\" client to detect when=
 the alternate image is to be displayed and to provide the graphics.,N/A,ht=
tp://xorg.freedesktop.org/releases/individual/lib/libXScrnSaver-1.2.2.tar.b=
z2,Constantin Musca <constantinx.musca@intel.com>)
['gst-plugins-bad', '0.10.23', '1.0.6', 'GPLv2+ & LGPLv2+ & LGPLv2.1+ ', 'm=
ultimedia', 'http://gstreamer.freedesktop.org/', 'r4', 'pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base tremor cur=
l librsvg', 'https://bugzilla.gnome.org/enter_bug.cgi?product=3DGstreamer',=
 'None', 'Plugins for GStreamer', 'UPDATE', 'N/A', 'http://gstreamer.freede=
sktop.org/src/gst-plugins-bad/gst-plugins-bad-0.10.23.tar.bz2', 'Cristian I=
orga <cristian.iorga@intel.com>', 'not compatible with gst-fluendo 0.10.x']
inserted (gst-plugins-bad,0.10.23,1.0.6,GPLv2+ & LGPLv2+ & LGPLv2.1+ ,multi=
media,r4,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/=
enter_bug.cgi?product=3DGstreamer,UPDATE,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native virtual/gette=
xt gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  gstreamer gst-plugins-base tremor curl librsvg,Plugi=
ns for GStreamer,N/A,http://gstreamer.freedesktop.org/src/gst-plugins-bad/g=
st-plugins-bad-0.10.23.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['npth', '0.91', '0.91', 'LGPLv3+ & GPLv2+', 'libs', 'http://www.gnupg.org/=
software/pth/', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'None', 'None', 'New GNU Portable Thread=
s', 'MATCH', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/npth/npth-0.91.tar.bz2', 'S=
aul Wold <sgw@linux.intel.com>', 'None']
inserted (npth,0.91,0.91,LGPLv3+ & GPLv2+,libs,r0,None,http://www.gnupg.org=
/software/pth/,None,MATCH,autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ,New GNU Portable Threads,N/A,ftp://ftp.=
gnupg.org/gcrypt/npth/npth-0.91.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['ghostscript', '9.05', '9.07', 'GPLv3', 'console/utils', 'http://www.ghost=
script.com', 'r6', 'autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ghostscript-native tiff jpeg fontconfig cups',=
 'None', 'None', 'Ghostscript is used for PostScript/PDF preview and printi=
ng.  Usually as a back-end to a program such as ghostview, it can display P=
ostScript and PDF documents in an X11 environment. Furthermore, it can rend=
er PostScript and PDF files as graphics to be printed on non-PostScript pri=
nters. Supported printers include common dot-matrix, inkjet and laser model=
s. Package gsfonts contains a set of standard fonts for Ghostscript. ', 'UP=
DATE', 'N/A', 'http://downloads.ghostscript.com/public/ghostscript-9.05.tar=
=2Egz', 'Kai Kang <kai.kang@windriver.com>', 'None']
inserted (ghostscript,9.05,9.07,GPLv3,console/utils,r6,None,http://www.ghos=
tscript.com,None,UPDATE,autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  ghostscript-native tiff jpeg fontconfig cu=
ps,Ghostscript is used for PostScript/PDF preview and printing.  Usually as=
 a back-end to a program such as ghostview, it can display PostScript and P=
DF documents in an X11 environment. Furthermore, it can render PostScript a=
nd PDF files as graphics to be printed on non-PostScript printers. Supporte=
d printers include common dot-matrix, inkjet and laser models. Package gsfo=
nts contains a set of standard fonts for Ghostscript. ,N/A,http://downloads=
=2Eghostscript.com/public/ghostscript-9.05.tar.gz,Kai Kang <kai.kang@windri=
ver.com>)
['sysvinit', '2.88dsf', '2.88dsf', 'GPLv2+', 'base', 'http://savannah.nongn=
u.org/projects/sysvinit/', 'r11', ' virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc   update-rc.d-native virtual/update-=
alternatives', 'None', 'None', 'This package is required to boot in most co=
nfigurations.  It provides the /sbin/init program.  This is the first proce=
ss started on boot, and the last process terminated before the system halts=
=2E', 'MATCH', 'N/A', 'http://download.savannah.gnu.org/releases-noredirect=
/sysvinit/sysvinit-2.88dsf.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'No=
ne']
inserted (sysvinit,2.88dsf,2.88dsf,GPLv2+,base,r11,None,http://savannah.non=
gnu.org/projects/sysvinit/,None,MATCH, virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc   update-rc.d-native virtual/upda=
te-alternatives,This package is required to boot in most configurations.  I=
t provides the /sbin/init program.  This is the first process started on bo=
ot, and the last process terminated before the system halts.,N/A,http://dow=
nload.savannah.gnu.org/releases-noredirect/sysvinit/sysvinit-2.88dsf.tar.bz=
2,Saul Wold <sgw@linux.intel.com>)
['libmad', '0.15.1b', '0.15.1b', 'GPLv2+', 'libs', 'http://sourceforge.net/=
projects/mad/', 'r3', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  libid3tag', 'http://source=
forge.net/tracker/?group_id=3D12349&atid=3D112349', 'None', 'MPEG Audio Dec=
oder Library', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/mad/libmad=
-0.15.1b.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libmad,0.15.1b,0.15.1b,GPLv2+,libs,r3,None,http://sourceforge.net=
/projects/mad/,http://sourceforge.net/tracker/?group_id=3D12349&atid=3D1123=
49,MATCH,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  libid3tag,MPEG Audio Decoder Library,N/A=
,http://downloads.sourceforge.net/mad/libmad-0.15.1b.tar.gz,Saul Wold <sgw@=
linux.intel.com>)
['telepathy-idle', '0.1.14', '0.1.14', 'LGPLv2.1', 'base', 'http://telepath=
y.freedesktop.org/wiki/', 'r0', 'pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus te=
lepathy-glib openssl  python-native ', 'None', 'None', 'Telepathy implement=
ation of the Internet Relay Chat protocols.', 'MATCH', 'N/A', 'http://telep=
athy.freedesktop.org/releases/telepathy-idle/telepathy-idle-0.1.14.tar.gz',=
 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (telepathy-idle,0.1.14,0.1.14,LGPLv2.1,base,r0,None,http://telepat=
hy.freedesktop.org/wiki/,None,MATCH,pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus=
 telepathy-glib openssl  python-native ,Telepathy implementation of the Int=
ernet Relay Chat protocols.,N/A,http://telepathy.freedesktop.org/releases/t=
elepathy-idle/telepathy-idle-0.1.14.tar.gz,Cristian Iorga <cristian.iorga@i=
ntel.com>)
['libxcomposite', '0.4.4', '0.4.4', 'MIT-style', 'x11/libs', 'http://www.x.=
org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  util-macros  compositeproto virtual/=
libx11 libxfixes libxext', 'https://bugs.freedesktop.org/enter_bug.cgi?prod=
uct=3Dxorg', '1', 'The composite extension provides three related mechanism=
s: per-hierarchy storage, automatic shadow update, and external parent.  In=
 per-hierarchy storage, the rendering of an entire hierarchy of windows is =
redirected to off-screen storage.  In automatic shadow update, when a hiera=
rchy is rendered off-screen, the X server provides an automatic mechanism f=
or presenting those contents within the parent window.  In external parent,=
 a mechanism for providing redirection of compositing transformations throu=
gh a client.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/indivi=
dual/lib/libXcomposite-0.4.4.tar.bz2', 'Constantin Musca <constantinx.musca=
@intel.com>', 'None']
inserted (libxcomposite,0.4.4,0.4.4,MIT-style,x11/libs,r0,1,http://www.x.or=
g,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  util-macros  compositeproto virtual/libx11 libxfixes libxe=
xt,The composite extension provides three related mechanisms: per-hierarchy=
 storage, automatic shadow update, and external parent.  In per-hierarchy s=
torage, the rendering of an entire hierarchy of windows is redirected to of=
f-screen storage.  In automatic shadow update, when a hierarchy is rendered=
 off-screen, the X server provides an automatic mechanism for presenting th=
ose contents within the parent window.  In external parent, a mechanism for=
 providing redirection of compositing transformations through a client.,N/A=
,http://xorg.freedesktop.org/releases/individual/lib/libXcomposite-0.4.4.ta=
r.bz2,Constantin Musca <constantinx.musca@intel.com>)
['libid3tag', '0.15.1b', '0.15.1b', 'GPLv2+', 'libs', 'http://sourceforge.n=
et/projects/mad/', 'r7', 'pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  zlib gperf-native', 'ht=
tp://sourceforge.net/tracker/?group_id=3D12349&atid=3D112349', 'None', 'Lib=
rary for interacting with ID3 tags.', 'MATCH', 'N/A', 'ftp://ftp.mars.org/p=
ub/mpeg/libid3tag-0.15.1b.tar.gz', 'Cristian Iorga <cristian.iorga@intel.co=
m>', 'None']
inserted (libid3tag,0.15.1b,0.15.1b,GPLv2+,libs,r7,None,http://sourceforge.=
net/projects/mad/,http://sourceforge.net/tracker/?group_id=3D12349&atid=3D1=
12349,MATCH,pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  zlib gperf-native,Library for interac=
ting with ID3 tags.,N/A,ftp://ftp.mars.org/pub/mpeg/libid3tag-0.15.1b.tar.g=
z,Cristian Iorga <cristian.iorga@intel.com>)
['libxml-sax-perl', '0.99', '0.99', 'Artistic-1.0 | GPL-1.0+', 'libs', 'unk=
nown', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc   libxml-namespacesupport-perl-native perl perl-native', =
'None', 'None', 'XML::SAX consists of several framework classes for using a=
nd building Perl SAX2 XML parsers, filters, and drivers.  It is designed ar=
ound the need to be able to "plug in" different SAX parsers to an applicati=
on without requiring programmer intervention.  Those of you familiar with t=
he DBI will be right at home.  Some of the designs come from the Java JAXP =
specification (SAX part), only without the javaness.', 'MATCH', 'N/A', 'htt=
p://search.cpan.org/CPAN/authors/id/G/GR/GRANTM/XML-SAX-0.99.tar.gz', 'Kai =
Kang <kai.kang@windriver.com>', 'None']
inserted (libxml-sax-perl,0.99,0.99,Artistic-1.0 | GPL-1.0+,libs,r2,None,un=
known,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc   libxml-namespacesupport-perl-native perl perl-native=
,XML::SAX consists of several framework classes for using and building Perl=
 SAX2 XML parsers, filters, and drivers.  It is designed around the need to=
 be able to "plug in" different SAX parsers to an application without requi=
ring programmer intervention.  Those of you familiar with the DBI will be r=
ight at home.  Some of the designs come from the Java JAXP specification (S=
AX part), only without the javaness.,N/A,http://search.cpan.org/CPAN/author=
s/id/G/GR/GRANTM/XML-SAX-0.99.tar.gz,Kai Kang <kai.kang@windriver.com>)
['parted', '3.1', '3.1', 'GPLv3+', 'console/tools', 'http://www.gnu.org/sof=
tware/parted/parted.html', 'r1', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native virtual/gettext gett=
ext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  ncurses readline util-linux', 'None', 'None', 'parted, the =
GNU partition resizing program', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/par=
ted/parted-3.1.tar.xz', 'Constantin Musca <constantinx.musca@intel.com>', '=
None']
inserted (parted,3.1,3.1,GPLv3+,console/tools,r1,None,http://www.gnu.org/so=
ftware/parted/parted.html,None,MATCH,pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native virtual/gettext g=
ettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  ncurses readline util-linux,parted, the GNU partition re=
sizing program,N/A,ftp://ftp.gnu.org/gnu/parted/parted-3.1.tar.xz,Constanti=
n Musca <constantinx.musca@intel.com>)
['quilt', '0.60', '0.60', 'GPLv2', 'devel', 'http://savannah.nongnu.org/pro=
jects/quilt/', 'r1', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'N=
one', 'Tool to work with series of patches.', 'MATCH', 'N/A', 'http://downl=
oad.savannah.gnu.org/releases/quilt/quilt-0.60.tar.gz', 'Bogdan Marinescu <=
bogdan.a.marinescu@intel.com>', 'None']
inserted (quilt,0.60,0.60,GPLv2,devel,r1,None,http://savannah.nongnu.org/pr=
ojects/quilt/,None,MATCH,autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Tool to w=
ork with series of patches.,N/A,http://download.savannah.gnu.org/releases/q=
uilt/quilt-0.60.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['xcb-util-image', '0.3.9', '0.3.9', 'MIT', 'x11/libs', 'http://xcb.freedes=
ktop.org/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native xc=
b-util', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None'=
, 'The xcb-util module provides a number of libraries which sit on top of l=
ibxcb, the core X protocol library, and some of the extension libraries. Th=
ese experimental libraries provide convenience functions and interfaces whi=
ch make the raw X protocol more usable. Some of the libraries also provide =
client-side code which is not strictly part of the X protocol but which hav=
e traditionally been provided by Xlib.', 'MATCH', 'N/A', 'http://xcb.freede=
sktop.org/dist/xcb-util-image-0.3.9.tar.bz2', 'Laurentiu Palcu <laurentiu.p=
alcu@intel.com>', 'None']
inserted (xcb-util-image,0.3.9,0.3.9,MIT,x11/libs,r0,None,http://xcb.freede=
sktop.org/XcbUtil/,https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB=
,MATCH,pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  libxcb gperf-native xcb-util,The xcb-util =
module provides a number of libraries which sit on top of libxcb, the core =
X protocol library, and some of the extension libraries. These experimental=
 libraries provide convenience functions and interfaces which make the raw =
X protocol more usable. Some of the libraries also provide client-side code=
 which is not strictly part of the X protocol but which have traditionally =
been provided by Xlib.,N/A,http://xcb.freedesktop.org/dist/xcb-util-image-0=
=2E3.9.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['chkconfig-alternatives-native', '1.3.59+AUTOINC+cd437ecbd8986c894442f8fce=
1e0061e20f04dee', '6', 'GPLv2', 'base', 'http://fedorahosted.org/releases/c=
/h/chkconfig', 'r7', 'gettext-minimal-native  ', 'None', 'None', '${DESCRIP=
TION_chkconfig-alternatives}', 'UPDATE', 'N/A', 'git://github.com/kergoth/c=
hkconfig;branch=3Dsysroot', 'None', 'None']
inserted (chkconfig-alternatives-native,1.3.59+AUTOINC+cd437ecbd8986c894442=
f8fce1e0061e20f04dee,6,GPLv2,base,r7,None,http://fedorahosted.org/releases/=
c/h/chkconfig,None,UPDATE,gettext-minimal-native  ,${DESCRIPTION_chkconfig-=
alternatives},N/A,git://github.com/kergoth/chkconfig;branch=3Dsysroot,None)
['util-macros', '1.17', '1.17', 'MIT & MIT-style', 'x11/utils', 'http://www=
=2Ex.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  ', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', 'M4 autotools macros used by various =
X.org programs.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/ind=
ividual/util/util-macros-1.17.tar.gz', 'Saul Wold <sgw@linux.intel.com>', '=
None']
inserted (util-macros,1.17,1.17,MIT & MIT-style,x11/utils,r0,1,http://www.x=
=2Eorg,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ,M4 autotools macros used by various X.org programs.,=
N/A,http://xorg.freedesktop.org/releases/individual/util/util-macros-1.17.t=
ar.gz,Saul Wold <sgw@linux.intel.com>)
['libxslt', '1.1.28', '1.1.28', 'MIT', 'libs', 'http://xmlsoft.org/XSLT/', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  libxml2', 'https://bugzilla.gnome.org/', '=
None', 'GNOME XSLT library', 'MATCH', 'N/A', 'ftp://xmlsoft.org/libxslt//li=
bxslt-1.1.28.tar.gz', 'Constantin Musca <constantinx.musca@intel.com>', 'No=
ne']
inserted (libxslt,1.1.28,1.1.28,MIT,libs,r0,None,http://xmlsoft.org/XSLT/,h=
ttps://bugzilla.gnome.org/,MATCH,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxml2,GNOME XS=
LT library,N/A,ftp://xmlsoft.org/libxslt//libxslt-1.1.28.tar.gz,Constantin =
Musca <constantinx.musca@intel.com>)
['python-pycairo', '1.10.0', '1.10.0', 'LGPLv2.1 & MPL-1.1', 'python-devel'=
, 'http://cairographics.org/pycairo', 'r2', 'pkgconfig-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  cairo py=
thon-native python  python-native ', 'http://bugs.freedesktop.org', 'None',=
 'Python Bindings for the Cairo canvas library', 'MATCH', 'N/A', 'http://ca=
irographics.org/releases/py2cairo-1.10.0.tar.bz2', 'Bogdan Marinescu <bogda=
n.a.marinescu@intel.com>', 'None']
inserted (python-pycairo,1.10.0,1.10.0,LGPLv2.1 & MPL-1.1,python-devel,r2,N=
one,http://cairographics.org/pycairo,http://bugs.freedesktop.org,MATCH,pkgc=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  cairo python-native python  python-native ,Python Binding=
s for the Cairo canvas library,N/A,http://cairographics.org/releases/py2cai=
ro-1.10.0.tar.bz2,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['mktemp', '1.7', '1.7', 'ISC', 'console/utils', 'http://www.mktemp.org/', =
'r3', 'autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc   virtual/update-alternatives', 'http://www.mktemp.org/bugs'=
, 'None', 'Allow safe temporary file creation from shell scripts.', 'MATCH'=
, 'N/A', 'ftp://ftp.mktemp.org/pub/mktemp/mktemp-1.7.tar.gz', 'Saul Wold <s=
gw@linux.intel.com>', 'None']
inserted (mktemp,1.7,1.7,ISC,console/utils,r3,None,http://www.mktemp.org/,h=
ttp://www.mktemp.org/bugs,MATCH,autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   virtual/update-alternatives,Allow=
 safe temporary file creation from shell scripts.,N/A,ftp://ftp.mktemp.org/=
pub/mktemp/mktemp-1.7.tar.gz,Saul Wold <sgw@linux.intel.com>)
['xf86-video-vmware', '13.0.0', '13.0.1', 'MIT-X', 'x11/drivers', 'http://w=
ww.x.org', 'r21.0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextp=
roto fontsproto virtual/xserver xproto randrproto util-macros virtual/libx1=
1 libxvmc drm glproto     virtual/libgl xineramaproto libpciaccess', 'https=
://bugs.freedesktop.org', '2', 'vmware is an Xorg driver for VMware virtual=
 video cards.', 'UPDATE', 'N/A', 'http://xorg.freedesktop.org/releases/indi=
vidual/driver/xf86-video-vmware-13.0.0.tar.bz2', 'Laurentiu Palcu <laurenti=
u.palcu@intel.com>', 'None']
inserted (xf86-video-vmware,13.0.0,13.0.1,MIT-X,x11/drivers,r21.0,2,http://=
www.x.org,https://bugs.freedesktop.org,UPDATE,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ren=
derproto videoproto xextproto fontsproto virtual/xserver xproto randrproto =
util-macros virtual/libx11 libxvmc drm glproto     virtual/libgl xineramapr=
oto libpciaccess,vmware is an Xorg driver for VMware virtual video cards.,N=
/A,http://xorg.freedesktop.org/releases/individual/driver/xf86-video-vmware=
-13.0.0.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['libunistring', '0.9.3', '0.9.3', 'GPLv3&LGPLv3', 'devel', 'http://www.gnu=
=2Eorg/software/libunistring/', 'r3', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', "Text fi=
les are nowadays usually encoded in Unicode, and may consist of very differ=
ent scripts from Latin letters to Chinese Hanzi with many kinds of special =
characters accents, right-to-left writing marks, hyphens, Roman numbers, an=
d much more. But the POSIX platform APIs for text do not contain adequate f=
unctions for dealing with particular properties of many Unicode characters.=
 In fact, the POSIX APIs for text have several assumptions at their base wh=
ich don't hold for Unicode text.  This library provides functions for manip=
ulating Unicode strings and for manipulating C strings according to the Uni=
code standard.  This package contains documentation.", 'MATCH', 'N/A', 'ftp=
://ftp.gnu.org/gnu/libunistring/libunistring-0.9.3.tar.gz', 'Bogdan Marines=
cu <bogdan.a.marinescu@intel.com>', 'None']
inserted (libunistring,0.9.3,0.9.3,GPLv3&LGPLv3,devel,r3,None,http://www.gn=
u.org/software/libunistring/,None,MATCH,autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  ,Text files are nowadays u=
sually encoded in Unicode, and may consist of very different scripts from L=
atin letters to Chinese Hanzi with many kinds of special characters accents=
, right-to-left writing marks, hyphens, Roman numbers, and much more. But t=
he POSIX platform APIs for text do not contain adequate functions for deali=
ng with particular properties of many Unicode characters. In fact, the POSI=
X APIs for text have several assumptions at their base which don't hold for=
 Unicode text.  This library provides functions for manipulating Unicode st=
rings and for manipulating C strings according to the Unicode standard.  Th=
is package contains documentation.,N/A,ftp://ftp.gnu.org/gnu/libunistring/l=
ibunistring-0.9.3.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['elfutils', '0.148', '1.7.4', '(GPL-2+ & Elfutils-Exception)', 'base', 'ht=
tps://fedorahosted.org/elfutils', 'r11', 'autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native virtual/gettext gettext-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  libtool bzip2 zlib virtual/libintl', 'None', 'None', 'A collection o=
f utilities and DSOs to handle compiled objects.', 'UPDATE', 'N/A', 'https:=
//fedorahosted.org/releases/e/l/elfutils/elfutils-0.148.tar.bz2', 'Radu Moi=
san <radu.moisan@intel.com>', 'None']
inserted (elfutils,0.148,1.7.4,(GPL-2+ & Elfutils-Exception),base,r11,None,=
https://fedorahosted.org/elfutils,None,UPDATE,autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  libtool bzip2 zlib virtual/libintl,A collection of utilities and=
 DSOs to handle compiled objects.,N/A,https://fedorahosted.org/releases/e/l=
/elfutils/elfutils-0.148.tar.bz2,Radu Moisan <radu.moisan@intel.com>)
['libproxy', '0.4.7', '0.4.7', 'LGPLv2.1+', 'libs', 'http://code.google.com=
/p/libproxy/', 'r5', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native cmake-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gconf glib-2.0=
', 'http://code.google.com/p/libproxy/issues/list', 'None', 'A library that=
 provides automatic proxy configuration management', 'MATCH', 'N/A', 'http:=
//libproxy.googlecode.com/files/libproxy-0.4.7.tar.gz', 'Cristian Iorga <cr=
istian.iorga@intel.com>', 'None']
inserted (libproxy,0.4.7,0.4.7,LGPLv2.1+,libs,r5,None,http://code.google.co=
m/p/libproxy/,http://code.google.com/p/libproxy/issues/list,MATCH,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native cmake-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  gconf glib-2.0,A library that provides automa=
tic proxy configuration management,N/A,http://libproxy.googlecode.com/files=
/libproxy-0.4.7.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['xf86-video-intel', '2.21.3', '2.21.6', 'MIT-X', 'x11/drivers', 'http://ww=
w.x.org', 'r21.0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextpr=
oto fontsproto virtual/xserver xproto randrproto util-macros virtual/libx11=
 drm xf86driproto glproto     virtual/libgl xineramaproto xf86driproto libp=
ciaccess udev', 'https://bugs.freedesktop.org', '2', 'intel is an Xorg driv=
er for Intel integrated graphics chipsets. The driver supports depths 8, 15=
, 16 and 24. On some chipsets, the driver supports hardware accelerated 3D =
via the Direct Rendering Infrastructure (DRI).', 'UPDATE', 'N/A', 'http://x=
org.freedesktop.org/releases/individual/driver/xf86-video-intel-2.21.3.tar.=
bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86-video-intel,2.21.3,2.21.6,MIT-X,x11/drivers,r21.0,2,http://w=
ww.x.org,https://bugs.freedesktop.org,UPDATE,pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  rend=
erproto videoproto xextproto fontsproto virtual/xserver xproto randrproto u=
til-macros virtual/libx11 drm xf86driproto glproto     virtual/libgl xinera=
maproto xf86driproto libpciaccess udev,intel is an Xorg driver for Intel in=
tegrated graphics chipsets. The driver supports depths 8, 15, 16 and 24. On=
 some chipsets, the driver supports hardware accelerated 3D via the Direct =
Rendering Infrastructure (DRI).,N/A,http://xorg.freedesktop.org/releases/in=
dividual/driver/xf86-video-intel-2.21.3.tar.bz2,Laurentiu Palcu <laurentiu.=
palcu@intel.com>)
['libgpg-error', '1.11', '1.11', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://www.=
gnupg.org/related_software/libgpg-error/', 'r0', 'pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native virt=
ual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'https://bugs.g10code.com/gnupg/index', =
'None', 'a small library that defines common error values for all GnuPG com=
ponents', 'MATCH', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/libgpg-error/libgpg-e=
rror-1.11.tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>', 'None=
']
inserted (libgpg-error,1.11,1.11,GPLv2+ & LGPLv2.1+,libs,r0,None,http://www=
=2Egnupg.org/related_software/libgpg-error/,https://bugs.g10code.com/gnupg/=
index,MATCH,pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,a sma=
ll library that defines common error values for all GnuPG components,N/A,ft=
p://ftp.gnupg.org/gcrypt/libgpg-error/libgpg-error-1.11.tar.bz2,Constantin =
Musca <constantinx.musca@intel.com>)
['gettext-minimal-native', '0.18.2', 'INVALID', 'FSF-Unlimited', 'base', 'u=
nknown', 'r0', ' ', 'None', 'None', 'gettext-minimal-native version 0.18.2-=
r0', 'MATCH', 'N/A', 'file://aclocal.tgz', 'Saul Wold <sgw@linux.intel.com>=
', 'None']
inserted (gettext-minimal-native,0.18.2,INVALID,FSF-Unlimited,base,r0,None,=
unknown,None,MATCH, ,gettext-minimal-native version 0.18.2-r0,N/A,file://ac=
local.tgz,Saul Wold <sgw@linux.intel.com>)
['quicky', '0.4', '0.4', 'GPLv2+', 'x11/apps', 'http://qt-apps.org/content/=
show.php/Quicky?content=3D80325', 'r2', 'qt4-tools-native qt4-x11  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', '=
None', 'None', 'A simple note-taking application with Wiki-style syntax and=
 behaviour', 'MATCH', 'N/A', 'http://qt-apps.org/CONTENT/content-files/8032=
5-quicky-0.4.tar.gz', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (quicky,0.4,0.4,GPLv2+,x11/apps,r2,None,http://qt-apps.org/content=
/show.php/Quicky?content=3D80325,None,MATCH,qt4-tools-native qt4-x11  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,=
A simple note-taking application with Wiki-style syntax and behaviour,N/A,h=
ttp://qt-apps.org/CONTENT/content-files/80325-quicky-0.4.tar.gz,Radu Moisan=
 <radu.moisan@intel.com>)
['rxvt-unicode', '9.17', '9.18', 'GPLv2+', 'x11/utils', 'unknown', 'r0', 'a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  virtual/libx11 libxt libxft gdk-pixbuf virtual/update-alternatives'=
, 'None', 'None', 'rxvt-unicode is a clone of the well known terminal emula=
tor rxvt, modified to store text in Unicode (either UCS-2 or UCS-4) and to =
use locale-correct input and output. It also supports mixing multiple fonts=
 at the same time, including Xft fonts.', 'UPDATE', 'N/A', 'http://dist.sch=
morp.de/rxvt-unicode/Attic/rxvt-unicode-9.17.tar.bz2', 'Radu Moisan <radu.m=
oisan@intel.com>', 'None']
inserted (rxvt-unicode,9.17,9.18,GPLv2+,x11/utils,r0,None,unknown,None,UPDA=
TE,autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  virtual/libx11 libxt libxft gdk-pixbuf virtual/update-alternati=
ves,rxvt-unicode is a clone of the well known terminal emulator rxvt, modif=
ied to store text in Unicode (either UCS-2 or UCS-4) and to use locale-corr=
ect input and output. It also supports mixing multiple fonts at the same ti=
me, including Xft fonts.,N/A,http://dist.schmorp.de/rxvt-unicode/Attic/rxvt=
-unicode-9.17.tar.bz2,Radu Moisan <radu.moisan@intel.com>)
['valgrind', '3.8.1', '3.8.1', 'GPLv2 & GPLv2+ & BSD', 'base', 'http://valg=
rind.org/', 'r8', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  virtual/libx11', 'http://valgrind.org/support/b=
ug_reports.html', 'None', 'Valgrind memory debugger', 'MATCH', 'N/A', 'http=
://www.valgrind.org/downloads/valgrind-3.8.1.tar.bz2', 'Radu Moisan <radu.m=
oisan@intel.com>', 'None']
inserted (valgrind,3.8.1,3.8.1,GPLv2 & GPLv2+ & BSD,base,r8,None,http://val=
grind.org/,http://valgrind.org/support/bug_reports.html,MATCH,autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virt=
ual/libx11,Valgrind memory debugger,N/A,http://www.valgrind.org/downloads/v=
algrind-3.8.1.tar.bz2,Radu Moisan <radu.moisan@intel.com>)
['libowl-av', '0.1+gitAUTOINC+03030c4', '0.1+gitAUTOINC+03030c4', 'LGPLv2+'=
, 'x11', 'http://www.o-hand.com', 'r3', 'pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ gst=
reamer gst-plugins-base', 'http://bugzilla.openedhand.com/', 'None', 'Opene=
dHand Widget Library Audio/Video', 'MATCH', 'N/A', 'git://git.yoctoproject.=
org/libowl-av;protocol=3Dgit', 'Constantin Musca <constantinx.musca@intel.c=
om>', 'None']
inserted (libowl-av,0.1+gitAUTOINC+03030c4,0.1+gitAUTOINC+03030c4,LGPLv2+,x=
11,r3,None,http://www.o-hand.com,http://bugzilla.openedhand.com/,MATCH,pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  gtk+ gstreamer gst-plugins-base,OpenedHand Widget Lib=
rary Audio/Video,N/A,git://git.yoctoproject.org/libowl-av;protocol=3Dgit,Co=
nstantin Musca <constantinx.musca@intel.com>)
['init-ifupdown', '1.0', 'INVALID', 'GPLv2', 'base', 'http://packages.debia=
n.org/ifupdown', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc   update-rc.d-native', 'None', 'None', 'This pa=
ckage provides high level tools to configure network interfaces', 'MATCH', =
'N/A', 'file://copyright', 'None', 'None']
inserted (init-ifupdown,1.0,INVALID,GPLv2,base,r0,None,http://packages.debi=
an.org/ifupdown,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc   update-rc.d-native,This package provides h=
igh level tools to configure network interfaces,N/A,file://copyright,None)
['tslib', '1.0', '1.0', 'LGPLv2', 'base', 'http://tslib.berlios.de/', 'r21'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ', 'None', 'None', 'Tslib is an abstraction la=
yer for touchscreen panel events, as well as a filter stack for the manipul=
ation of those events. Tslib is generally used on embedded devices to provi=
de a common user space interface to touchscreen functionality.', 'MATCH', '=
N/A', 'http://download.berlios.de/tslib/tslib-1.0.tar.bz2', 'Radu Moisan <r=
adu.moisan@intel.com>', 'None']
inserted (tslib,1.0,1.0,LGPLv2,base,r21,None,http://tslib.berlios.de/,None,=
MATCH,pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ,Tslib is an abstraction layer for touchscr=
een panel events, as well as a filter stack for the manipulation of those e=
vents. Tslib is generally used on embedded devices to provide a common user=
 space interface to touchscreen functionality.,N/A,http://download.berlios.=
de/tslib/tslib-1.0.tar.bz2,Radu Moisan <radu.moisan@intel.com>)
['libxext', '1.3.1', '1.3.1', 'MIT-style', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros xproto virtual/libx11 xextprot=
o libxau libxdmcp', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dx=
org', '1', 'libXext provides an X Window System client interface to several=
 extensions to the X protocol.  The supported protocol extensions are DOUBL=
E-BUFFER, DPMS, Extended-Visual-Information, LBX, MIT_SHM, MIT_SUNDRY-NONST=
ANDARD, Multi-Buffering, SECURITY, SHAPE, SYNC, TOG-CUP, XC-APPGROUP, XC-MI=
SC, XTEST.  libXext also provides a small set of utility functions to aid a=
uthors of client APIs for X protocol extensions.', 'MATCH', 'N/A', 'http://=
xorg.freedesktop.org/releases/individual/lib/libXext-1.3.1.tar.bz2', 'Const=
antin Musca <constantinx.musca@intel.com>', 'None']
inserted (libxext,1.3.1,1.3.1,MIT-style,x11/libs,r0,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros xproto virtual/libx11 xextproto libxau libxdmcp,libX=
ext provides an X Window System client interface to several extensions to t=
he X protocol.  The supported protocol extensions are DOUBLE-BUFFER, DPMS, =
Extended-Visual-Information, LBX, MIT_SHM, MIT_SUNDRY-NONSTANDARD, Multi-Bu=
ffering, SECURITY, SHAPE, SYNC, TOG-CUP, XC-APPGROUP, XC-MISC, XTEST.  libX=
ext also provides a small set of utility functions to aid authors of client=
 APIs for X protocol extensions.,N/A,http://xorg.freedesktop.org/releases/i=
ndividual/lib/libXext-1.3.1.tar.bz2,Constantin Musca <constantinx.musca@int=
el.com>)
['boost', '1.53.0', '1.53.0', 'BSL-1.0 & MIT & Python-2.0', 'libs', 'http:/=
/www.boost.org/', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  bjam-native zlib bzip2', 'None', 'None', 'Fre=
e peer-reviewed portable C++ source libraries', 'MATCH', 'N/A', 'http://dow=
nloads.sourceforge.net/boost/boost_1_53_0.tar.bz2', 'Saul Wold <sgw@linux.i=
ntel.com>', 'None']
inserted (boost,1.53.0,1.53.0,BSL-1.0 & MIT & Python-2.0,libs,r1,None,http:=
//www.boost.org/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  bjam-native zlib bzip2,Free peer-reviewed =
portable C++ source libraries,N/A,http://downloads.sourceforge.net/boost/bo=
ost_1_53_0.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['python-imaging', '1.1.7', '1.1.7', 'MIT', 'devel/python', 'unknown', 'r5'=
, ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  freetype jpeg tiff python-native python  python-native ', 'None', '=
None', 'Python Imaging Library', 'MATCH', 'N/A', 'http://effbot.org/downloa=
ds/Imaging-1.1.7.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>'=
, 'None']
inserted (python-imaging,1.1.7,1.1.7,MIT,devel/python,r5,None,unknown,None,=
MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  freetype jpeg tiff python-native python  python-native ,Python I=
maging Library,N/A,http://effbot.org/downloads/Imaging-1.1.7.tar.gz,Bogdan =
Marinescu <bogdan.a.marinescu@intel.com>)
['libpod-plainer-perl', '1.03', '1.03', 'Artistic-1.0 | GPL-1.0+', 'libs', =
'http://search.cpan.org/dist/Pod-Plainer/', 'r0', ' virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native',=
 'None', 'None', "Pod::Plainer uses Pod::Parser which takes Pod with the (n=
ew) 'C<< .. >>' constructs and returns the old(er) style with just 'C<>'; '=
<' and '>' are replaced by 'E<lt>' and 'E<gt>'. This can be used to pre-pro=
cess Pod before using tools which do not recognise the new style Pods.", 'M=
ATCH', 'N/A', 'http://search.cpan.org/CPAN/authors/id/R/RM/RMBARKER/Pod-Pla=
iner-1.03.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libpod-plainer-perl,1.03,1.03,Artistic-1.0 | GPL-1.0+,libs,r0,Non=
e,http://search.cpan.org/dist/Pod-Plainer/,None,MATCH, virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-nativ=
e,Pod::Plainer uses Pod::Parser which takes Pod with the (new) 'C<< .. >>' =
constructs and returns the old(er) style with just 'C<>'; '<' and '>' are r=
eplaced by 'E<lt>' and 'E<gt>'. This can be used to pre-process Pod before =
using tools which do not recognise the new style Pods.,N/A,http://search.cp=
an.org/CPAN/authors/id/R/RM/RMBARKER/Pod-Plainer-1.03.tar.gz,Saul Wold <sgw=
@linux.intel.com>)
['unifdef-native', '2.6.18+git', 'INVALID', 'BSD-2-Clause', 'devel', 'unkno=
wn', 'r1', ' ', 'None', 'None', 'Kernel header preprocessor', 'MATCH', '2.6=
=2E18+git', 'file://unifdef.c', 'Bogdan Marinescu <bogdan.a.marinescu@intel=
=2Ecom>', 'None']
inserted (unifdef-native,2.6.18+git,INVALID,BSD-2-Clause,devel,r1,None,unkn=
own,None,MATCH, ,Kernel header preprocessor,2.6.18+git,file://unifdef.c,Bog=
dan Marinescu <bogdan.a.marinescu@intel.com>)
['binutils-crosssdk', '2.23.1', '2.23.2', 'GPLv3', 'devel', 'http://www.gnu=
=2Eorg/software/binutils/', 'r3', '  flex-native bison-native zlib-native',=
 'http://sourceware.org/bugzilla/', 'None', 'The GNU Binutils are a collect=
ion of binary tools. The main ones are ld (GNU Linker), and as (GNU Assembl=
er). This package also includes addition tools such as addr2line (Converts =
addresses into filenames and line numbers), ar (utility for creating, modif=
ying and extracting archives), nm (list symbols in object files), objcopy (=
copy and translate object files), objdump (Display object information), and=
 other tools and related libraries.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/g=
nu/binutils/binutils-2.23.1.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu=
@intel.com>', 'None']
inserted (binutils-crosssdk,2.23.1,2.23.2,GPLv3,devel,r3,None,http://www.gn=
u.org/software/binutils/,http://sourceware.org/bugzilla/,UPDATE,  flex-nati=
ve bison-native zlib-native,The GNU Binutils are a collection of binary too=
ls. The main ones are ld (GNU Linker), and as (GNU Assembler). This package=
 also includes addition tools such as addr2line (Converts addresses into fi=
lenames and line numbers), ar (utility for creating, modifying and extracti=
ng archives), nm (list symbols in object files), objcopy (copy and translat=
e object files), objdump (Display object information), and other tools and =
related libraries.,N/A,ftp://ftp.gnu.org/gnu/binutils/binutils-2.23.1.tar.b=
z2,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['gawk', '4.0.2', '4.0.2', 'GPLv3', 'console/utils', 'www.gnu.org/software/=
gawk', 'r0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc   readline virtual/upd=
ate-alternatives', 'bug-gawk@gnu.org', 'None', 'A program that you can use =
to select particular records in a file and perform operations upon them.', =
'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gawk/gawk-4.0.2.tar.gz', 'Radu Moisa=
n <radu.moisan@intel.com>', 'None']
inserted (gawk,4.0.2,4.0.2,GPLv3,console/utils,r0,None,www.gnu.org/software=
/gawk,bug-gawk@gnu.org,MATCH,autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   readl=
ine virtual/update-alternatives,A program that you can use to select partic=
ular records in a file and perform operations upon them.,N/A,ftp://ftp.gnu.=
org/gnu/gawk/gawk-4.0.2.tar.gz,Radu Moisan <radu.moisan@intel.com>)
['oh-puzzles', '0.2+gitAUTOINC+92f1a20', '0.2+gitAUTOINC+92f1a20', 'MIT', '=
x11', 'http://o-hand.com/', 'r10', 'pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ gconf in=
tltool-native librsvg libowl', 'http://bugzilla.openedhand.com/', 'None', '=
Portable Puzzle Collection', 'MATCH', 'N/A', 'git://git.yoctoproject.org/oh=
-puzzles;protocol=3Dgit', 'Constantin Musca <constantinx.musca@intel.com>',=
 'None']
inserted (oh-puzzles,0.2+gitAUTOINC+92f1a20,0.2+gitAUTOINC+92f1a20,MIT,x11,=
r10,None,http://o-hand.com/,http://bugzilla.openedhand.com/,MATCH,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  gtk+ gconf intltool-native librsvg libowl,Portable Puzzle =
Collection,N/A,git://git.yoctoproject.org/oh-puzzles;protocol=3Dgit,Constan=
tin Musca <constantinx.musca@intel.com>)
['xinetd', '2.3.15', '2.3.15', 'BSD', 'base', 'http://www.xinetd.org', 'r2'=
, 'autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc   update-rc.d-native tcp-wrappers', 'None', 'None', 'Highly conf=
igurable, modular and secure inetd', 'MATCH', 'N/A', 'http://www.xinetd.org=
/xinetd-2.3.15.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'Non=
e']
inserted (xinetd,2.3.15,2.3.15,BSD,base,r2,None,http://www.xinetd.org,None,=
MATCH,autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc   update-rc.d-native tcp-wrappers,Highly configurable, modula=
r and secure inetd,N/A,http://www.xinetd.org/xinetd-2.3.15.tar.gz,Laurentiu=
 Palcu <laurentiu.palcu@intel.com>)
['connman-gnome', '0.7', '0.7', 'GPLv2 & LGPLv2.1', 'libs/network', 'http:/=
/connman.net/', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  gtk+ dbus-glib intltool-native hicolor-icon=
-theme gtk-update-icon-cache-native', 'None', 'None', 'gtk frontend for con=
nman', 'MATCH', 'N/A', 'git://github.com/connectivity/connman-gnome.git;pro=
tocol=3Dgit', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (connman-gnome,0.7,0.7,GPLv2 & LGPLv2.1,libs/network,r0,None,http:=
//connman.net/,None,MATCH,autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  gtk+ dbus-glib intltool-native hicolor-i=
con-theme gtk-update-icon-cache-native,gtk frontend for connman,N/A,git://g=
ithub.com/connectivity/connman-gnome.git;protocol=3Dgit,Cristian Iorga <cri=
stian.iorga@intel.com>)
['tremor', '20120314', '18906', 'BSD', 'libs', 'unknown', 'r1', 'autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  l=
ibogg', 'None', 'None', 'tremor is a fixed point implementation of the vorb=
is codec.', 'UPDATE', '20120122', 'svn://svn.xiph.org/trunk;module=3DTremor=
;rev=3D18221;protocol=3Dhttp', 'Cristian Iorga <cristian.iorga@intel.com>',=
 'Same revision on different SVN modules']
inserted (tremor,20120314,18906,BSD,libs,r1,None,unknown,None,UPDATE,autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  libogg,tremor is a fixed point implementation of the vorbis codec.,20120=
122,svn://svn.xiph.org/trunk;module=3DTremor;rev=3D18221;protocol=3Dhttp,Cr=
istian Iorga <cristian.iorga@intel.com>)
['shadow-securetty', '4.1.4.3', 'INVALID', 'MIT', 'base utils', 'unknown', =
'r2', ' ', 'None', 'None', 'Provider of the machine specific securetty file=
', 'MATCH', 'N/A', 'file://securetty', 'Andrei Dinu <andrei.adrianx.dinu@in=
tel.com>', 'None']
inserted (shadow-securetty,4.1.4.3,INVALID,MIT,base utils,r2,None,unknown,N=
one,MATCH, ,Provider of the machine specific securetty file,N/A,file://secu=
retty,Andrei Dinu <andrei.adrianx.dinu@intel.com>)
['run-postinsts', '1.0', 'INVALID', 'MIT', 'devel', 'unknown', 'r9', ' virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
 update-rc.d-native', 'None', 'None', 'Run postinstall scripts on device us=
ing awk', 'MATCH', 'check', 'file://run-postinsts', 'Cristian Iorga <cristi=
an.iorga@intel.com>', 'None']
inserted (run-postinsts,1.0,INVALID,MIT,devel,r9,None,unknown,None,MATCH, v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c   update-rc.d-native,Run postinstall scripts on device using awk,check,fi=
le://run-postinsts,Cristian Iorga <cristian.iorga@intel.com>)
['clutter-1.8', '1.8.4', '1.8.4', 'LGPLv2.1+', 'base', 'http://www.clutter-=
project.org/', 'r2', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  virtual/libx11 pango glib-2.0 libxfixes libxi json-glib cogl atk virtua=
l/libgl libdrm gtk-doc-stub-native', 'None', 'None', 'Clutter graphics libr=
ary', 'MATCH', 'N/A', 'http://source.clutter-project.org/sources/clutter/1.=
8/clutter-1.8.4.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (clutter-1.8,1.8.4,1.8.4,LGPLv2.1+,base,r2,None,http://www.clutter=
-project.org/,None,MATCH,pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native virtual/gettext gettext-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  virtual/libx11 pango glib-2.0 libxfixes libxi json-glib cogl atk vir=
tual/libgl libdrm gtk-doc-stub-native,Clutter graphics library,N/A,http://s=
ource.clutter-project.org/sources/clutter/1.8/clutter-1.8.4.tar.bz2,Ross Bu=
rton <ross.burton@intel.com>)
['xserver-xf86-config', '0.1', 'INVALID', 'MIT-X', 'x11/base', 'http://www.=
x.org', 'r11', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', 'None', 'X.Org X server configuration file'=
, 'MATCH', 'N/A', 'file://xorg.conf', 'Laurentiu Palcu <laurentiu.palcu@int=
el.com>', 'None']
inserted (xserver-xf86-config,0.1,INVALID,MIT-X,x11/base,r11,None,http://ww=
w.x.org,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ,X.Org X server configuration file,N/A,file://xorg.=
conf,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['gccmakedep', '1.0.2', '1.0.2', 'MIT-X', 'x11/utils', 'http://www.x.org', =
'r3', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', "create dependencies in makefiles usi=
ng 'gcc -M'", 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individ=
ual/util/gccmakedep-1.0.2.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@in=
tel.com>', 'None']
inserted (gccmakedep,1.0.2,1.0.2,MIT-X,x11/utils,r3,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros,create dependencies in makefiles using 'gcc -M',N/A,=
http://xorg.freedesktop.org/releases/individual/util/gccmakedep-1.0.2.tar.g=
z,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['lsbinitscripts', '9.45', '9.46', 'GPLv2', 'base', 'unknown', 'r0', ' virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
popt glib-2.0 virtual/update-alternatives', 'None', 'None', 'SysV init scri=
pts which only is used in an LSB image', 'UPDATE', 'N/A', 'http://pkgs.fedo=
raproject.org/repo/pkgs/initscripts/initscripts-9.45.tar.bz2/dd514ee65e4a46=
10be836bb34c62c0ed/initscripts-9.45.tar.bz2', 'Saul Wold <sgw@linux.intel.c=
om>', 'None']
inserted (lsbinitscripts,9.45,9.46,GPLv2,base,r0,None,unknown,None,UPDATE, =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  popt glib-2.0 virtual/update-alternatives,SysV init scripts which only =
is used in an LSB image,N/A,http://pkgs.fedoraproject.org/repo/pkgs/initscr=
ipts/initscripts-9.45.tar.bz2/dd514ee65e4a4610be836bb34c62c0ed/initscripts-=
9.45.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['xextproto', '7.2.1', '7.2.1', 'MIT & MIT-style', 'x11/libs', 'http://www.=
x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  uti=
l-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1'=
, 'This package provides the wire protocol for several X extensions.  These=
 protocol extensions include DOUBLE-BUFFER, DPMS, Extended-Visual-Informati=
on, LBX, MIT_SHM, MIT_SUNDRY-NONSTANDARD, Multi-Buffering, SECURITY, SHAPE,=
 SYNC, TOG-CUP, XC-APPGROUP, XC-MISC, XTEST.  In addition a small set of ut=
ility functions are also available.', 'MATCH', 'N/A', 'http://xorg.freedesk=
top.org/releases/individual/proto/xextproto-7.2.1.tar.bz2', 'Laurentiu Palc=
u <laurentiu.palcu@intel.com>', 'None']
inserted (xextproto,7.2.1,7.2.1,MIT & MIT-style,x11/libs,r0,1,http://www.x.=
org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  util-macros,This package =
provides the wire protocol for several X extensions.  These protocol extens=
ions include DOUBLE-BUFFER, DPMS, Extended-Visual-Information, LBX, MIT_SHM=
, MIT_SUNDRY-NONSTANDARD, Multi-Buffering, SECURITY, SHAPE, SYNC, TOG-CUP, =
XC-APPGROUP, XC-MISC, XTEST.  In addition a small set of utility functions =
are also available.,N/A,http://xorg.freedesktop.org/releases/individual/pro=
to/xextproto-7.2.1.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['gnu-config', '20120814', '20120814', 'GPLv2', 'devel', 'unknown', 'r0', '=
 ', 'None', 'None', 'Tool that installs the GNU config.guess / config.sub i=
nto a directory tree', 'MATCH', 'N/A', 'http://downloads.yoctoproject.org/r=
eleases/gnu-config/gnu-config-20120814.tar.bz2', 'Bogdan Marinescu <bogdan.=
a.marinescu@intel.com>', 'None']
inserted (gnu-config,20120814,20120814,GPLv2,devel,r0,None,unknown,None,MAT=
CH, ,Tool that installs the GNU config.guess / config.sub into a directory =
tree,N/A,http://downloads.yoctoproject.org/releases/gnu-config/gnu-config-2=
0120814.tar.bz2,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['eglibc-initial', '2.17', '2.17', 'GPLv2 & LGPLv2.1', 'libs', 'http://www.=
eglibc.org/home', 'r3', 'autoconf-native automake-native libtool-native gnu=
-config-native  linux-libc-headers virtual/i586-poky-linux-gcc-initial kcon=
fig-frontends-native', 'None', 'None', "Embedded GLIBC (EGLIBC) is a varian=
t of the GNU C Library (GLIBC) that is designed to work well on embedded sy=
stems. EGLIBC strives to be source and binary compatible with GLIBC. EGLIBC=
's goals include reduced footprint, configurable components, better support=
 for cross-compilation and cross-testing.", 'MATCH', 'N/A', 'http://downloa=
ds.yoctoproject.org/releases/eglibc/eglibc-2.17-svnr22064.tar.bz2', 'Bogdan=
 Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (eglibc-initial,2.17,2.17,GPLv2 & LGPLv2.1,libs,r3,None,http://www=
=2Eeglibc.org/home,None,MATCH,autoconf-native automake-native libtool-nativ=
e gnu-config-native  linux-libc-headers virtual/i586-poky-linux-gcc-initial=
 kconfig-frontends-native,Embedded GLIBC (EGLIBC) is a variant of the GNU C=
 Library (GLIBC) that is designed to work well on embedded systems. EGLIBC =
strives to be source and binary compatible with GLIBC. EGLIBC's goals inclu=
de reduced footprint, configurable components, better support for cross-com=
pilation and cross-testing.,N/A,http://downloads.yoctoproject.org/releases/=
eglibc/eglibc-2.17-svnr22064.tar.bz2,Bogdan Marinescu <bogdan.a.marinescu@i=
ntel.com>)
['alsa-utils', '1.0.26', '1.0.27', 'GPLv2+', 'console/utils', 'http://www.a=
lsa-project.org', 'r0', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  alsa-lib n=
curses libsamplerate0 udev', 'https://bugtrack.alsa-project.org/alsa-bug/lo=
gin_page.php', 'None', 'ALSA Utilities', 'UPDATE', 'N/A', 'ftp://ftp.alsa-p=
roject.org/pub/utils/alsa-utils-1.0.26.tar.bz2', 'Cristian Iorga <cristian.=
iorga@intel.com>', 'None']
inserted (alsa-utils,1.0.26,1.0.27,GPLv2+,console/utils,r0,None,http://www.=
alsa-project.org,https://bugtrack.alsa-project.org/alsa-bug/login_page.php,=
UPDATE,autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  alsa-lib ncurses libsamplera=
te0 udev,ALSA Utilities,N/A,ftp://ftp.alsa-project.org/pub/utils/alsa-utils=
-1.0.26.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['apr', '1.4.6', '1.4.6', 'Apache-2.0', 'libs', 'http://apr.apache.org/', '=
r2', 'autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  util-linux', 'None', 'None', 'Apache Portable Runtime (APR) =
library', 'MATCH', 'N/A', 'http://www.apache.org/dist/apr/apr-1.4.6.tar.bz2=
', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (apr,1.4.6,1.4.6,Apache-2.0,libs,r2,None,http://apr.apache.org/,No=
ne,MATCH,autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  util-linux,Apache Portable Runtime (APR) library,N/A,http=
://www.apache.org/dist/apr/apr-1.4.6.tar.bz2,Radu Moisan <radu.moisan@intel=
=2Ecom>)
['libusb1', '1.0.9', '1.0.9', 'LGPLv2.1+', 'libs', 'http://libusb.sf.net', =
'r1', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  ', 'http://www.libusb.org/report', 'None',=
 'Userspace library to access USB (version 1.0)', 'MATCH', 'N/A', 'http://d=
ownloads.sourceforge.net/libusb/libusb-1.0.9.tar.bz2', 'Saul Wold <sgw@linu=
x.intel.com>', 'None']
inserted (libusb1,1.0.9,1.0.9,LGPLv2.1+,libs,r1,None,http://libusb.sf.net,h=
ttp://www.libusb.org/report,MATCH,pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Userspace libr=
ary to access USB (version 1.0),N/A,http://downloads.sourceforge.net/libusb=
/libusb-1.0.9.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['apt', '0.9.7.7', '0.9.7.8', 'GPLv2.0+', 'base', 'unknown', 'r0', 'autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native vir=
tual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  curl db', 'None', 'None', 'Advanced front-=
end for dpkg.', 'UPDATE', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/a/a=
pt/apt_0.9.7.7.tar.gz', 'Constantin Musca <constantinx.musca@intel.com>', '=
None']
inserted (apt,0.9.7.7,0.9.7.8,GPLv2.0+,base,r0,None,unknown,None,UPDATE,aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
 virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  curl db,Advanced front-end for dpkg.,N=
/A,ftp://ftp.debian.org/debian/pool/main/a/apt/apt_0.9.7.7.tar.gz,Constanti=
n Musca <constantinx.musca@intel.com>)
['libxcb', '1.9', '1.9', 'MIT', 'x11/libs', 'http://xcb.freedesktop.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  xcb-proto xproto libxau libxslt-native xcb-=
proto-native libpthread-stubs  python-native  libxdmcp', 'https://bugs.free=
desktop.org/enter_bug.cgi?product=3DXCB', 'None', 'The X protocol C-languag=
e Binding (XCB) is a replacement for Xlib featuring a small footprint, late=
ncy hiding, direct access to the protocol, improved threading support, and =
extensibility.', 'MATCH', 'N/A', 'http://xcb.freedesktop.org/dist/libxcb-1.=
9.tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (libxcb,1.9,1.9,MIT,x11/libs,r0,None,http://xcb.freedesktop.org,ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,MATCH,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  xcb-proto xproto libxau libxslt-native xcb-proto-native libpthr=
ead-stubs  python-native  libxdmcp,The X protocol C-language Binding (XCB) =
is a replacement for Xlib featuring a small footprint, latency hiding, dire=
ct access to the protocol, improved threading support, and extensibility.,N=
/A,http://xcb.freedesktop.org/dist/libxcb-1.9.tar.bz2,Constantin Musca <con=
stantinx.musca@intel.com>)
['libclass-isa-perl', '0.36', '0.36', 'Artistic-1.0 | GPL-1.0+', 'libs', 'h=
ttp://search.cpan.org/dist/Class-ISA/', 'r0', ' virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native', 'No=
ne', 'None', 'Suppose you have a class (like Food::Fish::Fishstick) that is=
 derived, via its @ISA, from one or more superclasses (as Food::Fish::Fishs=
tick is from Food::Fish,Life::Fungus, and Chemicals), and some of those sup=
erclasses may themselves each bederived, via its @ISA, from one or more sup=
erclasses (as above).When, then, you call a method in that class ($fishstic=
k->calories), Perl first searchesthere for that method, but if it\'s not th=
ere, it goes searching in its superclasses, andso on, in a depth-first (or =
maybe "height-first" is the word) search. In the above example,it\'d first =
look in Food::Fish, then Food, then Matter, then Life::Fungus, then Life, t=
henChemicals.This library, Class::ISA, provides functions that return that =
list -- the list(in order) of names of classes Perl would search to find a =
method, with no duplicates.', 'MATCH', 'N/A', 'http://search.cpan.org/CPAN/=
authors/id/S/SM/SMUELLER/Class-ISA-0.36.tar.gz', 'Saul Wold <sgw@linux.inte=
l.com>', 'None']
inserted (libclass-isa-perl,0.36,0.36,Artistic-1.0 | GPL-1.0+,libs,r0,None,=
http://search.cpan.org/dist/Class-ISA/,None,MATCH, virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native,Su=
ppose you have a class (like Food::Fish::Fishstick) that is derived, via it=
s @ISA, from one or more superclasses (as Food::Fish::Fishstick is from Foo=
d::Fish,Life::Fungus, and Chemicals), and some of those superclasses may th=
emselves each bederived, via its @ISA, from one or more superclasses (as ab=
ove).When, then, you call a method in that class ($fishstick->calories), Pe=
rl first searchesthere for that method, but if it's not there, it goes sear=
ching in its superclasses, andso on, in a depth-first (or maybe "height-fir=
st" is the word) search. In the above example,it'd first look in Food::Fish=
, then Food, then Matter, then Life::Fungus, then Life, thenChemicals.This =
library, Class::ISA, provides functions that return that list -- the list(i=
n order) of names of classes Perl would search to find a method, with no du=
plicates.,N/A,http://search.cpan.org/CPAN/authors/id/S/SM/SMUELLER/Class-IS=
A-0.36.tar.gz,Saul Wold <sgw@linux.intel.com>)
['tar', '1.26', '1.26', 'GPLv3', 'base', 'http://www.gnu.org/software/tar/'=
, 'r5', 'autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update-alternativ=
es', 'None', 'None', 'GNU tar saves many files together into a single tape =
or disk archive, and can restore individual files from the archive.', 'MATC=
H', 'N/A', 'ftp://ftp.gnu.org/gnu/tar/tar-1.26.tar.bz2', 'Andrei Dinu <andr=
ei.adrianx.dinu@intel.com>', 'None']
inserted (tar,1.26,1.26,GPLv3,base,r5,None,http://www.gnu.org/software/tar/=
,None,MATCH,autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update-alterna=
tives,GNU tar saves many files together into a single tape or disk archive,=
 and can restore individual files from the archive.,N/A,ftp://ftp.gnu.org/g=
nu/tar/tar-1.26.tar.bz2,Andrei Dinu <andrei.adrianx.dinu@intel.com>)
['zip', '3.0', '30', 'BSD-3-Clause', 'console/utils', 'http://www.info-zip.=
org', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  ', 'None', 'None', 'Archiver for .zip files', 'UPDATE', '=
3.0', 'ftp://ftp.info-zip.org/pub/infozip/src/zip30.tgz', 'Radu Moisan <rad=
u.moisan@intel.com>', 'None']
inserted (zip,3.0,30,BSD-3-Clause,console/utils,r2,None,http://www.info-zip=
=2Eorg,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ,Archiver for .zip files,3.0,ftp://ftp.info-zip.org=
/pub/infozip/src/zip30.tgz,Radu Moisan <radu.moisan@intel.com>)
['gst-openmax', '0.10.1', '0.10.1', 'LGPLv2.1', 'base', 'unknown', 'r4', 'a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  gstreamer', 'None', 'None', 'gst-openmax version 0.10.1-r4', 'MATCH=
', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-openmax/gst-openmax-0.1=
0.1.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (gst-openmax,0.10.1,0.10.1,LGPLv2.1,base,r4,None,unknown,None,MATC=
H,autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  gstreamer,gst-openmax version 0.10.1-r4,N/A,http://gstreamer.fre=
edesktop.org/src/gst-openmax/gst-openmax-0.10.1.tar.bz2,Cristian Iorga <cri=
stian.iorga@intel.com>)
['qt4-embedded', '4.8.4', '4.8.4', 'LGPLv2.1 | GPLv3', 'libs', 'http://qt.n=
okia.com', 'r52.3', 'qt4-tools-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc   directfb tslib qt4-tools-native=
 freetype jpeg libpng zlib dbus openssl glib-2.0 gstreamer gst-plugins-base=
 sqlite3 tiff pulseaudio', 'None', 'None', 'Qt is a versatile cross-platfor=
m application framework -- this is the embedded version.', 'MATCH', 'N/A', =
'http://releases.qt-project.org/qt4/source/qt-everywhere-opensource-src-4.8=
=2E4.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (qt4-embedded,4.8.4,4.8.4,LGPLv2.1 | GPLv3,libs,r52.3,None,http://=
qt.nokia.com,None,MATCH,qt4-tools-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc   directfb tslib qt4-tools-nat=
ive freetype jpeg libpng zlib dbus openssl glib-2.0 gstreamer gst-plugins-b=
ase sqlite3 tiff pulseaudio,Qt is a versatile cross-platform application fr=
amework -- this is the embedded version.,N/A,http://releases.qt-project.org=
/qt4/source/qt-everywhere-opensource-src-4.8.4.tar.gz,Paul Eggleton <paul.e=
ggleton@linux.intel.com>)
['startup-notification', '0.12', '0.12', 'LGPLv2+', 'libs', 'http://www.fre=
edesktop.org/wiki/software/startup-notification/', 'r2', 'pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  virtual/libx11 libsm xcb-util', 'https://bugs.freedesktop.org/ente=
r_bug.cgi?product=3DSpecifications', 'None', 'Startup-notification contains=
 a reference implementation of the startup notification protocol.', 'MATCH'=
, 'N/A', 'http://www.freedesktop.org/software/startup-notification/releases=
/startup-notification-0.12.tar.gz', 'Radu Moisan <radu.moisan@intel.com>', =
'None']
inserted (startup-notification,0.12,0.12,LGPLv2+,libs,r2,None,http://www.fr=
eedesktop.org/wiki/software/startup-notification/,https://bugs.freedesktop.=
org/enter_bug.cgi?product=3DSpecifications,MATCH,pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
virtual/libx11 libsm xcb-util,Startup-notification contains a reference imp=
lementation of the startup notification protocol.,N/A,http://www.freedeskto=
p.org/software/startup-notification/releases/startup-notification-0.12.tar.=
gz,Radu Moisan <radu.moisan@intel.com>)
['perl', '5.14.3', '5.17.11', 'Artistic-1.0 | GPL-1.0', 'devel', 'http://ww=
w.perl.org/', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  virtual/db grep-native gdbm zlib perl-native', 'N=
one', 'None', 'Perl is a popular scripting language.', 'UPDATE', 'N/A', 'ht=
tp://www.cpan.org/src/5.0/perl-5.14.3.tar.gz', 'Bogdan Marinescu <bogdan.a.=
marinescu@intel.com>', 'None']
inserted (perl,5.14.3,5.17.11,Artistic-1.0 | GPL-1.0,devel,r1,None,http://w=
ww.perl.org/,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  virtual/db grep-native gdbm zlib perl-native,=
Perl is a popular scripting language.,N/A,http://www.cpan.org/src/5.0/perl-=
5.14.3.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['tzdata', '2013b', '2013c', 'PD', 'base', 'ftp://elsie.nci.nih.gov/pub/', =
'r0', ' tzcode-native', 'None', 'None', 'Timezone data', 'UPDATE', 'N/A', '=
ftp://ftp.iana.org/tz/releases/tzdata2013b.tar.gz;name=3Dtzdata', 'Radu Moi=
san <radu.moisan@intel.com>', 'None']
inserted (tzdata,2013b,2013c,PD,base,r0,None,ftp://elsie.nci.nih.gov/pub/,N=
one,UPDATE, tzcode-native,Timezone data,N/A,ftp://ftp.iana.org/tz/releases/=
tzdata2013b.tar.gz;name=3Dtzdata,Radu Moisan <radu.moisan@intel.com>)
['m4', '1.4.16', '1.4.16', 'GPLv3', 'base', 'unknown', 'r4', 'autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', '=
None', 'None', 'GNU m4 is an implementation of the traditional Unix macro p=
rocessor.  It is mostly SVR4 compatible although it has some extensions (fo=
r example, handling more than 9 positional parameters to macros). GNU M4 al=
so has built-in functions for including files, running shell commands, doin=
g arithmetic, etc.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/m4/m4-1.4.16.ta=
r.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (m4,1.4.16,1.4.16,GPLv3,base,r4,None,unknown,None,MATCH,autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,=
GNU m4 is an implementation of the traditional Unix macro processor.  It is=
 mostly SVR4 compatible although it has some extensions (for example, handl=
ing more than 9 positional parameters to macros). GNU M4 also has built-in =
functions for including files, running shell commands, doing arithmetic, et=
c.,N/A,ftp://ftp.gnu.org/gnu/m4/m4-1.4.16.tar.gz,Bogdan Marinescu <bogdan.a=
=2Emarinescu@intel.com>)
['resourceproto', '1.2.0', '1.2.0', 'MIT', 'x11/libs', 'http://www.x.org', =
'r1', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire proto=
col for the X Resource extension.  XRes provides an interface that allows X=
 clients to see and monitor X resource usage of various clients.', 'MATCH',=
 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/resourceprot=
o-1.2.0.tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (resourceproto,1.2.0,1.2.0,MIT,x11/libs,r1,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros,This package provides the wire protocol for the X Re=
source extension.  XRes provides an interface that allows X clients to see =
and monitor X resource usage of various clients.,N/A,http://xorg.freedeskto=
p.org/releases/individual/proto/resourceproto-1.2.0.tar.bz2,Constantin Musc=
a <constantinx.musca@intel.com>)
['qemu', '1.4.0', '1.4.1', 'GPLv2 & LGPLv2.1', 'base', 'http://qemu.org', '=
r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  glib-2.0 zlib alsa-lib virtual/libx11 pixman dtc libsdl', 'N=
one', 'None', 'open source processor emulator', 'UPDATE', 'N/A', 'http://wi=
ki.qemu.org/download/qemu-1.4.0.tar.bz2', 'Constantin Musca <constantinx.mu=
sca@intel.com>', 'None']
inserted (qemu,1.4.0,1.4.1,GPLv2 & LGPLv2.1,base,r0,None,http://qemu.org,No=
ne,UPDATE,autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  glib-2.0 zlib alsa-lib virtual/libx11 pixman dtc libsdl,=
open source processor emulator,N/A,http://wiki.qemu.org/download/qemu-1.4.0=
=2Etar.bz2,Constantin Musca <constantinx.musca@intel.com>)
['libxrandr', '1.4.0', '1.4.0', 'MIT-style', 'x11/libs', 'http://www.x.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros virtual/libx11 randrproto li=
bxrender libxext', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxo=
rg', '1', 'The X Resize, Rotate and Reflect Extension, called RandR for sho=
rt, brings the ability to resize, rotate and reflect the root window of a s=
creen. It is based on the X Resize and Rotate Extension as specified in the=
 Proceedings of the 2001 Usenix Technical Conference [RANDR].', 'MATCH', 'N=
/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXrandr-1.4.0.t=
ar.bz2', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (libxrandr,1.4.0,1.4.0,MIT-style,x11/libs,r0,1,http://www.x.org,ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  util-macros virtual/libx11 randrproto libxrender libxext,The X=
 Resize, Rotate and Reflect Extension, called RandR for short, brings the a=
bility to resize, rotate and reflect the root window of a screen. It is bas=
ed on the X Resize and Rotate Extension as specified in the Proceedings of =
the 2001 Usenix Technical Conference [RANDR].,N/A,http://xorg.freedesktop.o=
rg/releases/individual/lib/libXrandr-1.4.0.tar.bz2,Constantin Musca <consta=
ntinx.musca@intel.com>)
['libsamplerate0', '0.1.8', '0.1.8', 'GPLv2+', 'libs', 'unknown', 'r1', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  flac libsndfile1', 'None', 'None', 'An audio Sample=
 Rate Conversion library', 'MATCH', 'N/A', 'http://www.mega-nerd.com/SRC/li=
bsamplerate-0.1.8.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'No=
ne']
inserted (libsamplerate0,0.1.8,0.1.8,GPLv2+,libs,r1,None,unknown,None,MATCH=
,pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  flac libsndfile1,An audio Sample Rate Conversion=
 library,N/A,http://www.mega-nerd.com/SRC/libsamplerate-0.1.8.tar.gz,Cristi=
an Iorga <cristian.iorga@intel.com>)
['settings-daemon', '0.0+gitAUTOINC+0f174f4', '0.0+gitAUTOINC+9a99528', 'MI=
T-style', 'x11', 'http://svn.o-hand.com/view/matchbox/trunk/settings-daemon=
/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  gconf glib-2.0 gtk+ gconf gconf-native=
', 'http://bugzilla.openedhand.com/', 'None', 'Settings-daemon provides a b=
ridge between gconf and xsettings', 'UPDATE', 'N/A', 'git://git.yoctoprojec=
t.org/xsettings-daemon;protocol=3Dgit', 'Constantin Musca <constantinx.musc=
a@intel.com>', 'None']
inserted (settings-daemon,0.0+gitAUTOINC+0f174f4,0.0+gitAUTOINC+9a99528,MIT=
-style,x11,r0,None,http://svn.o-hand.com/view/matchbox/trunk/settings-daemo=
n/,http://bugzilla.openedhand.com/,UPDATE,pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gconf g=
lib-2.0 gtk+ gconf gconf-native,Settings-daemon provides a bridge between g=
conf and xsettings,N/A,git://git.yoctoproject.org/xsettings-daemon;protocol=
=3Dgit,Constantin Musca <constantinx.musca@intel.com>)
['lttng-tools', 'v2.1.0', 'v2.1.0', 'GPLv2 & LGPLv2.1', 'devel', 'unknown',=
 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  liburcu popt lttng-ust', 'None', 'None', 'The Linux trace =
toolkit is a suite of tools designed to extract program execution details f=
rom the Linux operating system and interpret them.', 'MATCH', 'N/A', 'git:/=
/git.lttng.org/lttng-tools.git;protocol=3Dgit', 'Bogdan Marinescu <bogdan.a=
=2Emarinescu@intel.com>', 'None']
inserted (lttng-tools,v2.1.0,v2.1.0,GPLv2 & LGPLv2.1,devel,r0,None,unknown,=
None,MATCH,autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  liburcu popt lttng-ust,The Linux trace toolkit is a sui=
te of tools designed to extract program execution details from the Linux op=
erating system and interpret them.,N/A,git://git.lttng.org/lttng-tools.git;=
protocol=3Dgit,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['sgmlspl-native', '1.03ii', '1.03ii', 'GPLv2+', 'libs', 'http://search.cpa=
n.org/src/DMEGG/SGMLSpm-1.03ii/DOC/HTML/SGMLSpm/sgmlspm.html', 'r3', '  per=
l-native perl-native', 'None', 'None', 'A simple post-processor for SGMLS a=
nd NSGMLS', 'MATCH', 'N/A', 'http://www.cpan.org/authors/id/D/DM/DMEGG/SGML=
Spm-1.03ii.tar.gz', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (sgmlspl-native,1.03ii,1.03ii,GPLv2+,libs,r3,None,http://search.cp=
an.org/src/DMEGG/SGMLSpm-1.03ii/DOC/HTML/SGMLSpm/sgmlspm.html,None,MATCH,  =
perl-native perl-native,A simple post-processor for SGMLS and NSGMLS,N/A,ht=
tp://www.cpan.org/authors/id/D/DM/DMEGG/SGMLSpm-1.03ii.tar.gz,Andrei Dinu <=
andrei.adrianx.dinu@intel.com>)
['xkbcomp', '1.2.4', '1.2.4', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8=
=2E0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxkbf=
ile', 'https://bugs.freedesktop.org', 'None', 'The xkbcomp keymap compiler =
converts a description of an XKB keymap into one of several output formats.=
 The most common use for xkbcomp is to create a compiled keymap file (.xkm =
extension) which can be read directly by XKB-capable X servers or utilities=
=2E', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/=
xkbcomp-1.2.4.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'Non=
e']
inserted (xkbcomp,1.2.4,1.2.4,MIT-X,x11/apps,r8.0,None,http://www.x.org/,ht=
tps://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-nati=
ve virtual/libx11 libxkbfile,The xkbcomp keymap compiler converts a descrip=
tion of an XKB keymap into one of several output formats. The most common u=
se for xkbcomp is to create a compiled keymap file (.xkm extension) which c=
an be read directly by XKB-capable X servers or utilities.,N/A,http://xorg.=
freedesktop.org/releases/individual/app/xkbcomp-1.2.4.tar.bz2,Laurentiu Pal=
cu <laurentiu.palcu@intel.com>)
['flac', '1.2.1', '1.2.1', 'GFDL-1.2 & GPLv2+ & LGPLv2.1+ & BSD', 'libs', '=
http://flac.sourceforge.net/', 'r4', 'autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  libogg', 'http://sourceforge.net/tracker/?group_id=3D13478&atid=3D113478=
', 'None', 'FLAC stands for Free Lossless Audio Codec, an audio format simi=
lar to MP3, but lossless.', 'MATCH', 'N/A', 'http://downloads.sourceforge.n=
et/flac/flac-1.2.1.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'N=
one']
inserted (flac,1.2.1,1.2.1,GFDL-1.2 & GPLv2+ & LGPLv2.1+ & BSD,libs,r4,None=
,http://flac.sourceforge.net/,http://sourceforge.net/tracker/?group_id=3D13=
478&atid=3D113478,MATCH,autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libogg,FLAC=
 stands for Free Lossless Audio Codec, an audio format similar to MP3, but =
lossless.,N/A,http://downloads.sourceforge.net/flac/flac-1.2.1.tar.gz,Crist=
ian Iorga <cristian.iorga@intel.com>)
['xf86miscproto', '0.9.3', '0.9.3', 'MIT', 'x11/libs', 'http://www.x.org', =
'r1', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire proto=
col for the XFree miscellaneous extension.  The XFree86-Misc extension prov=
ides a means to access input device configuration settings specific to the =
XFree86/Xorg DDX.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/i=
ndividual/proto/xf86miscproto-0.9.3.tar.bz2', 'Laurentiu Palcu <laurentiu.p=
alcu@intel.com>', 'None']
inserted (xf86miscproto,0.9.3,0.9.3,MIT,x11/libs,r1,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros,This package provides the wire protocol for the XFre=
e miscellaneous extension.  The XFree86-Misc extension provides a means to =
access input device configuration settings specific to the XFree86/Xorg DDX=
=2E,N/A,http://xorg.freedesktop.org/releases/individual/proto/xf86miscproto=
-0.9.3.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['xcb-util', '0.3.9', '0.3.9', 'MIT', 'x11/libs', 'http://xcb.freedesktop.o=
rg/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native', 'https=
://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'The xcb-util=
 module provides a number of libraries which sit on top of libxcb, the core=
 X protocol library, and some of the extension libraries. These experimenta=
l libraries provide convenience functions and interfaces which make the raw=
 X protocol more usable. Some of the libraries also provide client-side cod=
e which is not strictly part of the X protocol but which have traditionally=
 been provided by Xlib.', 'MATCH', 'N/A', 'http://xcb.freedesktop.org/dist/=
xcb-util-0.3.9.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'No=
ne']
inserted (xcb-util,0.3.9,0.3.9,MIT,x11/libs,r0,None,http://xcb.freedesktop.=
org/XcbUtil/,https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,MATCH=
,pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  libxcb gperf-native,The xcb-util module provides=
 a number of libraries which sit on top of libxcb, the core X protocol libr=
ary, and some of the extension libraries. These experimental libraries prov=
ide convenience functions and interfaces which make the raw X protocol more=
 usable. Some of the libraries also provide client-side code which is not s=
trictly part of the X protocol but which have traditionally been provided b=
y Xlib.,N/A,http://xcb.freedesktop.org/dist/xcb-util-0.3.9.tar.bz2,Laurenti=
u Palcu <laurentiu.palcu@intel.com>)
['libpam', '1.1.6', '1.1.6', 'GPLv2+ | BSD', 'base', 'https://fedorahosted.=
org/linux-pam/', 'r2', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bison flex =
flex-native cracklib', 'https://fedorahosted.org/linux-pam/newticket', 'Non=
e', 'Linux-PAM (Pluggable Authentication Modules for Linux), a flexible mec=
hanism for authenticating users', 'MATCH', 'N/A', 'http://linux-pam.org/lib=
rary/Linux-PAM-1.1.6.tar.bz2', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>=
', 'None']
inserted (libpam,1.1.6,1.1.6,GPLv2+ | BSD,base,r2,None,https://fedorahosted=
=2Eorg/linux-pam/,https://fedorahosted.org/linux-pam/newticket,MATCH,autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native vi=
rtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  bison flex flex-native cracklib,Linux-PAM=
 (Pluggable Authentication Modules for Linux), a flexible mechanism for aut=
henticating users,N/A,http://linux-pam.org/library/Linux-PAM-1.1.6.tar.bz2,=
Andrei Dinu <andrei.adrianx.dinu@intel.com>)
['libxsettings-client', '0.10', '0.10', 'MIT-style', 'x/libs', 'http://matc=
hbox-project.org/sources/optional-dependencies/', 'r5', 'autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native virtual/gettex=
t gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  virtual/libx11', 'http://bugzilla.openedhand.com/', '=
None', 'Libraries used for applications making use of the Xsettings configu=
ration setting propagation protocol. Controls setting of double click timeo=
ut, drag-and-drop threshold, and default foreground and background colors f=
or all applications running within a desktop.', 'MATCH', 'N/A', 'http://dow=
nloads.yoctoproject.org/releases/matchbox/optional-dependencies/Xsettings-c=
lient-0.10.tar.gz', 'Constantin Musca <constantinx.musca@intel.com>', 'None=
']
inserted (libxsettings-client,0.10,0.10,MIT-style,x/libs,r5,None,http://mat=
chbox-project.org/sources/optional-dependencies/,http://bugzilla.openedhand=
=2Ecom/,MATCH,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11,Librar=
ies used for applications making use of the Xsettings configuration setting=
 propagation protocol. Controls setting of double click timeout, drag-and-d=
rop threshold, and default foreground and background colors for all applica=
tions running within a desktop.,N/A,http://downloads.yoctoproject.org/relea=
ses/matchbox/optional-dependencies/Xsettings-client-0.10.tar.gz,Constantin =
Musca <constantinx.musca@intel.com>)
['mc', '4.8.7', '4.8.7', 'GPLv3', 'console/utils', 'http://www.midnight-com=
mander.org/', 'r0', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ncurses glib-2=
=2E0', 'None', 'None', 'Midnight Commander is an ncurses based file manager=
=2E', 'MATCH', 'N/A', 'http://www.midnight-commander.org/downloads/mc-4.8.7=
=2Etar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (mc,4.8.7,4.8.7,GPLv3,console/utils,r0,None,http://www.midnight-co=
mmander.org/,None,MATCH,autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ncurses gli=
b-2.0,Midnight Commander is an ncurses based file manager.,N/A,http://www.m=
idnight-commander.org/downloads/mc-4.8.7.tar.bz2,Saul Wold <sgw@linux.intel=
=2Ecom>)
['libtasn1', '2.14', '3.3', 'GPLv3+ & LGPLv2.1+', 'base', 'http://www.gnu.o=
rg/software/libtasn1/', 'r1', 'autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'Library for ASN=
=2E1 and DER manipulation', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/libtasn=
1/libtasn1-2.14.tar.gz', 'Constantin Musca <constantinx.musca@intel.com>', =
'None']
inserted (libtasn1,2.14,3.3,GPLv3+ & LGPLv2.1+,base,r1,None,http://www.gnu.=
org/software/libtasn1/,None,UPDATE,autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  ,Library for ASN.1 and DER mani=
pulation,N/A,ftp://ftp.gnu.org/gnu/libtasn1/libtasn1-2.14.tar.gz,Constantin=
 Musca <constantinx.musca@intel.com>)
['bluez4', '4.101', '5.4', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://www.bluez.=
org', 'r6', 'autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  udev libusb dbus-glib glib-2.0 libcheck readline alsa=
-lib', 'None', 'None', 'Linux Bluetooth stack V4 userland components.  Thes=
e include a system configurations, daemons, tools and system libraries.', '=
UPDATE', 'N/A', 'http://kernel.org/pub/linux/bluetooth/bluez-4.101.tar.gz',=
 'Cristian Iorga <cristian.iorga@intel.com>', 'BlueZ 5.x is not backward-co=
mpatible; components that interact with bluez not updated']
inserted (bluez4,4.101,5.4,GPLv2+ & LGPLv2.1+,libs,r6,None,http://www.bluez=
=2Eorg,None,UPDATE,autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  udev libusb dbus-glib glib-2.0 libcheck readlin=
e alsa-lib,Linux Bluetooth stack V4 userland components.  These include a s=
ystem configurations, daemons, tools and system libraries.,N/A,http://kerne=
l.org/pub/linux/bluetooth/bluez-4.101.tar.gz,Cristian Iorga <cristian.iorga=
@intel.com>)
['bluez5', '5.3', '5.4', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://www.bluez.or=
g', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  udev libusb dbus-glib glib-2.0 libchec=
k libical alsa-lib', 'None', 'None', 'Linux Bluetooth stack V5 userland com=
ponents.  These include a system configurations, daemons, tools and system =
libraries.', 'UPDATE', 'N/A', 'http://kernel.org/pub/linux/bluetooth/bluez-=
5.3.tar.gz', 'None', 'None']
inserted (bluez5,5.3,5.4,GPLv2+ & LGPLv2.1+,libs,r0,None,http://www.bluez.o=
rg,None,UPDATE,pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  udev libusb dbus-glib glib-2.0 lib=
check libical alsa-lib,Linux Bluetooth stack V5 userland components.  These=
 include a system configurations, daemons, tools and system libraries.,N/A,=
http://kernel.org/pub/linux/bluetooth/bluez-5.3.tar.gz,None)
['nativesdk-qt4-tools', '4.8.4', '4.8.4', 'LGPLv2.1 | GPLv3', 'libs', 'http=
://qt.nokia.com', 'r13.0', 'nativesdk-dbus qt4-tools-native virtual/i586-po=
kysdk-linux-gcc-crosssdk nativesdk-zlib nativesdk-libx11 virtual/nativesdk-=
i586-pokysdk-linux-compilerlibs chrpath-replacement-native qt4-native virtu=
al/nativesdk-libc', 'None', 'None', 'SDK tools for Qt/[X11|Mac|Embedded] ve=
rsion 4.x', 'MATCH', 'N/A', 'http://releases.qt-project.org/qt4/source/qt-e=
verywhere-opensource-src-4.8.4.tar.gz', 'Paul Eggleton <paul.eggleton@linux=
=2Eintel.com>', 'None']
inserted (nativesdk-qt4-tools,4.8.4,4.8.4,LGPLv2.1 | GPLv3,libs,r13.0,None,=
http://qt.nokia.com,None,MATCH,nativesdk-dbus qt4-tools-native virtual/i586=
-pokysdk-linux-gcc-crosssdk nativesdk-zlib nativesdk-libx11 virtual/natives=
dk-i586-pokysdk-linux-compilerlibs chrpath-replacement-native qt4-native vi=
rtual/nativesdk-libc,SDK tools for Qt/[X11|Mac|Embedded] version 4.x,N/A,ht=
tp://releases.qt-project.org/qt4/source/qt-everywhere-opensource-src-4.8.4.=
tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['xcb-util-renderutil', '0.3.8', '0.3.8', 'MIT', 'x11/libs', 'http://xcb.fr=
eedesktop.org/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-nati=
ve', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'T=
he xcb-util module provides a number of libraries which sit on top of libxc=
b, the core X protocol library, and some of the extension libraries. These =
experimental libraries provide convenience functions and interfaces which m=
ake the raw X protocol more usable. Some of the libraries also provide clie=
nt-side code which is not strictly part of the X protocol but which have tr=
aditionally been provided by Xlib.', 'MATCH', 'N/A', 'http://xcb.freedeskto=
p.org/dist/xcb-util-renderutil-0.3.8.tar.bz2', 'Saul Wold <sgw@linux.intel.=
com>', 'None']
inserted (xcb-util-renderutil,0.3.8,0.3.8,MIT,x11/libs,r0,None,http://xcb.f=
reedesktop.org/XcbUtil/,https://bugs.freedesktop.org/enter_bug.cgi?product=
=3DXCB,MATCH,pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  libxcb gperf-native,The xcb-util mod=
ule provides a number of libraries which sit on top of libxcb, the core X p=
rotocol library, and some of the extension libraries. These experimental li=
braries provide convenience functions and interfaces which make the raw X p=
rotocol more usable. Some of the libraries also provide client-side code wh=
ich is not strictly part of the X protocol but which have traditionally bee=
n provided by Xlib.,N/A,http://xcb.freedesktop.org/dist/xcb-util-renderutil=
-0.3.8.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['xorg-cf-files', '1.0.4', '1.0.4', 'MIT-X', 'x11/utils', 'http://www.x.org=
', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  font-util', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', 'None', 'Data files for the imake utility=
', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/util/xo=
rg-cf-files-1.0.4.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (xorg-cf-files,1.0.4,1.0.4,MIT-X,x11/utils,r1,None,http://www.x.or=
g,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  font-util,Data files for the imake utility,N/A,http://xorg=
=2Efreedesktop.org/releases/individual/util/xorg-cf-files-1.0.4.tar.gz,Saul=
 Wold <sgw@linux.intel.com>)
['libxvmc', '1.0.7', '1.0.7', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  util-macros libxext libxv videoproto', 'https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'XvMC extends the =
X Video extension (Xv) and enables hardware rendered motion compensation su=
pport.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/l=
ib/libXvMC-1.0.7.tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>'=
, 'None']
inserted (libxvmc,1.0.7,1.0.7,MIT,x11/libs,r0,1,http://www.x.org,https://bu=
gs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  util-macros libxext libxv videoproto,XvMC extends the X Video extensio=
n (Xv) and enables hardware rendered motion compensation support.,N/A,http:=
//xorg.freedesktop.org/releases/individual/lib/libXvMC-1.0.7.tar.bz2,Consta=
ntin Musca <constantinx.musca@intel.com>)
['ossp-uuid', '1.6.2', '1.6.2', 'MIT', 'libs', 'http://www.ossp.org/pkg/lib=
/uuid/', 'r2', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  ', 'None', 'None', 'OSSP uuid is a ISO-C:1999 appl=
ication programming interface (API) and corresponding command line interfac=
e (CLI) for the generation of DCE 1.1, ISO/IEC 11578:1996 and RFC 4122 comp=
liant Universally Unique Identifier (UUID). It supports DCE 1.1 variant UUI=
Ds of version 1 (time and node based), version 3 (name based, MD5), version=
 4 (random number based) and version 5 (name based, SHA-1).', 'MATCH', 'N/A=
', 'ftp://ftp.ossp.org/pkg/lib/uuid/uuid-1.6.2.tar.gz', 'Saul Wold <sgw@lin=
ux.intel.com>', 'None']
inserted (ossp-uuid,1.6.2,1.6.2,MIT,libs,r2,None,http://www.ossp.org/pkg/li=
b/uuid/,None,MATCH,autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ,OSSP uuid is a ISO-C:1999 application programm=
ing interface (API) and corresponding command line interface (CLI) for the =
generation of DCE 1.1, ISO/IEC 11578:1996 and RFC 4122 compliant Universall=
y Unique Identifier (UUID). It supports DCE 1.1 variant UUIDs of version 1 =
(time and node based), version 3 (name based, MD5), version 4 (random numbe=
r based) and version 5 (name based, SHA-1).,N/A,ftp://ftp.ossp.org/pkg/lib/=
uuid/uuid-1.6.2.tar.gz,Saul Wold <sgw@linux.intel.com>)
['mx', '1.4.7', '1.4.7', 'LGPLv2.1', 'base', 'unknown', 'r0', 'autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native virtual/=
gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  clutter-1.8 dbus-glib libxrandr gdk-pixbuf star=
tup-notification', 'None', 'None', 'Clutter based widget library', 'MATCH',=
 'N/A', 'https://github.com/downloads/clutter-project/mx/mx-1.4.7.tar.xz', =
'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (mx,1.4.7,1.4.7,LGPLv2.1,base,r0,None,unknown,None,MATCH,autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native virtu=
al/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  clutter-1.8 dbus-glib libxrandr gdk-pixbuf s=
tartup-notification,Clutter based widget library,N/A,https://github.com/dow=
nloads/clutter-project/mx/mx-1.4.7.tar.xz,Saul Wold <sgw@linux.intel.com>)
['xineramaproto', '1.2.1', '1.2.1', 'MIT & MIT-style', 'x11/libs', 'http://=
www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.fr=
eedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides th=
e wire protocol for the Xinerama extension.  This extension is used for ret=
rieving information about physical output devices which may be combined int=
o a single logical X screen.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org=
/releases/individual/proto/xineramaproto-1.2.1.tar.bz2', 'Laurentiu Palcu <=
laurentiu.palcu@intel.com>', 'None']
inserted (xineramaproto,1.2.1,1.2.1,MIT & MIT-style,x11/libs,r0,1,http://ww=
w.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkg=
config-native autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  util-macros,This package provides the wire protocol =
for the Xinerama extension.  This extension is used for retrieving informat=
ion about physical output devices which may be combined into a single logic=
al X screen.,N/A,http://xorg.freedesktop.org/releases/individual/proto/xine=
ramaproto-1.2.1.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['iptables', '1.4.17', '1.4.18', 'GPLv2+', 'base', 'http://www.netfilter.or=
g/', 'r1', 'autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'http://bugzilla.netfilter.org/', 'None', 'iptables=
 is the userspace command line program used to configure and control networ=
k packet filtering code in Linux.', 'UPDATE', 'N/A', 'http://netfilter.org/=
projects/iptables/files/iptables-1.4.17.tar.bz2', 'Cristian Iorga <cristian=
=2Eiorga@intel.com>', 'None']
inserted (iptables,1.4.17,1.4.18,GPLv2+,base,r1,None,http://www.netfilter.o=
rg/,http://bugzilla.netfilter.org/,UPDATE,autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  ,iptables is the userspa=
ce command line program used to configure and control network packet filter=
ing code in Linux.,N/A,http://netfilter.org/projects/iptables/files/iptable=
s-1.4.17.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['neard', '0.10+gitAUTOINC+eb486bf', '0.11+gitAUTOINC+77415f5', 'GPLv2', 'b=
ase', 'http://01.org/linux-nfc', 'r0', 'pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  dbus glib=
-2.0 libnl update-rc.d-native', 'None', 'None', 'A daemon for the Linux Nea=
r Field Communication stack', 'UPDATE', 'N/A', 'git://git.kernel.org/pub/sc=
m/network/nfc/neard.git;protocol=3Dgit', 'None', 'None']
inserted (neard,0.10+gitAUTOINC+eb486bf,0.11+gitAUTOINC+77415f5,GPLv2,base,=
r0,None,http://01.org/linux-nfc,None,UPDATE,pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  dbus =
glib-2.0 libnl update-rc.d-native,A daemon for the Linux Near Field Communi=
cation stack,N/A,git://git.kernel.org/pub/scm/network/nfc/neard.git;protoco=
l=3Dgit,None)
['xcb-util-wm', '0.3.9', '0.3.9', 'MIT', 'x11/libs', 'http://xcb.freedeskto=
p.org/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native', 'ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'The xcb-u=
til module provides a number of libraries which sit on top of libxcb, the c=
ore X protocol library, and some of the extension libraries. These experime=
ntal libraries provide convenience functions and interfaces which make the =
raw X protocol more usable. Some of the libraries also provide client-side =
code which is not strictly part of the X protocol but which have traditiona=
lly been provided by Xlib.', 'MATCH', 'N/A', 'http://xcb.freedesktop.org/di=
st/xcb-util-wm-0.3.9.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>=
', 'None']
inserted (xcb-util-wm,0.3.9,0.3.9,MIT,x11/libs,r0,None,http://xcb.freedeskt=
op.org/XcbUtil/,https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,MA=
TCH,pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  libxcb gperf-native,The xcb-util module provi=
des a number of libraries which sit on top of libxcb, the core X protocol l=
ibrary, and some of the extension libraries. These experimental libraries p=
rovide convenience functions and interfaces which make the raw X protocol m=
ore usable. Some of the libraries also provide client-side code which is no=
t strictly part of the X protocol but which have traditionally been provide=
d by Xlib.,N/A,http://xcb.freedesktop.org/dist/xcb-util-wm-0.3.9.tar.bz2,La=
urentiu Palcu <laurentiu.palcu@intel.com>)
['diffstat', '1.55', '1.57', 'MIT', 'devel', 'http://invisible-island.net/d=
iffstat/', 'r0', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None'=
, 'diffstat reads the output of diff and displays a histogram of the insert=
ions, deletions, and modifications per-file. It is useful for reviewing lar=
ge, complex patch files.', 'UPDATE', 'N/A', 'ftp://invisible-island.net/dif=
fstat/diffstat-1.55.tgz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>'=
, 'None']
inserted (diffstat,1.55,1.57,MIT,devel,r0,None,http://invisible-island.net/=
diffstat/,None,UPDATE,autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,diffstat rea=
ds the output of diff and displays a histogram of the insertions, deletions=
, and modifications per-file. It is useful for reviewing large, complex pat=
ch files.,N/A,ftp://invisible-island.net/diffstat/diffstat-1.55.tgz,Bogdan =
Marinescu <bogdan.a.marinescu@intel.com>)
['sudo', '1.8.6p7', '1.8.6p8', 'ISC & BSD & Zlib', 'admin', 'http://www.sud=
o.ws', 'r0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc    ', 'http://www.sudo.ws/bugs/', 'None', 'Sudo (supe=
ruser do) allows a system administrator to give certain users (or groups of=
 users) the ability to run some (or all) commands as root while logging all=
 commands and arguments.', 'UPDATE', 'N/A', 'http://ftp.sudo.ws/sudo/dist/s=
udo-1.8.6p7.tar.gz', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (sudo,1.8.6p7,1.8.6p8,ISC & BSD & Zlib,admin,r0,None,http://www.su=
do.ws,http://www.sudo.ws/bugs/,UPDATE,autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc    ,Sudo (superuser do) allow=
s a system administrator to give certain users (or groups of users) the abi=
lity to run some (or all) commands as root while logging all commands and a=
rguments.,N/A,http://ftp.sudo.ws/sudo/dist/sudo-1.8.6p7.tar.gz,Andrei Dinu =
<andrei.adrianx.dinu@intel.com>)
['calibrateproto', '0.0+gitAUTOINC+1da6fd1', '0.0+gitAUTOINC+1da6fd1', 'MIT=
-style', 'x11/libs', 'http://www.x.org', 'r2', 'pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  u=
til-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '=
None', 'This package provides the wire protocol for the Touchscreen calibra=
tion extension.', 'MATCH', 'N/A', 'git://anongit.freedesktop.org/git/xorg/p=
roto/calibrateproto;protocol=3Dgit', 'Constantin Musca <constantinx.musca@i=
ntel.com>', 'None']
inserted (calibrateproto,0.0+gitAUTOINC+1da6fd1,0.0+gitAUTOINC+1da6fd1,MIT-=
style,x11/libs,r2,None,http://www.x.org,https://bugs.freedesktop.org/enter_=
bug.cgi?product=3Dxorg,MATCH,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros,This pac=
kage provides the wire protocol for the Touchscreen calibration extension.,=
N/A,git://anongit.freedesktop.org/git/xorg/proto/calibrateproto;protocol=3D=
git,Constantin Musca <constantinx.musca@intel.com>)
['openssl', '1.0.1e', '1.0.1e', 'openssl', 'libs/network', 'http://www.open=
ssl.org/', 'r15.0', 'pkgconfig-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  perl-native-runtime ocf-linux', =
'http://www.openssl.org/news/vulnerabilities.html', 'None', 'Secure Socket =
Layer (SSL) binary and related cryptographic tools.', 'MATCH', 'N/A', 'http=
://www.openssl.org/source/openssl-1.0.1e.tar.gz', 'Radu Moisan <radu.moisan=
@intel.com>', '1.0.1 is beta 1.0.0c is latest']
inserted (openssl,1.0.1e,1.0.1e,openssl,libs/network,r15.0,None,http://www.=
openssl.org/,http://www.openssl.org/news/vulnerabilities.html,MATCH,pkgconf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  perl-native-runtime ocf-linux,Secure Socket Layer (SSL) bina=
ry and related cryptographic tools.,N/A,http://www.openssl.org/source/opens=
sl-1.0.1e.tar.gz,Radu Moisan <radu.moisan@intel.com>)
['sysvinit-inittab', '2.88dsf', 'INVALID', 'GPLv2', 'base', 'unknown', 'r9'=
, ' ', 'None', 'None', 'Inittab for sysvinit', 'MATCH', 'N/A', 'file://init=
tab', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (sysvinit-inittab,2.88dsf,INVALID,GPLv2,base,r9,None,unknown,None,=
MATCH, ,Inittab for sysvinit,N/A,file://inittab,Saul Wold <sgw@linux.intel.=
com>)
['logrotate', '3.8.1', '3.8.1', 'GPLv2', 'console/utils', 'https://fedoraho=
sted.org/releases/l/o/logrotate', 'r0', ' virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  coreutils popt', 'None', 'Non=
e', 'Rotates, compresses, removes and mails system log files', 'MATCH', 'N/=
A', 'https://fedorahosted.org/releases/l/o/logrotate/logrotate-3.8.1.tar.gz=
', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (logrotate,3.8.1,3.8.1,GPLv2,console/utils,r0,None,https://fedorah=
osted.org/releases/l/o/logrotate,None,MATCH, virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  coreutils popt,Rotates, co=
mpresses, removes and mails system log files,N/A,https://fedorahosted.org/r=
eleases/l/o/logrotate/logrotate-3.8.1.tar.gz,Robert Yang <liezhi.yang@windr=
iver.com>)
['gdb-cross-canadian-i586', '7.5.1', '7.5.1', 'GPLv3+', 'devel', 'http://ww=
w.gnu.org/software/gdb/', 'r0.0', 'autoconf-native automake-native libtool-=
native gnu-config-native  nativesdk-ncurses nativesdk-expat nativesdk-gette=
xt nativesdk-readline nativesdk-python chrpath-replacement-native', 'None',=
 'None', 'cross-canadian gdb for i586 target - GNU debugger', 'MATCH', 'N/A=
', 'ftp://ftp.gnu.org/gnu/gdb/gdb-7.5.1.tar.gz', 'Bogdan Marinescu <bogdan.=
a.marinescu@intel.com>', 'None']
inserted (gdb-cross-canadian-i586,7.5.1,7.5.1,GPLv3+,devel,r0.0,None,http:/=
/www.gnu.org/software/gdb/,None,MATCH,autoconf-native automake-native libto=
ol-native gnu-config-native  nativesdk-ncurses nativesdk-expat nativesdk-ge=
ttext nativesdk-readline nativesdk-python chrpath-replacement-native,cross-=
canadian gdb for i586 target - GNU debugger,N/A,ftp://ftp.gnu.org/gnu/gdb/g=
db-7.5.1.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['xauth', '1.0.7', '1.0.7', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxau libx=
ext libxmu', 'https://bugs.freedesktop.org', '1', 'X application to edit an=
d display the authorization information used in connecting to the X server.=
', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/xau=
th-1.0.7.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xauth,1.0.7,1.0.7,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https:/=
/bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native vi=
rtual/libx11 libxau libxext libxmu,X application to edit and display the au=
thorization information used in connecting to the X server.,N/A,http://xorg=
=2Efreedesktop.org/releases/individual/app/xauth-1.0.7.tar.bz2,Laurentiu Pa=
lcu <laurentiu.palcu@intel.com>)
['gsettings-desktop-schemas', '3.7.3', '3.8.0', 'LGPLv2.1', 'base', 'http:/=
/live.gnome.org/gsettings-desktop-schemas', 'r1', 'pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native vir=
tual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  glib-2.0 gnome-common-native hicolor-icon-=
theme gtk-update-icon-cache-native gconf gconf-native shared-mime-info-nati=
ve shared-mime-info glib-2.0-native', 'https://bugzilla.gnome.org/', 'None'=
, 'A collection of GSettings schemas for settings shared by various compone=
nts of a desktop', 'UPDATE', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources=
/gsettings-desktop-schemas/3.7/gsettings-desktop-schemas-3.7.3.tar.xz;name=
=3Darchive', 'None', 'None']
inserted (gsettings-desktop-schemas,3.7.3,3.8.0,LGPLv2.1,base,r1,None,http:=
//live.gnome.org/gsettings-desktop-schemas,https://bugzilla.gnome.org/,UPDA=
TE,pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 gnome-=
common-native hicolor-icon-theme gtk-update-icon-cache-native gconf gconf-n=
ative shared-mime-info-native shared-mime-info glib-2.0-native,A collection=
 of GSettings schemas for settings shared by various components of a deskto=
p,N/A,http://ftp.gnome.org/pub/GNOME/sources/gsettings-desktop-schemas/3.7/=
gsettings-desktop-schemas-3.7.3.tar.xz;name=3Darchive,None)
['acl', '2.2.51', '2.2.51', 'LGPLv2.1+ & GPLv2+', 'libs', 'http://savannah.=
nongnu.org/projects/acl/', 'r3', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native virtual/gettext gettext-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  a=
ttr', 'None', 'None', 'utilities for access control list', 'MATCH', 'N/A', =
'http://download.savannah.gnu.org/releases/acl/acl-2.2.51.src.tar.gz', 'Sau=
l Wold <sgw@linux.intel.com>', 'None']
inserted (acl,2.2.51,2.2.51,LGPLv2.1+ & GPLv2+,libs,r3,None,http://savannah=
=2Enongnu.org/projects/acl/,None,MATCH,autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  attr,utilities for access control list,N/A,http://download.savannah.gnu=
=2Eorg/releases/acl/acl-2.2.51.src.tar.gz,Saul Wold <sgw@linux.intel.com>)
['libexif', '0.6.21', '0.6.21', 'LGPLv2.1', 'libs', 'http://sourceforge.net=
/projects/libexif', 'r0', 'autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None=
', 'None', 'Library to read the extended image information (EXIF) from JPEG=
 pictures', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/libexif/libex=
if-0.6.21.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libexif,0.6.21,0.6.21,LGPLv2.1,libs,r0,None,http://sourceforge.ne=
t/projects/libexif,None,MATCH,autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Libr=
ary to read the extended image information (EXIF) from JPEG pictures,N/A,ht=
tp://downloads.sourceforge.net/libexif/libexif-0.6.21.tar.bz2,Saul Wold <sg=
w@linux.intel.com>)
['gcc', '4.7.2', '4.7.2', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel', 'h=
ttp://www.gnu.org/software/gcc/', 'r19', 'autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native virtual/gettext gettext-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  mpfr gmp libmpc zlib ', 'None', 'None', 'The GNU cc and gcc C compil=
ers.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.b=
z2', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (gcc,4.7.2,4.7.2,GPL-3.0-with-GCC-exception & GPLv3,devel,r19,None=
,http://www.gnu.org/software/gcc/,None,MATCH,autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native virtual/gettext gettext-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  mpfr gmp libmpc zlib ,The GNU cc and gcc C compilers.,N/A,ftp://f=
tp.gnu.org/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.bz2,Bogdan Marinescu <bogdan.a.m=
arinescu@intel.com>)
['lame', '3.99.5', '3.99.5', 'LGPLv2+', 'console/utils', 'http://sourceforg=
e.net/projects/lame/files/lame/', 'r1', 'autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  ', 'http://sourceforge.ne=
t/tracker/?group_id=3D290&atid=3D100290', 'None', 'LAME is an educational t=
ool to be used for learning about MP3 encoding.', 'MATCH', 'N/A', 'http://d=
ownloads.sourceforge.net/lame/lame-3.99.5.tar.gz', 'Radu Moisan <radu.moisa=
n@intel.com>', 'None']
inserted (lame,3.99.5,3.99.5,LGPLv2+,console/utils,r1,None,http://sourcefor=
ge.net/projects/lame/files/lame/,http://sourceforge.net/tracker/?group_id=
=3D290&atid=3D100290,MATCH,autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  ,LAME is an educational tool to be used=
 for learning about MP3 encoding.,N/A,http://downloads.sourceforge.net/lame=
/lame-3.99.5.tar.gz,Radu Moisan <radu.moisan@intel.com>)
['systemd-systemctl-native', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r=
6', ' ', 'None', 'None', 'Wrapper to enable of systemd services', 'MATCH', =
'N/A', 'file://systemctl', 'None', 'None']
inserted (systemd-systemctl-native,1.0,INVALID,MIT,base,r6,None,unknown,Non=
e,MATCH, ,Wrapper to enable of systemd services,N/A,file://systemctl,None)
['alsa-lib', '1.0.26', '1.0.27', 'LGPLv2.1 & GPLv2+', 'libs/multimedia', 'h=
ttp://www.alsa-project.org', 'r0', 'pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'https://b=
ugtrack.alsa-project.org/alsa-bug/login_page.php', 'None', 'Alsa sound libr=
ary', 'UPDATE', 'N/A', 'ftp://ftp.alsa-project.org/pub/lib/alsa-lib-1.0.26.=
tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (alsa-lib,1.0.26,1.0.27,LGPLv2.1 & GPLv2+,libs/multimedia,r0,None,=
http://www.alsa-project.org,https://bugtrack.alsa-project.org/alsa-bug/logi=
n_page.php,UPDATE,pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  ,Alsa sound library,N/A,ftp://f=
tp.alsa-project.org/pub/lib/alsa-lib-1.0.26.tar.bz2,Cristian Iorga <cristia=
n.iorga@intel.com>)
['libtool-cross', '2.4.2', '2.4.2', 'GPLv2 & LGPLv2.1', 'devel', 'http://ww=
w.gnu.org/software/libtool/libtool.html', 'r6.1', 'autoconf-native automake=
-native gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  libtool-native', 'None', 'None', 'This is GN=
U libtool, a generic library support script. Libtool hides the complexity o=
f generating special library types (such as shared libraries) behind a cons=
istent interface.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/libtool/libtool-=
2.4.2.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (libtool-cross,2.4.2,2.4.2,GPLv2 & LGPLv2.1,devel,r6.1,None,http:/=
/www.gnu.org/software/libtool/libtool.html,None,MATCH,autoconf-native autom=
ake-native gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  libtool-native,This is GNU libtool, a gen=
eric library support script. Libtool hides the complexity of generating spe=
cial library types (such as shared libraries) behind a consistent interface=
=2E,N/A,ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz,Bogdan Marinescu=
 <bogdan.a.marinescu@intel.com>)
['librsvg', '2.32.1', '2.37.0', 'LGPLv2+', 'x11/utils', 'http://ftp.gnome.o=
rg/pub/GNOME/sources/librsvg/', 'r12', 'pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ cair=
o libxml2 gnome-common-native hicolor-icon-theme gtk-update-icon-cache-nati=
ve gconf gconf-native shared-mime-info-native shared-mime-info qemu-native =
gtk-doc-stub-native libcroco', 'https://bugzilla.gnome.org/', 'None', 'Libr=
ary for rendering SVG files', 'UPDATE', 'N/A', 'http://ftp.gnome.org/pub/GN=
OME/sources/librsvg/2.32/librsvg-2.32.1.tar.bz2;name=3Darchive', 'Constanti=
n Musca <constantinx.musca@intel.com>', 'None']
inserted (librsvg,2.32.1,2.37.0,LGPLv2+,x11/utils,r12,None,http://ftp.gnome=
=2Eorg/pub/GNOME/sources/librsvg/,https://bugzilla.gnome.org/,UPDATE,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  gtk+ cairo libxml2 gnome-common-native hicolor-icon-the=
me gtk-update-icon-cache-native gconf gconf-native shared-mime-info-native =
shared-mime-info qemu-native gtk-doc-stub-native libcroco,Library for rende=
ring SVG files,N/A,http://ftp.gnome.org/pub/GNOME/sources/librsvg/2.32/libr=
svg-2.32.1.tar.bz2;name=3Darchive,Constantin Musca <constantinx.musca@intel=
=2Ecom>)
['libsndfile1', '1.0.25', '1.0.25', 'LGPLv2.1', 'libs/multimedia', 'http://=
www.mega-nerd.com/libsndfile', 'r1', 'pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  sqlite3 als=
a-lib', 'None', 'None', 'An audio format Conversion library', 'MATCH', 'N/A=
', 'http://www.mega-nerd.com/libsndfile/files/libsndfile-1.0.25.tar.gz', 'C=
ristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libsndfile1,1.0.25,1.0.25,LGPLv2.1,libs/multimedia,r1,None,http:/=
/www.mega-nerd.com/libsndfile,None,MATCH,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  sqlite3 =
alsa-lib,An audio format Conversion library,N/A,http://www.mega-nerd.com/li=
bsndfile/files/libsndfile-1.0.25.tar.gz,Cristian Iorga <cristian.iorga@inte=
l.com>)
['fstests', '0.1+gitAUTOINC+218b99d', '0.1+gitAUTOINC+218b99d', 'Zlib', 'de=
vel', 'http://www.o-hand.com', 'r0', 'autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  pango libxext libxft virtual=
/libx11 gtk+', 'None', 'None', 'Various benchmarning tests for X', 'MATCH',=
 '0.0+svnr426', 'git://git.yoctoproject.org/fstests;protocol=3Dgit', 'Bogda=
n Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (fstests,0.1+gitAUTOINC+218b99d,0.1+gitAUTOINC+218b99d,Zlib,devel,=
r0,None,http://www.o-hand.com,None,MATCH,autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  pango libxext libxft virt=
ual/libx11 gtk+,Various benchmarning tests for X,0.0+svnr426,git://git.yoct=
oproject.org/fstests;protocol=3Dgit,Bogdan Marinescu <bogdan.a.marinescu@in=
tel.com>)
['mkelfimage', '1.0.0+svn6637', '5914', 'GPLv2', 'devel', 'http://www.coreb=
oot.org/Mkelfimage', 'r2', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc   zlib', 'None', 'None', 'A utility to =
create ELF boot images from Linux kernel images', 'UPDATE', 'N/A', 'svn://c=
oreboot.org/coreboot/trunk/util;module=3DmkelfImage;protocol=3Dsvn', 'Saul =
Wold <sgw@linux.intel.com>', 'None']
inserted (mkelfimage,1.0.0+svn6637,5914,GPLv2,devel,r2,None,http://www.core=
boot.org/Mkelfimage,None,UPDATE,autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   zlib,A utility to create ELF boot=
 images from Linux kernel images,N/A,svn://coreboot.org/coreboot/trunk/util=
;module=3DmkelfImage;protocol=3Dsvn,Saul Wold <sgw@linux.intel.com>)
['gtk-engines', '2.20.2', '2.91.1', 'LGPLv2.1', 'x11/base', 'http://www.gno=
me.org/', 'r3', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  gtk+ gnome-common-native hicolor=
-icon-theme gtk-update-icon-cache-native gconf gconf-native shared-mime-inf=
o-native shared-mime-info', 'https://bugzilla.gnome.org/', 'None', 'GTK the=
me engines', 'UPDATE', '2.91.1', 'http://ftp.gnome.org/pub/GNOME/sources/gt=
k-engines/2.20/gtk-engines-2.20.2.tar.bz2;name=3Darchive', 'Constantin Musc=
a <constantinx.musca@intel.com>', '2.91.1 is a 3.0 beta release']
inserted (gtk-engines,2.20.2,2.91.1,LGPLv2.1,x11/base,r3,None,http://www.gn=
ome.org/,https://bugzilla.gnome.org/,UPDATE,pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ =
gnome-common-native hicolor-icon-theme gtk-update-icon-cache-native gconf g=
conf-native shared-mime-info-native shared-mime-info,GTK theme engines,2.91=
=2E1,http://ftp.gnome.org/pub/GNOME/sources/gtk-engines/2.20/gtk-engines-2.=
20.2.tar.bz2;name=3Darchive,Constantin Musca <constantinx.musca@intel.com>)
['python-dbus', '1.1.1', '1.1.1', 'MIT', 'devel/python', 'http://www.freede=
sktop.org/Software/dbus', 'r2', 'pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  expat dbus dbus-=
glib virtual/libintl python-pyrex-native python-native python  python-nativ=
e ', 'None', 'None', 'Python bindings for DBus, a socket-based message bus =
system for interprocess communication', 'MATCH', 'N/A', 'http://dbus.freede=
sktop.org/releases/dbus-python/dbus-python-1.1.1.tar.gz', 'Bogdan Marinescu=
 <bogdan.a.marinescu@intel.com>', 'None']
inserted (python-dbus,1.1.1,1.1.1,MIT,devel/python,r2,None,http://www.freed=
esktop.org/Software/dbus,None,MATCH,pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  expat dbus db=
us-glib virtual/libintl python-pyrex-native python-native python  python-na=
tive ,Python bindings for DBus, a socket-based message bus system for inter=
process communication,N/A,http://dbus.freedesktop.org/releases/dbus-python/=
dbus-python-1.1.1.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['libcheck', '0.9.9', '0.9.10', 'LGPLv2.1+', 'devel', 'http://check.sourcef=
orge.net/', 'r1', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'Check Test=
 Framework', 'UPDATE', 'N/A', 'http://downloads.sourceforge.net/check/check=
-0.9.9.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libcheck,0.9.9,0.9.10,LGPLv2.1+,devel,r1,None,http://check.source=
forge.net/,None,UPDATE,pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  ,Check Test Framework,N/A,=
http://downloads.sourceforge.net/check/check-0.9.9.tar.gz,Saul Wold <sgw@li=
nux.intel.com>)
['eee-acpi-scripts', '1.1.12+gitAUTOINC+9d4cded', '1.1.12+gitAUTOINC+4a6e49=
4', 'GPLv2', 'base', 'http://alioth.debian.org/projects/debian-eeepc/', 'r0=
', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  ', 'None', 'None', 'eeePC specific ACPI scripts', 'MATCH', '1.1.12=
+9d4cdedca25b396405f8587f9c4fbf8229e041c2', 'git://git.debian.org/git/debia=
n-eeepc/eeepc-acpi-scripts.git;protocol=3Dgit', 'Radu Moisan <radu.moisan@i=
ntel.com>', 'None']
inserted (eee-acpi-scripts,1.1.12+gitAUTOINC+9d4cded,1.1.12+gitAUTOINC+4a6e=
494,GPLv2,base,r0,None,http://alioth.debian.org/projects/debian-eeepc/,None=
,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  ,eeePC specific ACPI scripts,1.1.12+9d4cdedca25b396405f8587f9c4=
fbf8229e041c2,git://git.debian.org/git/debian-eeepc/eeepc-acpi-scripts.git;=
protocol=3Dgit,Radu Moisan <radu.moisan@intel.com>)
['gperf', '3.0.4', '3.0.4', 'GPLv3+', 'base', 'http://www.gnu.org/software/=
gperf', 'r0', 'autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ', 'None', 'None', 'GNU gperf is a perfect hash fun=
ction generator', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gperf/gperf-3.0.4.=
tar.gz', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (gperf,3.0.4,3.0.4,GPLv3+,base,r0,None,http://www.gnu.org/software=
/gperf,None,MATCH,autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ,GNU gperf is a perfect hash function generator,=
N/A,ftp://ftp.gnu.org/gnu/gperf/gperf-3.0.4.tar.gz,Andrei Dinu <andrei.adri=
anx.dinu@intel.com>)
['owl-video', '0.1+gitAUTOINC+07ab48f', '0.1+gitAUTOINC+07ab48f', 'LGPLv2.1=
 & GPLv2+', 'x11', 'http://o-hand.com/', 'r2', 'pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  l=
ibowl-av', 'http://bugzilla.o-hand.com/', 'None', 'OpenedHand Widget Librar=
y video widget', 'MATCH', 'N/A', 'git://git.yoctoproject.org/owl-video;prot=
ocol=3Dgit', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (owl-video,0.1+gitAUTOINC+07ab48f,0.1+gitAUTOINC+07ab48f,LGPLv2.1 =
& GPLv2+,x11,r2,None,http://o-hand.com/,http://bugzilla.o-hand.com/,MATCH,p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  libowl-av,OpenedHand Widget Library video widget,N=
/A,git://git.yoctoproject.org/owl-video;protocol=3Dgit,Constantin Musca <co=
nstantinx.musca@intel.com>)
['ptest-runner', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r0', ' ', 'No=
ne', 'None', 'ptest-runner version 1.0-r0', 'MATCH', 'N/A', 'file://ptest-r=
unner', 'None', 'None']
inserted (ptest-runner,1.0,INVALID,MIT,base,r0,None,unknown,None,MATCH, ,pt=
est-runner version 1.0-r0,N/A,file://ptest-runner,None)
['linux-libc-headers-yocto', '3.4+git-AUTOINC+a1cdb60', '36+git-AUTOINC+329=
d52e', 'GPLv2', 'devel', 'unknown', 'r6', '  unifdef-native', 'None', 'None=
', "Sanitized set of kernel headers for the C library's use.", 'UPDATE', 'N=
/A', 'git://git.yoctoproject.org/linux-yocto-3.4.git;protocol=3Dgit;nocheck=
out=3D1;branch=3Dstandard/base,meta;name=3Dmachine,meta', 'Bruce Ashfield <=
bruce.ashfield@windriver.com>', 'None']
inserted (linux-libc-headers-yocto,3.4+git-AUTOINC+a1cdb60,36+git-AUTOINC+3=
29d52e,GPLv2,devel,r6,None,unknown,None,UPDATE,  unifdef-native,Sanitized s=
et of kernel headers for the C library's use.,N/A,git://git.yoctoproject.or=
g/linux-yocto-3.4.git;protocol=3Dgit;nocheckout=3D1;branch=3Dstandard/base,=
meta;name=3Dmachine,meta,Bruce Ashfield <bruce.ashfield@windriver.com>)
['linux-yocto-tiny', '3.8.4+gitAUTOINC+27b63fd', '3.8.4+gitAUTOINC+ddd23a8'=
, 'GPLv2', 'kernel', 'unknown', 'r4.1', '  virtual/i586-poky-linux-gcc kmod=
-native depmodwrapper-cross xz-native', 'None', 'None', 'Yocto Kernel', 'MA=
TCH', 'N/A', 'git://git.yoctoproject.org/linux-yocto-3.8.git;protocol=3Dgit=
;bareclone=3D1;branch=3Dstandard/tiny/base,meta;name=3Dmachine,meta', 'Saul=
 Wold <sgw@linux.intel.com>', 'None']
inserted (linux-yocto-tiny,3.8.4+gitAUTOINC+27b63fd,3.8.4+gitAUTOINC+ddd23a=
8,GPLv2,kernel,r4.1,None,unknown,None,MATCH,  virtual/i586-poky-linux-gcc k=
mod-native depmodwrapper-cross xz-native,Yocto Kernel,N/A,git://git.yoctopr=
oject.org/linux-yocto-3.8.git;protocol=3Dgit;bareclone=3D1;branch=3Dstandar=
d/tiny/base,meta;name=3Dmachine,meta,Saul Wold <sgw@linux.intel.com>)
['mesa', '9.0.2', '9.1.1', 'MIT', 'x11', 'http://mesa3d.org', 'r9.1', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  expat makedepend-native flex-native bison-native  pyt=
hon-native  libdrm expat udev xf86driproto glproto virtual/libx11 libxext l=
ibxxf86vm libxdamage libxfixes dri2proto wayland', 'https://bugs.freedeskto=
p.org', '2', 'Mesa is an open-source implementation of the OpenGL specifica=
tion - a system for rendering interactive 3D graphics.  A variety of device=
 drivers allows Mesa to be used in many different environments ranging from=
 software emulation to complete hardware acceleration for modern GPUs. Mesa=
 is used as part of the overall Direct Rendering Infrastructure and X.org e=
nvironment.', 'UPDATE', 'N/A', 'ftp://ftp.freedesktop.org/pub/mesa/9.0.2/Me=
saLib-9.0.2.tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>', 'No=
ne']
inserted (mesa,9.0.2,9.1.1,MIT,x11,r9.1,2,http://mesa3d.org,https://bugs.fr=
eedesktop.org,UPDATE,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  expat makedepend-native flex=
-native bison-native  python-native  libdrm expat udev xf86driproto glproto=
 virtual/libx11 libxext libxxf86vm libxdamage libxfixes dri2proto wayland,M=
esa is an open-source implementation of the OpenGL specification - a system=
 for rendering interactive 3D graphics.  A variety of device drivers allows=
 Mesa to be used in many different environments ranging from software emula=
tion to complete hardware acceleration for modern GPUs. Mesa is used as par=
t of the overall Direct Rendering Infrastructure and X.org environment.,N/A=
,ftp://ftp.freedesktop.org/pub/mesa/9.0.2/MesaLib-9.0.2.tar.bz2,Constantin =
Musca <constantinx.musca@intel.com>)
['compositeproto', '0.4.2', '0.4.2', 'MIT & MIT-style', 'x11/libs', 'http:/=
/www.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.f=
reedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides t=
he wire protocol for the X composite extension.  The X composite extension =
provides three related mechanisms for compositing and off-screen storage.',=
 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/com=
positeproto-0.4.2.tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>=
', 'None']
inserted (compositeproto,0.4.2,0.4.2,MIT & MIT-style,x11/libs,r1,1,http://w=
ww.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  util-macros,This package provides the wire protocol=
 for the X composite extension.  The X composite extension provides three r=
elated mechanisms for compositing and off-screen storage.,N/A,http://xorg.f=
reedesktop.org/releases/individual/proto/compositeproto-0.4.2.tar.bz2,Const=
antin Musca <constantinx.musca@intel.com>)
['libxfixes', '5.0', '5.0', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros virtual/libx11 xproto fixesproto=
 xextproto', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '=
1', 'X applications have often needed to work around various shortcomings i=
n the core X window system.  This extension is designed to provide the mini=
mal server-side support necessary to eliminate problems caused by these wor=
karounds.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individua=
l/lib/libXfixes-5.0.tar.bz2', 'Constantin Musca <constantinx.musca@intel.co=
m>', 'None']
inserted (libxfixes,5.0,5.0,MIT-style,x11/libs,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  util-macros virtual/libx11 xproto fixesproto xextproto,X applicati=
ons have often needed to work around various shortcomings in the core X win=
dow system.  This extension is designed to provide the minimal server-side =
support necessary to eliminate problems caused by these workarounds.,N/A,ht=
tp://xorg.freedesktop.org/releases/individual/lib/libXfixes-5.0.tar.bz2,Con=
stantin Musca <constantinx.musca@intel.com>)
['man', '1.6g', '1.6g', 'GPLv2', 'console/utils', 'http://primates.ximian.c=
om/~flucifredi/man', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  groff less', 'None', 'None', 'A set of doc=
umentation tools: man, apropos and whatis', 'MATCH', 'N/A', 'http://primate=
s.ximian.com/~flucifredi/man/man-1.6g.tar.gz', 'Saul Wold <sgw@linux.intel.=
com>', 'None']
inserted (man,1.6g,1.6g,GPLv2,console/utils,r1,None,http://primates.ximian.=
com/~flucifredi/man,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  groff less,A set of documentation tools=
: man, apropos and whatis,N/A,http://primates.ximian.com/~flucifredi/man/ma=
n-1.6g.tar.gz,Saul Wold <sgw@linux.intel.com>)
['bind', '9.8.1', '9.9.2-P2', 'ISC & BSD', 'console/network', 'http://www.i=
sc.org/sw/bind/', 'r5', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  openssl libcap update-rc.d-native', 'None=
', 'None', 'ISC Internet Domain Name Server', 'UPDATE', 'N/A', 'ftp://ftp.i=
sc.org/isc/bind9/9.8.1/bind-9.8.1.tar.gz', 'Kai Kang <kai.kang@windriver.co=
m>', 'None']
inserted (bind,9.8.1,9.9.2-P2,ISC & BSD,console/network,r5,None,http://www.=
isc.org/sw/bind/,None,UPDATE,autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  openssl libcap update-rc.d-native,ISC=
 Internet Domain Name Server,N/A,ftp://ftp.isc.org/isc/bind9/9.8.1/bind-9.8=
=2E1.tar.gz,Kai Kang <kai.kang@windriver.com>)
['libx11', '1.5.0', '1.5.99.901', 'MIT & MIT-style & BSD', 'x11/libs', 'htt=
p://www.x.org', 'r10.3', 'pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  util-macros xproto xextproto xtrans libxcb kbproto inputproto xprot=
o-native', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1'=
, "This package provides a client interface to the X Window System, otherwi=
se known as 'Xlib'.  It provides a complete API for the basic functions of =
the window system.", 'UPDATE', 'N/A', 'http://xorg.freedesktop.org/releases=
/individual/lib/libX11-1.5.0.tar.bz2', 'Constantin Musca <constantinx.musca=
@intel.com>', 'None']
inserted (libx11,1.5.0,1.5.99.901,MIT & MIT-style & BSD,x11/libs,r10.3,1,ht=
tp://www.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,UP=
DATE,pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros x=
proto xextproto xtrans libxcb kbproto inputproto xproto-native,This package=
 provides a client interface to the X Window System, otherwise known as 'Xl=
ib'.  It provides a complete API for the basic functions of the window syst=
em.,N/A,http://xorg.freedesktop.org/releases/individual/lib/libX11-1.5.0.ta=
r.bz2,Constantin Musca <constantinx.musca@intel.com>)
['libxkbfile', '1.0.8', '1.0.8', 'MIT-style', 'x11/libs', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros virtual/libx11 kbproto', 'h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libxkbfile=
 provides an interface to read and manipulate description files for XKB, th=
e X11 keyboard configuration extension.', 'MATCH', 'N/A', 'http://xorg.free=
desktop.org/releases/individual/lib/libxkbfile-1.0.8.tar.bz2', 'Constantin =
Musca <constantinx.musca@intel.com>', 'None']
inserted (libxkbfile,1.0.8,1.0.8,MIT-style,x11/libs,r0,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  util-macros virtual/libx11 kbproto,libxkbfile provides an int=
erface to read and manipulate description files for XKB, the X11 keyboard c=
onfiguration extension.,N/A,http://xorg.freedesktop.org/releases/individual=
/lib/libxkbfile-1.0.8.tar.bz2,Constantin Musca <constantinx.musca@intel.com=
>)
['fotowall', '0.9', '0.9', 'GPLv2+', 'x11/apps', 'http://www.enricoros.com/=
opensource/fotowall', 'r4', 'qt4-tools-native qt4-x11  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None=
', 'Fotowall is a creative tool that allows you to layout your photos or pi=
ctures in a personal way. You can add pictures, then resize, move, change c=
olors, text, shadows, etc..', 'MATCH', 'N/A', 'http://qt-apps.org/CONTENT/c=
ontent-files/71316-Fotowall-0.9.tar.bz2', 'Radu Moisan <radu.moisan@intel.c=
om>', 'None']
inserted (fotowall,0.9,0.9,GPLv2+,x11/apps,r4,None,http://www.enricoros.com=
/opensource/fotowall,None,MATCH,qt4-tools-native qt4-x11  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Fotowall is =
a creative tool that allows you to layout your photos or pictures in a pers=
onal way. You can add pictures, then resize, move, change colors, text, sha=
dows, etc..,N/A,http://qt-apps.org/CONTENT/content-files/71316-Fotowall-0.9=
=2Etar.bz2,Radu Moisan <radu.moisan@intel.com>)
['pciutils', '3.1.10', '3.2.0', 'GPLv2+', 'console/utils', 'http://atrey.ka=
rlin.mff.cuni.cz/~mj/pciutils.shtml', 'r0', ' virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  zlib', 'None', 'None', 'T=
he PCI Utilities package contains a library for portable access to PCI bus =
configuration space and several utilities based on this library.', 'UPDATE'=
, 'N/A', 'http://kernel.org/pub/software/utils/pciutils/pciutils-3.1.10.tar=
=2Ebz2', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (pciutils,3.1.10,3.2.0,GPLv2+,console/utils,r0,None,http://atrey.k=
arlin.mff.cuni.cz/~mj/pciutils.shtml,None,UPDATE, virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib,The PCI Utilitie=
s package contains a library for portable access to PCI bus configuration s=
pace and several utilities based on this library.,N/A,http://kernel.org/pub=
/software/utils/pciutils/pciutils-3.1.10.tar.bz2,Constantin Musca <constant=
inx.musca@intel.com>)
['libfile-checktree-perl', '4.41', '4.41', 'Artistic-1.0 | GPL-1.0+', 'libs=
', 'http://search.cpan.org/~flora/File-CheckTree/', 'r0', ' virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-=
native', 'None', 'None', 'The validate() routine takes a single multiline s=
tring consisting of directives, each containing a filename plus a file test=
 to try on it. (The file test may also be a "cd", causing subsequent relati=
ve filenames to be interpreted relative to that directory.) After the file =
test you may put || die to make it a fatal error if the file test fails. Th=
e default is || warn. The file test may optionally have a "!\' prepended to=
 test for the opposite condition. If you do a cd and then list some relativ=
e filenames, you may want to indent them slightly for readability. If you s=
upply your own die() or warn() message, you can use $file to interpolate th=
e filename. Filetests may be bunched: "-rwx" tests for all of -r, -w, and -=
x. Only the first failed test of the bunch will produce a warning. The rout=
ine returns the number of warnings issued.', 'MATCH', 'N/A', 'http://search=
=2Ecpan.org/CPAN/authors/id/F/FL/FLORA/File-CheckTree-4.41.tar.gz', 'Saul W=
old <sgw@linux.intel.com>', 'None']
inserted (libfile-checktree-perl,4.41,4.41,Artistic-1.0 | GPL-1.0+,libs,r0,=
None,http://search.cpan.org/~flora/File-CheckTree/,None,MATCH, virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl pe=
rl-native,The validate() routine takes a single multiline string consisting=
 of directives, each containing a filename plus a file test to try on it. (=
The file test may also be a "cd", causing subsequent relative filenames to =
be interpreted relative to that directory.) After the file test you may put=
 || die to make it a fatal error if the file test fails. The default is || =
warn. The file test may optionally have a "!' prepended to test for the opp=
osite condition. If you do a cd and then list some relative filenames, you =
may want to indent them slightly for readability. If you supply your own di=
e() or warn() message, you can use $file to interpolate the filename. Filet=
ests may be bunched: "-rwx" tests for all of -r, -w, and -x. Only the first=
 failed test of the bunch will produce a warning. The routine returns the n=
umber of warnings issued.,N/A,http://search.cpan.org/CPAN/authors/id/F/FL/F=
LORA/File-CheckTree-4.41.tar.gz,Saul Wold <sgw@linux.intel.com>)
['foomatic-filters', '4.0.17', '4.0.17', 'GPLv2+', 'base', 'unknown', 'r1',=
 'autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc   cups perl libxml2', 'None', 'None', 'Foomatic is a printer data=
base designed to make it easier to set up common printers for use with UNIX=
-like operating systems.It provides the "glue" between a print spooler (lik=
e CUPS or lpr) and the printer, by processing files sent to the printer.  T=
his package consists of filters used by the printer spoolers to convert the=
 incoming PostScript data into the printer\'s native format using a printer=
-specific, but spooler-independent PPD file. ', 'MATCH', 'N/A', 'http://www=
=2Eopenprinting.org/download/foomatic/foomatic-filters-4.0.17.tar.gz', 'Sau=
l Wold <sgw@linux.intel.com>', 'None']
inserted (foomatic-filters,4.0.17,4.0.17,GPLv2+,base,r1,None,unknown,None,M=
ATCH,autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc   cups perl libxml2,Foomatic is a printer database designed to=
 make it easier to set up common printers for use with UNIX-like operating =
systems.It provides the "glue" between a print spooler (like CUPS or lpr) a=
nd the printer, by processing files sent to the printer.  This package cons=
ists of filters used by the printer spoolers to convert the incoming PostSc=
ript data into the printer's native format using a printer-specific, but sp=
ooler-independent PPD file. ,N/A,http://www.openprinting.org/download/fooma=
tic/foomatic-filters-4.0.17.tar.gz,Saul Wold <sgw@linux.intel.com>)
['qt-mobility-embedded', '1.2.0', '1.2.0', 'LGPLv2.1', 'libs', 'http://qt.n=
okia.com', 'r8', 'qt4-tools-native qt4-embedded  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  qt4-embedded pulseaudi=
o bluez4', 'None', 'None', 'Qt Mobility 1.2.0 - version for Qt/Embedded', '=
MATCH', 'N/A', 'http://get.qt.nokia.com/qt/add-ons/qt-mobility-opensource-s=
rc-1.2.0.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (qt-mobility-embedded,1.2.0,1.2.0,LGPLv2.1,libs,r8,None,http://qt.=
nokia.com,None,MATCH,qt4-tools-native qt4-embedded  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  qt4-embedded pulsea=
udio bluez4,Qt Mobility 1.2.0 - version for Qt/Embedded,N/A,http://get.qt.n=
okia.com/qt/add-ons/qt-mobility-opensource-src-1.2.0.tar.gz,Paul Eggleton <=
paul.eggleton@linux.intel.com>)
['libuser', '0.58', '0.58', 'LGPLv2', 'base', 'https://fedorahosted.org/lib=
user/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  popt libpam glib-2.0=
 xz-native docbook-utils-native linuxdoc-tools-native python  python-native=
 ', 'https://fedorahosted.org/libuser/newticket', 'None', 'The libuser libr=
ary implements a standardized interface for manipulating and administering =
user and group accounts', 'MATCH', 'N/A', 'https://fedorahosted.org/release=
s/l/i/libuser/libuser-0.58.tar.xz', 'Constantin Musca <constantinx.musca@in=
tel.com>', 'None']
inserted (libuser,0.58,0.58,LGPLv2,base,r0,None,https://fedorahosted.org/li=
buser/,https://fedorahosted.org/libuser/newticket,MATCH,autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native virtual/gettext=
 gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  popt libpam glib-2.0 xz-native docbook-utils-native li=
nuxdoc-tools-native python  python-native ,The libuser library implements a=
 standardized interface for manipulating and administering user and group a=
ccounts,N/A,https://fedorahosted.org/releases/l/i/libuser/libuser-0.58.tar.=
xz,Constantin Musca <constantinx.musca@intel.com>)
['lsb', '4.1', '1.4', 'GPLv2+', 'console/utils', 'http://prdownloads.source=
forge.net/lsb', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'None', 'None', 'LSB support for OpenEmbedde=
d', 'UPDATE', 'N/A', 'http://downloads.sourceforge.net/project/lsb/lsb_rele=
ase/1.4/lsb-release-1.4.tar.gz', 'Yi Zhao <yi.zhao@windriver.com>', 'None']
inserted (lsb,4.1,1.4,GPLv2+,console/utils,r2,None,http://prdownloads.sourc=
eforge.net/lsb,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ,LSB support for OpenEmbedded,N/A,http://do=
wnloads.sourceforge.net/project/lsb/lsb_release/1.4/lsb-release-1.4.tar.gz,=
Yi Zhao <yi.zhao@windriver.com>)
['libconvert-asn1-perl', '0.26', '0.26', 'Artistic-1.0 | GPL-1.0+', 'libs',=
 'unknown', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc   perl perl-native', 'None', 'None', 'Convert::ASN1 =
- ASN.1 Encode/Decode library', 'MATCH', 'N/A', 'http://search.cpan.org/CPA=
N/authors/id/G/GB/GBARR/Convert-ASN1-0.26.tar.gz', 'Bogdan Marinescu <bogda=
n.a.marinescu@intel.com>', 'None']
inserted (libconvert-asn1-perl,0.26,0.26,Artistic-1.0 | GPL-1.0+,libs,r0,No=
ne,unknown,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc   perl perl-native,Convert::ASN1 - ASN.1 Encode/D=
ecode library,N/A,http://search.cpan.org/CPAN/authors/id/G/GB/GBARR/Convert=
-ASN1-0.26.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['opensp', '1.5.2', '1.5.2', 'BSD', 'libs', 'http://openjade.sourceforge.ne=
t', 'r1', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'An S=
GML parser used by the OpenJade suite of utilities.', 'MATCH', 'N/A', 'http=
://downloads.sourceforge.net/openjade/OpenSP-1.5.2.tar.gz', 'Andrei Dinu <a=
ndrei.adrianx.dinu@intel.com>', 'None']
inserted (opensp,1.5.2,1.5.2,BSD,libs,r1,None,http://openjade.sourceforge.n=
et,None,MATCH,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  ,An SGML parser used =
by the OpenJade suite of utilities.,N/A,http://downloads.sourceforge.net/op=
enjade/OpenSP-1.5.2.tar.gz,Andrei Dinu <andrei.adrianx.dinu@intel.com>)
['acpid', '1.0.10', '1.0.10', 'GPLv2+', 'base', 'http://sourceforge.net/pro=
jects/acpid/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc   update-rc.d-native', 'http://sourceforge.net/tr=
acker/?group_id=3D33140&atid=3D407341', 'None', 'A daemon for delivering AC=
PI events.', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/acpid/acpid-=
1.0.10.tar.gz', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (acpid,1.0.10,1.0.10,GPLv2+,base,r0,None,http://sourceforge.net/pr=
ojects/acpid/,http://sourceforge.net/tracker/?group_id=3D33140&atid=3D40734=
1,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc   update-rc.d-native,A daemon for delivering ACPI events.,N/A,h=
ttp://downloads.sourceforge.net/acpid/acpid-1.0.10.tar.gz,Radu Moisan <radu=
=2Emoisan@intel.com>)
['kbd', '1.15.2', '1.15.2', 'GPLv2+', 'base', 'unknown', 'r4', 'autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native virtual=
/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc   virtual/update-alternatives', 'None', 'None',=
 'This package contains keytable files and keyboard utilities', 'MATCH', 'N=
/A', 'http://kernel.org/pub/linux/utils/kbd/kbd-1.15.2.tar.bz2', 'Saul Wold=
 <sgw@linux.intel.com>', 'None']
inserted (kbd,1.15.2,1.15.2,GPLv2+,base,r4,None,unknown,None,MATCH,autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native virt=
ual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc   virtual/update-alternatives,This package c=
ontains keytable files and keyboard utilities,N/A,http://kernel.org/pub/lin=
ux/utils/kbd/kbd-1.15.2.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['kexec-tools', '2.0.3', '2.0.4', 'GPLv2', 'kernel/userland', 'http://kerne=
l.org/pub/linux/utils/kernel/kexec/', 'r0', 'autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib xz', 'None', 'No=
ne', 'Kexec is a fast reboot feature that lets you reboot to a new Linux ke=
rnel', 'UPDATE', 'N/A', 'http://kernel.org/pub/linux/utils/kernel/kexec/kex=
ec-tools-2.0.3.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', =
'None']
inserted (kexec-tools,2.0.3,2.0.4,GPLv2,kernel/userland,r0,None,http://kern=
el.org/pub/linux/utils/kernel/kexec/,None,UPDATE,autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib xz,Kexec is =
a fast reboot feature that lets you reboot to a new Linux kernel,N/A,http:/=
/kernel.org/pub/linux/utils/kernel/kexec/kexec-tools-2.0.3.tar.gz,Bogdan Ma=
rinescu <bogdan.a.marinescu@intel.com>)
['tcl', '8.5.13', '8.6.0', 'BSD-3-Clause', 'devel/tcltk', 'http://tcl.sourc=
eforge.net', 'r0', 'autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  tcl-native', 'None', 'None', 'Tool Command Lan=
guage', 'UPDATE', 'N/A', 'http://downloads.sourceforge.net/tcl/tcl8.5.13-sr=
c.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (tcl,8.5.13,8.6.0,BSD-3-Clause,devel/tcltk,r0,None,http://tcl.sour=
ceforge.net,None,UPDATE,autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  tcl-native,Tool Command Language,N/A,http:=
//downloads.sourceforge.net/tcl/tcl8.5.13-src.tar.gz,Bogdan Marinescu <bogd=
an.a.marinescu@intel.com>)
['opkg-utils', '0.1.8+gitAUTOINC+757a166', '0.1.8+gitAUTOINC+757a166', 'GPL=
v2+', 'base', 'http://wiki.openmoko.org/wiki/Opkg', 'r0', ' virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', =
'None', 'OPKG Package Manager Utilities', 'MATCH', 'N/A', 'git://git.yoctop=
roject.org/opkg-utils;protocol=3Dgit', 'Radu Moisan <radu.moisan@intel.com>=
', 'None']
inserted (opkg-utils,0.1.8+gitAUTOINC+757a166,0.1.8+gitAUTOINC+757a166,GPLv=
2+,base,r0,None,http://wiki.openmoko.org/wiki/Opkg,None,MATCH, virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,OPKG Pa=
ckage Manager Utilities,N/A,git://git.yoctoproject.org/opkg-utils;protocol=
=3Dgit,Radu Moisan <radu.moisan@intel.com>)
['libxdmcp', '1.1.1', '1.1.1', 'MIT-style', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macro=
s xproto', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1'=
, 'The purpose of the X Display Manager Control Protocol (XDMCP) is to prov=
ide a uniform mechanism for an autonomous display to request login service =
=66rom a remote host. An X terminal (screen, keyboard, mouse, processor, ne=
twork interface) is a prime example of an autonomous display.', 'MATCH', 'N=
/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXdmcp-1.1.1.ta=
r.bz2', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (libxdmcp,1.1.1,1.1.1,MIT-style,x11/libs,r0,1,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  util-macros xproto,The purpose o=
f the X Display Manager Control Protocol (XDMCP) is to provide a uniform me=
chanism for an autonomous display to request login service from a remote ho=
st. An X terminal (screen, keyboard, mouse, processor, network interface) i=
s a prime example of an autonomous display.,N/A,http://xorg.freedesktop.org=
/releases/individual/lib/libXdmcp-1.1.1.tar.bz2,Constantin Musca <constanti=
nx.musca@intel.com>)
['tiny-init', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r2', ' virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'N=
one', 'None', 'Basic init system for poky-tiny', 'MATCH', 'N/A', 'file://in=
it', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (tiny-init,1.0,INVALID,MIT,base,r2,None,unknown,None,MATCH, virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,B=
asic init system for poky-tiny,N/A,file://init,Saul Wold <sgw@linux.intel.c=
om>)
['matchbox-session-sato', '0.1', 'INVALID', 'GPLv2.0+', 'x11', 'http://www.=
matchbox-project.org/', 'r30', ' virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc   gconf gconf-native', 'http://bugzilla=
=2Eopenedhand.com/', 'None', 'Custom MB session files for poky', 'MATCH', '=
N/A', 'file://session', 'Constantin Musca <constantinx.musca@intel.com>', '=
None']
inserted (matchbox-session-sato,0.1,INVALID,GPLv2.0+,x11,r30,None,http://ww=
w.matchbox-project.org/,http://bugzilla.openedhand.com/,MATCH, virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   gconf g=
conf-native,Custom MB session files for poky,N/A,file://session,Constantin =
Musca <constantinx.musca@intel.com>)
['mesa-demos', '8.0.1', '8.1.0', 'MIT & PD', 'x11', 'http://mesa3d.org', 'r=
4', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  virtual/libx11 virtual/libgl glew', 'https:/=
/bugs.freedesktop.org', 'None', 'This package includes the demonstration ap=
plication, such as glxgears. These applications can be used for Mesa valida=
tion and benchmarking.', 'UPDATE', 'N/A', 'ftp://ftp.freedesktop.org/pub/me=
sa/demos/8.0.1/mesa-demos-8.0.1.tar.bz2', 'Saul Wold <sgw@linux.intel.com>'=
, 'None']
inserted (mesa-demos,8.0.1,8.1.0,MIT & PD,x11,r4,None,http://mesa3d.org,htt=
ps://bugs.freedesktop.org,UPDATE,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 v=
irtual/libgl glew,This package includes the demonstration application, such=
 as glxgears. These applications can be used for Mesa validation and benchm=
arking.,N/A,ftp://ftp.freedesktop.org/pub/mesa/demos/8.0.1/mesa-demos-8.0.1=
=2Etar.bz2,Saul Wold <sgw@linux.intel.com>)
['libsoup-2.4', '2.40.2', '2.42.1', 'LGPLv2', 'x11/gnome/libs', 'http://www=
=2Egnome.org/', 'r1', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 gnutls libxml2 li=
bproxy libgnome-keyring sqlite3', 'https://bugzilla.gnome.org/', 'None', 'A=
n HTTP library implementation in C', 'UPDATE', 'N/A', 'http://ftp.gnome.org=
/pub/GNOME/sources/libsoup/2.40/libsoup-2.40.2.tar.xz', 'Constantin Musca <=
constantinx.musca@intel.com>', 'None']
inserted (libsoup-2.4,2.40.2,2.42.1,LGPLv2,x11/gnome/libs,r1,None,http://ww=
w.gnome.org/,https://bugzilla.gnome.org/,UPDATE,pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  g=
lib-2.0 gnutls libxml2 libproxy libgnome-keyring sqlite3,An HTTP library im=
plementation in C,N/A,http://ftp.gnome.org/pub/GNOME/sources/libsoup/2.40/l=
ibsoup-2.40.2.tar.xz,Constantin Musca <constantinx.musca@intel.com>)
['gdk-pixbuf', '2.26.5', '2.28.1', 'LGPLv2', 'libs', 'http://www.gtk.org/',=
 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libpng gli=
b-2.0 jpeg qemu-native', 'https://bugzilla.gnome.org/', 'None', 'Image load=
ing library for GTK+', 'UPDATE', '2.27.2', 'http://ftp.acc.umu.se/pub/GNOME=
/sources/gdk-pixbuf/2.26/gdk-pixbuf-2.26.5.tar.xz', 'Constantin Musca <cons=
tantinx.musca@intel.com>', '2.27.2 is unstable']
inserted (gdk-pixbuf,2.26.5,2.28.1,LGPLv2,libs,r1,None,http://www.gtk.org/,=
https://bugzilla.gnome.org/,UPDATE,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native virtual/gettext get=
text-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  libpng glib-2.0 jpeg qemu-native,Image loading library for=
 GTK+,2.27.2,http://ftp.acc.umu.se/pub/GNOME/sources/gdk-pixbuf/2.26/gdk-pi=
xbuf-2.26.5.tar.xz,Constantin Musca <constantinx.musca@intel.com>)
['consolekit', '0.4.5', '0.4.5', 'GPLv2+', 'base', 'http://www.freedesktop.=
org/wiki/Software/ConsoleKit', 'r10', 'pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 d=
bus dbus-glib virtual/libx11', 'https://bugs.freedesktop.org/buglist.cgi?qu=
ery_format=3Dspecific&product=3DConsoleKit', 'None', 'ConsoleKit is a frame=
work for defining and tracking users, login sessions, and seats.', 'MATCH',=
 'N/A', 'http://www.freedesktop.org/software/ConsoleKit/dist/ConsoleKit-0.4=
=2E5.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (consolekit,0.4.5,0.4.5,GPLv2+,base,r10,None,http://www.freedeskto=
p.org/wiki/Software/ConsoleKit,https://bugs.freedesktop.org/buglist.cgi?que=
ry_format=3Dspecific&product=3DConsoleKit,MATCH,pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  g=
lib-2.0 dbus dbus-glib virtual/libx11,ConsoleKit is a framework for definin=
g and tracking users, login sessions, and seats.,N/A,http://www.freedesktop=
=2Eorg/software/ConsoleKit/dist/ConsoleKit-0.4.5.tar.bz2,Saul Wold <sgw@lin=
ux.intel.com>)
['tiff', '4.0.3', '4.0.3', 'BSD-2-Clause', 'base', 'http://www.remotesensin=
g.org/libtiff/', 'r0', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  zlib jpeg xz', 'None', 'None', 'This softw=
are provides support for the Tag Image File Format (TIFF)', 'MATCH', 'N/A',=
 'ftp://ftp.remotesensing.org/pub/libtiff/tiff-4.0.3.tar.gz', 'Saul Wold <s=
gw@linux.intel.com>', 'None']
inserted (tiff,4.0.3,4.0.3,BSD-2-Clause,base,r0,None,http://www.remotesensi=
ng.org/libtiff/,None,MATCH,autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  zlib jpeg xz,This software provides sup=
port for the Tag Image File Format (TIFF),N/A,ftp://ftp.remotesensing.org/p=
ub/libtiff/tiff-4.0.3.tar.gz,Saul Wold <sgw@linux.intel.com>)
['glew', '1.9.0', '1.9.0', 'MIT', 'x11', 'http://glew.sourceforge.net/', 'r=
1', 'autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  virtual/libx11 virtual/libgl libglu libxext libxi libxmu', 'h=
ttp://sourceforge.net/tracker/?group_id=3D67586', 'None', 'The OpenGL Exten=
sion Wrangler Library (GLEW) is a cross-platform open-source C/C++ extensio=
n loading library.', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/proj=
ect/glew/glew/1.9.0/glew-1.9.0.tgz', 'Saul Wold <sgw@linux.intel.com>', 'No=
ne']
inserted (glew,1.9.0,1.9.0,MIT,x11,r1,None,http://glew.sourceforge.net/,htt=
p://sourceforge.net/tracker/?group_id=3D67586,MATCH,autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11=
 virtual/libgl libglu libxext libxi libxmu,The OpenGL Extension Wrangler Li=
brary (GLEW) is a cross-platform open-source C/C++ extension loading librar=
y.,N/A,http://downloads.sourceforge.net/project/glew/glew/1.9.0/glew-1.9.0.=
tgz,Saul Wold <sgw@linux.intel.com>)
['pixman', '0.29.2', '0.29.2', 'MIT & MIT-style & PD', 'x11/libs', 'http://=
www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  util-macros zlib libpng', 'htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Pixman provi=
des a library for manipulating pixel regions -- a set of Y-X banded rectang=
les, image compositing using the Porter/Duff model and implicit mask genera=
tion for geometric primitives including trapezoids, triangles, and rectangl=
es.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/=
pixman-0.29.2.tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>', '=
None']
inserted (pixman,0.29.2,0.29.2,MIT & MIT-style & PD,x11/libs,r0,1,http://ww=
w.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkg=
config-native autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  util-macros zlib libpng,Pixman provides a library fo=
r manipulating pixel regions -- a set of Y-X banded rectangles, image compo=
siting using the Porter/Duff model and implicit mask generation for geometr=
ic primitives including trapezoids, triangles, and rectangles.,N/A,http://x=
org.freedesktop.org/releases/individual/lib/pixman-0.29.2.tar.bz2,Constanti=
n Musca <constantinx.musca@intel.com>)
['flex', '2.5.35', '2.5.37', 'BSD', 'devel', 'http://sourceforge.net/projec=
ts/flex/', 'r3', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None'=
, 'Flex is a fast lexical analyser generator.  Flex is a tool for generatin=
g programs that recognize lexical patterns in text.', 'UPDATE', 'N/A', 'htt=
p://downloads.sourceforge.net/flex/flex-2.5.35.tar.bz2', 'Bogdan Marinescu =
<bogdan.a.marinescu@intel.com>', 'None']
inserted (flex,2.5.35,2.5.37,BSD,devel,r3,None,http://sourceforge.net/proje=
cts/flex/,None,UPDATE,autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Flex is a fa=
st lexical analyser generator.  Flex is a tool for generating programs that=
 recognize lexical patterns in text.,N/A,http://downloads.sourceforge.net/f=
lex/flex-2.5.35.tar.bz2,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['squashfs-tools', '4.2', '4.2', 'GPL-2 & PD', 'base', 'unknown', 'r2', ' v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  attr zlib xz', 'None', 'None', 'Tools to manipulate Squashfs filesystems=
=2E', 'MATCH', '4.2', 'http://downloads.sourceforge.net/squashfs/squashfs4.=
2.tar.gz;name=3Dsquashfs', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (squashfs-tools,4.2,4.2,GPL-2 & PD,base,r2,None,unknown,None,MATCH=
, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  attr zlib xz,Tools to manipulate Squashfs filesystems.,4.2,http://dow=
nloads.sourceforge.net/squashfs/squashfs4.2.tar.gz;name=3Dsquashfs,Radu Moi=
san <radu.moisan@intel.com>)
['xf86-input-keyboard', '1.6.2', '1.7.0', 'MIT-X', 'x11/drivers', 'http://w=
ww.x.org', 'r21.0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randr=
proto util-macros inputproto kbproto ', 'https://bugs.freedesktop.org', '2'=
, "keyboard is an Xorg input driver for keyboards. The driver supports the =
standard OS-provided keyboard interface.  The driver functions as a keyboar=
d input device, and may be used as the X server's core keyboard.", 'UPDATE'=
, 'N/A', 'http://xorg.freedesktop.org/releases/individual/driver/xf86-input=
-keyboard-1.6.2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'N=
one']
inserted (xf86-input-keyboard,1.6.2,1.7.0,MIT-X,x11/drivers,r21.0,2,http://=
www.x.org,https://bugs.freedesktop.org,UPDATE,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  vir=
tual/xserver xproto randrproto util-macros inputproto kbproto ,keyboard is =
an Xorg input driver for keyboards. The driver supports the standard OS-pro=
vided keyboard interface.  The driver functions as a keyboard input device,=
 and may be used as the X server's core keyboard.,N/A,http://xorg.freedeskt=
op.org/releases/individual/driver/xf86-input-keyboard-1.6.2.tar.bz2,Laurent=
iu Palcu <laurentiu.palcu@intel.com>)
['python', '2.7.3', '3.3.1rc1', 'PSFv2', 'devel/python', 'http://www.python=
=2Eorg', 'r0.3', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  python-native bzip2 db gdbm openssl readline sql=
ite3 zlib  python-native ', 'None', 'None', 'The Python Programming Languag=
e', 'UPDATE', 'N/A', 'http://www.python.org/ftp/python/2.7.3/Python-2.7.3.t=
ar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (python,2.7.3,3.3.1rc1,PSFv2,devel/python,r0.3,None,http://www.pyt=
hon.org,None,UPDATE,autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  python-native bzip2 db gdbm openssl readline s=
qlite3 zlib  python-native ,The Python Programming Language,N/A,http://www.=
python.org/ftp/python/2.7.3/Python-2.7.3.tar.bz2,Bogdan Marinescu <bogdan.a=
=2Emarinescu@intel.com>)
['libidn', '1.26', '1.26', '(LGPLv2.1+ | LGPLv3) & GPLv3+', 'libs', 'http:/=
/www.gnu.org/software/libidn/', 'r1', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native pkgconfig-native virtual/gettext=
 gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', 'None', 'Implementation of the Stringprep, =
Punycode and IDNA specifications defined by the IETF Internationalized Doma=
in Names (IDN) working group.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/libi=
dn/libidn-1.26.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libidn,1.26,1.26,(LGPLv2.1+ | LGPLv3) & GPLv3+,libs,r1,None,http:=
//www.gnu.org/software/libidn/,None,MATCH,autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native pkgconfig-native virtual/gett=
ext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ,Implementation of the Stringprep, Punycode and IDN=
A specifications defined by the IETF Internationalized Domain Names (IDN) w=
orking group.,N/A,ftp://ftp.gnu.org/gnu/libidn/libidn-1.26.tar.gz,Saul Wold=
 <sgw@linux.intel.com>)
['blktrace', '1.0.5+gitAUTOINC+d6918c8', '1.0.5+gitAUTOINC+1c8a952', 'GPLv2=
', 'base', 'unknown', 'r6', ' virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  libaio', 'None', 'None', 'blktrace - gene=
rate traces of the I/O traffic on block devices', 'MATCH', 'N/A', 'git://gi=
t.kernel.dk/blktrace.git;protocol=3Dgit', 'Tom Zanussi <tom.zanussi@intel.c=
om>', 'None']
inserted (blktrace,1.0.5+gitAUTOINC+d6918c8,1.0.5+gitAUTOINC+1c8a952,GPLv2,=
base,r6,None,unknown,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  libaio,blktrace - generate traces of t=
he I/O traffic on block devices,N/A,git://git.kernel.dk/blktrace.git;protoc=
ol=3Dgit,Tom Zanussi <tom.zanussi@intel.com>)
['damageproto', '1.2.1', '1.2.1', 'MIT-style', 'x11/libs', 'http://www.x.or=
g', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedeskto=
p.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire p=
rotocol for the DAMAGE extension.  The DAMAGE extension allows applications=
 to receive information about changes made to pixel contents of windows and=
 pixmaps.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individua=
l/proto/damageproto-1.2.1.tar.bz2', 'Constantin Musca <constantinx.musca@in=
tel.com>', 'None']
inserted (damageproto,1.2.1,1.2.1,MIT-style,x11/libs,r1,1,http://www.x.org,=
https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  util-macros,This package provides the wire protocol for the =
DAMAGE extension.  The DAMAGE extension allows applications to receive info=
rmation about changes made to pixel contents of windows and pixmaps.,N/A,ht=
tp://xorg.freedesktop.org/releases/individual/proto/damageproto-1.2.1.tar.b=
z2,Constantin Musca <constantinx.musca@intel.com>)
['gnome-mime-data', '2.18.0', '2.18.0', 'GPLv2 & GPLv2+', 'base', 'http://w=
ww.gnome.org/', 'r4', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc   gnome-common-native hicol=
or-icon-theme gtk-update-icon-cache-native gconf gconf-native shared-mime-i=
nfo-native shared-mime-info shared-mime-info intltool-native', 'https://bug=
zilla.gnome.org/', 'None', 'Base MIME and Application database for GNOME', =
'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/gnome-mime-data/2.1=
8/gnome-mime-data-2.18.0.tar.bz2;name=3Darchive', 'Constantin Musca <consta=
ntinx.musca@intel.com>', 'None']
inserted (gnome-mime-data,2.18.0,2.18.0,GPLv2 & GPLv2+,base,r4,None,http://=
www.gnome.org/,https://bugzilla.gnome.org/,MATCH,pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
 gnome-common-native hicolor-icon-theme gtk-update-icon-cache-native gconf =
gconf-native shared-mime-info-native shared-mime-info shared-mime-info intl=
tool-native,Base MIME and Application database for GNOME,N/A,http://ftp.gno=
me.org/pub/GNOME/sources/gnome-mime-data/2.18/gnome-mime-data-2.18.0.tar.bz=
2;name=3Darchive,Constantin Musca <constantinx.musca@intel.com>)
['lzo', '2.06', '2.06', 'GPLv2+', 'libs', 'http://www.oberhumer.com/opensou=
rce/lzo/', 'r1', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ', 'None', 'None', 'Lossless data compression li=
brary', 'MATCH', 'N/A', 'http://www.oberhumer.com/opensource/lzo/download/l=
zo-2.06.tar.gz', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (lzo,2.06,2.06,GPLv2+,libs,r1,None,http://www.oberhumer.com/openso=
urce/lzo/,None,MATCH,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  ,Lossless data compression library,N/A,http:/=
/www.oberhumer.com/opensource/lzo/download/lzo-2.06.tar.gz,Radu Moisan <rad=
u.moisan@intel.com>)
['gcc-cross', '4.7.2', '4.7.2', 'GPL-3.0-with-GCC-exception & GPLv3', 'deve=
l', 'http://www.gnu.org/software/gcc/', 'r19', 'autoconf-native automake-na=
tive libtool-native gnu-config-native   virtual/i586-poky-linux-binutils vi=
rtual/i586-poky-linux-libc-for-gcc linux-libc-headers mpfr-native gmp-nativ=
e libmpc-native zlib-native', 'None', 'None', 'The GNU cc and gcc C compile=
rs.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.bz=
2', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (gcc-cross,4.7.2,4.7.2,GPL-3.0-with-GCC-exception & GPLv3,devel,r1=
9,None,http://www.gnu.org/software/gcc/,None,MATCH,autoconf-native automake=
-native libtool-native gnu-config-native   virtual/i586-poky-linux-binutils=
 virtual/i586-poky-linux-libc-for-gcc linux-libc-headers mpfr-native gmp-na=
tive libmpc-native zlib-native,The GNU cc and gcc C compilers.,N/A,ftp://ft=
p.gnu.org/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.bz2,Bogdan Marinescu <bogdan.a.ma=
rinescu@intel.com>)
['ppp-dialin', '0.1', 'INVALID', 'MIT', 'console/network', 'unknown', 'r8',=
 ' ppp base-passwd shadow-native shadow-sysroot shadow', 'None', 'None', 'E=
nables PPP dial-in through a serial connection', 'MATCH', 'check', 'file://=
host-peer', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (ppp-dialin,0.1,INVALID,MIT,console/network,r8,None,unknown,None,M=
ATCH, ppp base-passwd shadow-native shadow-sysroot shadow,Enables PPP dial-=
in through a serial connection,check,file://host-peer,Cristian Iorga <crist=
ian.iorga@intel.com>)
['pango', '1.32.5', '1.34.0', 'LGPLv2.0+', 'libs', 'http://www.pango.org/',=
 'r2', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  glib-2.0 fontconfig freetype zlib virtual=
/libiconv cairo elfutils harfbuzz gnome-common-native gtk-doc-stub-native v=
irtual/libx11 libxft', 'http://bugzilla.gnome.org', 'None', 'Pango is a lib=
rary for laying out and rendering of text, with an emphasis on internationa=
lization. Pango can be used anywhere that text layout is needed, though mos=
t of the work on Pango so far has been done in the context of the GTK+ widg=
et toolkit. Pango forms the core of text and font handling for GTK+-2.x.', =
'UPDATE', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/pango/1.32/pango-1=
=2E32.5.tar.xz;name=3Darchive', 'Radu Moisan <radu.moisan@intel.com>', 'Non=
e']
inserted (pango,1.32.5,1.34.0,LGPLv2.0+,libs,r2,None,http://www.pango.org/,=
http://bugzilla.gnome.org,UPDATE,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 fontcon=
fig freetype zlib virtual/libiconv cairo elfutils harfbuzz gnome-common-nat=
ive gtk-doc-stub-native virtual/libx11 libxft,Pango is a library for laying=
 out and rendering of text, with an emphasis on internationalization. Pango=
 can be used anywhere that text layout is needed, though most of the work o=
n Pango so far has been done in the context of the GTK+ widget toolkit. Pan=
go forms the core of text and font handling for GTK+-2.x.,N/A,http://ftp.gn=
ome.org/pub/GNOME/sources/pango/1.32/pango-1.32.5.tar.xz;name=3Darchive,Rad=
u Moisan <radu.moisan@intel.com>)
['qt4-x11-free', '4.8.4', '4.8.4', 'LGPLv2.1 | GPLv3', 'x11/libs', 'http://=
qt.nokia.com', 'r50.3', 'qt4-tools-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc   qt4-tools-native freetype j=
peg libpng zlib dbus openssl glib-2.0 gstreamer gst-plugins-base sqlite3 ti=
ff pulseaudio virtual/libgl virtual/libx11 fontconfig libxft libxext libxre=
nder libxrandr libxcursor', 'None', 'None', 'Qt is a versatile cross-platfo=
rm application framework -- this is the X11 version.', 'MATCH', 'N/A', 'htt=
p://releases.qt-project.org/qt4/source/qt-everywhere-opensource-src-4.8.4.t=
ar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (qt4-x11-free,4.8.4,4.8.4,LGPLv2.1 | GPLv3,x11/libs,r50.3,None,htt=
p://qt.nokia.com,None,MATCH,qt4-tools-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc   qt4-tools-native freetyp=
e jpeg libpng zlib dbus openssl glib-2.0 gstreamer gst-plugins-base sqlite3=
 tiff pulseaudio virtual/libgl virtual/libx11 fontconfig libxft libxext lib=
xrender libxrandr libxcursor,Qt is a versatile cross-platform application f=
ramework -- this is the X11 version.,N/A,http://releases.qt-project.org/qt4=
/source/qt-everywhere-opensource-src-4.8.4.tar.gz,Paul Eggleton <paul.eggle=
ton@linux.intel.com>)
['aspell', '0.60.6.1', '0.60.6.1', 'LGPLv2 | LGPLv2.1', 'console/utils', 'u=
nknown', 'r1', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', =
'GNU Aspell spell-checker', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/aspell/a=
spell-0.60.6.1.tar.gz', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (aspell,0.60.6.1,0.60.6.1,LGPLv2 | LGPLv2.1,console/utils,r1,None,=
unknown,None,MATCH,autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,GNU Aspell spel=
l-checker,N/A,ftp://ftp.gnu.org/gnu/aspell/aspell-0.60.6.1.tar.gz,Radu Mois=
an <radu.moisan@intel.com>)
['nfs-export-root', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r1', ' vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 ', 'None', 'None', 'Enables NFS access from any host to the entire filesys=
tem (for development purposes)', 'MATCH', 'N/A', 'file://exports', 'Saul Wo=
ld <sgw@linux.intel.com>', 'None']
inserted (nfs-export-root,1.0,INVALID,MIT,base,r1,None,unknown,None,MATCH, =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  ,Enables NFS access from any host to the entire filesystem (for develop=
ment purposes),N/A,file://exports,Saul Wold <sgw@linux.intel.com>)
['nspr', '4.9.5', '4.9.6', 'GPL-2.0 | MPL-2.0 | LGPL-2.1', 'libs/network', =
'http://www.mozilla.org/projects/nspr/', 'r0', 'autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None',=
 'Netscape Portable Runtime Library', 'UPDATE', 'N/A', 'ftp://ftp.mozilla.o=
rg/pub/mozilla.org/nspr/releases/v4.9.5/src/nspr-4.9.5.tar.gz', 'Saul Wold =
<sgw@linux.intel.com>', 'None']
inserted (nspr,4.9.5,4.9.6,GPL-2.0 | MPL-2.0 | LGPL-2.1,libs/network,r0,Non=
e,http://www.mozilla.org/projects/nspr/,None,UPDATE,autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Netscape Port=
able Runtime Library,N/A,ftp://ftp.mozilla.org/pub/mozilla.org/nspr/release=
s/v4.9.5/src/nspr-4.9.5.tar.gz,Saul Wold <sgw@linux.intel.com>)
['dbus', '1.6.8', '1.7.0', 'AFL-2 | GPLv2+', 'base', 'http://dbus.freedeskt=
op.org', 'r6.0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native virtual/gettext gettext-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
expat virtual/libintl virtual/libx11 libsm base-passwd shadow-native shadow=
-sysroot shadow update-rc.d-native', 'None', 'None', 'D-Bus is a message bu=
s system, a simple way for applications to talk to one another. In addition=
 to interprocess communication, D-Bus helps coordinate process lifecycle; i=
t makes it simple and reliable to code a \\"single instance\\" application =
or daemon, and to launch applications and daemons on demand when their serv=
ices are needed.', 'UPDATE', 'N/A', 'http://dbus.freedesktop.org/releases/d=
bus/dbus-1.6.8.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'D-BUS=
 1.7.x is the development version, not stable.']
inserted (dbus,1.6.8,1.7.0,AFL-2 | GPLv2+,base,r6.0,None,http://dbus.freede=
sktop.org,None,UPDATE,pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  expat virtual/libintl virtual/libx11 libsm base-passwd shadow-native sh=
adow-sysroot shadow update-rc.d-native,D-Bus is a message bus system, a sim=
ple way for applications to talk to one another. In addition to interproces=
s communication, D-Bus helps coordinate process lifecycle; it makes it simp=
le and reliable to code a \"single instance\" application or daemon, and to=
 launch applications and daemons on demand when their services are needed.,=
N/A,http://dbus.freedesktop.org/releases/dbus/dbus-1.6.8.tar.gz,Cristian Io=
rga <cristian.iorga@intel.com>)
['keymaps', '1.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r20', '  update-=
rc.d-native', 'None', 'None', 'Keymaps and initscript to set the keymap on =
bootup.', 'MATCH', '1.0', 'file://keymap.sh', 'Radu Moisan <radu.moisan@int=
el.com>', 'None']
inserted (keymaps,1.0,INVALID,GPLv2,base,r20,None,unknown,None,MATCH,  upda=
te-rc.d-native,Keymaps and initscript to set the keymap on bootup.,1.0,file=
://keymap.sh,Radu Moisan <radu.moisan@intel.com>)
['xdpyinfo', '1.3.0', '1.3.0', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r=
8.1', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxtst =
libxext libxxf86vm libxxf86dga libxxf86misc libxi libxrender libxinerama li=
bdmx libxau', 'https://bugs.freedesktop.org', '1', 'Xdpyinfo is a utility f=
or displaying information about an X server. It is used to examine the capa=
bilities of a server, the predefined values for various parameters used in =
communicating between clients and the server, and the different types of sc=
reens and visuals that are available.', 'MATCH', 'N/A', 'http://xorg.freede=
sktop.org/releases/individual/app/xdpyinfo-1.3.0.tar.bz2', 'Laurentiu Palcu=
 <laurentiu.palcu@intel.com>', 'None']
inserted (xdpyinfo,1.3.0,1.3.0,MIT-X,x11/apps,r8.1,1,http://www.x.org/,http=
s://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native=
 virtual/libx11 libxtst libxext libxxf86vm libxxf86dga libxxf86misc libxi l=
ibxrender libxinerama libdmx libxau,Xdpyinfo is a utility for displaying in=
formation about an X server. It is used to examine the capabilities of a se=
rver, the predefined values for various parameters used in communicating be=
tween clients and the server, and the different types of screens and visual=
s that are available.,N/A,http://xorg.freedesktop.org/releases/individual/a=
pp/xdpyinfo-1.3.0.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['opkg', '0.1.8+svnr649', '649', 'GPLv2+', 'base', 'http://code.google.com/=
p/opkg/', 'r13.0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  ', 'http://code.google.com/p/=
opkg/issues/list', '1', 'Open Package Manager', 'MATCH', '0.1.8', 'svn://op=
kg.googlecode.com/svn;module=3Dtrunk;protocol=3Dhttp', 'Radu Moisan <radu.m=
oisan@intel.com>', 'None']
inserted (opkg,0.1.8+svnr649,649,GPLv2+,base,r13.0,1,http://code.google.com=
/p/opkg/,http://code.google.com/p/opkg/issues/list,MATCH,pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  ,Open Package Manager,0.1.8,svn://opkg.googlecode.com/svn;module=3D=
trunk;protocol=3Dhttp,Radu Moisan <radu.moisan@intel.com>)
['libsm', '1.2.1', '1.2.1', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros libice xproto xtrans e2fsprogs',=
 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Ses=
sion Management Library (SMlib) is a low-level \\"C\\" language interface t=
o XSMP.  The purpose of the X Session Management Protocol (XSMP) is to prov=
ide a uniform mechanism for users to save and restore their sessions.  A se=
ssion is a group of clients, each of which has a particular state.', 'MATCH=
', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libSM-1.2.1.=
tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (libsm,1.2.1,1.2.1,MIT-style,x11/libs,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  util-macros libice xproto xtrans e2fsprogs,The Session Management =
Library (SMlib) is a low-level \"C\" language interface to XSMP.  The purpo=
se of the X Session Management Protocol (XSMP) is to provide a uniform mech=
anism for users to save and restore their sessions.  A session is a group o=
f clients, each of which has a particular state.,N/A,http://xorg.freedeskto=
p.org/releases/individual/lib/libSM-1.2.1.tar.bz2,Constantin Musca <constan=
tinx.musca@intel.com>)
['ttf-bitstream-vera', '1.10', '1.10', 'BitstreamVera', 'x11/fonts', 'unkno=
wn', 'r7', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc   qemu-native', 'None', 'None', 'The Bitstream Vera fonts i=
nclude four monospace and sans faces (normal, oblique, bold, bold oblique) =
and two serif faces (normal and bold).  In addition Fontconfig/Xft2 can art=
ificially oblique the serif faces for you: this loses hinting and distorts =
the faces slightly, but is visibly different than normal and bold, and reas=
onably pleasing.', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/=
ttf-bitstream-vera/1.10/ttf-bitstream-vera-1.10.tar.bz2', 'Constantin Musca=
 <constantinx.musca@intel.com>', 'None']
inserted (ttf-bitstream-vera,1.10,1.10,BitstreamVera,x11/fonts,r7,None,unkn=
own,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc   qemu-native,The Bitstream Vera fonts include four mono=
space and sans faces (normal, oblique, bold, bold oblique) and two serif fa=
ces (normal and bold).  In addition Fontconfig/Xft2 can artificially obliqu=
e the serif faces for you: this loses hinting and distorts the faces slight=
ly, but is visibly different than normal and bold, and reasonably pleasing.=
,N/A,http://ftp.gnome.org/pub/GNOME/sources/ttf-bitstream-vera/1.10/ttf-bit=
stream-vera-1.10.tar.bz2,Constantin Musca <constantinx.musca@intel.com>)
['augeas', '1.0.0', '1.0.0', 'LGPLv2.1+', 'base', 'http://augeas.net/', 'r1=
', 'autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  readline libxml2', 'https://fedorahosted.org/augeas/report/1',=
 'None', 'Augeas configuration API', 'MATCH', 'N/A', 'http://download.augea=
s.net/augeas-1.0.0.tar.gz', 'Constantin Musca <constantinx.musca@intel.com>=
', 'None']
inserted (augeas,1.0.0,1.0.0,LGPLv2.1+,base,r1,None,http://augeas.net/,http=
s://fedorahosted.org/augeas/report/1,MATCH,autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  readline libxml2,Augeas=
 configuration API,N/A,http://download.augeas.net/augeas-1.0.0.tar.gz,Const=
antin Musca <constantinx.musca@intel.com>)
['ed', '1.7', '1.7', 'GPLv3+', 'base', 'http://www.gnu.org/software/ed/', '=
r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  ', '', 'None', 'a line-oriented text editor', 'MATCH', 'N/A', 'f=
tp://ftp.gnu.org/gnu/ed/ed-1.7.tar.gz', 'Radu Moisan <radu.moisan@intel.com=
>', 'None']
inserted (ed,1.7,1.7,GPLv3+,base,r0,None,http://www.gnu.org/software/ed/,,M=
ATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  ,a line-oriented text editor,N/A,ftp://ftp.gnu.org/gnu/ed/ed-1.7.=
tar.gz,Radu Moisan <radu.moisan@intel.com>)
['u-boot-fw-utils', '2011.06', '2013.04', 'GPLv2+', 'bootloader', 'unknown'=
, 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  mtd-utils', 'None', 'None', 'U-boot bootloader fw_printenv/se=
tenv utils', 'UPDATE', 'N/A', 'ftp://ftp.denx.de/pub/u-boot/u-boot-2011.06.=
tar.bz2', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (u-boot-fw-utils,2011.06,2013.04,GPLv2+,bootloader,r1,None,unknown=
,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  mtd-utils,U-boot bootloader fw_printenv/setenv utils,N/A,=
ftp://ftp.denx.de/pub/u-boot/u-boot-2011.06.tar.bz2,Radu Moisan <radu.moisa=
n@intel.com>)
['gdb', '7.5.1', '7.5.1', 'GPLv2 & GPLv3 & LGPLv2 & LGPLv3', 'devel', 'http=
://www.gnu.org/software/gdb/', 'r0.0', 'autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native virtual/gettext gettext-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  expat ncurses readline lttng-ust', 'None', 'None', 'gdb - GNU debugger=
', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gdb/gdb-7.5.1.tar.gz', 'Bogdan Ma=
rinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (gdb,7.5.1,7.5.1,GPLv2 & GPLv3 & LGPLv2 & LGPLv3,devel,r0.0,None,h=
ttp://www.gnu.org/software/gdb/,None,MATCH,autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  expat ncurses readline lttng-ust,gdb - GNU debugger,N/A,ftp://ftp.g=
nu.org/gnu/gdb/gdb-7.5.1.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@intel.=
com>)
['libgcc', '4.7.2', '4.8.0', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel',=
 'http://www.gnu.org/software/gcc/', 'r19', 'autoconf-native automake-nativ=
e libtool-native gnu-config-native   virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-g++', 'None', 'None', 'The GNU cc and gcc C compilers.', 'UPD=
ATE', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.bz2', 'Saul=
 Wold <sgw@linux.intel.com>', 'None']
inserted (libgcc,4.7.2,4.8.0,GPL-3.0-with-GCC-exception & GPLv3,devel,r19,N=
one,http://www.gnu.org/software/gcc/,None,UPDATE,autoconf-native automake-n=
ative libtool-native gnu-config-native   virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-g++,The GNU cc and gcc C compilers.,N/A,ftp://ftp.gnu.org=
/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['encodings', '1.0.4', '1.0.4', 'PD', 'x11/fonts', 'http://www.x.org', 'r2.=
1', 'pkgconfig-native autoconf-native automake-native libtool-native gnu-co=
nfig-native  mkfontscale-native font-util-native', 'https://bugs.freedeskto=
p.org/enter_bug.cgi?product=3Dxorg', '1', 'The encodings that map to specif=
ic characters for a number of Xorg and common fonts.', 'MATCH', 'N/A', 'htt=
p://xorg.freedesktop.org/releases/individual/font/encodings-1.0.4.tar.bz2',=
 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (encodings,1.0.4,1.0.4,PD,x11/fonts,r2.1,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native =
autoconf-native automake-native libtool-native gnu-config-native  mkfontsca=
le-native font-util-native,The encodings that map to specific characters fo=
r a number of Xorg and common fonts.,N/A,http://xorg.freedesktop.org/releas=
es/individual/font/encodings-1.0.4.tar.bz2,Constantin Musca <constantinx.mu=
sca@intel.com>)
['linux-libc-headers', '3.8', '3.8.8', 'GPLv2', 'devel', 'unknown', 'r0', '=
  unifdef-native', 'None', 'None', "Sanitized set of kernel headers for the=
 C library's use.", 'UPDATE', 'N/A', 'http://kernel.org/pub/linux/kernel/v3=
=2E0/linux-3.8.tar.bz2', 'Bruce Ashfield <bruce.ashfield@windriver.com>', '=
None']
inserted (linux-libc-headers,3.8,3.8.8,GPLv2,devel,r0,None,unknown,None,UPD=
ATE,  unifdef-native,Sanitized set of kernel headers for the C library's us=
e.,N/A,http://kernel.org/pub/linux/kernel/v3.0/linux-3.8.tar.bz2,Bruce Ashf=
ield <bruce.ashfield@windriver.com>)
['gst-plugins-good', '0.10.31', '1.0.6', 'GPLv2+ & LGPLv2.1+', 'multimedia'=
, 'http://gstreamer.freedesktop.org/', 'r8', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native virtual/=
gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  gstreamer gst-plugins-base gconf cairo jpeg lib=
png zlib libid3tag flac             speex libsoup-2.4 gconf gconf-native pu=
lseaudio', 'https://bugzilla.gnome.org/enter_bug.cgi?product=3DGstreamer', =
'None', 'Plugins for GStreamer', 'UPDATE', 'N/A', 'http://gstreamer.freedes=
ktop.org/src/gst-plugins-good/gst-plugins-good-0.10.31.tar.bz2', 'Cristian =
Iorga <cristian.iorga@intel.com>', 'not compatible with gst-fluendo 0.10.x']
inserted (gst-plugins-good,0.10.31,1.0.6,GPLv2+ & LGPLv2.1+,multimedia,r8,N=
one,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/enter_bug.=
cgi?product=3DGstreamer,UPDATE,pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native virtual/gettext gettext=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  gstreamer gst-plugins-base gconf cairo jpeg libpng zlib libid3=
tag flac             speex libsoup-2.4 gconf gconf-native pulseaudio,Plugin=
s for GStreamer,N/A,http://gstreamer.freedesktop.org/src/gst-plugins-good/g=
st-plugins-good-0.10.31.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['insserv', '1.14.0', '1.14.0', 'GPLv2', 'base', 'unknown', 'r1', ' virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', =
'None', 'None', "This utility reorders the init.d boot scripts based on dep=
endencies given in scripts' LSB comment headers, or in override files inclu=
ded in this package or added in /etc/insserv.", 'MATCH', 'N/A', 'ftp://ftp.=
suse.com/pub/projects/init/insserv-1.14.0.tar.bz2', 'Andrei Dinu <andrei.ad=
rianx.dinu@intel.com>', 'None']
inserted (insserv,1.14.0,1.14.0,GPLv2,base,r1,None,unknown,None,MATCH, virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
,This utility reorders the init.d boot scripts based on dependencies given =
in scripts' LSB comment headers, or in override files included in this pack=
age or added in /etc/insserv.,N/A,ftp://ftp.suse.com/pub/projects/init/inss=
erv-1.14.0.tar.bz2,Andrei Dinu <andrei.adrianx.dinu@intel.com>)
['mkfontscale', '1.1.0', '1.1.0', 'MIT-X', 'x11/apps', 'http://www.x.org/',=
 'r8.0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros-native virtual/libx11  zlib=
 libfontenc freetype virtual/libx11', 'https://bugs.freedesktop.org', 'None=
', 'For each directory argument, mkfontscale reads all of the scalable font=
 files in the directory. For every font file found, an X11 font name (XLFD)=
 is generated, and is written together with the file name to a file fonts.s=
cale in the directory.  The resulting fonts.scale is used by the mkfontdir =
program.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual=
/app/mkfontscale-1.1.0.tar.bz2', 'Radu Moisan <radu.moisan@intel.com>', 'No=
ne']
inserted (mkfontscale,1.1.0,1.1.0,MIT-X,x11/apps,r8.0,None,http://www.x.org=
/,https://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-=
native virtual/libx11  zlib libfontenc freetype virtual/libx11,For each dir=
ectory argument, mkfontscale reads all of the scalable font files in the di=
rectory. For every font file found, an X11 font name (XLFD) is generated, a=
nd is written together with the file name to a file fonts.scale in the dire=
ctory.  The resulting fonts.scale is used by the mkfontdir program.,N/A,htt=
p://xorg.freedesktop.org/releases/individual/app/mkfontscale-1.1.0.tar.bz2,=
Radu Moisan <radu.moisan@intel.com>)
['connman', '1.12', '1.13', 'GPLv2', 'base', 'http://connman.net/', 'r19.0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  dbus glib-2.0 ppp iptables gnutls             =
bluez4             wpa-supplicant             ofono              gtk-doc-st=
ub-native update-rc.d-native base-passwd shadow-native shadow-sysroot shado=
w', 'http://bugs.meego.com/buglist.cgi?quicksearch=3Dconnman', 'None', 'The=
 ConnMan project provides a daemon for managing internet connections within=
 embedded devices running the Linux operating system.  The Connection Manag=
er is designed to be slim and to use as few resources as possible, so it ca=
n be easily integrated. It is a fully modular system that can be extended, =
through plug-ins, to support all kinds of wired or wireless technologies. A=
lso, configuration methods, like DHCP and domain name resolving, are implem=
ented using plug-ins.', 'UPDATE', 'N/A', 'git://git.kernel.org/pub/scm/netw=
ork/connman/connman.git', 'Cristian Iorga <cristian.iorga@intel.com>', 'Non=
e']
inserted (connman,1.12,1.13,GPLv2,base,r19.0,None,http://connman.net/,http:=
//bugs.meego.com/buglist.cgi?quicksearch=3Dconnman,UPDATE,pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  dbus glib-2.0 ppp iptables gnutls             bluez4             w=
pa-supplicant             ofono              gtk-doc-stub-native update-rc.=
d-native base-passwd shadow-native shadow-sysroot shadow,The ConnMan projec=
t provides a daemon for managing internet connections within embedded devic=
es running the Linux operating system.  The Connection Manager is designed =
to be slim and to use as few resources as possible, so it can be easily int=
egrated. It is a fully modular system that can be extended, through plug-in=
s, to support all kinds of wired or wireless technologies. Also, configurat=
ion methods, like DHCP and domain name resolving, are implemented using plu=
g-ins.,N/A,git://git.kernel.org/pub/scm/network/connman/connman.git,Cristia=
n Iorga <cristian.iorga@intel.com>)
['libxml-sax-base-perl', '1.08', '1.08', 'Artistic-1.0 | GPL-1.0+', 'libs',=
 'unknown', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc   perl perl-native', 'None', 'None', "This module ha=
s a very simple task - to be a base class for PerlSAX drivers and filters. =
It's default behaviour is to pass the input directly to the output unchange=
d. It can be useful to use this module as a base class so you don't have to=
, for example, implement the characters() callback.", 'MATCH', 'N/A', 'http=
://search.cpan.org/CPAN/authors/id/G/GR/GRANTM/XML-SAX-Base-1.08.tar.gz', '=
None', 'None']
inserted (libxml-sax-base-perl,1.08,1.08,Artistic-1.0 | GPL-1.0+,libs,r0,No=
ne,unknown,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc   perl perl-native,This module has a very simple =
task - to be a base class for PerlSAX drivers and filters. It's default beh=
aviour is to pass the input directly to the output unchanged. It can be use=
ful to use this module as a base class so you don't have to, for example, i=
mplement the characters() callback.,N/A,http://search.cpan.org/CPAN/authors=
/id/G/GR/GRANTM/XML-SAX-Base-1.08.tar.gz,None)
['ccache', '3.1.8', '3.1.9', 'GPLv3+', 'devel', 'http://ccache.samba.org', =
'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  ', 'None', 'None', 'ccache is a compiler cache. It speeds u=
p recompilation by caching the result of previous compilations and detectin=
g when the same compilation is being done again. Supported languages are C,=
 C\\+\\+, Objective-C and Objective-C++.', 'UPDATE', 'N/A', 'http://samba.o=
rg/ftp/ccache/ccache-3.1.8.tar.xz', 'Wenzong Fan <wenzong.fan@windriver.com=
>', 'None']
inserted (ccache,3.1.8,3.1.9,GPLv3+,devel,r0,None,http://ccache.samba.org,N=
one,UPDATE,autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ,ccache is a compiler cache. It speeds up recompilation=
 by caching the result of previous compilations and detecting when the same=
 compilation is being done again. Supported languages are C, C\+\+, Objecti=
ve-C and Objective-C++.,N/A,http://samba.org/ftp/ccache/ccache-3.1.8.tar.xz=
,Wenzong Fan <wenzong.fan@windriver.com>)
['mpeg2dec', '0.4.1', '0.4.1', 'GPLv2+', 'libs', 'http://libmpeg2.sourcefor=
ge.net/', 'r2', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  virtual/libx11', 'None', 'None',=
 'Library and test program for decoding mpeg-2 and mpeg-1 video streams', '=
MATCH', 'N/A', 'http://libmpeg2.sourceforge.net/files/mpeg2dec-0.4.1.tar.gz=
', 'Saul Wold <sgw@linux.intel.com>', 'Why are we currently at 0.4.1?']
inserted (mpeg2dec,0.4.1,0.4.1,GPLv2+,libs,r2,None,http://libmpeg2.sourcefo=
rge.net/,None,MATCH,pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11,Library and te=
st program for decoding mpeg-2 and mpeg-1 video streams,N/A,http://libmpeg2=
=2Esourceforge.net/files/mpeg2dec-0.4.1.tar.gz,Saul Wold <sgw@linux.intel.c=
om>)
['console-tools', '0.3.2', '0.3.2', 'GPLv2', 'base', 'unknown', 'r8', 'auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc   virtual/update-alternatives', 'None', =
'None', 'Provides tools that enable the set-up and manipulation of the linu=
x console and console-font files.', 'MATCH', 'N/A', 'http://downloads.sourc=
eforge.net/lct/console-tools-0.3.2.tar.gz', 'Saul Wold <sgw@linux.intel.com=
>', 'None']
inserted (console-tools,0.3.2,0.3.2,GPLv2,base,r8,None,unknown,None,MATCH,a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc   virtual/update-alternatives,Provide=
s tools that enable the set-up and manipulation of the linux console and co=
nsole-font files.,N/A,http://downloads.sourceforge.net/lct/console-tools-0.=
3.2.tar.gz,Saul Wold <sgw@linux.intel.com>)
['xf86-video-omapfb', '0.1.1+gitrAUTOINC+28c006c', '0.1.1+gitrAUTOINC+ee3ae=
05', 'MIT-X & GPLv2+', 'x11/drivers', 'http://www.x.org', 'r21.7', 'pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  renderproto videoproto xextproto fontsproto virtual/xser=
ver xproto randrproto util-macros virtual/libx11', 'https://bugs.freedeskto=
p.org', '2', 'omapfb driver supports the basic Texas Instruments OMAP frame=
buffer.', 'MATCH', 'N/A', 'git://git.pingu.fi/xf86-video-omapfb;protocol=3D=
http', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86-video-omapfb,0.1.1+gitrAUTOINC+28c006c,0.1.1+gitrAUTOINC+ee3=
ae05,MIT-X & GPLv2+,x11/drivers,r21.7,2,http://www.x.org,https://bugs.freed=
esktop.org,MATCH,pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextproto=
 fontsproto virtual/xserver xproto randrproto util-macros virtual/libx11,om=
apfb driver supports the basic Texas Instruments OMAP framebuffer.,N/A,git:=
//git.pingu.fi/xf86-video-omapfb;protocol=3Dhttp,Laurentiu Palcu <laurentiu=
=2Epalcu@intel.com>)
['libi18n-collate-perl', '1.02', '1.02', 'Artistic-1.0 | GPL-1.0+', 'libs',=
 'http://search.cpan.org/~flora/I18N-Collate/', 'r0', ' virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-nati=
ve', 'None', 'None', 'This module provides you with objects that will colla=
te according to your national character set, provided that the POSIX setloc=
ale() function is supported on your system.', 'MATCH', 'N/A', 'http://searc=
h.cpan.org/CPAN/authors/id/F/FL/FLORA/I18N-Collate-1.02.tar.gz', 'Saul Wold=
 <sgw@linux.intel.com>', 'None']
inserted (libi18n-collate-perl,1.02,1.02,Artistic-1.0 | GPL-1.0+,libs,r0,No=
ne,http://search.cpan.org/~flora/I18N-Collate/,None,MATCH, virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-n=
ative,This module provides you with objects that will collate according to =
your national character set, provided that the POSIX setlocale() function i=
s supported on your system.,N/A,http://search.cpan.org/CPAN/authors/id/F/FL=
/FLORA/I18N-Collate-1.02.tar.gz,Saul Wold <sgw@linux.intel.com>)
['mtd-utils', '1.5.0', '1.5.0', 'GPLv2+', 'base', 'http://www.linux-mtd.inf=
radead.org/', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  zlib lzo e2fsprogs util-linux', 'None', 'None', '=
Tools for managing memory technology devices.', 'MATCH', 'N/A', 'git://git.=
infradead.org/mtd-utils.git;protocol=3Dgit', 'Radu Moisan <radu.moisan@inte=
l.com>', 'None']
inserted (mtd-utils,1.5.0,1.5.0,GPLv2+,base,r3,None,http://www.linux-mtd.in=
fradead.org/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  zlib lzo e2fsprogs util-linux,Tools for managi=
ng memory technology devices.,N/A,git://git.infradead.org/mtd-utils.git;pro=
tocol=3Dgit,Radu Moisan <radu.moisan@intel.com>)
['xinput', '1.6.0', '1.6.0', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros-native virtual/libx11  libxi lib=
xrandr libxinerama', 'https://bugs.freedesktop.org', 'None', 'Xinput is an =
utility for configuring and testing XInput devices', 'MATCH', 'N/A', 'http:=
//xorg.freedesktop.org/releases/individual/app/xinput-1.6.0.tar.bz2', 'Laur=
entiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xinput,1.6.0,1.6.0,MIT-X,x11/apps,r8.0,None,http://www.x.org/,htt=
ps://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-nativ=
e virtual/libx11  libxi libxrandr libxinerama,Xinput is an utility for conf=
iguring and testing XInput devices,N/A,http://xorg.freedesktop.org/releases=
/individual/app/xinput-1.6.0.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel=
=2Ecom>)
['v86d', '0.1.10', '0.1.10', 'GPLv2', 'base', 'http://dev.gentoo.org/~spock=
/projects/uvesafb/', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  virtual/kernel update-rc.d-native', 'None'=
, 'None', 'User support binary for the uvesafb kernel module', 'MATCH', 'N/=
A', 'http://distfiles.gentoo.org/distfiles/v86d-0.1.10.tar.bz2', 'Laurentiu=
 Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (v86d,0.1.10,0.1.10,GPLv2,base,r1,None,http://dev.gentoo.org/~spoc=
k/projects/uvesafb/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  virtual/kernel update-rc.d-native,User =
support binary for the uvesafb kernel module,N/A,http://distfiles.gentoo.or=
g/distfiles/v86d-0.1.10.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['xcb-proto', '1.8', '1.8', 'MIT', 'x11/libs', 'http://xcb.freedesktop.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc    python-native ', 'https://bugs.freedes=
ktop.org/enter_bug.cgi?product=3DXCB', 'None', 'Function prototypes for the=
 X protocol C-language Binding (XCB).  XCB is a replacement for Xlib featur=
ing a small footprint, latency hiding, direct access to the protocol, impro=
ved threading support, and extensibility.', 'MATCH', 'N/A', 'http://xcb.fre=
edesktop.org/dist/xcb-proto-1.8.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu=
@intel.com>', 'None']
inserted (xcb-proto,1.8,1.8,MIT,x11/libs,r0,None,http://xcb.freedesktop.org=
,https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,MATCH,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc    python-native ,Function prototypes for the X protocol C-la=
nguage Binding (XCB).  XCB is a replacement for Xlib featuring a small foot=
print, latency hiding, direct access to the protocol, improved threading su=
pport, and extensibility.,N/A,http://xcb.freedesktop.org/dist/xcb-proto-1.8=
=2Etar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['leafpad', '0.8.18.1', '0.8.18.1', 'GPLv2 & GPLv2+', 'base', 'http://tarot=
=2Efreeshell.org/leafpad/', 'r2', 'pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ intltool-=
native libowl', 'None', 'None', 'Simple GTK+ Text Editor', 'MATCH', 'N/A', =
'http://savannah.nongnu.org/download/leafpad/leafpad-0.8.18.1.tar.gz', 'Con=
stantin Musca <constantinx.musca@intel.com>', 'None']
inserted (leafpad,0.8.18.1,0.8.18.1,GPLv2 & GPLv2+,base,r2,None,http://taro=
t.freeshell.org/leafpad/,None,MATCH,pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ intltool=
-native libowl,Simple GTK+ Text Editor,N/A,http://savannah.nongnu.org/downl=
oad/leafpad/leafpad-0.8.18.1.tar.gz,Constantin Musca <constantinx.musca@int=
el.com>)
['sbc', '1.0', '1.0', 'LGPLv2.1+', 'libs', 'https://www.bluez.org', 'r0', '=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  libsndfile1', 'None', 'None', 'Bluetooth low-complexity, subband c=
odec (SBC) library.', 'MATCH', 'N/A', 'http://kernel.org/pub/linux/bluetoot=
h/sbc-1.0.tar.xz', 'None', 'None']
inserted (sbc,1.0,1.0,LGPLv2.1+,libs,r0,None,https://www.bluez.org,None,MAT=
CH,autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  libsndfile1,Bluetooth low-complexity, subband codec (SBC) libra=
ry.,N/A,http://kernel.org/pub/linux/bluetooth/sbc-1.0.tar.xz,None)
['gconf', '3.2.6', '3.2.6', 'LGPLv2+', 'x11/gnome', 'unknown', 'r0', 'pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  glib-2.0 dbus dbus-glib libxml2 intltool-native gobjec=
t-introspection-stub gnome-common-native gtk-doc-stub-native', 'None', 'Non=
e', 'GNOME configuration system', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub=
/GNOME/sources/GConf/3.2/GConf-3.2.6.tar.xz;name=3Darchive', 'Saul Wold <sg=
w@linux.intel.com>', 'None']
inserted (gconf,3.2.6,3.2.6,LGPLv2+,x11/gnome,r0,None,unknown,None,MATCH,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  glib-2.0 dbus dbus-glib libxml2 intltool-native gob=
ject-introspection-stub gnome-common-native gtk-doc-stub-native,GNOME confi=
guration system,N/A,http://ftp.gnome.org/pub/GNOME/sources/GConf/3.2/GConf-=
3.2.6.tar.xz;name=3Darchive,Saul Wold <sgw@linux.intel.com>)
['openjade-native', '1.3.2', '1.3.3', 'BSD', 'base', 'http://openjade.sourc=
eforge.net', 'r5', 'autoconf-native automake-native libtool-native gnu-conf=
ig-native  opensp-native sgml-common-native', 'None', 'None', 'OpenJade is =
a suite of tools for validating, processing, and applying DSSSL (Document S=
tyle Semantics and Specification Language) stylesheets to SGML and XML docu=
ments.', 'UPDATE', 'N/A', 'http://downloads.sourceforge.net/openjade/openja=
de-1.3.2.tar.gz', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (openjade-native,1.3.2,1.3.3,BSD,base,r5,None,http://openjade.sour=
ceforge.net,None,UPDATE,autoconf-native automake-native libtool-native gnu-=
config-native  opensp-native sgml-common-native,OpenJade is a suite of tool=
s for validating, processing, and applying DSSSL (Document Style Semantics =
and Specification Language) stylesheets to SGML and XML documents.,N/A,http=
://downloads.sourceforge.net/openjade/openjade-1.3.2.tar.gz,Andrei Dinu <an=
drei.adrianx.dinu@intel.com>)
['libxft', '2.3.1', '2.3.1', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros virtual/libx11 libxrender freetype fo=
ntconfig', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1'=
, 'Xft was designed to provide good support for scalable fonts, and to do s=
o efficiently.  Unlike the core fonts system, it supports features such as =
anti-aliasing and sub-pixel rasterisation. Perhaps more importantly, it giv=
es applications full control over the way glyphs are rendered, making fine =
typesetting and WYSIWIG display possible. Finally, it allows applications t=
o use fonts that are not installed system-wide for displaying documents wit=
h embedded fonts.  Xft is not compatible with the core fonts system: usage =
of Xft requires fairly extensive changes to toolkits (user-interface librar=
ies).', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/li=
b/libXft-2.3.1.tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>', =
'None']
inserted (libxft,2.3.1,2.3.1,MIT,x11/libs,r0,1,http://www.x.org,https://bug=
s.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  util-macros virtual/libx11 libxrender freetype fontconfig,Xft was desig=
ned to provide good support for scalable fonts, and to do so efficiently.  =
Unlike the core fonts system, it supports features such as anti-aliasing an=
d sub-pixel rasterisation. Perhaps more importantly, it gives applications =
full control over the way glyphs are rendered, making fine typesetting and =
WYSIWIG display possible. Finally, it allows applications to use fonts that=
 are not installed system-wide for displaying documents with embedded fonts=
=2E  Xft is not compatible with the core fonts system: usage of Xft require=
s fairly extensive changes to toolkits (user-interface libraries).,N/A,http=
://xorg.freedesktop.org/releases/individual/lib/libXft-2.3.1.tar.bz2,Consta=
ntin Musca <constantinx.musca@intel.com>)
['matchbox-wm', '1.2+gitAUTOINC+6861783', '1.2+gitAUTOINC+6861783', 'GPLv2+=
', 'x11/wm', 'http://matchbox-project.org', 'r0', 'pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  libmatchbox virtual/libx11 libxext libxrender startup-notification expat =
gconf', 'http://bugzilla.openedhand.com/', 'None', 'Matchbox window manager=
', 'MATCH', 'N/A', 'git://git.yoctoproject.org/matchbox-window-manager;prot=
ocol=3Dgit', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (matchbox-wm,1.2+gitAUTOINC+6861783,1.2+gitAUTOINC+6861783,GPLv2+,=
x11/wm,r0,None,http://matchbox-project.org,http://bugzilla.openedhand.com/,=
MATCH,pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  libmatchbox virtual/libx11 libxext libxrend=
er startup-notification expat gconf,Matchbox window manager,N/A,git://git.y=
octoproject.org/matchbox-window-manager;protocol=3Dgit,Constantin Musca <co=
nstantinx.musca@intel.com>)
['bash', '4.2', '4.2', 'GPLv3+', 'base/shell', 'http://cnswww.cns.cwru.edu/=
~chet/bash/bashtop.html', 'r6', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  nc=
urses bison-native virtual/update-alternatives', 'None', 'None', 'An sh-com=
patible command language interpreter.', 'MATCH', '4.2', 'ftp://ftp.gnu.org/=
gnu/bash/bash-4.2.tar.gz;name=3Dtarball', 'Saul Wold <sgw@linux.intel.com>'=
, 'None']
inserted (bash,4.2,4.2,GPLv3+,base/shell,r6,None,http://cnswww.cns.cwru.edu=
/~chet/bash/bashtop.html,None,MATCH,autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native virtual/gettext gettext-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 ncurses bison-native virtual/update-alternatives,An sh-compatible command =
language interpreter.,4.2,ftp://ftp.gnu.org/gnu/bash/bash-4.2.tar.gz;name=
=3Dtarball,Saul Wold <sgw@linux.intel.com>)
['ltp', '20120903', '20130109', 'GPLv2 & GPLv2+ & LGPLv2+ & LGPLv2.1+ & BSD=
-2-Clause', 'console/utils', 'http://ltp.sourceforge.net', 'r2', 'autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
attr libaio libcap', 'None', 'None', 'The Linux Test Project is a joint pro=
ject with SGI, IBM, OSDL, and Bull with a goal to deliver test suites to th=
e open source community that validate the reliability, robustness, and stab=
ility of Linux. The Linux Test Project is a collection of tools for testing=
 the Linux kernel and related features.', 'UPDATE', 'N/A', 'http://download=
s.sourceforge.net/ltp/ltp-full-20120903.bz2', 'Mihai Lindner <mihaix.lindne=
r@linux.intel.com>', 'None']
inserted (ltp,20120903,20130109,GPLv2 & GPLv2+ & LGPLv2+ & LGPLv2.1+ & BSD-=
2-Clause,console/utils,r2,None,http://ltp.sourceforge.net,None,UPDATE,autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  attr libaio libcap,The Linux Test Project is a joint project with SGI, =
IBM, OSDL, and Bull with a goal to deliver test suites to the open source c=
ommunity that validate the reliability, robustness, and stability of Linux.=
 The Linux Test Project is a collection of tools for testing the Linux kern=
el and related features.,N/A,http://downloads.sourceforge.net/ltp/ltp-full-=
20120903.bz2,Mihai Lindner <mihaix.lindner@linux.intel.com>)
['openssh', '6.1p1', '6.2p1', 'BSD', 'console/network', 'http://openssh.org=
', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  zlib openssl  base-passwd shadow-native shadow-sysroot s=
hadow update-rc.d-native virtual/update-alternatives', 'None', 'None', 'Sec=
ure rlogin/rsh/rcp/telnet replacement (OpenSSH) Ssh (Secure Shell) is a pro=
gram for logging into a remote machine and for executing commands on a remo=
te machine.', 'UPDATE', 'N/A', 'ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/p=
ortable/openssh-6.1p1.tar.gz', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>=
', 'None']
inserted (openssh,6.1p1,6.2p1,BSD,console/network,r0,None,http://openssh.or=
g,None,UPDATE,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  zlib openssl  base-passwd shadow-native shadow-sysro=
ot shadow update-rc.d-native virtual/update-alternatives,Secure rlogin/rsh/=
rcp/telnet replacement (OpenSSH) Ssh (Secure Shell) is a program for loggin=
g into a remote machine and for executing commands on a remote machine.,N/A=
,ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-6.1p1.tar.gz,An=
drei Dinu <andrei.adrianx.dinu@intel.com>)
['chrpath', '0.14', '0.14', 'GPLv2', 'base', 'http://alioth.debian.org/proj=
ects/chrpath/', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'http://alioth.debian.org/tracker/?atid=
=3D412807&group_id=3D31052', 'None', "chrpath allows you to change the rpat=
h (where the application looks for libraries) in an application. It does no=
t (yet) allow you to add an rpath if there isn't one already.", 'MATCH', 'N=
/A', 'http://alioth.debian.org/frs/download.php/3648/chrpath-0.14.tar.gz', =
'Andrei Dinu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (chrpath,0.14,0.14,GPLv2,base,r0,None,http://alioth.debian.org/pro=
jects/chrpath/,http://alioth.debian.org/tracker/?atid=3D412807&group_id=3D3=
1052,MATCH,autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ,chrpath allows you to change the rpath (where the appl=
ication looks for libraries) in an application. It does not (yet) allow you=
 to add an rpath if there isn't one already.,N/A,http://alioth.debian.org/f=
rs/download.php/3648/chrpath-0.14.tar.gz,Andrei Dinu <andrei.adrianx.dinu@i=
ntel.com>)
['atk', '2.6.0', '2.8.0', 'GPLv2+ & LGPLv2+', 'x11/libs', 'http://live.gnom=
e.org/GAP/', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 gtk-doc-stub-native'=
, 'https://bugzilla.gnome.org/', 'None', 'An accessibility toolkit for GNOM=
E.', 'UPDATE', 'N/A', 'http://download.gnome.org/sources/atk/2.6/atk-2.6.0.=
tar.xz', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (atk,2.6.0,2.8.0,GPLv2+ & LGPLv2+,x11/libs,r0,None,http://live.gno=
me.org/GAP/,https://bugzilla.gnome.org/,UPDATE,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gl=
ib-2.0 gtk-doc-stub-native,An accessibility toolkit for GNOME.,N/A,http://d=
ownload.gnome.org/sources/atk/2.6/atk-2.6.0.tar.xz,Radu Moisan <radu.moisan=
@intel.com>)
['matchbox-terminal', '0.0+gitAUTOINC+3fc25cb', '0.0+gitAUTOINC+452bca2', '=
GPLv2+', 'x11/utils', 'http://www.matchbox-project.org/', 'r0', 'pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  gtk+ vte', 'http://bugzilla.openedhand.com/', 'None', 'Matc=
hbox Terminal', 'UPDATE', 'N/A', 'git://git.yoctoproject.org/matchbox-termi=
nal;protocol=3Dgit', 'Constantin Musca <constantinx.musca@intel.com>', 'Non=
e']
inserted (matchbox-terminal,0.0+gitAUTOINC+3fc25cb,0.0+gitAUTOINC+452bca2,G=
PLv2+,x11/utils,r0,None,http://www.matchbox-project.org/,http://bugzilla.op=
enedhand.com/,UPDATE,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  gtk+ vte,Matchbox Terminal,N=
/A,git://git.yoctoproject.org/matchbox-terminal;protocol=3Dgit,Constantin M=
usca <constantinx.musca@intel.com>)
['libarchive', '2.8.5', '3.1.2', 'BSD', 'devel', 'http://code.google.com/p/=
libarchive/', 'r0', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  libxml2', 'None', 'None', 'C library and comm=
and-line tools for reading and writing tar, cpio, zip, ISO, and other archi=
ve formats', 'UPDATE', 'N/A', 'http://libarchive.googlecode.com/files/libar=
chive-2.8.5.tar.gz', 'Kai Kang <kai.kang@windriver.com>', 'None']
inserted (libarchive,2.8.5,3.1.2,BSD,devel,r0,None,http://code.google.com/p=
/libarchive/,None,UPDATE,autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  libxml2,C library and command-line tools =
for reading and writing tar, cpio, zip, ISO, and other archive formats,N/A,=
http://libarchive.googlecode.com/files/libarchive-2.8.5.tar.gz,Kai Kang <ka=
i.kang@windriver.com>)
['xmodmap', '1.0.7', '1.0.7', 'MIT', 'x11/apps', 'http://www.x.org/', 'r8.0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros-native virtual/libx11', 'https://=
bugs.freedesktop.org', '1', "The xmodmap program is used to edit and displa=
y the keyboard modifier map and keymap table that are used by client applic=
ations to convert event keycodes into keysyms. It is usually run from the u=
ser's session startup script to configure the keyboard according to persona=
l tastes.", 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individua=
l/app/xmodmap-1.0.7.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>'=
, 'None']
inserted (xmodmap,1.0.7,1.0.7,MIT,x11/apps,r8.0,1,http://www.x.org/,https:/=
/bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native vi=
rtual/libx11,The xmodmap program is used to edit and display the keyboard m=
odifier map and keymap table that are used by client applications to conver=
t event keycodes into keysyms. It is usually run from the user's session st=
artup script to configure the keyboard according to personal tastes.,N/A,ht=
tp://xorg.freedesktop.org/releases/individual/app/xmodmap-1.0.7.tar.bz2,Lau=
rentiu Palcu <laurentiu.palcu@intel.com>)
['xf86-video-fbdev', '0.4.3', '0.4.3', 'MIT-X', 'x11/drivers', 'http://www.=
x.org', 'r21.0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextprot=
o fontsproto virtual/xserver xproto randrproto util-macros', 'https://bugs.=
freedesktop.org', '2', 'X.Org X server -- fbdev display driver', 'MATCH', '=
N/A', 'http://xorg.freedesktop.org/releases/individual/driver/xf86-video-fb=
dev-0.4.3.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86-video-fbdev,0.4.3,0.4.3,MIT-X,x11/drivers,r21.0,2,http://www=
=2Ex.org,https://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  rende=
rproto videoproto xextproto fontsproto virtual/xserver xproto randrproto ut=
il-macros,X.Org X server -- fbdev display driver,N/A,http://xorg.freedeskto=
p.org/releases/individual/driver/xf86-video-fbdev-0.4.3.tar.bz2,Laurentiu P=
alcu <laurentiu.palcu@intel.com>)
['u-boot-mkimage', '2011.06', '2013.04', 'GPLv2+', 'bootloader', 'unknown',=
 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  ', 'None', 'None', 'U-boot bootloader mkimage tool', 'UPDATE',=
 'N/A', 'ftp://ftp.denx.de/pub/u-boot/u-boot-2011.06.tar.bz2', 'Radu Moisan=
 <radu.moisan@intel.com>', 'None']
inserted (u-boot-mkimage,2011.06,2013.04,GPLv2+,bootloader,r0,None,unknown,=
None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  ,U-boot bootloader mkimage tool,N/A,ftp://ftp.denx.de/pub/=
u-boot/u-boot-2011.06.tar.bz2,Radu Moisan <radu.moisan@intel.com>)
['psplash', '0.1+gitAUTOINC+afd4e22', '0.1+gitAUTOINC+afd4e22', 'GPLv2+', '=
base', 'http://git.yoctoproject.org/cgit/cgit.cgi/psplash', 'r8', 'pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc   update-rc.d-native virtual/update-alternatives', 'None',=
 'None', "PSplash is a userspace graphical boot splash screen for mainly em=
bedded Linux devices supporting a 16bpp or 32bpp framebuffer. It has few de=
pendencies (just libc), supports basic images and text and handles rotation=
=2E Its visual look is configurable by basic source changes. Also included =
is a 'client' command utility for sending information to psplash such as bo=
ot progress information.", 'MATCH', 'N/A', 'git://git.yoctoproject.org/pspl=
ash;protocol=3Dgit', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (psplash,0.1+gitAUTOINC+afd4e22,0.1+gitAUTOINC+afd4e22,GPLv2+,base=
,r8,None,http://git.yoctoproject.org/cgit/cgit.cgi/psplash,None,MATCH,pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc   update-rc.d-native virtual/update-alternatives,PSplas=
h is a userspace graphical boot splash screen for mainly embedded Linux dev=
ices supporting a 16bpp or 32bpp framebuffer. It has few dependencies (just=
 libc), supports basic images and text and handles rotation. Its visual loo=
k is configurable by basic source changes. Also included is a 'client' comm=
and utility for sending information to psplash such as boot progress inform=
ation.,N/A,git://git.yoctoproject.org/psplash;protocol=3Dgit,Andrei Dinu <a=
ndrei.adrianx.dinu@intel.com>)
['xcmiscproto', '1.2.2', '1.2.2', 'MIT-style', 'x11/libs', 'http://www.x.or=
g', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedeskto=
p.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire p=
rotocol for the XC-MISC extension, which is used to get details of XID allo=
cations within the server.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/r=
eleases/individual/proto/xcmiscproto-1.2.2.tar.bz2', 'Laurentiu Palcu <laur=
entiu.palcu@intel.com>', 'None']
inserted (xcmiscproto,1.2.2,1.2.2,MIT-style,x11/libs,r0,1,http://www.x.org,=
https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  util-macros,This package provides the wire protocol for the =
XC-MISC extension, which is used to get details of XID allocations within t=
he server.,N/A,http://xorg.freedesktop.org/releases/individual/proto/xcmisc=
proto-1.2.2.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['harfbuzz', '0.9.12', '0.9.16', 'MIT & ICU', 'libs', 'http://www.freedeskt=
op.org/wiki/Software/HarfBuzz', 'r0', 'pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  icu glib-2=
=2E0 cairo freetype', 'https://bugs.freedesktop.org/enter_bug.cgi?product=
=3DHarfBuzz', 'None', 'HarfBuzz is an OpenType text shaping engine.', 'UPDA=
TE', 'N/A', 'http://www.freedesktop.org/software/harfbuzz/release/harfbuzz-=
0.9.12.tar.bz2', 'None', 'None']
inserted (harfbuzz,0.9.12,0.9.16,MIT & ICU,libs,r0,None,http://www.freedesk=
top.org/wiki/Software/HarfBuzz,https://bugs.freedesktop.org/enter_bug.cgi?p=
roduct=3DHarfBuzz,UPDATE,pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  icu glib-2.0 cairo freet=
ype,HarfBuzz is an OpenType text shaping engine.,N/A,http://www.freedesktop=
=2Eorg/software/harfbuzz/release/harfbuzz-0.9.12.tar.bz2,None)
['xz', '5.1.2alpha', '5.1.2alpha', 'GPLv2+ & LGPLv2.1+', 'base', 'http://tu=
kaani.org/xz/', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', '=
None', 'utils for managing LZMA compressed files', 'MATCH', '5.0.4', 'http:=
//tukaani.org/xz/xz-5.1.2alpha.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@i=
ntel.com>', 'None']
inserted (xz,5.1.2alpha,5.1.2alpha,GPLv2+ & LGPLv2.1+,base,r0,None,http://t=
ukaani.org/xz/,None,MATCH,autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,utils fo=
r managing LZMA compressed files,5.0.4,http://tukaani.org/xz/xz-5.1.2alpha.=
tar.gz,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['udev-extraconf', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r8', ' virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
', 'None', 'None', 'Extra machine specific configuration files for udev, sp=
ecifically blacklist information.', 'MATCH', 'N/A', 'file://automount.rules=
', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (udev-extraconf,1.0,INVALID,MIT,base,r8,None,unknown,None,MATCH, v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  ,Extra machine specific configuration files for udev, specifically black=
list information.,N/A,file://automount.rules,Radu Moisan <radu.moisan@intel=
=2Ecom>)
['mtools', '4.0.18', '4.0.18', 'GPLv3', 'optional', 'http://www.gnu.org/sof=
tware/mtools/', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'None', 'None', 'Mtools is a collection =
of utilities to access MS-DOS disks from GNU and Unix without mounting them=
=2E', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/mtools/mtools-4.0.18.tar.bz2',=
 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (mtools,4.0.18,4.0.18,GPLv3,optional,r0,None,http://www.gnu.org/so=
ftware/mtools/,None,MATCH,autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ,Mtools is a collection of utilities to =
access MS-DOS disks from GNU and Unix without mounting them.,N/A,ftp://ftp.=
gnu.org/gnu/mtools/mtools-4.0.18.tar.bz2,Andrei Dinu <andrei.adrianx.dinu@i=
ntel.com>)
['libxml-simple-perl', '2.20', '2.20', 'Artistic-1.0 | GPL-1.0', 'libs', 'u=
nknown', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc   libxml-parser-perl perl perl-native', 'None', 'None',=
 'libxml-simple-perl version 2.20-r0', 'MATCH', 'N/A', 'http://www.cpan.org=
/modules/by-module/XML/XML-Simple-2.20.tar.gz', 'Saul Wold <sgw@linux.intel=
=2Ecom>', 'None']
inserted (libxml-simple-perl,2.20,2.20,Artistic-1.0 | GPL-1.0,libs,r0,None,=
unknown,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc   libxml-parser-perl perl perl-native,libxml-simple-=
perl version 2.20-r0,N/A,http://www.cpan.org/modules/by-module/XML/XML-Simp=
le-2.20.tar.gz,Saul Wold <sgw@linux.intel.com>)
['cups', '1.6.1', '1.6.2', 'GPLv2 & LGPLv2', 'console/utils', 'unknown', 'r=
0', 'autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  gnutls libpng jpeg dbus dbus-glib zlib libusb        ', 'None=
', 'None', 'An Internet printing system for Unix.', 'UPDATE', '1.6.0', 'ftp=
://ftp.easysw.com/pub/cups/1.6.1/cups-1.6.1-source.tar.bz2', 'Saul Wold <sg=
w@linux.intel.com>', 'None']
inserted (cups,1.6.1,1.6.2,GPLv2 & LGPLv2,console/utils,r0,None,unknown,Non=
e,UPDATE,autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  gnutls libpng jpeg dbus dbus-glib zlib libusb        ,An =
Internet printing system for Unix.,1.6.0,ftp://ftp.easysw.com/pub/cups/1.6.=
1/cups-1.6.1-source.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['pigz', '2.3', '2.3', 'Zlib', 'console/utils', 'http://zlib.net/pigz/', 'r=
1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  zlib', 'None', 'None', 'pigz, which stands for parallel implement=
ation of gzip, is a fully functional replacement for gzip that exploits mul=
tiple processors and multiple cores to the hilt when compressing data. pigz=
 was written by Mark Adler, and uses the zlib and pthread libraries.', 'MAT=
CH', 'N/A', 'http://zlib.net/pigz/pigz-2.3.tar.gz', 'Saul Wold <sgw@linux.i=
ntel.com>', 'None']
inserted (pigz,2.3,2.3,Zlib,console/utils,r1,None,http://zlib.net/pigz/,Non=
e,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  zlib,pigz, which stands for parallel implementation of gzip, i=
s a fully functional replacement for gzip that exploits multiple processors=
 and multiple cores to the hilt when compressing data. pigz was written by =
Mark Adler, and uses the zlib and pthread libraries.,N/A,http://zlib.net/pi=
gz/pigz-2.3.tar.gz,Saul Wold <sgw@linux.intel.com>)
['gcc-cross-initial', '4.7.2', '4.8.0', 'GPL-3.0-with-GCC-exception & GPLv3=
', 'devel', 'http://www.gnu.org/software/gcc/', 'r19', '  virtual/i586-poky=
-linux-binutils mpfr-native gmp-native libmpc-native zlib-native', 'None', =
'None', 'The GNU cc and gcc C compilers.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.=
org/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.bz2', 'Bogdan Marinescu <bogdan.a.marin=
escu@intel.com>', 'None']
inserted (gcc-cross-initial,4.7.2,4.8.0,GPL-3.0-with-GCC-exception & GPLv3,=
devel,r19,None,http://www.gnu.org/software/gcc/,None,UPDATE,  virtual/i586-=
poky-linux-binutils mpfr-native gmp-native libmpc-native zlib-native,The GN=
U cc and gcc C compilers.,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.7.2/gcc-4.7.2=
=2Etar.bz2,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['systemtap-uprobes', '2.1+gitAUTOINC+addec81', '2.1+gitAUTOINC+ac097ee', '=
GPLv2', 'base', 'unknown', 'r1', 'virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  syste=
mtap virtual/kernel', 'None', 'None', 'UProbes kernel module for SystemTap'=
, 'MATCH', 'N/A', 'git://sourceware.org/git/systemtap.git;protocol=3Dgit', =
'Tom Zanussi <tom.zanussi@intel.com>', 'None']
inserted (systemtap-uprobes,2.1+gitAUTOINC+addec81,2.1+gitAUTOINC+ac097ee,G=
PLv2,base,r1,None,unknown,None,MATCH,virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  sy=
stemtap virtual/kernel,UProbes kernel module for SystemTap,N/A,git://source=
ware.org/git/systemtap.git;protocol=3Dgit,Tom Zanussi <tom.zanussi@intel.co=
m>)
['gtk-sato-engine', '0.3.3+gitAUTOINC+4740ad8', '0.3.3+gitAUTOINC+4740ad8',=
 'LGPLv2.1 & LGPLv2+', 'x11/base', 'http://www.o-hand.com', 'r0', 'pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  gtk+', 'http://bugzilla.openedhand.com/', 'None', 'Sato t=
heme engine for GTK', 'MATCH', 'N/A', 'git://git.yoctoproject.org/gtk-sato-=
engine;protocol=3Dgit', 'Constantin Musca <constantinx.musca@intel.com>', '=
None']
inserted (gtk-sato-engine,0.3.3+gitAUTOINC+4740ad8,0.3.3+gitAUTOINC+4740ad8=
,LGPLv2.1 & LGPLv2+,x11/base,r0,None,http://www.o-hand.com,http://bugzilla.=
openedhand.com/,MATCH,pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  gtk+,Sato theme engine for =
GTK,N/A,git://git.yoctoproject.org/gtk-sato-engine;protocol=3Dgit,Constanti=
n Musca <constantinx.musca@intel.com>)
['pkgconfig', '0.25', '0.28', 'GPLv2+', 'console/utils', 'http://pkg-config=
=2Efreedesktop.org/wiki/', 'r7', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  glib-2.0 popt', 'http://bugs.fre=
edesktop.org/buglist.cgi?product=3Dpkg-config', 'None', 'pkg-config is a he=
lper tool used when compiling applications and libraries. It helps determin=
ed the correct compiler/link options.  It is also language-agnostic.', 'UPD=
ATE', 'N/A', 'http://pkgconfig.freedesktop.org/releases/pkg-config-0.25.tar=
=2Egz', 'Saul Wold <sgw@linux.intel.com>', 'removes glib-conf, adds circula=
r depends']
inserted (pkgconfig,0.25,0.28,GPLv2+,console/utils,r7,None,http://pkg-confi=
g.freedesktop.org/wiki/,http://bugs.freedesktop.org/buglist.cgi?product=3Dp=
kg-config,UPDATE,autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  glib-2.0 popt,pkg-config is a helper tool used wh=
en compiling applications and libraries. It helps determined the correct co=
mpiler/link options.  It is also language-agnostic.,N/A,http://pkgconfig.fr=
eedesktop.org/releases/pkg-config-0.25.tar.gz,Saul Wold <sgw@linux.intel.co=
m>)
['kconfig-frontends', '3.8.0', '3.8.0.0', 'GPL-2.0', 'devel', 'http://ymori=
n.is-a-geek.org/projects/kconfig-frontends', 'r0', 'autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   ncurses flex =
bison gperf pkgconfig-native', 'None', 'None', 'The kconfig-frontends proje=
ct aims at centralising the effort of keeping an up-to-date, out-of-tree, p=
ackaging of the kconfig infrastructure, ready for use by third-party projec=
ts. The kconfig-frontends package provides the kconfig parser, as well as a=
ll the frontends', 'UPDATE', 'N/A', 'http://ymorin.is-a-geek.org/download/k=
config-frontends/kconfig-frontends-3.8.0.0.tar.xz', 'Saul Wold <sgw@linux.i=
ntel.com>', 'None']
inserted (kconfig-frontends,3.8.0,3.8.0.0,GPL-2.0,devel,r0,None,http://ymor=
in.is-a-geek.org/projects/kconfig-frontends,None,UPDATE,autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   ncurses f=
lex bison gperf pkgconfig-native,The kconfig-frontends project aims at cent=
ralising the effort of keeping an up-to-date, out-of-tree, packaging of the=
 kconfig infrastructure, ready for use by third-party projects. The kconfig=
-frontends package provides the kconfig parser, as well as all the frontend=
s,N/A,http://ymorin.is-a-geek.org/download/kconfig-frontends/kconfig-fronte=
nds-3.8.0.0.tar.xz,Saul Wold <sgw@linux.intel.com>)
['xorg-minimal-fonts', '1.0', 'INVALID', 'PD', 'x11/fonts', 'http://www.x.o=
rg', 'r2', ' ', 'n/a', '1', 'Minimal fonts required by X.org.', 'MATCH', 'N=
/A', 'file://misc', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xorg-minimal-fonts,1.0,INVALID,PD,x11/fonts,r2,1,http://www.x.org=
,n/a,MATCH, ,Minimal fonts required by X.org.,N/A,file://misc,Laurentiu Pal=
cu <laurentiu.palcu@intel.com>)
['libxpm', '3.5.10', '3.5.10', 'BSD', 'x11/libs', 'http://www.x.org', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros libxext libsm libxt', 'https://bugs=
=2Efreedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXpm provides sup=
port and common operation for the XPM pixmap format, which is commonly used=
 in legacy X applications.  XPM is an extension of the monochrome XBM bitma=
p specificied in the X protocol.', 'MATCH', 'N/A', 'http://xorg.freedesktop=
=2Eorg/releases/individual/lib/libXpm-3.5.10.tar.bz2', 'Constantin Musca <c=
onstantinx.musca@intel.com>', 'None']
inserted (libxpm,3.5.10,3.5.10,BSD,x11/libs,r0,1,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  util-macros libxext libsm libxt,libXpm provides support and common op=
eration for the XPM pixmap format, which is commonly used in legacy X appli=
cations.  XPM is an extension of the monochrome XBM bitmap specificied in t=
he X protocol.,N/A,http://xorg.freedesktop.org/releases/individual/lib/libX=
pm-3.5.10.tar.bz2,Constantin Musca <constantinx.musca@intel.com>)
['linux-yocto', '3.8.4+gitAUTOINC+27b63fd', '3.8.4+gitAUTOINC+ddd23a8', 'GP=
Lv2', 'kernel', 'unknown', 'r4.1', '  virtual/i586-poky-linux-gcc kmod-nati=
ve depmodwrapper-cross', 'None', 'None', 'Yocto Kernel', 'MATCH', 'N/A', 'g=
it://git.yoctoproject.org/linux-yocto-3.8.git;protocol=3Dgit;bareclone=3D1;=
branch=3Dstandard/base,meta;name=3Dmachine,meta', 'Darren Hart <dvhart@linu=
x.intel.com>', 'None']
inserted (linux-yocto,3.8.4+gitAUTOINC+27b63fd,3.8.4+gitAUTOINC+ddd23a8,GPL=
v2,kernel,r4.1,None,unknown,None,MATCH,  virtual/i586-poky-linux-gcc kmod-n=
ative depmodwrapper-cross,Yocto Kernel,N/A,git://git.yoctoproject.org/linux=
-yocto-3.8.git;protocol=3Dgit;bareclone=3D1;branch=3Dstandard/base,meta;nam=
e=3Dmachine,meta,Darren Hart <dvhart@linux.intel.com>)
['libnss-mdns', '0.10', '0.10', 'LGPLv2.1+', 'libs', 'http://0pointer.de/le=
nnart/projects/nss-mdns/', 'r7', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  avahi', 'None', 'None', 'NSS mod=
ule for Multicast DNS name resolution', 'MATCH', 'N/A', 'http://0pointer.de=
/lennart/projects/nss-mdns/nss-mdns-0.10.tar.gz', 'Saul Wold <sgw@linux.int=
el.com>', 'None']
inserted (libnss-mdns,0.10,0.10,LGPLv2.1+,libs,r7,None,http://0pointer.de/l=
ennart/projects/nss-mdns/,None,MATCH,autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  avahi,NSS module for Multicas=
t DNS name resolution,N/A,http://0pointer.de/lennart/projects/nss-mdns/nss-=
mdns-0.10.tar.gz,Saul Wold <sgw@linux.intel.com>)
['libpcre', '8.32', '8.32', 'BSD', 'devel', 'http://www.pcre.org', 'r1', 'a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc   bzip2 zlib readline', 'None', 'None', 'The PCRE library is a set o=
f functions that implement regular expression pattern matching using the sa=
me syntax and semantics as Perl 5. PCRE has its own native API, as well as =
a set of wrapper functions that correspond to the POSIX regular expression =
API.', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/project/pcre/pcre/=
8.32/pcre-8.32.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>',=
 'None']
inserted (libpcre,8.32,8.32,BSD,devel,r1,None,http://www.pcre.org,None,MATC=
H,autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc   bzip2 zlib readline,The PCRE library is a set of functions that=
 implement regular expression pattern matching using the same syntax and se=
mantics as Perl 5. PCRE has its own native API, as well as a set of wrapper=
 functions that correspond to the POSIX regular expression API.,N/A,http://=
downloads.sourceforge.net/project/pcre/pcre/8.32/pcre-8.32.tar.bz2,Bogdan M=
arinescu <bogdan.a.marinescu@intel.com>)
['dosfstools', '2.11', '2.11', 'GPLv2', 'base', 'unknown', 'r5', ' virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', '=
None', 'None', 'DOS FAT Filesystem Utilities', 'MATCH', 'N/A', 'ftp://ftp.u=
ni-erlangen.de/pub/Linux/LOCAL/dosfstools/dosfstools-2.11.src.tar.gz', 'And=
rei Dinu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (dosfstools,2.11,2.11,GPLv2,base,r5,None,unknown,None,MATCH, virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,=
DOS FAT Filesystem Utilities,N/A,ftp://ftp.uni-erlangen.de/pub/Linux/LOCAL/=
dosfstools/dosfstools-2.11.src.tar.gz,Andrei Dinu <andrei.adrianx.dinu@inte=
l.com>)
['lighttpd', '1.4.32', '1.4.32', 'BSD', 'net', 'http://www.lighttpd.net/', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib libpcr=
e update-rc.d-native', 'http://redmine.lighttpd.net/projects/lighttpd/issue=
s', 'None', 'Lightweight high-performance web server', 'MATCH', 'N/A', 'htt=
p://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.32.tar.bz2',=
 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (lighttpd,1.4.32,1.4.32,BSD,net,r0,None,http://www.lighttpd.net/,h=
ttp://redmine.lighttpd.net/projects/lighttpd/issues,MATCH,pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  zlib libpcre update-rc.d-native,Lig=
htweight high-performance web server,N/A,http://download.lighttpd.net/light=
tpd/releases-1.4.x/lighttpd-1.4.32.tar.bz2,Constantin Musca <constantinx.mu=
sca@intel.com>)
['latencytop', '0.5', '0.5', 'GPLv2', 'base', 'http://www.latencytop.org/',=
 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  virtual/libintl ncurses glib-2.0  gtk+', 'n/a', 'None', 'Laten=
cyTOP, a Linux tool measuring and fixing latency', 'MATCH', 'N/A', 'http://=
www.latencytop.org/download/latencytop-0.5.tar.gz', 'Bogdan Marinescu <bogd=
an.a.marinescu@intel.com>', 'None']
inserted (latencytop,0.5,0.5,GPLv2,base,r3,None,http://www.latencytop.org/,=
n/a,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  virtual/libintl ncurses glib-2.0  gtk+,LatencyTOP, a Linux t=
ool measuring and fixing latency,N/A,http://www.latencytop.org/download/lat=
encytop-0.5.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['lrzsz', '0.12.20', '0.12.20', 'GPLv2+', 'console/network', 'http://www.oh=
se.de/uwe/software/lrzsz.html', 'r5', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc   virtual/update-alternatives', 'None', 'None', "Lrzsz is a cosmetically=
 modified zmodem/ymodem/xmodem package built from the public-domain version=
 of Chuck Forsberg's rzsz package. These programs use error correcting prot=
ocols ({z,x,y}modem) to send (sz, sx, sb) and receive (rz, rx, rb) files ov=
er a dial-in serial port from a variety of programs running under various o=
perating systems. ", 'MATCH', 'N/A', 'http://www.ohse.de/uwe/releases/lrzsz=
-0.12.20.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (lrzsz,0.12.20,0.12.20,GPLv2+,console/network,r5,None,http://www.o=
hse.de/uwe/software/lrzsz.html,None,MATCH,autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native virtual/gettext gettext-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   virtual/update-alternatives,Lrzsz is a cosmetically modified zmodem=
/ymodem/xmodem package built from the public-domain version of Chuck Forsbe=
rg's rzsz package. These programs use error correcting protocols ({z,x,y}mo=
dem) to send (sz, sx, sb) and receive (rz, rx, rb) files over a dial-in ser=
ial port from a variety of programs running under various operating systems=
=2E ,N/A,http://www.ohse.de/uwe/releases/lrzsz-0.12.20.tar.gz,Cristian Iorg=
a <cristian.iorga@intel.com>)
['hdparm', '9.43', '9.43', 'BSD', 'console/utils', 'unknown', 'r0', ' virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   =
virtual/update-alternatives', 'None', 'None', 'hdparm is a Linux shell util=
ity for viewing and manipulating various IDE drive and driver parameters.',=
 'MATCH', 'N/A', 'http://downloads.sourceforge.net/hdparm/hdparm-9.43.tar.g=
z', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (hdparm,9.43,9.43,BSD,console/utils,r0,None,unknown,None,MATCH, vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
   virtual/update-alternatives,hdparm is a Linux shell utility for viewing =
and manipulating various IDE drive and driver parameters.,N/A,http://downlo=
ads.sourceforge.net/hdparm/hdparm-9.43.tar.gz,Radu Moisan <radu.moisan@inte=
l.com>)
['linux-dummy', '1.0', 'INVALID', 'GPL', 'kernel', 'unknown', 'r1', ' virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  '=
, 'None', 'None', 'Dummy Linux kernel', 'MATCH', 'N/A', 'file://COPYING.GPL=
', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (linux-dummy,1.0,INVALID,GPL,kernel,r1,None,unknown,None,MATCH, vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  ,Dummy Linux kernel,N/A,file://COPYING.GPL,Saul Wold <sgw@linux.intel.com=
>)
['libevent', '2.0.21', '2.0.21', 'BSD', 'libs', 'http://libevent.org/', 'r1=
', 'autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  ', 'http://sourceforge.net/tracker/?group_id=3D50884&atid=3D46=
1322', 'None', 'An asynchronous event notification library', 'MATCH', 'N/A'=
, 'http://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar=
=2Egz', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (libevent,2.0.21,2.0.21,BSD,libs,r1,None,http://libevent.org/,http=
://sourceforge.net/tracker/?group_id=3D50884&atid=3D461322,MATCH,autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,=
An asynchronous event notification library,N/A,http://github.com/downloads/=
libevent/libevent/libevent-2.0.21-stable.tar.gz,Andrei Dinu <andrei.adrianx=
=2Edinu@intel.com>)
['gtk-theme-torturer', '0.0.0+gitAUTOINC+99962ae', '0.0.0+gitAUTOINC+99962a=
e', 'GPLv2', 'devel', 'http://wiki.laptop.org/go/GTK_for_OLPC', 'r0', ' vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 gtk+', 'None', 'None', 'Gtk+ Theme Benchmark Program', 'MATCH', 'N/A', 'gi=
t://dev.laptop.org/projects/soc-gtk/;protocol=3Dgit', 'Constantin Musca <co=
nstantinx.musca@intel.com>', 'None']
inserted (gtk-theme-torturer,0.0.0+gitAUTOINC+99962ae,0.0.0+gitAUTOINC+9996=
2ae,GPLv2,devel,r0,None,http://wiki.laptop.org/go/GTK_for_OLPC,None,MATCH, =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  gtk+,Gtk+ Theme Benchmark Program,N/A,git://dev.laptop.org/projects/soc=
-gtk/;protocol=3Dgit,Constantin Musca <constantinx.musca@intel.com>)
['gst-ffmpeg', '0.10.13', '0.11.2', 'GPLv2+ & LGPLv2+ & ( (GPLv2+ & LGPLv2.=
1+) | (GPLv3+ & LGPLv3+) )', 'multimedia', 'http://www.gstreamer.net/', 'r4=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  gstreamer gst-plugins-base zlib bzip2', 'None=
', 'None', 'FFmpeg-based GStreamer plug-in', 'UPDATE', 'N/A', 'http://gstre=
amer.freedesktop.org/src/gst-ffmpeg/gst-ffmpeg-0.10.13.tar.bz2', 'Cristian =
Iorga <cristian.iorga@intel.com>', 'not compatible with gst-fluendo 0.10.x']
inserted (gst-ffmpeg,0.10.13,0.11.2,GPLv2+ & LGPLv2+ & ( (GPLv2+ & LGPLv2.1=
+) | (GPLv3+ & LGPLv3+) ),multimedia,r4,None,http://www.gstreamer.net/,None=
,UPDATE,pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base zlib bzip2,FFm=
peg-based GStreamer plug-in,N/A,http://gstreamer.freedesktop.org/src/gst-ff=
mpeg/gst-ffmpeg-0.10.13.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['libsdl', '1.2.15', '1.2.15-1', 'LGPLv2.1', 'libs', 'http://www.libsdl.org=
', 'r2', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc              virtual/libgl            vi=
rtual/libx11 libxext libxrandr libxrender            tslib alsa-lib', 'http=
://bugzilla.libsdl.org/', 'None', 'Simple DirectMedia Layer is a cross-plat=
form multimedia library designed to provide low level access to audio, keyb=
oard, mouse, joystick, 3D hardware via OpenGL, and 2D video framebuffer.', =
'UPDATE', 'N/A', 'http://www.libsdl.org/release/SDL-1.2.15.tar.gz', 'Kai Ka=
ng <kai.kang@windriver.com>', 'None']
inserted (libsdl,1.2.15,1.2.15-1,LGPLv2.1,libs,r2,None,http://www.libsdl.or=
g,http://bugzilla.libsdl.org/,UPDATE,pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc              =
virtual/libgl            virtual/libx11 libxext libxrandr libxrender       =
     tslib alsa-lib,Simple DirectMedia Layer is a cross-platform multimedia=
 library designed to provide low level access to audio, keyboard, mouse, jo=
ystick, 3D hardware via OpenGL, and 2D video framebuffer.,N/A,http://www.li=
bsdl.org/release/SDL-1.2.15.tar.gz,Kai Kang <kai.kang@windriver.com>)
['dpkg', '1.16.9', '1.16.10', 'GPLv2.0+', 'base', 'unknown', 'r19.0', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  zlib bzip2 perl ncurse=
s perl-native', 'None', 'None', 'Package maintenance system for Debian.', '=
UPDATE', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/d/dpkg/dpkg_1.16.9.t=
ar.xz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (dpkg,1.16.9,1.16.10,GPLv2.0+,base,r19.0,None,unknown,None,UPDATE,=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib bzip2 perl nc=
urses perl-native,Package maintenance system for Debian.,N/A,ftp://ftp.debi=
an.org/debian/pool/main/d/dpkg/dpkg_1.16.9.tar.xz,Saul Wold <sgw@linux.inte=
l.com>)
['beecrypt', '4.2.1', '4.2.1', 'GPLv2 & LGPLv2.1', 'base', 'http://sourcefo=
rge.net/projects/beecrypt', 'r3', 'autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  icu', 'None', 'None', 'Beecrypt=
 is a general-purpose cryptography library.', 'MATCH', 'N/A', 'http://downl=
oads.sourceforge.net/beecrypt/beecrypt-4.2.1.tar.gz', 'Radu Moisan <radu.mo=
isan@intel.com>', 'None']
inserted (beecrypt,4.2.1,4.2.1,GPLv2 & LGPLv2.1,base,r3,None,http://sourcef=
orge.net/projects/beecrypt,None,MATCH,autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  icu,Beecrypt is a general-pu=
rpose cryptography library.,N/A,http://downloads.sourceforge.net/beecrypt/b=
eecrypt-4.2.1.tar.gz,Radu Moisan <radu.moisan@intel.com>)
['pm-utils', '1.4.1', '1.4.1', 'GPLv2', 'base', 'http://pm-utils.freedeskto=
p.org/wiki/', 'r1', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native pkgconfig-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'Simple s=
hell command line tools to suspend and hibernate.', 'MATCH', 'N/A', 'http:/=
/pm-utils.freedesktop.org/releases/pm-utils-1.4.1.tar.gz', 'Cristian Iorga =
<cristian.iorga@intel.com>', 'None']
inserted (pm-utils,1.4.1,1.4.1,GPLv2,base,r1,None,http://pm-utils.freedeskt=
op.org/wiki/,None,MATCH,autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native pkgconfig-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  ,Simple shell command lin=
e tools to suspend and hibernate.,N/A,http://pm-utils.freedesktop.org/relea=
ses/pm-utils-1.4.1.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['grep', '2.14', '2.14', 'GPLv3', 'console/utils', 'http://savannah.gnu.org=
/projects/grep/', 'r0', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/u=
pdate-alternatives', 'http://savannah.gnu.org/bugs/?group=3Dgrep', 'None', =
'GNU grep utility', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/grep/grep-2.14.t=
ar.xz', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (grep,2.14,2.14,GPLv3,console/utils,r0,None,http://savannah.gnu.or=
g/projects/grep/,http://savannah.gnu.org/bugs/?group=3Dgrep,MATCH,autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native virtu=
al/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc   virtual/update-alternatives,GNU grep utilit=
y,N/A,ftp://ftp.gnu.org/gnu/grep/grep-2.14.tar.xz,Andrei Dinu <andrei.adria=
nx.dinu@intel.com>)
['guile', '2.0.7', '2.0.9', 'GPLv3', 'devel', 'http://www.gnu.org/software/=
guile/', 'r1', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libunistring bdwgc =
gmp libtool libffi guile-native libatomics-ops', 'None', 'None', "Guile is =
the GNU Ubiquitous Intelligent Language for Extensions, the official extens=
ion language for the GNU operating system. Guile is a library designed to h=
elp programmers create flexible applications. Using Guile in an application=
 allows the application's functionality to be extended by users or other pr=
ogrammers with plug-ins, modules, or scripts. Guile provides what might be =
described as 'practical software freedom,' making it possible for users to =
customize an application to meet their needs without digging into the appli=
cation's internals.", 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/guile/guile-2=
=2E0.7.tar.xz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (guile,2.0.7,2.0.9,GPLv3,devel,r1,None,http://www.gnu.org/software=
/guile/,None,UPDATE,autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libunistring bd=
wgc gmp libtool libffi guile-native libatomics-ops,Guile is the GNU Ubiquit=
ous Intelligent Language for Extensions, the official extension language fo=
r the GNU operating system. Guile is a library designed to help programmers=
 create flexible applications. Using Guile in an application allows the app=
lication's functionality to be extended by users or other programmers with =
plug-ins, modules, or scripts. Guile provides what might be described as 'p=
ractical software freedom,' making it possible for users to customize an ap=
plication to meet their needs without digging into the application's intern=
als.,N/A,ftp://ftp.gnu.org/gnu/guile/guile-2.0.7.tar.xz,Bogdan Marinescu <b=
ogdan.a.marinescu@intel.com>)
['python-scons', '2.2.0', '2.3.0', 'MIT', 'devel/python', 'unknown', 'r0', =
' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc   python-native python  python-native ', 'None', 'None', 'A Software C=
onstruction Tool', 'UPDATE', 'N/A', 'http://downloads.sourceforge.net/scons=
/scons-2.2.0.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'N=
one']
inserted (python-scons,2.2.0,2.3.0,MIT,devel/python,r0,None,unknown,None,UP=
DATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc   python-native python  python-native ,A Software Construction Too=
l,N/A,http://downloads.sourceforge.net/scons/scons-2.2.0.tar.gz,Bogdan Mari=
nescu <bogdan.a.marinescu@intel.com>)
['dtc', '1.3.0+gitAUTOINC+033089f', '1.3.0+gitAUTOINC+f5aa792', 'GPLv2 | BS=
D', 'bootloader', 'unknown', 'r3.1', 'autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  flex-native bison-native', '=
None', 'None', 'The Device Tree Compiler is a tool used to manipulate the O=
pen-Firmware-like device tree used by PowerPC kernels.', 'MATCH', '1.3.0', =
'git://www.jdl.com/software/dtc.git;protocol=3Dgit', 'Saul Wold <sgw@linux.=
intel.com>', 'None']
inserted (dtc,1.3.0+gitAUTOINC+033089f,1.3.0+gitAUTOINC+f5aa792,GPLv2 | BSD=
,bootloader,r3.1,None,unknown,None,MATCH,autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  flex-native bison-native,=
The Device Tree Compiler is a tool used to manipulate the Open-Firmware-lik=
e device tree used by PowerPC kernels.,1.3.0,git://www.jdl.com/software/dtc=
=2Egit;protocol=3Dgit,Saul Wold <sgw@linux.intel.com>)
['libglu', '9.0.0', '9.0.0', 'MIT', 'x11', 'http://mesa3d.org', '0', 'pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  virtual/libgl', 'https://bugs.freedesktop.org', '2', '=
GLU is a utility toolkit used with OpenGL implementations', 'MATCH', 'N/A',=
 'ftp://ftp.freedesktop.org/pub/mesa/glu/glu-9.0.0.tar.bz2', 'Saul Wold <sg=
w@linux.intel.com>', 'None']
inserted (libglu,9.0.0,9.0.0,MIT,x11,0,2,http://mesa3d.org,https://bugs.fre=
edesktop.org,MATCH,pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  virtual/libgl,GLU is a utility=
 toolkit used with OpenGL implementations,N/A,ftp://ftp.freedesktop.org/pub=
/mesa/glu/glu-9.0.0.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['pong-clock', '1.0', 'INVALID', 'GPLv2+', 'base', 'unknown', 'r0', ' virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  v=
irtual/libx11 xdmcp xau', 'None', 'None', 'A clock combined with a game of =
pong', 'MATCH', '1.0', 'file://pong-clock-no-flicker.c', 'Constantin Musca =
<constantinx.musca@intel.com>', 'None']
inserted (pong-clock,1.0,INVALID,GPLv2+,base,r0,None,unknown,None,MATCH, vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  virtual/libx11 xdmcp xau,A clock combined with a game of pong,1.0,file://=
pong-clock-no-flicker.c,Constantin Musca <constantinx.musca@intel.com>)
['xprop', '1.2.1', '1.2.1', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros-native virtual/libx11  libxmu vir=
tual/libx11', 'https://bugs.freedesktop.org', '1', 'The xprop utility is fo=
r displaying window and font properties in an X server. One window or font =
is selected using the command line arguments or possibly in the case of a w=
indow, by clicking on the desired window. A list of properties is then give=
n, possibly with formatting information.', 'MATCH', 'N/A', 'http://xorg.fre=
edesktop.org/releases/individual/app/xprop-1.2.1.tar.bz2', 'Laurentiu Palcu=
 <laurentiu.palcu@intel.com>', 'None']
inserted (xprop,1.2.1,1.2.1,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https:/=
/bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native vi=
rtual/libx11  libxmu virtual/libx11,The xprop utility is for displaying win=
dow and font properties in an X server. One window or font is selected usin=
g the command line arguments or possibly in the case of a window, by clicki=
ng on the desired window. A list of properties is then given, possibly with=
 formatting information.,N/A,http://xorg.freedesktop.org/releases/individua=
l/app/xprop-1.2.1.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['gtk-update-icon-cache-native', '3.4.4', '3.8.1', 'LGPLv2 & LGPLv2+ & LGPL=
v2.1+', 'libs', 'unknown', 'r0', 'pkgconfig-native  gdk-pixbuf-native', 'No=
ne', 'None', 'Just gtk-update-icon-cache built from GTK+ natively, for on-h=
ost postinst script execution.', 'UPDATE', 'N/A', 'http://download.gnome.or=
g/sources/gtk+/3.4/gtk+-3.4.4.tar.xz', 'None', 'None']
inserted (gtk-update-icon-cache-native,3.4.4,3.8.1,LGPLv2 & LGPLv2+ & LGPLv=
2.1+,libs,r0,None,unknown,None,UPDATE,pkgconfig-native  gdk-pixbuf-native,J=
ust gtk-update-icon-cache built from GTK+ natively, for on-host postinst sc=
ript execution.,N/A,http://download.gnome.org/sources/gtk+/3.4/gtk+-3.4.4.t=
ar.xz,None)
['libjson', '0.9', '0.9', 'MIT', 'base', 'http://oss.metaparadigm.com/json-=
c/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', 'None', 'JSON-C - A JSON implementation in =
C', 'MATCH', 'N/A', 'http://oss.metaparadigm.com/json-c/json-c-0.9.tar.gz',=
 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (libjson,0.9,0.9,MIT,base,r0,None,http://oss.metaparadigm.com/json=
-c/,None,MATCH,autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ,JSON-C - A JSON implementation in C,N/A,http://oss=
=2Emetaparadigm.com/json-c/json-c-0.9.tar.gz,Bogdan Marinescu <bogdan.a.mar=
inescu@intel.com>)
['fontsproto', '2.1.2', '2.1.2', 'MIT-style', 'x11/libs', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the X Font rasterisation extensions.  These extensions are use=
d to control server-side font configurations.', 'MATCH', 'N/A', 'http://xor=
g.freedesktop.org/releases/individual/proto/fontsproto-2.1.2.tar.bz2', 'Lau=
rentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (fontsproto,2.1.2,2.1.2,MIT-style,x11/libs,r0,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  util-macros,This package provides the wire protocol for the X=
 Font rasterisation extensions.  These extensions are used to control serve=
r-side font configurations.,N/A,http://xorg.freedesktop.org/releases/indivi=
dual/proto/fontsproto-2.1.2.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.=
com>)
['matchbox-desktop-sato', '0.1+gitAUTOINC+810b0b0', '0.1+gitAUTOINC+810b0b0=
', 'GPLv2', 'x11', 'http://matchbox-project.org', 'r1', 'pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  ', 'http://bugzilla.openedhand.com/', 'None', 'Sato desktop folders=
', 'MATCH', 'N/A', 'git://git.yoctoproject.org/matchbox-desktop-sato;protoc=
ol=3Dgit', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (matchbox-desktop-sato,0.1+gitAUTOINC+810b0b0,0.1+gitAUTOINC+810b0=
b0,GPLv2,x11,r1,None,http://matchbox-project.org,http://bugzilla.openedhand=
=2Ecom/,MATCH,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  ,Sato desktop folders,N/A,git://git=
=2Eyoctoproject.org/matchbox-desktop-sato;protocol=3Dgit,Constantin Musca <=
constantinx.musca@intel.com>)
['xf86-input-mouse', '1.8.1', '1.9.0', 'MIT-X', 'x11/drivers', 'http://www.=
x.org', 'r21.0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randrpro=
to util-macros inputproto kbproto ', 'https://bugs.freedesktop.org', '2', "=
mouse is an Xorg input driver for mice. The driver supports most available =
mouse types and interfaces.  The mouse driver functions as a pointer input =
device, and may be used as the X server's core pointer. Multiple mice are s=
upported by multiple instances of this driver.", 'UPDATE', 'N/A', 'http://x=
org.freedesktop.org/releases/individual/driver/xf86-input-mouse-1.8.1.tar.b=
z2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86-input-mouse,1.8.1,1.9.0,MIT-X,x11/drivers,r21.0,2,http://www=
=2Ex.org,https://bugs.freedesktop.org,UPDATE,pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virt=
ual/xserver xproto randrproto util-macros inputproto kbproto ,mouse is an X=
org input driver for mice. The driver supports most available mouse types a=
nd interfaces.  The mouse driver functions as a pointer input device, and m=
ay be used as the X server's core pointer. Multiple mice are supported by m=
ultiple instances of this driver.,N/A,http://xorg.freedesktop.org/releases/=
individual/driver/xf86-input-mouse-1.8.1.tar.bz2,Laurentiu Palcu <laurentiu=
=2Epalcu@intel.com>)
['hicolor-icon-theme', '0.12', '0.12', 'GPLv2', 'unknown', 'http://icon-the=
me.freedesktop.org/wiki/HicolorTheme', 'r1', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native gnu-config-native  ', 'https://bugs.free=
desktop.org/', 'None', 'default icon theme that all icon themes automatical=
ly inherit from.', 'MATCH', 'N/A', 'http://icon-theme.freedesktop.org/relea=
ses/hicolor-icon-theme-0.12.tar.gz', 'Constantin Musca <constantinx.musca@i=
ntel.com>', 'None']
inserted (hicolor-icon-theme,0.12,0.12,GPLv2,unknown,r1,None,http://icon-th=
eme.freedesktop.org/wiki/HicolorTheme,https://bugs.freedesktop.org/,MATCH,p=
kgconfig-native autoconf-native automake-native libtool-native gnu-config-n=
ative  ,default icon theme that all icon themes automatically inherit from.=
,N/A,http://icon-theme.freedesktop.org/releases/hicolor-icon-theme-0.12.tar=
=2Egz,Constantin Musca <constantinx.musca@intel.com>)
['pointercal', '0.0', 'INVALID', 'MIT', 'base', 'unknown', 'r11', ' ', 'Non=
e', 'None', 'Touchscreen calibration data', 'MATCH', '0.0', 'file://pointer=
cal', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (pointercal,0.0,INVALID,MIT,base,r11,None,unknown,None,MATCH, ,Tou=
chscreen calibration data,0.0,file://pointercal,Constantin Musca <constanti=
nx.musca@intel.com>)
['libcroco', '0.6.8', '0.6.8', 'LGPLv2 & LGPLv2.1', 'x11/utils', 'http://ww=
w.gnome.org/', 'r1', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 libxml2 zlib gnome=
-common-native hicolor-icon-theme gtk-update-icon-cache-native gconf gconf-=
native shared-mime-info-native shared-mime-info', 'https://bugzilla.gnome.o=
rg/', 'None', 'The Libcroco project is an effort to build a generic Cascadi=
ng Style Sheet (CSS) parsing and manipulation toolkit', 'MATCH', 'N/A', 'ht=
tp://ftp.gnome.org/pub/GNOME/sources/libcroco/0.6/libcroco-0.6.8.tar.xz;nam=
e=3Darchive', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (libcroco,0.6.8,0.6.8,LGPLv2 & LGPLv2.1,x11/utils,r1,None,http://w=
ww.gnome.org/,https://bugzilla.gnome.org/,MATCH,pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  g=
lib-2.0 libxml2 zlib gnome-common-native hicolor-icon-theme gtk-update-icon=
-cache-native gconf gconf-native shared-mime-info-native shared-mime-info,T=
he Libcroco project is an effort to build a generic Cascading Style Sheet (=
CSS) parsing and manipulation toolkit,N/A,http://ftp.gnome.org/pub/GNOME/so=
urces/libcroco/0.6/libcroco-0.6.8.tar.xz;name=3Darchive,Constantin Musca <c=
onstantinx.musca@intel.com>)
['xf86-video-modesetting', '0.6.0', '0.7.0', 'MIT-X', 'x11/drivers', 'http:=
//www.x.org', 'r21.0', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xe=
xtproto fontsproto virtual/xserver xproto randrproto util-macros', 'https:/=
/bugs.freedesktop.org', '2', 'X.Org X server -- modesetting display driver'=
, 'UPDATE', 'N/A', 'http://xorg.freedesktop.org/releases/individual/driver/=
xf86-video-modesetting-0.6.0.tar.bz2', 'None', 'None']
inserted (xf86-video-modesetting,0.6.0,0.7.0,MIT-X,x11/drivers,r21.0,2,http=
://www.x.org,https://bugs.freedesktop.org,UPDATE,pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
renderproto videoproto xextproto fontsproto virtual/xserver xproto randrpro=
to util-macros,X.Org X server -- modesetting display driver,N/A,http://xorg=
=2Efreedesktop.org/releases/individual/driver/xf86-video-modesetting-0.6.0.=
tar.bz2,None)
['libowl', '0.1+gitAUTOINC+6ebc8ac', '0.1+gitAUTOINC+6ebc8ac', 'GPLv2 & LGP=
Lv2+', 'libs', 'http://www.o-hand.com', 'r0', 'pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gt=
k+', 'http://bugzilla.openedhand.com/', 'None', 'OpenedHand Widget Library'=
, 'MATCH', 'N/A', 'git://git.yoctoproject.org/libowl;protocol=3Dgit', 'Cons=
tantin Musca <constantinx.musca@intel.com>', 'None']
inserted (libowl,0.1+gitAUTOINC+6ebc8ac,0.1+gitAUTOINC+6ebc8ac,GPLv2 & LGPL=
v2+,libs,r0,None,http://www.o-hand.com,http://bugzilla.openedhand.com/,MATC=
H,pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  gtk+,OpenedHand Widget Library,N/A,git://git.yo=
ctoproject.org/libowl;protocol=3Dgit,Constantin Musca <constantinx.musca@in=
tel.com>)
['avahi-ui', '0.6.31', '0.6.31', 'GPLv2+ & LGPLv2.1+', 'network', 'http://a=
vahi.org', 'r6.0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native virtual/gettext gettext-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  expat libcap libdaemon dbus glib-2.0 avahi gtk+ libglade update-rc.d-nati=
ve base-passwd shadow-native shadow-sysroot shadow', 'http://avahi.org/repo=
rt', 'None', 'Avahi is a fully LGPL framework for Multicast DNS Service Dis=
covery. It allows programs to publish and discover services and hosts runni=
ng on a local network with no specific configuration. This tool implements =
IPv4LL, "Dynamic Configuration of IPv4 Link-Local Addresses" (IETF RFC3927)=
, a protocol for automatic IP address configuration from the link-local 169=
=2E254.0.0/16 range without the need for a central server.', 'MATCH', 'N/A'=
, 'http://avahi.org/download/avahi-0.6.31.tar.gz', 'Constantin Musca <const=
antinx.musca@intel.com>', 'None']
inserted (avahi-ui,0.6.31,0.6.31,GPLv2+ & LGPLv2.1+,network,r6.0,None,http:=
//avahi.org,http://avahi.org/report,MATCH,pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native virtual/gett=
ext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  expat libcap libdaemon dbus glib-2.0 avahi gtk+ lib=
glade update-rc.d-native base-passwd shadow-native shadow-sysroot shadow,Av=
ahi is a fully LGPL framework for Multicast DNS Service Discovery. It allow=
s programs to publish and discover services and hosts running on a local ne=
twork with no specific configuration. This tool implements IPv4LL, "Dynamic=
 Configuration of IPv4 Link-Local Addresses" (IETF RFC3927), a protocol for=
 automatic IP address configuration from the link-local 169.254.0.0/16 rang=
e without the need for a central server.,N/A,http://avahi.org/download/avah=
i-0.6.31.tar.gz,Constantin Musca <constantinx.musca@intel.com>)
['shadow-sysroot', '4.1.4.3', 'INVALID', 'BSD | Artistic-1.0', 'base utils'=
, 'http://pkg-shadow.alioth.debian.org', 'r3', ' virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  base-passwd', 'https:/=
/alioth.debian.org/tracker/?group_id=3D30580', 'None', 'Shadow utils requir=
ements for useradd.bbclass', 'MATCH', 'N/A', 'file://login.defs_shadow-sysr=
oot', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (shadow-sysroot,4.1.4.3,INVALID,BSD | Artistic-1.0,base utils,r3,N=
one,http://pkg-shadow.alioth.debian.org,https://alioth.debian.org/tracker/?=
group_id=3D30580,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  base-passwd,Shadow utils requirements for usera=
dd.bbclass,N/A,file://login.defs_shadow-sysroot,Saul Wold <sgw@linux.intel.=
com>)
['telepathy-python', '0.15.19', '0.15.19', 'LGPLv2.1+', 'base', 'http://tel=
epathy.freedesktop.org/wiki/', 'r6', 'autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc    python-native ', 'None', '=
None', 'Telepathy framework - Python package', 'MATCH', 'N/A', 'http://tele=
pathy.freedesktop.org/releases/telepathy-python/telepathy-python-0.15.19.ta=
r.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (telepathy-python,0.15.19,0.15.19,LGPLv2.1+,base,r6,None,http://te=
lepathy.freedesktop.org/wiki/,None,MATCH,autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc    python-native ,Telepath=
y framework - Python package,N/A,http://telepathy.freedesktop.org/releases/=
telepathy-python/telepathy-python-0.15.19.tar.gz,Cristian Iorga <cristian.i=
orga@intel.com>)
['dbus-glib', '0.100.2', '0.100.2', 'AFL-2 | GPLv2+', 'base', 'http://www.f=
reedesktop.org/Software/dbus', 'r0', 'pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native virtual/gettext =
gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  expat glib-2.0 virtual/libintl dbus-glib-native dbus', =
'None', 'None', 'GLib bindings for the D-Bus message bus that integrate the=
 D-Bus library with the GLib thread abstraction and main loop.', 'MATCH', '=
N/A', 'http://dbus.freedesktop.org/releases/dbus-glib/dbus-glib-0.100.2.tar=
=2Egz', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (dbus-glib,0.100.2,0.100.2,AFL-2 | GPLv2+,base,r0,None,http://www.=
freedesktop.org/Software/dbus,None,MATCH,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native virtual/gette=
xt gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  expat glib-2.0 virtual/libintl dbus-glib-native dbus=
,GLib bindings for the D-Bus message bus that integrate the D-Bus library w=
ith the GLib thread abstraction and main loop.,N/A,http://dbus.freedesktop.=
org/releases/dbus-glib/dbus-glib-0.100.2.tar.gz,Andrei Dinu <andrei.adrianx=
=2Edinu@intel.com>)
['opkg-collateral', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r2', ' vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 ', 'None', 'None', 'opkg configuration files', 'MATCH', 'N/A', 'file://opk=
g.conf.comments', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (opkg-collateral,1.0,INVALID,MIT,base,r2,None,unknown,None,MATCH, =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  ,opkg configuration files,N/A,file://opkg.conf.comments,Radu Moisan <ra=
du.moisan@intel.com>)
['powertop', '2.3', '2.3', 'GPLv2', 'base', 'http://01.org/powertop/', 'r0'=
, 'autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  ncurses virtual/gettext libnl pciutils virtual/update-alternati=
ves', 'http://bugzilla.lesswatts.org/', 'None', 'Linux tool to diagnose iss=
ues with power consumption and power management.', 'MATCH', 'N/A', 'http://=
01.org/powertop/sites/default/files/downloads/powertop-2.3.tar.gz', 'Bogdan=
 Marinescu <bogdan.a.marinescu@intel.com>', "Do not upgrade to version 1.97=
 since it's a beta release of the comming PowerTOP 2.0"]
inserted (powertop,2.3,2.3,GPLv2,base,r0,None,http://01.org/powertop/,http:=
//bugzilla.lesswatts.org/,MATCH,autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  ncurses virtual/gettext libnl pciu=
tils virtual/update-alternatives,Linux tool to diagnose issues with power c=
onsumption and power management.,N/A,http://01.org/powertop/sites/default/f=
iles/downloads/powertop-2.3.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@int=
el.com>)
['qmmp', '0.6.6', '0.7.0', 'GPLv2', 'multimedia', 'http://qmmp.ylsoftware.c=
om', 'r0', 'qt4-tools-native qt4-x11 autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native cmake-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  taglib libmad li=
bvorbis libogg alsa-lib libsndfile1 libsamplerate0 curl', 'None', 'None', '=
Qmmp (Qt-based Multimedia Player) is an audio-player, written with help of =
Qt library', 'UPDATE', 'N/A', 'http://qmmp.ylsoftware.com/files/qmmp-0.6.6.=
tar.bz2', 'Kai Kang <kai.kang@windriver.com>', 'None']
inserted (qmmp,0.6.6,0.7.0,GPLv2,multimedia,r0,None,http://qmmp.ylsoftware.=
com,None,UPDATE,qt4-tools-native qt4-x11 autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native cmake-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  taglib libma=
d libvorbis libogg alsa-lib libsndfile1 libsamplerate0 curl,Qmmp (Qt-based =
Multimedia Player) is an audio-player, written with help of Qt library,N/A,=
http://qmmp.ylsoftware.com/files/qmmp-0.6.6.tar.bz2,Kai Kang <kai.kang@wind=
river.com>)
['telepathy-glib', '0.20.1', '0.21.0', 'LGPLv2.1+', 'base', 'http://telepat=
hy.freedesktop.org/wiki/', 'r0', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native virtual/gettext gett=
ext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  glib-2.0 dbus python-native-runtime dbus-native dbus-glib',=
 'None', 'None', 'Telepathy Framework: GLib-based helper library for connec=
tion managers', 'UPDATE', 'N/A', 'http://telepathy.freedesktop.org/releases=
/telepathy-glib/telepathy-glib-0.20.1.tar.gz', 'Cristian Iorga <cristian.io=
rga@intel.com>', 'None']
inserted (telepathy-glib,0.20.1,0.21.0,LGPLv2.1+,base,r0,None,http://telepa=
thy.freedesktop.org/wiki/,None,UPDATE,pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native virtual/gettext =
gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  glib-2.0 dbus python-native-runtime dbus-native dbus-gl=
ib,Telepathy Framework: GLib-based helper library for connection managers,N=
/A,http://telepathy.freedesktop.org/releases/telepathy-glib/telepathy-glib-=
0.20.1.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['gaku', '0.1+gitAUTOINC+a0be2fe', '0.1+gitAUTOINC+a0be2fe', 'GPLv2+', 'bas=
e', 'unknown', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  gtk+ gstreamer libowl-av', =
'None', 'None', 'Music player', 'MATCH', '0.0+svnr399', 'git://git.yoctopro=
ject.org/gaku;protocol=3Dgit', 'Cristian Iorga <cristian.iorga@intel.com>',=
 'None']
inserted (gaku,0.1+gitAUTOINC+a0be2fe,0.1+gitAUTOINC+a0be2fe,GPLv2+,base,r0=
,None,unknown,None,MATCH,pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ gstreamer libowl-av=
,Music player,0.0+svnr399,git://git.yoctoproject.org/gaku;protocol=3Dgit,Cr=
istian Iorga <cristian.iorga@intel.com>)
['which', '2.20', '2.20', 'GPLv3+', 'libs', 'http://ftp.gnu.org/gnu/which/'=
, 'r3', 'autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  cwautomacros-native virtual/update-alternatives', 'None',=
 'None', 'which - shows the full path of (shell) commands.', 'MATCH', 'N/A'=
, 'ftp://ftp.gnu.org/gnu/which/which-2.20.tar.gz', 'Radu Moisan <radu.moisa=
n@intel.com>', 'None']
inserted (which,2.20,2.20,GPLv3+,libs,r3,None,http://ftp.gnu.org/gnu/which/=
,None,MATCH,autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  cwautomacros-native virtual/update-alternatives,which =
- shows the full path of (shell) commands.,N/A,ftp://ftp.gnu.org/gnu/which/=
which-2.20.tar.gz,Radu Moisan <radu.moisan@intel.com>)
['libcap', '2.22', '2.22', 'BSD | GPLv2', 'base', 'http://sites.google.com/=
site/fullycapable/', 'r5', ' virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  attr perl-native-runtime ', 'None', 'None'=
, 'support for getting/setting POSIX.1e capabilities', 'MATCH', 'N/A', 'ftp=
://ftp.debian.org/debian/pool/main/libc/libcap2/libcap2_2.22.orig.tar.gz', =
'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libcap,2.22,2.22,BSD | GPLv2,base,r5,None,http://sites.google.com=
/site/fullycapable/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  attr perl-native-runtime ,support for g=
etting/setting POSIX.1e capabilities,N/A,ftp://ftp.debian.org/debian/pool/m=
ain/libc/libcap2/libcap2_2.22.orig.tar.gz,Saul Wold <sgw@linux.intel.com>)
['libfakekey', '0.0+gitAUTOINC+e327ff0', '0.0+gitAUTOINC+e327ff0', 'LGPLv2+=
', 'x11/wm', 'http://matchbox-project.org/', 'r0', 'pkgconfig-native autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native vi=
rtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  libxtst', 'http://bugzilla.openedhand.com=
/', 'None', "libfakekey is a simple library for converting UTF-8 characters=
 into 'fake' X key-presses.", 'MATCH', 'N/A', 'git://git.yoctoproject.org/l=
ibfakekey;protocol=3Dgit', 'Constantin Musca <constantinx.musca@intel.com>'=
, 'None']
inserted (libfakekey,0.0+gitAUTOINC+e327ff0,0.0+gitAUTOINC+e327ff0,LGPLv2+,=
x11/wm,r0,None,http://matchbox-project.org/,http://bugzilla.openedhand.com/=
,MATCH,pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxtst,lib=
fakekey is a simple library for converting UTF-8 characters into 'fake' X k=
ey-presses.,N/A,git://git.yoctoproject.org/libfakekey;protocol=3Dgit,Consta=
ntin Musca <constantinx.musca@intel.com>)
['glib-networking', '2.28.7', '2.36.1', 'LGPLv2', 'libs', 'http://git.gnome=
=2Eorg/browse/glib-networking/', 'r3', 'pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 =
gnutls intltool-native', 'http://bugzilla.gnome.org', 'None', 'glib-network=
ing contains the implementations of certain GLib networking features that c=
annot be implemented directly in GLib itself because of their dependencies.=
', 'UPDATE', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/glib-networking=
/2.28/glib-networking-2.28.7.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', '=
None']
inserted (glib-networking,2.28.7,2.36.1,LGPLv2,libs,r3,None,http://git.gnom=
e.org/browse/glib-networking/,http://bugzilla.gnome.org,UPDATE,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  glib-2.0 gnutls intltool-native,glib-networking contains the =
implementations of certain GLib networking features that cannot be implemen=
ted directly in GLib itself because of their dependencies.,N/A,http://ftp.g=
nome.org/pub/GNOME/sources/glib-networking/2.28/glib-networking-2.28.7.tar.=
bz2,Saul Wold <sgw@linux.intel.com>)
['wireless-tools', '29', '29', 'GPLv2 & (LGPLv2.1 | MPL-1.1 | BSD)', 'base'=
, 'http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/Tools.html', 'r4', =
' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  ', 'None', '1', 'Tools for the Linux Standard Wireless Extension Subs=
ystem', 'MATCH', 'N/A', 'http://www.hpl.hp.com/personal/Jean_Tourrilhes/Lin=
ux/wireless_tools.29.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', =
'None']
inserted (wireless-tools,29,29,GPLv2 & (LGPLv2.1 | MPL-1.1 | BSD),base,r4,1=
,http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/Tools.html,None,MATCH=
, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  ,Tools for the Linux Standard Wireless Extension Subsystem,N/A,http:/=
/www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/wireless_tools.29.tar.gz,Cri=
stian Iorga <cristian.iorga@intel.com>)
['fixesproto', '5.0', '5.0', 'MIT & MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedeskt=
op.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the X Fixes extension.  This extension is designed to provide =
server-side support for application work arounds to shortcomings in the cor=
e X window system.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/=
individual/proto/fixesproto-5.0.tar.bz2', 'Constantin Musca <constantinx.mu=
sca@intel.com>', 'None']
inserted (fixesproto,5.0,5.0,MIT & MIT-style,x11/libs,r1,1,http://www.x.org=
,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  util-macros,This package provides the wire protocol for the=
 X Fixes extension.  This extension is designed to provide server-side supp=
ort for application work arounds to shortcomings in the core X window syste=
m.,N/A,http://xorg.freedesktop.org/releases/individual/proto/fixesproto-5.0=
=2Etar.bz2,Constantin Musca <constantinx.musca@intel.com>)
['docbook-sgml-dtd-4.1-native', '1.0', '41', 'OASIS', 'base', 'http://www.d=
ocbook.org/sgml/', 'r3.0', ' sgml-common-native', 'None', 'None', 'Document=
 type definitions for verification of SGML data files against the DocBook r=
ule set', 'UPDATE', 'N/A', 'http://docbook.org/sgml/4.1/docbk41.zip', 'Saul=
 Wold <sgw@linux.intel.com>', 'None']
inserted (docbook-sgml-dtd-4.1-native,1.0,41,OASIS,base,r3.0,None,http://ww=
w.docbook.org/sgml/,None,UPDATE, sgml-common-native,Document type definitio=
ns for verification of SGML data files against the DocBook rule set,N/A,htt=
p://docbook.org/sgml/4.1/docbk41.zip,Saul Wold <sgw@linux.intel.com>)
['quota', '4.01', '4.01', 'BSD & GPLv2+ & LGPLv2.1+', 'base', 'http://sourc=
eforge.net/projects/linuxquota/', 'r1', 'autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  gettext-native e2fsprogs', 'http://sourceforge.net/tracker/?group_id=
=3D18136&atid=3D118136', 'None', 'display disk usage and limits', 'MATCH', =
'N/A', 'http://downloads.sourceforge.net/project/linuxquota/quota-tools/4.0=
1/quota-4.01.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (quota,4.01,4.01,BSD & GPLv2+ & LGPLv2.1+,base,r1,None,http://sour=
ceforge.net/projects/linuxquota/,http://sourceforge.net/tracker/?group_id=
=3D18136&atid=3D118136,MATCH,autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gettex=
t-native e2fsprogs,display disk usage and limits,N/A,http://downloads.sourc=
eforge.net/project/linuxquota/quota-tools/4.01/quota-4.01.tar.gz,Cristian I=
orga <cristian.iorga@intel.com>)
['iproute2', '3.8.0', '3.8.0', 'GPLv2+', 'base', 'http://www.linuxfoundatio=
n.org/collaborate/workgroups/networking/iproute2', 'r2', ' virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native =
bison-native iptables virtual/update-alternatives', 'None', 'None', 'Iprout=
e2 is a collection of utilities for controlling TCP / IP networking and tra=
ffic control in Linux.  Of the utilities ip and tc are the most important. =
 ip controls IPv4 and IPv6 configuration and tc stands for traffic control.=
', 'MATCH', 'N/A', 'http://kernel.org/pub/linux/utils/net/iproute2/iproute2=
-3.8.0.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (iproute2,3.8.0,3.8.0,GPLv2+,base,r2,None,http://www.linuxfoundati=
on.org/collaborate/workgroups/networking/iproute2,None,MATCH, virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-nati=
ve bison-native iptables virtual/update-alternatives,Iproute2 is a collecti=
on of utilities for controlling TCP / IP networking and traffic control in =
Linux.  Of the utilities ip and tc are the most important.  ip controls IPv=
4 and IPv6 configuration and tc stands for traffic control.,N/A,http://kern=
el.org/pub/linux/utils/net/iproute2/iproute2-3.8.0.tar.xz,Cristian Iorga <c=
ristian.iorga@intel.com>)
['nss-myhostname', '0.3', '0.3', 'LGPLv2.1', 'base', 'http://0pointer.de/le=
nnart/projects/nss-myhostname/', 'r0', 'autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'plugin=
 for the GNU Name Service Switch (NSS) functionality of the GNU C Library (=
glibc) providing host name resolution for the locally configured system hos=
tname as returned by gethostname(2).', 'MATCH', 'N/A', 'http://0pointer.de/=
lennart/projects/nss-myhostname/nss-myhostname-0.3.tar.gz', 'None', 'None']
inserted (nss-myhostname,0.3,0.3,LGPLv2.1,base,r0,None,http://0pointer.de/l=
ennart/projects/nss-myhostname/,None,MATCH,autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  ,plugin for the GNU Nam=
e Service Switch (NSS) functionality of the GNU C Library (glibc) providing=
 host name resolution for the locally configured system hostname as returne=
d by gethostname(2).,N/A,http://0pointer.de/lennart/projects/nss-myhostname=
/nss-myhostname-0.3.tar.gz,None)
['xrandr', '1.4.0', '1.4.0', 'MIT', 'x11/apps', 'http://www.x.org/', 'r8.0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxrandr li=
bxrender', 'https://bugs.freedesktop.org', '1', 'Xrandr is used to set the =
size, orientation and/or reflection of the outputs for a screen. It can als=
o set the screen size.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/relea=
ses/individual/app/xrandr-1.4.0.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu=
@intel.com>', 'None']
inserted (xrandr,1.4.0,1.4.0,MIT,x11/apps,r8.0,1,http://www.x.org/,https://=
bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native vir=
tual/libx11 libxrandr libxrender,Xrandr is used to set the size, orientatio=
n and/or reflection of the outputs for a screen. It can also set the screen=
 size.,N/A,http://xorg.freedesktop.org/releases/individual/app/xrandr-1.4.0=
=2Etar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['web-webkit', '0.1+gitAUTOINC+b0676c1', '0.1+gitAUTOINC+b0676c1', 'LGPLv2.=
1', 'x11', 'http://o-hand.com/', 'r2', 'pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 =
gtk+ webkit-gtk libowl', 'http://bugzilla.openedhand.com/', 'None', 'Multi-=
platform web browsing application.', 'MATCH', 'N/A', 'git://git.yoctoprojec=
t.org/web-webkit;protocol=3Dgit', 'Constantin Musca <constantinx.musca@inte=
l.com>', 'None']
inserted (web-webkit,0.1+gitAUTOINC+b0676c1,0.1+gitAUTOINC+b0676c1,LGPLv2.1=
,x11,r2,None,http://o-hand.com/,http://bugzilla.openedhand.com/,MATCH,pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  glib-2.0 gtk+ webkit-gtk libowl,Multi-platform web bro=
wsing application.,N/A,git://git.yoctoproject.org/web-webkit;protocol=3Dgit=
,Constantin Musca <constantinx.musca@intel.com>)
['cronie', '1.4.9', '1.4.9', 'ISC & BSD', 'utils', 'https://fedorahosted.or=
g/cronie/', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc    update-rc.d-native base-passwd shadow-native =
shadow-sysroot shadow', 'mmaslano@redhat.com', 'None', 'Cronie contains the=
 standard UNIX daemon crond that runs specified programs at scheduled times=
 and related tools. It is based on the original cron and has security and c=
onfiguration enhancements like the ability to use pam and SELinux.', 'MATCH=
', 'N/A', 'https://fedorahosted.org/releases/c/r/cronie/cronie-1.4.9.tar.gz=
', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (cronie,1.4.9,1.4.9,ISC & BSD,utils,r0,None,https://fedorahosted.o=
rg/cronie/,mmaslano@redhat.com,MATCH,autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc    update-rc.d-native base-pas=
swd shadow-native shadow-sysroot shadow,Cronie contains the standard UNIX d=
aemon crond that runs specified programs at scheduled times and related too=
ls. It is based on the original cron and has security and configuration enh=
ancements like the ability to use pam and SELinux.,N/A,https://fedorahosted=
=2Eorg/releases/c/r/cronie/cronie-1.4.9.tar.gz,Radu Moisan <radu.moisan@int=
el.com>)
['xvideo-tests', '0.1+gitAUTOINC+f8f320d', '0.1+gitAUTOINC+f8f320d', 'GPLv2=
+', 'base', 'unknown', 'r0', 'autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  libxv', 'None', 'None', 'Simple XVid=
eo test application', 'MATCH', 'N/A', 'git://git.yoctoproject.org/test-xvid=
eo;protocol=3Dgit', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (xvideo-tests,0.1+gitAUTOINC+f8f320d,0.1+gitAUTOINC+f8f320d,GPLv2+=
,base,r0,None,unknown,None,MATCH,autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  libxv,Simple XVideo test applicat=
ion,N/A,git://git.yoctoproject.org/test-xvideo;protocol=3Dgit,Cristian Iorg=
a <cristian.iorga@intel.com>)
['wpa-supplicant', '2.0', '2.0', 'BSD', 'network', 'http://hostap.epitest.f=
i/wpa_supplicant/', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  gnutls dbus libnl', 'http://hostap.epitest.=
fi/bugz/', 'None', 'A Client for Wi-Fi Protected Access (WPA).', 'MATCH', '=
N/A', 'http://hostap.epitest.fi/releases/wpa_supplicant-2.0.tar.gz', 'Crist=
ian Iorga <cristian.iorga@intel.com>', 'None']
inserted (wpa-supplicant,2.0,2.0,BSD,network,r1,None,http://hostap.epitest.=
fi/wpa_supplicant/,http://hostap.epitest.fi/bugz/,MATCH, virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gnutls dbus li=
bnl,A Client for Wi-Fi Protected Access (WPA).,N/A,http://hostap.epitest.fi=
/releases/wpa_supplicant-2.0.tar.gz,Cristian Iorga <cristian.iorga@intel.co=
m>)
['libxxf86dga', '1.1.3', '1.1.3', 'MIT-X', 'x11/libs', 'http://www.x.org', =
'r2', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros libxext xf86dgaproto', 'https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXxf86dga pro=
vides the XFree86-DGA extension, which allows direct graphics access to a f=
ramebuffer-like region, and also allows relative mouse reporting, et al.  I=
t is mainly used by games and emulators for games.', 'MATCH', 'N/A', 'http:=
//xorg.freedesktop.org/releases/individual/lib/libXxf86dga-1.1.3.tar.bz2', =
'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (libxxf86dga,1.1.3,1.1.3,MIT-X,x11/libs,r2,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros libxext xf86dgaproto,libXxf86dga provides the XFree8=
6-DGA extension, which allows direct graphics access to a framebuffer-like =
region, and also allows relative mouse reporting, et al.  It is mainly used=
 by games and emulators for games.,N/A,http://xorg.freedesktop.org/releases=
/individual/lib/libXxf86dga-1.1.3.tar.bz2,Constantin Musca <constantinx.mus=
ca@intel.com>)
['strace', '4.7', '4.7', 'BSD', 'console/utils', 'http://strace.sourceforge=
=2Enet', 'r4', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  ', 'None', 'None', 'strace is a system call tracin=
g tool.', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/strace/strace-4=
=2E7.tar.xz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (strace,4.7,4.7,BSD,console/utils,r4,None,http://strace.sourceforg=
e.net,None,MATCH,autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  ,strace is a system call tracing tool.,N/A,http:/=
/downloads.sourceforge.net/strace/strace-4.7.tar.xz,Bogdan Marinescu <bogda=
n.a.marinescu@intel.com>)
['hostap-utils', '0.4.7', '0.4.7', 'GPLv2', 'kernel/userland', 'http://host=
ap.epitest.fi', 'r4', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'http://hostap.epitest.fi/bugz/', 'None', 'T=
he hostap driver supports Host AP mode, it allows for IEEE 802.11 managemen=
t functions on the host computer and allows the system to act as an access =
point.', 'MATCH', 'N/A', 'http://hostap.epitest.fi/releases/hostap-utils-0.=
4.7.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (hostap-utils,0.4.7,0.4.7,GPLv2,kernel/userland,r4,None,http://hos=
tap.epitest.fi,http://hostap.epitest.fi/bugz/,MATCH, virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,The hostap driver=
 supports Host AP mode, it allows for IEEE 802.11 management functions on t=
he host computer and allows the system to act as an access point.,N/A,http:=
//hostap.epitest.fi/releases/hostap-utils-0.4.7.tar.gz,Cristian Iorga <cris=
tian.iorga@intel.com>)
['trace-cmd', '1.2+gitAUTOINC+7055ffd', '2.2.1+gitAUTOINC+8e13c90', 'GPLv2 =
& LGPLv2.1', 'base', 'unknown', 'r3', 'pkgconfig-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc    python-nativ=
e ', 'None', 'None', 'User interface to Ftrace', 'UPDATE', 'N/A', 'git://gi=
t.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=3Dgit'=
, 'Darren Hart <dvhart@linux.intel.com>', 'None']
inserted (trace-cmd,1.2+gitAUTOINC+7055ffd,2.2.1+gitAUTOINC+8e13c90,GPLv2 &=
 LGPLv2.1,base,r3,None,unknown,None,UPDATE,pkgconfig-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc    python-n=
ative ,User interface to Ftrace,N/A,git://git.kernel.org/pub/scm/linux/kern=
el/git/rostedt/trace-cmd.git;protocol=3Dgit,Darren Hart <dvhart@linux.intel=
=2Ecom>)
['bigreqsproto', '1.1.2', '1.1.2', 'MIT-X', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire prot=
ocol for the BIG-REQUESTS extension, used to send larger requests that usua=
l in order to avoid fragmentation.', 'MATCH', 'N/A', 'http://xorg.freedeskt=
op.org/releases/individual/proto/bigreqsproto-1.1.2.tar.bz2', 'Radu Moisan =
<radu.moisan@intel.com>', 'None']
inserted (bigreqsproto,1.1.2,1.1.2,MIT-X,x11/libs,r0,1,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  util-macros,This package provides the wire protocol for the BIG=
-REQUESTS extension, used to send larger requests that usual in order to av=
oid fragmentation.,N/A,http://xorg.freedesktop.org/releases/individual/prot=
o/bigreqsproto-1.1.2.tar.bz2,Radu Moisan <radu.moisan@intel.com>)
['libomxil', '0.9.3', '0.9.3', 'LGPLv2.1+', 'base', 'http://omxil.sourcefor=
ge.net/', 'r0', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  ', 'None', 'None', 'Bellagio OpenMAX Integration =
Layer', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/omxil/libomxil-be=
llagio-0.9.3.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libomxil,0.9.3,0.9.3,LGPLv2.1+,base,r0,None,http://omxil.sourcefo=
rge.net/,None,MATCH,autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ,Bellagio OpenMAX Integration Layer,N/A,http:/=
/downloads.sourceforge.net/omxil/libomxil-bellagio-0.9.3.tar.gz,Cristian Io=
rga <cristian.iorga@intel.com>)
['gcc-crosssdk', '4.7.2', '4.8.0', 'GPL-3.0-with-GCC-exception & GPLv3', 'd=
evel', 'http://www.gnu.org/software/gcc/', 'r19', 'autoconf-native automake=
-native libtool-native gnu-config-native   virtual/i586-pokysdk-linux-binut=
ils-crosssdk virtual/nativesdk-i586-pokysdk-linux-libc-for-gcc gettext-nati=
ve', 'None', 'None', 'The GNU cc and gcc C compilers.', 'UPDATE', 'N/A', 'f=
tp://ftp.gnu.org/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.bz2', 'Bogdan Marinescu <b=
ogdan.a.marinescu@intel.com>', 'None']
inserted (gcc-crosssdk,4.7.2,4.8.0,GPL-3.0-with-GCC-exception & GPLv3,devel=
,r19,None,http://www.gnu.org/software/gcc/,None,UPDATE,autoconf-native auto=
make-native libtool-native gnu-config-native   virtual/i586-pokysdk-linux-b=
inutils-crosssdk virtual/nativesdk-i586-pokysdk-linux-libc-for-gcc gettext-=
native,The GNU cc and gcc C compilers.,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.=
7.2/gcc-4.7.2.tar.bz2,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['xinit', '1.3.2', '1.3.2', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros-native virtual/libx11', 'https://=
bugs.freedesktop.org', '1', 'The xinit program is used to start the X Windo=
w System server and a first client program on systems that cannot start X d=
irectly from /etc/init or in environments that use multiple window systems.=
 When this first client exits, xinit will kill the X server and then termin=
ate.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/app=
/xinit-1.3.2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None=
']
inserted (xinit,1.3.2,1.3.2,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https:/=
/bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native vi=
rtual/libx11,The xinit program is used to start the X Window System server =
and a first client program on systems that cannot start X directly from /et=
c/init or in environments that use multiple window systems. When this first=
 client exits, xinit will kill the X server and then terminate.,N/A,http://=
xorg.freedesktop.org/releases/individual/app/xinit-1.3.2.tar.bz2,Laurentiu =
Palcu <laurentiu.palcu@intel.com>)
['linuxdoc-tools-native', '0.9.66', '0.9.69', 'GPLv3+', 'base', 'http://pac=
kages.debian.org/linuxdoc-tools', 'r3', 'autoconf-native automake-native li=
btool-native gnu-config-native  groff-native openjade-native', 'None', 'Non=
e', 'Convert LinuxDoc SGML source into other formats', 'UPDATE', '0.9.66', =
'ftp://ftp.debian.org/debian/pool/main/l/linuxdoc-tools/linuxdoc-tools_0.9.=
66.tar.gz', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (linuxdoc-tools-native,0.9.66,0.9.69,GPLv3+,base,r3,None,http://pa=
ckages.debian.org/linuxdoc-tools,None,UPDATE,autoconf-native automake-nativ=
e libtool-native gnu-config-native  groff-native openjade-native,Convert Li=
nuxDoc SGML source into other formats,0.9.66,ftp://ftp.debian.org/debian/po=
ol/main/l/linuxdoc-tools/linuxdoc-tools_0.9.66.tar.gz,Andrei Dinu <andrei.a=
drianx.dinu@intel.com>)
['initramfs-live-install-efi', '1.0', 'INVALID', 'MIT', 'base', 'unknown', =
'r1', ' ', 'None', 'None', 'A live image init script for grub-efi', 'MATCH'=
, 'N/A', 'file://init-install-efi.sh', 'Saul Wold <sgw@linux.intel.com>', '=
None']
inserted (initramfs-live-install-efi,1.0,INVALID,MIT,base,r1,None,unknown,N=
one,MATCH, ,A live image init script for grub-efi,N/A,file://init-install-e=
fi.sh,Saul Wold <sgw@linux.intel.com>)
['tcf-agent', '0.4.0+gitAUTOINC+4ef94ec', '8.0+gitAUTOINC+e4aa70f', 'EPL-1.=
0 | EDL-1.0', 'base', 'http://wiki.eclipse.org/TCF', 'r1', ' virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-linux=
 openssl update-rc.d-native', 'https://bugs.eclipse.org/bugs/', 'None', 'Ta=
rget Communication Framework', 'UPDATE', 'N/A', 'git://git.eclipse.org/gitr=
oot/tcf/org.eclipse.tcf.agent.git;protocol=3Dgit', 'Bogdan Marinescu <bogda=
n.a.marinescu@intel.com>', 'None']
inserted (tcf-agent,0.4.0+gitAUTOINC+4ef94ec,8.0+gitAUTOINC+e4aa70f,EPL-1.0=
 | EDL-1.0,base,r1,None,http://wiki.eclipse.org/TCF,https://bugs.eclipse.or=
g/bugs/,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  util-linux openssl update-rc.d-native,Target Communicat=
ion Framework,N/A,git://git.eclipse.org/gitroot/tcf/org.eclipse.tcf.agent.g=
it;protocol=3Dgit,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['icecc-create-env-native', '0.1', 'INVALID', 'GPLv2+', 'base', 'unknown', =
'r2', ' ', 'None', 'None', 'This is a modified version of the icecc-create-=
env script in order tomake it work with OE.', 'MATCH', 'N/A', 'file://icecc=
-create-env', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (icecc-create-env-native,0.1,INVALID,GPLv2+,base,r2,None,unknown,N=
one,MATCH, ,This is a modified version of the icecc-create-env script in or=
der tomake it work with OE.,N/A,file://icecc-create-env,Saul Wold <sgw@linu=
x.intel.com>)
['btrfs-tools', '0.19+gitAUTOINC+fdb6c04', '0.20-rc1+gitAUTOINC+89fe5b5', '=
GPLv2', 'base', 'https://btrfs.wiki.kernel.org', 'r6', ' virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-linux att=
r', 'None', 'None', 'Btrfs is a new copy on write filesystem for Linux aime=
d at implementing advanced features while focusing on fault tolerance, repa=
ir and easy administration. This package contains utilities (mkfs, fsck, bt=
rfsctl) used to work with btrfs and an utility (btrfs-convert) to make a bt=
rfs filesystem from an ext3.', 'UPDATE', 'N/A', 'git://git.kernel.org/pub/s=
cm/linux/kernel/git/mason/btrfs-progs.git;protocol=3Dgit', 'Bogdan Marinesc=
u <bogdan.a.marinescu@intel.com>', 'None']
inserted (btrfs-tools,0.19+gitAUTOINC+fdb6c04,0.20-rc1+gitAUTOINC+89fe5b5,G=
PLv2,base,r6,None,https://btrfs.wiki.kernel.org,None,UPDATE, virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-linux=
 attr,Btrfs is a new copy on write filesystem for Linux aimed at implementi=
ng advanced features while focusing on fault tolerance, repair and easy adm=
inistration. This package contains utilities (mkfs, fsck, btrfsctl) used to=
 work with btrfs and an utility (btrfs-convert) to make a btrfs filesystem =
=66rom an ext3.,N/A,git://git.kernel.org/pub/scm/linux/kernel/git/mason/btr=
fs-progs.git;protocol=3Dgit,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['libtirpc', '0.2.3', '0.2.3', 'BSD', 'libs/network', 'http://sourceforge.n=
et/projects/libtirpc/', 'r0', 'pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   xz-native', 'http=
://sourceforge.net/tracker/?group_id=3D183075&atid=3D903784', 'None', 'Libt=
irpc is a port of Suns Transport-Independent RPC library to Linux', 'MATCH'=
, 'N/A', 'http://downloads.sourceforge.net/libtirpc/libtirpc-0.2.3.tar.bz2;=
name=3Dlibtirpc', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libtirpc,0.2.3,0.2.3,BSD,libs/network,r0,None,http://sourceforge.=
net/projects/libtirpc/,http://sourceforge.net/tracker/?group_id=3D183075&at=
id=3D903784,MATCH,pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc   xz-native,Libtirpc is a port o=
f Suns Transport-Independent RPC library to Linux,N/A,http://downloads.sour=
ceforge.net/libtirpc/libtirpc-0.2.3.tar.bz2;name=3Dlibtirpc,Cristian Iorga =
<cristian.iorga@intel.com>)
['findutils', '4.4.2', '4.4.2', 'GPLv3+', 'console/utils', 'http://www.gnu.=
org/software/findutils/', 'r6', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bi=
son-native virtual/update-alternatives', 'http://savannah.gnu.org/bugs/?gro=
up=3Dfindutils', 'None', 'The GNU Find Utilities are the basic directory se=
arching utilities of the GNU operating system. These programs are typically=
 used in conjunction with other programs to provide modular and powerful di=
rectory search and file locating capabilities to other commands.', 'MATCH',=
 'N/A', 'ftp://ftp.gnu.org/gnu/findutils/findutils-4.4.2.tar.gz', 'Radu Moi=
san <radu.moisan@intel.com>', 'None']
inserted (findutils,4.4.2,4.4.2,GPLv3+,console/utils,r6,None,http://www.gnu=
=2Eorg/software/findutils/,http://savannah.gnu.org/bugs/?group=3Dfindutils,=
MATCH,autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  bison-native virtual/update-a=
lternatives,The GNU Find Utilities are the basic directory searching utilit=
ies of the GNU operating system. These programs are typically used in conju=
nction with other programs to provide modular and powerful directory search=
 and file locating capabilities to other commands.,N/A,ftp://ftp.gnu.org/gn=
u/findutils/findutils-4.4.2.tar.gz,Radu Moisan <radu.moisan@intel.com>)
['popt', '1.16', '1.16', 'MIT', 'libs', 'http://rpm5.org/', 'r3', 'autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native virt=
ual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'None', 'None', 'The popt library for pa=
rsing command line options.', 'MATCH', 'N/A', 'http://rpm5.org/files/popt/p=
opt-1.16.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (popt,1.16,1.16,MIT,libs,r3,None,http://rpm5.org/,None,MATCH,autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native v=
irtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ,The popt library for parsing command li=
ne options.,N/A,http://rpm5.org/files/popt/popt-1.16.tar.gz,Saul Wold <sgw@=
linux.intel.com>)
['blktool', '4-6.1', '4-6.1', 'GPLv2+', 'base', 'http://packages.debian.org=
/unstable/admin/blktool', 'r1', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  glib-2.0', 'None', 'None', 'blkto=
ol is used for querying and/or changing settings of a block device. It is l=
ike hdparm but a more general tool, as it works on SCSI, IDE and SATA devic=
es.', 'MATCH', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/b/blktool/blkt=
ool_4.orig.tar.gz;name=3Dtarball', 'Andrei Dinu <andrei.adrianx.dinu@intel.=
com>', 'None']
inserted (blktool,4-6.1,4-6.1,GPLv2+,base,r1,None,http://packages.debian.or=
g/unstable/admin/blktool,None,MATCH,autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  glib-2.0,blktool is used for q=
uerying and/or changing settings of a block device. It is like hdparm but a=
 more general tool, as it works on SCSI, IDE and SATA devices.,N/A,ftp://ft=
p.debian.org/debian/pool/main/b/blktool/blktool_4.orig.tar.gz;name=3Dtarbal=
l,Andrei Dinu <andrei.adrianx.dinu@intel.com>)
['kernelshark', '1.2+gitAUTOINC+7055ffd', '2.2.1+gitAUTOINC+8e13c90', 'GPLv=
2', 'base', 'unknown', 'r3', 'pkgconfig-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+  python-native ', =
'None', 'None', 'Graphical trace viewer for Ftrace', 'UPDATE', 'N/A', 'git:=
//git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=3D=
git', 'Darren Hart <dvhart@linux.intel.com>', '0.2 is the latest version.']
inserted (kernelshark,1.2+gitAUTOINC+7055ffd,2.2.1+gitAUTOINC+8e13c90,GPLv2=
,base,r3,None,unknown,None,UPDATE,pkgconfig-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+  python-native=
 ,Graphical trace viewer for Ftrace,N/A,git://git.kernel.org/pub/scm/linux/=
kernel/git/rostedt/trace-cmd.git;protocol=3Dgit,Darren Hart <dvhart@linux.i=
ntel.com>)
['imake', '1.0.5', '1.0.5', 'MIT-X', 'x11/utils', 'http://www.x.org', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros xproto xorg-cf-files', 'https://bug=
s.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Imake is used to gen=
erate Makefiles from a template, a set of cpp macro functions, and a per-di=
rectory input file called an Imakefile. This allows machine dependencies (s=
uch as compiler options, alternate command names, and special make rules) t=
o be kept separate from the descriptions of the various items to be built.'=
, 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/util/ima=
ke-1.0.5.tar.gz', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (imake,1.0.5,1.0.5,MIT-X,x11/utils,r0,1,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  util-macros xproto xorg-cf-files,Imake is used to generate Makefiles =
=66rom a template, a set of cpp macro functions, and a per-directory input =
file called an Imakefile. This allows machine dependencies (such as compile=
r options, alternate command names, and special make rules) to be kept sepa=
rate from the descriptions of the various items to be built.,N/A,http://xor=
g.freedesktop.org/releases/individual/util/imake-1.0.5.tar.gz,Radu Moisan <=
radu.moisan@intel.com>)
['matchbox-theme-sato', '0.1', '0.1', 'CC-BY-SA-3.0', 'x11/wm', 'http://www=
=2Ematchbox-project.org/', 'r1', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  matchbox-wm', '=
http://bugzilla.openedhand.com/', 'None', 'Matchbox window manager Sato the=
mes', 'MATCH', 'N/A', 'http://pokylinux.org/releases/sato/matchbox-theme-sa=
to-0.1.tar.gz', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (matchbox-theme-sato,0.1,0.1,CC-BY-SA-3.0,x11/wm,r1,None,http://ww=
w.matchbox-project.org/,http://bugzilla.openedhand.com/,MATCH,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  matchbox-wm,Matchbox window manager Sato themes,N/A,http://pok=
ylinux.org/releases/sato/matchbox-theme-sato-0.1.tar.gz,Constantin Musca <c=
onstantinx.musca@intel.com>)
['docbook-sgml-dtd-3.1-native', '1.0', '31', 'OASIS', 'base', 'http://www.d=
ocbook.org/sgml/', 'r3.0', ' sgml-common-native', 'None', 'None', 'Document=
 type definitions for verification of SGML data files against the DocBook r=
ule set', 'UPDATE', 'N/A', 'http://www.docbook.org/sgml/3.1/docbk31.zip', '=
Saul Wold <sgw@linux.intel.com>', 'None']
inserted (docbook-sgml-dtd-3.1-native,1.0,31,OASIS,base,r3.0,None,http://ww=
w.docbook.org/sgml/,None,UPDATE, sgml-common-native,Document type definitio=
ns for verification of SGML data files against the DocBook rule set,N/A,htt=
p://www.docbook.org/sgml/3.1/docbk31.zip,Saul Wold <sgw@linux.intel.com>)
['fontconfig', '2.10.2', '2.10.92', 'MIT-style & MIT & PD', 'libs', 'http:/=
/www.fontconfig.org', 'r1', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  expat freetype zlib'=
, 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dfontconfig', 'None'=
, "Fontconfig is a font configuration and customization library, which does=
 not depend on the X Window System. It is designed to locate fonts within t=
he system and select them according to requirements specified by applicatio=
ns. Fontconfig is not a rasterization library, nor does it impose a particu=
lar rasterization library on the application. The X-specific library 'Xft' =
uses fontconfig along with freetype to specify and rasterize fonts.", 'UPDA=
TE', 'N/A', 'http://fontconfig.org/release/fontconfig-2.10.2.tar.gz', 'Laur=
entiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (fontconfig,2.10.2,2.10.92,MIT-style & MIT & PD,libs,r1,None,http:=
//www.fontconfig.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Df=
ontconfig,UPDATE,pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  expat freetype zlib,Fontconfig i=
s a font configuration and customization library, which does not depend on =
the X Window System. It is designed to locate fonts within the system and s=
elect them according to requirements specified by applications. Fontconfig =
is not a rasterization library, nor does it impose a particular rasterizati=
on library on the application. The X-specific library 'Xft' uses fontconfig=
 along with freetype to specify and rasterize fonts.,N/A,http://fontconfig.=
org/release/fontconfig-2.10.2.tar.gz,Laurentiu Palcu <laurentiu.palcu@intel=
=2Ecom>)
['mini-x-session', '0.1', 'INVALID', 'GPLv2', 'x11', 'http://www.yoctoproje=
ct.org', 'r4', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc   virtual/update-alternatives', 'http://bugzilla.pokyli=
nux.org', 'None', 'Mini X session files for poky', 'MATCH', 'N/A', 'file://=
mini-x-session', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (mini-x-session,0.1,INVALID,GPLv2,x11,r4,None,http://www.yoctoproj=
ect.org,http://bugzilla.pokylinux.org,MATCH, virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update-alternativ=
es,Mini X session files for poky,N/A,file://mini-x-session,Saul Wold <sgw@l=
inux.intel.com>)
['python-pygtk', '2.24.0', '2.24.0', 'LGPLv2.1', 'devel/python', 'unknown',=
 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  gtk+ libglade python-pycairo python-pygob=
ject python-native python  python-native ', 'None', 'None', 'Python GTK+ 2.=
17.x Bindings', 'MATCH', 'N/A', 'ftp://ftp.gnome.org/pub/gnome/sources/pygt=
k/2.24/pygtk-2.24.0.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@intel.c=
om>', 'None']
inserted (python-pygtk,2.24.0,2.24.0,LGPLv2.1,devel/python,r1,None,unknown,=
None,MATCH,pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  gtk+ libglade python-pycairo python-py=
gobject python-native python  python-native ,Python GTK+ 2.17.x Bindings,N/=
A,ftp://ftp.gnome.org/pub/gnome/sources/pygtk/2.24/pygtk-2.24.0.tar.bz2,Bog=
dan Marinescu <bogdan.a.marinescu@intel.com>)
['gnome-desktop', '2.32.1', '3.8.1', 'GPLv2 & LGPLv2', 'x11/gnome', 'unknow=
n', 'r6', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  gconf libxrandr virtual/libx11 gtk+ gl=
ib-2.0 gnome-doc-utils startup-notification gnome-common-native hicolor-ico=
n-theme gtk-update-icon-cache-native gconf gconf-native shared-mime-info-na=
tive shared-mime-info', 'None', 'None', 'GNOME library for reading .desktop=
 files', 'UPDATE', '3.7.90', 'http://ftp.gnome.org/pub/GNOME/sources/gnome-=
desktop/2.32/gnome-desktop-2.32.1.tar.bz2;name=3Darchive', 'Constantin Musc=
a <constantinx.musca@intel.com>', 'waiting for the sato gtk3 port']
inserted (gnome-desktop,2.32.1,3.8.1,GPLv2 & LGPLv2,x11/gnome,r6,None,unkno=
wn,None,UPDATE,pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  gconf libxrandr virtual/libx11 gtk=
+ glib-2.0 gnome-doc-utils startup-notification gnome-common-native hicolor=
-icon-theme gtk-update-icon-cache-native gconf gconf-native shared-mime-inf=
o-native shared-mime-info,GNOME library for reading .desktop files,3.7.90,h=
ttp://ftp.gnome.org/pub/GNOME/sources/gnome-desktop/2.32/gnome-desktop-2.32=
=2E1.tar.bz2;name=3Darchive,Constantin Musca <constantinx.musca@intel.com>)
['ethtool', '3.8', '3.8', 'GPLv2+', 'console/network', 'http://www.kernel.o=
rg/pub/software/network/ethtool/', 'r0', 'autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'A sm=
all utility for examining and tuning the settings of your ethernet-based ne=
twork interfaces.', 'MATCH', 'N/A', 'http://kernel.org/pub/software/network=
/ethtool/ethtool-3.8.tar.gz', 'Constantin Musca <constantinx.musca@intel.co=
m>', 'None']
inserted (ethtool,3.8,3.8,GPLv2+,console/network,r0,None,http://www.kernel.=
org/pub/software/network/ethtool/,None,MATCH,autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  ,A small utility for =
examining and tuning the settings of your ethernet-based network interfaces=
=2E,N/A,http://kernel.org/pub/software/network/ethtool/ethtool-3.8.tar.gz,C=
onstantin Musca <constantinx.musca@intel.com>)
['recordproto', '1.14.2', '1.14.2', 'MIT-style', 'x11/libs', 'http://www.x.=
org', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesk=
top.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire=
 protocol for the X Record extension.  This extension is used to record and=
 play back event sequences.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/=
releases/individual/proto/recordproto-1.14.2.tar.bz2', 'Laurentiu Palcu <la=
urentiu.palcu@intel.com>', 'None']
inserted (recordproto,1.14.2,1.14.2,MIT-style,x11/libs,r1,1,http://www.x.or=
g,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  util-macros,This package provides the wire protocol for th=
e X Record extension.  This extension is used to record and play back event=
 sequences.,N/A,http://xorg.freedesktop.org/releases/individual/proto/recor=
dproto-1.14.2.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['freetype', '2.4.11', '2.4.11', 'FreeType | GPLv2+', 'libs', 'http://www.f=
reetype.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  ', 'https://savannah.nongnu=
=2Eorg/bugs/?group=3Dfreetype', 'None', 'FreeType is a software font engine=
 that is designed to be small, efficient, highly customizable, and portable=
 while capable of producing high-quality output (glyph images). It can be u=
sed in graphics libraries, display servers, font conversion tools, text ima=
ge generation tools, and many other products as well.', 'MATCH', 'N/A', 'ht=
tp://downloads.sourceforge.net/freetype/freetype-2.4.11.tar.bz2', 'Constant=
in Musca <constantinx.musca@intel.com>', 'None']
inserted (freetype,2.4.11,2.4.11,FreeType | GPLv2+,libs,r0,None,http://www.=
freetype.org/,https://savannah.nongnu.org/bugs/?group=3Dfreetype,MATCH,pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ,FreeType is a software font engine that is designed =
to be small, efficient, highly customizable, and portable while capable of =
producing high-quality output (glyph images). It can be used in graphics li=
braries, display servers, font conversion tools, text image generation tool=
s, and many other products as well.,N/A,http://downloads.sourceforge.net/fr=
eetype/freetype-2.4.11.tar.bz2,Constantin Musca <constantinx.musca@intel.co=
m>)
['rpmresolve', '1.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r2', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  rp=
m', 'None', 'None', 'OpenEmbedded RPM resolver - performs RPM database look=
ups in batches to avoid  repeated invocations of rpm on the command line.',=
 'MATCH', 'N/A', 'file://rpmresolve.c', 'Saul Wold <sgw@linux.intel.com>', =
'None']
inserted (rpmresolve,1.0,INVALID,GPLv2,base,r2,None,unknown,None,MATCH, vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 rpm,OpenEmbedded RPM resolver - performs RPM database lookups in batches t=
o avoid  repeated invocations of rpm on the command line.,N/A,file://rpmres=
olve.c,Saul Wold <sgw@linux.intel.com>)
['createrepo', '0.4.11', '0.9.9', 'GPLv2+', 'base', 'http://createrepo.base=
url.org/', 'r9', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  ', 'None', 'None', 'createrepo creates rpm-metadata =
for rpms to build the repository', 'UPDATE', 'N/A', 'http://createrepo.base=
url.org/download/createrepo-0.4.11.tar.gz', 'Saul Wold <sgw@linux.intel.com=
>', 'Versions after 0.9.* use YUM, so we hold at 0.4.11']
inserted (createrepo,0.4.11,0.9.9,GPLv2+,base,r9,None,http://createrepo.bas=
eurl.org/,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ,createrepo creates rpm-metadata for rpms to bui=
ld the repository,N/A,http://createrepo.baseurl.org/download/createrepo-0.4=
=2E11.tar.gz,Saul Wold <sgw@linux.intel.com>)
['db', '5.3.21', '5.3.21', 'Sleepycat', 'libs', 'http://www.oracle.com/tech=
nology/products/berkeley-db/db/index.html', 'r0', 'autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'Non=
e', 'Berkeley DB v5.', 'MATCH', 'N/A', 'http://download.oracle.com/berkeley=
-db/db-5.3.21.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'API co=
mpatibility issue']
inserted (db,5.3.21,5.3.21,Sleepycat,libs,r0,None,http://www.oracle.com/tec=
hnology/products/berkeley-db/db/index.html,None,MATCH,autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Berkeley DB=
 v5.,N/A,http://download.oracle.com/berkeley-db/db-5.3.21.tar.gz,Cristian I=
orga <cristian.iorga@intel.com>)
['cpio', '2.11', '2.11', 'GPLv3', 'base', 'http://www.gnu.org/software/cpio=
/', 'r4', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  texinfo-native virtual/u=
pdate-alternatives', 'None', 'None', 'GNU cpio is a tool for creating and e=
xtracting archives, or copying files from one place to another. It handles =
a number of cpio formats as well as reading and writing tar files.', 'MATCH=
', 'N/A', 'ftp://ftp.gnu.org/gnu/cpio/cpio-2.11.tar.gz', 'Andrei Dinu <andr=
ei.adrianx.dinu@intel.com>', 'None']
inserted (cpio,2.11,2.11,GPLv3,base,r4,None,http://www.gnu.org/software/cpi=
o/,None,MATCH,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  texinfo-native virtua=
l/update-alternatives,GNU cpio is a tool for creating and extracting archiv=
es, or copying files from one place to another. It handles a number of cpio=
 formats as well as reading and writing tar files.,N/A,ftp://ftp.gnu.org/gn=
u/cpio/cpio-2.11.tar.gz,Andrei Dinu <andrei.adrianx.dinu@intel.com>)
['ocf-linux', '20120127', '20120127', 'BSD', 'base', 'unknown', 'r3.0', ' v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  ', 'None', 'None', 'Install required headers to enable OCF Linux support=
', 'MATCH', 'N/A', 'http://sourceforge.net/projects/ocf-linux/files/ocf-lin=
ux/20120127/ocf-linux-20120127.tar.gz', 'Saul Wold <sgw@linux.intel.com>', =
'None']
inserted (ocf-linux,20120127,20120127,BSD,base,r3.0,None,unknown,None,MATCH=
, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  ,Install required headers to enable OCF Linux support,N/A,http://sour=
ceforge.net/projects/ocf-linux/files/ocf-linux/20120127/ocf-linux-20120127.=
tar.gz,Saul Wold <sgw@linux.intel.com>)
['liboil', '0.3.17', '0.3.17', 'BSD', 'base', 'http://liboil.freedesktop.or=
g/', 'r5', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  glib-2.0', 'https://bugs.freedesktop.=
org/', 'None', 'Liboil is a library of simple functions that are optimized =
for various CPUs.', 'MATCH', 'N/A', 'http://liboil.freedesktop.org/download=
/liboil-0.3.17.tar.gz', 'Constantin Musca <constantinx.musca@intel.com>', '=
None']
inserted (liboil,0.3.17,0.3.17,BSD,base,r5,None,http://liboil.freedesktop.o=
rg/,https://bugs.freedesktop.org/,MATCH,pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0,=
Liboil is a library of simple functions that are optimized for various CPUs=
=2E,N/A,http://liboil.freedesktop.org/download/liboil-0.3.17.tar.gz,Constan=
tin Musca <constantinx.musca@intel.com>)
['jpeg', '8d', '9', 'BSD-3-Clause', 'libs', 'http://www.ijg.org/', 'r1', 'a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  libtool-cross', '', 'None', 'libjpeg contains a library for handlin=
g the JPEG (JFIF) image format, as well as related programs for accessing t=
he libjpeg functions.', 'UPDATE', '9', 'http://www.ijg.org/files/jpegsrc.v8=
d.tar.gz', 'Constantin Musca <constantinx.musca@intel.com>', "webkit-gtk 1.=
8.3 doesn't work with jpeg 9"]
inserted (jpeg,8d,9,BSD-3-Clause,libs,r1,None,http://www.ijg.org/,,UPDATE,a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  libtool-cross,libjpeg contains a library for handling the JPEG (JFI=
F) image format, as well as related programs for accessing the libjpeg func=
tions.,9,http://www.ijg.org/files/jpegsrc.v8d.tar.gz,Constantin Musca <cons=
tantinx.musca@intel.com>)
['prelink', '1.0+gitAUTOINC+4e313ed', '1.0+gitAUTOINC+4e313edb125db215d4c45=
6ce62c74ee16841a365', 'GPLv2', 'devel', 'unknown', 'r0', 'autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  elfutils=
 binutils', 'None', 'None', 'The prelink package contains a utility which m=
odifies ELF shared libraries and executables, so that far fewer relocations=
 need to be resolved at runtime and thus programs come up faster.', 'ErrUnk=
nown:git.yoctoproject.org/prelink-cross.git', '1.0+git1+9552f214c7faa816fdb=
55b289a457f0cab034f00', 'git://git.yoctoproject.org/prelink-cross.git;proto=
col=3Dgit', 'Mark Hatle <mark.hatle@windriver.com>', 'None']
inserted (prelink,1.0+gitAUTOINC+4e313ed,1.0+gitAUTOINC+4e313edb125db215d4c=
456ce62c74ee16841a365,GPLv2,devel,r0,None,unknown,None,ErrUnknown:git.yocto=
project.org/prelink-cross.git,autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  elfutils binutils,The prelink packag=
e contains a utility which modifies ELF shared libraries and executables, s=
o that far fewer relocations need to be resolved at runtime and thus progra=
ms come up faster.,1.0+git1+9552f214c7faa816fdb55b289a457f0cab034f00,git://=
git.yoctoproject.org/prelink-cross.git;protocol=3Dgit,Mark Hatle <mark.hatl=
e@windriver.com>)
['alsa-state', '0.2.0', 'INVALID', 'MIT', 'base', 'unknown', 'r3', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   u=
pdate-rc.d-native', 'None', 'None', 'Alsa Scenario Files - an init script a=
nd state files to restore sound state at system boot and save it at system =
shut down.', 'MATCH', 'N/A', 'file://asound.conf', 'Cristian Iorga <cristia=
n.iorga@intel.com>', 'None']
inserted (alsa-state,0.2.0,INVALID,MIT,base,r3,None,unknown,None,MATCH, vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
  update-rc.d-native,Alsa Scenario Files - an init script and state files t=
o restore sound state at system boot and save it at system shut down.,N/A,f=
ile://asound.conf,Cristian Iorga <cristian.iorga@intel.com>)
['xf86driproto', '2.1.1', '2.1.1', 'MIT', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org=
/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoc=
ol for the XFree86 Direct Rendering Infrastructure extension.  The XFree86-=
DRI extension is used to organize direct rendering support or 3D clients an=
d help arbitrate requests.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/r=
eleases/individual/proto/xf86driproto-2.1.1.tar.bz2', 'Laurentiu Palcu <lau=
rentiu.palcu@intel.com>', 'None']
inserted (xf86driproto,2.1.1,2.1.1,MIT,x11/libs,r0,1,http://www.x.org,https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  util-macros,This package provides the wire protocol for the XFree=
86 Direct Rendering Infrastructure extension.  The XFree86-DRI extension is=
 used to organize direct rendering support or 3D clients and help arbitrate=
 requests.,N/A,http://xorg.freedesktop.org/releases/individual/proto/xf86dr=
iproto-2.1.1.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['libdaemon', '0.14', '0.14', 'LGPLv2.1+', 'libs', 'http://0pointer.de/lenn=
art/projects/libdaemon/', 'r0', 'pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None=
', 'libdaemon is a lightweight C library which eases the writing of UNIX da=
emons.', 'MATCH', 'N/A', 'http://0pointer.de/lennart/projects/libdaemon/lib=
daemon-0.14.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libdaemon,0.14,0.14,LGPLv2.1+,libs,r0,None,http://0pointer.de/len=
nart/projects/libdaemon/,None,MATCH,pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,libdaemon is=
 a lightweight C library which eases the writing of UNIX daemons.,N/A,http:=
//0pointer.de/lennart/projects/libdaemon/libdaemon-0.14.tar.gz,Saul Wold <s=
gw@linux.intel.com>)
['gnome-icon-theme', '2.31.0', '3.8.0', 'LGPLv3+ | CC-BY-SA-3.0', 'x11/gnom=
e', 'http://www.gnome.org/', 'r5', 'autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  icon-naming-utils-native glib-=
2.0 intltool-native libxml-simple-perl-native perl-native hicolor-icon-them=
e gtk-update-icon-cache-native', 'https://bugzilla.gnome.org/', 'None', 'GN=
OME 2 default icon themes', 'UPDATE', '3.7.4', 'http://ftp.gnome.org/pub/GN=
OME/sources/gnome-icon-theme/2.31/gnome-icon-theme-2.31.0.tar.bz2', 'Consta=
ntin Musca <constantinx.musca@intel.com>', 'waiting for the sato gtk3 port']
inserted (gnome-icon-theme,2.31.0,3.8.0,LGPLv3+ | CC-BY-SA-3.0,x11/gnome,r5=
,None,http://www.gnome.org/,https://bugzilla.gnome.org/,UPDATE,autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ico=
n-naming-utils-native glib-2.0 intltool-native libxml-simple-perl-native pe=
rl-native hicolor-icon-theme gtk-update-icon-cache-native,GNOME 2 default i=
con themes,3.7.4,http://ftp.gnome.org/pub/GNOME/sources/gnome-icon-theme/2.=
31/gnome-icon-theme-2.31.0.tar.bz2,Constantin Musca <constantinx.musca@inte=
l.com>)
['libxcalibrate', '0.0+gitAUTOINC+209d83a', '0.0+gitAUTOINC+209d83a', 'MIT-=
style', 'x11/libs', 'http://www.x.org', 'r0', 'pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  vi=
rtual/libx11 calibrateproto libxext', 'https://bugs.freedesktop.org/enter_b=
ug.cgi?product=3Dxorg', 'None', 'libXCalibrate is a library for performing =
touchscreen calibration with the kdrive tslib touchscreen driver.', 'MATCH'=
, 'N/A', 'git://anongit.freedesktop.org/git/xorg/lib/libXCalibrate;protocol=
=3Dgit', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (libxcalibrate,0.0+gitAUTOINC+209d83a,0.0+gitAUTOINC+209d83a,MIT-s=
tyle,x11/libs,r0,None,http://www.x.org,https://bugs.freedesktop.org/enter_b=
ug.cgi?product=3Dxorg,MATCH,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 calibr=
ateproto libxext,libXCalibrate is a library for performing touchscreen cali=
bration with the kdrive tslib touchscreen driver.,N/A,git://anongit.freedes=
ktop.org/git/xorg/lib/libXCalibrate;protocol=3Dgit,Constantin Musca <consta=
ntinx.musca@intel.com>)
['libxml-namespacesupport-perl', '1.11', '1.11', 'Artistic-1.0 | GPL-1.0+',=
 'libs', 'unknown', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc   perl perl-native', 'None', 'None', 'XML::N=
amespaceSupport offers a simple way to process namespace-based XML names.  =
               It also helps maintain a prefix-to-namespace URI map, and pr=
ovides a number of                 basic checks. ', 'MATCH', 'N/A', 'http:/=
/search.cpan.org/CPAN/authors/id/P/PE/PERIGRIN/XML-NamespaceSupport-1.11.ta=
r.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libxml-namespacesupport-perl,1.11,1.11,Artistic-1.0 | GPL-1.0+,li=
bs,r3,None,unknown,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc   perl perl-native,XML::NamespaceSupport =
offers a simple way to process namespace-based XML names.                 I=
t also helps maintain a prefix-to-namespace URI map, and provides a number =
of                 basic checks. ,N/A,http://search.cpan.org/CPAN/authors/i=
d/P/PE/PERIGRIN/XML-NamespaceSupport-1.11.tar.gz,Saul Wold <sgw@linux.intel=
=2Ecom>)
['adt-installer', '0.1.8+svnr596', '649', 'MIT', 'base', 'unknown', 'r11', =
' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  ', 'None', 'None', 'Meta package for creating sdk installer tarball',=
 'UPDATE', '1.1', 'svn://opkg.googlecode.com/svn;module=3Dtrunk;protocol=3D=
http', 'Jessica Zhang <jessica.zhang@intel.com>', 'None']
inserted (adt-installer,0.1.8+svnr596,649,MIT,base,r11,None,unknown,None,UP=
DATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  ,Meta package for creating sdk installer tarball,1.1,svn://opkg.g=
ooglecode.com/svn;module=3Dtrunk;protocol=3Dhttp,Jessica Zhang <jessica.zha=
ng@intel.com>)
['liberation-fonts', '1.04', '1.05.2.20091019', 'GPLv2', 'x11/fonts', 'http=
s://fedorahosted.org/liberation-fonts/', 'r4', ' virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc   qemu-native', 'https:=
//bugzilla.redhat.com/', '1', 'The Liberation(tm) Fonts is a font family or=
iginally created by Ascender(c) which aims at metric compatibility with Ari=
al, Times New Roman, Courier New.', 'UPDATE', 'N/A', 'https://fedorahosted.=
org/releases/l/i/liberation-fonts/liberation-fonts-1.04.tar.gz', 'Constanti=
n Musca <constantinx.musca@intel.com>', '2.00.0 - fontforge package require=
d ']
inserted (liberation-fonts,1.04,1.05.2.20091019,GPLv2,x11/fonts,r4,1,https:=
//fedorahosted.org/liberation-fonts/,https://bugzilla.redhat.com/,UPDATE, v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c   qemu-native,The Liberation(tm) Fonts is a font family originally create=
d by Ascender(c) which aims at metric compatibility with Arial, Times New R=
oman, Courier New.,N/A,https://fedorahosted.org/releases/l/i/liberation-fon=
ts/liberation-fonts-1.04.tar.gz,Constantin Musca <constantinx.musca@intel.c=
om>)
['patch', '2.7.1', '2.7.1', 'GPLv3', 'utils', 'unknown', 'r0', 'autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   v=
irtual/update-alternatives', 'None', 'None', 'patch takes a patch file cont=
aining a difference listing produced by the diff program and applies those =
differences to one or more original files, producing patched versions.', 'M=
ATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/patch/patch-2.7.1.tar.gz', 'Bogdan Mar=
inescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (patch,2.7.1,2.7.1,GPLv3,utils,r0,None,unknown,None,MATCH,autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
  virtual/update-alternatives,patch takes a patch file containing a differe=
nce listing produced by the diff program and applies those differences to o=
ne or more original files, producing patched versions.,N/A,ftp://ftp.gnu.or=
g/gnu/patch/patch-2.7.1.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@intel.c=
om>)
['rt-tests', '0.85', '0.85', 'GPLv2 & GPLv2+', 'tests', 'https://rt.wiki.ke=
rnel.org/index.php/Cyclictest', 'r2.0', ' virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  linux-libc-headers virtual/li=
bc', 'None', 'None', 'Real-Time preemption testcases', 'MATCH', 'N/A', 'git=
://git.kernel.org/pub/scm/linux/kernel/git/clrkwllms/rt-tests.git', 'Darren=
 Hart <dvhart@linux.intel.com>', 'None']
inserted (rt-tests,0.85,0.85,GPLv2 & GPLv2+,tests,r2.0,None,https://rt.wiki=
=2Ekernel.org/index.php/Cyclictest,None,MATCH, virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  linux-libc-headers virtu=
al/libc,Real-Time preemption testcases,N/A,git://git.kernel.org/pub/scm/lin=
ux/kernel/git/clrkwllms/rt-tests.git,Darren Hart <dvhart@linux.intel.com>)
['gst-plugin-bluetooth', '4.101', '5.4', 'GPLv2+ & LGPLv2.1+', 'libs', 'htt=
p://www.bluez.org', 'r1', 'autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  bluez4 gst-plugins-base alsa-lib', 'Non=
e', 'None', 'Linux Bluetooth stack V4 userland components.  These include a=
 system configurations, daemons, tools and system libraries.', 'UPDATE', 'N=
/A', 'http://kernel.org/pub/linux/bluetooth/bluez-4.101.tar.gz', 'Cristian =
Iorga <cristian.iorga@intel.com>', 'None']
inserted (gst-plugin-bluetooth,4.101,5.4,GPLv2+ & LGPLv2.1+,libs,r1,None,ht=
tp://www.bluez.org,None,UPDATE,autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  bluez4 gst-plugins-base alsa-lib,Li=
nux Bluetooth stack V4 userland components.  These include a system configu=
rations, daemons, tools and system libraries.,N/A,http://kernel.org/pub/lin=
ux/bluetooth/bluez-4.101.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['distcc-config', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r0', ' virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  '=
, 'None', 'None', 'Sets up distcc for compilation on the target device', 'M=
ATCH', 'N/A', 'file://distcc.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (distcc-config,1.0,INVALID,MIT,base,r0,None,unknown,None,MATCH, vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  ,Sets up distcc for compilation on the target device,N/A,file://distcc.sh=
,Saul Wold <sgw@linux.intel.com>)
['net-tools', '1.60-24.2', '1.60-24.2', 'GPLv2+', 'base', 'http://net-tools=
=2Eberlios.de/', 'r0', 'virtual/gettext gettext-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update=
-alternatives', 'http://bugs.debian.org/net-tools', 'None', 'A collection o=
f programs that form the base set of the NET-3 networking distribution for =
the Linux operating system', 'MATCH', 'N/A', 'ftp://ftp.debian.org/debian/p=
ool/main/n/net-tools/net-tools_1.60.orig.tar.gz;name=3Dtarball', 'Cristian =
Iorga <cristian.iorga@intel.com>', 'None']
inserted (net-tools,1.60-24.2,1.60-24.2,GPLv2+,base,r0,None,http://net-tool=
s.berlios.de/,http://bugs.debian.org/net-tools,MATCH,virtual/gettext gettex=
t-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc   virtual/update-alternatives,A collection of programs that fo=
rm the base set of the NET-3 networking distribution for the Linux operatin=
g system,N/A,ftp://ftp.debian.org/debian/pool/main/n/net-tools/net-tools_1.=
60.orig.tar.gz;name=3Dtarball,Cristian Iorga <cristian.iorga@intel.com>)
['lttng-ust', '2.1.2', '2.2.0', 'LGPLv2.1+ & BSD & GPLv2', 'base', 'http://=
lttng.org/ust', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  liburcu util-linux', 'https://bugs.lttng.or=
g/projects/lttng-ust', '2', 'The LTTng UST 2.0 package contains the userspa=
ce tracer library to trace userspace codes.', 'UPDATE', 'N/A', 'git://git.l=
ttng.org/lttng-ust.git;protocol=3Dgit', 'Bogdan Marinescu <bogdan.a.marines=
cu@intel.com>', 'None']
inserted (lttng-ust,2.1.2,2.2.0,LGPLv2.1+ & BSD & GPLv2,base,r0,2,http://lt=
tng.org/ust,https://bugs.lttng.org/projects/lttng-ust,UPDATE,autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libur=
cu util-linux,The LTTng UST 2.0 package contains the userspace tracer libra=
ry to trace userspace codes.,N/A,git://git.lttng.org/lttng-ust.git;protocol=
=3Dgit,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['libvorbis', '1.3.3', '1.3.3', 'BSD', 'libs', 'http://xiph.org/', 'r1', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  libogg', 'https://trac.xiph.org/newticket', 'None'=
, 'Ogg Vorbis is a high-quality lossy audio codec that is free of intellect=
ual property restrictions. libvorbis is the main vorbis codec library.', 'M=
ATCH', 'N/A', 'http://downloads.xiph.org/releases/vorbis/libvorbis-1.3.3.ta=
r.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libvorbis,1.3.3,1.3.3,BSD,libs,r1,None,http://xiph.org/,https://t=
rac.xiph.org/newticket,MATCH,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libogg,Ogg Vorbis is=
 a high-quality lossy audio codec that is free of intellectual property res=
trictions. libvorbis is the main vorbis codec library.,N/A,http://downloads=
=2Exiph.org/releases/vorbis/libvorbis-1.3.3.tar.gz,Cristian Iorga <cristian=
=2Eiorga@intel.com>)
['enchant', '1.6.0', '1.6.0', 'LGPLv2.1+', 'libs', 'http://www.abisource.co=
m/projects/enchant/', 'r3', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  aspell glib-2.0', 'h=
ttp://bugzilla.abisource.com/enter_bug.cgi?product=3DEnchant', 'None', 'Enc=
hant Spell checker API Library', 'MATCH', 'N/A', 'http://www.abisource.com/=
downloads/enchant/1.6.0/enchant-1.6.0.tar.gz', 'Cristian Iorga <cristian.io=
rga@intel.com>', 'None']
inserted (enchant,1.6.0,1.6.0,LGPLv2.1+,libs,r3,None,http://www.abisource.c=
om/projects/enchant/,http://bugzilla.abisource.com/enter_bug.cgi?product=3D=
Enchant,MATCH,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  aspell glib-2.0,Enchant Spell check=
er API Library,N/A,http://www.abisource.com/downloads/enchant/1.6.0/enchant=
-1.6.0.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['rpcbind', '0.2.0', '0.2.0', 'BSD', 'console/network', 'http://sourceforge=
=2Enet/projects/rpcbind/', 'r4', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  libtirpc quota update-rc.d-nativ=
e', 'http://sourceforge.net/tracker/?group_id=3D201237&atid=3D976751', 'Non=
e', 'The rpcbind utility is a server that converts RPC                progr=
am numbers into universal addresses.', 'MATCH', 'N/A', 'http://downloads.so=
urceforge.net/rpcbind/rpcbind-0.2.0.tar.bz2', 'Cristian Iorga <cristian.ior=
ga@intel.com>', 'None']
inserted (rpcbind,0.2.0,0.2.0,BSD,console/network,r4,None,http://sourceforg=
e.net/projects/rpcbind/,http://sourceforge.net/tracker/?group_id=3D201237&a=
tid=3D976751,MATCH,autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  libtirpc quota update-rc.d-native,The rpcbind u=
tility is a server that converts RPC                program numbers into un=
iversal addresses.,N/A,http://downloads.sourceforge.net/rpcbind/rpcbind-0.2=
=2E0.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['connman-conf', '1.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r2', ' virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
', 'None', 'None', 'connman-conf version 1.0-r2', 'MATCH', 'N/A', 'file://w=
ired.config', 'None', 'None']
inserted (connman-conf,1.0,INVALID,GPLv2,base,r2,None,unknown,None,MATCH, v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  ,connman-conf version 1.0-r2,N/A,file://wired.config,None)
['guilt-native', '0.33', '0.35', 'GPLv2', 'base', 'unknown', 'r4', ' ', 'No=
ne', 'None', 'guilt is quilt like tool for git', 'UPDATE', 'N/A', 'http://f=
tp.de.debian.org/debian/pool/main/g/guilt/guilt_0.33.orig.tar.gz', 'Saul Wo=
ld <sgw@linux.intel.com>', 'None']
inserted (guilt-native,0.33,0.35,GPLv2,base,r4,None,unknown,None,UPDATE, ,g=
uilt is quilt like tool for git,N/A,http://ftp.de.debian.org/debian/pool/ma=
in/g/guilt/guilt_0.33.orig.tar.gz,Saul Wold <sgw@linux.intel.com>)
['xf86-input-vmmouse', '13.0.0', '13.0.0', 'MIT-X', 'x11/drivers', 'http://=
www.x.org', 'r21.0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto rand=
rproto util-macros inputproto kbproto ', 'https://bugs.freedesktop.org', '2=
', 'X.Org X server -- VMWare mouse input driver', 'MATCH', 'N/A', 'http://x=
org.freedesktop.org/releases/individual/driver/xf86-input-vmmouse-13.0.0.ta=
r.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86-input-vmmouse,13.0.0,13.0.0,MIT-X,x11/drivers,r21.0,2,http:/=
/www.x.org,https://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  vir=
tual/xserver xproto randrproto util-macros inputproto kbproto ,X.Org X serv=
er -- VMWare mouse input driver,N/A,http://xorg.freedesktop.org/releases/in=
dividual/driver/xf86-input-vmmouse-13.0.0.tar.bz2,Laurentiu Palcu <laurenti=
u.palcu@intel.com>)
['libpciaccess', '0.13.1', '0.13.1', 'MIT & MIT-style', 'x11/libs', 'http:/=
/www.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.f=
reedesktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'libpciaccess provide=
s functionality for X to access the PCI bus and devices in a platform-indep=
endent way.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individ=
ual/lib/libpciaccess-0.13.1.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@int=
el.com>', 'None']
inserted (libpciaccess,0.13.1,0.13.1,MIT & MIT-style,x11/libs,r1,None,http:=
//www.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH=
,pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  util-macros,libpciaccess provides functionality =
for X to access the PCI bus and devices in a platform-independent way.,N/A,=
http://xorg.freedesktop.org/releases/individual/lib/libpciaccess-0.13.1.tar=
=2Ebz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['sed', '4.2.2', '4.2.2', 'GPLv3+', 'console/utils', 'http://www.gnu.org/so=
ftware/sed/', 'r0', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/updat=
e-alternatives', 'None', 'None', 'sed is a Stream EDitor.', 'MATCH', 'N/A',=
 'ftp://ftp.gnu.org/gnu/sed/sed-4.2.2.tar.gz', 'Constantin Musca <constanti=
nx.musca@intel.com>', 'None']
inserted (sed,4.2.2,4.2.2,GPLv3+,console/utils,r0,None,http://www.gnu.org/s=
oftware/sed/,None,MATCH,autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/up=
date-alternatives,sed is a Stream EDitor.,N/A,ftp://ftp.gnu.org/gnu/sed/sed=
-4.2.2.tar.gz,Constantin Musca <constantinx.musca@intel.com>)
['initramfs-live-boot', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r11', =
' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  virtual/kernel', 'None', 'None', 'A live image init script', 'MATCH',=
 'N/A', 'file://init-live.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-live-boot,1.0,INVALID,MIT,base,r11,None,unknown,None,MA=
TCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  virtual/kernel,A live image init script,N/A,file://init-live.sh,Sa=
ul Wold <sgw@linux.intel.com>)
['setserial', '2.17', '2.17', 'GPLv2.0', 'console/utils', 'http://setserial=
=2Esourceforge.net', 'r3', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'setserial is a pro=
gram designed to set and/or report the configuration information associated=
 with a serial port', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/set=
serial/setserial-2.17.tar.gz', 'Radu Moisan <radu.moisan@intel.com>', 'None=
']
inserted (setserial,2.17,2.17,GPLv2.0,console/utils,r3,None,http://setseria=
l.sourceforge.net,None,MATCH,autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  ,setserial is a program designed to s=
et and/or report the configuration information associated with a serial por=
t,N/A,http://downloads.sourceforge.net/setserial/setserial-2.17.tar.gz,Radu=
 Moisan <radu.moisan@intel.com>)
['gst-fluendo-mp3', '0.10.19', '0.10.21', 'MIT', 'multimedia', 'http://www.=
fluendo.com/resources/source-plugins.php', 'r0', 'pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 gstreamer zlib', 'None', 'None', 'Fluendo closed-format mp3 GStreamer plug=
-in', 'UPDATE', 'N/A', 'http://core.fluendo.com/gstreamer/src/gst-fluendo-m=
p3/gst-fluendo-mp3-0.10.19.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.=
com>', 'None']
inserted (gst-fluendo-mp3,0.10.19,0.10.21,MIT,multimedia,r0,None,http://www=
=2Efluendo.com/resources/source-plugins.php,None,UPDATE,pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  gstreamer zlib,Fluendo closed-format mp3 GStreamer plug-in,N/A,http:=
//core.fluendo.com/gstreamer/src/gst-fluendo-mp3/gst-fluendo-mp3-0.10.19.ta=
r.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['mdadm', '3.2.6', '3.2.6', 'GPLv2 & GPLv2+', 'base', 'http://www.kernel.or=
g/pub/linux/utils/raid/mdadm/', 'r0', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  ', 'n/a', 'None', ' A tool =
for managing Soft RAID under Linux', 'MATCH', 'N/A', 'http://kernel.org/pub=
/linux/utils/raid/mdadm/mdadm-3.2.6.tar.bz2', 'Laurentiu Palcu <laurentiu.p=
alcu@intel.com>', 'None']
inserted (mdadm,3.2.6,3.2.6,GPLv2 & GPLv2+,base,r0,None,http://www.kernel.o=
rg/pub/linux/utils/raid/mdadm/,n/a,MATCH,autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  , A tool for managing Sof=
t RAID under Linux,N/A,http://kernel.org/pub/linux/utils/raid/mdadm/mdadm-3=
=2E2.6.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['gtk-doc-stub', '0.0+gitAUTOINC+3dfd0a0', '0.0+gitAUTOINC+3dfd0a0', 'GPLv2=
', 'x11/base', 'unknown', 'r0', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', "Stub implemen=
tation of gtk-doc, as we don't want to build the API documentation", 'MATCH=
', 'N/A', 'git://git.gnome.org/gtk-doc-stub;protocol=3Dgit', 'Saul Wold <sg=
w@linux.intel.com>', 'None']
inserted (gtk-doc-stub,0.0+gitAUTOINC+3dfd0a0,0.0+gitAUTOINC+3dfd0a0,GPLv2,=
x11/base,r0,None,unknown,None,MATCH,autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  ,Stub implementation of gtk-do=
c, as we don't want to build the API documentation,N/A,git://git.gnome.org/=
gtk-doc-stub;protocol=3Dgit,Saul Wold <sgw@linux.intel.com>)
['libxau', '1.0.7', '1.0.7', 'MIT-style', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros =
 xproto', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1',=
 'libxau provides the main interfaces to the X11 authorisation handling, wh=
ich controls authorisation for X connections, both client-side and server-s=
ide.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib=
/libXau-1.0.7.tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>', '=
None']
inserted (libxau,1.0.7,1.0.7,MIT-style,x11/libs,r0,1,http://www.x.org,https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  util-macros  xproto,libxau provide=
s the main interfaces to the X11 authorisation handling, which controls aut=
horisation for X connections, both client-side and server-side.,N/A,http://=
xorg.freedesktop.org/releases/individual/lib/libXau-1.0.7.tar.bz2,Constanti=
n Musca <constantinx.musca@intel.com>)
['libaio', '0.3.109', '0.3.109', 'LGPLv2.1+', 'base', 'http://lse.sourcefor=
ge.net/io/aio.html', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  ', 'None', 'None', 'Asynchronous input/out=
put library that uses the kernels native interface', 'MATCH', 'N/A', 'ftp:/=
/ftp.debian.org/debian/pool/main/liba/libaio/libaio_0.3.109.orig.tar.gz', '=
Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libaio,0.3.109,0.3.109,LGPLv2.1+,base,r2,None,http://lse.sourcefo=
rge.net/io/aio.html,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  ,Asynchronous input/output library that=
 uses the kernels native interface,N/A,ftp://ftp.debian.org/debian/pool/mai=
n/liba/libaio/libaio_0.3.109.orig.tar.gz,Saul Wold <sgw@linux.intel.com>)
['kmod', '9', '13', 'GPL-2.0+ & LGPL-2.1+', 'base', 'http://packages.profus=
ion.mobi/kmod/', 'r0.0', 'autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc   pkgconfig-native gtk-doc-stub-native vi=
rtual/update-alternatives', 'None', 'None', 'kmod is a set of tools to hand=
le common tasks with Linux kernel modules like                insert, remov=
e, list, check properties, resolve dependencies and aliases.', 'UPDATE', '9=
', 'git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git', 'Radu Moisan =
<radu.moisan@intel.com>', 'None']
inserted (kmod,9,13,GPL-2.0+ & LGPL-2.1+,base,r0.0,None,http://packages.pro=
fusion.mobi/kmod/,None,UPDATE,autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc   pkgconfig-native gtk-doc-stub-nativ=
e virtual/update-alternatives,kmod is a set of tools to handle common tasks=
 with Linux kernel modules like                insert, remove, list, check =
properties, resolve dependencies and aliases.,9,git://git.kernel.org/pub/sc=
m/utils/kernel/kmod/kmod.git,Radu Moisan <radu.moisan@intel.com>)
['help2man-native', '1.40.13', '1.41.2', 'GPLv3', 'devel', 'unknown', 'r0',=
 ' autoconf-native automake-native', 'None', 'None', 'Program to create sim=
ple man pages', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/help2man/help2man-1=
=2E40.13.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (help2man-native,1.40.13,1.41.2,GPLv3,devel,r0,None,unknown,None,U=
PDATE, autoconf-native automake-native,Program to create simple man pages,N=
/A,ftp://ftp.gnu.org/gnu/help2man/help2man-1.40.13.tar.gz,Saul Wold <sgw@li=
nux.intel.com>)
['mkfontdir', '1.0.7', '1.0.7', 'MIT-X', 'x11/apps', 'http://www.x.org/', '=
r8.0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros-native virtual/libx11', 'http=
s://bugs.freedesktop.org', '1', 'For each directory argument, mkfontdir rea=
ds all of the font files in the directory. The font names and related data =
are written out to the files \\"fonts.dir\\", \\"fonts.scale\\", and \\"fon=
ts.alias\\".  The X server and font server use these files to find the avai=
lable font files.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/i=
ndividual/app/mkfontdir-1.0.7.tar.bz2', 'Radu Moisan <radu.moisan@intel.com=
>', 'None']
inserted (mkfontdir,1.0.7,1.0.7,MIT-X,x11/apps,r8.0,1,http://www.x.org/,htt=
ps://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-nativ=
e virtual/libx11,For each directory argument, mkfontdir reads all of the fo=
nt files in the directory. The font names and related data are written out =
to the files \"fonts.dir\", \"fonts.scale\", and \"fonts.alias\".  The X se=
rver and font server use these files to find the available font files.,N/A,=
http://xorg.freedesktop.org/releases/individual/app/mkfontdir-1.0.7.tar.bz2=
,Radu Moisan <radu.moisan@intel.com>)
['ubootchart', '0.0+r12', '12', 'GPLv3', 'base', 'http://code.google.com/p/=
ubootchart/', 'r6', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc   virtual/update-alternatives', 'None', 'None', 'A=
 boot profiling tool', 'MATCH', '0.0+r12', 'svn://ubootchart.googlecode.com=
/svn/;protocol=3Dhttp;module=3Dtrunk', 'Radu Moisan <radu.moisan@intel.com>=
', 'None']
inserted (ubootchart,0.0+r12,12,GPLv3,base,r6,None,http://code.google.com/p=
/ubootchart/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc   virtual/update-alternatives,A boot profiling =
tool,0.0+r12,svn://ubootchart.googlecode.com/svn/;protocol=3Dhttp;module=3D=
trunk,Radu Moisan <radu.moisan@intel.com>)
['libpng', '1.6.1', '1.6.1', 'Libpng', 'libs', 'http://www.libpng.org/', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  zlib', 'None', 'None', 'PNG Library', 'MATCH=
', 'N/A', 'http://downloads.sourceforge.net/project/libpng/libpng16/1.6.1/l=
ibpng-1.6.1.tar.xz', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', '1.4.3 =
and later changes the API and breaks libmatchbox. Sticking with the 1.2.x s=
eries instead']
inserted (libpng,1.6.1,1.6.1,Libpng,libs,r0,None,http://www.libpng.org/,Non=
e,MATCH,pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  zlib,PNG Library,N/A,http://downloads.sou=
rceforge.net/project/libpng/libpng16/1.6.1/libpng-1.6.1.tar.xz,Andrei Dinu =
<andrei.adrianx.dinu@intel.com>)
['xdg-utils', '1.0.2', '1.0.2', 'MIT', 'base', 'unknown', 'r0', 'autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  '=
, 'None', 'None', 'The xdg-utils package is a set of simple scripts that pr=
ovide basic desktop integration functions for any Free Desktop, such as Lin=
ux. They are intended to provide a set of defacto standards. The following =
scripts are provided at this time: xdg-desktop-icon xdg-desktop-menu xdg-em=
ail xdg-icon-resource xdg-mime xdg-open xdg-screensaver ', 'MATCH', 'N/A', =
'http://portland.freedesktop.org/download/xdg-utils-1.0.2.tgz', 'Constantin=
 Musca <constantinx.musca@intel.com>', 'only release candidates available ']
inserted (xdg-utils,1.0.2,1.0.2,MIT,base,r0,None,unknown,None,MATCH,autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  ,The xdg-utils package is a set of simple scripts that provide basic desk=
top integration functions for any Free Desktop, such as Linux. They are int=
ended to provide a set of defacto standards. The following scripts are prov=
ided at this time: xdg-desktop-icon xdg-desktop-menu xdg-email xdg-icon-res=
ource xdg-mime xdg-open xdg-screensaver ,N/A,http://portland.freedesktop.or=
g/download/xdg-utils-1.0.2.tgz,Constantin Musca <constantinx.musca@intel.co=
m>)
['msmtp', '1.4.30', '1.4.30', 'GPLv3', 'console/network', 'http://msmtp.sou=
rceforge.net/', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib gnutls =
virtual/update-alternatives', 'None', 'None', 'A sendmail replacement for u=
se in MTAs like mutt', 'MATCH', 'N/A', 'http://sourceforge.net/projects/msm=
tp/files/msmtp/1.4.30/msmtp-1.4.30.tar.bz2', 'Saul Wold <sgw@linux.intel.co=
m>', 'None']
inserted (msmtp,1.4.30,1.4.30,GPLv3,console/network,r0,None,http://msmtp.so=
urceforge.net/,None,MATCH,autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib gnut=
ls virtual/update-alternatives,A sendmail replacement for use in MTAs like =
mutt,N/A,http://sourceforge.net/projects/msmtp/files/msmtp/1.4.30/msmtp-1.4=
=2E30.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['systemtap', '2.1+gitAUTOINC+addec81', '2.1+gitAUTOINC+ac097ee', 'GPLv2', =
'base', 'unknown', 'r1', 'autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  elfutils =
sqlite3 systemtap-native', 'None', 'None', 'SystemTap - script-directed dyn=
amic tracing and performance analysis tool for Linux', 'MATCH', 'N/A', 'git=
://sourceware.org/git/systemtap.git;protocol=3Dgit', 'Radu Moisan <radu.moi=
san@intel.com>', 'None']
inserted (systemtap,2.1+gitAUTOINC+addec81,2.1+gitAUTOINC+ac097ee,GPLv2,bas=
e,r1,None,unknown,None,MATCH,autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  elfuti=
ls sqlite3 systemtap-native,SystemTap - script-directed dynamic tracing and=
 performance analysis tool for Linux,N/A,git://sourceware.org/git/systemtap=
=2Egit;protocol=3Dgit,Radu Moisan <radu.moisan@intel.com>)
['gnupg', '2.0.19', '2.0.19', 'GPLv3 & LGPLv3', 'base', 'http://www.gnupg.o=
rg/', 'r5', 'autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  pth libassuan libksba =
zlib bzip2 readline libgcrypt', 'None', 'None', 'GNU privacy guard - a free=
 PGP replacement (new v2.x)', 'MATCH', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/g=
nupg/gnupg-2.0.19.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (gnupg,2.0.19,2.0.19,GPLv3 & LGPLv3,base,r5,None,http://www.gnupg.=
org/,None,MATCH,autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  pth libassuan libks=
ba zlib bzip2 readline libgcrypt,GNU privacy guard - a free PGP replacement=
 (new v2.x),N/A,ftp://ftp.gnupg.org/gcrypt/gnupg/gnupg-2.0.19.tar.bz2,Saul =
Wold <sgw@linux.intel.com>)
['screen', '4.0.3', '4.0.3', 'GPLv2+', 'console/utils', 'http://www.gnu.org=
/software/screen/', 'r3', 'autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  ncurses           ', 'https://savannah.=
gnu.org/bugs/?func=3Dadditem&group=3Dscreen', 'None', 'Screen is a full-scr=
een window manager that multiplexes a physical terminal between several pro=
cesses, typically interactive shells.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/=
gnu/screen/screen-4.0.3.tar.gz;name=3Dtarball', 'Constantin Musca <constant=
inx.musca@intel.com>', 'None']
inserted (screen,4.0.3,4.0.3,GPLv2+,console/utils,r3,None,http://www.gnu.or=
g/software/screen/,https://savannah.gnu.org/bugs/?func=3Dadditem&group=3Dsc=
reen,MATCH,autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ncurses           ,Screen is a full-screen window manag=
er that multiplexes a physical terminal between several processes, typicall=
y interactive shells.,N/A,ftp://ftp.gnu.org/gnu/screen/screen-4.0.3.tar.gz;=
name=3Dtarball,Constantin Musca <constantinx.musca@intel.com>)
['initramfs-boot', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r2', ' ', '=
None', 'None', 'A live image init script', 'MATCH', 'N/A', 'file://init-boo=
t.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-boot,1.0,INVALID,MIT,base,r2,None,unknown,None,MATCH, ,=
A live image init script,N/A,file://init-boot.sh,Saul Wold <sgw@linux.intel=
=2Ecom>)
['js', '1.7.0+1.8.0rc1', '185-1.0.0', 'MPL-1 | GPLv2+ | LGPLv2.1+', 'libs',=
 'http://www.mozilla.org/js/spidermonkey/', 'r4', 'autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'Non=
e', 'Spidermonkey: a javascript engine written in C', 'UPDATE', 'N/A', 'htt=
p://ftp.mozilla.org/pub/mozilla.org/js/js-1.8.0-rc1.tar.gz', 'Constantin Mu=
sca <constantinx.musca@intel.com>', 'None']
inserted (js,1.7.0+1.8.0rc1,185-1.0.0,MPL-1 | GPLv2+ | LGPLv2.1+,libs,r4,No=
ne,http://www.mozilla.org/js/spidermonkey/,None,UPDATE,autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Spidermonk=
ey: a javascript engine written in C,N/A,http://ftp.mozilla.org/pub/mozilla=
=2Eorg/js/js-1.8.0-rc1.tar.gz,Constantin Musca <constantinx.musca@intel.com=
>)
['hwlatdetect', '0.85', '0.85', 'GPLv2', 'tests', 'http://git.kernel.org/?p=
=3Dlinux/kernel/git/clrkwllms/rt-tests.git', 'r2.0', ' virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None=
', 'hwlatdetect version 0.85-r2.0', 'MATCH', 'N/A', 'git://git.kernel.org/p=
ub/scm/linux/kernel/git/clrkwllms/rt-tests.git', 'Darren Hart <dvhart@linux=
=2Eintel.com>', 'None']
inserted (hwlatdetect,0.85,0.85,GPLv2,tests,r2.0,None,http://git.kernel.org=
/?p=3Dlinux/kernel/git/clrkwllms/rt-tests.git,None,MATCH, virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,hwlatdetect =
version 0.85-r2.0,N/A,git://git.kernel.org/pub/scm/linux/kernel/git/clrkwll=
ms/rt-tests.git,Darren Hart <dvhart@linux.intel.com>)
['qt-demo-init', '0.1', 'INVALID', 'MIT', 'base', 'unknown', 'r3', '  updat=
e-rc.d-native', 'None', 'None', 'Init script for qtdemo', 'MATCH', 'N/A', '=
file://qtdemo-init', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None=
']
inserted (qt-demo-init,0.1,INVALID,MIT,base,r3,None,unknown,None,MATCH,  up=
date-rc.d-native,Init script for qtdemo,N/A,file://qtdemo-init,Paul Eggleto=
n <paul.eggleton@linux.intel.com>)
['vte', '0.28.2', '0.34.4', 'LGPLv2.1+', 'base', 'unknown', 'r6', 'pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc   glib-2.0 gtk+ intltool-native ncurses gobject-introspect=
ion-stub gnome-common-native hicolor-icon-theme gtk-update-icon-cache-nativ=
e gconf gconf-native shared-mime-info-native shared-mime-info gtk-doc-stub-=
native', 'https://bugzilla.gnome.org/buglist.cgi?product=3Dvte', 'None', 'v=
te is a virtual terminal emulator', 'UPDATE', 'N/A', 'http://ftp.gnome.org/=
pub/GNOME/sources/vte/0.28/vte-0.28.2.tar.bz2;name=3Darchive', 'Saul Wold <=
sgw@linux.intel.com>', 'None']
inserted (vte,0.28.2,0.34.4,LGPLv2.1+,base,r6,None,unknown,https://bugzilla=
=2Egnome.org/buglist.cgi?product=3Dvte,UPDATE,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   gl=
ib-2.0 gtk+ intltool-native ncurses gobject-introspection-stub gnome-common=
-native hicolor-icon-theme gtk-update-icon-cache-native gconf gconf-native =
shared-mime-info-native shared-mime-info gtk-doc-stub-native,vte is a virtu=
al terminal emulator,N/A,http://ftp.gnome.org/pub/GNOME/sources/vte/0.28/vt=
e-0.28.2.tar.bz2;name=3Darchive,Saul Wold <sgw@linux.intel.com>)
['libgcrypt', '1.5.0', '1.5.2', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://direc=
tory.fsf.org/project/libgcrypt/', 'r2', 'pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libgpg-e=
rror libcap', 'https://bugs.g10code.com/gnupg/index', 'None', 'A general pu=
rpose cryptographic library based on the code from GnuPG', 'UPDATE', 'N/A',=
 'ftp://ftp.gnupg.org/gcrypt/libgcrypt/libgcrypt-1.5.0.tar.gz', 'Saul Wold =
<sgw@linux.intel.com>', 'None']
inserted (libgcrypt,1.5.0,1.5.2,GPLv2+ & LGPLv2.1+,libs,r2,None,http://dire=
ctory.fsf.org/project/libgcrypt/,https://bugs.g10code.com/gnupg/index,UPDAT=
E,pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  libgpg-error libcap,A general purpose cryptogra=
phic library based on the code from GnuPG,N/A,ftp://ftp.gnupg.org/gcrypt/li=
bgcrypt/libgcrypt-1.5.0.tar.gz,Saul Wold <sgw@linux.intel.com>)
['gst-plugins-gl', '0.10.3', '0.10.3', 'GPLv2+ & LGPLv2+ & LGPLv2.1+ ', 'mu=
ltimedia', 'http://gstreamer.freedesktop.org/', 'r0', 'pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
 virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base virtual/lib=
gles2 virtual/egl jpeg gconf gconf-native', 'https://bugzilla.gnome.org/ent=
er_bug.cgi?product=3DGstreamer', 'None', 'Plugins for GStreamer', 'MATCH', =
'N/A', 'http://gstreamer.freedesktop.org/src/gst-plugins-gl/gst-plugins-gl-=
0.10.3.tar.bz2', 'None', 'None']
inserted (gst-plugins-gl,0.10.3,0.10.3,GPLv2+ & LGPLv2+ & LGPLv2.1+ ,multim=
edia,r0,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/e=
nter_bug.cgi?product=3DGstreamer,MATCH,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native virtual/gettext=
 gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  gstreamer gst-plugins-base virtual/libgles2 virtual/eg=
l jpeg gconf gconf-native,Plugins for GStreamer,N/A,http://gstreamer.freede=
sktop.org/src/gst-plugins-gl/gst-plugins-gl-0.10.3.tar.bz2,None)
['xcursor-transparent-theme', '0.1.1', '0.1.1', 'GPLv2', 'x11/base', 'http:=
//www.matchbox-project.org/', 'r4', 'autoconf-native automake-native libtoo=
l-native gnu-config-native  ', 'http://bugzilla.openedhand.com/', 'None', '=
Transparent xcursor theme for handheld systems', 'MATCH', 'N/A', 'http://do=
wnloads.yoctoproject.org/releases/matchbox/utils/xcursor-transparent-theme-=
0.1.1.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xcursor-transparent-theme,0.1.1,0.1.1,GPLv2,x11/base,r4,None,http=
://www.matchbox-project.org/,http://bugzilla.openedhand.com/,MATCH,autoconf=
-native automake-native libtool-native gnu-config-native  ,Transparent xcur=
sor theme for handheld systems,N/A,http://downloads.yoctoproject.org/releas=
es/matchbox/utils/xcursor-transparent-theme-0.1.1.tar.gz,Laurentiu Palcu <l=
aurentiu.palcu@intel.com>)
['libpcap', '1.3.0', '1.3.0', 'BSD', 'libs/network', 'http://www.tcpdump.or=
g/', 'r5.0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  flex-native bison-native libnl bluez4', 'http://sour=
ceforge.net/tracker/?group_id=3D53067&atid=3D469577', 'None', 'Libpcap prov=
ides a portable framework for low-level network monitoring.  Libpcap can pr=
ovide network statistics collection, security monitoring and network debugg=
ing.', 'MATCH', 'N/A', 'http://www.tcpdump.org/release/libpcap-1.3.0.tar.gz=
', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libpcap,1.3.0,1.3.0,BSD,libs/network,r5.0,None,http://www.tcpdump=
=2Eorg/,http://sourceforge.net/tracker/?group_id=3D53067&atid=3D469577,MATC=
H,autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  flex-native bison-native libnl bluez4,Libpcap provides a portabl=
e framework for low-level network monitoring.  Libpcap can provide network =
statistics collection, security monitoring and network debugging.,N/A,http:=
//www.tcpdump.org/release/libpcap-1.3.0.tar.gz,Cristian Iorga <cristian.ior=
ga@intel.com>)
['libxkbcommon', '0.2.0', '0.3.0', 'MIT & MIT-style', 'base', 'http://www.x=
kbcommon.org', 'r1', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  util-macros flex-native bis=
on-native', 'None', 'None', 'libxkbcommon is a keymap compiler and support =
library which processes a reduced subset of keymaps as defined by the XKB s=
pecification.', 'UPDATE', 'N/A', 'http://xkbcommon.org/download/libxkbcommo=
n-0.2.0.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libxkbcommon,0.2.0,0.3.0,MIT & MIT-style,base,r1,None,http://www.=
xkbcommon.org,None,UPDATE,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros flex-native=
 bison-native,libxkbcommon is a keymap compiler and support library which p=
rocesses a reduced subset of keymaps as defined by the XKB specification.,N=
/A,http://xkbcommon.org/download/libxkbcommon-0.2.0.tar.bz2,Saul Wold <sgw@=
linux.intel.com>)
['liba52', '0.7.4', '0.7.4', 'GPLv2+', 'libs', 'http://liba52.sourceforge.n=
et/', 'r4', 'autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ', 'None', 'None', 'Library for reading some sort of =
media format.', 'MATCH', 'N/A', 'http://liba52.sourceforge.net/files/a52dec=
-0.7.4.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (liba52,0.7.4,0.7.4,GPLv2+,libs,r4,None,http://liba52.sourceforge.=
net/,None,MATCH,autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  ,Library for reading some sort of media format.,N/=
A,http://liba52.sourceforge.net/files/a52dec-0.7.4.tar.gz,Cristian Iorga <c=
ristian.iorga@intel.com>)
['gcc-crosssdk-initial', '4.7.2', '4.7.2', 'GPL-3.0-with-GCC-exception & GP=
Lv3', 'devel', 'http://www.gnu.org/software/gcc/', 'r19', '  virtual/i586-p=
okysdk-linux-binutils-crosssdk gettext-native mpfr-native gmp-native libmpc=
-native zlib-native', 'None', 'None', 'The GNU cc and gcc C compilers.', 'M=
ATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.bz2', 'Bog=
dan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (gcc-crosssdk-initial,4.7.2,4.7.2,GPL-3.0-with-GCC-exception & GPL=
v3,devel,r19,None,http://www.gnu.org/software/gcc/,None,MATCH,  virtual/i58=
6-pokysdk-linux-binutils-crosssdk gettext-native mpfr-native gmp-native lib=
mpc-native zlib-native,The GNU cc and gcc C compilers.,N/A,ftp://ftp.gnu.or=
g/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.bz2,Bogdan Marinescu <bogdan.a.marinescu@=
intel.com>)
['sysstat', '10.1.4', '10.1.5', 'GPLv2+', 'console/utils', 'http://sebastie=
n.godard.pagesperso-orange.fr/', 'r2.0', 'autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native virtual/gettext gettext-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  ', 'None', 'None', 'The sysstat utilities are a collection of perfor=
mance monitoring tools for Linux.', 'UPDATE', 'N/A', 'http://pagesperso-ora=
nge.fr/sebastien.godard/sysstat-10.1.4.tar.gz', 'Saul Wold <sgw@linux.intel=
=2Ecom>', 'None']
inserted (sysstat,10.1.4,10.1.5,GPLv2+,console/utils,r2.0,None,http://sebas=
tien.godard.pagesperso-orange.fr/,None,UPDATE,autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  ,The sysstat utilities are a collection of performance monitorin=
g tools for Linux.,N/A,http://pagesperso-orange.fr/sebastien.godard/sysstat=
-10.1.4.tar.gz,Saul Wold <sgw@linux.intel.com>)
['qt4-native', '4.8.4', '4.8.4', 'LGPLv2.1 | GPLv3', 'libs', 'http://qt.nok=
ia.com', 'r19.0', ' zlib-native dbus-native', 'None', 'None', 'Native versi=
on of Qt/[X11|Mac|Embedded]', 'MATCH', 'N/A', 'http://releases.qt-project.o=
rg/qt4/source/qt-everywhere-opensource-src-4.8.4.tar.gz', 'Paul Eggleton <p=
aul.eggleton@linux.intel.com>', 'None']
inserted (qt4-native,4.8.4,4.8.4,LGPLv2.1 | GPLv3,libs,r19.0,None,http://qt=
=2Enokia.com,None,MATCH, zlib-native dbus-native,Native version of Qt/[X11|=
Mac|Embedded],N/A,http://releases.qt-project.org/qt4/source/qt-everywhere-o=
pensource-src-4.8.4.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['remake', '0.8+gitAUTOINC+414d6e8', '3.82+dbg-0.9+gitAUTOINC+f05508e', 'GP=
Lv2', 'devel', 'http://bashdb.sourceforge.net/remake/', 'r0', 'autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native virtual/=
gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc   readline virtual/update-alternatives', 'None',=
 'None', 'remake is a patched and modernized version of GNU make utility th=
at adds improved error reporting, the ability to trace execution in a compr=
ehensible way, and a debugger.', 'UPDATE', 'N/A', 'git://github.com/rocky/r=
emake.git', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (remake,0.8+gitAUTOINC+414d6e8,3.82+dbg-0.9+gitAUTOINC+f05508e,GPL=
v2,devel,r0,None,http://bashdb.sourceforge.net/remake/,None,UPDATE,autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native virt=
ual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc   readline virtual/update-alternatives,remak=
e is a patched and modernized version of GNU make utility that adds improve=
d error reporting, the ability to trace execution in a comprehensible way, =
and a debugger.,N/A,git://github.com/rocky/remake.git,Saul Wold <sgw@linux.=
intel.com>)
['autogen-native', '5.12', '5.12-5', 'GPLv3', 'devel', 'http://www.gnu.org/=
software/autogen/', 'r3', 'autoconf-native automake-native libtool-native g=
nu-config-native  guile-native libtool-native libxml2-native', 'None', 'Non=
e', 'AutoGen is a tool designed to simplify the creation and maintenance of=
 programs that contain large amounts of repetitious text. It is especially =
valuable in programs that have several blocks of text that must be kept syn=
chronized.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/autogen/rel5.12/autoge=
n-5.12.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (autogen-native,5.12,5.12-5,GPLv3,devel,r3,None,http://www.gnu.org=
/software/autogen/,None,UPDATE,autoconf-native automake-native libtool-nati=
ve gnu-config-native  guile-native libtool-native libxml2-native,AutoGen is=
 a tool designed to simplify the creation and maintenance of programs that =
contain large amounts of repetitious text. It is especially valuable in pro=
grams that have several blocks of text that must be kept synchronized.,N/A,=
ftp://ftp.gnu.org/gnu/autogen/rel5.12/autogen-5.12.tar.gz,Bogdan Marinescu =
<bogdan.a.marinescu@intel.com>)
['libnewt', '0.52.14', '0.52.14', 'LGPLv2', 'libs', 'https://fedorahosted.o=
rg/newt/', 'r2', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  slang popt python  python-native ', 'None', 'Non=
e', 'Newt is a programming library for color text mode, widget based user i=
nterfaces.  Newt can be used to add stacked windows, entry widgets, checkbo=
xes, radio buttons, labels, plain text fields, scrollbars, etc., to text mo=
de user interfaces.  This package also contains the shared library needed b=
y programs built with newt, as well as a /usr/bin/dialog replacement called=
 whiptail.  Newt is based on the slang library.', 'MATCH', 'N/A', 'https://=
fedorahosted.org/releases/n/e/newt/newt-0.52.14.tar.gz', 'Kai Kang <kai.kan=
g@windriver.com>', 'None']
inserted (libnewt,0.52.14,0.52.14,LGPLv2,libs,r2,None,https://fedorahosted.=
org/newt/,None,MATCH,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  slang popt python  python-native ,Newt is a p=
rogramming library for color text mode, widget based user interfaces.  Newt=
 can be used to add stacked windows, entry widgets, checkboxes, radio butto=
ns, labels, plain text fields, scrollbars, etc., to text mode user interfac=
es.  This package also contains the shared library needed by programs built=
 with newt, as well as a /usr/bin/dialog replacement called whiptail.  Newt=
 is based on the slang library.,N/A,https://fedorahosted.org/releases/n/e/n=
ewt/newt-0.52.14.tar.gz,Kai Kang <kai.kang@windriver.com>)
['libical', '0.48', '0.48', 'LGPLv2.1 | MPL-1', 'libs', 'http://sourceforge=
=2Enet/projects/freeassociation/', 'r0', 'autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'http://sourceforge.n=
et/tracker/?group_id=3D16077&atid=3D116077', 'None', 'iCal and scheduling (=
RFC 2445, 2446, 2447) library', 'MATCH', 'N/A', 'http://downloads.sourcefor=
ge.net/project/freeassociation/libical/libical-0.48/libical-0.48.tar.gz', '=
None', 'None']
inserted (libical,0.48,0.48,LGPLv2.1 | MPL-1,libs,r0,None,http://sourceforg=
e.net/projects/freeassociation/,http://sourceforge.net/tracker/?group_id=3D=
16077&atid=3D116077,MATCH,autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ,iCal and scheduling (RFC 2445, 2446, 24=
47) library,N/A,http://downloads.sourceforge.net/project/freeassociation/li=
bical/libical-0.48/libical-0.48.tar.gz,None)
['libxxf86vm', '1.1.2', '1.1.2', 'MIT', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros libxext xf86vidmodeproto', 'https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXxf86vm pro=
vides an interface to the XFree86-VidModeExtension extension, which allows =
client applications to get and set video mode timings in extensive detail. =
 It is used by the xvidtune program in particular.', 'MATCH', 'N/A', 'http:=
//xorg.freedesktop.org/releases/individual/lib/libXxf86vm-1.1.2.tar.bz2', '=
Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (libxxf86vm,1.1.2,1.1.2,MIT,x11/libs,r0,1,http://www.x.org,https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  util-macros libxext xf86vidmodeproto,libXxf86vm provides an interfa=
ce to the XFree86-VidModeExtension extension, which allows client applicati=
ons to get and set video mode timings in extensive detail.  It is used by t=
he xvidtune program in particular.,N/A,http://xorg.freedesktop.org/releases=
/individual/lib/libXxf86vm-1.1.2.tar.bz2,Constantin Musca <constantinx.musc=
a@intel.com>)
['bison', '2.7', '2.7.1', 'GPLv3', 'devel', 'http://www.gnu.org/software/bi=
son/', 'r1', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  bison-native flex-nat=
ive', 'None', 'None', 'Bison is a general-purpose parser generator that con=
verts an annotated context-free grammar into an LALR(1) or GLR parser for t=
hat grammar.  Bison is upward compatible with Yacc: all properly-written Ya=
cc grammars ought to work with Bison with no change. Anyone familiar with Y=
acc should be able to use Bison with little trouble.', 'UPDATE', 'N/A', 'ft=
p://ftp.gnu.org/gnu/bison/bison-2.7.tar.gz', 'Bogdan Marinescu <bogdan.a.ma=
rinescu@intel.com>', 'None']
inserted (bison,2.7,2.7.1,GPLv3,devel,r1,None,http://www.gnu.org/software/b=
ison/,None,UPDATE,autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bison-native flex=
-native,Bison is a general-purpose parser generator that converts an annota=
ted context-free grammar into an LALR(1) or GLR parser for that grammar.  B=
ison is upward compatible with Yacc: all properly-written Yacc grammars oug=
ht to work with Bison with no change. Anyone familiar with Yacc should be a=
ble to use Bison with little trouble.,N/A,ftp://ftp.gnu.org/gnu/bison/bison=
-2.7.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['zaurusd', '0.1+gitAUTOINC+85d941d', '0.1+gitAUTOINC+85d941d', 'GPLv2', 'b=
ase', 'unknown', 'r0', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  tslib update-rc.d-native'=
, 'None', 'None', 'Daemon to handle device specifc features.', 'MATCH', 'N/=
A', 'git://git.yoctoproject.org/zaurusd;protocol=3Dgit', 'Radu Moisan <radu=
=2Emoisan@intel.com>', 'SVN rev 426 is last Stable release']
inserted (zaurusd,0.1+gitAUTOINC+85d941d,0.1+gitAUTOINC+85d941d,GPLv2,base,=
r0,None,unknown,None,MATCH,pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  tslib update-rc.d-nati=
ve,Daemon to handle device specifc features.,N/A,git://git.yoctoproject.org=
/zaurusd;protocol=3Dgit,Radu Moisan <radu.moisan@intel.com>)
['gcc-cross-canadian-i586', '4.7.2', '4.8.0', 'GPL-3.0-with-GCC-exception &=
 GPLv3', 'devel', 'http://www.gnu.org/software/gcc/', 'r19', 'autoconf-nati=
ve automake-native libtool-native gnu-config-native gettext-native nativesd=
k-gettext  virtual/i586-poky-linux-gcc virtual/i586-pokysdk-linux-binutils-=
crosssdk virtual/nativesdk-i586-pokysdk-linux-libc-for-gcc nativesdk-gettex=
t nativesdk-gmp nativesdk-mpfr nativesdk-libmpc nativesdk-elfutils chrpath-=
replacement-native', 'None', 'None', 'The cross-canadian GNU cc and gcc C c=
ompilers for i586 target.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc=
-4.7.2/gcc-4.7.2.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>=
', 'None']
inserted (gcc-cross-canadian-i586,4.7.2,4.8.0,GPL-3.0-with-GCC-exception & =
GPLv3,devel,r19,None,http://www.gnu.org/software/gcc/,None,UPDATE,autoconf-=
native automake-native libtool-native gnu-config-native gettext-native nati=
vesdk-gettext  virtual/i586-poky-linux-gcc virtual/i586-pokysdk-linux-binut=
ils-crosssdk virtual/nativesdk-i586-pokysdk-linux-libc-for-gcc nativesdk-ge=
ttext nativesdk-gmp nativesdk-mpfr nativesdk-libmpc nativesdk-elfutils chrp=
ath-replacement-native,The cross-canadian GNU cc and gcc C compilers for i5=
86 target.,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.bz2,Bogdan=
 Marinescu <bogdan.a.marinescu@intel.com>)
['makedevs', '1.0.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r7', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ',=
 'None', 'None', 'A tool to make device nodes', 'MATCH', '1.0.0', 'file://m=
akedevs.c', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (makedevs,1.0.0,INVALID,GPLv2,base,r7,None,unknown,None,MATCH, vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 ,A tool to make device nodes,1.0.0,file://makedevs.c,Radu Moisan <radu.moi=
san@intel.com>)
['ofono', '1.12', '1.12', 'GPLv2', 'base', 'http://www.ofono.org', 'r2', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  dbus glib-2.0 udev mobile-broadband-provider-info =
bluez4 update-rc.d-native', 'None', 'None', 'oFono is a stack for mobile te=
lephony devices on Linux. oFono supports speaking to telephony devices thro=
ugh specific drivers, or with generic AT commands.', 'MATCH', '1.6', 'http:=
//kernel.org/pub/linux/network/ofono/ofono-1.12.tar.xz', 'Cristian Iorga <c=
ristian.iorga@intel.com>', 'None']
inserted (ofono,1.12,1.12,GPLv2,base,r2,None,http://www.ofono.org,None,MATC=
H,pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  dbus glib-2.0 udev mobile-broadband-provider-in=
fo bluez4 update-rc.d-native,oFono is a stack for mobile telephony devices =
on Linux. oFono supports speaking to telephony devices through specific dri=
vers, or with generic AT commands.,1.6,http://kernel.org/pub/linux/network/=
ofono/ofono-1.12.tar.xz,Cristian Iorga <cristian.iorga@intel.com>)
['usbinit', '1.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r3', '  update-r=
c.d-native', 'None', 'None', 'Initscript to manage gadget Ethernet', 'MATCH=
', 'n/a', 'file://usb-gether', 'Radu Moisan <radu.moisan@intel.com>', 'None=
']
inserted (usbinit,1.0,INVALID,GPLv2,base,r3,None,unknown,None,MATCH,  updat=
e-rc.d-native,Initscript to manage gadget Ethernet,n/a,file://usb-gether,Ra=
du Moisan <radu.moisan@intel.com>)
['libatomics-ops', '7.2', '7.2', 'GPLv2 & MIT', 'optional', 'http://www.hpl=
=2Ehp.com/research/linux/atomic_ops/', 'r1', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', =
'None', 'None', 'A library for atomic integer operations', 'MATCH', 'N/A', =
'http://www.hpl.hp.com/research/linux/atomic_ops/download/libatomic_ops-7.2=
=2Etar.gz', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (libatomics-ops,7.2,7.2,GPLv2 & MIT,optional,r1,None,http://www.hp=
l.hp.com/research/linux/atomic_ops/,None,MATCH,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,A=
 library for atomic integer operations,N/A,http://www.hpl.hp.com/research/l=
inux/atomic_ops/download/libatomic_ops-7.2.tar.gz,Andrei Dinu <andrei.adria=
nx.dinu@intel.com>)
['xkeyboard-config', '2.8', '2.8', 'MIT & MIT-style', 'x11/libs', 'http://f=
reedesktop.org/wiki/Software/XKeyboardConfig', 'r0', 'pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  intltool-native virtual/gettext', 'https://bugs.freedesktop.org/enter_=
bug.cgi?product=3Dxkeyboard-config', 'None', 'The non-arch keyboard configu=
ration database for X Window.  The goal is to provide the consistent, well-=
structured, frequently released open source of X keyboard configuration dat=
a for X Window System implementations.  The project is targeted to XKB-base=
d systems.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individu=
al/data/xkeyboard-config/xkeyboard-config-2.8.tar.bz2', 'Laurentiu Palcu <l=
aurentiu.palcu@intel.com>', 'None']
inserted (xkeyboard-config,2.8,2.8,MIT & MIT-style,x11/libs,r0,None,http://=
freedesktop.org/wiki/Software/XKeyboardConfig,https://bugs.freedesktop.org/=
enter_bug.cgi?product=3Dxkeyboard-config,MATCH,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  in=
tltool-native virtual/gettext,The non-arch keyboard configuration database =
for X Window.  The goal is to provide the consistent, well-structured, freq=
uently released open source of X keyboard configuration data for X Window S=
ystem implementations.  The project is targeted to XKB-based systems.,N/A,h=
ttp://xorg.freedesktop.org/releases/individual/data/xkeyboard-config/xkeybo=
ard-config-2.8.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['x11vnc', '0.9.13', '0.9.13', 'GPLv2+', 'x11/utils', 'http://www.karlrunge=
=2Ecom/x11vnc/', 'r0', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  openssl virtual/libx11 libxext avahi jpeg =
zlib', 'None', 'None', 'Export your X session on-the-fly via VNC', 'MATCH',=
 'N/A', 'http://downloads.sourceforge.net/libvncserver/x11vnc/0.9.13/x11vnc=
-0.9.13.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (x11vnc,0.9.13,0.9.13,GPLv2+,x11/utils,r0,None,http://www.karlrung=
e.com/x11vnc/,None,MATCH,autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  openssl virtual/libx11 libxext avahi jpeg=
 zlib,Export your X session on-the-fly via VNC,N/A,http://downloads.sourcef=
orge.net/libvncserver/x11vnc/0.9.13/x11vnc-0.9.13.tar.gz,Laurentiu Palcu <l=
aurentiu.palcu@intel.com>)
['nativesdk-qemu-helper', '1.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r9=
', 'virtual/nativesdk-i586-pokysdk-linux-compilerlibs chrpath-replacement-n=
ative virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-libc', 'Non=
e', 'None', 'Qemu helper scripts', 'MATCH', 'N/A', 'file:///srv/www/vhosts/=
packages.yoctoproject.org/pkg-report/poky/scripts/runqemu', 'Saul Wold <sgw=
@linux.intel.com>', 'None']
inserted (nativesdk-qemu-helper,1.0,INVALID,GPLv2,base,r9,None,unknown,None=
,MATCH,virtual/nativesdk-i586-pokysdk-linux-compilerlibs chrpath-replacemen=
t-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-libc,Qem=
u helper scripts,N/A,file:///srv/www/vhosts/packages.yoctoproject.org/pkg-r=
eport/poky/scripts/runqemu,Saul Wold <sgw@linux.intel.com>)
['qt-mobility-x11', '1.2.0', '1.2.0', 'LGPLv2.1', 'x11/libs', 'http://qt.no=
kia.com', 'r8', 'qt4-tools-native qt4-x11  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  qt4-x11-free pulseaudio blue=
z4', 'None', 'None', 'Qt Mobility 1.2.0 - version for Qt/X11', 'MATCH', 'N/=
A', 'http://get.qt.nokia.com/qt/add-ons/qt-mobility-opensource-src-1.2.0.ta=
r.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (qt-mobility-x11,1.2.0,1.2.0,LGPLv2.1,x11/libs,r8,None,http://qt.n=
okia.com,None,MATCH,qt4-tools-native qt4-x11  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  qt4-x11-free pulseaudio b=
luez4,Qt Mobility 1.2.0 - version for Qt/X11,N/A,http://get.qt.nokia.com/qt=
/add-ons/qt-mobility-opensource-src-1.2.0.tar.gz,Paul Eggleton <paul.egglet=
on@linux.intel.com>)
['byacc', '20121003', '20130304', 'PD', 'devel', 'unknown', 'r0', 'autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 ', 'None', 'None', 'A parser generator utility that reads a grammar specif=
ication from a file and generates an LR(1) parser for it.  The parsers cons=
ist of a set of LALR(1) parsing tables and a driver routine written in the =
C programming language.', 'UPDATE', 'N/A', 'ftp://invisible-island.net/byac=
c/byacc-20121003.tgz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', '=
None']
inserted (byacc,20121003,20130304,PD,devel,r0,None,unknown,None,UPDATE,auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  ,A parser generator utility that reads a grammar specification from a =
file and generates an LR(1) parser for it.  The parsers consist of a set of=
 LALR(1) parsing tables and a driver routine written in the C programming l=
anguage.,N/A,ftp://invisible-island.net/byacc/byacc-20121003.tgz,Bogdan Mar=
inescu <bogdan.a.marinescu@intel.com>)
['dbus-wait', '0.1+gitAUTOINC+1a3e134', '0.1+gitAUTOINC+1a3e134', 'GPLv2', =
'base', 'http://git.yoctoproject.org/cgit/cgit.cgi/dbus-wait', 'r2', 'autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  dbus', 'None', 'None', 'A simple tool to wait for a specific signal ove=
r DBus', 'MATCH', 'N/A', 'git://git.yoctoproject.org/dbus-wait;protocol=3Dg=
it', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (dbus-wait,0.1+gitAUTOINC+1a3e134,0.1+gitAUTOINC+1a3e134,GPLv2,bas=
e,r2,None,http://git.yoctoproject.org/cgit/cgit.cgi/dbus-wait,None,MATCH,au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  dbus,A simple tool to wait for a specific signal over DBus,N/A,git:/=
/git.yoctoproject.org/dbus-wait;protocol=3Dgit,Cristian Iorga <cristian.ior=
ga@intel.com>)
['linux-firmware', '0.0+gitAUTOINC+c530a75', '0.0+gitAUTOINC+9549081', 'Pro=
prietary', 'kernel', 'unknown', 'r0', '  virtual/update-alternatives', 'Non=
e', '1', 'Firmware files for use with Linux kernel', 'UPDATE', 'N/A', 'git:=
//git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git;proto=
col=3Dgit', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (linux-firmware,0.0+gitAUTOINC+c530a75,0.0+gitAUTOINC+9549081,Prop=
rietary,kernel,r0,1,unknown,None,UPDATE,  virtual/update-alternatives,Firmw=
are files for use with Linux kernel,N/A,git://git.kernel.org/pub/scm/linux/=
kernel/git/firmware/linux-firmware.git;protocol=3Dgit,Cristian Iorga <crist=
ian.iorga@intel.com>)
['libxxf86misc', '1.0.3', '1.0.3', 'MIT', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  util-macros libxext xf86miscproto', 'https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The XFree86-Mis=
c extension, provides a means to access input device configuration settings=
 specific to the XFree86/Xorg DDX.', 'MATCH', 'N/A', 'http://xorg.freedeskt=
op.org/releases/individual/lib/libXxf86misc-1.0.3.tar.bz2', 'Constantin Mus=
ca <constantinx.musca@intel.com>', 'None']
inserted (libxxf86misc,1.0.3,1.0.3,MIT,x11/libs,r0,1,http://www.x.org,https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  util-macros libxext xf86miscproto,The XFree86-Misc extension, pro=
vides a means to access input device configuration settings specific to the=
 XFree86/Xorg DDX.,N/A,http://xorg.freedesktop.org/releases/individual/lib/=
libXxf86misc-1.0.3.tar.bz2,Constantin Musca <constantinx.musca@intel.com>)
['netbase', '5.0', '5.1', 'GPLv2', 'base', 'http://packages.debian.org/netb=
ase', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  ', 'None', '1', 'This package provides the necessary infr=
astructure for basic TCP/IP based networking', 'UPDATE', 'N/A', 'ftp://ftp.=
debian.org/debian/pool/main/n/netbase/netbase_5.0.tar.gz', 'Cristian Iorga =
<cristian.iorga@intel.com>', 'None']
inserted (netbase,5.0,5.1,GPLv2,base,r0,1,http://packages.debian.org/netbas=
e,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  ,This package provides the necessary infrastructure for =
basic TCP/IP based networking,N/A,ftp://ftp.debian.org/debian/pool/main/n/n=
etbase/netbase_5.0.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['rpm', '5.4.9', '5.4.10-0.20120706', 'LGPLv2.1', 'base', 'http://rpm5.org/=
', 'r62', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  libpcre attr acl popt os=
sp-uuid file bison-native beecrypt bzip2 python zlib db openssl elfutils', =
'None', 'None', 'The RPM Package Manager (RPM) is a powerful command line d=
riven package management system capable of installing, uninstalling, verify=
ing, querying, and updating software packages. Each software package consis=
ts of an archive of files along with information about the package like its=
 version, a description, etc.', 'UPDATE', '5.4.10', 'http://www.rpm5.org/fi=
les/rpm/rpm-5.4/rpm-5.4.9-0.20120508.src.rpm;extract=3Drpm-5.4.9.tar.gz', '=
Mark Hatle <mark.hatle@windriver.com>', 'None']
inserted (rpm,5.4.9,5.4.10-0.20120706,LGPLv2.1,base,r62,None,http://rpm5.or=
g/,None,UPDATE,autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libpcre attr acl pop=
t ossp-uuid file bison-native beecrypt bzip2 python zlib db openssl elfutil=
s,The RPM Package Manager (RPM) is a powerful command line driven package m=
anagement system capable of installing, uninstalling, verifying, querying, =
and updating software packages. Each software package consists of an archiv=
e of files along with information about the package like its version, a des=
cription, etc.,5.4.10,http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.9-0.201=
20508.src.rpm;extract=3Drpm-5.4.9.tar.gz,Mark Hatle <mark.hatle@windriver.c=
om>)
['xf86-input-synaptics', '1.6.3', '1.7.0', 'MIT-X', 'x11/drivers', 'http://=
www.x.org', 'r21.0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto rand=
rproto util-macros inputproto kbproto  libxi mtdev', 'https://bugs.freedesk=
top.org', '2', 'synaptics is an Xorg input driver for the touchpads from Sy=
naptics Incorporated. Even though these touchpads (by default, operating in=
 a compatibility mode emulating a standard mouse) can be handled by the nor=
mal evdev or mouse drivers, this driver allows more advanced features of th=
e touchpad to become available.', 'UPDATE', 'N/A', 'http://xorg.freedesktop=
=2Eorg/releases/individual/driver/xf86-input-synaptics-1.6.3.tar.bz2', 'Lau=
rentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86-input-synaptics,1.6.3,1.7.0,MIT-X,x11/drivers,r21.0,2,http:/=
/www.x.org,https://bugs.freedesktop.org,UPDATE,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  vi=
rtual/xserver xproto randrproto util-macros inputproto kbproto  libxi mtdev=
,synaptics is an Xorg input driver for the touchpads from Synaptics Incorpo=
rated. Even though these touchpads (by default, operating in a compatibilit=
y mode emulating a standard mouse) can be handled by the normal evdev or mo=
use drivers, this driver allows more advanced features of the touchpad to b=
ecome available.,N/A,http://xorg.freedesktop.org/releases/individual/driver=
/xf86-input-synaptics-1.6.3.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.=
com>)
['cracklib', '2.8.22', '2.8.22', 'LGPLv2.1+', 'base', 'http://sourceforge.n=
et/projects/cracklib', 'r0', 'autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  crack=
lib-native zlib', 'None', 'None', 'A pro-active password checker library', =
'MATCH', 'N/A', 'http://downloads.sourceforge.net/cracklib/cracklib-2.8.22.=
tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (cracklib,2.8.22,2.8.22,LGPLv2.1+,base,r0,None,http://sourceforge.=
net/projects/cracklib,None,MATCH,autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  cr=
acklib-native zlib,A pro-active password checker library,N/A,http://downloa=
ds.sourceforge.net/cracklib/cracklib-2.8.22.tar.gz,Saul Wold <sgw@linux.int=
el.com>)
['ncurses', '5.9', '5.9', 'MIT', 'libs', 'http://www.gnu.org/software/ncurs=
es/ncurses.html', 'r15.1', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  ncurses-native virtual/update-alternat=
ives', 'None', 'None', 'SVr4 and XSI-Curses compatible curses library and t=
erminfo tools including tic, infocmp, captoinfo. Supports color, multiple h=
ighlights, forms-drawing characters, and automatic recognition of keypad an=
d function-key sequences. Extensions include resizable windows and mouse su=
pport on both xterm and Linux console using the gpm library.', 'MATCH', 'N/=
A', 'ftp://ftp.gnu.org/gnu/ncurses/ncurses-5.9.tar.gz', 'Saul Wold <sgw@lin=
ux.intel.com>', 'None']
inserted (ncurses,5.9,5.9,MIT,libs,r15.1,None,http://www.gnu.org/software/n=
curses/ncurses.html,None,MATCH,autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  ncurses-native virtual/update-alter=
natives,SVr4 and XSI-Curses compatible curses library and terminfo tools in=
cluding tic, infocmp, captoinfo. Supports color, multiple highlights, forms=
-drawing characters, and automatic recognition of keypad and function-key s=
equences. Extensions include resizable windows and mouse support on both xt=
erm and Linux console using the gpm library.,N/A,ftp://ftp.gnu.org/gnu/ncur=
ses/ncurses-5.9.tar.gz,Saul Wold <sgw@linux.intel.com>)
['x11perf', '1.5.4', '1.5.4', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8=
=2E0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxmu =
libxrender libxft libxext fontconfig', 'https://bugs.freedesktop.org', '1',=
 'The x11perf program runs one or more performance tests and reports how fa=
st an X server can execute the tests.', 'MATCH', 'N/A', 'http://xorg.freede=
sktop.org/releases/individual/app/x11perf-1.5.4.tar.bz2', 'Laurentiu Palcu =
<laurentiu.palcu@intel.com>', 'None']
inserted (x11perf,1.5.4,1.5.4,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https=
://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native =
virtual/libx11 libxmu libxrender libxft libxext fontconfig,The x11perf prog=
ram runs one or more performance tests and reports how fast an X server can=
 execute the tests.,N/A,http://xorg.freedesktop.org/releases/individual/app=
/x11perf-1.5.4.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['cross-localedef-native', '2.17', '2.17', 'LGPL-2.1', 'libs', 'http://www.=
eglibc.org/home', 'r0', 'autoconf-native automake-native libtool-native gnu=
-config-native  ', 'None', 'None', 'Cross locale generation tool for eglibc=
', 'MATCH', 'N/A', 'http://downloads.yoctoproject.org/releases/eglibc/eglib=
c-2.17-svnr22064.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (cross-localedef-native,2.17,2.17,LGPL-2.1,libs,r0,None,http://www=
=2Eeglibc.org/home,None,MATCH,autoconf-native automake-native libtool-nativ=
e gnu-config-native  ,Cross locale generation tool for eglibc,N/A,http://do=
wnloads.yoctoproject.org/releases/eglibc/eglibc-2.17-svnr22064.tar.bz2,Saul=
 Wold <sgw@linux.intel.com>)
['nfs-utils', '1.2.7', '1.2.7', 'MIT & GPLv2+ & BSD', 'console/network', 'h=
ttp://nfs.sourceforge.net/', 'r0', 'autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  libcap libnfsidmap libevent ut=
il-linux tcp-wrappers sqlite3 update-rc.d-native', 'None', 'None', 'The nfs=
-utils package provides a daemon for the kernel NFS server and related tool=
s.', 'MATCH', 'N/A', 'http://kernel.org/pub/linux/utils/nfs-utils/1.2.7/nfs=
-utils-1.2.7.tar.bz2', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', 'None=
']
inserted (nfs-utils,1.2.7,1.2.7,MIT & GPLv2+ & BSD,console/network,r0,None,=
http://nfs.sourceforge.net/,None,MATCH,autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  libcap libnfsidmap libevent=
 util-linux tcp-wrappers sqlite3 update-rc.d-native,The nfs-utils package p=
rovides a daemon for the kernel NFS server and related tools.,N/A,http://ke=
rnel.org/pub/linux/utils/nfs-utils/1.2.7/nfs-utils-1.2.7.tar.bz2,Andrei Din=
u <andrei.adrianx.dinu@intel.com>)
['xf86-video-omap', '0.4.2+gitrAUTOINC+ae0394e', '0.4.3+gitrAUTOINC+1482807=
', 'GPLv2+', 'x11/drivers', 'http://www.x.org', 'r21.3', 'pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  renderproto videoproto xextproto fontsproto virtual/xserver xproto=
 randrproto util-macros virtual/libx11 libdrm xf86driproto', 'https://bugs.=
freedesktop.org', '2', "Open-source X.org graphics driver for TI OMAP graph=
ics Currently relies on a closed-source submodule for EXA acceleration on t=
he following chipsets:   + OMAP3430   + OMAP3630   + OMAP4430   + OMAP4460 =
  + OMAP5430   + OMAP5432 NOTE: this driver is work in progress..  you prob=
ably don't want to try and use it yet.  The API/ABI between driver and kern=
el, and driver and acceleration submodules is not stable yet.  This driver =
requires the omapdrm kernel driver w/ GEM support. ", 'UPDATE', 'N/A', 'git=
://anongit.freedesktop.org/xorg/driver/xf86-video-omap;protocol=3Dgit', 'No=
ne', 'None']
inserted (xf86-video-omap,0.4.2+gitrAUTOINC+ae0394e,0.4.3+gitrAUTOINC+14828=
07,GPLv2+,x11/drivers,r21.3,2,http://www.x.org,https://bugs.freedesktop.org=
,UPDATE,pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  renderproto videoproto xextproto fontspro=
to virtual/xserver xproto randrproto util-macros virtual/libx11 libdrm xf86=
driproto,Open-source X.org graphics driver for TI OMAP graphics Currently r=
elies on a closed-source submodule for EXA acceleration on the following ch=
ipsets:   + OMAP3430   + OMAP3630   + OMAP4430   + OMAP4460   + OMAP5430   =
+ OMAP5432 NOTE: this driver is work in progress..  you probably don't want=
 to try and use it yet.  The API/ABI between driver and kernel, and driver =
and acceleration submodules is not stable yet.  This driver requires the om=
apdrm kernel driver w/ GEM support. ,N/A,git://anongit.freedesktop.org/xorg=
/driver/xf86-video-omap;protocol=3Dgit,None)
['gtk+3', '3.4.4', '3.8.1', 'LGPLv2 & LGPLv2+ & LGPLv2.1+', 'libs', 'http:/=
/www.gtk.org', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  qemu-native glib-2.0 pango =
atk jpeg libpng libxext libxcursor            docbook-utils-native libxrand=
r libgcrypt            libxdamage libxrender libxcomposite libxi cairo gdk-=
pixbuf gdk-pixbuf-native gtk-doc-stub-native virtual/update-alternatives', =
'https://bugzilla.gnome.org/', 'None', 'GTK+ is a multi-platform toolkit fo=
r creating graphical user interfaces. Offering a complete set of widgets, G=
TK+ is suitable for projects ranging from small one-off projects to complet=
e application suites.', 'UPDATE', 'N/A', 'http://download.gnome.org/sources=
/gtk+/3.4/gtk+-3.4.4.tar.xz', 'None', 'None']
inserted (gtk+3,3.4.4,3.8.1,LGPLv2 & LGPLv2+ & LGPLv2.1+,libs,r0,None,http:=
//www.gtk.org,https://bugzilla.gnome.org/,UPDATE,pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
qemu-native glib-2.0 pango atk jpeg libpng libxext libxcursor            do=
cbook-utils-native libxrandr libgcrypt            libxdamage libxrender lib=
xcomposite libxi cairo gdk-pixbuf gdk-pixbuf-native gtk-doc-stub-native vir=
tual/update-alternatives,GTK+ is a multi-platform toolkit for creating grap=
hical user interfaces. Offering a complete set of widgets, GTK+ is suitable=
 for projects ranging from small one-off projects to complete application s=
uites.,N/A,http://download.gnome.org/sources/gtk+/3.4/gtk+-3.4.4.tar.xz,Non=
e)
['sysprof', '1.2.0+gitAUTOINC+cd44ee6', '1.2.0+gitAUTOINC+af1d4bc', 'GPLv2'=
, 'base', 'unknown', 'r0', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  gtk+ libglade', 'None', 'None', 'syspr=
of - System-wide Performance Profiler for Linux', 'MATCH', 'N/A', 'git://gi=
t.gnome.org/sysprof;protocol=3Dgit', 'Tom Zanussi <tom.zanussi@intel.com>',=
 'None']
inserted (sysprof,1.2.0+gitAUTOINC+cd44ee6,1.2.0+gitAUTOINC+af1d4bc,GPLv2,b=
ase,r0,None,unknown,None,MATCH,autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  gtk+ libglade,sysprof - System-wide=
 Performance Profiler for Linux,N/A,git://git.gnome.org/sysprof;protocol=3D=
git,Tom Zanussi <tom.zanussi@intel.com>)
['tinylogin', '1.4', 'N/A', 'GPLv2', 'base', 'http://tinylogin.busybox.net/=
', 'r9', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc   virtual/update-alternatives', 'None', 'None', 'TinyLogin is=
 a suite of tiny UNIX utilities for handling logins, user authentication, c=
hanging passwords, and otherwise maintaining users and groups on an embedde=
d system.', 'ErrParseDir:/unstable/sources/:-:tinylogin-1.4.tar.bz2:www.ang=
strom-distribution.org/unstable/sources/tinylogin-1.4.tar.bz2', '1.4', 'htt=
p://www.angstrom-distribution.org/unstable/sources/tinylogin-1.4.tar.bz2', =
'Radu Moisan <radu.moisan@intel.com>', 'TinyLogin was merged into BusyBox.']
inserted (tinylogin,1.4,N/A,GPLv2,base,r9,None,http://tinylogin.busybox.net=
/,None,ErrParseDir:/unstable/sources/:-:tinylogin-1.4.tar.bz2:www.angstrom-=
distribution.org/unstable/sources/tinylogin-1.4.tar.bz2, virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/updat=
e-alternatives,TinyLogin is a suite of tiny UNIX utilities for handling log=
ins, user authentication, changing passwords, and otherwise maintaining use=
rs and groups on an embedded system.,1.4,http://www.angstrom-distribution.o=
rg/unstable/sources/tinylogin-1.4.tar.bz2,Radu Moisan <radu.moisan@intel.co=
m>)
['gnome-keyring', '2.32.1', '3.8.1', 'GPLv2+ & LGPLv2+ & LGPLv2.1+', 'x11/g=
nome', 'http://www.gnome.org/', 'r11', 'pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ libg=
crypt libtasn1 libtasn1-native gconf  gtk-doc-stub-native', 'https://bugzil=
la.gnome.org/', 'None', 'Password and keyring managing daemon', 'UPDATE', '=
3.7.91', 'http://ftp.gnome.org/pub/GNOME/sources/gnome-keyring/2.32/gnome-k=
eyring-2.32.1.tar.bz2;name=3Darchive', 'Constantin Musca <constantinx.musca=
@intel.com>', 'waiting for the sato gtk3 port']
inserted (gnome-keyring,2.32.1,3.8.1,GPLv2+ & LGPLv2+ & LGPLv2.1+,x11/gnome=
,r11,None,http://www.gnome.org/,https://bugzilla.gnome.org/,UPDATE,pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  gtk+ libgcrypt libtasn1 libtasn1-native gconf  gtk-doc-st=
ub-native,Password and keyring managing daemon,3.7.91,http://ftp.gnome.org/=
pub/GNOME/sources/gnome-keyring/2.32/gnome-keyring-2.32.1.tar.bz2;name=3Dar=
chive,Constantin Musca <constantinx.musca@intel.com>)
['icon-naming-utils', '0.8.90', '0.8.90', 'GPLv2', 'base', 'unknown', 'r4',=
 'autoconf-native automake-native libtool-native gnu-config-native  libxml-=
simple-perl-native perl-native', 'None', 'None', 'icon-naming-utils version=
 0.8.90-r4', 'MATCH', 'N/A', 'http://tango.freedesktop.org/releases/icon-na=
ming-utils-0.8.90.tar.gz', 'None', 'None']
inserted (icon-naming-utils,0.8.90,0.8.90,GPLv2,base,r4,None,unknown,None,M=
ATCH,autoconf-native automake-native libtool-native gnu-config-native  libx=
ml-simple-perl-native perl-native,icon-naming-utils version 0.8.90-r4,N/A,h=
ttp://tango.freedesktop.org/releases/icon-naming-utils-0.8.90.tar.gz,None)
['libnl', '3.2.21', '3.2.21', 'LGPLv2.1', 'libs/network', 'http://www.infra=
dead.org/~tgr/libnl/', 'r0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native bison-n=
ative', 'None', '1', 'libnl is a library for applications dealing with netl=
ink sockets.', 'MATCH', 'N/A', 'http://www.infradead.org/~tgr/libnl/files/l=
ibnl-3.2.21.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'libnl-3.2.2 is inc=
ompatible with libnl2, so no Upgrade']
inserted (libnl,3.2.21,3.2.21,LGPLv2.1,libs/network,r0,1,http://www.infrade=
ad.org/~tgr/libnl/,None,MATCH,pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native bison-n=
ative,libnl is a library for applications dealing with netlink sockets.,N/A=
,http://www.infradead.org/~tgr/libnl/files/libnl-3.2.21.tar.gz,Saul Wold <s=
gw@linux.intel.com>)
['zlib', '1.2.7', '1.2.7', 'Zlib', 'libs', 'http://zlib.net/', 'r0', ' virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
', 'None', 'None', 'Zlib is a general-purpose, patent-free, lossless data c=
ompression library which is used by many different programs.', 'MATCH', 'N/=
A', 'http://www.zlib.net/zlib-1.2.7.tar.bz2', 'Radu Moisan <radu.moisan@int=
el.com>', 'None']
inserted (zlib,1.2.7,1.2.7,Zlib,libs,r0,None,http://zlib.net/,None,MATCH, v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  ,Zlib is a general-purpose, patent-free, lossless data compression libra=
ry which is used by many different programs.,N/A,http://www.zlib.net/zlib-1=
=2E2.7.tar.bz2,Radu Moisan <radu.moisan@intel.com>)
['xrestop', '0.4', '0.4', 'GPLv2+', 'x11/utils', 'http://www.freedesktop.or=
g/wiki/Software/xrestop', 'r3', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  libxres libxext virtual/libx11', =
'https://bugs.freedesktop.org/', 'None', 'top-like statistics of X11 server=
 resource usage by clients', 'MATCH', 'N/A', 'http://downloads.yoctoproject=
=2Eorg/releases/xrestop/xrestop-0.4.tar.gz', 'Laurentiu Palcu <laurentiu.pa=
lcu@intel.com>', 'None']
inserted (xrestop,0.4,0.4,GPLv2+,x11/utils,r3,None,http://www.freedesktop.o=
rg/wiki/Software/xrestop,https://bugs.freedesktop.org/,MATCH,autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxr=
es libxext virtual/libx11,top-like statistics of X11 server resource usage =
by clients,N/A,http://downloads.yoctoproject.org/releases/xrestop/xrestop-0=
=2E4.tar.gz,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['xtrans', '1.2.7', '1.2.7', 'MIT & MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-m=
acros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', '=
The X Transport Interface is intended to combine all system and transport s=
pecific code into a single place.  This API should be used by all libraries=
, clients and servers of the X Window System. Use of this API should allow =
the addition of new types of transports and support for new platforms witho=
ut making any changes to the source except in the X Transport Interface cod=
e.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/x=
trans-1.2.7.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xtrans,1.2.7,1.2.7,MIT & MIT-style,x11/libs,r0,1,http://www.x.org=
,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  util-macros,The X Transport =
Interface is intended to combine all system and transport specific code int=
o a single place.  This API should be used by all libraries, clients and se=
rvers of the X Window System. Use of this API should allow the addition of =
new types of transports and support for new platforms without making any ch=
anges to the source except in the X Transport Interface code.,N/A,http://xo=
rg.freedesktop.org/releases/individual/lib/xtrans-1.2.7.tar.bz2,Laurentiu P=
alcu <laurentiu.palcu@intel.com>)
['resolvconf', '1.70', '1.71', 'GPLv2+', 'console/network', 'http://package=
s.debian.org/resolvconf', 'r0', ' ', 'None', 'None', "Resolvconf is a frame=
work for keeping track of the system's information about currently availabl=
e nameservers. It sets itself up as the intermediary between programs that =
supply nameserver information and programs that need nameserver information=
=2E", 'UPDATE', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/r/resolvconf/=
resolvconf_1.70.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (resolvconf,1.70,1.71,GPLv2+,console/network,r0,None,http://packag=
es.debian.org/resolvconf,None,UPDATE, ,Resolvconf is a framework for keepin=
g track of the system's information about currently available nameservers. =
It sets itself up as the intermediary between programs that supply nameserv=
er information and programs that need nameserver information.,N/A,ftp://ftp=
=2Edebian.org/debian/pool/main/r/resolvconf/resolvconf_1.70.tar.gz,Saul Wol=
d <sgw@linux.intel.com>)
['xf86-input-evdev', '2.7.3', '2.8.0', 'MIT-X', 'x11/drivers', 'http://www.=
x.org', 'r21.1', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randrpro=
to util-macros inputproto kbproto  mtdev', 'https://bugs.freedesktop.org', =
'2', "evdev is an Xorg input driver for Linux's generic event devices. It t=
herefore supports all input devices that the kernel knows about, including =
most mice and keyboards. The evdev driver can serve as both a pointer and a=
 keyboard input device, and may be used as both the core keyboard and the c=
ore pointer. Multiple input devices are supported by multiple instances of =
this driver, with one Load directive for evdev in the Module section of you=
r xorg.conf for each input device that will use this driver. ", 'UPDATE', '=
N/A', 'http://xorg.freedesktop.org/releases/individual/driver/xf86-input-ev=
dev-2.7.3.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86-input-evdev,2.7.3,2.8.0,MIT-X,x11/drivers,r21.1,2,http://www=
=2Ex.org,https://bugs.freedesktop.org,UPDATE,pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virt=
ual/xserver xproto randrproto util-macros inputproto kbproto  mtdev,evdev i=
s an Xorg input driver for Linux's generic event devices. It therefore supp=
orts all input devices that the kernel knows about, including most mice and=
 keyboards. The evdev driver can serve as both a pointer and a keyboard inp=
ut device, and may be used as both the core keyboard and the core pointer. =
Multiple input devices are supported by multiple instances of this driver, =
with one Load directive for evdev in the Module section of your xorg.conf f=
or each input device that will use this driver. ,N/A,http://xorg.freedeskto=
p.org/releases/individual/driver/xf86-input-evdev-2.7.3.tar.bz2,Laurentiu P=
alcu <laurentiu.palcu@intel.com>)
['avahi', '0.6.31', '0.6.31', 'GPLv2+ & LGPLv2.1+', 'network', 'http://avah=
i.org', 'r6.1', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native virtual/gettext gettext-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  e=
xpat libcap libdaemon dbus glib-2.0 intltool-native update-rc.d-native base=
-passwd shadow-native shadow-sysroot shadow', 'http://avahi.org/report', 'N=
one', 'Avahi is a fully LGPL framework for Multicast DNS Service Discovery.=
 It allows programs to publish and discover services and hosts running on a=
 local network with no specific configuration. This tool implements IPv4LL,=
 "Dynamic Configuration of IPv4 Link-Local Addresses" (IETF RFC3927), a pro=
tocol for automatic IP address configuration from the link-local 169.254.0.=
0/16 range without the need for a central server.', 'MATCH', '0.6.31', 'htt=
p://avahi.org/download/avahi-0.6.31.tar.gz', 'Constantin Musca <constantinx=
=2Emusca@intel.com>', 'None']
inserted (avahi,0.6.31,0.6.31,GPLv2+ & LGPLv2.1+,network,r6.1,None,http://a=
vahi.org,http://avahi.org/report,MATCH,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native virtual/gettext=
 gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  expat libcap libdaemon dbus glib-2.0 intltool-native u=
pdate-rc.d-native base-passwd shadow-native shadow-sysroot shadow,Avahi is =
a fully LGPL framework for Multicast DNS Service Discovery. It allows progr=
ams to publish and discover services and hosts running on a local network w=
ith no specific configuration. This tool implements IPv4LL, "Dynamic Config=
uration of IPv4 Link-Local Addresses" (IETF RFC3927), a protocol for automa=
tic IP address configuration from the link-local 169.254.0.0/16 range witho=
ut the need for a central server.,0.6.31,http://avahi.org/download/avahi-0.=
6.31.tar.gz,Constantin Musca <constantinx.musca@intel.com>)
['procps', '3.2.8', '3.2.8', 'GPLv2+ & LGPLv2+', 'base', 'http://procps.sf.=
net', 'r11', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  ncurses virtual/update-alternatives', 'None', 'None'=
, 'Procps contains a set of system utilities that provide system informatio=
n about processes using the /proc filesystem. The package \\ includes the p=
rograms ps, top, vmstat, w, kill, and skill.', 'MATCH', 'N/A', 'http://proc=
ps.sourceforge.net/procps-3.2.8.tar.gz', 'Saul Wold <sgw@linux.intel.com>',=
 'None']
inserted (procps,3.2.8,3.2.8,GPLv2+ & LGPLv2+,base,r11,None,http://procps.s=
f.net,None,MATCH,autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  ncurses virtual/update-alternatives,Procps contai=
ns a set of system utilities that provide system information about processe=
s using the /proc filesystem. The package \ includes the programs ps, top, =
vmstat, w, kill, and skill.,N/A,http://procps.sourceforge.net/procps-3.2.8.=
tar.gz,Saul Wold <sgw@linux.intel.com>)
['matchbox-panel-2', '2.0+gitAUTOINC+cdf7a22', '2.0+gitAUTOINC+a8821fa', 'G=
PLv2+', 'base', 'http://matchbox-project.org', 'r0', 'pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  gtk+ startup-notification dbus dbus-glib    apmd', 'http://bugzilla.op=
enedhand.com/', 'None', 'A simple GTK+ based panel for handheld devices.', =
'MATCH', 'N/A', 'git://git.yoctoproject.org/matchbox-panel-2;protocol=3Dgit=
', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (matchbox-panel-2,2.0+gitAUTOINC+cdf7a22,2.0+gitAUTOINC+a8821fa,GP=
Lv2+,base,r0,None,http://matchbox-project.org,http://bugzilla.openedhand.co=
m/,MATCH,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  gtk+ startup-notification dbus dbus-glib=
    apmd,A simple GTK+ based panel for handheld devices.,N/A,git://git.yoct=
oproject.org/matchbox-panel-2;protocol=3Dgit,Constantin Musca <constantinx.=
musca@intel.com>)
['libassuan', '2.1.0', '2.1.0', 'GPLv3 & LGPLv2.1+', 'base', 'http://www.gn=
upg.org/related_software/libassuan/', 'r0', 'pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libg=
pg-error', 'https://bugs.g10code.com/gnupg/index', 'None', 'IPC library use=
d by GnuPG and GPGME', 'MATCH', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/libassua=
n/libassuan-2.1.0.tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>=
', 'None']
inserted (libassuan,2.1.0,2.1.0,GPLv3 & LGPLv2.1+,base,r0,None,http://www.g=
nupg.org/related_software/libassuan/,https://bugs.g10code.com/gnupg/index,M=
ATCH,pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  libgpg-error,IPC library used by GnuPG and G=
PGME,N/A,ftp://ftp.gnupg.org/gcrypt/libassuan/libassuan-2.1.0.tar.bz2,Const=
antin Musca <constantinx.musca@intel.com>)
['alsa-tools', '1.0.26.1', '1.0.27', 'GPLv2 & LGPLv2+', 'console/utils', 'h=
ttp://www.alsa-project.org', 'r1', 'autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  alsa-lib ncurses gtk+', 'https=
://bugtrack.alsa-project.org/alsa-bug/login_page.php', 'None', 'Alsa Tools =
package contains advanced tools for certain sound cards.', 'UPDATE', 'N/A',=
 'ftp://ftp.alsa-project.org/pub/tools/alsa-tools-1.0.26.1.tar.bz2', 'Kai K=
ang <kai.kang@windriver.com>', 'None']
inserted (alsa-tools,1.0.26.1,1.0.27,GPLv2 & LGPLv2+,console/utils,r1,None,=
http://www.alsa-project.org,https://bugtrack.alsa-project.org/alsa-bug/logi=
n_page.php,UPDATE,autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  alsa-lib ncurses gtk+,Alsa Tools package contain=
s advanced tools for certain sound cards.,N/A,ftp://ftp.alsa-project.org/pu=
b/tools/alsa-tools-1.0.26.1.tar.bz2,Kai Kang <kai.kang@windriver.com>)
['libxml2', '2.9.0', '2.9.1', 'MIT', 'libs', 'http://www.xmlsoft.org/', 'r1=
=2E1', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  zlib   python-native ', 'http://bugzilla.=
gnome.org/buglist.cgi?product=3Dlibxml2', 'None', 'The XML Parser Library a=
llows for manipulation of XML files.  Libxml2 exports Push and Pull type pa=
rser interfaces for both XML and HTML.  It can do DTD validation at parse t=
ime, on a parsed document instance or with an arbitrary DTD.  Libxml2 inclu=
des complete XPath, XPointer and Xinclude implementations.  It also has a S=
AX like interface, which is designed to be compatible with Expat.', 'UPDATE=
', 'N/A', 'ftp://xmlsoft.org/libxml2/libxml2-2.9.0.tar.gz', 'Saul Wold <sgw=
@linux.intel.com>', 'None']
inserted (libxml2,2.9.0,2.9.1,MIT,libs,r1.1,None,http://www.xmlsoft.org/,ht=
tp://bugzilla.gnome.org/buglist.cgi?product=3Dlibxml2,UPDATE,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  zlib   python-native ,The XML Parser Library allows for manipul=
ation of XML files.  Libxml2 exports Push and Pull type parser interfaces f=
or both XML and HTML.  It can do DTD validation at parse time, on a parsed =
document instance or with an arbitrary DTD.  Libxml2 includes complete XPat=
h, XPointer and Xinclude implementations.  It also has a SAX like interface=
, which is designed to be compatible with Expat.,N/A,ftp://xmlsoft.org/libx=
ml2/libxml2-2.9.0.tar.gz,Saul Wold <sgw@linux.intel.com>)
['libxmu', '1.1.1', '1.1.1', 'MIT & MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  util-macros libxt libxext', 'https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Xmu Library i=
s a collection of miscellaneous (some might say random) utility functions t=
hat have been useful in building various applications and widgets. This lib=
rary is required by the Athena Widgets. A subset of the functions that do n=
ot rely on the Athena Widgets (libXaw) or X Toolkit Instrinsics (libXt) are=
 provided in a second library, libXmuu.', 'MATCH', 'N/A', 'http://xorg.free=
desktop.org/releases/individual/lib/libXmu-1.1.1.tar.bz2', 'Constantin Musc=
a <constantinx.musca@intel.com>', 'None']
inserted (libxmu,1.1.1,1.1.1,MIT & MIT-style,x11/libs,r0,1,http://www.x.org=
,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  util-macros libxt libxext,The Xmu Library is a collection o=
f miscellaneous (some might say random) utility functions that have been us=
eful in building various applications and widgets. This library is required=
 by the Athena Widgets. A subset of the functions that do not rely on the A=
thena Widgets (libXaw) or X Toolkit Instrinsics (libXt) are provided in a s=
econd library, libXmuu.,N/A,http://xorg.freedesktop.org/releases/individual=
/lib/libXmu-1.1.1.tar.bz2,Constantin Musca <constantinx.musca@intel.com>)
['font-util', '1.3.0', '1.3.0', 'BSD & MIT', 'x11/fonts', 'http://www.x.org=
', 'r2.0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  encodings util-macros', 'https://bugs=
=2Efreedesktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'X.Org font packa=
ge creation/installation utilities', 'MATCH', 'N/A', 'http://xorg.freedeskt=
op.org/releases/individual/font/font-util-1.3.0.tar.bz2', 'Constantin Musca=
 <constantinx.musca@intel.com>', 'None']
inserted (font-util,1.3.0,1.3.0,BSD & MIT,x11/fonts,r2.0,None,http://www.x.=
org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  encodings util-macros,X.Org font package creation/instal=
lation utilities,N/A,http://xorg.freedesktop.org/releases/individual/font/f=
ont-util-1.3.0.tar.bz2,Constantin Musca <constantinx.musca@intel.com>)
['libx11-diet', '1.5.0', '1.5.99.901', 'MIT & MIT-style & BSD', 'x11/libs',=
 'http://www.x.org', 'r10.4', 'pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros xproto=
 xextproto xtrans libxcb kbproto inputproto xproto-native', 'https://bugs.f=
reedesktop.org/enter_bug.cgi?product=3Dxorg', '1', "This package provides a=
 client interface to the X Window System, otherwise known as 'Xlib'.  It pr=
ovides a complete API for the basic functions of the window system.  Suppor=
t for XCMS and XLOCALE is disabled in this version.", 'UPDATE', 'N/A', 'htt=
p://xorg.freedesktop.org/releases/individual/lib/libX11-1.5.0.tar.bz2', 'Ka=
i Kang <kai.kang@windriver.com>', 'None']
inserted (libx11-diet,1.5.0,1.5.99.901,MIT & MIT-style & BSD,x11/libs,r10.4=
,1,http://www.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxo=
rg,UPDATE,pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros xproto xextproto xtrans lib=
xcb kbproto inputproto xproto-native,This package provides a client interfa=
ce to the X Window System, otherwise known as 'Xlib'.  It provides a comple=
te API for the basic functions of the window system.  Support for XCMS and =
XLOCALE is disabled in this version.,N/A,http://xorg.freedesktop.org/releas=
es/individual/lib/libX11-1.5.0.tar.bz2,Kai Kang <kai.kang@windriver.com>)
['oprofileui-server', '0.0+gitAUTOINC+82ecf8c', '0.0+gitAUTOINC+f168b8b', '=
GPLv2', 'x11', 'http://labs.o-hand.com/oprofileui/', 'r1', 'pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  glib-2.0 avahi update-rc.d-native', 'http://bugzilla.o-hand.com/=
', 'None', 'User interface for the OProfile tool', 'UPDATE', 'N/A', 'git://=
git.yoctoproject.org/oprofileui;protocol=3Dgit', 'Saul Wold <sgw@linux.inte=
l.com>', 'None']
inserted (oprofileui-server,0.0+gitAUTOINC+82ecf8c,0.0+gitAUTOINC+f168b8b,G=
PLv2,x11,r1,None,http://labs.o-hand.com/oprofileui/,http://bugzilla.o-hand.=
com/,UPDATE,pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  glib-2.0 avahi update-rc.d-native,Use=
r interface for the OProfile tool,N/A,git://git.yoctoproject.org/oprofileui=
;protocol=3Dgit,Saul Wold <sgw@linux.intel.com>)
['chkconfig', '1.3.58', '1.3.58', 'GPLv2', 'base', 'http://fedorahosted.org=
/releases/c/h/chkconfig', 'r7', 'virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libnew=
t popt', 'None', 'None', 'Chkconfig is a basic system utility.  It updates =
and queries runlevel information for system services.  Chkconfig manipulate=
s the numerous symbolic links in /etc/rc.d, to relieve system administrator=
s of some of the drudgery of manually editing the symbolic links.', 'MATCH'=
, 'N/A', 'http://fedorahosted.org/releases/c/h/chkconfig/chkconfig-1.3.58.t=
ar.bz2', 'Wenzong Fan <wenzong.fan@windriver.com>', 'None']
inserted (chkconfig,1.3.58,1.3.58,GPLv2,base,r7,None,http://fedorahosted.or=
g/releases/c/h/chkconfig,None,MATCH,virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  lib=
newt popt,Chkconfig is a basic system utility.  It updates and queries runl=
evel information for system services.  Chkconfig manipulates the numerous s=
ymbolic links in /etc/rc.d, to relieve system administrators of some of the=
 drudgery of manually editing the symbolic links.,N/A,http://fedorahosted.o=
rg/releases/c/h/chkconfig/chkconfig-1.3.58.tar.bz2,Wenzong Fan <wenzong.fan=
@windriver.com>)
['texinfo', '4.13a', '5.1', 'GPLv3+', 'console/utils', 'http://www.gnu.org/=
software/texinfo/', 'r6', 'autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib ncu=
rses texinfo-native', 'None', 'None', 'Texinfo is a documentation system th=
at can produce both online information and printed output from a single sou=
rce file. The GNU Project uses the Texinfo file format for most of its docu=
mentation.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/texinfo/texinfo-4.13a.=
tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'Checking script parses directo=
ry wrong']
inserted (texinfo,4.13a,5.1,GPLv3+,console/utils,r6,None,http://www.gnu.org=
/software/texinfo/,None,UPDATE,autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib=
 ncurses texinfo-native,Texinfo is a documentation system that can produce =
both online information and printed output from a single source file. The G=
NU Project uses the Texinfo file format for most of its documentation.,N/A,=
ftp://ftp.gnu.org/gnu/texinfo/texinfo-4.13a.tar.gz,Saul Wold <sgw@linux.int=
el.com>)
['libenv-perl', '1.04', '1.04', 'Artistic-1.0 | GPL-1.0+', 'libs', 'http://=
search.cpan.org/~flora/Env/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc   perl perl-native', 'None', 'None=
', 'Perl maintains environment variables in a special hash named %ENV. For =
when this access method is inconvenient, the Perl module Env allows environ=
ment variables to be treated as scalar or array variables.', 'MATCH', 'N/A'=
, 'http://search.cpan.org/CPAN/authors/id/F/FL/FLORA/Env-1.04.tar.gz', 'Sau=
l Wold <sgw@linux.intel.com>', 'None']
inserted (libenv-perl,1.04,1.04,Artistic-1.0 | GPL-1.0+,libs,r0,None,http:/=
/search.cpan.org/~flora/Env/,None,MATCH, virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc   perl perl-native,Perl maintai=
ns environment variables in a special hash named %ENV. For when this access=
 method is inconvenient, the Perl module Env allows environment variables t=
o be treated as scalar or array variables.,N/A,http://search.cpan.org/CPAN/=
authors/id/F/FL/FLORA/Env-1.04.tar.gz,Saul Wold <sgw@linux.intel.com>)
['libgnome-keyring', '2.32.0', '3.8.0', 'LGPLv2 & LGPLv2+ & LGPLv2.1+', 'x1=
1/gnome/libs', 'http://www.gnome.org/', 'r3', 'pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  db=
us libgcrypt glib-2.0 intltool-native gtk-doc-stub-native', 'https://bugzil=
la.gnome.org/', 'None', 'Compatibility library for accessing secrets', 'UPD=
ATE', '3.7.91', 'http://ftp.gnome.org/pub/GNOME/sources/libgnome-keyring/2.=
32/libgnome-keyring-2.32.0.tar.bz2;name=3Darchive', 'Constantin Musca <cons=
tantinx.musca@intel.com>', 'waiting for the sato gtk3 port']
inserted (libgnome-keyring,2.32.0,3.8.0,LGPLv2 & LGPLv2+ & LGPLv2.1+,x11/gn=
ome/libs,r3,None,http://www.gnome.org/,https://bugzilla.gnome.org/,UPDATE,p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  dbus libgcrypt glib-2.0 intltool-native gtk-doc-st=
ub-native,Compatibility library for accessing secrets,3.7.91,http://ftp.gno=
me.org/pub/GNOME/sources/libgnome-keyring/2.32/libgnome-keyring-2.32.0.tar.=
bz2;name=3Darchive,Constantin Musca <constantinx.musca@intel.com>)
['pax', '3.4', '3.4', 'BSD', 'base', 'http://www.openbsd.org/cgi-bin/cvsweb=
/src/bin/pax/', 'r2', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'http://www.openbsd.org/query-pr.html', =
'None', 'pax (Portable Archive eXchange) is the POSIX standard archive tool=
', 'MATCH', 'N/A', 'ftp://ftp.suse.com/pub/people/kukuk/pax/pax-3.4.tar.bz2=
', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (pax,3.4,3.4,BSD,base,r2,None,http://www.openbsd.org/cgi-bin/cvswe=
b/src/bin/pax/,http://www.openbsd.org/query-pr.html,MATCH,autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,pax (Po=
rtable Archive eXchange) is the POSIX standard archive tool,N/A,ftp://ftp.s=
use.com/pub/people/kukuk/pax/pax-3.4.tar.bz2,Constantin Musca <constantinx.=
musca@intel.com>)
['make', '3.82', '3.82', 'GPLv3 & LGPLv2', 'devel', 'http://www.gnu.org/sof=
tware/make/', 'r3', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'No=
ne', "Make is a tool which controls the generation of executables and other=
 non-source files of a program from the program's source files.  Make gets =
its knowledge of how to build your program from a file called the makefile,=
 which lists each of the non-source files and how to compute it from other =
files.", 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/make/make-3.82.tar.bz2', 'B=
ogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (make,3.82,3.82,GPLv3 & LGPLv2,devel,r3,None,http://www.gnu.org/so=
ftware/make/,None,MATCH,autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Make is a =
tool which controls the generation of executables and other non-source file=
s of a program from the program's source files.  Make gets its knowledge of=
 how to build your program from a file called the makefile, which lists eac=
h of the non-source files and how to compute it from other files.,N/A,ftp:/=
/ftp.gnu.org/gnu/make/make-3.82.tar.bz2,Bogdan Marinescu <bogdan.a.marinesc=
u@intel.com>)
['pcmanfm', '1.1.0', '1.1.0', 'GPLv2 & GPLv2+ & LGPLv2.1+', 'x11', 'http://=
pcmanfm.sourceforge.net/', 'r0', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ startup-no=
tification libfm libowl', '', 'None', 'Fast lightweight tabbed filemanager'=
, 'MATCH', 'N/A', 'http://downloads.sourceforge.net/pcmanfm/pcmanfm-1.1.0.t=
ar.gz', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (pcmanfm,1.1.0,1.1.0,GPLv2 & GPLv2+ & LGPLv2.1+,x11,r0,None,http:/=
/pcmanfm.sourceforge.net/,,MATCH,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ startup-not=
ification libfm libowl,Fast lightweight tabbed filemanager,N/A,http://downl=
oads.sourceforge.net/pcmanfm/pcmanfm-1.1.0.tar.gz,Constantin Musca <constan=
tinx.musca@intel.com>)
['util-linux', '2.22.2', '2.22.2', 'GPLv2+ & LGPLv2.1+ & BSD', 'base', 'unk=
nown', 'r3', 'pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib=
 ncurses virtual/update-alternatives', 'None', 'None', 'Util-linux includes=
 a suite of basic system administration utilities commonly found on most Li=
nux systems.  Some of the more important utilities include disk partitionin=
g, kernel message management, filesystem creation, and system login.', 'MAT=
CH', 'N/A', 'http://kernel.org/pub/linux/utils/util-linux/v2.22/util-linux-=
2.22.2.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (util-linux,2.22.2,2.22.2,GPLv2+ & LGPLv2.1+ & BSD,base,r3,None,un=
known,None,MATCH,pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native virtual/gettext gettext-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  z=
lib ncurses virtual/update-alternatives,Util-linux includes a suite of basi=
c system administration utilities commonly found on most Linux systems.  So=
me of the more important utilities include disk partitioning, kernel messag=
e management, filesystem creation, and system login.,N/A,http://kernel.org/=
pub/linux/utils/util-linux/v2.22/util-linux-2.22.2.tar.bz2,Saul Wold <sgw@l=
inux.intel.com>)
['coreutils', '8.21', '8.21', 'GPLv3+', 'base', 'http://www.gnu.org/softwar=
e/coreutils/', 'r0', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gmp libcap vi=
rtual/update-alternatives', 'http://debbugs.gnu.org/coreutils', 'None', 'Th=
e GNU Core Utilities provide the basic file, shell and text manipulation ut=
ilities. These are the core utilities which are expected to exist on every =
system.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/coreutils/coreutils-8.21.t=
ar.xz', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (coreutils,8.21,8.21,GPLv3+,base,r0,None,http://www.gnu.org/softwa=
re/coreutils/,http://debbugs.gnu.org/coreutils,MATCH,autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native virtual/gettext ge=
ttext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  gmp libcap virtual/update-alternatives,The GNU Core Utili=
ties provide the basic file, shell and text manipulation utilities. These a=
re the core utilities which are expected to exist on every system.,N/A,ftp:=
//ftp.gnu.org/gnu/coreutils/coreutils-8.21.tar.xz,Radu Moisan <radu.moisan@=
intel.com>)
['webkit-gtk', '1.8.3', '2.0.1', 'BSD & LGPLv2+', 'base', 'http://www.webki=
tgtk.org/', 'r1', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  zlib enchant gnome-keyring lib=
soup-2.4 curl libxml2 cairo libxslt libxt libidn gnutls            gtk+ gst=
reamer gst-plugins-base flex-native gperf-native perl-native-runtime sqlite=
3 icu  virtual/libgl gtk-doc-stub-native', 'http://bugs.webkit.org/', 'None=
', 'WebKitGTK+ is the port of the portable web rendering engine WebKitK to =
the GTK+ platform.', 'UPDATE', '1.10.2', 'http://www.webkitgtk.org/releases=
/webkit-1.8.3.tar.xz', 'Constantin Musca <constantinx.musca@intel.com>', '>=
=3D 1.10.2 needs ruby']
inserted (webkit-gtk,1.8.3,2.0.1,BSD & LGPLv2+,base,r1,None,http://www.webk=
itgtk.org/,http://bugs.webkit.org/,UPDATE,pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib en=
chant gnome-keyring libsoup-2.4 curl libxml2 cairo libxslt libxt libidn gnu=
tls            gtk+ gstreamer gst-plugins-base flex-native gperf-native per=
l-native-runtime sqlite3 icu  virtual/libgl gtk-doc-stub-native,WebKitGTK+ =
is the port of the portable web rendering engine WebKitK to the GTK+ platfo=
rm.,1.10.2,http://www.webkitgtk.org/releases/webkit-1.8.3.tar.xz,Constantin=
 Musca <constantinx.musca@intel.com>)
['sqlite3', '3071502', '3071602', 'PD', 'libs', 'http://www.sqlite.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  readline ncurses', 'None', 'None', 'An Embed=
dable SQL Database Engine', 'UPDATE', '3.7.14.1', 'http://www.sqlite.org/sq=
lite-autoconf-3071502.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (sqlite3,3071502,3071602,PD,libs,r0,None,http://www.sqlite.org,Non=
e,UPDATE,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  readline ncurses,An Embeddable SQL Datab=
ase Engine,3.7.14.1,http://www.sqlite.org/sqlite-autoconf-3071502.tar.gz,Sa=
ul Wold <sgw@linux.intel.com>)
['libxdamage', '1.1.4', '1.1.4', 'MIT', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros virtual/libx11 damageproto libxfi=
xes', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', "'D=
amage' is a term that describes changes make to pixel contents of windows a=
nd pixmaps.  Damage accumulates as drawing occurs in the drawable.  Each dr=
awing operation 'damages' one or more rectangular areas within the drawable=
=2E  The rectangles are guaranteed to include the set of pixels modified by=
 each operation, but may include significantly more than just those pixels.=
  The DAMAGE extension allows applications to either receive the raw rectan=
gles as a stream of events, or to have them partially processed within the =
X server to reduce the amount of data transmitted as well as reduce the pro=
cessing latency once the repaint operation has started.", 'MATCH', 'N/A', '=
http://xorg.freedesktop.org/releases/individual/lib/libXdamage-1.1.4.tar.bz=
2', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (libxdamage,1.1.4,1.1.4,MIT,x11/libs,r0,1,http://www.x.org,https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  util-macros virtual/libx11 damageproto libxfixes,'Damage' is a term=
 that describes changes make to pixel contents of windows and pixmaps.  Dam=
age accumulates as drawing occurs in the drawable.  Each drawing operation =
'damages' one or more rectangular areas within the drawable.  The rectangle=
s are guaranteed to include the set of pixels modified by each operation, b=
ut may include significantly more than just those pixels.  The DAMAGE exten=
sion allows applications to either receive the raw rectangles as a stream o=
f events, or to have them partially processed within the X server to reduce=
 the amount of data transmitted as well as reduce the processing latency on=
ce the repaint operation has started.,N/A,http://xorg.freedesktop.org/relea=
ses/individual/lib/libXdamage-1.1.4.tar.bz2,Constantin Musca <constantinx.m=
usca@intel.com>)
['xserver-nodm-init', '1.0', 'INVALID', 'GPLv2', 'x11', 'unknown', 'r31', '=
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc   update-rc.d-native base-passwd shadow-native shadow-sysroot shadow', =
'None', 'None', 'Simple Xserver Init Script (no dm)', 'MATCH', 'N/A', 'file=
://xserver-nodm', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xserver-nodm-init,1.0,INVALID,GPLv2,x11,r31,None,unknown,None,MAT=
CH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc   update-rc.d-native base-passwd shadow-native shadow-sysroot shadow=
,Simple Xserver Init Script (no dm),N/A,file://xserver-nodm,Laurentiu Palcu=
 <laurentiu.palcu@intel.com>)
['directfb', '1.6.1', '1.6.3', 'LGPLv2.1', 'libs', 'http://directfb.org', '=
r0.2', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  jpeg libpng freetype zlib tslib sysfsutil=
s', 'None', 'None', 'DirectFB is a thin library that provides developers wi=
th hardware graphics acceleration, input device handling and abstraction, a=
n integrated windowing system with support for translucent windows and mult=
iple display layers on top of the Linux framebuffer device.', 'UPDATE', 'N/=
A', 'http://directfb.org/downloads/Core/DirectFB-1.6/DirectFB-1.6.1.tar.gz'=
, 'Kai Kang <kai.kang@windriver.com>', 'None']
inserted (directfb,1.6.1,1.6.3,LGPLv2.1,libs,r0.2,None,http://directfb.org,=
None,UPDATE,pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  jpeg libpng freetype zlib tslib sysfs=
utils,DirectFB is a thin library that provides developers with hardware gra=
phics acceleration, input device handling and abstraction, an integrated wi=
ndowing system with support for translucent windows and multiple display la=
yers on top of the Linux framebuffer device.,N/A,http://directfb.org/downlo=
ads/Core/DirectFB-1.6/DirectFB-1.6.1.tar.gz,Kai Kang <kai.kang@windriver.co=
m>)
['mklibs-native', '0.1.34', '0.1.35', 'GPLv2+', 'devel', 'https://code.laun=
chpad.net/mklibs', 'r1', 'autoconf-native automake-native libtool-native gn=
u-config-native gettext-minimal-native  python-native  python-native ', 'No=
ne', 'None', 'mklibs produces cut-down shared libraries that contain only t=
he routines required by a particular set of executables.', 'UPDATE', 'N/A',=
 'http://ftp.de.debian.org/debian/pool/main/m/mklibs/mklibs_0.1.34.tar.gz',=
 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (mklibs-native,0.1.34,0.1.35,GPLv2+,devel,r1,None,https://code.lau=
nchpad.net/mklibs,None,UPDATE,autoconf-native automake-native libtool-nativ=
e gnu-config-native gettext-minimal-native  python-native  python-native ,m=
klibs produces cut-down shared libraries that contain only the routines req=
uired by a particular set of executables.,N/A,http://ftp.de.debian.org/debi=
an/pool/main/m/mklibs/mklibs_0.1.34.tar.gz,Saul Wold <sgw@linux.intel.com>)
['python-pygobject', '2.27.91', '3.8.1', 'LGPLv2.1', 'devel/python', 'unkno=
wn', 'r6', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  python python-pygobject-native glib-2=
=2E0 python-native python  python-native ', 'None', 'None', 'Python GObject=
 bindings', 'UPDATE', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/pygobj=
ect/2.27/pygobject-2.27.91.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@=
intel.com>', 'None']
inserted (python-pygobject,2.27.91,3.8.1,LGPLv2.1,devel/python,r6,None,unkn=
own,None,UPDATE,pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  python python-pygobject-native gl=
ib-2.0 python-native python  python-native ,Python GObject bindings,N/A,htt=
p://ftp.gnome.org/pub/GNOME/sources/pygobject/2.27/pygobject-2.27.91.tar.bz=
2,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['libunique', '1.1.6', '3.0.2', 'LGPLv2.1', 'base', 'http://live.gnome.org/=
LibUnique', 'r7', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  glib-2.0 gtk+ dbus', 'https://bugzilla.gnome.or=
g/enter_bug.cgi?product=3Dlibunique', 'None', 'Unique is a library for writ=
ing single instance application. If you launch a single instance applicatio=
n twice, the second instance will either just quit or will send a message t=
o the running instance.', 'UPDATE', 'N/A', 'http://ftp.gnome.org/pub/GNOME/=
sources/libunique/1.1/libunique-1.1.6.tar.bz2', 'Radu Moisan <radu.moisan@i=
ntel.com>', 'Do not upgrade to version: 2.91.4 because it requires gtk+ >=
=3D 2.90.0 and the stable version of gtk+ used by poky is 2.20.1']
inserted (libunique,1.1.6,3.0.2,LGPLv2.1,base,r7,None,http://live.gnome.org=
/LibUnique,https://bugzilla.gnome.org/enter_bug.cgi?product=3Dlibunique,UPD=
ATE,autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  glib-2.0 gtk+ dbus,Unique is a library for writing single inst=
ance application. If you launch a single instance application twice, the se=
cond instance will either just quit or will send a message to the running i=
nstance.,N/A,http://ftp.gnome.org/pub/GNOME/sources/libunique/1.1/libunique=
-1.1.6.tar.bz2,Radu Moisan <radu.moisan@intel.com>)
['gst-fluendo-mpegdemux', '0.10.71', '0.10.72', 'MPLv1.1', 'multimedia', 'h=
ttp://www.fluendo.com/resources/source-plugins.php', 'r0', 'pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  gstreamer zlib', 'None', 'None', 'Fluendo closed-format mpeg vid=
eo GStreamer plug-in', 'UPDATE', 'N/A', 'http://core.fluendo.com/gstreamer/=
src/gst-fluendo-mpegdemux/gst-fluendo-mpegdemux-0.10.71.tar.bz2', 'Cristian=
 Iorga <cristian.iorga@intel.com>', 'None']
inserted (gst-fluendo-mpegdemux,0.10.71,0.10.72,MPLv1.1,multimedia,r0,None,=
http://www.fluendo.com/resources/source-plugins.php,None,UPDATE,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  gstreamer zlib,Fluendo closed-format mpeg video GStreamer pl=
ug-in,N/A,http://core.fluendo.com/gstreamer/src/gst-fluendo-mpegdemux/gst-f=
luendo-mpegdemux-0.10.71.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['build-appliance-image', '1.0', '8.0.1', 'MIT', 'base', 'unknown', 'r0', '=
 zip-native gzip-native qemuwrapper-cross depmodwrapper-cross', 'None', 'No=
ne', "An image you can boot and run using either the VMware Player or VMwar=
e Workstation. For more information, see the <a href=3D'http://www.yoctopro=
ject.org/documentation/build-appliance'>Build Appliance page</a>.", 'UPDATE=
', 'N/A', 'git://git.yoctoproject.org/poky;protocol=3Dgit', 'Saul Wold <sgw=
@linux.intel.com>', 'None']
inserted (build-appliance-image,1.0,8.0.1,MIT,base,r0,None,unknown,None,UPD=
ATE, zip-native gzip-native qemuwrapper-cross depmodwrapper-cross,An image =
you can boot and run using either the VMware Player or VMware Workstation. =
For more information, see the <a href=3D'http://www.yoctoproject.org/docume=
ntation/build-appliance'>Build Appliance page</a>.,N/A,git://git.yoctoproje=
ct.org/poky;protocol=3Dgit,Saul Wold <sgw@linux.intel.com>)
['libtelepathy', '0.3.3', '0.3.3', 'LGPLv2.1+', 'base', 'http://telepathy.f=
reedesktop.org/wiki/', 'r5', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus dbus-=
glib telepathy-glib  python-native ', 'None', 'None', 'Telepathy is a D-Bus=
 framework for unifying real time communication, including instant messagin=
g, voice calls and video calls.  It abstracts differences between protocols=
 to provide a unified interface for applications.', 'MATCH', 'N/A', 'http:/=
/telepathy.freedesktop.org/releases/libtelepathy/libtelepathy-0.3.3.tar.gz'=
, 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libtelepathy,0.3.3,0.3.3,LGPLv2.1+,base,r5,None,http://telepathy.=
freedesktop.org/wiki/,None,MATCH,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus db=
us-glib telepathy-glib  python-native ,Telepathy is a D-Bus framework for u=
nifying real time communication, including instant messaging, voice calls a=
nd video calls.  It abstracts differences between protocols to provide a un=
ified interface for applications.,N/A,http://telepathy.freedesktop.org/rele=
ases/libtelepathy/libtelepathy-0.3.3.tar.gz,Cristian Iorga <cristian.iorga@=
intel.com>)
['binutils-cross-canadian-i586', '2.23.1', '2.23.2', 'GPLv3', 'devel', 'htt=
p://www.gnu.org/software/binutils/', 'r3', 'autoconf-native automake-native=
 libtool-native gnu-config-native gettext-native nativesdk-gettext  flex-na=
tive bison-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk=
-libc nativesdk-zlib nativesdk-gettext chrpath-replacement-native', 'http:/=
/sourceware.org/bugzilla/', 'None', 'A GNU collection of cross-canadian bin=
ary utilities for i586 target', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/bin=
utils/binutils-2.23.1.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@intel=
=2Ecom>', 'None']
inserted (binutils-cross-canadian-i586,2.23.1,2.23.2,GPLv3,devel,r3,None,ht=
tp://www.gnu.org/software/binutils/,http://sourceware.org/bugzilla/,UPDATE,=
autoconf-native automake-native libtool-native gnu-config-native gettext-na=
tive nativesdk-gettext  flex-native bison-native virtual/i586-pokysdk-linux=
-gcc-crosssdk virtual/nativesdk-libc nativesdk-zlib nativesdk-gettext chrpa=
th-replacement-native,A GNU collection of cross-canadian binary utilities f=
or i586 target,N/A,ftp://ftp.gnu.org/gnu/binutils/binutils-2.23.1.tar.bz2,B=
ogdan Marinescu <bogdan.a.marinescu@intel.com>)
['gamin', '0.1.10', '0.1.10', 'LGPLv2+', 'base', 'http://people.gnome.org/~=
veillard/gamin/', 'r5', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0', 'None', 'None=
', 'Gamin is a file and directory monitoring system defined to be a subset =
of the FAM (File Alteration Monitor) system.', 'MATCH', 'N/A', 'http://www.=
gnome.org/~veillard/gamin/sources/gamin-0.1.10.tar.gz', 'Radu Moisan <radu.=
moisan@intel.com>', 'None']
inserted (gamin,0.1.10,0.1.10,LGPLv2+,base,r5,None,http://people.gnome.org/=
~veillard/gamin/,None,MATCH,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0,Gamin is a f=
ile and directory monitoring system defined to be a subset of the FAM (File=
 Alteration Monitor) system.,N/A,http://www.gnome.org/~veillard/gamin/sourc=
es/gamin-0.1.10.tar.gz,Radu Moisan <radu.moisan@intel.com>)
['lsof', '4.87', '4.87', 'BSD', 'devel', 'unknown', 'r0', ' virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', =
'None', 'Lsof is a Unix-specific diagnostic tool. Its name stands for LiSt =
Open Files, and it does just that.', 'MATCH', 'N/A', 'ftp://lsof.itap.purdu=
e.edu/pub/tools/unix/lsof/lsof_4.87.tar.bz2', 'Bogdan Marinescu <bogdan.a.m=
arinescu@intel.com>', 'None']
inserted (lsof,4.87,4.87,BSD,devel,r0,None,unknown,None,MATCH, virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Lsof is=
 a Unix-specific diagnostic tool. Its name stands for LiSt Open Files, and =
it does just that.,N/A,ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/lsof_=
4.87.tar.bz2,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['builder', '0.1', 'INVALID', 'MIT', 'x11', 'unknown', 'r6', ' virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   base-pa=
sswd shadow-native shadow-sysroot shadow', 'None', 'None', 'This recipe cre=
ate a new user named builder, who is used for specific jobs like building. =
The task can be auto started via mini X', 'MATCH', 'N/A', 'file://builder_h=
ob_start.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (builder,0.1,INVALID,MIT,x11,r6,None,unknown,None,MATCH, virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   base=
-passwd shadow-native shadow-sysroot shadow,This recipe create a new user n=
amed builder, who is used for specific jobs like building. The task can be =
auto started via mini X,N/A,file://builder_hob_start.sh,Saul Wold <sgw@linu=
x.intel.com>)
['python-argparse', '1.2.1', '1.2.1', 'PSF', 'devel/python', 'unknown', 'r3=
', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc   python-native python  python-native  python-setuptools-native', '=
None', 'None', 'Python command-line parsing library', 'MATCH', 'N/A', 'http=
://argparse.googlecode.com/files/argparse-1.2.1.tar.gz', 'Bogdan Marinescu =
<bogdan.a.marinescu@intel.com>', 'None']
inserted (python-argparse,1.2.1,1.2.1,PSF,devel/python,r3,None,unknown,None=
,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc   python-native python  python-native  python-setuptools-native,=
Python command-line parsing library,N/A,http://argparse.googlecode.com/file=
s/argparse-1.2.1.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['dhcp', '4.2.5', '4.2.5-P1', 'ISC', 'console/network', 'http://www.isc.org=
/', 'r1', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  openssl bind', 'None', 'None', 'DHCP (Dynamic Host Conf=
iguration Protocol) is a protocol which allows individual devices on an IP =
network to get their own network configuration information from a server.  =
DHCP helps make it easier to administer devices.', 'UPDATE', 'N/A', 'ftp://=
ftp.isc.org/isc/dhcp/4.2.5/dhcp-4.2.5.tar.gz', 'Saul Wold <sgw@linux.intel.=
com>', 'None']
inserted (dhcp,4.2.5,4.2.5-P1,ISC,console/network,r1,None,http://www.isc.or=
g/,None,UPDATE,autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  openssl bind,DHCP (Dynamic Host Configuration Proto=
col) is a protocol which allows individual devices on an IP network to get =
their own network configuration information from a server.  DHCP helps make=
 it easier to administer devices.,N/A,ftp://ftp.isc.org/isc/dhcp/4.2.5/dhcp=
-4.2.5.tar.gz,Saul Wold <sgw@linux.intel.com>)
['binutils', '2.23.1', '2.23.2', 'GPLv3', 'devel', 'http://www.gnu.org/soft=
ware/binutils/', 'r3', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native=
 bison-native zlib-native flex bison zlib virtual/update-alternatives', 'ht=
tp://sourceware.org/bugzilla/', 'None', 'The GNU Binutils are a collection =
of binary tools. The main ones are ld (GNU Linker), and as (GNU Assembler).=
 This package also includes addition tools such as addr2line (Converts addr=
esses into filenames and line numbers), ar (utility for creating, modifying=
 and extracting archives), nm (list symbols in object files), objcopy (copy=
 and translate object files), objdump (Display object information), and oth=
er tools and related libraries.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/b=
inutils/binutils-2.23.1.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@int=
el.com>', 'None']
inserted (binutils,2.23.1,2.23.2,GPLv3,devel,r3,None,http://www.gnu.org/sof=
tware/binutils/,http://sourceware.org/bugzilla/,UPDATE,autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native virtual/gettext =
gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  flex-native bison-native zlib-native flex bison zlib vi=
rtual/update-alternatives,The GNU Binutils are a collection of binary tools=
=2E The main ones are ld (GNU Linker), and as (GNU Assembler). This package=
 also includes addition tools such as addr2line (Converts addresses into fi=
lenames and line numbers), ar (utility for creating, modifying and extracti=
ng archives), nm (list symbols in object files), objcopy (copy and translat=
e object files), objdump (Display object information), and other tools and =
related libraries.,N/A,ftp://ftp.gnu.org/gnu/binutils/binutils-2.23.1.tar.b=
z2,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['liburcu', '0.7.6', '0.7.6', 'LGPLv2.1+ & MIT-style', 'base', 'http://lttn=
g.org/urcu', 'r0', 'autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ', 'http://lttng.org/project/issues', 'None', =
'The userspace read-copy update library by Mathieu Desnoyers', 'MATCH', '0.=
7.0', 'http://lttng.org/files/urcu/userspace-rcu-0.7.6.tar.bz2', 'Radu Mois=
an <radu.moisan@intel.com>', 'None']
inserted (liburcu,0.7.6,0.7.6,LGPLv2.1+ & MIT-style,base,r0,None,http://ltt=
ng.org/urcu,http://lttng.org/project/issues,MATCH,autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,The userspace r=
ead-copy update library by Mathieu Desnoyers,0.7.0,http://lttng.org/files/u=
rcu/userspace-rcu-0.7.6.tar.bz2,Radu Moisan <radu.moisan@intel.com>)
['gzip', '1.5', '1.5', 'GPLv3+', 'console/utils', 'http://www.gnu.org/softw=
are/gzip/', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc   virtual/update-alternatives', 'None', 'None', =
'GNU Gzip is a popular data compression program originally written by Jean-=
loup Gailly for the GNU project. Mark Adler wrote the decompression part', =
'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gzip/gzip-1.5.tar.gz', 'Andrei Dinu =
<andrei.adrianx.dinu@intel.com>', 'None']
inserted (gzip,1.5,1.5,GPLv3+,console/utils,r0,None,http://www.gnu.org/soft=
ware/gzip/,None,MATCH,autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc   virtual/update-alternatives,GNU Gzip is a p=
opular data compression program originally written by Jean-loup Gailly for =
the GNU project. Mark Adler wrote the decompression part,N/A,ftp://ftp.gnu.=
org/gnu/gzip/gzip-1.5.tar.gz,Andrei Dinu <andrei.adrianx.dinu@intel.com>)
['libglade', '2.6.4', '2.6.4', 'LGPLv2 & LGPLv2+', 'libs', 'http://library.=
gnome.org/devel/libglade/', 'r5', 'pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib gdk-pixbu=
f gtk+ gnome-common-native hicolor-icon-theme gtk-update-icon-cache-native =
gconf gconf-native shared-mime-info-native shared-mime-info gtk-doc-stub-na=
tive', 'https://bugzilla.gnome.org/', 'None', 'Runtime support for GTK inte=
rface builder', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/lib=
glade/2.6/libglade-2.6.4.tar.bz2;name=3Darchive', 'Constantin Musca <consta=
ntinx.musca@intel.com>', 'None']
inserted (libglade,2.6.4,2.6.4,LGPLv2 & LGPLv2+,libs,r5,None,http://library=
=2Egnome.org/devel/libglade/,https://bugzilla.gnome.org/,MATCH,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  zlib gdk-pixbuf gtk+ gnome-common-native hicolor-icon-theme g=
tk-update-icon-cache-native gconf gconf-native shared-mime-info-native shar=
ed-mime-info gtk-doc-stub-native,Runtime support for GTK interface builder,=
N/A,http://ftp.gnome.org/pub/GNOME/sources/libglade/2.6/libglade-2.6.4.tar.=
bz2;name=3Darchive,Constantin Musca <constantinx.musca@intel.com>)
['bdwgc', '7.2', '7.2d', 'MIT & FSF-Unlimited & GPL-2.0', 'devel', 'http://=
www.hpl.hp.com/personal/Hans_Boehm/gc/', 'r0', 'autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None',=
 'The Boehm-Demers-Weiser conservative garbage collector can be used as a g=
arbage collecting replacement for C malloc or C++ new. It allows you to all=
ocate memory basically as you normally would, without explicitly deallocati=
ng memory that is no longer useful. The collector automatically recycles me=
mory when it determines that it can no longer be otherwise accessed.  The c=
ollector is also used by a number of programming language implementations t=
hat either use C as intermediate code, want to facilitate easier interopera=
tion with C libraries, or just prefer the simple collector interface.  Alte=
rnatively, the garbage collector may be used as a leak detector for C or C+=
+ programs, though that is not its primary goal.  Empirically, this collect=
or works with most unmodified C programs, simply by replacing malloc with G=
C_malloc calls, replacing realloc with GC_realloc calls, and removing free =
calls.', 'UPDATE', 'gc-7.2d', 'http://www.hpl.hp.com/personal/Hans_Boehm/gc=
/gc_source/gc-7.2d.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com=
>', 'None']
inserted (bdwgc,7.2,7.2d,MIT & FSF-Unlimited & GPL-2.0,devel,r0,None,http:/=
/www.hpl.hp.com/personal/Hans_Boehm/gc/,None,UPDATE,autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,The Boehm-Dem=
ers-Weiser conservative garbage collector can be used as a garbage collecti=
ng replacement for C malloc or C++ new. It allows you to allocate memory ba=
sically as you normally would, without explicitly deallocating memory that =
is no longer useful. The collector automatically recycles memory when it de=
termines that it can no longer be otherwise accessed.  The collector is als=
o used by a number of programming language implementations that either use =
C as intermediate code, want to facilitate easier interoperation with C lib=
raries, or just prefer the simple collector interface.  Alternatively, the =
garbage collector may be used as a leak detector for C or C++ programs, tho=
ugh that is not its primary goal.  Empirically, this collector works with m=
ost unmodified C programs, simply by replacing malloc with GC_malloc calls,=
 replacing realloc with GC_realloc calls, and removing free calls.,gc-7.2d,=
http://www.hpl.hp.com/personal/Hans_Boehm/gc/gc_source/gc-7.2d.tar.gz,Bogda=
n Marinescu <bogdan.a.marinescu@intel.com>)
['speex', '1.2rc1', '1.2rc1', 'BSD', 'libs', 'http://www.speex.org', 'r2', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  libogg', 'None', 'None', 'Speex is an Open Sourc=
e/Free Software patent-free audio compression format designed for speech.',=
 'MATCH', 'N/A', 'http://downloads.us.xiph.org/releases/speex/speex-1.2rc1.=
tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (speex,1.2rc1,1.2rc1,BSD,libs,r2,None,http://www.speex.org,None,MA=
TCH,pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  libogg,Speex is an Open Source/Free Software =
patent-free audio compression format designed for speech.,N/A,http://downlo=
ads.us.xiph.org/releases/speex/speex-1.2rc1.tar.gz,Cristian Iorga <cristian=
=2Eiorga@intel.com>)
['gnome-doc-utils', '0.20.10', '0.20.10', 'GPLv2 & LGPLv2.1', 'base', 'unkn=
own', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxm=
l2 libxslt libxslt-native gnome-doc-utils-native glib-2.0 gnome-common-nati=
ve hicolor-icon-theme gtk-update-icon-cache-native gconf gconf-native share=
d-mime-info-native shared-mime-info  python-native ', 'None', 'None', 'gnom=
e-doc-utils version 0.20.10-r0', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/=
GNOME/sources/gnome-doc-utils/0.20/gnome-doc-utils-0.20.10.tar.xz;name=3Dar=
chive', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (gnome-doc-utils,0.20.10,0.20.10,GPLv2 & LGPLv2.1,base,r0,None,unk=
nown,None,MATCH,pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  li=
bxml2 libxslt libxslt-native gnome-doc-utils-native glib-2.0 gnome-common-n=
ative hicolor-icon-theme gtk-update-icon-cache-native gconf gconf-native sh=
ared-mime-info-native shared-mime-info  python-native ,gnome-doc-utils vers=
ion 0.20.10-r0,N/A,http://ftp.gnome.org/pub/GNOME/sources/gnome-doc-utils/0=
=2E20/gnome-doc-utils-0.20.10.tar.xz;name=3Darchive,Constantin Musca <const=
antinx.musca@intel.com>)
['matchbox-desktop', '2.0+gitAUTOINC+71e3e6e', '2.0+gitAUTOINC+75d3955', 'G=
PLv2+ & LGPLv2+', 'x11/wm', 'http://matchbox-project.org/', 'r0', 'pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  gtk+ startup-notification dbus', 'http://bugzilla.openedh=
and.com/', 'None', 'Matchbox Window Manager Desktop', 'MATCH', 'N/A', 'git:=
//git.yoctoproject.org/matchbox-desktop-2;protocol=3Dgit', 'Constantin Musc=
a <constantinx.musca@intel.com>', 'None']
inserted (matchbox-desktop,2.0+gitAUTOINC+71e3e6e,2.0+gitAUTOINC+75d3955,GP=
Lv2+ & LGPLv2+,x11/wm,r0,None,http://matchbox-project.org/,http://bugzilla.=
openedhand.com/,MATCH,pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  gtk+ startup-notification d=
bus,Matchbox Window Manager Desktop,N/A,git://git.yoctoproject.org/matchbox=
-desktop-2;protocol=3Dgit,Constantin Musca <constantinx.musca@intel.com>)
['less', '457', '458', 'GPLv3+ | BSD-2-Clause', 'console/utils', 'http://ww=
w.greenwoodsoftware.com/', 'r0', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ncurses virtual/update-alternati=
ves', 'None', 'None', 'Less is a program similar to more, i.e. a terminal b=
ased program for viewing text files and the output from other programs. Les=
s offers many features beyond those that more does.', 'UPDATE', 'N/A', 'htt=
p://www.greenwoodsoftware.com/less/less-457.tar.gz', 'Saul Wold <sgw@linux.=
intel.com>', 'None']
inserted (less,457,458,GPLv3+ | BSD-2-Clause,console/utils,r0,None,http://w=
ww.greenwoodsoftware.com/,None,UPDATE,autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  ncurses virtual/update-alter=
natives,Less is a program similar to more, i.e. a terminal based program fo=
r viewing text files and the output from other programs. Less offers many f=
eatures beyond those that more does.,N/A,http://www.greenwoodsoftware.com/l=
ess/less-457.tar.gz,Saul Wold <sgw@linux.intel.com>)
['randrproto', '1.4.0', '1.4.0', 'MIT-style', 'x11/libs', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the X Resize, Rotate and Reflect extension.  This extension pr=
ovides the ability to resize, rotate and reflect the root window of a scree=
n.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto=
/randrproto-1.4.0.tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>=
', 'None']
inserted (randrproto,1.4.0,1.4.0,MIT-style,x11/libs,r0,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  util-macros,This package provides the wire protocol for the X=
 Resize, Rotate and Reflect extension.  This extension provides the ability=
 to resize, rotate and reflect the root window of a screen.,N/A,http://xorg=
=2Efreedesktop.org/releases/individual/proto/randrproto-1.4.0.tar.bz2,Const=
antin Musca <constantinx.musca@intel.com>)
['neon', '0.29.6', '0.29.6', 'LGPLv2+', 'libs', 'http://www.webdav.org/neon=
/', 'r3', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  zlib libxml2 expat time gnutls libprox=
y', 'None', 'None', 'neon is an HTTP and WebDAV client library, with a C in=
terface.', 'MATCH', 'N/A', 'http://www.webdav.org/neon/neon-0.29.6.tar.gz',=
 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (neon,0.29.6,0.29.6,LGPLv2+,libs,r3,None,http://www.webdav.org/neo=
n/,None,MATCH,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  zlib libxml2 expat time gnutls libp=
roxy,neon is an HTTP and WebDAV client library, with a C interface.,N/A,htt=
p://www.webdav.org/neon/neon-0.29.6.tar.gz,Cristian Iorga <cristian.iorga@i=
ntel.com>)
['xev', '1.2.1', '1.2.1', 'MIT', 'x11/apps', 'http://www.x.org/', 'r0', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  util-macros-native virtual/libx11 libxrandr xproto'=
, 'https://bugs.freedesktop.org', '1', 'X Event Viewer', 'MATCH', '1.0.4', =
'http://xorg.freedesktop.org/releases/individual/app/xev-1.2.1.tar.bz2', 'L=
aurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xev,1.2.1,1.2.1,MIT,x11/apps,r0,1,http://www.x.org/,https://bugs.=
freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native virtual/=
libx11 libxrandr xproto,X Event Viewer,1.0.4,http://xorg.freedesktop.org/re=
leases/individual/app/xev-1.2.1.tar.bz2,Laurentiu Palcu <laurentiu.palcu@in=
tel.com>)
['libxtst', '1.2.1', '1.2.1', 'MIT-style', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros libxext recordproto inputproto=
 libxi', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', =
'This extension is a minimal set of client and server extensions required t=
o completely test the X11 server with no user intervention.', 'MATCH', 'N/A=
', 'http://xorg.freedesktop.org/releases/individual/lib/libXtst-1.2.1.tar.b=
z2', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (libxtst,1.2.1,1.2.1,MIT-style,x11/libs,r0,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros libxext recordproto inputproto libxi,This extension =
is a minimal set of client and server extensions required to completely tes=
t the X11 server with no user intervention.,N/A,http://xorg.freedesktop.org=
/releases/individual/lib/libXtst-1.2.1.tar.bz2,Constantin Musca <constantin=
x.musca@intel.com>)
['libdmx', '1.1.2', '1.1.2', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros libxext dmxproto', 'https://bugs.free=
desktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The DMX extension provides=
 support for communication with and control of Xdmx(1) server. Attributes o=
f the Xdmx(1) server and of the back-end screens attached to the server can=
 be queried and modified via this protocol.', 'MATCH', 'N/A', 'http://xorg.=
freedesktop.org/releases/individual/lib/libdmx-1.1.2.tar.bz2', 'Radu Moisan=
 <radu.moisan@intel.com>', 'None']
inserted (libdmx,1.1.2,1.1.2,MIT,x11/libs,r0,1,http://www.x.org,https://bug=
s.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  util-macros libxext dmxproto,The DMX extension provides support for com=
munication with and control of Xdmx(1) server. Attributes of the Xdmx(1) se=
rver and of the back-end screens attached to the server can be queried and =
modified via this protocol.,N/A,http://xorg.freedesktop.org/releases/indivi=
dual/lib/libdmx-1.1.2.tar.bz2,Radu Moisan <radu.moisan@intel.com>)
['clutter-gst-1.8', '1.4.6', '1.4.6', 'LGPLv2+', 'base', 'http://www.clutte=
r-project.org/', 'r0', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  gstreamer gst-plugins-bas=
e clutter-1.8 gstreamer gtk-doc-stub-native', 'None', 'None', 'Clutter GStr=
eamer', 'MATCH', 'N/A', 'http://source.clutter-project.org/sources/clutter-=
gst/1.4/clutter-gst-1.4.6.tar.bz2', 'Ross Burton <ross.burton@intel.com>', =
'None']
inserted (clutter-gst-1.8,1.4.6,1.4.6,LGPLv2+,base,r0,None,http://www.clutt=
er-project.org/,None,MATCH,pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  gstreamer gst-plugins-=
base clutter-1.8 gstreamer gtk-doc-stub-native,Clutter GStreamer,N/A,http:/=
/source.clutter-project.org/sources/clutter-gst/1.4/clutter-gst-1.4.6.tar.b=
z2,Ross Burton <ross.burton@intel.com>)
['dbus-ptest', '1.6.8', '1.7.0', 'AFL-2 | GPLv2+', 'base', 'http://dbus.fre=
edesktop.org', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  python-pygobject dbus dbus-glib', 'None', 'None', 'D-Bus test package, =
only used for D-bus functionality test.', 'UPDATE', 'N/A', 'http://dbus.fre=
edesktop.org/releases/dbus/dbus-1.6.8.tar.gz', 'None', 'None']
inserted (dbus-ptest,1.6.8,1.7.0,AFL-2 | GPLv2+,base,r0,None,http://dbus.fr=
eedesktop.org,None,UPDATE,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  python-pygobject dbus dbus-glib,D-Bus test package, only used for D=
-bus functionality test.,N/A,http://dbus.freedesktop.org/releases/dbus/dbus=
-1.6.8.tar.gz,None)
['mingetty', '1.08', '1.08', 'GPLv2', 'console/utils', 'http://sourceforge.=
net/projects/mingetty/', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc   virtual/update-alternatives', 'None',=
 'None', ' A compact getty program for virtual consoles only', 'MATCH', 'N/=
A', 'http://cdnetworks-kr-1.dl.sourceforge.net/project/mingetty/mingetty/1.=
08/mingetty-1.08.tar.gz', 'Kai Kang <kai.kang@windriver.com>', 'None']
inserted (mingetty,1.08,1.08,GPLv2,console/utils,r3,None,http://sourceforge=
=2Enet/projects/mingetty/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc   virtual/update-alternatives, A c=
ompact getty program for virtual consoles only,N/A,http://cdnetworks-kr-1.d=
l.sourceforge.net/project/mingetty/mingetty/1.08/mingetty-1.08.tar.gz,Kai K=
ang <kai.kang@windriver.com>)
['tzcode-native', '2013b', '2013c', 'PD', 'base', 'unknown', 'r0', ' ', 'No=
ne', 'None', 'tzcode, timezone zoneinfo utils -- zic, zdump, tzselect', 'UP=
DATE', 'N/A', 'ftp://ftp.iana.org/tz/releases/tzcode2013b.tar.gz;name=3Dtzc=
ode', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (tzcode-native,2013b,2013c,PD,base,r0,None,unknown,None,UPDATE, ,t=
zcode, timezone zoneinfo utils -- zic, zdump, tzselect,N/A,ftp://ftp.iana.o=
rg/tz/releases/tzcode2013b.tar.gz;name=3Dtzcode,Saul Wold <sgw@linux.intel.=
com>)
['subversion', '1.7.8', '1.7.9', 'Apache-2', 'console/network', 'http://sub=
version.tigris.org', 'r0', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  apr-uti=
l neon sqlite3', 'None', 'None', 'The Subversion (svn) client', 'UPDATE', '=
N/A', 'http://www.apache.org/dist/subversion/subversion-1.7.8.tar.bz2', 'Bo=
gdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (subversion,1.7.8,1.7.9,Apache-2,console/network,r0,None,http://su=
bversion.tigris.org,None,UPDATE,autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  apr=
-util neon sqlite3,The Subversion (svn) client,N/A,http://www.apache.org/di=
st/subversion/subversion-1.7.8.tar.bz2,Bogdan Marinescu <bogdan.a.marinescu=
@intel.com>)
['wayland', '1.0.6', '1.1.0', 'MIT', 'base', 'http://wayland.freedesktop.or=
g', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  expat libffi wayland-native', 'None', =
'None', 'Wayland is a protocol for a compositor to talk to its clients as w=
ell as a C library implementation of that protocol. The compositor can be a=
 standalone display server running on Linux kernel modesetting and evdev in=
put devices, an X application, or a wayland client itself. The clients can =
be traditional applications, X servers (rootless or fullscreen) or other di=
splay servers.', 'UPDATE', 'N/A', 'http://wayland.freedesktop.org/releases/=
wayland-1.0.6.tar.xz', 'None', 'None']
inserted (wayland,1.0.6,1.1.0,MIT,base,r1,None,http://wayland.freedesktop.o=
rg,None,UPDATE,pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  expat libffi wayland-native,Waylan=
d is a protocol for a compositor to talk to its clients as well as a C libr=
ary implementation of that protocol. The compositor can be a standalone dis=
play server running on Linux kernel modesetting and evdev input devices, an=
 X application, or a wayland client itself. The clients can be traditional =
applications, X servers (rootless or fullscreen) or other display servers.,=
N/A,http://wayland.freedesktop.org/releases/wayland-1.0.6.tar.xz,None)
['rgb', '1.0.5', '1.0.5', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros-native virtual/libx11  xproto util-=
macros', 'https://bugs.freedesktop.org', '1', 'X application', 'MATCH', 'N/=
A', 'http://xorg.freedesktop.org/releases/individual/app/rgb-1.0.5.tar.bz2'=
, 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (rgb,1.0.5,1.0.5,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https://b=
ugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native virt=
ual/libx11  xproto util-macros,X application,N/A,http://xorg.freedesktop.or=
g/releases/individual/app/rgb-1.0.5.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['xwininfo', '1.1.2', '1.1.2', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r=
8.0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxext =
libxmu', 'https://bugs.freedesktop.org', '0', 'Xwininfo is a utility for di=
splaying information about windows.  Information may include window positio=
n, size, color depth, and a number of other items.', 'MATCH', 'N/A', 'http:=
//xorg.freedesktop.org/releases/individual/app/xwininfo-1.1.2.tar.bz2', 'La=
urentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xwininfo,1.1.2,1.1.2,MIT-X,x11/apps,r8.0,0,http://www.x.org/,http=
s://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native=
 virtual/libx11 libxext libxmu,Xwininfo is a utility for displaying informa=
tion about windows.  Information may include window position, size, color d=
epth, and a number of other items.,N/A,http://xorg.freedesktop.org/releases=
/individual/app/xwininfo-1.1.2.tar.bz2,Laurentiu Palcu <laurentiu.palcu@int=
el.com>)
['gmp', '5.1.0', '5.1.0a', 'LGPLv3&GPLv3', 'devel', 'http://gmplib.org/', '=
r2', 'autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  ', 'None', 'None', 'GNU multiprecision arithmetic library', =
'UPDATE', '5.0.5', 'ftp://ftp.gmplib.org/pub/gmp-5.1.0/gmp-5.1.0a.tar.bz2',=
 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (gmp,5.1.0,5.1.0a,LGPLv3&GPLv3,devel,r2,None,http://gmplib.org/,No=
ne,UPDATE,autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  ,GNU multiprecision arithmetic library,5.0.5,ftp://ftp.g=
mplib.org/pub/gmp-5.1.0/gmp-5.1.0a.tar.bz2,Bogdan Marinescu <bogdan.a.marin=
escu@intel.com>)
['nativesdk-libtool', '2.4.2', '2.4.2', 'GPLv2 & LGPLv2.1', 'devel', 'http:=
//www.gnu.org/software/libtool/libtool.html', 'r6.0', 'autoconf-native libt=
ool-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-p=
okysdk-linux-compilerlibs chrpath-replacement-native gnu-config-native auto=
make-native virtual/nativesdk-libc', 'None', 'None', 'This is GNU libtool, =
a generic library support script. Libtool hides the complexity of generatin=
g special library types (such as shared libraries) behind a consistent inte=
rface.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.g=
z', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (nativesdk-libtool,2.4.2,2.4.2,GPLv2 & LGPLv2.1,devel,r6.0,None,ht=
tp://www.gnu.org/software/libtool/libtool.html,None,MATCH,autoconf-native l=
ibtool-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i58=
6-pokysdk-linux-compilerlibs chrpath-replacement-native gnu-config-native a=
utomake-native virtual/nativesdk-libc,This is GNU libtool, a generic librar=
y support script. Libtool hides the complexity of generating special librar=
y types (such as shared libraries) behind a consistent interface.,N/A,ftp:/=
/ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz,Bogdan Marinescu <bogdan.a.ma=
rinescu@intel.com>)
['socat', '1.7.2.1', '1.7.2.1', 'GPL-2.0+-with-OpenSSL-exception', 'console=
/network', 'http://www.dest-unreach.org/socat/', 'r0', 'autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  openssl re=
adline', 'None', 'None', 'Socat is a relay for bidirectional data transfer =
between two independent data channels.', 'MATCH', 'N/A', 'http://www.dest-u=
nreach.org/socat/download/socat-1.7.2.1.tar.bz2;name=3Dsrc', 'Saul Wold <sg=
w@linux.intel.com>', '2.0.0 is beta']
inserted (socat,1.7.2.1,1.7.2.1,GPL-2.0+-with-OpenSSL-exception,console/net=
work,r0,None,http://www.dest-unreach.org/socat/,None,MATCH,autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  openssl=
 readline,Socat is a relay for bidirectional data transfer between two inde=
pendent data channels.,N/A,http://www.dest-unreach.org/socat/download/socat=
-1.7.2.1.tar.bz2;name=3Dsrc,Saul Wold <sgw@linux.intel.com>)
['systemd-compat-units', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r18',=
 ' systemd-systemctl-native', 'None', 'None', 'Units to make systemd work b=
etter with existing sysvinit scripts', 'MATCH', 'N/A', 'file://*.service', =
'None', 'None']
inserted (systemd-compat-units,1.0,INVALID,MIT,base,r18,None,unknown,None,M=
ATCH, systemd-systemctl-native,Units to make systemd work better with exist=
ing sysvinit scripts,N/A,file://*.service,None)
['lzop', '1.03', '1.03', 'GPLv2+', 'base', 'unknown', 'r0', 'autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   lzo'=
, 'None', 'None', 'lzop is a compression utility which is designed to be a =
companion to gzip. \\nIt is based on the LZO data compression library and i=
ts main advantages over \\ngzip are much higher compression and decompressi=
on speed at the cost of some \\ncompression ratio. The lzop compression uti=
lity was designed with the goals \\nof reliability, speed, portability and =
with reasonable drop-in compatibility \\nto gzip.', 'MATCH', 'N/A', 'http:/=
/www.lzop.org/download/lzop-1.03.tar.gz', 'Saul Wold <sgw@linux.intel.com>'=
, 'None']
inserted (lzop,1.03,1.03,GPLv2+,base,r0,None,unknown,None,MATCH,autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   l=
zo,lzop is a compression utility which is designed to be a companion to gzi=
p. \nIt is based on the LZO data compression library and its main advantage=
s over \ngzip are much higher compression and decompression speed at the co=
st of some \ncompression ratio. The lzop compression utility was designed w=
ith the goals \nof reliability, speed, portability and with reasonable drop=
-in compatibility \nto gzip.,N/A,http://www.lzop.org/download/lzop-1.03.tar=
=2Egz,Saul Wold <sgw@linux.intel.com>)
['xproto', '7.0.23', '7.0.24', 'MIT & MIT-style', 'x11/libs', 'http://www.x=
=2Eorg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freed=
esktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the b=
asic headers for the X Window System.', 'UPDATE', 'N/A', 'http://xorg.freed=
esktop.org/releases/individual/proto/xproto-7.0.23.tar.bz2', 'Laurentiu Pal=
cu <laurentiu.palcu@intel.com>', 'None']
inserted (xproto,7.0.23,7.0.24,MIT & MIT-style,x11/libs,r0,1,http://www.x.o=
rg,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,UPDATE,pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  util-macros,This package provides the basic headers for =
the X Window System.,N/A,http://xorg.freedesktop.org/releases/individual/pr=
oto/xproto-7.0.23.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['babeltrace', '1.1+gitAUTOINC+c99b191', '1.1.0+gitAUTOINC+2859bff', 'MIT &=
 GPLv2', 'base', 'http://www.efficios.com/babeltrace/', 'r0', 'autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gli=
b-2.0 util-linux popt', 'https://bugs.lttng.org/projects/babeltrace', 'None=
', 'Babeltrace provides trace read and write libraries in host side, as wel=
l as a trace converter, which used to convert LTTng 2.0 traces into human-r=
eadable log.', 'UPDATE', 'N/A', 'git://git.efficios.com/babeltrace.git;prot=
ocol=3Dgit', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (babeltrace,1.1+gitAUTOINC+c99b191,1.1.0+gitAUTOINC+2859bff,MIT & =
GPLv2,base,r0,None,http://www.efficios.com/babeltrace/,https://bugs.lttng.o=
rg/projects/babeltrace,UPDATE,autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  glib-2.0 util-linux popt,Babeltrace =
provides trace read and write libraries in host side, as well as a trace co=
nverter, which used to convert LTTng 2.0 traces into human-readable log.,N/=
A,git://git.efficios.com/babeltrace.git;protocol=3Dgit,Radu Moisan <radu.mo=
isan@intel.com>)
['apr-util', '1.5.1', '1.5.2', 'Apache-2.0', 'libs', 'http://apr.apache.org=
/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  apr expat gdbm', 'None', 'None', 'Apache Portable Runti=
me (APR) companion library', 'UPDATE', 'N/A', 'http://www.apache.org/dist/a=
pr/apr-util-1.5.1.tar.gz', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (apr-util,1.5.1,1.5.2,Apache-2.0,libs,r0,None,http://apr.apache.or=
g/,None,UPDATE,autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  apr expat gdbm,Apache Portable Runtime (APR) compan=
ion library,N/A,http://www.apache.org/dist/apr/apr-util-1.5.1.tar.gz,Radu M=
oisan <radu.moisan@intel.com>)
['libdrm', '2.4.42', '2.4.44', 'MIT', 'x11/base', 'http://dri.freedesktop.o=
rg', 'r4.0', 'pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  libpthread-stubs udev  libpciaccess=
', 'None', 'None', 'The runtime library for accessing the kernel DRM servic=
es.  DRM stands for \\"Direct Rendering Manager\\", which is the kernel por=
tion of the \\"Direct Rendering Infrastructure\\" (DRI).  DRI is required f=
or many hardware accelerated OpenGL drivers.', 'UPDATE', 'N/A', 'http://dri=
=2Efreedesktop.org/libdrm/libdrm-2.4.42.tar.bz2', 'Laurentiu Palcu <laurent=
iu.palcu@intel.com>', 'None']
inserted (libdrm,2.4.42,2.4.44,MIT,x11/base,r4.0,None,http://dri.freedeskto=
p.org,None,UPDATE,pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  libpthread-stubs udev  libpciac=
cess,The runtime library for accessing the kernel DRM services.  DRM stands=
 for \"Direct Rendering Manager\", which is the kernel portion of the \"Dir=
ect Rendering Infrastructure\" (DRI).  DRI is required for many hardware ac=
celerated OpenGL drivers.,N/A,http://dri.freedesktop.org/libdrm/libdrm-2.4.=
42.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['liburi-perl', '1.60', '1.60', 'Artistic-1.0 | GPL-1.0+', 'libs', 'unknown=
', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc   perl perl perl-native', 'None', 'None', 'This package conta=
ins the URI.pm module with friends. The module implements the URI class. UR=
I objects can be used to access and manipulate the various components that =
make up these strings.', 'MATCH', 'N/A', 'http://www.cpan.org/authors/id/G/=
GA/GAAS/URI-1.60.tar.gz', 'Kai Kang <kai.kang@windriver.com>', 'None']
inserted (liburi-perl,1.60,1.60,Artistic-1.0 | GPL-1.0+,libs,r0,None,unknow=
n,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc   perl perl perl-native,This package contains the URI.pm m=
odule with friends. The module implements the URI class. URI objects can be=
 used to access and manipulate the various components that make up these st=
rings.,N/A,http://www.cpan.org/authors/id/G/GA/GAAS/URI-1.60.tar.gz,Kai Kan=
g <kai.kang@windriver.com>)
['dri2proto', '2.8', '2.8', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/enter_=
bug.cgi?product=3Dxorg', 'None', 'This package provides the wire protocol f=
or the Direct Rendering Ifnrastructure 2.  DIR is required for may hardware=
 accelerated OpenGL drivers.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org=
/releases/individual/proto/dri2proto-2.8.tar.bz2', 'Constantin Musca <const=
antinx.musca@intel.com>', 'None']
inserted (dri2proto,2.8,2.8,MIT,x11/libs,r0,None,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  util-macros,This package provides the wire protocol for the Direct Re=
ndering Ifnrastructure 2.  DIR is required for may hardware accelerated Ope=
nGL drivers.,N/A,http://xorg.freedesktop.org/releases/individual/proto/dri2=
proto-2.8.tar.bz2,Constantin Musca <constantinx.musca@intel.com>)
['shadow', '4.1.4.3', '4.1.5.1', 'BSD | Artistic-1.0', 'base utils', 'http:=
//pkg-shadow.alioth.debian.org', 'r13', 'autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc              shadow-native virtual/update-alternatives', 'https://alio=
th.debian.org/tracker/?group_id=3D30580', 'None', 'Tools to change and admi=
nister password and group data', 'UPDATE', 'N/A', 'http://pkg-shadow.alioth=
=2Edebian.org/releases/shadow-4.1.4.3.tar.bz2', 'Andrei Dinu <andrei.adrian=
x.dinu@intel.com>', 'None']
inserted (shadow,4.1.4.3,4.1.5.1,BSD | Artistic-1.0,base utils,r13,None,htt=
p://pkg-shadow.alioth.debian.org,https://alioth.debian.org/tracker/?group_i=
d=3D30580,UPDATE,autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc              shadow=
-native virtual/update-alternatives,Tools to change and administer password=
 and group data,N/A,http://pkg-shadow.alioth.debian.org/releases/shadow-4.1=
=2E4.3.tar.bz2,Andrei Dinu <andrei.adrianx.dinu@intel.com>)
['desktop-file-utils-native', '0.15', '0.21', 'GPLv2', 'console/utils', 'ht=
tp://www.freedesktop.org/wiki/Software/desktop-file-utils', 'r0', 'autoconf=
-native automake-native libtool-native gnu-config-native  glib-2.0-native',=
 'None', 'None', 'command line utilities to work with *.desktop files', 'UP=
DATE', 'N/A', 'http://freedesktop.org/software/desktop-file-utils/releases/=
desktop-file-utils-0.15.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (desktop-file-utils-native,0.15,0.21,GPLv2,console/utils,r0,None,h=
ttp://www.freedesktop.org/wiki/Software/desktop-file-utils,None,UPDATE,auto=
conf-native automake-native libtool-native gnu-config-native  glib-2.0-nati=
ve,command line utilities to work with *.desktop files,N/A,http://freedeskt=
op.org/software/desktop-file-utils/releases/desktop-file-utils-0.15.tar.gz,=
Saul Wold <sgw@linux.intel.com>)
['python-smartpm', '1.4.1', '1.4.1', 'GPLv2', 'devel/python', 'http://smart=
pm.org/', 'r9', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  python rpm python-native python  python-native  rpm',=
 'None', 'None', 'The Smart Package Manager project has the ambitious objec=
tive of creating smart and portable algorithms for solving adequately the p=
roblem of managing software upgrades and installation. This tool works in a=
ll major distributions and will bring notable advantages over native tools =
currently in use (APT, APT-RPM, YUM, URPMI, etc).', 'MATCH', 'N/A', 'http:/=
/launchpad.net/smart/trunk/1.4.1/+download/smart-1.4.1.tar.bz2', 'Bogdan Ma=
rinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (python-smartpm,1.4.1,1.4.1,GPLv2,devel/python,r9,None,http://smar=
tpm.org/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  python rpm python-native python  python-native  rp=
m,The Smart Package Manager project has the ambitious objective of creating=
 smart and portable algorithms for solving adequately the problem of managi=
ng software upgrades and installation. This tool works in all major distrib=
utions and will bring notable advantages over native tools currently in use=
 (APT, APT-RPM, YUM, URPMI, etc).,N/A,http://launchpad.net/smart/trunk/1.4.=
1/+download/smart-1.4.1.tar.bz2,Bogdan Marinescu <bogdan.a.marinescu@intel.=
com>)
['makedepend', '1.0.4', '1.0.4', 'MIT-X', 'x11/utils', 'http://www.x.org', =
'r1', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  xproto util-macros', 'https://bugs.freedes=
ktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The makedepend program reads =
each sourcefile in sequence and parses it like a C-preprocessor, processing=
 all #include, #define,  #undef, #ifdef, #ifndef, #endif, #if, #elif and #e=
lse directives so that it can correctly tell which #include, directives wou=
ld be used in a compilation. Any #include, directives can reference files h=
aving other #include directives, and parsing will occur in these files as w=
ell.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/uti=
l/makedepend-1.0.4.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com=
>', 'None']
inserted (makedepend,1.0.4,1.0.4,MIT-X,x11/utils,r1,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  xproto util-macros,The makedepend program reads each sourcefile =
in sequence and parses it like a C-preprocessor, processing all #include, #=
define,  #undef, #ifdef, #ifndef, #endif, #if, #elif and #else directives s=
o that it can correctly tell which #include, directives would be used in a =
compilation. Any #include, directives can reference files having other #inc=
lude directives, and parsing will occur in these files as well.,N/A,http://=
xorg.freedesktop.org/releases/individual/util/makedepend-1.0.4.tar.gz,Bogda=
n Marinescu <bogdan.a.marinescu@intel.com>)
['matchbox-session', '0.1', 'INVALID', 'GPLv2', 'x11', 'http://www.matchbox=
-project.org/', 'r4', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc   virtual/update-alternatives', 'http://bugzilla=
=2Eopenedhand.com/', 'None', 'Custom MB session files for poky', 'MATCH', '=
N/A', 'file://matchbox-session', 'Constantin Musca <constantinx.musca@intel=
=2Ecom>', 'None']
inserted (matchbox-session,0.1,INVALID,GPLv2,x11,r4,None,http://www.matchbo=
x-project.org/,http://bugzilla.openedhand.com/,MATCH, virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update-a=
lternatives,Custom MB session files for poky,N/A,file://matchbox-session,Co=
nstantin Musca <constantinx.musca@intel.com>)
['minicom', '2.6.2', 'N/A', 'GPLv2+', 'console/network', 'unknown', 'r0', '=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  ncurses', 'None', 'None', 'Minicom =
is a text-based modem control and terminal emulation program for Unix-like =
operating systems', 'ErrHostNoDir:/frs/download.php/3869/:-:minicom-2.6.2.t=
ar.gz:alioth.debian.org/frs/download.php/3869/minicom-2.6.2.tar.gz', '2.6.2=
', 'http://alioth.debian.org/frs/download.php/3869/minicom-2.6.2.tar.gz', '=
Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (minicom,2.6.2,N/A,GPLv2+,console/network,r0,None,unknown,None,Err=
HostNoDir:/frs/download.php/3869/:-:minicom-2.6.2.tar.gz:alioth.debian.org/=
frs/download.php/3869/minicom-2.6.2.tar.gz,autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  ncurses,Minicom is a text-based modem control and terminal emulatio=
n program for Unix-like operating systems,2.6.2,http://alioth.debian.org/fr=
s/download.php/3869/minicom-2.6.2.tar.gz,Cristian Iorga <cristian.iorga@int=
el.com>)
['xf86dgaproto', '2.1', '2.1', 'MIT', 'x11/libs', 'http://www.x.org', 'r2',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/ent=
er_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol f=
or the XFree86 Direct Graphics Access extension. This extension allows dire=
ct graphics access to a framebuffer-like region, as well as relative mouse =
reporting.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individu=
al/proto/xf86dgaproto-2.1.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel=
=2Ecom>', 'None']
inserted (xf86dgaproto,2.1,2.1,MIT,x11/libs,r2,1,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  util-macros,This package provides the wire protocol for the XFree86 D=
irect Graphics Access extension. This extension allows direct graphics acce=
ss to a framebuffer-like region, as well as relative mouse reporting.,N/A,h=
ttp://xorg.freedesktop.org/releases/individual/proto/xf86dgaproto-2.1.tar.b=
z2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['cogl', '1.8.2', '1.8.2', 'LGPLv2.1+', 'base', 'http://wiki.clutter-projec=
t.org/wiki/Cogl', 'r3', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native virtual/gettext gettext-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  virtual/libx11 pango glib-2.0 libxfixes gdk-pixbuf libxi virtual/lib=
gl libxcomposite libxdamage libdrm gtk-doc-stub-native', 'None', 'None', 'a=
 modern 3D graphics API with associated utility APIs', 'MATCH', 'N/A', 'htt=
p://source.clutter-project.org/sources/cogl/1.8/cogl-1.8.2.tar.bz2', 'Ross =
Burton <ross.burton@intel.com>', 'None']
inserted (cogl,1.8.2,1.8.2,LGPLv2.1+,base,r3,None,http://wiki.clutter-proje=
ct.org/wiki/Cogl,None,MATCH,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native virtual/gettext gettext-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  virtual/libx11 pango glib-2.0 libxfixes gdk-pixbuf libxi virtual/=
libgl libxcomposite libxdamage libdrm gtk-doc-stub-native,a modern 3D graph=
ics API with associated utility APIs,N/A,http://source.clutter-project.org/=
sources/cogl/1.8/cogl-1.8.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['man-pages', '3.50', '3.50', 'GPLv2+', 'console/utils', 'http://www.kernel=
=2Eorg/pub/linux/docs/man-pages', 'r0', ' virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'The Linux=
 man-pages project documents the Linux kernel and C library interfaces that=
 are employed by user programs', 'MATCH', 'N/A', 'http://kernel.org/pub/lin=
ux/docs/man-pages/Archive/man-pages-3.50.tar.gz', 'Saul Wold <sgw@linux.int=
el.com>', 'None']
inserted (man-pages,3.50,3.50,GPLv2+,console/utils,r0,None,http://www.kerne=
l.org/pub/linux/docs/man-pages,None,MATCH, virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  ,The Linux man-pages project=
 documents the Linux kernel and C library interfaces that are employed by u=
ser programs,N/A,http://kernel.org/pub/linux/docs/man-pages/Archive/man-pag=
es-3.50.tar.gz,Saul Wold <sgw@linux.intel.com>)
['docbook-dsssl-stylesheets-native', '1.79', '1.79', 'DSSSL', 'base', 'http=
://docbook.sourceforge.net', 'r4', ' sgml-common-native', 'None', 'None', '=
DSSSL stylesheets used to transform SGML and XML DocBook files', 'MATCH', '=
N/A', 'http://downloads.sourceforge.net/docbook/docbook-dsssl-1.79.tar.bz2'=
, 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (docbook-dsssl-stylesheets-native,1.79,1.79,DSSSL,base,r4,None,htt=
p://docbook.sourceforge.net,None,MATCH, sgml-common-native,DSSSL stylesheet=
s used to transform SGML and XML DocBook files,N/A,http://downloads.sourcef=
orge.net/docbook/docbook-dsssl-1.79.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['expat', '2.1.0', '2.1.0', 'MIT', 'libs', 'http://expat.sourceforge.net/',=
 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc   gzip-native', 'None', 'None', 'Expat is an XML parser lib=
rary written in C. It is a stream-oriented parser in which an application r=
egisters handlers for things the parser might find in the XML document (lik=
e start tags)', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/expat/exp=
at-2.1.0.tar.gz', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (expat,2.1.0,2.1.0,MIT,libs,r0,None,http://expat.sourceforge.net/,=
None,MATCH,autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc   gzip-native,Expat is an XML parser library written in =
C. It is a stream-oriented parser in which an application registers handler=
s for things the parser might find in the XML document (like start tags),N/=
A,http://downloads.sourceforge.net/expat/expat-2.1.0.tar.gz,Andrei Dinu <an=
drei.adrianx.dinu@intel.com>)
['shared-mime-info', '1.1', '1.1', 'LGPLv2+', 'base', 'http://freedesktop.o=
rg/wiki/Software/shared-mime-info', 'r0', 'pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native virtual/get=
text gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  libxml2 intltool-native glib-2.0 shared-mime-info-=
native', 'None', 'None', 'shared MIME database and spec', 'MATCH', 'N/A', '=
file://parallelmake.patch', 'Constantin Musca <constantinx.musca@intel.com>=
', 'None']
inserted (shared-mime-info,1.1,1.1,LGPLv2+,base,r0,None,http://freedesktop.=
org/wiki/Software/shared-mime-info,None,MATCH,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native virtual/=
gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  libxml2 intltool-native glib-2.0 shared-mime-in=
fo-native,shared MIME database and spec,N/A,file://parallelmake.patch,Const=
antin Musca <constantinx.musca@intel.com>)
['python-pyrex', '0.9.9', '0.9.9', 'Apache-2.0', 'devel/python', 'unknown',=
 'r4', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc   python-native python  python-native ', 'None', 'None', "Pyrex=
 is a language specially designed for writing Python extension modules. It'=
s designed to bridge the gap between the nice, high-level, easy-to-use worl=
d of Python and the messy, low-level world of C.", 'MATCH', 'N/A', 'http://=
www.cosc.canterbury.ac.nz/greg.ewing/python/Pyrex/Pyrex-0.9.9.tar.gz', 'Bog=
dan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (python-pyrex,0.9.9,0.9.9,Apache-2.0,devel/python,r4,None,unknown,=
None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc   python-native python  python-native ,Pyrex is a language s=
pecially designed for writing Python extension modules. It's designed to br=
idge the gap between the nice, high-level, easy-to-use world of Python and =
the messy, low-level world of C.,N/A,http://www.cosc.canterbury.ac.nz/greg.=
ewing/python/Pyrex/Pyrex-0.9.9.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@=
intel.com>)
['irda-utils', '0.9.18', '0.9.18', 'GPLv2+', 'base', 'http://irda.sourcefor=
ge.net/', 'r0', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc   update-rc.d-native', 'irda-users@lists.sourcefor=
ge.net', 'None', 'Provides common files needed to use IrDA. IrDA allows com=
munication over Infrared with other devices such as phones and laptops.', '=
MATCH', 'N/A', 'http://downloads.sourceforge.net/irda/irda-utils-0.9.18.tar=
=2Egz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (irda-utils,0.9.18,0.9.18,GPLv2+,base,r0,None,http://irda.sourcefo=
rge.net/,irda-users@lists.sourceforge.net,MATCH,autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   update-rc.d-nativ=
e,Provides common files needed to use IrDA. IrDA allows communication over =
Infrared with other devices such as phones and laptops.,N/A,http://download=
s.sourceforge.net/irda/irda-utils-0.9.18.tar.gz,Cristian Iorga <cristian.io=
rga@intel.com>)
['grub', '2.00', '2.00', 'GPLv3', 'bootloaders', 'http://www.gnu.org/softwa=
re/grub/', 'r1', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  autogen-native fl=
ex-native', 'None', 'None', 'GRUB2 is the next generaion of a GPLed bootloa=
der intended to unify bootloading across x86 operating systems. In addition=
 to loading the Linux kernel, it implements the Multiboot standard, which a=
llows for flexible loading of multiple boot images.', 'MATCH', 'N/A', 'ftp:=
//ftp.gnu.org/gnu/grub/grub-2.00.tar.gz', 'Radu Moisan <radu.moisan@intel.c=
om>', 'grub2 is a different thing']
inserted (grub,2.00,2.00,GPLv3,bootloaders,r1,None,http://www.gnu.org/softw=
are/grub/,None,MATCH,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  autogen-native=
 flex-native,GRUB2 is the next generaion of a GPLed bootloader intended to =
unify bootloading across x86 operating systems. In addition to loading the =
Linux kernel, it implements the Multiboot standard, which allows for flexib=
le loading of multiple boot images.,N/A,ftp://ftp.gnu.org/gnu/grub/grub-2.0=
0.tar.gz,Radu Moisan <radu.moisan@intel.com>)
['xeyes', '1.1.1', '1.1.1', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros-native virtual/libx11  virtual/libx=
11 libxau libxt libxext libxmu', 'https://bugs.freedesktop.org', '1', 'X ap=
plication', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individua=
l/app/xeyes-1.1.1.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', =
'None']
inserted (xeyes,1.1.1,1.1.1,MIT-X,x11/apps,r0,1,http://www.x.org/,https://b=
ugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native virt=
ual/libx11  virtual/libx11 libxau libxt libxext libxmu,X application,N/A,ht=
tp://xorg.freedesktop.org/releases/individual/app/xeyes-1.1.1.tar.bz2,Laure=
ntiu Palcu <laurentiu.palcu@intel.com>)
['udev', '182', '182', 'GPLv2.0+ & LGPLv2.1+', 'base', 'http://www.kernel.o=
rg/pub/linux/utils/kernel/hotplug/udev/udev.html', 'r7', 'pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  acl glib-2.0 libusb usbutils pciutils gperf-native libxslt-native =
util-linux module-init-tools update-rc.d-native', 'None', 'None', 'udev is =
a daemon which dynamically creates and removes device nodes from /dev/, han=
dles hotplug events and loads drivers at boot time.', 'MATCH', 'N/A', 'http=
://kernel.org/pub/linux/utils/kernel/hotplug/udev-182.tar.gz', 'Radu Moisan=
 <radu.moisan@intel.com>', 'None']
inserted (udev,182,182,GPLv2.0+ & LGPLv2.1+,base,r7,None,http://www.kernel.=
org/pub/linux/utils/kernel/hotplug/udev/udev.html,None,MATCH,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  acl glib-2.0 libusb usbutils pciutils gperf-native libxslt-nati=
ve util-linux module-init-tools update-rc.d-native,udev is a daemon which d=
ynamically creates and removes device nodes from /dev/, handles hotplug eve=
nts and loads drivers at boot time.,N/A,http://kernel.org/pub/linux/utils/k=
ernel/hotplug/udev-182.tar.gz,Radu Moisan <radu.moisan@intel.com>)
['sato-screenshot', '0.1+gitAUTOINC+c792e4e', '0.1+gitAUTOINC+c792e4e', 'GP=
Lv2 & GPLv2+', 'base', 'http://www.o-hand.com', 'r2', 'pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  matchbox-panel-2', 'http://bugzilla.openedhand.com/', 'None', 'An ult=
ra-simple screen capture utility, aimed at handheld devices', 'MATCH', 'N/A=
', 'git://git.yoctoproject.org/screenshot;protocol=3Dgit', 'Saul Wold <sgw@=
linux.intel.com>', 'None']
inserted (sato-screenshot,0.1+gitAUTOINC+c792e4e,0.1+gitAUTOINC+c792e4e,GPL=
v2 & GPLv2+,base,r2,None,http://www.o-hand.com,http://bugzilla.openedhand.c=
om/,MATCH,pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  matchbox-panel-2,An ultra-simple screen=
 capture utility, aimed at handheld devices,N/A,git://git.yoctoproject.org/=
screenshot;protocol=3Dgit,Saul Wold <sgw@linux.intel.com>)
['eglibc', '2.17', '2.17', 'GPLv2 & LGPLv2.1', 'libs', 'http://www.eglibc.o=
rg/home', 'r3', 'autoconf-native automake-native libtool-native gnu-config-=
native  virtual/i586-poky-linux-gcc-initial linux-libc-headers virtual/i586=
-poky-linux-libc-initial gperf-native kconfig-frontends-native', 'None', 'N=
one', "Embedded GLIBC (EGLIBC) is a variant of the GNU C Library (GLIBC) th=
at is designed to work well on embedded systems. EGLIBC strives to be sourc=
e and binary compatible with GLIBC. EGLIBC's goals include reduced footprin=
t, configurable components, better support for cross-compilation and cross-=
testing.", 'MATCH', 'N/A', 'http://downloads.yoctoproject.org/releases/egli=
bc/eglibc-2.17-svnr22064.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@in=
tel.com>', 'None']
inserted (eglibc,2.17,2.17,GPLv2 & LGPLv2.1,libs,r3,None,http://www.eglibc.=
org/home,None,MATCH,autoconf-native automake-native libtool-native gnu-conf=
ig-native  virtual/i586-poky-linux-gcc-initial linux-libc-headers virtual/i=
586-poky-linux-libc-initial gperf-native kconfig-frontends-native,Embedded =
GLIBC (EGLIBC) is a variant of the GNU C Library (GLIBC) that is designed t=
o work well on embedded systems. EGLIBC strives to be source and binary com=
patible with GLIBC. EGLIBC's goals include reduced footprint, configurable =
components, better support for cross-compilation and cross-testing.,N/A,htt=
p://downloads.yoctoproject.org/releases/eglibc/eglibc-2.17-svnr22064.tar.bz=
2,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['font-alias', '1.0.3', '1.0.3', 'MIT', 'x11/fonts', 'http://www.x.org', 'r=
2.3', 'pkgconfig-native autoconf-native automake-native libtool-native gnu-=
config-native  util-macros-native font-util-native', 'https://bugs.freedesk=
top.org/enter_bug.cgi?product=3Dxorg', '1', 'X font aliases.', 'MATCH', 'N/=
A', 'http://xorg.freedesktop.org/releases/individual/font/font-alias-1.0.3.=
tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (font-alias,1.0.3,1.0.3,MIT,x11/fonts,r2.3,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native gnu-config-native  util-ma=
cros-native font-util-native,X font aliases.,N/A,http://xorg.freedesktop.or=
g/releases/individual/font/font-alias-1.0.3.tar.bz2,Constantin Musca <const=
antinx.musca@intel.com>)
['tcp-wrappers', '7.6', '7.6', 'BSD', 'console/network', 'unknown', 'r10', =
' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  ', 'None', 'None', 'Tools for monitoring and filtering incoming reque=
sts for tcp       services.', 'MATCH', 'N/A', 'ftp://ftp.porcupine.org/pub/=
security/tcp_wrappers_7.6.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None=
']
inserted (tcp-wrappers,7.6,7.6,BSD,console/network,r10,None,unknown,None,MA=
TCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  ,Tools for monitoring and filtering incoming requests for tcp     =
  services.,N/A,ftp://ftp.porcupine.org/pub/security/tcp_wrappers_7.6.tar.g=
z,Saul Wold <sgw@linux.intel.com>)
['bjam-native', '1.53.0', '1.53.0', 'BSL-1.0 & MIT & Python-2.0', 'devel', =
'http://www.boost.org/', 'r0', ' ', 'None', 'None', 'Portable Boost.Jam bui=
ld tool for boost', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/bjam/=
boost_1_53_0.tar.bz2', 'None', 'None']
inserted (bjam-native,1.53.0,1.53.0,BSL-1.0 & MIT & Python-2.0,devel,r0,Non=
e,http://www.boost.org/,None,MATCH, ,Portable Boost.Jam build tool for boos=
t,N/A,http://downloads.sourceforge.net/bjam/boost_1_53_0.tar.bz2,None)
['xf86-video-vesa', '2.3.2', '2.3.2', 'MIT-X', 'x11/drivers', 'http://www.x=
=2Eorg', 'r21.0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextpro=
to fontsproto virtual/xserver xproto randrproto util-macros virtual/libx11 =
libxvmc drm xf86driproto glproto     virtual/libgl xineramaproto xf86dripro=
to libpciaccess', 'https://bugs.freedesktop.org', '2', 'vesa is an Xorg dri=
ver for generic VESA video cards. It can drive most VESA-compatible video c=
ards, but only makes use of the basic standard VESA core that is common to =
these cards. The driver supports depths 8, 15 16 and 24.', 'MATCH', 'N/A', =
'http://xorg.freedesktop.org/releases/individual/driver/xf86-video-vesa-2.3=
=2E2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86-video-vesa,2.3.2,2.3.2,MIT-X,x11/drivers,r21.0,2,http://www.=
x.org,https://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  renderpr=
oto videoproto xextproto fontsproto virtual/xserver xproto randrproto util-=
macros virtual/libx11 libxvmc drm xf86driproto glproto     virtual/libgl xi=
neramaproto xf86driproto libpciaccess,vesa is an Xorg driver for generic VE=
SA video cards. It can drive most VESA-compatible video cards, but only mak=
es use of the basic standard VESA core that is common to these cards. The d=
river supports depths 8, 15 16 and 24.,N/A,http://xorg.freedesktop.org/rele=
ases/individual/driver/xf86-video-vesa-2.3.2.tar.bz2,Laurentiu Palcu <laure=
ntiu.palcu@intel.com>)
['libfontenc', '1.1.1', '1.1.1', 'MIT', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros zlib xproto font-util', 'https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libfontenc is a l=
ibrary which helps font libraries portably determine and deal with differen=
t encodings of fonts.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releas=
es/individual/lib/libfontenc-1.1.1.tar.bz2', 'Constantin Musca <constantinx=
=2Emusca@intel.com>', 'None']
inserted (libfontenc,1.1.1,1.1.1,MIT,x11/libs,r0,1,http://www.x.org,https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  util-macros zlib xproto font-util,libfontenc is a library which hel=
ps font libraries portably determine and deal with different encodings of f=
onts.,N/A,http://xorg.freedesktop.org/releases/individual/lib/libfontenc-1.=
1.1.tar.bz2,Constantin Musca <constantinx.musca@intel.com>)
['texi2html', '5.0', '5.0', 'GPLv2', 'console/utils', 'http://www.nongnu.or=
g/texi2html/', 'r2', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'N=
one', 'Perl script that converts Texinfo to HTML', 'MATCH', 'N/A', 'http://=
download.savannah.gnu.org/releases/texi2html/texi2html-5.0.tar.bz2', 'Saul =
Wold <sgw@linux.intel.com>', 'None']
inserted (texi2html,5.0,5.0,GPLv2,console/utils,r2,None,http://www.nongnu.o=
rg/texi2html/,None,MATCH,autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Perl scri=
pt that converts Texinfo to HTML,N/A,http://download.savannah.gnu.org/relea=
ses/texi2html/texi2html-5.0.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['rsync', '3.0.9', '3.0.9', 'GPLv3+', 'console/network', 'http://rsync.samb=
a.org/', 'r0', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  popt', 'http://rsync.samba.org/bugzilla.html', 'No=
ne', 'A file-synchronization tool', 'MATCH', 'N/A', 'http://rsync.samba.org=
/ftp/rsync/src/rsync-3.0.9.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'Non=
e']
inserted (rsync,3.0.9,3.0.9,GPLv3+,console/network,r0,None,http://rsync.sam=
ba.org/,http://rsync.samba.org/bugzilla.html,MATCH,autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  popt,A file-syn=
chronization tool,N/A,http://rsync.samba.org/ftp/rsync/src/rsync-3.0.9.tar.=
gz,Saul Wold <sgw@linux.intel.com>)
['intltool', '0.50.2', '0.51.0', 'GPLv2', 'devel', 'unknown', 'r0', 'pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  libxml-parser-perl-native perl-native', 'None', 'None',=
 'Utility scripts for internationalizing XML', 'UPDATE', 'N/A', 'http://lau=
nchpad.net/intltool/trunk/0.50.2/+download/intltool-0.50.2.tar.gz', 'Bogdan=
 Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (intltool,0.50.2,0.51.0,GPLv2,devel,r0,None,unknown,None,UPDATE,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  libxml-parser-perl-native perl-native,Utility scrip=
ts for internationalizing XML,N/A,http://launchpad.net/intltool/trunk/0.50.=
2/+download/intltool-0.50.2.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@int=
el.com>)
['psmisc', '22.20', '22.20', 'GPLv2', 'base', 'unknown', 'r0', 'autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native virtual=
/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ncurses virtual/libintl virtual/update-alterna=
tives', 'None', 'None', 'The psmisc package contains utilities for managing=
 processes on your system: pstree, killall and fuser.  The pstree command d=
isplays a tree structure of all of the running processes on your system.  T=
he killall command sends a specified signal (SIGTERM if nothing is specifie=
d) to processes identified by name.  The fuser command identifies the PIDs =
of processes that are using specified files or filesystems.', 'MATCH', 'N/A=
', 'http://downloads.sourceforge.net/psmisc/psmisc-22.20.tar.gz', 'Saul Wol=
d <sgw@linux.intel.com>', 'None']
inserted (psmisc,22.20,22.20,GPLv2,base,r0,None,unknown,None,MATCH,autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native virt=
ual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ncurses virtual/libintl virtual/update-alte=
rnatives,The psmisc package contains utilities for managing processes on yo=
ur system: pstree, killall and fuser.  The pstree command displays a tree s=
tructure of all of the running processes on your system.  The killall comma=
nd sends a specified signal (SIGTERM if nothing is specified) to processes =
identified by name.  The fuser command identifies the PIDs of processes tha=
t are using specified files or filesystems.,N/A,http://downloads.sourceforg=
e.net/psmisc/psmisc-22.20.tar.gz,Saul Wold <sgw@linux.intel.com>)
['libxi', '1.7', '1.7.1', 'MIT & MIT-style', 'x11/libs', 'http://www.x.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros libxext inputproto', 'https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libxi is an ext=
ension to the X11 protocol to support input devices other than the core X k=
eyboard and pointer.  It allows client programs to select input from these =
devices independently from each other and independently from the core devic=
es.', 'UPDATE', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib=
/libXi-1.7.tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>', 'Non=
e']
inserted (libxi,1.7,1.7.1,MIT & MIT-style,x11/libs,r0,1,http://www.x.org,ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,UPDATE,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  util-macros libxext inputproto,libxi is an extension to the X=
11 protocol to support input devices other than the core X keyboard and poi=
nter.  It allows client programs to select input from these devices indepen=
dently from each other and independently from the core devices.,N/A,http://=
xorg.freedesktop.org/releases/individual/lib/libXi-1.7.tar.bz2,Constantin M=
usca <constantinx.musca@intel.com>)
['docbook-sgml-dtd-4.5-native', '1.0', '4.5', 'OASIS', 'base', 'http://www.=
docbook.org/sgml/', 'r3.0', ' sgml-common-native', 'None', 'None', 'Documen=
t type definitions for verification of SGML data files against the DocBook =
rule set', 'UPDATE', 'N/A', 'http://www.docbook.org/sgml/4.5/docbook-4.5.zi=
p', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (docbook-sgml-dtd-4.5-native,1.0,4.5,OASIS,base,r3.0,None,http://w=
ww.docbook.org/sgml/,None,UPDATE, sgml-common-native,Document type definiti=
ons for verification of SGML data files against the DocBook rule set,N/A,ht=
tp://www.docbook.org/sgml/4.5/docbook-4.5.zip,Saul Wold <sgw@linux.intel.co=
m>)
['automake', '1.12.6', '1.13.1', 'GPLv2', 'devel', 'http://www.gnu.org/soft=
ware/automake/', 'r0', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  ', 'None', 'None', "Automake is a tool for=
 automatically generating `Makefile.in' files compliant with the GNU Coding=
 Standards. Automake requires the use of Autoconf.", 'UPDATE', '1.12', 'ftp=
://ftp.gnu.org/gnu/automake/automake-1.12.6.tar.gz', 'Bogdan Marinescu <bog=
dan.a.marinescu@intel.com>', 'None']
inserted (automake,1.12.6,1.13.1,GPLv2,devel,r0,None,http://www.gnu.org/sof=
tware/automake/,None,UPDATE,autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  ,Automake is a tool for automatically =
generating `Makefile.in' files compliant with the GNU Coding Standards. Aut=
omake requires the use of Autoconf.,1.12,ftp://ftp.gnu.org/gnu/automake/aut=
omake-1.12.6.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['libice', '1.0.8', '1.0.8', 'MIT-style', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  util-macros xproto xtrans', 'https://bugs.f=
reedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Inter-Client Exchan=
ge (ICE) protocol provides a generic framework for building protocols on to=
p of reliable, byte-stream transport connections. It provides basic mechani=
sms for setting up and shutting down connections, for performing authentica=
tion, for negotiating versions, and for reporting errors. ', 'MATCH', 'N/A'=
, 'http://xorg.freedesktop.org/releases/individual/lib/libICE-1.0.8.tar.bz2=
', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (libice,1.0.8,1.0.8,MIT-style,x11/libs,r0,1,http://www.x.org,https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  util-macros xproto xtrans,The Inter-Client Exchange (ICE) protoco=
l provides a generic framework for building protocols on top of reliable, b=
yte-stream transport connections. It provides basic mechanisms for setting =
up and shutting down connections, for performing authentication, for negoti=
ating versions, and for reporting errors. ,N/A,http://xorg.freedesktop.org/=
releases/individual/lib/libICE-1.0.8.tar.bz2,Constantin Musca <constantinx.=
musca@intel.com>)
['libxt', '1.1.3', '1.1.3', 'MIT & MIT-style', 'x11/libs', 'http://www.x.or=
g', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  util-macros util-linux libxcb libsm vi=
rtual/libx11 kbproto libxdmcp', 'https://bugs.freedesktop.org/enter_bug.cgi=
?product=3Dxorg', '1', 'The Intrinsics are a programming library tailored t=
o the special requirements of user interface construction within a network =
window system, specifically the X Window System. The Intrinsics and a widge=
t set make up an X Toolkit. The Intrinsics provide the base mechanism neces=
sary to build a wide variety of interoperating widget sets and application =
environments. The Intrinsics are a layer on top of Xlib, the C Library X In=
terface. They extend the fundamental abstractions provided by the X Window =
System while still remaining independent of any particular user interface p=
olicy or style.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/ind=
ividual/lib/libXt-1.1.3.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.c=
om>', 'None']
inserted (libxt,1.1.3,1.1.3,MIT & MIT-style,x11/libs,r0,1,http://www.x.org,=
https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  util-macros util-linux libxcb libsm virtual/libx11 kbproto l=
ibxdmcp,The Intrinsics are a programming library tailored to the special re=
quirements of user interface construction within a network window system, s=
pecifically the X Window System. The Intrinsics and a widget set make up an=
 X Toolkit. The Intrinsics provide the base mechanism necessary to build a =
wide variety of interoperating widget sets and application environments. Th=
e Intrinsics are a layer on top of Xlib, the C Library X Interface. They ex=
tend the fundamental abstractions provided by the X Window System while sti=
ll remaining independent of any particular user interface policy or style.,=
N/A,http://xorg.freedesktop.org/releases/individual/lib/libXt-1.1.3.tar.bz2=
,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['libxv', '1.0.7', '1.0.7', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros libxext videoproto', 'https://bu=
gs.freedesktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'libXv provides a=
n X Window System client interface to the X Video extension to the X protoc=
ol. The X Video extension allows for accelerated drawing of videos.  Hardwa=
re adaptors are exposed to clients, which may draw in a number of colourspa=
ces, including YUV.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases=
/individual/lib/libXv-1.0.7.tar.bz2', 'Constantin Musca <constantinx.musca@=
intel.com>', 'None']
inserted (libxv,1.0.7,1.0.7,MIT-style,x11/libs,r0,None,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  util-macros libxext videoproto,libXv provides an X Window Syste=
m client interface to the X Video extension to the X protocol. The X Video =
extension allows for accelerated drawing of videos.  Hardware adaptors are =
exposed to clients, which may draw in a number of colourspaces, including Y=
UV.,N/A,http://xorg.freedesktop.org/releases/individual/lib/libXv-1.0.7.tar=
=2Ebz2,Constantin Musca <constantinx.musca@intel.com>)
['icu', '50.1.2', '50.1.2', 'ICU', 'base', 'http://site.icu-project.org/', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  icu-native', 'None', 'None', 'The Internat=
ional Component for Unicode (ICU) is a mature, portable set of C/C++ and Ja=
va libraries for Unicode support, software internationalization (I18N) and =
globalization (G11N), giving applications the same results on all platforms=
=2E', 'MATCH', '4.8.1.1', 'http://download.icu-project.org/files/icu4c/50.1=
=2E2/icu4c-50_1_2-src.tgz', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', =
'None']
inserted (icu,50.1.2,50.1.2,ICU,base,r0,None,http://site.icu-project.org/,N=
one,MATCH,pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  icu-native,The International Component =
for Unicode (ICU) is a mature, portable set of C/C++ and Java libraries for=
 Unicode support, software internationalization (I18N) and globalization (G=
11N), giving applications the same results on all platforms.,4.8.1.1,http:/=
/download.icu-project.org/files/icu4c/50.1.2/icu4c-50_1_2-src.tgz,Andrei Di=
nu <andrei.adrianx.dinu@intel.com>)
['formfactor', '0.0', 'INVALID', 'MIT', 'base', 'unknown', 'r21', ' ', 'Non=
e', 'None', 'Device formfactor information', 'MATCH', '0.0', 'file://config=
', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (formfactor,0.0,INVALID,MIT,base,r21,None,unknown,None,MATCH, ,Dev=
ice formfactor information,0.0,file://config,Cristian Iorga <cristian.iorga=
@intel.com>)
['bc', '1.06', '1.06', 'GPLv2+ & LGPLv2.1', 'base', 'http://www.gnu.org/sof=
tware/bc/bc.html', 'r2', 'autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  flex virtual/update-alternatives', '', '=
None', 'An arbitrary precision calculator language.', 'MATCH', '1.06', 'ftp=
://ftp.gnu.org/gnu/bc/bc-1.06.tar.gz', 'Radu Moisan <radu.moisan@intel.com>=
', 'None']
inserted (bc,1.06,1.06,GPLv2+ & LGPLv2.1,base,r2,None,http://www.gnu.org/so=
ftware/bc/bc.html,,MATCH,autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  flex virtual/update-alternatives,An arbit=
rary precision calculator language.,1.06,ftp://ftp.gnu.org/gnu/bc/bc-1.06.t=
ar.gz,Radu Moisan <radu.moisan@intel.com>)
['update-rc.d', '0.7', '0.7', 'GPLv2+', 'base', 'unknown', 'r5', ' ', 'None=
', 'None', 'update-rc.d is a utilities that allows the management of symlin=
ks to the initscripts in the /etc/rcN.d directory structure.', 'MATCH', 'N/=
A', 'git://github.com/philb/update-rc.d.git;protocol=3Dgit', 'Radu Moisan <=
radu.moisan@intel.com>', 'None']
inserted (update-rc.d,0.7,0.7,GPLv2+,base,r5,None,unknown,None,MATCH, ,upda=
te-rc.d is a utilities that allows the management of symlinks to the initsc=
ripts in the /etc/rcN.d directory structure.,N/A,git://github.com/philb/upd=
ate-rc.d.git;protocol=3Dgit,Radu Moisan <radu.moisan@intel.com>)
['linux-yocto-rt', '3.8.4+gitAUTOINC+27b63fd', '3.8.4+gitAUTOINC+ddd23a8', =
'GPLv2', 'kernel', 'unknown', 'r4.1', '  virtual/i586-poky-linux-gcc kmod-n=
ative depmodwrapper-cross', 'None', 'None', 'Yocto Kernel', 'MATCH', 'N/A',=
 'git://git.yoctoproject.org/linux-yocto-3.8.git;protocol=3Dgit;bareclone=
=3D1;branch=3Dstandard/preempt-rt/base,meta;name=3Dmachine,meta', 'Darren H=
art <dvhart@linux.intel.com>', 'None']
inserted (linux-yocto-rt,3.8.4+gitAUTOINC+27b63fd,3.8.4+gitAUTOINC+ddd23a8,=
GPLv2,kernel,r4.1,None,unknown,None,MATCH,  virtual/i586-poky-linux-gcc kmo=
d-native depmodwrapper-cross,Yocto Kernel,N/A,git://git.yoctoproject.org/li=
nux-yocto-3.8.git;protocol=3Dgit;bareclone=3D1;branch=3Dstandard/preempt-rt=
/base,meta;name=3Dmachine,meta,Darren Hart <dvhart@linux.intel.com>)
['kern-tools-native', '0.1+gitAUTOINC+71ffb08', '0.1+gitAUTOINC+71ffb08', '=
GPLv2', 'base', 'unknown', 'r12', ' git-native guilt-native', 'None', 'None=
', 'Scripts and utilities for managing Yocto branched kernels.', 'MATCH', '=
N/A', 'git://git.yoctoproject.org/yocto-kernel-tools.git;protocol=3Dgit', '=
Bruce Ashfield <bruce.ashfield@windriver.com>', 'None']
inserted (kern-tools-native,0.1+gitAUTOINC+71ffb08,0.1+gitAUTOINC+71ffb08,G=
PLv2,base,r12,None,unknown,None,MATCH, git-native guilt-native,Scripts and =
utilities for managing Yocto branched kernels.,N/A,git://git.yoctoproject.o=
rg/yocto-kernel-tools.git;protocol=3Dgit,Bruce Ashfield <bruce.ashfield@win=
driver.com>)
['python-gst', '0.10.22', '0.10.22', 'LGPLv2.1', 'devel/python', 'unknown',=
 'r2', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base python-pygobje=
ct python-native python  python-native ', 'None', 'None', 'Python Gstreamer=
 bindings', 'MATCH', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-pytho=
n/gst-python-0.10.22.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@intel.=
com>', 'None']
inserted (python-gst,0.10.22,0.10.22,LGPLv2.1,devel/python,r2,None,unknown,=
None,MATCH,pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base python-pygo=
bject python-native python  python-native ,Python Gstreamer bindings,N/A,ht=
tp://gstreamer.freedesktop.org/src/gst-python/gst-python-0.10.22.tar.bz2,Bo=
gdan Marinescu <bogdan.a.marinescu@intel.com>)
['syslinux', '4.03', '4.06', 'GPLv2+', 'base', 'http://syslinux.zytor.com/'=
, 'r9', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  nasm-native', 'None', 'None', 'A multi-purpose linux bootload=
er', 'UPDATE', 'N/A', 'http://kernel.org/pub/linux/utils/boot/syslinux/4.xx=
/syslinux-4.03.tar.bz2', 'Darren Hart <dvhart@linux.intel.com>', 'Waiting f=
or 4.06 for 3.3 kernel headers support']
inserted (syslinux,4.03,4.06,GPLv2+,base,r9,None,http://syslinux.zytor.com/=
,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  nasm-native,A multi-purpose linux bootloader,N/A,http://k=
ernel.org/pub/linux/utils/boot/syslinux/4.xx/syslinux-4.03.tar.bz2,Darren H=
art <dvhart@linux.intel.com>)
['wget', '1.14', '1.14', 'GPLv3', 'console/network', 'unknown', 'r16.0', 'a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  openssl virtual/update-alternatives'=
, 'None', 'None', 'A console URL download utility featuring HTTP, FTP, and =
more.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/wget/wget-1.14.tar.gz', 'Sau=
l Wold <sgw@linux.intel.com>', 'None']
inserted (wget,1.14,1.14,GPLv3,console/network,r16.0,None,unknown,None,MATC=
H,autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  openssl virtual/update-alternativ=
es,A console URL download utility featuring HTTP, FTP, and more.,N/A,ftp://=
ftp.gnu.org/gnu/wget/wget-1.14.tar.gz,Saul Wold <sgw@linux.intel.com>)
['libxml-parser-perl', '2.41', '2.41', 'Artistic-1.0 | GPL-1.0', 'libs', 'u=
nknown', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc   expat expat-native perl perl-native', 'None', 'None',=
 'XML::Parser - A perl module for parsing XML documents', 'MATCH', 'N/A', '=
http://www.cpan.org/modules/by-module/XML/XML-Parser-2.41.tar.gz', 'Bogdan =
Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (libxml-parser-perl,2.41,2.41,Artistic-1.0 | GPL-1.0,libs,r3,None,=
unknown,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc   expat expat-native perl perl-native,XML::Parser - =
A perl module for parsing XML documents,N/A,http://www.cpan.org/modules/by-=
module/XML/XML-Parser-2.41.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@inte=
l.com>)
['xcb-util-keysyms', '0.3.9', '0.3.9', 'MIT', 'x11/libs', 'http://xcb.freed=
esktop.org/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native'=
, 'https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'The =
xcb-util module provides a number of libraries which sit on top of libxcb, =
the core X protocol library, and some of the extension libraries. These exp=
erimental libraries provide convenience functions and interfaces which make=
 the raw X protocol more usable. Some of the libraries also provide client-=
side code which is not strictly part of the X protocol but which have tradi=
tionally been provided by Xlib.', 'MATCH', 'N/A', 'http://xcb.freedesktop.o=
rg/dist/xcb-util-keysyms-0.3.9.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@=
intel.com>', 'None']
inserted (xcb-util-keysyms,0.3.9,0.3.9,MIT,x11/libs,r0,None,http://xcb.free=
desktop.org/XcbUtil/,https://bugs.freedesktop.org/enter_bug.cgi?product=3DX=
CB,MATCH,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  libxcb gperf-native,The xcb-util module =
provides a number of libraries which sit on top of libxcb, the core X proto=
col library, and some of the extension libraries. These experimental librar=
ies provide convenience functions and interfaces which make the raw X proto=
col more usable. Some of the libraries also provide client-side code which =
is not strictly part of the X protocol but which have traditionally been pr=
ovided by Xlib.,N/A,http://xcb.freedesktop.org/dist/xcb-util-keysyms-0.3.9.=
tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['pcmciautils', '018', '018', 'GPLv2', 'kernel/userland', 'http://kernel.or=
g/pub/linux/utils/kernel/pcmcia/pcmcia.html', 'r1', ' virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  udev sysfsutils f=
lex-native', 'None', 'None', 'Linux Kernel 2.6 Userland Utilities for the P=
CMCIA Subsystem', 'MATCH', 'N/A', 'http://kernel.org/pub/linux/utils/kernel=
/pcmcia/pcmciautils-018.tar.bz2', 'Constantin Musca <constantinx.musca@inte=
l.com>', 'None']
inserted (pcmciautils,018,018,GPLv2,kernel/userland,r1,None,http://kernel.o=
rg/pub/linux/utils/kernel/pcmcia/pcmcia.html,None,MATCH, virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  udev sysfsutil=
s flex-native,Linux Kernel 2.6 Userland Utilities for the PCMCIA Subsystem,=
N/A,http://kernel.org/pub/linux/utils/kernel/pcmcia/pcmciautils-018.tar.bz2=
,Constantin Musca <constantinx.musca@intel.com>)
['videoproto', '2.3.1', '2.3.1', 'MIT & MIT-style', 'x11/libs', 'http://www=
=2Ex.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.fre=
edesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the=
 wire protocol for the X Video extension.  This extension alows for accerla=
ted drawing of videos.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/relea=
ses/individual/proto/videoproto-2.3.1.tar.bz2', 'Constantin Musca <constant=
inx.musca@intel.com>', 'None']
inserted (videoproto,2.3.1,2.3.1,MIT & MIT-style,x11/libs,r0,1,http://www.x=
=2Eorg,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  util-macros,This package provides the wire protocol f=
or the X Video extension.  This extension alows for accerlated drawing of v=
ideos.,N/A,http://xorg.freedesktop.org/releases/individual/proto/videoproto=
-2.3.1.tar.bz2,Constantin Musca <constantinx.musca@intel.com>)
['tar-replacement-native', '1.26', '1.26', 'GPLv3', 'base', 'http://www.gnu=
=2Eorg/software/tar/', 'r5', 'autoconf-native automake-native libtool-nativ=
e gnu-config-native gettext-minimal-native  ', 'None', 'None', 'GNU tar sav=
es many files together into a single tape or disk archive, and can restore =
individual files from the archive.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu=
/tar/tar-1.26.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (tar-replacement-native,1.26,1.26,GPLv3,base,r5,None,http://www.gn=
u.org/software/tar/,None,MATCH,autoconf-native automake-native libtool-nati=
ve gnu-config-native gettext-minimal-native  ,GNU tar saves many files toge=
ther into a single tape or disk archive, and can restore individual files f=
rom the archive.,N/A,ftp://ftp.gnu.org/gnu/tar/tar-1.26.tar.bz2,Saul Wold <=
sgw@linux.intel.com>)
['anjuta-remote-run', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r0', ' v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  ', 'None', 'None', 'Provides on-device script for interaction with the A=
njuta IDE', 'MATCH', 'N/A', 'file://anjuta-remote-run', 'Saul Wold <sgw@lin=
ux.intel.com>', 'None']
inserted (anjuta-remote-run,1.0,INVALID,MIT,base,r0,None,unknown,None,MATCH=
, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  ,Provides on-device script for interaction with the Anjuta IDE,N/A,fi=
le://anjuta-remote-run,Saul Wold <sgw@linux.intel.com>)
['libxres', '1.0.6', '1.0.6', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  util-macros libxext resourceproto', 'https://bug=
s.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXRes provides an =
X Window System client interface to the Resource extension to the X protoco=
l.  The Resource extension allows for X clients to see and monitor the X re=
source usage of various clients (pixmaps, et al).', 'MATCH', 'N/A', 'http:/=
/xorg.freedesktop.org/releases/individual/lib/libXres-1.0.6.tar.bz2', 'Cons=
tantin Musca <constantinx.musca@intel.com>', 'None']
inserted (libxres,1.0.6,1.0.6,MIT,x11/libs,r0,1,http://www.x.org,https://bu=
gs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  util-macros libxext resourceproto,libXRes provides an X Window System =
client interface to the Resource extension to the X protocol.  The Resource=
 extension allows for X clients to see and monitor the X resource usage of =
various clients (pixmaps, et al).,N/A,http://xorg.freedesktop.org/releases/=
individual/lib/libXres-1.0.6.tar.bz2,Constantin Musca <constantinx.musca@in=
tel.com>)
['docbook-utils-native', '0.6.14', '0.6.14', 'GPLv2', 'console/utils', 'htt=
p://sources.redhat.com/docbook-tools/', 'r3', 'autoconf-native automake-nat=
ive libtool-native gnu-config-native  openjade-native sgmlspl-native docboo=
k-dsssl-stylesheets-native docbook-sgml-dtd-3.1-native', 'None', 'None', 'A=
 collection of all the free software tools you need to work on and format D=
ocBook documents.', 'MATCH', 'N/A', 'ftp://sources.redhat.com/pub/docbook-t=
ools/new-trials/SOURCES/docbook-utils-0.6.14.tar.gz', 'Andrei Dinu <andrei.=
adrianx.dinu@intel.com>', 'None']
inserted (docbook-utils-native,0.6.14,0.6.14,GPLv2,console/utils,r3,None,ht=
tp://sources.redhat.com/docbook-tools/,None,MATCH,autoconf-native automake-=
native libtool-native gnu-config-native  openjade-native sgmlspl-native doc=
book-dsssl-stylesheets-native docbook-sgml-dtd-3.1-native,A collection of a=
ll the free software tools you need to work on and format DocBook documents=
=2E,N/A,ftp://sources.redhat.com/pub/docbook-tools/new-trials/SOURCES/docbo=
ok-utils-0.6.14.tar.gz,Andrei Dinu <andrei.adrianx.dinu@intel.com>)
['libogg', '1.3.0', '1.3.0', 'BSD', 'libs', 'http://xiph.org/', 'r1', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ', 'https://trac.xiph.org/newticket', 'None', 'libogg=
 is the bitstream and framing library for the Ogg project. It provides func=
tions which are necessary to codec libraries like libvorbis.', 'MATCH', 'N/=
A', 'http://downloads.xiph.org/releases/ogg/libogg-1.3.0.tar.gz', 'Cristian=
 Iorga <cristian.iorga@intel.com>', 'None']
inserted (libogg,1.3.0,1.3.0,BSD,libs,r1,None,http://xiph.org/,https://trac=
=2Exiph.org/newticket,MATCH,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  ,libogg is the bitstr=
eam and framing library for the Ogg project. It provides functions which ar=
e necessary to codec libraries like libvorbis.,N/A,http://downloads.xiph.or=
g/releases/ogg/libogg-1.3.0.tar.gz,Cristian Iorga <cristian.iorga@intel.com=
>)
['xf86vidmodeproto', '2.3.1', '2.3.1', 'MIT', 'x11/libs', 'http://www.x.org=
', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the XFree86 video mode extension.  This extension allows clien=
t applications to get and set video mode timings.', 'MATCH', 'N/A', 'http:/=
/xorg.freedesktop.org/releases/individual/proto/xf86vidmodeproto-2.3.1.tar.=
bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86vidmodeproto,2.3.1,2.3.1,MIT,x11/libs,r1,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  util-macros,This package provides the wire protocol for the X=
Free86 video mode extension.  This extension allows client applications to =
get and set video mode timings.,N/A,http://xorg.freedesktop.org/releases/in=
dividual/proto/xf86vidmodeproto-2.3.1.tar.bz2,Laurentiu Palcu <laurentiu.pa=
lcu@intel.com>)
['clutter-gtk-1.8', '0.11.4', '0.11.4', 'LGPLv2', 'base', 'http://www.clutt=
er-project.org/', 'r0', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native virtual/gettext gettext-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  gtk+ clutter-1.8 gtk-doc-stub-native', 'None', 'None', 'Clutter GTK+=
', 'MATCH', 'N/A', 'http://source.clutter-project.org/sources/clutter-gtk/0=
=2E11/clutter-gtk-0.11.4.tar.bz2', 'Ross Burton <ross.burton@intel.com>', '=
None']
inserted (clutter-gtk-1.8,0.11.4,0.11.4,LGPLv2,base,r0,None,http://www.clut=
ter-project.org/,None,MATCH,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native virtual/gettext gettext-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  gtk+ clutter-1.8 gtk-doc-stub-native,Clutter GTK+,N/A,http://sour=
ce.clutter-project.org/sources/clutter-gtk/0.11/clutter-gtk-0.11.4.tar.bz2,=
Ross Burton <ross.burton@intel.com>)
['shutdown-desktop', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r1', ' ',=
 'None', 'None', 'Provides an icon to shut down the system cleanly', 'MATCH=
', 'N/A', 'file://shutdown.desktop', 'Saul Wold <sgw@linux.intel.com>', 'No=
ne']
inserted (shutdown-desktop,1.0,INVALID,MIT,base,r1,None,unknown,None,MATCH,=
 ,Provides an icon to shut down the system cleanly,N/A,file://shutdown.desk=
top,Saul Wold <sgw@linux.intel.com>)
['sgml-common', '0.6.3', '0.6.3', 'GPLv2+', 'base', 'http://sources.redhat.=
com/docbook-tools/', 'r1', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'The sgml-common pa=
ckage gathers very basic stuff necessary to work with SGML and XML, such as=
 xml.dcl, a SGML declaration of XML; iso-entities, a list of the basic SGML=
 ISO entities; and install-catalog, a script used to add entries to (or rem=
ove entries from) centralized catalogs whose entries are pointers to SGML o=
pen catalogs, as defined by OASIS.', 'MATCH', 'N/A', 'ftp://sources.redhat.=
com/pub/docbook-tools/new-trials/SOURCES/sgml-common-0.6.3.tgz', 'Andrei Di=
nu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (sgml-common,0.6.3,0.6.3,GPLv2+,base,r1,None,http://sources.redhat=
=2Ecom/docbook-tools/,None,MATCH,autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  ,The sgml-common package gathers =
very basic stuff necessary to work with SGML and XML, such as xml.dcl, a SG=
ML declaration of XML; iso-entities, a list of the basic SGML ISO entities;=
 and install-catalog, a script used to add entries to (or remove entries fr=
om) centralized catalogs whose entries are pointers to SGML open catalogs, =
as defined by OASIS.,N/A,ftp://sources.redhat.com/pub/docbook-tools/new-tri=
als/SOURCES/sgml-common-0.6.3.tgz,Andrei Dinu <andrei.adrianx.dinu@intel.co=
m>)
['xtscal', '0.6.3', '0.6.3', 'GPLv2 & GPLv2+', 'x11/base', 'http://gpe.linu=
xtogo.org', 'r13', 'autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  virtual/libx11 libxft libxcalibrate', 'http://=
bugs.linuxtogo.org', 'None', 'Basic touchscreen calibration utility', 'MATC=
H', 'N/A', 'http://gpe.linuxtogo.org/download/source/xtscal-0.6.3.tar.bz2',=
 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xtscal,0.6.3,0.6.3,GPLv2 & GPLv2+,x11/base,r13,None,http://gpe.li=
nuxtogo.org,http://bugs.linuxtogo.org,MATCH,autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 libxft =
libxcalibrate,Basic touchscreen calibration utility,N/A,http://gpe.linuxtog=
o.org/download/source/xtscal-0.6.3.tar.bz2,Laurentiu Palcu <laurentiu.palcu=
@intel.com>)
['libxml-perl', '0.08', '0.08', 'Artistic-1.0 | GPL-1.0+', 'libs', 'unknown=
', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc   libxml-parser-perl perl perl-native', 'None', 'None', 'libx=
ml-perl is a collection of smaller Perl modules, scripts, and documents for=
 working with XML in Perl.  libxml-perl software works in combination with =
XML::Parser, PerlSAX, XML::DOM, XML::Grove and others.', 'MATCH', 'N/A', 'h=
ttp://www.cpan.org/modules/by-module/XML/libxml-perl-0.08.tar.gz', 'Saul Wo=
ld <sgw@linux.intel.com>', 'None']
inserted (libxml-perl,0.08,0.08,Artistic-1.0 | GPL-1.0+,libs,r3,None,unknow=
n,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc   libxml-parser-perl perl perl-native,libxml-perl is a col=
lection of smaller Perl modules, scripts, and documents for working with XM=
L in Perl.  libxml-perl software works in combination with XML::Parser, Per=
lSAX, XML::DOM, XML::Grove and others.,N/A,http://www.cpan.org/modules/by-m=
odule/XML/libxml-perl-0.08.tar.gz,Saul Wold <sgw@linux.intel.com>)
['matchbox-config-gtk', '0.0+gitAUTOINC+3ed74df', '0.0+gitAUTOINC+3ed74df',=
 'GPLv2+', 'base', 'http://matchbox-project.org', 'r0', 'pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  gconf gtk+', 'http://bugzilla.openedhand.com/', 'None', 'Matchbox G=
TK+ theme configuration application.', 'MATCH', 'N/A', 'git://git.yoctoproj=
ect.org/matchbox-config-gtk;protocol=3Dgit', 'Constantin Musca <constantinx=
=2Emusca@intel.com>', 'None']
inserted (matchbox-config-gtk,0.0+gitAUTOINC+3ed74df,0.0+gitAUTOINC+3ed74df=
,GPLv2+,base,r0,None,http://matchbox-project.org,http://bugzilla.openedhand=
=2Ecom/,MATCH,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  gconf gtk+,Matchbox GTK+ theme conf=
iguration application.,N/A,git://git.yoctoproject.org/matchbox-config-gtk;p=
rotocol=3Dgit,Constantin Musca <constantinx.musca@intel.com>)
['libxcursor', '1.1.13', '1.1.13', 'MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  util-macros libxrender libxfixes', 'h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Xcursor is=
 a simple library designed to help locate and load cursors. Cursors can be =
loaded from files or memory. A library of common cursors exists which map t=
o the standard X cursor names. Cursors can exist in several sizes and the l=
ibrary automatically picks the best size.', 'MATCH', 'N/A', 'http://xorg.fr=
eedesktop.org/releases/individual/lib/libXcursor-1.1.13.tar.bz2', 'Constant=
in Musca <constantinx.musca@intel.com>', 'None']
inserted (libxcursor,1.1.13,1.1.13,MIT-style,x11/libs,r0,1,http://www.x.org=
,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  util-macros libxrender libxfixes,Xcursor is a simple librar=
y designed to help locate and load cursors. Cursors can be loaded from file=
s or memory. A library of common cursors exists which map to the standard X=
 cursor names. Cursors can exist in several sizes and the library automatic=
ally picks the best size.,N/A,http://xorg.freedesktop.org/releases/individu=
al/lib/libXcursor-1.1.13.tar.bz2,Constantin Musca <constantinx.musca@intel.=
com>)
['pax-utils', '0.6', '0.7', 'GPLv2+', 'base', 'http://www.gentoo.org/proj/e=
n/hardened/pax-utils.xml', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'This is a small =
set of various PaX aware and related utilities for ELF binaries. It can che=
ck ELF binary files and running processes for issues that might be relevant=
 when using ELF binaries along with PaX, such as non-PIC code or executable=
 stack and heap.', 'UPDATE', 'N/A', 'http://gentoo.osuosl.org/distfiles/pax=
-utils-0.6.tar.xz', 'Andrei Dinu <andrei.adrianx.dinu@intel.com>', 'None']
inserted (pax-utils,0.6,0.7,GPLv2+,base,r0,None,http://www.gentoo.org/proj/=
en/hardened/pax-utils.xml,None,UPDATE, virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ,This is a small set of various =
PaX aware and related utilities for ELF binaries. It can check ELF binary f=
iles and running processes for issues that might be relevant when using ELF=
 binaries along with PaX, such as non-PIC code or executable stack and heap=
=2E,N/A,http://gentoo.osuosl.org/distfiles/pax-utils-0.6.tar.xz,Andrei Dinu=
 <andrei.adrianx.dinu@intel.com>)
['ppp', '2.4.5', '2.4.5', 'BSD & GPLv2+ & LGPLv2+ & PD', 'console/network',=
 'http://samba.org/ppp/', 'r6', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  libpcap', 'http://ppp.samba.org/c=
gi-bin/ppp-bugs', 'None', "ppp (Paul's PPP Package) is an open source packa=
ge which implements the Point-to-Point Protocol (PPP) on Linux and Solaris =
systems.", 'MATCH', 'N/A', 'http://ppp.samba.org/ftp/ppp/ppp-2.4.5.tar.gz',=
 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (ppp,2.4.5,2.4.5,BSD & GPLv2+ & LGPLv2+ & PD,console/network,r6,No=
ne,http://samba.org/ppp/,http://ppp.samba.org/cgi-bin/ppp-bugs,MATCH,autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  libpcap,ppp (Paul's PPP Package) is an open source package which impleme=
nts the Point-to-Point Protocol (PPP) on Linux and Solaris systems.,N/A,htt=
p://ppp.samba.org/ftp/ppp/ppp-2.4.5.tar.gz,Cristian Iorga <cristian.iorga@i=
ntel.com>)
['watchdog', '5.13', '5.13', 'GPL-2.0+', 'base', 'http://watchdog.sourcefor=
ge.net/', 'r0', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  ', 'http://sourceforge.net/tracker/?group_id=3D17=
2030&atid=3D860194', 'None', 'Watchdog is a daemon that checks if your syst=
em is still working. If programs in user space are not longer executed it w=
ill reboot the system.', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/=
watchdog/watchdog-5.13.tar.gz', 'Radu Moisan <radu.moisan@intel.com>', 'Non=
e']
inserted (watchdog,5.13,5.13,GPL-2.0+,base,r0,None,http://watchdog.sourcefo=
rge.net/,http://sourceforge.net/tracker/?group_id=3D172030&atid=3D860194,MA=
TCH,autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  ,Watchdog is a daemon that checks if your system is still work=
ing. If programs in user space are not longer executed it will reboot the s=
ystem.,N/A,http://downloads.sourceforge.net/watchdog/watchdog-5.13.tar.gz,R=
adu Moisan <radu.moisan@intel.com>)
['glib-2.0', '2.34.3', '2.36.1', 'LGPLv2+ & BSD & PD', 'libs', 'unknown', '=
r2', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0-nat=
ive virtual/libiconv libffi python-argparse-native zlib gtk-doc-stub-native=
', 'http://bugzilla.gnome.org', '1', 'GLib is a general-purpose utility lib=
rary, which provides many useful data types, macros, type conversions, stri=
ng utilities, file utilities, a main loop abstraction, and so on.', 'UPDATE=
', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/glib/2.34/glib-2.34.3.tar=
=2Exz', 'Cristian Iorga <cristian.iorga@intel.com>', '2.35.8 is unstable']
inserted (glib-2.0,2.34.3,2.36.1,LGPLv2+ & BSD & PD,libs,r2,1,unknown,http:=
//bugzilla.gnome.org,UPDATE,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native virtual/gettext gettext-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  glib-2.0-native virtual/libiconv libffi python-argparse-native zl=
ib gtk-doc-stub-native,GLib is a general-purpose utility library, which pro=
vides many useful data types, macros, type conversions, string utilities, f=
ile utilities, a main loop abstraction, and so on.,N/A,http://ftp.gnome.org=
/pub/GNOME/sources/glib/2.34/glib-2.34.3.tar.xz,Cristian Iorga <cristian.io=
rga@intel.com>)
['gst-plugins-base', '0.10.36', '1.0.6', 'GPLv2+ & LGPLv2+', 'multimedia', =
'http://gstreamer.freedesktop.org/', 'r7', 'pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native virtual/ge=
ttext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  gstreamer virtual/libx11 libxv libsm libice alsa-=
lib freetype liboil libogg libvorbis libtheora util-linux tremor', 'https:/=
/bugzilla.gnome.org/enter_bug.cgi?product=3DGstreamer', 'None', 'Plugins fo=
r GStreamer', 'UPDATE', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-pl=
ugins-base/gst-plugins-base-0.10.36.tar.bz2', 'Cristian Iorga <cristian.ior=
ga@intel.com>', 'not compatible with gst-fluendo 0.10.x']
inserted (gst-plugins-base,0.10.36,1.0.6,GPLv2+ & LGPLv2+,multimedia,r7,Non=
e,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/enter_bug.cg=
i?product=3DGstreamer,UPDATE,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  gstreamer virtual/libx11 libxv libsm libice alsa-lib freetype li=
boil libogg libvorbis libtheora util-linux tremor,Plugins for GStreamer,N/A=
,http://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-0.1=
0.36.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['xvinfo', '1.1.2', '1.1.2', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros-native virtual/libx11  libxv', '=
https://bugs.freedesktop.org', '1', 'xvinfo prints out the capabilities of =
any video adaptors associated with the display that are accessible through =
the X-Video extension.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/relea=
ses/individual/app/xvinfo-1.1.2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu=
@intel.com>', 'None']
inserted (xvinfo,1.1.2,1.1.2,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https:=
//bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native v=
irtual/libx11  libxv,xvinfo prints out the capabilities of any video adapto=
rs associated with the display that are accessible through the X-Video exte=
nsion.,N/A,http://xorg.freedesktop.org/releases/individual/app/xvinfo-1.1.2=
=2Etar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['git', '1.8.1.4', '1.8.2.1', 'GPLv2', 'console/utils', 'unknown', 'r0', 'a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  openssl curl zlib expat perl-native', 'None', 'None', 'The git revi=
sion control system used by the Linux kernel developers', 'UPDATE', 'N/A', =
'http://git-core.googlecode.com/files/git-1.8.1.4.tar.gz', 'Bogdan Marinesc=
u <bogdan.a.marinescu@intel.com>', 'None']
inserted (git,1.8.1.4,1.8.2.1,GPLv2,console/utils,r0,None,unknown,None,UPDA=
TE,autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  openssl curl zlib expat perl-native,The git revision control sy=
stem used by the Linux kernel developers,N/A,http://git-core.googlecode.com=
/files/git-1.8.1.4.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['initramfs-live-install', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r9'=
, ' ', 'None', 'None', 'A live image init script for grub', 'MATCH', 'N/A',=
 'file://init-install.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-live-install,1.0,INVALID,MIT,base,r9,None,unknown,None,=
MATCH, ,A live image init script for grub,N/A,file://init-install.sh,Saul W=
old <sgw@linux.intel.com>)
['cwautomacros', '20110201', '20110201', 'GPLv2', 'base', 'http://cwautomac=
ros.berlios.de/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  ', 'None', 'None', 'cwautomacros: a collectio=
n of autoconf m4 macros', 'MATCH', 'N/A', 'http://download.berlios.de/cwaut=
omacros/cwautomacros-20110201.tar.bz2', 'Cristian Iorga <cristian.iorga@int=
el.com>', 'None']
inserted (cwautomacros,20110201,20110201,GPLv2,base,r0,None,http://cwautoma=
cros.berlios.de/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  ,cwautomacros: a collection of autoconf m4=
 macros,N/A,http://download.berlios.de/cwautomacros/cwautomacros-20110201.t=
ar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['libacpi', '0.2', '0.2', 'MIT', 'base', 'http://www.ngolde.de/libacpi.html=
', 'r6', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  ', 'None', 'None', 'General purpose shared library for progr=
ams gathering ACPI data on Linux. Thermal zones, battery infomration, fan i=
nformation and AC states are implemented.', 'MATCH', 'N/A', 'http://www.ngo=
lde.de/download/libacpi-0.2.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'No=
ne']
inserted (libacpi,0.2,0.2,MIT,base,r6,None,http://www.ngolde.de/libacpi.htm=
l,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  ,General purpose shared library for programs gathering AC=
PI data on Linux. Thermal zones, battery infomration, fan information and A=
C states are implemented.,N/A,http://www.ngolde.de/download/libacpi-0.2.tar=
=2Egz,Saul Wold <sgw@linux.intel.com>)
['python-pycurl', '7.19.0', '7.19.0', 'LGPLv2.1+ | MIT', 'devel/python', 'h=
ttp://pycurl.sourceforge.net/', 'r3', ' virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  curl python python-native pytho=
n  python-native ', 'None', 'None', 'libcurl python bindings.', 'MATCH', 'N=
/A', 'http://pycurl.sourceforge.net/download/pycurl-7.19.0.tar.gz;name=3Dar=
chive', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (python-pycurl,7.19.0,7.19.0,LGPLv2.1+ | MIT,devel/python,r3,None,=
http://pycurl.sourceforge.net/,None,MATCH, virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  curl python python-native py=
thon  python-native ,libcurl python bindings.,N/A,http://pycurl.sourceforge=
=2Enet/download/pycurl-7.19.0.tar.gz;name=3Darchive,Bogdan Marinescu <bogda=
n.a.marinescu@intel.com>)
['libxinerama', '1.1.2', '1.1.2', 'MIT', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros libxext xineramaproto', 'https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Xinerama is a si=
mple library designed to interface the Xinerama Extension for retrieving in=
formation about physical output devices which may be combined into a single=
 logical X screen.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/=
individual/lib/libXinerama-1.1.2.tar.bz2', 'Constantin Musca <constantinx.m=
usca@intel.com>', 'None']
inserted (libxinerama,1.1.2,1.1.2,MIT,x11/libs,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  util-macros libxext xineramaproto,Xinerama is a simple library des=
igned to interface the Xinerama Extension for retrieving information about =
physical output devices which may be combined into a single logical X scree=
n.,N/A,http://xorg.freedesktop.org/releases/individual/lib/libXinerama-1.1.=
2.tar.bz2,Constantin Musca <constantinx.musca@intel.com>)
['cairo', '1.12.14', '1.12.14', 'MPL-1 & LGPLv2.1', 'libs', 'http://cairogr=
aphics.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  libpng fontconfig pixman glib=
-2.0 virtual/libx11 libsm libxrender libxext', 'http://bugs.freedesktop.org=
', 'None', 'Cairo is a multi-platform library providing anti-aliased vector=
-based rendering for multiple target backends. Paths consist of line segmen=
ts and cubic splines and can be rendered at any width with various join and=
 cap styles. All colors may be specified with optional translucence (opacit=
y/alpha) and combined using the extended Porter/Duff compositing algebra as=
 found in the X Render Extension.', 'MATCH', 'N/A', 'http://cairographics.o=
rg/releases/cairo-1.12.14.tar.xz', 'Constantin Musca <constantinx.musca@int=
el.com>', 'None']
inserted (cairo,1.12.14,1.12.14,MPL-1 & LGPLv2.1,libs,r0,None,http://cairog=
raphics.org,http://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  lib=
png fontconfig pixman glib-2.0 virtual/libx11 libsm libxrender libxext,Cair=
o is a multi-platform library providing anti-aliased vector-based rendering=
 for multiple target backends. Paths consist of line segments and cubic spl=
ines and can be rendered at any width with various join and cap styles. All=
 colors may be specified with optional translucence (opacity/alpha) and com=
bined using the extended Porter/Duff compositing algebra as found in the X =
Render Extension.,N/A,http://cairographics.org/releases/cairo-1.12.14.tar.x=
z,Constantin Musca <constantinx.musca@intel.com>)
['x11-common', '0.1', 'INVALID', 'GPLv2', 'x11', 'unknown', 'r47', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ',=
 'None', 'None', 'Common X11 scripts and configuration files', 'MATCH', '1:=
7.6', 'file://etc', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (x11-common,0.1,INVALID,GPLv2,x11,r47,None,unknown,None,MATCH, vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 ,Common X11 scripts and configuration files,1:7.6,file://etc,Laurentiu Pal=
cu <laurentiu.palcu@intel.com>)
['groff', '1.22.2', '1.22.2', 'GPLv2', 'base', 'ftp://ftp.gnu.org/gnu/groff=
/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  groff-native', 'None', 'None', 'The groff (GNU troff) s=
oftware is a typesetting package which reads plain text mixed with formatti=
ng commands and produces formatted output.', 'MATCH', 'N/A', 'ftp://ftp.gnu=
=2Eorg/gnu/groff/groff-1.22.2.tar.gz', 'Constantin Musca <constantinx.musca=
@intel.com>', '1.18.1.4 is latest GPLv2 Version no 1.21']
inserted (groff,1.22.2,1.22.2,GPLv2,base,r0,None,ftp://ftp.gnu.org/gnu/grof=
f/,None,MATCH,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  groff-native,The groff (GNU troff) software is a typ=
esetting package which reads plain text mixed with formatting commands and =
produces formatted output.,N/A,ftp://ftp.gnu.org/gnu/groff/groff-1.22.2.tar=
=2Egz,Constantin Musca <constantinx.musca@intel.com>)
['libart-lgpl', '2.3.21', '2.3.21', 'LGPLv2', 'x11/gnome', 'unknown', 'r2',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'None', 'None', 'Library of functions for 2D=
 graphics', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/libart_=
lgpl/2.3/libart_lgpl-2.3.21.tar.bz2', 'Constantin Musca <constantinx.musca@=
intel.com>', 'None']
inserted (libart-lgpl,2.3.21,2.3.21,LGPLv2,x11/gnome,r2,None,unknown,None,M=
ATCH,pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ,Library of functions for 2D graphics,N/A,ht=
tp://ftp.gnome.org/pub/GNOME/sources/libart_lgpl/2.3/libart_lgpl-2.3.21.tar=
=2Ebz2,Constantin Musca <constantinx.musca@intel.com>)
['xhost', '1.0.5', '1.0.5', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxmu libx=
au', 'https://bugs.freedesktop.org', '1', 'The xhost program is used to add=
 and delete host names or user names to the list allowed to make connection=
s to the X server. In the case of hosts, this provides a rudimentary form o=
f privacy control and security. Environments which require more sophisticat=
ed measures should implement the user-based mechanism or use the hooks in t=
he protocol for passing other authentication data to the server.', 'MATCH',=
 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/xhost-1.0.5.ta=
r.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xhost,1.0.5,1.0.5,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https:/=
/bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native vi=
rtual/libx11 libxmu libxau,The xhost program is used to add and delete host=
 names or user names to the list allowed to make connections to the X serve=
r. In the case of hosts, this provides a rudimentary form of privacy contro=
l and security. Environments which require more sophisticated measures shou=
ld implement the user-based mechanism or use the hooks in the protocol for =
passing other authentication data to the server.,N/A,http://xorg.freedeskto=
p.org/releases/individual/app/xhost-1.0.5.tar.bz2,Laurentiu Palcu <laurenti=
u.palcu@intel.com>)
['directfb-examples', '1.6.0', '1.6.0', 'MIT', 'libs', 'unknown', 'r0', 'au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  directfb', 'None', 'None', 'The DirectFB-examples package contains a=
 set of simple DirectFB       applications that can be used to test and dem=
onstrate various DirectFB       features', 'MATCH', 'N/A', 'http://www.dire=
ctfb.org/downloads/Extras/DirectFB-examples-1.6.0.tar.gz', 'Kai Kang <kai.k=
ang@windriver.com>', 'None']
inserted (directfb-examples,1.6.0,1.6.0,MIT,libs,r0,None,unknown,None,MATCH=
,autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  directfb,The DirectFB-examples package contains a set of simple D=
irectFB       applications that can be used to test and demonstrate various=
 DirectFB       features,N/A,http://www.directfb.org/downloads/Extras/Direc=
tFB-examples-1.6.0.tar.gz,Kai Kang <kai.kang@windriver.com>)
['libmpc', '0.8.2', '1.0.1', 'LGPLv2.1', 'libs', 'http://www.multiprecision=
=2Eorg/', 'r1', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  gmp mpfr', 'None', 'None', 'Mpc is a C library fo=
r the arithmetic of complex numbers with arbitrarily high precision and cor=
rect rounding of the result. It is built upon and follows the same principl=
es as Mpfr', 'UPDATE', 'N/A', 'http://www.multiprecision.org/mpc/download/m=
pc-0.8.2.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (libmpc,0.8.2,1.0.1,LGPLv2.1,libs,r1,None,http://www.multiprecisio=
n.org/,None,UPDATE,autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  gmp mpfr,Mpc is a C library for the arithmetic =
of complex numbers with arbitrarily high precision and correct rounding of =
the result. It is built upon and follows the same principles as Mpfr,N/A,ht=
tp://www.multiprecision.org/mpc/download/mpc-0.8.2.tar.gz,Bogdan Marinescu =
<bogdan.a.marinescu@intel.com>)
['oprofileui', '0.0+gitAUTOINC+82ecf8c', '0.0+gitAUTOINC+f168b8b', 'GPLv2',=
 'x11', 'http://labs.o-hand.com/oprofileui/', 'r1', 'pkgconfig-native autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  glib-2.0 avahi gtk+ libglade libxml2 avahi-ui gconf', 'http://bugzilla.=
o-hand.com/', 'None', 'User interface for the OProfile tool', 'UPDATE', 'N/=
A', 'git://git.yoctoproject.org/oprofileui;protocol=3Dgit', 'Bogdan Marines=
cu <bogdan.a.marinescu@intel.com>', 'None']
inserted (oprofileui,0.0+gitAUTOINC+82ecf8c,0.0+gitAUTOINC+f168b8b,GPLv2,x1=
1,r1,None,http://labs.o-hand.com/oprofileui/,http://bugzilla.o-hand.com/,UP=
DATE,pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  glib-2.0 avahi gtk+ libglade libxml2 avahi-u=
i gconf,User interface for the OProfile tool,N/A,git://git.yoctoproject.org=
/oprofileui;protocol=3Dgit,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['taglib', '1.8', '1.8', 'LGPLv2.1 | MPL-1', 'libs/multimedia', 'http://dev=
eloper.kde.org/~wheeler/taglib.html', 'r1', 'pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native cmake-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  ', 'None', 'None', 'TagLib is a library for reading and editing th=
e meta-data of several popular audio formats', 'MATCH', 'N/A', 'https://git=
hub.com/downloads/taglib/taglib/taglib-1.8.tar.gz', 'Cristian Iorga <cristi=
an.iorga@intel.com>', 'None']
inserted (taglib,1.8,1.8,LGPLv2.1 | MPL-1,libs/multimedia,r1,None,http://de=
veloper.kde.org/~wheeler/taglib.html,None,MATCH,pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native cmake-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  ,TagLib is a library for reading and editing the meta-data of s=
everal popular audio formats,N/A,https://github.com/downloads/taglib/taglib=
/taglib-1.8.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['gst-plugins-ugly', '0.10.19', '1.0.6', 'GPLv2+ & LGPLv2.1+ & LGPLv2+', 'm=
ultimedia', 'http://gstreamer.freedesktop.org/', 'r3', 'pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base libid3tag =
libmad mpeg2dec liba52 lame', 'https://bugzilla.gnome.org/enter_bug.cgi?pro=
duct=3DGstreamer', 'None', 'Plugins for GStreamer', 'UPDATE', 'N/A', 'http:=
//gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-0.10.19.t=
ar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', 'not compatible with =
gst-fluendo 0.10.x']
inserted (gst-plugins-ugly,0.10.19,1.0.6,GPLv2+ & LGPLv2.1+ & LGPLv2+,multi=
media,r3,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/=
enter_bug.cgi?product=3DGstreamer,UPDATE,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native virtual/gette=
xt gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  gstreamer gst-plugins-base libid3tag libmad mpeg2dec=
 liba52 lame,Plugins for GStreamer,N/A,http://gstreamer.freedesktop.org/src=
/gst-plugins-ugly/gst-plugins-ugly-0.10.19.tar.bz2,Cristian Iorga <cristian=
=2Eiorga@intel.com>)
['gcc-runtime', '4.7.2', '4.8.0', 'GPL-3.0-with-GCC-exception & GPLv3', 'de=
vel', 'http://www.gnu.org/software/gcc/', 'r19', 'autoconf-native automake-=
native libtool-native gnu-config-native   virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-g++ libgcc', 'None', 'None', 'The GNU cc and gcc C compi=
lers.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar=
=2Ebz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (gcc-runtime,4.7.2,4.8.0,GPL-3.0-with-GCC-exception & GPLv3,devel,=
r19,None,http://www.gnu.org/software/gcc/,None,UPDATE,autoconf-native autom=
ake-native libtool-native gnu-config-native   virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-g++ libgcc,The GNU cc and gcc C compilers.,N/A,ftp:/=
/ftp.gnu.org/gnu/gcc/gcc-4.7.2/gcc-4.7.2.tar.bz2,Saul Wold <sgw@linux.intel=
=2Ecom>)
['libtheora', '1.1.1', '1.1.1', 'BSD', 'libs', 'http://xiph.org/', 'r1', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  libogg', 'https://trac.xiph.org/newticket', 'None'=
, 'The libtheora reference implementation provides the standard encoder and=
 decoder under a BSD license.', 'MATCH', 'N/A', 'http://downloads.xiph.org/=
releases/theora/libtheora-1.1.1.tar.bz2', 'Saul Wold <sgw@linux.intel.com>'=
, '1.1.1 is latest stable release not 1.2.0alpha1']
inserted (libtheora,1.1.1,1.1.1,BSD,libs,r1,None,http://xiph.org/,https://t=
rac.xiph.org/newticket,MATCH,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libogg,The libtheora=
 reference implementation provides the standard encoder and decoder under a=
 BSD license.,N/A,http://downloads.xiph.org/releases/theora/libtheora-1.1.1=
=2Etar.bz2,Saul Wold <sgw@linux.intel.com>)
['attr', '2.4.46', '2.4.46', 'LGPLv2.1+ & GPLv2+', 'libs', 'http://savannah=
=2Enongnu.org/projects/attr/', 'r4', 'autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  ncurses', 'None', 'None', 'utilities for manipulating filesystem extende=
d attributes', 'MATCH', 'N/A', 'http://download.savannah.gnu.org/releases/a=
ttr/attr-2.4.46.src.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (attr,2.4.46,2.4.46,LGPLv2.1+ & GPLv2+,libs,r4,None,http://savanna=
h.nongnu.org/projects/attr/,None,MATCH,autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  ncurses,utilities for manipulating filesystem extended attributes,N/A,h=
ttp://download.savannah.gnu.org/releases/attr/attr-2.4.46.src.tar.gz,Saul W=
old <sgw@linux.intel.com>)
['gdb-cross', '7.5.1', '7.5.1', 'GPLv3+', 'devel', 'http://www.gnu.org/soft=
ware/gdb/', 'r0.0', 'autoconf-native automake-native libtool-native gnu-con=
fig-native gettext-minimal-native  expat-native ncurses-native', 'None', 'N=
one', 'gdb - GNU debugger', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gdb/gdb-=
7.5.1.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (gdb-cross,7.5.1,7.5.1,GPLv3+,devel,r0.0,None,http://www.gnu.org/s=
oftware/gdb/,None,MATCH,autoconf-native automake-native libtool-native gnu-=
config-native gettext-minimal-native  expat-native ncurses-native,gdb - GNU=
 debugger,N/A,ftp://ftp.gnu.org/gnu/gdb/gdb-7.5.1.tar.gz,Bogdan Marinescu <=
bogdan.a.marinescu@intel.com>)
['gstreamer', '0.10.36', '1.0.6', 'LGPLv2+', 'multimedia', 'http://gstreame=
r.freedesktop.org/', 'r2', 'pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native virtual/gettext gettext-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  glib-2.0 libxml2 bison-native flex-native', 'https://bugzilla.gno=
me.org/enter_bug.cgi?product=3DGstreamer', 'None', 'GStreamer is a multimed=
ia framework for encoding and decoding video and sound. It supports a wide =
range of formats including mp3, ogg, avi, mpeg and quicktime.', 'UPDATE', '=
N/A', 'http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-0.10.36.tar=
=2Ebz2', 'Cristian Iorga <cristian.iorga@intel.com>', ' not compatible with=
 gst-fluendo 0.10.x ']
inserted (gstreamer,0.10.36,1.0.6,LGPLv2+,multimedia,r2,None,http://gstream=
er.freedesktop.org/,https://bugzilla.gnome.org/enter_bug.cgi?product=3DGstr=
eamer,UPDATE,pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-=
2.0 libxml2 bison-native flex-native,GStreamer is a multimedia framework fo=
r encoding and decoding video and sound. It supports a wide range of format=
s including mp3, ogg, avi, mpeg and quicktime.,N/A,http://gstreamer.freedes=
ktop.org/src/gstreamer/gstreamer-0.10.36.tar.bz2,Cristian Iorga <cristian.i=
orga@intel.com>)
['menu-cache', '0.4.1', '0.4.1', 'GPLv2 & GPLv2+', 'x11/libs', 'http://lxde=
=2Esourceforge.net/', 'r0', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 zlib', '', =
'None', 'A library creating and utilizing caches to speed up freedesktop.or=
g application menus', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/lxd=
e/menu-cache-0.4.1.tar.gz', 'Constantin Musca <constantinx.musca@intel.com>=
', 'None']
inserted (menu-cache,0.4.1,0.4.1,GPLv2 & GPLv2+,x11/libs,r0,None,http://lxd=
e.sourceforge.net/,,MATCH,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 zlib,A library=
 creating and utilizing caches to speed up freedesktop.org application menu=
s,N/A,http://downloads.sourceforge.net/lxde/menu-cache-0.4.1.tar.gz,Constan=
tin Musca <constantinx.musca@intel.com>)
['libnfsidmap', '0.25', '0.25', 'BSD', 'libs', 'http://www.citi.umich.edu/p=
rojects/nfsv4/linux/', 'r0', 'autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'NFS id mapping l=
ibrary', 'MATCH', 'N/A', 'http://www.citi.umich.edu/projects/nfsv4/linux/li=
bnfsidmap/libnfsidmap-0.25.tar.gz', 'Andrei Dinu <andrei.adrianx.dinu@intel=
=2Ecom>', 'None']
inserted (libnfsidmap,0.25,0.25,BSD,libs,r0,None,http://www.citi.umich.edu/=
projects/nfsv4/linux/,None,MATCH,autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  ,NFS id mapping library,N/A,http:=
//www.citi.umich.edu/projects/nfsv4/linux/libnfsidmap/libnfsidmap-0.25.tar.=
gz,Andrei Dinu <andrei.adrianx.dinu@intel.com>)
['initscripts', '1.0', 'INVALID', 'GPLv2', 'base', 'unknown', 'r140', '  up=
date-rc.d-native virtual/update-alternatives', 'None', 'None', 'Initscripts=
 provide the basic system startup initialization scripts for the system.  T=
hese scripts include actions such as filesystem mounting, fsck, RTC manipul=
ation and other actions routinely performed at system startup.  In addition=
, the scripts are also used during system shutdown to reverse the actions p=
erformed at startup.', 'MATCH', '9.40', 'file://functions', 'Saul Wold <sgw=
@linux.intel.com>', 'None']
inserted (initscripts,1.0,INVALID,GPLv2,base,r140,None,unknown,None,MATCH, =
 update-rc.d-native virtual/update-alternatives,Initscripts provide the bas=
ic system startup initialization scripts for the system.  These scripts inc=
lude actions such as filesystem mounting, fsck, RTC manipulation and other =
actions routinely performed at system startup.  In addition, the scripts ar=
e also used during system shutdown to reverse the actions performed at star=
tup.,9.40,file://functions,Saul Wold <sgw@linux.intel.com>)
['libfm', '1.1.0', '1.1.0', 'GPLv2 & GPLv2+', 'x11/libs', 'http://pcmanfm.s=
ourceforge.net/', 'r0', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 pango gtk+ menu=
-cache intltool-native libexif', '', 'None', 'Library for file management',=
 'MATCH', 'N/A', 'http://downloads.sourceforge.net/pcmanfm/libfm-1.1.0.tar.=
gz', 'Constantin Musca <constantinx.musca@intel.com>', 'None']
inserted (libfm,1.1.0,1.1.0,GPLv2 & GPLv2+,x11/libs,r0,None,http://pcmanfm.=
sourceforge.net/,,MATCH,pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 pango gtk+ menu-=
cache intltool-native libexif,Library for file management,N/A,http://downlo=
ads.sourceforge.net/pcmanfm/libfm-1.1.0.tar.gz,Constantin Musca <constantin=
x.musca@intel.com>)
['libxrender', '0.9.7', '0.9.7', 'MIT-style', 'x11/libs', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros virtual/libx11 renderproto =
xproto xdmcp', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg',=
 '1', 'The X Rendering Extension (Render) introduces digital image composit=
ion as the foundation of a new rendering model within the X Window System. =
Rendering geometric figures is accomplished by client-side tessellation int=
o either triangles or trapezoids.  Text is drawn by loading glyphs into the=
 server and rendering sets of them.', 'MATCH', 'N/A', 'http://xorg.freedesk=
top.org/releases/individual/lib/libXrender-0.9.7.tar.bz2', 'Constantin Musc=
a <constantinx.musca@intel.com>', 'None']
inserted (libxrender,0.9.7,0.9.7,MIT-style,x11/libs,r0,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  util-macros virtual/libx11 renderproto xproto xdmcp,The X Ren=
dering Extension (Render) introduces digital image composition as the found=
ation of a new rendering model within the X Window System. Rendering geomet=
ric figures is accomplished by client-side tessellation into either triangl=
es or trapezoids.  Text is drawn by loading glyphs into the server and rend=
ering sets of them.,N/A,http://xorg.freedesktop.org/releases/individual/lib=
/libXrender-0.9.7.tar.bz2,Constantin Musca <constantinx.musca@intel.com>)
['autoconf', '2.69', '2.69', 'GPLv2 & GPLv3', 'devel', 'http://www.gnu.org/=
software/autoconf/', 'r11', 'autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc   m4-native', 'None', 'None', 'Autocon=
f is an extensible package of M4 macros that produce shell scripts to autom=
atically configure software source code packages. Autoconf creates a config=
uration script for a package from a template file that lists the operating =
system features that the package can use, in the form of M4 macro calls.', =
'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz', 'Bog=
dan Marinescu <bogdan.a.marinescu@intel.com>', 'seeing rpm issue with the 2=
=2E68 version, a bug is open']
inserted (autoconf,2.69,2.69,GPLv2 & GPLv3,devel,r11,None,http://www.gnu.or=
g/software/autoconf/,None,MATCH,autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   m4-native,Autoconf is an extensib=
le package of M4 macros that produce shell scripts to automatically configu=
re software source code packages. Autoconf creates a configuration script f=
or a package from a template file that lists the operating system features =
that the package can use, in the form of M4 macro calls.,N/A,ftp://ftp.gnu.=
org/gnu/autoconf/autoconf-2.69.tar.gz,Bogdan Marinescu <bogdan.a.marinescu@=
intel.com>)
['mtdev', '1.1.2', '1.1.3', 'MIT', 'libs', 'http://bitmath.org/code/mtdev/'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ', 'None', 'None', ' The mtdev is a stan=
d-alone library which transforms all variants of kernel MT events to the sl=
otted type B protocol. The events put into mtdev may be from any MT device,=
 specifically type A without contact tracking, type A with contact tracking=
, or type B with contact tracking', 'UPDATE', 'N/A', 'http://bitmath.org/co=
de/mtdev/mtdev-1.1.2.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None=
']
inserted (mtdev,1.1.2,1.1.3,MIT,libs,r0,None,http://bitmath.org/code/mtdev/=
,None,UPDATE,pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  , The mtdev is a stand-alone library=
 which transforms all variants of kernel MT events to the slotted type B pr=
otocol. The events put into mtdev may be from any MT device, specifically t=
ype A without contact tracking, type A with contact tracking, or type B wit=
h contact tracking,N/A,http://bitmath.org/code/mtdev/mtdev-1.1.2.tar.bz2,Ro=
ss Burton <ross.burton@intel.com>)
['mailx', '12.5', '12.5', 'BSD & MPL-1', 'console/network', 'http://heirloo=
m.sourceforge.net/mailx.html', 'r2', 'autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  openssl', 'None', 'None', 'M=
ailx is derived from Berkeley Mail and is intended provide the functionalit=
y of the POSIX mailx command with additional support for MIME, IMAP, POP3, =
SMTP, and S/MIME.', 'MATCH', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/=
h/heirloom-mailx/heirloom-mailx_12.5.orig.tar.gz;name=3Darchive', 'Kai Kang=
 <kai.kang@windriver.com>', 'None']
inserted (mailx,12.5,12.5,BSD & MPL-1,console/network,r2,None,http://heirlo=
om.sourceforge.net/mailx.html,None,MATCH,autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  openssl,Mailx is derived =
=66rom Berkeley Mail and is intended provide the functionality of the POSIX=
 mailx command with additional support for MIME, IMAP, POP3, SMTP, and S/MI=
ME.,N/A,ftp://ftp.debian.org/debian/pool/main/h/heirloom-mailx/heirloom-mai=
lx_12.5.orig.tar.gz;name=3Darchive,Kai Kang <kai.kang@windriver.com>)
['distcc', '3.1', '3.1', 'GPLv2', 'devel', 'unknown', 'r0', 'pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  avahi update-rc.d-native base-passwd shadow-native shadow-sysro=
ot shadow gtk+', 'None', 'None', 'distcc is a parallel build system that di=
stributes compilation of C/C++/ObjC code across machines on a network.', 'M=
ATCH', 'N/A', 'http://distcc.googlecode.com/files/distcc-3.1.tar.bz2', 'Bog=
dan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (distcc,3.1,3.1,GPLv2,devel,r0,None,unknown,None,MATCH,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  avahi update-rc.d-native base-passwd shadow-native shadow-sy=
sroot shadow gtk+,distcc is a parallel build system that distributes compil=
ation of C/C++/ObjC code across machines on a network.,N/A,http://distcc.go=
oglecode.com/files/distcc-3.1.tar.bz2,Bogdan Marinescu <bogdan.a.marinescu@=
intel.com>)
['pulseaudio', '3.0', '3.99.1', 'GPLv2+ & LGPLv2.1', 'libs/multimedia', 'ht=
tp://www.pulseaudio.org', 'r0', 'pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native virtual/gettext gette=
xt-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  libatomics-ops liboil avahi libsamplerate0 libsndfile1 libto=
ol udev alsa-lib glib-2.0 dbus gconf libjson gdbm speex libxml-parser-perl-=
native perl-native base-passwd shadow-native shadow-sysroot shadow virtual/=
libx11 libxtst libice libsm libxcb gtk+ bluez4 sbc', 'None', 'None', 'Pulse=
audio is a sound server for Linux and Unix-like operating systems.', 'UPDAT=
E', 'N/A', 'http://freedesktop.org/software/pulseaudio/releases/pulseaudio-=
3.0.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (pulseaudio,3.0,3.99.1,GPLv2+ & LGPLv2.1,libs/multimedia,r0,None,h=
ttp://www.pulseaudio.org,None,UPDATE,pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native virtual/gettext g=
ettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  libatomics-ops liboil avahi libsamplerate0 libsndfile1 l=
ibtool udev alsa-lib glib-2.0 dbus gconf libjson gdbm speex libxml-parser-p=
erl-native perl-native base-passwd shadow-native shadow-sysroot shadow virt=
ual/libx11 libxtst libice libsm libxcb gtk+ bluez4 sbc,Pulseaudio is a soun=
d server for Linux and Unix-like operating systems.,N/A,http://freedesktop.=
org/software/pulseaudio/releases/pulseaudio-3.0.tar.xz,Cristian Iorga <cris=
tian.iorga@intel.com>)
['weston', '1.0.6', '1.1.0', 'MIT', 'base', 'http://wayland.freedesktop.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  libxkbcommon gdk-pixbuf pixman cairo gl=
ib-2.0 mtdev jpeg wayland mesa virtual/egl mesa drm udev mesa libpam virtua=
l/libx11 libxcb libxcb libxcursor cairo', 'None', 'None', 'Weston is the re=
ference implementation of a Wayland compositor', 'UPDATE', 'N/A', 'http://w=
ayland.freedesktop.org/releases/weston-1.0.6.tar.xz', 'None', 'None']
inserted (weston,1.0.6,1.1.0,MIT,base,r0,None,http://wayland.freedesktop.or=
g,None,UPDATE,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  libxkbcommon gdk-pixbuf pixman cair=
o glib-2.0 mtdev jpeg wayland mesa virtual/egl mesa drm udev mesa libpam vi=
rtual/libx11 libxcb libxcb libxcursor cairo,Weston is the reference impleme=
ntation of a Wayland compositor,N/A,http://wayland.freedesktop.org/releases=
/weston-1.0.6.tar.xz,None)
['scrnsaverproto', '1.2.2', '1.2.2', 'MIT', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire prot=
ocol for the X Screen Saver extension.  This extension allows an external \=
\"screen saver\\" client to detect when the alternative image is to be disp=
layed and to provide the graphics.', 'MATCH', 'N/A', 'http://xorg.freedeskt=
op.org/releases/individual/proto/scrnsaverproto-1.2.2.tar.bz2', 'Laurentiu =
Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (scrnsaverproto,1.2.2,1.2.2,MIT,x11/libs,r0,1,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  util-macros,This package provides the wire protocol for the X S=
creen Saver extension.  This extension allows an external \"screen saver\" =
client to detect when the alternative image is to be displayed and to provi=
de the graphics.,N/A,http://xorg.freedesktop.org/releases/individual/proto/=
scrnsaverproto-1.2.2.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['at', '3.1.13', '3.1.13', 'GPLv2+', 'base', 'unknown', 'r5', 'autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  fle=
x flex-native            ', 'None', 'None', 'At allows for commands to be r=
un at a particular time.  Batch will execute commands when the system load =
levels drop to a particular level.', 'MATCH', 'N/A', 'ftp://ftp.debian.org/=
debian/pool/main/a/at/at_3.1.13.orig.tar.gz', 'Andrei Dinu <andrei.adrianx.=
dinu@intel.com>', 'None']
inserted (at,3.1.13,3.1.13,GPLv2+,base,r5,None,unknown,None,MATCH,autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
flex flex-native            ,At allows for commands to be run at a particul=
ar time.  Batch will execute commands when the system load levels drop to a=
 particular level.,N/A,ftp://ftp.debian.org/debian/pool/main/a/at/at_3.1.13=
=2Eorig.tar.gz,Andrei Dinu <andrei.adrianx.dinu@intel.com>)
['file', '5.13', '5.14', 'BSD', 'console/utils', 'http://www.darwinsys.com/=
file/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  zlib file-native', 'None', 'None', 'File attempts t=
o classify files depending on their contents and prints a description if a =
match is found.', 'UPDATE', 'N/A', 'ftp://ftp.astron.com/pub/file/file-5.13=
=2Etar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (file,5.13,5.14,BSD,console/utils,r0,None,http://www.darwinsys.com=
/file/,None,UPDATE,autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  zlib file-native,File attempts to classify file=
s depending on their contents and prints a description if a match is found.=
,N/A,ftp://ftp.astron.com/pub/file/file-5.13.tar.gz,Saul Wold <sgw@linux.in=
tel.com>)
['curl', '7.29.0', '7.30.0', 'MIT', 'console/network', 'http://curl.haxx.se=
/', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  zlib gnutls', 'http://curl.haxx.se/mai=
l/list.cgi?list=3Dcurl-tracker', 'None', 'Command line tool and library for=
 client-side URL transfers.', 'UPDATE', 'N/A', 'http://curl.haxx.se/downloa=
d/curl-7.29.0.tar.bz2', 'Radu Moisan <radu.moisan@intel.com>', 'None']
inserted (curl,7.29.0,7.30.0,MIT,console/network,r1,None,http://curl.haxx.s=
e/,http://curl.haxx.se/mail/list.cgi?list=3Dcurl-tracker,UPDATE,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  zlib gnutls,Command line tool and library for client-side UR=
L transfers.,N/A,http://curl.haxx.se/download/curl-7.29.0.tar.bz2,Radu Mois=
an <radu.moisan@intel.com>)
['libpthread-stubs', '0.3', '0.3', 'MIT', 'x11/libs', 'http://xcb.freedeskt=
op.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  ', 'http://bugs.freedesktop.org/b=
uglist.cgi?product=3DXCB', 'None', 'This library provides weak aliases for =
pthread functions not provided in libc or otherwise available by default.',=
 'MATCH', 'N/A', 'http://xcb.freedesktop.org/dist/libpthread-stubs-0.3.tar.=
bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libpthread-stubs,0.3,0.3,MIT,x11/libs,r0,None,http://xcb.freedesk=
top.org,http://bugs.freedesktop.org/buglist.cgi?product=3DXCB,MATCH,pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  ,This library provides weak aliases for pthread function=
s not provided in libc or otherwise available by default.,N/A,http://xcb.fr=
eedesktop.org/dist/libpthread-stubs-0.3.tar.bz2,Saul Wold <sgw@linux.intel.=
com>)
['bzip2', '1.0.6', '1.0.6', 'bzip2', 'console/utils', 'http://www.bzip.org/=
', 'r5', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc   virtual/update-alternatives', 'None', 'None', 'bzip2 co=
mpresses files using the Burrows-Wheeler block-sorting text compression alg=
orithm, and Huffman coding. Compression is generally considerably better th=
an that achieved by more conventional LZ77/LZ78-based compressors, and appr=
oaches the performance of the PPM family of statistical compressors.', 'MAT=
CH', 'N/A', 'http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz', 'Radu Moisan <r=
adu.moisan@intel.com>', 'None']
inserted (bzip2,1.0.6,1.0.6,bzip2,console/utils,r5,None,http://www.bzip.org=
/,None,MATCH,autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc   virtual/update-alternatives,bzip2 compresses files u=
sing the Burrows-Wheeler block-sorting text compression algorithm, and Huff=
man coding. Compression is generally considerably better than that achieved=
 by more conventional LZ77/LZ78-based compressors, and approaches the perfo=
rmance of the PPM family of statistical compressors.,N/A,http://www.bzip.or=
g/1.0.6/bzip2-1.0.6.tar.gz,Radu Moisan <radu.moisan@intel.com>)
['cmake', '2.8.10.2', '2.8.10.2', 'BSD', 'console/utils', 'http://www.cmake=
=2Eorg/', 'r1.0', 'cmake-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   curl expat zlib libarchive ncurse=
s', 'http://public.kitware.com/Bug/my_view_page.php', 'None', 'A cross-plat=
form, open-source make system', 'MATCH', 'N/A', 'http://www.cmake.org/files=
/v2.8/cmake-2.8.10.2.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (cmake,2.8.10.2,2.8.10.2,BSD,console/utils,r1.0,None,http://www.cm=
ake.org/,http://public.kitware.com/Bug/my_view_page.php,MATCH,cmake-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc   curl expat zlib libarchive ncurses,A cross-platform, open-source =
make system,N/A,http://www.cmake.org/files/v2.8/cmake-2.8.10.2.tar.gz,Saul =
Wold <sgw@linux.intel.com>)
['nasm', '2.10.07', '2.10.07', 'BSD-2-Clause', 'devel', 'unknown', 'r0', 'a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  groff-native', 'None', 'None', 'General-purpose x86 assembler', 'MA=
TCH', 'N/A', 'http://www.nasm.us/pub/nasm/releasebuilds/2.10.07/nasm-2.10.0=
7.tar.bz2', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (nasm,2.10.07,2.10.07,BSD-2-Clause,devel,r0,None,unknown,None,MATC=
H,autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  groff-native,General-purpose x86 assembler,N/A,http://www.nasm.u=
s/pub/nasm/releasebuilds/2.10.07/nasm-2.10.07.tar.bz2,Bogdan Marinescu <bog=
dan.a.marinescu@intel.com>)
['gettext', '0.18.2', '0.18.2.1', 'GPLv3+ & LGPL-2.1+', 'libs', 'http://www=
=2Egnu.org/software/gettext/gettext.html', 'r0', 'autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gettext-native v=
irtual/libiconv ncurses expat', 'None', 'None', "Gettext offers to programm=
ers, translators, and even users, a well integrated set of tools and docume=
ntation. Specifically, the GNU `gettext' utilities are a set of tools that =
provides a framework to help other GNU packages produce multi-lingual messa=
ges. These tools include a set of conventions about how programs should be =
written to support message catalogs, a directory and file naming organizati=
on for the message catalogs themselves, a runtime library supporting the re=
trieval of translated messages, and a few stand-alone programs to massage i=
n various ways the sets of translatable strings, or already translated stri=
ngs.", 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/gettext/gettext-0.18.2.tar.g=
z', 'Wenzong Fan <wenzong.fan@windriver.com>', 'None']
inserted (gettext,0.18.2,0.18.2.1,GPLv3+ & LGPL-2.1+,libs,r0,None,http://ww=
w.gnu.org/software/gettext/gettext.html,None,UPDATE,autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gettext-native=
 virtual/libiconv ncurses expat,Gettext offers to programmers, translators,=
 and even users, a well integrated set of tools and documentation. Specific=
ally, the GNU `gettext' utilities are a set of tools that provides a framew=
ork to help other GNU packages produce multi-lingual messages. These tools =
include a set of conventions about how programs should be written to suppor=
t message catalogs, a directory and file naming organization for the messag=
e catalogs themselves, a runtime library supporting the retrieval of transl=
ated messages, and a few stand-alone programs to massage in various ways th=
e sets of translatable strings, or already translated strings.,N/A,ftp://ft=
p.gnu.org/gnu/gettext/gettext-0.18.2.tar.gz,Wenzong Fan <wenzong.fan@windri=
ver.com>)
['matchbox-keyboard', '0.0+gitAUTOINC+b38f240', '0.0+gitAUTOINC+a17b113', '=
GPLv2+', 'x11', 'http://matchbox-project.org', 'r4', 'pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  qemu-native libfakekey expat libxft gtk=
+ matchbox-panel-2', 'http://bugzilla.openedhand.com/', 'None', 'Matchbox v=
irtual keyboard for X11', 'UPDATE', 'N/A', 'git://git.yoctoproject.org/matc=
hbox-keyboard;protocol=3Dgit', 'Constantin Musca <constantinx.musca@intel.c=
om>', 'None']
inserted (matchbox-keyboard,0.0+gitAUTOINC+b38f240,0.0+gitAUTOINC+a17b113,G=
PLv2+,x11,r4,None,http://matchbox-project.org,http://bugzilla.openedhand.co=
m/,UPDATE,pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  qemu-nat=
ive libfakekey expat libxft gtk+ matchbox-panel-2,Matchbox virtual keyboard=
 for X11,N/A,git://git.yoctoproject.org/matchbox-keyboard;protocol=3Dgit,Co=
nstantin Musca <constantinx.musca@intel.com>)
['libtimedate-perl', '2.30', '2.30', 'Artistic-1.0 | GPL-1.0+', 'libs', 'un=
known', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc   perl perl-native', 'None', 'None', 'TimeDate - parser =
for absolute times', 'MATCH', 'N/A', 'http://search.cpan.org/CPAN/authors/i=
d/G/GB/GBARR/TimeDate-2.30.tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@i=
ntel.com>', 'None']
inserted (libtimedate-perl,2.30,2.30,Artistic-1.0 | GPL-1.0+,libs,r0,None,u=
nknown,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc   perl perl-native,TimeDate - parser for absolute tim=
es,N/A,http://search.cpan.org/CPAN/authors/id/G/GB/GBARR/TimeDate-2.30.tar.=
gz,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)
['glproto', '1.4.16', '1.4.16', 'MIT', 'x11/libs', 'http://www.x.org', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/en=
ter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol =
for the OpenGL-related extensions, used to enable the rendering of applicat=
ions using OpenGL.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/=
individual/proto/glproto-1.4.16.tar.bz2', 'Constantin Musca <constantinx.mu=
sca@intel.com>', 'None']
inserted (glproto,1.4.16,1.4.16,MIT,x11/libs,r0,1,http://www.x.org,https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  util-macros,This package provides the wire protocol for the OpenGL-r=
elated extensions, used to enable the rendering of applications using OpenG=
L.,N/A,http://xorg.freedesktop.org/releases/individual/proto/glproto-1.4.16=
=2Etar.bz2,Constantin Musca <constantinx.musca@intel.com>)
['sysklogd', '1.5', '1.5', 'GPLv2+ & BSD', 'base', 'http://www.infodrom.org=
/projects/sysklogd/', 'r7', ' virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc   update-rc.d-native virtual/update-altern=
atives', 'None', 'None', 'The sysklogd package implements two system log da=
emons: syslogd, klogd', 'MATCH', 'N/A', 'http://www.infodrom.org/projects/s=
ysklogd/download/sysklogd-1.5.tar.gz', 'Saul Wold <sgw@linux.intel.com>', '=
None']
inserted (sysklogd,1.5,1.5,GPLv2+ & BSD,base,r7,None,http://www.infodrom.or=
g/projects/sysklogd/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc   update-rc.d-native virtual/update-alt=
ernatives,The sysklogd package implements two system log daemons: syslogd, =
klogd,N/A,http://www.infodrom.org/projects/sysklogd/download/sysklogd-1.5.t=
ar.gz,Saul Wold <sgw@linux.intel.com>)
['stat', '3.3', '3.3', 'GPLv2', 'console/utils', 'unknown', 'r0', ' virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', =
'None', 'None', 'Display all information about a file that the stat() call =
provides and all information a filesystem that statfs() provides.', 'MATCH'=
, 'N/A', 'ftp://metalab.unc.edu/pub/Linux/utils/file/stat-3.3.tar.gz', 'Rad=
u Moisan <radu.moisan@intel.com>', 'None']
inserted (stat,3.3,3.3,GPLv2,console/utils,r0,None,unknown,None,MATCH, virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
,Display all information about a file that the stat() call provides and all=
 information a filesystem that statfs() provides.,N/A,ftp://metalab.unc.edu=
/pub/Linux/utils/file/stat-3.3.tar.gz,Radu Moisan <radu.moisan@intel.com>)
['hostap-conf', '1.0', 'INVALID', 'GPLv2', 'kernel/modules', 'unknown', 'r1=
5', ' ', 'None', 'None', "PCMCIA-cs configuration files for wireless LAN ca=
rds based on Intersil's Prism2/2.5/3 chipset", 'MATCH', 'N/A', 'file://host=
ap_cs.modalias', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (hostap-conf,1.0,INVALID,GPLv2,kernel/modules,r15,None,unknown,Non=
e,MATCH, ,PCMCIA-cs configuration files for wireless LAN cards based on Int=
ersil's Prism2/2.5/3 chipset,N/A,file://hostap_cs.modalias,Cristian Iorga <=
cristian.iorga@intel.com>)
['inputproto', '2.3', '2.3', 'MIT & MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-m=
acros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', '=
This package provides the wire protocol for the X Input extension.  The ext=
ension supports input devices other then the core X keyboard and pointer.',=
 'MATCH', '2.2.99.1', 'http://xorg.freedesktop.org/releases/individual/prot=
o/inputproto-2.3.tar.bz2', 'Constantin Musca <constantinx.musca@intel.com>'=
, '2.2.99.1 is unstable']
inserted (inputproto,2.3,2.3,MIT & MIT-style,x11/libs,r0,1,http://www.x.org=
,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  util-macros,This package pro=
vides the wire protocol for the X Input extension.  The extension supports =
input devices other then the core X keyboard and pointer.,2.2.99.1,http://x=
org.freedesktop.org/releases/individual/proto/inputproto-2.3.tar.bz2,Consta=
ntin Musca <constantinx.musca@intel.com>)
['time', '1.7', '1.7', 'GPLv2+', 'utils', 'http://www.gnu.org/software/time=
/', 'r2', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc   virtual/update-alternatives', 'None', 'None', 'time me=
asures many of the CPU resources, such as time and memory, that other progr=
ams use.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/time/time-1.7.tar.gz', 'S=
aul Wold <sgw@linux.intel.com>', 'None']
inserted (time,1.7,1.7,GPLv2+,utils,r2,None,http://www.gnu.org/software/tim=
e/,None,MATCH,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc   virtual/update-alternatives,time measures many of t=
he CPU resources, such as time and memory, that other programs use.,N/A,ftp=
://ftp.gnu.org/gnu/time/time-1.7.tar.gz,Saul Wold <sgw@linux.intel.com>)
['modutils-initscripts', '1.0', 'INVALID', 'PD', 'base', 'unknown', 'r6', '=
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc   update-rc.d-native', 'None', 'None', 'modutils configuration files', =
'MATCH', 'N/A', 'file://modutils.sh', 'Saul Wold <sgw@linux.intel.com>', 'N=
one']
inserted (modutils-initscripts,1.0,INVALID,PD,base,r6,None,unknown,None,MAT=
CH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc   update-rc.d-native,modutils configuration files,N/A,file://modutil=
s.sh,Saul Wold <sgw@linux.intel.com>)
['json-glib', '0.15.2', '0.16.0', 'LGPLv2.1', 'base', 'http://live.gnome.or=
g/JsonGlib', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native virtual/gettext gettext-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  glib-2.0 gnome-common-native hicolor-icon-theme gtk-update-icon-cache-nat=
ive gconf gconf-native shared-mime-info-native shared-mime-info', 'None', '=
None', 'Use JSON-GLib it is possible to parse and generate valid JSON data =
structures, using a DOM-like API. JSON-GLib also offers GObject integration=
, providing the ability to serialize and deserialize GObject instances to a=
nd from JSON data types.', 'UPDATE', 'N/A', 'http://ftp.gnome.org/pub/GNOME=
/sources/json-glib/0.15/json-glib-0.15.2.tar.xz;name=3Darchive', 'Constanti=
n Musca <constantinx.musca@intel.com>', 'None']
inserted (json-glib,0.15.2,0.16.0,LGPLv2.1,base,r0,None,http://live.gnome.o=
rg/JsonGlib,None,UPDATE,pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  glib-2.0 gnome-common-native hicolor-icon-theme gtk-update-icon-cache=
-native gconf gconf-native shared-mime-info-native shared-mime-info,Use JSO=
N-GLib it is possible to parse and generate valid JSON data structures, usi=
ng a DOM-like API. JSON-GLib also offers GObject integration, providing the=
 ability to serialize and deserialize GObject instances to and from JSON da=
ta types.,N/A,http://ftp.gnome.org/pub/GNOME/sources/json-glib/0.15/json-gl=
ib-0.15.2.tar.xz;name=3Darchive,Constantin Musca <constantinx.musca@intel.c=
om>)
['lsbtest', '1.0', 'INVALID', 'GPLv2', 'console/utils', 'unknown', 'r3', ' =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  ', 'None', 'None', 'automate test for lsb', 'MATCH', '1.0', 'file://LSB=
_Test.sh', 'Yi Zhao <yi.zhao@windriver.com>', 'None']
inserted (lsbtest,1.0,INVALID,GPLv2,console/utils,r3,None,unknown,None,MATC=
H, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  ,automate test for lsb,1.0,file://LSB_Test.sh,Yi Zhao <yi.zhao@windr=
iver.com>)
['initramfs-framework', '1.0', 'INVALID', 'MIT', 'base', 'unknown', 'r2', '=
 ', 'None', 'None', 'initramfs modular system', 'MATCH', 'N/A', 'file://ini=
t', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-framework,1.0,INVALID,MIT,base,r2,None,unknown,None,MAT=
CH, ,initramfs modular system,N/A,file://init,Saul Wold <sgw@linux.intel.co=
m>)
['libtool', '2.4.2', '2.4.2', 'GPLv2 & LGPLv2.1', 'devel', 'http://www.gnu.=
org/software/libtool/libtool.html', 'r6.0', 'autoconf-native automake-nativ=
e gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  libtool-native', 'None', 'None', 'This is GNU libt=
ool, a generic library support script. Libtool hides the complexity of gene=
rating special library types (such as shared libraries) behind a consistent=
 interface.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.=
tar.gz', 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (libtool,2.4.2,2.4.2,GPLv2 & LGPLv2.1,devel,r6.0,None,http://www.g=
nu.org/software/libtool/libtool.html,None,MATCH,autoconf-native automake-na=
tive gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  libtool-native,This is GNU libtool, a generic l=
ibrary support script. Libtool hides the complexity of generating special l=
ibrary types (such as shared libraries) behind a consistent interface.,N/A,=
ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz,Bogdan Marinescu <bogdan=
=2Ea.marinescu@intel.com>)
['portmap', '6.0', '6.0', 'BSD', 'console/network', 'http://neil.brown.name=
/portmap/', 'r7', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  virtual/fakeroot-native tcp-wrappers update-rc.d-na=
tive', 'None', 'None', 'RPC program number mapper.', 'MATCH', 'N/A', 'http:=
//www.sourcefiles.org/Networking/Tools/Miscellanenous/portmap-6.0.tgz', 'Sa=
ul Wold <sgw@linux.intel.com>', 'None']
inserted (portmap,6.0,6.0,BSD,console/network,r7,None,http://neil.brown.nam=
e/portmap/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  virtual/fakeroot-native tcp-wrappers update-rc.d=
-native,RPC program number mapper.,N/A,http://www.sourcefiles.org/Networkin=
g/Tools/Miscellanenous/portmap-6.0.tgz,Saul Wold <sgw@linux.intel.com>)
['libffi', '3.0.11', '3.0.13', 'MIT', 'base', 'unknown', 'r1', 'autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ',=
 'None', 'None', "The `libffi' library provides a portable, high level prog=
ramming interface to various calling conventions.  This allows a programmer=
 to call any function specified by a call interface description at run time=
=2E FFI stands for Foreign Function Interface.  A foreign function interfac=
e is the popular name for the interface that allows code written in one lan=
guage to call code written in another language.  The `libffi' library reall=
y only provides the lowest, machine dependent layer of a fully featured for=
eign function interface.  A layer must exist above `libffi' that handles ty=
pe conversions for values passed between the two languages.", 'UPDATE', 'N/=
A', 'ftp://sourceware.org/pub/libffi/libffi-3.0.11.tar.gz', 'Saul Wold <sgw=
@linux.intel.com>', 'None']
inserted (libffi,3.0.11,3.0.13,MIT,base,r1,None,unknown,None,UPDATE,autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  ,The `libffi' library provides a portable, high level programming interfa=
ce to various calling conventions.  This allows a programmer to call any fu=
nction specified by a call interface description at run time. FFI stands fo=
r Foreign Function Interface.  A foreign function interface is the popular =
name for the interface that allows code written in one language to call cod=
e written in another language.  The `libffi' library really only provides t=
he lowest, machine dependent layer of a fully featured foreign function int=
erface.  A layer must exist above `libffi' that handles type conversions fo=
r values passed between the two languages.,N/A,ftp://sourceware.org/pub/lib=
ffi/libffi-3.0.11.tar.gz,Saul Wold <sgw@linux.intel.com>)
['readline', '6.2', '6.2', 'GPLv3+', 'libs', 'unknown', 'r4', 'autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   nc=
urses', 'None', 'None', 'The GNU Readline library provides a set of functio=
ns for use by applications that allow users to edit command lines as they a=
re typed in. Both Emacs and vi editing modes are available. The Readline li=
brary includes  additional functions to maintain a list of previously-enter=
ed command lines, to recall and perhaps reedit those   lines, and perform c=
sh-like history expansion on previous commands.', 'MATCH', 'N/A', 'ftp://ft=
p.gnu.org/gnu/readline/readline-6.2.tar.gz;name=3Darchive', 'Saul Wold <sgw=
@linux.intel.com>', 'None']
inserted (readline,6.2,6.2,GPLv3+,libs,r4,None,unknown,None,MATCH,autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
 ncurses,The GNU Readline library provides a set of functions for use by ap=
plications that allow users to edit command lines as they are typed in. Bot=
h Emacs and vi editing modes are available. The Readline library includes  =
additional functions to maintain a list of previously-entered command lines=
, to recall and perhaps reedit those   lines, and perform csh-like history =
expansion on previous commands.,N/A,ftp://ftp.gnu.org/gnu/readline/readline=
-6.2.tar.gz;name=3Darchive,Saul Wold <sgw@linux.intel.com>)
['slang', '2.2.4', '2.2.4', 'GPLv2', 'libs', 'http://www.jedsoft.org/slang/=
', 'r12', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  pcre', 'None', 'None', "S-Lang is an interpreted langua=
ge and a programming library.  The S-Lang language was designed so that it =
can be easily embedded into a program to provide the program with a powerfu=
l extension language. The S-Lang library, provided in this package, provide=
s the S-Lang extension language.  S-Lang's syntax resembles C, which makes =
it easy to recode S-Lang procedures in C if you need to.", 'MATCH', 'N/A', =
'ftp://space.mit.edu/pub/davis/slang/v2.2/slang-2.2.4.tar.bz2', 'Kai Kang <=
kai.kang@windriver.com>', 'None']
inserted (slang,2.2.4,2.2.4,GPLv2,libs,r12,None,http://www.jedsoft.org/slan=
g/,None,MATCH,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  pcre,S-Lang is an interpreted language and a program=
ming library.  The S-Lang language was designed so that it can be easily em=
bedded into a program to provide the program with a powerful extension lang=
uage. The S-Lang library, provided in this package, provides the S-Lang ext=
ension language.  S-Lang's syntax resembles C, which makes it easy to recod=
e S-Lang procedures in C if you need to.,N/A,ftp://space.mit.edu/pub/davis/=
slang/v2.2/slang-2.2.4.tar.bz2,Kai Kang <kai.kang@windriver.com>)
['sato-icon-theme', '0.4.1', '0.4.1', 'CC-BY-SA-3.0', 'x11', 'http://www.o-=
hand.com', 'r6', 'pkgconfig-native autoconf-native automake-native libtool-=
native gnu-config-native  icon-naming-utils-native libxml-simple-perl-nativ=
e hicolor-icon-theme gtk-update-icon-cache-native perl-native', 'http://bug=
zilla.openedhand.com/', 'None', 'Sato Icon Theme', 'MATCH', 'N/A', 'http://=
pokylinux.org/releases/sato/sato-icon-theme-0.4.1.tar.gz', 'Constantin Musc=
a <constantinx.musca@intel.com>', 'None']
inserted (sato-icon-theme,0.4.1,0.4.1,CC-BY-SA-3.0,x11,r6,None,http://www.o=
-hand.com,http://bugzilla.openedhand.com/,MATCH,pkgconfig-native autoconf-n=
ative automake-native libtool-native gnu-config-native  icon-naming-utils-n=
ative libxml-simple-perl-native hicolor-icon-theme gtk-update-icon-cache-na=
tive perl-native,Sato Icon Theme,N/A,http://pokylinux.org/releases/sato/sat=
o-icon-theme-0.4.1.tar.gz,Constantin Musca <constantinx.musca@intel.com>)
['mobile-broadband-provider-info', '20120614+gitrAUTOINC+4ed19e1', '2012061=
4+gitrAUTOINC+0cfe987', 'PD', 'network', 'unknown', 'r0', 'autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'Non=
e', '1', 'Mobile Broadband Service Provider Database', 'MATCH', 'N/A', 'git=
://git.gnome.org/mobile-broadband-provider-info;protocol=3Dgit', 'Radu Mois=
an <radu.moisan@intel.com>', 'None']
inserted (mobile-broadband-provider-info,20120614+gitrAUTOINC+4ed19e1,20120=
614+gitrAUTOINC+0cfe987,PD,network,r0,1,unknown,None,MATCH,autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Mobile=
 Broadband Service Provider Database,N/A,git://git.gnome.org/mobile-broadba=
nd-provider-info;protocol=3Dgit,Radu Moisan <radu.moisan@intel.com>)
['cdrtools-native', '2.01', '3.00', 'GPLv2', 'console/utils', 'http://cdrec=
ord.berlios.de/private/cdrecord.html', 'r2', ' ', 'None', 'None', 'A set of=
 tools for CD recording, including cdrecord', 'UPDATE', 'N/A', 'ftp://ftp.b=
erlios.de/pub/cdrecord/cdrtools-2.01.tar.bz2', 'Andrei Dinu <andrei.adrianx=
=2Edinu@intel.com>', 'None']
inserted (cdrtools-native,2.01,3.00,GPLv2,console/utils,r2,None,http://cdre=
cord.berlios.de/private/cdrecord.html,None,UPDATE, ,A set of tools for CD r=
ecording, including cdrecord,N/A,ftp://ftp.berlios.de/pub/cdrecord/cdrtools=
-2.01.tar.bz2,Andrei Dinu <andrei.adrianx.dinu@intel.com>)
['dmxproto', '2.3.1', '2.3.1', 'MIT', 'x11/libs', 'http://www.x.org', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/ent=
er_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol f=
or the DMX extension.  The DMX extension provides support for communication=
 with and control of Xdmx server.  Attributes of the Xdmx server and of the=
 back-end screens attached to the server can be queried and modified via th=
is protocol.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/indivi=
dual/proto/dmxproto-2.3.1.tar.bz2', 'Constantin Musca <constantinx.musca@in=
tel.com>', 'None']
inserted (dmxproto,2.3.1,2.3.1,MIT,x11/libs,r0,1,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  util-macros,This package provides the wire protocol for the DMX exten=
sion.  The DMX extension provides support for communication with and contro=
l of Xdmx server.  Attributes of the Xdmx server and of the back-end screen=
s attached to the server can be queried and modified via this protocol.,N/A=
,http://xorg.freedesktop.org/releases/individual/proto/dmxproto-2.3.1.tar.b=
z2,Constantin Musca <constantinx.musca@intel.com>)
['diffutils', '3.2', '3.3', 'GPLv3+', 'base', 'unknown', 'r7.1', 'autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native virtu=
al/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc   virtual/update-alternatives', 'None', 'None=
', 'Diffutils contains the GNU diff, diff3, sdiff, and cmp utilities. These=
 programs are usually used for creating patch files.', 'UPDATE', 'N/A', 'ft=
p://ftp.gnu.org/gnu/diffutils/diffutils-3.2.tar.gz', 'Radu Moisan <radu.moi=
san@intel.com>', 'None']
inserted (diffutils,3.2,3.3,GPLv3+,base,r7.1,None,unknown,None,UPDATE,autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native v=
irtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc   virtual/update-alternatives,Diffutils c=
ontains the GNU diff, diff3, sdiff, and cmp utilities. These programs are u=
sually used for creating patch files.,N/A,ftp://ftp.gnu.org/gnu/diffutils/d=
iffutils-3.2.tar.gz,Radu Moisan <radu.moisan@intel.com>)
['pseudo', '1.5.1', '1.5.1', 'LGPL2.1', 'base', 'http://git.yoctoproject.or=
g/cgit/cgit.cgi/pseudo', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  sqlite3', 'None', 'None', 'Pseudo give=
s fake root capabilities to a normal user', 'MATCH', 'N/A', 'http://www.yoc=
toproject.org/downloads/pseudo/pseudo-1.5.1.tar.bz2', 'Mark Hatle <mark.hat=
le@windriver.com>', 'None']
inserted (pseudo,1.5.1,1.5.1,LGPL2.1,base,r3,None,http://git.yoctoproject.o=
rg/cgit/cgit.cgi/pseudo,None,MATCH, virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  sqlite3,Pseudo gives fake root capa=
bilities to a normal user,N/A,http://www.yoctoproject.org/downloads/pseudo/=
pseudo-1.5.1.tar.bz2,Mark Hatle <mark.hatle@windriver.com>)
['usbutils', '006', '006', 'GPLv2+', 'base', 'http://www.linux-usb.org', 'r=
0', 'autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  libusb zlib', 'None', 'None', 'Contains the lsusb utility for=
 inspecting the devices connected to the USB bus.', 'MATCH', '006', 'http:/=
/kernel.org/pub/linux/utils/usb/usbutils/usbutils-006.tar.gz', 'Radu Moisan=
 <radu.moisan@intel.com>', 'None']
inserted (usbutils,006,006,GPLv2+,base,r0,None,http://www.linux-usb.org,Non=
e,MATCH,autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  libusb zlib,Contains the lsusb utility for inspecting the =
devices connected to the USB bus.,006,http://kernel.org/pub/linux/utils/usb=
/usbutils/usbutils-006.tar.gz,Radu Moisan <radu.moisan@intel.com>)
['e2fsprogs', '1.42.7', '1.42.7', 'GPLv2 & LGPLv2 & BSD & MIT', 'base', 'ht=
tp://e2fsprogs.sourceforge.net/', 'r0', 'autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  util-linux', 'None', 'None', 'The Ext2 Filesystem Utilities (e2fsprog=
s) contain all of the standard utilities for creating, fixing, configuring =
, and debugging ext2 filesystems.', 'MATCH', 'N/A', 'http://downloads.sourc=
eforge.net/e2fsprogs/e2fsprogs-1.42.7.tar.gz', 'Andrei Dinu <andrei.adrianx=
=2Edinu@intel.com>', 'None']
inserted (e2fsprogs,1.42.7,1.42.7,GPLv2 & LGPLv2 & BSD & MIT,base,r0,None,h=
ttp://e2fsprogs.sourceforge.net/,None,MATCH,autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  util-linux,The Ext2 Filesystem Utilities (e2fsprogs) contain all o=
f the standard utilities for creating, fixing, configuring , and debugging =
ext2 filesystems.,N/A,http://downloads.sourceforge.net/e2fsprogs/e2fsprogs-=
1.42.7.tar.gz,Andrei Dinu <andrei.adrianx.dinu@intel.com>)
['libdumpvalue-perl', '1.17', '1.17', 'Artistic-1.0 | GPL-1.0+', 'libs', 'h=
ttp://search.cpan.org/~flora/Dumpvalue/', 'r0', ' virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native', '=
None', 'None', 'Perl module for provides screen dump of Perl data.', 'MATCH=
', 'N/A', 'http://search.cpan.org/CPAN/authors/id/F/FL/FLORA/Dumpvalue-1.17=
=2Etar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libdumpvalue-perl,1.17,1.17,Artistic-1.0 | GPL-1.0+,libs,r0,None,=
http://search.cpan.org/~flora/Dumpvalue/,None,MATCH, virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native,=
Perl module for provides screen dump of Perl data.,N/A,http://search.cpan.o=
rg/CPAN/authors/id/F/FL/FLORA/Dumpvalue-1.17.tar.gz,Saul Wold <sgw@linux.in=
tel.com>)
['libmatchbox', '1.10', '1.10', 'LGPLv2+', 'x11/libs', 'http://matchbox-pro=
ject.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 libxext expat l=
ibxft jpeg libpng zlib libxsettings-client startup-notification', 'http://b=
ugzilla.yoctoproject.com/', 'None', 'Matchbox window manager core library',=
 'MATCH', 'N/A', 'http://downloads.yoctoproject.org/releases/matchbox/libma=
tchbox/1.10/libmatchbox-1.10.tar.gz', 'Constantin Musca <constantinx.musca@=
intel.com>', 'None']
inserted (libmatchbox,1.10,1.10,LGPLv2+,x11/libs,r0,None,http://matchbox-pr=
oject.org/,http://bugzilla.yoctoproject.com/,MATCH,pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  virtual/libx11 libxext expat libxft jpeg libpng zlib libxsettings-client =
startup-notification,Matchbox window manager core library,N/A,http://downlo=
ads.yoctoproject.org/releases/matchbox/libmatchbox/1.10/libmatchbox-1.10.ta=
r.gz,Constantin Musca <constantinx.musca@intel.com>)
['transfig-native', '3.2.5d', '3.2.5d', 'MIT', 'console/utils', 'http://www=
-epb.lbl.gov/xfig/', 'r1', ' imake-native xorg-cf-files-native zlib-native =
jpeg-native libpng-native libxpm-native', 'None', 'None', 'This package con=
tains utilities (mainly fig2dev) to handle XFig (Facility for Interactive G=
eneration of figures) files.', 'MATCH', 'N/A', 'http://downloads.sourceforg=
e.net/mcj/transfig.3.2.5d.tar.gz', 'Andrei Dinu <andrei.adrianx.dinu@intel.=
com>', 'None']
inserted (transfig-native,3.2.5d,3.2.5d,MIT,console/utils,r1,None,http://ww=
w-epb.lbl.gov/xfig/,None,MATCH, imake-native xorg-cf-files-native zlib-nati=
ve jpeg-native libpng-native libxpm-native,This package contains utilities =
(mainly fig2dev) to handle XFig (Facility for Interactive Generation of fig=
ures) files.,N/A,http://downloads.sourceforge.net/mcj/transfig.3.2.5d.tar.g=
z,Andrei Dinu <andrei.adrianx.dinu@intel.com>)
['renderproto', '0.11.1', '0.11.1', 'MIT-style', 'x11/libs', 'http://www.x.=
org', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesk=
top.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire=
 protocol for the X Rendering extension.  This is the basis the image compo=
sition within the X window system.', 'MATCH', 'N/A', 'http://xorg.freedeskt=
op.org/releases/individual/proto/renderproto-0.11.1.tar.bz2', 'Constantin M=
usca <constantinx.musca@intel.com>', 'None']
inserted (renderproto,0.11.1,0.11.1,MIT-style,x11/libs,r1,1,http://www.x.or=
g,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  util-macros,This package provides the wire protocol for th=
e X Rendering extension.  This is the basis the image composition within th=
e X window system.,N/A,http://xorg.freedesktop.org/releases/individual/prot=
o/renderproto-0.11.1.tar.bz2,Constantin Musca <constantinx.musca@intel.com>)
['oprofile', '0.9.8', '0.9.8', 'LGPLv2.1+ & GPLv2', 'devel', 'http://oprofi=
le.sourceforge.net/news/', 'r2.3', 'autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  popt binutils virtual/kernel',=
 'http://sourceforge.net/tracker/?group_id=3D16191&atid=3D116191', 'None', =
'OProfile is a system-wide profiler for Linux systems, capable of profiling=
 all running code at low overhead.', 'MATCH', 'N/A', 'file://opstart.patch'=
, 'Bogdan Marinescu <bogdan.a.marinescu@intel.com>', 'None']
inserted (oprofile,0.9.8,0.9.8,LGPLv2.1+ & GPLv2,devel,r2.3,None,http://opr=
ofile.sourceforge.net/news/,http://sourceforge.net/tracker/?group_id=3D1619=
1&atid=3D116191,MATCH,autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  popt binutils virtual/kernel,OProfile is a s=
ystem-wide profiler for Linux systems, capable of profiling all running cod=
e at low overhead.,N/A,file://opstart.patch,Bogdan Marinescu <bogdan.a.mari=
nescu@intel.com>)
['libksba', '1.3.0', '1.3.0', 'GPLv2+ | LGPLv3+ | GPLv3+', 'base', 'http://=
www.gnupg.org/related_software/libksba/', 'r1', 'pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
libgpg-error', 'None', 'None', 'Libksba provides an easy API to create and =
parse X.509 and CMS related objects.', 'MATCH', 'N/A', 'ftp://ftp.gnupg.org=
/gcrypt/libksba/libksba-1.3.0.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', =
'None']
inserted (libksba,1.3.0,1.3.0,GPLv2+ | LGPLv3+ | GPLv3+,base,r1,None,http:/=
/www.gnupg.org/related_software/libksba/,None,MATCH,pkgconfig-native autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  libgpg-error,Libksba provides an easy API to create and parse X.509 and =
CMS related objects.,N/A,ftp://ftp.gnupg.org/gcrypt/libksba/libksba-1.3.0.t=
ar.bz2,Saul Wold <sgw@linux.intel.com>)
['base-passwd', '3.5.26', '3.5.26', 'GPLv2+', 'base', 'unknown', 'r2', 'aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  ', 'None', 'None', 'The master copies of the user database files (/et=
c/passwd and /etc/group).  The update-passwd tool is also provided to keep =
the system databases synchronized with these master files.', 'MATCH', 'N/A'=
, 'ftp://ftp.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.26.t=
ar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (base-passwd,3.5.26,3.5.26,GPLv2+,base,r2,None,unknown,None,MATCH,=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  ,The master copies of the user database files (/etc/passwd and /et=
c/group).  The update-passwd tool is also provided to keep the system datab=
ases synchronized with these master files.,N/A,ftp://ftp.debian.org/debian/=
pool/main/b/base-passwd/base-passwd_3.5.26.tar.gz,Saul Wold <sgw@linux.inte=
l.com>)
['mpfr', '3.1.1', '3.1.2', 'GPLv3&LGPLv3', 'devel', 'http://www.mpfr.org/',=
 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  gmp', 'None', 'None', 'A C library for multiple-precision =
floating-point computations with exact rounding', 'UPDATE', 'N/A', 'http://=
www.mpfr.org/mpfr-3.1.1/mpfr-3.1.1.tar.bz2', 'Bogdan Marinescu <bogdan.a.ma=
rinescu@intel.com>', 'None']
inserted (mpfr,3.1.1,3.1.2,GPLv3&LGPLv3,devel,r0,None,http://www.mpfr.org/,=
None,UPDATE,autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  gmp,A C library for multiple-precision floating-point =
computations with exact rounding,N/A,http://www.mpfr.org/mpfr-3.1.1/mpfr-3.=
1.1.tar.bz2,Bogdan Marinescu <bogdan.a.marinescu@intel.com>)

Database update successful!
Now updating pkgrecord table and generate new upgr_hist table, please wait =
a minute......
['milestone_target_to_db.py', '2012-11-01']
SERVER_PATH: /srv/www/vhosts/packages.yoctoproject.org/python-function/../n=
ewserver/webserver/
Database update successful!
Traceback (most recent call last):
  File "history_upgrade_number_chart.py", line 4, in <module>
    from pygooglechart import GroupedVerticalBarChart, Axis
ImportError: No module named pygooglechart
REPORT-SYSTEM-UPDATE ERROR: Draw barchart faild!
Any problem, please contact Saul Wold <sgw@linux.intel.com>=20

--Kj7319i9nmIyA2yE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--Kj7319i9nmIyA2yE--
