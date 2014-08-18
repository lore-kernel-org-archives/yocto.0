Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47272E007E6; Sun, 17 Aug 2014 19:01:09 -0700 (PDT)
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B08CE00799
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 19:01:09 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 28EF2A42D9; Mon, 18 Aug 2014 02:01:09 +0000 (UTC)
Date: Mon, 18 Aug 2014 02:01:09 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140818020108.GA2645@packages.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
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
X-List-Received-Date: Mon, 18 Aug 2014 02:01:09 -0000
X-Groupsio-MsgNum: 21129
Content-Type: multipart/mixed; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=46rom git://git.yoctoproject.org/poky
   7ae2008..59b0f7f  master     -> master
error: Ref refs/heads/master is at 59b0f7f01bbac6f1c10ee00382c5136d1f327960=
 but expected 7ae20083e4a4c3ca6458ea6c3bb92be31866065f
=46rom git://git.yoctoproject.org/poky
 ! 7ae2008..59b0f7f  master     -> master  (unable to update local ref)
REPORT-SYSTEM-UPDATE ERROR: Get the latest poky tree failed
Warning: fetch updated the current branch head.
Warning: fast-forwarding your working tree from
Warning: commit 7ae20083e4a4c3ca6458ea6c3bb92be31866065f.
Already up-to-date. Yeeah!
Now updating daily_check database, please wait for a minute......
Now updating pkginfotable,please wait a minute........
['Package', 'Version', 'Upver', 'License', 'Section', 'Home', 'Release', 'D=
epends', 'BugTracker', 'PE', 'Description', 'Status', 'Tracking', 'URI', 'M=
AINTAINER', 'NoUpReason']
['mmc-utils', '0.1', '0.1', 'GPLv2', 'base', 'http://git.kernel.org/cgit/li=
nux/kernel/git/cjb/mmc-utils.git/', 'r0', ' virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'Userspa=
ce tools for MMC/SD devices', 'ErrUnknown:git.kernel.org/pub/scm/linux/kern=
el/git/cjb/mmc-utils.git', 'N/A', 'git://git.kernel.org/pub/scm/linux/kerne=
l/git/cjb/mmc-utils.git;protocol=3Dgit;branch=3Dmaster', 'None', 'None']
inserted (mmc-utils,0.1,0.1,GPLv2,base,r0,None,http://git.kernel.org/cgit/l=
inux/kernel/git/cjb/mmc-utils.git/,None,ErrUnknown:git.kernel.org/pub/scm/l=
inux/kernel/git/cjb/mmc-utils.git, virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  ,Userspace tools for MMC/SD devices,=
N/A,git://git.kernel.org/pub/scm/linux/kernel/git/cjb/mmc-utils.git;protoco=
l=3Dgit;branch=3Dmaster,None)
['busybox', '1.22.1', '1.22.1', 'GPLv2 & bzip2', 'base', 'http://www.busybo=
x.net', 'r32', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc   kern-tools-native update-rc.d-native initscripts virt=
ual/update-alternatives', 'https://bugs.busybox.net/', 'None', 'BusyBox com=
bines tiny versions of many common UNIX utilities into a single small execu=
table. It provides minimalist replacements for most of the utilities you us=
ually find in GNU fileutils, shellutils, etc. The utilities in BusyBox gene=
rally have fewer options than their full-featured GNU cousins; however, the=
 options that are included provide the expected functionality and behave ve=
ry much like their GNU counterparts. BusyBox provides a fairly complete POS=
IX environment for any small or embedded system.', 'MATCH', 'N/A', 'http://=
www.busybox.net/downloads/busybox-1.22.1.tar.bz2;name=3Dtarball', 'Chen Qi =
<Qi.Chen@windriver.com>', 'None']
inserted (busybox,1.22.1,1.22.1,GPLv2 & bzip2,base,r32,None,http://www.busy=
box.net,https://bugs.busybox.net/,MATCH, virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc   kern-tools-native update-rc.d=
-native initscripts virtual/update-alternatives,BusyBox combines tiny versi=
ons of many common UNIX utilities into a single small executable. It provid=
es minimalist replacements for most of the utilities you usually find in GN=
U fileutils, shellutils, etc. The utilities in BusyBox generally have fewer=
 options than their full-featured GNU cousins; however, the options that ar=
e included provide the expected functionality and behave very much like the=
ir GNU counterparts. BusyBox provides a fairly complete POSIX environment f=
or any small or embedded system.,N/A,http://www.busybox.net/downloads/busyb=
ox-1.22.1.tar.bz2;name=3Dtarball,Chen Qi <Qi.Chen@windriver.com>)
['telepathy-mission-control', '5.16.1', '5.99.11', 'LGPLv2.1+', 'libs', 'ht=
tp://telepathy.freedesktop.org/wiki/Mission_Control/', 'r0', 'pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  libtelepathy dbus-glib gconf libxslt-native  python-native ', =
'None', 'None', 'Central control for Telepathy IM connection managers.', 'U=
PDATE', 'N/A', 'http://telepathy.freedesktop.org/releases/telepathy-mission=
-control/telepathy-mission-control-5.16.1.tar.gz', 'Cristian Iorga <cristia=
n.iorga@intel.com>', 'None']
inserted (telepathy-mission-control,5.16.1,5.99.11,LGPLv2.1+,libs,r0,None,h=
ttp://telepathy.freedesktop.org/wiki/Mission_Control/,None,UPDATE,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  libtelepathy dbus-glib gconf libxslt-native  python-native=
 ,Central control for Telepathy IM connection managers.,N/A,http://telepath=
y.freedesktop.org/releases/telepathy-mission-control/telepathy-mission-cont=
rol-5.16.1.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['pth', '2.0.7', '2.0.7', 'GPLv2+', 'libs', 'http://www.gnu.org/software/pt=
h/', 'r3', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'GNU Portable Thre=
ads library.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/pth/pth-2.0.7.tar.gz'=
, 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (pth,2.0.7,2.0.7,GPLv2+,libs,r3,None,http://www.gnu.org/software/p=
th/,None,MATCH,pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  ,GNU Portable Threads library.,N/A=
,ftp://ftp.gnu.org/gnu/pth/pth-2.0.7.tar.gz,Saul Wold <sgw@linux.intel.com>)
['iputils', 's20121221', 's20121221', 'BSD & GPLv2+', 'console/network', 'h=
ttp://www.skbuff.net/iputils', 'r0', ' virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  gnutls docbook-utils-native sgml=
spl-native libcap virtual/update-alternatives', 'None', 'None', 'Utilities =
for the IP protocol, including traceroute6, tracepath, tracepath6, ping, pi=
ng6 and arping.', 'MATCH', 'N/A', 'http://www.skbuff.net/iputils/iputils-s2=
0121221.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (iputils,s20121221,s20121221,BSD & GPLv2+,console/network,r0,None,=
http://www.skbuff.net/iputils,None,MATCH, virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  gnutls docbook-utils-native s=
gmlspl-native libcap virtual/update-alternatives,Utilities for the IP proto=
col, including traceroute6, tracepath, tracepath6, ping, ping6 and arping.,=
N/A,http://www.skbuff.net/iputils/iputils-s20121221.tar.bz2,Saul Wold <sgw@=
linux.intel.com>)
['xf86miscproto', '0.9.3', '0.9.3', 'MIT', 'x11/libs', 'http://www.x.org', =
'r1', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire proto=
col for the XFree miscellaneous extension.  The XFree86-Misc extension prov=
ides a means to access input device configuration settings specific to the =
XFree86/Xorg DDX.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/i=
ndividual/proto/xf86miscproto-0.9.3.tar.bz2', 'Ross Burton <ross.burton@int=
el.com>', 'None']
inserted (xf86miscproto,0.9.3,0.9.3,MIT,x11/libs,r1,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros,This package provides the wire protocol for the XFre=
e miscellaneous extension.  The XFree86-Misc extension provides a means to =
access input device configuration settings specific to the XFree86/Xorg DDX=
=2E,N/A,http://xorg.freedesktop.org/releases/individual/proto/xf86miscproto=
-0.9.3.tar.bz2,Ross Burton <ross.burton@intel.com>)
['qemu-helper-native', '1.0', 'INVALID', 'GPLv2', 'base', '', 'r1', ' ', 'N=
one', 'None', 'Helper utilities needed by the runqemu script.', 'MATCH', 'N=
/A', 'file://tunctl.c', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (qemu-helper-native,1.0,INVALID,GPLv2,base,r1,None,,None,MATCH, ,H=
elper utilities needed by the runqemu script.,N/A,file://tunctl.c,Cristian =
Iorga <cristian.iorga@intel.com>)
['python-dbus', '1.2.0', '1.2.0', 'MIT', 'devel/python', 'http://www.freede=
sktop.org/Software/dbus', 'r0', 'pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  expat dbus dbus-=
glib virtual/libintl python-pyrex-native python-native python  python-nativ=
e ', 'None', 'None', 'Python bindings for the DBus inter-process communicat=
ion system.', 'MATCH', 'N/A', 'http://dbus.freedesktop.org/releases/dbus-py=
thon/dbus-python-1.2.0.tar.gz', 'Richard Purdie <richard.purdie@linuxfounda=
tion.org>', 'None']
inserted (python-dbus,1.2.0,1.2.0,MIT,devel/python,r0,None,http://www.freed=
esktop.org/Software/dbus,None,MATCH,pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  expat dbus db=
us-glib virtual/libintl python-pyrex-native python-native python  python-na=
tive ,Python bindings for the DBus inter-process communication system.,N/A,=
http://dbus.freedesktop.org/releases/dbus-python/dbus-python-1.2.0.tar.gz,R=
ichard Purdie <richard.purdie@linuxfoundation.org>)
['swabber-native', '0.0+gitAUTOINC+2d1fe36fb0', '0.0+gitAUTOINC+2d1fe36', '=
GPLv2', 'base', 'http://git.yoctoproject.org/cgit/cgit.cgi/swabber', 'r0', =
' ', 'None', 'None', 'Tool to monitor and report on host system file usage.=
', 'MATCH', 'N/A', 'git://git.yoctoproject.org/swabber', 'Saul Wold <sgw@li=
nux.intel.com>', 'None']
inserted (swabber-native,0.0+gitAUTOINC+2d1fe36fb0,0.0+gitAUTOINC+2d1fe36,G=
PLv2,base,r0,None,http://git.yoctoproject.org/cgit/cgit.cgi/swabber,None,MA=
TCH, ,Tool to monitor and report on host system file usage.,N/A,git://git.y=
octoproject.org/swabber,Saul Wold <sgw@linux.intel.com>)
['gstreamer1.0-plugins-good', '1.4.0', '1.4.0', 'GPLv2+ & LGPLv2.1+', 'mult=
imedia', 'http://gstreamer.freedesktop.org/', 'r0', 'pkgconfig-native autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native v=
irtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugins-base z=
lib bzip2 libcap cairo flac gdk-pixbuf udev jpeg libpng orc pulseaudio libs=
oup-2.4 speex taglib virtual/libx11 libsm libxrender libxfixes libxdamage',=
 'https://bugzilla.gnome.org/enter_bug.cgi?product=3DGstreamer', 'None', 'P=
lugins for the GStreamer multimedia framework 1.x.', 'MATCH', 'N/A', 'http:=
//gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.4.0.tar=
=2Exz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (gstreamer1.0-plugins-good,1.4.0,1.4.0,GPLv2+ & LGPLv2.1+,multimed=
ia,r0,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/ent=
er_bug.cgi?product=3DGstreamer,MATCH,pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native virtual/gettext g=
ettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  gstreamer1.0 gstreamer1.0-plugins-base zlib bzip2 libcap=
 cairo flac gdk-pixbuf udev jpeg libpng orc pulseaudio libsoup-2.4 speex ta=
glib virtual/libx11 libsm libxrender libxfixes libxdamage,Plugins for the G=
Streamer multimedia framework 1.x.,N/A,http://gstreamer.freedesktop.org/src=
/gst-plugins-good/gst-plugins-good-1.4.0.tar.xz,Cristian Iorga <cristian.io=
rga@intel.com>)
['gdbm', '1.11', '1.11', 'GPLv3', 'libs', 'http://www.gnu.org/software/gdbm=
/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native', 'None'=
, 'None', 'Key/value database library with extensible hashing.', 'MATCH', '=
N/A', 'ftp://ftp.gnu.org/gnu/gdbm/gdbm-1.11.tar.gz', 'Saul Wold <sgw@linux.=
intel.com>', 'None']
inserted (gdbm,1.11,1.11,GPLv3,libs,r0,None,http://www.gnu.org/software/gdb=
m/,None,MATCH,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native,Key/v=
alue database library with extensible hashing.,N/A,ftp://ftp.gnu.org/gnu/gd=
bm/gdbm-1.11.tar.gz,Saul Wold <sgw@linux.intel.com>)
['gpgme', '1.4.3', '1.5.1', 'GPLv2+ & LGPLv2.1+', 'base', 'http://www.gnupg=
=2Eorg/gpgme.html', 'r0', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  libgpg-error libassuan=
 texinfo-native', 'https://bugs.g10code.com/gnupg/index', 'None', 'GnuPG Ma=
de Easy (GPGME) is a library designed to make access to GnuPG easier for ap=
plications. It provides a High-Level Crypto API for encryption, decryption,=
 signing, signature verification and key management', 'UPDATE', 'N/A', 'ftp=
://ftp.gnupg.org/gcrypt/gpgme/gpgme-1.4.3.tar.bz2', 'Paul Eggleton <paul.eg=
gleton@linux.intel.com>', 'None']
inserted (gpgme,1.4.3,1.5.1,GPLv2+ & LGPLv2.1+,base,r0,None,http://www.gnup=
g.org/gpgme.html,https://bugs.g10code.com/gnupg/index,UPDATE,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  libgpg-error libassuan texinfo-native,GnuPG Made Easy (GPGME) i=
s a library designed to make access to GnuPG easier for applications. It pr=
ovides a High-Level Crypto API for encryption, decryption, signing, signatu=
re verification and key management,N/A,ftp://ftp.gnupg.org/gcrypt/gpgme/gpg=
me-1.4.3.tar.bz2,Paul Eggleton <paul.eggleton@linux.intel.com>)
['xserver-xorg', '1.15.1', '1.16.0', 'MIT-X', 'x11/base', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  randrproto renderproto fixesproto damag=
eproto xextproto xproto xf86dgaproto xf86miscproto xf86vidmodeproto composi=
teproto recordproto resourceproto videoproto scrnsaverproto  xineramaproto =
fontsproto kbproto inputproto bigreqsproto xcmiscproto presentproto pixman =
libxfont xtrans libxau libxext libxdmcp libdrm libxkbfile libpciaccess open=
ssl libgcrypt font-util glproto virtual/mesa xf86driproto dri2proto glproto=
 virtual/libgl virtual/libx11 udev', 'None', '2', 'The X.Org X server.', 'U=
PDATE', 'N/A', 'http://xorg.freedesktop.org/releases/individual/xserver/xor=
g-server-1.15.1.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xserver-xorg,1.15.1,1.16.0,MIT-X,x11/base,r0,2,http://www.x.org,N=
one,UPDATE,pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  randrproto renderproto fixesproto dama=
geproto xextproto xproto xf86dgaproto xf86miscproto xf86vidmodeproto compos=
iteproto recordproto resourceproto videoproto scrnsaverproto  xineramaproto=
 fontsproto kbproto inputproto bigreqsproto xcmiscproto presentproto pixman=
 libxfont xtrans libxau libxext libxdmcp libdrm libxkbfile libpciaccess ope=
nssl libgcrypt font-util glproto virtual/mesa xf86driproto dri2proto glprot=
o virtual/libgl virtual/libx11 udev,The X.Org X server.,N/A,http://xorg.fre=
edesktop.org/releases/individual/xserver/xorg-server-1.15.1.tar.bz2,Ross Bu=
rton <ross.burton@intel.com>)
['libice', '1.0.9', '1.0.9', 'MIT-style', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  util-macros xproto xtrans', 'https://bugs.f=
reedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Inter-Client Exchan=
ge (ICE) protocol provides a generic framework for building protocols on to=
p of reliable, byte-stream transport connections. It provides basic mechani=
sms for setting up and shutting down connections, for performing authentica=
tion, for negotiating versions, and for reporting errors. ', 'MATCH', 'N/A'=
, 'http://xorg.freedesktop.org/releases/individual/lib/libICE-1.0.9.tar.bz2=
', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libice,1.0.9,1.0.9,MIT-style,x11/libs,r0,1,http://www.x.org,https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  util-macros xproto xtrans,The Inter-Client Exchange (ICE) protoco=
l provides a generic framework for building protocols on top of reliable, b=
yte-stream transport connections. It provides basic mechanisms for setting =
up and shutting down connections, for performing authentication, for negoti=
ating versions, and for reporting errors. ,N/A,http://xorg.freedesktop.org/=
releases/individual/lib/libICE-1.0.9.tar.bz2,Ross Burton <ross.burton@intel=
=2Ecom>)
['ldconfig-native', '2.12.1', 'INVALID', 'GPLv2+', 'base', '', 'r2', ' ', '=
None', 'None', 'A standalone native ldconfig build.', 'MATCH', 'N/A', 'file=
://ldconfig-native-2.12.1.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'Non=
e']
inserted (ldconfig-native,2.12.1,INVALID,GPLv2+,base,r2,None,,None,MATCH, ,=
A standalone native ldconfig build.,N/A,file://ldconfig-native-2.12.1.tar.b=
z2,Saul Wold <sgw@linux.intel.com>)
['xset', '1.2.3', '1.2.3', 'MIT', 'x11/apps', 'http://www.x.org/', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros-native virtual/libx11 libxext libxxf86=
misc libxmu libxau', 'https://bugs.freedesktop.org', '1', 'xset is a utilit=
y that is used to set various user preference options of the display.', 'MA=
TCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/xset-1.2.=
3.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xset,1.2.3,1.2.3,MIT,x11/apps,r0,1,http://www.x.org/,https://bugs=
=2Efreedesktop.org,MATCH,pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native virtu=
al/libx11 libxext libxxf86misc libxmu libxau,xset is a utility that is used=
 to set various user preference options of the display.,N/A,http://xorg.fre=
edesktop.org/releases/individual/app/xset-1.2.3.tar.bz2,Ross Burton <ross.b=
urton@intel.com>)
['dropbear', '2014.63', '2014.65', 'MIT & BSD-3-Clause & BSD-2-Clause & PD'=
, 'console/network', 'http://matt.ucc.asn.au/dropbear/dropbear.html', 'r0',=
 'autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  zlib  update-rc.d-native initscripts virtual/update-alternatives=
', 'None', 'None', 'A lightweight SSH and SCP implementation.', 'UPDATE', '=
N/A', 'http://matt.ucc.asn.au/dropbear/releases/dropbear-2014.63.tar.bz2', =
'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (dropbear,2014.63,2014.65,MIT & BSD-3-Clause & BSD-2-Clause & PD,c=
onsole/network,r0,None,http://matt.ucc.asn.au/dropbear/dropbear.html,None,U=
PDATE,autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  zlib  update-rc.d-native initscripts virtual/update-alternat=
ives,A lightweight SSH and SCP implementation.,N/A,http://matt.ucc.asn.au/d=
ropbear/releases/dropbear-2014.63.tar.bz2,Paul Eggleton <paul.eggleton@linu=
x.intel.com>)
['gcc-crosssdk-i586', '4.9.1', '4.9.1', 'GPL-3.0-with-GCC-exception & GPLv3=
', 'devel', 'http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native auto=
make-native libtool-native gnu-config-native   virtual/i586-pokysdk-linux-b=
inutils-crosssdk virtual/nativesdk-i586-pokysdk-linux-libc-for-gcc gettext-=
native mpfr-native gmp-native libmpc-native zlib-native texinfo-native', 'N=
one', 'None', 'GNU cc and gcc C compilers.', 'MATCH', 'N/A', 'ftp://ftp.gnu=
=2Eorg/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2', 'Richard Purdie <richard.purdi=
e@linuxfoundation.org>', 'None']
inserted (gcc-crosssdk-i586,4.9.1,4.9.1,GPL-3.0-with-GCC-exception & GPLv3,=
devel,r0,None,http://www.gnu.org/software/gcc/,None,MATCH,autoconf-native a=
utomake-native libtool-native gnu-config-native   virtual/i586-pokysdk-linu=
x-binutils-crosssdk virtual/nativesdk-i586-pokysdk-linux-libc-for-gcc gette=
xt-native mpfr-native gmp-native libmpc-native zlib-native texinfo-native,G=
NU cc and gcc C compilers.,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.=
1.tar.bz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['libxt', '1.1.4', '1.1.4', 'MIT & MIT-style', 'x11/libs', 'http://www.x.or=
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
ividual/lib/libXt-1.1.4.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'N=
one']
inserted (libxt,1.1.4,1.1.4,MIT & MIT-style,x11/libs,r0,1,http://www.x.org,=
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
N/A,http://xorg.freedesktop.org/releases/individual/lib/libXt-1.1.4.tar.bz2=
,Ross Burton <ross.burton@intel.com>)
['kbproto', '1.0.6', '1.0.6', 'MIT-style', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire proto=
col for the X Keyboard extension.  This extension is used to control option=
s related to keyboard handling and layout.', 'MATCH', 'N/A', 'http://xorg.f=
reedesktop.org/releases/individual/proto/kbproto-1.0.6.tar.bz2', 'Ross Burt=
on <ross.burton@intel.com>', 'None']
inserted (kbproto,1.0.6,1.0.6,MIT-style,x11/libs,r0,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros,This package provides the wire protocol for the X Ke=
yboard extension.  This extension is used to control options related to key=
board handling and layout.,N/A,http://xorg.freedesktop.org/releases/individ=
ual/proto/kbproto-1.0.6.tar.bz2,Ross Burton <ross.burton@intel.com>)
['unzip', '60', '60', 'BSD-3-Clause', 'console/utils', 'http://www.info-zip=
=2Eorg', 'r5', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', '1', 'Utilities for extracting and viewing =
files in .zip archives.', 'MATCH', '6.0', 'ftp://ftp.info-zip.org/pub/infoz=
ip/src/unzip60.tgz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (unzip,60,60,BSD-3-Clause,console/utils,r5,1,http://www.info-zip.o=
rg,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  ,Utilities for extracting and viewing files in .zip arch=
ives.,6.0,ftp://ftp.info-zip.org/pub/infozip/src/unzip60.tgz,Saul Wold <sgw=
@linux.intel.com>)
['xauth', '1.0.9', '1.0.9', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxau libxex=
t libxmu', 'https://bugs.freedesktop.org', '1', 'X application to edit and =
display the authorization information used in connecting to the X server.',=
 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/xauth=
-1.0.9.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xauth,1.0.9,1.0.9,MIT-X,x11/apps,r0,1,http://www.x.org/,https://b=
ugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native virt=
ual/libx11 libxau libxext libxmu,X application to edit and display the auth=
orization information used in connecting to the X server.,N/A,http://xorg.f=
reedesktop.org/releases/individual/app/xauth-1.0.9.tar.bz2,Ross Burton <ros=
s.burton@intel.com>)
['libusb-compat', '0.1.5', '0.1.5', 'LGPLv2.1+', 'libs', 'http://www.libusb=
=2Eorg/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  libusb1', 'http://www.libusb.org=
/report', '1', 'libusb-0.1 compatible layer for libusb1, a drop-in replacem=
ent that aims to look, feel and behave exactly like libusb-0.1', 'MATCH', '=
N/A', 'http://downloads.sourceforge.net/libusb/libusb-compat-0.1.5.tar.bz2'=
, 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libusb-compat,0.1.5,0.1.5,LGPLv2.1+,libs,r0,1,http://www.libusb.o=
rg/,http://www.libusb.org/report,MATCH,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libusb1,li=
busb-0.1 compatible layer for libusb1, a drop-in replacement that aims to l=
ook, feel and behave exactly like libusb-0.1,N/A,http://downloads.sourcefor=
ge.net/libusb/libusb-compat-0.1.5.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['gnome-common', '3.12.0', '3.12.0', 'GPLv2+', 'x11/gnome', 'http://www.gno=
me.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative gnu-config-native  ', 'https://bugzilla.gnome.org/', 'None', 'Common =
macros for building GNOME applications.', 'MATCH', 'N/A', 'http://ftp.gnome=
=2Eorg/pub/GNOME/sources/gnome-common/3.12/gnome-common-3.12.0.tar.xz;name=
=3Darchive', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (gnome-common,3.12.0,3.12.0,GPLv2+,x11/gnome,r0,None,http://www.gn=
ome.org/,https://bugzilla.gnome.org/,MATCH,pkgconfig-native autoconf-native=
 automake-native libtool-native gnu-config-native  ,Common macros for build=
ing GNOME applications.,N/A,http://ftp.gnome.org/pub/GNOME/sources/gnome-co=
mmon/3.12/gnome-common-3.12.0.tar.xz;name=3Darchive,Ross Burton <ross.burto=
n@intel.com>)
['libxfont', '1.5.0', '1.5.0', 'MIT & MIT-style & BSD', 'x11/libs', 'http:/=
/www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  util-macros freetype xtrans f=
ontsproto libfontenc zlib', 'https://bugs.freedesktop.org/enter_bug.cgi?pro=
duct=3Dxorg', '1', 'libXfont provides various services for X servers, most =
notably font selection and rasterisation (through external libraries such a=
s freetype).', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/indivi=
dual/lib/libXfont-1.5.0.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'N=
one']
inserted (libxfont,1.5.0,1.5.0,MIT & MIT-style & BSD,x11/libs,r0,1,http://w=
ww.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  util-macros freetype xtrans fontsproto libfontenc z=
lib,libXfont provides various services for X servers, most notably font sel=
ection and rasterisation (through external libraries such as freetype).,N/A=
,http://xorg.freedesktop.org/releases/individual/lib/libXfont-1.5.0.tar.bz2=
,Ross Burton <ross.burton@intel.com>)
['puzzles', 'r10116', 'N/A', 'MIT', 'base', 'http://www.chiark.greenend.org=
=2Euk/~sgtatham/puzzles/', 'r0', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  gtk+ libxt', 'None', 'None', "Si=
mon Tatham's Portable Puzzle Collection.", 'UPDATE', 'N/A', 'svn://svn.tart=
arus.org/sgt;module=3Dpuzzles;rev=3D10116', 'Ross Burton <ross.burton@intel=
=2Ecom>', 'None']
inserted (puzzles,r10116,N/A,MIT,base,r0,None,http://www.chiark.greenend.or=
g.uk/~sgtatham/puzzles/,None,UPDATE,autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  gtk+ libxt,Simon Tatham's Port=
able Puzzle Collection.,N/A,svn://svn.tartarus.org/sgt;module=3Dpuzzles;rev=
=3D10116,Ross Burton <ross.burton@intel.com>)
['python-docutils', '0.12', '0.12', 'PSF & BSD-2-Clause & GPLv3', 'devel/py=
thon', 'http://docutils.sourceforge.net', 'r0', ' virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  python python-native =
python  python-native ', 'None', 'None', 'Text processing system for docume=
ntation.', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/docutils/docut=
ils-0.12.tar.gz', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'N=
one']
inserted (python-docutils,0.12,0.12,PSF & BSD-2-Clause & GPLv3,devel/python=
,r0,None,http://docutils.sourceforge.net,None,MATCH, virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  python python-nati=
ve python  python-native ,Text processing system for documentation.,N/A,htt=
p://downloads.sourceforge.net/docutils/docutils-0.12.tar.gz,Richard Purdie =
<richard.purdie@linuxfoundation.org>)
['gtk+', '2.24.22', '3.13.7', 'LGPLv2 & LGPLv2+ & LGPLv2.1+', 'libs', 'http=
://www.gtk.org', 'r0', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  qemu-native glib-2.0 pang=
o atk jpeg libpng gdk-pixbuf-native docbook-utils-native  cairo gdk-pixbuf =
gtk-doc-stub-native virtual/libx11 libxext libxcursor libxrandr libxdamage =
libxrender libxcomposite virtual/update-alternatives', 'https://bugzilla.gn=
ome.org/', 'None', 'GTK+ is a multi-platform toolkit for creating graphical=
 user interfaces. Offering a complete set of widgets, GTK+ is suitable for =
projects ranging from small one-off projects to complete application suites=
=2E', 'UPDATE', 'N/A', 'http://ftp.gnome.org/pub/gnome/sources/gtk+/2.24/gt=
k+-2.24.22.tar.xz', 'Ross Burton <ross.burton@intel.com>', 'Do not upgrade =
to version: 2.99.2 because prefer stable tree']
inserted (gtk+,2.24.22,3.13.7,LGPLv2 & LGPLv2+ & LGPLv2.1+,libs,r0,None,htt=
p://www.gtk.org,https://bugzilla.gnome.org/,UPDATE,pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  qemu-native glib-2.0 pango atk jpeg libpng gdk-pixbuf-native docbook-util=
s-native  cairo gdk-pixbuf gtk-doc-stub-native virtual/libx11 libxext libxc=
ursor libxrandr libxdamage libxrender libxcomposite virtual/update-alternat=
ives,GTK+ is a multi-platform toolkit for creating graphical user interface=
s. Offering a complete set of widgets, GTK+ is suitable for projects rangin=
g from small one-off projects to complete application suites.,N/A,http://ft=
p.gnome.org/pub/gnome/sources/gtk+/2.24/gtk+-2.24.22.tar.xz,Ross Burton <ro=
ss.burton@intel.com>)
['lttng-modules', '2.5.0', '2.5.0', 'LGPLv2.1 & GPLv2 & MIT', 'devel', '', =
'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  virtual/kernel virtual/kernel', 'None', 'None', 'The lttng-modu=
les 2.0 package contains the kernel tracer modules', 'ErrUnknown:git.lttng.=
org/lttng-modules.git', 'N/A', 'git://git.lttng.org/lttng-modules.git;branc=
h=3Dstable-2.5', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'No=
ne']
inserted (lttng-modules,2.5.0,2.5.0,LGPLv2.1 & GPLv2 & MIT,devel,r0,None,,N=
one,ErrUnknown:git.lttng.org/lttng-modules.git, virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/kernel virtual/=
kernel,The lttng-modules 2.0 package contains the kernel tracer modules,N/A=
,git://git.lttng.org/lttng-modules.git;branch=3Dstable-2.5,Richard Purdie <=
richard.purdie@linuxfoundation.org>)
['gnutls', '3.3.5', '3.3.6', 'GPLv3+ & LGPLv2.1+', 'base', 'http://www.gnu.=
org/software/gnutls/', 'r0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native virtual/gettext gettext-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  zlib nettle texinfo-native', 'https://savannah.gnu.org/support/=
?group=3Dgnutls', 'None', 'GNU Transport Layer Security Library.', 'UPDATE'=
, 'N/A', 'ftp://ftp.gnutls.org/gcrypt/gnutls/v3.3/gnutls-3.3.5.tar.xz', 'Ro=
ss Burton <ross.burton@intel.com>', 'None']
inserted (gnutls,3.3.5,3.3.6,GPLv3+ & LGPLv2.1+,base,r0,None,http://www.gnu=
=2Eorg/software/gnutls/,https://savannah.gnu.org/support/?group=3Dgnutls,UP=
DATE,pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib nettle t=
exinfo-native,GNU Transport Layer Security Library.,N/A,ftp://ftp.gnutls.or=
g/gcrypt/gnutls/v3.3/gnutls-3.3.5.tar.xz,Ross Burton <ross.burton@intel.com=
>)
['apmd', '3.2.2-14', '3.2.2', 'GPLv2+', 'base', 'http://apenwarr.ca/apmd/',=
 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  libtool-cross update-rc.d-native initscripts', 'None', 'None',=
 'The Advanced Power Management (APM) support provides access to battery st=
atus information and a set of tools for managing notebook power consumption=
=2E', 'UPDATE', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/a/apmd/apmd_3=
=2E2.2.orig.tar.gz;name=3Dtarball', 'Cristian Iorga <cristian.iorga@intel.c=
om>', 'None']
inserted (apmd,3.2.2-14,3.2.2,GPLv2+,base,r2,None,http://apenwarr.ca/apmd/,=
None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  libtool-cross update-rc.d-native initscripts,The Advanced =
Power Management (APM) support provides access to battery status informatio=
n and a set of tools for managing notebook power consumption.,N/A,ftp://ftp=
=2Edebian.org/debian/pool/main/a/apmd/apmd_3.2.2.orig.tar.gz;name=3Dtarball=
,Cristian Iorga <cristian.iorga@intel.com>)
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
ual/lib/libXScrnSaver-1.2.2.tar.bz2', 'Ross Burton <ross.burton@intel.com>'=
, 'None']
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
z2,Ross Burton <ross.burton@intel.com>)
['gst-plugins-bad', '0.10.23', '0.10.23', 'GPLv2+ & LGPLv2+ & LGPLv2.1+ ', =
'multimedia', 'http://gstreamer.freedesktop.org/', 'r4', 'pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base glib-2.0=
-native bzip2 curl librsvg', 'https://bugzilla.gnome.org/enter_bug.cgi?prod=
uct=3DGstreamer', 'None', 'Plugins for the GStreamer multimedia framework.'=
, 'MATCH', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-plugins-bad/gst=
-plugins-bad-0.10.23.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>',=
 'not compatible with gst-fluendo 0.10.x']
inserted (gst-plugins-bad,0.10.23,0.10.23,GPLv2+ & LGPLv2+ & LGPLv2.1+ ,mul=
timedia,r4,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.or=
g/enter_bug.cgi?product=3DGstreamer,MATCH,pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native virtual/gett=
ext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  gstreamer gst-plugins-base glib-2.0-native bzip2 cu=
rl librsvg,Plugins for the GStreamer multimedia framework.,N/A,http://gstre=
amer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-0.10.23.tar.bz2,Cr=
istian Iorga <cristian.iorga@intel.com>)
['npth', '0.91', '0.91', 'LGPLv3+ & GPLv2+', 'libs', 'http://www.gnupg.org/=
software/pth/', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'None', 'None', 'New GNU Portable Thread=
s library.', 'MATCH', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/npth/npth-0.91.tar=
=2Ebz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (npth,0.91,0.91,LGPLv3+ & GPLv2+,libs,r0,None,http://www.gnupg.org=
/software/pth/,None,MATCH,autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ,New GNU Portable Threads library.,N/A,f=
tp://ftp.gnupg.org/gcrypt/npth/npth-0.91.tar.bz2,Saul Wold <sgw@linux.intel=
=2Ecom>)
['ghostscript', '9.14', '9.14', 'GPLv3', 'console/utils', 'http://www.ghost=
script.com', 'r0', 'autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ghostscript-native tiff jpeg fontconfig cups',=
 'None', 'None', 'Ghostscript is used for PostScript/PDF preview and printi=
ng.  Usually as a back-end to a program such as ghostview, it can display P=
ostScript and PDF documents in an X11 environment. Furthermore, it can rend=
er PostScript and PDF files as graphics to be printed on non-PostScript pri=
nters. Supported printers include common dot-matrix, inkjet and laser model=
s. ', 'MATCH', 'N/A', 'http://downloads.ghostscript.com/public/ghostscript-=
9.14.tar.gz', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (ghostscript,9.14,9.14,GPLv3,console/utils,r0,None,http://www.ghos=
tscript.com,None,MATCH,autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ghostscript-native tiff jpeg fontconfig cup=
s,Ghostscript is used for PostScript/PDF preview and printing.  Usually as =
a back-end to a program such as ghostview, it can display PostScript and PD=
F documents in an X11 environment. Furthermore, it can render PostScript an=
d PDF files as graphics to be printed on non-PostScript printers. Supported=
 printers include common dot-matrix, inkjet and laser models. ,N/A,http://d=
ownloads.ghostscript.com/public/ghostscript-9.14.tar.gz,Hongxu Jia <hongxu.=
jia@windriver.com>)
['sysvinit', '2.88dsf', '2.88dsf', 'GPLv2+', 'base', 'http://savannah.nongn=
u.org/projects/sysvinit/', 'r14', ' virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc   update-rc.d-native base-passwd vir=
tual/update-alternatives', 'None', 'None', 'This package is required to boo=
t in most configurations.  It provides the /sbin/init program.  This is the=
 first process started on boot, and the last process terminated before the =
system halts.', 'MATCH', 'N/A', 'http://download.savannah.gnu.org/releases/=
sysvinit/sysvinit-2.88dsf.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'Non=
e']
inserted (sysvinit,2.88dsf,2.88dsf,GPLv2+,base,r14,None,http://savannah.non=
gnu.org/projects/sysvinit/,None,MATCH, virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc   update-rc.d-native base-passwd =
virtual/update-alternatives,This package is required to boot in most config=
urations.  It provides the /sbin/init program.  This is the first process s=
tarted on boot, and the last process terminated before the system halts.,N/=
A,http://download.savannah.gnu.org/releases/sysvinit/sysvinit-2.88dsf.tar.b=
z2,Saul Wold <sgw@linux.intel.com>)
['telepathy-idle', '0.2.0', '0.99.11', 'LGPLv2.1', 'base', 'http://telepath=
y.freedesktop.org/wiki/', 'r0', 'pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus te=
lepathy-glib openssl libxslt-native  python-native ', 'None', 'None', 'Tele=
pathy implementation of the Internet Relay Chat protocols.', 'UPDATE', 'N/A=
', 'http://telepathy.freedesktop.org/releases/telepathy-idle/telepathy-idle=
-0.2.0.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (telepathy-idle,0.2.0,0.99.11,LGPLv2.1,base,r0,None,http://telepat=
hy.freedesktop.org/wiki/,None,UPDATE,pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbu=
s telepathy-glib openssl libxslt-native  python-native ,Telepathy implement=
ation of the Internet Relay Chat protocols.,N/A,http://telepathy.freedeskto=
p.org/releases/telepathy-idle/telepathy-idle-0.2.0.tar.gz,Cristian Iorga <c=
ristian.iorga@intel.com>)
['gst-plugins-good', '0.10.31', '0.10.31', 'GPLv2+ & LGPLv2.1+', 'multimedi=
a', 'http://gstreamer.freedesktop.org/', 'r8', 'pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native virtua=
l/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  gstreamer gst-plugins-base gconf cairo libpng=
 zlib libid3tag flac             speex libsoup-2.4 libcap gconf gconf-nativ=
e jpeg pulseaudio virtual/libx11 libxfixes libxdamage', 'https://bugzilla.g=
nome.org/enter_bug.cgi?product=3DGstreamer', 'None', 'Plugins for the GStre=
amer multimedia framework.', 'MATCH', 'N/A', 'http://gstreamer.freedesktop.=
org/src/gst-plugins-good/gst-plugins-good-0.10.31.tar.bz2', 'Cristian Iorga=
 <cristian.iorga@intel.com>', 'not compatible with gst-fluendo 0.10.x']
inserted (gst-plugins-good,0.10.31,0.10.31,GPLv2+ & LGPLv2.1+,multimedia,r8=
,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/enter_bu=
g.cgi?product=3DGstreamer,MATCH,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native virtual/gettext gettex=
t-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  gstreamer gst-plugins-base gconf cairo libpng zlib libid3tag =
flac             speex libsoup-2.4 libcap gconf gconf-native jpeg pulseaudi=
o virtual/libx11 libxfixes libxdamage,Plugins for the GStreamer multimedia =
framework.,N/A,http://gstreamer.freedesktop.org/src/gst-plugins-good/gst-pl=
ugins-good-0.10.31.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['libid3tag', '0.15.1b', '0.15.1b', 'GPLv2+', 'libs', 'http://sourceforge.n=
et/projects/mad/', 'r7', 'pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  zlib gperf-native', 'ht=
tp://sourceforge.net/tracker/?group_id=3D12349&atid=3D112349', 'None', 'Lib=
rary for interacting with ID3 tags in MP3 files.', 'MATCH', 'N/A', 'ftp://f=
tp.mars.org/pub/mpeg/libid3tag-0.15.1b.tar.gz', 'Cristian Iorga <cristian.i=
orga@intel.com>', 'None']
inserted (libid3tag,0.15.1b,0.15.1b,GPLv2+,libs,r7,None,http://sourceforge.=
net/projects/mad/,http://sourceforge.net/tracker/?group_id=3D12349&atid=3D1=
12349,MATCH,pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  zlib gperf-native,Library for interac=
ting with ID3 tags in MP3 files.,N/A,ftp://ftp.mars.org/pub/mpeg/libid3tag-=
0.15.1b.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['python-pyrex', '0.9.9', '0.9.9', 'Apache-2.0', 'devel/python', '', 'r4', =
' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc   python-native python  python-native ', 'None', 'None', "Pyrex is a l=
anguage specially designed for writing Python extension modules. It's desig=
ned to bridge the gap between the nice, high-level, easy-to-use world of Py=
thon and the messy, low-level world of C.", 'MATCH', 'N/A', 'http://www.cos=
c.canterbury.ac.nz/greg.ewing/python/Pyrex/Pyrex-0.9.9.tar.gz', 'Richard Pu=
rdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (python-pyrex,0.9.9,0.9.9,Apache-2.0,devel/python,r4,None,,None,MA=
TCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc   python-native python  python-native ,Pyrex is a language speciall=
y designed for writing Python extension modules. It's designed to bridge th=
e gap between the nice, high-level, easy-to-use world of Python and the mes=
sy, low-level world of C.,N/A,http://www.cosc.canterbury.ac.nz/greg.ewing/p=
ython/Pyrex/Pyrex-0.9.9.tar.gz,Richard Purdie <richard.purdie@linuxfoundati=
on.org>)
['libxml-sax-perl', '0.99', '0.99', 'Artistic-1.0 | GPL-1.0+', 'libs', '', =
'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc   libxml-namespacesupport-perl-native perl perl-native', 'None',=
 'None', 'XML::SAX consists of several framework classes for using and buil=
ding Perl SAX2 XML parsers, filters, and drivers.  It is designed around th=
e need to be able to "plug in" different SAX parsers to an application with=
out requiring programmer intervention.  Those of you familiar with the DBI =
will be right at home.  Some of the designs come from the Java JAXP specifi=
cation (SAX part), only without the javaness.', 'MATCH', 'N/A', 'http://sea=
rch.cpan.org/CPAN/authors/id/G/GR/GRANTM/XML-SAX-0.99.tar.gz', 'Kai Kang <k=
ai.kang@windriver.com>', 'None']
inserted (libxml-sax-perl,0.99,0.99,Artistic-1.0 | GPL-1.0+,libs,r2,None,,N=
one,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc   libxml-namespacesupport-perl-native perl perl-native,XML::S=
AX consists of several framework classes for using and building Perl SAX2 X=
ML parsers, filters, and drivers.  It is designed around the need to be abl=
e to "plug in" different SAX parsers to an application without requiring pr=
ogrammer intervention.  Those of you familiar with the DBI will be right at=
 home.  Some of the designs come from the Java JAXP specification (SAX part=
), only without the javaness.,N/A,http://search.cpan.org/CPAN/authors/id/G/=
GR/GRANTM/XML-SAX-0.99.tar.gz,Kai Kang <kai.kang@windriver.com>)
['gstreamer1.0-libav', '1.4.0', '1.4.0', 'GPLv2+ & LGPLv2+ & ( (GPLv2+ & LG=
PLv2.1+) | (GPLv3+ & LGPLv3+) )', 'multimedia', 'http://www.gstreamer.net/'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugins-base z=
lib bzip2 orc yasm-native', 'None', 'None', 'Libav-based GStreamer 1.x plug=
in.', 'MATCH', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-libav/gst-l=
ibav-1.4.0.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (gstreamer1.0-libav,1.4.0,1.4.0,GPLv2+ & LGPLv2+ & ( (GPLv2+ & LGP=
Lv2.1+) | (GPLv3+ & LGPLv3+) ),multimedia,r0,None,http://www.gstreamer.net/=
,None,MATCH,pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugins-bas=
e zlib bzip2 orc yasm-native,Libav-based GStreamer 1.x plugin.,N/A,http://g=
streamer.freedesktop.org/src/gst-libav/gst-libav-1.4.0.tar.xz,Cristian Iorg=
a <cristian.iorga@intel.com>)
['python-nose', '1.2.1', '1.3.3', 'LGPLv2.1', 'devel/python', '', 'r0', ' v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c   python-native python  python-native  python-distribute-native', 'None',=
 'None', 'nose extends the test loading and running features of unittest, m=
aking it easier to write, find and run tests.', 'UPDATE', 'N/A', 'http://py=
pi.python.org/packages/source/n/nose/nose-1.2.1.tar.gz', 'None', 'None']
inserted (python-nose,1.2.1,1.3.3,LGPLv2.1,devel/python,r0,None,,None,UPDAT=
E, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   python-native python  python-native  python-distribute-native,nose =
extends the test loading and running features of unittest, making it easier=
 to write, find and run tests.,N/A,http://pypi.python.org/packages/source/n=
/nose/nose-1.2.1.tar.gz,None)
['libsdl2', '2.0.3', '2.0.3', 'Zlib', 'libs', 'http://www.libsdl.org', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc              virtual/libgl            virtual/l=
ibx11 libxext libxrandr libxrender            tslib alsa-lib', 'http://bugz=
illa.libsdl.org/', 'None', 'Simple DirectMedia Layer is a cross-platform mu=
ltimedia library designed to provide low level access to audio, keyboard, m=
ouse, joystick, 3D hardware via OpenGL, and 2D video framebuffer.', 'MATCH'=
, 'N/A', 'http://www.libsdl.org/release/SDL2-2.0.3.tar.gz', 'None', 'None']
inserted (libsdl2,2.0.3,2.0.3,Zlib,libs,r0,None,http://www.libsdl.org,http:=
//bugzilla.libsdl.org/,MATCH,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc              virtual/=
libgl            virtual/libx11 libxext libxrandr libxrender            tsl=
ib alsa-lib,Simple DirectMedia Layer is a cross-platform multimedia library=
 designed to provide low level access to audio, keyboard, mouse, joystick, =
3D hardware via OpenGL, and 2D video framebuffer.,N/A,http://www.libsdl.org=
/release/SDL2-2.0.3.tar.gz,None)
['parted', '3.1', '3.2', 'GPLv3+', 'console/tools', 'http://www.gnu.org/sof=
tware/parted/parted.html', 'r1', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native virtual/gettext gett=
ext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  ncurses readline util-linux texinfo-native', 'None', 'None'=
, 'Disk partition editing/resizing utility.', 'UPDATE', 'N/A', 'ftp://ftp.g=
nu.org/gnu/parted/parted-3.1.tar.xz', 'Hongxu Jia <hongxu.jia@windriver.com=
>', 'None']
inserted (parted,3.1,3.2,GPLv3+,console/tools,r1,None,http://www.gnu.org/so=
ftware/parted/parted.html,None,UPDATE,pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native virtual/gettext =
gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ncurses readline util-linux texinfo-native,Disk partiti=
on editing/resizing utility.,N/A,ftp://ftp.gnu.org/gnu/parted/parted-3.1.ta=
r.xz,Hongxu Jia <hongxu.jia@windriver.com>)
['xmlto', '0.0.25', '0.0.26', 'GPLv2', 'docs/xmlto', 'https://fedorahosted.=
org/xmlto/', 'r0', 'autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ', 'None', 'None', 'A shell-script tool for co=
nverting XML files to various formats.', 'UPDATE', 'N/A', 'https://fedoraho=
sted.org/releases/x/m/xmlto/xmlto-0.0.25.tar.gz', 'None', 'None']
inserted (xmlto,0.0.25,0.0.26,GPLv2,docs/xmlto,r0,None,https://fedorahosted=
=2Eorg/xmlto/,None,UPDATE,autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ,A shell-script tool for converting XML =
files to various formats.,N/A,https://fedorahosted.org/releases/x/m/xmlto/x=
mlto-0.0.25.tar.gz,None)
['gtk-sato-engine', '0.3.3+gitAUTOINC+4740ad8d53', '0.3.3+gitAUTOINC+4740ad=
8', 'LGPLv2.1 & LGPLv2+', 'x11/base', 'http://www.o-hand.com', 'r0', 'pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  gtk+', 'http://bugzilla.yoctoproject.org/', 'None', 'S=
ato theme engine for GTK+.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/gt=
k-sato-engine', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (gtk-sato-engine,0.3.3+gitAUTOINC+4740ad8d53,0.3.3+gitAUTOINC+4740=
ad8,LGPLv2.1 & LGPLv2+,x11/base,r0,None,http://www.o-hand.com,http://bugzil=
la.yoctoproject.org/,MATCH,pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+,Sato theme engine=
 for GTK+.,N/A,git://git.yoctoproject.org/gtk-sato-engine,Ross Burton <ross=
=2Eburton@intel.com>)
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
sktop.org/dist/xcb-util-image-0.3.9.tar.bz2', 'Ross Burton <ross.burton@int=
el.com>', 'None']
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
=2E3.9.tar.bz2,Ross Burton <ross.burton@intel.com>)
['chkconfig-alternatives-native', '1.3.59+AUTOINC+cd437ecbd8', '1.3.59+AUTO=
INC+cd437ecbd8', 'GPLv2', 'base', 'http://fedorahosted.org/releases/c/h/chk=
config', 'r7', 'gettext-minimal-native  ', 'None', 'None', '${DESCRIPTION_c=
hkconfig-alternatives}', 'ErrUnknown:github.com/kergoth/chkconfig', 'N/A', =
'git://github.com/kergoth/chkconfig;branch=3Dsysroot', 'Wenzong Fan <wenzon=
g.fan@windriver.com>', 'None']
inserted (chkconfig-alternatives-native,1.3.59+AUTOINC+cd437ecbd8,1.3.59+AU=
TOINC+cd437ecbd8,GPLv2,base,r7,None,http://fedorahosted.org/releases/c/h/ch=
kconfig,None,ErrUnknown:github.com/kergoth/chkconfig,gettext-minimal-native=
  ,${DESCRIPTION_chkconfig-alternatives},N/A,git://github.com/kergoth/chkco=
nfig;branch=3Dsysroot,Wenzong Fan <wenzong.fan@windriver.com>)
['util-macros', '1.19.0', '1.19.0', 'MIT & MIT-style', 'x11/utils', 'http:/=
/www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  ', 'https://bugs.freedesktop.=
org/enter_bug.cgi?product=3Dxorg', '1', 'M4 autotools macros used by variou=
s X.org programs.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/i=
ndividual/util/util-macros-1.19.0.tar.gz', 'Ross Burton <ross.burton@intel.=
com>', 'None']
inserted (util-macros,1.19.0,1.19.0,MIT & MIT-style,x11/utils,r0,1,http://w=
ww.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ,M4 autotools macros used by various X.org programs=
=2E,N/A,http://xorg.freedesktop.org/releases/individual/util/util-macros-1.=
19.0.tar.gz,Ross Burton <ross.burton@intel.com>)
['squashfs-tools', '4.3', '4.3', 'GPL-2 & PD', 'base', '', 'r0', ' virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  attr=
 zlib xz lzo lz4', 'None', 'None', 'Tools for manipulating SquashFS filesys=
tems.', 'MATCH', '4.2', 'http://downloads.sourceforge.net/squashfs/squashfs=
4.3.tar.gz;name=3Dsquashfs', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (squashfs-tools,4.3,4.3,GPL-2 & PD,base,r0,None,,None,MATCH, virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  a=
ttr zlib xz lzo lz4,Tools for manipulating SquashFS filesystems.,4.2,http:/=
/downloads.sourceforge.net/squashfs/squashfs4.3.tar.gz;name=3Dsquashfs,Saul=
 Wold <sgw@linux.intel.com>)
['libxslt', '1.1.28', 'N/A', 'MIT', 'libs', 'http://xmlsoft.org/XSLT/', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  libxml2', 'https://bugzilla.gnome.org/', 'Non=
e', 'GNOME XSLT library.', 'ErrParseDir:/libxslt//:-:libxslt-1.1.28.tar.gz:=
xmlsoft.org/libxslt//libxslt-1.1.28.tar.gz', 'N/A', 'ftp://xmlsoft.org/libx=
slt//libxslt-1.1.28.tar.gz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxslt,1.1.28,N/A,MIT,libs,r0,None,http://xmlsoft.org/XSLT/,http=
s://bugzilla.gnome.org/,ErrParseDir:/libxslt//:-:libxslt-1.1.28.tar.gz:xmls=
oft.org/libxslt//libxslt-1.1.28.tar.gz,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxml2,GN=
OME XSLT library.,N/A,ftp://xmlsoft.org/libxslt//libxslt-1.1.28.tar.gz,Ross=
 Burton <ross.burton@intel.com>)
['python-pycairo', '1.10.0', '1.10.0', 'LGPLv2.1 & MPL-1.1', 'python-devel'=
, 'http://cairographics.org/pycairo', 'r2', 'pkgconfig-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  cairo py=
thon-native python  python-native ', 'http://bugs.freedesktop.org', 'None',=
 'Python bindings for the Cairo canvas library.', 'MATCH', 'N/A', 'http://c=
airographics.org/releases/py2cairo-1.10.0.tar.bz2', 'Richard Purdie <richar=
d.purdie@linuxfoundation.org>', 'None']
inserted (python-pycairo,1.10.0,1.10.0,LGPLv2.1 & MPL-1.1,python-devel,r2,N=
one,http://cairographics.org/pycairo,http://bugs.freedesktop.org,MATCH,pkgc=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  cairo python-native python  python-native ,Python binding=
s for the Cairo canvas library.,N/A,http://cairographics.org/releases/py2ca=
iro-1.10.0.tar.bz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['libxshmfence', '1.1', '1.1', 'MIT-style', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros virtual/libx11', 'https://bug=
s.freedesktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'This library offe=
rs a CPU-based synchronization primitive compatible with the X SyncFence ob=
jects that can be shared between processes using file descriptor passing.',=
 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libxs=
hmfence-1.1.tar.bz2', 'None', 'None']
inserted (libxshmfence,1.1,1.1,MIT-style,x11/libs,r0,None,http://www.x.org,=
https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  util-macros virtual/libx11,This library offers a CPU-based s=
ynchronization primitive compatible with the X SyncFence objects that can b=
e shared between processes using file descriptor passing.,N/A,http://xorg.f=
reedesktop.org/releases/individual/lib/libxshmfence-1.1.tar.bz2,None)
['mktemp', '1.7', '1.7', 'ISC', 'console/utils', 'http://www.mktemp.org/', =
'r3', 'autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc   virtual/update-alternatives', 'http://www.mktemp.org/bugs'=
, 'None', 'Enables safe temporary file creation from shell scripts.', 'MATC=
H', 'N/A', 'ftp://ftp.mktemp.org/pub/mktemp/mktemp-1.7.tar.gz', 'Chong Lu <=
Chong.Lu@windriver.com>', 'None']
inserted (mktemp,1.7,1.7,ISC,console/utils,r3,None,http://www.mktemp.org/,h=
ttp://www.mktemp.org/bugs,MATCH,autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   virtual/update-alternatives,Enabl=
es safe temporary file creation from shell scripts.,N/A,ftp://ftp.mktemp.or=
g/pub/mktemp/mktemp-1.7.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['xf86-video-vmware', '13.0.2', '13.0.2', 'MIT-X', 'x11/drivers', 'http://w=
ww.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextprot=
o fontsproto virtual/xserver xproto randrproto util-macros virtual/libx11 x=
ineramaproto videoproto libpciaccess', 'https://bugs.freedesktop.org', '2',=
 'vmware is an Xorg driver for VMware virtual video cards.', 'MATCH', 'N/A'=
, 'http://xorg.freedesktop.org/releases/individual/driver/xf86-video-vmware=
-13.0.2.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86-video-vmware,13.0.2,13.0.2,MIT-X,x11/drivers,r0,2,http://www=
=2Ex.org,https://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  rende=
rproto videoproto xextproto fontsproto virtual/xserver xproto randrproto ut=
il-macros virtual/libx11 xineramaproto videoproto libpciaccess,vmware is an=
 Xorg driver for VMware virtual video cards.,N/A,http://xorg.freedesktop.or=
g/releases/individual/driver/xf86-video-vmware-13.0.2.tar.bz2,Ross Burton <=
ross.burton@intel.com>)
['libunistring', '0.9.3', '0.9.3', 'GPLv3&LGPLv3', 'devel', 'http://www.gnu=
=2Eorg/software/libunistring/', 'r3', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native', 'None', '=
None', "Text files are nowadays usually encoded in Unicode, and may consist=
 of very different scripts from Latin letters to Chinese Hanzi with many ki=
nds of special characters accents, right-to-left writing marks, hyphens, Ro=
man numbers, and much more. But the POSIX platform APIs for text do not con=
tain adequate functions for dealing with particular properties of many Unic=
ode characters. In fact, the POSIX APIs for text have several assumptions a=
t their base which don't hold for Unicode text.  This library provides func=
tions for manipulating Unicode strings and for manipulating C strings accor=
ding to the Unicode standard.  This package contains documentation.", 'MATC=
H', 'N/A', 'ftp://ftp.gnu.org/gnu/libunistring/libunistring-0.9.3.tar.gz', =
'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (libunistring,0.9.3,0.9.3,GPLv3&LGPLv3,devel,r3,None,http://www.gn=
u.org/software/libunistring/,None,MATCH,autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native,Text files=
 are nowadays usually encoded in Unicode, and may consist of very different=
 scripts from Latin letters to Chinese Hanzi with many kinds of special cha=
racters accents, right-to-left writing marks, hyphens, Roman numbers, and m=
uch more. But the POSIX platform APIs for text do not contain adequate func=
tions for dealing with particular properties of many Unicode characters. In=
 fact, the POSIX APIs for text have several assumptions at their base which=
 don't hold for Unicode text.  This library provides functions for manipula=
ting Unicode strings and for manipulating C strings according to the Unicod=
e standard.  This package contains documentation.,N/A,ftp://ftp.gnu.org/gnu=
/libunistring/libunistring-0.9.3.tar.gz,Richard Purdie <richard.purdie@linu=
xfoundation.org>)
['elfutils', '0.148', '0.159', '(GPL-2+ & Elfutils-Exception)', 'base', 'ht=
tps://fedorahosted.org/elfutils', 'r11', 'autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native virtual/gettext gettext-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  libtool bzip2 zlib virtual/libintl', 'None', 'None', 'Utilities and =
libraries for handling compiled object files.', 'UPDATE', 'N/A', 'https://f=
edorahosted.org/releases/e/l/elfutils/elfutils-0.148.tar.bz2', 'Hongxu Jia =
<hongxu.jia@windriver.com>', 'None']
inserted (elfutils,0.148,0.159,(GPL-2+ & Elfutils-Exception),base,r11,None,=
https://fedorahosted.org/elfutils,None,UPDATE,autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  libtool bzip2 zlib virtual/libintl,Utilities and libraries for h=
andling compiled object files.,N/A,https://fedorahosted.org/releases/e/l/el=
futils/elfutils-0.148.tar.bz2,Hongxu Jia <hongxu.jia@windriver.com>)
['libproxy', '0.4.11', '0.4.11', 'LGPLv2.1+', 'libs', 'http://code.google.c=
om/p/libproxy/', 'r0', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native cmake-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gconf glib-2=
=2E0', 'http://code.google.com/p/libproxy/issues/list', 'None', 'Library pr=
oviding automatic proxy configuration management.', 'MATCH', 'N/A', 'http:/=
/libproxy.googlecode.com/files/libproxy-0.4.11.zip', 'Cristian Iorga <crist=
ian.iorga@intel.com>', 'None']
inserted (libproxy,0.4.11,0.4.11,LGPLv2.1+,libs,r0,None,http://code.google.=
com/p/libproxy/,http://code.google.com/p/libproxy/issues/list,MATCH,pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native cmake-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  gconf glib-2.0,Library providing automatic =
proxy configuration management.,N/A,http://libproxy.googlecode.com/files/li=
bproxy-0.4.11.zip,Cristian Iorga <cristian.iorga@intel.com>)
['libevdev', '1.2.2', '1.2.99.901', 'MIT-X', 'libs', 'http://www.freedeskto=
p.org/wiki/Software/libevdev/', 'r0', 'pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None',=
 'None', 'Wrapper library for evdev devices.', 'UPDATE', 'N/A', 'http://www=
=2Efreedesktop.org/software/libevdev/libevdev-1.2.2.tar.xz', 'None', 'None']
inserted (libevdev,1.2.2,1.2.99.901,MIT-X,libs,r0,None,http://www.freedeskt=
op.org/wiki/Software/libevdev/,None,UPDATE,pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Wrapp=
er library for evdev devices.,N/A,http://www.freedesktop.org/software/libev=
dev/libevdev-1.2.2.tar.xz,None)
['libgpg-error', '1.12', '1.13', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://www.=
gnupg.org/related_software/libgpg-error/', 'r0', 'pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native virt=
ual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'https://bugs.g10code.com/gnupg/index', =
'None', 'Small library that defines common error values for all GnuPG compo=
nents.', 'UPDATE', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/libgpg-error/libgpg-e=
rror-1.12.tar.bz2', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (libgpg-error,1.12,1.13,GPLv2+ & LGPLv2.1+,libs,r0,None,http://www=
=2Egnupg.org/related_software/libgpg-error/,https://bugs.g10code.com/gnupg/=
index,UPDATE,pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Smal=
l library that defines common error values for all GnuPG components.,N/A,ft=
p://ftp.gnupg.org/gcrypt/libgpg-error/libgpg-error-1.12.tar.bz2,Paul Egglet=
on <paul.eggleton@linux.intel.com>)
['gettext-minimal-native', '0.18.3.2', 'INVALID', 'FSF-Unlimited', 'base', =
'', 'r0', ' ', 'None', 'None', 'Contains the m4 macros sufficient to suppor=
t building autoconf/automake. This provides a significant build time speedu=
p by the removal of gettext-native from most dependency chains (now only ne=
eded for gettext for the target).', 'MATCH', 'N/A', 'file://aclocal.tgz', '=
Saul Wold <sgw@linux.intel.com>', 'None']
inserted (gettext-minimal-native,0.18.3.2,INVALID,FSF-Unlimited,base,r0,Non=
e,,None,MATCH, ,Contains the m4 macros sufficient to support building autoc=
onf/automake. This provides a significant build time speedup by the removal=
 of gettext-native from most dependency chains (now only needed for gettext=
 for the target).,N/A,file://aclocal.tgz,Saul Wold <sgw@linux.intel.com>)
['quicky', '0.4', 'N/A', 'GPLv2+', 'x11/apps', 'http://qt-apps.org/content/=
show.php/Quicky?content=3D80325', 'r2', 'qt4-tools-native qt4-x11  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', '=
None', 'None', 'A simple note-taking application with Wiki-style syntax and=
 behaviour.', 'ErrHostNoDir:/CONTENT/content-files/:-:80325-quicky-0.4.tar.=
gz:qt-apps.org/CONTENT/content-files/80325-quicky-0.4.tar.gz', 'N/A', 'http=
://qt-apps.org/CONTENT/content-files/80325-quicky-0.4.tar.gz', 'Paul Egglet=
on <paul.eggleton@linux.intel.com>', 'None']
inserted (quicky,0.4,N/A,GPLv2+,x11/apps,r2,None,http://qt-apps.org/content=
/show.php/Quicky?content=3D80325,None,ErrHostNoDir:/CONTENT/content-files/:=
-:80325-quicky-0.4.tar.gz:qt-apps.org/CONTENT/content-files/80325-quicky-0.=
4.tar.gz,qt4-tools-native qt4-x11  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  ,A simple note-taking application wi=
th Wiki-style syntax and behaviour.,N/A,http://qt-apps.org/CONTENT/content-=
files/80325-quicky-0.4.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['rxvt-unicode', '9.20', '9.20', 'GPLv2+', 'x11/utils', '', 'r0', 'autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 virtual/libx11 libxt libxft gdk-pixbuf virtual/update-alternatives', 'None=
', 'None', 'rxvt-unicode is a clone of the well known terminal emulator rxv=
t, modified to store text in Unicode (either UCS-2 or UCS-4) and to use loc=
ale-correct input and output. It also supports mixing multiple fonts at the=
 same time, including Xft fonts.', 'MATCH', 'N/A', 'http://dist.schmorp.de/=
rxvt-unicode/Attic/rxvt-unicode-9.20.tar.bz2', 'Saul Wold <sgw@linux.intel.=
com>', 'None']
inserted (rxvt-unicode,9.20,9.20,GPLv2+,x11/utils,r0,None,,None,MATCH,autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  virtual/libx11 libxt libxft gdk-pixbuf virtual/update-alternatives,rxvt=
-unicode is a clone of the well known terminal emulator rxvt, modified to s=
tore text in Unicode (either UCS-2 or UCS-4) and to use locale-correct inpu=
t and output. It also supports mixing multiple fonts at the same time, incl=
uding Xft fonts.,N/A,http://dist.schmorp.de/rxvt-unicode/Attic/rxvt-unicode=
-9.20.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['libowl-av', '0.1+gitAUTOINC+03030c41ea', '0.1+gitAUTOINC+03030c4', 'LGPLv=
2+', 'x11', 'http://www.o-hand.com', 'r3', 'pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ =
gstreamer gst-plugins-base', 'http://bugzilla.yoctoproject.org/', 'None', '=
OpenedHand Widget Library Audio/Video.', 'MATCH', 'N/A', 'git://git.yoctopr=
oject.org/libowl-av', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libowl-av,0.1+gitAUTOINC+03030c41ea,0.1+gitAUTOINC+03030c4,LGPLv2=
+,x11,r3,None,http://www.o-hand.com,http://bugzilla.yoctoproject.org/,MATCH=
,pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  gtk+ gstreamer gst-plugins-base,OpenedHand Widge=
t Library Audio/Video.,N/A,git://git.yoctoproject.org/libowl-av,Ross Burton=
 <ross.burton@intel.com>)
['init-ifupdown', '1.0', 'INVALID', 'GPLv2', 'base', 'http://packages.debia=
n.org/ifupdown', 'r7', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc   update-rc.d-native initscripts', 'None', 'Non=
e', 'This package provides high level tools to configure network interfaces=
', 'MATCH', 'N/A', 'file://copyright', 'None', 'None']
inserted (init-ifupdown,1.0,INVALID,GPLv2,base,r7,None,http://packages.debi=
an.org/ifupdown,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc   update-rc.d-native initscripts,This packag=
e provides high level tools to configure network interfaces,N/A,file://copy=
right,None)
['tslib', '1.1', '1.1', 'LGPLv2', 'base', 'http://tslib.berlios.de/', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'None', 'None', 'Tslib is an abstraction lay=
er for touchscreen panel events, as well as a filter stack for the manipula=
tion of those events. Tslib is generally used on embedded devices to provid=
e a common user space interface to touchscreen functionality.', 'MATCH', 'N=
/A', 'https://github.com/kergoth/tslib/releases/download/1.1/tslib-1.1.tar.=
xz;downloadfilename=3Dtslib-1.1.tar.xz', 'Paul Eggleton <paul.eggleton@linu=
x.intel.com>', 'None']
inserted (tslib,1.1,1.1,LGPLv2,base,r0,None,http://tslib.berlios.de/,None,M=
ATCH,pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ,Tslib is an abstraction layer for touchscre=
en panel events, as well as a filter stack for the manipulation of those ev=
ents. Tslib is generally used on embedded devices to provide a common user =
space interface to touchscreen functionality.,N/A,https://github.com/kergot=
h/tslib/releases/download/1.1/tslib-1.1.tar.xz;downloadfilename=3Dtslib-1.1=
=2Etar.xz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['libxext', '1.3.2', '1.3.3', 'MIT-style', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros xproto virtual/libx11 xextprot=
o libxau libxdmcp', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dx=
org', '1', 'libXext provides an X Window System client interface to several=
 extensions to the X protocol.  The supported protocol extensions are DOUBL=
E-BUFFER, DPMS, Extended-Visual-Information, LBX, MIT_SHM, MIT_SUNDRY-NONST=
ANDARD, Multi-Buffering, SECURITY, SHAPE, SYNC, TOG-CUP, XC-APPGROUP, XC-MI=
SC, XTEST.  libXext also provides a small set of utility functions to aid a=
uthors of client APIs for X protocol extensions.', 'UPDATE', 'N/A', 'http:/=
/xorg.freedesktop.org/releases/individual/lib/libXext-1.3.2.tar.bz2', 'Ross=
 Burton <ross.burton@intel.com>', 'None']
inserted (libxext,1.3.2,1.3.3,MIT-style,x11/libs,r0,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,UPDATE,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  util-macros xproto virtual/libx11 xextproto libxau libxdmcp,lib=
Xext provides an X Window System client interface to several extensions to =
the X protocol.  The supported protocol extensions are DOUBLE-BUFFER, DPMS,=
 Extended-Visual-Information, LBX, MIT_SHM, MIT_SUNDRY-NONSTANDARD, Multi-B=
uffering, SECURITY, SHAPE, SYNC, TOG-CUP, XC-APPGROUP, XC-MISC, XTEST.  lib=
Xext also provides a small set of utility functions to aid authors of clien=
t APIs for X protocol extensions.,N/A,http://xorg.freedesktop.org/releases/=
individual/lib/libXext-1.3.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['boost', '1.55.0', '1.56.0', 'BSL-1.0 & MIT & Python-2.0', 'libs', 'http:/=
/www.boost.org/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  bjam-native zlib bzip2', 'None', 'None', 'Fre=
e peer-reviewed portable C++ source libraries.', 'UPDATE', 'N/A', 'http://d=
ownloads.sourceforge.net/boost/boost_1_55_0.tar.bz2', 'Saul Wold <sgw@linux=
=2Eintel.com>', 'None']
inserted (boost,1.55.0,1.56.0,BSL-1.0 & MIT & Python-2.0,libs,r0,None,http:=
//www.boost.org/,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  bjam-native zlib bzip2,Free peer-reviewed=
 portable C++ source libraries.,N/A,http://downloads.sourceforge.net/boost/=
boost_1_55_0.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['dbus-test', '1.8.2', '1.8.6', 'AFL-2 | GPLv2+', 'base', 'http://dbus.free=
desktop.org', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  python-pygobject dbus dbus-glib', 'None', 'None', 'D-Bus test package (f=
or D-bus functionality testing only).', 'UPDATE', 'N/A', 'http://dbus.freed=
esktop.org/releases/dbus/dbus-1.8.2.tar.gz', 'None', 'None']
inserted (dbus-test,1.8.2,1.8.6,AFL-2 | GPLv2+,base,r0,None,http://dbus.fre=
edesktop.org,None,UPDATE,pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native virtual/gettext gettext-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  python-pygobject dbus dbus-glib,D-Bus test package (for D-bus functi=
onality testing only).,N/A,http://dbus.freedesktop.org/releases/dbus/dbus-1=
=2E8.2.tar.gz,None)
['libpod-plainer-perl', '1.04', '1.04', 'Artistic-1.0 | GPL-1.0+', 'libs', =
'http://search.cpan.org/dist/Pod-Plainer/', 'r0', ' virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native',=
 'None', 'None', "Pod::Plainer uses Pod::Parser which takes Pod with the (n=
ew) 'C<< .. >>' constructs and returns the old(er) style with just 'C<>'; '=
<' and '>' are replaced by 'E<lt>' and 'E<gt>'. This can be used to pre-pro=
cess Pod before using tools which do not recognise the new style Pods.", 'M=
ATCH', 'N/A', 'http://search.cpan.org/CPAN/authors/id/R/RM/RMBARKER/Pod-Pla=
iner-1.04.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libpod-plainer-perl,1.04,1.04,Artistic-1.0 | GPL-1.0+,libs,r0,Non=
e,http://search.cpan.org/dist/Pod-Plainer/,None,MATCH, virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-nativ=
e,Pod::Plainer uses Pod::Parser which takes Pod with the (new) 'C<< .. >>' =
constructs and returns the old(er) style with just 'C<>'; '<' and '>' are r=
eplaced by 'E<lt>' and 'E<gt>'. This can be used to pre-process Pod before =
using tools which do not recognise the new style Pods.,N/A,http://search.cp=
an.org/CPAN/authors/id/R/RM/RMBARKER/Pod-Plainer-1.04.tar.gz,Saul Wold <sgw=
@linux.intel.com>)
['unifdef-native', '2.6.18+git', 'INVALID', 'BSD-2-Clause', 'devel', '', 'r=
1', ' ', 'None', 'None', 'Kernel header preprocessor.', 'MATCH', '2.6.18+gi=
t', 'file://unifdef.c', 'Richard Purdie <richard.purdie@linuxfoundation.org=
>', 'None']
inserted (unifdef-native,2.6.18+git,INVALID,BSD-2-Clause,devel,r1,None,,Non=
e,MATCH, ,Kernel header preprocessor.,2.6.18+git,file://unifdef.c,Richard P=
urdie <richard.purdie@linuxfoundation.org>)
['vala', '0.16.0', '0.25.1', 'LGPLv2.1', 'devel', 'http://vala-project.org'=
, 'r1.1', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  bison-native flex-native libxslt-nativ=
e glib-2.0', 'None', 'None', 'Vala is a C#-like language dedicated to ease =
GObject programming. Vala compiles to plain C and has no runtime environmen=
t nor penalities whatsoever.', 'UPDATE', 'N/A', 'http://ftp.gnome.org/pub/G=
NOME/sources/vala/0.16/vala-0.16.0.tar.xz', 'Ross Burton <ross.burton@intel=
=2Ecom>', 'None']
inserted (vala,0.16.0,0.25.1,LGPLv2.1,devel,r1.1,None,http://vala-project.o=
rg,None,UPDATE,pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  bison-native flex-native libxslt-n=
ative glib-2.0,Vala is a C#-like language dedicated to ease GObject program=
ming. Vala compiles to plain C and has no runtime environment nor penalitie=
s whatsoever.,N/A,http://ftp.gnome.org/pub/GNOME/sources/vala/0.16/vala-0.1=
6.0.tar.xz,Ross Burton <ross.burton@intel.com>)
['gawk', '4.1.1', '4.1.1', 'GPLv3', 'console/utils', 'www.gnu.org/software/=
gawk', 'r0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc   readline texinfo-nat=
ive virtual/update-alternatives', 'bug-gawk@gnu.org', 'None', 'The GNU vers=
ion of awk, a text processing utility. Awk interprets a special-purpose pro=
gramming language to do quick and easy text pattern matching and reformatti=
ng jobs.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gawk/gawk-4.1.1.tar.gz', =
'Chen Qi <Qi.Chen@windriver.com>', 'Version 4.1.0 requires Automake 1.13, b=
ut have 1.12.6']
inserted (gawk,4.1.1,4.1.1,GPLv3,console/utils,r0,None,www.gnu.org/software=
/gawk,bug-gawk@gnu.org,MATCH,autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   readl=
ine texinfo-native virtual/update-alternatives,The GNU version of awk, a te=
xt processing utility. Awk interprets a special-purpose programming languag=
e to do quick and easy text pattern matching and reformatting jobs.,N/A,ftp=
://ftp.gnu.org/gnu/gawk/gawk-4.1.1.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['oh-puzzles', '0.2+gitAUTOINC+92f1a20e4b', '0.2+gitAUTOINC+92f1a20', 'MIT'=
, 'x11', 'http://o-hand.com/', 'r10', 'pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ gconf=
 intltool-native librsvg libowl', 'http://bugzilla.yoctoproject.org/', 'Non=
e', 'Portable Puzzle Collection.', 'MATCH', 'N/A', 'git://git.yoctoproject.=
org/oh-puzzles', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (oh-puzzles,0.2+gitAUTOINC+92f1a20e4b,0.2+gitAUTOINC+92f1a20,MIT,x=
11,r10,None,http://o-hand.com/,http://bugzilla.yoctoproject.org/,MATCH,pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  gtk+ gconf intltool-native librsvg libowl,Portable Pu=
zzle Collection.,N/A,git://git.yoctoproject.org/oh-puzzles,Ross Burton <ros=
s.burton@intel.com>)
['xinetd', '2.3.15', 'N/A', 'BSD', 'base', 'http://www.xinetd.org', 'r2', '=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc   update-rc.d-native initscripts tcp-wrappers', 'None', 'None', 'So=
cket-based service activation daemon.', 'ErrHostNoDir:/:-:xinetd-2.3.15.tar=
=2Egz:www.xinetd.org/xinetd-2.3.15.tar.gz', 'N/A', 'http://www.xinetd.org/x=
inetd-2.3.15.tar.gz', 'Richard Purdie <richard.purdie@linuxfoundation.org>'=
, 'None']
inserted (xinetd,2.3.15,N/A,BSD,base,r2,None,http://www.xinetd.org,None,Err=
HostNoDir:/:-:xinetd-2.3.15.tar.gz:www.xinetd.org/xinetd-2.3.15.tar.gz,auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc   update-rc.d-native initscripts tcp-wrappers,Socket-based service acti=
vation daemon.,N/A,http://www.xinetd.org/xinetd-2.3.15.tar.gz,Richard Purdi=
e <richard.purdie@linuxfoundation.org>)
['connman-gnome', '0.7', '0.7', 'GPLv2 & LGPLv2.1', 'libs/network', 'http:/=
/connman.net/', 'r0', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ dbus-glib intltool-na=
tive hicolor-icon-theme gtk-update-icon-cache-native', 'None', 'None', 'GTK=
+ frontend for the ConnMan network connection manager.', 'ErrUnknown:github=
=2Ecom/connectivity/connman-gnome.git', 'N/A', 'git://github.com/connectivi=
ty/connman-gnome.git', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (connman-gnome,0.7,0.7,GPLv2 & LGPLv2.1,libs/network,r0,None,http:=
//connman.net/,None,ErrUnknown:github.com/connectivity/connman-gnome.git,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  gtk+ dbus-glib intltool-native hicolor-icon-theme g=
tk-update-icon-cache-native,GTK+ frontend for the ConnMan network connectio=
n manager.,N/A,git://github.com/connectivity/connman-gnome.git,Cristian Ior=
ga <cristian.iorga@intel.com>)
['tremor', '20120314', 'N/A', 'BSD', 'libs', '', 'r1', 'pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  libogg', 'None', 'None', 'tremor is a fixed point implementation of =
the vorbis codec.', 'UPDATE', '20120122', 'svn://svn.xiph.org/trunk;module=
=3DTremor;rev=3D18221;protocol=3Dhttp', 'Cristian Iorga <cristian.iorga@int=
el.com>', 'Same revision on different SVN modules']
inserted (tremor,20120314,N/A,BSD,libs,r1,None,,None,UPDATE,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  libogg,tremor is a fixed point implementation of the vorbis code=
c.,20120122,svn://svn.xiph.org/trunk;module=3DTremor;rev=3D18221;protocol=
=3Dhttp,Cristian Iorga <cristian.iorga@intel.com>)
['clutter-1.0', '1.18.2', '1.19.6', 'LGPLv2.1+', 'base', 'http://www.clutte=
r-project.org/', 'r0', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  pango glib-2.0 json-glib atk udev cogl-1.0 gtk-doc-stub-native virtua=
l/libx11 libxi libxfixes virtual/libgl wayland libxkbcommon gdk-pixbuf virt=
ual/libx11 libxi libxfixes', 'None', 'None', 'Graphics library for creating=
 hardware-accelerated user interfaces.', 'UPDATE', 'N/A', 'http://ftp.gnome=
=2Eorg/pub/GNOME/sources/clutter/1.18/clutter-1.18.2.tar.xz;name=3Darchive'=
, 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (clutter-1.0,1.18.2,1.19.6,LGPLv2.1+,base,r0,None,http://www.clutt=
er-project.org/,None,UPDATE,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native virtual/gettext gettext-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  pango glib-2.0 json-glib atk udev cogl-1.0 gtk-doc-stub-native vi=
rtual/libx11 libxi libxfixes virtual/libgl wayland libxkbcommon gdk-pixbuf =
virtual/libx11 libxi libxfixes,Graphics library for creating hardware-accel=
erated user interfaces.,N/A,http://ftp.gnome.org/pub/GNOME/sources/clutter/=
1.18/clutter-1.18.2.tar.xz;name=3Darchive,Ross Burton <ross.burton@intel.co=
m>)
['shadow-securetty', '4.2.1', 'INVALID', 'MIT', 'base utils', '', 'r3', ' '=
, 'None', 'None', 'Provider of the machine specific securetty file.', 'MATC=
H', 'N/A', 'file://securetty', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (shadow-securetty,4.2.1,INVALID,MIT,base utils,r3,None,,None,MATCH=
, ,Provider of the machine specific securetty file.,N/A,file://securetty,Ch=
en Qi <Qi.Chen@windriver.com>)
['gtk+3', '3.10.7', '3.13.7', 'LGPLv2 & LGPLv2+ & LGPLv2.1+', 'libs', 'http=
://www.gtk.org', 'r0', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  qemu-native glib-2.0 cair=
o pango atk jpeg libpng gdk-pixbuf            docbook-utils-native gdk-pixb=
uf-native glib-2.0-native gtk-doc-stub-native wayland libxkbcommon at-spi2-=
atk fontconfig libx11 libxext libxcursor libxi libxdamage libxrandr libxren=
der libxcomposite libxfixes virtual/update-alternatives', 'https://bugzilla=
=2Egnome.org/', 'None', 'GTK+ is a multi-platform toolkit for creating grap=
hical user interfaces. Offering a complete set of widgets, GTK+ is suitable=
 for projects ranging from small one-off projects to complete application s=
uites.', 'UPDATE', 'N/A', 'http://ftp.gnome.org/pub/gnome/sources/gtk+/3.10=
/gtk+-3.10.7.tar.xz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (gtk+3,3.10.7,3.13.7,LGPLv2 & LGPLv2+ & LGPLv2.1+,libs,r0,None,htt=
p://www.gtk.org,https://bugzilla.gnome.org/,UPDATE,pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  qemu-native glib-2.0 cairo pango atk jpeg libpng gdk-pixbuf            do=
cbook-utils-native gdk-pixbuf-native glib-2.0-native gtk-doc-stub-native wa=
yland libxkbcommon at-spi2-atk fontconfig libx11 libxext libxcursor libxi l=
ibxdamage libxrandr libxrender libxcomposite libxfixes virtual/update-alter=
natives,GTK+ is a multi-platform toolkit for creating graphical user interf=
aces. Offering a complete set of widgets, GTK+ is suitable for projects ran=
ging from small one-off projects to complete application suites.,N/A,http:/=
/ftp.gnome.org/pub/gnome/sources/gtk+/3.10/gtk+-3.10.7.tar.xz,Ross Burton <=
ross.burton@intel.com>)
['python-gst', '0.10.22', '1.2.1', 'LGPLv2.1', 'devel/python', '', 'r2', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  gstreamer gst-plugins-base python-pygobject python=
-native python  python-native ', 'None', 'None', 'Python bindings for the G=
Streamer multimedia framework.', 'UPDATE', 'N/A', 'http://gstreamer.freedes=
ktop.org/src/gst-python/gst-python-0.10.22.tar.bz2', 'Richard Purdie <richa=
rd.purdie@linuxfoundation.org>', 'None']
inserted (python-gst,0.10.22,1.2.1,LGPLv2.1,devel/python,r2,None,,None,UPDA=
TE,pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  gstreamer gst-plugins-base python-pygobject py=
thon-native python  python-native ,Python bindings for the GStreamer multim=
edia framework.,N/A,http://gstreamer.freedesktop.org/src/gst-python/gst-pyt=
hon-0.10.22.tar.bz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['gdb-cross-i586', '7.7.1', '7.8', 'GPLv2 & GPLv3 & LGPLv2 & LGPLv3', 'deve=
l', 'http://www.gnu.org/software/gdb/', 'r0', 'autoconf-native automake-nat=
ive libtool-native gnu-config-native gettext-minimal-native  expat-native n=
curses-native readline-native texinfo-dummy-native', 'None', 'None', 'GNU d=
ebugger.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/gdb/gdb-7.7.1.tar.gz', '=
Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (gdb-cross-i586,7.7.1,7.8,GPLv2 & GPLv3 & LGPLv2 & LGPLv3,devel,r0=
,None,http://www.gnu.org/software/gdb/,None,UPDATE,autoconf-native automake=
-native libtool-native gnu-config-native gettext-minimal-native  expat-nati=
ve ncurses-native readline-native texinfo-dummy-native,GNU debugger.,N/A,ft=
p://ftp.gnu.org/gnu/gdb/gdb-7.7.1.tar.gz,Richard Purdie <richard.purdie@lin=
uxfoundation.org>)
['xserver-xf86-config', '0.1', 'INVALID', 'MIT-X', 'x11/base', 'http://www.=
x.org', 'r33', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', 'None', 'X.Org X server configuration file.=
', 'MATCH', 'N/A', 'file://xorg.conf', 'Ross Burton <ross.burton@intel.com>=
', 'None']
inserted (xserver-xf86-config,0.1,INVALID,MIT-X,x11/base,r33,None,http://ww=
w.x.org,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ,X.Org X server configuration file.,N/A,file://xorg=
=2Econf,Ross Burton <ross.burton@intel.com>)
['gccmakedep', '1.0.3', '1.0.3', 'MIT-X', 'x11/utils', 'http://www.x.org', =
'r3', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', "create dependencies in makefiles usi=
ng 'gcc -M'", 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individ=
ual/util/gccmakedep-1.0.3.tar.gz', 'Richard Purdie <richard.purdie@linuxfou=
ndation.org>', 'None']
inserted (gccmakedep,1.0.3,1.0.3,MIT-X,x11/utils,r3,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros,create dependencies in makefiles using 'gcc -M',N/A,=
http://xorg.freedesktop.org/releases/individual/util/gccmakedep-1.0.3.tar.g=
z,Richard Purdie <richard.purdie@linuxfoundation.org>)
['lsbinitscripts', '9.55', '9.55', 'GPLv2', 'base', '', 'r0', ' virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  popt gl=
ib-2.0 virtual/update-alternatives', 'None', 'None', 'SysV init scripts whi=
ch are only used in an LSB image.', 'MATCH', 'N/A', 'http://pkgs.fedoraproj=
ect.org/repo/pkgs/initscripts/initscripts-9.55.tar.bz2/0672f648a9ee8607a2df=
65835c54f5e5/initscripts-9.55.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', =
'None']
inserted (lsbinitscripts,9.55,9.55,GPLv2,base,r0,None,,None,MATCH, virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  popt=
 glib-2.0 virtual/update-alternatives,SysV init scripts which are only used=
 in an LSB image.,N/A,http://pkgs.fedoraproject.org/repo/pkgs/initscripts/i=
nitscripts-9.55.tar.bz2/0672f648a9ee8607a2df65835c54f5e5/initscripts-9.55.t=
ar.bz2,Saul Wold <sgw@linux.intel.com>)
['libnewt-python', '0.52.17', '0.52.17', 'LGPLv2', 'libs', 'https://fedorah=
osted.org/newt/', 'r2', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  libnewt python  python-native ', 'None', =
'None', 'Newt is a programming library for color text mode, widget based us=
er interfaces.  Newt can be used to add stacked windows, entry widgets, che=
ckboxes, radio buttons, labels, plain text fields, scrollbars, etc., to tex=
t mode user interfaces.  This package also contains the shared library need=
ed by programs built with newt, as well as a /usr/bin/dialog replacement ca=
lled whiptail.  Newt is based on the slang library.', 'MATCH', 'N/A', 'http=
s://fedorahosted.org/releases/n/e/newt/newt-0.52.17.tar.gz', 'None', 'None']
inserted (libnewt-python,0.52.17,0.52.17,LGPLv2,libs,r2,None,https://fedora=
hosted.org/newt/,None,MATCH,autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  libnewt python  python-native ,Newt is=
 a programming library for color text mode, widget based user interfaces.  =
Newt can be used to add stacked windows, entry widgets, checkboxes, radio b=
uttons, labels, plain text fields, scrollbars, etc., to text mode user inte=
rfaces.  This package also contains the shared library needed by programs b=
uilt with newt, as well as a /usr/bin/dialog replacement called whiptail.  =
Newt is based on the slang library.,N/A,https://fedorahosted.org/releases/n=
/e/newt/newt-0.52.17.tar.gz,None)
['gnu-config', '20120814', '20120814', 'GPLv2', 'devel', '', 'r0', ' ', 'No=
ne', 'None', 'Tool that installs the GNU config.guess / config.sub into a d=
irectory tree', 'MATCH', 'N/A', 'http://downloads.yoctoproject.org/releases=
/gnu-config/gnu-config-20120814.tar.bz2', 'Robert Yang <liezhi.yang@windriv=
er.com>', 'None']
inserted (gnu-config,20120814,20120814,GPLv2,devel,r0,None,,None,MATCH, ,To=
ol that installs the GNU config.guess / config.sub into a directory tree,N/=
A,http://downloads.yoctoproject.org/releases/gnu-config/gnu-config-20120814=
=2Etar.bz2,Robert Yang <liezhi.yang@windriver.com>)
['python-git', '0.3.2.RC1', '0.3.2.RC1', 'BSD-3-Clause', 'devel/python', 'h=
ttp://github.com/gitpython-developers/GitPython', 'r0', ' virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  python-gitdb =
python-native python  python-native  python-distribute-native', 'None', 'No=
ne', 'GitPython provides object model read and write access to a git reposi=
tory. Access repository information conveniently, alter the index directly,=
 handle remotes, or go down to low-level object database access with big-fi=
les support.', 'MATCH', 'N/A', 'http://pypi.python.org/packages/source/G/Gi=
tPython/GitPython-0.3.2.RC1.tar.gz', 'None', 'None']
inserted (python-git,0.3.2.RC1,0.3.2.RC1,BSD-3-Clause,devel/python,r0,None,=
http://github.com/gitpython-developers/GitPython,None,MATCH, virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  python-git=
db python-native python  python-native  python-distribute-native,GitPython =
provides object model read and write access to a git repository. Access rep=
ository information conveniently, alter the index directly, handle remotes,=
 or go down to low-level object database access with big-files support.,N/A=
,http://pypi.python.org/packages/source/G/GitPython/GitPython-0.3.2.RC1.tar=
=2Egz,None)
['eglibc-initial', '2.19', '2.19', 'GPLv2 & LGPLv2.1', 'libs', 'http://www.=
eglibc.org/home', 'r0', 'autoconf-native automake-native libtool-native gnu=
-config-native  linux-libc-headers virtual/i586-poky-linux-gcc-initial libg=
cc-initial kconfig-frontends-native texinfo-native', 'None', 'None', "Embed=
ded GLIBC (EGLIBC) is a variant of the GNU C Library (GLIBC) that is design=
ed to work well on embedded systems. EGLIBC strives to be source and binary=
 compatible with GLIBC. EGLIBC's goals include reduced footprint, configura=
ble components, better support for cross-compilation and cross-testing.", '=
MATCH', 'N/A', 'http://downloads.yoctoproject.org/releases/eglibc/eglibc-2.=
19-svnr25243.tar.bz2', 'Richard Purdie <richard.purdie@linuxfoundation.org>=
', 'None']
inserted (eglibc-initial,2.19,2.19,GPLv2 & LGPLv2.1,libs,r0,None,http://www=
=2Eeglibc.org/home,None,MATCH,autoconf-native automake-native libtool-nativ=
e gnu-config-native  linux-libc-headers virtual/i586-poky-linux-gcc-initial=
 libgcc-initial kconfig-frontends-native texinfo-native,Embedded GLIBC (EGL=
IBC) is a variant of the GNU C Library (GLIBC) that is designed to work wel=
l on embedded systems. EGLIBC strives to be source and binary compatible wi=
th GLIBC. EGLIBC's goals include reduced footprint, configurable components=
, better support for cross-compilation and cross-testing.,N/A,http://downlo=
ads.yoctoproject.org/releases/eglibc/eglibc-2.19-svnr25243.tar.bz2,Richard =
Purdie <richard.purdie@linuxfoundation.org>)
['alsa-utils', '1.0.27.2', '1.0.28', 'GPLv2+', 'console/utils', 'http://www=
=2Ealsa-project.org', 'r0', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  alsa-lib ncurses libsamplerate0 udev udev', 'https://bugtrack.al=
sa-project.org/alsa-bug/login_page.php', 'None', 'ALSA sound utilities.', '=
UPDATE', 'N/A', 'ftp://ftp.alsa-project.org/pub/utils/alsa-utils-1.0.27.2.t=
ar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (alsa-utils,1.0.27.2,1.0.28,GPLv2+,console/utils,r0,None,http://ww=
w.alsa-project.org,https://bugtrack.alsa-project.org/alsa-bug/login_page.ph=
p,UPDATE,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  alsa-lib =
ncurses libsamplerate0 udev udev,ALSA sound utilities.,N/A,ftp://ftp.alsa-p=
roject.org/pub/utils/alsa-utils-1.0.27.2.tar.bz2,Cristian Iorga <cristian.i=
orga@intel.com>)
['foomatic-filters', '4.0.17', '4.0.17', 'GPLv2+', 'base', '', 'r1', 'pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc   cups perl libxml2', 'None', 'None', 'Foomatic is a pr=
inter database designed to make it easier to set up common printers for use=
 with UNIX-like operating systems.It provides the "glue" between a print sp=
ooler (like CUPS or lpr) and the printer, by processing files sent to the p=
rinter.  This package consists of filters used by the printer spoolers to c=
onvert the incoming PostScript data into the printer\'s native format using=
 a printer-specific, but spooler-independent PPD file. ', 'MATCH', 'N/A', '=
http://www.openprinting.org/download/foomatic/foomatic-filters-4.0.17.tar.g=
z', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (foomatic-filters,4.0.17,4.0.17,GPLv2+,base,r1,None,,None,MATCH,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc   cups perl libxml2,Foomatic is a printer database d=
esigned to make it easier to set up common printers for use with UNIX-like =
operating systems.It provides the "glue" between a print spooler (like CUPS=
 or lpr) and the printer, by processing files sent to the printer.  This pa=
ckage consists of filters used by the printer spoolers to convert the incom=
ing PostScript data into the printer's native format using a printer-specif=
ic, but spooler-independent PPD file. ,N/A,http://www.openprinting.org/down=
load/foomatic/foomatic-filters-4.0.17.tar.gz,Saul Wold <sgw@linux.intel.com=
>)
['libusb1', '1.0.19', '1.0.19', 'LGPLv2.1+', 'libs', 'http://libusb.sf.net'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ', 'http://www.libusb.org/report', 'None=
', 'Userspace library to access USB (version 1.0).', 'MATCH', 'N/A', 'http:=
//downloads.sourceforge.net/libusb/libusb-1.0.19.tar.bz2', 'Saul Wold <sgw@=
linux.intel.com>', 'None']
inserted (libusb1,1.0.19,1.0.19,LGPLv2.1+,libs,r0,None,http://libusb.sf.net=
,http://www.libusb.org/report,MATCH,pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Userspace li=
brary to access USB (version 1.0).,N/A,http://downloads.sourceforge.net/lib=
usb/libusb-1.0.19.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['bluez-hcidump', '2.5', '2.5', 'GPLv2+', 'console', '', 'r1', 'autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bl=
uez4', 'None', 'None', 'The hcidump tool reads raw HCI data coming from and=
 going to a Bluetooth device and displays the commands, events and data in =
a human-readable form.', 'MATCH', 'N/A', 'http://www.kernel.org/pub/linux/b=
luetooth/bluez-hcidump-2.5.tar.gz', 'Cristian Iorga <cristian.iorga@intel.c=
om>', 'None']
inserted (bluez-hcidump,2.5,2.5,GPLv2+,console,r1,None,,None,MATCH,autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 bluez4,The hcidump tool reads raw HCI data coming from and going to a Blue=
tooth device and displays the commands, events and data in a human-readable=
 form.,N/A,http://www.kernel.org/pub/linux/bluetooth/bluez-hcidump-2.5.tar.=
gz,Cristian Iorga <cristian.iorga@intel.com>)
['apt', '0.9.9.4', '1.0.6', 'GPLv2.0+', 'base', '', 'r0', 'autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native virtual/gett=
ext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  curl db', 'None', 'None', 'Advanced front-end for d=
pkg.', 'UPDATE', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/a/apt/apt_0.=
9.9.4.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (apt,0.9.9.4,1.0.6,GPLv2.0+,base,r0,None,,None,UPDATE,autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native virtual/=
gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  curl db,Advanced front-end for dpkg.,N/A,ftp://=
ftp.debian.org/debian/pool/main/a/apt/apt_0.9.9.4.tar.gz,Saul Wold <sgw@lin=
ux.intel.com>)
['libxcb', '1.10', '1.11', 'MIT', 'x11/libs', 'http://xcb.freedesktop.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  xcb-proto xproto libxau xcb-proto-native =
libpthread-stubs  python-native  libxdmcp', 'https://bugs.freedesktop.org/e=
nter_bug.cgi?product=3DXCB', 'None', 'The X protocol C-language Binding (XC=
B) is a replacement for Xlib featuring a small footprint, latency hiding, d=
irect access to the protocol, improved threading support, and extensibility=
=2E', 'UPDATE', 'N/A', 'http://xcb.freedesktop.org/dist/libxcb-1.10.tar.bz2=
', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxcb,1.10,1.11,MIT,x11/libs,r0,None,http://xcb.freedesktop.org,=
https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,UPDATE,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  xcb-proto xproto libxau xcb-proto-native libpthread-stubs  p=
ython-native  libxdmcp,The X protocol C-language Binding (XCB) is a replace=
ment for Xlib featuring a small footprint, latency hiding, direct access to=
 the protocol, improved threading support, and extensibility.,N/A,http://xc=
b.freedesktop.org/dist/libxcb-1.10.tar.bz2,Ross Burton <ross.burton@intel.c=
om>)
['eglinfo-fb', '1.0', '1.0.0', 'Zlib', 'graphics', 'https://github.com/dv1/=
eglinfo', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  virtual/egl', 'None', 'None', 'Utility for printing i=
nformation EGL and its client APIs (OpenGL, OpenGL ES, OpenVG) (Framebuffer=
 version).', 'ErrUnknown:github.com/dv1/eglinfo.git', 'N/A', 'git://github.=
com/dv1/eglinfo.git;branch=3Dmaster', 'None', 'None']
inserted (eglinfo-fb,1.0,1.0.0,Zlib,graphics,r0,None,https://github.com/dv1=
/eglinfo,None,ErrUnknown:github.com/dv1/eglinfo.git, virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/egl,Utilit=
y for printing information EGL and its client APIs (OpenGL, OpenGL ES, Open=
VG) (Framebuffer version).,N/A,git://github.com/dv1/eglinfo.git;branch=3Dma=
ster,None)
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
['xcb-util-wm', '0.4.1', '0.4.1', 'MIT', 'x11/libs', 'http://xcb.freedeskto=
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
st/xcb-util-wm-0.4.1.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None=
']
inserted (xcb-util-wm,0.4.1,0.4.1,MIT,x11/libs,r0,None,http://xcb.freedeskt=
op.org/XcbUtil/,https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,MA=
TCH,pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  libxcb gperf-native,The xcb-util module provi=
des a number of libraries which sit on top of libxcb, the core X protocol l=
ibrary, and some of the extension libraries. These experimental libraries p=
rovide convenience functions and interfaces which make the raw X protocol m=
ore usable. Some of the libraries also provide client-side code which is no=
t strictly part of the X protocol but which have traditionally been provide=
d by Xlib.,N/A,http://xcb.freedesktop.org/dist/xcb-util-wm-0.4.1.tar.bz2,Ro=
ss Burton <ross.burton@intel.com>)
['zip', '30', '30', 'BSD-3-Clause', 'console/utils', 'http://www.info-zip.o=
rg', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  ', 'None', 'None', 'Compressor/archiver for creating and m=
odifying .zip files.', 'MATCH', '3.0', 'ftp://ftp.info-zip.org/pub/infozip/=
src/zip30.tgz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (zip,30,30,BSD-3-Clause,console/utils,r2,None,http://www.info-zip.=
org,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ,Compressor/archiver for creating and modifying .zip fi=
les.,3.0,ftp://ftp.info-zip.org/pub/infozip/src/zip30.tgz,Chen Qi <Qi.Chen@=
windriver.com>)
['matchbox-wm', '1.2+gitAUTOINC+29544f0e61', '1.2+gitAUTOINC+29544f0', 'GPL=
v2+', 'x11/wm', 'http://matchbox-project.org', 'r0', 'pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  libmatchbox virtual/libx11 libxext libxrender startup-notification exp=
at gconf libxcursor libxfixes', 'http://bugzilla.yoctoproject.org/', 'None'=
, 'Matchbox lightweight window manager.', 'MATCH', 'N/A', 'git://git.yoctop=
roject.org/matchbox-window-manager', 'Ross Burton <ross.burton@intel.com>',=
 'None']
inserted (matchbox-wm,1.2+gitAUTOINC+29544f0e61,1.2+gitAUTOINC+29544f0,GPLv=
2+,x11/wm,r0,None,http://matchbox-project.org,http://bugzilla.yoctoproject.=
org/,MATCH,pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  libmatchbox virtual/libx11 libxext lib=
xrender startup-notification expat gconf libxcursor libxfixes,Matchbox ligh=
tweight window manager.,N/A,git://git.yoctoproject.org/matchbox-window-mana=
ger,Ross Burton <ross.burton@intel.com>)
['qt4-embedded', '4.8.6', 'N/A', 'LGPLv2.1 | GPLv3', 'libs', 'http://qt-pro=
ject.org/', 'r0', 'qt4-tools-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   directfb tslib qt4-tools-native f=
reetype jpeg libpng zlib dbus openssl glib-2.0 gstreamer gst-plugins-base s=
qlite3 tiff icu pulseaudio', 'None', 'None', 'Qt is a versatile cross-platf=
orm application framework -- this is the embedded (framebuffer) version.', =
'ErrHostNoDir:/official_releases/qt/5.3/4.8.6/:4.8:qt-everywhere-opensource=
-src-4.8.6.tar.gz:download.qt-project.org/official_releases/qt/4.8/4.8.6/qt=
-everywhere-opensource-src-4.8.6.tar.gz', 'N/A', 'http://download.qt-projec=
t.org/official_releases/qt/4.8/4.8.6/qt-everywhere-opensource-src-4.8.6.tar=
=2Egz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (qt4-embedded,4.8.6,N/A,LGPLv2.1 | GPLv3,libs,r0,None,http://qt-pr=
oject.org/,None,ErrHostNoDir:/official_releases/qt/5.3/4.8.6/:4.8:qt-everyw=
here-opensource-src-4.8.6.tar.gz:download.qt-project.org/official_releases/=
qt/4.8/4.8.6/qt-everywhere-opensource-src-4.8.6.tar.gz,qt4-tools-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
   directfb tslib qt4-tools-native freetype jpeg libpng zlib dbus openssl g=
lib-2.0 gstreamer gst-plugins-base sqlite3 tiff icu pulseaudio,Qt is a vers=
atile cross-platform application framework -- this is the embedded (framebu=
ffer) version.,N/A,http://download.qt-project.org/official_releases/qt/4.8/=
4.8.6/qt-everywhere-opensource-src-4.8.6.tar.gz,Paul Eggleton <paul.eggleto=
n@linux.intel.com>)
['startup-notification', '0.12', '0.12', 'LGPLv2+', 'libs', 'http://www.fre=
edesktop.org/wiki/Software/startup-notification/', 'r2', 'pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  virtual/libx11 libsm xcb-util', 'https://bugs.freedesktop.org/ente=
r_bug.cgi?product=3DSpecifications', 'None', 'Enables monitoring and displa=
y of application startup.', 'MATCH', 'N/A', 'http://www.freedesktop.org/sof=
tware/startup-notification/releases/startup-notification-0.12.tar.gz', 'Sau=
l Wold <sgw@linux.intel.com>', 'None']
inserted (startup-notification,0.12,0.12,LGPLv2+,libs,r2,None,http://www.fr=
eedesktop.org/wiki/Software/startup-notification/,https://bugs.freedesktop.=
org/enter_bug.cgi?product=3DSpecifications,MATCH,pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
virtual/libx11 libsm xcb-util,Enables monitoring and display of application=
 startup.,N/A,http://www.freedesktop.org/software/startup-notification/rele=
ases/startup-notification-0.12.tar.gz,Saul Wold <sgw@linux.intel.com>)
['glib-2.0', '2.40.0', '2.41.3', 'LGPLv2+ & BSD & PD', 'libs', '', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0-native vir=
tual/libiconv libffi zlib dbus gtk-doc-stub-native', 'http://bugzilla.gnome=
=2Eorg', '1', 'GLib is a general-purpose utility library, which provides ma=
ny useful data types, macros, type conversions, string utilities, file util=
ities, a main loop abstraction, and so on.', 'UPDATE', 'N/A', 'http://ftp.g=
nome.org/pub/GNOME/sources/glib/2.40/glib-2.40.0.tar.xz', 'Robert Yang <lie=
zhi.yang@windriver.com>', 'None']
inserted (glib-2.0,2.40.0,2.41.3,LGPLv2+ & BSD & PD,libs,r0,1,,http://bugzi=
lla.gnome.org,UPDATE,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  glib-2.0-native virtual/libiconv libffi zlib dbus gtk-doc-stub-native,GL=
ib is a general-purpose utility library, which provides many useful data ty=
pes, macros, type conversions, string utilities, file utilities, a main loo=
p abstraction, and so on.,N/A,http://ftp.gnome.org/pub/GNOME/sources/glib/2=
=2E40/glib-2.40.0.tar.xz,Robert Yang <liezhi.yang@windriver.com>)
['tzdata', '2014f', 'N/A', 'PD & BSD', 'base', 'ftp://elsie.nci.nih.gov/pub=
/', 'r0', ' tzcode-native', 'None', 'None', 'Timezone data', 'ErrParseDir:/=
tz/releases/:-:tzdata2014f.tar.gz:ftp.iana.org/tz/releases/tzdata2014f.tar.=
gz', 'N/A', 'ftp://ftp.iana.org/tz/releases/tzdata2014f.tar.gz;name=3Dtzdat=
a', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (tzdata,2014f,N/A,PD & BSD,base,r0,None,ftp://elsie.nci.nih.gov/pu=
b/,None,ErrParseDir:/tz/releases/:-:tzdata2014f.tar.gz:ftp.iana.org/tz/rele=
ases/tzdata2014f.tar.gz, tzcode-native,Timezone data,N/A,ftp://ftp.iana.org=
/tz/releases/tzdata2014f.tar.gz;name=3Dtzdata,Robert Yang <liezhi.yang@wind=
river.com>)
['m4', '1.4.17', '1.4.17', 'GPLv3', 'base', '', 'r0', 'autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-na=
tive', 'None', 'None', 'GNU m4 is an implementation of the traditional Unix=
 macro processor.  It is mostly SVR4 compatible although it has some extens=
ions (for example, handling more than 9 positional parameters to macros). G=
NU M4 also has built-in functions for including files, running shell comman=
ds, doing arithmetic, etc.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/m4/m4-1=
=2E4.17.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (m4,1.4.17,1.4.17,GPLv3,base,r0,None,,None,MATCH,autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo=
-native,GNU m4 is an implementation of the traditional Unix macro processor=
=2E  It is mostly SVR4 compatible although it has some extensions (for exam=
ple, handling more than 9 positional parameters to macros). GNU M4 also has=
 built-in functions for including files, running shell commands, doing arit=
hmetic, etc.,N/A,ftp://ftp.gnu.org/gnu/m4/m4-1.4.17.tar.gz,Robert Yang <lie=
zhi.yang@windriver.com>)
['resourceproto', '1.2.0', '1.2.0', 'MIT', 'x11/libs', 'http://www.x.org', =
'r1', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire proto=
col for the X Resource extension.  XRes provides an interface that allows X=
 clients to see and monitor X resource usage of various clients.', 'MATCH',=
 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/resourceprot=
o-1.2.0.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (resourceproto,1.2.0,1.2.0,MIT,x11/libs,r1,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros,This package provides the wire protocol for the X Re=
source extension.  XRes provides an interface that allows X clients to see =
and monitor X resource usage of various clients.,N/A,http://xorg.freedeskto=
p.org/releases/individual/proto/resourceproto-1.2.0.tar.bz2,Ross Burton <ro=
ss.burton@intel.com>)
['qemu', '2.1.0', '2.1.0', 'GPLv2 & LGPLv2.1', 'base', 'http://qemu.org', '=
r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  glib-2.0 zlib pixman alsa-lib dtc libsdl', 'None', 'None', '=
Fast open source processor emulator.', 'MATCH', 'N/A', 'http://wiki.qemu-pr=
oject.org/download/qemu-2.1.0.tar.bz2', 'Cristian Iorga <cristian.iorga@int=
el.com>', 'None']
inserted (qemu,2.1.0,2.1.0,GPLv2 & LGPLv2.1,base,r0,None,http://qemu.org,No=
ne,MATCH,autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  glib-2.0 zlib pixman alsa-lib dtc libsdl,Fast open source=
 processor emulator.,N/A,http://wiki.qemu-project.org/download/qemu-2.1.0.t=
ar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['libxrandr', '1.4.2', '1.4.2', 'MIT-style', 'x11/libs', 'http://www.x.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros virtual/libx11 randrproto li=
bxrender libxext', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxo=
rg', '1', 'The X Resize, Rotate and Reflect Extension, called RandR for sho=
rt, brings the ability to resize, rotate and reflect the root window of a s=
creen. It is based on the X Resize and Rotate Extension as specified in the=
 Proceedings of the 2001 Usenix Technical Conference [RANDR].', 'MATCH', 'N=
/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXrandr-1.4.2.t=
ar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxrandr,1.4.2,1.4.2,MIT-style,x11/libs,r0,1,http://www.x.org,ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  util-macros virtual/libx11 randrproto libxrender libxext,The X=
 Resize, Rotate and Reflect Extension, called RandR for short, brings the a=
bility to resize, rotate and reflect the root window of a screen. It is bas=
ed on the X Resize and Rotate Extension as specified in the Proceedings of =
the 2001 Usenix Technical Conference [RANDR].,N/A,http://xorg.freedesktop.o=
rg/releases/individual/lib/libXrandr-1.4.2.tar.bz2,Ross Burton <ross.burton=
@intel.com>)
['libsamplerate0', '0.1.8', '0.1.8', 'GPLv2+', 'libs', 'http://www.mega-ner=
d.com/SRC/', 'r1', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  flac libsndfile1', 'None', 'N=
one', 'Audio Sample Rate Conversion library.', 'MATCH', 'N/A', 'http://www.=
mega-nerd.com/SRC/libsamplerate-0.1.8.tar.gz', 'Cristian Iorga <cristian.io=
rga@intel.com>', 'None']
inserted (libsamplerate0,0.1.8,0.1.8,GPLv2+,libs,r1,None,http://www.mega-ne=
rd.com/SRC/,None,MATCH,pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  flac libsndfile1,Audio Sam=
ple Rate Conversion library.,N/A,http://www.mega-nerd.com/SRC/libsamplerate=
-0.1.8.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['expat', '2.1.0', '2.1.0', 'MIT', 'libs', 'http://expat.sourceforge.net/',=
 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc   gzip-native', 'None', 'None', 'Expat is an XML parser lib=
rary written in C. It is a stream-oriented parser in which an application r=
egisters handlers for things the parser might find in the XML document (lik=
e start tags)', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/expat/exp=
at-2.1.0.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (expat,2.1.0,2.1.0,MIT,libs,r0,None,http://expat.sourceforge.net/,=
None,MATCH,autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc   gzip-native,Expat is an XML parser library written in =
C. It is a stream-oriented parser in which an application registers handler=
s for things the parser might find in the XML document (like start tags),N/=
A,http://downloads.sourceforge.net/expat/expat-2.1.0.tar.gz,Paul Eggleton <=
paul.eggleton@linux.intel.com>)
['lttng-tools', 'v2.5.0', 'v2.5.0', 'GPLv2 & LGPLv2.1', 'devel', '', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  liburcu popt lttng-ust libxml2', 'None', 'None',=
 'The Linux trace toolkit is a suite of tools designed to extract program e=
xecution details from the Linux operating system and interpret them.', 'Err=
Unknown:git.lttng.org/lttng-tools.git', 'N/A', 'git://git.lttng.org/lttng-t=
ools.git;branch=3Dstable-2.5', 'Richard Purdie <richard.purdie@linuxfoundat=
ion.org>', 'None']
inserted (lttng-tools,v2.5.0,v2.5.0,GPLv2 & LGPLv2.1,devel,r0,None,,None,Er=
rUnknown:git.lttng.org/lttng-tools.git,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  liburcu po=
pt lttng-ust libxml2,The Linux trace toolkit is a suite of tools designed t=
o extract program execution details from the Linux operating system and int=
erpret them.,N/A,git://git.lttng.org/lttng-tools.git;branch=3Dstable-2.5,Ri=
chard Purdie <richard.purdie@linuxfoundation.org>)
['sgmlspl-native', '1.03ii', '1.03ii', 'GPLv2+', 'libs', 'http://search.cpa=
n.org/src/DMEGG/SGMLSpm-1.03ii/DOC/HTML/SGMLSpm/sgmlspm.html', 'r3', '  per=
l-native perl-native', 'None', 'None', 'A simple post-processor for SGMLS a=
nd NSGMLS.', 'MATCH', 'N/A', 'http://www.cpan.org/authors/id/D/DM/DMEGG/SGM=
LSpm-1.03ii.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None=
']
inserted (sgmlspl-native,1.03ii,1.03ii,GPLv2+,libs,r3,None,http://search.cp=
an.org/src/DMEGG/SGMLSpm-1.03ii/DOC/HTML/SGMLSpm/sgmlspm.html,None,MATCH,  =
perl-native perl-native,A simple post-processor for SGMLS and NSGMLS.,N/A,h=
ttp://www.cpan.org/authors/id/D/DM/DMEGG/SGMLSpm-1.03ii.tar.gz,Paul Eggleto=
n <paul.eggleton@linux.intel.com>)
['initramfs-live-install-testfs', '1.0', 'INVALID', 'MIT', 'base', '', 'r0'=
, ' ', 'None', 'None', 'Live image install script with a second rootfs/kern=
el.', 'MATCH', 'N/A', 'file://init-install-testfs.sh', 'None', 'None']
inserted (initramfs-live-install-testfs,1.0,INVALID,MIT,base,r0,None,,None,=
MATCH, ,Live image install script with a second rootfs/kernel.,N/A,file://i=
nit-install-testfs.sh,None)
['i2c-tools', '3.1.1', '3.1.1', 'GPLv2+', 'base', '', 'r0', 'autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'N=
one', 'None', 'Set of i2c tools for linux.', 'MATCH', 'N/A', 'http://dl.lm-=
sensors.org/i2c-tools/releases/i2c-tools-3.1.1.tar.bz2', 'None', 'None']
inserted (i2c-tools,3.1.1,3.1.1,GPLv2+,base,r0,None,,None,MATCH,autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,S=
et of i2c tools for linux.,N/A,http://dl.lm-sensors.org/i2c-tools/releases/=
i2c-tools-3.1.1.tar.bz2,None)
['xkbcomp', '1.2.4', '1.2.4', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8=
=2E0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxkbf=
ile', 'https://bugs.freedesktop.org', 'None', 'The xkbcomp keymap compiler =
converts a description of an XKB keymap into one of several output formats.=
 The most common use for xkbcomp is to create a compiled keymap file (.xkm =
extension) which can be read directly by XKB-capable X servers or utilities=
=2E', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/=
xkbcomp-1.2.4.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xkbcomp,1.2.4,1.2.4,MIT-X,x11/apps,r8.0,None,http://www.x.org/,ht=
tps://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-nati=
ve virtual/libx11 libxkbfile,The xkbcomp keymap compiler converts a descrip=
tion of an XKB keymap into one of several output formats. The most common u=
se for xkbcomp is to create a compiled keymap file (.xkm extension) which c=
an be read directly by XKB-capable X servers or utilities.,N/A,http://xorg.=
freedesktop.org/releases/individual/app/xkbcomp-1.2.4.tar.bz2,Ross Burton <=
ross.burton@intel.com>)
['flac', '1.3.0', '1.3.0', 'GFDL-1.2 & GPLv2+ & LGPLv2.1+ & BSD', 'libs', '=
https://xiph.org/flac/', 'r0', 'autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  lib=
ogg', 'http://sourceforge.net/p/flac/bugs/', 'None', 'FLAC stands for Free =
Lossless Audio Codec, a lossless audio compression format.', 'MATCH', 'N/A'=
, 'http://downloads.xiph.org/releases/flac/flac-1.3.0.tar.xz', 'Cristian Io=
rga <cristian.iorga@intel.com>', 'None']
inserted (flac,1.3.0,1.3.0,GFDL-1.2 & GPLv2+ & LGPLv2.1+ & BSD,libs,r0,None=
,https://xiph.org/flac/,http://sourceforge.net/p/flac/bugs/,MATCH,autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native virtu=
al/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  libogg,FLAC stands for Free Lossless Audio C=
odec, a lossless audio compression format.,N/A,http://downloads.xiph.org/re=
leases/flac/flac-1.3.0.tar.xz,Cristian Iorga <cristian.iorga@intel.com>)
['sysfsutils', '2.1.0', '2.1.0', 'GPLv2 & LGPLv2.1', 'base', 'http://linux-=
diag.sourceforge.net/Sysfsutils.html', 'r5', 'autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', "=
Tools for working with the sysfs virtual filesystem.  The tool 'systool' ca=
n query devices by bus, class and topology.", 'MATCH', 'N/A', 'http://downl=
oads.sourceforge.net/linux-diag/sysfsutils-2.1.0.tar.gz', 'Chen Qi <Qi.Chen=
@windriver.com>', 'None']
inserted (sysfsutils,2.1.0,2.1.0,GPLv2 & LGPLv2.1,base,r5,None,http://linux=
-diag.sourceforge.net/Sysfsutils.html,None,MATCH,autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Tools for workin=
g with the sysfs virtual filesystem.  The tool 'systool' can query devices =
by bus, class and topology.,N/A,http://downloads.sourceforge.net/linux-diag=
/sysfsutils-2.1.0.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
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
xcb-util-0.3.9.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
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
y Xlib.,N/A,http://xcb.freedesktop.org/dist/xcb-util-0.3.9.tar.bz2,Ross Bur=
ton <ross.burton@intel.com>)
['libpam', '1.1.6', '1.1.8', 'GPLv2+ | BSD', 'base', 'https://fedorahosted.=
org/linux-pam/', 'r5', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  bison flex flex-native cracklib', 'https://fedorahosted.org/linux-pam=
/newticket', 'None', 'Linux-PAM (Pluggable Authentication Modules for Linux=
), a flexible mechanism for authenticating users', 'UPDATE', 'N/A', 'http:/=
/linux-pam.org/library/Linux-PAM-1.1.6.tar.bz2', 'Ross Burton <ross.burton@=
intel.com>', 'None']
inserted (libpam,1.1.6,1.1.8,GPLv2+ | BSD,base,r5,None,https://fedorahosted=
=2Eorg/linux-pam/,https://fedorahosted.org/linux-pam/newticket,UPDATE,pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  bison flex flex-native =
cracklib,Linux-PAM (Pluggable Authentication Modules for Linux), a flexible=
 mechanism for authenticating users,N/A,http://linux-pam.org/library/Linux-=
PAM-1.1.6.tar.bz2,Ross Burton <ross.burton@intel.com>)
['libxsettings-client', '0.10', '0.10', 'MIT-style', 'x/libs', 'http://matc=
hbox-project.org/sources/optional-dependencies/', 'r5', 'autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native virtual/gettex=
t gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  virtual/libx11', 'http://bugzilla.yoctoproject.org/',=
 'None', 'Libraries used for applications making use of the Xsettings confi=
guration setting propagation protocol. Controls setting of double click tim=
eout, drag-and-drop threshold, and default foreground and background colors=
 for all applications running within a desktop.', 'MATCH', 'N/A', 'http://d=
ownloads.yoctoproject.org/releases/matchbox/optional-dependencies/Xsettings=
-client-0.10.tar.gz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxsettings-client,0.10,0.10,MIT-style,x/libs,r5,None,http://mat=
chbox-project.org/sources/optional-dependencies/,http://bugzilla.yoctoproje=
ct.org/,MATCH,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11,Librar=
ies used for applications making use of the Xsettings configuration setting=
 propagation protocol. Controls setting of double click timeout, drag-and-d=
rop threshold, and default foreground and background colors for all applica=
tions running within a desktop.,N/A,http://downloads.yoctoproject.org/relea=
ses/matchbox/optional-dependencies/Xsettings-client-0.10.tar.gz,Ross Burton=
 <ross.burton@intel.com>)
['mc', '4.8.12', '4.8.12', 'GPLv3', 'console/utils', 'http://www.midnight-c=
ommander.org/', 'r0', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native virtual/gettext gettext-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  ncurses glib-2.0', 'None', 'None', 'Midnight Commander is an ncurses b=
ased file manager.', 'MATCH', 'N/A', 'http://www.midnight-commander.org/dow=
nloads/mc-4.8.12.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (mc,4.8.12,4.8.12,GPLv3,console/utils,r0,None,http://www.midnight-=
commander.org/,None,MATCH,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  ncurses glib-2.0,Midnight Commander is an ncurses based file manage=
r.,N/A,http://www.midnight-commander.org/downloads/mc-4.8.12.tar.bz2,Saul W=
old <sgw@linux.intel.com>)
['libtasn1', '4.0', '4.0', 'GPLv3+ & LGPLv2.1+', 'base', 'http://www.gnu.or=
g/software/libtasn1/', 'r0', 'autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc   texinfo-native', 'None', 'None', 'L=
ibrary for ASN.1 and DER manipulation.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org=
/gnu/libtasn1/libtasn1-4.0.tar.gz', 'Ross Burton <ross.burton@intel.com>', =
'None']
inserted (libtasn1,4.0,4.0,GPLv3+ & LGPLv2.1+,base,r0,None,http://www.gnu.o=
rg/software/libtasn1/,None,MATCH,autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc   texinfo-native,Library for ASN.1=
 and DER manipulation.,N/A,ftp://ftp.gnu.org/gnu/libtasn1/libtasn1-4.0.tar.=
gz,Ross Burton <ross.burton@intel.com>)
['bluez4', '4.101', '5.22', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://www.bluez=
=2Eorg', 'r11', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  udev libusb dbus-glib glib-2.0 l=
ibcheck readline libsndfile1 alsa-lib', 'None', 'None', 'Linux Bluetooth st=
ack V4 userland components.  These include a system configurations, daemons=
, tools and system libraries.', 'UPDATE', 'N/A', 'http://kernel.org/pub/lin=
ux/bluetooth/bluez-4.101.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com=
>', 'BlueZ 5.x is not backward-compatible; components that interact with bl=
uez not updated']
inserted (bluez4,4.101,5.22,GPLv2+ & LGPLv2.1+,libs,r11,None,http://www.blu=
ez.org,None,UPDATE,pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  udev libusb dbus-glib glib-2.0=
 libcheck readline libsndfile1 alsa-lib,Linux Bluetooth stack V4 userland c=
omponents.  These include a system configurations, daemons, tools and syste=
m libraries.,N/A,http://kernel.org/pub/linux/bluetooth/bluez-4.101.tar.gz,C=
ristian Iorga <cristian.iorga@intel.com>)
['bluez5', '5.21', '5.22', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://www.bluez.=
org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  udev libusb dbus-glib glib-2.0 libch=
eck readline libical', 'None', 'None', 'Linux Bluetooth stack V5 userland c=
omponents.  These include a system configurations, daemons, tools and syste=
m libraries.', 'UPDATE', 'N/A', 'http://kernel.org/pub/linux/bluetooth/blue=
z-5.21.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (bluez5,5.21,5.22,GPLv2+ & LGPLv2.1+,libs,r0,None,http://www.bluez=
=2Eorg,None,UPDATE,pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  udev libusb dbus-glib glib-2.0=
 libcheck readline libical,Linux Bluetooth stack V5 userland components.  T=
hese include a system configurations, daemons, tools and system libraries.,=
N/A,http://kernel.org/pub/linux/bluetooth/bluez-5.21.tar.xz,Cristian Iorga =
<cristian.iorga@intel.com>)
['nativesdk-qt4-tools', '4.8.6', 'N/A', 'LGPLv2.1 | GPLv3', 'libs', 'http:/=
/qt-project.org/', 'r0', 'nativesdk-dbus qt4-tools-native virtual/i586-poky=
sdk-linux-gcc-crosssdk nativesdk-zlib nativesdk-libx11 virtual/nativesdk-i5=
86-pokysdk-linux-compilerlibs chrpath-replacement-native qt4-native virtual=
/nativesdk-libc', 'None', 'None', 'SDK tools for Qt version 4.x.', 'ErrHost=
NoDir:/official_releases/qt/5.3/4.8.6/:4.8:qt-everywhere-opensource-src-4.8=
=2E6.tar.gz:download.qt-project.org/official_releases/qt/4.8/4.8.6/qt-every=
where-opensource-src-4.8.6.tar.gz', 'N/A', 'http://download.qt-project.org/=
official_releases/qt/4.8/4.8.6/qt-everywhere-opensource-src-4.8.6.tar.gz', =
'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (nativesdk-qt4-tools,4.8.6,N/A,LGPLv2.1 | GPLv3,libs,r0,None,http:=
//qt-project.org/,None,ErrHostNoDir:/official_releases/qt/5.3/4.8.6/:4.8:qt=
-everywhere-opensource-src-4.8.6.tar.gz:download.qt-project.org/official_re=
leases/qt/4.8/4.8.6/qt-everywhere-opensource-src-4.8.6.tar.gz,nativesdk-dbu=
s qt4-tools-native virtual/i586-pokysdk-linux-gcc-crosssdk nativesdk-zlib n=
ativesdk-libx11 virtual/nativesdk-i586-pokysdk-linux-compilerlibs chrpath-r=
eplacement-native qt4-native virtual/nativesdk-libc,SDK tools for Qt versio=
n 4.x.,N/A,http://download.qt-project.org/official_releases/qt/4.8/4.8.6/qt=
-everywhere-opensource-src-4.8.6.tar.gz,Paul Eggleton <paul.eggleton@linux.=
intel.com>)
['xcb-util-renderutil', '0.3.9', '0.3.9', 'MIT', 'x11/libs', 'http://xcb.fr=
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
p.org/dist/xcb-util-renderutil-0.3.9.tar.bz2', 'Saul Wold <sgw@linux.intel.=
com>', 'None']
inserted (xcb-util-renderutil,0.3.9,0.3.9,MIT,x11/libs,r0,None,http://xcb.f=
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
-0.3.9.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['libxvmc', '1.0.8', '1.0.8', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  util-macros libxext libxv videoproto', 'https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'XvMC extends the =
X Video extension (Xv) and enables hardware rendered motion compensation su=
pport.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/l=
ib/libXvMC-1.0.8.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxvmc,1.0.8,1.0.8,MIT,x11/libs,r0,1,http://www.x.org,https://bu=
gs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  util-macros libxext libxv videoproto,XvMC extends the X Video extensio=
n (Xv) and enables hardware rendered motion compensation support.,N/A,http:=
//xorg.freedesktop.org/releases/individual/lib/libXvMC-1.0.8.tar.bz2,Ross B=
urton <ross.burton@intel.com>)
['ossp-uuid', '1.6.2', '1.6.2', 'MIT', 'libs', 'http://www.ossp.org/pkg/lib=
/uuid/', 'r2', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  ', 'None', 'None', 'OSSP uuid is a ISO-C:1999 appl=
ication programming interface (API) and corresponding command line interfac=
e (CLI) for the generation of DCE 1.1, ISO/IEC 11578:1996 and RFC 4122 comp=
liant Universally Unique Identifier (UUID). It supports DCE 1.1 variant UUI=
Ds of version 1 (time and node based), version 3 (name based, MD5), version=
 4 (random number based) and version 5 (name based, SHA-1).', 'MATCH', 'N/A=
', 'http://gnome-build-stage-1.googlecode.com/files/uuid-1.6.2.tar.gz', 'Sa=
ul Wold <sgw@linux.intel.com>', 'None']
inserted (ossp-uuid,1.6.2,1.6.2,MIT,libs,r2,None,http://www.ossp.org/pkg/li=
b/uuid/,None,MATCH,autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ,OSSP uuid is a ISO-C:1999 application programm=
ing interface (API) and corresponding command line interface (CLI) for the =
generation of DCE 1.1, ISO/IEC 11578:1996 and RFC 4122 compliant Universall=
y Unique Identifier (UUID). It supports DCE 1.1 variant UUIDs of version 1 =
(time and node based), version 3 (name based, MD5), version 4 (random numbe=
r based) and version 5 (name based, SHA-1).,N/A,http://gnome-build-stage-1.=
googlecode.com/files/uuid-1.6.2.tar.gz,Saul Wold <sgw@linux.intel.com>)
['xineramaproto', '1.2.1', '1.2.1', 'MIT & MIT-style', 'x11/libs', 'http://=
www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.fr=
eedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides th=
e wire protocol for the Xinerama extension.  This extension is used for ret=
rieving information about physical output devices which may be combined int=
o a single logical X screen.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org=
/releases/individual/proto/xineramaproto-1.2.1.tar.bz2', 'Ross Burton <ross=
=2Eburton@intel.com>', 'None']
inserted (xineramaproto,1.2.1,1.2.1,MIT & MIT-style,x11/libs,r0,1,http://ww=
w.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkg=
config-native autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  util-macros,This package provides the wire protocol =
for the Xinerama extension.  This extension is used for retrieving informat=
ion about physical output devices which may be combined into a single logic=
al X screen.,N/A,http://xorg.freedesktop.org/releases/individual/proto/xine=
ramaproto-1.2.1.tar.bz2,Ross Burton <ross.burton@intel.com>)
['iptables', '1.4.21', '1.4.21', 'GPLv2+', 'base', 'http://www.netfilter.or=
g/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  ', 'http://bugzilla.netfilter.org/', =
'None', 'iptables is the userspace command line program used to configure a=
nd control network packet filtering code in Linux.', 'MATCH', 'N/A', 'http:=
//netfilter.org/projects/iptables/files/iptables-1.4.21.tar.bz2', 'Cristian=
 Iorga <cristian.iorga@intel.com>', 'None']
inserted (iptables,1.4.21,1.4.21,GPLv2+,base,r0,None,http://www.netfilter.o=
rg/,http://bugzilla.netfilter.org/,MATCH,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,iptable=
s is the userspace command line program used to configure and control netwo=
rk packet filtering code in Linux.,N/A,http://netfilter.org/projects/iptabl=
es/files/iptables-1.4.21.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['neard', '0.14', '0.14', 'GPLv2', 'base', 'http://01.org/linux-nfc', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  dbus glib-2.0 libnl update-rc.d-native initscri=
pts', 'None', 'None', 'A daemon for the Linux Near Field Communication stac=
k', 'MATCH', 'N/A', 'http://kernel.org/pub/linux/network/nfc/neard-0.14.tar=
=2Exz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (neard,0.14,0.14,GPLv2,base,r0,None,http://01.org/linux-nfc,None,M=
ATCH,pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  dbus glib-2.0 libnl update-rc.d-native inits=
cripts,A daemon for the Linux Near Field Communication stack,N/A,http://ker=
nel.org/pub/linux/network/nfc/neard-0.14.tar.xz,Cristian Iorga <cristian.io=
rga@intel.com>)
['tar', '1.27.1', '1.28', 'GPLv3', 'base', 'http://www.gnu.org/software/tar=
/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native virtual/=
update-alternatives', 'None', 'None', 'GNU tar saves many files together in=
to a single tape or disk archive, and can restore individual files from the=
 archive.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/tar/tar-1.27.1.tar.bz2'=
, 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (tar,1.27.1,1.28,GPLv3,base,r0,None,http://www.gnu.org/software/ta=
r/,None,UPDATE,autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native virt=
ual/update-alternatives,GNU tar saves many files together into a single tap=
e or disk archive, and can restore individual files from the archive.,N/A,f=
tp://ftp.gnu.org/gnu/tar/tar-1.27.1.tar.bz2,Chen Qi <Qi.Chen@windriver.com>)
['diffstat', '1.59', '1.59', 'MIT', 'devel', 'http://invisible-island.net/d=
iffstat/', 'r0', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None'=
, 'diffstat reads the output of diff and displays a histogram of the insert=
ions, deletions, and modifications per-file. It is useful for reviewing lar=
ge, complex patch files.', 'MATCH', 'N/A', 'ftp://invisible-island.net/diff=
stat/diffstat-1.59.tgz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (diffstat,1.59,1.59,MIT,devel,r0,None,http://invisible-island.net/=
diffstat/,None,MATCH,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,diffstat read=
s the output of diff and displays a histogram of the insertions, deletions,=
 and modifications per-file. It is useful for reviewing large, complex patc=
h files.,N/A,ftp://invisible-island.net/diffstat/diffstat-1.59.tgz,Chong Lu=
 <Chong.Lu@windriver.com>)
['gstreamer1.0-plugins-bad', '1.4.0', '1.4.0', 'GPLv2+ & LGPLv2+ & LGPLv2.1=
+ ', 'multimedia', 'http://gstreamer.freedesktop.org/', 'r0', 'pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plug=
ins-base bzip2 bluez4 bzip2 curl libxml2 virtual/egl virtual/libgles2 gnutl=
s neon orc sbc libxml2 libsndfile1 libusb1 udev wayland', 'https://bugzilla=
=2Egnome.org/enter_bug.cgi?product=3DGstreamer', 'None', 'Plugins for the G=
Streamer multimedia framework 1.x.', 'MATCH', 'N/A', 'http://gstreamer.free=
desktop.org/src/gst-plugins-bad/gst-plugins-bad-1.4.0.tar.xz', 'Cristian Io=
rga <cristian.iorga@intel.com>', 'None']
inserted (gstreamer1.0-plugins-bad,1.4.0,1.4.0,GPLv2+ & LGPLv2+ & LGPLv2.1+=
 ,multimedia,r0,None,http://gstreamer.freedesktop.org/,https://bugzilla.gno=
me.org/enter_bug.cgi?product=3DGstreamer,MATCH,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native virtual=
/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugins-base bzip2 b=
luez4 bzip2 curl libxml2 virtual/egl virtual/libgles2 gnutls neon orc sbc l=
ibxml2 libsndfile1 libusb1 udev wayland,Plugins for the GStreamer multimedi=
a framework 1.x.,N/A,http://gstreamer.freedesktop.org/src/gst-plugins-bad/g=
st-plugins-bad-1.4.0.tar.xz,Cristian Iorga <cristian.iorga@intel.com>)
['sudo', '1.8.10p3', '1.8.10p3', 'ISC & BSD & Zlib', 'admin', 'http://www.s=
udo.ws', 'r0', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc    ', 'http://www.sudo.ws/bugs/', 'None', 'Sudo (su=
peruser do) allows a system administrator to give certain users (or groups =
of users) the ability to run some (or all) commands as root while logging a=
ll commands and arguments.', 'MATCH', 'N/A', 'http://ftp.sudo.ws/sudo/dist/=
sudo-1.8.10p3.tar.gz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (sudo,1.8.10p3,1.8.10p3,ISC & BSD & Zlib,admin,r0,None,http://www.=
sudo.ws,http://www.sudo.ws/bugs/,MATCH,autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc    ,Sudo (superuser do) allo=
ws a system administrator to give certain users (or groups of users) the ab=
ility to run some (or all) commands as root while logging all commands and =
arguments.,N/A,http://ftp.sudo.ws/sudo/dist/sudo-1.8.10p3.tar.gz,Chen Qi <Q=
i.Chen@windriver.com>)
['calibrateproto', '0.0+gitAUTOINC+1da6fd1e2c', '0.0+gitAUTOINC+1da6fd1', '=
MIT-style', 'x11/libs', 'http://www.x.org', 'r2', 'pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  util-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg'=
, 'None', 'This package provides the wire protocol for the Touchscreen cali=
bration extension.', 'MATCH', 'N/A', 'git://anongit.freedesktop.org/git/xor=
g/proto/calibrateproto', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (calibrateproto,0.0+gitAUTOINC+1da6fd1e2c,0.0+gitAUTOINC+1da6fd1,M=
IT-style,x11/libs,r2,None,http://www.x.org,https://bugs.freedesktop.org/ent=
er_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros,This =
package provides the wire protocol for the Touchscreen calibration extensio=
n.,N/A,git://anongit.freedesktop.org/git/xorg/proto/calibrateproto,Ross Bur=
ton <ross.burton@intel.com>)
['openssl', '1.0.1i', '1.0.1i', 'openssl', 'libs/network', 'http://www.open=
ssl.org/', 'r0', 'pkgconfig-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  perl-native-runtime cryptodev-linux=
', 'http://www.openssl.org/news/vulnerabilities.html', 'None', 'Secure Sock=
et Layer (SSL) binary and related cryptographic tools.', 'MATCH', 'N/A', 'h=
ttp://www.openssl.org/source/openssl-1.0.1i.tar.gz', 'Saul Wold <sgw@linux.=
intel.com>', '1.0.1 is beta 1.0.0c is latest']
inserted (openssl,1.0.1i,1.0.1i,openssl,libs/network,r0,None,http://www.ope=
nssl.org/,http://www.openssl.org/news/vulnerabilities.html,MATCH,pkgconfig-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  perl-native-runtime cryptodev-linux,Secure Socket Layer (SSL) b=
inary and related cryptographic tools.,N/A,http://www.openssl.org/source/op=
enssl-1.0.1i.tar.gz,Saul Wold <sgw@linux.intel.com>)
['logrotate', '3.8.7', '3.8.7', 'GPLv2', 'console/utils', 'https://fedoraho=
sted.org/logrotate/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  coreutils popt', 'None', 'None', 'Rotates=
, compresses, removes and mails system log files.', 'MATCH', 'N/A', 'https:=
//fedorahosted.org/releases/l/o/logrotate/logrotate-3.8.7.tar.gz', 'Robert =
Yang <liezhi.yang@windriver.com>', 'None']
inserted (logrotate,3.8.7,3.8.7,GPLv2,console/utils,r0,None,https://fedorah=
osted.org/logrotate/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  coreutils popt,Rotates, compresses, re=
moves and mails system log files.,N/A,https://fedorahosted.org/releases/l/o=
/logrotate/logrotate-3.8.7.tar.gz,Robert Yang <liezhi.yang@windriver.com>)
['gdb-cross-canadian-i586', '7.7.1', '7.8', 'GPLv2 & GPLv3 & LGPLv2 & LGPLv=
3', 'devel', 'http://www.gnu.org/software/gdb/', 'r0', 'autoconf-native aut=
omake-native libtool-native gnu-config-native  nativesdk-ncurses nativesdk-=
expat nativesdk-gettext nativesdk-readline nativesdk-python texinfo-native =
chrpath-replacement-native', 'None', 'None', 'GNU debugger (cross-canadian =
gdb for i586 target).', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/gdb/gdb-7.7=
=2E1.tar.gz', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (gdb-cross-canadian-i586,7.7.1,7.8,GPLv2 & GPLv3 & LGPLv2 & LGPLv3=
,devel,r0,None,http://www.gnu.org/software/gdb/,None,UPDATE,autoconf-native=
 automake-native libtool-native gnu-config-native  nativesdk-ncurses native=
sdk-expat nativesdk-gettext nativesdk-readline nativesdk-python texinfo-nat=
ive chrpath-replacement-native,GNU debugger (cross-canadian gdb for i586 ta=
rget).,N/A,ftp://ftp.gnu.org/gnu/gdb/gdb-7.7.1.tar.gz,Richard Purdie <richa=
rd.purdie@linuxfoundation.org>)
['base-files', '3.0.14', 'INVALID', 'GPLv2', 'base', '', 'r89', ' ', 'None'=
, 'None', 'The base-files package creates the basic system directory struct=
ure and provides a small set of key configuration files for the system.', '=
MATCH', 'N/A', 'file://rotation', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (base-files,3.0.14,INVALID,GPLv2,base,r89,None,,None,MATCH, ,The b=
ase-files package creates the basic system directory structure and provides=
 a small set of key configuration files for the system.,N/A,file://rotation=
,Saul Wold <sgw@linux.intel.com>)
['gsettings-desktop-schemas', '3.10.1', '3.13.2', 'LGPLv2.1', 'base', 'http=
://live.gnome.org/gsettings-desktop-schemas', 'r1', 'pkgconfig-native autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native v=
irtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  glib-2.0 intltool-native gobject-introsp=
ection-stub-native gnome-common-native glib-2.0-native', 'https://bugzilla.=
gnome.org/', 'None', 'GNOME desktop-wide GSettings schemas.', 'UPDATE', 'N/=
A', 'http://ftp.gnome.org/pub/GNOME/sources/gsettings-desktop-schemas/3.10/=
gsettings-desktop-schemas-3.10.1.tar.xz;name=3Darchive', 'Ross Burton <ross=
=2Eburton@intel.com>', 'None']
inserted (gsettings-desktop-schemas,3.10.1,3.13.2,LGPLv2.1,base,r1,None,htt=
p://live.gnome.org/gsettings-desktop-schemas,https://bugzilla.gnome.org/,UP=
DATE,pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 intl=
tool-native gobject-introspection-stub-native gnome-common-native glib-2.0-=
native,GNOME desktop-wide GSettings schemas.,N/A,http://ftp.gnome.org/pub/G=
NOME/sources/gsettings-desktop-schemas/3.10/gsettings-desktop-schemas-3.10.=
1.tar.xz;name=3Darchive,Ross Burton <ross.burton@intel.com>)
['videoproto', '2.3.2', '2.3.2', 'MIT & MIT-style', 'x11/libs', 'http://www=
=2Ex.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.fre=
edesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the=
 wire protocol for the X Video extension.  This extension alows for accerla=
ted drawing of videos.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/relea=
ses/individual/proto/videoproto-2.3.2.tar.bz2', 'Ross Burton <ross.burton@i=
ntel.com>', 'None']
inserted (videoproto,2.3.2,2.3.2,MIT & MIT-style,x11/libs,r0,1,http://www.x=
=2Eorg,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  util-macros,This package provides the wire protocol f=
or the X Video extension.  This extension alows for accerlated drawing of v=
ideos.,N/A,http://xorg.freedesktop.org/releases/individual/proto/videoproto=
-2.3.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['gcc', '4.9.1', '4.9.1', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel', 'h=
ttp://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  mpfr gmp libmpc zlib  texinfo-native', 'None', 'None', 'GNU cc and gc=
c C compilers.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4=
=2E9.1.tar.bz2', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'No=
ne']
inserted (gcc,4.9.1,4.9.1,GPL-3.0-with-GCC-exception & GPLv3,devel,r0,None,=
http://www.gnu.org/software/gcc/,None,MATCH,autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  mpfr gmp libmpc zlib  texinfo-native,GNU cc and gcc C compilers.,N=
/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2,Richard Purdie <ri=
chard.purdie@linuxfoundation.org>)
['lame', '3.99.5', '3.99.5', 'LGPLv2+', 'console/utils', 'http://lame.sourc=
eforge.net/', 'r1', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  ncurses gettext-native', 'ht=
tp://sourceforge.net/tracker/?group_id=3D290&atid=3D100290', 'None', 'High =
quality MP3 audio encoder.', 'MATCH', 'N/A', 'http://downloads.sourceforge.=
net/lame/lame-3.99.5.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (lame,3.99.5,3.99.5,LGPLv2+,console/utils,r1,None,http://lame.sour=
ceforge.net/,http://sourceforge.net/tracker/?group_id=3D290&atid=3D100290,M=
ATCH,pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ncurses gettext-native,High quality MP3 audi=
o encoder.,N/A,http://downloads.sourceforge.net/lame/lame-3.99.5.tar.gz,Sau=
l Wold <sgw@linux.intel.com>)
['systemd-systemctl-native', '1.0', 'INVALID', 'MIT', 'base', '', 'r6', ' '=
, 'None', 'None', 'Wrapper for enabling systemd services.', 'MATCH', 'N/A',=
 'file://systemctl', 'None', 'None']
inserted (systemd-systemctl-native,1.0,INVALID,MIT,base,r6,None,,None,MATCH=
, ,Wrapper for enabling systemd services.,N/A,file://systemctl,None)
['alsa-lib', '1.0.27.2', '1.0.28', 'LGPLv2.1 & GPLv2+', 'libs/multimedia', =
'http://www.alsa-project.org', 'r0', 'pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'https:/=
/bugtrack.alsa-project.org/alsa-bug/login_page.php', 'None', 'ALSA sound li=
brary.', 'UPDATE', 'N/A', 'ftp://ftp.alsa-project.org/pub/lib/alsa-lib-1.0.=
27.2.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (alsa-lib,1.0.27.2,1.0.28,LGPLv2.1 & GPLv2+,libs/multimedia,r0,Non=
e,http://www.alsa-project.org,https://bugtrack.alsa-project.org/alsa-bug/lo=
gin_page.php,UPDATE,pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  ,ALSA sound library.,N/A,ftp:=
//ftp.alsa-project.org/pub/lib/alsa-lib-1.0.27.2.tar.bz2,Cristian Iorga <cr=
istian.iorga@intel.com>)
['libtool-cross', '2.4.2', '2.4.2', 'GPLv2 & LGPLv2.1', 'devel', 'http://ww=
w.gnu.org/software/libtool/libtool.html', 'r6.1', 'autoconf-native automake=
-native gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  libtool-native texinfo-native', 'None', 'Non=
e', 'This is GNU libtool, a generic library support script. Libtool hides t=
he complexity of generating special library types (such as shared libraries=
) behind a consistent interface.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/l=
ibtool/libtool-2.4.2.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'N=
one']
inserted (libtool-cross,2.4.2,2.4.2,GPLv2 & LGPLv2.1,devel,r6.1,None,http:/=
/www.gnu.org/software/libtool/libtool.html,None,MATCH,autoconf-native autom=
ake-native gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  libtool-native texinfo-native,This is GNU=
 libtool, a generic library support script. Libtool hides the complexity of=
 generating special library types (such as shared libraries) behind a consi=
stent interface.,N/A,ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz,Rob=
ert Yang <liezhi.yang@windriver.com>)
['librsvg', '2.40.2', '2.40.2', 'LGPLv2+', 'x11/utils', 'http://ftp.gnome.o=
rg/pub/GNOME/sources/librsvg/', 'r0', 'pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  cairo gdk-=
pixbuf glib-2.0 libcroco libxml2 pango gnome-common-native qemu-native gtk-=
doc-stub-native gdk-pixbuf-native', 'https://bugzilla.gnome.org/', 'None', =
'Library for rendering SVG files.', 'MATCH', 'N/A', 'http://ftp.gnome.org/p=
ub/GNOME/sources/librsvg/2.40/librsvg-2.40.2.tar.xz;name=3Darchive', 'Ross =
Burton <ross.burton@intel.com>', 'None']
inserted (librsvg,2.40.2,2.40.2,LGPLv2+,x11/utils,r0,None,http://ftp.gnome.=
org/pub/GNOME/sources/librsvg/,https://bugzilla.gnome.org/,MATCH,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  cairo gdk-pixbuf glib-2.0 libcroco libxml2 pango gnome-comm=
on-native qemu-native gtk-doc-stub-native gdk-pixbuf-native,Library for ren=
dering SVG files.,N/A,http://ftp.gnome.org/pub/GNOME/sources/librsvg/2.40/l=
ibrsvg-2.40.2.tar.xz;name=3Darchive,Ross Burton <ross.burton@intel.com>)
['fstests', '0.1+gitAUTOINC+e5939ff608', '0.1+gitAUTOINC+e5939ff', 'Zlib', =
'devel', 'http://www.o-hand.com', 'r0', 'pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  pango li=
bxext libxft virtual/libx11 gtk+', 'None', 'None', 'Various benchmarning te=
sts for X.', 'MATCH', '0.0+svnr426', 'git://git.yoctoproject.org/fstests', =
'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (fstests,0.1+gitAUTOINC+e5939ff608,0.1+gitAUTOINC+e5939ff,Zlib,dev=
el,r0,None,http://www.o-hand.com,None,MATCH,pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  pango=
 libxext libxft virtual/libx11 gtk+,Various benchmarning tests for X.,0.0+s=
vnr426,git://git.yoctoproject.org/fstests,Richard Purdie <richard.purdie@li=
nuxfoundation.org>)
['mkelfimage', '4.0+gitAUTOINC+686a48a339', '4.0+gitAUTOINC+fb2a9a9', 'GPLv=
2', 'devel', 'http://www.coreboot.org/Mkelfimage', 'r0', 'autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   zlib', =
'None', 'None', 'Utility for creating ELF boot images for ELF-based Linux k=
ernel images.', 'UPDATE', 'N/A', 'git://review.coreboot.org/p/coreboot;prot=
ocol=3Dhttp', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (mkelfimage,4.0+gitAUTOINC+686a48a339,4.0+gitAUTOINC+fb2a9a9,GPLv2=
,devel,r0,None,http://www.coreboot.org/Mkelfimage,None,UPDATE,autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   zli=
b,Utility for creating ELF boot images for ELF-based Linux kernel images.,N=
/A,git://review.coreboot.org/p/coreboot;protocol=3Dhttp,Saul Wold <sgw@linu=
x.intel.com>)
['gtk-engines', '2.20.2', '2.91.1', 'LGPLv2.1', 'x11/base', 'http://www.gno=
me.org/', 'r3', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  intltool-native gtk+ gnome-commo=
n-native', 'https://bugzilla.gnome.org/', 'None', 'GTK+ theme engines.', 'U=
PDATE', '2.91.1', 'http://ftp.gnome.org/pub/GNOME/sources/gtk-engines/2.20/=
gtk-engines-2.20.2.tar.bz2;name=3Darchive', 'Ross Burton <ross.burton@intel=
=2Ecom>', '2.91.1 is a 3.0 beta release']
inserted (gtk-engines,2.20.2,2.91.1,LGPLv2.1,x11/base,r3,None,http://www.gn=
ome.org/,https://bugzilla.gnome.org/,UPDATE,pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  intlt=
ool-native gtk+ gnome-common-native,GTK+ theme engines.,2.91.1,http://ftp.g=
nome.org/pub/GNOME/sources/gtk-engines/2.20/gtk-engines-2.20.2.tar.bz2;name=
=3Darchive,Ross Burton <ross.burton@intel.com>)
['docbook-xml-dtd4', '4.5', '4.5', 'OASIS', 'base', 'http://www.docbook.org=
/xml/', 'r0', ' ', 'None', 'None', 'Document type definitions for verificat=
ion of XML data files against the DocBook rule set, it ships with the lates=
t DocBook 4.5 XML DTD, as well as a selected set of legacy DTDs for use wit=
h older documents, including 4.0, 4.1.2, 4.2, 4.3 and 4.4', 'MATCH', 'N/A',=
 'ftp://ftp.debian.org/debian/pool/main/d/docbook-xml/docbook-xml_4.5.orig.=
tar.gz', 'None', 'None']
inserted (docbook-xml-dtd4,4.5,4.5,OASIS,base,r0,None,http://www.docbook.or=
g/xml/,None,MATCH, ,Document type definitions for verification of XML data =
files against the DocBook rule set, it ships with the latest DocBook 4.5 XM=
L DTD, as well as a selected set of legacy DTDs for use with older document=
s, including 4.0, 4.1.2, 4.2, 4.3 and 4.4,N/A,ftp://ftp.debian.org/debian/p=
ool/main/d/docbook-xml/docbook-xml_4.5.orig.tar.gz,None)
['liburi-perl', '1.60', '1.60', 'Artistic-1.0 | GPL-1.0+', 'libs', '', 'r0'=
, ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc   perl perl perl-native', 'None', 'None', 'This package contains the=
 URI.pm module with friends. The module implements the URI class. URI objec=
ts can be used to access and manipulate the various components that make up=
 these strings.', 'MATCH', 'N/A', 'http://www.cpan.org/authors/id/G/GA/GAAS=
/URI-1.60.tar.gz', 'Kai Kang <kai.kang@windriver.com>', 'None']
inserted (liburi-perl,1.60,1.60,Artistic-1.0 | GPL-1.0+,libs,r0,None,,None,=
MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc   perl perl perl-native,This package contains the URI.pm module w=
ith friends. The module implements the URI class. URI objects can be used t=
o access and manipulate the various components that make up these strings.,=
N/A,http://www.cpan.org/authors/id/G/GA/GAAS/URI-1.60.tar.gz,Kai Kang <kai.=
kang@windriver.com>)
['libcheck', '0.9.14', '0.9.14', 'LGPLv2.1+', 'devel', 'http://check.source=
forge.net/', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc   texinfo-native', 'None', 'No=
ne', 'Check - unit testing framework for C code.', 'MATCH', 'N/A', 'http://=
downloads.sourceforge.net/check/check-0.9.14.tar.gz', 'Saul Wold <sgw@linux=
=2Eintel.com>', 'None']
inserted (libcheck,0.9.14,0.9.14,LGPLv2.1+,devel,r0,None,http://check.sourc=
eforge.net/,None,MATCH,pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native,Check - un=
it testing framework for C code.,N/A,http://downloads.sourceforge.net/check=
/check-0.9.14.tar.gz,Saul Wold <sgw@linux.intel.com>)
['eee-acpi-scripts', '1.1.12+gitAUTOINC+9d4cdedca2', '1.1.12+gitAUTOINC+9d4=
cded', 'GPLv2', 'base', 'http://alioth.debian.org/projects/debian-eeepc/', =
'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  ', 'None', 'None', 'eeePC specific ACPI scripts.', 'MATCH', '1.=
1.12+9d4cdedca25b396405f8587f9c4fbf8229e041c2', 'git://git.debian.org/git/d=
ebian-eeepc/eeepc-acpi-scripts.git', 'Saul Wold <sgw@linux.intel.com>', 'No=
ne']
inserted (eee-acpi-scripts,1.1.12+gitAUTOINC+9d4cdedca2,1.1.12+gitAUTOINC+9=
d4cded,GPLv2,base,r0,None,http://alioth.debian.org/projects/debian-eeepc/,N=
one,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  ,eeePC specific ACPI scripts.,1.1.12+9d4cdedca25b396405f8587=
f9c4fbf8229e041c2,git://git.debian.org/git/debian-eeepc/eeepc-acpi-scripts.=
git,Saul Wold <sgw@linux.intel.com>)
['gperf', '3.0.4', '3.0.4', 'GPLv3+', 'base', 'http://www.gnu.org/software/=
gperf', 'r0', 'autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ', 'None', 'None', 'GNU gperf is a perfect hash fun=
ction generator', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gperf/gperf-3.0.4.=
tar.gz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (gperf,3.0.4,3.0.4,GPLv3+,base,r0,None,http://www.gnu.org/software=
/gperf,None,MATCH,autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ,GNU gperf is a perfect hash function generator,=
N/A,ftp://ftp.gnu.org/gnu/gperf/gperf-3.0.4.tar.gz,Ross Burton <ross.burton=
@intel.com>)
['mpeg2dec', '0.4.1', '0.4.1', 'GPLv2+', 'libs', 'http://libmpeg2.sourcefor=
ge.net/', 'r2', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc   virtual/libx11 libxext libxv', =
'None', 'None', 'Library and test program for decoding MPEG-2 and MPEG-1 vi=
deo streams.', 'MATCH', 'N/A', 'http://libmpeg2.sourceforge.net/files/mpeg2=
dec-0.4.1.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'Why are we currently=
 at 0.4.1?']
inserted (mpeg2dec,0.4.1,0.4.1,GPLv2+,libs,r2,None,http://libmpeg2.sourcefo=
rge.net/,None,MATCH,pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc   virtual/libx11 libxext libxv=
,Library and test program for decoding MPEG-2 and MPEG-1 video streams.,N/A=
,http://libmpeg2.sourceforge.net/files/mpeg2dec-0.4.1.tar.gz,Saul Wold <sgw=
@linux.intel.com>)
['clutter-gtk-1.0', '1.4.4', '1.5.2', 'LGPLv2+', 'base', 'http://www.clutte=
r-project.org/', 'r0', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  clutter-1.0 gtk+3 gtk-doc-stub-native', 'None', 'None', 'Library for =
embedding a Clutter canvas in a GTK+ application.', 'UPDATE', 'N/A', 'http:=
//ftp.gnome.org/pub/GNOME/sources/clutter-gtk/1.4/clutter-gtk-1.4.4.tar.xz;=
name=3Darchive', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (clutter-gtk-1.0,1.4.4,1.5.2,LGPLv2+,base,r0,None,http://www.clutt=
er-project.org/,None,UPDATE,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native virtual/gettext gettext-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  clutter-1.0 gtk+3 gtk-doc-stub-native,Library for embedding a Clu=
tter canvas in a GTK+ application.,N/A,http://ftp.gnome.org/pub/GNOME/sourc=
es/clutter-gtk/1.4/clutter-gtk-1.4.4.tar.xz;name=3Darchive,Ross Burton <ros=
s.burton@intel.com>)
['perl', '5.20.0', '5.21.2', 'Artistic-1.0 | GPL-1.0', 'devel', 'http://www=
=2Eperl.org/', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  virtual/db grep-native gdbm zlib perl-native', '=
None', 'None', 'Perl scripting language.', 'UPDATE', 'N/A', 'http://www.cpa=
n.org/src/5.0/perl-5.20.0.tar.gz', 'Hongxu Jia <hongxu.jia@windriver.com>',=
 'None']
inserted (perl,5.20.0,5.21.2,Artistic-1.0 | GPL-1.0,devel,r1,None,http://ww=
w.perl.org/,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  virtual/db grep-native gdbm zlib perl-native,P=
erl scripting language.,N/A,http://www.cpan.org/src/5.0/perl-5.20.0.tar.gz,=
Hongxu Jia <hongxu.jia@windriver.com>)
['linux-yocto-tiny', '3.14.5+gitAUTOINC+b2af4e3528_5724bf17ac', '3.14.13+gi=
tAUTOINC+fcf0e4d', 'GPLv2', 'kernel', '', 'r0', '  xz-native bc-native virt=
ual/i586-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native depmod=
wrapper-cross', 'None', 'None', 'Yocto Kernel', 'UPDATE', 'N/A', 'git://git=
=2Eyoctoproject.org/linux-yocto-3.14.git;bareclone=3D1;branch=3Dstandard/ti=
ny/base,meta;name=3Dmachine,meta', 'Saul Wold <sgw@linux.intel.com>', 'None=
']
inserted (linux-yocto-tiny,3.14.5+gitAUTOINC+b2af4e3528_5724bf17ac,3.14.13+=
gitAUTOINC+fcf0e4d,GPLv2,kernel,r0,None,,None,UPDATE,  xz-native bc-native =
virtual/i586-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native de=
pmodwrapper-cross,Yocto Kernel,N/A,git://git.yoctoproject.org/linux-yocto-3=
=2E14.git;bareclone=3D1;branch=3Dstandard/tiny/base,meta;name=3Dmachine,met=
a,Saul Wold <sgw@linux.intel.com>)
['pigz', '2.3.1', '2.3.1', 'Zlib', 'console/utils', 'http://zlib.net/pigz/'=
, 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  zlib', 'None', 'None', 'pigz, which stands for parallel imple=
mentation of gzip, is a fully functional replacement for gzip that exploits=
 multiple processors and multiple cores to the hilt when compressing data. =
pigz was written by Mark Adler, and uses the zlib and pthread libraries.', =
'MATCH', 'N/A', 'http://zlib.net/pigz/pigz-2.3.1.tar.gz', 'Saul Wold <sgw@l=
inux.intel.com>', 'None']
inserted (pigz,2.3.1,2.3.1,Zlib,console/utils,r0,None,http://zlib.net/pigz/=
,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  zlib,pigz, which stands for parallel implementation of gzi=
p, is a fully functional replacement for gzip that exploits multiple proces=
sors and multiple cores to the hilt when compressing data. pigz was written=
 by Mark Adler, and uses the zlib and pthread libraries.,N/A,http://zlib.ne=
t/pigz/pigz-2.3.1.tar.gz,Saul Wold <sgw@linux.intel.com>)
['compositeproto', '0.4.2', '0.4.2', 'MIT & MIT-style', 'x11/libs', 'http:/=
/www.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.f=
reedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides t=
he wire protocol for the X composite extension.  The X composite extension =
provides three related mechanisms for compositing and off-screen storage.',=
 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/com=
positeproto-0.4.2.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (compositeproto,0.4.2,0.4.2,MIT & MIT-style,x11/libs,r1,1,http://w=
ww.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  util-macros,This package provides the wire protocol=
 for the X composite extension.  The X composite extension provides three r=
elated mechanisms for compositing and off-screen storage.,N/A,http://xorg.f=
reedesktop.org/releases/individual/proto/compositeproto-0.4.2.tar.bz2,Ross =
Burton <ross.burton@intel.com>)
['xf86vidmodeproto', '2.3.1', '2.3.1', 'MIT', 'x11/libs', 'http://www.x.org=
', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the XFree86 video mode extension.  This extension allows clien=
t applications to get and set video mode timings.', 'MATCH', 'N/A', 'http:/=
/xorg.freedesktop.org/releases/individual/proto/xf86vidmodeproto-2.3.1.tar.=
bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86vidmodeproto,2.3.1,2.3.1,MIT,x11/libs,r1,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  util-macros,This package provides the wire protocol for the X=
Free86 video mode extension.  This extension allows client applications to =
get and set video mode timings.,N/A,http://xorg.freedesktop.org/releases/in=
dividual/proto/xf86vidmodeproto-2.3.1.tar.bz2,Ross Burton <ross.burton@inte=
l.com>)
['man', '1.6g', 'N/A', 'GPLv2', 'console/utils', 'http://primates.ximian.co=
m/~flucifredi/man', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  groff less', 'None', 'None', 'A set of docu=
mentation tools: man, apropos and whatis', 'ErrHostNoDir:/~flucifredi/man/:=
-:man-1.6g.tar.gz:primates.ximian.com/~flucifredi/man/man-1.6g.tar.gz', 'N/=
A', 'http://primates.ximian.com/~flucifredi/man/man-1.6g.tar.gz', 'Saul Wol=
d <sgw@linux.intel.com>', 'None']
inserted (man,1.6g,N/A,GPLv2,console/utils,r1,None,http://primates.ximian.c=
om/~flucifredi/man,None,ErrHostNoDir:/~flucifredi/man/:-:man-1.6g.tar.gz:pr=
imates.ximian.com/~flucifredi/man/man-1.6g.tar.gz, virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  groff less,A set of =
documentation tools: man, apropos and whatis,N/A,http://primates.ximian.com=
/~flucifredi/man/man-1.6g.tar.gz,Saul Wold <sgw@linux.intel.com>)
['bind', '9.9.5', 'N/A', 'ISC & BSD', 'console/network', 'http://www.isc.or=
g/sw/bind/', 'r0', 'autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  openssl libcap update-rc.d-native initscripts'=
, 'None', 'None', 'ISC Internet Domain Name Server.', 'ErrParseDir:/isc/bin=
d9/9.9.5/:9.9.5:bind-9.9.5.tar.gz:ftp.isc.org/isc/bind9/9.9.5/bind-9.9.5.ta=
r.gz', 'N/A', 'ftp://ftp.isc.org/isc/bind9/9.9.5/bind-9.9.5.tar.gz', 'Kai K=
ang <kai.kang@windriver.com>', 'None']
inserted (bind,9.9.5,N/A,ISC & BSD,console/network,r0,None,http://www.isc.o=
rg/sw/bind/,None,ErrParseDir:/isc/bind9/9.9.5/:9.9.5:bind-9.9.5.tar.gz:ftp.=
isc.org/isc/bind9/9.9.5/bind-9.9.5.tar.gz,autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  openssl libcap update-rc=
=2Ed-native initscripts,ISC Internet Domain Name Server.,N/A,ftp://ftp.isc.=
org/isc/bind9/9.9.5/bind-9.9.5.tar.gz,Kai Kang <kai.kang@windriver.com>)
['libx11', '1.6.2', '1.6.2', 'MIT & MIT-style & BSD', 'x11/libs', 'http://w=
ww.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native virtual/gettext gettext-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
util-macros xproto xextproto xtrans libxcb kbproto inputproto xproto-native=
', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', "This =
package provides a client interface to the X Window System, otherwise known=
 as 'Xlib'.  It provides a complete API for the basic functions of the wind=
ow system.", 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individu=
al/lib/libX11-1.6.2.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libx11,1.6.2,1.6.2,MIT & MIT-style & BSD,x11/libs,r0,1,http://www=
=2Ex.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros xproto x=
extproto xtrans libxcb kbproto inputproto xproto-native,This package provid=
es a client interface to the X Window System, otherwise known as 'Xlib'.  I=
t provides a complete API for the basic functions of the window system.,N/A=
,http://xorg.freedesktop.org/releases/individual/lib/libX11-1.6.2.tar.bz2,R=
oss Burton <ross.burton@intel.com>)
['mesa-gl', '10.1.3', '10.1.3', 'MIT', 'x11', 'http://mesa3d.org', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  expat makedepend-na=
tive flex-native bison-native libxml2-native udev  python-native   dri2prot=
o libdrm xf86driproto glproto virtual/libx11 libxext libxxf86vm libxdamage =
libxfixes', 'https://bugs.freedesktop.org', '2', 'Mesa is an open-source im=
plementation of the OpenGL specification - a system for rendering interacti=
ve 3D graphics.  A variety of device drivers allows Mesa to be used in many=
 different environments ranging from software emulation to complete hardwar=
e acceleration for modern GPUs. Mesa is used as part of the overall Direct =
Rendering Infrastructure and X.org environment.', 'MATCH', 'N/A', 'ftp://ft=
p.freedesktop.org/pub/mesa/10.1.3/MesaLib-10.1.3.tar.bz2', 'None', 'None']
inserted (mesa-gl,10.1.3,10.1.3,MIT,x11,r0,2,http://mesa3d.org,https://bugs=
=2Efreedesktop.org,MATCH,pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native virtual/gettext gettext-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  expat makedepend-native flex-native bison-native libxml2-native udev=
  python-native   dri2proto libdrm xf86driproto glproto virtual/libx11 libx=
ext libxxf86vm libxdamage libxfixes,Mesa is an open-source implementation o=
f the OpenGL specification - a system for rendering interactive 3D graphics=
=2E  A variety of device drivers allows Mesa to be used in many different e=
nvironments ranging from software emulation to complete hardware accelerati=
on for modern GPUs. Mesa is used as part of the overall Direct Rendering In=
frastructure and X.org environment.,N/A,ftp://ftp.freedesktop.org/pub/mesa/=
10.1.3/MesaLib-10.1.3.tar.bz2,None)
['python-smmap', '0.8.2', '0.8.2', 'BSD', 'devel/python', 'http://github.co=
m/gitpython-developers/GitPython', 'r0', ' virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc   python-native python  pytho=
n-native  python-distribute-native', 'None', 'None', 'A pure Python impleme=
ntation of a sliding memory map to help unifying memory mapped access on 32=
 and 64 bit systems and to help managing resources more efficiently.', 'MAT=
CH', 'N/A', 'http://pypi.python.org/packages/source/s/smmap/smmap-0.8.2.tar=
=2Egz', 'None', 'None']
inserted (python-smmap,0.8.2,0.8.2,BSD,devel/python,r0,None,http://github.c=
om/gitpython-developers/GitPython,None,MATCH, virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc   python-native python  py=
thon-native  python-distribute-native,A pure Python implementation of a sli=
ding memory map to help unifying memory mapped access on 32 and 64 bit syst=
ems and to help managing resources more efficiently.,N/A,http://pypi.python=
=2Eorg/packages/source/s/smmap/smmap-0.8.2.tar.gz,None)
['powertop', '2.6.1', '2.6.1', 'GPLv2', 'base', 'http://01.org/powertop/', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ncurses lib=
nl pciutils virtual/update-alternatives', 'http://bugzilla.lesswatts.org/',=
 'None', 'Linux tool to diagnose issues with power consumption and power ma=
nagement.', 'MATCH', 'N/A', 'http://01.org/powertop/sites/default/files/dow=
nloads/powertop-2.6.1.tar.gz', 'Richard Purdie <richard.purdie@linuxfoundat=
ion.org>', "Do not upgrade to version 1.97 since it's a beta release of the=
 comming PowerTOP 2.0"]
inserted (powertop,2.6.1,2.6.1,GPLv2,base,r0,None,http://01.org/powertop/,h=
ttp://bugzilla.lesswatts.org/,MATCH,pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native virtual/gettext ge=
ttext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  ncurses libnl pciutils virtual/update-alternatives,Linux =
tool to diagnose issues with power consumption and power management.,N/A,ht=
tp://01.org/powertop/sites/default/files/downloads/powertop-2.6.1.tar.gz,Ri=
chard Purdie <richard.purdie@linuxfoundation.org>)
['fotowall', '0.9', '0.9', 'GPLv2+', 'x11/apps', 'http://www.enricoros.com/=
opensource/fotowall', 'r4', 'qt4-tools-native qt4-x11  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None=
', 'Fotowall is a creative tool that allows you to layout your photos or pi=
ctures in a personal way. You can add pictures, then resize, move, change c=
olors, text, shadows, etc..', 'MATCH', 'N/A', 'http://qt-apps.org/CONTENT/c=
ontent-files/71316-Fotowall-0.9.tar.bz2', 'Paul Eggleton <paul.eggleton@lin=
ux.intel.com>', 'None']
inserted (fotowall,0.9,0.9,GPLv2+,x11/apps,r4,None,http://www.enricoros.com=
/opensource/fotowall,None,MATCH,qt4-tools-native qt4-x11  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Fotowall is =
a creative tool that allows you to layout your photos or pictures in a pers=
onal way. You can add pictures, then resize, move, change colors, text, sha=
dows, etc..,N/A,http://qt-apps.org/CONTENT/content-files/71316-Fotowall-0.9=
=2Etar.bz2,Paul Eggleton <paul.eggleton@linux.intel.com>)
['pciutils', '3.2.1', '3.2.1', 'GPLv2+', 'console/utils', 'http://atrey.kar=
lin.mff.cuni.cz/~mj/pciutils.shtml', 'r0', ' virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  zlib kmod', 'None', 'None'=
, 'The PCI Utilities package contains a library for portable access to PCI =
bus configuration space and several utilities based on this library.', 'MAT=
CH', 'N/A', 'http://kernel.org/pub/software/utils/pciutils/pciutils-3.2.1.t=
ar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (pciutils,3.2.1,3.2.1,GPLv2+,console/utils,r0,None,http://atrey.ka=
rlin.mff.cuni.cz/~mj/pciutils.shtml,None,MATCH, virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  zlib kmod,The PCI Utili=
ties package contains a library for portable access to PCI bus configuratio=
n space and several utilities based on this library.,N/A,http://kernel.org/=
pub/software/utils/pciutils/pciutils-3.2.1.tar.bz2,Ross Burton <ross.burton=
@intel.com>)
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
['binutils', '2.24', '2.24', 'GPLv3', 'devel', 'http://www.gnu.org/software=
/binutils/', 'r0', 'autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native bis=
on-native zlib-native gnu-config-native autoconf-native flex bison zlib tex=
info-native virtual/update-alternatives', 'http://sourceware.org/bugzilla/'=
, 'None', 'The GNU Binutils are a collection of binary tools. The main ones=
 are ld (GNU Linker), and as (GNU Assembler). This package also includes ad=
dition tools such as addr2line (Converts addresses into filenames and line =
numbers), ar (utility for creating, modifying and extracting archives), nm =
(list symbols in object files), objcopy (copy and translate object files), =
objdump (Display object information), and other tools and related libraries=
=2E', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2=
', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (binutils,2.24,2.24,GPLv3,devel,r0,None,http://www.gnu.org/softwar=
e/binutils/,http://sourceware.org/bugzilla/,MATCH,autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native virtual/gettext gette=
xt-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  flex-native bison-native zlib-native gnu-config-native autoc=
onf-native flex bison zlib texinfo-native virtual/update-alternatives,The G=
NU Binutils are a collection of binary tools. The main ones are ld (GNU Lin=
ker), and as (GNU Assembler). This package also includes addition tools suc=
h as addr2line (Converts addresses into filenames and line numbers), ar (ut=
ility for creating, modifying and extracting archives), nm (list symbols in=
 object files), objcopy (copy and translate object files), objdump (Display=
 object information), and other tools and related libraries.,N/A,ftp://ftp.=
gnu.org/gnu/binutils/binutils-2.24.tar.bz2,Robert Yang <liezhi.yang@windriv=
er.com>)
['qt-mobility-embedded', '1.2.0', 'N/A', 'LGPLv2.1', 'libs', 'http://qt-pro=
ject.org/', 'r8', 'qt4-tools-native qt4-embedded  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  gstreamer util-linux =
bluez4 pulseaudio', 'None', 'None', 'Mobile device API extensions for Qt/Em=
bedded 4.x.', 'ErrHostNoDir:/qt/add-ons/:-:qt-mobility-opensource-src-1.2.0=
=2Etar.gz:get.qt.nokia.com/qt/add-ons/qt-mobility-opensource-src-1.2.0.tar.=
gz', 'N/A', 'http://get.qt.nokia.com/qt/add-ons/qt-mobility-opensource-src-=
1.2.0.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (qt-mobility-embedded,1.2.0,N/A,LGPLv2.1,libs,r8,None,http://qt-pr=
oject.org/,None,ErrHostNoDir:/qt/add-ons/:-:qt-mobility-opensource-src-1.2.=
0.tar.gz:get.qt.nokia.com/qt/add-ons/qt-mobility-opensource-src-1.2.0.tar.g=
z,qt4-tools-native qt4-embedded  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  gstreamer util-linux bluez4 pulseaudio=
,Mobile device API extensions for Qt/Embedded 4.x.,N/A,http://get.qt.nokia.=
com/qt/add-ons/qt-mobility-opensource-src-1.2.0.tar.gz,Paul Eggleton <paul.=
eggleton@linux.intel.com>)
['libuser', '0.60', '0.60', 'LGPLv2', 'base', 'https://fedorahosted.org/lib=
user/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  pop=
t libpam glib-2.0 xz-native docbook-utils-native linuxdoc-tools-native pyth=
on  python-native ', 'https://fedorahosted.org/libuser/newticket', 'None', =
'The libuser library implements a standardized interface for manipulating a=
nd administering user and group accounts', 'MATCH', 'N/A', 'https://fedorah=
osted.org/releases/l/i/libuser/libuser-0.60.tar.xz', 'Chong Lu <Chong.Lu@wi=
ndriver.com>', 'None']
inserted (libuser,0.60,0.60,LGPLv2,base,r0,None,https://fedorahosted.org/li=
buser/,https://fedorahosted.org/libuser/newticket,MATCH,pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  popt libpam glib-2.0 xz-native docboo=
k-utils-native linuxdoc-tools-native python  python-native ,The libuser lib=
rary implements a standardized interface for manipulating and administering=
 user and group accounts,N/A,https://fedorahosted.org/releases/l/i/libuser/=
libuser-0.60.tar.xz,Chong Lu <Chong.Lu@windriver.com>)
['lsb', '4.1', '1.4', 'GPLv2+', 'console/utils', 'http://prdownloads.source=
forge.net/lsb', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'None', 'None', 'LSB support for OpenEmbedde=
d.', 'UPDATE', 'N/A', 'http://downloads.sourceforge.net/project/lsb/lsb_rel=
ease/1.4/lsb-release-1.4.tar.gz', 'Hongxu Jia <hongxu.jia@windriver.com>', =
'None']
inserted (lsb,4.1,1.4,GPLv2+,console/utils,r2,None,http://prdownloads.sourc=
eforge.net/lsb,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ,LSB support for OpenEmbedded.,N/A,http://d=
ownloads.sourceforge.net/project/lsb/lsb_release/1.4/lsb-release-1.4.tar.gz=
,Hongxu Jia <hongxu.jia@windriver.com>)
['libconvert-asn1-perl', '0.27', '0.27', 'Artistic-1.0 | GPL-1.0+', 'libs',=
 '', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc   perl perl-native', 'None', 'None', 'Convert::ASN1 - Perl =
ASN.1 Encode/Decode library.', 'MATCH', 'N/A', 'http://search.cpan.org/CPAN=
/authors/id/G/GB/GBARR/Convert-ASN1-0.27.tar.gz', 'Richard Purdie <richard.=
purdie@linuxfoundation.org>', 'None']
inserted (libconvert-asn1-perl,0.27,0.27,Artistic-1.0 | GPL-1.0+,libs,r0,No=
ne,,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc   perl perl-native,Convert::ASN1 - Perl ASN.1 Encode/Dec=
ode library.,N/A,http://search.cpan.org/CPAN/authors/id/G/GB/GBARR/Convert-=
ASN1-0.27.tar.gz,Richard Purdie <richard.purdie@linuxfoundation.org>)
['opensp', '1.5.2', '1.5.2', 'BSD', 'libs', 'http://openjade.sourceforge.ne=
t', 'r1', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'An S=
GML parser used by the OpenJade suite of utilities.', 'MATCH', 'N/A', 'http=
://downloads.sourceforge.net/openjade/OpenSP-1.5.2.tar.gz', 'Paul Eggleton =
<paul.eggleton@linux.intel.com>', 'None']
inserted (opensp,1.5.2,1.5.2,BSD,libs,r1,None,http://openjade.sourceforge.n=
et,None,MATCH,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  ,An SGML parser used =
by the OpenJade suite of utilities.,N/A,http://downloads.sourceforge.net/op=
enjade/OpenSP-1.5.2.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['acpid', '1.0.10', '1.0.10', 'GPLv2+', 'base', 'http://sourceforge.net/pro=
jects/acpid/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc   update-rc.d-native initscripts', 'http://source=
forge.net/tracker/?group_id=3D33140&atid=3D407341', 'None', 'A daemon for d=
elivering ACPI events.', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/=
acpid/acpid-1.0.10.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (acpid,1.0.10,1.0.10,GPLv2+,base,r0,None,http://sourceforge.net/pr=
ojects/acpid/,http://sourceforge.net/tracker/?group_id=3D33140&atid=3D40734=
1,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc   update-rc.d-native initscripts,A daemon for delivering ACPI e=
vents.,N/A,http://downloads.sourceforge.net/acpid/acpid-1.0.10.tar.gz,Saul =
Wold <sgw@linux.intel.com>)
['lz4', 'r120', 'N/A', 'BSD', 'base', '', 'r0', ' virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'L=
Z4 is a very fast lossless compression algorithm, providing compression spe=
ed at 400 MB/s per core, scalable with multi-cores CPU. It also features an=
 extremely fast decoder, with speed in multiple GB/s per core, typically re=
aching RAM speed limits on multi-core systems.', 'UPDATE', 'N/A', 'svn://lz=
4.googlecode.com/svn/;module=3Dtrunk;protocol=3Dhttp', 'Armin Kuster <akust=
er@mvista.com>', 'None']
inserted (lz4,r120,N/A,BSD,base,r0,None,,None,UPDATE, virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,LZ4 is a very fa=
st lossless compression algorithm, providing compression speed at 400 MB/s =
per core, scalable with multi-cores CPU. It also features an extremely fast=
 decoder, with speed in multiple GB/s per core, typically reaching RAM spee=
d limits on multi-core systems.,N/A,svn://lz4.googlecode.com/svn/;module=3D=
trunk;protocol=3Dhttp,Armin Kuster <akuster@mvista.com>)
['jpeg', '8d', '9a', 'BSD-3-Clause', 'libs', 'http://www.ijg.org/', 'r1', '=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  libtool-cross', 'None', 'None', 'libjpeg contains a library for ha=
ndling the JPEG (JFIF) image format, as well as related programs for access=
ing the libjpeg functions.', 'UPDATE', '9', 'http://www.ijg.org/files/jpegs=
rc.v8d.tar.gz', 'Ross Burton <ross.burton@intel.com>', "webkit-gtk 1.8.3 do=
esn't work with jpeg 9"]
inserted (jpeg,8d,9a,BSD-3-Clause,libs,r1,None,http://www.ijg.org/,None,UPD=
ATE,autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  libtool-cross,libjpeg contains a library for handling the JPEG=
 (JFIF) image format, as well as related programs for accessing the libjpeg=
 functions.,9,http://www.ijg.org/files/jpegsrc.v8d.tar.gz,Ross Burton <ross=
=2Eburton@intel.com>)
['kexec-tools', '2.0.7', '2.0.7', 'GPLv2', 'kernel/userland', 'http://kerne=
l.org/pub/linux/utils/kernel/kexec/', 'r0', 'autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib xz', 'None', 'No=
ne', 'Kexec is a fast reboot feature that lets you reboot to a new Linux ke=
rnel', 'MATCH', 'N/A', 'http://kernel.org/pub/linux/utils/kernel/kexec/kexe=
c-tools-2.0.7.tar.gz', 'Richard Purdie <richard.purdie@linuxfoundation.org>=
', 'None']
inserted (kexec-tools,2.0.7,2.0.7,GPLv2,kernel/userland,r0,None,http://kern=
el.org/pub/linux/utils/kernel/kexec/,None,MATCH,autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib xz,Kexec is a=
 fast reboot feature that lets you reboot to a new Linux kernel,N/A,http://=
kernel.org/pub/linux/utils/kernel/kexec/kexec-tools-2.0.7.tar.gz,Richard Pu=
rdie <richard.purdie@linuxfoundation.org>)
['tcl', '8.6.1', '8.6.1', 'tcl & BSD-3-Clause', 'devel/tcltk', 'http://tcl.=
sourceforge.net', 'r0', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  tcl-native zlib', 'None', 'None', 'Tool C=
ommand Language.', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/tcl/tc=
l8.6.1-src.tar.gz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (tcl,8.6.1,8.6.1,tcl & BSD-3-Clause,devel/tcltk,r0,None,http://tcl=
=2Esourceforge.net,None,MATCH,autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  tcl-native zlib,Tool Command Languag=
e.,N/A,http://downloads.sourceforge.net/tcl/tcl8.6.1-src.tar.gz,Chong Lu <C=
hong.Lu@windriver.com>)
['opkg-utils', '0.1.8+gitAUTOINC+eae0d8fa44', '0.1.8+gitAUTOINC+eae0d8f', '=
GPLv2+', 'base', 'http://code.google.com/p/opkg/', 'r0', ' virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', '=
None', 'Additional utilities for the opkg package manager.', 'MATCH', 'N/A'=
, 'git://git.yoctoproject.org/opkg-utils', 'Saul Wold <sgw@linux.intel.com>=
', 'None']
inserted (opkg-utils,0.1.8+gitAUTOINC+eae0d8fa44,0.1.8+gitAUTOINC+eae0d8f,G=
PLv2+,base,r0,None,http://code.google.com/p/opkg/,None,MATCH, virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Addition=
al utilities for the opkg package manager.,N/A,git://git.yoctoproject.org/o=
pkg-utils,Saul Wold <sgw@linux.intel.com>)
['libav', '0.8.15', '10.3', 'GPLv2+', 'libs', 'http://libav.org/', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  zlib libogg yasm-native bzip2 libtheora virtual/li=
bx11 libxfixes libxext xproto virtual/libsdl x264', 'None', 'None', 'Libav =
is a friendly and community-driven effort to provide its users             =
   with a set of portable, functional and high-performance libraries for   =
             dealing with multimedia formats of all sorts. It originates fr=
om the                FFmpeg codebase, but goes its own way these days, pro=
viding its users                with reliable releases and a clear vision h=
ow to go forward.', 'UPDATE', 'N/A', 'http://libav.org/releases/libav-0.8.1=
5.tar.xz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (libav,0.8.15,10.3,GPLv2+,libs,r0,None,http://libav.org/,None,UPDA=
TE,pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  zlib libogg yasm-native bzip2 libtheora virtua=
l/libx11 libxfixes libxext xproto virtual/libsdl x264,Libav is a friendly a=
nd community-driven effort to provide its users                with a set o=
f portable, functional and high-performance libraries for                de=
aling with multimedia formats of all sorts. It originates from the         =
       FFmpeg codebase, but goes its own way these days, providing its user=
s                with reliable releases and a clear vision how to go forwar=
d.,N/A,http://libav.org/releases/libav-0.8.15.tar.xz,Paul Eggleton <paul.eg=
gleton@linux.intel.com>)
['gummiboot', '43+gitAUTOINC+4062c51075', '45+gitAUTOINC+eb3daf2', 'LGPLv2.=
1', 'base', 'http://freedesktop.org/wiki/Software/gummiboot', 'r0', 'pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  gnu-efi util-linux', 'None', 'None', 'Gummiboot is a si=
mple UEFI boot manager which executes configured EFI images..', 'UPDATE', '=
N/A', 'git://anongit.freedesktop.org/gummiboot', 'Darren Hart <dvhart@linux=
=2Eintel.com>', 'None']
inserted (gummiboot,43+gitAUTOINC+4062c51075,45+gitAUTOINC+eb3daf2,LGPLv2.1=
,base,r0,None,http://freedesktop.org/wiki/Software/gummiboot,None,UPDATE,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  gnu-efi util-linux,Gummiboot is a simple UEFI boot =
manager which executes configured EFI images..,N/A,git://anongit.freedeskto=
p.org/gummiboot,Darren Hart <dvhart@linux.intel.com>)
['util-linux', '2.24.2', '2.24.2', 'GPLv2+ & LGPLv2.1+ & BSD', 'base', '', =
'r1', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib ncurse=
s virtual/update-alternatives', 'None', 'None', 'Util-linux includes a suit=
e of basic system administration utilities commonly found on most Linux sys=
tems.  Some of the more important utilities include disk partitioning, kern=
el message management, filesystem creation, and system login.', 'MATCH', 'N=
/A', 'http://kernel.org/pub/linux/utils/util-linux/v2.24/util-linux-2.24.2.=
tar.xz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (util-linux,2.24.2,2.24.2,GPLv2+ & LGPLv2.1+ & BSD,base,r1,None,,N=
one,MATCH,pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib ncu=
rses virtual/update-alternatives,Util-linux includes a suite of basic syste=
m administration utilities commonly found on most Linux systems.  Some of t=
he more important utilities include disk partitioning, kernel message manag=
ement, filesystem creation, and system login.,N/A,http://kernel.org/pub/lin=
ux/utils/util-linux/v2.24/util-linux-2.24.2.tar.xz,Saul Wold <sgw@linux.int=
el.com>)
['tiny-init', '1.0', 'INVALID', 'MIT', 'base', '', 'r2', ' virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', '=
None', 'Basic init system for poky-tiny', 'MATCH', 'N/A', 'file://init', 'S=
aul Wold <sgw@linux.intel.com>', 'None']
inserted (tiny-init,1.0,INVALID,MIT,base,r2,None,,None,MATCH, virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Basic in=
it system for poky-tiny,N/A,file://init,Saul Wold <sgw@linux.intel.com>)
['matchbox-session-sato', '0.1', 'INVALID', 'GPLv2.0+', 'x11', 'http://www.=
matchbox-project.org/', 'r30', ' virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  gconf-native', 'http://bugzilla.yoctop=
roject.org/', 'None', 'Custom Matchbox session files for the Sato environme=
nt.', 'MATCH', 'N/A', 'file://session', 'Ross Burton <ross.burton@intel.com=
>', 'None']
inserted (matchbox-session-sato,0.1,INVALID,GPLv2.0+,x11,r30,None,http://ww=
w.matchbox-project.org/,http://bugzilla.yoctoproject.org/,MATCH, virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gconf-=
native,Custom Matchbox session files for the Sato environment.,N/A,file://s=
ession,Ross Burton <ross.burton@intel.com>)
['mesa-demos', '8.2.0', '8.2.0', 'MIT & PD', 'x11', 'http://mesa3d.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc   libdrm virtual/egl freetype virtual/libgl v=
irtual/libgles1 virtual/libgles2 glew virtual/libgl virtual/libx11', 'https=
://bugs.freedesktop.org', 'None', 'This package includes the demonstration =
application, such as glxgears. These applications can be used for Mesa vali=
dation and benchmarking.', 'MATCH', 'N/A', 'ftp://ftp.freedesktop.org/pub/m=
esa/demos/8.2.0/mesa-demos-8.2.0.tar.bz2', 'Saul Wold <sgw@linux.intel.com>=
', 'None']
inserted (mesa-demos,8.2.0,8.2.0,MIT & PD,x11,r0,None,http://mesa3d.org,htt=
ps://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   libdrm virtual/e=
gl freetype virtual/libgl virtual/libgles1 virtual/libgles2 glew virtual/li=
bgl virtual/libx11,This package includes the demonstration application, suc=
h as glxgears. These applications can be used for Mesa validation and bench=
marking.,N/A,ftp://ftp.freedesktop.org/pub/mesa/demos/8.2.0/mesa-demos-8.2.=
0.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['libsoup-2.4', '2.46.0', '2.47.4', 'LGPLv2', 'x11/gnome/libs', 'http://www=
=2Egnome.org/', 'r0', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native virtual/gettext gettext-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  glib-2.0 gnutls libxml2 sqlite3 intltool-native', 'https://bugzilla.gn=
ome.org/', 'None', 'An HTTP library implementation in C.', 'UPDATE', 'N/A',=
 'http://ftp.gnome.org/pub/GNOME/sources/libsoup/2.46/libsoup-2.46.0.tar.xz=
', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libsoup-2.4,2.46.0,2.47.4,LGPLv2,x11/gnome/libs,r0,None,http://ww=
w.gnome.org/,https://bugzilla.gnome.org/,UPDATE,pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native virtua=
l/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  glib-2.0 gnutls libxml2 sqlite3 intltool-nati=
ve,An HTTP library implementation in C.,N/A,http://ftp.gnome.org/pub/GNOME/=
sources/libsoup/2.46/libsoup-2.46.0.tar.xz,Ross Burton <ross.burton@intel.c=
om>)
['gdk-pixbuf', '2.30.8', '2.31.0', 'LGPLv2', 'libs', 'http://www.gtk.org/',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 q=
emu-native jpeg libpng', 'https://bugzilla.gnome.org/', 'None', 'Image load=
ing library for GTK+.', 'UPDATE', '2.27.2', 'http://ftp.gnome.org/pub/GNOME=
/sources/gdk-pixbuf/2.30/gdk-pixbuf-2.30.8.tar.xz', 'Ross Burton <ross.burt=
on@intel.com>', '2.27.2 is unstable']
inserted (gdk-pixbuf,2.30.8,2.31.0,LGPLv2,libs,r0,None,http://www.gtk.org/,=
https://bugzilla.gnome.org/,UPDATE,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native virtual/gettext get=
text-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  glib-2.0 qemu-native jpeg libpng,Image loading library for=
 GTK+.,2.27.2,http://ftp.gnome.org/pub/GNOME/sources/gdk-pixbuf/2.30/gdk-pi=
xbuf-2.30.8.tar.xz,Ross Burton <ross.burton@intel.com>)
['consolekit', '0.4.6', '0.4.6', 'GPLv2+', 'base', 'http://www.freedesktop.=
org/wiki/Software/ConsoleKit', 'r0', 'pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 gl=
ib-2.0-native dbus dbus-glib virtual/libx11', 'https://bugs.freedesktop.org=
/buglist.cgi?query_format=3Dspecific&product=3DConsoleKit', 'None', 'Framew=
ork for defining and tracking users, login sessions, and seats.', 'MATCH', =
'N/A', 'http://www.freedesktop.org/software/ConsoleKit/dist/ConsoleKit-0.4.=
6.tar.xz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (consolekit,0.4.6,0.4.6,GPLv2+,base,r0,None,http://www.freedesktop=
=2Eorg/wiki/Software/ConsoleKit,https://bugs.freedesktop.org/buglist.cgi?qu=
ery_format=3Dspecific&product=3DConsoleKit,MATCH,pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
glib-2.0 glib-2.0-native dbus dbus-glib virtual/libx11,Framework for defini=
ng and tracking users, login sessions, and seats.,N/A,http://www.freedeskto=
p.org/software/ConsoleKit/dist/ConsoleKit-0.4.6.tar.xz,Saul Wold <sgw@linux=
=2Eintel.com>)
['xprop', '1.2.2', '1.2.2', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros-native virtual/libx11  libxmu virtu=
al/libx11', 'https://bugs.freedesktop.org', '1', 'The xprop utility is for =
displaying window and font properties in an X server. One window or font is=
 selected using the command line arguments or possibly in the case of a win=
dow, by clicking on the desired window. A list of properties is then given,=
 possibly with formatting information.', 'MATCH', 'N/A', 'http://xorg.freed=
esktop.org/releases/individual/app/xprop-1.2.2.tar.bz2', 'Ross Burton <ross=
=2Eburton@intel.com>', 'None']
inserted (xprop,1.2.2,1.2.2,MIT-X,x11/apps,r0,1,http://www.x.org/,https://b=
ugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native virt=
ual/libx11  libxmu virtual/libx11,The xprop utility is for displaying windo=
w and font properties in an X server. One window or font is selected using =
the command line arguments or possibly in the case of a window, by clicking=
 on the desired window. A list of properties is then given, possibly with f=
ormatting information.,N/A,http://xorg.freedesktop.org/releases/individual/=
app/xprop-1.2.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['tiff', '4.0.3', '4.0.3', 'BSD-2-Clause', 'base', 'http://www.remotesensin=
g.org/libtiff/', 'r0', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc   jpeg xz zlib', 'None', 'None', 'Provides =
support for the Tag Image File Format (TIFF).', 'MATCH', 'N/A', 'ftp://ftp.=
remotesensing.org/pub/libtiff/tiff-4.0.3.tar.gz', 'Saul Wold <sgw@linux.int=
el.com>', 'None']
inserted (tiff,4.0.3,4.0.3,BSD-2-Clause,base,r0,None,http://www.remotesensi=
ng.org/libtiff/,None,MATCH,autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc   jpeg xz zlib,Provides support for the =
Tag Image File Format (TIFF).,N/A,ftp://ftp.remotesensing.org/pub/libtiff/t=
iff-4.0.3.tar.gz,Saul Wold <sgw@linux.intel.com>)
['glew', '1.10.0', '1.11.0', 'MIT', 'x11', 'http://glew.sourceforge.net/', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  virtual/libx11 virtual/libgl libglu libxex=
t libxi libxmu', 'http://sourceforge.net/tracker/?group_id=3D67586', 'None'=
, 'The OpenGL Extension Wrangler Library (GLEW) is a cross-platform open-so=
urce C/C++ extension loading library.', 'UPDATE', 'N/A', 'http://downloads.=
sourceforge.net/project/glew/glew/1.10.0/glew-1.10.0.tgz', 'Saul Wold <sgw@=
linux.intel.com>', 'None']
inserted (glew,1.10.0,1.11.0,MIT,x11,r0,None,http://glew.sourceforge.net/,h=
ttp://sourceforge.net/tracker/?group_id=3D67586,UPDATE,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  virtual/libx11 virtual/libgl libglu libxext libxi libxmu,The OpenGL E=
xtension Wrangler Library (GLEW) is a cross-platform open-source C/C++ exte=
nsion loading library.,N/A,http://downloads.sourceforge.net/project/glew/gl=
ew/1.10.0/glew-1.10.0.tgz,Saul Wold <sgw@linux.intel.com>)
['pixman', '0.32.4', '0.32.6', 'MIT & MIT-style & PD', 'x11/libs', 'http://=
www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  util-macros zlib libpng', 'htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Pixman provi=
des a library for manipulating pixel regions -- a set of Y-X banded rectang=
les, image compositing using the Porter/Duff model and implicit mask genera=
tion for geometric primitives including trapezoids, triangles, and rectangl=
es.', 'UPDATE', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib=
/pixman-0.32.4.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (pixman,0.32.4,0.32.6,MIT & MIT-style & PD,x11/libs,r0,1,http://ww=
w.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,UPDATE,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  util-macros zlib libpng,Pixman provides a library f=
or manipulating pixel regions -- a set of Y-X banded rectangles, image comp=
ositing using the Porter/Duff model and implicit mask generation for geomet=
ric primitives including trapezoids, triangles, and rectangles.,N/A,http://=
xorg.freedesktop.org/releases/individual/lib/pixman-0.32.4.tar.bz2,Ross Bur=
ton <ross.burton@intel.com>)
['flex', '2.5.39', '2.5.39', 'BSD', 'devel', 'http://sourceforge.net/projec=
ts/flex/', 'r0', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native',=
 'None', 'None', 'Flex is a fast lexical analyser generator.  Flex is a too=
l for generating programs that recognize lexical patterns in text.', 'MATCH=
', 'N/A', 'http://downloads.sourceforge.net/flex/flex-2.5.39.tar.bz2', 'Cho=
ng Lu <Chong.Lu@windriver.com>', 'None']
inserted (flex,2.5.39,2.5.39,BSD,devel,r0,None,http://sourceforge.net/proje=
cts/flex/,None,MATCH,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-nativ=
e,Flex is a fast lexical analyser generator.  Flex is a tool for generating=
 programs that recognize lexical patterns in text.,N/A,http://downloads.sou=
rceforge.net/flex/flex-2.5.39.tar.bz2,Chong Lu <Chong.Lu@windriver.com>)
['libsndfile1', '1.0.25', '1.0.25', 'LGPLv2.1', 'libs/multimedia', 'http://=
www.mega-nerd.com/libsndfile', 'r2', 'pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  sqlite3 als=
a-lib', 'None', 'None', 'Audio format Conversion library.', 'MATCH', 'N/A',=
 'http://www.mega-nerd.com/libsndfile/files/libsndfile-1.0.25.tar.gz', 'Cri=
stian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libsndfile1,1.0.25,1.0.25,LGPLv2.1,libs/multimedia,r2,None,http:/=
/www.mega-nerd.com/libsndfile,None,MATCH,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  sqlite3 =
alsa-lib,Audio format Conversion library.,N/A,http://www.mega-nerd.com/libs=
ndfile/files/libsndfile-1.0.25.tar.gz,Cristian Iorga <cristian.iorga@intel.=
com>)
['xf86-input-keyboard', '1.8.0', '1.8.0', 'MIT-X', 'x11/drivers', 'http://w=
ww.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randrpro=
to util-macros inputproto kbproto ', 'https://bugs.freedesktop.org', '2', "=
keyboard is an Xorg input driver for keyboards. The driver supports the sta=
ndard OS-provided keyboard interface.  The driver functions as a keyboard i=
nput device, and may be used as the X server's core keyboard.", 'MATCH', 'N=
/A', 'http://xorg.freedesktop.org/releases/individual/driver/xf86-input-key=
board-1.8.0.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86-input-keyboard,1.8.0,1.8.0,MIT-X,x11/drivers,r0,2,http://www=
=2Ex.org,https://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtu=
al/xserver xproto randrproto util-macros inputproto kbproto ,keyboard is an=
 Xorg input driver for keyboards. The driver supports the standard OS-provi=
ded keyboard interface.  The driver functions as a keyboard input device, a=
nd may be used as the X server's core keyboard.,N/A,http://xorg.freedesktop=
=2Eorg/releases/individual/driver/xf86-input-keyboard-1.8.0.tar.bz2,Ross Bu=
rton <ross.burton@intel.com>)
['python', '2.7.3', '3.4.1rc1', 'PSFv2', 'devel/python', 'http://www.python=
=2Eorg', 'r0.3', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  python-native bzip2 db gdbm openssl readline sql=
ite3 zlib  python-native ', 'None', 'None', 'The Python Programming Languag=
e.', 'UPDATE', 'N/A', 'http://www.python.org/ftp/python/2.7.3/Python-2.7.3.=
tar.bz2', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (python,2.7.3,3.4.1rc1,PSFv2,devel/python,r0.3,None,http://www.pyt=
hon.org,None,UPDATE,autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  python-native bzip2 db gdbm openssl readline s=
qlite3 zlib  python-native ,The Python Programming Language.,N/A,http://www=
=2Epython.org/ftp/python/2.7.3/Python-2.7.3.tar.bz2,Richard Purdie <richard=
=2Epurdie@linuxfoundation.org>)
['libidn', '1.28', '1.29', '(LGPLv2.1+ | LGPLv3) & GPLv3+', 'libs', 'http:/=
/www.gnu.org/software/libidn/', 'r0', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native pkgconfig-native virtual/gettext=
 gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc   texinfo-native', 'None', 'None', 'Implementation of t=
he Stringprep, Punycode and IDNA specifications defined by the IETF Interna=
tionalized Domain Names (IDN) working group.', 'UPDATE', 'N/A', 'ftp://ftp.=
gnu.org/gnu/libidn/libidn-1.28.tar.gz', 'Saul Wold <sgw@linux.intel.com>', =
'None']
inserted (libidn,1.28,1.29,(LGPLv2.1+ | LGPLv3) & GPLv3+,libs,r0,None,http:=
//www.gnu.org/software/libidn/,None,UPDATE,autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native pkgconfig-native virtual/get=
text gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc   texinfo-native,Implementation of the Stringprep, =
Punycode and IDNA specifications defined by the IETF Internationalized Doma=
in Names (IDN) working group.,N/A,ftp://ftp.gnu.org/gnu/libidn/libidn-1.28.=
tar.gz,Saul Wold <sgw@linux.intel.com>)
['blktrace', '1.0.5+gitAUTOINC+d6918c8832', '1.0.5+gitAUTOINC+ce9ded7', 'GP=
Lv2', 'base', '', 'r6', ' virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  libaio', 'None', 'None', 'Generates traces of=
 I/O traffic on block devices.', 'UPDATE', 'N/A', 'git://git.kernel.dk/blkt=
race.git', 'Tom Zanussi <tom.zanussi@intel.com>', 'None']
inserted (blktrace,1.0.5+gitAUTOINC+d6918c8832,1.0.5+gitAUTOINC+ce9ded7,GPL=
v2,base,r6,None,,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  libaio,Generates traces of I/O traffic on=
 block devices.,N/A,git://git.kernel.dk/blktrace.git,Tom Zanussi <tom.zanus=
si@intel.com>)
['damageproto', '1.2.1', '1.2.1', 'MIT-style', 'x11/libs', 'http://www.x.or=
g', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedeskto=
p.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire p=
rotocol for the DAMAGE extension.  The DAMAGE extension allows applications=
 to receive information about changes made to pixel contents of windows and=
 pixmaps.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individua=
l/proto/damageproto-1.2.1.tar.bz2', 'Ross Burton <ross.burton@intel.com>', =
'None']
inserted (damageproto,1.2.1,1.2.1,MIT-style,x11/libs,r1,1,http://www.x.org,=
https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  util-macros,This package provides the wire protocol for the =
DAMAGE extension.  The DAMAGE extension allows applications to receive info=
rmation about changes made to pixel contents of windows and pixmaps.,N/A,ht=
tp://xorg.freedesktop.org/releases/individual/proto/damageproto-1.2.1.tar.b=
z2,Ross Burton <ross.burton@intel.com>)
['gnome-mime-data', '2.18.0', '2.18.0', 'GPLv2 & GPLv2+', 'base', 'http://w=
ww.gnome.org/', 'r4', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc   gnome-common-native share=
d-mime-info-native shared-mime-info shared-mime-info intltool-native', 'htt=
ps://bugzilla.gnome.org/', 'None', 'Base MIME and Application database for =
GNOME.', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/gnome-mime=
-data/2.18/gnome-mime-data-2.18.0.tar.bz2;name=3Darchive', 'Ross Burton <ro=
ss.burton@intel.com>', 'None']
inserted (gnome-mime-data,2.18.0,2.18.0,GPLv2 & GPLv2+,base,r4,None,http://=
www.gnome.org/,https://bugzilla.gnome.org/,MATCH,pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
 gnome-common-native shared-mime-info-native shared-mime-info shared-mime-i=
nfo intltool-native,Base MIME and Application database for GNOME.,N/A,http:=
//ftp.gnome.org/pub/GNOME/sources/gnome-mime-data/2.18/gnome-mime-data-2.18=
=2E0.tar.bz2;name=3Darchive,Ross Burton <ross.burton@intel.com>)
['lzo', '2.08', '2.08', 'GPLv2+', 'libs', 'http://www.oberhumer.com/opensou=
rce/lzo/', 'r0', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ', 'None', 'None', 'Lossless data compression li=
brary.', 'MATCH', 'N/A', 'http://www.oberhumer.com/opensource/lzo/download/=
lzo-2.08.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (lzo,2.08,2.08,GPLv2+,libs,r0,None,http://www.oberhumer.com/openso=
urce/lzo/,None,MATCH,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  ,Lossless data compression library.,N/A,http:=
//www.oberhumer.com/opensource/lzo/download/lzo-2.08.tar.gz,Saul Wold <sgw@=
linux.intel.com>)
['ppp-dialin', '0.1', 'INVALID', 'MIT', 'console/network', '', 'r8', ' ppp =
base-files base-passwd shadow-native shadow-sysroot shadow', 'None', 'None'=
, 'Enables PPP dial-in through a serial connection.', 'MATCH', 'check', 'fi=
le://host-peer', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (ppp-dialin,0.1,INVALID,MIT,console/network,r8,None,,None,MATCH, p=
pp base-files base-passwd shadow-native shadow-sysroot shadow,Enables PPP d=
ial-in through a serial connection.,check,file://host-peer,Hongxu Jia <hong=
xu.jia@windriver.com>)
['pango', '1.36.5', '1.36.6', 'LGPLv2.0+', 'libs', 'http://www.pango.org/',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  glib-2.0 fontconfig freetype zlib virtual=
/libiconv cairo harfbuzz qemu-native gnome-common-native gtk-doc-stub-nativ=
e glib-2.0-native virtual/libx11 libxft', 'http://bugzilla.gnome.org', 'Non=
e', 'Pango is a library for laying out and rendering of text, with an empha=
sis on internationalization. Pango can be used anywhere that text layout is=
 needed, though most of the work on Pango so far has been done in the conte=
xt of the GTK+ widget toolkit. Pango forms the core of text and font handli=
ng for GTK+-2.x.', 'UPDATE', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources=
/pango/1.36/pango-1.36.5.tar.xz;name=3Darchive', 'Ross Burton <ross.burton@=
intel.com>', 'None']
inserted (pango,1.36.5,1.36.6,LGPLv2.0+,libs,r0,None,http://www.pango.org/,=
http://bugzilla.gnome.org,UPDATE,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 fontcon=
fig freetype zlib virtual/libiconv cairo harfbuzz qemu-native gnome-common-=
native gtk-doc-stub-native glib-2.0-native virtual/libx11 libxft,Pango is a=
 library for laying out and rendering of text, with an emphasis on internat=
ionalization. Pango can be used anywhere that text layout is needed, though=
 most of the work on Pango so far has been done in the context of the GTK+ =
widget toolkit. Pango forms the core of text and font handling for GTK+-2.x=
=2E,N/A,http://ftp.gnome.org/pub/GNOME/sources/pango/1.36/pango-1.36.5.tar.=
xz;name=3Darchive,Ross Burton <ross.burton@intel.com>)
['qt4-x11-free', '4.8.6', 'N/A', 'LGPLv2.1 | GPLv3', 'x11/libs', 'http://qt=
-project.org/', 'r0', 'qt4-tools-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc   qt4-tools-native freetype jpe=
g libpng zlib dbus openssl glib-2.0 gstreamer gst-plugins-base sqlite3 tiff=
 icu pulseaudio virtual/libgl virtual/libx11 fontconfig libxft libxext libx=
render libxrandr libxcursor', 'None', 'None', 'Qt is a versatile cross-plat=
form application framework -- this is the X11 version.', 'ErrHostNoDir:/off=
icial_releases/qt/5.3/4.8.6/:4.8:qt-everywhere-opensource-src-4.8.6.tar.gz:=
download.qt-project.org/official_releases/qt/4.8/4.8.6/qt-everywhere-openso=
urce-src-4.8.6.tar.gz', 'N/A', 'http://download.qt-project.org/official_rel=
eases/qt/4.8/4.8.6/qt-everywhere-opensource-src-4.8.6.tar.gz', 'Paul Egglet=
on <paul.eggleton@linux.intel.com>', 'None']
inserted (qt4-x11-free,4.8.6,N/A,LGPLv2.1 | GPLv3,x11/libs,r0,None,http://q=
t-project.org/,None,ErrHostNoDir:/official_releases/qt/5.3/4.8.6/:4.8:qt-ev=
erywhere-opensource-src-4.8.6.tar.gz:download.qt-project.org/official_relea=
ses/qt/4.8/4.8.6/qt-everywhere-opensource-src-4.8.6.tar.gz,qt4-tools-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc   qt4-tools-native freetype jpeg libpng zlib dbus openssl glib-2.0 gst=
reamer gst-plugins-base sqlite3 tiff icu pulseaudio virtual/libgl virtual/l=
ibx11 fontconfig libxft libxext libxrender libxrandr libxcursor,Qt is a ver=
satile cross-platform application framework -- this is the X11 version.,N/A=
,http://download.qt-project.org/official_releases/qt/4.8/4.8.6/qt-everywher=
e-opensource-src-4.8.6.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['aspell', '0.60.6.1', '0.60.6.1', 'LGPLv2 | LGPLv2.1', 'console/utils', ''=
, 'r1', 'autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native', 'None', =
'None', 'GNU Aspell spell-checker.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu=
/aspell/aspell-0.60.6.1.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (aspell,0.60.6.1,0.60.6.1,LGPLv2 | LGPLv2.1,console/utils,r1,None,=
,None,MATCH,autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native,GNU Asp=
ell spell-checker.,N/A,ftp://ftp.gnu.org/gnu/aspell/aspell-0.60.6.1.tar.gz,=
Saul Wold <sgw@linux.intel.com>)
['nfs-export-root', '1.0', 'INVALID', 'MIT', 'base', '', 'r1', ' virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'No=
ne', 'None', 'Enables NFS access from any host to the entire filesystem (fo=
r development purposes).', 'MATCH', 'N/A', 'file://exports', 'Saul Wold <sg=
w@linux.intel.com>', 'None']
inserted (nfs-export-root,1.0,INVALID,MIT,base,r1,None,,None,MATCH, virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,En=
ables NFS access from any host to the entire filesystem (for development pu=
rposes).,N/A,file://exports,Saul Wold <sgw@linux.intel.com>)
['nspr', '4.10.3', '4.10.3', 'GPL-2.0 | MPL-2.0 | LGPL-2.1', 'libs/network'=
, 'http://www.mozilla.org/projects/nspr/', 'r0', 'autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None=
', 'Netscape Portable Runtime Library.', 'MATCH', 'N/A', 'ftp://ftp.mozilla=
=2Eorg/pub/mozilla.org/nspr/releases/v4.10.3/src/nspr-4.10.3.tar.gz', 'Saul=
 Wold <sgw@linux.intel.com>', 'None']
inserted (nspr,4.10.3,4.10.3,GPL-2.0 | MPL-2.0 | LGPL-2.1,libs/network,r0,N=
one,http://www.mozilla.org/projects/nspr/,None,MATCH,autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Netscape Por=
table Runtime Library.,N/A,ftp://ftp.mozilla.org/pub/mozilla.org/nspr/relea=
ses/v4.10.3/src/nspr-4.10.3.tar.gz,Saul Wold <sgw@linux.intel.com>)
['dbus', '1.8.2', '1.8.6', 'AFL-2 | GPLv2+', 'base', 'http://dbus.freedeskt=
op.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ex=
pat virtual/libintl base-files base-passwd shadow-native shadow-sysroot sha=
dow update-rc.d-native initscripts  virtual/libx11 libsm', 'None', 'None', =
'D-Bus is a message bus system, a simple way for applications to talk to on=
e another. In addition to interprocess communication, D-Bus helps coordinat=
e process lifecycle; it makes it simple and reliable to code a \\"single in=
stance\\" application or daemon, and to launch applications and daemons on =
demand when their services are needed.', 'UPDATE', 'N/A', 'http://dbus.free=
desktop.org/releases/dbus/dbus-1.8.2.tar.gz', 'Chong Lu <Chong.Lu@windriver=
=2Ecom>', 'D-BUS 1.7.x is the development version, not stable.']
inserted (dbus,1.8.2,1.8.6,AFL-2 | GPLv2+,base,r0,None,http://dbus.freedesk=
top.org,None,UPDATE,pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native virtual/gettext gettext-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  expat virtual/libintl base-files base-passwd shadow-native shadow-sysroot=
 shadow update-rc.d-native initscripts  virtual/libx11 libsm,D-Bus is a mes=
sage bus system, a simple way for applications to talk to one another. In a=
ddition to interprocess communication, D-Bus helps coordinate process lifec=
ycle; it makes it simple and reliable to code a \"single instance\" applica=
tion or daemon, and to launch applications and daemons on demand when their=
 services are needed.,N/A,http://dbus.freedesktop.org/releases/dbus/dbus-1.=
8.2.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['pointercal-xinput', '0.0', 'INVALID', 'MIT', 'base', '', 'r7', ' virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', '=
None', 'None', 'Touchscreen calibration data from xinput-calibrator.', 'MAT=
CH', 'N/A', 'file://pointercal.xinput', 'None', 'None']
inserted (pointercal-xinput,0.0,INVALID,MIT,base,r7,None,,None,MATCH, virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,=
Touchscreen calibration data from xinput-calibrator.,N/A,file://pointercal.=
xinput,None)
['docbook-utils-native', '0.6.14', '0.6.14', 'GPLv2', 'console/utils', 'htt=
p://sources.redhat.com/docbook-tools/', 'r3', 'autoconf-native automake-nat=
ive libtool-native gnu-config-native  openjade-native sgmlspl-native docboo=
k-dsssl-stylesheets-native docbook-sgml-dtd-3.1-native', 'None', 'None', 'A=
 collection of all the free software tools you need to work on and format D=
ocBook documents.', 'MATCH', 'N/A', 'ftp://sources.redhat.com/pub/docbook-t=
ools/new-trials/SOURCES/docbook-utils-0.6.14.tar.gz', 'Paul Eggleton <paul.=
eggleton@linux.intel.com>', 'None']
inserted (docbook-utils-native,0.6.14,0.6.14,GPLv2,console/utils,r3,None,ht=
tp://sources.redhat.com/docbook-tools/,None,MATCH,autoconf-native automake-=
native libtool-native gnu-config-native  openjade-native sgmlspl-native doc=
book-dsssl-stylesheets-native docbook-sgml-dtd-3.1-native,A collection of a=
ll the free software tools you need to work on and format DocBook documents=
=2E,N/A,ftp://sources.redhat.com/pub/docbook-tools/new-trials/SOURCES/docbo=
ok-utils-0.6.14.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['psmisc', '22.21', '22.21', 'GPLv2', 'base', '', 'r0', 'autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native virtual/gettex=
t gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ncurses virtual/libintl virtual/update-alternatives',=
 'None', 'None', 'The psmisc package contains utilities for managing proces=
ses on your system: pstree, killall and fuser.  The pstree command displays=
 a tree structure of all of the running processes on your system.  The kill=
all command sends a specified signal (SIGTERM if nothing is specified) to p=
rocesses identified by name.  The fuser command identifies the PIDs of proc=
esses that are using specified files or filesystems.', 'MATCH', 'N/A', 'htt=
p://downloads.sourceforge.net/psmisc/psmisc-22.21.tar.gz', 'Saul Wold <sgw@=
linux.intel.com>', 'None']
inserted (psmisc,22.21,22.21,GPLv2,base,r0,None,,None,MATCH,autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native virtual/get=
text gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  ncurses virtual/libintl virtual/update-alternative=
s,The psmisc package contains utilities for managing processes on your syst=
em: pstree, killall and fuser.  The pstree command displays a tree structur=
e of all of the running processes on your system.  The killall command send=
s a specified signal (SIGTERM if nothing is specified) to processes identif=
ied by name.  The fuser command identifies the PIDs of processes that are u=
sing specified files or filesystems.,N/A,http://downloads.sourceforge.net/p=
smisc/psmisc-22.21.tar.gz,Saul Wold <sgw@linux.intel.com>)
['python-gitdb', '0.5.4', '0.5.4', 'BSD-3-Clause', 'devel/python', 'http://=
github.com/gitpython-developers/gitdb', 'r0', ' virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  python-async python-smm=
ap python-native python  python-native ', 'None', 'None', 'A pure-Python gi=
t object database.', 'MATCH', 'N/A', 'https://pypi.python.org/packages/sour=
ce/g/gitdb/gitdb-0.5.4.tar.gz', 'None', 'None']
inserted (python-gitdb,0.5.4,0.5.4,BSD-3-Clause,devel/python,r0,None,http:/=
/github.com/gitpython-developers/gitdb,None,MATCH, virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  python-async python-=
smmap python-native python  python-native ,A pure-Python git object databas=
e.,N/A,https://pypi.python.org/packages/source/g/gitdb/gitdb-0.5.4.tar.gz,N=
one)
['alsa-utils-alsaconf', '1.0.27.2', '1.0.28', 'GPLv2+', 'console/utils', 'h=
ttp://www.alsa-project.org', 'r0', 'pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native virtual/gettext ge=
ttext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  alsa-lib ncurses libsamplerate0 udev udev', 'https://bugt=
rack.alsa-project.org/alsa-bug/login_page.php', 'None', 'Shell script that =
creates ALSA configuration files.', 'UPDATE', 'N/A', 'ftp://ftp.alsa-projec=
t.org/pub/utils/alsa-utils-1.0.27.2.tar.bz2', 'Cristian Iorga <cristian.ior=
ga@intel.com>', 'None']
inserted (alsa-utils-alsaconf,1.0.27.2,1.0.28,GPLv2+,console/utils,r0,None,=
http://www.alsa-project.org,https://bugtrack.alsa-project.org/alsa-bug/logi=
n_page.php,UPDATE,pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native virtual/gettext gettext-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
alsa-lib ncurses libsamplerate0 udev udev,Shell script that creates ALSA co=
nfiguration files.,N/A,ftp://ftp.alsa-project.org/pub/utils/alsa-utils-1.0.=
27.2.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['opkg', '0.2.2', '0.2.2', 'GPLv2+', 'base', 'http://code.google.com/p/opkg=
/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  ', 'http://code.google.com/p/opkg/issu=
es/list', '1', 'Open Package Manager.', 'MATCH', '0.1.8', 'http://downloads=
=2Eyoctoproject.org/releases/opkg/opkg-0.2.2.tar.gz', 'Saul Wold <sgw@linux=
=2Eintel.com>', 'None']
inserted (opkg,0.2.2,0.2.2,GPLv2+,base,r0,1,http://code.google.com/p/opkg/,=
http://code.google.com/p/opkg/issues/list,MATCH,pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,=
Open Package Manager.,0.1.8,http://downloads.yoctoproject.org/releases/opkg=
/opkg-0.2.2.tar.gz,Saul Wold <sgw@linux.intel.com>)
['libsm', '1.2.2', '1.2.2', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros libice xproto xtrans e2fsprogs',=
 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Ses=
sion Management Library (SMlib) is a low-level \\"C\\" language interface t=
o XSMP.  The purpose of the X Session Management Protocol (XSMP) is to prov=
ide a uniform mechanism for users to save and restore their sessions.  A se=
ssion is a group of clients, each of which has a particular state.', 'MATCH=
', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libSM-1.2.2.=
tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libsm,1.2.2,1.2.2,MIT-style,x11/libs,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  util-macros libice xproto xtrans e2fsprogs,The Session Management =
Library (SMlib) is a low-level \"C\" language interface to XSMP.  The purpo=
se of the X Session Management Protocol (XSMP) is to provide a uniform mech=
anism for users to save and restore their sessions.  A session is a group o=
f clients, each of which has a particular state.,N/A,http://xorg.freedeskto=
p.org/releases/individual/lib/libSM-1.2.2.tar.bz2,Ross Burton <ross.burton@=
intel.com>)
['python-imaging', '1.1.7', '1.1.7', 'MIT', 'devel/python', '', 'r5', ' vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 freetype jpeg tiff python-native python  python-native ', 'None', 'None', =
'Python Imaging Library (PIL).', 'MATCH', 'N/A', 'http://effbot.org/downloa=
ds/Imaging-1.1.7.tar.gz', 'Richard Purdie <richard.purdie@linuxfoundation.o=
rg>', 'None']
inserted (python-imaging,1.1.7,1.1.7,MIT,devel/python,r5,None,,None,MATCH, =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  freetype jpeg tiff python-native python  python-native ,Python Imaging =
Library (PIL).,N/A,http://effbot.org/downloads/Imaging-1.1.7.tar.gz,Richard=
 Purdie <richard.purdie@linuxfoundation.org>)
['ttf-bitstream-vera', '1.10', '1.10', 'BitstreamVera', 'x11/fonts', '', 'r=
7', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc   qemu-native', 'None', 'None', 'The Bitstream Vera fonts include =
four monospace and sans faces (normal, oblique, bold, bold oblique) and two=
 serif faces (normal and bold).  In addition Fontconfig/Xft2 can artificial=
ly oblique the serif faces for you: this loses hinting and distorts the fac=
es slightly, but is visibly different than normal and bold, and reasonably =
pleasing.', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/ttf-bit=
stream-vera/1.10/ttf-bitstream-vera-1.10.tar.bz2', 'Ross Burton <ross.burto=
n@intel.com>', 'None']
inserted (ttf-bitstream-vera,1.10,1.10,BitstreamVera,x11/fonts,r7,None,,Non=
e,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc   qemu-native,The Bitstream Vera fonts include four monospace a=
nd sans faces (normal, oblique, bold, bold oblique) and two serif faces (no=
rmal and bold).  In addition Fontconfig/Xft2 can artificially oblique the s=
erif faces for you: this loses hinting and distorts the faces slightly, but=
 is visibly different than normal and bold, and reasonably pleasing.,N/A,ht=
tp://ftp.gnome.org/pub/GNOME/sources/ttf-bitstream-vera/1.10/ttf-bitstream-=
vera-1.10.tar.bz2,Ross Burton <ross.burton@intel.com>)
['augeas', '1.2.0', '1.2.0', 'LGPLv2.1+', 'base', 'http://augeas.net/', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  readline libxml2', 'https://fedorahosted.org/=
augeas/report/1', 'None', 'Augeas configuration API.', 'MATCH', 'N/A', 'htt=
p://download.augeas.net/augeas-1.2.0.tar.gz', 'Paul Eggleton <paul.eggleton=
@linux.intel.com>', 'None']
inserted (augeas,1.2.0,1.2.0,LGPLv2.1+,base,r0,None,http://augeas.net/,http=
s://fedorahosted.org/augeas/report/1,MATCH,pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  readli=
ne libxml2,Augeas configuration API.,N/A,http://download.augeas.net/augeas-=
1.2.0.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['ed', '1.9', '1.9', 'GPLv3+', 'base', 'http://www.gnu.org/software/ed/', '=
r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc   texinfo-native', 'None', 'None', 'Line-oriented text editor.', =
'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/ed/ed-1.9.tar.gz', 'Saul Wold <sgw@l=
inux.intel.com>', 'None']
inserted (ed,1.9,1.9,GPLv3+,base,r0,None,http://www.gnu.org/software/ed/,No=
ne,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc   texinfo-native,Line-oriented text editor.,N/A,ftp://ftp.gnu.=
org/gnu/ed/ed-1.9.tar.gz,Saul Wold <sgw@linux.intel.com>)
['x11perf', '1.5.4', '1.5.4', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8=
=2E0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxmu =
libxrender libxft libxext fontconfig', 'https://bugs.freedesktop.org', '1',=
 'The x11perf program runs one or more performance tests and reports how fa=
st an X server can execute the tests.', 'MATCH', 'N/A', 'http://xorg.freede=
sktop.org/releases/individual/app/x11perf-1.5.4.tar.bz2', 'Richard Purdie <=
richard.purdie@linuxfoundation.org>', 'None']
inserted (x11perf,1.5.4,1.5.4,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https=
://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native =
virtual/libx11 libxmu libxrender libxft libxext fontconfig,The x11perf prog=
ram runs one or more performance tests and reports how fast an X server can=
 execute the tests.,N/A,http://xorg.freedesktop.org/releases/individual/app=
/x11perf-1.5.4.tar.bz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['waffle', '1.3.0', 'N/A', 'BSD-2-Clause', 'base', '', 'r0', 'autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native cmake-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc   virtual/libgl libx11', 'None', 'None', 'cross-platform C library =
to defer selection of GL API and of window system.', 'ErrHostNoDir:/~chadve=
rsary/waffle/files/release/waffle-1.3.0/waffle-1.3.0.tar.xz:waffle-1.3.0:-:=
people.freedesktop.org/~chadversary/waffle/files/release/waffle-1.3.0/waffl=
e-1.3.0.tar.xz', 'N/A', 'http://people.freedesktop.org/~chadversary/waffle/=
files/release/waffle-1.3.0/waffle-1.3.0.tar.xz', 'None', 'None']
inserted (waffle,1.3.0,N/A,BSD-2-Clause,base,r0,None,,None,ErrHostNoDir:/~c=
hadversary/waffle/files/release/waffle-1.3.0/waffle-1.3.0.tar.xz:waffle-1.3=
=2E0:-:people.freedesktop.org/~chadversary/waffle/files/release/waffle-1.3.=
0/waffle-1.3.0.tar.xz,autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native cmake-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc   virtual/libgl libx11,cross-pla=
tform C library to defer selection of GL API and of window system.,N/A,http=
://people.freedesktop.org/~chadversary/waffle/files/release/waffle-1.3.0/wa=
ffle-1.3.0.tar.xz,None)
['gdb', '7.7.1', '7.8', 'GPLv2 & GPLv3 & LGPLv2 & LGPLv3', 'devel', 'http:/=
/www.gnu.org/software/gdb/', 'r0', 'autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native virtual/gettext gettext-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 expat zlib ncurses readline lttng-ust texinfo-native', 'None', 'None', 'GN=
U debugger.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/gdb/gdb-7.7.1.tar.gz'=
, 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (gdb,7.7.1,7.8,GPLv2 & GPLv3 & LGPLv2 & LGPLv3,devel,r0,None,http:=
//www.gnu.org/software/gdb/,None,UPDATE,autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native virtual/gettext gettext-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  expat zlib ncurses readline lttng-ust texinfo-native,GNU debugger.,N/A=
,ftp://ftp.gnu.org/gnu/gdb/gdb-7.7.1.tar.gz,Richard Purdie <richard.purdie@=
linuxfoundation.org>)
['libgcc', '4.9.1', '4.9.1', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel',=
 'http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automake-native=
 libtool-native gnu-config-native   virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-g++ texinfo-native', 'None', 'None', 'GNU cc and gcc C compile=
rs.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz=
2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libgcc,4.9.1,4.9.1,GPL-3.0-with-GCC-exception & GPLv3,devel,r0,No=
ne,http://www.gnu.org/software/gcc/,None,MATCH,autoconf-native automake-nat=
ive libtool-native gnu-config-native   virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-g++ texinfo-native,GNU cc and gcc C compilers.,N/A,ftp://ft=
p.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2,Saul Wold <sgw@linux.intel.co=
m>)
['expect', '5.45', '5.45', 'PD', 'devel', 'http://sourceforge.net/projects/=
expect/', 'r0', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc   tcl', 'None', 'None', 'Expect is a tool for auto=
mating interactive applications according to a script. Following the script=
, Expect knows what can be expected from a program and what the correct res=
ponse should be. Expect is also useful for testing these same applications.=
 And by adding Tk, you can also wrap interactive applications in X11 GUIs. =
An interpreted language provides branching and high-level control structure=
s to direct the dialogue. In addition, the user can take control and intera=
ct directly when desired, afterward returning control to the script. ', 'MA=
TCH', 'N/A', 'http://downloads.sourceforge.net/expect/Expect/5.45/expect5.4=
5.tar.gz', 'None', 'None']
inserted (expect,5.45,5.45,PD,devel,r0,None,http://sourceforge.net/projects=
/expect/,None,MATCH,autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc   tcl,Expect is a tool for automating interacti=
ve applications according to a script. Following the script, Expect knows w=
hat can be expected from a program and what the correct response should be.=
 Expect is also useful for testing these same applications. And by adding T=
k, you can also wrap interactive applications in X11 GUIs. An interpreted l=
anguage provides branching and high-level control structures to direct the =
dialogue. In addition, the user can take control and interact directly when=
 desired, afterward returning control to the script. ,N/A,http://downloads.=
sourceforge.net/expect/Expect/5.45/expect5.45.tar.gz,None)
['encodings', '1.0.4', '1.0.4', 'PD', 'x11/fonts', 'http://www.x.org', 'r2.=
1', 'pkgconfig-native autoconf-native automake-native libtool-native gnu-co=
nfig-native  mkfontscale-native font-util-native', 'https://bugs.freedeskto=
p.org/enter_bug.cgi?product=3Dxorg', '1', 'The encodings that map to specif=
ic characters for a number of Xorg and common fonts.', 'MATCH', 'N/A', 'htt=
p://xorg.freedesktop.org/releases/individual/font/encodings-1.0.4.tar.bz2',=
 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (encodings,1.0.4,1.0.4,PD,x11/fonts,r2.1,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native =
autoconf-native automake-native libtool-native gnu-config-native  mkfontsca=
le-native font-util-native,The encodings that map to specific characters fo=
r a number of Xorg and common fonts.,N/A,http://xorg.freedesktop.org/releas=
es/individual/font/encodings-1.0.4.tar.bz2,Ross Burton <ross.burton@intel.c=
om>)
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
dual/lib/libXcomposite-0.4.4.tar.bz2', 'Ross Burton <ross.burton@intel.com>=
', 'None']
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
r.bz2,Ross Burton <ross.burton@intel.com>)
['insserv', '1.14.0', '1.14.0', 'GPLv2', 'base', '', 'r1', ' virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None',=
 'None', "This utility reorders the init.d boot scripts based on dependenci=
es given in scripts' LSB comment headers, or in override files included in =
this package or added in /etc/insserv.", 'MATCH', 'N/A', 'ftp://ftp.suse.co=
m/pub/projects/init/insserv-1.14.0.tar.bz2', 'Chong Lu <Chong.Lu@windriver.=
com>', 'None']
inserted (insserv,1.14.0,1.14.0,GPLv2,base,r1,None,,None,MATCH, virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,This u=
tility reorders the init.d boot scripts based on dependencies given in scri=
pts' LSB comment headers, or in override files included in this package or =
added in /etc/insserv.,N/A,ftp://ftp.suse.com/pub/projects/init/insserv-1.1=
4.0.tar.bz2,Chong Lu <Chong.Lu@windriver.com>)
['mkfontscale', '1.1.1', '1.1.1', 'MIT-X', 'x11/apps', 'http://www.x.org/',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros-native zlib libfontenc freety=
pe xproto', 'https://bugs.freedesktop.org', 'None', 'For each directory arg=
ument, mkfontscale reads all of the scalable font files in the directory. F=
or every font file found, an X11 font name (XLFD) is generated, and is writ=
ten together with the file name to a file fonts.scale in the directory.  Th=
e resulting fonts.scale is used by the mkfontdir program.', 'MATCH', 'N/A',=
 'http://xorg.freedesktop.org/releases/individual/app/mkfontscale-1.1.1.tar=
=2Ebz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (mkfontscale,1.1.1,1.1.1,MIT-X,x11/apps,r0,None,http://www.x.org/,=
https://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-na=
tive zlib libfontenc freetype xproto,For each directory argument, mkfontsca=
le reads all of the scalable font files in the directory. For every font fi=
le found, an X11 font name (XLFD) is generated, and is written together wit=
h the file name to a file fonts.scale in the directory.  The resulting font=
s.scale is used by the mkfontdir program.,N/A,http://xorg.freedesktop.org/r=
eleases/individual/app/mkfontscale-1.1.1.tar.bz2,Saul Wold <sgw@linux.intel=
=2Ecom>)
['connman', '1.24', '1.24', 'GPLv2', 'base', 'http://connman.net/', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  dbus glib-2.0 ppp iptables update-rc.d-native ini=
tscripts  ofono  bluez4  wpa-supplicant gnutls', 'https://01.org/jira/brows=
e/CM', 'None', 'The ConnMan project provides a daemon for managing internet=
 connections within embedded devices running the Linux operating system.  T=
he Connection Manager is designed to be slim and to use as few resources as=
 possible, so it can be easily integrated. It is a fully modular system tha=
t can be extended, through plug-ins, to support all kinds of wired or wirel=
ess technologies. Also, configuration methods, like DHCP and domain name re=
solving, are implemented using plug-ins.', 'MATCH', 'N/A', 'http://kernel.o=
rg/pub/linux/network/connman/connman-1.24.tar.xz', 'Cristian Iorga <cristia=
n.iorga@intel.com>', 'None']
inserted (connman,1.24,1.24,GPLv2,base,r0,None,http://connman.net/,https://=
01.org/jira/browse/CM,MATCH,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  dbus glib-2.0 ppp ipt=
ables update-rc.d-native initscripts  ofono  bluez4  wpa-supplicant gnutls,=
The ConnMan project provides a daemon for managing internet connections wit=
hin embedded devices running the Linux operating system.  The Connection Ma=
nager is designed to be slim and to use as few resources as possible, so it=
 can be easily integrated. It is a fully modular system that can be extende=
d, through plug-ins, to support all kinds of wired or wireless technologies=
=2E Also, configuration methods, like DHCP and domain name resolving, are i=
mplemented using plug-ins.,N/A,http://kernel.org/pub/linux/network/connman/=
connman-1.24.tar.xz,Cristian Iorga <cristian.iorga@intel.com>)
['libxml-sax-base-perl', '1.08', '1.08', 'Artistic-1.0 | GPL-1.0+', 'libs',=
 '', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc   perl perl-native', 'None', 'None', "This module has a ver=
y simple task - to be a base class for PerlSAX drivers and filters. It's de=
fault behaviour is to pass the input directly to the output unchanged. It c=
an be useful to use this module as a base class so you don't have to, for e=
xample, implement the characters() callback.", 'MATCH', 'N/A', 'http://sear=
ch.cpan.org/CPAN/authors/id/G/GR/GRANTM/XML-SAX-Base-1.08.tar.gz', 'None', =
'None']
inserted (libxml-sax-base-perl,1.08,1.08,Artistic-1.0 | GPL-1.0+,libs,r0,No=
ne,,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc   perl perl-native,This module has a very simple task - =
to be a base class for PerlSAX drivers and filters. It's default behaviour =
is to pass the input directly to the output unchanged. It can be useful to =
use this module as a base class so you don't have to, for example, implemen=
t the characters() callback.,N/A,http://search.cpan.org/CPAN/authors/id/G/G=
R/GRANTM/XML-SAX-Base-1.08.tar.gz,None)
['ccache', '3.1.9', '3.1.9', 'GPLv3+', 'devel', 'http://ccache.samba.org', =
'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  zlib', 'None', 'None', 'ccache is a compiler cache. It spee=
ds up recompilation by caching the result of previous compilations and dete=
cting when the same compilation is being done again. Supported languages ar=
e C, C\\+\\+, Objective-C and Objective-C++.', 'MATCH', 'N/A', 'http://samb=
a.org/ftp/ccache/ccache-3.1.9.tar.xz', 'Wenzong Fan <wenzong.fan@windriver.=
com>', 'None']
inserted (ccache,3.1.9,3.1.9,GPLv3+,devel,r0,None,http://ccache.samba.org,N=
one,MATCH,autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  zlib,ccache is a compiler cache. It speeds up recompilat=
ion by caching the result of previous compilations and detecting when the s=
ame compilation is being done again. Supported languages are C, C\+\+, Obje=
ctive-C and Objective-C++.,N/A,http://samba.org/ftp/ccache/ccache-3.1.9.tar=
=2Exz,Wenzong Fan <wenzong.fan@windriver.com>)
['owl-video', '0.1+gitAUTOINC+07ab48f331', '0.1+gitAUTOINC+07ab48f', 'LGPLv=
2.1 & GPLv2+', 'x11', 'http://o-hand.com/', 'r2', 'pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  libowl-av', 'http://bugzilla.yoctoproject.org/', 'None', 'OpenedHand Widg=
et Library video widget.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/owl-=
video', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (owl-video,0.1+gitAUTOINC+07ab48f331,0.1+gitAUTOINC+07ab48f,LGPLv2=
=2E1 & GPLv2+,x11,r2,None,http://o-hand.com/,http://bugzilla.yoctoproject.o=
rg/,MATCH,pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  libowl-av,OpenedHand Widget Library vid=
eo widget.,N/A,git://git.yoctoproject.org/owl-video,Ross Burton <ross.burto=
n@intel.com>)
['console-tools', '0.3.2', '0.3.2', 'GPLv2', 'base', '', 'r8', 'autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native virtual=
/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc   virtual/update-alternatives', 'None', 'None',=
 'Provides tools that enable the set-up and manipulation of the linux conso=
le and console-font files.', 'MATCH', 'N/A', 'http://downloads.sourceforge.=
net/lct/console-tools-0.3.2.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'No=
ne']
inserted (console-tools,0.3.2,0.3.2,GPLv2,base,r8,None,,None,MATCH,autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native virt=
ual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc   virtual/update-alternatives,Provides tools=
 that enable the set-up and manipulation of the linux console and console-f=
ont files.,N/A,http://downloads.sourceforge.net/lct/console-tools-0.3.2.tar=
=2Egz,Saul Wold <sgw@linux.intel.com>)
['xf86-video-omapfb', '0.1.1+gitrAUTOINC+28c006c94e', '0.1.1+gitrAUTOINC+28=
c006c94e+gitrAUTOINC+fatal: ', 'MIT-X & GPLv2+', 'x11/drivers', 'http://www=
=2Ex.org', 'r21.7', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextp=
roto fontsproto virtual/xserver xproto randrproto util-macros virtual/libx1=
1', 'https://bugs.freedesktop.org', '2', 'omapfb driver supports the basic =
Texas Instruments OMAP framebuffer.', 'UPDATE', 'N/A', 'git://git.pingu.fi/=
xf86-video-omapfb;protocol=3Dhttp', 'Ross Burton <ross.burton@intel.com>', =
'None']
inserted (xf86-video-omapfb,0.1.1+gitrAUTOINC+28c006c94e,0.1.1+gitrAUTOINC+=
28c006c94e+gitrAUTOINC+fatal: ,MIT-X & GPLv2+,x11/drivers,r21.7,2,http://ww=
w.x.org,https://bugs.freedesktop.org,UPDATE,pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  rende=
rproto videoproto xextproto fontsproto virtual/xserver xproto randrproto ut=
il-macros virtual/libx11,omapfb driver supports the basic Texas Instruments=
 OMAP framebuffer.,N/A,git://git.pingu.fi/xf86-video-omapfb;protocol=3Dhttp=
,Ross Burton <ross.burton@intel.com>)
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
['mtd-utils', '1.5.1+gitAUTOINC+9f107132a6', '1.5.1+gitAUTOINC+b7455d8', 'G=
PLv2+', 'base', 'http://www.linux-mtd.infradead.org/', 'r0', ' virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib lzo=
 e2fsprogs util-linux', 'None', 'None', 'Tools for managing memory technolo=
gy devices.', 'UPDATE', 'N/A', 'git://git.infradead.org/mtd-utils.git', 'Sa=
ul Wold <sgw@linux.intel.com>', 'None']
inserted (mtd-utils,1.5.1+gitAUTOINC+9f107132a6,1.5.1+gitAUTOINC+b7455d8,GP=
Lv2+,base,r0,None,http://www.linux-mtd.infradead.org/,None,UPDATE, virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib=
 lzo e2fsprogs util-linux,Tools for managing memory technology devices.,N/A=
,git://git.infradead.org/mtd-utils.git,Saul Wold <sgw@linux.intel.com>)
['xinput', '1.6.1', '1.6.1', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros-native virtual/libx11  libxi libxr=
andr libxinerama', 'https://bugs.freedesktop.org', 'None', 'Xinput is an ut=
ility for configuring and testing XInput devices', 'MATCH', 'N/A', 'http://=
xorg.freedesktop.org/releases/individual/app/xinput-1.6.1.tar.bz2', 'Ross B=
urton <ross.burton@intel.com>', 'None']
inserted (xinput,1.6.1,1.6.1,MIT-X,x11/apps,r0,None,http://www.x.org/,https=
://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native =
virtual/libx11  libxi libxrandr libxinerama,Xinput is an utility for config=
uring and testing XInput devices,N/A,http://xorg.freedesktop.org/releases/i=
ndividual/app/xinput-1.6.1.tar.bz2,Ross Burton <ross.burton@intel.com>)
['v86d', '0.1.10', '0.1.10', 'GPLv2', 'base', 'http://dev.gentoo.org/~spock=
/projects/uvesafb/', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  virtual/kernel update-rc.d-native initscri=
pts', 'None', 'None', 'User support binary for the uvesafb kernel module.',=
 'MATCH', 'N/A', 'http://distfiles.gentoo.org/distfiles/v86d-0.1.10.tar.bz2=
', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (v86d,0.1.10,0.1.10,GPLv2,base,r2,None,http://dev.gentoo.org/~spoc=
k/projects/uvesafb/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  virtual/kernel update-rc.d-native inits=
cripts,User support binary for the uvesafb kernel module.,N/A,http://distfi=
les.gentoo.org/distfiles/v86d-0.1.10.tar.bz2,Richard Purdie <richard.purdie=
@linuxfoundation.org>)
['at-spi2-core', '2.12.0', '2.13.4', 'LGPLv2', 'base', '', 'r0', 'pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  dbus glib-2.0 virtual/libx11 libxi libxtst intltool-native=
 gtk-doc-stub-native', 'None', 'None', 'Assistive Technology Service Provid=
er Interface (dbus core).', 'UPDATE', 'N/A', 'http://ftp.gnome.org/pub/GNOM=
E/sources/at-spi2-core/2.12/at-spi2-core-2.12.0.tar.xz', 'Ross Burton <ross=
=2Eburton@intel.com>', 'None']
inserted (at-spi2-core,2.12.0,2.13.4,LGPLv2,base,r0,None,,None,UPDATE,pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  dbus glib-2.0 virtual/libx11 libxi libxtst intltool-na=
tive gtk-doc-stub-native,Assistive Technology Service Provider Interface (d=
bus core).,N/A,http://ftp.gnome.org/pub/GNOME/sources/at-spi2-core/2.12/at-=
spi2-core-2.12.0.tar.xz,Ross Burton <ross.burton@intel.com>)
['xcb-proto', '1.10', '1.11', 'MIT', 'x11/libs', 'http://xcb.freedesktop.or=
g', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc    python-native ', 'https://bugs.freed=
esktop.org/enter_bug.cgi?product=3DXCB', 'None', 'Function prototypes for t=
he X protocol C-language Binding (XCB).  XCB is a replacement for Xlib feat=
uring a small footprint, latency hiding, direct access to the protocol, imp=
roved threading support, and extensibility.', 'UPDATE', 'N/A', 'http://xcb.=
freedesktop.org/dist/xcb-proto-1.10.tar.bz2', 'Ross Burton <ross.burton@int=
el.com>', 'None']
inserted (xcb-proto,1.10,1.11,MIT,x11/libs,r0,None,http://xcb.freedesktop.o=
rg,https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,UPDATE,pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc    python-native ,Function prototypes for the X protocol C=
-language Binding (XCB).  XCB is a replacement for Xlib featuring a small f=
ootprint, latency hiding, direct access to the protocol, improved threading=
 support, and extensibility.,N/A,http://xcb.freedesktop.org/dist/xcb-proto-=
1.10.tar.bz2,Ross Burton <ross.burton@intel.com>)
['leafpad', '0.8.18.1', '0.8.18.1', 'GPLv2 & GPLv2+', 'base', 'http://tarot=
=2Efreeshell.org/leafpad/', 'r2', 'pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ intltool-=
native libowl', 'None', 'None', 'Simple GTK+ Text Editor.', 'MATCH', 'N/A',=
 'http://download.savannah.nongnu.org/releases/leafpad/leafpad-0.8.18.1.tar=
=2Egz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (leafpad,0.8.18.1,0.8.18.1,GPLv2 & GPLv2+,base,r2,None,http://taro=
t.freeshell.org/leafpad/,None,MATCH,pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ intltool=
-native libowl,Simple GTK+ Text Editor.,N/A,http://download.savannah.nongnu=
=2Eorg/releases/leafpad/leafpad-0.8.18.1.tar.gz,Ross Burton <ross.burton@in=
tel.com>)
['sbc', '1.2', '1.2', 'GPLv2', 'libs', 'https://www.bluez.org', 'r0', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  libsndfile1', 'None', 'None', 'Bluetooth low-complexi=
ty, subband codec (SBC) library.', 'MATCH', 'N/A', 'http://kernel.org/pub/l=
inux/bluetooth/sbc-1.2.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>'=
, 'None']
inserted (sbc,1.2,1.2,GPLv2,libs,r0,None,https://www.bluez.org,None,MATCH,p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  libsndfile1,Bluetooth low-complexity, subband code=
c (SBC) library.,N/A,http://kernel.org/pub/linux/bluetooth/sbc-1.2.tar.xz,C=
ristian Iorga <cristian.iorga@intel.com>)
['gnu-efi', '3.0u', '3.0u', 'GPLv2+', 'devel', 'http://sourceforge.net/proj=
ects/gnu-efi/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'None', 'None', 'Libraries for producing EFI=
 binaries.', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/gnu-efi/gnu-=
efi_3.0u.orig.tar.gz', 'None', 'None']
inserted (gnu-efi,3.0u,3.0u,GPLv2+,devel,r0,None,http://sourceforge.net/pro=
jects/gnu-efi/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ,Libraries for producing EFI binaries.,N/A,h=
ttp://downloads.sourceforge.net/gnu-efi/gnu-efi_3.0u.orig.tar.gz,None)
['gconf', '3.2.6', '3.2.6', 'LGPLv2+', 'x11/gnome', '', 'r0', 'pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus dbus-glib libxml=
2 intltool-native gobject-introspection-stub gnome-common-native gtk-doc-st=
ub-native', 'None', 'None', 'GNOME configuration system.', 'MATCH', 'N/A', =
'http://ftp.gnome.org/pub/GNOME/sources/GConf/3.2/GConf-3.2.6.tar.xz;name=
=3Darchive', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (gconf,3.2.6,3.2.6,LGPLv2+,x11/gnome,r0,None,,None,MATCH,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus dbus-glib lib=
xml2 intltool-native gobject-introspection-stub gnome-common-native gtk-doc=
-stub-native,GNOME configuration system.,N/A,http://ftp.gnome.org/pub/GNOME=
/sources/GConf/3.2/GConf-3.2.6.tar.xz;name=3Darchive,Saul Wold <sgw@linux.i=
ntel.com>)
['openjade-native', '1.3.2', '1.3.3', 'BSD', 'base', 'http://openjade.sourc=
eforge.net', 'r5', 'autoconf-native automake-native libtool-native gnu-conf=
ig-native  opensp-native sgml-common-native', 'None', 'None', 'OpenJade is =
a suite of tools for validating, processing, and applying DSSSL (Document S=
tyle Semantics and Specification Language) stylesheets to SGML and XML docu=
ments.', 'UPDATE', 'N/A', 'http://downloads.sourceforge.net/openjade/openja=
de-1.3.2.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (openjade-native,1.3.2,1.3.3,BSD,base,r5,None,http://openjade.sour=
ceforge.net,None,UPDATE,autoconf-native automake-native libtool-native gnu-=
config-native  opensp-native sgml-common-native,OpenJade is a suite of tool=
s for validating, processing, and applying DSSSL (Document Style Semantics =
and Specification Language) stylesheets to SGML and XML documents.,N/A,http=
://downloads.sourceforge.net/openjade/openjade-1.3.2.tar.gz,Paul Eggleton <=
paul.eggleton@linux.intel.com>)
['libxft', '2.3.2', '2.3.2', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', '=
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
b/libXft-2.3.2.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxft,2.3.2,2.3.2,MIT,x11/libs,r0,1,http://www.x.org,https://bug=
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
://xorg.freedesktop.org/releases/individual/lib/libXft-2.3.2.tar.bz2,Ross B=
urton <ross.burton@intel.com>)
['gst-openmax', '0.10.1', '0.10.1', 'LGPLv2.1', 'base', 'http://freedesktop=
=2Eorg/wiki/GstOpenMAX', 'r4', 'pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gstreamer', 'None=
', 'None', 'GstOpenMAX is a GStreamer plug-in that allows communication wit=
h OpenMAX Integration Layer (IL) components. OpenMAX IL is an industry stan=
dard that provides an abstraction layer for computer graphics, video, and s=
ound routines.', 'MATCH', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-=
openmax/gst-openmax-0.10.1.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.=
com>', 'None']
inserted (gst-openmax,0.10.1,0.10.1,LGPLv2.1,base,r4,None,http://freedeskto=
p.org/wiki/GstOpenMAX,None,MATCH,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gstreamer,GstOpe=
nMAX is a GStreamer plug-in that allows communication with OpenMAX Integrat=
ion Layer (IL) components. OpenMAX IL is an industry standard that provides=
 an abstraction layer for computer graphics, video, and sound routines.,N/A=
,http://gstreamer.freedesktop.org/src/gst-openmax/gst-openmax-0.10.1.tar.bz=
2,Cristian Iorga <cristian.iorga@intel.com>)
['orc', '0.4.18', '0.4.18', 'BSD-2-Clause & BSD-3-Clause', 'base', 'http://=
code.entropywave.com/projects/orc/', 'r2.0', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', =
'None', 'None', 'Optimised Inner Loop Runtime Compiler.', 'MATCH', 'N/A', '=
http://code.entropywave.com/download/orc/orc-0.4.18.tar.gz;name=3Dorc', 'No=
ne', 'None']
inserted (orc,0.4.18,0.4.18,BSD-2-Clause & BSD-3-Clause,base,r2.0,None,http=
://code.entropywave.com/projects/orc/,None,MATCH,pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
,Optimised Inner Loop Runtime Compiler.,N/A,http://code.entropywave.com/dow=
nload/orc/orc-0.4.18.tar.gz;name=3Dorc,None)
['bash', '4.3', '4.3', 'GPLv3+', 'base/shell', 'http://tiswww.case.edu/php/=
chet/bash/bashtop.html', 'r0', 'autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ncu=
rses bison-native texinfo-native virtual/update-alternatives', 'None', 'Non=
e', 'An sh-compatible command language interpreter.', 'MATCH', '4.2', 'ftp:=
//ftp.gnu.org/gnu/bash/bash-4.3.tar.gz;name=3Dtarball', 'Hongxu Jia <hongxu=
=2Ejia@windriver.com>', 'None']
inserted (bash,4.3,4.3,GPLv3+,base/shell,r0,None,http://tiswww.case.edu/php=
/chet/bash/bashtop.html,None,MATCH,autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native virtual/gettext gettext-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
ncurses bison-native texinfo-native virtual/update-alternatives,An sh-compa=
tible command language interpreter.,4.2,ftp://ftp.gnu.org/gnu/bash/bash-4.3=
=2Etar.gz;name=3Dtarball,Hongxu Jia <hongxu.jia@windriver.com>)
['ltp', '20140422', '20140422', 'GPLv2 & GPLv2+ & LGPLv2+ & LGPLv2.1+ & BSD=
-2-Clause', 'console/utils', 'http://ltp.sourceforge.net', 'r0', 'autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
attr libaio libcap acl openssl', 'None', 'None', 'The Linux Test Project is=
 a joint project with SGI, IBM, OSDL, and Bull with a goal to deliver test =
suites to the open source community that validate the reliability, robustne=
ss, and stability of Linux. The Linux Test Project is a collection of tools=
 for testing the Linux kernel and related features.', 'ErrUnknown:github.co=
m/linux-test-project/ltp.git', 'N/A', 'git://github.com/linux-test-project/=
ltp.git', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (ltp,20140422,20140422,GPLv2 & GPLv2+ & LGPLv2+ & LGPLv2.1+ & BSD-=
2-Clause,console/utils,r0,None,http://ltp.sourceforge.net,None,ErrUnknown:g=
ithub.com/linux-test-project/ltp.git,autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  attr libaio libcap acl openss=
l,The Linux Test Project is a joint project with SGI, IBM, OSDL, and Bull w=
ith a goal to deliver test suites to the open source community that validat=
e the reliability, robustness, and stability of Linux. The Linux Test Proje=
ct is a collection of tools for testing the Linux kernel and related featur=
es.,N/A,git://github.com/linux-test-project/ltp.git,Robert Yang <liezhi.yan=
g@windriver.com>)
['openssh', '6.6p1', '6.6p1', 'BSD', 'console/network', 'http://openssh.org=
', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  zlib openssl  base-files base-passwd shadow-native shado=
w-sysroot shadow update-rc.d-native initscripts tcp-wrappers virtual/update=
-alternatives', 'None', 'None', 'Secure rlogin/rsh/rcp/telnet replacement (=
OpenSSH) Ssh (Secure Shell) is a program for logging into a remote machine =
and for executing commands on a remote machine.', 'MATCH', 'N/A', 'ftp://ft=
p.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-6.6p1.tar.gz', 'Paul Egg=
leton <paul.eggleton@linux.intel.com>', 'None']
inserted (openssh,6.6p1,6.6p1,BSD,console/network,r0,None,http://openssh.or=
g,None,MATCH,autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  zlib openssl  base-files base-passwd shadow-native sh=
adow-sysroot shadow update-rc.d-native initscripts tcp-wrappers virtual/upd=
ate-alternatives,Secure rlogin/rsh/rcp/telnet replacement (OpenSSH) Ssh (Se=
cure Shell) is a program for logging into a remote machine and for executin=
g commands on a remote machine.,N/A,ftp://ftp.openbsd.org/pub/OpenBSD/OpenS=
SH/portable/openssh-6.6p1.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.c=
om>)
['chrpath', '0.16', '0.16', 'GPLv2', 'base', 'http://alioth.debian.org/proj=
ects/chrpath/', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'http://alioth.debian.org/tracker/?atid=
=3D412807&group_id=3D31052', 'None', "chrpath allows you to change the rpat=
h (where the application looks for libraries) in an application. It does no=
t (yet) allow you to add an rpath if there isn't one already.", 'MATCH', 'N=
/A', 'http://alioth.debian.org/frs/download.php/file/3979/chrpath-0.16.tar.=
gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (chrpath,0.16,0.16,GPLv2,base,r0,None,http://alioth.debian.org/pro=
jects/chrpath/,http://alioth.debian.org/tracker/?atid=3D412807&group_id=3D3=
1052,MATCH,autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ,chrpath allows you to change the rpath (where the appl=
ication looks for libraries) in an application. It does not (yet) allow you=
 to add an rpath if there isn't one already.,N/A,http://alioth.debian.org/f=
rs/download.php/file/3979/chrpath-0.16.tar.gz,Paul Eggleton <paul.eggleton@=
linux.intel.com>)
['atk', '2.12.0', '2.13.3', 'GPLv2+ & LGPLv2+', 'x11/libs', 'http://live.gn=
ome.org/GAP/', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 gnome-common-nativ=
e gtk-doc-stub-native', 'https://bugzilla.gnome.org/', 'None', 'Accessibili=
ty toolkit for GNOME.', 'UPDATE', 'N/A', 'http://ftp.gnome.org/pub/GNOME/so=
urces/atk/2.12/atk-2.12.0.tar.xz;name=3Darchive', 'Ross Burton <ross.burton=
@intel.com>', 'None']
inserted (atk,2.12.0,2.13.3,GPLv2+ & LGPLv2+,x11/libs,r0,None,http://live.g=
nome.org/GAP/,https://bugzilla.gnome.org/,UPDATE,pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
glib-2.0 gnome-common-native gtk-doc-stub-native,Accessibility toolkit for =
GNOME.,N/A,http://ftp.gnome.org/pub/GNOME/sources/atk/2.12/atk-2.12.0.tar.x=
z;name=3Darchive,Ross Burton <ross.burton@intel.com>)
['matchbox-terminal', '0.0+gitAUTOINC+452bca2534', '0.0+gitAUTOINC+452bca2'=
, 'GPLv2+', 'x11/utils', 'http://www.matchbox-project.org/', 'r0', 'pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  gtk+ vte', 'http://bugzilla.yoctoproject.org/', 'None', =
'Lightweight GTK+ terminal application.', 'MATCH', 'N/A', 'git://git.yoctop=
roject.org/matchbox-terminal', 'Ross Burton <ross.burton@intel.com>', 'None=
']
inserted (matchbox-terminal,0.0+gitAUTOINC+452bca2534,0.0+gitAUTOINC+452bca=
2,GPLv2+,x11/utils,r0,None,http://www.matchbox-project.org/,http://bugzilla=
=2Eyoctoproject.org/,MATCH,pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ vte,Lightweight G=
TK+ terminal application.,N/A,git://git.yoctoproject.org/matchbox-terminal,=
Ross Burton <ross.burton@intel.com>)
['libarchive', '3.1.2', '3.1.2', 'BSD', 'devel', 'http://www.libarchive.org=
/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  e2fsprogs-native bzip2 libxml2 attr zl=
ib', 'None', 'None', 'C library and command-line tools for reading and writ=
ing tar, cpio, zip, ISO, and other archive formats', 'MATCH', 'N/A', 'http:=
//libarchive.org/downloads/libarchive-3.1.2.tar.gz', 'Kai Kang <kai.kang@wi=
ndriver.com>', 'None']
inserted (libarchive,3.1.2,3.1.2,BSD,devel,r0,None,http://www.libarchive.or=
g/,None,MATCH,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  e2fsprogs-native bzip2 libxml2 attr=
 zlib,C library and command-line tools for reading and writing tar, cpio, z=
ip, ISO, and other archive formats,N/A,http://libarchive.org/downloads/liba=
rchive-3.1.2.tar.gz,Kai Kang <kai.kang@windriver.com>)
['xmodmap', '1.0.8', '1.0.8', 'MIT', 'x11/apps', 'http://www.x.org/', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros-native virtual/libx11', 'https://bu=
gs.freedesktop.org', '1', "The xmodmap program is used to edit and display =
the keyboard modifier map and keymap table that are used by client applicat=
ions to convert event keycodes into keysyms. It is usually run from the use=
r's session startup script to configure the keyboard according to personal =
tastes.", 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/=
app/xmodmap-1.0.8.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xmodmap,1.0.8,1.0.8,MIT,x11/apps,r0,1,http://www.x.org/,https://b=
ugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native virt=
ual/libx11,The xmodmap program is used to edit and display the keyboard mod=
ifier map and keymap table that are used by client applications to convert =
event keycodes into keysyms. It is usually run from the user's session star=
tup script to configure the keyboard according to personal tastes.,N/A,http=
://xorg.freedesktop.org/releases/individual/app/xmodmap-1.0.8.tar.bz2,Ross =
Burton <ross.burton@intel.com>)
['xf86-video-fbdev', '0.4.4', '0.4.4', 'MIT-X', 'x11/drivers', 'http://www.=
x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextproto f=
ontsproto virtual/xserver xproto randrproto util-macros', 'https://bugs.fre=
edesktop.org', '2', 'fbdev is an Xorg driver for framebuffer devices. This =
is a non-accelerated driver.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org=
/releases/individual/driver/xf86-video-fbdev-0.4.4.tar.bz2', 'Ross Burton <=
ross.burton@intel.com>', 'None']
inserted (xf86-video-fbdev,0.4.4,0.4.4,MIT-X,x11/drivers,r0,2,http://www.x.=
org,https://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  renderprot=
o videoproto xextproto fontsproto virtual/xserver xproto randrproto util-ma=
cros,fbdev is an Xorg driver for framebuffer devices. This is a non-acceler=
ated driver.,N/A,http://xorg.freedesktop.org/releases/individual/driver/xf8=
6-video-fbdev-0.4.4.tar.bz2,Ross Burton <ross.burton@intel.com>)
['u-boot-mkimage', 'v2013.07+gitAUTOINC+62c175fbb8', 'v2013.07+gitAUTOINC+e=
49f14a', 'GPLv2+', 'bootloader', '', 'r0', ' virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'U-Boot=
 bootloader image creation tool.', 'UPDATE', 'N/A', 'git://git.denx.de/u-bo=
ot.git;branch=3Dmaster;protocol=3Dgit', 'Saul Wold <sgw@linux.intel.com>', =
'None']
inserted (u-boot-mkimage,v2013.07+gitAUTOINC+62c175fbb8,v2013.07+gitAUTOINC=
+e49f14a,GPLv2+,bootloader,r0,None,,None,UPDATE, virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  ,U-Boot bootloader ima=
ge creation tool.,N/A,git://git.denx.de/u-boot.git;branch=3Dmaster;protocol=
=3Dgit,Saul Wold <sgw@linux.intel.com>)
['grub-efi', '2.00', '2.00', 'GPLv3', 'bootloaders', 'http://www.gnu.org/so=
ftware/grub/', 'r2', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  grub-efi-nati=
ve texinfo-native', 'None', 'None', 'GRUB2 is the next generaion of a GPLed=
 bootloader intended to unify bootloading across x86 operating systems. In =
addition to loading the Linux kernel, it implements the Multiboot standard,=
 which allows for flexible loading of multiple boot images. This recipe bui=
lds an EFI binary for the target. It does not install or package anything, =
it only deploys a target-arch GRUB EFI image.', 'MATCH', 'N/A', 'ftp://ftp.=
gnu.org/gnu/grub/grub-2.00.tar.gz', 'None', 'None']
inserted (grub-efi,2.00,2.00,GPLv3,bootloaders,r2,None,http://www.gnu.org/s=
oftware/grub/,None,MATCH,autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  grub-efi-n=
ative texinfo-native,GRUB2 is the next generaion of a GPLed bootloader inte=
nded to unify bootloading across x86 operating systems. In addition to load=
ing the Linux kernel, it implements the Multiboot standard, which allows fo=
r flexible loading of multiple boot images. This recipe builds an EFI binar=
y for the target. It does not install or package anything, it only deploys =
a target-arch GRUB EFI image.,N/A,ftp://ftp.gnu.org/gnu/grub/grub-2.00.tar.=
gz,None)
['psplash', '0.1+gitAUTOINC+afd4e228c6', '0.1+gitAUTOINC+afd4e22', 'GPLv2+'=
, 'base', 'http://git.yoctoproject.org/cgit/cgit.cgi/psplash', 'r15', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc   update-rc.d-native initscripts virtual/update-altern=
atives', 'None', 'None', "PSplash is a userspace graphical boot splash scre=
en for mainly embedded Linux devices supporting a 16bpp or 32bpp framebuffe=
r. It has few dependencies (just libc), supports basic images and text and =
handles rotation. Its visual look is configurable by basic source changes. =
Also included is a 'client' command utility for sending information to pspl=
ash such as boot progress information.", 'MATCH', 'N/A', 'git://git.yoctopr=
oject.org/psplash', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (psplash,0.1+gitAUTOINC+afd4e228c6,0.1+gitAUTOINC+afd4e22,GPLv2+,b=
ase,r15,None,http://git.yoctoproject.org/cgit/cgit.cgi/psplash,None,MATCH,p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc   update-rc.d-native initscripts virtual/update-alt=
ernatives,PSplash is a userspace graphical boot splash screen for mainly em=
bedded Linux devices supporting a 16bpp or 32bpp framebuffer. It has few de=
pendencies (just libc), supports basic images and text and handles rotation=
=2E Its visual look is configurable by basic source changes. Also included =
is a 'client' command utility for sending information to psplash such as bo=
ot progress information.,N/A,git://git.yoctoproject.org/psplash,Paul Egglet=
on <paul.eggleton@linux.intel.com>)
['gcc-cross-initial-i586', '4.9.1', '4.9.1', 'GPL-3.0-with-GCC-exception & =
GPLv3', 'devel', 'http://www.gnu.org/software/gcc/', 'r0', '  virtual/i586-=
poky-linux-binutils mpfr-native gmp-native libmpc-native zlib-native texinf=
o-dummy-native', 'None', 'None', 'GNU cc and gcc C compilers.', 'MATCH', 'N=
/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2', 'Richard Purd=
ie <richard.purdie@linuxfoundation.org>', 'None']
inserted (gcc-cross-initial-i586,4.9.1,4.9.1,GPL-3.0-with-GCC-exception & G=
PLv3,devel,r0,None,http://www.gnu.org/software/gcc/,None,MATCH,  virtual/i5=
86-poky-linux-binutils mpfr-native gmp-native libmpc-native zlib-native tex=
info-dummy-native,GNU cc and gcc C compilers.,N/A,ftp://ftp.gnu.org/gnu/gcc=
/gcc-4.9.1/gcc-4.9.1.tar.bz2,Richard Purdie <richard.purdie@linuxfoundation=
=2Eorg>)
['xcmiscproto', '1.2.2', '1.2.2', 'MIT-style', 'x11/libs', 'http://www.x.or=
g', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedeskto=
p.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire p=
rotocol for the XC-MISC extension, which is used to get details of XID allo=
cations within the server.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/r=
eleases/individual/proto/xcmiscproto-1.2.2.tar.bz2', 'Ross Burton <ross.bur=
ton@intel.com>', 'None']
inserted (xcmiscproto,1.2.2,1.2.2,MIT-style,x11/libs,r0,1,http://www.x.org,=
https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  util-macros,This package provides the wire protocol for the =
XC-MISC extension, which is used to get details of XID allocations within t=
he server.,N/A,http://xorg.freedesktop.org/releases/individual/proto/xcmisc=
proto-1.2.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['harfbuzz', '0.9.29', '0.9.35', 'MIT', 'libs', 'http://www.freedesktop.org=
/wiki/Software/HarfBuzz', 'r0', 'pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 cairo f=
reetype', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3DHarfBuzz', =
'None', 'HarfBuzz is an OpenType text shaping engine.', 'UPDATE', 'N/A', 'h=
ttp://www.freedesktop.org/software/harfbuzz/release/harfbuzz-0.9.29.tar.bz2=
', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (harfbuzz,0.9.29,0.9.35,MIT,libs,r0,None,http://www.freedesktop.or=
g/wiki/Software/HarfBuzz,https://bugs.freedesktop.org/enter_bug.cgi?product=
=3DHarfBuzz,UPDATE,pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 cairo freetype,HarfBu=
zz is an OpenType text shaping engine.,N/A,http://www.freedesktop.org/softw=
are/harfbuzz/release/harfbuzz-0.9.29.tar.bz2,Cristian Iorga <cristian.iorga=
@intel.com>)
['xz', '5.1.3alpha', '5.1.3alpha', 'GPLv2+ & GPLv3+ & LGPLv2.1+ & PD', 'bas=
e', 'http://tukaani.org/xz/', 'r0', 'autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native virtual/gettext gettext-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  ', 'None', 'None', 'Utilities for managing LZMA compressed files.', 'MATC=
H', '5.0.4', 'http://tukaani.org/xz/xz-5.1.3alpha.tar.gz', 'Chen Qi <Qi.Che=
n@windriver.com>', 'None']
inserted (xz,5.1.3alpha,5.1.3alpha,GPLv2+ & GPLv3+ & LGPLv2.1+ & PD,base,r0=
,None,http://tukaani.org/xz/,None,MATCH,autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native virtual/gettext gettext-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  ,Utilities for managing LZMA compressed files.,5.0.4,http://tukaani.or=
g/xz/xz-5.1.3alpha.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['udev-extraconf', '1.1', 'INVALID', 'MIT', 'base', '', 'r0', ' virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'Non=
e', 'None', 'Extra machine specific configuration files for udev, specifica=
lly blacklist information.', 'MATCH', 'N/A', 'file://automount.rules', 'Sau=
l Wold <sgw@linux.intel.com>', 'None']
inserted (udev-extraconf,1.1,INVALID,MIT,base,r0,None,,None,MATCH, virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Ext=
ra machine specific configuration files for udev, specifically blacklist in=
formation.,N/A,file://automount.rules,Saul Wold <sgw@linux.intel.com>)
['mtools', '4.0.18', '4.0.18', 'GPLv3', 'optional', 'http://www.gnu.org/sof=
tware/mtools/', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc   texinfo-native', 'None', 'None', 'Mtools i=
s a collection of utilities to access MS-DOS disks from GNU and Unix withou=
t mounting them.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/mtools/mtools-4.0=
=2E18.tar.bz2', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (mtools,4.0.18,4.0.18,GPLv3,optional,r0,None,http://www.gnu.org/so=
ftware/mtools/,None,MATCH,autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc   texinfo-native,Mtools is a collection o=
f utilities to access MS-DOS disks from GNU and Unix without mounting them.=
,N/A,ftp://ftp.gnu.org/gnu/mtools/mtools-4.0.18.tar.bz2,Paul Eggleton <paul=
=2Eeggleton@linux.intel.com>)
['libxml-simple-perl', '2.20', '2.20', 'Artistic-1.0 | GPL-1.0', 'libs', 'h=
ttp://search.cpan.org/~markov/XML-LibXML-Simple-0.93/lib/XML/LibXML/Simple.=
pod', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc   libxml-parser-perl perl perl-native', 'None', 'None', 'T=
he XML::Simple Perl module provides a simple API layer on top of an underly=
ing XML parsing module to maintain XML files (especially configuration file=
s). It is a blunt rewrite of XML::Simple (by Grant McLean) to use the XML::=
LibXML parser for XML structures, where the original uses plain Perl or SAX=
 parsers.', 'MATCH', 'N/A', 'http://www.cpan.org/modules/by-module/XML/XML-=
Simple-2.20.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libxml-simple-perl,2.20,2.20,Artistic-1.0 | GPL-1.0,libs,r0,None,=
http://search.cpan.org/~markov/XML-LibXML-Simple-0.93/lib/XML/LibXML/Simple=
=2Epod,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc   libxml-parser-perl perl perl-native,The XML::Simple=
 Perl module provides a simple API layer on top of an underlying XML parsin=
g module to maintain XML files (especially configuration files). It is a bl=
unt rewrite of XML::Simple (by Grant McLean) to use the XML::LibXML parser =
for XML structures, where the original uses plain Perl or SAX parsers.,N/A,=
http://www.cpan.org/modules/by-module/XML/XML-Simple-2.20.tar.gz,Saul Wold =
<sgw@linux.intel.com>)
['cups', '1.7.4', '1.7.5', 'GPLv2 & LGPLv2', 'console/utils', '', 'r0', 'au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  gnutls libpng jpeg dbus dbus-glib zlib libusb avahi', 'None', 'None'=
, 'An Internet printing system for Unix.', 'UPDATE', '1.6.2', 'http://www.c=
ups.org/software/1.7.4/cups-1.7.4-source.tar.bz2', 'Saul Wold <sgw@linux.in=
tel.com>', 'None']
inserted (cups,1.7.4,1.7.5,GPLv2 & LGPLv2,console/utils,r0,None,,None,UPDAT=
E,autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  gnutls libpng jpeg dbus dbus-glib zlib libusb avahi,An Internet =
printing system for Unix.,1.6.2,http://www.cups.org/software/1.7.4/cups-1.7=
=2E4-source.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['mesa', '10.1.3', 'N/A', 'MIT', 'x11', 'http://mesa3d.org', 'r0', 'pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  expat makedepend-native f=
lex-native bison-native libxml2-native udev  python-native   dri2proto libd=
rm wayland xf86driproto glproto virtual/libx11 libxext libxxf86vm libxdamag=
e libxfixes', 'https://bugs.freedesktop.org', '2', 'Mesa is an open-source =
implementation of the OpenGL specification - a system for rendering interac=
tive 3D graphics.  A variety of device drivers allows Mesa to be used in ma=
ny different environments ranging from software emulation to complete hardw=
are acceleration for modern GPUs. Mesa is used as part of the overall Direc=
t Rendering Infrastructure and X.org environment.', 'ErrParseDir:/pub/mesa/=
10.1.3/:10.1.3:MesaLib-10.1.3.tar.bz2:ftp.freedesktop.org/pub/mesa/10.1.3/M=
esaLib-10.1.3.tar.bz2', 'N/A', 'ftp://ftp.freedesktop.org/pub/mesa/10.1.3/M=
esaLib-10.1.3.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (mesa,10.1.3,N/A,MIT,x11,r0,2,http://mesa3d.org,https://bugs.freed=
esktop.org,ErrParseDir:/pub/mesa/10.1.3/:10.1.3:MesaLib-10.1.3.tar.bz2:ftp.=
freedesktop.org/pub/mesa/10.1.3/MesaLib-10.1.3.tar.bz2,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
 virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  expat makedepend-native flex-native bi=
son-native libxml2-native udev  python-native   dri2proto libdrm wayland xf=
86driproto glproto virtual/libx11 libxext libxxf86vm libxdamage libxfixes,M=
esa is an open-source implementation of the OpenGL specification - a system=
 for rendering interactive 3D graphics.  A variety of device drivers allows=
 Mesa to be used in many different environments ranging from software emula=
tion to complete hardware acceleration for modern GPUs. Mesa is used as par=
t of the overall Direct Rendering Infrastructure and X.org environment.,N/A=
,ftp://ftp.freedesktop.org/pub/mesa/10.1.3/MesaLib-10.1.3.tar.bz2,Ross Burt=
on <ross.burton@intel.com>)
['gstreamer1.0-omx', '1.2.0', '1.2.0', 'LGPLv2.1', 'multimedia', 'http://ww=
w.gstreamer.net/', 'r1', 'pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  gstreamer1.0 gstreamer1.0-plugins-base', 'None', 'None', 'OpenMAX I=
L plugins for GStreamer.', 'MATCH', 'N/A', 'http://gstreamer.freedesktop.or=
g/src/gst-omx/gst-omx-1.2.0.tar.xz', 'None', 'None']
inserted (gstreamer1.0-omx,1.2.0,1.2.0,LGPLv2.1,multimedia,r1,None,http://w=
ww.gstreamer.net/,None,MATCH,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  gstreamer1.0 gstreamer1.0-plugins-base,OpenMAX IL plugins for GS=
treamer.,N/A,http://gstreamer.freedesktop.org/src/gst-omx/gst-omx-1.2.0.tar=
=2Exz,None)
['systemtap-uprobes', '2.5+gitAUTOINC+8f0fcd995f', '2.5+gitAUTOINC+97e8ab6'=
, 'GPLv2', 'base', '', 'r1', 'virtual/gettext gettext-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  systemtap=
 virtual/kernel', 'None', 'None', 'UProbes kernel module for SystemTap.', '=
UPDATE', 'N/A', 'git://sourceware.org/git/systemtap.git', 'Tom Zanussi <tom=
=2Ezanussi@intel.com>', 'None']
inserted (systemtap-uprobes,2.5+gitAUTOINC+8f0fcd995f,2.5+gitAUTOINC+97e8ab=
6,GPLv2,base,r1,None,,None,UPDATE,virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  syste=
mtap virtual/kernel,UProbes kernel module for SystemTap.,N/A,git://sourcewa=
re.org/git/systemtap.git,Tom Zanussi <tom.zanussi@intel.com>)
['quilt', '0.63', '0.63', 'GPLv2', 'devel', 'http://savannah.nongnu.org/pro=
jects/quilt/', 'r0', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'N=
one', 'Tool for working with series of patches.', 'MATCH', 'N/A', 'http://d=
ownload.savannah.gnu.org/releases/quilt/quilt-0.63.tar.gz', 'Chong Lu <Chon=
g.Lu@windriver.com>', 'None']
inserted (quilt,0.63,0.63,GPLv2,devel,r0,None,http://savannah.nongnu.org/pr=
ojects/quilt/,None,MATCH,autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Tool for =
working with series of patches.,N/A,http://download.savannah.gnu.org/releas=
es/quilt/quilt-0.63.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['gcc-runtime', '4.9.1', '4.9.1', 'GPL-3.0-with-GCC-exception & GPLv3', 'de=
vel', 'http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automake-n=
ative libtool-native gnu-config-native   virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-g++ libgcc texinfo-native', 'None', 'None', 'GNU cc and g=
cc C compilers.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-=
4.9.1.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (gcc-runtime,4.9.1,4.9.1,GPL-3.0-with-GCC-exception & GPLv3,devel,=
r0,None,http://www.gnu.org/software/gcc/,None,MATCH,autoconf-native automak=
e-native libtool-native gnu-config-native   virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-g++ libgcc texinfo-native,GNU cc and gcc C compilers.,=
N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2,Saul Wold <sgw@li=
nux.intel.com>)
['pkgconfig', '0.28', '0.28', 'GPLv2+', 'console/utils', 'http://pkg-config=
=2Efreedesktop.org/wiki/', 'r0', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  glib-2.0', 'http://bugs.freedesk=
top.org/buglist.cgi?product=3Dpkg-config', 'None', 'pkg-config is a helper =
tool used when compiling applications and libraries. It helps determined th=
e correct compiler/link options.  It is also language-agnostic.', 'MATCH', =
'N/A', 'http://pkgconfig.freedesktop.org/releases/pkg-config-0.28.tar.gz', =
'Saul Wold <sgw@linux.intel.com>', 'removes glib-conf, adds circular depend=
s']
inserted (pkgconfig,0.28,0.28,GPLv2+,console/utils,r0,None,http://pkg-confi=
g.freedesktop.org/wiki/,http://bugs.freedesktop.org/buglist.cgi?product=3Dp=
kg-config,MATCH,autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  glib-2.0,pkg-config is a helper tool used when com=
piling applications and libraries. It helps determined the correct compiler=
/link options.  It is also language-agnostic.,N/A,http://pkgconfig.freedesk=
top.org/releases/pkg-config-0.28.tar.gz,Saul Wold <sgw@linux.intel.com>)
['libxfixes', '5.0.1', '5.0.1', 'MIT-style', 'x11/libs', 'http://www.x.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros virtual/libx11 xproto fixesp=
roto xextproto', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg=
', '1', 'X applications have often needed to work around various shortcomin=
gs in the core X window system.  This extension is designed to provide the =
minimal server-side support necessary to eliminate problems caused by these=
 workarounds.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/indiv=
idual/lib/libXfixes-5.0.1.tar.bz2', 'Ross Burton <ross.burton@intel.com>', =
'None']
inserted (libxfixes,5.0.1,5.0.1,MIT-style,x11/libs,r0,1,http://www.x.org,ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  util-macros virtual/libx11 xproto fixesproto xextproto,X appli=
cations have often needed to work around various shortcomings in the core X=
 window system.  This extension is designed to provide the minimal server-s=
ide support necessary to eliminate problems caused by these workarounds.,N/=
A,http://xorg.freedesktop.org/releases/individual/lib/libXfixes-5.0.1.tar.b=
z2,Ross Burton <ross.burton@intel.com>)
['kconfig-frontends', '3.12.0.0', '3.12.0.0', 'GPL-2.0', 'devel', 'http://y=
morin.is-a-geek.org/projects/kconfig-frontends', 'r0', 'autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   ncurses f=
lex bison gperf-native pkgconfig-native', 'None', 'None', 'The kconfig-fron=
tends project aims at centralising the effort of keeping an up-to-date, out=
-of-tree, packaging of the kconfig infrastructure, ready for use by third-p=
arty projects. The kconfig-frontends package provides the kconfig parser, a=
s well as all the frontends', 'MATCH', 'N/A', 'http://ymorin.is-a-geek.org/=
download/kconfig-frontends/kconfig-frontends-3.12.0.0.tar.xz', 'Saul Wold <=
sgw@linux.intel.com>', 'PRS Reports Incorrectly']
inserted (kconfig-frontends,3.12.0.0,3.12.0.0,GPL-2.0,devel,r0,None,http://=
ymorin.is-a-geek.org/projects/kconfig-frontends,None,MATCH,autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   ncurse=
s flex bison gperf-native pkgconfig-native,The kconfig-frontends project ai=
ms at centralising the effort of keeping an up-to-date, out-of-tree, packag=
ing of the kconfig infrastructure, ready for use by third-party projects. T=
he kconfig-frontends package provides the kconfig parser, as well as all th=
e frontends,N/A,http://ymorin.is-a-geek.org/download/kconfig-frontends/kcon=
fig-frontends-3.12.0.0.tar.xz,Saul Wold <sgw@linux.intel.com>)
['xorg-minimal-fonts', '1.0', 'INVALID', 'PD', 'x11/fonts', 'http://www.x.o=
rg', 'r2', ' ', 'None', '1', 'Minimal fonts required by X.org.', 'MATCH', '=
N/A', 'file://misc', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xorg-minimal-fonts,1.0,INVALID,PD,x11/fonts,r2,1,http://www.x.org=
,None,MATCH, ,Minimal fonts required by X.org.,N/A,file://misc,Ross Burton =
<ross.burton@intel.com>)
['libxpm', '3.5.11', '3.5.11', 'BSD', 'x11/libs', 'http://www.x.org', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros libx=
ext libsm libxt', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxor=
g', '1', 'libXpm provides support and common operation for the XPM pixmap f=
ormat, which is commonly used in legacy X applications.  XPM is an extensio=
n of the monochrome XBM bitmap specificied in the X protocol.', 'MATCH', 'N=
/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXpm-3.5.11.tar=
=2Ebz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxpm,3.5.11,3.5.11,BSD,x11/libs,r0,1,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
 virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  util-macros libxext libsm libxt,libXpm=
 provides support and common operation for the XPM pixmap format, which is =
commonly used in legacy X applications.  XPM is an extension of the monochr=
ome XBM bitmap specificied in the X protocol.,N/A,http://xorg.freedesktop.o=
rg/releases/individual/lib/libXpm-3.5.11.tar.bz2,Ross Burton <ross.burton@i=
ntel.com>)
['connman-conf', '1.0', 'INVALID', 'GPLv2', 'base', '', 'r2', ' virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'Non=
e', 'None', 'This is the ConnMan configuration to set up a Wired network in=
terface for a qemu machine.', 'MATCH', 'N/A', 'file://wired.config', 'None'=
, 'None']
inserted (connman-conf,1.0,INVALID,GPLv2,base,r2,None,,None,MATCH, virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Thi=
s is the ConnMan configuration to set up a Wired network interface for a qe=
mu machine.,N/A,file://wired.config,None)
['libpcre', '8.35', '8.35', 'BSD', 'devel', 'http://www.pcre.org', 'r0', 'a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc   bzip2 zlib', 'None', 'None', 'The PCRE library is a set of functio=
ns that implement regular expression pattern matching using the same syntax=
 and semantics as Perl 5. PCRE has its own native API, as well as a set of =
wrapper functions that correspond to the POSIX regular expression API.', 'M=
ATCH', 'N/A', 'http://downloads.sourceforge.net/project/pcre/pcre/8.35/pcre=
-8.35.tar.bz2', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (libpcre,8.35,8.35,BSD,devel,r0,None,http://www.pcre.org,None,MATC=
H,autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc   bzip2 zlib,The PCRE library is a set of functions that implemen=
t regular expression pattern matching using the same syntax and semantics a=
s Perl 5. PCRE has its own native API, as well as a set of wrapper function=
s that correspond to the POSIX regular expression API.,N/A,http://downloads=
=2Esourceforge.net/project/pcre/pcre/8.35/pcre-8.35.tar.bz2,Chong Lu <Chong=
=2ELu@windriver.com>)
['dosfstools', '2.11', 'N/A', 'GPLv2', 'base', '', 'r5', ' virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', '=
None', 'DOS FAT Filesystem Utilities.', 'ErrHostNoDir:/pub/Linux/LOCAL/dosf=
stools/:-:dosfstools-2.11.src.tar.gz:ftp.uni-erlangen.de/pub/Linux/LOCAL/do=
sfstools/dosfstools-2.11.src.tar.gz', 'N/A', 'ftp://ftp.uni-erlangen.de/pub=
/Linux/LOCAL/dosfstools/dosfstools-2.11.src.tar.gz', 'Paul Eggleton <paul.e=
ggleton@linux.intel.com>', 'None']
inserted (dosfstools,2.11,N/A,GPLv2,base,r5,None,,None,ErrHostNoDir:/pub/Li=
nux/LOCAL/dosfstools/:-:dosfstools-2.11.src.tar.gz:ftp.uni-erlangen.de/pub/=
Linux/LOCAL/dosfstools/dosfstools-2.11.src.tar.gz, virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,DOS FAT Filesystem =
Utilities.,N/A,ftp://ftp.uni-erlangen.de/pub/Linux/LOCAL/dosfstools/dosfsto=
ols-2.11.src.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['lighttpd', '1.4.35', '1.4.35', 'BSD', 'net', 'http://www.lighttpd.net/', =
'r1', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib libpcr=
e update-rc.d-native initscripts', 'http://redmine.lighttpd.net/projects/li=
ghttpd/issues', 'None', 'Lightweight high-performance web server.', 'MATCH'=
, 'N/A', 'http://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4=
=2E35.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (lighttpd,1.4.35,1.4.35,BSD,net,r1,None,http://www.lighttpd.net/,h=
ttp://redmine.lighttpd.net/projects/lighttpd/issues,MATCH,pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  zlib libpcre update-rc.d-native ini=
tscripts,Lightweight high-performance web server.,N/A,http://download.light=
tpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.35.tar.bz2,Ross Burton <ross.b=
urton@intel.com>)
['latencytop', '0.5', 'N/A', 'GPLv2', 'base', 'http://www.latencytop.org/',=
 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  virtual/libintl ncurses glib-2.0  gtk+', 'None', 'None', 'Linu=
x tool for measuring and fixing latency.', 'ErrHostNoDir:/download/:-:laten=
cytop-0.5.tar.gz:www.latencytop.org/download/latencytop-0.5.tar.gz', 'N/A',=
 'http://www.latencytop.org/download/latencytop-0.5.tar.gz', 'Richard Purdi=
e <richard.purdie@linuxfoundation.org>', 'None']
inserted (latencytop,0.5,N/A,GPLv2,base,r3,None,http://www.latencytop.org/,=
None,ErrHostNoDir:/download/:-:latencytop-0.5.tar.gz:www.latencytop.org/dow=
nload/latencytop-0.5.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  virtual/libintl ncurses glib-2.0  gtk+,Lin=
ux tool for measuring and fixing latency.,N/A,http://www.latencytop.org/dow=
nload/latencytop-0.5.tar.gz,Richard Purdie <richard.purdie@linuxfoundation.=
org>)
['lrzsz', '0.12.20', '0.12.20', 'GPLv2+', 'console/network', 'http://www.oh=
se.de/uwe/software/lrzsz.html', 'r6', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc   virtual/update-alternatives', 'None', 'None', "Lrzsz is a cosmetically=
 modified zmodem/ymodem/xmodem package built from the public-domain version=
 of Chuck Forsberg's rzsz package. These programs use error correcting prot=
ocols ({z,x,y}modem) to send (sz, sx, sb) and receive (rz, rx, rb) files ov=
er a dial-in serial port from a variety of programs running under various o=
perating systems. ", 'MATCH', 'N/A', 'http://www.ohse.de/uwe/releases/lrzsz=
-0.12.20.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (lrzsz,0.12.20,0.12.20,GPLv2+,console/network,r6,None,http://www.o=
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
['hdparm', '9.43', '9.43', 'BSD', 'console/utils', '', 'r0', ' virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual=
/update-alternatives', 'None', 'None', 'hdparm is a Linux shell utility for=
 viewing and manipulating various IDE drive and driver parameters.', 'MATCH=
', 'N/A', 'http://downloads.sourceforge.net/hdparm/hdparm-9.43.tar.gz', 'Sa=
ul Wold <sgw@linux.intel.com>', 'None']
inserted (hdparm,9.43,9.43,BSD,console/utils,r0,None,,None,MATCH, virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virt=
ual/update-alternatives,hdparm is a Linux shell utility for viewing and man=
ipulating various IDE drive and driver parameters.,N/A,http://downloads.sou=
rceforge.net/hdparm/hdparm-9.43.tar.gz,Saul Wold <sgw@linux.intel.com>)
['xf86-input-vmmouse', '13.0.0', '13.0.0', 'MIT-X', 'x11/drivers', 'http://=
www.x.org', 'r21.0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto rand=
rproto util-macros inputproto kbproto ', 'https://bugs.freedesktop.org', '2=
', "The vmmouse driver enables support for the special VMMouse protocol tha=
t is provided by VMware virtual machines to give absolute pointer positioni=
ng. The vmmouse driver is capable of falling back to the standard 'mouse' d=
river if a VMware virtual machine is not detected.", 'MATCH', 'N/A', 'http:=
//xorg.freedesktop.org/releases/individual/driver/xf86-input-vmmouse-13.0.0=
=2Etar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86-input-vmmouse,13.0.0,13.0.0,MIT-X,x11/drivers,r21.0,2,http:/=
/www.x.org,https://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  vir=
tual/xserver xproto randrproto util-macros inputproto kbproto ,The vmmouse =
driver enables support for the special VMMouse protocol that is provided by=
 VMware virtual machines to give absolute pointer positioning. The vmmouse =
driver is capable of falling back to the standard 'mouse' driver if a VMwar=
e virtual machine is not detected.,N/A,http://xorg.freedesktop.org/releases=
/individual/driver/xf86-input-vmmouse-13.0.0.tar.bz2,Ross Burton <ross.burt=
on@intel.com>)
['libevent', '2.0.21', '2.0.21', 'BSD', 'libs', 'http://libevent.org/', 'r1=
', 'autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  ', 'http://sourceforge.net/tracker/?group_id=3D50884&atid=3D46=
1322', 'None', 'An asynchronous event notification library.', 'MATCH', 'N/A=
', 'http://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.ta=
r.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (libevent,2.0.21,2.0.21,BSD,libs,r1,None,http://libevent.org/,http=
://sourceforge.net/tracker/?group_id=3D50884&atid=3D461322,MATCH,autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,=
An asynchronous event notification library.,N/A,http://github.com/downloads=
/libevent/libevent/libevent-2.0.21-stable.tar.gz,Paul Eggleton <paul.egglet=
on@linux.intel.com>)
['gtk-theme-torturer', '0.0.0+gitAUTOINC+99962ae39b', '0.0.0+gitAUTOINC+999=
62ae', 'GPLv2', 'devel', 'http://wiki.laptop.org/go/GTK_for_OLPC', 'r0', ' =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  gtk+', 'None', 'None', 'GTK+ Theme benchmark program.', 'MATCH', 'N/A',=
 'git://dev.laptop.org/projects/soc-gtk/', 'Ross Burton <ross.burton@intel.=
com>', 'None']
inserted (gtk-theme-torturer,0.0.0+gitAUTOINC+99962ae39b,0.0.0+gitAUTOINC+9=
9962ae,GPLv2,devel,r0,None,http://wiki.laptop.org/go/GTK_for_OLPC,None,MATC=
H, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  gtk+,GTK+ Theme benchmark program.,N/A,git://dev.laptop.org/projects=
/soc-gtk/,Ross Burton <ross.burton@intel.com>)
['gst-ffmpeg', '0.10.13', '0.10.13', 'GPLv2+ & LGPLv2+ & ( (GPLv2+ & LGPLv2=
=2E1+) | (GPLv3+ & LGPLv3+) )', 'multimedia', 'http://www.gstreamer.net/', =
'r8', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  gstreamer gst-plugins-base zlib bzip2 yasm=
-native libav', 'None', 'None', 'FFmpeg-based GStreamer plug-in.', 'MATCH',=
 'N/A', 'http://gstreamer.freedesktop.org/src/gst-ffmpeg/gst-ffmpeg-0.10.13=
=2Etar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', 'not compatible w=
ith gst-fluendo 0.10.x']
inserted (gst-ffmpeg,0.10.13,0.10.13,GPLv2+ & LGPLv2+ & ( (GPLv2+ & LGPLv2.=
1+) | (GPLv3+ & LGPLv3+) ),multimedia,r8,None,http://www.gstreamer.net/,Non=
e,MATCH,pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base zlib bzip2 yas=
m-native libav,FFmpeg-based GStreamer plug-in.,N/A,http://gstreamer.freedes=
ktop.org/src/gst-ffmpeg/gst-ffmpeg-0.10.13.tar.bz2,Cristian Iorga <cristian=
=2Eiorga@intel.com>)
['libsdl', '1.2.15', '1.2.15-1', 'LGPLv2.1', 'libs', 'http://www.libsdl.org=
', 'r3', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc              virtual/libgl libglu       =
     virtual/libx11 libxext libxrandr libxrender            tslib alsa-lib'=
, 'http://bugzilla.libsdl.org/', 'None', 'Simple DirectMedia Layer is a cro=
ss-platform multimedia library designed to provide low level access to audi=
o, keyboard, mouse, joystick, 3D hardware via OpenGL, and 2D video framebuf=
fer.', 'UPDATE', 'N/A', 'http://www.libsdl.org/release/SDL-1.2.15.tar.gz', =
'Kai Kang <kai.kang@windriver.com>', 'None']
inserted (libsdl,1.2.15,1.2.15-1,LGPLv2.1,libs,r3,None,http://www.libsdl.or=
g,http://bugzilla.libsdl.org/,UPDATE,pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc              =
virtual/libgl libglu            virtual/libx11 libxext libxrandr libxrender=
            tslib alsa-lib,Simple DirectMedia Layer is a cross-platform mul=
timedia library designed to provide low level access to audio, keyboard, mo=
use, joystick, 3D hardware via OpenGL, and 2D video framebuffer.,N/A,http:/=
/www.libsdl.org/release/SDL-1.2.15.tar.gz,Kai Kang <kai.kang@windriver.com>)
['dpkg', '1.17.4', '1.17.12', 'GPLv2.0+', 'base', '', 'r0', 'pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  zlib bzip2 perl ncurses perl-nat=
ive', 'None', 'None', 'Package maintenance system from Debian.', 'UPDATE', =
'N/A', 'ftp://ftp.debian.org/debian/pool/main/d/dpkg/dpkg_1.17.4.tar.xz', '=
Saul Wold <sgw@linux.intel.com>', 'None']
inserted (dpkg,1.17.4,1.17.12,GPLv2.0+,base,r0,None,,None,UPDATE,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  zlib bzip2 perl ncurses perl=
-native,Package maintenance system from Debian.,N/A,ftp://ftp.debian.org/de=
bian/pool/main/d/dpkg/dpkg_1.17.4.tar.xz,Saul Wold <sgw@linux.intel.com>)
['beecrypt', '4.2.1', '4.2.1', 'GPLv2 & LGPLv2.1', 'base', 'http://sourcefo=
rge.net/projects/beecrypt', 'r3', 'autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'A general-p=
urpose cryptography library.', 'MATCH', 'N/A', 'http://downloads.sourceforg=
e.net/beecrypt/beecrypt-4.2.1.tar.gz', 'Chong Lu <Chong.Lu@windriver.com>',=
 'None']
inserted (beecrypt,4.2.1,4.2.1,GPLv2 & LGPLv2.1,base,r3,None,http://sourcef=
orge.net/projects/beecrypt,None,MATCH,autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  ,A general-purpose cryptogra=
phy library.,N/A,http://downloads.sourceforge.net/beecrypt/beecrypt-4.2.1.t=
ar.gz,Chong Lu <Chong.Lu@windriver.com>)
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
['grep', '2.19', '2.20', 'GPLv3', 'console/utils', 'http://savannah.gnu.org=
/projects/grep/', 'r0', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-n=
ative virtual/update-alternatives', 'http://savannah.gnu.org/bugs/?group=3D=
grep', 'None', 'GNU grep utility.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu=
/grep/grep-2.19.tar.xz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (grep,2.19,2.20,GPLv3,console/utils,r0,None,http://savannah.gnu.or=
g/projects/grep/,http://savannah.gnu.org/bugs/?group=3Dgrep,UPDATE,autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native virt=
ual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc   texinfo-native virtual/update-alternatives=
,GNU grep utility.,N/A,ftp://ftp.gnu.org/gnu/grep/grep-2.19.tar.xz,Chen Qi =
<Qi.Chen@windriver.com>)
['guile', '2.0.11', '2.0.11', 'GPLv3', 'devel', 'http://www.gnu.org/softwar=
e/guile/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native virtual/gettext gettext-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
libunistring bdwgc gmp libtool libffi ncurses readline texinfo-native guile=
-native libatomics-ops', 'None', 'None', "Guile is the GNU Ubiquitous Intel=
ligent Language for Extensions, the official extension language for the GNU=
 operating system. Guile is a library designed to help programmers create f=
lexible applications. Using Guile in an application allows the application'=
s functionality to be extended by users or other programmers with plug-ins,=
 modules, or scripts. Guile provides what might be described as 'practical =
software freedom,' making it possible for users to customize an application=
 to meet their needs without digging into the application's internals.", 'M=
ATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/guile/guile-2.0.11.tar.xz', 'Chong Lu =
<Chong.Lu@windriver.com>', 'None']
inserted (guile,2.0.11,2.0.11,GPLv3,devel,r0,None,http://www.gnu.org/softwa=
re/guile/,None,MATCH,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  libunistring bdwgc gmp libtool libffi ncurses readline texinfo-native gu=
ile-native libatomics-ops,Guile is the GNU Ubiquitous Intelligent Language =
for Extensions, the official extension language for the GNU operating syste=
m. Guile is a library designed to help programmers create flexible applicat=
ions. Using Guile in an application allows the application's functionality =
to be extended by users or other programmers with plug-ins, modules, or scr=
ipts. Guile provides what might be described as 'practical software freedom=
,' making it possible for users to customize an application to meet their n=
eeds without digging into the application's internals.,N/A,ftp://ftp.gnu.or=
g/gnu/guile/guile-2.0.11.tar.xz,Chong Lu <Chong.Lu@windriver.com>)
['python-scons', '2.3.2', '2.3.2', 'MIT', 'devel/python', '', 'r0', ' virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   =
python-native python  python-native ', 'None', 'None', 'Software Constructi=
on tool (make/autotools replacement).', 'MATCH', 'N/A', 'http://downloads.s=
ourceforge.net/scons/scons-2.3.2.tar.gz', 'Richard Purdie <richard.purdie@l=
inuxfoundation.org>', 'None']
inserted (python-scons,2.3.2,2.3.2,MIT,devel/python,r0,None,,None,MATCH, vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
   python-native python  python-native ,Software Construction tool (make/au=
totools replacement).,N/A,http://downloads.sourceforge.net/scons/scons-2.3.=
2.tar.gz,Richard Purdie <richard.purdie@linuxfoundation.org>)
['dtc', '1.4.0+gitAUTOINC+65cc4d2748', '1.4.0+gitAUTOINC+65cc4d2', 'GPLv2 |=
 BSD', 'bootloader', '', 'r0', 'autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  flex-native bison-native', 'None',=
 'None', 'The Device Tree Compiler is a tool used to manipulate the Open-Fi=
rmware-like device tree used by PowerPC kernels.', 'MATCH', 'N/A', 'git://w=
ww.jdl.com/software/dtc.git', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (dtc,1.4.0+gitAUTOINC+65cc4d2748,1.4.0+gitAUTOINC+65cc4d2,GPLv2 | =
BSD,bootloader,r0,None,,None,MATCH,autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  flex-native bison-native,The De=
vice Tree Compiler is a tool used to manipulate the Open-Firmware-like devi=
ce tree used by PowerPC kernels.,N/A,git://www.jdl.com/software/dtc.git,Sau=
l Wold <sgw@linux.intel.com>)
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
['serf', '1.3.6', '1.3.7', 'Apache-2.0', 'base', '', 'r0', ' virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  python-sco=
ns-native openssl apr apr-util util-linux expat', 'None', 'None', 'serf ver=
sion 1.3.6-r0.', 'UPDATE', 'N/A', 'http://serf.googlecode.com/svn/src_relea=
ses/serf-1.3.6.tar.bz2', 'None', 'None']
inserted (serf,1.3.6,1.3.7,Apache-2.0,base,r0,None,,None,UPDATE, virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  python=
-scons-native openssl apr apr-util util-linux expat,serf version 1.3.6-r0.,=
N/A,http://serf.googlecode.com/svn/src_releases/serf-1.3.6.tar.bz2,None)
['libxv', '1.0.10', '1.0.10', 'MIT-style', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros libxext videoproto', 'https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'libXv provides=
 an X Window System client interface to the X Video extension to the X prot=
ocol. The X Video extension allows for accelerated drawing of videos.  Hard=
ware adaptors are exposed to clients, which may draw in a number of colours=
paces, including YUV.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releas=
es/individual/lib/libXv-1.0.10.tar.bz2', 'Ross Burton <ross.burton@intel.co=
m>', 'None']
inserted (libxv,1.0.10,1.0.10,MIT-style,x11/libs,r0,None,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  util-macros libxext videoproto,libXv provides an X Window Sys=
tem client interface to the X Video extension to the X protocol. The X Vide=
o extension allows for accelerated drawing of videos.  Hardware adaptors ar=
e exposed to clients, which may draw in a number of colourspaces, including=
 YUV.,N/A,http://xorg.freedesktop.org/releases/individual/lib/libXv-1.0.10.=
tar.bz2,Ross Burton <ross.burton@intel.com>)
['python-mako', '0.9.1', '1.0.0', 'MIT', 'devel/python', '', 'r0', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   p=
ython-native python  python-native  python-distribute-native', 'None', 'Non=
e', 'Templating library for Python.', 'UPDATE', 'N/A', 'https://pypi.python=
=2Eorg/packages/source/M/Mako/Mako-0.9.1.tar.gz', 'None', 'None']
inserted (python-mako,0.9.1,1.0.0,MIT,devel/python,r0,None,,None,UPDATE, vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
   python-native python  python-native  python-distribute-native,Templating=
 library for Python.,N/A,https://pypi.python.org/packages/source/M/Mako/Mak=
o-0.9.1.tar.gz,None)
['pong-clock', '1.0', 'INVALID', 'GPLv2+', 'base', '', 'r0', ' virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/=
libx11 xdmcp xau', 'None', 'None', 'A clock combined with a game of pong.',=
 'MATCH', '1.0', 'file://pong-clock-no-flicker.c', 'Ross Burton <ross.burto=
n@intel.com>', 'None']
inserted (pong-clock,1.0,INVALID,GPLv2+,base,r0,None,,None,MATCH, virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtu=
al/libx11 xdmcp xau,A clock combined with a game of pong.,1.0,file://pong-c=
lock-no-flicker.c,Ross Burton <ross.burton@intel.com>)
['linux-yocto', '3.14.5+gitAUTOINC+b2af4e3528_5b327970eb', '3.14.13+gitAUTO=
INC+fcf0e4d', 'GPLv2', 'kernel', '', 'r0', '  xz-native bc-native virtual/i=
586-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native depmodwrapp=
er-cross', 'None', 'None', 'Yocto Kernel', 'UPDATE', 'N/A', 'git://git.yoct=
oproject.org/linux-yocto-3.14.git;bareclone=3D1;branch=3Dstandard/common-pc=
/base,meta;name=3Dmachine,meta', 'Darren Hart <dvhart@linux.intel.com>', 'N=
one']
inserted (linux-yocto,3.14.5+gitAUTOINC+b2af4e3528_5b327970eb,3.14.13+gitAU=
TOINC+fcf0e4d,GPLv2,kernel,r0,None,,None,UPDATE,  xz-native bc-native virtu=
al/i586-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native depmodw=
rapper-cross,Yocto Kernel,N/A,git://git.yoctoproject.org/linux-yocto-3.14.g=
it;bareclone=3D1;branch=3Dstandard/common-pc/base,meta;name=3Dmachine,meta,=
Darren Hart <dvhart@linux.intel.com>)
['gtk-update-icon-cache-native', '3.4.4', '3.13.7', 'LGPLv2 & LGPLv2+ & LGP=
Lv2.1+', 'libs', '', 'r0', 'pkgconfig-native  gdk-pixbuf-native', 'None', '=
None', 'Just gtk-update-icon-cache built from GTK+ natively, for on-host po=
stinst script execution.', 'UPDATE', 'N/A', 'http://download.gnome.org/sour=
ces/gtk+/3.4/gtk+-3.4.4.tar.xz', 'Ross Burton <ross.burton@intel.com>', 'No=
ne']
inserted (gtk-update-icon-cache-native,3.4.4,3.13.7,LGPLv2 & LGPLv2+ & LGPL=
v2.1+,libs,r0,None,,None,UPDATE,pkgconfig-native  gdk-pixbuf-native,Just gt=
k-update-icon-cache built from GTK+ natively, for on-host postinst script e=
xecution.,N/A,http://download.gnome.org/sources/gtk+/3.4/gtk+-3.4.4.tar.xz,=
Ross Burton <ross.burton@intel.com>)
['builder', '0.1', 'INVALID', 'MIT', 'x11', '', 'r6', ' virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   base-files bas=
e-passwd shadow-native shadow-sysroot shadow', 'None', 'None', 'This recipe=
 create a new user named builder, who is used for specific jobs like buildi=
ng. The task can be auto started via mini X', 'MATCH', 'N/A', 'file://build=
er_hob_start.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (builder,0.1,INVALID,MIT,x11,r6,None,,None,MATCH, virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   base-files =
base-passwd shadow-native shadow-sysroot shadow,This recipe create a new us=
er named builder, who is used for specific jobs like building. The task can=
 be auto started via mini X,N/A,file://builder_hob_start.sh,Saul Wold <sgw@=
linux.intel.com>)
['matchbox-desktop-sato', '0.1+gitAUTOINC+810b0b08eb', '0.1+gitAUTOINC+810b=
0b0', 'GPLv2', 'x11', 'http://matchbox-project.org', 'r1', 'pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  ', 'http://bugzilla.yoctoproject.org/', 'None', 'Matchbox deskto=
p folders for the Sato environment.', 'MATCH', 'N/A', 'git://git.yoctoproje=
ct.org/matchbox-desktop-sato', 'Ross Burton <ross.burton@intel.com>', 'None=
']
inserted (matchbox-desktop-sato,0.1+gitAUTOINC+810b0b08eb,0.1+gitAUTOINC+81=
0b0b0,GPLv2,x11,r1,None,http://matchbox-project.org,http://bugzilla.yoctopr=
oject.org/,MATCH,pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ,Matchbox desktop folders for th=
e Sato environment.,N/A,git://git.yoctoproject.org/matchbox-desktop-sato,Ro=
ss Burton <ross.burton@intel.com>)
['xf86-input-mouse', '1.9.0', '1.9.1', 'MIT-X', 'x11/drivers', 'http://www.=
x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randrproto =
util-macros inputproto kbproto ', 'https://bugs.freedesktop.org', '2', "mou=
se is an Xorg input driver for mice. The driver supports most available mou=
se types and interfaces.  The mouse driver functions as a pointer input dev=
ice, and may be used as the X server's core pointer. Multiple mice are supp=
orted by multiple instances of this driver.", 'UPDATE', 'N/A', 'http://xorg=
=2Efreedesktop.org/releases/individual/driver/xf86-input-mouse-1.9.0.tar.bz=
2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86-input-mouse,1.9.0,1.9.1,MIT-X,x11/drivers,r0,2,http://www.x.=
org,https://bugs.freedesktop.org,UPDATE,pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/x=
server xproto randrproto util-macros inputproto kbproto ,mouse is an Xorg i=
nput driver for mice. The driver supports most available mouse types and in=
terfaces.  The mouse driver functions as a pointer input device, and may be=
 used as the X server's core pointer. Multiple mice are supported by multip=
le instances of this driver.,N/A,http://xorg.freedesktop.org/releases/indiv=
idual/driver/xf86-input-mouse-1.9.0.tar.bz2,Ross Burton <ross.burton@intel.=
com>)
['hicolor-icon-theme', '0.12', '0.13', 'GPLv2', 'unknown', 'http://icon-the=
me.freedesktop.org/wiki/HicolorTheme', 'r1', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native gnu-config-native   gnome-common-native'=
, 'https://bugs.freedesktop.org/', 'None', 'Default icon theme that all ico=
n themes automatically inherit from.', 'UPDATE', 'N/A', 'http://icon-theme.=
freedesktop.org/releases/hicolor-icon-theme-0.12.tar.gz', 'Ross Burton <ros=
s.burton@intel.com>', 'None']
inserted (hicolor-icon-theme,0.12,0.13,GPLv2,unknown,r1,None,http://icon-th=
eme.freedesktop.org/wiki/HicolorTheme,https://bugs.freedesktop.org/,UPDATE,=
pkgconfig-native autoconf-native automake-native libtool-native gnu-config-=
native   gnome-common-native,Default icon theme that all icon themes automa=
tically inherit from.,N/A,http://icon-theme.freedesktop.org/releases/hicolo=
r-icon-theme-0.12.tar.gz,Ross Burton <ross.burton@intel.com>)
['pointercal', '0.0', 'INVALID', 'MIT', 'base', '', 'r11', ' ', 'None', 'No=
ne', 'Touchscreen calibration data.', 'MATCH', '0.0', 'file://pointercal', =
'Ross Burton <ross.burton@intel.com>', 'None']
inserted (pointercal,0.0,INVALID,MIT,base,r11,None,,None,MATCH, ,Touchscree=
n calibration data.,0.0,file://pointercal,Ross Burton <ross.burton@intel.co=
m>)
['libcroco', '0.6.8', '0.6.8', 'LGPLv2 & LGPLv2.1', 'x11/utils', 'http://ww=
w.gnome.org/', 'r1', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 libxml2 zlib gnome=
-common-native gtk-doc-stub-native', 'https://bugzilla.gnome.org/', 'None',=
 'Cascading Style Sheet (CSS) parsing and manipulation toolkit.', 'MATCH', =
'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/libcroco/0.6/libcroco-0.6.8.=
tar.xz;name=3Darchive', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libcroco,0.6.8,0.6.8,LGPLv2 & LGPLv2.1,x11/utils,r1,None,http://w=
ww.gnome.org/,https://bugzilla.gnome.org/,MATCH,pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  g=
lib-2.0 libxml2 zlib gnome-common-native gtk-doc-stub-native,Cascading Styl=
e Sheet (CSS) parsing and manipulation toolkit.,N/A,http://ftp.gnome.org/pu=
b/GNOME/sources/libcroco/0.6/libcroco-0.6.8.tar.xz;name=3Darchive,Ross Burt=
on <ross.burton@intel.com>)
['xf86-video-modesetting', '0.8.1', '0.9.0', 'MIT-X', 'x11/drivers', 'http:=
//www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextp=
roto fontsproto virtual/xserver xproto randrproto util-macros', 'https://bu=
gs.freedesktop.org', '2', 'Provides a generic kernel modesetting display dr=
iver for the X.Org X server.', 'UPDATE', 'N/A', 'http://xorg.freedesktop.or=
g/releases/individual/driver/xf86-video-modesetting-0.8.1.tar.bz2', 'None',=
 'None']
inserted (xf86-video-modesetting,0.8.1,0.9.0,MIT-X,x11/drivers,r0,2,http://=
www.x.org,https://bugs.freedesktop.org,UPDATE,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ren=
derproto videoproto xextproto fontsproto virtual/xserver xproto randrproto =
util-macros,Provides a generic kernel modesetting display driver for the X.=
Org X server.,N/A,http://xorg.freedesktop.org/releases/individual/driver/xf=
86-video-modesetting-0.8.1.tar.bz2,None)
['libowl', '0.1+gitAUTOINC+6ebc8ac8f8', '0.1+gitAUTOINC+6ebc8ac', 'GPLv2 & =
LGPLv2+', 'libs', 'http://www.o-hand.com', 'r0', 'pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 gtk+', 'http://bugzilla.yoctoproject.org/', 'None', 'OpenedHand Widget Lib=
rary.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/libowl', 'Ross Burton <=
ross.burton@intel.com>', 'None']
inserted (libowl,0.1+gitAUTOINC+6ebc8ac8f8,0.1+gitAUTOINC+6ebc8ac,GPLv2 & L=
GPLv2+,libs,r0,None,http://www.o-hand.com,http://bugzilla.yoctoproject.org/=
,MATCH,pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  gtk+,OpenedHand Widget Library.,N/A,git://=
git.yoctoproject.org/libowl,Ross Burton <ross.burton@intel.com>)
['shadow-sysroot', '4.2.1', 'INVALID', 'BSD | Artistic-1.0', 'base utils', =
'http://pkg-shadow.alioth.debian.org', 'r3', ' virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  base-passwd', 'https://a=
lioth.debian.org/tracker/?group_id=3D30580', 'None', 'Shadow utils requirem=
ents for useradd.bbclass.', 'MATCH', 'N/A', 'file://login.defs_shadow-sysro=
ot', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (shadow-sysroot,4.2.1,INVALID,BSD | Artistic-1.0,base utils,r3,Non=
e,http://pkg-shadow.alioth.debian.org,https://alioth.debian.org/tracker/?gr=
oup_id=3D30580,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  base-passwd,Shadow utils requirements for useradd=
=2Ebbclass.,N/A,file://login.defs_shadow-sysroot,Saul Wold <sgw@linux.intel=
=2Ecom>)
['telepathy-python', '0.15.19', '0.15.19', 'LGPLv2.1+', 'base', 'http://tel=
epathy.freedesktop.org/wiki/', 'r6', 'autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  libxslt-native  python-nativ=
e ', 'None', 'None', 'Telepathy IM framework - Python package.', 'MATCH', '=
N/A', 'http://telepathy.freedesktop.org/releases/telepathy-python/telepathy=
-python-0.15.19.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None=
']
inserted (telepathy-python,0.15.19,0.15.19,LGPLv2.1+,base,r6,None,http://te=
lepathy.freedesktop.org/wiki/,None,MATCH,autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  libxslt-native  python-na=
tive ,Telepathy IM framework - Python package.,N/A,http://telepathy.freedes=
ktop.org/releases/telepathy-python/telepathy-python-0.15.19.tar.gz,Cristian=
 Iorga <cristian.iorga@intel.com>)
['dbus-glib', '0.100.2', '0.102', 'AFL-2 | GPLv2+', 'base', 'http://www.fre=
edesktop.org/Software/dbus', 'r0', 'pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native virtual/gettext ge=
ttext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  expat glib-2.0 virtual/libintl dbus-glib-native dbus', 'N=
one', 'None', 'GLib bindings for the D-Bus message bus that integrate the D=
-Bus library with the GLib thread abstraction and main loop.', 'UPDATE', 'N=
/A', 'http://dbus.freedesktop.org/releases/dbus-glib/dbus-glib-0.100.2.tar.=
gz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (dbus-glib,0.100.2,0.102,AFL-2 | GPLv2+,base,r0,None,http://www.fr=
eedesktop.org/Software/dbus,None,UPDATE,pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native virtual/gettex=
t gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  expat glib-2.0 virtual/libintl dbus-glib-native dbus,=
GLib bindings for the D-Bus message bus that integrate the D-Bus library wi=
th the GLib thread abstraction and main loop.,N/A,http://dbus.freedesktop.o=
rg/releases/dbus-glib/dbus-glib-0.100.2.tar.gz,Chong Lu <Chong.Lu@windriver=
=2Ecom>)
['opkg-collateral', '1.0', 'INVALID', 'MIT', 'base', '', 'r2', ' virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'No=
ne', 'None', 'Constructs the main configuration file for opkg.', 'MATCH', '=
N/A', 'file://opkg.conf.comments', 'Saul Wold <sgw@linux.intel.com>', 'None=
']
inserted (opkg-collateral,1.0,INVALID,MIT,base,r2,None,,None,MATCH, virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Co=
nstructs the main configuration file for opkg.,N/A,file://opkg.conf.comment=
s,Saul Wold <sgw@linux.intel.com>)
['libxkbfile', '1.0.8', '1.0.8', 'MIT-style', 'x11/libs', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros virtual/libx11 kbproto', 'h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libxkbfile=
 provides an interface to read and manipulate description files for XKB, th=
e X11 keyboard configuration extension.', 'MATCH', 'N/A', 'http://xorg.free=
desktop.org/releases/individual/lib/libxkbfile-1.0.8.tar.bz2', 'Ross Burton=
 <ross.burton@intel.com>', 'None']
inserted (libxkbfile,1.0.8,1.0.8,MIT-style,x11/libs,r0,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  util-macros virtual/libx11 kbproto,libxkbfile provides an int=
erface to read and manipulate description files for XKB, the X11 keyboard c=
onfiguration extension.,N/A,http://xorg.freedesktop.org/releases/individual=
/lib/libxkbfile-1.0.8.tar.bz2,Ross Burton <ross.burton@intel.com>)
['xf86-video-omap', '0.4.2+gitrAUTOINC+ae0394e687', '0.4.3+gitrAUTOINC+d48d=
09c', 'GPLv2+', 'x11/drivers', 'http://www.x.org', 'r21.3', 'pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  renderproto videoproto xextproto fontsproto virtual/xserver xpr=
oto randrproto util-macros virtual/libx11 libdrm xf86driproto', 'https://bu=
gs.freedesktop.org', '2', "Open-source X.org graphics driver for TI OMAP gr=
aphics Currently relies on a closed-source submodule for EXA acceleration o=
n the following chipsets:   + OMAP3430   + OMAP3630   + OMAP4430   + OMAP44=
60   + OMAP5430   + OMAP5432 NOTE: this driver is work in progress..  you p=
robably don't want to try and use it yet.  The API/ABI between driver and k=
ernel, and driver and acceleration submodules is not stable yet.  This driv=
er requires the omapdrm kernel driver w/ GEM support. ", 'UPDATE', 'N/A', '=
git://anongit.freedesktop.org/xorg/driver/xf86-video-omap', 'Ross Burton <r=
oss.burton@intel.com>', 'None']
inserted (xf86-video-omap,0.4.2+gitrAUTOINC+ae0394e687,0.4.3+gitrAUTOINC+d4=
8d09c,GPLv2+,x11/drivers,r21.3,2,http://www.x.org,https://bugs.freedesktop.=
org,UPDATE,pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  renderproto videoproto xextproto fonts=
proto virtual/xserver xproto randrproto util-macros virtual/libx11 libdrm x=
f86driproto,Open-source X.org graphics driver for TI OMAP graphics Currentl=
y relies on a closed-source submodule for EXA acceleration on the following=
 chipsets:   + OMAP3430   + OMAP3630   + OMAP4430   + OMAP4460   + OMAP5430=
   + OMAP5432 NOTE: this driver is work in progress..  you probably don't w=
ant to try and use it yet.  The API/ABI between driver and kernel, and driv=
er and acceleration submodules is not stable yet.  This driver requires the=
 omapdrm kernel driver w/ GEM support. ,N/A,git://anongit.freedesktop.org/x=
org/driver/xf86-video-omap,Ross Burton <ross.burton@intel.com>)
['qmmp', '0.7.7', '0.8.1', 'GPLv2', 'multimedia', 'http://qmmp.ylsoftware.c=
om', 'r0', 'qt4-tools-native qt4-x11 autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native cmake-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  taglib libmad li=
bvorbis libogg alsa-lib libsndfile1 libsamplerate0 curl', 'None', 'None', '=
Qmmp is an audio player, written with the help of the Qt library. The user =
interface is similar to Winamp or XMMS.', 'UPDATE', 'N/A', 'http://qmmp.yls=
oftware.com/files/qmmp-0.7.7.tar.bz2', 'Hongxu Jia <hongxu.jia@windriver.co=
m>', 'None']
inserted (qmmp,0.7.7,0.8.1,GPLv2,multimedia,r0,None,http://qmmp.ylsoftware.=
com,None,UPDATE,qt4-tools-native qt4-x11 autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native cmake-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  taglib libma=
d libvorbis libogg alsa-lib libsndfile1 libsamplerate0 curl,Qmmp is an audi=
o player, written with the help of the Qt library. The user interface is si=
milar to Winamp or XMMS.,N/A,http://qmmp.ylsoftware.com/files/qmmp-0.7.7.ta=
r.bz2,Hongxu Jia <hongxu.jia@windriver.com>)
['telepathy-glib', '0.24.0', '0.99.11', 'LGPLv2.1+', 'base', 'http://telepa=
thy.freedesktop.org/wiki/', 'r0', 'pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native virtual/gettext get=
text-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  glib-2.0 dbus python-native-runtime dbus-native dbus-glib =
libxslt-native', 'None', 'None', 'Telepathy Framework: GLib-based helper li=
brary for connection managers', 'UPDATE', 'N/A', 'http://telepathy.freedesk=
top.org/releases/telepathy-glib/telepathy-glib-0.24.0.tar.gz', 'Cristian Io=
rga <cristian.iorga@intel.com>', 'None']
inserted (telepathy-glib,0.24.0,0.99.11,LGPLv2.1+,base,r0,None,http://telep=
athy.freedesktop.org/wiki/,None,UPDATE,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native virtual/gettext=
 gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  glib-2.0 dbus python-native-runtime dbus-native dbus-g=
lib libxslt-native,Telepathy Framework: GLib-based helper library for conne=
ction managers,N/A,http://telepathy.freedesktop.org/releases/telepathy-glib=
/telepathy-glib-0.24.0.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['gaku', '0.1+gitAUTOINC+a0be2fe4b5', '0.1+gitAUTOINC+a0be2fe', 'GPLv2+', '=
base', '', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  gtk+ gstreamer libowl-av', 'Non=
e', 'None', 'Simple music player using GTK+ and GStreamer.', 'MATCH', '0.0+=
svnr399', 'git://git.yoctoproject.org/gaku', 'Cristian Iorga <cristian.iorg=
a@intel.com>', 'None']
inserted (gaku,0.1+gitAUTOINC+a0be2fe4b5,0.1+gitAUTOINC+a0be2fe,GPLv2+,base=
,r0,None,,None,MATCH,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  gtk+ gstreamer libowl-av,Sim=
ple music player using GTK+ and GStreamer.,0.0+svnr399,git://git.yoctoproje=
ct.org/gaku,Cristian Iorga <cristian.iorga@intel.com>)
['which', '2.20', '2.20', 'GPLv3+', 'libs', 'http://carlo17.home.xs4all.nl/=
which/', 'r3', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  cwautomacros-native texinfo-native virtual/update-=
alternatives', 'None', 'None', 'Which is a utility that prints out the full=
 path of the executables that bash(1) would execute when the passed program=
 names would have been entered on the shell prompt. It does this by using t=
he exact same algorithm as bash.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/w=
hich/which-2.20.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (which,2.20,2.20,GPLv3+,libs,r3,None,http://carlo17.home.xs4all.nl=
/which/,None,MATCH,autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  cwautomacros-native texinfo-native virtual/upda=
te-alternatives,Which is a utility that prints out the full path of the exe=
cutables that bash(1) would execute when the passed program names would hav=
e been entered on the shell prompt. It does this by using the exact same al=
gorithm as bash.,N/A,ftp://ftp.gnu.org/gnu/which/which-2.20.tar.gz,Saul Wol=
d <sgw@linux.intel.com>)
['libcap', '2.22', '2.22', 'BSD | GPLv2', 'base', 'http://sites.google.com/=
site/fullycapable/', 'r6', ' virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  perl-native-runtime attr', 'None', 'None',=
 'Library for getting/setting POSIX.1e capabilities.', 'MATCH', 'N/A', 'ftp=
://ftp.debian.org/debian/pool/main/libc/libcap2/libcap2_2.22.orig.tar.gz', =
'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libcap,2.22,2.22,BSD | GPLv2,base,r6,None,http://sites.google.com=
/site/fullycapable/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  perl-native-runtime attr,Library for ge=
tting/setting POSIX.1e capabilities.,N/A,ftp://ftp.debian.org/debian/pool/m=
ain/libc/libcap2/libcap2_2.22.orig.tar.gz,Saul Wold <sgw@linux.intel.com>)
['libfakekey', '0.0+gitAUTOINC+e327ff049b', '0.0+gitAUTOINC+e327ff0', 'LGPL=
v2+', 'x11/wm', 'http://matchbox-project.org/', 'r0', 'pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
 virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  libxtst', 'http://bugzilla.yoctoprojec=
t.org/', 'None', "libfakekey is a simple library for converting UTF-8 chara=
cters into 'fake' X key-presses.", 'MATCH', 'N/A', 'git://git.yoctoproject.=
org/libfakekey', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libfakekey,0.0+gitAUTOINC+e327ff049b,0.0+gitAUTOINC+e327ff0,LGPLv=
2+,x11/wm,r0,None,http://matchbox-project.org/,http://bugzilla.yoctoproject=
=2Eorg/,MATCH,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libx=
tst,libfakekey is a simple library for converting UTF-8 characters into 'fa=
ke' X key-presses.,N/A,git://git.yoctoproject.org/libfakekey,Ross Burton <r=
oss.burton@intel.com>)
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
['wireless-tools', '30.pre9', '29', 'GPLv2 & (LGPLv2.1 | MPL-1.1 | BSD)', '=
base', 'http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/Tools.html', '=
r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  ', 'None', '1', 'Tools for the Linux Standard Wireless Extension=
 Subsystem.', 'UPDATE', 'N/A', 'http://www.hpl.hp.com/personal/Jean_Tourril=
hes/Linux/wireless_tools.30.pre9.tar.gz', 'Cristian Iorga <cristian.iorga@i=
ntel.com>', 'None']
inserted (wireless-tools,30.pre9,29,GPLv2 & (LGPLv2.1 | MPL-1.1 | BSD),base=
,r0,1,http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/Tools.html,None,=
UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  ,Tools for the Linux Standard Wireless Extension Subsystem.,N/A=
,http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/wireless_tools.30.pre=
9.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['fixesproto', '5.0', '5.0', 'MIT & MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedeskt=
op.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the X Fixes extension.  This extension is designed to provide =
server-side support for application work arounds to shortcomings in the cor=
e X window system.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/=
individual/proto/fixesproto-5.0.tar.bz2', 'Ross Burton <ross.burton@intel.c=
om>', 'None']
inserted (fixesproto,5.0,5.0,MIT & MIT-style,x11/libs,r1,1,http://www.x.org=
,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  util-macros,This package provides the wire protocol for the=
 X Fixes extension.  This extension is designed to provide server-side supp=
ort for application work arounds to shortcomings in the core X window syste=
m.,N/A,http://xorg.freedesktop.org/releases/individual/proto/fixesproto-5.0=
=2Etar.bz2,Ross Burton <ross.burton@intel.com>)
['docbook-sgml-dtd-4.1-native', '41', '41', 'OASIS', 'base', 'http://www.do=
cbook.org/sgml/', 'r3.0', ' sgml-common-native', 'None', 'None', 'Document =
type definitions for verification of SGML data files against the DocBook ru=
le set', 'MATCH', 'N/A', 'http://docbook.org/sgml/4.1/docbk41.zip', 'Paul E=
ggleton <paul.eggleton@linux.intel.com>', 'PRS Reports Incorrectly']
inserted (docbook-sgml-dtd-4.1-native,41,41,OASIS,base,r3.0,None,http://www=
=2Edocbook.org/sgml/,None,MATCH, sgml-common-native,Document type definitio=
ns for verification of SGML data files against the DocBook rule set,N/A,htt=
p://docbook.org/sgml/4.1/docbk41.zip,Paul Eggleton <paul.eggleton@linux.int=
el.com>)
['quota', '4.01', '4.01', 'BSD & GPLv2+ & LGPLv2.1+', 'base', 'http://sourc=
eforge.net/projects/linuxquota/', 'r1', 'pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native virtual/gette=
xt gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  gettext-native e2fsprogs tcp-wrappers', 'http://sour=
ceforge.net/tracker/?group_id=3D18136&atid=3D118136', 'None', 'Tools for mo=
nitoring & limiting user disk usage per filesystem.', 'MATCH', 'N/A', 'http=
://downloads.sourceforge.net/project/linuxquota/quota-tools/4.01/quota-4.01=
=2Etar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (quota,4.01,4.01,BSD & GPLv2+ & LGPLv2.1+,base,r1,None,http://sour=
ceforge.net/projects/linuxquota/,http://sourceforge.net/tracker/?group_id=
=3D18136&atid=3D118136,MATCH,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  gettext-native e2fsprogs tcp-wrappers,Tools for monitoring & lim=
iting user disk usage per filesystem.,N/A,http://downloads.sourceforge.net/=
project/linuxquota/quota-tools/4.01/quota-4.01.tar.gz,Cristian Iorga <crist=
ian.iorga@intel.com>)
['iproute2', '3.15.0', '3.16.0', 'GPLv2+', 'base', 'http://www.linuxfoundat=
ion.org/collaborate/workgroups/networking/iproute2', 'r0', ' virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-nativ=
e bison-native iptables virtual/update-alternatives', 'None', 'None', 'Ipro=
ute2 is a collection of utilities for controlling TCP / IP networking and t=
raffic control in Linux.  Of the utilities ip and tc are the most important=
=2E  ip controls IPv4 and IPv6 configuration and tc stands for traffic cont=
rol.', 'UPDATE', 'N/A', 'http://kernel.org/pub/linux/utils/net/iproute2/ipr=
oute2-3.15.0.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (iproute2,3.15.0,3.16.0,GPLv2+,base,r0,None,http://www.linuxfounda=
tion.org/collaborate/workgroups/networking/iproute2,None,UPDATE, virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-n=
ative bison-native iptables virtual/update-alternatives,Iproute2 is a colle=
ction of utilities for controlling TCP / IP networking and traffic control =
in Linux.  Of the utilities ip and tc are the most important.  ip controls =
IPv4 and IPv6 configuration and tc stands for traffic control.,N/A,http://k=
ernel.org/pub/linux/utils/net/iproute2/iproute2-3.15.0.tar.xz,Cristian Iorg=
a <cristian.iorga@intel.com>)
['nss-myhostname', '0.3', 'N/A', 'LGPLv2.1', 'base', 'http://0pointer.de/le=
nnart/projects/nss-myhostname/', 'r0', 'autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'plugin=
 for the GNU Name Service Switch (NSS) functionality of the GNU C Library (=
glibc) providing host name resolution for the locally configured system hos=
tname as returned by gethostname(2).', 'ErrHostNoDir:/lennart/projects/nss-=
myhostname/:-:nss-myhostname-0.3.tar.gz:0pointer.de/lennart/projects/nss-my=
hostname/nss-myhostname-0.3.tar.gz', 'N/A', 'http://0pointer.de/lennart/pro=
jects/nss-myhostname/nss-myhostname-0.3.tar.gz', 'None', 'None']
inserted (nss-myhostname,0.3,N/A,LGPLv2.1,base,r0,None,http://0pointer.de/l=
ennart/projects/nss-myhostname/,None,ErrHostNoDir:/lennart/projects/nss-myh=
ostname/:-:nss-myhostname-0.3.tar.gz:0pointer.de/lennart/projects/nss-myhos=
tname/nss-myhostname-0.3.tar.gz,autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  ,plugin for the GNU Name Service S=
witch (NSS) functionality of the GNU C Library (glibc) providing host name =
resolution for the locally configured system hostname as returned by gethos=
tname(2).,N/A,http://0pointer.de/lennart/projects/nss-myhostname/nss-myhost=
name-0.3.tar.gz,None)
['xrandr', '1.4.2', '1.4.3', 'MIT', 'x11/apps', 'http://www.x.org/', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  util-macros-native virtual/libx11 libxrandr libx=
render', 'https://bugs.freedesktop.org', '1', 'Xrandr is used to set the si=
ze, orientation and/or reflection of the outputs for a screen. It can also =
set the screen size.', 'UPDATE', 'N/A', 'http://xorg.freedesktop.org/releas=
es/individual/app/xrandr-1.4.2.tar.bz2', 'Ross Burton <ross.burton@intel.co=
m>', 'None']
inserted (xrandr,1.4.2,1.4.3,MIT,x11/apps,r0,1,http://www.x.org/,https://bu=
gs.freedesktop.org,UPDATE,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native virt=
ual/libx11 libxrandr libxrender,Xrandr is used to set the size, orientation=
 and/or reflection of the outputs for a screen. It can also set the screen =
size.,N/A,http://xorg.freedesktop.org/releases/individual/app/xrandr-1.4.2.=
tar.bz2,Ross Burton <ross.burton@intel.com>)
['cwautomacros', '20110201', '20110201', 'GPLv2', 'base', 'http://cwautomac=
ros.berlios.de/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  ', 'None', 'None', 'Collection of autoconf m4=
 macros.', 'MATCH', 'N/A', 'http://download.berlios.de/cwautomacros/cwautom=
acros-20110201.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', 'None=
']
inserted (cwautomacros,20110201,20110201,GPLv2,base,r0,None,http://cwautoma=
cros.berlios.de/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  ,Collection of autoconf m4 macros.,N/A,htt=
p://download.berlios.de/cwautomacros/cwautomacros-20110201.tar.bz2,Cristian=
 Iorga <cristian.iorga@intel.com>)
['xvideo-tests', '0.1+gitAUTOINC+f8f320d025', '0.1+gitAUTOINC+f8f320d', 'GP=
Lv2+', 'base', '', 'r0', 'autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  libxv', 'None', 'None', 'Simple XVideo t=
est application.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/test-xvideo'=
, 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (xvideo-tests,0.1+gitAUTOINC+f8f320d025,0.1+gitAUTOINC+f8f320d,GPL=
v2+,base,r0,None,,None,MATCH,autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  libxv,Simple XVideo test application.=
,N/A,git://git.yoctoproject.org/test-xvideo,Cristian Iorga <cristian.iorga@=
intel.com>)
['wpa-supplicant', '2.2', '2.2', 'BSD', 'network', 'http://hostap.epitest.f=
i/wpa_supplicant/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  dbus libnl libgcrypt gnutls', 'http://hosta=
p.epitest.fi/bugz/', 'None', 'Client for Wi-Fi Protected Access (WPA).', 'M=
ATCH', 'N/A', 'http://hostap.epitest.fi/releases/wpa_supplicant-2.2.tar.gz'=
, 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (wpa-supplicant,2.2,2.2,BSD,network,r0,None,http://hostap.epitest.=
fi/wpa_supplicant/,http://hostap.epitest.fi/bugz/,MATCH, virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  dbus libnl lib=
gcrypt gnutls,Client for Wi-Fi Protected Access (WPA).,N/A,http://hostap.ep=
itest.fi/releases/wpa_supplicant-2.2.tar.gz,Cristian Iorga <cristian.iorga@=
intel.com>)
['libxxf86dga', '1.1.4', '1.1.4', 'MIT-X', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros libxext xf86dgaproto', 'https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXxf86dga pro=
vides the XFree86-DGA extension, which allows direct graphics access to a f=
ramebuffer-like region, and also allows relative mouse reporting, et al.  I=
t is mainly used by games and emulators for games.', 'MATCH', 'N/A', 'http:=
//xorg.freedesktop.org/releases/individual/lib/libXxf86dga-1.1.4.tar.bz2', =
'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxxf86dga,1.1.4,1.1.4,MIT-X,x11/libs,r0,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros libxext xf86dgaproto,libXxf86dga provides the XFree8=
6-DGA extension, which allows direct graphics access to a framebuffer-like =
region, and also allows relative mouse reporting, et al.  It is mainly used=
 by games and emulators for games.,N/A,http://xorg.freedesktop.org/releases=
/individual/lib/libXxf86dga-1.1.4.tar.bz2,Ross Burton <ross.burton@intel.co=
m>)
['strace', '4.8', '4.9', 'BSD', 'console/utils', 'http://strace.sourceforge=
=2Enet', 'r0', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc   libaio', 'None', 'None', 'System call tracing too=
l.', 'UPDATE', 'N/A', 'http://downloads.sourceforge.net/strace/strace-4.8.t=
ar.xz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (strace,4.8,4.9,BSD,console/utils,r0,None,http://strace.sourceforg=
e.net,None,UPDATE,autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc   libaio,System call tracing tool.,N/A,http://dow=
nloads.sourceforge.net/strace/strace-4.8.tar.xz,Chong Lu <Chong.Lu@windrive=
r.com>)
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
['cogl-1.0', '1.18.2', '1.18.2', 'MIT', 'base', 'http://wiki.clutter-projec=
t.org/wiki/Cogl', 'r0', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native virtual/gettext gettext-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  glib-2.0 gdk-pixbuf gtk-doc-stub-native pango virtual/mesa wayland v=
irtual/libgles2 virtual/libgl libdrm virtual/libx11 libxcomposite libxfixes=
 libxi libxrandr', 'None', 'None', 'Modern 3D graphics API with associated =
utility APIs.', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/cog=
l/1.18/cogl-1.18.2.tar.xz;name=3Darchive', 'Ross Burton <ross.burton@intel.=
com>', 'None']
inserted (cogl-1.0,1.18.2,1.18.2,MIT,base,r0,None,http://wiki.clutter-proje=
ct.org/wiki/Cogl,None,MATCH,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native virtual/gettext gettext-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  glib-2.0 gdk-pixbuf gtk-doc-stub-native pango virtual/mesa waylan=
d virtual/libgles2 virtual/libgl libdrm virtual/libx11 libxcomposite libxfi=
xes libxi libxrandr,Modern 3D graphics API with associated utility APIs.,N/=
A,http://ftp.gnome.org/pub/GNOME/sources/cogl/1.18/cogl-1.18.2.tar.xz;name=
=3Darchive,Ross Burton <ross.burton@intel.com>)
['trace-cmd', '2.3.2+gitAUTOINC+79e08f8edb', '2.4+gitAUTOINC+293f625', 'GPL=
v2 & LGPLv2.1', 'base', '', 'r3', 'pkgconfig-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc    python-native ',=
 'None', 'None', 'User interface to Ftrace.', 'UPDATE', 'N/A', 'git://git.k=
ernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=3Dgit;bra=
nch=3Dtrace-cmd-stable-v2.3', 'Darren Hart <dvhart@linux.intel.com>', 'None=
']
inserted (trace-cmd,2.3.2+gitAUTOINC+79e08f8edb,2.4+gitAUTOINC+293f625,GPLv=
2 & LGPLv2.1,base,r3,None,,None,UPDATE,pkgconfig-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc    python-nativ=
e ,User interface to Ftrace.,N/A,git://git.kernel.org/pub/scm/linux/kernel/=
git/rostedt/trace-cmd.git;protocol=3Dgit;branch=3Dtrace-cmd-stable-v2.3,Dar=
ren Hart <dvhart@linux.intel.com>)
['nettle', '2.7.1', 'N/A', 'LGPLv2.1 & GPLv2', 'libs', 'http://www.lysator.=
liu.se/~nisse/nettle/', 'r0', 'autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc   gmp', 'None', 'None', 'A low level=
 cryptographic library.', 'ErrParseDir:/~nisse/archive/:-:nettle-2.7.1.tar.=
gz:www.lysator.liu.se/~nisse/archive/nettle-2.7.1.tar.gz', 'N/A', 'http://w=
ww.lysator.liu.se/~nisse/archive/nettle-2.7.1.tar.gz', 'None', 'None']
inserted (nettle,2.7.1,N/A,LGPLv2.1 & GPLv2,libs,r0,None,http://www.lysator=
=2Eliu.se/~nisse/nettle/,None,ErrParseDir:/~nisse/archive/:-:nettle-2.7.1.t=
ar.gz:www.lysator.liu.se/~nisse/archive/nettle-2.7.1.tar.gz,autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   gmp,A=
 low level cryptographic library.,N/A,http://www.lysator.liu.se/~nisse/arch=
ive/nettle-2.7.1.tar.gz,None)
['bigreqsproto', '1.1.2', '1.1.2', 'MIT-X', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire prot=
ocol for the BIG-REQUESTS extension, used to send larger requests that usua=
l in order to avoid fragmentation.', 'MATCH', 'N/A', 'http://xorg.freedeskt=
op.org/releases/individual/proto/bigreqsproto-1.1.2.tar.bz2', 'Saul Wold <s=
gw@linux.intel.com>', 'None']
inserted (bigreqsproto,1.1.2,1.1.2,MIT-X,x11/libs,r0,1,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  util-macros,This package provides the wire protocol for the BIG=
-REQUESTS extension, used to send larger requests that usual in order to av=
oid fragmentation.,N/A,http://xorg.freedesktop.org/releases/individual/prot=
o/bigreqsproto-1.1.2.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['xinit', '1.3.3', '1.3.3', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros-native virtual/libx11', 'https://bu=
gs.freedesktop.org', '1', 'The xinit program is used to start the X Window =
System server and a first client program on systems that cannot start X dir=
ectly from /etc/init or in environments that use multiple window systems. W=
hen this first client exits, xinit will kill the X server and then terminat=
e.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/x=
init-1.3.3.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xinit,1.3.3,1.3.3,MIT-X,x11/apps,r0,1,http://www.x.org/,https://b=
ugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native virt=
ual/libx11,The xinit program is used to start the X Window System server an=
d a first client program on systems that cannot start X directly from /etc/=
init or in environments that use multiple window systems. When this first c=
lient exits, xinit will kill the X server and then terminate.,N/A,http://xo=
rg.freedesktop.org/releases/individual/app/xinit-1.3.3.tar.bz2,Ross Burton =
<ross.burton@intel.com>)
['gstreamer1.0', '1.4.0', '1.4.0', 'LGPLv2+', 'multimedia', 'http://gstream=
er.freedesktop.org/', 'r0', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  glib-2.0 libxml2 bison-native flex-native', 'https://bugzilla.gn=
ome.org/enter_bug.cgi?product=3DGstreamer', 'None', 'GStreamer is a multime=
dia framework for encoding and decoding video and sound. It supports a wide=
 range of formats including mp3, ogg, avi, mpeg and quicktime.', 'MATCH', '=
N/A', 'http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.4.0.tar.x=
z', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (gstreamer1.0,1.4.0,1.4.0,LGPLv2+,multimedia,r0,None,http://gstrea=
mer.freedesktop.org/,https://bugzilla.gnome.org/enter_bug.cgi?product=3DGst=
reamer,MATCH,pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-=
2.0 libxml2 bison-native flex-native,GStreamer is a multimedia framework fo=
r encoding and decoding video and sound. It supports a wide range of format=
s including mp3, ogg, avi, mpeg and quicktime.,N/A,http://gstreamer.freedes=
ktop.org/src/gstreamer/gstreamer-1.4.0.tar.xz,Cristian Iorga <cristian.iorg=
a@intel.com>)
['linuxdoc-tools-native', '0.9.69', '0.9.69', 'GPLv3+', 'base', 'http://pac=
kages.debian.org/linuxdoc-tools', 'r0', 'autoconf-native automake-native li=
btool-native gnu-config-native  groff-native openjade-native', 'None', 'Non=
e', 'Convert LinuxDoc SGML source into other formats.', 'MATCH', '0.9.66', =
'ftp://ftp.debian.org/debian/pool/main/l/linuxdoc-tools/linuxdoc-tools_0.9.=
69.orig.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (linuxdoc-tools-native,0.9.69,0.9.69,GPLv3+,base,r0,None,http://pa=
ckages.debian.org/linuxdoc-tools,None,MATCH,autoconf-native automake-native=
 libtool-native gnu-config-native  groff-native openjade-native,Convert Lin=
uxDoc SGML source into other formats.,0.9.66,ftp://ftp.debian.org/debian/po=
ol/main/l/linuxdoc-tools/linuxdoc-tools_0.9.69.orig.tar.gz,Paul Eggleton <p=
aul.eggleton@linux.intel.com>)
['initramfs-live-install-efi', '1.0', 'INVALID', 'MIT', 'base', '', 'r1', '=
 ', 'None', 'None', 'Live image install script for grub-efi.', 'MATCH', 'N/=
A', 'file://init-install-efi.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-live-install-efi,1.0,INVALID,MIT,base,r1,None,,None,MAT=
CH, ,Live image install script for grub-efi.,N/A,file://init-install-efi.sh=
,Saul Wold <sgw@linux.intel.com>)
['tcf-agent', '0.4.0+gitAUTOINC+4ef94ecb92', '8.0+gitAUTOINC+9c64e57', 'EPL=
-1.0 | EDL-1.0', 'base', 'http://wiki.eclipse.org/TCF', 'r2', ' virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-li=
nux openssl update-rc.d-native initscripts', 'https://bugs.eclipse.org/bugs=
/', 'None', 'Target Communication Framework for the Eclipse IDE.', 'UPDATE'=
, 'N/A', 'git://git.eclipse.org/gitroot/tcf/org.eclipse.tcf.agent.git', 'Ri=
chard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (tcf-agent,0.4.0+gitAUTOINC+4ef94ecb92,8.0+gitAUTOINC+9c64e57,EPL-=
1.0 | EDL-1.0,base,r2,None,http://wiki.eclipse.org/TCF,https://bugs.eclipse=
=2Eorg/bugs/,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-linux openssl update-rc.d-native initscripts,=
Target Communication Framework for the Eclipse IDE.,N/A,git://git.eclipse.o=
rg/gitroot/tcf/org.eclipse.tcf.agent.git,Richard Purdie <richard.purdie@lin=
uxfoundation.org>)
['icecc-create-env-native', '0.1', 'INVALID', 'GPLv2+', 'base', '', 'r2', '=
 ', 'None', 'None', 'This is a version of the icecc-create-env script that =
has been modified in order to make it work with OE.', 'MATCH', 'N/A', 'file=
://icecc-create-env', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (icecc-create-env-native,0.1,INVALID,GPLv2+,base,r2,None,,None,MAT=
CH, ,This is a version of the icecc-create-env script that has been modifie=
d in order to make it work with OE.,N/A,file://icecc-create-env,Saul Wold <=
sgw@linux.intel.com>)
['xf86-video-intel', '2.99.912', '2.99.914', 'MIT-X', 'x11/drivers', 'http:=
//www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextp=
roto fontsproto virtual/xserver xproto randrproto util-macros virtual/libx1=
1 drm libpciaccess pixman xf86driproto dri2proto udev', 'https://bugs.freed=
esktop.org', '2', 'intel is an Xorg driver for Intel integrated graphics ch=
ipsets. The driver supports depths 8, 15, 16 and 24. On some chipsets, the =
driver supports hardware accelerated 3D via the Direct Rendering Infrastruc=
ture (DRI).', 'UPDATE', 'N/A', 'http://xorg.freedesktop.org/releases/indivi=
dual/driver/xf86-video-intel-2.99.912.tar.bz2', 'Ross Burton <ross.burton@i=
ntel.com>', 'None']
inserted (xf86-video-intel,2.99.912,2.99.914,MIT-X,x11/drivers,r0,2,http://=
www.x.org,https://bugs.freedesktop.org,UPDATE,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ren=
derproto videoproto xextproto fontsproto virtual/xserver xproto randrproto =
util-macros virtual/libx11 drm libpciaccess pixman xf86driproto dri2proto u=
dev,intel is an Xorg driver for Intel integrated graphics chipsets. The dri=
ver supports depths 8, 15, 16 and 24. On some chipsets, the driver supports=
 hardware accelerated 3D via the Direct Rendering Infrastructure (DRI).,N/A=
,http://xorg.freedesktop.org/releases/individual/driver/xf86-video-intel-2.=
99.912.tar.bz2,Ross Burton <ross.burton@intel.com>)
['btrfs-tools', '3.14.2+gitAUTOINC+24cf4d8c3e', '3.14.2+gitAUTOINC+24cf4d8'=
, 'GPLv2', 'base', 'https://btrfs.wiki.kernel.org', 'r0', ' virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-linux =
attr e2fsprogs lzo acl', 'None', 'None', 'Btrfs is a new copy on write file=
system for Linux aimed at implementing advanced features while focusing on =
fault tolerance, repair and easy administration. This package contains util=
ities (mkfs, fsck, btrfsctl) used to work with btrfs and an utility (btrfs-=
convert) to make a btrfs filesystem from an ext3.', 'MATCH', 'N/A', 'git://=
git.kernel.org/pub/scm/linux/kernel/git/mason/btrfs-progs.git', 'Richard Pu=
rdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (btrfs-tools,3.14.2+gitAUTOINC+24cf4d8c3e,3.14.2+gitAUTOINC+24cf4d=
8,GPLv2,base,r0,None,https://btrfs.wiki.kernel.org,None,MATCH, virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-lin=
ux attr e2fsprogs lzo acl,Btrfs is a new copy on write filesystem for Linux=
 aimed at implementing advanced features while focusing on fault tolerance,=
 repair and easy administration. This package contains utilities (mkfs, fsc=
k, btrfsctl) used to work with btrfs and an utility (btrfs-convert) to make=
 a btrfs filesystem from an ext3.,N/A,git://git.kernel.org/pub/scm/linux/ke=
rnel/git/mason/btrfs-progs.git,Richard Purdie <richard.purdie@linuxfoundati=
on.org>)
['libtirpc', '0.2.4', '0.2.5', 'BSD', 'libs/network', 'http://sourceforge.n=
et/projects/libtirpc/', 'r0', 'pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   xz-native', 'http=
://sourceforge.net/tracker/?group_id=3D183075&atid=3D903784', 'None', 'Libt=
irpc is a port of Suns Transport-Independent RPC library to Linux', 'UPDATE=
', 'N/A', 'http://downloads.sourceforge.net/libtirpc/libtirpc-0.2.4.tar.bz2=
;name=3Dlibtirpc', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libtirpc,0.2.4,0.2.5,BSD,libs/network,r0,None,http://sourceforge.=
net/projects/libtirpc/,http://sourceforge.net/tracker/?group_id=3D183075&at=
id=3D903784,UPDATE,pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc   xz-native,Libtirpc is a port =
of Suns Transport-Independent RPC library to Linux,N/A,http://downloads.sou=
rceforge.net/libtirpc/libtirpc-0.2.4.tar.bz2;name=3Dlibtirpc,Cristian Iorga=
 <cristian.iorga@intel.com>)
['findutils', '4.4.2', '4.4.2', 'GPLv3+', 'console/utils', 'http://www.gnu.=
org/software/findutils/', 'r6', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bi=
son-native texinfo-native virtual/update-alternatives', 'http://savannah.gn=
u.org/bugs/?group=3Dfindutils', 'None', 'The GNU Find Utilities are the bas=
ic directory searching utilities of the GNU operating system. These program=
s are typically used in conjunction with other programs to provide modular =
and powerful directory search and file locating capabilities to other comma=
nds.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/findutils/findutils-4.4.2.tar=
=2Egz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (findutils,4.4.2,4.4.2,GPLv3+,console/utils,r6,None,http://www.gnu=
=2Eorg/software/findutils/,http://savannah.gnu.org/bugs/?group=3Dfindutils,=
MATCH,autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  bison-native texinfo-native v=
irtual/update-alternatives,The GNU Find Utilities are the basic directory s=
earching utilities of the GNU operating system. These programs are typicall=
y used in conjunction with other programs to provide modular and powerful d=
irectory search and file locating capabilities to other commands.,N/A,ftp:/=
/ftp.gnu.org/gnu/findutils/findutils-4.4.2.tar.gz,Chen Qi <Qi.Chen@windrive=
r.com>)
['popt', '1.16', '1.16', 'MIT', 'libs', 'http://rpm5.org/', 'r3', 'autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native virt=
ual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'None', 'None', 'Library for parsing com=
mand line options.', 'MATCH', 'N/A', 'http://rpm5.org/files/popt/popt-1.16.=
tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (popt,1.16,1.16,MIT,libs,r3,None,http://rpm5.org/,None,MATCH,autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native v=
irtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ,Library for parsing command line option=
s.,N/A,http://rpm5.org/files/popt/popt-1.16.tar.gz,Paul Eggleton <paul.eggl=
eton@linux.intel.com>)
['x264', 'r2265+gitAUTOINC+ffc3ad4945', 'r2265+gitAUTOINC+ea0ca51', 'GPLv2'=
, 'base', 'http://www.videolan.org/developers/x264.html', 'r0', 'pkgconfig-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  yasm-native perl-native', 'None', 'None', 'A free software libr=
ary and application for encoding video streams into the H.264/MPEG-4 AVC fo=
rmat.', 'UPDATE', 'N/A', 'git://git.videolan.org/x264.git', 'Paul Eggleton =
<paul.eggleton@linux.intel.com>', 'None']
inserted (x264,r2265+gitAUTOINC+ffc3ad4945,r2265+gitAUTOINC+ea0ca51,GPLv2,b=
ase,r0,None,http://www.videolan.org/developers/x264.html,None,UPDATE,pkgcon=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  yasm-native perl-native,A free software library and applica=
tion for encoding video streams into the H.264/MPEG-4 AVC format.,N/A,git:/=
/git.videolan.org/x264.git,Paul Eggleton <paul.eggleton@linux.intel.com>)
['blktool', '4-6.1', 'N/A', 'GPLv2+', 'base', 'http://packages.debian.org/u=
nstable/admin/blktool', 'r1', 'pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0', 'None',=
 'None', 'blktool is used for querying and/or changing settings of a block =
device. It is like hdparm but a more general tool, as it works on SCSI, IDE=
 and SATA devices.', 'ErrParseDir:/debian/pool/main/b/blktool/:-:blktool_4.=
orig.tar.gz:ftp.debian.org/debian/pool/main/b/blktool/blktool_4.orig.tar.gz=
', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/b/blktool/blktool_4.orig.t=
ar.gz;name=3Dtarball', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'No=
ne']
inserted (blktool,4-6.1,N/A,GPLv2+,base,r1,None,http://packages.debian.org/=
unstable/admin/blktool,None,ErrParseDir:/debian/pool/main/b/blktool/:-:blkt=
ool_4.orig.tar.gz:ftp.debian.org/debian/pool/main/b/blktool/blktool_4.orig.=
tar.gz,pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  glib-2.0,blktool is used for querying and/=
or changing settings of a block device. It is like hdparm but a more genera=
l tool, as it works on SCSI, IDE and SATA devices.,N/A,ftp://ftp.debian.org=
/debian/pool/main/b/blktool/blktool_4.orig.tar.gz;name=3Dtarball,Paul Eggle=
ton <paul.eggleton@linux.intel.com>)
['kernelshark', '1.2+gitAUTOINC+7055ffd37b', '2.4+gitAUTOINC+293f625', 'GPL=
v2', 'base', '', 'r3', 'pkgconfig-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  gtk+ libxml2', 'None', 'None'=
, 'Graphical trace viewer for Ftrace.', 'UPDATE', 'N/A', 'git://git.kernel.=
org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git', 'Darren Hart <dvhart@l=
inux.intel.com>', '0.2 is the latest version.']
inserted (kernelshark,1.2+gitAUTOINC+7055ffd37b,2.4+gitAUTOINC+293f625,GPLv=
2,base,r3,None,,None,UPDATE,pkgconfig-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ libxml2,Graphical tr=
ace viewer for Ftrace.,N/A,git://git.kernel.org/pub/scm/linux/kernel/git/ro=
stedt/trace-cmd.git,Darren Hart <dvhart@linux.intel.com>)
['liberror-perl', '0.17022', '0.17022', 'Artistic-1.0 | GPL-1.0+', 'libs', =
'', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc   perl perl perl-native', 'None', 'None', 'The Error package=
 provides two interfaces. Firstly Error provides a procedural interface to =
exception handling. Secondly Error is a base class for errors/exceptions th=
at can either be thrown, for subsequent catch, or can simply be recorded.',=
 'MATCH', 'N/A', 'http://cpan.metacpan.org/authors/id/S/SH/SHLOMIF/Error-0.=
17022.tar.gz', 'None', 'None']
inserted (liberror-perl,0.17022,0.17022,Artistic-1.0 | GPL-1.0+,libs,r0,Non=
e,,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc   perl perl perl-native,The Error package provides two in=
terfaces. Firstly Error provides a procedural interface to exception handli=
ng. Secondly Error is a base class for errors/exceptions that can either be=
 thrown, for subsequent catch, or can simply be recorded.,N/A,http://cpan.m=
etacpan.org/authors/id/S/SH/SHLOMIF/Error-0.17022.tar.gz,None)
['dri3proto', '1.0', '1.0', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/enter_=
bug.cgi?product=3Dxorg', 'None', 'The DRI3 extension provides mechanisms to=
 translate between direct rendered buffers and X pixmaps. When combined wit=
h the Present extension, a complete direct rendering solution for OpenGL is=
 provided.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individu=
al/proto/dri3proto-1.0.tar.bz2', 'None', 'None']
inserted (dri3proto,1.0,1.0,MIT,x11/libs,r0,None,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  util-macros,The DRI3 extension provides mechanisms to translate betwe=
en direct rendered buffers and X pixmaps. When combined with the Present ex=
tension, a complete direct rendering solution for OpenGL is provided.,N/A,h=
ttp://xorg.freedesktop.org/releases/individual/proto/dri3proto-1.0.tar.bz2,=
None)
['matchbox-theme-sato', '0.1', '0.1', 'CC-BY-SA-3.0', 'x11/wm', 'http://www=
=2Ematchbox-project.org/', 'r1', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  matchbox-wm', '=
http://bugzilla.yoctoproject.org/', 'None', 'Matchbox window manager Sato t=
hemes.', 'MATCH', 'N/A', 'http://pokylinux.org/releases/sato/matchbox-theme=
-sato-0.1.tar.gz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (matchbox-theme-sato,0.1,0.1,CC-BY-SA-3.0,x11/wm,r1,None,http://ww=
w.matchbox-project.org/,http://bugzilla.yoctoproject.org/,MATCH,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  matchbox-wm,Matchbox window manager Sato themes.,N/A,http://=
pokylinux.org/releases/sato/matchbox-theme-sato-0.1.tar.gz,Ross Burton <ros=
s.burton@intel.com>)
['gstreamer1.0-plugins-base', '1.4.0', '1.4.0', 'GPLv2+ & LGPLv2+', 'multim=
edia', 'http://gstreamer.freedesktop.org/', 'r0', 'pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native vir=
tual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  gstreamer1.0 virtual/libx11 libxv freetype=
 liboil util-linux alsa-lib tremor libogg orc libtheora libvorbis virtual/l=
ibx11 libsm libxrender', 'https://bugzilla.gnome.org/enter_bug.cgi?product=
=3DGstreamer', 'None', 'Plugins for the GStreamer multimedia framework 1.x.=
', 'MATCH', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-plugins-base/g=
st-plugins-base-1.4.0.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>',=
 'None']
inserted (gstreamer1.0-plugins-base,1.4.0,1.4.0,GPLv2+ & LGPLv2+,multimedia=
,r0,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/enter=
_bug.cgi?product=3DGstreamer,MATCH,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native virtual/gettext get=
text-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  gstreamer1.0 virtual/libx11 libxv freetype liboil util-lin=
ux alsa-lib tremor libogg orc libtheora libvorbis virtual/libx11 libsm libx=
render,Plugins for the GStreamer multimedia framework 1.x.,N/A,http://gstre=
amer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.4.0.tar.xz,Cri=
stian Iorga <cristian.iorga@intel.com>)
['docbook-sgml-dtd-3.1-native', '31', '31', 'OASIS', 'base', 'http://www.do=
cbook.org/sgml/', 'r3.0', ' sgml-common-native', 'None', 'None', 'Document =
type definitions for verification of SGML data files against the DocBook ru=
le set', 'MATCH', 'N/A', 'http://www.docbook.org/sgml/3.1/docbk31.zip', 'Pa=
ul Eggleton <paul.eggleton@linux.intel.com>', 'PRS Reports Incorrectly']
inserted (docbook-sgml-dtd-3.1-native,31,31,OASIS,base,r3.0,None,http://www=
=2Edocbook.org/sgml/,None,MATCH, sgml-common-native,Document type definitio=
ns for verification of SGML data files against the DocBook rule set,N/A,htt=
p://www.docbook.org/sgml/3.1/docbk31.zip,Paul Eggleton <paul.eggleton@linux=
=2Eintel.com>)
['fontconfig', '2.11.1', '2.11.1', 'MIT-style & MIT & PD', 'libs', 'http://=
www.fontconfig.org', 'r0', 'pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  expat freetype zlib',=
 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dfontconfig', 'None',=
 "Fontconfig is a font configuration and customization library, which does =
not depend on the X Window System. It is designed to locate fonts within th=
e system and select them according to requirements specified by application=
s. Fontconfig is not a rasterization library, nor does it impose a particul=
ar rasterization library on the application. The X-specific library 'Xft' u=
ses fontconfig along with freetype to specify and rasterize fonts.", 'MATCH=
', 'N/A', 'http://fontconfig.org/release/fontconfig-2.11.1.tar.gz', 'Ross B=
urton <ross.burton@intel.com>', 'None']
inserted (fontconfig,2.11.1,2.11.1,MIT-style & MIT & PD,libs,r0,None,http:/=
/www.fontconfig.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dfo=
ntconfig,MATCH,pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  expat freetype zlib,Fontconfig is =
a font configuration and customization library, which does not depend on th=
e X Window System. It is designed to locate fonts within the system and sel=
ect them according to requirements specified by applications. Fontconfig is=
 not a rasterization library, nor does it impose a particular rasterization=
 library on the application. The X-specific library 'Xft' uses fontconfig a=
long with freetype to specify and rasterize fonts.,N/A,http://fontconfig.or=
g/release/fontconfig-2.11.1.tar.gz,Ross Burton <ross.burton@intel.com>)
['weston-init', '1.0', 'INVALID', 'MIT', 'base', '', 'r0', '  update-rc.d-n=
ative initscripts', 'None', 'None', 'Startup script for the Weston Wayland =
compositor.', 'MATCH', 'N/A', 'file://init', 'None', 'None']
inserted (weston-init,1.0,INVALID,MIT,base,r0,None,,None,MATCH,  update-rc.=
d-native initscripts,Startup script for the Weston Wayland compositor.,N/A,=
file://init,None)
['mini-x-session', '0.1', 'INVALID', 'GPLv2', 'x11', 'http://www.yoctoproje=
ct.org', 'r4', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc   virtual/update-alternatives', 'http://bugzilla.pokyli=
nux.org', 'None', 'Very simple session manager for X.', 'MATCH', 'N/A', 'fi=
le://mini-x-session', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (mini-x-session,0.1,INVALID,GPLv2,x11,r4,None,http://www.yoctoproj=
ect.org,http://bugzilla.pokylinux.org,MATCH, virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update-alternativ=
es,Very simple session manager for X.,N/A,file://mini-x-session,Saul Wold <=
sgw@linux.intel.com>)
['python-pygtk', '2.24.0', '2.24.0', 'LGPLv2.1', 'devel/python', '', 'r1', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  gtk+ libglade python-pycairo python-pygobject py=
thon-native python  python-native ', 'None', 'None', 'Python bindings for t=
he GTK+ UI toolkit.', 'MATCH', 'N/A', 'ftp://ftp.gnome.org/pub/gnome/source=
s/pygtk/2.24/pygtk-2.24.0.tar.bz2', 'Richard Purdie <richard.purdie@linuxfo=
undation.org>', 'None']
inserted (python-pygtk,2.24.0,2.24.0,LGPLv2.1,devel/python,r1,None,,None,MA=
TCH,pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  gtk+ libglade python-pycairo python-pygobject=
 python-native python  python-native ,Python bindings for the GTK+ UI toolk=
it.,N/A,ftp://ftp.gnome.org/pub/gnome/sources/pygtk/2.24/pygtk-2.24.0.tar.b=
z2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['ethtool', '3.14', '3.15', 'GPLv2+', 'console/network', 'http://www.kernel=
=2Eorg/pub/software/network/ethtool/', 'r0', 'autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', '=
A small utility for examining and tuning the settings of your ethernet-base=
d network interfaces.', 'UPDATE', 'N/A', 'http://kernel.org/pub/software/ne=
twork/ethtool/ethtool-3.14.tar.gz', 'Paul Eggleton <paul.eggleton@linux.int=
el.com>', 'None']
inserted (ethtool,3.14,3.15,GPLv2+,console/network,r0,None,http://www.kerne=
l.org/pub/software/network/ethtool/,None,UPDATE,autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,A small utility f=
or examining and tuning the settings of your ethernet-based network interfa=
ces.,N/A,http://kernel.org/pub/software/network/ethtool/ethtool-3.14.tar.gz=
,Paul Eggleton <paul.eggleton@linux.intel.com>)
['recordproto', '1.14.2', '1.14.2', 'MIT-style', 'x11/libs', 'http://www.x.=
org', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesk=
top.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire=
 protocol for the X Record extension.  This extension is used to record and=
 play back event sequences.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/=
releases/individual/proto/recordproto-1.14.2.tar.bz2', 'Ross Burton <ross.b=
urton@intel.com>', 'None']
inserted (recordproto,1.14.2,1.14.2,MIT-style,x11/libs,r1,1,http://www.x.or=
g,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  util-macros,This package provides the wire protocol for th=
e X Record extension.  This extension is used to record and play back event=
 sequences.,N/A,http://xorg.freedesktop.org/releases/individual/proto/recor=
dproto-1.14.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['freetype', '2.5.3', '2.5.3', 'FreeType | GPLv2+', 'libs', 'http://www.fre=
etype.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  ', 'https://savannah.nongnu.o=
rg/bugs/?group=3Dfreetype', 'None', 'FreeType is a software font engine tha=
t is designed to be small, efficient, highly customizable, and portable whi=
le capable of producing high-quality output (glyph images). It can be used =
in graphics libraries, display servers, font conversion tools, text image g=
eneration tools, and many other products as well.', 'MATCH', 'N/A', 'http:/=
/downloads.sourceforge.net/freetype/freetype-2.5.3.tar.bz2', 'Ross Burton <=
ross.burton@intel.com>', 'None']
inserted (freetype,2.5.3,2.5.3,FreeType | GPLv2+,libs,r0,None,http://www.fr=
eetype.org/,https://savannah.nongnu.org/bugs/?group=3Dfreetype,MATCH,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ,FreeType is a software font engine that is designed to=
 be small, efficient, highly customizable, and portable while capable of pr=
oducing high-quality output (glyph images). It can be used in graphics libr=
aries, display servers, font conversion tools, text image generation tools,=
 and many other products as well.,N/A,http://downloads.sourceforge.net/free=
type/freetype-2.5.3.tar.bz2,Ross Burton <ross.burton@intel.com>)
['rpmresolve', '1.0', 'INVALID', 'GPLv2', 'base', '', 'r2', ' virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  rpm', 'No=
ne', 'None', 'OpenEmbedded RPM resolver - performs RPM database lookups in =
batches to avoid  repeated invocations of rpm on the command line.', 'MATCH=
', 'N/A', 'file://rpmresolve.c', 'Paul Eggleton <paul.eggleton@linux.intel.=
com>', 'None']
inserted (rpmresolve,1.0,INVALID,GPLv2,base,r2,None,,None,MATCH, virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  rpm,Op=
enEmbedded RPM resolver - performs RPM database lookups in batches to avoid=
  repeated invocations of rpm on the command line.,N/A,file://rpmresolve.c,=
Paul Eggleton <paul.eggleton@linux.intel.com>)
['createrepo', '0.4.11', '0.10.3', 'GPLv2+', 'base', 'http://createrepo.bas=
eurl.org/', 'r9', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ', 'None', 'None', 'Creates metadata indexes for RP=
M package repositories.', 'UPDATE', 'N/A', 'http://createrepo.baseurl.org/d=
ownload/createrepo-0.4.11.tar.gz', 'Paul Eggleton <paul.eggleton@linux.inte=
l.com>', 'Versions after 0.9.* use YUM, so we hold at 0.4.11']
inserted (createrepo,0.4.11,0.10.3,GPLv2+,base,r9,None,http://createrepo.ba=
seurl.org/,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ,Creates metadata indexes for RPM package repos=
itories.,N/A,http://createrepo.baseurl.org/download/createrepo-0.4.11.tar.g=
z,Paul Eggleton <paul.eggleton@linux.intel.com>)
['db', '6.0.30', '6.1.19', 'AGPL-3.0', 'libs', 'http://www.oracle.com/techn=
ology/products/berkeley-db/db/index.html', 'r0', 'autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None=
', 'Berkeley Database v6.', 'UPDATE', 'N/A', 'http://download.oracle.com/be=
rkeley-db/db-6.0.30.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', '=
API compatibility issue']
inserted (db,6.0.30,6.1.19,AGPL-3.0,libs,r0,None,http://www.oracle.com/tech=
nology/products/berkeley-db/db/index.html,None,UPDATE,autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Berkeley Da=
tabase v6.,N/A,http://download.oracle.com/berkeley-db/db-6.0.30.tar.gz,Cris=
tian Iorga <cristian.iorga@intel.com>)
['cpio', '2.11', '2.11', 'GPLv3', 'base', 'http://www.gnu.org/software/cpio=
/', 'r4', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  texinfo-native texinfo-n=
ative virtual/update-alternatives', 'None', 'None', 'GNU cpio is a tool for=
 creating and extracting archives, or copying files from one place to anoth=
er. It handles a number of cpio formats as well as reading and writing tar =
files.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/cpio/cpio-2.11.tar.gz', 'Ch=
en Qi <Qi.Chen@windriver.com>', 'None']
inserted (cpio,2.11,2.11,GPLv3,base,r4,None,http://www.gnu.org/software/cpi=
o/,None,MATCH,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  texinfo-native texinf=
o-native virtual/update-alternatives,GNU cpio is a tool for creating and ex=
tracting archives, or copying files from one place to another. It handles a=
 number of cpio formats as well as reading and writing tar files.,N/A,ftp:/=
/ftp.gnu.org/gnu/cpio/cpio-2.11.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['liboil', '0.3.17', '0.3.17', 'BSD', 'base', 'http://liboil.freedesktop.or=
g/', 'r5', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  glib-2.0', 'https://bugs.freedesktop.=
org/', 'None', 'Library of simple functions optimized for various CPUs.', '=
MATCH', 'N/A', 'http://liboil.freedesktop.org/download/liboil-0.3.17.tar.gz=
', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (liboil,0.3.17,0.3.17,BSD,base,r5,None,http://liboil.freedesktop.o=
rg/,https://bugs.freedesktop.org/,MATCH,pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0,=
Library of simple functions optimized for various CPUs.,N/A,http://liboil.f=
reedesktop.org/download/liboil-0.3.17.tar.gz,Saul Wold <sgw@linux.intel.com=
>)
['kbd', '2.0.2', '2.0.2', 'GPLv2+', 'base', '', 'r0', 'pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
 virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  libcheck virtual/update-alternatives',=
 'None', 'None', 'Keytable files and keyboard utilities.', 'MATCH', 'N/A', =
'http://kernel.org/pub/linux/utils/kbd/kbd-2.0.2.tar.xz', 'Saul Wold <sgw@l=
inux.intel.com>', 'None']
inserted (kbd,2.0.2,2.0.2,GPLv2+,base,r0,None,,None,MATCH,pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  libcheck virtual/update-alternative=
s,Keytable files and keyboard utilities.,N/A,http://kernel.org/pub/linux/ut=
ils/kbd/kbd-2.0.2.tar.xz,Saul Wold <sgw@linux.intel.com>)
['libnotify', '0.6.0', '0.7.6', 'LGPLv2.1', 'libs', '', 'r1', 'pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  dbus gtk+ dbus-glib gnome-common-native', 'None', 'None', 'Li=
brary for sending desktop notifications to a notification daemon.', 'UPDATE=
', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/libnotify/0.6/libnotify-0=
=2E6.0.tar.bz2;name=3Darchive', 'Ross Burton <ross.burton@intel.com>', 'Non=
e']
inserted (libnotify,0.6.0,0.7.6,LGPLv2.1,libs,r1,None,,None,UPDATE,pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  dbus gtk+ dbus-glib gnome-common-native,Library for sendi=
ng desktop notifications to a notification daemon.,N/A,http://ftp.gnome.org=
/pub/GNOME/sources/libnotify/0.6/libnotify-0.6.0.tar.bz2;name=3Darchive,Ros=
s Burton <ross.burton@intel.com>)
['libomxil', '0.9.3', '0.9.3', 'LGPLv2.1+', 'base', 'http://omxil.sourcefor=
ge.net/', 'r0', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  ', 'None', 'None', 'Bellagio is an opensource imp=
lementation of the Khronos OpenMAX                Integration Layer API to =
access multimedia components.', 'MATCH', 'N/A', 'http://downloads.sourcefor=
ge.net/omxil/libomxil-bellagio-0.9.3.tar.gz', 'Cristian Iorga <cristian.ior=
ga@intel.com>', 'None']
inserted (libomxil,0.9.3,0.9.3,LGPLv2.1+,base,r0,None,http://omxil.sourcefo=
rge.net/,None,MATCH,autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ,Bellagio is an opensource implementation of t=
he Khronos OpenMAX                Integration Layer API to access multimedi=
a components.,N/A,http://downloads.sourceforge.net/omxil/libomxil-bellagio-=
0.9.3.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['alsa-state', '0.2.0', 'INVALID', 'MIT', 'base', '', 'r5', ' virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   update-r=
c.d-native initscripts', 'None', 'None', 'Alsa Scenario Files - an init scr=
ipt and state files to restore sound state at system boot and save it at sy=
stem shut down.', 'MATCH', 'N/A', 'file://asound.conf', 'Cristian Iorga <cr=
istian.iorga@intel.com>', 'None']
inserted (alsa-state,0.2.0,INVALID,MIT,base,r5,None,,None,MATCH, virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   updat=
e-rc.d-native initscripts,Alsa Scenario Files - an init script and state fi=
les to restore sound state at system boot and save it at system shut down.,=
N/A,file://asound.conf,Cristian Iorga <cristian.iorga@intel.com>)
['xf86driproto', '2.1.1', '2.1.1', 'MIT', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org=
/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoc=
ol for the XFree86 Direct Rendering Infrastructure extension.  The XFree86-=
DRI extension is used to organize direct rendering support or 3D clients an=
d help arbitrate requests.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/r=
eleases/individual/proto/xf86driproto-2.1.1.tar.bz2', 'Ross Burton <ross.bu=
rton@intel.com>', 'None']
inserted (xf86driproto,2.1.1,2.1.1,MIT,x11/libs,r0,1,http://www.x.org,https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  util-macros,This package provides the wire protocol for the XFree=
86 Direct Rendering Infrastructure extension.  The XFree86-DRI extension is=
 used to organize direct rendering support or 3D clients and help arbitrate=
 requests.,N/A,http://xorg.freedesktop.org/releases/individual/proto/xf86dr=
iproto-2.1.1.tar.bz2,Ross Burton <ross.burton@intel.com>)
['libdaemon', '0.14', 'N/A', 'LGPLv2.1+', 'libs', 'http://0pointer.de/lenna=
rt/projects/libdaemon/', 'r0', 'pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None'=
, 'Lightweight C library which eases the writing of UNIX daemons.', 'ErrHos=
tNoDir:/lennart/projects/libdaemon/:-:libdaemon-0.14.tar.gz:0pointer.de/len=
nart/projects/libdaemon/libdaemon-0.14.tar.gz', 'N/A', 'http://0pointer.de/=
lennart/projects/libdaemon/libdaemon-0.14.tar.gz', 'Saul Wold <sgw@linux.in=
tel.com>', 'None']
inserted (libdaemon,0.14,N/A,LGPLv2.1+,libs,r0,None,http://0pointer.de/lenn=
art/projects/libdaemon/,None,ErrHostNoDir:/lennart/projects/libdaemon/:-:li=
bdaemon-0.14.tar.gz:0pointer.de/lennart/projects/libdaemon/libdaemon-0.14.t=
ar.gz,pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ,Lightweight C library which eases the writ=
ing of UNIX daemons.,N/A,http://0pointer.de/lennart/projects/libdaemon/libd=
aemon-0.14.tar.gz,Saul Wold <sgw@linux.intel.com>)
['gnome-icon-theme', '2.31.0', '3.12.0', 'LGPLv3+ | CC-BY-SA-3.0', 'x11/gno=
me', 'http://www.gnome.org/', 'r5', 'pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  icon-naming-=
utils-native glib-2.0 intltool-native libxml-simple-perl-native perl-native=
 hicolor-icon-theme gtk-update-icon-cache-native', 'https://bugzilla.gnome.=
org/', 'None', 'GNOME 2 default icon themes.', 'UPDATE', '3.7.4', 'http://f=
tp.gnome.org/pub/GNOME/sources/gnome-icon-theme/2.31/gnome-icon-theme-2.31.=
0.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'waiting for the sato gt=
k3 port']
inserted (gnome-icon-theme,2.31.0,3.12.0,LGPLv3+ | CC-BY-SA-3.0,x11/gnome,r=
5,None,http://www.gnome.org/,https://bugzilla.gnome.org/,UPDATE,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  icon-naming-utils-native glib-2.0 intltool-native libxml-sim=
ple-perl-native perl-native hicolor-icon-theme gtk-update-icon-cache-native=
,GNOME 2 default icon themes.,3.7.4,http://ftp.gnome.org/pub/GNOME/sources/=
gnome-icon-theme/2.31/gnome-icon-theme-2.31.0.tar.bz2,Ross Burton <ross.bur=
ton@intel.com>)
['libxcalibrate', '0.0+gitAUTOINC+209d83af61', '0.0+gitAUTOINC+209d83a', 'M=
IT-style', 'x11/libs', 'http://www.x.org', 'r0', 'pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 virtual/libx11 calibrateproto libxext', 'https://bugs.freedesktop.org/ente=
r_bug.cgi?product=3Dxorg', 'None', 'libXCalibrate is a library for performi=
ng touchscreen calibration with the kdrive tslib touchscreen driver.', 'MAT=
CH', 'N/A', 'git://anongit.freedesktop.org/git/xorg/lib/libXCalibrate', 'Ro=
ss Burton <ross.burton@intel.com>', 'None']
inserted (libxcalibrate,0.0+gitAUTOINC+209d83af61,0.0+gitAUTOINC+209d83a,MI=
T-style,x11/libs,r0,None,http://www.x.org,https://bugs.freedesktop.org/ente=
r_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 cal=
ibrateproto libxext,libXCalibrate is a library for performing touchscreen c=
alibration with the kdrive tslib touchscreen driver.,N/A,git://anongit.free=
desktop.org/git/xorg/lib/libXCalibrate,Ross Burton <ross.burton@intel.com>)
['libxml-namespacesupport-perl', '1.11', '1.11', 'Artistic-1.0 | GPL-1.0+',=
 'libs', '', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc   perl perl-native', 'None', 'None', 'XML::Namespac=
eSupport offers a simple way to process namespace-based XML names.         =
        It also helps maintain a prefix-to-namespace URI map, and provides =
a number of                 basic checks. ', 'MATCH', 'N/A', 'http://search=
=2Ecpan.org/CPAN/authors/id/P/PE/PERIGRIN/XML-NamespaceSupport-1.11.tar.gz'=
, 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libxml-namespacesupport-perl,1.11,1.11,Artistic-1.0 | GPL-1.0+,li=
bs,r3,None,,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc   perl perl-native,XML::NamespaceSupport offers =
a simple way to process namespace-based XML names.                 It also =
helps maintain a prefix-to-namespace URI map, and provides a number of     =
            basic checks. ,N/A,http://search.cpan.org/CPAN/authors/id/P/PE/=
PERIGRIN/XML-NamespaceSupport-1.11.tar.gz,Saul Wold <sgw@linux.intel.com>)
['adt-installer', '0.2.0', '0.2.0', 'MIT', 'base', 'http://www.yoctoproject=
=2Eorg/tools-resources/projects/application-development-toolkit-adt', 'r11'=
, ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  ', 'None', 'None', 'Creates the Application Development Toolkit (AD=
T) installer tarball', 'MATCH', '1.1', 'https://opkg.googlecode.com/files/o=
pkg-0.2.0.tar.gz', 'Jessica Zhang <jessica.zhang@intel.com>', 'None']
inserted (adt-installer,0.2.0,0.2.0,MIT,base,r11,None,http://www.yoctoproje=
ct.org/tools-resources/projects/application-development-toolkit-adt,None,MA=
TCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  ,Creates the Application Development Toolkit (ADT) installer tarba=
ll,1.1,https://opkg.googlecode.com/files/opkg-0.2.0.tar.gz,Jessica Zhang <j=
essica.zhang@intel.com>)
['xextproto', '7.3.0', '7.3.0', 'MIT & MIT-style', 'x11/libs', 'http://www.=
x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  uti=
l-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1'=
, 'This package provides the wire protocol for several X extensions.  These=
 protocol extensions include DOUBLE-BUFFER, DPMS, Extended-Visual-Informati=
on, LBX, MIT_SHM, MIT_SUNDRY-NONSTANDARD, Multi-Buffering, SECURITY, SHAPE,=
 SYNC, TOG-CUP, XC-APPGROUP, XC-MISC, XTEST.  In addition a small set of ut=
ility functions are also available.', 'MATCH', 'N/A', 'http://xorg.freedesk=
top.org/releases/individual/proto/xextproto-7.3.0.tar.bz2', 'Ross Burton <r=
oss.burton@intel.com>', 'None']
inserted (xextproto,7.3.0,7.3.0,MIT & MIT-style,x11/libs,r0,1,http://www.x.=
org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  util-macros,This package =
provides the wire protocol for several X extensions.  These protocol extens=
ions include DOUBLE-BUFFER, DPMS, Extended-Visual-Information, LBX, MIT_SHM=
, MIT_SUNDRY-NONSTANDARD, Multi-Buffering, SECURITY, SHAPE, SYNC, TOG-CUP, =
XC-APPGROUP, XC-MISC, XTEST.  In addition a small set of utility functions =
are also available.,N/A,http://xorg.freedesktop.org/releases/individual/pro=
to/xextproto-7.3.0.tar.bz2,Ross Burton <ross.burton@intel.com>)
['liberation-fonts', '1.04', '2.00.1', 'GPLv2', 'x11/fonts', 'https://fedor=
ahosted.org/liberation-fonts/', 'r4', ' virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc   qemu-native', 'https://bugzill=
a.redhat.com/', '1', 'The Liberation(tm) Fonts is a font family originally =
created by Ascender(c) which aims at metric compatibility with Arial, Times=
 New Roman, Courier New.', 'UPDATE', 'N/A', 'https://fedorahosted.org/relea=
ses/l/i/liberation-fonts/liberation-fonts-1.04.tar.gz', 'Ross Burton <ross.=
burton@intel.com>', '2.00.0 - fontforge package required ']
inserted (liberation-fonts,1.04,2.00.1,GPLv2,x11/fonts,r4,1,https://fedorah=
osted.org/liberation-fonts/,https://bugzilla.redhat.com/,UPDATE, virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   qemu-=
native,The Liberation(tm) Fonts is a font family originally created by Asce=
nder(c) which aims at metric compatibility with Arial, Times New Roman, Cou=
rier New.,N/A,https://fedorahosted.org/releases/l/i/liberation-fonts/libera=
tion-fonts-1.04.tar.gz,Ross Burton <ross.burton@intel.com>)
['patch', '2.7.1', '2.7.1', 'GPLv3', 'utils', '', 'r0', 'autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   attr vir=
tual/update-alternatives', 'None', 'None', 'patch takes a patch file contai=
ning a difference listing produced by the diff program and applies those di=
fferences to one or more original files, producing patched versions.', 'MAT=
CH', 'N/A', 'ftp://ftp.gnu.org/gnu/patch/patch-2.7.1.tar.gz', 'Hongxu Jia <=
hongxu.jia@windriver.com>', 'None']
inserted (patch,2.7.1,2.7.1,GPLv3,utils,r0,None,,None,MATCH,autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   attr =
virtual/update-alternatives,patch takes a patch file containing a differenc=
e listing produced by the diff program and applies those differences to one=
 or more original files, producing patched versions.,N/A,ftp://ftp.gnu.org/=
gnu/patch/patch-2.7.1.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['rt-tests', '0.89', '0.89', 'GPLv2 & GPLv2+', 'tests', 'https://rt.wiki.ke=
rnel.org/index.php/Cyclictest', 'r0', ' virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  linux-libc-headers virtual/libc=
', 'None', 'None', 'Real-Time preemption testcases.', 'ErrUnknown:git.kerne=
l.org/pub/scm/linux/kernel/git/clrkwllms/rt-tests.git', 'N/A', 'git://git.k=
ernel.org/pub/scm/linux/kernel/git/clrkwllms/rt-tests.git', 'Darren Hart <d=
vhart@linux.intel.com>', 'None']
inserted (rt-tests,0.89,0.89,GPLv2 & GPLv2+,tests,r0,None,https://rt.wiki.k=
ernel.org/index.php/Cyclictest,None,ErrUnknown:git.kernel.org/pub/scm/linux=
/kernel/git/clrkwllms/rt-tests.git, virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  linux-libc-headers virtual/libc,Rea=
l-Time preemption testcases.,N/A,git://git.kernel.org/pub/scm/linux/kernel/=
git/clrkwllms/rt-tests.git,Darren Hart <dvhart@linux.intel.com>)
['gst-plugin-bluetooth', '4.101', '5.22', 'GPLv2+ & LGPLv2.1+', 'libs', 'ht=
tp://www.bluez.org', 'r1', 'pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  bluez4 gst-plugins-ba=
se alsa-lib', 'None', 'None', 'Linux Bluetooth stack V4 userland components=
=2E  These include a system configurations, daemons, tools and system libra=
ries.', 'UPDATE', 'N/A', 'http://kernel.org/pub/linux/bluetooth/bluez-4.101=
=2Etar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (gst-plugin-bluetooth,4.101,5.22,GPLv2+ & LGPLv2.1+,libs,r1,None,h=
ttp://www.bluez.org,None,UPDATE,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bluez4 gst-plugin=
s-base alsa-lib,Linux Bluetooth stack V4 userland components.  These includ=
e a system configurations, daemons, tools and system libraries.,N/A,http://=
kernel.org/pub/linux/bluetooth/bluez-4.101.tar.gz,Cristian Iorga <cristian.=
iorga@intel.com>)
['distcc-config', '1.0', 'INVALID', 'MIT', 'base', '', 'r0', ' virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None=
', 'None', 'Sets up distcc for compilation on the target device.', 'MATCH',=
 'N/A', 'file://distcc.sh', 'Paul Eggleton <paul.eggleton@linux.intel.com>'=
, 'None']
inserted (distcc-config,1.0,INVALID,MIT,base,r0,None,,None,MATCH, virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Sets=
 up distcc for compilation on the target device.,N/A,file://distcc.sh,Paul =
Eggleton <paul.eggleton@linux.intel.com>)
['net-tools', '1.60-25', '1.60', 'GPLv2+', 'base', 'http://net-tools.berlio=
s.de/', 'r0', 'virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update-alternat=
ives', 'http://bugs.debian.org/net-tools', 'None', 'A collection of program=
s that form the base set of the NET-3 networking distribution for the Linux=
 operating system', 'UPDATE', 'N/A', 'ftp://ftp.debian.org/debian/pool/main=
/n/net-tools/net-tools_1.60.orig.tar.gz;name=3Dtarball', 'Cristian Iorga <c=
ristian.iorga@intel.com>', 'None']
inserted (net-tools,1.60-25,1.60,GPLv2+,base,r0,None,http://net-tools.berli=
os.de/,http://bugs.debian.org/net-tools,UPDATE,virtual/gettext gettext-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc   virtual/update-alternatives,A collection of programs that form the=
 base set of the NET-3 networking distribution for the Linux operating syst=
em,N/A,ftp://ftp.debian.org/debian/pool/main/n/net-tools/net-tools_1.60.ori=
g.tar.gz;name=3Dtarball,Cristian Iorga <cristian.iorga@intel.com>)
['lttng-ust', '2.5.0', '2.5.0', 'LGPLv2.1+ & MIT & GPLv2', 'base', 'http://=
lttng.org/ust', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  liburcu util-linux', 'https://bugs.lttng.or=
g/projects/lttng-ust', '2', 'The LTTng UST 2.x package contains the userspa=
ce tracer library to trace userspace codes.', 'ErrUnknown:git.lttng.org/ltt=
ng-ust.git', 'N/A', 'git://git.lttng.org/lttng-ust.git;branch=3Dstable-2.5'=
, 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (lttng-ust,2.5.0,2.5.0,LGPLv2.1+ & MIT & GPLv2,base,r0,2,http://lt=
tng.org/ust,https://bugs.lttng.org/projects/lttng-ust,ErrUnknown:git.lttng.=
org/lttng-ust.git,autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  liburcu util-linux,The LTTng UST 2.x package con=
tains the userspace tracer library to trace userspace codes.,N/A,git://git.=
lttng.org/lttng-ust.git;branch=3Dstable-2.5,Richard Purdie <richard.purdie@=
linuxfoundation.org>)
['midori', '0.5.5', 'N/A', 'LGPLv2.1', 'base', 'http://www.twotoasts.de/ind=
ex.php?/pages/midori_summary.html', 'r0', 'pkgconfig-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  webkit-gtk=
 libsoup-2.4 openssl python-native python-docutils-native librsvg-native li=
bnotify libunique libxscrnsaver hicolor-icon-theme gtk-update-icon-cache-na=
tive  python-native  vala-native vala', 'None', 'None', 'A lightweight web =
browser.', 'ErrParseDir:/downloads/:-:midori_0.5.5_all_.tar.bz2:www.midori-=
browser.org/downloads/midori_0.5.5_all_.tar.bz2', 'N/A', 'http://www.midori=
-browser.org/downloads/midori_0.5.5_all_.tar.bz2', 'Ross Burton <ross.burto=
n@intel.com>', 'None']
inserted (midori,0.5.5,N/A,LGPLv2.1,base,r0,None,http://www.twotoasts.de/in=
dex.php?/pages/midori_summary.html,None,ErrParseDir:/downloads/:-:midori_0.=
5.5_all_.tar.bz2:www.midori-browser.org/downloads/midori_0.5.5_all_.tar.bz2=
,pkgconfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  webkit-gtk libsoup-2.4 openssl python-native python-=
docutils-native librsvg-native libnotify libunique libxscrnsaver hicolor-ic=
on-theme gtk-update-icon-cache-native  python-native  vala-native vala,A li=
ghtweight web browser.,N/A,http://www.midori-browser.org/downloads/midori_0=
=2E5.5_all_.tar.bz2,Ross Burton <ross.burton@intel.com>)
['libvorbis', '1.3.4', '1.3.4', 'BSD', 'libs', 'http://www.vorbis.com/', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  libogg', 'https://trac.xiph.org', 'None', 'O=
gg Vorbis is a high-quality lossy audio codec that is free of intellectual =
property restrictions. libvorbis is the main vorbis codec library.', 'MATCH=
', 'N/A', 'http://downloads.xiph.org/releases/vorbis/libvorbis-1.3.4.tar.xz=
', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libvorbis,1.3.4,1.3.4,BSD,libs,r0,None,http://www.vorbis.com/,htt=
ps://trac.xiph.org,MATCH,pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  libogg,Ogg Vorbis is a h=
igh-quality lossy audio codec that is free of intellectual property restric=
tions. libvorbis is the main vorbis codec library.,N/A,http://downloads.xip=
h.org/releases/vorbis/libvorbis-1.3.4.tar.xz,Cristian Iorga <cristian.iorga=
@intel.com>)
['enchant', '1.6.0', '1.6.0', 'LGPLv2.1+', 'libs', 'http://www.abisource.co=
m/projects/enchant/', 'r3', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  aspell glib-2.0', 'h=
ttp://bugzilla.abisource.com/enter_bug.cgi?product=3DEnchant', 'None', 'Enc=
hant Spell checker API Library.', 'MATCH', 'N/A', 'http://www.abisource.com=
/downloads/enchant/1.6.0/enchant-1.6.0.tar.gz', 'Cristian Iorga <cristian.i=
orga@intel.com>', 'None']
inserted (enchant,1.6.0,1.6.0,LGPLv2.1+,libs,r3,None,http://www.abisource.c=
om/projects/enchant/,http://bugzilla.abisource.com/enter_bug.cgi?product=3D=
Enchant,MATCH,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  aspell glib-2.0,Enchant Spell check=
er API Library.,N/A,http://www.abisource.com/downloads/enchant/1.6.0/enchan=
t-1.6.0.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['rpcbind', '0.2.1', '0.2.1', 'BSD', 'console/network', 'http://sourceforge=
=2Enet/projects/rpcbind/', 'r0', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libtirpc quota =
update-rc.d-native initscripts base-files base-passwd shadow-native shadow-=
sysroot shadow tcp-wrappers', 'http://sourceforge.net/tracker/?group_id=3D2=
01237&atid=3D976751', 'None', 'The rpcbind utility is a server that convert=
s RPC                program numbers into universal addresses.', 'MATCH', '=
N/A', 'http://downloads.sourceforge.net/rpcbind/rpcbind-0.2.1.tar.bz2', 'Ho=
ngxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (rpcbind,0.2.1,0.2.1,BSD,console/network,r0,None,http://sourceforg=
e.net/projects/rpcbind/,http://sourceforge.net/tracker/?group_id=3D201237&a=
tid=3D976751,MATCH,pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  libtirpc quota update-rc.d-nat=
ive initscripts base-files base-passwd shadow-native shadow-sysroot shadow =
tcp-wrappers,The rpcbind utility is a server that converts RPC             =
   program numbers into universal addresses.,N/A,http://downloads.sourcefor=
ge.net/rpcbind/rpcbind-0.2.1.tar.bz2,Hongxu Jia <hongxu.jia@windriver.com>)
['json-c', '0.11', '0.11', 'MIT', 'base', 'https://github.com/json-c/json-c=
/wiki', 'r0', 'autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ', 'None', 'None', 'JSON-C implements a reference c=
ounting object model that allows you to easily construct JSON objects in C.=
', 'MATCH', 'N/A', 'https://s3.amazonaws.com/json-c_releases/releases/json-=
c-0.11.tar.gz', 'None', 'None']
inserted (json-c,0.11,0.11,MIT,base,r0,None,https://github.com/json-c/json-=
c/wiki,None,MATCH,autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ,JSON-C implements a reference counting object m=
odel that allows you to easily construct JSON objects in C.,N/A,https://s3.=
amazonaws.com/json-c_releases/releases/json-c-0.11.tar.gz,None)
['libnss-mdns', '0.10', 'N/A', 'LGPLv2.1+', 'libs', 'http://0pointer.de/len=
nart/projects/nss-mdns/', 'r7', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  avahi', 'None', 'None', 'Name Ser=
vice Switch module for Multicast DNS (zeroconf) name resolution.', 'ErrHost=
NoDir:/lennart/projects/nss-mdns/:-:nss-mdns-0.10.tar.gz:0pointer.de/lennar=
t/projects/nss-mdns/nss-mdns-0.10.tar.gz', 'N/A', 'http://0pointer.de/lenna=
rt/projects/nss-mdns/nss-mdns-0.10.tar.gz', 'Saul Wold <sgw@linux.intel.com=
>', 'None']
inserted (libnss-mdns,0.10,N/A,LGPLv2.1+,libs,r7,None,http://0pointer.de/le=
nnart/projects/nss-mdns/,None,ErrHostNoDir:/lennart/projects/nss-mdns/:-:ns=
s-mdns-0.10.tar.gz:0pointer.de/lennart/projects/nss-mdns/nss-mdns-0.10.tar.=
gz,autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  avahi,Name Service Switch module for Multicast DNS (zeroconf) n=
ame resolution.,N/A,http://0pointer.de/lennart/projects/nss-mdns/nss-mdns-0=
=2E10.tar.gz,Saul Wold <sgw@linux.intel.com>)
['guilt-native', 'git', 'git', 'GPLv2', 'base', '', 'r0', ' ', 'None', 'Non=
e', 'quilt-like tool for Git.', 'ErrUnknown:repo.or.cz/guilt.git', 'N/A', '=
git://repo.or.cz/guilt.git', 'Bruce Ashfield <bruce.ashfield@windriver.com>=
', 'None']
inserted (guilt-native,git,git,GPLv2,base,r0,None,,None,ErrUnknown:repo.or.=
cz/guilt.git, ,quilt-like tool for Git.,N/A,git://repo.or.cz/guilt.git,Bruc=
e Ashfield <bruce.ashfield@windriver.com>)
['linux-dummy', '1.0', 'INVALID', 'GPLv2', 'kernel', '', 'r1', ' virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'No=
ne', 'None', 'Dummy Linux kernel, to be selected as the preferred provider =
for virtual/kernel to satisfy dependencies for situations where you wish to=
 build the kernel externally from the build system.', 'MATCH', 'N/A', 'file=
://COPYING.GPL', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (linux-dummy,1.0,INVALID,GPLv2,kernel,r1,None,,None,MATCH, virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Du=
mmy Linux kernel, to be selected as the preferred provider for virtual/kern=
el to satisfy dependencies for situations where you wish to build the kerne=
l externally from the build system.,N/A,file://COPYING.GPL,Saul Wold <sgw@l=
inux.intel.com>)
['libpciaccess', '0.13.2', '0.13.2', 'MIT & MIT-style', 'x11/libs', 'http:/=
/www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.f=
reedesktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'libpciaccess provide=
s functionality for X to access the PCI bus and devices in a platform-indep=
endent way.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individ=
ual/lib/libpciaccess-0.13.2.tar.bz2', 'Richard Purdie <richard.purdie@linux=
foundation.org>', 'None']
inserted (libpciaccess,0.13.2,0.13.2,MIT & MIT-style,x11/libs,r0,None,http:=
//www.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH=
,pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  util-macros,libpciaccess provides functionality =
for X to access the PCI bus and devices in a platform-independent way.,N/A,=
http://xorg.freedesktop.org/releases/individual/lib/libpciaccess-0.13.2.tar=
=2Ebz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['sed', '4.2.2', '4.2.2', 'GPLv3+', 'console/utils', 'http://www.gnu.org/so=
ftware/sed/', 'r0', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-nativ=
e virtual/update-alternatives', 'None', 'None', 'Stream EDitor (text filter=
ing utility).', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/sed/sed-4.2.2.tar.gz=
', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (sed,4.2.2,4.2.2,GPLv3+,console/utils,r0,None,http://www.gnu.org/s=
oftware/sed/,None,MATCH,autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-na=
tive virtual/update-alternatives,Stream EDitor (text filtering utility).,N/=
A,ftp://ftp.gnu.org/gnu/sed/sed-4.2.2.tar.gz,Chen Qi <Qi.Chen@windriver.com=
>)
['initramfs-live-boot', '1.0', 'INVALID', 'MIT', 'base', '', 'r12', ' virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  v=
irtual/kernel', 'None', 'None', 'Live image init script.', 'MATCH', 'N/A', =
'file://init-live.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-live-boot,1.0,INVALID,MIT,base,r12,None,,None,MATCH, vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  virtual/kernel,Live image init script.,N/A,file://init-live.sh,Saul Wold =
<sgw@linux.intel.com>)
['setserial', '2.17', '2.17', 'GPLv2.0', 'console/utils', 'http://setserial=
=2Esourceforge.net', 'r3', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc   groff-native', 'None', 'None', 'setse=
rial is a program designed to set and/or report the configuration informati=
on associated with a serial port', 'MATCH', 'N/A', 'http://downloads.source=
forge.net/setserial/setserial-2.17.tar.gz', 'Saul Wold <sgw@linux.intel.com=
>', 'None']
inserted (setserial,2.17,2.17,GPLv2.0,console/utils,r3,None,http://setseria=
l.sourceforge.net,None,MATCH,autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc   groff-native,setserial is a program =
designed to set and/or report the configuration information associated with=
 a serial port,N/A,http://downloads.sourceforge.net/setserial/setserial-2.1=
7.tar.gz,Saul Wold <sgw@linux.intel.com>)
['gst-fluendo-mp3', '0.10.19', '0.10.29', 'MIT', 'multimedia', 'http://www.=
fluendo.com/resources/source-plugins.php', 'r0', 'pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 gstreamer zlib', 'None', 'None', 'Fluendo closed-format mp3 GStreamer plug=
-in.', 'UPDATE', 'N/A', 'http://core.fluendo.com/gstreamer/src/gst-fluendo-=
mp3/gst-fluendo-mp3-0.10.19.tar.bz2', 'Cristian Iorga <cristian.iorga@intel=
=2Ecom>', 'None']
inserted (gst-fluendo-mp3,0.10.19,0.10.29,MIT,multimedia,r0,None,http://www=
=2Efluendo.com/resources/source-plugins.php,None,UPDATE,pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  gstreamer zlib,Fluendo closed-format mp3 GStreamer plug-in.,N/A,http=
://core.fluendo.com/gstreamer/src/gst-fluendo-mp3/gst-fluendo-mp3-0.10.19.t=
ar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['mdadm', '3.3.1', '3.3.1', 'GPLv2 & GPLv2+', 'base', 'http://www.kernel.or=
g/pub/linux/utils/raid/mdadm/', 'r0', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'Tool fo=
r managing software RAID under Linux.', 'MATCH', 'N/A', 'http://kernel.org/=
pub/linux/utils/raid/mdadm/mdadm-3.3.1.tar.xz', 'Richard Purdie <richard.pu=
rdie@linuxfoundation.org>', 'None']
inserted (mdadm,3.3.1,3.3.1,GPLv2 & GPLv2+,base,r0,None,http://www.kernel.o=
rg/pub/linux/utils/raid/mdadm/,None,MATCH,autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  ,Tool for managing softw=
are RAID under Linux.,N/A,http://kernel.org/pub/linux/utils/raid/mdadm/mdad=
m-3.3.1.tar.xz,Richard Purdie <richard.purdie@linuxfoundation.org>)
['gtk-doc-stub', '0.0+gitAUTOINC+3dfd0a09de', '0.0+gitAUTOINC+3dfd0a0', 'GP=
Lv2', 'x11/base', '', 'r0', 'autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  ', 'None', 'None', "Stub implementati=
on of gtk-doc, as we don't want to build the API documentation", 'MATCH', '=
N/A', 'git://git.gnome.org/gtk-doc-stub', 'Saul Wold <sgw@linux.intel.com>'=
, 'PRS Reports Incorrectly']
inserted (gtk-doc-stub,0.0+gitAUTOINC+3dfd0a09de,0.0+gitAUTOINC+3dfd0a0,GPL=
v2,x11/base,r0,None,,None,MATCH,autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  ,Stub implementation of gtk-doc, a=
s we don't want to build the API documentation,N/A,git://git.gnome.org/gtk-=
doc-stub,Saul Wold <sgw@linux.intel.com>)
['libxau', '1.0.8', '1.0.8', 'MIT-style', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros =
 xproto', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1',=
 'libxau provides the main interfaces to the X11 authorisation handling, wh=
ich controls authorisation for X connections, both client-side and server-s=
ide.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib=
/libXau-1.0.8.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxau,1.0.8,1.0.8,MIT-style,x11/libs,r0,1,http://www.x.org,https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  util-macros  xproto,libxau provide=
s the main interfaces to the X11 authorisation handling, which controls aut=
horisation for X connections, both client-side and server-side.,N/A,http://=
xorg.freedesktop.org/releases/individual/lib/libXau-1.0.8.tar.bz2,Ross Burt=
on <ross.burton@intel.com>)
['glib-networking', '2.38.0', '2.41.4', 'LGPLv2', 'libs', 'http://git.gnome=
=2Eorg/browse/glib-networking/', 'r0', 'pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native virtual/gettex=
t gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  glib-2.0 intltool-native gnome-common-native gnutls',=
 'http://bugzilla.gnome.org', 'None', 'glib-networking contains the impleme=
ntations of certain GLib networking features that cannot be implemented dir=
ectly in GLib itself because of their dependencies.', 'UPDATE', 'N/A', 'htt=
p://ftp.gnome.org/pub/GNOME/sources/glib-networking/2.38/glib-networking-2.=
38.0.tar.xz;name=3Darchive', 'Ross Burton <ross.burton@intel.com>', 'Pendin=
g Glib-2.0 Update']
inserted (glib-networking,2.38.0,2.41.4,LGPLv2,libs,r0,None,http://git.gnom=
e.org/browse/glib-networking/,http://bugzilla.gnome.org,UPDATE,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 intltool-native gnome=
-common-native gnutls,glib-networking contains the implementations of certa=
in GLib networking features that cannot be implemented directly in GLib its=
elf because of their dependencies.,N/A,http://ftp.gnome.org/pub/GNOME/sourc=
es/glib-networking/2.38/glib-networking-2.38.0.tar.xz;name=3Darchive,Ross B=
urton <ross.burton@intel.com>)
['kmod', '18+gitAUTOINC+ae58de0fcb', '18+gitAUTOINC+74c2694', 'GPL-2.0+ & L=
GPL-2.1+', 'base', 'http://packages.profusion.mobi/kmod/', 'r0', 'pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc   pkgconfig-native zlib gtk-doc-stub-native virtual/update-=
alternatives', 'None', 'None', 'kmod is a set of tools to handle common tas=
ks with Linux kernel modules like                insert, remove, list, chec=
k properties, resolve dependencies and aliases.', 'UPDATE', '9', 'git://git=
=2Ekernel.org/pub/scm/utils/kernel/kmod/kmod.git', 'Saul Wold <sgw@linux.in=
tel.com>', 'None']
inserted (kmod,18+gitAUTOINC+ae58de0fcb,18+gitAUTOINC+74c2694,GPL-2.0+ & LG=
PL-2.1+,base,r0,None,http://packages.profusion.mobi/kmod/,None,UPDATE,pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc   pkgconfig-native zlib gtk-doc-stub-native virtual/upd=
ate-alternatives,kmod is a set of tools to handle common tasks with Linux k=
ernel modules like                insert, remove, list, check properties, r=
esolve dependencies and aliases.,9,git://git.kernel.org/pub/scm/utils/kerne=
l/kmod/kmod.git,Saul Wold <sgw@linux.intel.com>)
['help2man-native', '1.46.1', '1.46.1', 'GPLv3', 'devel', '', 'r0', ' autoc=
onf-native automake-native', 'None', 'None', 'Program for creating simple m=
an pages.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/help2man/help2man-1.46.1=
=2Etar.xz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (help2man-native,1.46.1,1.46.1,GPLv3,devel,r0,None,,None,MATCH, au=
toconf-native automake-native,Program for creating simple man pages.,N/A,ft=
p://ftp.gnu.org/gnu/help2man/help2man-1.46.1.tar.xz,Saul Wold <sgw@linux.in=
tel.com>)
['mkfontdir', '1.0.7', '1.0.7', 'MIT-X', 'x11/apps', 'http://www.x.org/', '=
r8.0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros-native virtual/libx11', 'http=
s://bugs.freedesktop.org', '1', 'For each directory argument, mkfontdir rea=
ds all of the font files in the directory. The font names and related data =
are written out to the files \\"fonts.dir\\", \\"fonts.scale\\", and \\"fon=
ts.alias\\".  The X server and font server use these files to find the avai=
lable font files.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/i=
ndividual/app/mkfontdir-1.0.7.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', =
'None']
inserted (mkfontdir,1.0.7,1.0.7,MIT-X,x11/apps,r8.0,1,http://www.x.org/,htt=
ps://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-nativ=
e virtual/libx11,For each directory argument, mkfontdir reads all of the fo=
nt files in the directory. The font names and related data are written out =
to the files \"fonts.dir\", \"fonts.scale\", and \"fonts.alias\".  The X se=
rver and font server use these files to find the available font files.,N/A,=
http://xorg.freedesktop.org/releases/individual/app/mkfontdir-1.0.7.tar.bz2=
,Saul Wold <sgw@linux.intel.com>)
['yasm', '1.2.0', '1.3.0', 'BSD', 'base', 'http://www.tortall.net/projects/=
yasm/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', '=
x86 (SSE) assembler supporting NASM and GAS-syntaxes.', 'UPDATE', 'N/A', 'h=
ttp://www.tortall.net/projects/yasm/releases/yasm-1.2.0.tar.gz', 'Paul Eggl=
eton <paul.eggleton@linux.intel.com>', 'None']
inserted (yasm,1.2.0,1.3.0,BSD,base,r0,None,http://www.tortall.net/projects=
/yasm/,None,UPDATE,autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,x86 (SSE) assem=
bler supporting NASM and GAS-syntaxes.,N/A,http://www.tortall.net/projects/=
yasm/releases/yasm-1.2.0.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.co=
m>)
['libpng', '1.6.10', 'N/A', 'Libpng', 'libs', 'http://www.libpng.org/', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  zlib', 'None', 'None', 'PNG image format deco=
ding library.', 'ErrParseDir:/project/libpng/libpng16/1.6.10/:1.6.10:libpng=
-1.6.10.tar.xz:downloads.sourceforge.net/project/libpng/libpng16/1.6.10/lib=
png-1.6.10.tar.xz', '1.6.6', 'http://downloads.sourceforge.net/project/libp=
ng/libpng16/1.6.10/libpng-1.6.10.tar.xz', 'Ross Burton <ross.burton@intel.c=
om>', 'None']
inserted (libpng,1.6.10,N/A,Libpng,libs,r0,None,http://www.libpng.org/,None=
,ErrParseDir:/project/libpng/libpng16/1.6.10/:1.6.10:libpng-1.6.10.tar.xz:d=
ownloads.sourceforge.net/project/libpng/libpng16/1.6.10/libpng-1.6.10.tar.x=
z,pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  zlib,PNG image format decoding library.,1.6.6,h=
ttp://downloads.sourceforge.net/project/libpng/libpng16/1.6.10/libpng-1.6.1=
0.tar.xz,Ross Burton <ross.burton@intel.com>)
['screen', '4.0.3', '4.2.1', 'GPLv2+', 'console/utils', 'http://www.gnu.org=
/software/screen/', 'r4', 'autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  ncurses            texinfo-native', 'ht=
tps://savannah.gnu.org/bugs/?func=3Dadditem&group=3Dscreen', 'None', 'Scree=
n is a full-screen window manager that multiplexes a physical terminal betw=
een several processes, typically interactive shells.', 'UPDATE', 'N/A', 'ft=
p://ftp.gnu.org/gnu/screen/screen-4.0.3.tar.gz;name=3Dtarball', 'Ross Burto=
n <ross.burton@intel.com>', 'None']
inserted (screen,4.0.3,4.2.1,GPLv2+,console/utils,r4,None,http://www.gnu.or=
g/software/screen/,https://savannah.gnu.org/bugs/?func=3Dadditem&group=3Dsc=
reen,UPDATE,autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ncurses            texinfo-native,Screen is a full-scr=
een window manager that multiplexes a physical terminal between several pro=
cesses, typically interactive shells.,N/A,ftp://ftp.gnu.org/gnu/screen/scre=
en-4.0.3.tar.gz;name=3Dtarball,Ross Burton <ross.burton@intel.com>)
['msmtp', '1.4.32', '1.4.32', 'GPLv3', 'console/network', 'http://msmtp.sou=
rceforge.net/', 'r0', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native virtual/gettext gettext-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  zlib gnutls virtual/update-alternatives', 'None', 'None', 'A sendmail =
replacement for use in MTAs like mutt', 'MATCH', 'N/A', 'http://sourceforge=
=2Enet/projects/msmtp/files/msmtp/1.4.32/msmtp-1.4.32.tar.bz2', 'Saul Wold =
<sgw@linux.intel.com>', 'None']
inserted (msmtp,1.4.32,1.4.32,GPLv3,console/network,r0,None,http://msmtp.so=
urceforge.net/,None,MATCH,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  zlib gnutls virtual/update-alternatives,A sendmail replacement for =
use in MTAs like mutt,N/A,http://sourceforge.net/projects/msmtp/files/msmtp=
/1.4.32/msmtp-1.4.32.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['systemtap', '2.5+gitAUTOINC+8f0fcd995f', '2.5+gitAUTOINC+97e8ab6', 'GPLv2=
', 'base', '', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  elfutils sqlite3 systemtap-native', 'None', 'None', 'Script-directed dy=
namic tracing and performance analysis tool for Linux.', 'UPDATE', 'N/A', '=
git://sourceware.org/git/systemtap.git', 'Saul Wold <sgw@linux.intel.com>',=
 'None']
inserted (systemtap,2.5+gitAUTOINC+8f0fcd995f,2.5+gitAUTOINC+97e8ab6,GPLv2,=
base,r0,None,,None,UPDATE,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  elfutils sqlite3 systemtap-native,Script-directed dynamic tracing a=
nd performance analysis tool for Linux.,N/A,git://sourceware.org/git/system=
tap.git,Saul Wold <sgw@linux.intel.com>)
['gnupg', '2.0.25', '2.0.26', 'GPLv3 & LGPLv3', 'base', 'http://www.gnupg.o=
rg/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  pth l=
ibassuan libksba zlib bzip2 readline libgcrypt texinfo-native', 'None', 'No=
ne', 'GNU Privacy Guard - encryption and signing tools (2.x).', 'UPDATE', '=
N/A', 'ftp://ftp.gnupg.org/gcrypt/gnupg/gnupg-2.0.25.tar.bz2', 'Saul Wold <=
sgw@linux.intel.com>', 'None']
inserted (gnupg,2.0.25,2.0.26,GPLv3 & LGPLv3,base,r0,None,http://www.gnupg.=
org/,None,UPDATE,pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native virtual/gettext gettext-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  p=
th libassuan libksba zlib bzip2 readline libgcrypt texinfo-native,GNU Priva=
cy Guard - encryption and signing tools (2.x).,N/A,ftp://ftp.gnupg.org/gcry=
pt/gnupg/gnupg-2.0.25.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['xdg-utils', '1.1.0-rc1', '1.0.2', 'MIT', 'base', '', 'r0', 'autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', '=
None', 'None', 'The xdg-utils package is a set of simple scripts that provi=
de basic desktop integration functions for any Free Desktop, such as Linux.=
 They are intended to provide a set of defacto standards. The following scr=
ipts are provided at this time: xdg-desktop-icon xdg-desktop-menu xdg-email=
 xdg-icon-resource xdg-mime xdg-open xdg-screensaver xdg-terminal ', 'UPDAT=
E', 'N/A', 'http://portland.freedesktop.org/download/xdg-utils-1.1.0-rc1.ta=
r.gz', 'Ross Burton <ross.burton@intel.com>', 'only release candidates avai=
lable ']
inserted (xdg-utils,1.1.0-rc1,1.0.2,MIT,base,r0,None,,None,UPDATE,autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
,The xdg-utils package is a set of simple scripts that provide basic deskto=
p integration functions for any Free Desktop, such as Linux. They are inten=
ded to provide a set of defacto standards. The following scripts are provid=
ed at this time: xdg-desktop-icon xdg-desktop-menu xdg-email xdg-icon-resou=
rce xdg-mime xdg-open xdg-screensaver xdg-terminal ,N/A,http://portland.fre=
edesktop.org/download/xdg-utils-1.1.0-rc1.tar.gz,Ross Burton <ross.burton@i=
ntel.com>)
['initramfs-boot', '1.0', 'INVALID', 'MIT', 'base', '', 'r2', ' ', 'None', =
'None', 'Extremely basic live image init script.', 'MATCH', 'N/A', 'file://=
init-boot.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-boot,1.0,INVALID,MIT,base,r2,None,,None,MATCH, ,Extreme=
ly basic live image init script.,N/A,file://init-boot.sh,Saul Wold <sgw@lin=
ux.intel.com>)
['hwlatdetect', '0.89', '0.89', 'GPLv2', 'tests', 'http://git.kernel.org/?p=
=3Dlinux/kernel/git/clrkwllms/rt-tests.git', 'r0', ' virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None',=
 'Python utility for controlling the kernel hardware latency detection modu=
le (hwlat_detector.ko).', 'ErrUnknown:git.kernel.org/pub/scm/linux/kernel/g=
it/clrkwllms/rt-tests.git', 'N/A', 'git://git.kernel.org/pub/scm/linux/kern=
el/git/clrkwllms/rt-tests.git', 'Darren Hart <dvhart@linux.intel.com>', 'No=
ne']
inserted (hwlatdetect,0.89,0.89,GPLv2,tests,r0,None,http://git.kernel.org/?=
p=3Dlinux/kernel/git/clrkwllms/rt-tests.git,None,ErrUnknown:git.kernel.org/=
pub/scm/linux/kernel/git/clrkwllms/rt-tests.git, virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  ,Python utility for co=
ntrolling the kernel hardware latency detection module (hwlat_detector.ko).=
,N/A,git://git.kernel.org/pub/scm/linux/kernel/git/clrkwllms/rt-tests.git,D=
arren Hart <dvhart@linux.intel.com>)
['gstreamer1.0-plugins-ugly', '1.4.0', '1.4.0', 'GPLv2+ & LGPLv2.1+ & LGPLv=
2+', 'multimedia', 'http://gstreamer.freedesktop.org/', 'r0', 'pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plug=
ins-base libid3tag liba52 lame libmad mpeg2dec orc', 'https://bugzilla.gnom=
e.org/enter_bug.cgi?product=3DGstreamer', 'None', 'Plugins for the GStreame=
r multimedia framework 1.x.', 'MATCH', 'N/A', 'http://gstreamer.freedesktop=
=2Eorg/src/gst-plugins-ugly/gst-plugins-ugly-1.4.0.tar.xz', 'Cristian Iorga=
 <cristian.iorga@intel.com>', 'None']
inserted (gstreamer1.0-plugins-ugly,1.4.0,1.4.0,GPLv2+ & LGPLv2.1+ & LGPLv2=
+,multimedia,r0,None,http://gstreamer.freedesktop.org/,https://bugzilla.gno=
me.org/enter_bug.cgi?product=3DGstreamer,MATCH,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native virtual=
/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugins-base libid3t=
ag liba52 lame libmad mpeg2dec orc,Plugins for the GStreamer multimedia fra=
mework 1.x.,N/A,http://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-p=
lugins-ugly-1.4.0.tar.xz,Cristian Iorga <cristian.iorga@intel.com>)
['libatomics-ops', '7.2', 'N/A', 'GPLv2 & MIT', 'optional', 'http://www.hpl=
=2Ehp.com/research/linux/atomic_ops/', 'r1', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', =
'None', 'None', 'A library for atomic integer operations', 'ErrHostNoDir:/r=
esearch/linux/atomic_ops/download/:-:libatomic_ops-7.2.tar.gz:www.hpl.hp.co=
m/research/linux/atomic_ops/download/libatomic_ops-7.2.tar.gz', 'N/A', 'htt=
p://www.hpl.hp.com/research/linux/atomic_ops/download/libatomic_ops-7.2.tar=
=2Egz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libatomics-ops,7.2,N/A,GPLv2 & MIT,optional,r1,None,http://www.hp=
l.hp.com/research/linux/atomic_ops/,None,ErrHostNoDir:/research/linux/atomi=
c_ops/download/:-:libatomic_ops-7.2.tar.gz:www.hpl.hp.com/research/linux/at=
omic_ops/download/libatomic_ops-7.2.tar.gz,pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,A lib=
rary for atomic integer operations,N/A,http://www.hpl.hp.com/research/linux=
/atomic_ops/download/libatomic_ops-7.2.tar.gz,Cristian Iorga <cristian.iorg=
a@intel.com>)
['vte', '0.28.2', '0.37.2', 'LGPLv2.1+', 'base', '', 'r6', 'pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc   glib-2.0 gtk+ intltool-native ncurses gobject-introspection-stu=
b gnome-common-native hicolor-icon-theme gtk-update-icon-cache-native gconf=
 gconf-native shared-mime-info-native shared-mime-info gtk-doc-stub-native'=
, 'https://bugzilla.gnome.org/buglist.cgi?product=3Dvte', 'None', 'Virtual =
terminal emulator GTK+ widget library.', 'UPDATE', 'N/A', 'http://ftp.gnome=
=2Eorg/pub/GNOME/sources/vte/0.28/vte-0.28.2.tar.bz2;name=3Darchive', 'Ross=
 Burton <ross.burton@intel.com>', 'Pending Glib-2.0 Update']
inserted (vte,0.28.2,0.37.2,LGPLv2.1+,base,r6,None,,https://bugzilla.gnome.=
org/buglist.cgi?product=3Dvte,UPDATE,pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   glib-2.0 gt=
k+ intltool-native ncurses gobject-introspection-stub gnome-common-native h=
icolor-icon-theme gtk-update-icon-cache-native gconf gconf-native shared-mi=
me-info-native shared-mime-info gtk-doc-stub-native,Virtual terminal emulat=
or GTK+ widget library.,N/A,http://ftp.gnome.org/pub/GNOME/sources/vte/0.28=
/vte-0.28.2.tar.bz2;name=3Darchive,Ross Burton <ross.burton@intel.com>)
['libgcc-initial', '4.9.1', '4.9.1', 'GPL-3.0-with-GCC-exception & GPLv3', =
'devel', 'http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automak=
e-native libtool-native gnu-config-native   virtual/i586-poky-linux-gcc-ini=
tial texinfo-native', 'None', 'None', 'GNU cc and gcc C compilers.', 'MATCH=
', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2', 'Saul Wo=
ld <sgw@linux.intel.com>', 'None']
inserted (libgcc-initial,4.9.1,4.9.1,GPL-3.0-with-GCC-exception & GPLv3,dev=
el,r0,None,http://www.gnu.org/software/gcc/,None,MATCH,autoconf-native auto=
make-native libtool-native gnu-config-native   virtual/i586-poky-linux-gcc-=
initial texinfo-native,GNU cc and gcc C compilers.,N/A,ftp://ftp.gnu.org/gn=
u/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['libgcrypt', '1.6.1', '1.6.1', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://direc=
tory.fsf.org/project/libgcrypt/', 'r0', 'pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libgpg-e=
rror libcap texinfo-native', 'https://bugs.g10code.com/gnupg/index', 'None'=
, 'General purpose cryptographic library based on the code from GnuPG.', 'M=
ATCH', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/libgcrypt/libgcrypt-1.6.1.tar.gz'=
, 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libgcrypt,1.6.1,1.6.1,GPLv2+ & LGPLv2.1+,libs,r0,None,http://dire=
ctory.fsf.org/project/libgcrypt/,https://bugs.g10code.com/gnupg/index,MATCH=
,pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  libgpg-error libcap texinfo-native,General purpo=
se cryptographic library based on the code from GnuPG.,N/A,ftp://ftp.gnupg.=
org/gcrypt/libgcrypt/libgcrypt-1.6.1.tar.gz,Saul Wold <sgw@linux.intel.com>)
['initramfs-live-install-efi-testfs', '1.0', 'INVALID', 'MIT', 'base', '', =
'r0', ' ', 'None', 'None', 'Live image install script for with a second roo=
tfs/kernel option.', 'MATCH', 'N/A', 'file://init-install-efi-testfs.sh', '=
None', 'None']
inserted (initramfs-live-install-efi-testfs,1.0,INVALID,MIT,base,r0,None,,N=
one,MATCH, ,Live image install script for with a second rootfs/kernel optio=
n.,N/A,file://init-install-efi-testfs.sh,None)
['mingetty', '1.08', '1.08', 'GPLv2', 'console/utils', 'http://sourceforge.=
net/projects/mingetty/', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc   virtual/update-alternatives', 'None',=
 'None', 'Compact getty terminal handler for virtual consoles only.', 'MATC=
H', 'N/A', 'http://cdnetworks-kr-1.dl.sourceforge.net/project/mingetty/ming=
etty/1.08/mingetty-1.08.tar.gz', 'Kai Kang <kai.kang@windriver.com>', 'None=
']
inserted (mingetty,1.08,1.08,GPLv2,console/utils,r3,None,http://sourceforge=
=2Enet/projects/mingetty/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc   virtual/update-alternatives,Comp=
act getty terminal handler for virtual consoles only.,N/A,http://cdnetworks=
-kr-1.dl.sourceforge.net/project/mingetty/mingetty/1.08/mingetty-1.08.tar.g=
z,Kai Kang <kai.kang@windriver.com>)
['cross-localedef-native', '2.19', '2.19', 'LGPL-2.1', 'libs', 'http://www.=
eglibc.org/home', 'r0', 'autoconf-native automake-native libtool-native gnu=
-config-native  ', 'None', 'None', 'Cross locale generation tool for eglibc=
=2E', 'MATCH', 'N/A', 'http://downloads.yoctoproject.org/releases/eglibc/eg=
libc-2.19-svnr25243.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (cross-localedef-native,2.19,2.19,LGPL-2.1,libs,r0,None,http://www=
=2Eeglibc.org/home,None,MATCH,autoconf-native automake-native libtool-nativ=
e gnu-config-native  ,Cross locale generation tool for eglibc.,N/A,http://d=
ownloads.yoctoproject.org/releases/eglibc/eglibc-2.19-svnr25243.tar.bz2,Sau=
l Wold <sgw@linux.intel.com>)
['libpcap', '1.5.3', '1.6.1', 'BSD', 'libs/network', 'http://www.tcpdump.or=
g/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  flex-native bison-native', 'http://sourceforge.net/tra=
cker/?group_id=3D53067&atid=3D469577', 'None', 'Libpcap provides a portable=
 framework for low-level network monitoring.  Libpcap can provide network s=
tatistics collection, security monitoring and network debugging.', 'UPDATE'=
, 'N/A', 'http://www.tcpdump.org/release/libpcap-1.5.3.tar.gz', 'Cristian I=
orga <cristian.iorga@intel.com>', 'None']
inserted (libpcap,1.5.3,1.6.1,BSD,libs/network,r0,None,http://www.tcpdump.o=
rg/,http://sourceforge.net/tracker/?group_id=3D53067&atid=3D469577,UPDATE,a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  flex-native bison-native,Libpcap provides a portable framework for =
low-level network monitoring.  Libpcap can provide network statistics colle=
ction, security monitoring and network debugging.,N/A,http://www.tcpdump.or=
g/release/libpcap-1.5.3.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['libxkbcommon', '0.4.2', '0.4.2', 'MIT & MIT-style', 'base', 'http://www.x=
kbcommon.org', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  util-macros flex-native bis=
on-native libxcb', 'None', 'None', 'libxkbcommon is a keymap compiler and s=
upport library which processes a reduced subset of keymaps as defined by th=
e XKB specification.', 'MATCH', 'N/A', 'http://xkbcommon.org/download/libxk=
bcommon-0.4.2.tar.xz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libxkbcommon,0.4.2,0.4.2,MIT & MIT-style,base,r0,None,http://www.=
xkbcommon.org,None,MATCH,pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros flex-native =
bison-native libxcb,libxkbcommon is a keymap compiler and support library w=
hich processes a reduced subset of keymaps as defined by the XKB specificat=
ion.,N/A,http://xkbcommon.org/download/libxkbcommon-0.4.2.tar.xz,Saul Wold =
<sgw@linux.intel.com>)
['liba52', '0.7.4', '0.7.4', 'GPLv2+', 'libs', 'http://liba52.sourceforge.n=
et/', 'r4', 'autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ', 'None', 'None', 'ATSC A/52 surround sound stream d=
ecoder.', 'MATCH', 'N/A', 'http://liba52.sourceforge.net/files/a52dec-0.7.4=
=2Etar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (liba52,0.7.4,0.7.4,GPLv2+,libs,r4,None,http://liba52.sourceforge.=
net/,None,MATCH,autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  ,ATSC A/52 surround sound stream decoder.,N/A,http=
://liba52.sourceforge.net/files/a52dec-0.7.4.tar.gz,Cristian Iorga <cristia=
n.iorga@intel.com>)
['python-distribute', '0.6.32', '0.7.3', 'PSF', 'devel/python', 'http://pac=
kages.python.org/distribute', 'ml5', ' virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc   python python-native python  py=
thon-native ', 'None', 'None', 'Download, build, install, upgrade, and unin=
stall Python packages.', 'UPDATE', '0.7.3', 'http://pypi.python.org/package=
s/source/d/distribute/distribute-0.6.32.tar.gz', 'Richard Purdie <richard.p=
urdie@linuxfoundation.org>', "0.7.3 only upgrades 0.6.32, can't install on =
its own, also obsolete"]
inserted (python-distribute,0.6.32,0.7.3,PSF,devel/python,ml5,None,http://p=
ackages.python.org/distribute,None,UPDATE, virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc   python python-native python=
  python-native ,Download, build, install, upgrade, and uninstall Python pa=
ckages.,0.7.3,http://pypi.python.org/packages/source/d/distribute/distribut=
e-0.6.32.tar.gz,Richard Purdie <richard.purdie@linuxfoundation.org>)
['valgrind', '3.9.0', '3.9.0', 'GPLv2 & GPLv2+ & BSD', 'base', 'http://valg=
rind.org/', 'r8', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  virtual/libx11', 'http://valgrind.org/support/b=
ug_reports.html', 'None', 'Valgrind memory debugger and instrumentation fra=
mework.', 'MATCH', 'N/A', 'http://www.valgrind.org/downloads/valgrind-3.9.0=
=2Etar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (valgrind,3.9.0,3.9.0,GPLv2 & GPLv2+ & BSD,base,r8,None,http://val=
grind.org/,http://valgrind.org/support/bug_reports.html,MATCH,autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virt=
ual/libx11,Valgrind memory debugger and instrumentation framework.,N/A,http=
://www.valgrind.org/downloads/valgrind-3.9.0.tar.bz2,Saul Wold <sgw@linux.i=
ntel.com>)
['sysstat', '10.2.1', '11.0.0', 'GPLv2+', 'console/utils', 'http://sebastie=
n.godard.pagesperso-orange.fr/', 'r0', 'autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native virtual/gettext gettext-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  ', 'None', 'None', 'The sysstat utilities are a collection of performa=
nce monitoring tools for Linux.', 'UPDATE', 'N/A', 'http://pagesperso-orang=
e.fr/sebastien.godard/sysstat-10.2.1.tar.gz', 'Chen Qi <Qi.Chen@windriver.c=
om>', 'None']
inserted (sysstat,10.2.1,11.0.0,GPLv2+,console/utils,r0,None,http://sebasti=
en.godard.pagesperso-orange.fr/,None,UPDATE,autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  ,The sysstat utilities are a collection of performance monitoring =
tools for Linux.,N/A,http://pagesperso-orange.fr/sebastien.godard/sysstat-1=
0.2.1.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['qt4-native', '4.8.6', 'N/A', 'LGPLv2.1 | GPLv3', 'libs', 'http://qt-proje=
ct.org/', 'r0', ' zlib-native dbus-native', 'None', 'None', 'Qt version 4 t=
ools and support files for the build host.', 'ErrHostNoDir:/official_releas=
es/qt/5.3/4.8.6/:4.8:qt-everywhere-opensource-src-4.8.6.tar.gz:download.qt-=
project.org/official_releases/qt/4.8/4.8.6/qt-everywhere-opensource-src-4.8=
=2E6.tar.gz', 'N/A', 'http://download.qt-project.org/official_releases/qt/4=
=2E8/4.8.6/qt-everywhere-opensource-src-4.8.6.tar.gz', 'Paul Eggleton <paul=
=2Eeggleton@linux.intel.com>', 'None']
inserted (qt4-native,4.8.6,N/A,LGPLv2.1 | GPLv3,libs,r0,None,http://qt-proj=
ect.org/,None,ErrHostNoDir:/official_releases/qt/5.3/4.8.6/:4.8:qt-everywhe=
re-opensource-src-4.8.6.tar.gz:download.qt-project.org/official_releases/qt=
/4.8/4.8.6/qt-everywhere-opensource-src-4.8.6.tar.gz, zlib-native dbus-nati=
ve,Qt version 4 tools and support files for the build host.,N/A,http://down=
load.qt-project.org/official_releases/qt/4.8/4.8.6/qt-everywhere-opensource=
-src-4.8.6.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['gstreamer1.0-rtsp-server', '1.4.0', '1.4.0', 'LGPLv2', 'multimedia', 'htt=
p://cgit.freedesktop.org/gstreamer/gst-rtsp-server/', 'r0', 'pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  gstreamer1.0 libcgroup gstreamer1.0-plugins-base', 'None', 'Non=
e', 'A library on top of GStreamer for building an RTSP server.', 'MATCH', =
'N/A', 'http://gstreamer.freedesktop.org/src/gst-rtsp-server/gst-rtsp-serve=
r-1.4.0.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (gstreamer1.0-rtsp-server,1.4.0,1.4.0,LGPLv2,multimedia,r0,None,ht=
tp://cgit.freedesktop.org/gstreamer/gst-rtsp-server/,None,MATCH,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  gstreamer1.0 libcgroup gstreamer1.0-plugins-base,A library o=
n top of GStreamer for building an RTSP server.,N/A,http://gstreamer.freede=
sktop.org/src/gst-rtsp-server/gst-rtsp-server-1.4.0.tar.xz,Cristian Iorga <=
cristian.iorga@intel.com>)
['remake', '3.82+dbg-0.9+gitAUTOINC+f05508e521', '3.82+dbg-0.9+gitAUTOINC+f=
90722c', 'GPLv2', 'devel', 'http://bashdb.sourceforge.net/remake/', 'r1', '=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc   readline virtual/update-alternativ=
es', 'None', 'None', 'remake is a patched and modernized version of GNU mak=
e utility that adds improved error reporting, the ability to trace executio=
n in a comprehensible way, and a debugger.', 'UPDATE', 'N/A', 'git://github=
=2Ecom/rocky/remake.git', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (remake,3.82+dbg-0.9+gitAUTOINC+f05508e521,3.82+dbg-0.9+gitAUTOINC=
+f90722c,GPLv2,devel,r1,None,http://bashdb.sourceforge.net/remake/,None,UPD=
ATE,autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc   readline virtual/update-altern=
atives,remake is a patched and modernized version of GNU make utility that =
adds improved error reporting, the ability to trace execution in a comprehe=
nsible way, and a debugger.,N/A,git://github.com/rocky/remake.git,Robert Ya=
ng <liezhi.yang@windriver.com>)
['autogen-native', '5.18.3', '5.18.3-5', 'GPLv3', 'devel', 'http://www.gnu.=
org/software/autogen/', 'r0', 'autoconf-native automake-native libtool-nati=
ve gnu-config-native  guile-native libtool-native libxml2-native texinfo-du=
mmy-native', 'None', 'None', 'AutoGen is a tool designed to simplify the cr=
eation and maintenance of programs that contain large amounts of repetitiou=
s text. It is especially valuable in programs that have several blocks of t=
ext that must be kept synchronized.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/g=
nu/autogen/rel5.18.3/autogen-5.18.3.tar.gz', 'Robert Yang <liezhi.yang@wind=
river.com>', 'None']
inserted (autogen-native,5.18.3,5.18.3-5,GPLv3,devel,r0,None,http://www.gnu=
=2Eorg/software/autogen/,None,UPDATE,autoconf-native automake-native libtoo=
l-native gnu-config-native  guile-native libtool-native libxml2-native texi=
nfo-dummy-native,AutoGen is a tool designed to simplify the creation and ma=
intenance of programs that contain large amounts of repetitious text. It is=
 especially valuable in programs that have several blocks of text that must=
 be kept synchronized.,N/A,ftp://ftp.gnu.org/gnu/autogen/rel5.18.3/autogen-=
5.18.3.tar.gz,Robert Yang <liezhi.yang@windriver.com>)
['libnewt', '0.52.17', '0.52.17', 'LGPLv2', 'libs', 'https://fedorahosted.o=
rg/newt/', 'r2', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  slang popt', 'None', 'None', 'Newt is a programm=
ing library for color text mode, widget based user interfaces.  Newt can be=
 used to add stacked windows, entry widgets, checkboxes, radio buttons, lab=
els, plain text fields, scrollbars, etc., to text mode user interfaces.  Th=
is package also contains the shared library needed by programs built with n=
ewt, as well as a /usr/bin/dialog replacement called whiptail.  Newt is bas=
ed on the slang library.', 'MATCH', 'N/A', 'https://fedorahosted.org/releas=
es/n/e/newt/newt-0.52.17.tar.gz', 'Hongxu Jia <hongxu.jia@windriver.com>', =
'None']
inserted (libnewt,0.52.17,0.52.17,LGPLv2,libs,r2,None,https://fedorahosted.=
org/newt/,None,MATCH,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  slang popt,Newt is a programming library for =
color text mode, widget based user interfaces.  Newt can be used to add sta=
cked windows, entry widgets, checkboxes, radio buttons, labels, plain text =
fields, scrollbars, etc., to text mode user interfaces.  This package also =
contains the shared library needed by programs built with newt, as well as =
a /usr/bin/dialog replacement called whiptail.  Newt is based on the slang =
library.,N/A,https://fedorahosted.org/releases/n/e/newt/newt-0.52.17.tar.gz=
,Hongxu Jia <hongxu.jia@windriver.com>)
['libical', '0.48', '0.48', 'LGPLv2.1 | MPL-1', 'libs', 'http://sourceforge=
=2Enet/projects/freeassociation/', 'r0', 'autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'http://sourceforge.n=
et/tracker/?group_id=3D16077&atid=3D116077', 'None', 'iCal and scheduling (=
RFC 2445, 2446, 2447) library.', 'MATCH', 'N/A', 'http://downloads.sourcefo=
rge.net/project/freeassociation/libical/libical-0.48/libical-0.48.tar.gz', =
'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libical,0.48,0.48,LGPLv2.1 | MPL-1,libs,r0,None,http://sourceforg=
e.net/projects/freeassociation/,http://sourceforge.net/tracker/?group_id=3D=
16077&atid=3D116077,MATCH,autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ,iCal and scheduling (RFC 2445, 2446, 24=
47) library.,N/A,http://downloads.sourceforge.net/project/freeassociation/l=
ibical/libical-0.48/libical-0.48.tar.gz,Cristian Iorga <cristian.iorga@inte=
l.com>)
['at-spi2-atk', '2.12.1', '2.13.4', 'LGPLv2', 'base', '', 'r0', 'pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  dbus glib-2.0 atk at-spi2-core', 'None', 'None', 'AT-SPI 2 =
Toolkit Bridge.', 'UPDATE', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/=
at-spi2-atk/2.12/at-spi2-atk-2.12.1.tar.xz', 'Ross Burton <ross.burton@inte=
l.com>', 'None']
inserted (at-spi2-atk,2.12.1,2.13.4,LGPLv2,base,r0,None,,None,UPDATE,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  dbus glib-2.0 atk at-spi2-core,AT-SPI 2 Toolkit Bridge.=
,N/A,http://ftp.gnome.org/pub/GNOME/sources/at-spi2-atk/2.12/at-spi2-atk-2.=
12.1.tar.xz,Ross Burton <ross.burton@intel.com>)
['bison', '2.7.1', '3.0.2', 'GPLv3', 'devel', 'http://www.gnu.org/software/=
bison/', 'r0', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bison-native flex-n=
ative texinfo-native', 'None', 'None', 'Bison is a general-purpose parser g=
enerator that converts an annotated context-free grammar into an LALR(1) or=
 GLR parser for that grammar.  Bison is upward compatible with Yacc: all pr=
operly-written Yacc grammars ought to work with Bison with no change. Anyon=
e familiar with Yacc should be able to use Bison with little trouble.', 'UP=
DATE', 'N/A', 'ftp://ftp.gnu.org/gnu/bison/bison-2.7.1.tar.xz', 'Chong Lu <=
Chong.Lu@windriver.com>', 'None']
inserted (bison,2.7.1,3.0.2,GPLv3,devel,r0,None,http://www.gnu.org/software=
/bison/,None,UPDATE,autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bison-native fl=
ex-native texinfo-native,Bison is a general-purpose parser generator that c=
onverts an annotated context-free grammar into an LALR(1) or GLR parser for=
 that grammar.  Bison is upward compatible with Yacc: all properly-written =
Yacc grammars ought to work with Bison with no change. Anyone familiar with=
 Yacc should be able to use Bison with little trouble.,N/A,ftp://ftp.gnu.or=
g/gnu/bison/bison-2.7.1.tar.xz,Chong Lu <Chong.Lu@windriver.com>)
['gcc-cross-canadian-i586', '4.9.1', '4.9.1', 'GPL-3.0-with-GCC-exception &=
 GPLv3', 'devel', 'http://www.gnu.org/software/gcc/', 'r0', 'autoconf-nativ=
e automake-native libtool-native gnu-config-native gettext-native nativesdk=
-gettext  virtual/i586-poky-linux-gcc virtual/i586-pokysdk-linux-binutils-c=
rosssdk virtual/nativesdk-i586-pokysdk-linux-libc-for-gcc nativesdk-gettext=
 nativesdk-gmp nativesdk-mpfr nativesdk-libmpc nativesdk-elfutils nativesdk=
-zlib texinfo-native chrpath-replacement-native', 'None', 'None', 'GNU cc a=
nd gcc C compilers (cross-canadian for i586 target).', 'MATCH', 'N/A', 'ftp=
://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2', 'Richard Purdie <richa=
rd.purdie@linuxfoundation.org>', 'None']
inserted (gcc-cross-canadian-i586,4.9.1,4.9.1,GPL-3.0-with-GCC-exception & =
GPLv3,devel,r0,None,http://www.gnu.org/software/gcc/,None,MATCH,autoconf-na=
tive automake-native libtool-native gnu-config-native gettext-native native=
sdk-gettext  virtual/i586-poky-linux-gcc virtual/i586-pokysdk-linux-binutil=
s-crosssdk virtual/nativesdk-i586-pokysdk-linux-libc-for-gcc nativesdk-gett=
ext nativesdk-gmp nativesdk-mpfr nativesdk-libmpc nativesdk-elfutils native=
sdk-zlib texinfo-native chrpath-replacement-native,GNU cc and gcc C compile=
rs (cross-canadian for i586 target).,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.=
1/gcc-4.9.1.tar.bz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['makedevs', '1.0.1', 'INVALID', 'GPLv2', 'base', '', 'r0', ' virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None'=
, 'None', 'Tool for creating device nodes.', 'MATCH', 'N/A', 'file://makede=
vs.c', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (makedevs,1.0.1,INVALID,GPLv2,base,r0,None,,None,MATCH, virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Tool =
for creating device nodes.,N/A,file://makedevs.c,Saul Wold <sgw@linux.intel=
=2Ecom>)
['ofono', '1.14', '1.15', 'GPLv2', 'base', 'http://www.ofono.org', 'r1', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  dbus glib-2.0 udev mobile-broadband-provider-info =
bluez4 update-rc.d-native initscripts', 'None', 'None', 'oFono is a stack f=
or mobile telephony devices on Linux. oFono supports speaking to telephony =
devices through specific drivers, or with generic AT commands.', 'UPDATE', =
'1.6', 'http://kernel.org/pub/linux/network/ofono/ofono-1.14.tar.xz', 'Cris=
tian Iorga <cristian.iorga@intel.com>', 'None']
inserted (ofono,1.14,1.15,GPLv2,base,r1,None,http://www.ofono.org,None,UPDA=
TE,pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  dbus glib-2.0 udev mobile-broadband-provider-i=
nfo bluez4 update-rc.d-native initscripts,oFono is a stack for mobile telep=
hony devices on Linux. oFono supports speaking to telephony devices through=
 specific drivers, or with generic AT commands.,1.6,http://kernel.org/pub/l=
inux/network/ofono/ofono-1.14.tar.xz,Cristian Iorga <cristian.iorga@intel.c=
om>)
['usbinit', '1.0', 'INVALID', 'GPLv2', 'base', '', 'r3', '  update-rc.d-nat=
ive initscripts', 'None', 'None', 'Initscript for enabling USB gadget Ether=
net.', 'MATCH', 'n/a', 'file://usb-gether', 'Saul Wold <sgw@linux.intel.com=
>', 'None']
inserted (usbinit,1.0,INVALID,GPLv2,base,r3,None,,None,MATCH,  update-rc.d-=
native initscripts,Initscript for enabling USB gadget Ethernet.,n/a,file://=
usb-gether,Saul Wold <sgw@linux.intel.com>)
['qt-demo-init', '0.1', 'INVALID', 'MIT', 'base', '', 'r3', '  update-rc.d-=
native initscripts', 'None', 'None', 'Init script for qtdemo.', 'MATCH', 'N=
/A', 'file://qtdemo-init', 'Paul Eggleton <paul.eggleton@linux.intel.com>',=
 'None']
inserted (qt-demo-init,0.1,INVALID,MIT,base,r3,None,,None,MATCH,  update-rc=
=2Ed-native initscripts,Init script for qtdemo.,N/A,file://qtdemo-init,Paul=
 Eggleton <paul.eggleton@linux.intel.com>)
['xkeyboard-config', '2.11', '2.12', 'MIT & MIT-style', 'x11/libs', 'http:/=
/freedesktop.org/wiki/Software/XKeyboardConfig', 'r0', 'pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  intltool-native virtual/gettext util-macros libxslt-native', 'https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxkeyboard-config', 'None', '=
The non-arch keyboard configuration database for X Window.  The goal is to =
provide the consistent, well-structured, frequently released open source of=
 X keyboard configuration data for X Window System implementations.  The pr=
oject is targeted to XKB-based systems.', 'UPDATE', 'N/A', 'http://xorg.fre=
edesktop.org/releases/individual/data/xkeyboard-config/xkeyboard-config-2.1=
1.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xkeyboard-config,2.11,2.12,MIT & MIT-style,x11/libs,r0,None,http:=
//freedesktop.org/wiki/Software/XKeyboardConfig,https://bugs.freedesktop.or=
g/enter_bug.cgi?product=3Dxkeyboard-config,UPDATE,pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 intltool-native virtual/gettext util-macros libxslt-native,The non-arch ke=
yboard configuration database for X Window.  The goal is to provide the con=
sistent, well-structured, frequently released open source of X keyboard con=
figuration data for X Window System implementations.  The project is target=
ed to XKB-based systems.,N/A,http://xorg.freedesktop.org/releases/individua=
l/data/xkeyboard-config/xkeyboard-config-2.11.tar.bz2,Ross Burton <ross.bur=
ton@intel.com>)
['x11vnc', '0.9.13', '0.9.13', 'GPLv2+', 'x11/utils', 'http://www.karlrunge=
=2Ecom/x11vnc/', 'r0', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  openssl virtual/libx11 libxext jpeg zlib l=
ibxfixes libxrandr libxdamage libxtst avahi', 'None', 'None', 'Exports your=
 X session on-the-fly via VNC.', 'MATCH', 'N/A', 'http://downloads.sourcefo=
rge.net/libvncserver/x11vnc/0.9.13/x11vnc-0.9.13.tar.gz', 'Richard Purdie <=
richard.purdie@linuxfoundation.org>', 'None']
inserted (x11vnc,0.9.13,0.9.13,GPLv2+,x11/utils,r0,None,http://www.karlrung=
e.com/x11vnc/,None,MATCH,autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  openssl virtual/libx11 libxext jpeg zlib =
libxfixes libxrandr libxdamage libxtst avahi,Exports your X session on-the-=
fly via VNC.,N/A,http://downloads.sourceforge.net/libvncserver/x11vnc/0.9.1=
3/x11vnc-0.9.13.tar.gz,Richard Purdie <richard.purdie@linuxfoundation.org>)
['gcc-cross-i586', '4.9.1', '4.9.1', 'GPL-3.0-with-GCC-exception & GPLv3', =
'devel', 'http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automak=
e-native libtool-native gnu-config-native   virtual/i586-poky-linux-binutil=
s virtual/i586-poky-linux-libc-for-gcc linux-libc-headers mpfr-native gmp-n=
ative libmpc-native zlib-native texinfo-dummy-native', 'None', 'None', 'GNU=
 cc and gcc C compilers.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4=
=2E9.1/gcc-4.9.1.tar.bz2', 'Richard Purdie <richard.purdie@linuxfoundation.=
org>', 'None']
inserted (gcc-cross-i586,4.9.1,4.9.1,GPL-3.0-with-GCC-exception & GPLv3,dev=
el,r0,None,http://www.gnu.org/software/gcc/,None,MATCH,autoconf-native auto=
make-native libtool-native gnu-config-native   virtual/i586-poky-linux-binu=
tils virtual/i586-poky-linux-libc-for-gcc linux-libc-headers mpfr-native gm=
p-native libmpc-native zlib-native texinfo-dummy-native,GNU cc and gcc C co=
mpilers.,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2,Richard =
Purdie <richard.purdie@linuxfoundation.org>)
['nativesdk-qemu-helper', '1.0', 'INVALID', 'GPLv2', 'base', '', 'r9', 'vir=
tual/nativesdk-i586-pokysdk-linux-compilerlibs chrpath-replacement-native v=
irtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-libc', 'None', 'No=
ne', 'Qemu helper scripts.', 'MATCH', 'N/A', 'file:///tmp/poky.packages/scr=
ipts/runqemu', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (nativesdk-qemu-helper,1.0,INVALID,GPLv2,base,r9,None,,None,MATCH,=
virtual/nativesdk-i586-pokysdk-linux-compilerlibs chrpath-replacement-nativ=
e virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-libc,Qemu helpe=
r scripts.,N/A,file:///tmp/poky.packages/scripts/runqemu,Saul Wold <sgw@lin=
ux.intel.com>)
['qt-mobility-x11', '1.2.0', 'N/A', 'LGPLv2.1', 'x11/libs', 'http://qt-proj=
ect.org/', 'r8', 'qt4-tools-native qt4-x11  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  gstreamer util-linux bluez4=
 pulseaudio', 'None', 'None', 'Mobile device API extensions for Qt/X11 4.x.=
', 'ErrHostNoDir:/qt/add-ons/:-:qt-mobility-opensource-src-1.2.0.tar.gz:get=
=2Eqt.nokia.com/qt/add-ons/qt-mobility-opensource-src-1.2.0.tar.gz', 'N/A',=
 'http://get.qt.nokia.com/qt/add-ons/qt-mobility-opensource-src-1.2.0.tar.g=
z', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (qt-mobility-x11,1.2.0,N/A,LGPLv2.1,x11/libs,r8,None,http://qt-pro=
ject.org/,None,ErrHostNoDir:/qt/add-ons/:-:qt-mobility-opensource-src-1.2.0=
=2Etar.gz:get.qt.nokia.com/qt/add-ons/qt-mobility-opensource-src-1.2.0.tar.=
gz,qt4-tools-native qt4-x11  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  gstreamer util-linux bluez4 pulseaudio,Mob=
ile device API extensions for Qt/X11 4.x.,N/A,http://get.qt.nokia.com/qt/ad=
d-ons/qt-mobility-opensource-src-1.2.0.tar.gz,Paul Eggleton <paul.eggleton@=
linux.intel.com>)
['mtdev', '1.1.5', '1.1.5', 'MIT', 'libs', 'http://bitmath.org/code/mtdev/'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ', 'None', 'None', 'mtdev is a library w=
hich transforms all variants of kernel multitouch events to the slotted typ=
e B protocol. The events put into mtdev may be from any MT device, specific=
ally type A without contact tracking, type A with contact tracking, or type=
 B with contact tracking', 'MATCH', 'N/A', 'http://bitmath.org/code/mtdev/m=
tdev-1.1.5.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (mtdev,1.1.5,1.1.5,MIT,libs,r0,None,http://bitmath.org/code/mtdev/=
,None,MATCH,pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  ,mtdev is a library which transforms =
all variants of kernel multitouch events to the slotted type B protocol. Th=
e events put into mtdev may be from any MT device, specifically type A with=
out contact tracking, type A with contact tracking, or type B with contact =
tracking,N/A,http://bitmath.org/code/mtdev/mtdev-1.1.5.tar.bz2,Ross Burton =
<ross.burton@intel.com>)
['texinfo-dummy-native', '1.0', 'INVALID', 'MIT', 'console/utils', '', 'r0'=
, ' ', 'None', 'None', 'Fake version of the texinfo utility suite', 'MATCH'=
, 'N/A', 'file://template.py', 'None', 'None']
inserted (texinfo-dummy-native,1.0,INVALID,MIT,console/utils,r0,None,,None,=
MATCH, ,Fake version of the texinfo utility suite,N/A,file://template.py,No=
ne)
['byacc', '20140422', '20140715', 'PD', 'devel', '', 'r0', 'autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'No=
ne', 'None', 'A parser generator utility that reads a grammar specification=
 from a file and generates an LR(1) parser for it.  The parsers consist of =
a set of LALR(1) parsing tables and a driver routine written in the C progr=
amming language.', 'UPDATE', 'N/A', 'ftp://invisible-island.net/byacc/byacc=
-20140422.tgz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (byacc,20140422,20140715,PD,devel,r0,None,,None,UPDATE,autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,A=
 parser generator utility that reads a grammar specification from a file an=
d generates an LR(1) parser for it.  The parsers consist of a set of LALR(1=
) parsing tables and a driver routine written in the C programming language=
=2E,N/A,ftp://invisible-island.net/byacc/byacc-20140422.tgz,Chong Lu <Chong=
=2ELu@windriver.com>)
['wayland', '1.5.0', '1.5.0', 'MIT', 'base', 'http://wayland.freedesktop.or=
g', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  expat libffi wayland-native', 'None', =
'None', 'Wayland is a protocol for a compositor to talk to its clients as w=
ell as a C library implementation of that protocol. The compositor can be a=
 standalone display server running on Linux kernel modesetting and evdev in=
put devices, an X application, or a wayland client itself. The clients can =
be traditional applications, X servers (rootless or fullscreen) or other di=
splay servers.', 'MATCH', 'N/A', 'http://wayland.freedesktop.org/releases/w=
ayland-1.5.0.tar.xz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (wayland,1.5.0,1.5.0,MIT,base,r0,None,http://wayland.freedesktop.o=
rg,None,MATCH,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  expat libffi wayland-native,Wayland=
 is a protocol for a compositor to talk to its clients as well as a C libra=
ry implementation of that protocol. The compositor can be a standalone disp=
lay server running on Linux kernel modesetting and evdev input devices, an =
X application, or a wayland client itself. The clients can be traditional a=
pplications, X servers (rootless or fullscreen) or other display servers.,N=
/A,http://wayland.freedesktop.org/releases/wayland-1.5.0.tar.xz,Ross Burton=
 <ross.burton@intel.com>)
['dbus-wait', '0.1+gitAUTOINC+6cc6077a36', '0.1+gitAUTOINC+6cc6077', 'GPLv2=
', 'base', 'http://git.yoctoproject.org/cgit/cgit.cgi/dbus-wait', 'r2', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  dbus', 'None', 'None', 'A simple tool to wait for a=
 specific signal over DBus.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/d=
bus-wait', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (dbus-wait,0.1+gitAUTOINC+6cc6077a36,0.1+gitAUTOINC+6cc6077,GPLv2,=
base,r2,None,http://git.yoctoproject.org/cgit/cgit.cgi/dbus-wait,None,MATCH=
,pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  dbus,A simple tool to wait for a specific signal=
 over DBus.,N/A,git://git.yoctoproject.org/dbus-wait,Chong Lu <Chong.Lu@win=
driver.com>)
['libxxf86misc', '1.0.3', '1.0.3', 'MIT', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  util-macros libxext xf86miscproto', 'https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The XFree86-Mis=
c extension, provides a means to access input device configuration settings=
 specific to the XFree86/Xorg DDX.', 'MATCH', 'N/A', 'http://xorg.freedeskt=
op.org/releases/individual/lib/libXxf86misc-1.0.3.tar.bz2', 'Ross Burton <r=
oss.burton@intel.com>', 'None']
inserted (libxxf86misc,1.0.3,1.0.3,MIT,x11/libs,r0,1,http://www.x.org,https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  util-macros libxext xf86miscproto,The XFree86-Misc extension, pro=
vides a means to access input device configuration settings specific to the=
 XFree86/Xorg DDX.,N/A,http://xorg.freedesktop.org/releases/individual/lib/=
libXxf86misc-1.0.3.tar.bz2,Ross Burton <ross.burton@intel.com>)
['gcc-crosssdk-initial-i586', '4.9.1', '4.9.1', 'GPL-3.0-with-GCC-exception=
 & GPLv3', 'devel', 'http://www.gnu.org/software/gcc/', 'r0', '  virtual/i5=
86-pokysdk-linux-binutils-crosssdk gettext-native mpfr-native gmp-native li=
bmpc-native zlib-native texinfo-native', 'None', 'None', 'GNU cc and gcc C =
compilers.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1=
=2Etar.bz2', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (gcc-crosssdk-initial-i586,4.9.1,4.9.1,GPL-3.0-with-GCC-exception =
& GPLv3,devel,r0,None,http://www.gnu.org/software/gcc/,None,MATCH,  virtual=
/i586-pokysdk-linux-binutils-crosssdk gettext-native mpfr-native gmp-native=
 libmpc-native zlib-native texinfo-native,GNU cc and gcc C compilers.,N/A,f=
tp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2,Richard Purdie <richar=
d.purdie@linuxfoundation.org>)
['libart-lgpl', '2.3.21', '2.3.21', 'LGPLv2', 'x11/gnome', '', 'r2', 'pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', 'None', 'Library of functions for 2D graphi=
cs.', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/libart_lgpl/2=
=2E3/libart_lgpl-2.3.21.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'N=
one']
inserted (libart-lgpl,2.3.21,2.3.21,LGPLv2,x11/gnome,r2,None,,None,MATCH,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ,Library of functions for 2D graphics.,N/A,http://f=
tp.gnome.org/pub/GNOME/sources/libart_lgpl/2.3/libart_lgpl-2.3.21.tar.bz2,R=
oss Burton <ross.burton@intel.com>)
['rpm', '5.4.14', '5.4.14-0.20131024', 'LGPLv2.1', 'base', 'http://rpm5.org=
/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  libpcre attr acl popt os=
sp-uuid file byacc-native beecrypt bzip2 db elfutils openssl python zlib', =
'None', 'None', 'The RPM Package Manager (RPM) is a powerful command line d=
riven package management system capable of installing, uninstalling, verify=
ing, querying, and updating software packages. Each software package consis=
ts of an archive of files along with information about the package like its=
 version, a description, etc.', 'UPDATE', '5.4.10', 'http://www.rpm5.org/fi=
les/rpm/rpm-5.4/rpm-5.4.14-0.20131024.src.rpm;extract=3Drpm-5.4.14.tar.gz',=
 'Mark Hatle <mark.hatle@windriver.com>', 'None']
inserted (rpm,5.4.14,5.4.14-0.20131024,LGPLv2.1,base,r0,None,http://rpm5.or=
g/,None,UPDATE,autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libpcre attr acl pop=
t ossp-uuid file byacc-native beecrypt bzip2 db elfutils openssl python zli=
b,The RPM Package Manager (RPM) is a powerful command line driven package m=
anagement system capable of installing, uninstalling, verifying, querying, =
and updating software packages. Each software package consists of an archiv=
e of files along with information about the package like its version, a des=
cription, etc.,5.4.10,http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.14-0.20=
131024.src.rpm;extract=3Drpm-5.4.14.tar.gz,Mark Hatle <mark.hatle@windriver=
=2Ecom>)
['xf86-input-synaptics', '1.7.4', '1.8.0', 'MIT-X', 'x11/drivers', 'http://=
www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randrpr=
oto util-macros inputproto kbproto  libxi mtdev libxtst', 'https://bugs.fre=
edesktop.org', '2', 'synaptics is an Xorg input driver for the touchpads fr=
om Synaptics Incorporated. Even though these touchpads (by default, operati=
ng in a compatibility mode emulating a standard mouse) can be handled by th=
e normal evdev or mouse drivers, this driver allows more advanced features =
of the touchpad to become available.', 'UPDATE', 'N/A', 'http://xorg.freede=
sktop.org/releases/individual/driver/xf86-input-synaptics-1.7.4.tar.bz2', '=
Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86-input-synaptics,1.7.4,1.8.0,MIT-X,x11/drivers,r0,2,http://ww=
w.x.org,https://bugs.freedesktop.org,UPDATE,pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtu=
al/xserver xproto randrproto util-macros inputproto kbproto  libxi mtdev li=
bxtst,synaptics is an Xorg input driver for the touchpads from Synaptics In=
corporated. Even though these touchpads (by default, operating in a compati=
bility mode emulating a standard mouse) can be handled by the normal evdev =
or mouse drivers, this driver allows more advanced features of the touchpad=
 to become available.,N/A,http://xorg.freedesktop.org/releases/individual/d=
river/xf86-input-synaptics-1.7.4.tar.bz2,Ross Burton <ross.burton@intel.com=
>)
['cracklib', '2.9.1', '2.9.1', 'LGPLv2.1+', 'base', 'http://sourceforge.net=
/projects/cracklib', 'r0', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  crackli=
b-native zlib', 'None', 'None', 'Password strength checker library.', 'MATC=
H', 'N/A', 'http://downloads.sourceforge.net/cracklib/cracklib-2.9.1.tar.gz=
', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (cracklib,2.9.1,2.9.1,LGPLv2.1+,base,r0,None,http://sourceforge.ne=
t/projects/cracklib,None,MATCH,autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  crac=
klib-native zlib,Password strength checker library.,N/A,http://downloads.so=
urceforge.net/cracklib/cracklib-2.9.1.tar.gz,Hongxu Jia <hongxu.jia@windriv=
er.com>)
['ncurses', '5.9', '5.9', 'MIT', 'libs', 'http://www.gnu.org/software/ncurs=
es/ncurses.html', 'r15.1', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  ncurses-native virtual/update-alternat=
ives', 'None', 'None', 'SVr4 and XSI-Curses compatible curses library and t=
erminfo tools including tic, infocmp, captoinfo. Supports color, multiple h=
ighlights, forms-drawing characters, and automatic recognition of keypad an=
d function-key sequences. Extensions include resizable windows and mouse su=
pport on both xterm and Linux console using the gpm library.', 'MATCH', 'N/=
A', 'ftp://ftp.gnu.org/gnu/ncurses/ncurses-5.9.tar.gz', 'Hongxu Jia <hongxu=
=2Ejia@windriver.com>', 'None']
inserted (ncurses,5.9,5.9,MIT,libs,r15.1,None,http://www.gnu.org/software/n=
curses/ncurses.html,None,MATCH,autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  ncurses-native virtual/update-alter=
natives,SVr4 and XSI-Curses compatible curses library and terminfo tools in=
cluding tic, infocmp, captoinfo. Supports color, multiple highlights, forms=
-drawing characters, and automatic recognition of keypad and function-key s=
equences. Extensions include resizable windows and mouse support on both xt=
erm and Linux console using the gpm library.,N/A,ftp://ftp.gnu.org/gnu/ncur=
ses/ncurses-5.9.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['libxi', '1.7.4', '1.7.4', 'MIT & MIT-style', 'x11/libs', 'http://www.x.or=
g', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  util-macros libxext inputproto libxfix=
es', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'lib=
xi is an extension to the X11 protocol to support input devices other than =
the core X keyboard and pointer.  It allows client programs to select input=
 from these devices independently from each other and independently from th=
e core devices.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/ind=
ividual/lib/libXi-1.7.4.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'N=
one']
inserted (libxi,1.7.4,1.7.4,MIT & MIT-style,x11/libs,r0,1,http://www.x.org,=
https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  util-macros libxext inputproto libxfixes,libxi is an extensi=
on to the X11 protocol to support input devices other than the core X keybo=
ard and pointer.  It allows client programs to select input from these devi=
ces independently from each other and independently from the core devices.,=
N/A,http://xorg.freedesktop.org/releases/individual/lib/libXi-1.7.4.tar.bz2=
,Ross Burton <ross.burton@intel.com>)
['python-numpy', '1.7.0', '1.8.1', 'PSF', 'devel/python', '', 'r1', ' virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   =
python-native python  python-native ', 'None', 'None', 'A sophisticated Num=
eric Processing Package for Python.', 'UPDATE', 'N/A', 'http://downloads.so=
urceforge.net/numpy/numpy-1.7.0.tar.gz', 'None', 'None']
inserted (python-numpy,1.7.0,1.8.1,PSF,devel/python,r1,None,,None,UPDATE, v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c   python-native python  python-native ,A sophisticated Numeric Processing=
 Package for Python.,N/A,http://downloads.sourceforge.net/numpy/numpy-1.7.0=
=2Etar.gz,None)
['xcursor-transparent-theme', '0.1.1', '0.1.1', 'GPLv2', 'x11/base', 'http:=
//www.matchbox-project.org/', 'r4', 'autoconf-native automake-native libtoo=
l-native gnu-config-native  ', 'http://bugzilla.yoctoproject.org/', 'None',=
 'Transparent X11 cursor theme for touchscreens.', 'MATCH', 'N/A', 'http://=
downloads.yoctoproject.org/releases/matchbox/utils/xcursor-transparent-them=
e-0.1.1.tar.gz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xcursor-transparent-theme,0.1.1,0.1.1,GPLv2,x11/base,r4,None,http=
://www.matchbox-project.org/,http://bugzilla.yoctoproject.org/,MATCH,autoco=
nf-native automake-native libtool-native gnu-config-native  ,Transparent X1=
1 cursor theme for touchscreens.,N/A,http://downloads.yoctoproject.org/rele=
ases/matchbox/utils/xcursor-transparent-theme-0.1.1.tar.gz,Ross Burton <ros=
s.burton@intel.com>)
['nfs-utils', '1.3.0', '1.3.0', 'MIT & GPLv2+ & BSD', 'console/network', 'h=
ttp://nfs.sourceforge.net/', 'r0', 'pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libcap libnfs=
idmap libevent util-linux sqlite3 base-files base-passwd shadow-native shad=
ow-sysroot shadow update-rc.d-native initscripts tcp-wrappers', 'None', 'No=
ne', 'The nfs-utils package provides a daemon for the kernel NFS server and=
 related tools.', 'MATCH', 'N/A', 'http://kernel.org/pub/linux/utils/nfs-ut=
ils/1.3.0/nfs-utils-1.3.0.tar.xz', 'Paul Eggleton <paul.eggleton@linux.inte=
l.com>', 'None']
inserted (nfs-utils,1.3.0,1.3.0,MIT & GPLv2+ & BSD,console/network,r0,None,=
http://nfs.sourceforge.net/,None,MATCH,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libcap lib=
nfsidmap libevent util-linux sqlite3 base-files base-passwd shadow-native s=
hadow-sysroot shadow update-rc.d-native initscripts tcp-wrappers,The nfs-ut=
ils package provides a daemon for the kernel NFS server and related tools.,=
N/A,http://kernel.org/pub/linux/utils/nfs-utils/1.3.0/nfs-utils-1.3.0.tar.x=
z,Paul Eggleton <paul.eggleton@linux.intel.com>)
['libmad', '0.15.1b', '0.15.1b', 'GPLv2+', 'libs', 'http://sourceforge.net/=
projects/mad/', 'r3', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  libid3tag', 'http://source=
forge.net/tracker/?group_id=3D12349&atid=3D112349', 'None', 'MPEG Audio Dec=
oder library.', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/mad/libma=
d-0.15.1b.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libmad,0.15.1b,0.15.1b,GPLv2+,libs,r3,None,http://sourceforge.net=
/projects/mad/,http://sourceforge.net/tracker/?group_id=3D12349&atid=3D1123=
49,MATCH,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  libid3tag,MPEG Audio Decoder library.,N/=
A,http://downloads.sourceforge.net/mad/libmad-0.15.1b.tar.gz,Saul Wold <sgw=
@linux.intel.com>)
['run-postinsts', '1.0', 'INVALID', 'MIT', 'devel', '', 'r9', '  update-rc.=
d-native initscripts', 'None', 'None', 'Runs postinstall scripts on first b=
oot of the target device.', 'MATCH', 'check', 'file://run-postinsts', 'Cris=
tian Iorga <cristian.iorga@intel.com>', 'None']
inserted (run-postinsts,1.0,INVALID,MIT,devel,r9,None,,None,MATCH,  update-=
rc.d-native initscripts,Runs postinstall scripts on first boot of the targe=
t device.,check,file://run-postinsts,Cristian Iorga <cristian.iorga@intel.c=
om>)
['libpng12', '1.2.51', '1.2.51', 'Libpng', 'libs', 'http://www.libpng.org/'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  zlib', 'None', 'None', 'PNG image format=
 decoding library.', 'MATCH', '1.2.50', 'http://downloads.sourceforge.net/p=
roject/libpng/libpng12/1.2.51/libpng-1.2.51.tar.xz', 'Ross Burton <ross.bur=
ton@intel.com>', 'None']
inserted (libpng12,1.2.51,1.2.51,Libpng,libs,r0,None,http://www.libpng.org/=
,None,MATCH,pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  zlib,PNG image format decoding librar=
y.,1.2.50,http://downloads.sourceforge.net/project/libpng/libpng12/1.2.51/l=
ibpng-1.2.51.tar.xz,Ross Burton <ross.burton@intel.com>)
['sysprof', '1.2.0+gitAUTOINC+cd44ee6644', '1.2.0+gitAUTOINC+6901897', 'GPL=
v2', 'base', '', 'r0', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ libglade', 'None', '=
None', 'System-wide Performance Profiler for Linux.', 'UPDATE', 'N/A', 'git=
://git.gnome.org/sysprof', 'Tom Zanussi <tom.zanussi@intel.com>', 'None']
inserted (sysprof,1.2.0+gitAUTOINC+cd44ee6644,1.2.0+gitAUTOINC+6901897,GPLv=
2,base,r0,None,,None,UPDATE,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ libglade,System-=
wide Performance Profiler for Linux.,N/A,git://git.gnome.org/sysprof,Tom Za=
nussi <tom.zanussi@intel.com>)
['binutils-crosssdk-i586', '2.24', '2.24', 'GPLv3', 'devel', 'http://www.gn=
u.org/software/binutils/', 'r0', '  flex-native bison-native zlib-native gn=
u-config-native autoconf-native texinfo-native', 'http://sourceware.org/bug=
zilla/', 'None', 'The GNU Binutils are a collection of binary tools. The ma=
in ones are ld (GNU Linker), and as (GNU Assembler). This package also incl=
udes addition tools such as addr2line (Converts addresses into filenames an=
d line numbers), ar (utility for creating, modifying and extracting archive=
s), nm (list symbols in object files), objcopy (copy and translate object f=
iles), objdump (Display object information), and other tools and related li=
braries.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/binutils/binutils-2.24.ta=
r.bz2', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (binutils-crosssdk-i586,2.24,2.24,GPLv3,devel,r0,None,http://www.g=
nu.org/software/binutils/,http://sourceware.org/bugzilla/,MATCH,  flex-nati=
ve bison-native zlib-native gnu-config-native autoconf-native texinfo-nativ=
e,The GNU Binutils are a collection of binary tools. The main ones are ld (=
GNU Linker), and as (GNU Assembler). This package also includes addition to=
ols such as addr2line (Converts addresses into filenames and line numbers),=
 ar (utility for creating, modifying and extracting archives), nm (list sym=
bols in object files), objcopy (copy and translate object files), objdump (=
Display object information), and other tools and related libraries.,N/A,ftp=
://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2,Robert Yang <liezhi.yang@=
windriver.com>)
['icon-naming-utils', '0.8.90', '0.8.90', 'GPLv2', 'base', '', 'r4', 'autoc=
onf-native automake-native libtool-native gnu-config-native  libxml-simple-=
perl-native perl-native', 'None', 'None', 'A Perl script used for maintaini=
ng backwards compatibility with current desktop icon themes, while migratin=
g to the names specified in the Icon Naming Specification. The Icon Naming =
Utilities map the icon names used by the GNOME and KDE desktops to the icon=
 names proposed in the Icon Naming Specification, and generate the icon fil=
es appropriate to the desktop environment you use. The Icon Naming Specific=
ation provides a standard list of common icon contexts and names that can b=
e used to make icon themes work in a desktop environment or application tha=
t implements the naming specification. ', 'MATCH', 'N/A', 'http://tango.fre=
edesktop.org/releases/icon-naming-utils-0.8.90.tar.gz', 'None', 'None']
inserted (icon-naming-utils,0.8.90,0.8.90,GPLv2,base,r4,None,,None,MATCH,au=
toconf-native automake-native libtool-native gnu-config-native  libxml-simp=
le-perl-native perl-native,A Perl script used for maintaining backwards com=
patibility with current desktop icon themes, while migrating to the names s=
pecified in the Icon Naming Specification. The Icon Naming Utilities map th=
e icon names used by the GNOME and KDE desktops to the icon names proposed =
in the Icon Naming Specification, and generate the icon files appropriate t=
o the desktop environment you use. The Icon Naming Specification provides a=
 standard list of common icon contexts and names that can be used to make i=
con themes work in a desktop environment or application that implements the=
 naming specification. ,N/A,http://tango.freedesktop.org/releases/icon-nami=
ng-utils-0.8.90.tar.gz,None)
['libnl', '3.2.25', '3.2.25', 'LGPLv2.1', 'libs/network', 'http://www.infra=
dead.org/~tgr/libnl/', 'r0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native bison-n=
ative', 'None', '1', 'A library for applications dealing with netlink socke=
ts.', 'MATCH', 'N/A', 'http://www.infradead.org/~tgr/libnl/files/libnl-3.2.=
25.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'libnl-3.2.2 is incompatible=
 with libnl2, so no Upgrade']
inserted (libnl,3.2.25,3.2.25,LGPLv2.1,libs/network,r0,1,http://www.infrade=
ad.org/~tgr/libnl/,None,MATCH,pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native bison-n=
ative,A library for applications dealing with netlink sockets.,N/A,http://w=
ww.infradead.org/~tgr/libnl/files/libnl-3.2.25.tar.gz,Saul Wold <sgw@linux.=
intel.com>)
['zlib', '1.2.8', '1.2.8', 'Zlib', 'libs', 'http://zlib.net/', 'r0', ' virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
', 'None', 'None', 'Zlib is a general-purpose, patent-free, lossless data c=
ompression library which is used by many different programs.', 'MATCH', 'N/=
A', 'http://www.zlib.net/zlib-1.2.8.tar.xz', 'Chen Qi <Qi.Chen@windriver.co=
m>', 'None']
inserted (zlib,1.2.8,1.2.8,Zlib,libs,r0,None,http://zlib.net/,None,MATCH, v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  ,Zlib is a general-purpose, patent-free, lossless data compression libra=
ry which is used by many different programs.,N/A,http://www.zlib.net/zlib-1=
=2E2.8.tar.xz,Chen Qi <Qi.Chen@windriver.com>)
['xrestop', '0.4', '0.4', 'GPLv2+', 'x11/utils', 'http://www.freedesktop.or=
g/wiki/Software/xrestop', 'r3', 'pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxres libxext =
virtual/libx11 ncurses', 'https://bugs.freedesktop.org/', 'None', 'top-like=
 statistics of X11 server resource usage by clients', 'MATCH', 'N/A', 'http=
://downloads.yoctoproject.org/releases/xrestop/xrestop-0.4.tar.gz', 'Ross B=
urton <ross.burton@intel.com>', 'None']
inserted (xrestop,0.4,0.4,GPLv2+,x11/utils,r3,None,http://www.freedesktop.o=
rg/wiki/Software/xrestop,https://bugs.freedesktop.org/,MATCH,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  libxres libxext virtual/libx11 ncurses,top-like statistics of X=
11 server resource usage by clients,N/A,http://downloads.yoctoproject.org/r=
eleases/xrestop/xrestop-0.4.tar.gz,Ross Burton <ross.burton@intel.com>)
['xtrans', '1.3.4', '1.3.4', 'MIT & MIT-style', 'x11/libs', 'http://www.x.o=
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
trans-1.3.4.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xtrans,1.3.4,1.3.4,MIT & MIT-style,x11/libs,r0,1,http://www.x.org=
,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  util-macros,The X Transport =
Interface is intended to combine all system and transport specific code int=
o a single place.  This API should be used by all libraries, clients and se=
rvers of the X Window System. Use of this API should allow the addition of =
new types of transports and support for new platforms without making any ch=
anges to the source except in the X Transport Interface code.,N/A,http://xo=
rg.freedesktop.org/releases/individual/lib/xtrans-1.3.4.tar.bz2,Ross Burton=
 <ross.burton@intel.com>)
['resolvconf', '1.75', '1.75', 'GPLv2+', 'console/network', 'http://package=
s.debian.org/resolvconf', 'r0', ' ', 'None', 'None', "Resolvconf is a frame=
work for keeping track of the system's information about currently availabl=
e nameservers. It sets itself up as the intermediary between programs that =
supply nameserver information and programs that need nameserver information=
=2E", 'MATCH', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/r/resolvconf/r=
esolvconf_1.75.tar.xz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (resolvconf,1.75,1.75,GPLv2+,console/network,r0,None,http://packag=
es.debian.org/resolvconf,None,MATCH, ,Resolvconf is a framework for keeping=
 track of the system's information about currently available nameservers. I=
t sets itself up as the intermediary between programs that supply nameserve=
r information and programs that need nameserver information.,N/A,ftp://ftp.=
debian.org/debian/pool/main/r/resolvconf/resolvconf_1.75.tar.xz,Saul Wold <=
sgw@linux.intel.com>)
['xf86-input-evdev', '2.9.0', '2.9.0', 'MIT-X', 'x11/drivers', 'http://www.=
x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randrproto =
util-macros inputproto kbproto  mtdev libevdev', 'https://bugs.freedesktop.=
org', '2', "evdev is an Xorg input driver for Linux's generic event devices=
=2E It therefore supports all input devices that the kernel knows about, in=
cluding most mice and keyboards. The evdev driver can serve as both a point=
er and a keyboard input device, and may be used as both the core keyboard a=
nd the core pointer. Multiple input devices are supported by multiple insta=
nces of this driver, with one Load directive for evdev in the Module sectio=
n of your xorg.conf for each input device that will use this driver. ", 'MA=
TCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/driver/xf86-i=
nput-evdev-2.9.0.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86-input-evdev,2.9.0,2.9.0,MIT-X,x11/drivers,r0,2,http://www.x.=
org,https://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/xs=
erver xproto randrproto util-macros inputproto kbproto  mtdev libevdev,evde=
v is an Xorg input driver for Linux's generic event devices. It therefore s=
upports all input devices that the kernel knows about, including most mice =
and keyboards. The evdev driver can serve as both a pointer and a keyboard =
input device, and may be used as both the core keyboard and the core pointe=
r. Multiple input devices are supported by multiple instances of this drive=
r, with one Load directive for evdev in the Module section of your xorg.con=
f for each input device that will use this driver. ,N/A,http://xorg.freedes=
ktop.org/releases/individual/driver/xf86-input-evdev-2.9.0.tar.bz2,Ross Bur=
ton <ross.burton@intel.com>)
['avahi', '0.6.31', 'N/A', 'GPLv2+ & LGPLv2.1+', 'network', 'http://avahi.o=
rg', 'r11.1', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  exp=
at libcap libdaemon dbus glib-2.0 intltool-native update-rc.d-native initsc=
ripts base-files base-passwd shadow-native shadow-sysroot shadow', 'http://=
avahi.org/report', 'None', 'Avahi is a fully LGPL framework for Multicast D=
NS Service Discovery. It allows programs to publish and discover services a=
nd hosts running on a local network with no specific configuration. This to=
ol implements IPv4LL, "Dynamic Configuration of IPv4 Link-Local Addresses" =
(IETF RFC3927), a protocol for automatic IP address configuration from the =
link-local 169.254.0.0/16 range without the need for a central server.', 'E=
rrHostNoDir:/download/:-:avahi-0.6.31.tar.gz:avahi.org/download/avahi-0.6.3=
1.tar.gz', '0.6.31', 'http://avahi.org/download/avahi-0.6.31.tar.gz', 'Paul=
 Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (avahi,0.6.31,N/A,GPLv2+ & LGPLv2.1+,network,r11.1,None,http://ava=
hi.org,http://avahi.org/report,ErrHostNoDir:/download/:-:avahi-0.6.31.tar.g=
z:avahi.org/download/avahi-0.6.31.tar.gz,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native virtual/gette=
xt gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  expat libcap libdaemon dbus glib-2.0 intltool-native=
 update-rc.d-native initscripts base-files base-passwd shadow-native shadow=
-sysroot shadow,Avahi is a fully LGPL framework for Multicast DNS Service D=
iscovery. It allows programs to publish and discover services and hosts run=
ning on a local network with no specific configuration. This tool implement=
s IPv4LL, "Dynamic Configuration of IPv4 Link-Local Addresses" (IETF RFC392=
7), a protocol for automatic IP address configuration from the link-local 1=
69.254.0.0/16 range without the need for a central server.,0.6.31,http://av=
ahi.org/download/avahi-0.6.31.tar.gz,Paul Eggleton <paul.eggleton@linux.int=
el.com>)
['procps', '3.2.8', '3.2.8', 'GPLv2+ & LGPLv2+', 'base', 'http://procps.sf.=
net', 'r12', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  ncurses virtual/update-alternatives', 'None', 'None'=
, 'Procps contains a set of system utilities that provide system informatio=
n about processes using the /proc filesystem. The package \\ includes the p=
rograms ps, top, vmstat, w, kill, and skill.', 'MATCH', 'N/A', 'http://proc=
ps.sourceforge.net/procps-3.2.8.tar.gz', 'Saul Wold <sgw@linux.intel.com>',=
 'None']
inserted (procps,3.2.8,3.2.8,GPLv2+ & LGPLv2+,base,r12,None,http://procps.s=
f.net,None,MATCH,autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  ncurses virtual/update-alternatives,Procps contai=
ns a set of system utilities that provide system information about processe=
s using the /proc filesystem. The package \ includes the programs ps, top, =
vmstat, w, kill, and skill.,N/A,http://procps.sourceforge.net/procps-3.2.8.=
tar.gz,Saul Wold <sgw@linux.intel.com>)
['matchbox-panel-2', '2.0+gitAUTOINC+26a3a67b41', '2.0+gitAUTOINC+1a7304d',=
 'GPLv2+', 'base', 'http://matchbox-project.org', 'r0', 'pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  gnome-common gtk+ startup-notification dbus dbus-glib    ', 'http:/=
/bugzilla.yoctoproject.org/', 'None', 'Simple GTK+ based panel for handheld=
 devices.', 'UPDATE', 'N/A', 'git://git.yoctoproject.org/matchbox-panel-2',=
 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (matchbox-panel-2,2.0+gitAUTOINC+26a3a67b41,2.0+gitAUTOINC+1a7304d=
,GPLv2+,base,r0,None,http://matchbox-project.org,http://bugzilla.yoctoproje=
ct.org/,UPDATE,pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  gnome-common gtk+ startup-notifica=
tion dbus dbus-glib    ,Simple GTK+ based panel for handheld devices.,N/A,g=
it://git.yoctoproject.org/matchbox-panel-2,Ross Burton <ross.burton@intel.c=
om>)
['binutils-cross-i586', '2.24', '2.24', 'GPLv3', 'devel', 'http://www.gnu.o=
rg/software/binutils/', 'r0', '  flex-native bison-native zlib-native gnu-c=
onfig-native autoconf-native texinfo-dummy-native', 'http://sourceware.org/=
bugzilla/', 'None', 'The GNU Binutils are a collection of binary tools. The=
 main ones are ld (GNU Linker), and as (GNU Assembler). This package also i=
ncludes addition tools such as addr2line (Converts addresses into filenames=
 and line numbers), ar (utility for creating, modifying and extracting arch=
ives), nm (list symbols in object files), objcopy (copy and translate objec=
t files), objdump (Display object information), and other tools and related=
 libraries.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/binutils/binutils-2.24=
=2Etar.bz2', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (binutils-cross-i586,2.24,2.24,GPLv3,devel,r0,None,http://www.gnu.=
org/software/binutils/,http://sourceware.org/bugzilla/,MATCH,  flex-native =
bison-native zlib-native gnu-config-native autoconf-native texinfo-dummy-na=
tive,The GNU Binutils are a collection of binary tools. The main ones are l=
d (GNU Linker), and as (GNU Assembler). This package also includes addition=
 tools such as addr2line (Converts addresses into filenames and line number=
s), ar (utility for creating, modifying and extracting archives), nm (list =
symbols in object files), objcopy (copy and translate object files), objdum=
p (Display object information), and other tools and related libraries.,N/A,=
ftp://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2,Robert Yang <liezhi.ya=
ng@windriver.com>)
['libassuan', '2.1.1', '2.1.1', 'GPLv3 & LGPLv2.1+', 'base', 'http://www.gn=
upg.org/related_software/libassuan/', 'r0', 'pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libg=
pg-error texinfo-native', 'https://bugs.g10code.com/gnupg/index', 'None', '=
IPC library used by GnuPG and GPGME.', 'MATCH', 'N/A', 'ftp://ftp.gnupg.org=
/gcrypt/libassuan/libassuan-2.1.1.tar.bz2', 'Saul Wold <sgw@linux.intel.com=
>', 'None']
inserted (libassuan,2.1.1,2.1.1,GPLv3 & LGPLv2.1+,base,r0,None,http://www.g=
nupg.org/related_software/libassuan/,https://bugs.g10code.com/gnupg/index,M=
ATCH,pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  libgpg-error texinfo-native,IPC library used=
 by GnuPG and GPGME.,N/A,ftp://ftp.gnupg.org/gcrypt/libassuan/libassuan-2.1=
=2E1.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['alsa-tools', '1.0.27', '1.0.28', 'GPLv2 & LGPLv2+', 'console/utils', 'htt=
p://www.alsa-project.org', 'r0', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  alsa-lib ncurse=
s gtk+ gtk+3', 'https://bugtrack.alsa-project.org/alsa-bug/login_page.php',=
 'None', 'Advanced tools for certain ALSA sound card drivers.', 'UPDATE', '=
N/A', 'ftp://ftp.alsa-project.org/pub/tools/alsa-tools-1.0.27.tar.bz2', 'Ka=
i Kang <kai.kang@windriver.com>', 'None']
inserted (alsa-tools,1.0.27,1.0.28,GPLv2 & LGPLv2+,console/utils,r0,None,ht=
tp://www.alsa-project.org,https://bugtrack.alsa-project.org/alsa-bug/login_=
page.php,UPDATE,pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  alsa-lib ncurses gtk+ gtk+3,Advan=
ced tools for certain ALSA sound card drivers.,N/A,ftp://ftp.alsa-project.o=
rg/pub/tools/alsa-tools-1.0.27.tar.bz2,Kai Kang <kai.kang@windriver.com>)
['libxml2', '2.9.1', '2.9.1', 'MIT', 'libs', 'http://www.xmlsoft.org/', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  zlib   python-native ', 'http://bugzilla.gnom=
e.org/buglist.cgi?product=3Dlibxml2', 'None', 'The XML Parser Library allow=
s for manipulation of XML files.  Libxml2 exports Push and Pull type parser=
 interfaces for both XML and HTML.  It can do DTD validation at parse time,=
 on a parsed document instance or with an arbitrary DTD.  Libxml2 includes =
complete XPath, XPointer and Xinclude implementations.  It also has a SAX l=
ike interface, which is designed to be compatible with Expat.', 'MATCH', 'N=
/A', 'ftp://xmlsoft.org/libxml2/libxml2-2.9.1.tar.gz;name=3Dlibtar', 'Hongx=
u Jia <hongxu.jia@windriver.com>', 'None']
inserted (libxml2,2.9.1,2.9.1,MIT,libs,r0,None,http://www.xmlsoft.org/,http=
://bugzilla.gnome.org/buglist.cgi?product=3Dlibxml2,MATCH,pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  zlib   python-native ,The XML Parser Library allows for manipulati=
on of XML files.  Libxml2 exports Push and Pull type parser interfaces for =
both XML and HTML.  It can do DTD validation at parse time, on a parsed doc=
ument instance or with an arbitrary DTD.  Libxml2 includes complete XPath, =
XPointer and Xinclude implementations.  It also has a SAX like interface, w=
hich is designed to be compatible with Expat.,N/A,ftp://xmlsoft.org/libxml2=
/libxml2-2.9.1.tar.gz;name=3Dlibtar,Hongxu Jia <hongxu.jia@windriver.com>)
['settings-daemon', '0.0+gitAUTOINC+9a99528b02', '0.0+gitAUTOINC+9a99528', =
'MIT-style', 'x11', 'http://svn.o-hand.com/view/matchbox/trunk/settings-dae=
mon/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  gconf glib-2.0 gtk+ gconf gconf-nat=
ive', 'http://bugzilla.yoctoproject.org/', 'None', 'Provides a bridge betwe=
en gconf and xsettings.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/xsett=
ings-daemon', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (settings-daemon,0.0+gitAUTOINC+9a99528b02,0.0+gitAUTOINC+9a99528,=
MIT-style,x11,r0,None,http://svn.o-hand.com/view/matchbox/trunk/settings-da=
emon/,http://bugzilla.yoctoproject.org/,MATCH,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gco=
nf glib-2.0 gtk+ gconf gconf-native,Provides a bridge between gconf and xse=
ttings.,N/A,git://git.yoctoproject.org/xsettings-daemon,Ross Burton <ross.b=
urton@intel.com>)
['font-util', '1.3.0', '1.3.0', 'BSD & MIT', 'x11/fonts', 'http://www.x.org=
', 'r2.0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  encodings util-macros', 'https://bugs=
=2Efreedesktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'X.Org font packa=
ge creation/installation utilities.', 'MATCH', 'N/A', 'http://xorg.freedesk=
top.org/releases/individual/font/font-util-1.3.0.tar.bz2', 'Ross Burton <ro=
ss.burton@intel.com>', 'None']
inserted (font-util,1.3.0,1.3.0,BSD & MIT,x11/fonts,r2.0,None,http://www.x.=
org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  encodings util-macros,X.Org font package creation/instal=
lation utilities.,N/A,http://xorg.freedesktop.org/releases/individual/font/=
font-util-1.3.0.tar.bz2,Ross Burton <ross.burton@intel.com>)
['libx11-diet', '1.6.2', '1.6.2', 'MIT & MIT-style & BSD', 'x11/libs', 'htt=
p://www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  util-macros xproto xextpro=
to xtrans libxcb kbproto inputproto xproto-native', 'https://bugs.freedeskt=
op.org/enter_bug.cgi?product=3Dxorg', '1', "This package provides a client =
interface to the X Window System, otherwise known as 'Xlib'.  It provides a=
 complete API for the basic functions of the window system.  Support for XC=
MS and XLOCALE is disabled in this version.", 'MATCH', 'N/A', 'http://xorg.=
freedesktop.org/releases/individual/lib/libX11-1.6.2.tar.bz2', 'Kai Kang <k=
ai.kang@windriver.com>', 'None']
inserted (libx11-diet,1.6.2,1.6.2,MIT & MIT-style & BSD,x11/libs,r0,1,http:=
//www.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH=
,pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  util-macros xproto xextproto xtrans libxcb kbpro=
to inputproto xproto-native,This package provides a client interface to the=
 X Window System, otherwise known as 'Xlib'.  It provides a complete API fo=
r the basic functions of the window system.  Support for XCMS and XLOCALE i=
s disabled in this version.,N/A,http://xorg.freedesktop.org/releases/indivi=
dual/lib/libX11-1.6.2.tar.bz2,Kai Kang <kai.kang@windriver.com>)
['oprofileui-server', '0.0+gitAUTOINC+389e1875af', '0.0+gitAUTOINC+389e187'=
, 'GPLv2', 'x11', 'http://labs.o-hand.com/oprofileui/', 'r0', 'pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  glib-2.0 avahi intltool-native intltool-native update-rc.d-na=
tive initscripts', 'http://bugzilla.yoctoproject.org/', 'None', 'User inter=
face for the OProfile tool', 'MATCH', 'N/A', 'git://git.yoctoproject.org/op=
rofileui', 'Saul Wold <sgw@linux.intel.com>', 'PRS Reports Incorrectly']
inserted (oprofileui-server,0.0+gitAUTOINC+389e1875af,0.0+gitAUTOINC+389e18=
7,GPLv2,x11,r0,None,http://labs.o-hand.com/oprofileui/,http://bugzilla.yoct=
oproject.org/,MATCH,pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 avahi intltool-nativ=
e intltool-native update-rc.d-native initscripts,User interface for the OPr=
ofile tool,N/A,git://git.yoctoproject.org/oprofileui,Saul Wold <sgw@linux.i=
ntel.com>)
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
['texinfo', '5.2', '5.2', 'GPLv3+', 'console/utils', 'http://www.gnu.org/so=
ftware/texinfo/', 'r0', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib ncurs=
es texinfo-replacement-native', 'None', 'None', 'Texinfo is a documentation=
 system that can produce both online information and printed output from a =
single source file. The GNU Project uses the Texinfo file format for most o=
f its documentation.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/texinfo/texin=
fo-5.2.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'Checking script parses =
directory wrong']
inserted (texinfo,5.2,5.2,GPLv3+,console/utils,r0,None,http://www.gnu.org/s=
oftware/texinfo/,None,MATCH,autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib nc=
urses texinfo-replacement-native,Texinfo is a documentation system that can=
 produce both online information and printed output from a single source fi=
le. The GNU Project uses the Texinfo file format for most of its documentat=
ion.,N/A,ftp://ftp.gnu.org/gnu/texinfo/texinfo-5.2.tar.gz,Saul Wold <sgw@li=
nux.intel.com>)
['libbsd', '0.6.0', '0.7.0', 'BSD-4-Clause & MIT', 'libs', 'http://libbsd.f=
reedesktop.org/wiki/', 'r0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', =
'This library provides useful functions commonly found on BSD systems,     =
           and lacking on others like GNU systems, thus making it easier to=
 port                projects with strong BSD origins, without needing to e=
mbed the same                code over and over again on each project.', 'U=
PDATE', 'N/A', 'http://libbsd.freedesktop.org/releases/libbsd-0.6.0.tar.xz'=
, 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libbsd,0.6.0,0.7.0,BSD-4-Clause & MIT,libs,r0,None,http://libbsd.=
freedesktop.org/wiki/,None,UPDATE,pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,This library p=
rovides useful functions commonly found on BSD systems,                and =
lacking on others like GNU systems, thus making it easier to port          =
      projects with strong BSD origins, without needing to embed the same  =
              code over and over again on each project.,N/A,http://libbsd.f=
reedesktop.org/releases/libbsd-0.6.0.tar.xz,Saul Wold <sgw@linux.intel.com>)
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
['pax', '3.4', 'N/A', 'BSD', 'base', 'http://www.openbsd.org/cgi-bin/cvsweb=
/src/bin/pax/', 'r2', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'http://www.openbsd.org/query-pr.html', =
'None', 'pax (Portable Archive eXchange) is the POSIX standard archive tool=
', 'ErrHostNoDir:/pub/people/kukuk/pax/:-:pax-3.4.tar.bz2:ftp.suse.com/pub/=
people/kukuk/pax/pax-3.4.tar.bz2', 'N/A', 'ftp://ftp.suse.com/pub/people/ku=
kuk/pax/pax-3.4.tar.bz2', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (pax,3.4,N/A,BSD,base,r2,None,http://www.openbsd.org/cgi-bin/cvswe=
b/src/bin/pax/,http://www.openbsd.org/query-pr.html,ErrHostNoDir:/pub/peopl=
e/kukuk/pax/:-:pax-3.4.tar.bz2:ftp.suse.com/pub/people/kukuk/pax/pax-3.4.ta=
r.bz2,autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  ,pax (Portable Archive eXchange) is the POSIX standard archi=
ve tool,N/A,ftp://ftp.suse.com/pub/people/kukuk/pax/pax-3.4.tar.bz2,Hongxu =
Jia <hongxu.jia@windriver.com>)
['make', '4.0', '4.0', 'GPLv3 & LGPLv2', 'devel', 'http://www.gnu.org/softw=
are/make/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native virtual/gettext gettext-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
  texinfo-native', 'None', 'None', "Make is a tool which controls the gener=
ation of executables and other non-source files of a program from the progr=
am's source files.  Make gets its knowledge of how to build your program fr=
om a file called the makefile, which lists each of the non-source files and=
 how to compute it from other files.", 'MATCH', 'N/A', 'ftp://ftp.gnu.org/g=
nu/make/make-4.0.tar.bz2', 'Robert Yang <liezhi.yang@windriver.com>', 'None=
']
inserted (make,4.0,4.0,GPLv3 & LGPLv2,devel,r0,None,http://www.gnu.org/soft=
ware/make/,None,MATCH,pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc   texinfo-native,Make is a tool which controls the generation of executa=
bles and other non-source files of a program from the program's source file=
s.  Make gets its knowledge of how to build your program from a file called=
 the makefile, which lists each of the non-source files and how to compute =
it from other files.,N/A,ftp://ftp.gnu.org/gnu/make/make-4.0.tar.bz2,Robert=
 Yang <liezhi.yang@windriver.com>)
['pcmanfm', '1.1.2', '1.1.2', 'GPLv2 & GPLv2+ & LGPLv2.1+', 'x11', 'http://=
pcmanfm.sourceforge.net/', 'r0', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ startup-no=
tification libfm intltool-native libowl', 'None', 'None', 'Fast lightweight=
 tabbed filemanager.', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/pc=
manfm/pcmanfm-1.1.2.tar.gz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (pcmanfm,1.1.2,1.1.2,GPLv2 & GPLv2+ & LGPLv2.1+,x11,r0,None,http:/=
/pcmanfm.sourceforge.net/,None,MATCH,pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ startup=
-notification libfm intltool-native libowl,Fast lightweight tabbed filemana=
ger.,N/A,http://downloads.sourceforge.net/pcmanfm/pcmanfm-1.1.2.tar.gz,Ross=
 Burton <ross.burton@intel.com>)
['eglinfo-x11', '1.0', '1.0.0', 'Zlib', 'graphics', 'https://github.com/dv1=
/eglinfo', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  virtual/egl virtual/libx11', 'None', 'None', 'Utilit=
y for printing information EGL and its client APIs (OpenGL, OpenGL ES, Open=
VG) (X11 version).', 'ErrUnknown:github.com/dv1/eglinfo.git', 'N/A', 'git:/=
/github.com/dv1/eglinfo.git;branch=3Dmaster', 'None', 'None']
inserted (eglinfo-x11,1.0,1.0.0,Zlib,graphics,r0,None,https://github.com/dv=
1/eglinfo,None,ErrUnknown:github.com/dv1/eglinfo.git, virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/egl virtu=
al/libx11,Utility for printing information EGL and its client APIs (OpenGL,=
 OpenGL ES, OpenVG) (X11 version).,N/A,git://github.com/dv1/eglinfo.git;bra=
nch=3Dmaster,None)
['coreutils', '8.22', '8.23', 'GPLv3+', 'base', 'http://www.gnu.org/softwar=
e/coreutils/', 'r0', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gmp libcap te=
xinfo-native virtual/update-alternatives', 'http://debbugs.gnu.org/coreutil=
s', 'None', 'The GNU Core Utilities provide the basic file, shell and text =
manipulation utilities. These are the core utilities which are expected to =
exist on every system.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/coreutils/=
coreutils-8.22.tar.xz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (coreutils,8.22,8.23,GPLv3+,base,r0,None,http://www.gnu.org/softwa=
re/coreutils/,http://debbugs.gnu.org/coreutils,UPDATE,autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native virtual/gettext g=
ettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  gmp libcap texinfo-native virtual/update-alternatives,Th=
e GNU Core Utilities provide the basic file, shell and text manipulation ut=
ilities. These are the core utilities which are expected to exist on every =
system.,N/A,ftp://ftp.gnu.org/gnu/coreutils/coreutils-8.22.tar.xz,Chen Qi <=
Qi.Chen@windriver.com>)
['webkit-gtk', '1.8.3', '2.5.3', 'BSD & LGPLv2+', 'base', 'http://www.webki=
tgtk.org/', 'r1', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  zlib enchant libsoup-2.4 curl =
libxml2 cairo libxslt libxt libidn gnutls            gtk+ gstreamer gst-plu=
gins-base flex-native gperf-native perl-native-runtime sqlite3 icu  virtual=
/libgl gtk-doc-stub-native', 'http://bugs.webkit.org/', 'None', 'WebKit web=
 rendering engine for the GTK+ platform.', 'UPDATE', '1.10.2', 'http://www.=
webkitgtk.org/releases/webkit-1.8.3.tar.xz', 'Ross Burton <ross.burton@inte=
l.com>', '>=3D 1.10.2 needs ruby']
inserted (webkit-gtk,1.8.3,2.5.3,BSD & LGPLv2+,base,r1,None,http://www.webk=
itgtk.org/,http://bugs.webkit.org/,UPDATE,pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib en=
chant libsoup-2.4 curl libxml2 cairo libxslt libxt libidn gnutls           =
 gtk+ gstreamer gst-plugins-base flex-native gperf-native perl-native-runti=
me sqlite3 icu  virtual/libgl gtk-doc-stub-native,WebKit web rendering engi=
ne for the GTK+ platform.,1.10.2,http://www.webkitgtk.org/releases/webkit-1=
=2E8.3.tar.xz,Ross Burton <ross.burton@intel.com>)
['sqlite3', '3.8.5.0', '3080600', 'PD', 'libs', 'http://www.sqlite.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  readline ncurses', 'None', '3', 'Embeddable =
SQL database engine.', 'UPDATE', '3.8.0.2', 'http://www.sqlite.org/2014/sql=
ite-autoconf-3080500.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (sqlite3,3.8.5.0,3080600,PD,libs,r0,3,http://www.sqlite.org,None,U=
PDATE,pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  readline ncurses,Embeddable SQL database en=
gine.,3.8.0.2,http://www.sqlite.org/2014/sqlite-autoconf-3080500.tar.gz,Sau=
l Wold <sgw@linux.intel.com>)
['python-async', '0.6.1', '0.6.1', 'BSD', 'devel/python', 'http://github.co=
m/gitpython-developers/async', 'r0', ' virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc   python-native python  python-na=
tive ', 'None', 'None', 'Python framework to process interdependent tasks i=
n a pool of workers.', 'MATCH', 'N/A', 'http://pypi.python.org/packages/sou=
rce/a/async/async-0.6.1.tar.gz', 'None', 'None']
inserted (python-async,0.6.1,0.6.1,BSD,devel/python,r0,None,http://github.c=
om/gitpython-developers/async,None,MATCH, virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc   python-native python  python=
-native ,Python framework to process interdependent tasks in a pool of work=
ers.,N/A,http://pypi.python.org/packages/source/a/async/async-0.6.1.tar.gz,=
None)
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
2', 'Ross Burton <ross.burton@intel.com>', 'None']
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
ses/individual/lib/libXdamage-1.1.4.tar.bz2,Ross Burton <ross.burton@intel.=
com>)
['xserver-nodm-init', '1.0', 'INVALID', 'GPLv2', 'x11', '', 'r31', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   u=
pdate-rc.d-native initscripts', 'None', 'None', 'Simple Xserver Init Script=
 (no dm).', 'MATCH', 'N/A', 'file://xserver-nodm', 'Ross Burton <ross.burto=
n@intel.com>', 'None']
inserted (xserver-nodm-init,1.0,INVALID,GPLv2,x11,r31,None,,None,MATCH, vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
  update-rc.d-native initscripts,Simple Xserver Init Script (no dm).,N/A,fi=
le://xserver-nodm,Ross Burton <ross.burton@intel.com>)
['directfb', '1.7.4', '1.7.6', 'LGPLv2.1', 'libs', 'http://directfb.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  jpeg libpng freetype zlib tslib sysfsutils'=
, 'None', 'None', 'DirectFB is a thin library that provides developers with=
 hardware graphics acceleration, input device handling and abstraction, an =
integrated windowing system with support for translucent windows and multip=
le display layers on top of the Linux framebuffer device.', 'UPDATE', 'N/A'=
, 'http://www.directfb.org/downloads/Core/DirectFB-1.7/DirectFB-1.7.4.tar.g=
z', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (directfb,1.7.4,1.7.6,LGPLv2.1,libs,r0,None,http://directfb.org,No=
ne,UPDATE,pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  jpeg libpng freetype zlib tslib sysfsut=
ils,DirectFB is a thin library that provides developers with hardware graph=
ics acceleration, input device handling and abstraction, an integrated wind=
owing system with support for translucent windows and multiple display laye=
rs on top of the Linux framebuffer device.,N/A,http://www.directfb.org/down=
loads/Core/DirectFB-1.7/DirectFB-1.7.4.tar.gz,Hongxu Jia <hongxu.jia@windri=
ver.com>)
['mklibs-native', '0.1.39', '0.1.39', 'GPLv2+', 'devel', 'https://launchpad=
=2Enet/mklibs', 'r0', 'autoconf-native automake-native libtool-native gnu-c=
onfig-native gettext-minimal-native  python-native dpkg-native  python-nati=
ve ', 'None', 'None', 'mklibs produces cut-down shared libraries that conta=
in only the routines required by a particular set of executables.', 'MATCH'=
, 'N/A', 'http://ftp.de.debian.org/debian/pool/main/m/mklibs/mklibs_0.1.39.=
tar.xz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (mklibs-native,0.1.39,0.1.39,GPLv2+,devel,r0,None,https://launchpa=
d.net/mklibs,None,MATCH,autoconf-native automake-native libtool-native gnu-=
config-native gettext-minimal-native  python-native dpkg-native  python-nat=
ive ,mklibs produces cut-down shared libraries that contain only the routin=
es required by a particular set of executables.,N/A,http://ftp.de.debian.or=
g/debian/pool/main/m/mklibs/mklibs_0.1.39.tar.xz,Robert Yang <liezhi.yang@w=
indriver.com>)
['python-pygobject', '2.28.3', '3.13.4', 'LGPLv2.1', 'devel/python', '', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  python python-pygobject-native glib-2.0 pyth=
on-native python  python-native ', 'None', 'None', 'Python GObject bindings=
=2E', 'UPDATE', '3.13.3', 'http://ftp.gnome.org/pub/GNOME/sources/pygobject=
/2.28/pygobject-2.28.3.tar.bz2', 'Richard Purdie <richard.purdie@linuxfound=
ation.org>', "Newer versions of python-pygobject depend on gobject-introspe=
ction which doesn't cross-compile"]
inserted (python-pygobject,2.28.3,3.13.4,LGPLv2.1,devel/python,r0,None,,Non=
e,UPDATE,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  python python-pygobject-native glib-2.0 =
python-native python  python-native ,Python GObject bindings.,3.13.3,http:/=
/ftp.gnome.org/pub/GNOME/sources/pygobject/2.28/pygobject-2.28.3.tar.bz2,Ri=
chard Purdie <richard.purdie@linuxfoundation.org>)
['piglit', '1.0+gitrAUTOINC+bbeff5d21b', '1.0+gitrAUTOINC+c14f3a6', 'MIT & =
LGPLv2+ & GPLv3 & GPLv2+ & BSD-3-Clause', 'base', '', 'r0', 'autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native cmake-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  virtual/libx11 waffle virtual/libgl libglu python-mako-native pytho=
n-numpy-native  python-native ', 'None', 'None', 'OpenGL driver testing fra=
mework.', 'UPDATE', 'N/A', 'git://anongit.freedesktop.org/piglit', 'Ross Bu=
rton <ross.burton@intel.com>', 'None']
inserted (piglit,1.0+gitrAUTOINC+bbeff5d21b,1.0+gitrAUTOINC+c14f3a6,MIT & L=
GPLv2+ & GPLv3 & GPLv2+ & BSD-3-Clause,base,r0,None,,None,UPDATE,autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native cmake-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  virtual/libx11 waffle virtual/libgl libglu python-mako-native p=
ython-numpy-native  python-native ,OpenGL driver testing framework.,N/A,git=
://anongit.freedesktop.org/piglit,Ross Burton <ross.burton@intel.com>)
['libunique', '1.1.6', '3.0.2', 'LGPLv2.1', 'base', 'https://wiki.gnome.org=
/Attic/LibUnique', 'r7', 'pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 gtk+ dbus dbus=
-glib', 'https://bugzilla.gnome.org/enter_bug.cgi?product=3Dlibunique', 'No=
ne', 'Unique is a library for writing single instance GTK+ applications. If=
 you launch a single instance application twice, the second instance will e=
ither just quit or will send a message to the running instance.', 'UPDATE',=
 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/libunique/1.1/libunique-1.1=
=2E6.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'Do not upgrade to versio=
n: 2.91.4 because it requires gtk+ >=3D 2.90.0 and the stable version of gt=
k+ used by poky is 2.20.1']
inserted (libunique,1.1.6,3.0.2,LGPLv2.1,base,r7,None,https://wiki.gnome.or=
g/Attic/LibUnique,https://bugzilla.gnome.org/enter_bug.cgi?product=3Dlibuni=
que,UPDATE,pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  glib-2.0 gtk+ dbus dbus-glib,Unique is=
 a library for writing single instance GTK+ applications. If you launch a s=
ingle instance application twice, the second instance will either just quit=
 or will send a message to the running instance.,N/A,http://ftp.gnome.org/p=
ub/GNOME/sources/libunique/1.1/libunique-1.1.6.tar.bz2,Saul Wold <sgw@linux=
=2Eintel.com>)
['gst-fluendo-mpegdemux', '0.10.72', '0.10.81', 'MPLv1.1', 'multimedia', 'h=
ttp://www.fluendo.com/resources/source-plugins.php', 'r0', 'pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  gstreamer zlib', 'None', 'None', 'Fluendo closed-format mpeg vid=
eo GStreamer plug-in.', 'UPDATE', 'N/A', 'http://core.fluendo.com/gstreamer=
/src/gst-fluendo-mpegdemux/gst-fluendo-mpegdemux-0.10.72.tar.bz2', 'Cristia=
n Iorga <cristian.iorga@intel.com>', 'None']
inserted (gst-fluendo-mpegdemux,0.10.72,0.10.81,MPLv1.1,multimedia,r0,None,=
http://www.fluendo.com/resources/source-plugins.php,None,UPDATE,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  gstreamer zlib,Fluendo closed-format mpeg video GStreamer pl=
ug-in.,N/A,http://core.fluendo.com/gstreamer/src/gst-fluendo-mpegdemux/gst-=
fluendo-mpegdemux-0.10.72.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['build-appliance-image', '8.0', '11.0.1', 'MIT', 'base', 'http://www.yocto=
project.org/documentation/build-appliance', 'r0', ' zip-native gzip-native =
qemuwrapper-cross depmodwrapper-cross', 'None', 'None', 'An image containin=
g the build system that you can boot and run using either VMware Player or =
VMware Workstation.', 'ErrUnknown:git.yoctoproject.org/poky', 'N/A', 'git:/=
/git.yoctoproject.org/poky', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (build-appliance-image,8.0,11.0.1,MIT,base,r0,None,http://www.yoct=
oproject.org/documentation/build-appliance,None,ErrUnknown:git.yoctoproject=
=2Eorg/poky, zip-native gzip-native qemuwrapper-cross depmodwrapper-cross,A=
n image containing the build system that you can boot and run using either =
VMware Player or VMware Workstation.,N/A,git://git.yoctoproject.org/poky,Sa=
ul Wold <sgw@linux.intel.com>)
['libtelepathy', '0.3.3', '0.3.3', 'LGPLv2.1+', 'base', 'http://telepathy.f=
reedesktop.org/wiki/', 'r5', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus dbus-=
glib telepathy-glib libxslt-native  python-native ', 'None', 'None', 'Telep=
athy is a D-Bus framework for unifying real time communication, including i=
nstant messaging, voice calls and video calls.  It abstracts differences be=
tween protocols to provide a unified interface for applications.', 'MATCH',=
 'N/A', 'http://telepathy.freedesktop.org/releases/libtelepathy/libtelepath=
y-0.3.3.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libtelepathy,0.3.3,0.3.3,LGPLv2.1+,base,r5,None,http://telepathy.=
freedesktop.org/wiki/,None,MATCH,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus db=
us-glib telepathy-glib libxslt-native  python-native ,Telepathy is a D-Bus =
framework for unifying real time communication, including instant messaging=
, voice calls and video calls.  It abstracts differences between protocols =
to provide a unified interface for applications.,N/A,http://telepathy.freed=
esktop.org/releases/libtelepathy/libtelepathy-0.3.3.tar.gz,Cristian Iorga <=
cristian.iorga@intel.com>)
['binutils-cross-canadian-i586', '2.24', '2.24', 'GPLv3', 'devel', 'http://=
www.gnu.org/software/binutils/', 'r0', 'autoconf-native automake-native lib=
tool-native gnu-config-native gettext-native nativesdk-gettext  flex-native=
 bison-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-lib=
c nativesdk-zlib nativesdk-gettext nativesdk-flex texinfo-native chrpath-re=
placement-native', 'http://sourceware.org/bugzilla/', 'None', 'The GNU Binu=
tils are a collection of binary tools. The main ones are ld (GNU Linker), a=
nd as (GNU Assembler). This package also includes addition tools such as ad=
dr2line (Converts addresses into filenames and line numbers), ar (utility f=
or creating, modifying and extracting archives), nm (list symbols in object=
 files), objcopy (copy and translate object files), objdump (Display object=
 information), and other tools and related libraries.', 'MATCH', 'N/A', 'ft=
p://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2', 'Robert Yang <liezhi.y=
ang@windriver.com>', 'None']
inserted (binutils-cross-canadian-i586,2.24,2.24,GPLv3,devel,r0,None,http:/=
/www.gnu.org/software/binutils/,http://sourceware.org/bugzilla/,MATCH,autoc=
onf-native automake-native libtool-native gnu-config-native gettext-native =
nativesdk-gettext  flex-native bison-native virtual/i586-pokysdk-linux-gcc-=
crosssdk virtual/nativesdk-libc nativesdk-zlib nativesdk-gettext nativesdk-=
flex texinfo-native chrpath-replacement-native,The GNU Binutils are a colle=
ction of binary tools. The main ones are ld (GNU Linker), and as (GNU Assem=
bler). This package also includes addition tools such as addr2line (Convert=
s addresses into filenames and line numbers), ar (utility for creating, mod=
ifying and extracting archives), nm (list symbols in object files), objcopy=
 (copy and translate object files), objdump (Display object information), a=
nd other tools and related libraries.,N/A,ftp://ftp.gnu.org/gnu/binutils/bi=
nutils-2.24.tar.bz2,Robert Yang <liezhi.yang@windriver.com>)
['gamin', '0.1.10', '0.1.10', 'LGPLv2+', 'base', 'http://people.gnome.org/~=
veillard/gamin/', 'r5', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0', 'None', 'None=
', 'Gamin is a file and directory monitoring system defined to be a subset =
of the FAM (File Alteration Monitor) system.', 'MATCH', 'N/A', 'http://www.=
gnome.org/~veillard/gamin/sources/gamin-0.1.10.tar.gz', 'Saul Wold <sgw@lin=
ux.intel.com>', 'None']
inserted (gamin,0.1.10,0.1.10,LGPLv2+,base,r5,None,http://people.gnome.org/=
~veillard/gamin/,None,MATCH,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0,Gamin is a f=
ile and directory monitoring system defined to be a subset of the FAM (File=
 Alteration Monitor) system.,N/A,http://www.gnome.org/~veillard/gamin/sourc=
es/gamin-0.1.10.tar.gz,Saul Wold <sgw@linux.intel.com>)
['bootchart2', '0.14.6+gitAUTOINC+b65ed43b0a', '2.0.0.3+gitAUTOINC+2090aa3'=
, 'GPL-3.0', 'base', 'https://github.com/mmeeks/bootchart', 'r0', ' virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc    p=
ython-native  update-rc.d-native initscripts', 'None', 'None', 'Monitors wh=
ere the system spends its time at start, creating a graph of all processes,=
 disk utilization, and wait time.', 'UPDATE', 'N/A', 'git://github.com/mmee=
ks/bootchart.git', 'None', 'None']
inserted (bootchart2,0.14.6+gitAUTOINC+b65ed43b0a,2.0.0.3+gitAUTOINC+2090aa=
3,GPL-3.0,base,r0,None,https://github.com/mmeeks/bootchart,None,UPDATE, vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
   python-native  update-rc.d-native initscripts,Monitors where the system =
spends its time at start, creating a graph of all processes, disk utilizati=
on, and wait time.,N/A,git://github.com/mmeeks/bootchart.git,None)
['lsof', '4.87', 'N/A', 'BSD', 'devel', '', 'r0', ' virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', =
'Lsof is a Unix-specific diagnostic tool. Its name stands for LiSt Open Fil=
es, and it does just that.', 'ErrHostNoDir:/pub/tools/unix/lsof/:-:lsof_4.8=
7.tar.bz2:lsof.itap.purdue.edu/pub/tools/unix/lsof/lsof_4.87.tar.bz2', 'N/A=
', 'ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/lsof_4.87.tar.bz2', 'Ric=
hard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (lsof,4.87,N/A,BSD,devel,r0,None,,None,ErrHostNoDir:/pub/tools/uni=
x/lsof/:-:lsof_4.87.tar.bz2:lsof.itap.purdue.edu/pub/tools/unix/lsof/lsof_4=
=2E87.tar.bz2, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  ,Lsof is a Unix-specific diagnostic tool. Its name stand=
s for LiSt Open Files, and it does just that.,N/A,ftp://lsof.itap.purdue.ed=
u/pub/tools/unix/lsof/lsof_4.87.tar.bz2,Richard Purdie <richard.purdie@linu=
xfoundation.org>)
['fontsproto', '2.1.3', '2.1.3', 'MIT-style', 'x11/libs', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the X Font rasterisation extensions.  These extensions are use=
d to control server-side font configurations.', 'MATCH', 'N/A', 'http://xor=
g.freedesktop.org/releases/individual/proto/fontsproto-2.1.3.tar.bz2', 'Ros=
s Burton <ross.burton@intel.com>', 'None']
inserted (fontsproto,2.1.3,2.1.3,MIT-style,x11/libs,r0,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  util-macros,This package provides the wire protocol for the X=
 Font rasterisation extensions.  These extensions are used to control serve=
r-side font configurations.,N/A,http://xorg.freedesktop.org/releases/indivi=
dual/proto/fontsproto-2.1.3.tar.bz2,Ross Burton <ross.burton@intel.com>)
['libdrm', '2.4.54', '2.4.56', 'MIT', 'x11/base', 'http://dri.freedesktop.o=
rg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  libpthread-stubs udev  libpciaccess',=
 'None', 'None', 'The runtime library for accessing the kernel DRM services=
=2E  DRM stands for \\"Direct Rendering Manager\\", which is the kernel por=
tion of the \\"Direct Rendering Infrastructure\\" (DRI).  DRI is required f=
or many hardware accelerated OpenGL drivers.', 'UPDATE', 'N/A', 'http://dri=
=2Efreedesktop.org/libdrm/libdrm-2.4.54.tar.bz2', 'Richard Purdie <richard.=
purdie@linuxfoundation.org>', 'None']
inserted (libdrm,2.4.54,2.4.56,MIT,x11/base,r0,None,http://dri.freedesktop.=
org,None,UPDATE,pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  libpthread-stubs udev  libpciacce=
ss,The runtime library for accessing the kernel DRM services.  DRM stands f=
or \"Direct Rendering Manager\", which is the kernel portion of the \"Direc=
t Rendering Infrastructure\" (DRI).  DRI is required for many hardware acce=
lerated OpenGL drivers.,N/A,http://dri.freedesktop.org/libdrm/libdrm-2.4.54=
=2Etar.bz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['docbook-xsl-stylesheets', '1.78.1', 'N/A', 'XSL', 'base', 'http://docbook=
=2Esourceforge.net', 'r0', ' ', 'None', 'None', 'XSL stylesheets for proces=
sing DocBook XML to various output formats.', 'ErrParseDir:/docbook/:-:docb=
ook-xsl-1.78.1.tar.bz2:downloads.sourceforge.net/docbook/docbook-xsl-1.78.1=
=2Etar.bz2', 'N/A', 'http://downloads.sourceforge.net/docbook/docbook-xsl-1=
=2E78.1.tar.bz2', 'None', 'None']
inserted (docbook-xsl-stylesheets,1.78.1,N/A,XSL,base,r0,None,http://docboo=
k.sourceforge.net,None,ErrParseDir:/docbook/:-:docbook-xsl-1.78.1.tar.bz2:d=
ownloads.sourceforge.net/docbook/docbook-xsl-1.78.1.tar.bz2, ,XSL styleshee=
ts for processing DocBook XML to various output formats.,N/A,http://downloa=
ds.sourceforge.net/docbook/docbook-xsl-1.78.1.tar.bz2,None)
['python-argparse', '1.2.1', '1.2.1', 'PSF', 'devel/python', '', 'r4', ' vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
   python-native python  python-native  python-distribute-native', 'None', =
'None', 'Python command-line parsing library.', 'MATCH', 'N/A', 'http://arg=
parse.googlecode.com/files/argparse-1.2.1.tar.gz', 'Richard Purdie <richard=
=2Epurdie@linuxfoundation.org>', 'None']
inserted (python-argparse,1.2.1,1.2.1,PSF,devel/python,r4,None,,None,MATCH,=
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc   python-native python  python-native  python-distribute-native,Python =
command-line parsing library.,N/A,http://argparse.googlecode.com/files/argp=
arse-1.2.1.tar.gz,Richard Purdie <richard.purdie@linuxfoundation.org>)
['dhcp', '4.3.0', '4.3.0', 'ISC', 'console/network', 'http://www.isc.org/',=
 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  openssl bind', 'None', 'None', 'DHCP (Dynamic Host Configu=
ration Protocol) is a protocol which allows individual devices on an IP net=
work to get their own network configuration information from a server.  DHC=
P helps make it easier to administer devices.', 'MATCH', 'N/A', 'ftp://ftp.=
isc.org/isc/dhcp/4.3.0/dhcp-4.3.0.tar.gz', 'Saul Wold <sgw@linux.intel.com>=
', 'None']
inserted (dhcp,4.3.0,4.3.0,ISC,console/network,r0,None,http://www.isc.org/,=
None,MATCH,autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  openssl bind,DHCP (Dynamic Host Configuration Protocol)=
 is a protocol which allows individual devices on an IP network to get thei=
r own network configuration information from a server.  DHCP helps make it =
easier to administer devices.,N/A,ftp://ftp.isc.org/isc/dhcp/4.3.0/dhcp-4.3=
=2E0.tar.gz,Saul Wold <sgw@linux.intel.com>)
['libxxf86vm', '1.1.3', '1.1.3', 'MIT', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros libxext xf86vidmodeproto', 'https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXxf86vm pro=
vides an interface to the XFree86-VidModeExtension extension, which allows =
client applications to get and set video mode timings in extensive detail. =
 It is used by the xvidtune program in particular.', 'MATCH', 'N/A', 'http:=
//xorg.freedesktop.org/releases/individual/lib/libXxf86vm-1.1.3.tar.bz2', '=
Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxxf86vm,1.1.3,1.1.3,MIT,x11/libs,r0,1,http://www.x.org,https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  util-macros libxext xf86vidmodeproto,libXxf86vm provides an interfa=
ce to the XFree86-VidModeExtension extension, which allows client applicati=
ons to get and set video mode timings in extensive detail.  It is used by t=
he xvidtune program in particular.,N/A,http://xorg.freedesktop.org/releases=
/individual/lib/libXxf86vm-1.1.3.tar.bz2,Ross Burton <ross.burton@intel.com=
>)
['liburcu', '0.8.4', '0.8.4', 'LGPLv2.1+ & MIT-style', 'base', 'http://lttn=
g.org/urcu', 'r0', 'autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ', 'http://lttng.org/project/issues', 'None', =
'Userspace RCU (read-copy-update) library.', 'MATCH', '0.7.0', 'http://lttn=
g.org/files/urcu/userspace-rcu-0.8.4.tar.bz2', 'Saul Wold <sgw@linux.intel.=
com>', 'None']
inserted (liburcu,0.8.4,0.8.4,LGPLv2.1+ & MIT-style,base,r0,None,http://ltt=
ng.org/urcu,http://lttng.org/project/issues,MATCH,autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Userspace RCU (=
read-copy-update) library.,0.7.0,http://lttng.org/files/urcu/userspace-rcu-=
0.8.4.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['gzip', '1.6', '1.6', 'GPLv3+', 'console/utils', 'http://www.gnu.org/softw=
are/gzip/', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc   texinfo-native virtual/update-alternatives', '=
None', 'None', 'GNU Gzip is a popular data compression program originally w=
ritten by Jean-loup Gailly for the GNU project. Mark Adler wrote the decomp=
ression part', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/gzip/gzip-1.6.tar.gz'=
, 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (gzip,1.6,1.6,GPLv3+,console/utils,r0,None,http://www.gnu.org/soft=
ware/gzip/,None,MATCH,autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc   texinfo-native virtual/update-alternatives,=
GNU Gzip is a popular data compression program originally written by Jean-l=
oup Gailly for the GNU project. Mark Adler wrote the decompression part,N/A=
,ftp://ftp.gnu.org/gnu/gzip/gzip-1.6.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['bdwgc', '7.4.2', '7.4.2', 'MIT', 'devel', 'http://www.hboehm.info/gc/', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc   libatomics-ops', 'None', 'None', 'The Boeh=
m-Demers-Weiser conservative garbage collector can be used as a garbage col=
lecting replacement for C malloc or C++ new. It allows you to allocate memo=
ry basically as you normally would, without explicitly deallocating memory =
that is no longer useful. The collector automatically recycles memory when =
it determines that it can no longer be otherwise accessed.  The collector i=
s also used by a number of programming language implementations that either=
 use C as intermediate code, want to facilitate easier interoperation with =
C libraries, or just prefer the simple collector interface.  Alternatively,=
 the garbage collector may be used as a leak detector for C or C++ programs=
, though that is not its primary goal.  Empirically, this collector works w=
ith most unmodified C programs, simply by replacing malloc with GC_malloc c=
alls, replacing realloc with GC_realloc calls, and removing free calls.', '=
MATCH', 'gc-7.2d', 'http://www.hboehm.info/gc/gc_source/gc-7.4.2.tar.gz', '=
Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (bdwgc,7.4.2,7.4.2,MIT,devel,r0,None,http://www.hboehm.info/gc/,No=
ne,MATCH,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc   libatomics-ops,The Boehm-Demers-Weiser =
conservative garbage collector can be used as a garbage collecting replacem=
ent for C malloc or C++ new. It allows you to allocate memory basically as =
you normally would, without explicitly deallocating memory that is no longe=
r useful. The collector automatically recycles memory when it determines th=
at it can no longer be otherwise accessed.  The collector is also used by a=
 number of programming language implementations that either use C as interm=
ediate code, want to facilitate easier interoperation with C libraries, or =
just prefer the simple collector interface.  Alternatively, the garbage col=
lector may be used as a leak detector for C or C++ programs, though that is=
 not its primary goal.  Empirically, this collector works with most unmodif=
ied C programs, simply by replacing malloc with GC_malloc calls, replacing =
realloc with GC_realloc calls, and removing free calls.,gc-7.2d,http://www.=
hboehm.info/gc/gc_source/gc-7.4.2.tar.gz,Richard Purdie <richard.purdie@lin=
uxfoundation.org>)
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
['gnome-doc-utils', '0.20.10', '0.20.10', 'GPLv2 & LGPLv2.1', 'base', '', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxml2 libx=
slt libxslt-native gnome-doc-utils-native glib-2.0 gnome-common-native  pyt=
hon-native ', 'None', 'None', 'The GNOME Documentation Build Utilities (gno=
me-doc- utils) were created to make it easier for application developers to=
 include and create documentation in their releases. They include the xml2p=
o tool which makes it easier to translate and keep up to date translations =
of documentation.', 'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources=
/gnome-doc-utils/0.20/gnome-doc-utils-0.20.10.tar.xz;name=3Darchive', 'Ross=
 Burton <ross.burton@intel.com>', 'None']
inserted (gnome-doc-utils,0.20.10,0.20.10,GPLv2 & LGPLv2.1,base,r0,None,,No=
ne,MATCH,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxml2 l=
ibxslt libxslt-native gnome-doc-utils-native glib-2.0 gnome-common-native  =
python-native ,The GNOME Documentation Build Utilities (gnome-doc- utils) w=
ere created to make it easier for application developers to include and cre=
ate documentation in their releases. They include the xml2po tool which mak=
es it easier to translate and keep up to date translations of documentation=
=2E,N/A,http://ftp.gnome.org/pub/GNOME/sources/gnome-doc-utils/0.20/gnome-d=
oc-utils-0.20.10.tar.xz;name=3Darchive,Ross Burton <ross.burton@intel.com>)
['matchbox-desktop', '2.0+gitAUTOINC+71e3e6e042', '2.0+gitAUTOINC+09170f4',=
 'GPLv2+ & LGPLv2+', 'x11/wm', 'http://matchbox-project.org/', 'r0', 'pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  gtk+ startup-notification dbus', 'http://bugzilla.yoct=
oproject.org/', 'None', 'Matchbox Window Manager Desktop.', 'UPDATE', 'N/A'=
, 'git://git.yoctoproject.org/matchbox-desktop-2', 'Ross Burton <ross.burto=
n@intel.com>', 'None']
inserted (matchbox-desktop,2.0+gitAUTOINC+71e3e6e042,2.0+gitAUTOINC+09170f4=
,GPLv2+ & LGPLv2+,x11/wm,r0,None,http://matchbox-project.org/,http://bugzil=
la.yoctoproject.org/,UPDATE,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ startup-notifica=
tion dbus,Matchbox Window Manager Desktop.,N/A,git://git.yoctoproject.org/m=
atchbox-desktop-2,Ross Burton <ross.burton@intel.com>)
['less', '458', '458', 'GPLv3+ | BSD-2-Clause', 'console/utils', 'http://ww=
w.greenwoodsoftware.com/', 'r0', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ncurses virtual/update-alternati=
ves', 'None', 'None', 'Less is a program similar to more, i.e. a terminal b=
ased program for viewing text files and the output from other programs. Les=
s offers many features beyond those that more does.', 'MATCH', 'N/A', 'http=
://www.greenwoodsoftware.com/less/less-458.tar.gz', 'Saul Wold <sgw@linux.i=
ntel.com>', 'None']
inserted (less,458,458,GPLv3+ | BSD-2-Clause,console/utils,r0,None,http://w=
ww.greenwoodsoftware.com/,None,MATCH,autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  ncurses virtual/update-altern=
atives,Less is a program similar to more, i.e. a terminal based program for=
 viewing text files and the output from other programs. Less offers many fe=
atures beyond those that more does.,N/A,http://www.greenwoodsoftware.com/le=
ss/less-458.tar.gz,Saul Wold <sgw@linux.intel.com>)
['randrproto', '1.4.0', '1.4.0', 'MIT-style', 'x11/libs', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the X Resize, Rotate and Reflect extension.  This extension pr=
ovides the ability to resize, rotate and reflect the root window of a scree=
n.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto=
/randrproto-1.4.0.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (randrproto,1.4.0,1.4.0,MIT-style,x11/libs,r0,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  util-macros,This package provides the wire protocol for the X=
 Resize, Rotate and Reflect extension.  This extension provides the ability=
 to resize, rotate and reflect the root window of a screen.,N/A,http://xorg=
=2Efreedesktop.org/releases/individual/proto/randrproto-1.4.0.tar.bz2,Ross =
Burton <ross.burton@intel.com>)
['neon', '0.30.0', '0.30.0', 'LGPLv2+', 'libs', 'http://www.webdav.org/neon=
/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  zlib libxml2 expat time gnutls libprox=
y', 'None', 'None', 'An HTTP and WebDAV client library with a C interface.'=
, 'MATCH', 'N/A', 'http://www.webdav.org/neon/neon-0.30.0.tar.gz', 'Cristia=
n Iorga <cristian.iorga@intel.com>', 'None']
inserted (neon,0.30.0,0.30.0,LGPLv2+,libs,r0,None,http://www.webdav.org/neo=
n/,None,MATCH,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  zlib libxml2 expat time gnutls libp=
roxy,An HTTP and WebDAV client library with a C interface.,N/A,http://www.w=
ebdav.org/neon/neon-0.30.0.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['xev', '1.2.1', '1.2.1', 'MIT', 'x11/apps', 'http://www.x.org/', 'r0', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  util-macros-native virtual/libx11 libxrandr xproto'=
, 'https://bugs.freedesktop.org', '1', 'Xev creates a window and then asks =
the X server to send it events whenever anything happens to the window (suc=
h as it being moved, resized, typed in, clicked in, etc.). You can also att=
ach it to an existing window.', 'MATCH', '1.0.4', 'http://xorg.freedesktop.=
org/releases/individual/app/xev-1.2.1.tar.bz2', 'Ross Burton <ross.burton@i=
ntel.com>', 'None']
inserted (xev,1.2.1,1.2.1,MIT,x11/apps,r0,1,http://www.x.org/,https://bugs.=
freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native virtual/=
libx11 libxrandr xproto,Xev creates a window and then asks the X server to =
send it events whenever anything happens to the window (such as it being mo=
ved, resized, typed in, clicked in, etc.). You can also attach it to an exi=
sting window.,1.0.4,http://xorg.freedesktop.org/releases/individual/app/xev=
-1.2.1.tar.bz2,Ross Burton <ross.burton@intel.com>)
['libxtst', '1.2.2', '1.2.2', 'MIT-style', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros libxext recordproto inputproto=
 libxi', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', =
'This extension is a minimal set of client and server extensions required t=
o completely test the X11 server with no user intervention.', 'MATCH', 'N/A=
', 'http://xorg.freedesktop.org/releases/individual/lib/libXtst-1.2.2.tar.b=
z2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxtst,1.2.2,1.2.2,MIT-style,x11/libs,r0,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros libxext recordproto inputproto libxi,This extension =
is a minimal set of client and server extensions required to completely tes=
t the X11 server with no user intervention.,N/A,http://xorg.freedesktop.org=
/releases/individual/lib/libXtst-1.2.2.tar.bz2,Ross Burton <ross.burton@int=
el.com>)
['clutter-gst-1.0', '1.6.0', '2.99.4', 'LGPLv2+', 'base', 'http://www.clutt=
er-project.org/', 'r0', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native virtual/gettext gettext-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  gst-plugins-base gst-plugins-bad clutter-1.0 gtk-doc-stub-native', '=
None', 'None', 'GStreamer integration library for Clutter.', 'UPDATE', 'N/A=
', 'http://ftp.gnome.org/pub/GNOME/sources/clutter-gst/1.6/clutter-gst-1.6.=
0.tar.xz;name=3Darchive', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (clutter-gst-1.0,1.6.0,2.99.4,LGPLv2+,base,r0,None,http://www.clut=
ter-project.org/,None,UPDATE,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  gst-plugins-base gst-plugins-bad clutter-1.0 gtk-doc-stub-native=
,GStreamer integration library for Clutter.,N/A,http://ftp.gnome.org/pub/GN=
OME/sources/clutter-gst/1.6/clutter-gst-1.6.0.tar.xz;name=3Darchive,Ross Bu=
rton <ross.burton@intel.com>)
['libdmx', '1.1.3', '1.1.3', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros libxext dmxproto', 'https://bugs.free=
desktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The DMX extension provides=
 support for communication with and control of Xdmx(1) server. Attributes o=
f the Xdmx(1) server and of the back-end screens attached to the server can=
 be queried and modified via this protocol.', 'MATCH', 'N/A', 'http://xorg.=
freedesktop.org/releases/individual/lib/libdmx-1.1.3.tar.bz2', 'Saul Wold <=
sgw@linux.intel.com>', 'None']
inserted (libdmx,1.1.3,1.1.3,MIT,x11/libs,r0,1,http://www.x.org,https://bug=
s.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  util-macros libxext dmxproto,The DMX extension provides support for com=
munication with and control of Xdmx(1) server. Attributes of the Xdmx(1) se=
rver and of the back-end screens attached to the server can be queried and =
modified via this protocol.,N/A,http://xorg.freedesktop.org/releases/indivi=
dual/lib/libdmx-1.1.3.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['avahi-ui', '0.6.31', 'N/A', 'GPLv2+ & LGPLv2.1+', 'network', 'http://avah=
i.org', 'r11.0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native virtual/gettext gettext-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
expat libcap libdaemon dbus glib-2.0  python-native  avahi gtk+ libglade up=
date-rc.d-native initscripts base-files base-passwd shadow-native shadow-sy=
sroot shadow python-native python', 'http://avahi.org/report', 'None', 'Ava=
hi is a fully LGPL framework for Multicast DNS Service Discovery. It allows=
 programs to publish and discover services and hosts running on a local net=
work with no specific configuration. This tool implements IPv4LL, "Dynamic =
Configuration of IPv4 Link-Local Addresses" (IETF RFC3927), a protocol for =
automatic IP address configuration from the link-local 169.254.0.0/16 range=
 without the need for a central server.', 'ErrHostNoDir:/download/:-:avahi-=
0.6.31.tar.gz:avahi.org/download/avahi-0.6.31.tar.gz', 'N/A', 'http://avahi=
=2Eorg/download/avahi-0.6.31.tar.gz', 'Paul Eggleton <paul.eggleton@linux.i=
ntel.com>', 'None']
inserted (avahi-ui,0.6.31,N/A,GPLv2+ & LGPLv2.1+,network,r11.0,None,http://=
avahi.org,http://avahi.org/report,ErrHostNoDir:/download/:-:avahi-0.6.31.ta=
r.gz:avahi.org/download/avahi-0.6.31.tar.gz,pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native virtual/ge=
ttext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  expat libcap libdaemon dbus glib-2.0  python-nati=
ve  avahi gtk+ libglade update-rc.d-native initscripts base-files base-pass=
wd shadow-native shadow-sysroot shadow python-native python,Avahi is a full=
y LGPL framework for Multicast DNS Service Discovery. It allows programs to=
 publish and discover services and hosts running on a local network with no=
 specific configuration. This tool implements IPv4LL, "Dynamic Configuratio=
n of IPv4 Link-Local Addresses" (IETF RFC3927), a protocol for automatic IP=
 address configuration from the link-local 169.254.0.0/16 range without the=
 need for a central server.,N/A,http://avahi.org/download/avahi-0.6.31.tar.=
gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['gst-plugins-gl', '0.10.3', '0.10.3', 'GPLv2+ & LGPLv2+ & LGPLv2.1+ ', 'mu=
ltimedia', 'http://gstreamer.freedesktop.org/', 'r4', 'pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
 virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base virtual/lib=
gles2 virtual/egl jpeg libpng glew', 'https://bugzilla.gnome.org/enter_bug.=
cgi?product=3DGstreamer', 'None', 'Plugins for the GStreamer multimedia fra=
mework.', 'MATCH', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-plugins=
-gl/gst-plugins-gl-0.10.3.tar.bz2', 'None', 'None']
inserted (gst-plugins-gl,0.10.3,0.10.3,GPLv2+ & LGPLv2+ & LGPLv2.1+ ,multim=
edia,r4,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/e=
nter_bug.cgi?product=3DGstreamer,MATCH,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native virtual/gettext=
 gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  gstreamer gst-plugins-base virtual/libgles2 virtual/eg=
l jpeg libpng glew,Plugins for the GStreamer multimedia framework.,N/A,http=
://gstreamer.freedesktop.org/src/gst-plugins-gl/gst-plugins-gl-0.10.3.tar.b=
z2,None)
['tzcode-native', '2014f', '2014f', 'PD & BSD', 'base', '', 'r0', ' ', 'Non=
e', 'None', 'tzcode, timezone zoneinfo utils -- zic, zdump, tzselect', 'MAT=
CH', 'N/A', 'ftp://ftp.iana.org/tz/releases/tzcode2014f.tar.gz;name=3Dtzcod=
e', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (tzcode-native,2014f,2014f,PD & BSD,base,r0,None,,None,MATCH, ,tzc=
ode, timezone zoneinfo utils -- zic, zdump, tzselect,N/A,ftp://ftp.iana.org=
/tz/releases/tzcode2014f.tar.gz;name=3Dtzcode,Robert Yang <liezhi.yang@wind=
river.com>)
['subversion', '1.8.9', '1.8.10', 'Apache-2', 'console/network', 'http://su=
bversion.tigris.org', 'r0', 'autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  apr-ut=
il serf sqlite3 file', 'None', 'None', 'Subversion (svn) version control sy=
stem client.', 'UPDATE', 'N/A', 'http://www.apache.org/dist/subversion/subv=
ersion-1.8.9.tar.bz2', 'Richard Purdie <richard.purdie@linuxfoundation.org>=
', 'None']
inserted (subversion,1.8.9,1.8.10,Apache-2,console/network,r0,None,http://s=
ubversion.tigris.org,None,UPDATE,autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ap=
r-util serf sqlite3 file,Subversion (svn) version control system client.,N/=
A,http://www.apache.org/dist/subversion/subversion-1.8.9.tar.bz2,Richard Pu=
rdie <richard.purdie@linuxfoundation.org>)
['apr', '1.5.1', '1.5.1', 'Apache-2.0', 'libs', 'http://apr.apache.org/', '=
r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  util-linux', 'None', 'None', 'Apache Portable Runtime (APR) =
library.', 'MATCH', 'N/A', 'http://www.apache.org/dist/apr/apr-1.5.1.tar.bz=
2', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (apr,1.5.1,1.5.1,Apache-2.0,libs,r0,None,http://apr.apache.org/,No=
ne,MATCH,autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  util-linux,Apache Portable Runtime (APR) library.,N/A,htt=
p://www.apache.org/dist/apr/apr-1.5.1.tar.bz2,Hongxu Jia <hongxu.jia@windri=
ver.com>)
['rgb', '1.0.5', '1.0.5', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros-native virtual/libx11  xproto util-=
macros', 'https://bugs.freedesktop.org', '1', 'This package includes both t=
he list mapping X color names to RGB values (rgb.txt) and, if configured to=
 use a database for color lookup, the rgb program to convert the text file =
into the binary database format.', 'MATCH', 'N/A', 'http://xorg.freedesktop=
=2Eorg/releases/individual/app/rgb-1.0.5.tar.bz2', 'Saul Wold <sgw@linux.in=
tel.com>', 'None']
inserted (rgb,1.0.5,1.0.5,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https://b=
ugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native virt=
ual/libx11  xproto util-macros,This package includes both the list mapping =
X color names to RGB values (rgb.txt) and, if configured to use a database =
for color lookup, the rgb program to convert the text file into the binary =
database format.,N/A,http://xorg.freedesktop.org/releases/individual/app/rg=
b-1.0.5.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['cryptodev-module', '1.6', '1.6', 'GPLv2', 'base', 'http://cryptodev-linux=
=2Eorg/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc   virtual/kernel cryptodev-linux', 'None', 'None', 'A =
/dev/crypto device driver kernel module.', 'MATCH', 'N/A', 'http://download=
=2Egna.org/cryptodev-linux/cryptodev-linux-1.6.tar.gz', 'None', 'None']
inserted (cryptodev-module,1.6,1.6,GPLv2,base,r0,None,http://cryptodev-linu=
x.org/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc   virtual/kernel cryptodev-linux,A /dev/crypto device=
 driver kernel module.,N/A,http://download.gna.org/cryptodev-linux/cryptode=
v-linux-1.6.tar.gz,None)
['xwininfo', '1.1.3', '1.1.3', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxext li=
bxmu', 'https://bugs.freedesktop.org', '0', 'Xwininfo is a utility for disp=
laying information about windows.  Information may include window position,=
 size, color depth, and a number of other items.', 'MATCH', 'N/A', 'http://=
xorg.freedesktop.org/releases/individual/app/xwininfo-1.1.3.tar.bz2', 'Ross=
 Burton <ross.burton@intel.com>', 'None']
inserted (xwininfo,1.1.3,1.1.3,MIT-X,x11/apps,r0,0,http://www.x.org/,https:=
//bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native v=
irtual/libx11 libxext libxmu,Xwininfo is a utility for displaying informati=
on about windows.  Information may include window position, size, color dep=
th, and a number of other items.,N/A,http://xorg.freedesktop.org/releases/i=
ndividual/app/xwininfo-1.1.3.tar.bz2,Ross Burton <ross.burton@intel.com>)
['gmp', '6.0.0', '6.0.0a', 'GPLv2 | LGPLv3', 'devel', 'http://gmplib.org/',=
 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc   texinfo-native', 'None', 'None', 'GMP is a free library f=
or arbitrary precision arithmetic, operating on signed integers, rational n=
umbers, and floating point numbers', 'UPDATE', 'N/A', 'ftp://ftp.gmplib.org=
/pub/gmp-6.0.0/gmp-6.0.0a.tar.bz2', 'Robert Yang <liezhi.yang@windriver.com=
>', 'None']
inserted (gmp,6.0.0,6.0.0a,GPLv2 | LGPLv3,devel,r0,None,http://gmplib.org/,=
None,UPDATE,autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc   texinfo-native,GMP is a free library for arbitrary pr=
ecision arithmetic, operating on signed integers, rational numbers, and flo=
ating point numbers,N/A,ftp://ftp.gmplib.org/pub/gmp-6.0.0/gmp-6.0.0a.tar.b=
z2,Robert Yang <liezhi.yang@windriver.com>)
['nativesdk-libtool', '2.4.2', '2.4.2', 'GPLv2 & LGPLv2.1', 'devel', 'http:=
//www.gnu.org/software/libtool/libtool.html', 'r6.0', 'autoconf-native libt=
ool-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-p=
okysdk-linux-compilerlibs chrpath-replacement-native gnu-config-native auto=
make-native texinfo-native virtual/nativesdk-libc', 'None', 'None', 'This i=
s GNU libtool, a generic library support script. Libtool hides the complexi=
ty of generating special library types (such as shared libraries) behind a =
consistent interface.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/libtool/libt=
ool-2.4.2.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (nativesdk-libtool,2.4.2,2.4.2,GPLv2 & LGPLv2.1,devel,r6.0,None,ht=
tp://www.gnu.org/software/libtool/libtool.html,None,MATCH,autoconf-native l=
ibtool-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i58=
6-pokysdk-linux-compilerlibs chrpath-replacement-native gnu-config-native a=
utomake-native texinfo-native virtual/nativesdk-libc,This is GNU libtool, a=
 generic library support script. Libtool hides the complexity of generating=
 special library types (such as shared libraries) behind a consistent inter=
face.,N/A,ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz,Robert Yang <l=
iezhi.yang@windriver.com>)
['socat', '1.7.2.4', '1.7.2.4', 'GPL-2.0+-with-OpenSSL-exception', 'console=
/network', 'http://www.dest-unreach.org/socat/', 'r0', 'autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  openssl re=
adline tcp-wrappers', 'None', 'None', 'Socat is a relay for bidirectional d=
ata transfer between two independent data channels.', 'MATCH', 'N/A', 'http=
://www.dest-unreach.org/socat/download/socat-1.7.2.4.tar.bz2', 'Hongxu Jia =
<hongxu.jia@windriver.com>', '2.0.0 is beta']
inserted (socat,1.7.2.4,1.7.2.4,GPL-2.0+-with-OpenSSL-exception,console/net=
work,r0,None,http://www.dest-unreach.org/socat/,None,MATCH,autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  openssl=
 readline tcp-wrappers,Socat is a relay for bidirectional data transfer bet=
ween two independent data channels.,N/A,http://www.dest-unreach.org/socat/d=
ownload/socat-1.7.2.4.tar.bz2,Hongxu Jia <hongxu.jia@windriver.com>)
['lzop', '1.03', '1.03', 'GPLv2+', 'base', '', 'r0', 'autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   lzo', 'None=
', 'None', 'lzop is a compression utility which is designed to be a compani=
on to gzip. \\nIt is based on the LZO data compression library and its main=
 advantages over \\ngzip are much higher compression and decompression spee=
d at the cost of some \\ncompression ratio. The lzop compression utility wa=
s designed with the goals \\nof reliability, speed, portability and with re=
asonable drop-in compatibility \\nto gzip.', 'MATCH', 'N/A', 'http://www.lz=
op.org/download/lzop-1.03.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None=
']
inserted (lzop,1.03,1.03,GPLv2+,base,r0,None,,None,MATCH,autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   lzo,lzop=
 is a compression utility which is designed to be a companion to gzip. \nIt=
 is based on the LZO data compression library and its main advantages over =
\ngzip are much higher compression and decompression speed at the cost of s=
ome \ncompression ratio. The lzop compression utility was designed with the=
 goals \nof reliability, speed, portability and with reasonable drop-in com=
patibility \nto gzip.,N/A,http://www.lzop.org/download/lzop-1.03.tar.gz,Sau=
l Wold <sgw@linux.intel.com>)
['xproto', '7.0.26', '7.0.26', 'MIT & MIT-style', 'x11/libs', 'http://www.x=
=2Eorg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freed=
esktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the b=
asic headers for the X Window System.', 'MATCH', 'N/A', 'http://xorg.freede=
sktop.org/releases/individual/proto/xproto-7.0.26.tar.bz2', 'Ross Burton <r=
oss.burton@intel.com>', 'None']
inserted (xproto,7.0.26,7.0.26,MIT & MIT-style,x11/libs,r0,1,http://www.x.o=
rg,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  util-macros,This package provides the basic headers for t=
he X Window System.,N/A,http://xorg.freedesktop.org/releases/individual/pro=
to/xproto-7.0.26.tar.bz2,Ross Burton <ross.burton@intel.com>)
['babeltrace', '1.2.1+gitAUTOINC+66c2a20b43', '1.2.2+gitAUTOINC+8099326', '=
MIT & GPLv2', 'base', 'http://www.efficios.com/babeltrace/', 'r0', 'pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  glib-2.0 util-linux popt', 'https://bugs.lttng.org/proje=
cts/babeltrace', 'None', 'Babeltrace provides trace read and write librarie=
s in host side, as well as a trace converter, which used to convert LTTng 2=
=2E0 traces into human-readable log.', 'UPDATE', 'N/A', 'git://git.efficios=
=2Ecom/babeltrace.git;branch=3Dstable-1.2', 'Saul Wold <sgw@linux.intel.com=
>', 'None']
inserted (babeltrace,1.2.1+gitAUTOINC+66c2a20b43,1.2.2+gitAUTOINC+8099326,M=
IT & GPLv2,base,r0,None,http://www.efficios.com/babeltrace/,https://bugs.lt=
tng.org/projects/babeltrace,UPDATE,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 util-=
linux popt,Babeltrace provides trace read and write libraries in host side,=
 as well as a trace converter, which used to convert LTTng 2.0 traces into =
human-readable log.,N/A,git://git.efficios.com/babeltrace.git;branch=3Dstab=
le-1.2,Saul Wold <sgw@linux.intel.com>)
['apr-util', '1.5.3', '1.5.3', 'Apache-2.0', 'libs', 'http://apr.apache.org=
/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  apr expat gdbm', 'None', 'None', 'Apache Portable Runti=
me (APR) companion library.', 'MATCH', 'N/A', 'http://www.apache.org/dist/a=
pr/apr-util-1.5.3.tar.gz', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (apr-util,1.5.3,1.5.3,Apache-2.0,libs,r0,None,http://apr.apache.or=
g/,None,MATCH,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  apr expat gdbm,Apache Portable Runtime (APR) compani=
on library.,N/A,http://www.apache.org/dist/apr/apr-util-1.5.3.tar.gz,Hongxu=
 Jia <hongxu.jia@windriver.com>)
['ca-certificates', '20140325', '20140325', 'GPL-2.0+ & MPL-2.0', 'misc', '=
http://packages.debian.org/sid/ca-certificates', 'r0', ' ca-certificates-na=
tive', 'None', 'None', "This package includes PEM files of CA certificates =
to allow SSL-based applications to check for the authenticity of SSL connec=
tions. This derived from Debian's CA Certificates.", 'ErrUnknown:anonscm.de=
bian.org/collab-maint/ca-certificates.git', 'N/A', 'git://anonscm.debian.or=
g/collab-maint/ca-certificates.git', 'None', 'None']
inserted (ca-certificates,20140325,20140325,GPL-2.0+ & MPL-2.0,misc,r0,None=
,http://packages.debian.org/sid/ca-certificates,None,ErrUnknown:anonscm.deb=
ian.org/collab-maint/ca-certificates.git, ca-certificates-native,This packa=
ge includes PEM files of CA certificates to allow SSL-based applications to=
 check for the authenticity of SSL connections. This derived from Debian's =
CA Certificates.,N/A,git://anonscm.debian.org/collab-maint/ca-certificates.=
git,None)
['libglade', '2.6.4', '2.6.4', 'LGPLv2 & LGPLv2+', 'libs', 'http://library.=
gnome.org/devel/libglade/', 'r5', 'pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib gdk-pixbu=
f gtk+ gnome-common-native gtk-doc-stub-native', 'https://bugzilla.gnome.or=
g/', 'None', 'Runtime support for the GTK+ interface builder.', 'MATCH', 'N=
/A', 'http://ftp.gnome.org/pub/GNOME/sources/libglade/2.6/libglade-2.6.4.ta=
r.bz2;name=3Darchive', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libglade,2.6.4,2.6.4,LGPLv2 & LGPLv2+,libs,r5,None,http://library=
=2Egnome.org/devel/libglade/,https://bugzilla.gnome.org/,MATCH,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  zlib gdk-pixbuf gtk+ gnome-common-native gtk-doc-stub-native,=
Runtime support for the GTK+ interface builder.,N/A,http://ftp.gnome.org/pu=
b/GNOME/sources/libglade/2.6/libglade-2.6.4.tar.bz2;name=3Darchive,Ross Bur=
ton <ross.burton@intel.com>)
['dri2proto', '2.8', '2.8', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/enter_=
bug.cgi?product=3Dxorg', 'None', 'This package provides the wire protocol f=
or the Direct Rendering Ifnrastructure 2.  DIR is required for may hardware=
 accelerated OpenGL drivers.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org=
/releases/individual/proto/dri2proto-2.8.tar.bz2', 'Ross Burton <ross.burto=
n@intel.com>', 'None']
inserted (dri2proto,2.8,2.8,MIT,x11/libs,r0,None,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  util-macros,This package provides the wire protocol for the Direct Re=
ndering Ifnrastructure 2.  DIR is required for may hardware accelerated Ope=
nGL drivers.,N/A,http://xorg.freedesktop.org/releases/individual/proto/dri2=
proto-2.8.tar.bz2,Ross Burton <ross.burton@intel.com>)
['shadow', '4.2.1', '4.2.1', 'BSD | Artistic-1.0', 'base/utils', 'http://pk=
g-shadow.alioth.debian.org', 'r0', 'autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native virtual/gettext gettext-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 shadow-native virtual/update-alternatives', 'https://alioth.debian.org/tra=
cker/?group_id=3D30580', 'None', 'Tools to change and administer password a=
nd group data.', 'MATCH', 'N/A', 'http://pkg-shadow.alioth.debian.org/relea=
ses/shadow-4.2.1.tar.xz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (shadow,4.2.1,4.2.1,BSD | Artistic-1.0,base/utils,r0,None,http://p=
kg-shadow.alioth.debian.org,https://alioth.debian.org/tracker/?group_id=3D3=
0580,MATCH,autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  shadow-native virtual/up=
date-alternatives,Tools to change and administer password and group data.,N=
/A,http://pkg-shadow.alioth.debian.org/releases/shadow-4.2.1.tar.xz,Chen Qi=
 <Qi.Chen@windriver.com>)
['desktop-file-utils-native', '0.22', '0.22', 'GPLv2', 'console/utils', 'ht=
tp://www.freedesktop.org/wiki/Software/desktop-file-utils', 'r0', 'autoconf=
-native automake-native libtool-native gnu-config-native  glib-2.0-native',=
 'None', 'None', 'Command line utilities for working with *.desktop files.'=
, 'MATCH', 'N/A', 'http://freedesktop.org/software/desktop-file-utils/relea=
ses/desktop-file-utils-0.22.tar.xz', 'Saul Wold <sgw@linux.intel.com>', 'No=
ne']
inserted (desktop-file-utils-native,0.22,0.22,GPLv2,console/utils,r0,None,h=
ttp://www.freedesktop.org/wiki/Software/desktop-file-utils,None,MATCH,autoc=
onf-native automake-native libtool-native gnu-config-native  glib-2.0-nativ=
e,Command line utilities for working with *.desktop files.,N/A,http://freed=
esktop.org/software/desktop-file-utils/releases/desktop-file-utils-0.22.tar=
=2Exz,Saul Wold <sgw@linux.intel.com>)
['python3', '3.3.3', '3.4.1rc1', 'PSFv2', 'devel/python', 'http://www.pytho=
n.org', 'r0.0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  python3-native libffi bzip2 db g=
dbm openssl readline sqlite3 zlib virtual/libintl xz  python3-native ', 'No=
ne', 'None', 'The Python Programming Language.', 'UPDATE', 'N/A', 'http://w=
ww.python.org/ftp/python/3.3.3/Python-3.3.3.tar.bz2', 'Richard Purdie <rich=
ard.purdie@linuxfoundation.org>', 'None']
inserted (python3,3.3.3,3.4.1rc1,PSFv2,devel/python,r0.0,None,http://www.py=
thon.org,None,UPDATE,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  python3-native libffi bzip2 =
db gdbm openssl readline sqlite3 zlib virtual/libintl xz  python3-native ,T=
he Python Programming Language.,N/A,http://www.python.org/ftp/python/3.3.3/=
Python-3.3.3.tar.bz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['python-smartpm', '1.4.1', 'N/A', 'GPLv2', 'devel/python', 'http://labix.o=
rg/smart/', 'r9', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  python rpm gettext-native python-native python  pyt=
hon-native  rpm', 'None', 'None', 'The Smart Package Manager project has th=
e ambitious objective of creating smart and portable algorithms for solving=
 adequately the problem of managing software upgrades and installation.', '=
ErrHostNoDir:/smart/trunk/1.4.1/+download/:1.4.1:smart-1.4.1.tar.bz2:launch=
pad.net/smart/trunk/1.4.1/+download/smart-1.4.1.tar.bz2', 'N/A', 'http://la=
unchpad.net/smart/trunk/1.4.1/+download/smart-1.4.1.tar.bz2', 'Paul Eggleto=
n <paul.eggleton@linux.intel.com>', 'None']
inserted (python-smartpm,1.4.1,N/A,GPLv2,devel/python,r9,None,http://labix.=
org/smart/,None,ErrHostNoDir:/smart/trunk/1.4.1/+download/:1.4.1:smart-1.4.=
1.tar.bz2:launchpad.net/smart/trunk/1.4.1/+download/smart-1.4.1.tar.bz2, vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  python rpm gettext-native python-native python  python-native  rpm,The Sm=
art Package Manager project has the ambitious objective of creating smart a=
nd portable algorithms for solving adequately the problem of managing softw=
are upgrades and installation.,N/A,http://launchpad.net/smart/trunk/1.4.1/+=
download/smart-1.4.1.tar.bz2,Paul Eggleton <paul.eggleton@linux.intel.com>)
['makedepend', '1.0.5', '1.0.5', 'MIT-X', 'x11/utils', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  xproto util-macros', 'https://bugs.freedes=
ktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The makedepend program reads =
each sourcefile in sequence and parses it like a C-preprocessor, processing=
 all #include, #define,  #undef, #ifdef, #ifndef, #endif, #if, #elif and #e=
lse directives so that it can correctly tell which #include, directives wou=
ld be used in a compilation. Any #include, directives can reference files h=
aving other #include directives, and parsing will occur in these files as w=
ell.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individual/uti=
l/makedepend-1.0.5.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'Non=
e']
inserted (makedepend,1.0.5,1.0.5,MIT-X,x11/utils,r0,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  xproto util-macros,The makedepend program reads each sourcefile =
in sequence and parses it like a C-preprocessor, processing all #include, #=
define,  #undef, #ifdef, #ifndef, #endif, #if, #elif and #else directives s=
o that it can correctly tell which #include, directives would be used in a =
compilation. Any #include, directives can reference files having other #inc=
lude directives, and parsing will occur in these files as well.,N/A,http://=
xorg.freedesktop.org/releases/individual/util/makedepend-1.0.5.tar.gz,Rober=
t Yang <liezhi.yang@windriver.com>)
['matchbox-session', '0.1', 'INVALID', 'GPLv2', 'x11', 'http://www.matchbox=
-project.org/', 'r4', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc   virtual/update-alternatives', 'http://bugzilla=
=2Eyoctoproject.org/', 'None', 'Custom Matchbox session files.', 'MATCH', '=
N/A', 'file://matchbox-session', 'Ross Burton <ross.burton@intel.com>', 'No=
ne']
inserted (matchbox-session,0.1,INVALID,GPLv2,x11,r4,None,http://www.matchbo=
x-project.org/,http://bugzilla.yoctoproject.org/,MATCH, virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update=
-alternatives,Custom Matchbox session files.,N/A,file://matchbox-session,Ro=
ss Burton <ross.burton@intel.com>)
['minicom', '2.7', '2.7', 'GPLv2+', 'console/network', '', 'r0', 'pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  ncurses virtual/libiconv', =
'None', 'None', 'Minicom is a text-based modem control and terminal emulati=
on program for Unix-like operating systems', 'MATCH', '2.6.2', 'https://ali=
oth.debian.org/frs/download.php/latestfile/3/minicom-2.7.tar.gz', 'Cristian=
 Iorga <cristian.iorga@intel.com>', 'None']
inserted (minicom,2.7,2.7,GPLv2+,console/network,r0,None,,None,MATCH,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  ncurses virtual/libiconv=
,Minicom is a text-based modem control and terminal emulation program for U=
nix-like operating systems,2.6.2,https://alioth.debian.org/frs/download.php=
/latestfile/3/minicom-2.7.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['xf86dgaproto', '2.1', '2.1', 'MIT', 'x11/libs', 'http://www.x.org', 'r2',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/ent=
er_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol f=
or the XFree86 Direct Graphics Access extension. This extension allows dire=
ct graphics access to a framebuffer-like region, as well as relative mouse =
reporting.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/individu=
al/proto/xf86dgaproto-2.1.tar.bz2', 'Ross Burton <ross.burton@intel.com>', =
'None']
inserted (xf86dgaproto,2.1,2.1,MIT,x11/libs,r2,1,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  util-macros,This package provides the wire protocol for the XFree86 D=
irect Graphics Access extension. This extension allows direct graphics acce=
ss to a framebuffer-like region, as well as relative mouse reporting.,N/A,h=
ttp://xorg.freedesktop.org/releases/individual/proto/xf86dgaproto-2.1.tar.b=
z2,Ross Burton <ross.burton@intel.com>)
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
r.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxdmcp,1.1.1,1.1.1,MIT-style,x11/libs,r0,1,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  util-macros xproto,The purpose o=
f the X Display Manager Control Protocol (XDMCP) is to provide a uniform me=
chanism for an autonomous display to request login service from a remote ho=
st. An X terminal (screen, keyboard, mouse, processor, network interface) i=
s a prime example of an autonomous display.,N/A,http://xorg.freedesktop.org=
/releases/individual/lib/libXdmcp-1.1.1.tar.bz2,Ross Burton <ross.burton@in=
tel.com>)
['unfs3', '0.9.22.r490', 'N/A', 'unfs3', 'console/network', '', 'r0', 'auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  flex-native bison-native flex', 'None', 'None', 'Userspace NFS server =
v3 protocol.', 'UPDATE', 'N/A', 'svn://svn.code.sf.net/p/unfs3/code;module=
=3Dtrunk;rev=3D490', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None=
']
inserted (unfs3,0.9.22.r490,N/A,unfs3,console/network,r0,None,,None,UPDATE,=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  flex-native bison-native flex,Userspace NFS server v3 protocol.,N/=
A,svn://svn.code.sf.net/p/unfs3/code;module=3Dtrunk;rev=3D490,Paul Eggleton=
 <paul.eggleton@linux.intel.com>)
['rsync', '3.1.0', '3.1.1', 'GPLv3+', 'console/network', 'http://rsync.samb=
a.org/', 'r0', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  popt', 'http://rsync.samba.org/bugzilla.html', 'No=
ne', 'File synchronization tool.', 'UPDATE', 'N/A', 'http://rsync.samba.org=
/ftp/rsync/src/rsync-3.1.0.tar.gz', 'Robert Yang <liezhi.yang@windriver.com=
>', 'None']
inserted (rsync,3.1.0,3.1.1,GPLv3+,console/network,r0,None,http://rsync.sam=
ba.org/,http://rsync.samba.org/bugzilla.html,UPDATE,autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  popt,File sync=
hronization tool.,N/A,http://rsync.samba.org/ftp/rsync/src/rsync-3.1.0.tar.=
gz,Robert Yang <liezhi.yang@windriver.com>)
['man-pages', '3.70', '3.70', 'GPLv2+', 'console/utils', 'http://www.kernel=
=2Eorg/pub/linux/docs/man-pages', 'r0', ' virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'The Linux=
 man-pages project documents the Linux kernel and C library interfaces that=
 are employed by user programs', 'MATCH', 'N/A', 'http://kernel.org/pub/lin=
ux/docs/man-pages/Archive/man-pages-3.70.tar.gz', 'Saul Wold <sgw@linux.int=
el.com>', 'None']
inserted (man-pages,3.70,3.70,GPLv2+,console/utils,r0,None,http://www.kerne=
l.org/pub/linux/docs/man-pages,None,MATCH, virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  ,The Linux man-pages project=
 documents the Linux kernel and C library interfaces that are employed by u=
ser programs,N/A,http://kernel.org/pub/linux/docs/man-pages/Archive/man-pag=
es-3.70.tar.gz,Saul Wold <sgw@linux.intel.com>)
['docbook-dsssl-stylesheets-native', '1.79', '1.79', 'DSSSL', 'base', 'http=
://docbook.sourceforge.net', 'r4', ' sgml-common-native', 'None', 'None', '=
DSSSL stylesheets used to transform SGML and XML DocBook files.', 'MATCH', =
'N/A', 'http://downloads.sourceforge.net/docbook/docbook-dsssl-1.79.tar.bz2=
', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (docbook-dsssl-stylesheets-native,1.79,1.79,DSSSL,base,r4,None,htt=
p://docbook.sourceforge.net,None,MATCH, sgml-common-native,DSSSL stylesheet=
s used to transform SGML and XML DocBook files.,N/A,http://downloads.source=
forge.net/docbook/docbook-dsssl-1.79.tar.bz2,Paul Eggleton <paul.eggleton@l=
inux.intel.com>)
['libxmu', '1.1.2', '1.1.2', 'MIT & MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  util-macros libxt libxext', 'https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Xmu Library i=
s a collection of miscellaneous (some might say random) utility functions t=
hat have been useful in building various applications and widgets. This lib=
rary is required by the Athena Widgets. A subset of the functions that do n=
ot rely on the Athena Widgets (libXaw) or X Toolkit Instrinsics (libXt) are=
 provided in a second library, libXmuu.', 'MATCH', 'N/A', 'http://xorg.free=
desktop.org/releases/individual/lib/libXmu-1.1.2.tar.bz2', 'Ross Burton <ro=
ss.burton@intel.com>', 'None']
inserted (libxmu,1.1.2,1.1.2,MIT & MIT-style,x11/libs,r0,1,http://www.x.org=
,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  util-macros libxt libxext,The Xmu Library is a collection o=
f miscellaneous (some might say random) utility functions that have been us=
eful in building various applications and widgets. This library is required=
 by the Athena Widgets. A subset of the functions that do not rely on the A=
thena Widgets (libXaw) or X Toolkit Instrinsics (libXt) are provided in a s=
econd library, libXmuu.,N/A,http://xorg.freedesktop.org/releases/individual=
/lib/libXmu-1.1.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['shared-mime-info', '1.3', '1.3', 'LGPLv2+', 'base', 'http://freedesktop.o=
rg/wiki/Software/shared-mime-info', 'r0', 'pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native virtual/get=
text gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  libxml2 intltool-native glib-2.0 shared-mime-info-=
native', 'None', 'None', 'Shared MIME type database and specification.', 'M=
ATCH', 'N/A', 'file://parallelmake.patch', 'Ross Burton <ross.burton@intel.=
com>', 'None']
inserted (shared-mime-info,1.3,1.3,LGPLv2+,base,r0,None,http://freedesktop.=
org/wiki/Software/shared-mime-info,None,MATCH,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native virtual/=
gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  libxml2 intltool-native glib-2.0 shared-mime-in=
fo-native,Shared MIME type database and specification.,N/A,file://parallelm=
ake.patch,Ross Burton <ross.burton@intel.com>)
['keymaps', '1.0', 'INVALID', 'GPLv2', 'base', '', 'r31', '  update-rc.d-na=
tive initscripts', 'None', 'None', 'Keymaps and initscript to set the keyma=
p on bootup.', 'MATCH', '1.0', 'file://keymap.sh', 'Saul Wold <sgw@linux.in=
tel.com>', 'None']
inserted (keymaps,1.0,INVALID,GPLv2,base,r31,None,,None,MATCH,  update-rc.d=
-native initscripts,Keymaps and initscript to set the keymap on bootup.,1.0=
,file://keymap.sh,Saul Wold <sgw@linux.intel.com>)
['irda-utils', '0.9.18', '0.9.18', 'GPLv2+', 'base', 'http://irda.sourcefor=
ge.net/', 'r0', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc   update-rc.d-native initscripts', 'irda-users@lis=
ts.sourceforge.net', 'None', 'Provides common files needed to use IrDA. IrD=
A allows communication over Infrared with other devices such as phones and =
laptops.', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/irda/irda-util=
s-0.9.18.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (irda-utils,0.9.18,0.9.18,GPLv2+,base,r0,None,http://irda.sourcefo=
rge.net/,irda-users@lists.sourceforge.net,MATCH,autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   update-rc.d-nativ=
e initscripts,Provides common files needed to use IrDA. IrDA allows communi=
cation over Infrared with other devices such as phones and laptops.,N/A,htt=
p://downloads.sourceforge.net/irda/irda-utils-0.9.18.tar.gz,Cristian Iorga =
<cristian.iorga@intel.com>)
['grub', '2.00', '2.00', 'GPLv3', 'bootloaders', 'http://www.gnu.org/softwa=
re/grub/', 'r1', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  autogen-native fl=
ex-native bison-native xz texinfo-native', 'None', 'None', 'GRUB2 is the ne=
xt generaion of a GPLed bootloader intended to unify bootloading across x86=
 operating systems. In addition to loading the Linux kernel, it implements =
the Multiboot standard, which allows for flexible loading of multiple boot =
images.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/grub/grub-2.00.tar.gz', 'P=
aul Eggleton <paul.eggleton@linux.intel.com>', 'grub2 is a different thing']
inserted (grub,2.00,2.00,GPLv3,bootloaders,r1,None,http://www.gnu.org/softw=
are/grub/,None,MATCH,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  autogen-native=
 flex-native bison-native xz texinfo-native,GRUB2 is the next generaion of =
a GPLed bootloader intended to unify bootloading across x86 operating syste=
ms. In addition to loading the Linux kernel, it implements the Multiboot st=
andard, which allows for flexible loading of multiple boot images.,N/A,ftp:=
//ftp.gnu.org/gnu/grub/grub-2.00.tar.gz,Paul Eggleton <paul.eggleton@linux.=
intel.com>)
['xeyes', '1.1.1', '1.1.1', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros-native virtual/libx11  virtual/libx=
11 libxau libxt libxext libxmu libxrender', 'https://bugs.freedesktop.org',=
 '1', 'Xeyes is a small X11 application that shows a pair of eyes that move=
 to follow the location of the mouse cursor around the screen.', 'MATCH', '=
N/A', 'http://xorg.freedesktop.org/releases/individual/app/xeyes-1.1.1.tar.=
bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xeyes,1.1.1,1.1.1,MIT-X,x11/apps,r0,1,http://www.x.org/,https://b=
ugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native virt=
ual/libx11  virtual/libx11 libxau libxt libxext libxmu libxrender,Xeyes is =
a small X11 application that shows a pair of eyes that move to follow the l=
ocation of the mouse cursor around the screen.,N/A,http://xorg.freedesktop.=
org/releases/individual/app/xeyes-1.1.1.tar.bz2,Ross Burton <ross.burton@in=
tel.com>)
['udev', '182', '182', 'GPLv2.0+ & LGPLv2.1+', 'base', 'http://www.kernel.o=
rg/pub/linux/utils/kernel/hotplug/udev/udev.html', 'r9', 'pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  acl glib-2.0 libusb usbutils pciutils gperf-native libxslt-native =
util-linux module-init-tools update-rc.d-native initscripts', 'None', 'None=
', 'udev is a daemon which dynamically creates and removes device nodes fro=
m /dev/, handles hotplug events and loads drivers at boot time.', 'MATCH', =
'N/A', 'http://kernel.org/pub/linux/utils/kernel/hotplug/udev-182.tar.gz', =
'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (udev,182,182,GPLv2.0+ & LGPLv2.1+,base,r9,None,http://www.kernel.=
org/pub/linux/utils/kernel/hotplug/udev/udev.html,None,MATCH,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  acl glib-2.0 libusb usbutils pciutils gperf-native libxslt-nati=
ve util-linux module-init-tools update-rc.d-native initscripts,udev is a da=
emon which dynamically creates and removes device nodes from /dev/, handles=
 hotplug events and loads drivers at boot time.,N/A,http://kernel.org/pub/l=
inux/utils/kernel/hotplug/udev-182.tar.gz,Saul Wold <sgw@linux.intel.com>)
['sato-screenshot', '0.1+gitAUTOINC+3a9688e8a0', '0.1+gitAUTOINC+3a9688e', =
'GPLv2 & GPLv2+', 'base', 'http://www.o-hand.com', 'r2', 'pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  matchbox-panel-2', 'http://bugzilla.yoctoproject.org/', 'None', 'U=
ltra-simple screen capture utility, aimed at handheld devices.', 'MATCH', '=
N/A', 'git://git.yoctoproject.org/screenshot', 'Saul Wold <sgw@linux.intel.=
com>', 'PRS Reports Incorrectly']
inserted (sato-screenshot,0.1+gitAUTOINC+3a9688e8a0,0.1+gitAUTOINC+3a9688e,=
GPLv2 & GPLv2+,base,r2,None,http://www.o-hand.com,http://bugzilla.yoctoproj=
ect.org/,MATCH,pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  matchbox-panel-2,Ultra-simple scre=
en capture utility, aimed at handheld devices.,N/A,git://git.yoctoproject.o=
rg/screenshot,Saul Wold <sgw@linux.intel.com>)
['eglibc', '2.19', '2.19', 'GPLv2 & LGPLv2.1', 'libs', 'http://www.eglibc.o=
rg/home', 'r0', 'autoconf-native automake-native libtool-native gnu-config-=
native  virtual/i586-poky-linux-gcc-initial libgcc-initial linux-libc-heade=
rs virtual/i586-poky-linux-libc-initial gperf-native kconfig-frontends-nati=
ve texinfo-native', 'None', 'None', "Embedded GLIBC (EGLIBC) is a variant o=
f the GNU C Library (GLIBC) that is designed to work well on embedded syste=
ms. EGLIBC strives to be source and binary compatible with GLIBC. EGLIBC's =
goals include reduced footprint, configurable components, better support fo=
r cross-compilation and cross-testing.", 'MATCH', 'N/A', 'http://downloads.=
yoctoproject.org/releases/eglibc/eglibc-2.19-svnr25243.tar.bz2', 'Richard P=
urdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (eglibc,2.19,2.19,GPLv2 & LGPLv2.1,libs,r0,None,http://www.eglibc.=
org/home,None,MATCH,autoconf-native automake-native libtool-native gnu-conf=
ig-native  virtual/i586-poky-linux-gcc-initial libgcc-initial linux-libc-he=
aders virtual/i586-poky-linux-libc-initial gperf-native kconfig-frontends-n=
ative texinfo-native,Embedded GLIBC (EGLIBC) is a variant of the GNU C Libr=
ary (GLIBC) that is designed to work well on embedded systems. EGLIBC striv=
es to be source and binary compatible with GLIBC. EGLIBC's goals include re=
duced footprint, configurable components, better support for cross-compilat=
ion and cross-testing.,N/A,http://downloads.yoctoproject.org/releases/eglib=
c/eglibc-2.19-svnr25243.tar.bz2,Richard Purdie <richard.purdie@linuxfoundat=
ion.org>)
['font-alias', '1.0.3', '1.0.3', 'MIT', 'x11/fonts', 'http://www.x.org', 'r=
2.3', 'pkgconfig-native autoconf-native automake-native libtool-native gnu-=
config-native  util-macros-native font-util-native', 'https://bugs.freedesk=
top.org/enter_bug.cgi?product=3Dxorg', '1', 'X font aliases.', 'MATCH', 'N/=
A', 'http://xorg.freedesktop.org/releases/individual/font/font-alias-1.0.3.=
tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (font-alias,1.0.3,1.0.3,MIT,x11/fonts,r2.3,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nativ=
e autoconf-native automake-native libtool-native gnu-config-native  util-ma=
cros-native font-util-native,X font aliases.,N/A,http://xorg.freedesktop.or=
g/releases/individual/font/font-alias-1.0.3.tar.bz2,Ross Burton <ross.burto=
n@intel.com>)
['tcp-wrappers', '7.6', '7.6', 'BSD', 'console/network', '', 'r10', ' virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  '=
, 'None', 'None', 'Tools for monitoring and filtering incoming requests for=
 tcp                services.', 'MATCH', 'N/A', 'ftp://ftp.porcupine.org/pu=
b/security/tcp_wrappers_7.6.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'No=
ne']
inserted (tcp-wrappers,7.6,7.6,BSD,console/network,r10,None,,None,MATCH, vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  ,Tools for monitoring and filtering incoming requests for tcp            =
    services.,N/A,ftp://ftp.porcupine.org/pub/security/tcp_wrappers_7.6.tar=
=2Egz,Saul Wold <sgw@linux.intel.com>)
['bjam-native', '1.55.0', '1.56.0', 'BSL-1.0 & MIT & Python-2.0', 'devel', =
'http://www.boost.org/', 'r0', ' ', 'None', 'None', 'Portable Boost.Jam bui=
ld tool for boost.', 'UPDATE', 'N/A', 'http://downloads.sourceforge.net/boo=
st/boost_1_55_0.tar.bz2', 'None', 'None']
inserted (bjam-native,1.55.0,1.56.0,BSL-1.0 & MIT & Python-2.0,devel,r0,Non=
e,http://www.boost.org/,None,UPDATE, ,Portable Boost.Jam build tool for boo=
st.,N/A,http://downloads.sourceforge.net/boost/boost_1_55_0.tar.bz2,None)
['xf86-video-vesa', '2.3.3', '2.3.3', 'MIT-X', 'x11/drivers', 'http://www.x=
=2Eorg', 'r21.0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextpro=
to fontsproto virtual/xserver xproto randrproto util-macros virtual/libx11 =
randrproto libpciaccess', 'https://bugs.freedesktop.org', '2', 'vesa is an =
Xorg driver for generic VESA video cards. It can drive most VESA-compatible=
 video cards, but only makes use of the basic standard VESA core that is co=
mmon to these cards. The driver supports depths 8, 15 16 and 24.', 'MATCH',=
 'N/A', 'http://xorg.freedesktop.org/releases/individual/driver/xf86-video-=
vesa-2.3.3.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86-video-vesa,2.3.3,2.3.3,MIT-X,x11/drivers,r21.0,2,http://www.=
x.org,https://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  renderpr=
oto videoproto xextproto fontsproto virtual/xserver xproto randrproto util-=
macros virtual/libx11 randrproto libpciaccess,vesa is an Xorg driver for ge=
neric VESA video cards. It can drive most VESA-compatible video cards, but =
only makes use of the basic standard VESA core that is common to these card=
s. The driver supports depths 8, 15 16 and 24.,N/A,http://xorg.freedesktop.=
org/releases/individual/driver/xf86-video-vesa-2.3.3.tar.bz2,Ross Burton <r=
oss.burton@intel.com>)
['libfontenc', '1.1.2', '1.1.2', 'MIT', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros zlib xproto font-util', 'https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libfontenc is a l=
ibrary which helps font libraries portably determine and deal with differen=
t encodings of fonts.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releas=
es/individual/lib/libfontenc-1.1.2.tar.bz2', 'Ross Burton <ross.burton@inte=
l.com>', 'None']
inserted (libfontenc,1.1.2,1.1.2,MIT,x11/libs,r0,1,http://www.x.org,https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  util-macros zlib xproto font-util,libfontenc is a library which hel=
ps font libraries portably determine and deal with different encodings of f=
onts.,N/A,http://xorg.freedesktop.org/releases/individual/lib/libfontenc-1.=
1.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['texi2html', '5.0', '5.0', 'GPLv2', 'console/utils', 'http://www.nongnu.or=
g/texi2html/', 'r2', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-nati=
ve', 'None', 'None', 'Perl script that converts Texinfo to HTML.', 'MATCH',=
 'N/A', 'http://download.savannah.gnu.org/releases/texi2html/texi2html-5.0.=
tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (texi2html,5.0,5.0,GPLv2,console/utils,r2,None,http://www.nongnu.o=
rg/texi2html/,None,MATCH,autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-n=
ative,Perl script that converts Texinfo to HTML.,N/A,http://download.savann=
ah.gnu.org/releases/texi2html/texi2html-5.0.tar.bz2,Saul Wold <sgw@linux.in=
tel.com>)
['gnome-desktop', '2.32.1', '3.13.4', 'GPLv2 & LGPLv2', 'x11/gnome', '', 'r=
6', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  gconf libxrandr virtual/libx11 gtk+ glib-2.0=
 gnome-doc-utils startup-notification gnome-common-native', 'None', 'None',=
 'GNOME library for reading .desktop files.', 'UPDATE', '3.7.90', 'http://f=
tp.gnome.org/pub/GNOME/sources/gnome-desktop/2.32/gnome-desktop-2.32.1.tar.=
bz2;name=3Darchive', 'Ross Burton <ross.burton@intel.com>', 'waiting for th=
e sato gtk3 port']
inserted (gnome-desktop,2.32.1,3.13.4,GPLv2 & LGPLv2,x11/gnome,r6,None,,Non=
e,UPDATE,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  gconf libxrandr virtual/libx11 gtk+ glib=
-2.0 gnome-doc-utils startup-notification gnome-common-native,GNOME library=
 for reading .desktop files.,3.7.90,http://ftp.gnome.org/pub/GNOME/sources/=
gnome-desktop/2.32/gnome-desktop-2.32.1.tar.bz2;name=3Darchive,Ross Burton =
<ross.burton@intel.com>)
['initramfs-framework', '1.0', 'INVALID', 'MIT', 'base', '', 'r2', ' ', 'No=
ne', 'None', 'Modular initramfs system.', 'MATCH', 'N/A', 'file://init', 'S=
aul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-framework,1.0,INVALID,MIT,base,r2,None,,None,MATCH, ,Mo=
dular initramfs system.,N/A,file://init,Saul Wold <sgw@linux.intel.com>)
['xdpyinfo', '1.3.1', '1.3.1', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxtst li=
bxext libxxf86vm libxxf86dga libxxf86misc libxi libxrender libxinerama libd=
mx libxau libxcomposite', 'https://bugs.freedesktop.org', '1', 'Xdpyinfo is=
 a utility for displaying information about an X server. It is used to exam=
ine the capabilities of a server, the predefined values for various paramet=
ers used in communicating between clients and the server, and the different=
 types of screens and visuals that are available.', 'MATCH', 'N/A', 'http:/=
/xorg.freedesktop.org/releases/individual/app/xdpyinfo-1.3.1.tar.bz2', 'Ros=
s Burton <ross.burton@intel.com>', 'None']
inserted (xdpyinfo,1.3.1,1.3.1,MIT-X,x11/apps,r0,1,http://www.x.org/,https:=
//bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native v=
irtual/libx11 libxtst libxext libxxf86vm libxxf86dga libxxf86misc libxi lib=
xrender libxinerama libdmx libxau libxcomposite,Xdpyinfo is a utility for d=
isplaying information about an X server. It is used to examine the capabili=
ties of a server, the predefined values for various parameters used in comm=
unicating between clients and the server, and the different types of screen=
s and visuals that are available.,N/A,http://xorg.freedesktop.org/releases/=
individual/app/xdpyinfo-1.3.1.tar.bz2,Ross Burton <ross.burton@intel.com>)
['renderproto', '0.11.1', '0.11.1', 'MIT-style', 'x11/libs', 'http://www.x.=
org', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesk=
top.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire=
 protocol for the X Rendering extension.  This is the basis the image compo=
sition within the X window system.', 'MATCH', 'N/A', 'http://xorg.freedeskt=
op.org/releases/individual/proto/renderproto-0.11.1.tar.bz2', 'Ross Burton =
<ross.burton@intel.com>', 'None']
inserted (renderproto,0.11.1,0.11.1,MIT-style,x11/libs,r1,1,http://www.x.or=
g,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  util-macros,This package provides the wire protocol for th=
e X Rendering extension.  This is the basis the image composition within th=
e X window system.,N/A,http://xorg.freedesktop.org/releases/individual/prot=
o/renderproto-0.11.1.tar.bz2,Ross Burton <ross.burton@intel.com>)
['docbook-sgml-dtd-4.5-native', '4.5', '4.5', 'OASIS', 'base', 'http://www.=
docbook.org/sgml/', 'r3.0', ' sgml-common-native', 'None', 'None', 'Documen=
t type definitions for verification of SGML data files against the DocBook =
rule set', 'MATCH', 'N/A', 'http://www.docbook.org/sgml/4.5/docbook-4.5.zip=
', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'PRS Reports Incorrectl=
y']
inserted (docbook-sgml-dtd-4.5-native,4.5,4.5,OASIS,base,r3.0,None,http://w=
ww.docbook.org/sgml/,None,MATCH, sgml-common-native,Document type definitio=
ns for verification of SGML data files against the DocBook rule set,N/A,htt=
p://www.docbook.org/sgml/4.5/docbook-4.5.zip,Paul Eggleton <paul.eggleton@l=
inux.intel.com>)
['automake', '1.14.1', '1.14.1', 'GPLv2', 'devel', 'http://www.gnu.org/soft=
ware/automake/', 'r0', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc   texinfo-native', 'None', 'None', "Automak=
e is a tool for automatically generating `Makefile.in' files compliant with=
 the GNU Coding Standards. Automake requires the use of Autoconf.", 'MATCH'=
, 'N/A', 'ftp://ftp.gnu.org/gnu/automake/automake-1.14.1.tar.gz', 'Robert Y=
ang <liezhi.yang@windriver.com>', 'None']
inserted (automake,1.14.1,1.14.1,GPLv2,devel,r0,None,http://www.gnu.org/sof=
tware/automake/,None,MATCH,autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc   texinfo-native,Automake is a tool for =
automatically generating `Makefile.in' files compliant with the GNU Coding =
Standards. Automake requires the use of Autoconf.,N/A,ftp://ftp.gnu.org/gnu=
/automake/automake-1.14.1.tar.gz,Robert Yang <liezhi.yang@windriver.com>)
['linux-libc-headers', '3.14', '3.16.1', 'GPLv2', 'devel', '', 'r0', '  uni=
fdef-native', 'None', 'None', "Sanitized set of kernel headers for the C li=
brary's use.", 'UPDATE', 'N/A', 'http://kernel.org/pub/linux/kernel/v3.0/li=
nux-3.14.tar.xz', 'Bruce Ashfield <bruce.ashfield@windriver.com>', 'None']
inserted (linux-libc-headers,3.14,3.16.1,GPLv2,devel,r0,None,,None,UPDATE, =
 unifdef-native,Sanitized set of kernel headers for the C library's use.,N/=
A,http://kernel.org/pub/linux/kernel/v3.0/linux-3.14.tar.xz,Bruce Ashfield =
<bruce.ashfield@windriver.com>)
['mx-1.0', '1.4.7+gitAUTOINC+9b1db6b806', '1.99.4+gitAUTOINC+63da1f2', 'LGP=
Lv2.1', 'base', '', 'r0', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  clutter-1.0 dbus-glib gdk-pixbuf gtk-doc-stub-native', 'None', 'No=
ne', 'Clutter based UI widget library.', 'UPDATE', 'N/A', 'git://github.com=
/clutter-project/mx.git;branch=3Dmx-1.4', 'Saul Wold <sgw@linux.intel.com>'=
, 'PRS 1.99 is dev version']
inserted (mx-1.0,1.4.7+gitAUTOINC+9b1db6b806,1.99.4+gitAUTOINC+63da1f2,LGPL=
v2.1,base,r0,None,,None,UPDATE,pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native virtual/gettext gettext=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  clutter-1.0 dbus-glib gdk-pixbuf gtk-doc-stub-native,Clutter b=
ased UI widget library.,N/A,git://github.com/clutter-project/mx.git;branch=
=3Dmx-1.4,Saul Wold <sgw@linux.intel.com>)
['libcgroup', '0.41', '0.41', 'LGPLv2.1', 'libs', '', 'r0', 'pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  bison-native flex-native ', 'None', 'None', 'libcgroup is a lib=
rary that abstracts the control group file system in Linux. Control groups =
allow you to limit, account and isolate resource usage (CPU, memory, disk I=
/O, etc.) of groups of processes.', 'MATCH', 'N/A', 'http://downloads.sourc=
eforge.net/project/libcg/libcgroup/v0.41/libcgroup-0.41.tar.bz2', 'Saul Wol=
d <sgw@linux.intel.com>', 'None']
inserted (libcgroup,0.41,0.41,LGPLv2.1,libs,r0,None,,None,MATCH,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  bison-native flex-native ,libcgroup is a library that abstra=
cts the control group file system in Linux. Control groups allow you to lim=
it, account and isolate resource usage (CPU, memory, disk I/O, etc.) of gro=
ups of processes.,N/A,http://downloads.sourceforge.net/project/libcg/libcgr=
oup/v0.41/libcgroup-0.41.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['linux-firmware', '0.0+gitAUTOINC+dec41bce44', '0.0+gitAUTOINC+83b97f5', '=
Proprietary', 'kernel', '', 'r0', '  virtual/update-alternatives', 'None', =
'1', 'Firmware files for use with Linux kernel.', 'UPDATE', 'N/A', 'git://g=
it.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git', 'Crist=
ian Iorga <cristian.iorga@intel.com>', 'None']
inserted (linux-firmware,0.0+gitAUTOINC+dec41bce44,0.0+gitAUTOINC+83b97f5,P=
roprietary,kernel,r0,1,,None,UPDATE,  virtual/update-alternatives,Firmware =
files for use with Linux kernel.,N/A,git://git.kernel.org/pub/scm/linux/ker=
nel/git/firmware/linux-firmware.git,Cristian Iorga <cristian.iorga@intel.co=
m>)
['icu', '53.1', '53.1', 'ICU', 'base', 'http://site.icu-project.org/', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  icu-native', 'None', 'None', 'The Internationa=
l Component for Unicode (ICU) is a mature, portable set of C/C++ and Java l=
ibraries for Unicode support, software internationalization (I18N) and glob=
alization (G11N), giving applications the same results on all platforms.', =
'MATCH', '4.8.1.1', 'http://download.icu-project.org/files/icu4c/53.1/icu4c=
-53_1-src.tgz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (icu,53.1,53.1,ICU,base,r0,None,http://site.icu-project.org/,None,=
MATCH,pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  icu-native,The International Component for =
Unicode (ICU) is a mature, portable set of C/C++ and Java libraries for Uni=
code support, software internationalization (I18N) and globalization (G11N)=
, giving applications the same results on all platforms.,4.8.1.1,http://dow=
nload.icu-project.org/files/icu4c/53.1/icu4c-53_1-src.tgz,Ross Burton <ross=
=2Eburton@intel.com>)
['formfactor', '0.0', 'INVALID', 'MIT', 'base', '', 'r45', ' ', 'None', 'No=
ne', 'Device formfactor information.', 'MATCH', '0.0', 'file://config', 'Cr=
istian Iorga <cristian.iorga@intel.com>', 'None']
inserted (formfactor,0.0,INVALID,MIT,base,r45,None,,None,MATCH, ,Device for=
mfactor information.,0.0,file://config,Cristian Iorga <cristian.iorga@intel=
=2Ecom>)
['bc', '1.06', '1.06', 'GPLv2+ & LGPLv2.1', 'base', 'http://www.gnu.org/sof=
tware/bc/bc.html', 'r2', 'autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  flex texinfo-native virtual/update-alter=
natives', 'None', 'None', 'Arbitrary precision calculator language.', 'MATC=
H', '1.06', 'ftp://ftp.gnu.org/gnu/bc/bc-1.06.tar.gz', 'Saul Wold <sgw@linu=
x.intel.com>', 'None']
inserted (bc,1.06,1.06,GPLv2+ & LGPLv2.1,base,r2,None,http://www.gnu.org/so=
ftware/bc/bc.html,None,MATCH,autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  flex texinfo-native virtual/update-al=
ternatives,Arbitrary precision calculator language.,1.06,ftp://ftp.gnu.org/=
gnu/bc/bc-1.06.tar.gz,Saul Wold <sgw@linux.intel.com>)
['update-rc.d', '0.7', '0.7', 'GPLv2+', 'base', '', 'r5', ' ', 'None', 'Non=
e', 'update-rc.d is a utilities that allows the management of symlinks to t=
he initscripts in the /etc/rcN.d directory structure.', 'ErrUnknown:github.=
com/philb/update-rc.d.git', 'N/A', 'git://github.com/philb/update-rc.d.git'=
, 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (update-rc.d,0.7,0.7,GPLv2+,base,r5,None,,None,ErrUnknown:github.c=
om/philb/update-rc.d.git, ,update-rc.d is a utilities that allows the manag=
ement of symlinks to the initscripts in the /etc/rcN.d directory structure.=
,N/A,git://github.com/philb/update-rc.d.git,Saul Wold <sgw@linux.intel.com>)
['linux-yocto-rt', '3.14.5+gitAUTOINC+b2af4e3528_8ef1733b66', '3.14.13+gitA=
UTOINC+fcf0e4d', 'GPLv2', 'kernel', '', 'r0', '  xz-native bc-native virtua=
l/i586-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native depmodwr=
apper-cross', 'None', 'None', 'Yocto Kernel', 'UPDATE', 'N/A', 'git://git.y=
octoproject.org/linux-yocto-3.14.git;bareclone=3D1;branch=3Dstandard/preemp=
t-rt/base,meta;name=3Dmachine,meta', 'Darren Hart <dvhart@linux.intel.com>'=
, 'None']
inserted (linux-yocto-rt,3.14.5+gitAUTOINC+b2af4e3528_8ef1733b66,3.14.13+gi=
tAUTOINC+fcf0e4d,GPLv2,kernel,r0,None,,None,UPDATE,  xz-native bc-native vi=
rtual/i586-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native depm=
odwrapper-cross,Yocto Kernel,N/A,git://git.yoctoproject.org/linux-yocto-3.1=
4.git;bareclone=3D1;branch=3Dstandard/preempt-rt/base,meta;name=3Dmachine,m=
eta,Darren Hart <dvhart@linux.intel.com>)
['kern-tools-native', '0.2+gitAUTOINC+e914d57023', '0.2+gitAUTOINC+e914d57'=
, 'GPLv2', 'base', '', 'r12', ' git-native', 'None', 'None', 'Tools for man=
aging Yocto Project style branched kernels.', 'MATCH', 'N/A', 'git://git.yo=
ctoproject.org/yocto-kernel-tools.git', 'Bruce Ashfield <bruce.ashfield@win=
driver.com>', 'None']
inserted (kern-tools-native,0.2+gitAUTOINC+e914d57023,0.2+gitAUTOINC+e914d5=
7,GPLv2,base,r12,None,,None,MATCH, git-native,Tools for managing Yocto Proj=
ect style branched kernels.,N/A,git://git.yoctoproject.org/yocto-kernel-too=
ls.git,Bruce Ashfield <bruce.ashfield@windriver.com>)
['dmidecode', '2.12', '2.12', 'GPLv2', 'base', 'http://www.nongnu.org/dmide=
code/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ', 'None', 'None', 'DMI (Desktop Management Interface) =
table related utilities.', 'MATCH', 'N/A', 'http://download.savannah.nongnu=
=2Eorg/releases/dmidecode/dmidecode-2.12.tar.bz2', 'None', 'None']
inserted (dmidecode,2.12,2.12,GPLv2,base,r0,None,http://www.nongnu.org/dmid=
ecode/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  ,DMI (Desktop Management Interface) table related ut=
ilities.,N/A,http://download.savannah.nongnu.org/releases/dmidecode/dmideco=
de-2.12.tar.bz2,None)
['syslinux', '6.01', '6.02', 'GPLv2+', 'base', 'http://syslinux.zytor.com/'=
, 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  nasm-native util-linux', 'None', 'None', 'Multi-purpose linux=
 bootloader.', 'UPDATE', 'N/A', 'http://kernel.org/pub/linux/utils/boot/sys=
linux/6.xx/syslinux-6.01.tar.bz2', 'Darren Hart <dvhart@linux.intel.com>', =
'Waiting for 4.06 for 3.3 kernel headers support']
inserted (syslinux,6.01,6.02,GPLv2+,base,r0,None,http://syslinux.zytor.com/=
,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  nasm-native util-linux,Multi-purpose linux bootloader.,N/=
A,http://kernel.org/pub/linux/utils/boot/syslinux/6.xx/syslinux-6.01.tar.bz=
2,Darren Hart <dvhart@linux.intel.com>)
['wget', '1.15', '1.15', 'GPLv3', 'console/network', 'https://www.gnu.org/s=
oftware/wget/', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gnutls zlib =
libpcre texinfo-native virtual/update-alternatives', 'None', 'None', 'Conso=
le URL download utility supporting HTTP, FTP, etc.', 'MATCH', 'N/A', 'ftp:/=
/ftp.gnu.org/gnu/wget/wget-1.15.tar.gz', 'Robert Yang <liezhi.yang@windrive=
r.com>', 'None']
inserted (wget,1.15,1.15,GPLv3,console/network,r0,None,https://www.gnu.org/=
software/wget/,None,MATCH,autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gnutls zl=
ib libpcre texinfo-native virtual/update-alternatives,Console URL download =
utility supporting HTTP, FTP, etc.,N/A,ftp://ftp.gnu.org/gnu/wget/wget-1.15=
=2Etar.gz,Robert Yang <liezhi.yang@windriver.com>)
['libxml-parser-perl', '2.41', '2.41', 'Artistic-1.0 | GPL-1.0', 'libs', ''=
, 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc   expat expat-native perl perl-native', 'None', 'None', 'XML::=
Parser - A perl module for parsing XML documents.', 'MATCH', 'N/A', 'http:/=
/www.cpan.org/modules/by-module/XML/XML-Parser-2.41.tar.gz', 'Hongxu Jia <h=
ongxu.jia@windriver.com>', 'None']
inserted (libxml-parser-perl,2.41,2.41,Artistic-1.0 | GPL-1.0,libs,r3,None,=
,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc   expat expat-native perl perl-native,XML::Parser - A perl =
module for parsing XML documents.,N/A,http://www.cpan.org/modules/by-module=
/XML/XML-Parser-2.41.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
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
rg/dist/xcb-util-keysyms-0.3.9.tar.bz2', 'Ross Burton <ross.burton@intel.co=
m>', 'None']
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
tar.bz2,Ross Burton <ross.burton@intel.com>)
['pcmciautils', '018', '018', 'GPLv2', 'kernel/userland', 'http://kernel.or=
g/pub/linux/utils/kernel/pcmcia/pcmcia.html', 'r1', ' virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  udev sysfsutils f=
lex-native', 'None', 'None', 'Linux kernel userland utilities for the PCMCI=
A subsystem.', 'MATCH', 'N/A', 'http://kernel.org/pub/linux/utils/kernel/pc=
mcia/pcmciautils-018.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None=
']
inserted (pcmciautils,018,018,GPLv2,kernel/userland,r1,None,http://kernel.o=
rg/pub/linux/utils/kernel/pcmcia/pcmcia.html,None,MATCH, virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  udev sysfsutil=
s flex-native,Linux kernel userland utilities for the PCMCIA subsystem.,N/A=
,http://kernel.org/pub/linux/utils/kernel/pcmcia/pcmciautils-018.tar.bz2,Ro=
ss Burton <ross.burton@intel.com>)
['acl', '2.2.52', '2.2.52', 'LGPLv2.1+ & GPLv2+', 'libs', 'http://savannah.=
nongnu.org/projects/acl/', 'r0', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native virtual/gettext gettext-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  a=
ttr', 'None', 'None', 'Utilities for managing POSIX Access Control Lists.',=
 'MATCH', 'N/A', 'http://download.savannah.gnu.org/releases/acl/acl-2.2.52.=
src.tar.gz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (acl,2.2.52,2.2.52,LGPLv2.1+ & GPLv2+,libs,r0,None,http://savannah=
=2Enongnu.org/projects/acl/,None,MATCH,autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  attr,Utilities for managing POSIX Access Control Lists.,N/A,http://down=
load.savannah.gnu.org/releases/acl/acl-2.2.52.src.tar.gz,Chong Lu <Chong.Lu=
@windriver.com>)
['libexif', '0.6.21', '0.6.21', 'LGPLv2.1', 'libs', 'http://sourceforge.net=
/projects/libexif', 'r0', 'autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None=
', 'None', 'Library for reading extended image information (EXIF) from JPEG=
 files.', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/libexif/libexif=
-0.6.21.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libexif,0.6.21,0.6.21,LGPLv2.1,libs,r0,None,http://sourceforge.ne=
t/projects/libexif,None,MATCH,autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Libr=
ary for reading extended image information (EXIF) from JPEG files.,N/A,http=
://downloads.sourceforge.net/libexif/libexif-0.6.21.tar.bz2,Saul Wold <sgw@=
linux.intel.com>)
['libxres', '1.0.7', '1.0.7', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  util-macros libxext resourceproto', 'https://bug=
s.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXRes provides an =
X Window System client interface to the Resource extension to the X protoco=
l.  The Resource extension allows for X clients to see and monitor the X re=
source usage of various clients (pixmaps, et al).', 'MATCH', 'N/A', 'http:/=
/xorg.freedesktop.org/releases/individual/lib/libXres-1.0.7.tar.bz2', 'Ross=
 Burton <ross.burton@intel.com>', 'None']
inserted (libxres,1.0.7,1.0.7,MIT,x11/libs,r0,1,http://www.x.org,https://bu=
gs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  util-macros libxext resourceproto,libXRes provides an X Window System =
client interface to the Resource extension to the X protocol.  The Resource=
 extension allows for X clients to see and monitor the X resource usage of =
various clients (pixmaps, et al).,N/A,http://xorg.freedesktop.org/releases/=
individual/lib/libXres-1.0.7.tar.bz2,Ross Burton <ross.burton@intel.com>)
['ptest-runner', '1.0', 'INVALID', 'MIT', 'base', 'https://wiki.yoctoprojec=
t.org/wiki/Ptest', 'r0', ' ', 'None', 'None', 'The ptest-runner package ins=
talls a ptest-runner shell script which loops through all installed ptest t=
est suites and runs them in sequence.', 'MATCH', 'N/A', 'file://ptest-runne=
r', 'None', 'None']
inserted (ptest-runner,1.0,INVALID,MIT,base,r0,None,https://wiki.yoctoproje=
ct.org/wiki/Ptest,None,MATCH, ,The ptest-runner package installs a ptest-ru=
nner shell script which loops through all installed ptest test suites and r=
uns them in sequence.,N/A,file://ptest-runner,None)
['libtool', '2.4.2', '2.4.2', 'GPLv2 & LGPLv2.1', 'devel', 'http://www.gnu.=
org/software/libtool/libtool.html', 'r6.0', 'autoconf-native automake-nativ=
e gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  libtool-native texinfo-native', 'None', 'None', 'T=
his is GNU libtool, a generic library support script. Libtool hides the com=
plexity of generating special library types (such as shared libraries) behi=
nd a consistent interface.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/libtool=
/libtool-2.4.2.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (libtool,2.4.2,2.4.2,GPLv2 & LGPLv2.1,devel,r6.0,None,http://www.g=
nu.org/software/libtool/libtool.html,None,MATCH,autoconf-native automake-na=
tive gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  libtool-native texinfo-native,This is GNU libto=
ol, a generic library support script. Libtool hides the complexity of gener=
ating special library types (such as shared libraries) behind a consistent =
interface.,N/A,ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz,Robert Ya=
ng <liezhi.yang@windriver.com>)
['cryptodev-linux', '1.6', '1.6', 'GPLv2', 'base', 'http://cryptodev-linux.=
org/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  ', 'None', 'None', 'A /dev/crypto device driver header f=
ile.', 'MATCH', 'N/A', 'http://download.gna.org/cryptodev-linux/cryptodev-l=
inux-1.6.tar.gz', 'None', 'None']
inserted (cryptodev-linux,1.6,1.6,GPLv2,base,r0,None,http://cryptodev-linux=
=2Eorg/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ,A /dev/crypto device driver header file.,N/A,http:=
//download.gna.org/cryptodev-linux/cryptodev-linux-1.6.tar.gz,None)
['shutdown-desktop', '1.0', 'INVALID', 'MIT', 'base', '', 'r1', ' ', 'None'=
, 'None', 'Provides an icon to shut down the system cleanly.', 'MATCH', 'N/=
A', 'file://shutdown.desktop', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (shutdown-desktop,1.0,INVALID,MIT,base,r1,None,,None,MATCH, ,Provi=
des an icon to shut down the system cleanly.,N/A,file://shutdown.desktop,Sa=
ul Wold <sgw@linux.intel.com>)
['sgml-common', '0.6.3', '0.6.3', 'GPLv2+', 'base', 'http://sources.redhat.=
com/docbook-tools/', 'r1', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'The sgml-common pa=
ckage gathers very basic stuff necessary to work with SGML and XML, such as=
 xml.dcl, a SGML declaration of XML; iso-entities, a list of the basic SGML=
 ISO entities; and install-catalog, a script used to add entries to (or rem=
ove entries from) centralized catalogs whose entries are pointers to SGML o=
pen catalogs, as defined by OASIS.', 'MATCH', 'N/A', 'ftp://sources.redhat.=
com/pub/docbook-tools/new-trials/SOURCES/sgml-common-0.6.3.tgz', 'Paul Eggl=
eton <paul.eggleton@linux.intel.com>', 'None']
inserted (sgml-common,0.6.3,0.6.3,GPLv2+,base,r1,None,http://sources.redhat=
=2Ecom/docbook-tools/,None,MATCH,autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  ,The sgml-common package gathers =
very basic stuff necessary to work with SGML and XML, such as xml.dcl, a SG=
ML declaration of XML; iso-entities, a list of the basic SGML ISO entities;=
 and install-catalog, a script used to add entries to (or remove entries fr=
om) centralized catalogs whose entries are pointers to SGML open catalogs, =
as defined by OASIS.,N/A,ftp://sources.redhat.com/pub/docbook-tools/new-tri=
als/SOURCES/sgml-common-0.6.3.tgz,Paul Eggleton <paul.eggleton@linux.intel.=
com>)
['xtscal', '0.6.3', '0.6.3', 'GPLv2 & GPLv2+', 'x11/base', 'http://gpe.linu=
xtogo.org', 'r13', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 libxft libxcal=
ibrate', 'http://bugs.linuxtogo.org', 'None', 'Basic touchscreen calibratio=
n utility', 'MATCH', 'N/A', 'http://gpe.linuxtogo.org/download/source/xtsca=
l-0.6.3.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xtscal,0.6.3,0.6.3,GPLv2 & GPLv2+,x11/base,r13,None,http://gpe.li=
nuxtogo.org,http://bugs.linuxtogo.org,MATCH,pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtu=
al/libx11 libxft libxcalibrate,Basic touchscreen calibration utility,N/A,ht=
tp://gpe.linuxtogo.org/download/source/xtscal-0.6.3.tar.bz2,Ross Burton <ro=
ss.burton@intel.com>)
['libxml-perl', '0.08', '0.08', 'Artistic-1.0 | GPL-1.0+', 'libs', '', 'r3'=
, ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc   libxml-parser-perl perl perl-native', 'None', 'None', 'libxml-perl=
 is a collection of smaller Perl modules, scripts, and documents for workin=
g with XML in Perl.  libxml-perl software works in combination with XML::Pa=
rser, PerlSAX, XML::DOM, XML::Grove and others.', 'MATCH', 'N/A', 'http://w=
ww.cpan.org/modules/by-module/XML/libxml-perl-0.08.tar.gz', 'Saul Wold <sgw=
@linux.intel.com>', 'None']
inserted (libxml-perl,0.08,0.08,Artistic-1.0 | GPL-1.0+,libs,r3,None,,None,=
MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc   libxml-parser-perl perl perl-native,libxml-perl is a collection=
 of smaller Perl modules, scripts, and documents for working with XML in Pe=
rl.  libxml-perl software works in combination with XML::Parser, PerlSAX, X=
ML::DOM, XML::Grove and others.,N/A,http://www.cpan.org/modules/by-module/X=
ML/libxml-perl-0.08.tar.gz,Saul Wold <sgw@linux.intel.com>)
['matchbox-config-gtk', '0.0+gitAUTOINC+3ed74dfb7c', '0.0+gitAUTOINC+3ed74d=
f', 'GPLv2+', 'base', 'http://matchbox-project.org', 'r0', 'pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  gconf gtk+', 'http://bugzilla.yoctoproject.org/', 'None', 'Match=
box GTK+ theme configuration application.', 'MATCH', 'N/A', 'git://git.yoct=
oproject.org/matchbox-config-gtk', 'Ross Burton <ross.burton@intel.com>', '=
None']
inserted (matchbox-config-gtk,0.0+gitAUTOINC+3ed74dfb7c,0.0+gitAUTOINC+3ed7=
4df,GPLv2+,base,r0,None,http://matchbox-project.org,http://bugzilla.yoctopr=
oject.org/,MATCH,pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  gconf gtk+,Matchbox GTK+ theme c=
onfiguration application.,N/A,git://git.yoctoproject.org/matchbox-config-gt=
k,Ross Burton <ross.burton@intel.com>)
['libxcursor', '1.1.14', '1.1.14', 'MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  util-macros libxrender libxfixes', 'h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Xcursor is=
 a simple library designed to help locate and load cursors. Cursors can be =
loaded from files or memory. A library of common cursors exists which map t=
o the standard X cursor names. Cursors can exist in several sizes and the l=
ibrary automatically picks the best size.', 'MATCH', 'N/A', 'http://xorg.fr=
eedesktop.org/releases/individual/lib/libXcursor-1.1.14.tar.bz2', 'Ross Bur=
ton <ross.burton@intel.com>', 'None']
inserted (libxcursor,1.1.14,1.1.14,MIT-style,x11/libs,r0,1,http://www.x.org=
,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  util-macros libxrender libxfixes,Xcursor is a simple librar=
y designed to help locate and load cursors. Cursors can be loaded from file=
s or memory. A library of common cursors exists which map to the standard X=
 cursor names. Cursors can exist in several sizes and the library automatic=
ally picks the best size.,N/A,http://xorg.freedesktop.org/releases/individu=
al/lib/libXcursor-1.1.14.tar.bz2,Ross Burton <ross.burton@intel.com>)
['zisofs-tools-native', '1.0.8', '1.0.8', 'GPLv2', 'console/utils', 'http:/=
/freecode.com/projects/zisofs-tools', 'r0', ' zlib-native', 'None', 'None',=
 'Utilities for creating compressed CD-ROM filesystems.', 'MATCH', 'N/A', '=
http://pkgs.fedoraproject.org/repo/pkgs/zisofs-tools/zisofs-tools-1.0.8.tar=
=2Ebz2/2d0ed8c9a1f60b45f949b136f9be1f6c/zisofs-tools-1.0.8.tar.bz2', 'None'=
, 'None']
inserted (zisofs-tools-native,1.0.8,1.0.8,GPLv2,console/utils,r0,None,http:=
//freecode.com/projects/zisofs-tools,None,MATCH, zlib-native,Utilities for =
creating compressed CD-ROM filesystems.,N/A,http://pkgs.fedoraproject.org/r=
epo/pkgs/zisofs-tools/zisofs-tools-1.0.8.tar.bz2/2d0ed8c9a1f60b45f949b136f9=
be1f6c/zisofs-tools-1.0.8.tar.bz2,None)
['pax-utils', '0.8.1', '0.8.1', 'GPLv2+', 'base', 'http://www.gentoo.org/pr=
oj/en/hardened/pax-utils.xml', 'r0', ' virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'This is a sm=
all set of various PaX aware and related utilities for ELF binaries. It can=
 check ELF binary files and running processes for issues that might be rele=
vant when using ELF binaries along with PaX, such as non-PIC code or execut=
able stack and heap.', 'MATCH', 'N/A', 'http://gentoo.osuosl.org/distfiles/=
pax-utils-0.8.1.tar.xz', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (pax-utils,0.8.1,0.8.1,GPLv2+,base,r0,None,http://www.gentoo.org/p=
roj/en/hardened/pax-utils.xml,None,MATCH, virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  ,This is a small set of vario=
us PaX aware and related utilities for ELF binaries. It can check ELF binar=
y files and running processes for issues that might be relevant when using =
ELF binaries along with PaX, such as non-PIC code or executable stack and h=
eap.,N/A,http://gentoo.osuosl.org/distfiles/pax-utils-0.8.1.tar.xz,Hongxu J=
ia <hongxu.jia@windriver.com>)
['ppp', '2.4.6', '2.4.7', 'BSD & GPLv2+ & LGPLv2+ & PD', 'console/network',=
 'http://samba.org/ppp/', 'r0', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  libpcap', 'http://ppp.samba.org/c=
gi-bin/ppp-bugs', 'None', "ppp (Paul's PPP Package) is an open source packa=
ge which implements the Point-to-Point Protocol (PPP) on Linux and Solaris =
systems.", 'UPDATE', 'N/A', 'http://ppp.samba.org/ftp/ppp/ppp-2.4.6.tar.gz'=
, 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (ppp,2.4.6,2.4.7,BSD & GPLv2+ & LGPLv2+ & PD,console/network,r0,No=
ne,http://samba.org/ppp/,http://ppp.samba.org/cgi-bin/ppp-bugs,UPDATE,autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  libpcap,ppp (Paul's PPP Package) is an open source package which implem=
ents the Point-to-Point Protocol (PPP) on Linux and Solaris systems.,N/A,ht=
tp://ppp.samba.org/ftp/ppp/ppp-2.4.6.tar.gz,Hongxu Jia <hongxu.jia@windrive=
r.com>)
['watchdog', '5.13', '5.13', 'GPL-2.0+', 'base', 'http://watchdog.sourcefor=
ge.net/', 'r0', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  ', 'http://sourceforge.net/tracker/?group_id=3D17=
2030&atid=3D860194', 'None', 'Watchdog is a daemon that checks if your syst=
em is still working. If programs in user space are not longer executed it w=
ill reboot the system.', 'MATCH', 'N/A', 'http://downloads.sourceforge.net/=
watchdog/watchdog-5.13.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (watchdog,5.13,5.13,GPL-2.0+,base,r0,None,http://watchdog.sourcefo=
rge.net/,http://sourceforge.net/tracker/?group_id=3D172030&atid=3D860194,MA=
TCH,autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  ,Watchdog is a daemon that checks if your system is still work=
ing. If programs in user space are not longer executed it will reboot the s=
ystem.,N/A,http://downloads.sourceforge.net/watchdog/watchdog-5.13.tar.gz,S=
aul Wold <sgw@linux.intel.com>)
['nss', '3.15.1', '3.15.1', 'MPL-1.1 GPL-2.0 LGPL-2.1', 'libs', 'http://www=
=2Emozilla.org/projects/security/pki/nss/', 'r0', ' virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  sqlite3 nspr zlib n=
ss-native', 'None', 'None', 'Network Security Services (NSS) is a set of li=
braries designed to support cross-platform development of security-enabled =
client and server applications. Applications built with NSS can support SSL=
 v2 and v3, TLS, PKCS 5, PKCS 7, PKCS 11, PKCS 12, S/MIME, X.509 v3 certifi=
cates, and other security standards.', 'MATCH', 'N/A', 'file://nss-fix-supp=
ort-cross-compiling.patch', 'None', 'None']
inserted (nss,3.15.1,3.15.1,MPL-1.1 GPL-2.0 LGPL-2.1,libs,r0,None,http://ww=
w.mozilla.org/projects/security/pki/nss/,None,MATCH, virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  sqlite3 nspr zlib =
nss-native,Network Security Services (NSS) is a set of libraries designed t=
o support cross-platform development of security-enabled client and server =
applications. Applications built with NSS can support SSL v2 and v3, TLS, P=
KCS 5, PKCS 7, PKCS 11, PKCS 12, S/MIME, X.509 v3 certificates, and other s=
ecurity standards.,N/A,file://nss-fix-support-cross-compiling.patch,None)
['gst-plugins-base', '0.10.36', '0.10.36', 'GPLv2+ & LGPLv2+', 'multimedia'=
, 'http://gstreamer.freedesktop.org/', 'r8', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native virtual/=
gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  gstreamer alsa-lib liboil libogg libvorbis libt=
heora util-linux tremor glib-2.0-native virtual/libx11 libxv libsm libice',=
 'https://bugzilla.gnome.org/enter_bug.cgi?product=3DGstreamer', 'None', 'P=
lugins for the GStreamer multimedia framework.', 'MATCH', 'N/A', 'http://gs=
treamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-0.10.36.tar.b=
z2', 'Cristian Iorga <cristian.iorga@intel.com>', 'not compatible with gst-=
fluendo 0.10.x']
inserted (gst-plugins-base,0.10.36,0.10.36,GPLv2+ & LGPLv2+,multimedia,r8,N=
one,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/enter_bug.=
cgi?product=3DGstreamer,MATCH,pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native virtual/gettext gettext-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  gstreamer alsa-lib liboil libogg libvorbis libtheora util-linux=
 tremor glib-2.0-native virtual/libx11 libxv libsm libice,Plugins for the G=
Streamer multimedia framework.,N/A,http://gstreamer.freedesktop.org/src/gst=
-plugins-base/gst-plugins-base-0.10.36.tar.bz2,Cristian Iorga <cristian.ior=
ga@intel.com>)
['xvinfo', '1.1.2', '1.1.2', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros-native virtual/libx11  libxv', '=
https://bugs.freedesktop.org', '1', 'xvinfo prints out the capabilities of =
any video adaptors associated with the display that are accessible through =
the X-Video extension.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/relea=
ses/individual/app/xvinfo-1.1.2.tar.bz2', 'Ross Burton <ross.burton@intel.c=
om>', 'None']
inserted (xvinfo,1.1.2,1.1.2,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https:=
//bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native v=
irtual/libx11  libxv,xvinfo prints out the capabilities of any video adapto=
rs associated with the display that are accessible through the X-Video exte=
nsion.,N/A,http://xorg.freedesktop.org/releases/individual/app/xvinfo-1.1.2=
=2Etar.bz2,Ross Burton <ross.burton@intel.com>)
['git', '2.0.1', '2.0.1', 'GPLv2', 'console/utils', '', 'r0', 'autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ope=
nssl curl zlib expat perl-native', 'None', 'None', 'Distributed version con=
trol system.', 'MATCH', 'N/A', 'http://kernel.org/pub/software/scm/git/git-=
2.0.1.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (git,2.0.1,2.0.1,GPLv2,console/utils,r0,None,,None,MATCH,autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
openssl curl zlib expat perl-native,Distributed version control system.,N/A=
,http://kernel.org/pub/software/scm/git/git-2.0.1.tar.gz,Robert Yang <liezh=
i.yang@windriver.com>)
['initramfs-live-install', '1.0', 'INVALID', 'MIT', 'base', '', 'r9', ' ', =
'None', 'None', 'Live image install script for grub.', 'MATCH', 'N/A', 'fil=
e://init-install.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-live-install,1.0,INVALID,MIT,base,r9,None,,None,MATCH, =
,Live image install script for grub.,N/A,file://init-install.sh,Saul Wold <=
sgw@linux.intel.com>)
['cronie', '1.4.11', '1.4.11', 'ISC & BSD', 'utils', 'https://fedorahosted.=
org/cronie/', 'r0', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc   update-rc.d-native initscripts base-files ba=
se-passwd shadow-native shadow-sysroot shadow', 'mmaslano@redhat.com', 'Non=
e', 'Cronie contains the standard UNIX daemon crond that runs specified pro=
grams at scheduled times and related tools. It is based on the original cro=
n and has security and configuration enhancements like the ability to use p=
am and SELinux.', 'MATCH', 'N/A', 'https://fedorahosted.org/releases/c/r/cr=
onie/cronie-1.4.11.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (cronie,1.4.11,1.4.11,ISC & BSD,utils,r0,None,https://fedorahosted=
=2Eorg/cronie/,mmaslano@redhat.com,MATCH,autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc   update-rc.d-native inits=
cripts base-files base-passwd shadow-native shadow-sysroot shadow,Cronie co=
ntains the standard UNIX daemon crond that runs specified programs at sched=
uled times and related tools. It is based on the original cron and has secu=
rity and configuration enhancements like the ability to use pam and SELinux=
=2E,N/A,https://fedorahosted.org/releases/c/r/cronie/cronie-1.4.11.tar.gz,S=
aul Wold <sgw@linux.intel.com>)
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
['python-pycurl', '7.19.3.1', '7.19.5', 'LGPLv2.1+ | MIT', 'devel/python', =
'http://pycurl.sourceforge.net/', 'r0', ' virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  curl python python-native pyt=
hon  python-native ', 'None', 'None', 'Python bindings for libcurl.', 'UPDA=
TE', 'N/A', 'http://pycurl.sourceforge.net/download/pycurl-7.19.3.1.tar.gz;=
name=3Darchive', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'No=
ne']
inserted (python-pycurl,7.19.3.1,7.19.5,LGPLv2.1+ | MIT,devel/python,r0,Non=
e,http://pycurl.sourceforge.net/,None,UPDATE, virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  curl python python-native=
 python  python-native ,Python bindings for libcurl.,N/A,http://pycurl.sour=
ceforge.net/download/pycurl-7.19.3.1.tar.gz;name=3Darchive,Richard Purdie <=
richard.purdie@linuxfoundation.org>)
['libxinerama', '1.1.3', '1.1.3', 'MIT', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros libxext xineramaproto', 'https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Xinerama is a si=
mple library designed to interface the Xinerama Extension for retrieving in=
formation about physical output devices which may be combined into a single=
 logical X screen.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/=
individual/lib/libXinerama-1.1.3.tar.bz2', 'Ross Burton <ross.burton@intel.=
com>', 'None']
inserted (libxinerama,1.1.3,1.1.3,MIT,x11/libs,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  util-macros libxext xineramaproto,Xinerama is a simple library des=
igned to interface the Xinerama Extension for retrieving information about =
physical output devices which may be combined into a single logical X scree=
n.,N/A,http://xorg.freedesktop.org/releases/individual/lib/libXinerama-1.1.=
3.tar.bz2,Ross Burton <ross.burton@intel.com>)
['cairo', '1.12.16', '1.12.16', 'MPL-1 & LGPLv2.1', 'libs', 'http://cairogr=
aphics.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  libpng fontconfig pixman glib=
-2.0 zlib virtual/libx11 libsm libxrender libxext', 'http://bugs.freedeskto=
p.org', 'None', 'Cairo is a multi-platform library providing anti-aliased v=
ector-based rendering for multiple target backends. Paths consist of line s=
egments and cubic splines and can be rendered at any width with various joi=
n and cap styles. All colors may be specified with optional translucence (o=
pacity/alpha) and combined using the extended Porter/Duff compositing algeb=
ra as found in the X Render Extension.', 'MATCH', 'N/A', 'http://cairograph=
ics.org/releases/cairo-1.12.16.tar.xz', 'Ross Burton <ross.burton@intel.com=
>', 'None']
inserted (cairo,1.12.16,1.12.16,MPL-1 & LGPLv2.1,libs,r0,None,http://cairog=
raphics.org,http://bugs.freedesktop.org,MATCH,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  lib=
png fontconfig pixman glib-2.0 zlib virtual/libx11 libsm libxrender libxext=
,Cairo is a multi-platform library providing anti-aliased vector-based rend=
ering for multiple target backends. Paths consist of line segments and cubi=
c splines and can be rendered at any width with various join and cap styles=
=2E All colors may be specified with optional translucence (opacity/alpha) =
and combined using the extended Porter/Duff compositing algebra as found in=
 the X Render Extension.,N/A,http://cairographics.org/releases/cairo-1.12.1=
6.tar.xz,Ross Burton <ross.burton@intel.com>)
['x11-common', '0.1', 'INVALID', 'GPLv2', 'x11', '', 'r47', ' virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None'=
, 'None', 'Common X11 scripts and configuration files.', 'MATCH', '1:7.6', =
'file://etc', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (x11-common,0.1,INVALID,GPLv2,x11,r47,None,,None,MATCH, virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Commo=
n X11 scripts and configuration files.,1:7.6,file://etc,Ross Burton <ross.b=
urton@intel.com>)
['groff', '1.22.2', '1.22.2', 'GPLv3', 'base', 'ftp://ftp.gnu.org/gnu/groff=
/', 'r1', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  groff-native texinfo-native', 'None', 'None', 'The grof=
f (GNU troff) software is a typesetting package which reads plain text mixe=
d with formatting commands and produces formatted output.', 'MATCH', 'N/A',=
 'ftp://ftp.gnu.org/gnu/groff/groff-1.22.2.tar.gz', 'Hongxu Jia <hongxu.jia=
@windriver.com>', '1.18.1.4 is latest GPLv2 Version no 1.21']
inserted (groff,1.22.2,1.22.2,GPLv3,base,r1,None,ftp://ftp.gnu.org/gnu/grof=
f/,None,MATCH,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  groff-native texinfo-native,The groff (GNU troff) so=
ftware is a typesetting package which reads plain text mixed with formattin=
g commands and produces formatted output.,N/A,ftp://ftp.gnu.org/gnu/groff/g=
roff-1.22.2.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['netbase', '5.2', '5.2', 'GPLv2', 'base', 'http://packages.debian.org/netb=
ase', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  ', 'None', '1', 'This package provides the necessary infr=
astructure for basic TCP/IP based networking', 'MATCH', 'N/A', 'ftp://ftp.d=
ebian.org/debian/pool/main/n/netbase/netbase_5.2.tar.gz', 'Cristian Iorga <=
cristian.iorga@intel.com>', 'None']
inserted (netbase,5.2,5.2,GPLv2,base,r0,1,http://packages.debian.org/netbas=
e,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  ,This package provides the necessary infrastructure for b=
asic TCP/IP based networking,N/A,ftp://ftp.debian.org/debian/pool/main/n/ne=
tbase/netbase_5.2.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['python3-distribute', '0.6.32', '0.7.3', 'PSF', 'devel/python', 'http://pa=
ckages.python.org/distribute', 'ml5', ' virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc   python3 python3-native python3=
  python3-native ', 'None', 'None', 'Download, build, install, upgrade, and=
 uninstall Python packages.', 'UPDATE', 'N/A', 'http://pypi.python.org/pack=
ages/source/d/distribute/distribute-0.6.32.tar.gz', 'None', 'None']
inserted (python3-distribute,0.6.32,0.7.3,PSF,devel/python,ml5,None,http://=
packages.python.org/distribute,None,UPDATE, virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc   python3 python3-native pyt=
hon3  python3-native ,Download, build, install, upgrade, and uninstall Pyth=
on packages.,N/A,http://pypi.python.org/packages/source/d/distribute/distri=
bute-0.6.32.tar.gz,None)
['xhost', '1.0.6', '1.0.6', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxmu libxau=
', 'https://bugs.freedesktop.org', '1', 'The xhost program is used to add a=
nd delete host names or user names to the list allowed to make connections =
to the X server. In the case of hosts, this provides a rudimentary form of =
privacy control and security. Environments which require more sophisticated=
 measures should implement the user-based mechanism or use the hooks in the=
 protocol for passing other authentication data to the server.', 'MATCH', '=
N/A', 'http://xorg.freedesktop.org/releases/individual/app/xhost-1.0.6.tar.=
bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xhost,1.0.6,1.0.6,MIT-X,x11/apps,r0,1,http://www.x.org/,https://b=
ugs.freedesktop.org,MATCH,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native virt=
ual/libx11 libxmu libxau,The xhost program is used to add and delete host n=
ames or user names to the list allowed to make connections to the X server.=
 In the case of hosts, this provides a rudimentary form of privacy control =
and security. Environments which require more sophisticated measures should=
 implement the user-based mechanism or use the hooks in the protocol for pa=
ssing other authentication data to the server.,N/A,http://xorg.freedesktop.=
org/releases/individual/app/xhost-1.0.6.tar.bz2,Ross Burton <ross.burton@in=
tel.com>)
['directfb-examples', '1.7.0', '1.7.0', 'MIT', 'libs', '', 'r0', 'pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  directfb', 'None', 'None', 'The DirectFB-examples package =
contains a set of simple DirectFB       applications that can be used to te=
st and demonstrate various DirectFB       features', 'MATCH', 'N/A', 'http:=
//www.directfb.org/downloads/Extras/DirectFB-examples-1.7.0.tar.gz', 'Hongx=
u Jia <hongxu.jia@windriver.com>', 'None']
inserted (directfb-examples,1.7.0,1.7.0,MIT,libs,r0,None,,None,MATCH,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  directfb,The DirectFB-examples package contains a set o=
f simple DirectFB       applications that can be used to test and demonstra=
te various DirectFB       features,N/A,http://www.directfb.org/downloads/Ex=
tras/DirectFB-examples-1.7.0.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['xinput-calibrator', '0.7.5+gitAUTOINC+c01c5af807', '0.7.5+gitAUTOINC+03da=
df5', 'MIT-X', 'base', 'http://www.freedesktop.org/wiki/Software/xinput_cal=
ibrator', 'r6', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 libxi', 'None', '=
None', 'Touchscreen calibration program for X11.', 'UPDATE', 'N/A', 'git://=
github.com/tias/xinput_calibrator.git', 'Ross Burton <ross.burton@intel.com=
>', 'None']
inserted (xinput-calibrator,0.7.5+gitAUTOINC+c01c5af807,0.7.5+gitAUTOINC+03=
dadf5,MIT-X,base,r6,None,http://www.freedesktop.org/wiki/Software/xinput_ca=
librator,None,UPDATE,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 libxi,Touchsc=
reen calibration program for X11.,N/A,git://github.com/tias/xinput_calibrat=
or.git,Ross Burton <ross.burton@intel.com>)
['libmpc', '1.0.2', '1.0.2', 'LGPLv3', 'libs', 'http://www.multiprecision.o=
rg/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  gmp mpfr texinfo-native', 'None', 'None', 'Mpc is a C=
 library for the arithmetic of complex numbers with arbitrarily high precis=
ion and correct rounding of the result. It is built upon and follows the sa=
me principles as Mpfr', 'MATCH', 'N/A', 'http://www.multiprecision.org/mpc/=
download/mpc-1.0.2.tar.gz', 'Richard Purdie <richard.purdie@linuxfoundation=
=2Eorg>', 'None']
inserted (libmpc,1.0.2,1.0.2,LGPLv3,libs,r0,None,http://www.multiprecision.=
org/,None,MATCH,autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  gmp mpfr texinfo-native,Mpc is a C library for the=
 arithmetic of complex numbers with arbitrarily high precision and correct =
rounding of the result. It is built upon and follows the same principles as=
 Mpfr,N/A,http://www.multiprecision.org/mpc/download/mpc-1.0.2.tar.gz,Richa=
rd Purdie <richard.purdie@linuxfoundation.org>)
['oprofileui', '0.0+gitAUTOINC+389e1875af', '0.0+gitAUTOINC+389e187', 'GPLv=
2', 'x11', 'http://labs.o-hand.com/oprofileui/', 'r0', 'pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  glib-2.0 avahi intltool-native gtk+ libglade libxml2 avahi-ui gconf'=
, 'http://bugzilla.yoctoproject.org/', 'None', 'User interface for the OPro=
file tool', 'MATCH', 'N/A', 'git://git.yoctoproject.org/oprofileui', 'Richa=
rd Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (oprofileui,0.0+gitAUTOINC+389e1875af,0.0+gitAUTOINC+389e187,GPLv2=
,x11,r0,None,http://labs.o-hand.com/oprofileui/,http://bugzilla.yoctoprojec=
t.org/,MATCH,pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  glib-2.0 avahi intltool-native gtk+ =
libglade libxml2 avahi-ui gconf,User interface for the OProfile tool,N/A,gi=
t://git.yoctoproject.org/oprofileui,Richard Purdie <richard.purdie@linuxfou=
ndation.org>)
['taglib', '1.9.1', '1.9.1', 'LGPLv2.1 | MPL-1', 'libs/multimedia', 'http:/=
/taglib.github.io/', 'r0', 'pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native cmake-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib', '=
None', 'None', 'Library for reading and editing the meta-data of popular au=
dio formats.', 'MATCH', 'N/A', 'http://taglib.github.io/releases/taglib-1.9=
=2E1.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (taglib,1.9.1,1.9.1,LGPLv2.1 | MPL-1,libs/multimedia,r0,None,http:=
//taglib.github.io/,None,MATCH,pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native cmake-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib,=
Library for reading and editing the meta-data of popular audio formats.,N/A=
,http://taglib.github.io/releases/taglib-1.9.1.tar.gz,Cristian Iorga <crist=
ian.iorga@intel.com>)
['gst-plugins-ugly', '0.10.19', '0.10.19', 'GPLv2+ & LGPLv2.1+ & LGPLv2+', =
'multimedia', 'http://gstreamer.freedesktop.org/', 'r3', 'pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base libid3ta=
g libmad mpeg2dec liba52 lame', 'https://bugzilla.gnome.org/enter_bug.cgi?p=
roduct=3DGstreamer', 'None', 'Plugins for the GStreamer multimedia framewor=
k.', 'MATCH', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-plugins-ugly=
/gst-plugins-ugly-0.10.19.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.c=
om>', 'not compatible with gst-fluendo 0.10.x']
inserted (gst-plugins-ugly,0.10.19,0.10.19,GPLv2+ & LGPLv2.1+ & LGPLv2+,mul=
timedia,r3,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.or=
g/enter_bug.cgi?product=3DGstreamer,MATCH,pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native virtual/gett=
ext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  gstreamer gst-plugins-base libid3tag libmad mpeg2de=
c liba52 lame,Plugins for the GStreamer multimedia framework.,N/A,http://gs=
treamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-0.10.19.tar.b=
z2,Cristian Iorga <cristian.iorga@intel.com>)
['sysvinit-inittab', '2.88dsf', 'INVALID', 'GPLv2', 'base', '', 'r10', ' ',=
 'None', 'None', 'Inittab configuration for SysVinit.', 'MATCH', 'N/A', 'fi=
le://inittab', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (sysvinit-inittab,2.88dsf,INVALID,GPLv2,base,r10,None,,None,MATCH,=
 ,Inittab configuration for SysVinit.,N/A,file://inittab,Saul Wold <sgw@lin=
ux.intel.com>)
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
['attr', '2.4.47', '2.4.47', 'LGPLv2.1+ & GPLv2+', 'libs', 'http://savannah=
=2Enongnu.org/projects/attr/', 'r0', 'autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  ncurses virtual/libintl', 'None', 'None', 'Utilities for manipulating fi=
lesystem extended attributes.', 'MATCH', 'N/A', 'http://download.savannah.g=
nu.org/releases/attr/attr-2.4.47.src.tar.gz', 'Chong Lu <Chong.Lu@windriver=
=2Ecom>', 'None']
inserted (attr,2.4.47,2.4.47,LGPLv2.1+ & GPLv2+,libs,r0,None,http://savanna=
h.nongnu.org/projects/attr/,None,MATCH,autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  ncurses virtual/libintl,Utilities for manipulating filesystem extended =
attributes.,N/A,http://download.savannah.gnu.org/releases/attr/attr-2.4.47.=
src.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['cryptodev-tests', '1.6', '1.6', 'GPLv2', 'base', 'http://cryptodev-linux.=
org/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc   openssl', 'None', 'None', 'A test suite for /dev/crypto=
 device driver.', 'MATCH', 'N/A', 'http://download.gna.org/cryptodev-linux/=
cryptodev-linux-1.6.tar.gz', 'None', 'None']
inserted (cryptodev-tests,1.6,1.6,GPLv2,base,r0,None,http://cryptodev-linux=
=2Eorg/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc   openssl,A test suite for /dev/crypto device driver=
=2E,N/A,http://download.gna.org/cryptodev-linux/cryptodev-linux-1.6.tar.gz,=
None)
['gstreamer', '0.10.36', '0.10.36', 'LGPLv2+', 'multimedia', 'http://gstrea=
mer.freedesktop.org/', 'r2', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native virtual/gettext gettext-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  glib-2.0 libxml2 bison-native flex-native', 'https://bugzilla.g=
nome.org/enter_bug.cgi?product=3DGstreamer', 'None', 'GStreamer is a multim=
edia framework for encoding and decoding video and sound. It supports a wid=
e range of formats including mp3, ogg, avi, mpeg and quicktime.', 'MATCH', =
'N/A', 'http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-0.10.36.ta=
r.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', ' not compatible with =
gst-fluendo 0.10.x ']
inserted (gstreamer,0.10.36,0.10.36,LGPLv2+,multimedia,r2,None,http://gstre=
amer.freedesktop.org/,https://bugzilla.gnome.org/enter_bug.cgi?product=3DGs=
treamer,MATCH,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib=
-2.0 libxml2 bison-native flex-native,GStreamer is a multimedia framework f=
or encoding and decoding video and sound. It supports a wide range of forma=
ts including mp3, ogg, avi, mpeg and quicktime.,N/A,http://gstreamer.freede=
sktop.org/src/gstreamer/gstreamer-0.10.36.tar.bz2,Cristian Iorga <cristian.=
iorga@intel.com>)
['menu-cache', '0.4.1', '0.4.1', 'GPLv2 & GPLv2+', 'x11/libs', 'http://lxde=
=2Esourceforge.net/', 'r0', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 zlib gtk-do=
c-stub-native', 'None', 'None', 'A library creating and utilizing caches to=
 speed up freedesktop.org application menus', 'MATCH', 'N/A', 'http://downl=
oads.sourceforge.net/lxde/menu-cache-0.4.1.tar.gz', 'Ross Burton <ross.burt=
on@intel.com>', 'None']
inserted (menu-cache,0.4.1,0.4.1,GPLv2 & GPLv2+,x11/libs,r0,None,http://lxd=
e.sourceforge.net/,None,MATCH,pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 zlib gtk-d=
oc-stub-native,A library creating and utilizing caches to speed up freedesk=
top.org application menus,N/A,http://downloads.sourceforge.net/lxde/menu-ca=
che-0.4.1.tar.gz,Ross Burton <ross.burton@intel.com>)
['libnfsidmap', '0.25', '0.25', 'BSD', 'libs', 'http://www.citi.umich.edu/p=
rojects/nfsv4/linux/', 'r0', 'autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'NFS id mapping l=
ibrary.', 'MATCH', 'N/A', 'http://www.citi.umich.edu/projects/nfsv4/linux/l=
ibnfsidmap/libnfsidmap-0.25.tar.gz', 'Paul Eggleton <paul.eggleton@linux.in=
tel.com>', 'None']
inserted (libnfsidmap,0.25,0.25,BSD,libs,r0,None,http://www.citi.umich.edu/=
projects/nfsv4/linux/,None,MATCH,autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  ,NFS id mapping library.,N/A,http=
://www.citi.umich.edu/projects/nfsv4/linux/libnfsidmap/libnfsidmap-0.25.tar=
=2Egz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['initscripts', '1.0', 'INVALID', 'GPLv2', 'base', '', 'r155', '  update-rc=
=2Ed-native  virtual/update-alternatives', 'None', 'None', 'Initscripts pro=
vide the basic system startup initialization scripts for the system.  These=
 scripts include actions such as filesystem mounting, fsck, RTC manipulatio=
n and other actions routinely performed at system startup.  In addition, th=
e scripts are also used during system shutdown to reverse the actions perfo=
rmed at startup.', 'MATCH', '9.40', 'file://functions', 'Saul Wold <sgw@lin=
ux.intel.com>', 'None']
inserted (initscripts,1.0,INVALID,GPLv2,base,r155,None,,None,MATCH,  update=
-rc.d-native  virtual/update-alternatives,Initscripts provide the basic sys=
tem startup initialization scripts for the system.  These scripts include a=
ctions such as filesystem mounting, fsck, RTC manipulation and other action=
s routinely performed at system startup.  In addition, the scripts are also=
 used during system shutdown to reverse the actions performed at startup.,9=
=2E40,file://functions,Saul Wold <sgw@linux.intel.com>)
['libfm', '1.1.2.2', '1.1.2.2', 'GPLv2 & GPLv2+', 'x11/libs', 'http://pcman=
fm.sourceforge.net/', 'r0', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 pango gtk+ =
menu-cache intltool-native libexif gtk-doc-stub-native', 'None', 'None', 'L=
ibrary for file management.', 'MATCH', 'N/A', 'http://downloads.sourceforge=
=2Enet/pcmanfm/libfm-1.1.2.2.tar.gz', 'Ross Burton <ross.burton@intel.com>'=
, 'None']
inserted (libfm,1.1.2.2,1.1.2.2,GPLv2 & GPLv2+,x11/libs,r0,None,http://pcma=
nfm.sourceforge.net/,None,MATCH,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 pango gt=
k+ menu-cache intltool-native libexif gtk-doc-stub-native,Library for file =
management.,N/A,http://downloads.sourceforge.net/pcmanfm/libfm-1.1.2.2.tar.=
gz,Ross Burton <ross.burton@intel.com>)
['libxrender', '0.9.8', '0.9.8', 'MIT-style', 'x11/libs', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros virtual/libx11 renderproto =
xproto xdmcp', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg',=
 '1', 'The X Rendering Extension (Render) introduces digital image composit=
ion as the foundation of a new rendering model within the X Window System. =
Rendering geometric figures is accomplished by client-side tessellation int=
o either triangles or trapezoids.  Text is drawn by loading glyphs into the=
 server and rendering sets of them.', 'MATCH', 'N/A', 'http://xorg.freedesk=
top.org/releases/individual/lib/libXrender-0.9.8.tar.bz2', 'Ross Burton <ro=
ss.burton@intel.com>', 'None']
inserted (libxrender,0.9.8,0.9.8,MIT-style,x11/libs,r0,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  util-macros virtual/libx11 renderproto xproto xdmcp,The X Ren=
dering Extension (Render) introduces digital image composition as the found=
ation of a new rendering model within the X Window System. Rendering geomet=
ric figures is accomplished by client-side tessellation into either triangl=
es or trapezoids.  Text is drawn by loading glyphs into the server and rend=
ering sets of them.,N/A,http://xorg.freedesktop.org/releases/individual/lib=
/libXrender-0.9.8.tar.bz2,Ross Burton <ross.burton@intel.com>)
['prelink', '1.0+gitAUTOINC+faa069deec', 'cross.prelink+gitAUTOINC+79cc642'=
, 'GPLv2', 'devel', '', 'r0', 'autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  elfutils binutils', 'None', 'None',=
 'The prelink package contains a utility which modifies ELF shared librarie=
s and executables, so that far fewer relocations need to be resolved at run=
time and thus programs come up faster.', 'UPDATE', '1.0+git1+9552f214c7faa8=
16fdb55b289a457f0cab034f00', 'git://git.yoctoproject.org/prelink-cross.git;=
branch=3Dcross_prelink', 'Mark Hatle <mark.hatle@windriver.com>', 'None']
inserted (prelink,1.0+gitAUTOINC+faa069deec,cross.prelink+gitAUTOINC+79cc64=
2,GPLv2,devel,r0,None,,None,UPDATE,autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  elfutils binutils,The prelink p=
ackage contains a utility which modifies ELF shared libraries and executabl=
es, so that far fewer relocations need to be resolved at runtime and thus p=
rograms come up faster.,1.0+git1+9552f214c7faa816fdb55b289a457f0cab034f00,g=
it://git.yoctoproject.org/prelink-cross.git;branch=3Dcross_prelink,Mark Hat=
le <mark.hatle@windriver.com>)
['autoconf', '2.69', '2.69', 'GPLv2 & GPLv3', 'devel', 'http://www.gnu.org/=
software/autoconf/', 'r11', 'autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc   m4-native texinfo-native', 'None', '=
None', 'Autoconf is an extensible package of M4 macros that produce shell s=
cripts to automatically configure software source code packages. Autoconf c=
reates a configuration script for a package from a template file that lists=
 the operating system features that the package can use, in the form of M4 =
macro calls.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/autoconf/autoconf-2.6=
9.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (autoconf,2.69,2.69,GPLv2 & GPLv3,devel,r11,None,http://www.gnu.or=
g/software/autoconf/,None,MATCH,autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   m4-native texinfo-native,Autoconf=
 is an extensible package of M4 macros that produce shell scripts to automa=
tically configure software source code packages. Autoconf creates a configu=
ration script for a package from a template file that lists the operating s=
ystem features that the package can use, in the form of M4 macro calls.,N/A=
,ftp://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz,Robert Yang <liezhi.ya=
ng@windriver.com>)
['json-glib', '1.0.0', '1.0.2', 'LGPLv2.1', 'base', 'http://live.gnome.org/=
JsonGlib', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native virtual/gettext gettext-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
glib-2.0 gnome-common-native hicolor-icon-theme gtk-update-icon-cache-nativ=
e gconf gconf-native shared-mime-info-native shared-mime-info', 'None', 'No=
ne', 'Use JSON-GLib it is possible to parse and generate valid JSON data st=
ructures, using a DOM-like API. JSON-GLib also offers GObject integration, =
providing the ability to serialize and deserialize GObject instances to and=
 from JSON data types.', 'UPDATE', 'N/A', 'http://ftp.gnome.org/pub/GNOME/s=
ources/json-glib/1.0/json-glib-1.0.0.tar.xz;name=3Darchive', 'Ross Burton <=
ross.burton@intel.com>', 'None']
inserted (json-glib,1.0.0,1.0.2,LGPLv2.1,base,r0,None,http://live.gnome.org=
/JsonGlib,None,UPDATE,pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  glib-2.0 gnome-common-native hicolor-icon-theme gtk-update-icon-cache-n=
ative gconf gconf-native shared-mime-info-native shared-mime-info,Use JSON-=
GLib it is possible to parse and generate valid JSON data structures, using=
 a DOM-like API. JSON-GLib also offers GObject integration, providing the a=
bility to serialize and deserialize GObject instances to and from JSON data=
 types.,N/A,http://ftp.gnome.org/pub/GNOME/sources/json-glib/1.0/json-glib-=
1.0.0.tar.xz;name=3Darchive,Ross Burton <ross.burton@intel.com>)
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
['distcc', '3.1', '3.1', 'GPLv2', 'devel', '', 'r0', 'pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  avahi update-rc.d-native initscripts base-files base-passwd shadow-nat=
ive shadow-sysroot shadow gtk+ popt', 'None', 'None', 'distcc is a parallel=
 build system that distributes compilation of C/C++/ObjC code across machin=
es on a network.', 'MATCH', 'N/A', 'http://distcc.googlecode.com/files/dist=
cc-3.1.tar.bz2', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (distcc,3.1,3.1,GPLv2,devel,r0,None,,None,MATCH,pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  avahi update-rc.d-native initscripts base-files base-passwd shadow-=
native shadow-sysroot shadow gtk+ popt,distcc is a parallel build system th=
at distributes compilation of C/C++/ObjC code across machines on a network.=
,N/A,http://distcc.googlecode.com/files/distcc-3.1.tar.bz2,Hongxu Jia <hong=
xu.jia@windriver.com>)
['usbutils', '007', '007', 'GPLv2+', 'base', 'http://www.linux-usb.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libusb zlib v=
irtual/libiconv', 'None', 'None', 'Contains the lsusb utility for inspectin=
g the devices connected to the USB bus.', 'MATCH', '006', 'http://kernel.or=
g/pub/linux/utils/usb/usbutils/usbutils-007.tar.gz', 'Saul Wold <sgw@linux.=
intel.com>', 'None']
inserted (usbutils,007,007,GPLv2+,base,r0,None,http://www.linux-usb.org,Non=
e,MATCH,pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libusb zli=
b virtual/libiconv,Contains the lsusb utility for inspecting the devices co=
nnected to the USB bus.,006,http://kernel.org/pub/linux/utils/usb/usbutils/=
usbutils-007.tar.gz,Saul Wold <sgw@linux.intel.com>)
['weston', '1.5.0', '1.5.0', 'MIT', 'base', 'http://wayland.freedesktop.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  libxkbcommon gdk-pixbuf pixman cairo gl=
ib-2.0 jpeg wayland virtual/egl pango base-files base-passwd shadow-native =
shadow-sysroot shadow virtual/egl udev mtdev drm udev virtual/mesa mtdev vi=
rtual/mesa virtual/libx11 libxcb libxcb libxcursor cairo', 'None', 'None', =
'Weston is the reference implementation of a Wayland compositor', 'MATCH', =
'N/A', 'http://wayland.freedesktop.org/releases/weston-1.5.0.tar.xz', 'Ross=
 Burton <ross.burton@intel.com>', 'None']
inserted (weston,1.5.0,1.5.0,MIT,base,r0,None,http://wayland.freedesktop.or=
g,None,MATCH,pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  libxkbcommon gdk-pixbuf pixman cairo=
 glib-2.0 jpeg wayland virtual/egl pango base-files base-passwd shadow-nati=
ve shadow-sysroot shadow virtual/egl udev mtdev drm udev virtual/mesa mtdev=
 virtual/mesa virtual/libx11 libxcb libxcb libxcursor cairo,Weston is the r=
eference implementation of a Wayland compositor,N/A,http://wayland.freedesk=
top.org/releases/weston-1.5.0.tar.xz,Ross Burton <ross.burton@intel.com>)
['scrnsaverproto', '1.2.2', '1.2.2', 'MIT', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire prot=
ocol for the X Screen Saver extension.  This extension allows an external \=
\"screen saver\\" client to detect when the alternative image is to be disp=
layed and to provide the graphics.', 'MATCH', 'N/A', 'http://xorg.freedeskt=
op.org/releases/individual/proto/scrnsaverproto-1.2.2.tar.bz2', 'Ross Burto=
n <ross.burton@intel.com>', 'None']
inserted (scrnsaverproto,1.2.2,1.2.2,MIT,x11/libs,r0,1,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  util-macros,This package provides the wire protocol for the X S=
creen Saver extension.  This extension allows an external \"screen saver\" =
client to detect when the alternative image is to be displayed and to provi=
de the graphics.,N/A,http://xorg.freedesktop.org/releases/individual/proto/=
scrnsaverproto-1.2.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['at', '3.1.14', '3.1.15', 'GPLv2+', 'base', '', 'r0', 'autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex flex-=
native            ', 'None', 'None', 'At allows for commands to be run at a=
 particular time.  Batch will execute commands when the system load levels =
drop to a particular level.', 'UPDATE', 'N/A', 'ftp://ftp.debian.org/debian=
/pool/main/a/at/at_3.1.14.orig.tar.gz', 'Saul Wold <sgw@linux.intel.com>', =
'None']
inserted (at,3.1.14,3.1.15,GPLv2+,base,r0,None,,None,UPDATE,autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex f=
lex-native            ,At allows for commands to be run at a particular tim=
e.  Batch will execute commands when the system load levels drop to a parti=
cular level.,N/A,ftp://ftp.debian.org/debian/pool/main/a/at/at_3.1.14.orig.=
tar.gz,Saul Wold <sgw@linux.intel.com>)
['file', '5.18', '5.19', 'BSD', 'console/utils', 'http://www.darwinsys.com/=
file/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  zlib file-native', 'None', 'None', 'File attempts t=
o classify files depending on their contents and prints a description if a =
match is found.', 'UPDATE', 'N/A', 'ftp://ftp.astron.com/pub/file/file-5.18=
=2Etar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (file,5.18,5.19,BSD,console/utils,r0,None,http://www.darwinsys.com=
/file/,None,UPDATE,autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  zlib file-native,File attempts to classify file=
s depending on their contents and prints a description if a match is found.=
,N/A,ftp://ftp.astron.com/pub/file/file-5.18.tar.gz,Robert Yang <liezhi.yan=
g@windriver.com>)
['curl', '7.37.1', '7.37.1', 'MIT', 'console/network', 'http://curl.haxx.se=
/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc   gnutls zlib', 'http://curl.haxx.se/ma=
il/list.cgi?list=3Dcurl-tracker', 'None', 'Command line tool and library fo=
r client-side URL transfers.', 'MATCH', 'N/A', 'http://curl.haxx.se/downloa=
d/curl-7.37.1.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (curl,7.37.1,7.37.1,MIT,console/network,r0,None,http://curl.haxx.s=
e/,http://curl.haxx.se/mail/list.cgi?list=3Dcurl-tracker,MATCH,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc   gnutls zlib,Command line tool and library for client-side UR=
L transfers.,N/A,http://curl.haxx.se/download/curl-7.37.1.tar.bz2,Saul Wold=
 <sgw@linux.intel.com>)
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
['bzip2', '1.0.6', '1.0.6', 'bzip2', 'console/utils', 'http://www.bzip.org/=
', 'r5', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc   virtual/update-alternatives', 'None', 'None', 'bzip2 co=
mpresses files using the Burrows-Wheeler block-sorting text compression alg=
orithm, and Huffman coding. Compression is generally considerably better th=
an that achieved by more conventional LZ77/LZ78-based compressors, and appr=
oaches the performance of the PPM family of statistical compressors.', 'MAT=
CH', 'N/A', 'http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz', 'Chen Qi <Qi.Ch=
en@windriver.com>', 'None']
inserted (bzip2,1.0.6,1.0.6,bzip2,console/utils,r5,None,http://www.bzip.org=
/,None,MATCH,autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc   virtual/update-alternatives,bzip2 compresses files u=
sing the Burrows-Wheeler block-sorting text compression algorithm, and Huff=
man coding. Compression is generally considerably better than that achieved=
 by more conventional LZ77/LZ78-based compressors, and approaches the perfo=
rmance of the PPM family of statistical compressors.,N/A,http://www.bzip.or=
g/1.0.6/bzip2-1.0.6.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['cmake', '2.8.12.2', '2.8.12.2', 'BSD', 'console/utils', 'http://www.cmake=
=2Eorg/', 'r0', 'cmake-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc   curl expat zlib libarchive', 'http:=
//public.kitware.com/Bug/my_view_page.php', 'None', 'Cross-platform, open-s=
ource make system.', 'MATCH', 'N/A', 'http://www.cmake.org/files/v2.8/cmake=
-2.8.12.2.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (cmake,2.8.12.2,2.8.12.2,BSD,console/utils,r0,None,http://www.cmak=
e.org/,http://public.kitware.com/Bug/my_view_page.php,MATCH,cmake-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   curl expat zlib libarchive,Cross-platform, open-source make system.=
,N/A,http://www.cmake.org/files/v2.8/cmake-2.8.12.2.tar.gz,Paul Eggleton <p=
aul.eggleton@linux.intel.com>)
['nasm', '2.11.05', '2.11.05', 'BSD-2-Clause', 'devel', '', 'r0', 'autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 groff-native', 'None', 'None', 'General-purpose x86 assembler.', 'MATCH', =
'N/A', 'http://www.nasm.us/pub/nasm/releasebuilds/2.11.05/nasm-2.11.05.tar.=
bz2', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (nasm,2.11.05,2.11.05,BSD-2-Clause,devel,r0,None,,None,MATCH,autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  groff-native,General-purpose x86 assembler.,N/A,http://www.nasm.us/pub/=
nasm/releasebuilds/2.11.05/nasm-2.11.05.tar.bz2,Richard Purdie <richard.pur=
die@linuxfoundation.org>)
['gettext', '0.18.3.2', '0.19.2', 'GPLv3+ & LGPL-2.1+', 'libs', 'http://www=
=2Egnu.org/software/gettext/gettext.html', 'r0', 'autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gettext-native v=
irtual/libiconv expat texinfo-native', 'None', 'None', 'GNU gettext is a se=
t of tools that provides a framework to help other programs produce multi-l=
ingual messages. These tools include a set of conventions about how program=
s should be written to support message catalogs, a directory and file namin=
g organization for the message catalogs themselves, a runtime library suppo=
rting the retrieval of translated messages, and a few stand-alone programs =
to massage in various ways the sets of translatable and already translated =
strings.', 'UPDATE', 'N/A', 'ftp://ftp.gnu.org/gnu/gettext/gettext-0.18.3.2=
=2Etar.gz', 'Wenzong Fan <wenzong.fan@windriver.com>', 'None']
inserted (gettext,0.18.3.2,0.19.2,GPLv3+ & LGPL-2.1+,libs,r0,None,http://ww=
w.gnu.org/software/gettext/gettext.html,None,UPDATE,autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gettext-native=
 virtual/libiconv expat texinfo-native,GNU gettext is a set of tools that p=
rovides a framework to help other programs produce multi-lingual messages. =
These tools include a set of conventions about how programs should be writt=
en to support message catalogs, a directory and file naming organization fo=
r the message catalogs themselves, a runtime library supporting the retriev=
al of translated messages, and a few stand-alone programs to massage in var=
ious ways the sets of translatable and already translated strings.,N/A,ftp:=
//ftp.gnu.org/gnu/gettext/gettext-0.18.3.2.tar.gz,Wenzong Fan <wenzong.fan@=
windriver.com>)
['matchbox-keyboard', '0.0+gitAUTOINC+217f1bfe14', '0.0+gitAUTOINC+c818436'=
, 'LGPLv2.1', 'x11', 'http://matchbox-project.org', 'r4', 'pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  qemu-native libfakekey expat libxf=
t gtk+ matchbox-panel-2', 'http://bugzilla.yoctoproject.org/', 'None', 'Mat=
chbox virtual keyboard for X11.', 'UPDATE', 'N/A', 'git://git.yoctoproject.=
org/matchbox-keyboard;branch=3Dmatchbox-keyboard-0-1', 'Ross Burton <ross.b=
urton@intel.com>', 'None']
inserted (matchbox-keyboard,0.0+gitAUTOINC+217f1bfe14,0.0+gitAUTOINC+c81843=
6,LGPLv2.1,x11,r4,None,http://matchbox-project.org,http://bugzilla.yoctopro=
ject.org/,UPDATE,pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native virtual/gettext gettext-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  q=
emu-native libfakekey expat libxft gtk+ matchbox-panel-2,Matchbox virtual k=
eyboard for X11.,N/A,git://git.yoctoproject.org/matchbox-keyboard;branch=3D=
matchbox-keyboard-0-1,Ross Burton <ross.burton@intel.com>)
['libtimedate-perl', '2.30', '2.30', 'Artistic-1.0 | GPL-1.0+', 'libs', '',=
 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc   perl perl-native', 'None', 'None', 'Perl modules useful for m=
anipulating date and time information.', 'MATCH', 'N/A', 'http://search.cpa=
n.org/CPAN/authors/id/G/GB/GBARR/TimeDate-2.30.tar.gz', 'Richard Purdie <ri=
chard.purdie@linuxfoundation.org>', 'None']
inserted (libtimedate-perl,2.30,2.30,Artistic-1.0 | GPL-1.0+,libs,r0,None,,=
None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc   perl perl-native,Perl modules useful for manipulating date=
 and time information.,N/A,http://search.cpan.org/CPAN/authors/id/G/GB/GBAR=
R/TimeDate-2.30.tar.gz,Richard Purdie <richard.purdie@linuxfoundation.org>)
['glproto', '1.4.17', '1.4.17', 'MIT', 'x11/libs', 'http://www.x.org', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/en=
ter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol =
for the OpenGL-related extensions, used to enable the rendering of applicat=
ions using OpenGL.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/=
individual/proto/glproto-1.4.17.tar.bz2', 'Ross Burton <ross.burton@intel.c=
om>', 'None']
inserted (glproto,1.4.17,1.4.17,MIT,x11/libs,r0,1,http://www.x.org,https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  util-macros,This package provides the wire protocol for the OpenGL-r=
elated extensions, used to enable the rendering of applications using OpenG=
L.,N/A,http://xorg.freedesktop.org/releases/individual/proto/glproto-1.4.17=
=2Etar.bz2,Ross Burton <ross.burton@intel.com>)
['sysklogd', '1.5', '1.5', 'GPLv2+ & BSD', 'base', 'http://www.infodrom.org=
/projects/sysklogd/', 'r7', ' virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc   update-rc.d-native initscripts virtual/u=
pdate-alternatives', 'None', 'None', 'The sysklogd package implements two s=
ystem log daemons: syslogd, klogd', 'MATCH', 'N/A', 'http://www.infodrom.or=
g/projects/sysklogd/download/sysklogd-1.5.tar.gz', 'Chen Qi <Qi.Chen@windri=
ver.com>', 'None']
inserted (sysklogd,1.5,1.5,GPLv2+ & BSD,base,r7,None,http://www.infodrom.or=
g/projects/sysklogd/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc   update-rc.d-native initscripts virtua=
l/update-alternatives,The sysklogd package implements two system log daemon=
s: syslogd, klogd,N/A,http://www.infodrom.org/projects/sysklogd/download/sy=
sklogd-1.5.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['stat', '3.3', '3.3', 'GPLv2', 'console/utils', '', 'r0', ' virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/u=
pdate-alternatives', 'None', 'None', 'Displays all information about a file=
 that the stat() call provides and all information about a filesystem that =
statfs() provides.', 'MATCH', 'N/A', 'ftp://metalab.unc.edu/pub/Linux/utils=
/file/stat-3.3.tar.gz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (stat,3.3,3.3,GPLv2,console/utils,r0,None,,None,MATCH, virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtua=
l/update-alternatives,Displays all information about a file that the stat()=
 call provides and all information about a filesystem that statfs() provide=
s.,N/A,ftp://metalab.unc.edu/pub/Linux/utils/file/stat-3.3.tar.gz,Chen Qi <=
Qi.Chen@windriver.com>)
['hostap-conf', '1.0', 'INVALID', 'GPLv2', 'kernel/modules', '', 'r15', ' '=
, 'None', 'None', "PCMCIA-cs configuration files for wireless LAN cards bas=
ed on Intersil's Prism2/2.5/3 chipset.", 'MATCH', 'N/A', 'file://hostap_cs.=
modalias', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (hostap-conf,1.0,INVALID,GPLv2,kernel/modules,r15,None,,None,MATCH=
, ,PCMCIA-cs configuration files for wireless LAN cards based on Intersil's=
 Prism2/2.5/3 chipset.,N/A,file://hostap_cs.modalias,Cristian Iorga <cristi=
an.iorga@intel.com>)
['inputproto', '2.3.1', '2.3.1', 'MIT & MIT-style', 'x11/libs', 'http://www=
=2Ex.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native virtual/gettext gettext-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
util-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', =
'1', 'This package provides the wire protocol for the X Input extension.  T=
he extension supports input devices other then the core X keyboard and poin=
ter.', 'MATCH', '2.2.99.1', 'http://xorg.freedesktop.org/releases/individua=
l/proto/inputproto-2.3.1.tar.bz2', 'Ross Burton <ross.burton@intel.com>', '=
2.2.99.1 is unstable']
inserted (inputproto,2.3.1,2.3.1,MIT & MIT-style,x11/libs,r0,1,http://www.x=
=2Eorg,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros,This packa=
ge provides the wire protocol for the X Input extension.  The extension sup=
ports input devices other then the core X keyboard and pointer.,2.2.99.1,ht=
tp://xorg.freedesktop.org/releases/individual/proto/inputproto-2.3.1.tar.bz=
2,Ross Burton <ross.burton@intel.com>)
['modutils-initscripts', '1.0', 'INVALID', 'PD', 'base', '', 'r7', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   u=
pdate-rc.d-native initscripts', 'None', 'None', 'Initscript for auto-loadin=
g kernel modules on boot.', 'MATCH', 'N/A', 'file://modutils.sh', 'Saul Wol=
d <sgw@linux.intel.com>', 'None']
inserted (modutils-initscripts,1.0,INVALID,PD,base,r7,None,,None,MATCH, vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
  update-rc.d-native initscripts,Initscript for auto-loading kernel modules=
 on boot.,N/A,file://modutils.sh,Saul Wold <sgw@linux.intel.com>)
['lsbtest', '1.0', 'INVALID', 'GPLv2', 'console/utils', '', 'r3', ' virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', =
'None', 'None', 'Automates Linux Standard Base (LSB) tests.', 'MATCH', '1.0=
', 'file://LSB_Test.sh', 'Yi Zhao <yi.zhao@windriver.com>', 'None']
inserted (lsbtest,1.0,INVALID,GPLv2,console/utils,r3,None,,None,MATCH, virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
,Automates Linux Standard Base (LSB) tests.,1.0,file://LSB_Test.sh,Yi Zhao =
<yi.zhao@windriver.com>)
['intltool', '0.50.2', '0.50.2', 'GPLv2', 'devel', '', 'r0', 'pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  libxml-parser-perl-native perl-native', 'None', 'None', 'Utili=
ty scripts for internationalizing XML.', 'MATCH', 'N/A', 'http://launchpad.=
net/intltool/trunk/0.50.2/+download/intltool-0.50.2.tar.gz', 'Richard Purdi=
e <richard.purdie@linuxfoundation.org>', 'None']
inserted (intltool,0.50.2,0.50.2,GPLv2,devel,r0,None,,None,MATCH,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  libxml-parser-perl-native perl-native,Utility scripts for i=
nternationalizing XML.,N/A,http://launchpad.net/intltool/trunk/0.50.2/+down=
load/intltool-0.50.2.tar.gz,Richard Purdie <richard.purdie@linuxfoundation.=
org>)
['libogg', '1.3.2', '1.3.2', 'BSD', 'libs', 'http://xiph.org/', 'r0', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ', 'https://trac.xiph.org/newticket', 'None', 'libogg=
 is the bitstream and framing library for the Ogg project. It provides func=
tions which are necessary to codec libraries like libvorbis.', 'MATCH', 'N/=
A', 'http://downloads.xiph.org/releases/ogg/libogg-1.3.2.tar.xz', 'Cristian=
 Iorga <cristian.iorga@intel.com>', 'None']
inserted (libogg,1.3.2,1.3.2,BSD,libs,r0,None,http://xiph.org/,https://trac=
=2Exiph.org/newticket,MATCH,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  ,libogg is the bitstr=
eam and framing library for the Ogg project. It provides functions which ar=
e necessary to codec libraries like libvorbis.,N/A,http://downloads.xiph.or=
g/releases/ogg/libogg-1.3.2.tar.xz,Cristian Iorga <cristian.iorga@intel.com=
>)
['portmap', '6.0', '6.0', 'BSD', 'console/network', 'http://neil.brown.name=
/portmap/', 'r9', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  virtual/fakeroot-native update-rc.d-native initscri=
pts tcp-wrappers', 'None', 'None', 'RPC program number mapper.', 'MATCH', '=
N/A', 'http://www.sourcefiles.org/Networking/Tools/Miscellanenous/portmap-6=
=2E0.tgz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (portmap,6.0,6.0,BSD,console/network,r9,None,http://neil.brown.nam=
e/portmap/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  virtual/fakeroot-native update-rc.d-native inits=
cripts tcp-wrappers,RPC program number mapper.,N/A,http://www.sourcefiles.o=
rg/Networking/Tools/Miscellanenous/portmap-6.0.tgz,Saul Wold <sgw@linux.int=
el.com>)
['libffi', '3.1', 'N/A', 'MIT', 'base', '', 'r0', 'autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native=
', 'None', 'None', "The `libffi' library provides a portable, high level pr=
ogramming interface to various calling conventions.  This allows a programm=
er to call any function specified by a call interface description at run ti=
me. FFI stands for Foreign Function Interface.  A foreign function interfac=
e is the popular name for the interface that allows code written in one lan=
guage to call code written in another language.  The `libffi' library reall=
y only provides the lowest, machine dependent layer of a fully featured for=
eign function interface.  A layer must exist above `libffi' that handles ty=
pe conversions for values passed between the two languages.", 'ErrParseDir:=
/pub/libffi/:-:libffi-3.1.tar.gz:sourceware.org/pub/libffi/libffi-3.1.tar.g=
z', 'N/A', 'ftp://sourceware.org/pub/libffi/libffi-3.1.tar.gz', 'Saul Wold =
<sgw@linux.intel.com>', 'None']
inserted (libffi,3.1,N/A,MIT,base,r0,None,,None,ErrParseDir:/pub/libffi/:-:=
libffi-3.1.tar.gz:sourceware.org/pub/libffi/libffi-3.1.tar.gz,autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   tex=
info-native,The `libffi' library provides a portable, high level programmin=
g interface to various calling conventions.  This allows a programmer to ca=
ll any function specified by a call interface description at run time. FFI =
stands for Foreign Function Interface.  A foreign function interface is the=
 popular name for the interface that allows code written in one language to=
 call code written in another language.  The `libffi' library really only p=
rovides the lowest, machine dependent layer of a fully featured foreign fun=
ction interface.  A layer must exist above `libffi' that handles type conve=
rsions for values passed between the two languages.,N/A,ftp://sourceware.or=
g/pub/libffi/libffi-3.1.tar.gz,Saul Wold <sgw@linux.intel.com>)
['readline', '6.3', '6.3', 'GPLv3+', 'libs', '', 'r0', 'autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   ncurses t=
exinfo-native', 'None', 'None', 'The GNU Readline library provides a set of=
 functions for use by applications that allow users to edit command lines a=
s they are typed in. Both Emacs and vi editing modes are available. The Rea=
dline library includes  additional functions to maintain a list of previous=
ly-entered command lines, to recall and perhaps reedit those   lines, and p=
erform csh-like history expansion on previous commands.', 'MATCH', 'N/A', '=
ftp://ftp.gnu.org/gnu/readline/readline-6.3.tar.gz;name=3Darchive', 'Hongxu=
 Jia <hongxu.jia@windriver.com>', 'None']
inserted (readline,6.3,6.3,GPLv3+,libs,r0,None,,None,MATCH,autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   ncurse=
s texinfo-native,The GNU Readline library provides a set of functions for u=
se by applications that allow users to edit command lines as they are typed=
 in. Both Emacs and vi editing modes are available. The Readline library in=
cludes  additional functions to maintain a list of previously-entered comma=
nd lines, to recall and perhaps reedit those   lines, and perform csh-like =
history expansion on previous commands.,N/A,ftp://ftp.gnu.org/gnu/readline/=
readline-6.3.tar.gz;name=3Darchive,Hongxu Jia <hongxu.jia@windriver.com>)
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
zilla.yoctoproject.org/', 'None', 'Sato icon theme.', 'MATCH', 'N/A', 'http=
://pokylinux.org/releases/sato/sato-icon-theme-0.4.1.tar.gz', 'Ross Burton =
<ross.burton@intel.com>', 'None']
inserted (sato-icon-theme,0.4.1,0.4.1,CC-BY-SA-3.0,x11,r6,None,http://www.o=
-hand.com,http://bugzilla.yoctoproject.org/,MATCH,pkgconfig-native autoconf=
-native automake-native libtool-native gnu-config-native  icon-naming-utils=
-native libxml-simple-perl-native hicolor-icon-theme gtk-update-icon-cache-=
native perl-native,Sato icon theme.,N/A,http://pokylinux.org/releases/sato/=
sato-icon-theme-0.4.1.tar.gz,Ross Burton <ross.burton@intel.com>)
['mobile-broadband-provider-info', '20140618+gitrAUTOINC+d06ebd314a', '2014=
0618+gitrAUTOINC+03d6846', 'PD', 'network', '', 'r0', 'autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', =
'1', 'Mobile Broadband Service Provider Database.', 'UPDATE', 'N/A', 'git:/=
/git.gnome.org/mobile-broadband-provider-info', 'Saul Wold <sgw@linux.intel=
=2Ecom>', 'None']
inserted (mobile-broadband-provider-info,20140618+gitrAUTOINC+d06ebd314a,20=
140618+gitrAUTOINC+03d6846,PD,network,r0,1,,None,UPDATE,autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Mobile Br=
oadband Service Provider Database.,N/A,git://git.gnome.org/mobile-broadband=
-provider-info,Saul Wold <sgw@linux.intel.com>)
['cdrtools-native', '3.01a20', 'N/A', 'GPLv2 & CDDL-1.0 & LGPLv2.1+', 'cons=
ole/utils', 'http://cdrecord.berlios.de/private/cdrecord.html', 'r0', ' ', =
'None', 'None', 'A set of tools for CD recording, including cdrecord.', 'Er=
rHostNoDir:/pub/cdrecord/alpha/:-:cdrtools-3.01a20.tar.bz2:ftp.berlios.de/p=
ub/cdrecord/alpha/cdrtools-3.01a20.tar.bz2', 'N/A', 'ftp://ftp.berlios.de/p=
ub/cdrecord/alpha/cdrtools-3.01a20.tar.bz2', 'Paul Eggleton <paul.eggleton@=
linux.intel.com>', 'None']
inserted (cdrtools-native,3.01a20,N/A,GPLv2 & CDDL-1.0 & LGPLv2.1+,console/=
utils,r0,None,http://cdrecord.berlios.de/private/cdrecord.html,None,ErrHost=
NoDir:/pub/cdrecord/alpha/:-:cdrtools-3.01a20.tar.bz2:ftp.berlios.de/pub/cd=
record/alpha/cdrtools-3.01a20.tar.bz2, ,A set of tools for CD recording, in=
cluding cdrecord.,N/A,ftp://ftp.berlios.de/pub/cdrecord/alpha/cdrtools-3.01=
a20.tar.bz2,Paul Eggleton <paul.eggleton@linux.intel.com>)
['dmxproto', '2.3.1', '2.3.1', 'MIT', 'x11/libs', 'http://www.x.org', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/ent=
er_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol f=
or the DMX extension.  The DMX extension provides support for communication=
 with and control of Xdmx server.  Attributes of the Xdmx server and of the=
 back-end screens attached to the server can be queried and modified via th=
is protocol.', 'MATCH', 'N/A', 'http://xorg.freedesktop.org/releases/indivi=
dual/proto/dmxproto-2.3.1.tar.bz2', 'Ross Burton <ross.burton@intel.com>', =
'None']
inserted (dmxproto,2.3.1,2.3.1,MIT,x11/libs,r0,1,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  util-macros,This package provides the wire protocol for the DMX exten=
sion.  The DMX extension provides support for communication with and contro=
l of Xdmx server.  Attributes of the Xdmx server and of the back-end screen=
s attached to the server can be queried and modified via this protocol.,N/A=
,http://xorg.freedesktop.org/releases/individual/proto/dmxproto-2.3.1.tar.b=
z2,Ross Burton <ross.burton@intel.com>)
['diffutils', '3.3', '3.3', 'GPLv3+', 'base', '', 'r0', 'autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native virtual/gettex=
t gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc   texinfo-native virtual/update-alternatives', 'None',=
 'None', 'Diffutils contains the GNU diff, diff3, sdiff, and cmp utilities.=
 These programs are usually used for creating patch files.', 'MATCH', 'N/A'=
, 'ftp://ftp.gnu.org/gnu/diffutils/diffutils-3.3.tar.xz', 'Chong Lu <Chong.=
Lu@windriver.com>', 'None']
inserted (diffutils,3.3,3.3,GPLv3+,base,r0,None,,None,MATCH,autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native virtual/get=
text gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc   texinfo-native virtual/update-alternatives,Diffut=
ils contains the GNU diff, diff3, sdiff, and cmp utilities. These programs =
are usually used for creating patch files.,N/A,ftp://ftp.gnu.org/gnu/diffut=
ils/diffutils-3.3.tar.xz,Chong Lu <Chong.Lu@windriver.com>)
['pseudo', '1.6.1', 'N/A', 'LGPL2.1', 'base', 'http://git.yoctoproject.org/=
cgit/cgit.cgi/pseudo', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  sqlite3 attr', 'None', 'None', 'Pseudo g=
ives fake root capabilities to a normal user.', 'ErrParseDir:/downloads/pse=
udo/:-:pseudo-1.6.1.tar.bz2:www.yoctoproject.org/downloads/pseudo/pseudo-1.=
6.1.tar.bz2', 'N/A', 'http://www.yoctoproject.org/downloads/pseudo/pseudo-1=
=2E6.1.tar.bz2', 'Mark Hatle <mark.hatle@windriver.com>', 'None']
inserted (pseudo,1.6.1,N/A,LGPL2.1,base,r0,None,http://git.yoctoproject.org=
/cgit/cgit.cgi/pseudo,None,ErrParseDir:/downloads/pseudo/:-:pseudo-1.6.1.ta=
r.bz2:www.yoctoproject.org/downloads/pseudo/pseudo-1.6.1.tar.bz2, virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  sqlit=
e3 attr,Pseudo gives fake root capabilities to a normal user.,N/A,http://ww=
w.yoctoproject.org/downloads/pseudo/pseudo-1.6.1.tar.bz2,Mark Hatle <mark.h=
atle@windriver.com>)
['pulseaudio', '5.0', '5.0', 'GPLv2+ & LGPLv2.1', 'libs/multimedia', 'http:=
//www.pulseaudio.org', 'r0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native virtual/gettext gettext-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  libatomics-ops liboil libsamplerate0 libsndfile1 libtool udev a=
lsa-lib glib-2.0 dbus gconf json-c gdbm speex libxml-parser-perl-native lib=
cap perl-native base-files base-passwd shadow-native shadow-sysroot shadow =
avahi bluez4 sbc virtual/libx11 libxtst libice libsm libxcb', 'None', 'None=
', 'Sound server for Linux and Unix-like operating systems.', 'MATCH', 'N/A=
', 'http://freedesktop.org/software/pulseaudio/releases/pulseaudio-5.0.tar.=
xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (pulseaudio,5.0,5.0,GPLv2+ & LGPLv2.1,libs/multimedia,r0,None,http=
://www.pulseaudio.org,None,MATCH,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native virtual/gettext gette=
xt-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  libatomics-ops liboil libsamplerate0 libsndfile1 libtool ude=
v alsa-lib glib-2.0 dbus gconf json-c gdbm speex libxml-parser-perl-native =
libcap perl-native base-files base-passwd shadow-native shadow-sysroot shad=
ow avahi bluez4 sbc virtual/libx11 libxtst libice libsm libxcb,Sound server=
 for Linux and Unix-like operating systems.,N/A,http://freedesktop.org/soft=
ware/pulseaudio/releases/pulseaudio-5.0.tar.xz,Cristian Iorga <cristian.ior=
ga@intel.com>)
['e2fsprogs', '1.42.9', '1.42.11', 'GPLv2 & LGPLv2 & BSD & MIT', 'base', 'h=
ttp://e2fsprogs.sourceforge.net/', 'r0', 'pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native virtual/gett=
ext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  util-linux texinfo-native virtual/update-alternativ=
es', 'None', 'None', 'The Ext2 Filesystem Utilities (e2fsprogs) contain all=
 of the standard utilities for creating, fixing, configuring , and debuggin=
g ext2 filesystems.', 'UPDATE', 'N/A', 'http://downloads.sourceforge.net/e2=
fsprogs/e2fsprogs-1.42.9.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>'=
, 'None']
inserted (e2fsprogs,1.42.9,1.42.11,GPLv2 & LGPLv2 & BSD & MIT,base,r0,None,=
http://e2fsprogs.sourceforge.net/,None,UPDATE,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native virtual/=
gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-linux texinfo-native virtual/update-altern=
atives,The Ext2 Filesystem Utilities (e2fsprogs) contain all of the standar=
d utilities for creating, fixing, configuring , and debugging ext2 filesyst=
ems.,N/A,http://downloads.sourceforge.net/e2fsprogs/e2fsprogs-1.42.9.tar.gz=
,Robert Yang <liezhi.yang@windriver.com>)
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
['libmatchbox', '1.11', '1.11', 'LGPLv2+', 'x11/libs', 'http://matchbox-pro=
ject.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 libxext jpeg li=
bpng libxft libxsettings-client', 'http://bugzilla.yoctoproject.com/', 'Non=
e', 'Matchbox window manager core library.', 'MATCH', 'N/A', 'http://downlo=
ads.yoctoproject.org/releases/matchbox/libmatchbox/1.11/libmatchbox-1.11.ta=
r.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libmatchbox,1.11,1.11,LGPLv2+,x11/libs,r0,None,http://matchbox-pr=
oject.org/,http://bugzilla.yoctoproject.com/,MATCH,pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  virtual/libx11 libxext jpeg libpng libxft libxsettings-client,Matchbox wi=
ndow manager core library.,N/A,http://downloads.yoctoproject.org/releases/m=
atchbox/libmatchbox/1.11/libmatchbox-1.11.tar.bz2,Ross Burton <ross.burton@=
intel.com>)
['presentproto', '1.0+gitAUTOINC+24f3a56e54', '1.0+gitAUTOINC+ef84007', 'GP=
Lv2', 'x11/libs', 'http://www.x.org', 'r0', 'pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util=
-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', 'Non=
e', 'The Present extension provides a way for applications to update their =
               window contents from a pixmap in a well defined fashion, syn=
chronizing                with the display refresh and potentially using a =
more efficient                mechanism than copying the contents of the so=
urce pixmap.              ', 'UPDATE', 'N/A', 'git://anongit.freedesktop.or=
g/git/xorg/proto/presentproto', 'Ross Burton <ross.burton@intel.com>', 'Non=
e']
inserted (presentproto,1.0+gitAUTOINC+24f3a56e54,1.0+gitAUTOINC+ef84007,GPL=
v2,x11/libs,r0,None,http://www.x.org,https://bugs.freedesktop.org/enter_bug=
=2Ecgi?product=3Dxorg,UPDATE,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros,The Pres=
ent extension provides a way for applications to update their              =
  window contents from a pixmap in a well defined fashion, synchronizing   =
             with the display refresh and potentially using a more efficien=
t                mechanism than copying the contents of the source pixmap. =
             ,N/A,git://anongit.freedesktop.org/git/xorg/proto/presentproto=
,Ross Burton <ross.burton@intel.com>)
['time', '1.7', '1.7', 'GPLv2+', 'utils', 'http://www.gnu.org/software/time=
/', 'r2', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc   texinfo-native virtual/update-alternatives', 'None', '=
None', 'time measures many of the CPU resources, such as time and memory, t=
hat other programs use.', 'MATCH', 'N/A', 'ftp://ftp.gnu.org/gnu/time/time-=
1.7.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (time,1.7,1.7,GPLv2+,utils,r2,None,http://www.gnu.org/software/tim=
e/,None,MATCH,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc   texinfo-native virtual/update-alternatives,time mea=
sures many of the CPU resources, such as time and memory, that other progra=
ms use.,N/A,ftp://ftp.gnu.org/gnu/time/time-1.7.tar.gz,Robert Yang <liezhi.=
yang@windriver.com>)
['gnome-desktop-testing', '2014.1', '2014.1', 'LGPLv2+', 'base', 'https://w=
iki.gnome.org/GnomeGoals/InstalledTests', 'r0', 'pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
glib-2.0', 'None', 'None', 'Test runner for GNOME-style installed tests.', =
'MATCH', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/gnome-desktop-testi=
ng/2014.1/gnome-desktop-testing-2014.1.tar.xz', 'None', 'None']
inserted (gnome-desktop-testing,2014.1,2014.1,LGPLv2+,base,r0,None,https://=
wiki.gnome.org/GnomeGoals/InstalledTests,None,MATCH,pkgconfig-native autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  glib-2.0,Test runner for GNOME-style installed tests.,N/A,http://ftp.gno=
me.org/pub/GNOME/sources/gnome-desktop-testing/2014.1/gnome-desktop-testing=
-2014.1.tar.xz,None)
['oprofile', '0.9.9', '0.9.9', 'LGPLv2.1+ & GPLv2', 'devel', 'http://oprofi=
le.sourceforge.net/news/', 'r0', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  popt binutils v=
irtual/kernel', 'http://sourceforge.net/tracker/?group_id=3D16191&atid=3D11=
6191', 'None', 'OProfile is a system-wide profiler for Linux systems, capab=
le of profiling all running code at low overhead.', 'MATCH', 'N/A', 'file:/=
/opstart.patch', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'No=
ne']
inserted (oprofile,0.9.9,0.9.9,LGPLv2.1+ & GPLv2,devel,r0,None,http://oprof=
ile.sourceforge.net/news/,http://sourceforge.net/tracker/?group_id=3D16191&=
atid=3D116191,MATCH,pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  popt binutils virtual/kernel,=
OProfile is a system-wide profiler for Linux systems, capable of profiling =
all running code at low overhead.,N/A,file://opstart.patch,Richard Purdie <=
richard.purdie@linuxfoundation.org>)
['libksba', '1.3.0', '1.3.0', 'GPLv2+ | LGPLv3+ | GPLv3+', 'base', 'http://=
www.gnupg.org/related_software/libksba/', 'r1', 'pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
libgpg-error texinfo-native', 'None', 'None', 'Easy API to create and parse=
 X.509 and CMS related objects.', 'MATCH', 'N/A', 'ftp://ftp.gnupg.org/gcry=
pt/libksba/libksba-1.3.0.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None=
']
inserted (libksba,1.3.0,1.3.0,GPLv2+ | LGPLv3+ | GPLv3+,base,r1,None,http:/=
/www.gnupg.org/related_software/libksba/,None,MATCH,pkgconfig-native autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  libgpg-error texinfo-native,Easy API to create and parse X.509 and CMS r=
elated objects.,N/A,ftp://ftp.gnupg.org/gcrypt/libksba/libksba-1.3.0.tar.bz=
2,Saul Wold <sgw@linux.intel.com>)
['base-passwd', '3.5.29', '3.5.33', 'GPLv2+', 'base', '', 'r0', 'autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  '=
, 'None', 'None', 'The master copies of the user database files (/etc/passw=
d and /etc/group).  The update-passwd tool is also provided to keep the sys=
tem databases synchronized with these master files.', 'UPDATE', 'N/A', 'ftp=
://ftp.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.29.tar.gz'=
, 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (base-passwd,3.5.29,3.5.33,GPLv2+,base,r0,None,,None,UPDATE,autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  ,The master copies of the user database files (/etc/passwd and /etc/grou=
p).  The update-passwd tool is also provided to keep the system databases s=
ynchronized with these master files.,N/A,ftp://ftp.debian.org/debian/pool/m=
ain/b/base-passwd/base-passwd_3.5.29.tar.gz,Saul Wold <sgw@linux.intel.com>)
['mpfr', '3.1.2', '3.1.2', 'GPLv3 & LGPLv3', 'devel', 'http://www.mpfr.org/=
', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  gmp texinfo-native', 'None', 'None', 'C library for mult=
iple-precision floating-point computations with exact rounding.', 'MATCH', =
'N/A', 'http://www.mpfr.org/mpfr-3.1.2/mpfr-3.1.2.tar.xz', 'Richard Purdie =
<richard.purdie@linuxfoundation.org>', 'None']
inserted (mpfr,3.1.2,3.1.2,GPLv3 & LGPLv3,devel,r0,None,http://www.mpfr.org=
/,None,MATCH,autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  gmp texinfo-native,C library for multiple-precision f=
loating-point computations with exact rounding.,N/A,http://www.mpfr.org/mpf=
r-3.1.2/mpfr-3.1.2.tar.xz,Richard Purdie <richard.purdie@linuxfoundation.or=
g>)

Database update successful!
Now updating pkgrecord table and generate new upgr_hist table, please wait =
a minute......
milestone_target_to_db.py date_parameter =3D 2014-04-24
['milestone_target_to_db.py', '2014-04-24']
SERVER_PATH: /srv/www/vhosts/packages.yoctoproject.org/python-function/../n=
ewserver/webserver/
Database update successful!
REPORT-SYSTEM-UPDATE ERROR: Didn't draw chart because some failures happend=
 before
Any problem, please contact Saul Wold <sgw@linux.intel.com>=20

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--4Ckj6UjgE2iN1+kY--
