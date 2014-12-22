Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3E87E008F6; Sun, 21 Dec 2014 18:01:11 -0800 (PST)
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7BABE0086F
	for <yocto@yoctoproject.org>; Sun, 21 Dec 2014 18:01:11 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 98023A409E; Mon, 22 Dec 2014 02:01:11 +0000 (UTC)
Date: Mon, 22 Dec 2014 02:01:11 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20141222020111.GA19629@packages.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 22 Dec 2014 02:01:11 -0000
X-Groupsio-MsgNum: 22698
Content-Type: multipart/mixed; boundary="bg08WKrSYDhXBjb5"
Content-Disposition: inline

--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=46rom git://git.yoctoproject.org/poky
   88528a1..15de188  master     -> master
error: Ref refs/heads/master is at 15de188692d2572d897799424e2a22eab24c78e2=
 but expected 88528a128fe7c11871c24706ff6d245b183d6975
=46rom git://git.yoctoproject.org/poky
 ! 88528a1..15de188  master     -> master  (unable to update local ref)
REPORT-SYSTEM-UPDATE ERROR: Get the latest poky tree failed
Warning: fetch updated the current branch head.
Warning: fast-forwarding your working tree from
Warning: commit 88528a128fe7c11871c24706ff6d245b183d6975.
Already up-to-date. Yeeah!
Now updating daily_check database, please wait for a minute......
Now updating pkginfotable,please wait a minute........
['Package', 'Version', 'Upver', 'License', 'Section', 'Home', 'Release', 'D=
epends', 'BugTracker', 'PE', 'Description', 'Status', 'Tracking', 'URI', 'M=
AINTAINER', 'NoUpReason']
['mmc-utils', '0.1', '0.1+gitAUTOINC+f4eb241519', 'GPLv2', 'base', 'http://=
git.kernel.org/cgit/linux/kernel/git/cjb/mmc-utils.git/', 'r0', ' virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'N=
one', 'None', 'Userspace tools for MMC/SD devices', 'UPDATE', 'N/A', 'git:/=
/git.kernel.org/pub/scm/linux/kernel/git/cjb/mmc-utils.git;protocol=3Dgit;b=
ranch=3Dmaster', 'None', 'None']
inserted (mmc-utils,0.1,0.1+gitAUTOINC+f4eb241519,GPLv2,base,r0,None,http:/=
/git.kernel.org/cgit/linux/kernel/git/cjb/mmc-utils.git/,None,UPDATE, virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,=
Userspace tools for MMC/SD devices,N/A,git://git.kernel.org/pub/scm/linux/k=
ernel/git/cjb/mmc-utils.git;protocol=3Dgit;branch=3Dmaster,None)
['busybox', '1.22.1', 'N/A', 'GPLv2 & bzip2', 'base', 'http://www.busybox.n=
et', 'r32', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc   kern-tools-native update-rc.d-native initscripts virtual=
/update-alternatives', 'https://bugs.busybox.net/', 'None', 'BusyBox combin=
es tiny versions of many common UNIX utilities into a single small executab=
le. It provides minimalist replacements for most of the utilities you usual=
ly find in GNU fileutils, shellutils, etc. The utilities in BusyBox general=
ly have fewer options than their full-featured GNU cousins; however, the op=
tions that are included provide the expected functionality and behave very =
much like their GNU counterparts. BusyBox provides a fairly complete POSIX =
environment for any small or embedded system.', 'ErrAccess', 'N/A', 'http:/=
/www.busybox.net/downloads/busybox-1.22.1.tar.bz2;name=3Dtarball', 'Chen Qi=
 <Qi.Chen@windriver.com>', 'None']
inserted (busybox,1.22.1,N/A,GPLv2 & bzip2,base,r32,None,http://www.busybox=
=2Enet,https://bugs.busybox.net/,ErrAccess, virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc   kern-tools-native update-r=
c.d-native initscripts virtual/update-alternatives,BusyBox combines tiny ve=
rsions of many common UNIX utilities into a single small executable. It pro=
vides minimalist replacements for most of the utilities you usually find in=
 GNU fileutils, shellutils, etc. The utilities in BusyBox generally have fe=
wer options than their full-featured GNU cousins; however, the options that=
 are included provide the expected functionality and behave very much like =
their GNU counterparts. BusyBox provides a fairly complete POSIX environmen=
t for any small or embedded system.,N/A,http://www.busybox.net/downloads/bu=
sybox-1.22.1.tar.bz2;name=3Dtarball,Chen Qi <Qi.Chen@windriver.com>)
['telepathy-mission-control', '5.16.1', 'N/A', 'LGPLv2.1+', 'libs', 'http:/=
/telepathy.freedesktop.org/wiki/Mission_Control/', 'r0', 'pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  libtelepathy dbus-glib gconf libxslt-native  python-native ', 'Non=
e', 'None', 'Central control for Telepathy IM connection managers.', 'ErrAc=
cess', 'N/A', 'http://telepathy.freedesktop.org/releases/telepathy-mission-=
control/telepathy-mission-control-5.16.1.tar.gz', 'Cristian Iorga <cristian=
=2Eiorga@intel.com>', 'None']
inserted (telepathy-mission-control,5.16.1,N/A,LGPLv2.1+,libs,r0,None,http:=
//telepathy.freedesktop.org/wiki/Mission_Control/,None,ErrAccess,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  libtelepathy dbus-glib gconf libxslt-native  python-native =
,Central control for Telepathy IM connection managers.,N/A,http://telepathy=
=2Efreedesktop.org/releases/telepathy-mission-control/telepathy-mission-con=
trol-5.16.1.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['pth', '2.0.7', 'N/A', 'GPLv2+', 'libs', 'http://www.gnu.org/software/pth/=
', 'r3', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'GNU Portable Thread=
s library.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/pth/pth-2.0.7.tar.g=
z', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (pth,2.0.7,N/A,GPLv2+,libs,r3,None,http://www.gnu.org/software/pth=
/,None,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ,GNU Portable Threads library.,N=
/A,ftp://ftp.gnu.org/gnu/pth/pth-2.0.7.tar.gz,Saul Wold <sgw@linux.intel.co=
m>)
['iputils', 's20121221', 'N/A', 'BSD & GPLv2+', 'console/network', 'http://=
www.skbuff.net/iputils', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  gnutls docbook-utils-native sgmlspl-na=
tive libcap virtual/update-alternatives', 'None', 'None', 'Utilities for th=
e IP protocol, including traceroute6, tracepath, tracepath6, ping, ping6 an=
d arping.', 'ErrAccess', 'N/A', 'http://www.skbuff.net/iputils/iputils-s201=
21221.tar.bz2', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (iputils,s20121221,N/A,BSD & GPLv2+,console/network,r0,None,http:/=
/www.skbuff.net/iputils,None,ErrAccess, virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  gnutls docbook-utils-native sgm=
lspl-native libcap virtual/update-alternatives,Utilities for the IP protoco=
l, including traceroute6, tracepath, tracepath6, ping, ping6 and arping.,N/=
A,http://www.skbuff.net/iputils/iputils-s20121221.tar.bz2,Chong Lu <Chong.L=
u@windriver.com>)
['xf86miscproto', '0.9.3', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r=
1', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/=
enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoco=
l for the XFree miscellaneous extension.  The XFree86-Misc extension provid=
es a means to access input device configuration settings specific to the XF=
ree86/Xorg DDX.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases=
/individual/proto/xf86miscproto-0.9.3.tar.bz2', 'Ross Burton <ross.burton@i=
ntel.com>', 'None']
inserted (xf86miscproto,0.9.3,N/A,MIT,x11/libs,r1,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  util-macros,This package provides the wire protocol for the XF=
ree miscellaneous extension.  The XFree86-Misc extension provides a means t=
o access input device configuration settings specific to the XFree86/Xorg D=
DX.,N/A,http://xorg.freedesktop.org/releases/individual/proto/xf86miscproto=
-0.9.3.tar.bz2,Ross Burton <ross.burton@intel.com>)
['qemu-helper-native', '1.0', '1.0', 'GPLv2', 'base', '', 'r1', ' ', 'None'=
, 'None', 'Helper utilities needed by the runqemu script.', 'MATCH', 'N/A',=
 'file://tunctl.c', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (qemu-helper-native,1.0,1.0,GPLv2,base,r1,None,,None,MATCH, ,Helpe=
r utilities needed by the runqemu script.,N/A,file://tunctl.c,Cristian Iorg=
a <cristian.iorga@intel.com>)
['python-dbus', '1.2.0', 'N/A', 'MIT', 'devel/python', 'http://www.freedesk=
top.org/Software/dbus', 'r0', 'pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  expat dbus dbus-gl=
ib virtual/libintl python-pyrex-native python-native python  python-native =
', 'None', 'None', 'Python bindings for the DBus inter-process communicatio=
n system.', 'ErrAccess', 'N/A', 'http://dbus.freedesktop.org/releases/dbus-=
python/dbus-python-1.2.0.tar.gz', 'Richard Purdie <richard.purdie@linuxfoun=
dation.org>', 'None']
inserted (python-dbus,1.2.0,N/A,MIT,devel/python,r0,None,http://www.freedes=
ktop.org/Software/dbus,None,ErrAccess,pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  expat dbus =
dbus-glib virtual/libintl python-pyrex-native python-native python  python-=
native ,Python bindings for the DBus inter-process communication system.,N/=
A,http://dbus.freedesktop.org/releases/dbus-python/dbus-python-1.2.0.tar.gz=
,Richard Purdie <richard.purdie@linuxfoundation.org>)
['swabber-native', '0.0+gitAUTOINC+2d1fe36fb0', '0.0+gitAUTOINC+2d1fe36fb0'=
, 'GPLv2', 'base', 'http://git.yoctoproject.org/cgit/cgit.cgi/swabber', 'r0=
', ' ', 'None', 'None', 'Tool to monitor and report on host system file usa=
ge.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/swabber', 'Saul Wold <sgw=
@linux.intel.com>', 'None']
inserted (swabber-native,0.0+gitAUTOINC+2d1fe36fb0,0.0+gitAUTOINC+2d1fe36fb=
0,GPLv2,base,r0,None,http://git.yoctoproject.org/cgit/cgit.cgi/swabber,None=
,MATCH, ,Tool to monitor and report on host system file usage.,N/A,git://gi=
t.yoctoproject.org/swabber,Saul Wold <sgw@linux.intel.com>)
['gstreamer1.0-plugins-good', '1.4.1', 'N/A', 'GPLv2+ & LGPLv2.1+', 'multim=
edia', 'http://gstreamer.freedesktop.org/', 'r0', 'pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native vir=
tual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugins-base zli=
b bzip2 libcap cairo flac gdk-pixbuf udev jpeg libpng orc pulseaudio libsou=
p-2.4 speex taglib virtual/libx11 libsm libxrender libxfixes libxdamage', '=
https://bugzilla.gnome.org/enter_bug.cgi?product=3DGstreamer', 'None', 'Plu=
gins for the GStreamer multimedia framework 1.x.', 'ErrAccess', 'N/A', 'htt=
p://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.4.1.t=
ar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (gstreamer1.0-plugins-good,1.4.1,N/A,GPLv2+ & LGPLv2.1+,multimedia=
,r0,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/enter=
_bug.cgi?product=3DGstreamer,ErrAccess,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native virtual/gettext=
 gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugins-base zlib bzip2 libc=
ap cairo flac gdk-pixbuf udev jpeg libpng orc pulseaudio libsoup-2.4 speex =
taglib virtual/libx11 libsm libxrender libxfixes libxdamage,Plugins for the=
 GStreamer multimedia framework 1.x.,N/A,http://gstreamer.freedesktop.org/s=
rc/gst-plugins-good/gst-plugins-good-1.4.1.tar.xz,Cristian Iorga <cristian.=
iorga@intel.com>)
['gdbm', '1.11', 'N/A', 'GPLv3', 'libs', 'http://www.gnu.org/software/gdbm/=
', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native', 'None',=
 'None', 'Key/value database library with extensible hashing.', 'ErrAccess'=
, 'N/A', 'ftp://ftp.gnu.org/gnu/gdbm/gdbm-1.11.tar.gz', 'Saul Wold <sgw@lin=
ux.intel.com>', 'None']
inserted (gdbm,1.11,N/A,GPLv3,libs,r0,None,http://www.gnu.org/software/gdbm=
/,None,ErrAccess,autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native,Ke=
y/value database library with extensible hashing.,N/A,ftp://ftp.gnu.org/gnu=
/gdbm/gdbm-1.11.tar.gz,Saul Wold <sgw@linux.intel.com>)
['gpgme', '1.4.3', 'N/A', 'GPLv2+ & LGPLv2.1+', 'base', 'http://www.gnupg.o=
rg/gpgme.html', 'r0', 'pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  libgpg-error libassuan tex=
info-native', 'https://bugs.g10code.com/gnupg/index', 'None', 'GnuPG Made E=
asy (GPGME) is a library designed to make access to GnuPG easier for applic=
ations. It provides a High-Level Crypto API for encryption, decryption, sig=
ning, signature verification and key management', 'ErrAccess', 'N/A', 'ftp:=
//ftp.gnupg.org/gcrypt/gpgme/gpgme-1.4.3.tar.bz2', 'Paul Eggleton <paul.egg=
leton@linux.intel.com>', 'None']
inserted (gpgme,1.4.3,N/A,GPLv2+ & LGPLv2.1+,base,r0,None,http://www.gnupg.=
org/gpgme.html,https://bugs.g10code.com/gnupg/index,ErrAccess,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  libgpg-error libassuan texinfo-native,GnuPG Made Easy (GPGME) =
is a library designed to make access to GnuPG easier for applications. It p=
rovides a High-Level Crypto API for encryption, decryption, signing, signat=
ure verification and key management,N/A,ftp://ftp.gnupg.org/gcrypt/gpgme/gp=
gme-1.4.3.tar.bz2,Paul Eggleton <paul.eggleton@linux.intel.com>)
['xserver-xorg', '1.16.2', 'N/A', 'MIT-X', 'x11/base', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  randrproto renderproto fixesproto damagepr=
oto xextproto xproto xf86dgaproto xf86miscproto xf86vidmodeproto compositep=
roto recordproto resourceproto videoproto scrnsaverproto  xineramaproto fon=
tsproto kbproto inputproto bigreqsproto xcmiscproto presentproto pixman lib=
xfont xtrans libxau libxext libxdmcp libdrm libxkbfile libpciaccess openssl=
 libgcrypt font-util glproto virtual/mesa xf86driproto dri2proto glproto vi=
rtual/libgl virtual/libx11 udev', 'None', '2', 'The X.Org X server.', 'ErrA=
ccess', 'N/A', 'http://xorg.freedesktop.org/releases/individual/xserver/xor=
g-server-1.16.2.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xserver-xorg,1.16.2,N/A,MIT-X,x11/base,r0,2,http://www.x.org,None=
,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  randrproto renderproto fixesproto dama=
geproto xextproto xproto xf86dgaproto xf86miscproto xf86vidmodeproto compos=
iteproto recordproto resourceproto videoproto scrnsaverproto  xineramaproto=
 fontsproto kbproto inputproto bigreqsproto xcmiscproto presentproto pixman=
 libxfont xtrans libxau libxext libxdmcp libdrm libxkbfile libpciaccess ope=
nssl libgcrypt font-util glproto virtual/mesa xf86driproto dri2proto glprot=
o virtual/libgl virtual/libx11 udev,The X.Org X server.,N/A,http://xorg.fre=
edesktop.org/releases/individual/xserver/xorg-server-1.16.2.tar.bz2,Ross Bu=
rton <ross.burton@intel.com>)
['libice', '1.0.9', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros xproto xtrans', 'https://bugs.fre=
edesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Inter-Client Exchange=
 (ICE) protocol provides a generic framework for building protocols on top =
of reliable, byte-stream transport connections. It provides basic mechanism=
s for setting up and shutting down connections, for performing authenticati=
on, for negotiating versions, and for reporting errors. ', 'ErrAccess', 'N/=
A', 'http://xorg.freedesktop.org/releases/individual/lib/libICE-1.0.9.tar.b=
z2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libice,1.0.9,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  util-macros xproto xtrans,The Inter-Client Exchange (ICE) proto=
col provides a generic framework for building protocols on top of reliable,=
 byte-stream transport connections. It provides basic mechanisms for settin=
g up and shutting down connections, for performing authentication, for nego=
tiating versions, and for reporting errors. ,N/A,http://xorg.freedesktop.or=
g/releases/individual/lib/libICE-1.0.9.tar.bz2,Ross Burton <ross.burton@int=
el.com>)
['ldconfig-native', '2.12.1', '2.12.1', 'GPLv2+', 'base', '', 'r2', ' ', 'N=
one', 'None', 'A standalone native ldconfig build.', 'MATCH', 'N/A', 'file:=
//ldconfig-native-2.12.1.tar.bz2            file://ldconfig.patch          =
  file://ldconfig_aux-cache_path_fix.patch            file://32and64bit.pat=
ch            file://endian-ness_handling.patch            file://flag_fix.=
patch            file://endianess-header.patch            file://ldconfig-d=
efault-to-all-multilib-dirs.patch            file://endian-ness_handling_fi=
x.patch ', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (ldconfig-native,2.12.1,2.12.1,GPLv2+,base,r2,None,,None,MATCH, ,A=
 standalone native ldconfig build.,N/A,file://ldconfig-native-2.12.1.tar.bz=
2            file://ldconfig.patch            file://ldconfig_aux-cache_pat=
h_fix.patch            file://32and64bit.patch            file://endian-nes=
s_handling.patch            file://flag_fix.patch            file://endiane=
ss-header.patch            file://ldconfig-default-to-all-multilib-dirs.pat=
ch            file://endian-ness_handling_fix.patch ,Saul Wold <sgw@linux.i=
ntel.com>)
['xset', '1.2.3', 'N/A', 'MIT', 'x11/apps', 'http://www.x.org/', 'r0', 'pkg=
config-native autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  util-macros-native virtual/libx11 libxext libxxf86mi=
sc libxmu libxau', 'https://bugs.freedesktop.org', '1', 'xset is a utility =
that is used to set various user preference options of the display.', 'ErrA=
ccess', 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/xset-1.=
2.3.tar.bz2', 'An\xc3\xadbal Lim\xc3\xb3n <anibal.limon@linux.intel.com>', =
'None']
inserted (xset,1.2.3,N/A,MIT,x11/apps,r0,1,http://www.x.org/,https://bugs.f=
reedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native virtu=
al/libx11 libxext libxxf86misc libxmu libxau,xset is a utility that is used=
 to set various user preference options of the display.,N/A,http://xorg.fre=
edesktop.org/releases/individual/app/xset-1.2.3.tar.bz2,An?bal Lim?n <aniba=
l.limon@linux.intel.com>)
['dropbear', '2014.63', 'N/A', 'MIT & BSD-3-Clause & BSD-2-Clause & PD', 'c=
onsole/network', 'http://matt.ucc.asn.au/dropbear/dropbear.html', 'r0', 'au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  zlib  update-rc.d-native initscripts virtual/update-alternatives', '=
None', 'None', 'A lightweight SSH and SCP implementation.', 'ErrAccess', 'N=
/A', 'http://matt.ucc.asn.au/dropbear/releases/dropbear-2014.63.tar.bz2', '=
Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (dropbear,2014.63,N/A,MIT & BSD-3-Clause & BSD-2-Clause & PD,conso=
le/network,r0,None,http://matt.ucc.asn.au/dropbear/dropbear.html,None,ErrAc=
cess,autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  zlib  update-rc.d-native initscripts virtual/update-alternati=
ves,A lightweight SSH and SCP implementation.,N/A,http://matt.ucc.asn.au/dr=
opbear/releases/dropbear-2014.63.tar.bz2,Paul Eggleton <paul.eggleton@linux=
=2Eintel.com>)
['gcc-crosssdk-i586', '4.9.1', 'N/A', 'GPL-3.0-with-GCC-exception & GPLv3',=
 'devel', 'http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automa=
ke-native libtool-native gnu-config-native   virtual/i586-pokysdk-linux-bin=
utils-crosssdk virtual/nativesdk-i586-pokysdk-linux-libc-for-gcc gettext-na=
tive mpfr-native gmp-native libmpc-native zlib-native texinfo-native', 'Non=
e', 'None', 'GNU cc and gcc C compilers.', 'ErrAccess', 'N/A', 'ftp://ftp.g=
nu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2', 'Richard Purdie <richard.purdi=
e@linuxfoundation.org>', 'None']
inserted (gcc-crosssdk-i586,4.9.1,N/A,GPL-3.0-with-GCC-exception & GPLv3,de=
vel,r0,None,http://www.gnu.org/software/gcc/,None,ErrAccess,autoconf-native=
 automake-native libtool-native gnu-config-native   virtual/i586-pokysdk-li=
nux-binutils-crosssdk virtual/nativesdk-i586-pokysdk-linux-libc-for-gcc get=
text-native mpfr-native gmp-native libmpc-native zlib-native texinfo-native=
,GNU cc and gcc C compilers.,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.=
9.1.tar.bz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['libxt', '1.1.4', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros util-linux libxcb libsm virt=
ual/libx11 kbproto libxdmcp', 'https://bugs.freedesktop.org/enter_bug.cgi?p=
roduct=3Dxorg', '1', 'The Intrinsics are a programming library tailored to =
the special requirements of user interface construction within a network wi=
ndow system, specifically the X Window System. The Intrinsics and a widget =
set make up an X Toolkit. The Intrinsics provide the base mechanism necessa=
ry to build a wide variety of interoperating widget sets and application en=
vironments. The Intrinsics are a layer on top of Xlib, the C Library X Inte=
rface. They extend the fundamental abstractions provided by the X Window Sy=
stem while still remaining independent of any particular user interface pol=
icy or style.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/i=
ndividual/lib/libXt-1.1.4.tar.bz2', 'Ross Burton <ross.burton@intel.com>', =
'None']
inserted (libxt,1.1.4,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.x.org,ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  util-macros util-linux libxcb libsm virtual/libx11 kbproto=
 libxdmcp,The Intrinsics are a programming library tailored to the special =
requirements of user interface construction within a network window system,=
 specifically the X Window System. The Intrinsics and a widget set make up =
an X Toolkit. The Intrinsics provide the base mechanism necessary to build =
a wide variety of interoperating widget sets and application environments. =
The Intrinsics are a layer on top of Xlib, the C Library X Interface. They =
extend the fundamental abstractions provided by the X Window System while s=
till remaining independent of any particular user interface policy or style=
=2E,N/A,http://xorg.freedesktop.org/releases/individual/lib/libXt-1.1.4.tar=
=2Ebz2,Ross Burton <ross.burton@intel.com>)
['kbproto', '1.0.6', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/=
enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoco=
l for the X Keyboard extension.  This extension is used to control options =
related to keyboard handling and layout.', 'ErrAccess', 'N/A', 'http://xorg=
=2Efreedesktop.org/releases/individual/proto/kbproto-1.0.6.tar.bz2', 'Ross =
Burton <ross.burton@intel.com>', 'None']
inserted (kbproto,1.0.6,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  util-macros,This package provides the wire protocol for the X =
Keyboard extension.  This extension is used to control options related to k=
eyboard handling and layout.,N/A,http://xorg.freedesktop.org/releases/indiv=
idual/proto/kbproto-1.0.6.tar.bz2,Ross Burton <ross.burton@intel.com>)
['unzip', '6.0', 'N/A', 'BSD-3-Clause', 'console/utils', 'http://www.info-z=
ip.org', 'r5', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', '1', 'Utilities for extracting and viewing =
files in .zip archives.', 'ErrAccess', '6.0', 'ftp://ftp.info-zip.org/pub/i=
nfozip/src/unzip60.tgz', 'Alejandro Hernandez <alejandro.hernandez@linux.in=
tel.com>', 'None']
inserted (unzip,6.0,N/A,BSD-3-Clause,console/utils,r5,1,http://www.info-zip=
=2Eorg,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ,Utilities for extracting and viewing files in .=
zip archives.,6.0,ftp://ftp.info-zip.org/pub/infozip/src/unzip60.tgz,Alejan=
dro Hernandez <alejandro.hernandez@linux.intel.com>)
['xauth', '1.0.9', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros-native virtual/libx11 libxau libxext =
libxmu', 'https://bugs.freedesktop.org', '1', 'X application to edit and di=
splay the authorization information used in connecting to the X server.', '=
ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/xau=
th-1.0.9.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xauth,1.0.9,N/A,MIT-X,x11/apps,r0,1,http://www.x.org/,https://bug=
s.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native vi=
rtual/libx11 libxau libxext libxmu,X application to edit and display the au=
thorization information used in connecting to the X server.,N/A,http://xorg=
=2Efreedesktop.org/releases/individual/app/xauth-1.0.9.tar.bz2,Ross Burton =
<ross.burton@intel.com>)
['libusb-compat', '0.1.5', 'N/A', 'LGPLv2.1+', 'libs', 'http://www.libusb.o=
rg/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  libusb1', 'http://www.libusb.org/rep=
ort', '1', 'libusb-0.1 compatible layer for libusb1, a drop-in replacement =
that aims to look, feel and behave exactly like libusb-0.1', 'ErrAccess', '=
N/A', 'http://downloads.sourceforge.net/libusb/libusb-compat-0.1.5.tar.bz2'=
, 'Alejandro Hernandez <alejandro.hernandez@linux.intel.com>', 'None']
inserted (libusb-compat,0.1.5,N/A,LGPLv2.1+,libs,r0,1,http://www.libusb.org=
/,http://www.libusb.org/report,ErrAccess,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libusb1,=
libusb-0.1 compatible layer for libusb1, a drop-in replacement that aims to=
 look, feel and behave exactly like libusb-0.1,N/A,http://downloads.sourcef=
orge.net/libusb/libusb-compat-0.1.5.tar.bz2,Alejandro Hernandez <alejandro.=
hernandez@linux.intel.com>)
['gnome-common', '3.14.0', 'N/A', 'GPLv2+', 'x11/gnome', 'http://www.gnome.=
org/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nati=
ve gnu-config-native  ', 'https://bugzilla.gnome.org/', 'None', 'Common mac=
ros for building GNOME applications.', 'ErrAccess', 'N/A', 'http://ftp.gnom=
e.org/pub/GNOME/sources/gnome-common/3.14/gnome-common-3.14.0.tar.xz;name=
=3Darchive', 'Alejandro Hernandez <alejandro.hernandez@linux.intel.com>', '=
None']
inserted (gnome-common,3.14.0,N/A,GPLv2+,x11/gnome,r0,None,http://www.gnome=
=2Eorg/,https://bugzilla.gnome.org/,ErrAccess,pkgconfig-native autoconf-nat=
ive automake-native libtool-native gnu-config-native  ,Common macros for bu=
ilding GNOME applications.,N/A,http://ftp.gnome.org/pub/GNOME/sources/gnome=
-common/3.14/gnome-common-3.14.0.tar.xz;name=3Darchive,Alejandro Hernandez =
<alejandro.hernandez@linux.intel.com>)
['libxfont', '1.5.0', 'N/A', 'MIT & MIT-style & BSD', 'x11/libs', 'http://w=
ww.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  util-macros freetype xtrans fon=
tsproto libfontenc zlib', 'https://bugs.freedesktop.org/enter_bug.cgi?produ=
ct=3Dxorg', '1', 'libXfont provides various services for X servers, most no=
tably font selection and rasterisation (through external libraries such as =
freetype).', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/indi=
vidual/lib/libXfont-1.5.0.tar.bz2', 'Ross Burton <ross.burton@intel.com>', =
'None']
inserted (libxfont,1.5.0,N/A,MIT & MIT-style & BSD,x11/libs,r0,1,http://www=
=2Ex.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAcces=
s,pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros freetype xtrans fontsproto libfonte=
nc zlib,libXfont provides various services for X servers, most notably font=
 selection and rasterisation (through external libraries such as freetype).=
,N/A,http://xorg.freedesktop.org/releases/individual/lib/libXfont-1.5.0.tar=
=2Ebz2,Ross Burton <ross.burton@intel.com>)
['puzzles', 'r10116', 'N/A', 'MIT', 'base', 'http://www.chiark.greenend.org=
=2Euk/~sgtatham/puzzles/', 'r0', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  gtk+ libxt', 'None', 'None', "Si=
mon Tatham's Portable Puzzle Collection.", 'ErrUnsupportedProto', 'N/A', 's=
vn://svn.tartarus.org/sgt;module=3Dpuzzles;rev=3D10116', 'Ross Burton <ross=
=2Eburton@intel.com>', 'None']
inserted (puzzles,r10116,N/A,MIT,base,r0,None,http://www.chiark.greenend.or=
g.uk/~sgtatham/puzzles/,None,ErrUnsupportedProto,autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ libxt,Simon =
Tatham's Portable Puzzle Collection.,N/A,svn://svn.tartarus.org/sgt;module=
=3Dpuzzles;rev=3D10116,Ross Burton <ross.burton@intel.com>)
['python-docutils', '0.12', 'N/A', 'PSF & BSD-2-Clause & GPLv3', 'devel/pyt=
hon', 'http://docutils.sourceforge.net', 'r0', ' virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  python python-native p=
ython  python-native ', 'None', 'None', 'Text processing system for documen=
tation.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge.net/docutils/do=
cutils-0.12.tar.gz', 'Richard Purdie <richard.purdie@linuxfoundation.org>',=
 'None']
inserted (python-docutils,0.12,N/A,PSF & BSD-2-Clause & GPLv3,devel/python,=
r0,None,http://docutils.sourceforge.net,None,ErrAccess, virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  python python-n=
ative python  python-native ,Text processing system for documentation.,N/A,=
http://downloads.sourceforge.net/docutils/docutils-0.12.tar.gz,Richard Purd=
ie <richard.purdie@linuxfoundation.org>)
['gtk+', '2.24.24', 'N/A', 'LGPLv2 & LGPLv2+ & LGPLv2.1+', 'libs', 'http://=
www.gtk.org', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  qemu-native glib-2.0 pango a=
tk jpeg libpng gdk-pixbuf-native docbook-utils-native  cairo gdk-pixbuf gtk=
-doc-stub-native virtual/libx11 libxext libxcursor libxrandr libxdamage lib=
xrender libxcomposite virtual/update-alternatives', 'https://bugzilla.gnome=
=2Eorg/', 'None', 'GTK+ is a multi-platform toolkit for creating graphical =
user interfaces. Offering a complete set of widgets, GTK+ is suitable for p=
rojects ranging from small one-off projects to complete application suites.=
', 'ErrAccess', 'N/A', 'http://ftp.gnome.org/pub/gnome/sources/gtk+/2.24/gt=
k+-2.24.24.tar.xz', 'Ross Burton <ross.burton@intel.com>', 'Do not upgrade =
to version: 2.99.2 because prefer stable tree']
inserted (gtk+,2.24.24,N/A,LGPLv2 & LGPLv2+ & LGPLv2.1+,libs,r0,None,http:/=
/www.gtk.org,https://bugzilla.gnome.org/,ErrAccess,pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  qemu-native glib-2.0 pango atk jpeg libpng gdk-pixbuf-native docbook-util=
s-native  cairo gdk-pixbuf gtk-doc-stub-native virtual/libx11 libxext libxc=
ursor libxrandr libxdamage libxrender libxcomposite virtual/update-alternat=
ives,GTK+ is a multi-platform toolkit for creating graphical user interface=
s. Offering a complete set of widgets, GTK+ is suitable for projects rangin=
g from small one-off projects to complete application suites.,N/A,http://ft=
p.gnome.org/pub/gnome/sources/gtk+/2.24/gtk+-2.24.24.tar.xz,Ross Burton <ro=
ss.burton@intel.com>)
['lttng-modules', '2.5.0', '2.5.2+gitAUTOINC+b80f1dfa43', 'LGPLv2.1 & GPLv2=
 & MIT', 'devel', '', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  virtual/kernel virtual/kernel', 'None', '=
None', 'The lttng-modules 2.0 package contains the kernel tracer modules', =
'UPDATE', 'N/A', 'git://git.lttng.org/lttng-modules.git;branch=3Dstable-2.5=
', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (lttng-modules,2.5.0,2.5.2+gitAUTOINC+b80f1dfa43,LGPLv2.1 & GPLv2 =
& MIT,devel,r0,None,,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  virtual/kernel virtual/kernel,The ltt=
ng-modules 2.0 package contains the kernel tracer modules,N/A,git://git.ltt=
ng.org/lttng-modules.git;branch=3Dstable-2.5,Richard Purdie <richard.purdie=
@linuxfoundation.org>)
['gnutls', '3.3.11', 'N/A', 'GPLv3+ & LGPLv2.1+', 'base', 'http://www.gnu.o=
rg/software/gnutls/', 'r0', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  zlib nettle texinfo-native', 'https://savannah.gnu.org/support/?=
group=3Dgnutls', 'None', 'GNU Transport Layer Security Library.', 'ErrAcces=
s', 'N/A', 'ftp://ftp.gnutls.org/gcrypt/gnutls/v3.3/gnutls-3.3.11.tar.xz', =
'Ross Burton <ross.burton@intel.com>', 'None']
inserted (gnutls,3.3.11,N/A,GPLv3+ & LGPLv2.1+,base,r0,None,http://www.gnu.=
org/software/gnutls/,https://savannah.gnu.org/support/?group=3Dgnutls,ErrAc=
cess,pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib nettle t=
exinfo-native,GNU Transport Layer Security Library.,N/A,ftp://ftp.gnutls.or=
g/gcrypt/gnutls/v3.3/gnutls-3.3.11.tar.xz,Ross Burton <ross.burton@intel.co=
m>)
['apmd', '3.2.2-14', 'N/A', 'GPLv2+', 'base', 'http://apenwarr.ca/apmd/', '=
r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  libtool-cross update-rc.d-native initscripts', 'None', 'None', '=
The Advanced Power Management (APM) support provides access to battery stat=
us information and a set of tools for managing notebook power consumption.'=
, 'ErrAccess', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/a/apmd/apmd_3.=
2.2.orig.tar.gz;name=3Dtarball', 'Cristian Iorga <cristian.iorga@intel.com>=
', 'None']
inserted (apmd,3.2.2-14,N/A,GPLv2+,base,r2,None,http://apenwarr.ca/apmd/,No=
ne,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  libtool-cross update-rc.d-native initscripts,The Advanced=
 Power Management (APM) support provides access to battery status informati=
on and a set of tools for managing notebook power consumption.,N/A,ftp://ft=
p.debian.org/debian/pool/main/a/apmd/apmd_3.2.2.orig.tar.gz;name=3Dtarball,=
Cristian Iorga <cristian.iorga@intel.com>)
['libxscrnsaver', '1.2.2', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros libxext scrnsaverproto', 'https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The X Window Sy=
stem provides support for changing the image on a display screen after a us=
er-settable period of inactivity to avoid burning the cathode ray tube phos=
phors. However, no interfaces are provided for the user to control the imag=
e that is drawn. This extension allows an external \\"screen saver\\" clien=
t to detect when the alternate image is to be displayed and to provide the =
graphics.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/indiv=
idual/lib/libXScrnSaver-1.2.2.tar.bz2', 'Ross Burton <ross.burton@intel.com=
>', 'None']
inserted (libxscrnsaver,1.2.2,N/A,MIT,x11/libs,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  util-macros libxext scrnsaverproto,The X Window System provide=
s support for changing the image on a display screen after a user-settable =
period of inactivity to avoid burning the cathode ray tube phosphors. Howev=
er, no interfaces are provided for the user to control the image that is dr=
awn. This extension allows an external \"screen saver\" client to detect wh=
en the alternate image is to be displayed and to provide the graphics.,N/A,=
http://xorg.freedesktop.org/releases/individual/lib/libXScrnSaver-1.2.2.tar=
=2Ebz2,Ross Burton <ross.burton@intel.com>)
['gst-plugins-bad', '0.10.23', 'N/A', 'GPLv2+ & LGPLv2+ & LGPLv2.1+ ', 'mul=
timedia', 'http://gstreamer.freedesktop.org/', 'r4', 'pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base glib-2.0-nat=
ive bzip2 curl librsvg', 'https://bugzilla.gnome.org/enter_bug.cgi?product=
=3DGstreamer', 'None', 'Plugins for the GStreamer multimedia framework.', '=
ErrAccess', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-plugins-bad/gs=
t-plugins-bad-0.10.23.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>'=
, 'not compatible with gst-fluendo 0.10.x']
inserted (gst-plugins-bad,0.10.23,N/A,GPLv2+ & LGPLv2+ & LGPLv2.1+ ,multime=
dia,r4,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/en=
ter_bug.cgi?product=3DGstreamer,ErrAccess,pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native virtual/gett=
ext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  gstreamer gst-plugins-base glib-2.0-native bzip2 cu=
rl librsvg,Plugins for the GStreamer multimedia framework.,N/A,http://gstre=
amer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-0.10.23.tar.bz2,Cr=
istian Iorga <cristian.iorga@intel.com>)
['npth', '1.1', 'N/A', 'LGPLv3+ & GPLv2+', 'libs', 'http://www.gnupg.org/so=
ftware/pth/', 'r0', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  ', 'None', 'None', 'New GNU Portable Threads =
library.', 'ErrAccess', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/npth/npth-1.1.ta=
r.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (npth,1.1,N/A,LGPLv3+ & GPLv2+,libs,r0,None,http://www.gnupg.org/s=
oftware/pth/,None,ErrAccess,autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  ,New GNU Portable Threads library.,N/A=
,ftp://ftp.gnupg.org/gcrypt/npth/npth-1.1.tar.bz2,Saul Wold <sgw@linux.inte=
l.com>)
['ghostscript', '9.15', 'N/A', 'GPLv3', 'console/utils', 'http://www.ghosts=
cript.com', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ghostscript-native tiff jpeg fontconfig cups', =
'None', 'None', 'Ghostscript is used for PostScript/PDF preview and printin=
g.  Usually as a back-end to a program such as ghostview, it can display Po=
stScript and PDF documents in an X11 environment. Furthermore, it can rende=
r PostScript and PDF files as graphics to be printed on non-PostScript prin=
ters. Supported printers include common dot-matrix, inkjet and laser models=
=2E ', 'ErrAccess', 'N/A', 'http://downloads.ghostscript.com/public/ghostsc=
ript-9.15.tar.gz', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (ghostscript,9.15,N/A,GPLv3,console/utils,r0,None,http://www.ghost=
script.com,None,ErrAccess,autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ghostscript-native tiff jpeg fontconfig =
cups,Ghostscript is used for PostScript/PDF preview and printing.  Usually =
as a back-end to a program such as ghostview, it can display PostScript and=
 PDF documents in an X11 environment. Furthermore, it can render PostScript=
 and PDF files as graphics to be printed on non-PostScript printers. Suppor=
ted printers include common dot-matrix, inkjet and laser models. ,N/A,http:=
//downloads.ghostscript.com/public/ghostscript-9.15.tar.gz,Hongxu Jia <hong=
xu.jia@windriver.com>)
['sysvinit', '2.88dsf', 'N/A', 'GPLv2+', 'base', 'http://savannah.nongnu.or=
g/projects/sysvinit/', 'r14', ' virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc   update-rc.d-native base-passwd virtual=
/update-alternatives', 'None', 'None', 'This package is required to boot in=
 most configurations.  It provides the /sbin/init program.  This is the fir=
st process started on boot, and the last process terminated before the syst=
em halts.', 'ErrAccess', 'N/A', 'http://download.savannah.gnu.org/releases/=
sysvinit/sysvinit-2.88dsf.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'Non=
e']
inserted (sysvinit,2.88dsf,N/A,GPLv2+,base,r14,None,http://savannah.nongnu.=
org/projects/sysvinit/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc   update-rc.d-native base-passwd =
virtual/update-alternatives,This package is required to boot in most config=
urations.  It provides the /sbin/init program.  This is the first process s=
tarted on boot, and the last process terminated before the system halts.,N/=
A,http://download.savannah.gnu.org/releases/sysvinit/sysvinit-2.88dsf.tar.b=
z2,Saul Wold <sgw@linux.intel.com>)
['gnu-config', '20120814', 'N/A', 'GPLv2', 'devel', '', 'r0', ' ', 'None', =
'None', 'Tool that installs the GNU config.guess / config.sub into a direct=
ory tree', 'ErrAccess', 'N/A', 'http://downloads.yoctoproject.org/releases/=
gnu-config/gnu-config-20120814.tar.bz2', 'Robert Yang <liezhi.yang@windrive=
r.com>', 'None']
inserted (gnu-config,20120814,N/A,GPLv2,devel,r0,None,,None,ErrAccess, ,Too=
l that installs the GNU config.guess / config.sub into a directory tree,N/A=
,http://downloads.yoctoproject.org/releases/gnu-config/gnu-config-20120814.=
tar.bz2,Robert Yang <liezhi.yang@windriver.com>)
['telepathy-idle', '0.2.0', 'N/A', 'LGPLv2.1', 'base', 'http://telepathy.fr=
eedesktop.org/wiki/', 'r0', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus telepa=
thy-glib openssl libxslt-native  python-native ', 'None', 'None', 'Telepath=
y implementation of the Internet Relay Chat protocols.', 'ErrAccess', 'N/A'=
, 'http://telepathy.freedesktop.org/releases/telepathy-idle/telepathy-idle-=
0.2.0.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (telepathy-idle,0.2.0,N/A,LGPLv2.1,base,r0,None,http://telepathy.f=
reedesktop.org/wiki/,None,ErrAccess,pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus=
 telepathy-glib openssl libxslt-native  python-native ,Telepathy implementa=
tion of the Internet Relay Chat protocols.,N/A,http://telepathy.freedesktop=
=2Eorg/releases/telepathy-idle/telepathy-idle-0.2.0.tar.gz,Cristian Iorga <=
cristian.iorga@intel.com>)
['gst-plugins-good', '0.10.31', 'N/A', 'GPLv2+ & LGPLv2.1+', 'multimedia', =
'http://gstreamer.freedesktop.org/', 'r8', 'pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native virtual/ge=
ttext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  gstreamer gst-plugins-base gconf cairo libpng zli=
b libid3tag flac             speex libsoup-2.4 libcap gconf gconf-native jp=
eg pulseaudio virtual/libx11 libxfixes libxdamage', 'https://bugzilla.gnome=
=2Eorg/enter_bug.cgi?product=3DGstreamer', 'None', 'Plugins for the GStream=
er multimedia framework.', 'ErrAccess', 'N/A', 'http://gstreamer.freedeskto=
p.org/src/gst-plugins-good/gst-plugins-good-0.10.31.tar.bz2', 'Cristian Ior=
ga <cristian.iorga@intel.com>', 'not compatible with gst-fluendo 0.10.x']
inserted (gst-plugins-good,0.10.31,N/A,GPLv2+ & LGPLv2.1+,multimedia,r8,Non=
e,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/enter_bug.cg=
i?product=3DGstreamer,ErrAccess,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native virtual/gettext gettex=
t-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  gstreamer gst-plugins-base gconf cairo libpng zlib libid3tag =
flac             speex libsoup-2.4 libcap gconf gconf-native jpeg pulseaudi=
o virtual/libx11 libxfixes libxdamage,Plugins for the GStreamer multimedia =
framework.,N/A,http://gstreamer.freedesktop.org/src/gst-plugins-good/gst-pl=
ugins-good-0.10.31.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['libid3tag', '0.15.1b', 'N/A', 'GPLv2+', 'libs', 'http://sourceforge.net/p=
rojects/mad/', 'r7', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  zlib gperf-native', 'http:/=
/sourceforge.net/tracker/?group_id=3D12349&atid=3D112349', 'None', 'Library=
 for interacting with ID3 tags in MP3 files.', 'ErrAccess', 'N/A', 'ftp://f=
tp.mars.org/pub/mpeg/libid3tag-0.15.1b.tar.gz', 'Cristian Iorga <cristian.i=
orga@intel.com>', 'None']
inserted (libid3tag,0.15.1b,N/A,GPLv2+,libs,r7,None,http://sourceforge.net/=
projects/mad/,http://sourceforge.net/tracker/?group_id=3D12349&atid=3D11234=
9,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  zlib gperf-native,Library for interac=
ting with ID3 tags in MP3 files.,N/A,ftp://ftp.mars.org/pub/mpeg/libid3tag-=
0.15.1b.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['python-pyrex', '0.9.9', 'N/A', 'Apache-2.0', 'devel/python', '', 'r4', ' =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc   python-native python  python-native ', 'None', 'None', "Pyrex is a lan=
guage specially designed for writing Python extension modules. It's designe=
d to bridge the gap between the nice, high-level, easy-to-use world of Pyth=
on and the messy, low-level world of C.", 'ErrAccess', 'N/A', 'http://www.c=
osc.canterbury.ac.nz/greg.ewing/python/Pyrex/Pyrex-0.9.9.tar.gz', 'Richard =
Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (python-pyrex,0.9.9,N/A,Apache-2.0,devel/python,r4,None,,None,ErrA=
ccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc   python-native python  python-native ,Pyrex is a language specia=
lly designed for writing Python extension modules. It's designed to bridge =
the gap between the nice, high-level, easy-to-use world of Python and the m=
essy, low-level world of C.,N/A,http://www.cosc.canterbury.ac.nz/greg.ewing=
/python/Pyrex/Pyrex-0.9.9.tar.gz,Richard Purdie <richard.purdie@linuxfounda=
tion.org>)
['libxml-sax-perl', '0.99', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', '', '=
r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc   libxml-namespacesupport-perl-native perl perl-native', 'None', =
'None', 'XML::SAX consists of several framework classes for using and build=
ing Perl SAX2 XML parsers, filters, and drivers.  It is designed around the=
 need to be able to "plug in" different SAX parsers to an application witho=
ut requiring programmer intervention.  Those of you familiar with the DBI w=
ill be right at home.  Some of the designs come from the Java JAXP specific=
ation (SAX part), only without the javaness.', 'ErrAccess', 'N/A', 'http://=
search.cpan.org/CPAN/authors/id/G/GR/GRANTM/XML-SAX-0.99.tar.gz', 'Kai Kang=
 <kai.kang@windriver.com>', 'None']
inserted (libxml-sax-perl,0.99,N/A,Artistic-1.0 | GPL-1.0+,libs,r2,None,,No=
ne,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc   libxml-namespacesupport-perl-native perl perl-native,XML=
::SAX consists of several framework classes for using and building Perl SAX=
2 XML parsers, filters, and drivers.  It is designed around the need to be =
able to "plug in" different SAX parsers to an application without requiring=
 programmer intervention.  Those of you familiar with the DBI will be right=
 at home.  Some of the designs come from the Java JAXP specification (SAX p=
art), only without the javaness.,N/A,http://search.cpan.org/CPAN/authors/id=
/G/GR/GRANTM/XML-SAX-0.99.tar.gz,Kai Kang <kai.kang@windriver.com>)
['gstreamer1.0-libav', '1.4.1', 'N/A', 'GPLv2+ & LGPLv2+ & ( (GPLv2+ & LGPL=
v2.1+) | (GPLv3+ & LGPLv3+) )', 'multimedia', 'http://www.gstreamer.net/', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugins-base zli=
b bzip2 orc yasm-native', 'None', 'None', 'Libav-based GStreamer 1.x plugin=
=2E', 'ErrAccess', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-libav/g=
st-libav-1.4.1.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (gstreamer1.0-libav,1.4.1,N/A,GPLv2+ & LGPLv2+ & ( (GPLv2+ & LGPLv=
2.1+) | (GPLv3+ & LGPLv3+) ),multimedia,r0,None,http://www.gstreamer.net/,N=
one,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugins-b=
ase zlib bzip2 orc yasm-native,Libav-based GStreamer 1.x plugin.,N/A,http:/=
/gstreamer.freedesktop.org/src/gst-libav/gst-libav-1.4.1.tar.xz,Cristian Io=
rga <cristian.iorga@intel.com>)
['python-nose', '1.2.1', 'N/A', 'LGPLv2.1', 'devel/python', '', 'r0', ' vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
  python-native python  python-native  python-distribute-native', 'None', '=
None', 'nose extends the test loading and running features of unittest, mak=
ing it easier to write, find and run tests.', 'ErrAccess', 'N/A', 'http://p=
ypi.python.org/packages/source/n/nose/nose-1.2.1.tar.gz', 'Khem Raj <raj.kh=
em@gmail.com>', 'None']
inserted (python-nose,1.2.1,N/A,LGPLv2.1,devel/python,r0,None,,None,ErrAcce=
ss, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc   python-native python  python-native  python-distribute-native,nose=
 extends the test loading and running features of unittest, making it easie=
r to write, find and run tests.,N/A,http://pypi.python.org/packages/source/=
n/nose/nose-1.2.1.tar.gz,Khem Raj <raj.khem@gmail.com>)
['libsdl2', '2.0.3', 'N/A', 'Zlib', 'libs', 'http://www.libsdl.org', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc              virtual/libgl            virtual/lib=
x11 libxext libxrandr libxrender            tslib alsa-lib', 'http://bugzil=
la.libsdl.org/', 'None', 'Simple DirectMedia Layer is a cross-platform mult=
imedia library designed to provide low level access to audio, keyboard, mou=
se, joystick, 3D hardware via OpenGL, and 2D video framebuffer.', 'ErrAcces=
s', 'N/A', 'http://www.libsdl.org/release/SDL2-2.0.3.tar.gz', 'None', 'None=
']
inserted (libsdl2,2.0.3,N/A,Zlib,libs,r0,None,http://www.libsdl.org,http://=
bugzilla.libsdl.org/,ErrAccess,pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc              virtua=
l/libgl            virtual/libx11 libxext libxrandr libxrender            t=
slib alsa-lib,Simple DirectMedia Layer is a cross-platform multimedia libra=
ry designed to provide low level access to audio, keyboard, mouse, joystick=
, 3D hardware via OpenGL, and 2D video framebuffer.,N/A,http://www.libsdl.o=
rg/release/SDL2-2.0.3.tar.gz,None)
['parted', '3.2', 'N/A', 'GPLv3+', 'console/tools', 'http://www.gnu.org/sof=
tware/parted/parted.html', 'r1', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native virtual/gettext gett=
ext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  ncurses readline util-linux texinfo-native', 'None', 'None'=
, 'Disk partition editing/resizing utility.', 'ErrAccess', 'N/A', 'ftp://ft=
p.gnu.org/gnu/parted/parted-3.2.tar.xz', 'Hongxu Jia <hongxu.jia@windriver.=
com>', 'None']
inserted (parted,3.2,N/A,GPLv3+,console/tools,r1,None,http://www.gnu.org/so=
ftware/parted/parted.html,None,ErrAccess,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native virtual/gette=
xt gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  ncurses readline util-linux texinfo-native,Disk part=
ition editing/resizing utility.,N/A,ftp://ftp.gnu.org/gnu/parted/parted-3.2=
=2Etar.xz,Hongxu Jia <hongxu.jia@windriver.com>)
['xmlto', '0.0.25', 'N/A', 'GPLv2', 'docs/xmlto', 'https://fedorahosted.org=
/xmlto/', 'r0', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  ', 'None', 'None', 'A shell-script tool for conve=
rting XML files to various formats.', 'ErrAccess', 'N/A', 'https://fedoraho=
sted.org/releases/x/m/xmlto/xmlto-0.0.25.tar.gz', 'Hongxu Jia <hongxu.jia@w=
indriver.com>', 'None']
inserted (xmlto,0.0.25,N/A,GPLv2,docs/xmlto,r0,None,https://fedorahosted.or=
g/xmlto/,None,ErrAccess,autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  ,A shell-script tool for converting XML fi=
les to various formats.,N/A,https://fedorahosted.org/releases/x/m/xmlto/xml=
to-0.0.25.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['gtk-sato-engine', '0.3.3+gitAUTOINC+4740ad8d53', '0.3.3+gitAUTOINC+4740ad=
8d53', 'LGPLv2.1 & LGPLv2+', 'x11/base', 'http://www.o-hand.com', 'r0', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  gtk+', 'http://bugzilla.yoctoproject.org/', 'None',=
 'Sato theme engine for GTK+.', 'MATCH', 'N/A', 'git://git.yoctoproject.org=
/gtk-sato-engine', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (gtk-sato-engine,0.3.3+gitAUTOINC+4740ad8d53,0.3.3+gitAUTOINC+4740=
ad8d53,LGPLv2.1 & LGPLv2+,x11/base,r0,None,http://www.o-hand.com,http://bug=
zilla.yoctoproject.org/,MATCH,pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+,Sato theme eng=
ine for GTK+.,N/A,git://git.yoctoproject.org/gtk-sato-engine,Ross Burton <r=
oss.burton@intel.com>)
['xcb-util-image', '0.3.9', 'N/A', 'MIT', 'x11/libs', 'http://xcb.freedeskt=
op.org/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native xcb-=
util', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', =
'The xcb-util module provides a number of libraries which sit on top of lib=
xcb, the core X protocol library, and some of the extension libraries. Thes=
e experimental libraries provide convenience functions and interfaces which=
 make the raw X protocol more usable. Some of the libraries also provide cl=
ient-side code which is not strictly part of the X protocol but which have =
traditionally been provided by Xlib.', 'ErrAccess', 'N/A', 'http://xcb.free=
desktop.org/dist/xcb-util-image-0.3.9.tar.bz2', 'Ross Burton <ross.burton@i=
ntel.com>', 'None']
inserted (xcb-util-image,0.3.9,N/A,MIT,x11/libs,r0,None,http://xcb.freedesk=
top.org/XcbUtil/,https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,E=
rrAccess,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  libxcb gperf-native xcb-util,The xcb-uti=
l module provides a number of libraries which sit on top of libxcb, the cor=
e X protocol library, and some of the extension libraries. These experiment=
al libraries provide convenience functions and interfaces which make the ra=
w X protocol more usable. Some of the libraries also provide client-side co=
de which is not strictly part of the X protocol but which have traditionall=
y been provided by Xlib.,N/A,http://xcb.freedesktop.org/dist/xcb-util-image=
-0.3.9.tar.bz2,Ross Burton <ross.burton@intel.com>)
['chkconfig-alternatives-native', '1.3.59+AUTOINC+cd437ecbd8', '1.3.59+gitA=
UTOINC+cd437ecbd8', 'GPLv2', 'base', 'http://fedorahosted.org/releases/c/h/=
chkconfig', 'r7', 'gettext-minimal-native  ', 'None', 'None', '${DESCRIPTIO=
N_chkconfig-alternatives}', 'UPDATE', 'N/A', 'git://github.com/kergoth/chkc=
onfig;branch=3Dsysroot', 'Wenzong Fan <wenzong.fan@windriver.com>', 'None']
inserted (chkconfig-alternatives-native,1.3.59+AUTOINC+cd437ecbd8,1.3.59+gi=
tAUTOINC+cd437ecbd8,GPLv2,base,r7,None,http://fedorahosted.org/releases/c/h=
/chkconfig,None,UPDATE,gettext-minimal-native  ,${DESCRIPTION_chkconfig-alt=
ernatives},N/A,git://github.com/kergoth/chkconfig;branch=3Dsysroot,Wenzong =
Fan <wenzong.fan@windriver.com>)
['util-macros', '1.19.0', 'N/A', 'MIT & MIT-style', 'x11/utils', 'http://ww=
w.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ', 'https://bugs.freedesktop.org=
/enter_bug.cgi?product=3Dxorg', '1', 'M4 autotools macros used by various X=
=2Eorg programs.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/release=
s/individual/util/util-macros-1.19.0.tar.gz', 'Ross Burton <ross.burton@int=
el.com>', 'None']
inserted (util-macros,1.19.0,N/A,MIT & MIT-style,x11/utils,r0,1,http://www.=
x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  ,M4 autotools macros used by various X.org program=
s.,N/A,http://xorg.freedesktop.org/releases/individual/util/util-macros-1.1=
9.0.tar.gz,Ross Burton <ross.burton@intel.com>)
['squashfs-tools', '4.3', 'N/A', 'GPL-2 & PD', 'base', '', 'r0', ' virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  attr=
 zlib xz lzo lz4', 'None', 'None', 'Tools for manipulating SquashFS filesys=
tems.', 'ErrAccess', '4.2', 'http://downloads.sourceforge.net/squashfs/squa=
shfs4.3.tar.gz;name=3Dsquashfs', 'Robert Yang <liezhi.yang@windriver.com>',=
 'None']
inserted (squashfs-tools,4.3,N/A,GPL-2 & PD,base,r0,None,,None,ErrAccess, v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  attr zlib xz lzo lz4,Tools for manipulating SquashFS filesystems.,4.2,ht=
tp://downloads.sourceforge.net/squashfs/squashfs4.3.tar.gz;name=3Dsquashfs,=
Robert Yang <liezhi.yang@windriver.com>)
['libinput', '0.6.0', 'N/A', 'MIT', 'libs', 'http://www.freedesktop.org/wik=
i/Software/libinput/', 'r0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libevdev udev mtdev=
', 'None', 'None', 'Library to handle input devices in Wayland compositors.=
', 'ErrAccess', 'N/A', 'http://www.freedesktop.org/software/libinput/libinp=
ut-0.6.0.tar.xz', 'None', 'None']
inserted (libinput,0.6.0,N/A,MIT,libs,r0,None,http://www.freedesktop.org/wi=
ki/Software/libinput/,None,ErrAccess,pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libevdev ude=
v mtdev,Library to handle input devices in Wayland compositors.,N/A,http://=
www.freedesktop.org/software/libinput/libinput-0.6.0.tar.xz,None)
['libxslt', '1.1.28', 'N/A', 'MIT', 'libs', 'http://xmlsoft.org/XSLT/', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  libxml2', 'https://bugzilla.gnome.org/', 'Non=
e', 'GNOME XSLT library.', 'ErrAccess', 'N/A', 'ftp://xmlsoft.org/libxslt//=
libxslt-1.1.28.tar.gz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxslt,1.1.28,N/A,MIT,libs,r0,None,http://xmlsoft.org/XSLT/,http=
s://bugzilla.gnome.org/,ErrAccess,pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxml2,GNOME X=
SLT library.,N/A,ftp://xmlsoft.org/libxslt//libxslt-1.1.28.tar.gz,Ross Burt=
on <ross.burton@intel.com>)
['python-pycairo', '1.10.0', 'N/A', 'LGPLv2.1 & MPL-1.1', 'python-devel', '=
http://cairographics.org/pycairo', 'r2', 'pkgconfig-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  cairo pytho=
n-native python  python-native ', 'http://bugs.freedesktop.org', 'None', 'P=
ython bindings for the Cairo canvas library.', 'ErrAccess', 'N/A', 'http://=
cairographics.org/releases/py2cairo-1.10.0.tar.bz2', 'Richard Purdie <richa=
rd.purdie@linuxfoundation.org>', 'None']
inserted (python-pycairo,1.10.0,N/A,LGPLv2.1 & MPL-1.1,python-devel,r2,None=
,http://cairographics.org/pycairo,http://bugs.freedesktop.org,ErrAccess,pkg=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  cairo python-native python  python-native ,Python bindin=
gs for the Cairo canvas library.,N/A,http://cairographics.org/releases/py2c=
airo-1.10.0.tar.bz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['libxshmfence', '1.1', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros virtual/libx11', 'https://bug=
s.freedesktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'This library offe=
rs a CPU-based synchronization primitive compatible with the X SyncFence ob=
jects that can be shared between processes using file descriptor passing.',=
 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/l=
ibxshmfence-1.1.tar.bz2', 'None', 'None']
inserted (libxshmfence,1.1,N/A,MIT-style,x11/libs,r0,None,http://www.x.org,=
https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  util-macros virtual/libx11,This library offers a CPU-bas=
ed synchronization primitive compatible with the X SyncFence objects that c=
an be shared between processes using file descriptor passing.,N/A,http://xo=
rg.freedesktop.org/releases/individual/lib/libxshmfence-1.1.tar.bz2,None)
['mktemp', '1.7', 'N/A', 'ISC', 'console/utils', 'http://www.mktemp.org/', =
'r3', 'autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc   virtual/update-alternatives', 'http://www.mktemp.org/bugs'=
, 'None', 'Enables safe temporary file creation from shell scripts.', 'ErrA=
ccess', 'N/A', 'ftp://ftp.mktemp.org/pub/mktemp/mktemp-1.7.tar.gz', 'Chong =
Lu <Chong.Lu@windriver.com>', 'None']
inserted (mktemp,1.7,N/A,ISC,console/utils,r3,None,http://www.mktemp.org/,h=
ttp://www.mktemp.org/bugs,ErrAccess,autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc   virtual/update-alternatives,E=
nables safe temporary file creation from shell scripts.,N/A,ftp://ftp.mktem=
p.org/pub/mktemp/mktemp-1.7.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['xf86-video-vmware', '13.0.2', 'N/A', 'MIT-X', 'x11/drivers', 'http://www.=
x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextproto f=
ontsproto virtual/xserver xproto randrproto util-macros virtual/libx11 xine=
ramaproto videoproto libpciaccess', 'https://bugs.freedesktop.org', '2', 'v=
mware is an Xorg driver for VMware virtual video cards.', 'ErrAccess', 'N/A=
', 'http://xorg.freedesktop.org/releases/individual/driver/xf86-video-vmwar=
e-13.0.2.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86-video-vmware,13.0.2,N/A,MIT-X,x11/drivers,r0,2,http://www.x.=
org,https://bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  render=
proto videoproto xextproto fontsproto virtual/xserver xproto randrproto uti=
l-macros virtual/libx11 xineramaproto videoproto libpciaccess,vmware is an =
Xorg driver for VMware virtual video cards.,N/A,http://xorg.freedesktop.org=
/releases/individual/driver/xf86-video-vmware-13.0.2.tar.bz2,Ross Burton <r=
oss.burton@intel.com>)
['libunistring', '0.9.4', 'N/A', 'GPLv3&LGPLv3', 'devel', 'http://www.gnu.o=
rg/software/libunistring/', 'r0', 'autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc   texinfo-native', 'None', 'None=
', "Text files are nowadays usually encoded in Unicode, and may consist of =
very different scripts from Latin letters to Chinese Hanzi with many kinds =
of special characters accents, right-to-left writing marks, hyphens, Roman =
numbers, and much more. But the POSIX platform APIs for text do not contain=
 adequate functions for dealing with particular properties of many Unicode =
characters. In fact, the POSIX APIs for text have several assumptions at th=
eir base which don't hold for Unicode text.  This library provides function=
s for manipulating Unicode strings and for manipulating C strings according=
 to the Unicode standard.  This package contains documentation.", 'ErrAcces=
s', 'N/A', 'ftp://ftp.gnu.org/gnu/libunistring/libunistring-0.9.4.tar.gz', =
'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (libunistring,0.9.4,N/A,GPLv3&LGPLv3,devel,r0,None,http://www.gnu.=
org/software/libunistring/,None,ErrAccess,autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native,Text fil=
es are nowadays usually encoded in Unicode, and may consist of very differe=
nt scripts from Latin letters to Chinese Hanzi with many kinds of special c=
haracters accents, right-to-left writing marks, hyphens, Roman numbers, and=
 much more. But the POSIX platform APIs for text do not contain adequate fu=
nctions for dealing with particular properties of many Unicode characters. =
In fact, the POSIX APIs for text have several assumptions at their base whi=
ch don't hold for Unicode text.  This library provides functions for manipu=
lating Unicode strings and for manipulating C strings according to the Unic=
ode standard.  This package contains documentation.,N/A,ftp://ftp.gnu.org/g=
nu/libunistring/libunistring-0.9.4.tar.gz,Richard Purdie <richard.purdie@li=
nuxfoundation.org>)
['elfutils', '0.148', 'N/A', '(GPL-2+ & Elfutils-Exception)', 'base', 'http=
s://fedorahosted.org/elfutils', 'r11', 'autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native virtual/gettext gettext-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  libtool bzip2 zlib virtual/libintl', 'None', 'None', 'Utilities and li=
braries for handling compiled object files.', 'ErrAccess', 'N/A', 'https://=
fedorahosted.org/releases/e/l/elfutils/elfutils-0.148.tar.bz2', 'Hongxu Jia=
 <hongxu.jia@windriver.com>', 'None']
inserted (elfutils,0.148,N/A,(GPL-2+ & Elfutils-Exception),base,r11,None,ht=
tps://fedorahosted.org/elfutils,None,ErrAccess,autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native virtual/gettext gettext-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  libtool bzip2 zlib virtual/libintl,Utilities and libraries for =
handling compiled object files.,N/A,https://fedorahosted.org/releases/e/l/e=
lfutils/elfutils-0.148.tar.bz2,Hongxu Jia <hongxu.jia@windriver.com>)
['libproxy', '0.4.11', 'N/A', 'LGPLv2.1+', 'libs', 'http://code.google.com/=
p/libproxy/', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native cmake-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gconf glib-2.0'=
, 'http://code.google.com/p/libproxy/issues/list', 'None', 'Library providi=
ng automatic proxy configuration management.', 'ErrAccess', 'N/A', 'http://=
libproxy.googlecode.com/files/libproxy-0.4.11.zip', 'Cristian Iorga <cristi=
an.iorga@intel.com>', 'None']
inserted (libproxy,0.4.11,N/A,LGPLv2.1+,libs,r0,None,http://code.google.com=
/p/libproxy/,http://code.google.com/p/libproxy/issues/list,ErrAccess,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native cmake-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  gconf glib-2.0,Library providing automatic=
 proxy configuration management.,N/A,http://libproxy.googlecode.com/files/l=
ibproxy-0.4.11.zip,Cristian Iorga <cristian.iorga@intel.com>)
['libevdev', '1.2.2', 'N/A', 'MIT-X', 'libs', 'http://www.freedesktop.org/w=
iki/Software/libevdev/', 'r0', 'pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None'=
, 'Wrapper library for evdev devices.', 'ErrAccess', 'N/A', 'http://www.fre=
edesktop.org/software/libevdev/libevdev-1.2.2.tar.xz', 'Paul Eggleton <paul=
=2Eeggleton@linux.intel.com>', 'None']
inserted (libevdev,1.2.2,N/A,MIT-X,libs,r0,None,http://www.freedesktop.org/=
wiki/Software/libevdev/,None,ErrAccess,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Wrapper l=
ibrary for evdev devices.,N/A,http://www.freedesktop.org/software/libevdev/=
libevdev-1.2.2.tar.xz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['libgpg-error', '1.12', 'N/A', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://www.g=
nupg.org/related_software/libgpg-error/', 'r0', 'pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native virtu=
al/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ', 'https://bugs.g10code.com/gnupg/index', '=
None', 'Small library that defines common error values for all GnuPG compon=
ents.', 'ErrAccess', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/libgpg-error/libgpg=
-error-1.12.tar.bz2', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'Non=
e']
inserted (libgpg-error,1.12,N/A,GPLv2+ & LGPLv2.1+,libs,r0,None,http://www.=
gnupg.org/related_software/libgpg-error/,https://bugs.g10code.com/gnupg/ind=
ex,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Smal=
l library that defines common error values for all GnuPG components.,N/A,ft=
p://ftp.gnupg.org/gcrypt/libgpg-error/libgpg-error-1.12.tar.bz2,Paul Egglet=
on <paul.eggleton@linux.intel.com>)
['gettext-minimal-native', '0.18.3.2', '0.18.3.2', 'FSF-Unlimited', 'base',=
 '', 'r0', ' ', 'None', 'None', 'Contains the m4 macros sufficient to suppo=
rt building autoconf/automake. This provides a significant build time speed=
up by the removal of gettext-native from most dependency chains (now only n=
eeded for gettext for the target).', 'MATCH', 'N/A', 'file://aclocal.tgz   =
         file://config.rpath            file://Makefile.in.in            fi=
le://remove-potcdate.sin            file://COPYING            file://iconv-=
m4-remove-the-test-to-convert-euc-jp.patch ', 'Hongxu Jia <hongxu.jia@windr=
iver.com>', 'None']
inserted (gettext-minimal-native,0.18.3.2,0.18.3.2,FSF-Unlimited,base,r0,No=
ne,,None,MATCH, ,Contains the m4 macros sufficient to support building auto=
conf/automake. This provides a significant build time speedup by the remova=
l of gettext-native from most dependency chains (now only needed for gettex=
t for the target).,N/A,file://aclocal.tgz            file://config.rpath   =
         file://Makefile.in.in            file://remove-potcdate.sin       =
     file://COPYING            file://iconv-m4-remove-the-test-to-convert-e=
uc-jp.patch ,Hongxu Jia <hongxu.jia@windriver.com>)
['quicky', '0.4', 'N/A', 'GPLv2+', 'x11/apps', 'http://qt-apps.org/content/=
show.php/Quicky?content=3D80325', 'r2', 'qt4-tools-native qt4-x11  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', '=
None', 'None', 'A simple note-taking application with Wiki-style syntax and=
 behaviour.', 'ErrAccess', 'N/A', 'http://qt-apps.org/CONTENT/content-files=
/80325-quicky-0.4.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>',=
 'None']
inserted (quicky,0.4,N/A,GPLv2+,x11/apps,r2,None,http://qt-apps.org/content=
/show.php/Quicky?content=3D80325,None,ErrAccess,qt4-tools-native qt4-x11  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  ,A simple note-taking application with Wiki-style syntax and behaviour.,=
N/A,http://qt-apps.org/CONTENT/content-files/80325-quicky-0.4.tar.gz,Paul E=
ggleton <paul.eggleton@linux.intel.com>)
['rxvt-unicode', '9.20', 'N/A', 'GPLv2+', 'x11/utils', '', 'r0', 'autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
virtual/libx11 libxt libxft gdk-pixbuf virtual/update-alternatives', 'None'=
, 'None', 'rxvt-unicode is a clone of the well known terminal emulator rxvt=
, modified to store text in Unicode (either UCS-2 or UCS-4) and to use loca=
le-correct input and output. It also supports mixing multiple fonts at the =
same time, including Xft fonts.', 'ErrAccess', 'N/A', 'http://dist.schmorp.=
de/rxvt-unicode/Attic/rxvt-unicode-9.20.tar.bz2', 'Saul Wold <sgw@linux.int=
el.com>', 'None']
inserted (rxvt-unicode,9.20,N/A,GPLv2+,x11/utils,r0,None,,None,ErrAccess,au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  virtual/libx11 libxt libxft gdk-pixbuf virtual/update-alternatives,r=
xvt-unicode is a clone of the well known terminal emulator rxvt, modified t=
o store text in Unicode (either UCS-2 or UCS-4) and to use locale-correct i=
nput and output. It also supports mixing multiple fonts at the same time, i=
ncluding Xft fonts.,N/A,http://dist.schmorp.de/rxvt-unicode/Attic/rxvt-unic=
ode-9.20.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['libowl-av', '0.1+gitAUTOINC+03030c41ea', '0.1+gitAUTOINC+03030c41ea', 'LG=
PLv2+', 'x11', 'http://www.o-hand.com', 'r3', 'pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gt=
k+ gstreamer gst-plugins-base', 'http://bugzilla.yoctoproject.org/', 'None'=
, 'OpenedHand Widget Library Audio/Video.', 'MATCH', 'N/A', 'git://git.yoct=
oproject.org/libowl-av', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libowl-av,0.1+gitAUTOINC+03030c41ea,0.1+gitAUTOINC+03030c41ea,LGP=
Lv2+,x11,r3,None,http://www.o-hand.com,http://bugzilla.yoctoproject.org/,MA=
TCH,pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  gtk+ gstreamer gst-plugins-base,OpenedHand Wi=
dget Library Audio/Video.,N/A,git://git.yoctoproject.org/libowl-av,Ross Bur=
ton <ross.burton@intel.com>)
['init-ifupdown', '1.0', '1.0', 'GPLv2', 'base', 'http://packages.debian.or=
g/ifupdown', 'r7', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc   update-rc.d-native initscripts', 'None', 'None', =
'This package provides high level tools to configure network interfaces', '=
MATCH', 'N/A', 'file://copyright            file://init            file://i=
nterfaces            file://nfsroot', 'None', 'None']
inserted (init-ifupdown,1.0,1.0,GPLv2,base,r7,None,http://packages.debian.o=
rg/ifupdown,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc   update-rc.d-native initscripts,This package pr=
ovides high level tools to configure network interfaces,N/A,file://copyrigh=
t            file://init            file://interfaces            file://nfs=
root,None)
['tslib', '1.1', 'N/A', 'LGPLv2', 'base', 'http://tslib.berlios.de/', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'None', 'None', 'Tslib is an abstraction lay=
er for touchscreen panel events, as well as a filter stack for the manipula=
tion of those events. Tslib is generally used on embedded devices to provid=
e a common user space interface to touchscreen functionality.', 'ErrAccess'=
, 'N/A', 'https://github.com/kergoth/tslib/releases/download/1.1/tslib-1.1.=
tar.xz;downloadfilename=3Dtslib-1.1.tar.xz', 'Paul Eggleton <paul.eggleton@=
linux.intel.com>', 'None']
inserted (tslib,1.1,N/A,LGPLv2,base,r0,None,http://tslib.berlios.de/,None,E=
rrAccess,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ,Tslib is an abstraction layer for touch=
screen panel events, as well as a filter stack for the manipulation of thos=
e events. Tslib is generally used on embedded devices to provide a common u=
ser space interface to touchscreen functionality.,N/A,https://github.com/ke=
rgoth/tslib/releases/download/1.1/tslib-1.1.tar.xz;downloadfilename=3Dtslib=
-1.1.tar.xz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['libxext', '1.3.2', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros xproto virtual/libx11 xextproto =
libxau libxdmcp', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxor=
g', '1', 'libXext provides an X Window System client interface to several e=
xtensions to the X protocol.  The supported protocol extensions are DOUBLE-=
BUFFER, DPMS, Extended-Visual-Information, LBX, MIT_SHM, MIT_SUNDRY-NONSTAN=
DARD, Multi-Buffering, SECURITY, SHAPE, SYNC, TOG-CUP, XC-APPGROUP, XC-MISC=
, XTEST.  libXext also provides a small set of utility functions to aid aut=
hors of client APIs for X protocol extensions.', 'ErrAccess', 'N/A', 'http:=
//xorg.freedesktop.org/releases/individual/lib/libXext-1.3.2.tar.bz2', 'Ros=
s Burton <ross.burton@intel.com>', 'None']
inserted (libxext,1.3.2,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  util-macros xproto virtual/libx11 xextproto libxau libxdmcp,li=
bXext provides an X Window System client interface to several extensions to=
 the X protocol.  The supported protocol extensions are DOUBLE-BUFFER, DPMS=
, Extended-Visual-Information, LBX, MIT_SHM, MIT_SUNDRY-NONSTANDARD, Multi-=
Buffering, SECURITY, SHAPE, SYNC, TOG-CUP, XC-APPGROUP, XC-MISC, XTEST.  li=
bXext also provides a small set of utility functions to aid authors of clie=
nt APIs for X protocol extensions.,N/A,http://xorg.freedesktop.org/releases=
/individual/lib/libXext-1.3.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['boost', '1.57.0', 'N/A', 'BSL-1.0 & MIT & Python-2.0', 'libs', 'http://ww=
w.boost.org/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  bjam-native zlib bzip2', 'None', 'None', 'Free p=
eer-reviewed portable C++ source libraries.', 'ErrAccess', 'N/A', 'http://d=
ownloads.sourceforge.net/boost/boost_1_57_0.tar.bz2', 'Saul Wold <sgw@linux=
=2Eintel.com>', 'None']
inserted (boost,1.57.0,N/A,BSL-1.0 & MIT & Python-2.0,libs,r0,None,http://w=
ww.boost.org/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  bjam-native zlib bzip2,Free peer-reviewed=
 portable C++ source libraries.,N/A,http://downloads.sourceforge.net/boost/=
boost_1_57_0.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['dbus-test', '1.8.10', 'N/A', 'AFL-2 | GPLv2+', 'base', 'http://dbus.freed=
esktop.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native virtual/gettext gettext-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  python-pygobject dbus dbus-glib', 'None', 'None', 'D-Bus test package (fo=
r D-bus functionality testing only).', 'ErrAccess', 'N/A', 'http://dbus.fre=
edesktop.org/releases/dbus/dbus-1.8.10.tar.gz', 'None', 'None']
inserted (dbus-test,1.8.10,N/A,AFL-2 | GPLv2+,base,r0,None,http://dbus.free=
desktop.org,None,ErrAccess,pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  python-pygobject dbus dbus-glib,D-Bus test package (for D-bus func=
tionality testing only).,N/A,http://dbus.freedesktop.org/releases/dbus/dbus=
-1.8.10.tar.gz,None)
['libpod-plainer-perl', '1.04', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', '=
http://search.cpan.org/dist/Pod-Plainer/', 'r0', ' virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native', =
'None', 'None', "Pod::Plainer uses Pod::Parser which takes Pod with the (ne=
w) 'C<< .. >>' constructs and returns the old(er) style with just 'C<>'; '<=
' and '>' are replaced by 'E<lt>' and 'E<gt>'. This can be used to pre-proc=
ess Pod before using tools which do not recognise the new style Pods.", 'Er=
rAccess', 'N/A', 'http://search.cpan.org/CPAN/authors/id/R/RM/RMBARKER/Pod-=
Plainer-1.04.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libpod-plainer-perl,1.04,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,None=
,http://search.cpan.org/dist/Pod-Plainer/,None,ErrAccess, virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-na=
tive,Pod::Plainer uses Pod::Parser which takes Pod with the (new) 'C<< .. >=
>' constructs and returns the old(er) style with just 'C<>'; '<' and '>' ar=
e replaced by 'E<lt>' and 'E<gt>'. This can be used to pre-process Pod befo=
re using tools which do not recognise the new style Pods.,N/A,http://search=
=2Ecpan.org/CPAN/authors/id/R/RM/RMBARKER/Pod-Plainer-1.04.tar.gz,Saul Wold=
 <sgw@linux.intel.com>)
['irda-utils', '0.9.18', 'N/A', 'GPLv2+', 'base', 'http://irda.sourceforge.=
net/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc   update-rc.d-native initscripts', 'irda-users@lists.sour=
ceforge.net', 'None', 'Provides common files needed to use IrDA. IrDA allow=
s communication over Infrared with other devices such as phones and laptops=
=2E', 'ErrAccess', 'N/A', 'http://downloads.sourceforge.net/irda/irda-utils=
-0.9.18.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (irda-utils,0.9.18,N/A,GPLv2+,base,r0,None,http://irda.sourceforge=
=2Enet/,irda-users@lists.sourceforge.net,ErrAccess, virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   update-rc.d-native=
 initscripts,Provides common files needed to use IrDA. IrDA allows communic=
ation over Infrared with other devices such as phones and laptops.,N/A,http=
://downloads.sourceforge.net/irda/irda-utils-0.9.18.tar.gz,Cristian Iorga <=
cristian.iorga@intel.com>)
['vala', '0.26.1', 'N/A', 'LGPLv2.1', 'devel', 'http://vala-project.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  bison-native flex-native libxslt-native gli=
b-2.0', 'None', 'None', 'Vala is a C#-like language dedicated to ease GObje=
ct programming. Vala compiles to plain C and has no runtime environment nor=
 penalities whatsoever.', 'ErrAccess', 'N/A', 'http://ftp.gnome.org/pub/GNO=
ME/sources/vala/0.26/vala-0.26.1.tar.xz', 'Ross Burton <ross.burton@intel.c=
om>', 'None']
inserted (vala,0.26.1,N/A,LGPLv2.1,devel,r0,None,http://vala-project.org,No=
ne,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  bison-native flex-native libxslt-nat=
ive glib-2.0,Vala is a C#-like language dedicated to ease GObject programmi=
ng. Vala compiles to plain C and has no runtime environment nor penalities =
whatsoever.,N/A,http://ftp.gnome.org/pub/GNOME/sources/vala/0.26/vala-0.26.=
1.tar.xz,Ross Burton <ross.burton@intel.com>)
['gawk', '4.1.1', 'N/A', 'GPLv3', 'console/utils', 'www.gnu.org/software/ga=
wk', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc   readline texinfo-nativ=
e virtual/update-alternatives', 'bug-gawk@gnu.org', 'None', 'The GNU versio=
n of awk, a text processing utility. Awk interprets a special-purpose progr=
amming language to do quick and easy text pattern matching and reformatting=
 jobs.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/gawk/gawk-4.1.1.tar.gz'=
, 'Chen Qi <Qi.Chen@windriver.com>', 'Version 4.1.0 requires Automake 1.13,=
 but have 1.12.6']
inserted (gawk,4.1.1,N/A,GPLv3,console/utils,r0,None,www.gnu.org/software/g=
awk,bug-gawk@gnu.org,ErrAccess,autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   rea=
dline texinfo-native virtual/update-alternatives,The GNU version of awk, a =
text processing utility. Awk interprets a special-purpose programming langu=
age to do quick and easy text pattern matching and reformatting jobs.,N/A,f=
tp://ftp.gnu.org/gnu/gawk/gawk-4.1.1.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['oh-puzzles', '0.2+gitAUTOINC+92f1a20e4b', '0.2+gitAUTOINC+92f1a20e4b', 'M=
IT', 'x11', 'http://o-hand.com/', 'r10', 'pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ gc=
onf intltool-native librsvg libowl', 'http://bugzilla.yoctoproject.org/', '=
None', 'Portable Puzzle Collection.', 'MATCH', 'N/A', 'git://git.yoctoproje=
ct.org/oh-puzzles', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (oh-puzzles,0.2+gitAUTOINC+92f1a20e4b,0.2+gitAUTOINC+92f1a20e4b,MI=
T,x11,r10,None,http://o-hand.com/,http://bugzilla.yoctoproject.org/,MATCH,p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  gtk+ gconf intltool-native librsvg libowl,Portable=
 Puzzle Collection.,N/A,git://git.yoctoproject.org/oh-puzzles,Ross Burton <=
ross.burton@intel.com>)
['xinetd', '2.3.15', 'N/A', 'BSD', 'base', 'http://www.xinetd.org', 'r2', '=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc   update-rc.d-native initscripts tcp-wrappers', 'None', 'None', 'So=
cket-based service activation daemon.', 'ErrAccess', 'N/A', 'http://www.xin=
etd.org/xinetd-2.3.15.tar.gz', 'An\xc3\xadbal Lim\xc3\xb3n <anibal.limon@li=
nux.intel.com>', 'None']
inserted (xinetd,2.3.15,N/A,BSD,base,r2,None,http://www.xinetd.org,None,Err=
Access,autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc   update-rc.d-native initscripts tcp-wrappers,Socket-based s=
ervice activation daemon.,N/A,http://www.xinetd.org/xinetd-2.3.15.tar.gz,An=
?bal Lim?n <anibal.limon@linux.intel.com>)
['connman-gnome', '0.7', '0.7+gitAUTOINC+fe1a60aa30', 'GPLv2 & LGPLv2.1', '=
libs/network', 'http://connman.net/', 'r0', 'pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+=
 dbus-glib intltool-native hicolor-icon-theme gtk-update-icon-cache-native'=
, 'None', 'None', 'GTK+ frontend for the ConnMan network connection manager=
=2E', 'UPDATE', 'N/A', 'git://github.com/connectivity/connman-gnome.git', '=
Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (connman-gnome,0.7,0.7+gitAUTOINC+fe1a60aa30,GPLv2 & LGPLv2.1,libs=
/network,r0,None,http://connman.net/,None,UPDATE,pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
gtk+ dbus-glib intltool-native hicolor-icon-theme gtk-update-icon-cache-nat=
ive,GTK+ frontend for the ConnMan network connection manager.,N/A,git://git=
hub.com/connectivity/connman-gnome.git,Cristian Iorga <cristian.iorga@intel=
=2Ecom>)
['tremor', '20120314', 'N/A', 'BSD', 'libs', '', 'r1', 'pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  libogg', 'None', 'None', 'tremor is a fixed point implementation of =
the vorbis codec.', 'ErrUnsupportedProto', '20120122', 'svn://svn.xiph.org/=
trunk;module=3DTremor;rev=3D18221;protocol=3Dhttp', 'Cristian Iorga <cristi=
an.iorga@intel.com>', 'Same revision on different SVN modules']
inserted (tremor,20120314,N/A,BSD,libs,r1,None,,None,ErrUnsupportedProto,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  libogg,tremor is a fixed point implementation of th=
e vorbis codec.,20120122,svn://svn.xiph.org/trunk;module=3DTremor;rev=3D182=
21;protocol=3Dhttp,Cristian Iorga <cristian.iorga@intel.com>)
['clutter-1.0', '1.18.2', 'N/A', 'LGPLv2.1+', 'base', 'http://www.clutter-p=
roject.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  pango glib-2.0 json-glib atk udev cogl-1.0 gtk-doc-stub-native virtual/l=
ibx11 libxi libxfixes virtual/libgl wayland libxkbcommon gdk-pixbuf virtual=
/libx11 libxi libxfixes', 'None', 'None', 'Graphics library for creating ha=
rdware-accelerated user interfaces.', 'ErrAccess', 'N/A', 'http://ftp.gnome=
=2Eorg/pub/GNOME/sources/clutter/1.18/clutter-1.18.2.tar.xz;name=3Darchive'=
, 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (clutter-1.0,1.18.2,N/A,LGPLv2.1+,base,r0,None,http://www.clutter-=
project.org/,None,ErrAccess,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native virtual/gettext gettext-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  pango glib-2.0 json-glib atk udev cogl-1.0 gtk-doc-stub-native vi=
rtual/libx11 libxi libxfixes virtual/libgl wayland libxkbcommon gdk-pixbuf =
virtual/libx11 libxi libxfixes,Graphics library for creating hardware-accel=
erated user interfaces.,N/A,http://ftp.gnome.org/pub/GNOME/sources/clutter/=
1.18/clutter-1.18.2.tar.xz;name=3Darchive,Ross Burton <ross.burton@intel.co=
m>)
['shadow-securetty', '4.2.1', '4.2.1', 'MIT', 'base utils', '', 'r3', ' ', =
'None', 'None', 'Provider of the machine specific securetty file.', 'MATCH'=
, 'N/A', 'file://securetty', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (shadow-securetty,4.2.1,4.2.1,MIT,base utils,r3,None,,None,MATCH, =
,Provider of the machine specific securetty file.,N/A,file://securetty,Chen=
 Qi <Qi.Chen@windriver.com>)
['gtk+3', '3.12.2', 'N/A', 'LGPLv2 & LGPLv2+ & LGPLv2.1+', 'libs', 'http://=
www.gtk.org', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  qemu-native glib-2.0 cairo p=
ango atk jpeg libpng gdk-pixbuf            docbook-utils-native gdk-pixbuf-=
native glib-2.0-native gtk-doc-stub-native wayland libxkbcommon at-spi2-atk=
 fontconfig libx11 libxext libxcursor libxi libxdamage libxrandr libxrender=
 libxcomposite libxfixes virtual/update-alternatives', 'https://bugzilla.gn=
ome.org/', 'None', 'GTK+ is a multi-platform toolkit for creating graphical=
 user interfaces. Offering a complete set of widgets, GTK+ is suitable for =
projects ranging from small one-off projects to complete application suites=
=2E', 'ErrAccess', 'N/A', 'http://ftp.gnome.org/pub/gnome/sources/gtk+/3.12=
/gtk+-3.12.2.tar.xz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (gtk+3,3.12.2,N/A,LGPLv2 & LGPLv2+ & LGPLv2.1+,libs,r0,None,http:/=
/www.gtk.org,https://bugzilla.gnome.org/,ErrAccess,pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  qemu-native glib-2.0 cairo pango atk jpeg libpng gdk-pixbuf            do=
cbook-utils-native gdk-pixbuf-native glib-2.0-native gtk-doc-stub-native wa=
yland libxkbcommon at-spi2-atk fontconfig libx11 libxext libxcursor libxi l=
ibxdamage libxrandr libxrender libxcomposite libxfixes virtual/update-alter=
natives,GTK+ is a multi-platform toolkit for creating graphical user interf=
aces. Offering a complete set of widgets, GTK+ is suitable for projects ran=
ging from small one-off projects to complete application suites.,N/A,http:/=
/ftp.gnome.org/pub/gnome/sources/gtk+/3.12/gtk+-3.12.2.tar.xz,Ross Burton <=
ross.burton@intel.com>)
['python-gst', '0.10.22', 'N/A', 'LGPLv2.1', 'devel/python', '', 'r2', 'pkg=
config-native autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  gstreamer gst-plugins-base python-pygobject python-n=
ative python  python-native ', 'None', 'None', 'Python bindings for the GSt=
reamer multimedia framework.', 'ErrAccess', 'N/A', 'http://gstreamer.freede=
sktop.org/src/gst-python/gst-python-0.10.22.tar.bz2', 'Richard Purdie <rich=
ard.purdie@linuxfoundation.org>', 'None']
inserted (python-gst,0.10.22,N/A,LGPLv2.1,devel/python,r2,None,,None,ErrAcc=
ess,pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  gstreamer gst-plugins-base python-pygobject p=
ython-native python  python-native ,Python bindings for the GStreamer multi=
media framework.,N/A,http://gstreamer.freedesktop.org/src/gst-python/gst-py=
thon-0.10.22.tar.bz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['gdb-cross-i586', '7.8.1', 'N/A', 'GPLv2 & GPLv3 & LGPLv2 & LGPLv3', 'deve=
l', 'http://www.gnu.org/software/gdb/', 'r0', 'autoconf-native automake-nat=
ive libtool-native gnu-config-native gettext-minimal-native  expat-native n=
curses-native readline-native python-native  python-native  texinfo-dummy-n=
ative', 'None', 'None', 'GNU debugger.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu=
=2Eorg/gnu/gdb/gdb-7.8.1.tar.gz', 'Richard Purdie <richard.purdie@linuxfoun=
dation.org>', 'None']
inserted (gdb-cross-i586,7.8.1,N/A,GPLv2 & GPLv3 & LGPLv2 & LGPLv3,devel,r0=
,None,http://www.gnu.org/software/gdb/,None,ErrAccess,autoconf-native autom=
ake-native libtool-native gnu-config-native gettext-minimal-native  expat-n=
ative ncurses-native readline-native python-native  python-native  texinfo-=
dummy-native,GNU debugger.,N/A,ftp://ftp.gnu.org/gnu/gdb/gdb-7.8.1.tar.gz,R=
ichard Purdie <richard.purdie@linuxfoundation.org>)
['xserver-xf86-config', '0.1', '0.1', 'MIT-X', 'x11/base', 'http://www.x.or=
g', 'r33', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  ', 'None', 'None', 'X.Org X server configuration file.', '=
MATCH', 'N/A', 'file://xorg.conf', 'Ross Burton <ross.burton@intel.com>', '=
None']
inserted (xserver-xf86-config,0.1,0.1,MIT-X,x11/base,r33,None,http://www.x.=
org,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ,X.Org X server configuration file.,N/A,file://xorg.con=
f,Ross Burton <ross.burton@intel.com>)
['gccmakedep', '1.0.3', 'N/A', 'MIT-X', 'x11/utils', 'http://www.x.org', 'r=
3', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/=
enter_bug.cgi?product=3Dxorg', '1', "create dependencies in makefiles using=
 'gcc -M'", 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/indiv=
idual/util/gccmakedep-1.0.3.tar.gz', 'Richard Purdie <richard.purdie@linuxf=
oundation.org>', 'None']
inserted (gccmakedep,1.0.3,N/A,MIT-X,x11/utils,r3,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  util-macros,create dependencies in makefiles using 'gcc -M',N/=
A,http://xorg.freedesktop.org/releases/individual/util/gccmakedep-1.0.3.tar=
=2Egz,Richard Purdie <richard.purdie@linuxfoundation.org>)
['lsbinitscripts', '9.56.1', 'N/A', 'GPLv2', 'base', '', 'r0', ' virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  popt g=
lib-2.0 virtual/update-alternatives', 'None', 'None', 'SysV init scripts wh=
ich are only used in an LSB image.', 'ErrAccess', 'N/A', 'http://pkgs.fedor=
aproject.org/repo/pkgs/initscripts/initscripts-9.56.1.tar.bz2/8ca2abb3877e8=
019a5e726c25501e8e3/initscripts-9.56.1.tar.bz2', 'Saul Wold <sgw@linux.inte=
l.com>', 'None']
inserted (lsbinitscripts,9.56.1,N/A,GPLv2,base,r0,None,,None,ErrAccess, vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 popt glib-2.0 virtual/update-alternatives,SysV init scripts which are only=
 used in an LSB image.,N/A,http://pkgs.fedoraproject.org/repo/pkgs/initscri=
pts/initscripts-9.56.1.tar.bz2/8ca2abb3877e8019a5e726c25501e8e3/initscripts=
-9.56.1.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['libnewt-python', '0.52.18', 'N/A', 'LGPLv2', 'libs', 'https://fedorahoste=
d.org/newt/', 'r0', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  libnewt python  python-native ', 'None', 'Non=
e', 'Newt is a programming library for color text mode, widget based user i=
nterfaces.  Newt can be used to add stacked windows, entry widgets, checkbo=
xes, radio buttons, labels, plain text fields, scrollbars, etc., to text mo=
de user interfaces.  This package also contains the shared library needed b=
y programs built with newt, as well as a /usr/bin/dialog replacement called=
 whiptail.  Newt is based on the slang library.', 'ErrAccess', 'N/A', 'http=
s://fedorahosted.org/releases/n/e/newt/newt-0.52.18.tar.gz', 'Hongxu Jia <h=
ongxu.jia@windriver.com>', 'None']
inserted (libnewt-python,0.52.18,N/A,LGPLv2,libs,r0,None,https://fedorahost=
ed.org/newt/,None,ErrAccess,autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  libnewt python  python-native ,Newt is=
 a programming library for color text mode, widget based user interfaces.  =
Newt can be used to add stacked windows, entry widgets, checkboxes, radio b=
uttons, labels, plain text fields, scrollbars, etc., to text mode user inte=
rfaces.  This package also contains the shared library needed by programs b=
uilt with newt, as well as a /usr/bin/dialog replacement called whiptail.  =
Newt is based on the slang library.,N/A,https://fedorahosted.org/releases/n=
/e/newt/newt-0.52.18.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['glibc-initial', '2.20', '28+gitAUTOINC+f80af76648', 'GPLv2 & LGPLv2.1', '=
libs', 'http://www.gnu.org/software/libc/libc.html', 'r0', 'autoconf-native=
 automake-native libtool-native gnu-config-native  linux-libc-headers virtu=
al/i586-poky-linux-gcc-initial libgcc-initial kconfig-frontends-native texi=
nfo-native', 'None', 'None', 'The GNU C Library is used as the system C lib=
rary in most systems with the Linux kernel.', 'UPDATE', 'N/A', 'git://sourc=
eware.org/git/glibc.git;branch=3Drelease/2.20/master', 'Richard Purdie <ric=
hard.purdie@linuxfoundation.org>', 'None']
inserted (glibc-initial,2.20,28+gitAUTOINC+f80af76648,GPLv2 & LGPLv2.1,libs=
,r0,None,http://www.gnu.org/software/libc/libc.html,None,UPDATE,autoconf-na=
tive automake-native libtool-native gnu-config-native  linux-libc-headers v=
irtual/i586-poky-linux-gcc-initial libgcc-initial kconfig-frontends-native =
texinfo-native,The GNU C Library is used as the system C library in most sy=
stems with the Linux kernel.,N/A,git://sourceware.org/git/glibc.git;branch=
=3Drelease/2.20/master,Richard Purdie <richard.purdie@linuxfoundation.org>)
['python-git', '0.3.2.RC1', 'N/A', 'BSD-3-Clause', 'devel/python', 'http://=
github.com/gitpython-developers/GitPython', 'r0', ' virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  python-gitdb python=
-native python  python-native  python-distribute-native', 'None', 'None', '=
GitPython provides object model read and write access to a git repository. =
Access repository information conveniently, alter the index directly, handl=
e remotes, or go down to low-level object database access with big-files su=
pport.', 'ErrAccess', 'N/A', 'http://pypi.python.org/packages/source/G/GitP=
ython/GitPython-0.3.2.RC1.tar.gz', 'None', 'None']
inserted (python-git,0.3.2.RC1,N/A,BSD-3-Clause,devel/python,r0,None,http:/=
/github.com/gitpython-developers/GitPython,None,ErrAccess, virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  python-gitdb=
 python-native python  python-native  python-distribute-native,GitPython pr=
ovides object model read and write access to a git repository. Access repos=
itory information conveniently, alter the index directly, handle remotes, o=
r go down to low-level object database access with big-files support.,N/A,h=
ttp://pypi.python.org/packages/source/G/GitPython/GitPython-0.3.2.RC1.tar.g=
z,None)
['alsa-utils', '1.0.28', 'N/A', 'GPLv2+', 'console/utils', 'http://www.alsa=
-project.org', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  alsa-lib ncurses libsamplerate0 udev udev', 'https://bugtrack.alsa-proj=
ect.org/alsa-bug/login_page.php', 'None', 'ALSA sound utilities.', 'ErrAcce=
ss', 'N/A', 'ftp://ftp.alsa-project.org/pub/utils/alsa-utils-1.0.28.tar.bz2=
', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (alsa-utils,1.0.28,N/A,GPLv2+,console/utils,r0,None,http://www.als=
a-project.org,https://bugtrack.alsa-project.org/alsa-bug/login_page.php,Err=
Access,pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  alsa-lib nc=
urses libsamplerate0 udev udev,ALSA sound utilities.,N/A,ftp://ftp.alsa-pro=
ject.org/pub/utils/alsa-utils-1.0.28.tar.bz2,Cristian Iorga <cristian.iorga=
@intel.com>)
['foomatic-filters', '4.0.17', 'N/A', 'GPLv2+', 'base', '', 'r1', 'pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc   cups perl libxml2', 'None', 'None', 'Foomatic is a print=
er database designed to make it easier to set up common printers for use wi=
th UNIX-like operating systems.It provides the "glue" between a print spool=
er (like CUPS or lpr) and the printer, by processing files sent to the prin=
ter.  This package consists of filters used by the printer spoolers to conv=
ert the incoming PostScript data into the printer\'s native format using a =
printer-specific, but spooler-independent PPD file. ', 'ErrAccess', 'N/A', =
'http://www.openprinting.org/download/foomatic/foomatic-filters-4.0.17.tar.=
gz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (foomatic-filters,4.0.17,N/A,GPLv2+,base,r1,None,,None,ErrAccess,p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc   cups perl libxml2,Foomatic is a printer database =
designed to make it easier to set up common printers for use with UNIX-like=
 operating systems.It provides the "glue" between a print spooler (like CUP=
S or lpr) and the printer, by processing files sent to the printer.  This p=
ackage consists of filters used by the printer spoolers to convert the inco=
ming PostScript data into the printer's native format using a printer-speci=
fic, but spooler-independent PPD file. ,N/A,http://www.openprinting.org/dow=
nload/foomatic/foomatic-filters-4.0.17.tar.gz,Chong Lu <Chong.Lu@windriver.=
com>)
['libusb1', '1.0.19', 'N/A', 'LGPLv2.1+', 'libs', 'http://libusb.sf.net', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'http://www.libusb.org/report', 'None', =
'Userspace library to access USB (version 1.0).', 'ErrAccess', 'N/A', 'http=
://downloads.sourceforge.net/libusb/libusb-1.0.19.tar.bz2', 'Alejandro Hern=
andez <alejandro.hernandez@linux.intel.com>', 'None']
inserted (libusb1,1.0.19,N/A,LGPLv2.1+,libs,r0,None,http://libusb.sf.net,ht=
tp://www.libusb.org/report,ErrAccess,pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Userspace l=
ibrary to access USB (version 1.0).,N/A,http://downloads.sourceforge.net/li=
busb/libusb-1.0.19.tar.bz2,Alejandro Hernandez <alejandro.hernandez@linux.i=
ntel.com>)
['bluez-hcidump', '2.5', 'N/A', 'GPLv2+', 'console', '', 'r1', 'autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bl=
uez4', 'None', 'None', 'The hcidump tool reads raw HCI data coming from and=
 going to a Bluetooth device and displays the commands, events and data in =
a human-readable form.', 'ErrAccess', 'N/A', 'http://www.kernel.org/pub/lin=
ux/bluetooth/bluez-hcidump-2.5.tar.gz', 'Cristian Iorga <cristian.iorga@int=
el.com>', 'None']
inserted (bluez-hcidump,2.5,N/A,GPLv2+,console,r1,None,,None,ErrAccess,auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  bluez4,The hcidump tool reads raw HCI data coming from and going to a =
Bluetooth device and displays the commands, events and data in a human-read=
able form.,N/A,http://www.kernel.org/pub/linux/bluetooth/bluez-hcidump-2.5.=
tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['apt', '0.9.9.4', 'N/A', 'GPLv2.0+', 'base', '', 'r0', 'autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native virtual/gettex=
t gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  curl db', 'None', 'None', 'Advanced front-end for dpk=
g.', 'ErrAccess', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/a/apt/apt_0=
=2E9.9.4.tar.gz', 'An\xc3\xadbal Lim\xc3\xb3n <anibal.limon@linux.intel.com=
>', 'None']
inserted (apt,0.9.9.4,N/A,GPLv2.0+,base,r0,None,,None,ErrAccess,autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native virtual=
/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  curl db,Advanced front-end for dpkg.,N/A,ftp:/=
/ftp.debian.org/debian/pool/main/a/apt/apt_0.9.9.4.tar.gz,An?bal Lim?n <ani=
bal.limon@linux.intel.com>)
['libxcb', '1.11', 'N/A', 'MIT', 'x11/libs', 'http://xcb.freedesktop.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  xcb-proto xproto libxau xcb-proto-native l=
ibpthread-stubs  python-native  libxdmcp', 'https://bugs.freedesktop.org/en=
ter_bug.cgi?product=3DXCB', 'None', 'The X protocol C-language Binding (XCB=
) is a replacement for Xlib featuring a small footprint, latency hiding, di=
rect access to the protocol, improved threading support, and extensibility.=
', 'ErrAccess', 'N/A', 'http://xcb.freedesktop.org/dist/libxcb-1.11.tar.bz2=
', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxcb,1.11,N/A,MIT,x11/libs,r0,None,http://xcb.freedesktop.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,ErrAccess,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  xcb-proto xproto libxau xcb-proto-native libpthread-stubs =
 python-native  libxdmcp,The X protocol C-language Binding (XCB) is a repla=
cement for Xlib featuring a small footprint, latency hiding, direct access =
to the protocol, improved threading support, and extensibility.,N/A,http://=
xcb.freedesktop.org/dist/libxcb-1.11.tar.bz2,Ross Burton <ross.burton@intel=
=2Ecom>)
['eglinfo-fb', '1.0', '1.0+gitAUTOINC+223817ee37', 'Zlib', 'graphics', 'htt=
ps://github.com/dv1/eglinfo', 'r0', ' virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  virtual/egl', 'None', 'None', 'Ut=
ility for printing information EGL and its client APIs (OpenGL, OpenGL ES, =
OpenVG) (Framebuffer version).', 'UPDATE', 'N/A', 'git://github.com/dv1/egl=
info.git;branch=3Dmaster', 'None', 'None']
inserted (eglinfo-fb,1.0,1.0+gitAUTOINC+223817ee37,Zlib,graphics,r0,None,ht=
tps://github.com/dv1/eglinfo,None,UPDATE, virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  virtual/egl,Utility for print=
ing information EGL and its client APIs (OpenGL, OpenGL ES, OpenVG) (Frameb=
uffer version).,N/A,git://github.com/dv1/eglinfo.git;branch=3Dmaster,None)
['libclass-isa-perl', '0.36', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', 'ht=
tp://search.cpan.org/dist/Class-ISA/', 'r0', ' virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native', 'Non=
e', 'None', 'Suppose you have a class (like Food::Fish::Fishstick) that is =
derived, via its @ISA, from one or more superclasses (as Food::Fish::Fishst=
ick is from Food::Fish,Life::Fungus, and Chemicals), and some of those supe=
rclasses may themselves each bederived, via its @ISA, from one or more supe=
rclasses (as above).When, then, you call a method in that class ($fishstick=
->calories), Perl first searchesthere for that method, but if it\'s not the=
re, it goes searching in its superclasses, andso on, in a depth-first (or m=
aybe "height-first" is the word) search. In the above example,it\'d first l=
ook in Food::Fish, then Food, then Matter, then Life::Fungus, then Life, th=
enChemicals.This library, Class::ISA, provides functions that return that l=
ist -- the list(in order) of names of classes Perl would search to find a m=
ethod, with no duplicates.', 'ErrAccess', 'N/A', 'http://search.cpan.org/CP=
AN/authors/id/S/SM/SMUELLER/Class-ISA-0.36.tar.gz', 'Saul Wold <sgw@linux.i=
ntel.com>', 'None']
inserted (libclass-isa-perl,0.36,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,None,h=
ttp://search.cpan.org/dist/Class-ISA/,None,ErrAccess, virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native=
,Suppose you have a class (like Food::Fish::Fishstick) that is derived, via=
 its @ISA, from one or more superclasses (as Food::Fish::Fishstick is from =
Food::Fish,Life::Fungus, and Chemicals), and some of those superclasses may=
 themselves each bederived, via its @ISA, from one or more superclasses (as=
 above).When, then, you call a method in that class ($fishstick->calories),=
 Perl first searchesthere for that method, but if it's not there, it goes s=
earching in its superclasses, andso on, in a depth-first (or maybe "height-=
first" is the word) search. In the above example,it'd first look in Food::F=
ish, then Food, then Matter, then Life::Fungus, then Life, thenChemicals.Th=
is library, Class::ISA, provides functions that return that list -- the lis=
t(in order) of names of classes Perl would search to find a method, with no=
 duplicates.,N/A,http://search.cpan.org/CPAN/authors/id/S/SM/SMUELLER/Class=
-ISA-0.36.tar.gz,Saul Wold <sgw@linux.intel.com>)
['xcb-util-wm', '0.4.1', 'N/A', 'MIT', 'x11/libs', 'http://xcb.freedesktop.=
org/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native', 'http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'The xcb-uti=
l module provides a number of libraries which sit on top of libxcb, the cor=
e X protocol library, and some of the extension libraries. These experiment=
al libraries provide convenience functions and interfaces which make the ra=
w X protocol more usable. Some of the libraries also provide client-side co=
de which is not strictly part of the X protocol but which have traditionall=
y been provided by Xlib.', 'ErrAccess', 'N/A', 'http://xcb.freedesktop.org/=
dist/xcb-util-wm-0.4.1.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'No=
ne']
inserted (xcb-util-wm,0.4.1,N/A,MIT,x11/libs,r0,None,http://xcb.freedesktop=
=2Eorg/XcbUtil/,https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,Er=
rAccess,pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  libxcb gperf-native,The xcb-util module p=
rovides a number of libraries which sit on top of libxcb, the core X protoc=
ol library, and some of the extension libraries. These experimental librari=
es provide convenience functions and interfaces which make the raw X protoc=
ol more usable. Some of the libraries also provide client-side code which i=
s not strictly part of the X protocol but which have traditionally been pro=
vided by Xlib.,N/A,http://xcb.freedesktop.org/dist/xcb-util-wm-0.4.1.tar.bz=
2,Ross Burton <ross.burton@intel.com>)
['zip', '3.0', 'N/A', 'BSD-3-Clause', 'console/utils', 'http://www.info-zip=
=2Eorg', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', 'None', 'Compressor/archiver for creating a=
nd modifying .zip files.', 'ErrAccess', '3.0', 'ftp://ftp.info-zip.org/pub/=
infozip/src/zip30.tgz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (zip,3.0,N/A,BSD-3-Clause,console/utils,r2,None,http://www.info-zi=
p.org,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  ,Compressor/archiver for creating and modifying .=
zip files.,3.0,ftp://ftp.info-zip.org/pub/infozip/src/zip30.tgz,Chen Qi <Qi=
=2EChen@windriver.com>)
['matchbox-wm', '1.2+gitAUTOINC+29544f0e61', '1.2+gitAUTOINC+29544f0e61', '=
GPLv2+', 'x11/wm', 'http://matchbox-project.org', 'r0', 'pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  libmatchbox virtual/libx11 libxext libxrender startup-notification =
expat gconf libxcursor libxfixes', 'http://bugzilla.yoctoproject.org/', 'No=
ne', 'Matchbox lightweight window manager.', 'MATCH', 'N/A', 'git://git.yoc=
toproject.org/matchbox-window-manager', 'Ross Burton <ross.burton@intel.com=
>', 'None']
inserted (matchbox-wm,1.2+gitAUTOINC+29544f0e61,1.2+gitAUTOINC+29544f0e61,G=
PLv2+,x11/wm,r0,None,http://matchbox-project.org,http://bugzilla.yoctoproje=
ct.org/,MATCH,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  libmatchbox virtual/libx11 libxext =
libxrender startup-notification expat gconf libxcursor libxfixes,Matchbox l=
ightweight window manager.,N/A,git://git.yoctoproject.org/matchbox-window-m=
anager,Ross Burton <ross.burton@intel.com>)
['qt4-embedded', '4.8.6', 'N/A', 'LGPLv2.1 | GPLv3', 'libs', 'http://qt-pro=
ject.org/', 'r0', 'qt4-tools-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   directfb tslib qt4-tools-native f=
reetype jpeg libpng zlib dbus openssl glib-2.0 gstreamer gst-plugins-base s=
qlite3 tiff icu pulseaudio', 'None', 'None', 'Qt is a versatile cross-platf=
orm application framework -- this is the embedded (framebuffer) version.', =
'ErrAccess', 'N/A', 'http://download.qt-project.org/official_releases/qt/4.=
8/4.8.6/qt-everywhere-opensource-src-4.8.6.tar.gz', 'Paul Eggleton <paul.eg=
gleton@linux.intel.com>', 'None']
inserted (qt4-embedded,4.8.6,N/A,LGPLv2.1 | GPLv3,libs,r0,None,http://qt-pr=
oject.org/,None,ErrAccess,qt4-tools-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc   directfb tslib qt4-tools-n=
ative freetype jpeg libpng zlib dbus openssl glib-2.0 gstreamer gst-plugins=
-base sqlite3 tiff icu pulseaudio,Qt is a versatile cross-platform applicat=
ion framework -- this is the embedded (framebuffer) version.,N/A,http://dow=
nload.qt-project.org/official_releases/qt/4.8/4.8.6/qt-everywhere-opensourc=
e-src-4.8.6.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['startup-notification', '0.12', 'N/A', 'LGPLv2+', 'libs', 'http://www.free=
desktop.org/wiki/Software/startup-notification/', 'r2', 'pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  virtual/libx11 libsm xcb-util', 'https://bugs.freedesktop.org/enter=
_bug.cgi?product=3DSpecifications', 'None', 'Enables monitoring and display=
 of application startup.', 'ErrAccess', 'N/A', 'http://www.freedesktop.org/=
software/startup-notification/releases/startup-notification-0.12.tar.gz', '=
Saul Wold <sgw@linux.intel.com>', 'None']
inserted (startup-notification,0.12,N/A,LGPLv2+,libs,r2,None,http://www.fre=
edesktop.org/wiki/Software/startup-notification/,https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3DSpecifications,ErrAccess,pkgconfig-native autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  virtual/libx11 libsm xcb-util,Enables monitoring and display of applicat=
ion startup.,N/A,http://www.freedesktop.org/software/startup-notification/r=
eleases/startup-notification-0.12.tar.gz,Saul Wold <sgw@linux.intel.com>)
['glib-2.0', '2.40.0', 'N/A', 'LGPLv2+ & BSD & PD', 'libs', '', 'r0', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0-native virtua=
l/libiconv libffi zlib dbus gtk-doc-stub-native', 'http://bugzilla.gnome.or=
g', '1', 'GLib is a general-purpose utility library, which provides many us=
eful data types, macros, type conversions, string utilities, file utilities=
, a main loop abstraction, and so on.', 'ErrAccess', 'N/A', 'http://ftp.gno=
me.org/pub/GNOME/sources/glib/2.40/glib-2.40.0.tar.xz', 'Robert Yang <liezh=
i.yang@windriver.com>', 'None']
inserted (glib-2.0,2.40.0,N/A,LGPLv2+ & BSD & PD,libs,r0,1,,http://bugzilla=
=2Egnome.org,ErrAccess,pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native virtual/gettext gettext-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  glib-2.0-native virtual/libiconv libffi zlib dbus gtk-doc-stub-native,=
GLib is a general-purpose utility library, which provides many useful data =
types, macros, type conversions, string utilities, file utilities, a main l=
oop abstraction, and so on.,N/A,http://ftp.gnome.org/pub/GNOME/sources/glib=
/2.40/glib-2.40.0.tar.xz,Robert Yang <liezhi.yang@windriver.com>)
['tzdata', '2014j', 'N/A', 'PD & BSD', 'base', 'ftp://elsie.nci.nih.gov/pub=
/', 'r0', ' tzcode-native', 'None', 'None', 'Timezone data', 'ErrAccess', '=
N/A', 'ftp://ftp.iana.org/tz/releases/tzdata2014j.tar.gz;name=3Dtzdata', 'R=
obert Yang <liezhi.yang@windriver.com>', 'None']
inserted (tzdata,2014j,N/A,PD & BSD,base,r0,None,ftp://elsie.nci.nih.gov/pu=
b/,None,ErrAccess, tzcode-native,Timezone data,N/A,ftp://ftp.iana.org/tz/re=
leases/tzdata2014j.tar.gz;name=3Dtzdata,Robert Yang <liezhi.yang@windriver.=
com>)
['m4', '1.4.17', 'N/A', 'GPLv3', 'base', '', 'r0', 'autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-nativ=
e', 'None', 'None', 'GNU m4 is an implementation of the traditional Unix ma=
cro processor.  It is mostly SVR4 compatible although it has some extension=
s (for example, handling more than 9 positional parameters to macros). GNU =
M4 also has built-in functions for including files, running shell commands,=
 doing arithmetic, etc.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/m4/m4-=
1.4.17.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (m4,1.4.17,N/A,GPLv3,base,r0,None,,None,ErrAccess,autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinf=
o-native,GNU m4 is an implementation of the traditional Unix macro processo=
r.  It is mostly SVR4 compatible although it has some extensions (for examp=
le, handling more than 9 positional parameters to macros). GNU M4 also has =
built-in functions for including files, running shell commands, doing arith=
metic, etc.,N/A,ftp://ftp.gnu.org/gnu/m4/m4-1.4.17.tar.gz,Robert Yang <liez=
hi.yang@windriver.com>)
['resourceproto', '1.2.0', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r=
1', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/=
enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoco=
l for the X Resource extension.  XRes provides an interface that allows X c=
lients to see and monitor X resource usage of various clients.', 'ErrAccess=
', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/resourcepr=
oto-1.2.0.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (resourceproto,1.2.0,N/A,MIT,x11/libs,r1,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  util-macros,This package provides the wire protocol for the X =
Resource extension.  XRes provides an interface that allows X clients to se=
e and monitor X resource usage of various clients.,N/A,http://xorg.freedesk=
top.org/releases/individual/proto/resourceproto-1.2.0.tar.bz2,Ross Burton <=
ross.burton@intel.com>)
['qemu', '2.1.2', 'N/A', 'GPLv2 & LGPLv2.1', 'base', 'http://qemu.org', 'r0=
', 'autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  glib-2.0 zlib pixman alsa-lib dtc libsdl ', 'None', 'None', 'F=
ast open source processor emulator.', 'ErrAccess', 'N/A', 'http://wiki.qemu=
-project.org/download/qemu-2.1.2.tar.bz2', 'Cristian Iorga <cristian.iorga@=
intel.com>', 'None']
inserted (qemu,2.1.2,N/A,GPLv2 & LGPLv2.1,base,r0,None,http://qemu.org,None=
,ErrAccess,autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  glib-2.0 zlib pixman alsa-lib dtc libsdl ,Fast open sou=
rce processor emulator.,N/A,http://wiki.qemu-project.org/download/qemu-2.1.=
2.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['libxrandr', '1.4.2', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros virtual/libx11 randrproto libx=
render libxext', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg=
', '1', 'The X Resize, Rotate and Reflect Extension, called RandR for short=
, brings the ability to resize, rotate and reflect the root window of a scr=
een. It is based on the X Resize and Rotate Extension as specified in the P=
roceedings of the 2001 Usenix Technical Conference [RANDR].', 'ErrAccess', =
'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXrandr-1.4.2=
=2Etar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxrandr,1.4.2,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  util-macros virtual/libx11 randrproto libxrender libxext,The=
 X Resize, Rotate and Reflect Extension, called RandR for short, brings the=
 ability to resize, rotate and reflect the root window of a screen. It is b=
ased on the X Resize and Rotate Extension as specified in the Proceedings o=
f the 2001 Usenix Technical Conference [RANDR].,N/A,http://xorg.freedesktop=
=2Eorg/releases/individual/lib/libXrandr-1.4.2.tar.bz2,Ross Burton <ross.bu=
rton@intel.com>)
['libsamplerate0', '0.1.8', 'N/A', 'GPLv2+', 'libs', 'http://www.mega-nerd.=
com/SRC/', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  flac libsndfile1', 'None', 'Non=
e', 'Audio Sample Rate Conversion library.', 'ErrAccess', 'N/A', 'http://ww=
w.mega-nerd.com/SRC/libsamplerate-0.1.8.tar.gz', 'Cristian Iorga <cristian.=
iorga@intel.com>', 'None']
inserted (libsamplerate0,0.1.8,N/A,GPLv2+,libs,r1,None,http://www.mega-nerd=
=2Ecom/SRC/,None,ErrAccess,pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  flac libsndfile1,Audio=
 Sample Rate Conversion library.,N/A,http://www.mega-nerd.com/SRC/libsample=
rate-0.1.8.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['expat', '2.1.0', 'N/A', 'MIT', 'libs', 'http://expat.sourceforge.net/', '=
r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc   gzip-native', 'None', 'None', 'Expat is an XML parser libra=
ry written in C. It is a stream-oriented parser in which an application reg=
isters handlers for things the parser might find in the XML document (like =
start tags)', 'ErrAccess', 'N/A', 'http://downloads.sourceforge.net/expat/e=
xpat-2.1.0.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (expat,2.1.0,N/A,MIT,libs,r0,None,http://expat.sourceforge.net/,No=
ne,ErrAccess,autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc   gzip-native,Expat is an XML parser library written i=
n C. It is a stream-oriented parser in which an application registers handl=
ers for things the parser might find in the XML document (like start tags),=
N/A,http://downloads.sourceforge.net/expat/expat-2.1.0.tar.gz,Paul Eggleton=
 <paul.eggleton@linux.intel.com>)
['lttng-tools', 'v2.5.0', '2.5.3+gitAUTOINC+75d966798c', 'GPLv2 & LGPLv2.1'=
, 'devel', '', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  liburcu popt lttng-ust libx=
ml2  lttng-ust', 'None', 'None', 'The Linux trace toolkit is a suite of too=
ls designed to extract program execution details from the Linux operating s=
ystem and interpret them.', 'UPDATE', 'N/A', 'git://git.lttng.org/lttng-too=
ls.git;branch=3Dstable-2.5', 'Richard Purdie <richard.purdie@linuxfoundatio=
n.org>', 'None']
inserted (lttng-tools,v2.5.0,2.5.3+gitAUTOINC+75d966798c,GPLv2 & LGPLv2.1,d=
evel,r0,None,,None,UPDATE,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  liburcu popt lttng-ust =
libxml2  lttng-ust,The Linux trace toolkit is a suite of tools designed to =
extract program execution details from the Linux operating system and inter=
pret them.,N/A,git://git.lttng.org/lttng-tools.git;branch=3Dstable-2.5,Rich=
ard Purdie <richard.purdie@linuxfoundation.org>)
['sgmlspl-native', '1.03ii', 'N/A', 'GPLv2+', 'libs', 'http://search.cpan.o=
rg/src/DMEGG/SGMLSpm-1.03ii/DOC/HTML/SGMLSpm/sgmlspm.html', 'r3', '  perl-n=
ative perl-native', 'None', 'None', 'A simple post-processor for SGMLS and =
NSGMLS.', 'ErrAccess', 'N/A', 'http://www.cpan.org/authors/id/D/DM/DMEGG/SG=
MLSpm-1.03ii.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'Non=
e']
inserted (sgmlspl-native,1.03ii,N/A,GPLv2+,libs,r3,None,http://search.cpan.=
org/src/DMEGG/SGMLSpm-1.03ii/DOC/HTML/SGMLSpm/sgmlspm.html,None,ErrAccess, =
 perl-native perl-native,A simple post-processor for SGMLS and NSGMLS.,N/A,=
http://www.cpan.org/authors/id/D/DM/DMEGG/SGMLSpm-1.03ii.tar.gz,Paul Egglet=
on <paul.eggleton@linux.intel.com>)
['initramfs-live-install-testfs', '1.0', '1.0', 'MIT', 'base', '', 'r0', ' =
', 'None', 'None', 'Live image install script with a second rootfs/kernel.'=
, 'MATCH', 'N/A', 'file://init-install-testfs.sh', 'None', 'None']
inserted (initramfs-live-install-testfs,1.0,1.0,MIT,base,r0,None,,None,MATC=
H, ,Live image install script with a second rootfs/kernel.,N/A,file://init-=
install-testfs.sh,None)
['i2c-tools', '3.1.1', 'N/A', 'GPLv2+', 'base', '', 'r0', 'autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'Non=
e', 'None', 'Set of i2c tools for linux.', 'ErrAccess', 'N/A', 'http://dl.l=
m-sensors.org/i2c-tools/releases/i2c-tools-3.1.1.tar.bz2', 'None', 'None']
inserted (i2c-tools,3.1.1,N/A,GPLv2+,base,r0,None,,None,ErrAccess,autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
,Set of i2c tools for linux.,N/A,http://dl.lm-sensors.org/i2c-tools/release=
s/i2c-tools-3.1.1.tar.bz2,None)
['xkbcomp', '1.2.4', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxkbfile'=
, 'https://bugs.freedesktop.org', 'None', 'The xkbcomp keymap compiler conv=
erts a description of an XKB keymap into one of several output formats. The=
 most common use for xkbcomp is to create a compiled keymap file (.xkm exte=
nsion) which can be read directly by XKB-capable X servers or utilities.', =
'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/xk=
bcomp-1.2.4.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xkbcomp,1.2.4,N/A,MIT-X,x11/apps,r8.0,None,http://www.x.org/,http=
s://bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-na=
tive virtual/libx11 libxkbfile,The xkbcomp keymap compiler converts a descr=
iption of an XKB keymap into one of several output formats. The most common=
 use for xkbcomp is to create a compiled keymap file (.xkm extension) which=
 can be read directly by XKB-capable X servers or utilities.,N/A,http://xor=
g.freedesktop.org/releases/individual/app/xkbcomp-1.2.4.tar.bz2,Ross Burton=
 <ross.burton@intel.com>)
['flac', '1.3.0', 'N/A', 'GFDL-1.2 & GPLv2+ & LGPLv2.1+ & BSD', 'libs', 'ht=
tps://xiph.org/flac/', 'r0', 'autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libog=
g', 'http://sourceforge.net/p/flac/bugs/', 'None', 'FLAC stands for Free Lo=
ssless Audio Codec, a lossless audio compression format.', 'ErrAccess', 'N/=
A', 'http://downloads.xiph.org/releases/flac/flac-1.3.0.tar.xz', 'Cristian =
Iorga <cristian.iorga@intel.com>', 'None']
inserted (flac,1.3.0,N/A,GFDL-1.2 & GPLv2+ & LGPLv2.1+ & BSD,libs,r0,None,h=
ttps://xiph.org/flac/,http://sourceforge.net/p/flac/bugs/,ErrAccess,autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native vir=
tual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  libogg,FLAC stands for Free Lossless Audio=
 Codec, a lossless audio compression format.,N/A,http://downloads.xiph.org/=
releases/flac/flac-1.3.0.tar.xz,Cristian Iorga <cristian.iorga@intel.com>)
['sysfsutils', '2.1.0', 'N/A', 'GPLv2 & LGPLv2.1', 'base', 'http://linux-di=
ag.sourceforge.net/Sysfsutils.html', 'r5', 'autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', "To=
ols for working with the sysfs virtual filesystem.  The tool 'systool' can =
query devices by bus, class and topology.", 'ErrAccess', 'N/A', 'http://dow=
nloads.sourceforge.net/linux-diag/sysfsutils-2.1.0.tar.gz', 'Chen Qi <Qi.Ch=
en@windriver.com>', 'None']
inserted (sysfsutils,2.1.0,N/A,GPLv2 & LGPLv2.1,base,r5,None,http://linux-d=
iag.sourceforge.net/Sysfsutils.html,None,ErrAccess,autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Tools for work=
ing with the sysfs virtual filesystem.  The tool 'systool' can query device=
s by bus, class and topology.,N/A,http://downloads.sourceforge.net/linux-di=
ag/sysfsutils-2.1.0.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['xcb-util', '0.3.9', 'N/A', 'MIT', 'x11/libs', 'http://xcb.freedesktop.org=
/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native', 'https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'The xcb-util m=
odule provides a number of libraries which sit on top of libxcb, the core X=
 protocol library, and some of the extension libraries. These experimental =
libraries provide convenience functions and interfaces which make the raw X=
 protocol more usable. Some of the libraries also provide client-side code =
which is not strictly part of the X protocol but which have traditionally b=
een provided by Xlib.', 'ErrAccess', 'N/A', 'http://xcb.freedesktop.org/dis=
t/xcb-util-0.3.9.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xcb-util,0.3.9,N/A,MIT,x11/libs,r0,None,http://xcb.freedesktop.or=
g/XcbUtil/,https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,ErrAcce=
ss,pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  libxcb gperf-native,The xcb-util module provid=
es a number of libraries which sit on top of libxcb, the core X protocol li=
brary, and some of the extension libraries. These experimental libraries pr=
ovide convenience functions and interfaces which make the raw X protocol mo=
re usable. Some of the libraries also provide client-side code which is not=
 strictly part of the X protocol but which have traditionally been provided=
 by Xlib.,N/A,http://xcb.freedesktop.org/dist/xcb-util-0.3.9.tar.bz2,Ross B=
urton <ross.burton@intel.com>)
['libpam', '1.1.6', 'N/A', 'GPLv2+ | BSD', 'base', 'https://fedorahosted.or=
g/linux-pam/', 'r5', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  bison flex flex-native cracklib', 'https://fedorahosted.org/linux-pam/n=
ewticket', 'None', 'Linux-PAM (Pluggable Authentication Modules for Linux),=
 a flexible mechanism for authenticating users', 'ErrAccess', 'N/A', 'http:=
//linux-pam.org/library/Linux-PAM-1.1.6.tar.bz2', 'Ross Burton <ross.burton=
@intel.com>', 'None']
inserted (libpam,1.1.6,N/A,GPLv2+ | BSD,base,r5,None,https://fedorahosted.o=
rg/linux-pam/,https://fedorahosted.org/linux-pam/newticket,ErrAccess,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  bison flex flex-native c=
racklib,Linux-PAM (Pluggable Authentication Modules for Linux), a flexible =
mechanism for authenticating users,N/A,http://linux-pam.org/library/Linux-P=
AM-1.1.6.tar.bz2,Ross Burton <ross.burton@intel.com>)
['libxsettings-client', '0.10', 'N/A', 'MIT-style', 'x/libs', 'http://match=
box-project.org/sources/optional-dependencies/', 'r5', 'autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native virtual/gettext=
 gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  virtual/libx11', 'http://bugzilla.yoctoproject.org/', =
'None', 'Libraries used for applications making use of the Xsettings config=
uration setting propagation protocol. Controls setting of double click time=
out, drag-and-drop threshold, and default foreground and background colors =
for all applications running within a desktop.', 'ErrAccess', 'N/A', 'http:=
//downloads.yoctoproject.org/releases/matchbox/optional-dependencies/Xsetti=
ngs-client-0.10.tar.gz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxsettings-client,0.10,N/A,MIT-style,x/libs,r5,None,http://matc=
hbox-project.org/sources/optional-dependencies/,http://bugzilla.yoctoprojec=
t.org/,ErrAccess,autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11,Lib=
raries used for applications making use of the Xsettings configuration sett=
ing propagation protocol. Controls setting of double click timeout, drag-an=
d-drop threshold, and default foreground and background colors for all appl=
ications running within a desktop.,N/A,http://downloads.yoctoproject.org/re=
leases/matchbox/optional-dependencies/Xsettings-client-0.10.tar.gz,Ross Bur=
ton <ross.burton@intel.com>)
['mc', '4.8.12', 'N/A', 'GPLv3', 'console/utils', 'http://www.midnight-comm=
ander.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native virtual/gettext gettext-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  ncurses glib-2.0', 'None', 'None', 'Midnight Commander is an ncurses base=
d file manager.', 'ErrAccess', 'N/A', 'http://www.midnight-commander.org/do=
wnloads/mc-4.8.12.tar.bz2', 'An\xc3\xadbal Lim\xc3\xb3n <anibal.limon@linux=
=2Eintel.com>', 'None']
inserted (mc,4.8.12,N/A,GPLv3,console/utils,r0,None,http://www.midnight-com=
mander.org/,None,ErrAccess,pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  ncurses glib-2.0,Midnight Commander is an ncurses based file manag=
er.,N/A,http://www.midnight-commander.org/downloads/mc-4.8.12.tar.bz2,An?ba=
l Lim?n <anibal.limon@linux.intel.com>)
['libtasn1', '4.0', 'N/A', 'GPLv3+ & LGPLv2.1+', 'base', 'http://www.gnu.or=
g/software/libtasn1/', 'r0', 'autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc   texinfo-native', 'None', 'None', 'L=
ibrary for ASN.1 and DER manipulation.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu=
=2Eorg/gnu/libtasn1/libtasn1-4.0.tar.gz', 'Ross Burton <ross.burton@intel.c=
om>', 'None']
inserted (libtasn1,4.0,N/A,GPLv3+ & LGPLv2.1+,base,r0,None,http://www.gnu.o=
rg/software/libtasn1/,None,ErrAccess,autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc   texinfo-native,Library for A=
SN.1 and DER manipulation.,N/A,ftp://ftp.gnu.org/gnu/libtasn1/libtasn1-4.0.=
tar.gz,Ross Burton <ross.burton@intel.com>)
['bluez4', '4.101', 'N/A', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://www.bluez.=
org', 'r11', 'pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  udev libusb dbus-glib glib-2.0 libc=
heck readline libsndfile1 alsa-lib', 'None', 'None', 'Linux Bluetooth stack=
 V4 userland components.  These include a system configurations, daemons, t=
ools and system libraries.', 'ErrAccess', 'N/A', 'http://kernel.org/pub/lin=
ux/bluetooth/bluez-4.101.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com=
>', 'BlueZ 5.x is not backward-compatible; components that interact with bl=
uez not updated']
inserted (bluez4,4.101,N/A,GPLv2+ & LGPLv2.1+,libs,r11,None,http://www.blue=
z.org,None,ErrAccess,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  udev libusb dbus-glib glib-2=
=2E0 libcheck readline libsndfile1 alsa-lib,Linux Bluetooth stack V4 userla=
nd components.  These include a system configurations, daemons, tools and s=
ystem libraries.,N/A,http://kernel.org/pub/linux/bluetooth/bluez-4.101.tar.=
gz,Cristian Iorga <cristian.iorga@intel.com>)
['bluez5', '5.25', 'N/A', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://www.bluez.o=
rg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  udev libusb dbus-glib glib-2.0 libche=
ck readline libical', 'None', 'None', 'Linux Bluetooth stack V5 userland co=
mponents.  These include a system configurations, daemons, tools and system=
 libraries.', 'ErrAccess', 'N/A', 'http://kernel.org/pub/linux/bluetooth/bl=
uez-5.25.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (bluez5,5.25,N/A,GPLv2+ & LGPLv2.1+,libs,r0,None,http://www.bluez.=
org,None,ErrAccess,pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  udev libusb dbus-glib glib-2.0=
 libcheck readline libical,Linux Bluetooth stack V5 userland components.  T=
hese include a system configurations, daemons, tools and system libraries.,=
N/A,http://kernel.org/pub/linux/bluetooth/bluez-5.25.tar.xz,Cristian Iorga =
<cristian.iorga@intel.com>)
['nativesdk-qt4-tools', '4.8.6', 'N/A', 'LGPLv2.1 | GPLv3', 'libs', 'http:/=
/qt-project.org/', 'r0', 'nativesdk-dbus qt4-tools-native virtual/i586-poky=
sdk-linux-gcc-crosssdk nativesdk-zlib nativesdk-libx11 virtual/nativesdk-i5=
86-pokysdk-linux-compilerlibs chrpath-replacement-native qt4-native virtual=
/nativesdk-libc', 'None', 'None', 'SDK tools for Qt version 4.x.', 'ErrAcce=
ss', 'N/A', 'http://download.qt-project.org/official_releases/qt/4.8/4.8.6/=
qt-everywhere-opensource-src-4.8.6.tar.gz', 'Paul Eggleton <paul.eggleton@l=
inux.intel.com>', 'None']
inserted (nativesdk-qt4-tools,4.8.6,N/A,LGPLv2.1 | GPLv3,libs,r0,None,http:=
//qt-project.org/,None,ErrAccess,nativesdk-dbus qt4-tools-native virtual/i5=
86-pokysdk-linux-gcc-crosssdk nativesdk-zlib nativesdk-libx11 virtual/nativ=
esdk-i586-pokysdk-linux-compilerlibs chrpath-replacement-native qt4-native =
virtual/nativesdk-libc,SDK tools for Qt version 4.x.,N/A,http://download.qt=
-project.org/official_releases/qt/4.8/4.8.6/qt-everywhere-opensource-src-4.=
8.6.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['xcb-util-renderutil', '0.3.9', 'N/A', 'MIT', 'x11/libs', 'http://xcb.free=
desktop.org/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native=
', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'The=
 xcb-util module provides a number of libraries which sit on top of libxcb,=
 the core X protocol library, and some of the extension libraries. These ex=
perimental libraries provide convenience functions and interfaces which mak=
e the raw X protocol more usable. Some of the libraries also provide client=
-side code which is not strictly part of the X protocol but which have trad=
itionally been provided by Xlib.', 'ErrAccess', 'N/A', 'http://xcb.freedesk=
top.org/dist/xcb-util-renderutil-0.3.9.tar.bz2', 'Saul Wold <sgw@linux.inte=
l.com>', 'None']
inserted (xcb-util-renderutil,0.3.9,N/A,MIT,x11/libs,r0,None,http://xcb.fre=
edesktop.org/XcbUtil/,https://bugs.freedesktop.org/enter_bug.cgi?product=3D=
XCB,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  libxcb gperf-native,The xcb-util mo=
dule provides a number of libraries which sit on top of libxcb, the core X =
protocol library, and some of the extension libraries. These experimental l=
ibraries provide convenience functions and interfaces which make the raw X =
protocol more usable. Some of the libraries also provide client-side code w=
hich is not strictly part of the X protocol but which have traditionally be=
en provided by Xlib.,N/A,http://xcb.freedesktop.org/dist/xcb-util-renderuti=
l-0.3.9.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['libxvmc', '1.0.8', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros libxext libxv videoproto', 'https://bu=
gs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'XvMC extends the X =
Video extension (Xv) and enables hardware rendered motion compensation supp=
ort.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/individual=
/lib/libXvMC-1.0.8.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxvmc,1.0.8,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://bugs=
=2Efreedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  util-macros libxext libxv videoproto,XvMC extends the X Video exte=
nsion (Xv) and enables hardware rendered motion compensation support.,N/A,h=
ttp://xorg.freedesktop.org/releases/individual/lib/libXvMC-1.0.8.tar.bz2,Ro=
ss Burton <ross.burton@intel.com>)
['ossp-uuid', '1.6.2', 'N/A', 'MIT', 'libs', 'http://www.ossp.org/pkg/lib/u=
uid/', 'r2', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  ', 'None', 'None', 'OSSP uuid is a ISO-C:1999 applic=
ation programming interface (API) and corresponding command line interface =
(CLI) for the generation of DCE 1.1, ISO/IEC 11578:1996 and RFC 4122 compli=
ant Universally Unique Identifier (UUID). It supports DCE 1.1 variant UUIDs=
 of version 1 (time and node based), version 3 (name based, MD5), version 4=
 (random number based) and version 5 (name based, SHA-1).', 'ErrAccess', 'N=
/A', 'http://gnome-build-stage-1.googlecode.com/files/uuid-1.6.2.tar.gz', '=
Saul Wold <sgw@linux.intel.com>', 'None']
inserted (ossp-uuid,1.6.2,N/A,MIT,libs,r2,None,http://www.ossp.org/pkg/lib/=
uuid/,None,ErrAccess,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  ,OSSP uuid is a ISO-C:1999 application progra=
mming interface (API) and corresponding command line interface (CLI) for th=
e generation of DCE 1.1, ISO/IEC 11578:1996 and RFC 4122 compliant Universa=
lly Unique Identifier (UUID). It supports DCE 1.1 variant UUIDs of version =
1 (time and node based), version 3 (name based, MD5), version 4 (random num=
ber based) and version 5 (name based, SHA-1).,N/A,http://gnome-build-stage-=
1.googlecode.com/files/uuid-1.6.2.tar.gz,Saul Wold <sgw@linux.intel.com>)
['xineramaproto', '1.2.1', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://ww=
w.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.free=
desktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the =
wire protocol for the Xinerama extension.  This extension is used for retri=
eving information about physical output devices which may be combined into =
a single logical X screen.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.o=
rg/releases/individual/proto/xineramaproto-1.2.1.tar.bz2', 'Ross Burton <ro=
ss.burton@intel.com>', 'None']
inserted (xineramaproto,1.2.1,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.=
x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros,This package provides the wire protoco=
l for the Xinerama extension.  This extension is used for retrieving inform=
ation about physical output devices which may be combined into a single log=
ical X screen.,N/A,http://xorg.freedesktop.org/releases/individual/proto/xi=
neramaproto-1.2.1.tar.bz2,Ross Burton <ross.burton@intel.com>)
['ethtool', '3.16', 'N/A', 'GPLv2+', 'console/network', 'http://www.kernel.=
org/pub/software/network/ethtool/', 'r0', 'autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'A s=
mall utility for examining and tuning the settings of your ethernet-based n=
etwork interfaces.', 'ErrAccess', 'N/A', 'http://kernel.org/pub/software/ne=
twork/ethtool/ethtool-3.16.tar.gz', 'Paul Eggleton <paul.eggleton@linux.int=
el.com>', 'None']
inserted (ethtool,3.16,N/A,GPLv2+,console/network,r0,None,http://www.kernel=
=2Eorg/pub/software/network/ethtool/,None,ErrAccess,autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,A small utili=
ty for examining and tuning the settings of your ethernet-based network int=
erfaces.,N/A,http://kernel.org/pub/software/network/ethtool/ethtool-3.16.ta=
r.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['neard', '0.14', 'N/A', 'GPLv2', 'base', 'http://01.org/linux-nfc', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  dbus glib-2.0 libnl update-rc.d-native initscrip=
ts', 'None', 'None', 'A daemon for the Linux Near Field Communication stack=
', 'ErrAccess', 'N/A', 'http://kernel.org/pub/linux/network/nfc/neard-0.14.=
tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (neard,0.14,N/A,GPLv2,base,r0,None,http://01.org/linux-nfc,None,Er=
rAccess,pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  dbus glib-2.0 libnl update-rc.d-native in=
itscripts,A daemon for the Linux Near Field Communication stack,N/A,http://=
kernel.org/pub/linux/network/nfc/neard-0.14.tar.xz,Cristian Iorga <cristian=
=2Eiorga@intel.com>)
['tar', '1.27.1', 'N/A', 'GPLv3', 'base', 'http://www.gnu.org/software/tar/=
', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native virtual/u=
pdate-alternatives', 'None', 'None', 'GNU tar saves many files together int=
o a single tape or disk archive, and can restore individual files from the =
archive.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/tar/tar-1.27.1.tar.bz=
2', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (tar,1.27.1,N/A,GPLv3,base,r0,None,http://www.gnu.org/software/tar=
/,None,ErrAccess,autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native vi=
rtual/update-alternatives,GNU tar saves many files together into a single t=
ape or disk archive, and can restore individual files from the archive.,N/A=
,ftp://ftp.gnu.org/gnu/tar/tar-1.27.1.tar.bz2,Chen Qi <Qi.Chen@windriver.co=
m>)
['diffstat', '1.59', 'N/A', 'MIT', 'devel', 'http://invisible-island.net/di=
ffstat/', 'r0', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None',=
 'diffstat reads the output of diff and displays a histogram of the inserti=
ons, deletions, and modifications per-file. It is useful for reviewing larg=
e, complex patch files.', 'ErrAccess', 'N/A', 'ftp://invisible-island.net/d=
iffstat/diffstat-1.59.tgz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (diffstat,1.59,N/A,MIT,devel,r0,None,http://invisible-island.net/d=
iffstat/,None,ErrAccess,autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,diffstat r=
eads the output of diff and displays a histogram of the insertions, deletio=
ns, and modifications per-file. It is useful for reviewing large, complex p=
atch files.,N/A,ftp://invisible-island.net/diffstat/diffstat-1.59.tgz,Chong=
 Lu <Chong.Lu@windriver.com>)
['gstreamer1.0-plugins-bad', '1.4.1', 'N/A', 'GPLv2+ & LGPLv2+ & LGPLv2.1+ =
', 'multimedia', 'http://gstreamer.freedesktop.org/', 'r0', 'pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugin=
s-base bzip2 libpng jpeg bluez4 bzip2 curl libxml2 virtual/libgles2 virtual=
/egl gnutls neon orc sbc libxml2 libsndfile1 libusb1 udev wayland', 'https:=
//bugzilla.gnome.org/enter_bug.cgi?product=3DGstreamer', 'None', 'Plugins f=
or the GStreamer multimedia framework 1.x.', 'ErrAccess', 'N/A', 'http://gs=
treamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-1.4.1.tar.xz', =
'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (gstreamer1.0-plugins-bad,1.4.1,N/A,GPLv2+ & LGPLv2+ & LGPLv2.1+ ,=
multimedia,r0,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome=
=2Eorg/enter_bug.cgi?product=3DGstreamer,ErrAccess,pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native vir=
tual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugins-base bzi=
p2 libpng jpeg bluez4 bzip2 curl libxml2 virtual/libgles2 virtual/egl gnutl=
s neon orc sbc libxml2 libsndfile1 libusb1 udev wayland,Plugins for the GSt=
reamer multimedia framework 1.x.,N/A,http://gstreamer.freedesktop.org/src/g=
st-plugins-bad/gst-plugins-bad-1.4.1.tar.xz,Cristian Iorga <cristian.iorga@=
intel.com>)
['sudo', '1.8.10p3', 'N/A', 'ISC & BSD & Zlib', 'admin', 'http://www.sudo.w=
s', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc    ', 'http://www.sudo.ws/bugs/', 'None', 'Sudo (superus=
er do) allows a system administrator to give certain users (or groups of us=
ers) the ability to run some (or all) commands as root while logging all co=
mmands and arguments.', 'ErrAccess', 'N/A', 'http://ftp.sudo.ws/sudo/dist/s=
udo-1.8.10p3.tar.gz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (sudo,1.8.10p3,N/A,ISC & BSD & Zlib,admin,r0,None,http://www.sudo.=
ws,http://www.sudo.ws/bugs/,ErrAccess,autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc    ,Sudo (superuser do) allow=
s a system administrator to give certain users (or groups of users) the abi=
lity to run some (or all) commands as root while logging all commands and a=
rguments.,N/A,http://ftp.sudo.ws/sudo/dist/sudo-1.8.10p3.tar.gz,Chen Qi <Qi=
=2EChen@windriver.com>)
['calibrateproto', '0.0+gitAUTOINC+1da6fd1e2c', '0.0+gitAUTOINC+1da6fd1e2c'=
, 'MIT-style', 'x11/libs', 'http://www.x.org', 'r2', 'pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  util-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxo=
rg', 'None', 'This package provides the wire protocol for the Touchscreen c=
alibration extension.', 'MATCH', 'N/A', 'git://anongit.freedesktop.org/git/=
xorg/proto/calibrateproto', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (calibrateproto,0.0+gitAUTOINC+1da6fd1e2c,0.0+gitAUTOINC+1da6fd1e2=
c,MIT-style,x11/libs,r2,None,http://www.x.org,https://bugs.freedesktop.org/=
enter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros,Th=
is package provides the wire protocol for the Touchscreen calibration exten=
sion.,N/A,git://anongit.freedesktop.org/git/xorg/proto/calibrateproto,Ross =
Burton <ross.burton@intel.com>)
['openssl', '1.0.1j', 'N/A', 'openssl', 'libs/network', 'http://www.openssl=
=2Eorg/', 'r0', 'pkgconfig-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  perl-native-runtime cryptodev-linux =
openssl-native', 'http://www.openssl.org/news/vulnerabilities.html', 'None'=
, 'Secure Socket Layer (SSL) binary and related cryptographic tools.', 'Err=
Access', 'N/A', 'http://www.openssl.org/source/openssl-1.0.1j.tar.gz', 'Sau=
l Wold <sgw@linux.intel.com>', '1.0.1 is beta 1.0.0c is latest']
inserted (openssl,1.0.1j,N/A,openssl,libs/network,r0,None,http://www.openss=
l.org/,http://www.openssl.org/news/vulnerabilities.html,ErrAccess,pkgconfig=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  perl-native-runtime cryptodev-linux openssl-native,Secure Sock=
et Layer (SSL) binary and related cryptographic tools.,N/A,http://www.opens=
sl.org/source/openssl-1.0.1j.tar.gz,Saul Wold <sgw@linux.intel.com>)
['logrotate', '3.8.7', 'N/A', 'GPLv2', 'console/utils', 'https://fedorahost=
ed.org/logrotate/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  coreutils popt', 'None', 'None', 'Rotates, =
compresses, removes and mails system log files.', 'ErrAccess', 'N/A', 'http=
s://fedorahosted.org/releases/l/o/logrotate/logrotate-3.8.7.tar.gz', 'Rober=
t Yang <liezhi.yang@windriver.com>', 'None']
inserted (logrotate,3.8.7,N/A,GPLv2,console/utils,r0,None,https://fedorahos=
ted.org/logrotate/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  coreutils popt,Rotates, compresses, =
removes and mails system log files.,N/A,https://fedorahosted.org/releases/l=
/o/logrotate/logrotate-3.8.7.tar.gz,Robert Yang <liezhi.yang@windriver.com>)
['gdb-cross-canadian-i586', '7.8.1', 'N/A', 'GPLv2 & GPLv3 & LGPLv2 & LGPLv=
3', 'devel', 'http://www.gnu.org/software/gdb/', 'r0', 'autoconf-native aut=
omake-native libtool-native gnu-config-native  nativesdk-ncurses nativesdk-=
expat nativesdk-gettext nativesdk-readline nativesdk-python texinfo-native =
chrpath-replacement-native', 'None', 'None', 'GNU debugger (cross-canadian =
gdb for i586 target).', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/gdb/gdb-=
7.8.1.tar.gz', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None=
']
inserted (gdb-cross-canadian-i586,7.8.1,N/A,GPLv2 & GPLv3 & LGPLv2 & LGPLv3=
,devel,r0,None,http://www.gnu.org/software/gdb/,None,ErrAccess,autoconf-nat=
ive automake-native libtool-native gnu-config-native  nativesdk-ncurses nat=
ivesdk-expat nativesdk-gettext nativesdk-readline nativesdk-python texinfo-=
native chrpath-replacement-native,GNU debugger (cross-canadian gdb for i586=
 target).,N/A,ftp://ftp.gnu.org/gnu/gdb/gdb-7.8.1.tar.gz,Richard Purdie <ri=
chard.purdie@linuxfoundation.org>)
['base-files', '3.0.14', '3.0.14', 'GPLv2', 'base', '', 'r89', ' ', 'None',=
 'None', 'The base-files package creates the basic system directory structu=
re and provides a small set of key configuration files for the system.', 'M=
ATCH', 'N/A', 'file://rotation            file://nsswitch.conf            f=
ile://motd            file://inputrc            file://host.conf           =
 file://profile            file://shells            file://fstab           =
 file://filesystems            file://issue.net            file://issue    =
        file://usbd            file://share/dot.bashrc            file://sh=
are/dot.profile            file://licenses/GPL-2            ', 'Saul Wold <=
sgw@linux.intel.com>', 'None']
inserted (base-files,3.0.14,3.0.14,GPLv2,base,r89,None,,None,MATCH, ,The ba=
se-files package creates the basic system directory structure and provides =
a small set of key configuration files for the system.,N/A,file://rotation =
           file://nsswitch.conf            file://motd            file://in=
putrc            file://host.conf            file://profile            file=
://shells            file://fstab            file://filesystems            =
file://issue.net            file://issue            file://usbd            =
file://share/dot.bashrc            file://share/dot.profile            file=
://licenses/GPL-2            ,Saul Wold <sgw@linux.intel.com>)
['patchelf', '0.8', 'N/A', 'GPLv3', 'base', '', 'r0', 'autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', =
'None', 'Tool to allow editing of RPATH and interpreter fields in ELF binar=
ies.', 'ErrAccess', 'N/A', 'http://nixos.org/releases/patchelf/patchelf-0.8=
/patchelf-0.8.tar.bz2', 'None', 'None']
inserted (patchelf,0.8,N/A,GPLv3,base,r0,None,,None,ErrAccess,autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Too=
l to allow editing of RPATH and interpreter fields in ELF binaries.,N/A,htt=
p://nixos.org/releases/patchelf/patchelf-0.8/patchelf-0.8.tar.bz2,None)
['videoproto', '2.3.2', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x=
=2Eorg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freed=
esktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the w=
ire protocol for the X Video extension.  This extension alows for accerlate=
d drawing of videos.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/rel=
eases/individual/proto/videoproto-2.3.2.tar.bz2', 'Ross Burton <ross.burton=
@intel.com>', 'None']
inserted (videoproto,2.3.2,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.x.o=
rg,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  util-macros,This package provides the wire protocol f=
or the X Video extension.  This extension alows for accerlated drawing of v=
ideos.,N/A,http://xorg.freedesktop.org/releases/individual/proto/videoproto=
-2.3.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['gcc', '4.9.1', 'N/A', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel', 'htt=
p://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  mpfr gmp libmpc zlib  texinfo-native', 'None', 'None', 'GNU cc and gcc =
C compilers.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc=
-4.9.1.tar.bz2', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'No=
ne']
inserted (gcc,4.9.1,N/A,GPL-3.0-with-GCC-exception & GPLv3,devel,r0,None,ht=
tp://www.gnu.org/software/gcc/,None,ErrAccess,autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  mpfr gmp libmpc zlib  texinfo-native,GNU cc and gcc C compilers.=
,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2,Richard Purdie <=
richard.purdie@linuxfoundation.org>)
['lame', '3.99.5', 'N/A', 'LGPLv2+', 'console/utils', 'http://lame.sourcefo=
rge.net/', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  ncurses gettext-native', 'http:=
//sourceforge.net/tracker/?group_id=3D290&atid=3D100290', 'None', 'High qua=
lity MP3 audio encoder.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge=
=2Enet/lame/lame-3.99.5.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (lame,3.99.5,N/A,LGPLv2+,console/utils,r1,None,http://lame.sourcef=
orge.net/,http://sourceforge.net/tracker/?group_id=3D290&atid=3D100290,ErrA=
ccess,pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ncurses gettext-native,High quality MP3 aud=
io encoder.,N/A,http://downloads.sourceforge.net/lame/lame-3.99.5.tar.gz,Sa=
ul Wold <sgw@linux.intel.com>)
['systemd-systemctl-native', '1.0', '1.0', 'MIT', 'base', '', 'r6', ' ', 'N=
one', 'None', 'Wrapper for enabling systemd services.', 'MATCH', 'N/A', 'fi=
le://systemctl', 'None', 'None']
inserted (systemd-systemctl-native,1.0,1.0,MIT,base,r6,None,,None,MATCH, ,W=
rapper for enabling systemd services.,N/A,file://systemctl,None)
['alsa-lib', '1.0.28', 'N/A', 'LGPLv2.1 & GPLv2+', 'libs/multimedia', 'http=
://www.alsa-project.org', 'r0', 'pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'https://bugt=
rack.alsa-project.org/alsa-bug/login_page.php', 'None', 'ALSA sound library=
=2E', 'ErrAccess', 'N/A', 'ftp://ftp.alsa-project.org/pub/lib/alsa-lib-1.0.=
28.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (alsa-lib,1.0.28,N/A,LGPLv2.1 & GPLv2+,libs/multimedia,r0,None,htt=
p://www.alsa-project.org,https://bugtrack.alsa-project.org/alsa-bug/login_p=
age.php,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  ,ALSA sound library.,N/A,ftp://=
ftp.alsa-project.org/pub/lib/alsa-lib-1.0.28.tar.bz2,Cristian Iorga <cristi=
an.iorga@intel.com>)
['libtool-cross', '2.4.2', 'N/A', 'GPLv2 & LGPLv2.1', 'devel', 'http://www.=
gnu.org/software/libtool/libtool.html', 'r6.1', 'autoconf-native automake-n=
ative gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  libtool-native texinfo-native', 'None', 'None'=
, 'This is GNU libtool, a generic library support script. Libtool hides the=
 complexity of generating special library types (such as shared libraries) =
behind a consistent interface.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu=
/libtool/libtool-2.4.2.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', =
'None']
inserted (libtool-cross,2.4.2,N/A,GPLv2 & LGPLv2.1,devel,r6.1,None,http://w=
ww.gnu.org/software/libtool/libtool.html,None,ErrAccess,autoconf-native aut=
omake-native gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  libtool-native texinfo-native,This is G=
NU libtool, a generic library support script. Libtool hides the complexity =
of generating special library types (such as shared libraries) behind a con=
sistent interface.,N/A,ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz,R=
obert Yang <liezhi.yang@windriver.com>)
['librsvg', '2.40.2', 'N/A', 'LGPLv2+', 'x11/utils', 'http://ftp.gnome.org/=
pub/GNOME/sources/librsvg/', 'r0', 'pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  cairo gdk-pix=
buf glib-2.0 libcroco libxml2 pango gnome-common-native qemu-native gtk-doc=
-stub-native gdk-pixbuf-native', 'https://bugzilla.gnome.org/', 'None', 'Li=
brary for rendering SVG files.', 'ErrAccess', 'N/A', 'http://ftp.gnome.org/=
pub/GNOME/sources/librsvg/2.40/librsvg-2.40.2.tar.xz;name=3Darchive', 'Ross=
 Burton <ross.burton@intel.com>', 'None']
inserted (librsvg,2.40.2,N/A,LGPLv2+,x11/utils,r0,None,http://ftp.gnome.org=
/pub/GNOME/sources/librsvg/,https://bugzilla.gnome.org/,ErrAccess,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  cairo gdk-pixbuf glib-2.0 libcroco libxml2 pango gnome-com=
mon-native qemu-native gtk-doc-stub-native gdk-pixbuf-native,Library for re=
ndering SVG files.,N/A,http://ftp.gnome.org/pub/GNOME/sources/librsvg/2.40/=
librsvg-2.40.2.tar.xz;name=3Darchive,Ross Burton <ross.burton@intel.com>)
['fstests', '0.1+gitAUTOINC+e5939ff608', '0.1+gitAUTOINC+e5939ff608', 'Zlib=
', 'devel', 'http://www.o-hand.com', 'r0', 'pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  pango=
 libxext libxft virtual/libx11 gtk+', 'None', 'None', 'Various benchmarning=
 tests for X.', 'MATCH', '0.0+svnr426', 'git://git.yoctoproject.org/fstests=
', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (fstests,0.1+gitAUTOINC+e5939ff608,0.1+gitAUTOINC+e5939ff608,Zlib,=
devel,r0,None,http://www.o-hand.com,None,MATCH,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  pa=
ngo libxext libxft virtual/libx11 gtk+,Various benchmarning tests for X.,0.=
0+svnr426,git://git.yoctoproject.org/fstests,Richard Purdie <richard.purdie=
@linuxfoundation.org>)
['mkelfimage', '4.0+gitAUTOINC+686a48a339', '4.0+gitAUTOINC+e4db49730e', 'G=
PLv2', 'devel', 'http://www.coreboot.org/Mkelfimage', 'r0', 'autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   zlib=
', 'None', 'None', 'Utility for creating ELF boot images for ELF-based Linu=
x kernel images.', 'UPDATE', 'N/A', 'git://review.coreboot.org/p/coreboot;p=
rotocol=3Dhttp', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (mkelfimage,4.0+gitAUTOINC+686a48a339,4.0+gitAUTOINC+e4db49730e,GP=
Lv2,devel,r0,None,http://www.coreboot.org/Mkelfimage,None,UPDATE,autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   =
zlib,Utility for creating ELF boot images for ELF-based Linux kernel images=
=2E,N/A,git://review.coreboot.org/p/coreboot;protocol=3Dhttp,Saul Wold <sgw=
@linux.intel.com>)
['gtk-engines', '2.20.2', 'N/A', 'LGPLv2.1', 'x11/base', 'http://www.gnome.=
org/', 'r3', 'pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  intltool-native gtk+ gnome-common-n=
ative', 'https://bugzilla.gnome.org/', 'None', 'GTK+ theme engines.', 'ErrA=
ccess', '2.91.1', 'http://ftp.gnome.org/pub/GNOME/sources/gtk-engines/2.20/=
gtk-engines-2.20.2.tar.bz2;name=3Darchive', 'Ross Burton <ross.burton@intel=
=2Ecom>', '2.91.1 is a 3.0 beta release']
inserted (gtk-engines,2.20.2,N/A,LGPLv2.1,x11/base,r3,None,http://www.gnome=
=2Eorg/,https://bugzilla.gnome.org/,ErrAccess,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  int=
ltool-native gtk+ gnome-common-native,GTK+ theme engines.,2.91.1,http://ftp=
=2Egnome.org/pub/GNOME/sources/gtk-engines/2.20/gtk-engines-2.20.2.tar.bz2;=
name=3Darchive,Ross Burton <ross.burton@intel.com>)
['docbook-xml-dtd4', '4.5', 'N/A', 'OASIS', 'base', 'http://www.docbook.org=
/xml/', 'r0', ' ', 'None', 'None', 'Document type definitions for verificat=
ion of XML data files against the DocBook rule set, it ships with the lates=
t DocBook 4.5 XML DTD, as well as a selected set of legacy DTDs for use wit=
h older documents, including 4.0, 4.1.2, 4.2, 4.3 and 4.4', 'ErrAccess', 'N=
/A', 'ftp://ftp.debian.org/debian/pool/main/d/docbook-xml/docbook-xml_4.5.o=
rig.tar.gz', 'None', 'None']
inserted (docbook-xml-dtd4,4.5,N/A,OASIS,base,r0,None,http://www.docbook.or=
g/xml/,None,ErrAccess, ,Document type definitions for verification of XML d=
ata files against the DocBook rule set, it ships with the latest DocBook 4.=
5 XML DTD, as well as a selected set of legacy DTDs for use with older docu=
ments, including 4.0, 4.1.2, 4.2, 4.3 and 4.4,N/A,ftp://ftp.debian.org/debi=
an/pool/main/d/docbook-xml/docbook-xml_4.5.orig.tar.gz,None)
['liburi-perl', '1.60', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', '', 'r0',=
 ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   perl perl perl-native', 'None', 'None', 'This package contains the =
URI.pm module with friends. The module implements the URI class. URI object=
s can be used to access and manipulate the various components that make up =
these strings.', 'ErrAccess', 'N/A', 'http://www.cpan.org/authors/id/G/GA/G=
AAS/URI-1.60.tar.gz', 'Kai Kang <kai.kang@windriver.com>', 'None']
inserted (liburi-perl,1.60,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,None,,None,E=
rrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc   perl perl perl-native,This package contains the URI.pm modul=
e with friends. The module implements the URI class. URI objects can be use=
d to access and manipulate the various components that make up these string=
s.,N/A,http://www.cpan.org/authors/id/G/GA/GAAS/URI-1.60.tar.gz,Kai Kang <k=
ai.kang@windriver.com>)
['libcheck', '0.9.14', 'N/A', 'LGPLv2.1+', 'devel', 'http://check.sourcefor=
ge.net/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc   texinfo-native', 'None', 'None'=
, 'Check - unit testing framework for C code.', 'ErrAccess', 'N/A', 'http:/=
/downloads.sourceforge.net/check/check-0.9.14.tar.gz', 'Robert Yang <liezhi=
=2Eyang@windriver.com>', 'None']
inserted (libcheck,0.9.14,N/A,LGPLv2.1+,devel,r0,None,http://check.sourcefo=
rge.net/,None,ErrAccess,pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native,Check - u=
nit testing framework for C code.,N/A,http://downloads.sourceforge.net/chec=
k/check-0.9.14.tar.gz,Robert Yang <liezhi.yang@windriver.com>)
['eee-acpi-scripts', '1.1.12+gitAUTOINC+9d4cdedca2', '1.1.12+gitAUTOINC+9d4=
cdedca2', 'GPLv2', 'base', 'http://alioth.debian.org/projects/debian-eeepc/=
', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  ', 'None', 'None', 'eeePC specific ACPI scripts.', 'MATCH', =
'1.1.12+9d4cdedca25b396405f8587f9c4fbf8229e041c2', 'git://git.debian.org/gi=
t/debian-eeepc/eeepc-acpi-scripts.git', 'Saul Wold <sgw@linux.intel.com>', =
'None']
inserted (eee-acpi-scripts,1.1.12+gitAUTOINC+9d4cdedca2,1.1.12+gitAUTOINC+9=
d4cdedca2,GPLv2,base,r0,None,http://alioth.debian.org/projects/debian-eeepc=
/,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  ,eeePC specific ACPI scripts.,1.1.12+9d4cdedca25b396405f8=
587f9c4fbf8229e041c2,git://git.debian.org/git/debian-eeepc/eeepc-acpi-scrip=
ts.git,Saul Wold <sgw@linux.intel.com>)
['gperf', '3.0.4', 'N/A', 'GPLv3+', 'base', 'http://www.gnu.org/software/gp=
erf', 'r0', 'autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ', 'None', 'None', 'GNU gperf is a perfect hash funct=
ion generator', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/gperf/gperf-3.0.=
4.tar.gz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (gperf,3.0.4,N/A,GPLv3+,base,r0,None,http://www.gnu.org/software/g=
perf,None,ErrAccess,autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ,GNU gperf is a perfect hash function generato=
r,N/A,ftp://ftp.gnu.org/gnu/gperf/gperf-3.0.4.tar.gz,Ross Burton <ross.burt=
on@intel.com>)
['mpeg2dec', '0.4.1', 'N/A', 'GPLv2+', 'libs', 'http://libmpeg2.sourceforge=
=2Enet/', 'r2', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc   virtual/libx11 libxext libxv', =
'None', 'None', 'Library and test program for decoding MPEG-2 and MPEG-1 vi=
deo streams.', 'ErrAccess', 'N/A', 'http://libmpeg2.sourceforge.net/files/m=
peg2dec-0.4.1.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'Why are we curre=
ntly at 0.4.1?']
inserted (mpeg2dec,0.4.1,N/A,GPLv2+,libs,r2,None,http://libmpeg2.sourceforg=
e.net/,None,ErrAccess,pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc   virtual/libx11 libxext lib=
xv,Library and test program for decoding MPEG-2 and MPEG-1 video streams.,N=
/A,http://libmpeg2.sourceforge.net/files/mpeg2dec-0.4.1.tar.gz,Saul Wold <s=
gw@linux.intel.com>)
['clutter-gtk-1.0', '1.4.4', 'N/A', 'LGPLv2+', 'base', 'http://www.clutter-=
project.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  clutter-1.0 gtk+3 gtk-doc-stub-native', 'None', 'None', 'Library for em=
bedding a Clutter canvas in a GTK+ application.', 'ErrAccess', 'N/A', 'http=
://ftp.gnome.org/pub/GNOME/sources/clutter-gtk/1.4/clutter-gtk-1.4.4.tar.xz=
;name=3Darchive', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (clutter-gtk-1.0,1.4.4,N/A,LGPLv2+,base,r0,None,http://www.clutter=
-project.org/,None,ErrAccess,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  clutter-1.0 gtk+3 gtk-doc-stub-native,Library for embedding a Cl=
utter canvas in a GTK+ application.,N/A,http://ftp.gnome.org/pub/GNOME/sour=
ces/clutter-gtk/1.4/clutter-gtk-1.4.4.tar.xz;name=3Darchive,Ross Burton <ro=
ss.burton@intel.com>)
['perl', '5.20.0', 'N/A', 'Artistic-1.0 | GPL-1.0', 'devel', 'http://www.pe=
rl.org/', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  virtual/db grep-native gdbm zlib perl-native', 'None'=
, 'None', 'Perl scripting language.', 'ErrAccess', 'N/A', 'http://www.cpan.=
org/src/5.0/perl-5.20.0.tar.gz', 'Hongxu Jia <hongxu.jia@windriver.com>', '=
None']
inserted (perl,5.20.0,N/A,Artistic-1.0 | GPL-1.0,devel,r1,None,http://www.p=
erl.org/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  virtual/db grep-native gdbm zlib perl-native,P=
erl scripting language.,N/A,http://www.cpan.org/src/5.0/perl-5.20.0.tar.gz,=
Hongxu Jia <hongxu.jia@windriver.com>)
['linux-yocto-tiny', '3.17+gitAUTOINC+9ba007f8d0_1a6dd1205d', '2012+gitAUTO=
INC+5ff54d8fbf', 'GPLv2', 'kernel', '', 'r0', '  xz-native bc-native virtua=
l/i586-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native depmodwr=
apper-cross bc-native', 'None', 'None', 'Yocto Kernel', 'UPDATE', 'N/A', 'g=
it://git.yoctoproject.org/linux-yocto-dev.git;bareclone=3D1;branch=3Dstanda=
rd/tiny/base,meta;name=3Dmachine,meta', 'Saul Wold <sgw@linux.intel.com>', =
'None']
inserted (linux-yocto-tiny,3.17+gitAUTOINC+9ba007f8d0_1a6dd1205d,2012+gitAU=
TOINC+5ff54d8fbf,GPLv2,kernel,r0,None,,None,UPDATE,  xz-native bc-native vi=
rtual/i586-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native depm=
odwrapper-cross bc-native,Yocto Kernel,N/A,git://git.yoctoproject.org/linux=
-yocto-dev.git;bareclone=3D1;branch=3Dstandard/tiny/base,meta;name=3Dmachin=
e,meta,Saul Wold <sgw@linux.intel.com>)
['pigz', '2.3.1', 'N/A', 'Zlib', 'console/utils', 'http://zlib.net/pigz/', =
'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  zlib', 'None', 'None', 'pigz, which stands for parallel impleme=
ntation of gzip, is a fully functional replacement for gzip that exploits m=
ultiple processors and multiple cores to the hilt when compressing data. pi=
gz was written by Mark Adler, and uses the zlib and pthread libraries.', 'E=
rrAccess', 'N/A', 'http://zlib.net/pigz/pigz-2.3.1.tar.gz', 'Hongxu Jia <ho=
ngxu.jia@windriver.com>', 'None']
inserted (pigz,2.3.1,N/A,Zlib,console/utils,r0,None,http://zlib.net/pigz/,N=
one,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  zlib,pigz, which stands for parallel implementation of g=
zip, is a fully functional replacement for gzip that exploits multiple proc=
essors and multiple cores to the hilt when compressing data. pigz was writt=
en by Mark Adler, and uses the zlib and pthread libraries.,N/A,http://zlib.=
net/pigz/pigz-2.3.1.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['compositeproto', '0.4.2', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://w=
ww.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.fre=
edesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the=
 wire protocol for the X composite extension.  The X composite extension pr=
ovides three related mechanisms for compositing and off-screen storage.', '=
ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/c=
ompositeproto-0.4.2.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (compositeproto,0.4.2,N/A,MIT & MIT-style,x11/libs,r1,1,http://www=
=2Ex.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAcces=
s,pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros,This package provides the wire prot=
ocol for the X composite extension.  The X composite extension provides thr=
ee related mechanisms for compositing and off-screen storage.,N/A,http://xo=
rg.freedesktop.org/releases/individual/proto/compositeproto-0.4.2.tar.bz2,R=
oss Burton <ross.burton@intel.com>)
['xf86vidmodeproto', '2.3.1', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org',=
 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire prot=
ocol for the XFree86 video mode extension.  This extension allows client ap=
plications to get and set video mode timings.', 'ErrAccess', 'N/A', 'http:/=
/xorg.freedesktop.org/releases/individual/proto/xf86vidmodeproto-2.3.1.tar.=
bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86vidmodeproto,2.3.1,N/A,MIT,x11/libs,r1,1,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  util-macros,This package provides the wire protocol for the=
 XFree86 video mode extension.  This extension allows client applications t=
o get and set video mode timings.,N/A,http://xorg.freedesktop.org/releases/=
individual/proto/xf86vidmodeproto-2.3.1.tar.bz2,Ross Burton <ross.burton@in=
tel.com>)
['man', '1.6g', 'N/A', 'GPLv2', 'console/utils', 'http://primates.ximian.co=
m/~flucifredi/man', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  groff less', 'None', 'None', 'A set of docu=
mentation tools: man, apropos and whatis', 'ErrAccess', 'N/A', 'http://prim=
ates.ximian.com/~flucifredi/man/man-1.6g.tar.gz', 'Hongxu Jia <hongxu.jia@w=
indriver.com>', 'None']
inserted (man,1.6g,N/A,GPLv2,console/utils,r1,None,http://primates.ximian.c=
om/~flucifredi/man,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  groff less,A set of documentation to=
ols: man, apropos and whatis,N/A,http://primates.ximian.com/~flucifredi/man=
/man-1.6g.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['bind', '9.9.5', 'N/A', 'ISC & BSD', 'console/network', 'http://www.isc.or=
g/sw/bind/', 'r0', 'autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  openssl libcap update-rc.d-native initscripts =
base-files base-passwd shadow-native shadow-sysroot shadow', 'None', 'None'=
, 'ISC Internet Domain Name Server.', 'ErrAccess', 'N/A', 'ftp://ftp.isc.or=
g/isc/bind9/9.9.5/bind-9.9.5.tar.gz', 'Kai Kang <kai.kang@windriver.com>', =
'None']
inserted (bind,9.9.5,N/A,ISC & BSD,console/network,r0,None,http://www.isc.o=
rg/sw/bind/,None,ErrAccess,autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  openssl libcap update-rc.d-native inits=
cripts base-files base-passwd shadow-native shadow-sysroot shadow,ISC Inter=
net Domain Name Server.,N/A,ftp://ftp.isc.org/isc/bind9/9.9.5/bind-9.9.5.ta=
r.gz,Kai Kang <kai.kang@windriver.com>)
['libx11', '1.6.2', 'N/A', 'MIT & MIT-style & BSD', 'x11/libs', 'http://www=
=2Ex.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native virtual/gettext gettext-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
util-macros xproto xextproto xtrans libxcb kbproto inputproto xproto-native=
', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', "This =
package provides a client interface to the X Window System, otherwise known=
 as 'Xlib'.  It provides a complete API for the basic functions of the wind=
ow system.", 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/indi=
vidual/lib/libX11-1.6.2.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'N=
one']
inserted (libx11,1.6.2,N/A,MIT & MIT-style & BSD,x11/libs,r0,1,http://www.x=
=2Eorg,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros xproto=
 xextproto xtrans libxcb kbproto inputproto xproto-native,This package prov=
ides a client interface to the X Window System, otherwise known as 'Xlib'. =
 It provides a complete API for the basic functions of the window system.,N=
/A,http://xorg.freedesktop.org/releases/individual/lib/libX11-1.6.2.tar.bz2=
,Ross Burton <ross.burton@intel.com>)
['mesa-gl', '10.3.4', 'N/A', 'MIT', 'x11', 'http://mesa3d.org', 'r0', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  expat makedepend-nativ=
e flex-native bison-native libxml2-native udev  python-native   dri2proto l=
ibdrm xf86driproto glproto virtual/libx11 libxext libxxf86vm libxdamage lib=
xfixes', 'https://bugs.freedesktop.org', '2', 'Mesa is an open-source imple=
mentation of the OpenGL specification - a system for rendering interactive =
3D graphics.  A variety of device drivers allows Mesa to be used in many di=
fferent environments ranging from software emulation to complete hardware a=
cceleration for modern GPUs. Mesa is used as part of the overall Direct Ren=
dering Infrastructure and X.org environment.', 'ErrAccess', 'N/A', 'ftp://f=
tp.freedesktop.org/pub/mesa/10.3.4/MesaLib-10.3.4.tar.bz2', 'None', 'None']
inserted (mesa-gl,10.3.4,N/A,MIT,x11,r0,2,http://mesa3d.org,https://bugs.fr=
eedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  expat makedepend-native flex-native bison-native libxml2-native udev =
 python-native   dri2proto libdrm xf86driproto glproto virtual/libx11 libxe=
xt libxxf86vm libxdamage libxfixes,Mesa is an open-source implementation of=
 the OpenGL specification - a system for rendering interactive 3D graphics.=
  A variety of device drivers allows Mesa to be used in many different envi=
ronments ranging from software emulation to complete hardware acceleration =
for modern GPUs. Mesa is used as part of the overall Direct Rendering Infra=
structure and X.org environment.,N/A,ftp://ftp.freedesktop.org/pub/mesa/10.=
3.4/MesaLib-10.3.4.tar.bz2,None)
['python-smmap', '0.8.2', 'N/A', 'BSD', 'devel/python', 'http://github.com/=
gitpython-developers/GitPython', 'r0', ' virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc   python-native python  python-=
native  python-distribute-native', 'None', 'None', 'A pure Python implement=
ation of a sliding memory map to help unifying memory mapped access on 32 a=
nd 64 bit systems and to help managing resources more efficiently.', 'ErrAc=
cess', 'N/A', 'http://pypi.python.org/packages/source/s/smmap/smmap-0.8.2.t=
ar.gz', 'None', 'None']
inserted (python-smmap,0.8.2,N/A,BSD,devel/python,r0,None,http://github.com=
/gitpython-developers/GitPython,None,ErrAccess, virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc   python-native python  =
python-native  python-distribute-native,A pure Python implementation of a s=
liding memory map to help unifying memory mapped access on 32 and 64 bit sy=
stems and to help managing resources more efficiently.,N/A,http://pypi.pyth=
on.org/packages/source/s/smmap/smmap-0.8.2.tar.gz,None)
['powertop', '2.7', 'N/A', 'GPLv2', 'base', 'http://01.org/powertop/', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ncurses libnl p=
ciutils virtual/update-alternatives', 'http://bugzilla.lesswatts.org/', 'No=
ne', 'Linux tool to diagnose issues with power consumption and power manage=
ment.', 'ErrAccess', 'N/A', 'http://01.org/sites/default/files/downloads/po=
wertop/powertop-2.7.tar.gz', 'Richard Purdie <richard.purdie@linuxfoundatio=
n.org>', "Do not upgrade to version 1.97 since it's a beta release of the c=
omming PowerTOP 2.0"]
inserted (powertop,2.7,N/A,GPLv2,base,r0,None,http://01.org/powertop/,http:=
//bugzilla.lesswatts.org/,ErrAccess,pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native virtual/gettext ge=
ttext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  ncurses libnl pciutils virtual/update-alternatives,Linux =
tool to diagnose issues with power consumption and power management.,N/A,ht=
tp://01.org/sites/default/files/downloads/powertop/powertop-2.7.tar.gz,Rich=
ard Purdie <richard.purdie@linuxfoundation.org>)
['fotowall', '0.9', 'N/A', 'GPLv2+', 'x11/apps', 'http://www.enricoros.com/=
opensource/fotowall', 'r4', 'qt4-tools-native qt4-x11  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None=
', 'Fotowall is a creative tool that allows you to layout your photos or pi=
ctures in a personal way. You can add pictures, then resize, move, change c=
olors, text, shadows, etc..', 'ErrAccess', 'N/A', 'http://qt-apps.org/CONTE=
NT/content-files/71316-Fotowall-0.9.tar.bz2', 'Paul Eggleton <paul.eggleton=
@linux.intel.com>', 'None']
inserted (fotowall,0.9,N/A,GPLv2+,x11/apps,r4,None,http://www.enricoros.com=
/opensource/fotowall,None,ErrAccess,qt4-tools-native qt4-x11  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Fotowall=
 is a creative tool that allows you to layout your photos or pictures in a =
personal way. You can add pictures, then resize, move, change colors, text,=
 shadows, etc..,N/A,http://qt-apps.org/CONTENT/content-files/71316-Fotowall=
-0.9.tar.bz2,Paul Eggleton <paul.eggleton@linux.intel.com>)
['pciutils', '3.2.1', 'N/A', 'GPLv2+', 'console/utils', 'http://atrey.karli=
n.mff.cuni.cz/~mj/pciutils.shtml', 'r0', ' virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  zlib kmod', 'None', 'None', =
'The PCI Utilities package contains a library for portable access to PCI bu=
s configuration space and several utilities based on this library.', 'ErrAc=
cess', 'N/A', 'http://kernel.org/pub/software/utils/pciutils/pciutils-3.2.1=
=2Etar.bz2', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (pciutils,3.2.1,N/A,GPLv2+,console/utils,r0,None,http://atrey.karl=
in.mff.cuni.cz/~mj/pciutils.shtml,None,ErrAccess, virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib kmod,The PCI Uti=
lities package contains a library for portable access to PCI bus configurat=
ion space and several utilities based on this library.,N/A,http://kernel.or=
g/pub/software/utils/pciutils/pciutils-3.2.1.tar.bz2,Chen Qi <Qi.Chen@windr=
iver.com>)
['libfile-checktree-perl', '4.41', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs'=
, 'http://search.cpan.org/~flora/File-CheckTree/', 'r0', ' virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-n=
ative', 'None', 'None', 'The validate() routine takes a single multiline st=
ring consisting of directives, each containing a filename plus a file test =
to try on it. (The file test may also be a "cd", causing subsequent relativ=
e filenames to be interpreted relative to that directory.) After the file t=
est you may put || die to make it a fatal error if the file test fails. The=
 default is || warn. The file test may optionally have a "!\' prepended to =
test for the opposite condition. If you do a cd and then list some relative=
 filenames, you may want to indent them slightly for readability. If you su=
pply your own die() or warn() message, you can use $file to interpolate the=
 filename. Filetests may be bunched: "-rwx" tests for all of -r, -w, and -x=
=2E Only the first failed test of the bunch will produce a warning. The rou=
tine returns the number of warnings issued.', 'ErrAccess', 'N/A', 'http://s=
earch.cpan.org/CPAN/authors/id/F/FL/FLORA/File-CheckTree-4.41.tar.gz', 'Sau=
l Wold <sgw@linux.intel.com>', 'None']
inserted (libfile-checktree-perl,4.41,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,N=
one,http://search.cpan.org/~flora/File-CheckTree/,None,ErrAccess, virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl=
 perl-native,The validate() routine takes a single multiline string consist=
ing of directives, each containing a filename plus a file test to try on it=
=2E (The file test may also be a "cd", causing subsequent relative filename=
s to be interpreted relative to that directory.) After the file test you ma=
y put || die to make it a fatal error if the file test fails. The default i=
s || warn. The file test may optionally have a "!' prepended to test for th=
e opposite condition. If you do a cd and then list some relative filenames,=
 you may want to indent them slightly for readability. If you supply your o=
wn die() or warn() message, you can use $file to interpolate the filename. =
Filetests may be bunched: "-rwx" tests for all of -r, -w, and -x. Only the =
first failed test of the bunch will produce a warning. The routine returns =
the number of warnings issued.,N/A,http://search.cpan.org/CPAN/authors/id/F=
/FL/FLORA/File-CheckTree-4.41.tar.gz,Saul Wold <sgw@linux.intel.com>)
['binutils', '2.24', 'N/A', 'GPLv3', 'devel', 'http://www.gnu.org/software/=
binutils/', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native biso=
n-native zlib-native gnu-config-native autoconf-native flex bison zlib texi=
nfo-native virtual/update-alternatives', 'http://sourceware.org/bugzilla/',=
 'None', 'The GNU Binutils are a collection of binary tools. The main ones =
are ld (GNU Linker), and as (GNU Assembler). This package also includes add=
ition tools such as addr2line (Converts addresses into filenames and line n=
umbers), ar (utility for creating, modifying and extracting archives), nm (=
list symbols in object files), objcopy (copy and translate object files), o=
bjdump (Display object information), and other tools and related libraries.=
', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz=
2', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (binutils,2.24,N/A,GPLv3,devel,r0,None,http://www.gnu.org/software=
/binutils/,http://sourceware.org/bugzilla/,ErrAccess,autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native virtual/gettext ge=
ttext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  flex-native bison-native zlib-native gnu-config-native au=
toconf-native flex bison zlib texinfo-native virtual/update-alternatives,Th=
e GNU Binutils are a collection of binary tools. The main ones are ld (GNU =
Linker), and as (GNU Assembler). This package also includes addition tools =
such as addr2line (Converts addresses into filenames and line numbers), ar =
(utility for creating, modifying and extracting archives), nm (list symbols=
 in object files), objcopy (copy and translate object files), objdump (Disp=
lay object information), and other tools and related libraries.,N/A,ftp://f=
tp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2,Robert Yang <liezhi.yang@wind=
river.com>)
['qt-mobility-embedded', '1.2.0', 'N/A', 'LGPLv2.1', 'libs', 'http://qt-pro=
ject.org/', 'r8', 'qt4-tools-native qt4-embedded  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  gstreamer util-linux =
bluez4 pulseaudio', 'None', 'None', 'Mobile device API extensions for Qt/Em=
bedded 4.x.', 'ErrAccess', 'N/A', 'http://pkgs.fedoraproject.org/repo/pkgs/=
qt-mobility/qt-mobility-opensource-src-1.2.0.tar.gz/ea5db5a8d3dd4709c2926dc=
eda646bd8/qt-mobility-opensource-src-1.2.0.tar.gz', 'Paul Eggleton <paul.eg=
gleton@linux.intel.com>', 'None']
inserted (qt-mobility-embedded,1.2.0,N/A,LGPLv2.1,libs,r8,None,http://qt-pr=
oject.org/,None,ErrAccess,qt4-tools-native qt4-embedded  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gstreamer util=
-linux bluez4 pulseaudio,Mobile device API extensions for Qt/Embedded 4.x.,=
N/A,http://pkgs.fedoraproject.org/repo/pkgs/qt-mobility/qt-mobility-opensou=
rce-src-1.2.0.tar.gz/ea5db5a8d3dd4709c2926dceda646bd8/qt-mobility-opensourc=
e-src-1.2.0.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['libuser', '0.60', 'N/A', 'LGPLv2', 'base', 'https://fedorahosted.org/libu=
ser/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  popt=
 libpam glib-2.0 xz-native docbook-utils-native linuxdoc-tools-native pytho=
n  python-native ', 'https://fedorahosted.org/libuser/newticket', 'None', '=
The libuser library implements a standardized interface for manipulating an=
d administering user and group accounts', 'ErrAccess', 'N/A', 'https://fedo=
rahosted.org/releases/l/i/libuser/libuser-0.60.tar.xz', 'Chong Lu <Chong.Lu=
@windriver.com>', 'None']
inserted (libuser,0.60,N/A,LGPLv2,base,r0,None,https://fedorahosted.org/lib=
user/,https://fedorahosted.org/libuser/newticket,ErrAccess,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  popt libpam glib-2.0 xz-native doc=
book-utils-native linuxdoc-tools-native python  python-native ,The libuser =
library implements a standardized interface for manipulating and administer=
ing user and group accounts,N/A,https://fedorahosted.org/releases/l/i/libus=
er/libuser-0.60.tar.xz,Chong Lu <Chong.Lu@windriver.com>)
['lsb', '4.1', 'N/A', 'GPLv2+', 'console/utils', 'http://prdownloads.source=
forge.net/lsb', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'None', 'None', 'LSB support for OpenEmbedde=
d.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge.net/project/lsb/lsb_=
release/1.4/lsb-release-1.4.tar.gz', 'Hongxu Jia <hongxu.jia@windriver.com>=
', 'None']
inserted (lsb,4.1,N/A,GPLv2+,console/utils,r2,None,http://prdownloads.sourc=
eforge.net/lsb,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ,LSB support for OpenEmbedded.,N/A,http:=
//downloads.sourceforge.net/project/lsb/lsb_release/1.4/lsb-release-1.4.tar=
=2Egz,Hongxu Jia <hongxu.jia@windriver.com>)
['libconvert-asn1-perl', '0.27', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', =
'', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc   perl perl-native', 'None', 'None', 'Convert::ASN1 - Perl A=
SN.1 Encode/Decode library.', 'ErrAccess', 'N/A', 'http://search.cpan.org/C=
PAN/authors/id/G/GB/GBARR/Convert-ASN1-0.27.tar.gz', 'Richard Purdie <richa=
rd.purdie@linuxfoundation.org>', 'None']
inserted (libconvert-asn1-perl,0.27,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,Non=
e,,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc   perl perl-native,Convert::ASN1 - Perl ASN.1 Encode/=
Decode library.,N/A,http://search.cpan.org/CPAN/authors/id/G/GB/GBARR/Conve=
rt-ASN1-0.27.tar.gz,Richard Purdie <richard.purdie@linuxfoundation.org>)
['opensp', '1.5.2', 'N/A', 'BSD', 'libs', 'http://openjade.sourceforge.net'=
, 'r1', 'autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'An SGM=
L parser used by the OpenJade suite of utilities.', 'ErrAccess', 'N/A', 'ht=
tp://downloads.sourceforge.net/openjade/OpenSP-1.5.2.tar.gz', 'Paul Eggleto=
n <paul.eggleton@linux.intel.com>', 'None']
inserted (opensp,1.5.2,N/A,BSD,libs,r1,None,http://openjade.sourceforge.net=
,None,ErrAccess,autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,An SGML parser use=
d by the OpenJade suite of utilities.,N/A,http://downloads.sourceforge.net/=
openjade/OpenSP-1.5.2.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['acpid', '2.0.22', 'N/A', 'GPLv2+', 'base', 'http://sourceforge.net/projec=
ts/acpid/', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc   update-rc.d-native initscripts', 'http://sourc=
eforge.net/tracker/?group_id=3D33140&atid=3D407341', 'None', 'A daemon for =
delivering ACPI events.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge=
=2Enet/acpid2/acpid-2.0.22.tar.xz', 'An\xc3\xadbal Lim\xc3\xb3n <anibal.lim=
on@linux.intel.com>', 'None']
inserted (acpid,2.0.22,N/A,GPLv2+,base,r0,None,http://sourceforge.net/proje=
cts/acpid/,http://sourceforge.net/tracker/?group_id=3D33140&atid=3D407341,E=
rrAccess,autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc   update-rc.d-native initscripts,A daemon for delivering A=
CPI events.,N/A,http://downloads.sourceforge.net/acpid2/acpid-2.0.22.tar.xz=
,An?bal Lim?n <anibal.limon@linux.intel.com>)
['lz4', 'r123', 'N/A', 'BSD', 'base', '', 'r0', ' virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'L=
Z4 is a very fast lossless compression algorithm, providing compression spe=
ed at 400 MB/s per core, scalable with multi-cores CPU. It also features an=
 extremely fast decoder, with speed in multiple GB/s per core, typically re=
aching RAM speed limits on multi-core systems.', 'ErrUnsupportedProto', '12=
2', 'svn://lz4.googlecode.com/svn/;module=3Dtrunk;protocol=3Dhttp', 'Armin =
Kuster <akuster808@gmail.com>', 'None']
inserted (lz4,r123,N/A,BSD,base,r0,None,,None,ErrUnsupportedProto, virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,LZ4=
 is a very fast lossless compression algorithm, providing compression speed=
 at 400 MB/s per core, scalable with multi-cores CPU. It also features an e=
xtremely fast decoder, with speed in multiple GB/s per core, typically reac=
hing RAM speed limits on multi-core systems.,122,svn://lz4.googlecode.com/s=
vn/;module=3Dtrunk;protocol=3Dhttp,Armin Kuster <akuster808@gmail.com>)
['jpeg', '8d', 'N/A', 'BSD-3-Clause', 'libs', 'http://www.ijg.org/', 'r1', =
'autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  libtool-cross', 'None', 'None', 'libjpeg contains a library for h=
andling the JPEG (JFIF) image format, as well as related programs for acces=
sing the libjpeg functions.', 'ErrAccess', '9', 'http://www.ijg.org/files/j=
pegsrc.v8d.tar.gz', 'An\xc3\xadbal Lim\xc3\xb3n <anibal.limon@linux.intel.c=
om>', "webkit-gtk 1.8.3 doesn't work with jpeg 9"]
inserted (jpeg,8d,N/A,BSD-3-Clause,libs,r1,None,http://www.ijg.org/,None,Er=
rAccess,autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  libtool-cross,libjpeg contains a library for handling the =
JPEG (JFIF) image format, as well as related programs for accessing the lib=
jpeg functions.,9,http://www.ijg.org/files/jpegsrc.v8d.tar.gz,An?bal Lim?n =
<anibal.limon@linux.intel.com>)
['kexec-tools', '2.0.8', 'N/A', 'GPLv2', 'kernel/userland', 'http://kernel.=
org/pub/linux/utils/kernel/kexec/', 'r0', 'autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  zlib xz', 'None', 'None=
', 'Kexec is a fast reboot feature that lets you reboot to a new Linux kern=
el', 'ErrAccess', 'N/A', 'http://kernel.org/pub/linux/utils/kernel/kexec/ke=
xec-tools-2.0.8.tar.gz', 'Richard Purdie <richard.purdie@linuxfoundation.or=
g>', 'None']
inserted (kexec-tools,2.0.8,N/A,GPLv2,kernel/userland,r0,None,http://kernel=
=2Eorg/pub/linux/utils/kernel/kexec/,None,ErrAccess,autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib xz,Kexec =
is a fast reboot feature that lets you reboot to a new Linux kernel,N/A,htt=
p://kernel.org/pub/linux/utils/kernel/kexec/kexec-tools-2.0.8.tar.gz,Richar=
d Purdie <richard.purdie@linuxfoundation.org>)
['tcl', '8.6.3', 'N/A', 'tcl & BSD-3-Clause', 'devel/tcltk', 'http://tcl.so=
urceforge.net', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  tcl-native zlib', 'None', 'None', 'Tool Com=
mand Language.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge.net/tcl/=
tcl8.6.3-src.tar.gz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (tcl,8.6.3,N/A,tcl & BSD-3-Clause,devel/tcltk,r0,None,http://tcl.s=
ourceforge.net,None,ErrAccess,autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  tcl-native zlib,Tool Command Languag=
e.,N/A,http://downloads.sourceforge.net/tcl/tcl8.6.3-src.tar.gz,Chong Lu <C=
hong.Lu@windriver.com>)
['opkg-utils', '0.1.8+gitAUTOINC+127b371319', '0.1.8+gitAUTOINC+53274f0875'=
, 'GPLv2+', 'base', 'http://code.google.com/p/opkg/', 'r0', ' virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None'=
, 'None', 'Additional utilities for the opkg package manager.', 'UPDATE', '=
N/A', 'git://git.yoctoproject.org/opkg-utils', 'Paul Barker <paul@paulbarke=
r.me.uk>', 'None']
inserted (opkg-utils,0.1.8+gitAUTOINC+127b371319,0.1.8+gitAUTOINC+53274f087=
5,GPLv2+,base,r0,None,http://code.google.com/p/opkg/,None,UPDATE, virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Addi=
tional utilities for the opkg package manager.,N/A,git://git.yoctoproject.o=
rg/opkg-utils,Paul Barker <paul@paulbarker.me.uk>)
['libav', '0.8.15', 'N/A', 'GPLv2+', 'libs', 'http://libav.org/', 'r0', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  zlib libogg yasm-native bzip2 libtheora virtual/lib=
x11 libxfixes libxext xproto virtual/libsdl x264', 'None', 'None', 'Libav i=
s a friendly and community-driven effort to provide its users              =
  with a set of portable, functional and high-performance libraries for    =
            dealing with multimedia formats of all sorts. It originates fro=
m the                FFmpeg codebase, but goes its own way these days, prov=
iding its users                with reliable releases and a clear vision ho=
w to go forward.', 'ErrAccess', 'N/A', 'http://libav.org/releases/libav-0.8=
=2E15.tar.xz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (libav,0.8.15,N/A,GPLv2+,libs,r0,None,http://libav.org/,None,ErrAc=
cess,pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  zlib libogg yasm-native bzip2 libtheora virt=
ual/libx11 libxfixes libxext xproto virtual/libsdl x264,Libav is a friendly=
 and community-driven effort to provide its users                with a set=
 of portable, functional and high-performance libraries for                =
dealing with multimedia formats of all sorts. It originates from the       =
         FFmpeg codebase, but goes its own way these days, providing its us=
ers                with reliable releases and a clear vision how to go forw=
ard.,N/A,http://libav.org/releases/libav-0.8.15.tar.xz,Paul Eggleton <paul.=
eggleton@linux.intel.com>)
['gummiboot', '43+gitAUTOINC+4062c51075', '43+gitAUTOINC+eb3daf2ca4', 'LGPL=
v2.1', 'base', 'http://freedesktop.org/wiki/Software/gummiboot', 'r0', 'pkg=
config-native autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  gnu-efi util-linux', 'None', 'None', 'Gummiboot is a=
 simple UEFI boot manager which executes configured EFI images..', 'UPDATE'=
, 'N/A', 'git://anongit.freedesktop.org/gummiboot', 'Darren Hart <dvhart@li=
nux.intel.com>', 'None']
inserted (gummiboot,43+gitAUTOINC+4062c51075,43+gitAUTOINC+eb3daf2ca4,LGPLv=
2.1,base,r0,None,http://freedesktop.org/wiki/Software/gummiboot,None,UPDATE=
,pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  gnu-efi util-linux,Gummiboot is a simple UEFI bo=
ot manager which executes configured EFI images..,N/A,git://anongit.freedes=
ktop.org/gummiboot,Darren Hart <dvhart@linux.intel.com>)
['xf86driproto', '2.1.1', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/e=
nter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol=
 for the XFree86 Direct Rendering Infrastructure extension.  The XFree86-DR=
I extension is used to organize direct rendering support or 3D clients and =
help arbitrate requests.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org=
/releases/individual/proto/xf86driproto-2.1.1.tar.bz2', 'Ross Burton <ross.=
burton@intel.com>', 'None']
inserted (xf86driproto,2.1.1,N/A,MIT,x11/libs,r0,1,http://www.x.org,https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  util-macros,This package provides the wire protocol for the XFr=
ee86 Direct Rendering Infrastructure extension.  The XFree86-DRI extension =
is used to organize direct rendering support or 3D clients and help arbitra=
te requests.,N/A,http://xorg.freedesktop.org/releases/individual/proto/xf86=
driproto-2.1.1.tar.bz2,Ross Burton <ross.burton@intel.com>)
['tiny-init', '1.0', '1.0', 'MIT', 'base', '', 'r2', ' virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None=
', 'Basic init system for poky-tiny', 'MATCH', 'N/A', 'file://init ', '   f=
ile://rc.local.sample ', '  ', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (tiny-init,1.0,1.0,MIT,base,r2,None,,None,MATCH, virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Basic init s=
ystem for poky-tiny,N/A,file://init ,   file://rc.local.sample )
['matchbox-session-sato', '0.1', '0.1', 'GPLv2.0+', 'x11', 'http://www.matc=
hbox-project.org/', 'r30', ' virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  gconf-native', 'http://bugzilla.yoctoproje=
ct.org/', 'None', 'Custom Matchbox session files for the Sato environment.'=
, 'MATCH', 'N/A', 'file://session', 'Ross Burton <ross.burton@intel.com>', =
'None']
inserted (matchbox-session-sato,0.1,0.1,GPLv2.0+,x11,r30,None,http://www.ma=
tchbox-project.org/,http://bugzilla.yoctoproject.org/,MATCH, virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gconf-nati=
ve,Custom Matchbox session files for the Sato environment.,N/A,file://sessi=
on,Ross Burton <ross.burton@intel.com>)
['mesa-demos', '8.2.0', 'N/A', 'MIT & PD', 'x11', 'http://mesa3d.org', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc   libdrm virtual/egl freetype virtual/libgl vir=
tual/libgles1 virtual/libgles2 glew virtual/libgl virtual/libx11', 'https:/=
/bugs.freedesktop.org', 'None', 'This package includes the demonstration ap=
plication, such as glxgears. These applications can be used for Mesa valida=
tion and benchmarking.', 'ErrAccess', 'N/A', 'ftp://ftp.freedesktop.org/pub=
/mesa/demos/8.2.0/mesa-demos-8.2.0.tar.bz2', 'Saul Wold <sgw@linux.intel.co=
m>', 'None']
inserted (mesa-demos,8.2.0,N/A,MIT & PD,x11,r0,None,http://mesa3d.org,https=
://bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   libdrm virtual=
/egl freetype virtual/libgl virtual/libgles1 virtual/libgles2 glew virtual/=
libgl virtual/libx11,This package includes the demonstration application, s=
uch as glxgears. These applications can be used for Mesa validation and ben=
chmarking.,N/A,ftp://ftp.freedesktop.org/pub/mesa/demos/8.2.0/mesa-demos-8.=
2.0.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['libsoup-2.4', '2.46.0', 'N/A', 'LGPLv2', 'x11/gnome/libs', 'http://www.gn=
ome.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native virtual/gettext gettext-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
glib-2.0 gnutls libxml2 sqlite3 intltool-native', 'https://bugzilla.gnome.o=
rg/', 'None', 'An HTTP library implementation in C.', 'ErrAccess', 'N/A', '=
http://ftp.gnome.org/pub/GNOME/sources/libsoup/2.46/libsoup-2.46.0.tar.xz',=
 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libsoup-2.4,2.46.0,N/A,LGPLv2,x11/gnome/libs,r0,None,http://www.g=
nome.org/,https://bugzilla.gnome.org/,ErrAccess,pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native virtua=
l/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  glib-2.0 gnutls libxml2 sqlite3 intltool-nati=
ve,An HTTP library implementation in C.,N/A,http://ftp.gnome.org/pub/GNOME/=
sources/libsoup/2.46/libsoup-2.46.0.tar.xz,Ross Burton <ross.burton@intel.c=
om>)
['gdk-pixbuf', '2.30.8', 'N/A', 'LGPLv2', 'libs', 'http://www.gtk.org/', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 qemu=
-native jpeg libpng', 'https://bugzilla.gnome.org/', 'None', 'Image loading=
 library for GTK+.', 'ErrAccess', '2.27.2', 'http://ftp.gnome.org/pub/GNOME=
/sources/gdk-pixbuf/2.30/gdk-pixbuf-2.30.8.tar.xz', 'Ross Burton <ross.burt=
on@intel.com>', '2.27.2 is unstable']
inserted (gdk-pixbuf,2.30.8,N/A,LGPLv2,libs,r0,None,http://www.gtk.org/,htt=
ps://bugzilla.gnome.org/,ErrAccess,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native virtual/gettext get=
text-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  glib-2.0 qemu-native jpeg libpng,Image loading library for=
 GTK+.,2.27.2,http://ftp.gnome.org/pub/GNOME/sources/gdk-pixbuf/2.30/gdk-pi=
xbuf-2.30.8.tar.xz,Ross Burton <ross.burton@intel.com>)
['consolekit', '0.4.6', 'N/A', 'GPLv2+', 'base', 'http://www.freedesktop.or=
g/wiki/Software/ConsoleKit', 'r0', 'pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 glib=
-2.0-native dbus dbus-glib virtual/libx11', 'https://bugs.freedesktop.org/b=
uglist.cgi?query_format=3Dspecific&product=3DConsoleKit', 'None', 'Framewor=
k for defining and tracking users, login sessions, and seats.', 'ErrAccess'=
, 'N/A', 'http://www.freedesktop.org/software/ConsoleKit/dist/ConsoleKit-0.=
4.6.tar.xz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (consolekit,0.4.6,N/A,GPLv2+,base,r0,None,http://www.freedesktop.o=
rg/wiki/Software/ConsoleKit,https://bugs.freedesktop.org/buglist.cgi?query_=
format=3Dspecific&product=3DConsoleKit,ErrAccess,pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
glib-2.0 glib-2.0-native dbus dbus-glib virtual/libx11,Framework for defini=
ng and tracking users, login sessions, and seats.,N/A,http://www.freedeskto=
p.org/software/ConsoleKit/dist/ConsoleKit-0.4.6.tar.xz,Chen Qi <Qi.Chen@win=
driver.com>)
['xprop', '1.2.2', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros-native virtual/libx11  libxmu virtual=
/libx11', 'https://bugs.freedesktop.org', '1', 'The xprop utility is for di=
splaying window and font properties in an X server. One window or font is s=
elected using the command line arguments or possibly in the case of a windo=
w, by clicking on the desired window. A list of properties is then given, p=
ossibly with formatting information.', 'ErrAccess', 'N/A', 'http://xorg.fre=
edesktop.org/releases/individual/app/xprop-1.2.2.tar.bz2', 'Ross Burton <ro=
ss.burton@intel.com>', 'None']
inserted (xprop,1.2.2,N/A,MIT-X,x11/apps,r0,1,http://www.x.org/,https://bug=
s.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native vi=
rtual/libx11  libxmu virtual/libx11,The xprop utility is for displaying win=
dow and font properties in an X server. One window or font is selected usin=
g the command line arguments or possibly in the case of a window, by clicki=
ng on the desired window. A list of properties is then given, possibly with=
 formatting information.,N/A,http://xorg.freedesktop.org/releases/individua=
l/app/xprop-1.2.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['tiff', '4.0.3', 'N/A', 'BSD-2-Clause', 'base', 'http://www.remotesensing.=
org/libtiff/', 'r0', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc   jpeg xz zlib', 'None', 'None', 'Provides su=
pport for the Tag Image File Format (TIFF).', 'ErrAccess', 'N/A', 'ftp://ft=
p.remotesensing.org/pub/libtiff/tiff-4.0.3.tar.gz', 'Saul Wold <sgw@linux.i=
ntel.com>', 'None']
inserted (tiff,4.0.3,N/A,BSD-2-Clause,base,r0,None,http://www.remotesensing=
=2Eorg/libtiff/,None,ErrAccess,autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc   jpeg xz zlib,Provides support for =
the Tag Image File Format (TIFF).,N/A,ftp://ftp.remotesensing.org/pub/libti=
ff/tiff-4.0.3.tar.gz,Saul Wold <sgw@linux.intel.com>)
['glew', '1.11.0', 'N/A', 'MIT', 'x11', 'http://glew.sourceforge.net/', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  virtual/libx11 virtual/libgl libglu libxext l=
ibxi libxmu', 'http://sourceforge.net/tracker/?group_id=3D67586', 'None', '=
The OpenGL Extension Wrangler Library (GLEW) is a cross-platform open-sourc=
e C/C++ extension loading library.', 'ErrAccess', 'N/A', 'http://downloads.=
sourceforge.net/project/glew/glew/1.11.0/glew-1.11.0.tgz', 'Saul Wold <sgw@=
linux.intel.com>', 'None']
inserted (glew,1.11.0,N/A,MIT,x11,r0,None,http://glew.sourceforge.net/,http=
://sourceforge.net/tracker/?group_id=3D67586,ErrAccess,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  virtual/libx11 virtual/libgl libglu libxext libxi libxmu,The OpenGL E=
xtension Wrangler Library (GLEW) is a cross-platform open-source C/C++ exte=
nsion loading library.,N/A,http://downloads.sourceforge.net/project/glew/gl=
ew/1.11.0/glew-1.11.0.tgz,Saul Wold <sgw@linux.intel.com>)
['pixman', '0.32.6', 'N/A', 'MIT & MIT-style & PD', 'x11/libs', 'http://www=
=2Ex.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  util-macros zlib libpng', 'http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Pixman provid=
es a library for manipulating pixel regions -- a set of Y-X banded rectangl=
es, image compositing using the Porter/Duff model and implicit mask generat=
ion for geometric primitives including trapezoids, triangles, and rectangle=
s.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/individual/l=
ib/pixman-0.32.6.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (pixman,0.32.6,N/A,MIT & MIT-style & PD,x11/libs,r0,1,http://www.x=
=2Eorg,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros zlib libpng,Pixman provides a library=
 for manipulating pixel regions -- a set of Y-X banded rectangles, image co=
mpositing using the Porter/Duff model and implicit mask generation for geom=
etric primitives including trapezoids, triangles, and rectangles.,N/A,http:=
//xorg.freedesktop.org/releases/individual/lib/pixman-0.32.6.tar.bz2,Ross B=
urton <ross.burton@intel.com>)
['flex', '2.5.39', 'N/A', 'BSD', 'devel', 'http://sourceforge.net/projects/=
flex/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc   bison-native flex-n=
ative texinfo-native', 'None', 'None', 'Flex is a fast lexical analyser gen=
erator.  Flex is a tool for generating programs that recognize lexical patt=
erns in text.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge.net/flex/=
flex-2.5.39.tar.bz2', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (flex,2.5.39,N/A,BSD,devel,r0,None,http://sourceforge.net/projects=
/flex/,None,ErrAccess,autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   bison-native=
 flex-native texinfo-native,Flex is a fast lexical analyser generator.  Fle=
x is a tool for generating programs that recognize lexical patterns in text=
=2E,N/A,http://downloads.sourceforge.net/flex/flex-2.5.39.tar.bz2,Chong Lu =
<Chong.Lu@windriver.com>)
['libsndfile1', '1.0.25', 'N/A', 'LGPLv2.1', 'libs/multimedia', 'http://www=
=2Emega-nerd.com/libsndfile', 'r2', 'pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  sqlite3 alsa=
-lib', 'None', 'None', 'Audio format Conversion library.', 'ErrAccess', 'N/=
A', 'http://www.mega-nerd.com/libsndfile/files/libsndfile-1.0.25.tar.gz', '=
Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libsndfile1,1.0.25,N/A,LGPLv2.1,libs/multimedia,r2,None,http://ww=
w.mega-nerd.com/libsndfile,None,ErrAccess,pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  sqlite3=
 alsa-lib,Audio format Conversion library.,N/A,http://www.mega-nerd.com/lib=
sndfile/files/libsndfile-1.0.25.tar.gz,Cristian Iorga <cristian.iorga@intel=
=2Ecom>)
['xf86-input-keyboard', '1.8.0', 'N/A', 'MIT-X', 'x11/drivers', 'http://www=
=2Ex.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randrpro=
to util-macros inputproto kbproto ', 'https://bugs.freedesktop.org', '2', "=
keyboard is an Xorg input driver for keyboards. The driver supports the sta=
ndard OS-provided keyboard interface.  The driver functions as a keyboard i=
nput device, and may be used as the X server's core keyboard.", 'ErrAccess'=
, 'N/A', 'http://xorg.freedesktop.org/releases/individual/driver/xf86-input=
-keyboard-1.8.0.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86-input-keyboard,1.8.0,N/A,MIT-X,x11/drivers,r0,2,http://www.x=
=2Eorg,https://bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  vir=
tual/xserver xproto randrproto util-macros inputproto kbproto ,keyboard is =
an Xorg input driver for keyboards. The driver supports the standard OS-pro=
vided keyboard interface.  The driver functions as a keyboard input device,=
 and may be used as the X server's core keyboard.,N/A,http://xorg.freedeskt=
op.org/releases/individual/driver/xf86-input-keyboard-1.8.0.tar.bz2,Ross Bu=
rton <ross.burton@intel.com>)
['python', '2.7.3', 'N/A', 'PSFv2', 'devel/python', 'http://www.python.org'=
, 'r0.3', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  python-native bzip2 db gdbm openssl readline sqlite3 zl=
ib  python-native ', 'None', 'None', 'The Python Programming Language.', 'E=
rrAccess', 'N/A', 'http://www.python.org/ftp/python/2.7.3/Python-2.7.3.tar.=
bz2', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (python,2.7.3,N/A,PSFv2,devel/python,r0.3,None,http://www.python.o=
rg,None,ErrAccess,autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  python-native bzip2 db gdbm openssl readline sql=
ite3 zlib  python-native ,The Python Programming Language.,N/A,http://www.p=
ython.org/ftp/python/2.7.3/Python-2.7.3.tar.bz2,Richard Purdie <richard.pur=
die@linuxfoundation.org>)
['libidn', '1.29', 'N/A', '(LGPLv2.1+ | LGPLv3) & GPLv3+', 'libs', 'http://=
www.gnu.org/software/libidn/', 'r0', 'autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native pkgconfig-native virtual/gettext =
gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc   texinfo-native', 'None', 'None', 'Implementation of th=
e Stringprep, Punycode and IDNA specifications defined by the IETF Internat=
ionalized Domain Names (IDN) working group.', 'ErrAccess', 'N/A', 'ftp://ft=
p.gnu.org/gnu/libidn/libidn-1.29.tar.gz', 'Saul Wold <sgw@linux.intel.com>'=
, 'None']
inserted (libidn,1.29,N/A,(LGPLv2.1+ | LGPLv3) & GPLv3+,libs,r0,None,http:/=
/www.gnu.org/software/libidn/,None,ErrAccess,autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native pkgconfig-native virtual/g=
ettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc   texinfo-native,Implementation of the Stringprep=
, Punycode and IDNA specifications defined by the IETF Internationalized Do=
main Names (IDN) working group.,N/A,ftp://ftp.gnu.org/gnu/libidn/libidn-1.2=
9.tar.gz,Saul Wold <sgw@linux.intel.com>)
['blktrace', '1.0.5+gitAUTOINC+d6918c8832', '1.1.0+gitAUTOINC+2cf87e6092', =
'GPLv2', 'base', '', 'r6', ' virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  libaio', 'None', 'None', 'Generates traces=
 of I/O traffic on block devices.', 'UPDATE', 'N/A', 'git://git.kernel.dk/b=
lktrace.git', 'Tom Zanussi <tom.zanussi@intel.com>', 'None']
inserted (blktrace,1.0.5+gitAUTOINC+d6918c8832,1.1.0+gitAUTOINC+2cf87e6092,=
GPLv2,base,r6,None,,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  libaio,Generates traces of I/O traffic=
 on block devices.,N/A,git://git.kernel.dk/blktrace.git,Tom Zanussi <tom.za=
nussi@intel.com>)
['damageproto', '1.2.1', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org'=
, 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.=
org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire pro=
tocol for the DAMAGE extension.  The DAMAGE extension allows applications t=
o receive information about changes made to pixel contents of windows and p=
ixmaps.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/individ=
ual/proto/damageproto-1.2.1.tar.bz2', 'Ross Burton <ross.burton@intel.com>'=
, 'None']
inserted (damageproto,1.2.1,N/A,MIT-style,x11/libs,r1,1,http://www.x.org,ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  util-macros,This package provides the wire protocol for th=
e DAMAGE extension.  The DAMAGE extension allows applications to receive in=
formation about changes made to pixel contents of windows and pixmaps.,N/A,=
http://xorg.freedesktop.org/releases/individual/proto/damageproto-1.2.1.tar=
=2Ebz2,Ross Burton <ross.burton@intel.com>)
['gnome-mime-data', '2.18.0', 'N/A', 'GPLv2 & GPLv2+', 'base', 'http://www.=
gnome.org/', 'r4', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc   gnome-common-native shared-m=
ime-info-native shared-mime-info shared-mime-info intltool-native', 'https:=
//bugzilla.gnome.org/', 'None', 'Base MIME and Application database for GNO=
ME.', 'ErrAccess', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/gnome-mim=
e-data/2.18/gnome-mime-data-2.18.0.tar.bz2;name=3Darchive', 'Alejandro Hern=
andez <alejandro.hernandez@linux.intel.com>', 'None']
inserted (gnome-mime-data,2.18.0,N/A,GPLv2 & GPLv2+,base,r4,None,http://www=
=2Egnome.org/,https://bugzilla.gnome.org/,ErrAccess,pkgconfig-native autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c   gnome-common-native shared-mime-info-native shared-mime-info shared-mim=
e-info intltool-native,Base MIME and Application database for GNOME.,N/A,ht=
tp://ftp.gnome.org/pub/GNOME/sources/gnome-mime-data/2.18/gnome-mime-data-2=
=2E18.0.tar.bz2;name=3Darchive,Alejandro Hernandez <alejandro.hernandez@lin=
ux.intel.com>)
['lzo', '2.08', 'N/A', 'GPLv2+', 'libs', 'http://www.oberhumer.com/opensour=
ce/lzo/', 'r0', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  ', 'None', 'None', 'Lossless data compression lib=
rary.', 'ErrAccess', 'N/A', 'http://www.oberhumer.com/opensource/lzo/downlo=
ad/lzo-2.08.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (lzo,2.08,N/A,GPLv2+,libs,r0,None,http://www.oberhumer.com/opensou=
rce/lzo/,None,ErrAccess,autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  ,Lossless data compression library.,N/A,ht=
tp://www.oberhumer.com/opensource/lzo/download/lzo-2.08.tar.gz,Saul Wold <s=
gw@linux.intel.com>)
['ppp-dialin', '0.1', '0.1', 'MIT', 'console/network', '', 'r8', ' ppp base=
-files base-passwd shadow-native shadow-sysroot shadow', 'None', 'None', 'E=
nables PPP dial-in through a serial connection.', 'MATCH', 'check', 'file:/=
/host-peer            file://ppp-dialin', 'Hongxu Jia <hongxu.jia@windriver=
=2Ecom>', 'None']
inserted (ppp-dialin,0.1,0.1,MIT,console/network,r8,None,,None,MATCH, ppp b=
ase-files base-passwd shadow-native shadow-sysroot shadow,Enables PPP dial-=
in through a serial connection.,check,file://host-peer            file://pp=
p-dialin,Hongxu Jia <hongxu.jia@windriver.com>)
['pango', '1.36.6', 'N/A', 'LGPLv2.0+', 'libs', 'http://www.pango.org/', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  glib-2.0 fontconfig freetype zlib virtual/li=
biconv cairo harfbuzz qemu-native gnome-common-native gtk-doc-stub-native g=
lib-2.0-native virtual/libx11 libxft', 'http://bugzilla.gnome.org', 'None',=
 'Pango is a library for laying out and rendering of text, with an emphasis=
 on internationalization. Pango can be used anywhere that text layout is ne=
eded, though most of the work on Pango so far has been done in the context =
of the GTK+ widget toolkit. Pango forms the core of text and font handling =
for GTK+-2.x.', 'ErrAccess', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources=
/pango/1.36/pango-1.36.6.tar.xz;name=3Darchive', 'Ross Burton <ross.burton@=
intel.com>', 'None']
inserted (pango,1.36.6,N/A,LGPLv2.0+,libs,r0,None,http://www.pango.org/,htt=
p://bugzilla.gnome.org,ErrAccess,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 fontcon=
fig freetype zlib virtual/libiconv cairo harfbuzz qemu-native gnome-common-=
native gtk-doc-stub-native glib-2.0-native virtual/libx11 libxft,Pango is a=
 library for laying out and rendering of text, with an emphasis on internat=
ionalization. Pango can be used anywhere that text layout is needed, though=
 most of the work on Pango so far has been done in the context of the GTK+ =
widget toolkit. Pango forms the core of text and font handling for GTK+-2.x=
=2E,N/A,http://ftp.gnome.org/pub/GNOME/sources/pango/1.36/pango-1.36.6.tar.=
xz;name=3Darchive,Ross Burton <ross.burton@intel.com>)
['qt4-x11-free', '4.8.6', 'N/A', 'LGPLv2.1 | GPLv3', 'x11/libs', 'http://qt=
-project.org/', 'r0', 'qt4-tools-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc   qt4-tools-native freetype jpe=
g libpng zlib dbus openssl glib-2.0 gstreamer gst-plugins-base sqlite3 tiff=
 icu pulseaudio virtual/libgl virtual/libx11 fontconfig libxft libxext libx=
render libxrandr libxcursor', 'None', 'None', 'Qt is a versatile cross-plat=
form application framework -- this is the X11 version.', 'ErrAccess', 'N/A'=
, 'http://download.qt-project.org/official_releases/qt/4.8/4.8.6/qt-everywh=
ere-opensource-src-4.8.6.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel=
=2Ecom>', 'None']
inserted (qt4-x11-free,4.8.6,N/A,LGPLv2.1 | GPLv3,x11/libs,r0,None,http://q=
t-project.org/,None,ErrAccess,qt4-tools-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc   qt4-tools-native freet=
ype jpeg libpng zlib dbus openssl glib-2.0 gstreamer gst-plugins-base sqlit=
e3 tiff icu pulseaudio virtual/libgl virtual/libx11 fontconfig libxft libxe=
xt libxrender libxrandr libxcursor,Qt is a versatile cross-platform applica=
tion framework -- this is the X11 version.,N/A,http://download.qt-project.o=
rg/official_releases/qt/4.8/4.8.6/qt-everywhere-opensource-src-4.8.6.tar.gz=
,Paul Eggleton <paul.eggleton@linux.intel.com>)
['aspell', '0.60.6.1', 'N/A', 'LGPLv2 | LGPLv2.1', 'console/utils', '', 'r1=
', 'autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc   texinfo-native', 'None', 'None=
', 'GNU Aspell spell-checker.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/=
aspell/aspell-0.60.6.1.tar.gz', 'Alejandro Hernandez <alejandro.hernandez@l=
inux.intel.com>', 'None']
inserted (aspell,0.60.6.1,N/A,LGPLv2 | LGPLv2.1,console/utils,r1,None,,None=
,ErrAccess,autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native,GNU Aspe=
ll spell-checker.,N/A,ftp://ftp.gnu.org/gnu/aspell/aspell-0.60.6.1.tar.gz,A=
lejandro Hernandez <alejandro.hernandez@linux.intel.com>)
['nfs-export-root', '1.0', '1.0', 'MIT', 'base', '', 'r1', ' virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None',=
 'None', 'Enables NFS access from any host to the entire filesystem (for de=
velopment purposes).', 'MATCH', 'N/A', 'file://exports', 'Chong Lu <Chong.L=
u@windriver.com>', 'None']
inserted (nfs-export-root,1.0,1.0,MIT,base,r1,None,,None,MATCH, virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Enable=
s NFS access from any host to the entire filesystem (for development purpos=
es).,N/A,file://exports,Chong Lu <Chong.Lu@windriver.com>)
['nspr', '4.10.7', 'N/A', 'GPL-2.0 | MPL-2.0 | LGPL-2.1', 'libs/network', '=
http://www.mozilla.org/projects/nspr/', 'r0', 'autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', =
'Netscape Portable Runtime Library.', 'ErrAccess', 'N/A', 'ftp://ftp.mozill=
a.org/pub/mozilla.org/nspr/releases/v4.10.7/src/nspr-4.10.7.tar.gz', 'Saul =
Wold <sgw@linux.intel.com>', 'None']
inserted (nspr,4.10.7,N/A,GPL-2.0 | MPL-2.0 | LGPL-2.1,libs/network,r0,None=
,http://www.mozilla.org/projects/nspr/,None,ErrAccess,autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Netscape Po=
rtable Runtime Library.,N/A,ftp://ftp.mozilla.org/pub/mozilla.org/nspr/rele=
ases/v4.10.7/src/nspr-4.10.7.tar.gz,Saul Wold <sgw@linux.intel.com>)
['dbus', '1.8.10', 'N/A', 'AFL-2 | GPLv2+', 'base', 'http://dbus.freedeskto=
p.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  exp=
at virtual/libintl base-files base-passwd shadow-native shadow-sysroot shad=
ow update-rc.d-native initscripts  virtual/libx11 libsm', 'None', 'None', '=
D-Bus is a message bus system, a simple way for applications to talk to one=
 another. In addition to interprocess communication, D-Bus helps coordinate=
 process lifecycle; it makes it simple and reliable to code a \\"single ins=
tance\\" application or daemon, and to launch applications and daemons on d=
emand when their services are needed.', 'ErrAccess', 'N/A', 'http://dbus.fr=
eedesktop.org/releases/dbus/dbus-1.8.10.tar.gz', 'Chong Lu <Chong.Lu@windri=
ver.com>', 'D-BUS 1.9.x is the development version, not stable.']
inserted (dbus,1.8.10,N/A,AFL-2 | GPLv2+,base,r0,None,http://dbus.freedeskt=
op.org,None,ErrAccess,pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  expat virtual/libintl base-files base-passwd shadow-native shadow-sysro=
ot shadow update-rc.d-native initscripts  virtual/libx11 libsm,D-Bus is a m=
essage bus system, a simple way for applications to talk to one another. In=
 addition to interprocess communication, D-Bus helps coordinate process lif=
ecycle; it makes it simple and reliable to code a \"single instance\" appli=
cation or daemon, and to launch applications and daemons on demand when the=
ir services are needed.,N/A,http://dbus.freedesktop.org/releases/dbus/dbus-=
1.8.10.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['pointercal-xinput', '0.0', '0.0', 'MIT', 'base', '', 'r7', ' virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None=
', 'None', 'Touchscreen calibration data from xinput-calibrator.', 'MATCH',=
 'N/A', 'file://pointercal.xinput', 'None', 'None']
inserted (pointercal-xinput,0.0,0.0,MIT,base,r7,None,,None,MATCH, virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Touc=
hscreen calibration data from xinput-calibrator.,N/A,file://pointercal.xinp=
ut,None)
['xf86-video-cirrus', '1.5.2', 'N/A', 'MIT-X', 'x11/drivers', 'http://www.x=
=2Eorg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextproto =
fontsproto virtual/xserver xproto randrproto util-macros libpciaccess', 'ht=
tps://bugs.freedesktop.org', '2', 'cirrus is an Xorg driver for Cirrus Logi=
c VGA adapters. These devices are not so common in the wild anymore, but QE=
MU can emulate one, so the driver is still useful.', 'ErrAccess', 'N/A', 'h=
ttp://xorg.freedesktop.org/releases/individual/driver/xf86-video-cirrus-1.5=
=2E2.tar.bz2', 'None', 'None']
inserted (xf86-video-cirrus,1.5.2,N/A,MIT-X,x11/drivers,r0,2,http://www.x.o=
rg,https://bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  renderp=
roto videoproto xextproto fontsproto virtual/xserver xproto randrproto util=
-macros libpciaccess,cirrus is an Xorg driver for Cirrus Logic VGA adapters=
=2E These devices are not so common in the wild anymore, but QEMU can emula=
te one, so the driver is still useful.,N/A,http://xorg.freedesktop.org/rele=
ases/individual/driver/xf86-video-cirrus-1.5.2.tar.bz2,None)
['docbook-utils-native', '0.6.14', 'N/A', 'GPLv2', 'console/utils', 'http:/=
/sources.redhat.com/docbook-tools/', 'r3', 'autoconf-native automake-native=
 libtool-native gnu-config-native  openjade-native sgmlspl-native docbook-d=
sssl-stylesheets-native docbook-sgml-dtd-3.1-native', 'None', 'None', 'A co=
llection of all the free software tools you need to work on and format DocB=
ook documents.', 'ErrAccess', 'N/A', 'ftp://sources.redhat.com/pub/docbook-=
tools/new-trials/SOURCES/docbook-utils-0.6.14.tar.gz', 'Paul Eggleton <paul=
=2Eeggleton@linux.intel.com>', 'None']
inserted (docbook-utils-native,0.6.14,N/A,GPLv2,console/utils,r3,None,http:=
//sources.redhat.com/docbook-tools/,None,ErrAccess,autoconf-native automake=
-native libtool-native gnu-config-native  openjade-native sgmlspl-native do=
cbook-dsssl-stylesheets-native docbook-sgml-dtd-3.1-native,A collection of =
all the free software tools you need to work on and format DocBook document=
s.,N/A,ftp://sources.redhat.com/pub/docbook-tools/new-trials/SOURCES/docboo=
k-utils-0.6.14.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['psmisc', '22.21', 'N/A', 'GPLv2', 'base', '', 'r0', 'autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native virtual/gettext =
gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ncurses virtual/libintl virtual/update-alternatives', '=
None', 'None', 'The psmisc package contains utilities for managing processe=
s on your system: pstree, killall and fuser.  The pstree command displays a=
 tree structure of all of the running processes on your system.  The killal=
l command sends a specified signal (SIGTERM if nothing is specified) to pro=
cesses identified by name.  The fuser command identifies the PIDs of proces=
ses that are using specified files or filesystems.', 'ErrAccess', 'N/A', 'h=
ttp://downloads.sourceforge.net/psmisc/psmisc-22.21.tar.gz', 'Saul Wold <sg=
w@linux.intel.com>', 'None']
inserted (psmisc,22.21,N/A,GPLv2,base,r0,None,,None,ErrAccess,autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native virtual/g=
ettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ncurses virtual/libintl virtual/update-alternati=
ves,The psmisc package contains utilities for managing processes on your sy=
stem: pstree, killall and fuser.  The pstree command displays a tree struct=
ure of all of the running processes on your system.  The killall command se=
nds a specified signal (SIGTERM if nothing is specified) to processes ident=
ified by name.  The fuser command identifies the PIDs of processes that are=
 using specified files or filesystems.,N/A,http://downloads.sourceforge.net=
/psmisc/psmisc-22.21.tar.gz,Saul Wold <sgw@linux.intel.com>)
['python-gitdb', '0.5.4', 'N/A', 'BSD-3-Clause', 'devel/python', 'http://gi=
thub.com/gitpython-developers/gitdb', 'r0', ' virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  python-async python-smmap=
 python-native python  python-native ', 'None', 'None', 'A pure-Python git =
object database.', 'ErrAccess', 'N/A', 'https://pypi.python.org/packages/so=
urce/g/gitdb/gitdb-0.5.4.tar.gz', 'None', 'None']
inserted (python-gitdb,0.5.4,N/A,BSD-3-Clause,devel/python,r0,None,http://g=
ithub.com/gitpython-developers/gitdb,None,ErrAccess, virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  python-async pytho=
n-smmap python-native python  python-native ,A pure-Python git object datab=
ase.,N/A,https://pypi.python.org/packages/source/g/gitdb/gitdb-0.5.4.tar.gz=
,None)
['alsa-utils-alsaconf', '1.0.28', 'N/A', 'GPLv2+', 'console/utils', 'http:/=
/www.alsa-project.org', 'r0', 'pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native virtual/gettext gettext=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  alsa-lib ncurses libsamplerate0 udev udev', 'https://bugtrack.=
alsa-project.org/alsa-bug/login_page.php', 'None', 'Shell script that creat=
es ALSA configuration files.', 'ErrAccess', 'N/A', 'ftp://ftp.alsa-project.=
org/pub/utils/alsa-utils-1.0.28.tar.bz2', 'Cristian Iorga <cristian.iorga@i=
ntel.com>', 'None']
inserted (alsa-utils-alsaconf,1.0.28,N/A,GPLv2+,console/utils,r0,None,http:=
//www.alsa-project.org,https://bugtrack.alsa-project.org/alsa-bug/login_pag=
e.php,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  al=
sa-lib ncurses libsamplerate0 udev udev,Shell script that creates ALSA conf=
iguration files.,N/A,ftp://ftp.alsa-project.org/pub/utils/alsa-utils-1.0.28=
=2Etar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['opkg', '0.2.4', 'N/A', 'GPLv2+', 'base', 'http://code.google.com/p/opkg/'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ', 'http://code.google.com/p/opkg/issues=
/list', '1', 'Open Package Manager.', 'ErrAccess', '0.1.8', 'http://downloa=
ds.yoctoproject.org/releases/opkg/opkg-0.2.4.tar.gz', 'Paul Barker <paul@pa=
ulbarker.me.uk>', 'None']
inserted (opkg,0.2.4,N/A,GPLv2+,base,r0,1,http://code.google.com/p/opkg/,ht=
tp://code.google.com/p/opkg/issues/list,ErrAccess,pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 ,Open Package Manager.,0.1.8,http://downloads.yoctoproject.org/releases/op=
kg/opkg-0.2.4.tar.gz,Paul Barker <paul@paulbarker.me.uk>)
['libsm', '1.2.2', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros libice xproto xtrans e2fsprogs', '=
https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Sessi=
on Management Library (SMlib) is a low-level \\"C\\" language interface to =
XSMP.  The purpose of the X Session Management Protocol (XSMP) is to provid=
e a uniform mechanism for users to save and restore their sessions.  A sess=
ion is a group of clients, each of which has a particular state.', 'ErrAcce=
ss', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libSM-1.2.=
2.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libsm,1.2.2,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros libice xproto xtrans e2fsprogs,The Session Managemen=
t Library (SMlib) is a low-level \"C\" language interface to XSMP.  The pur=
pose of the X Session Management Protocol (XSMP) is to provide a uniform me=
chanism for users to save and restore their sessions.  A session is a group=
 of clients, each of which has a particular state.,N/A,http://xorg.freedesk=
top.org/releases/individual/lib/libSM-1.2.2.tar.bz2,Ross Burton <ross.burto=
n@intel.com>)
['python-imaging', '1.1.7', 'N/A', 'MIT', 'devel/python', '', 'r5', ' virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  f=
reetype jpeg tiff python-native python  python-native ', 'None', 'None', 'P=
ython Imaging Library (PIL).', 'ErrAccess', 'N/A', 'http://effbot.org/downl=
oads/Imaging-1.1.7.tar.gz', 'Richard Purdie <richard.purdie@linuxfoundation=
=2Eorg>', 'None']
inserted (python-imaging,1.1.7,N/A,MIT,devel/python,r5,None,,None,ErrAccess=
, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  freetype jpeg tiff python-native python  python-native ,Python Imagin=
g Library (PIL).,N/A,http://effbot.org/downloads/Imaging-1.1.7.tar.gz,Richa=
rd Purdie <richard.purdie@linuxfoundation.org>)
['ttf-bitstream-vera', '1.10', 'N/A', 'BitstreamVera', 'x11/fonts', '', 'r7=
', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc   qemu-native', 'None', 'None', 'The Bitstream Vera fonts include f=
our monospace and sans faces (normal, oblique, bold, bold oblique) and two =
serif faces (normal and bold).  In addition Fontconfig/Xft2 can artificiall=
y oblique the serif faces for you: this loses hinting and distorts the face=
s slightly, but is visibly different than normal and bold, and reasonably p=
leasing.', 'ErrAccess', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/ttf-=
bitstream-vera/1.10/ttf-bitstream-vera-1.10.tar.bz2', 'Alejandro Hernandez =
<alejandro.hernandez@linux.intel.com>', 'None']
inserted (ttf-bitstream-vera,1.10,N/A,BitstreamVera,x11/fonts,r7,None,,None=
,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc   qemu-native,The Bitstream Vera fonts include four monospac=
e and sans faces (normal, oblique, bold, bold oblique) and two serif faces =
(normal and bold).  In addition Fontconfig/Xft2 can artificially oblique th=
e serif faces for you: this loses hinting and distorts the faces slightly, =
but is visibly different than normal and bold, and reasonably pleasing.,N/A=
,http://ftp.gnome.org/pub/GNOME/sources/ttf-bitstream-vera/1.10/ttf-bitstre=
am-vera-1.10.tar.bz2,Alejandro Hernandez <alejandro.hernandez@linux.intel.c=
om>)
['augeas', '1.2.0', 'N/A', 'LGPLv2.1+', 'base', 'http://augeas.net/', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  readline libxml2', 'https://fedorahosted.org/au=
geas/report/1', 'None', 'Augeas configuration API.', 'ErrAccess', 'N/A', 'h=
ttp://download.augeas.net/augeas-1.2.0.tar.gz', 'Paul Eggleton <paul.egglet=
on@linux.intel.com>', 'None']
inserted (augeas,1.2.0,N/A,LGPLv2.1+,base,r0,None,http://augeas.net/,https:=
//fedorahosted.org/augeas/report/1,ErrAccess,pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  read=
line libxml2,Augeas configuration API.,N/A,http://download.augeas.net/augea=
s-1.2.0.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['ed', '1.9', 'N/A', 'GPLv3+', 'base', 'http://www.gnu.org/software/ed/', '=
r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc   texinfo-native', 'None', 'None', 'Line-oriented text editor.', =
'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/ed/ed-1.9.tar.gz', 'Saul Wold <s=
gw@linux.intel.com>', 'None']
inserted (ed,1.9,N/A,GPLv3+,base,r0,None,http://www.gnu.org/software/ed/,No=
ne,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc   texinfo-native,Line-oriented text editor.,N/A,ftp://ftp.=
gnu.org/gnu/ed/ed-1.9.tar.gz,Saul Wold <sgw@linux.intel.com>)
['x11perf', '1.5.4', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxmu libx=
render libxft libxext fontconfig', 'https://bugs.freedesktop.org', '1', 'Th=
e x11perf program runs one or more performance tests and reports how fast a=
n X server can execute the tests.', 'ErrAccess', 'N/A', 'http://xorg.freede=
sktop.org/releases/individual/app/x11perf-1.5.4.tar.bz2', 'Richard Purdie <=
richard.purdie@linuxfoundation.org>', 'None']
inserted (x11perf,1.5.4,N/A,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https:/=
/bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-nativ=
e virtual/libx11 libxmu libxrender libxft libxext fontconfig,The x11perf pr=
ogram runs one or more performance tests and reports how fast an X server c=
an execute the tests.,N/A,http://xorg.freedesktop.org/releases/individual/a=
pp/x11perf-1.5.4.tar.bz2,Richard Purdie <richard.purdie@linuxfoundation.org=
>)
['waffle', '1.3.0', 'N/A', 'BSD-2-Clause', 'base', '', 'r0', 'autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native cmake-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc   virtual/libgl libx11', 'None', 'None', 'cross-platform C library =
to defer selection of GL API and of window system.', 'ErrAccess', 'N/A', 'h=
ttp://people.freedesktop.org/~chadversary/waffle/files/release/waffle-1.3.0=
/waffle-1.3.0.tar.xz', 'None', 'None']
inserted (waffle,1.3.0,N/A,BSD-2-Clause,base,r0,None,,None,ErrAccess,autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native cm=
ake-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc   virtual/libgl libx11,cross-platform C library to defer sel=
ection of GL API and of window system.,N/A,http://people.freedesktop.org/~c=
hadversary/waffle/files/release/waffle-1.3.0/waffle-1.3.0.tar.xz,None)
['gdb', '7.8.1', 'N/A', 'GPLv2 & GPLv3 & LGPLv2 & LGPLv3', 'devel', 'http:/=
/www.gnu.org/software/gdb/', 'r0', 'autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native virtual/gettext gettext-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 expat zlib ncurses readline lttng-ust texinfo-native', 'None', 'None', 'GN=
U debugger.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/gdb/gdb-7.8.1.tar.=
gz', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (gdb,7.8.1,N/A,GPLv2 & GPLv3 & LGPLv2 & LGPLv3,devel,r0,None,http:=
//www.gnu.org/software/gdb/,None,ErrAccess,autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  expat zlib ncurses readline lttng-ust texinfo-native,GNU debugger.,=
N/A,ftp://ftp.gnu.org/gnu/gdb/gdb-7.8.1.tar.gz,Richard Purdie <richard.purd=
ie@linuxfoundation.org>)
['libgcc', '4.9.1', 'N/A', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel', '=
http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automake-native l=
ibtool-native gnu-config-native   virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-g++ texinfo-native', 'None', 'None', 'GNU cc and gcc C compilers=
=2E', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.ta=
r.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libgcc,4.9.1,N/A,GPL-3.0-with-GCC-exception & GPLv3,devel,r0,None=
,http://www.gnu.org/software/gcc/,None,ErrAccess,autoconf-native automake-n=
ative libtool-native gnu-config-native   virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-g++ texinfo-native,GNU cc and gcc C compilers.,N/A,ftp://=
ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2,Saul Wold <sgw@linux.intel.=
com>)
['expect', '5.45', 'N/A', 'PD', 'devel', 'http://sourceforge.net/projects/e=
xpect/', 'r0', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc   tcl', 'None', 'None', 'Expect is a tool for autom=
ating interactive applications according to a script. Following the script,=
 Expect knows what can be expected from a program and what the correct resp=
onse should be. Expect is also useful for testing these same applications. =
And by adding Tk, you can also wrap interactive applications in X11 GUIs. A=
n interpreted language provides branching and high-level control structures=
 to direct the dialogue. In addition, the user can take control and interac=
t directly when desired, afterward returning control to the script. ', 'Err=
Access', 'N/A', 'http://downloads.sourceforge.net/expect/Expect/5.45/expect=
5.45.tar.gz', 'None', 'None']
inserted (expect,5.45,N/A,PD,devel,r0,None,http://sourceforge.net/projects/=
expect/,None,ErrAccess,autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc   tcl,Expect is a tool for automating intera=
ctive applications according to a script. Following the script, Expect know=
s what can be expected from a program and what the correct response should =
be. Expect is also useful for testing these same applications. And by addin=
g Tk, you can also wrap interactive applications in X11 GUIs. An interprete=
d language provides branching and high-level control structures to direct t=
he dialogue. In addition, the user can take control and interact directly w=
hen desired, afterward returning control to the script. ,N/A,http://downloa=
ds.sourceforge.net/expect/Expect/5.45/expect5.45.tar.gz,None)
['encodings', '1.0.4', 'N/A', 'PD', 'x11/fonts', 'http://www.x.org', 'r2.1'=
, 'pkgconfig-native autoconf-native automake-native libtool-native gnu-conf=
ig-native  mkfontscale-native font-util-native', 'https://bugs.freedesktop.=
org/enter_bug.cgi?product=3Dxorg', '1', 'The encodings that map to specific=
 characters for a number of Xorg and common fonts.', 'ErrAccess', 'N/A', 'h=
ttp://xorg.freedesktop.org/releases/individual/font/encodings-1.0.4.tar.bz2=
', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (encodings,1.0.4,N/A,PD,x11/fonts,r2.1,1,http://www.x.org,https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nativ=
e autoconf-native automake-native libtool-native gnu-config-native  mkfonts=
cale-native font-util-native,The encodings that map to specific characters =
for a number of Xorg and common fonts.,N/A,http://xorg.freedesktop.org/rele=
ases/individual/font/encodings-1.0.4.tar.bz2,Ross Burton <ross.burton@intel=
=2Ecom>)
['libxcomposite', '0.4.4', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.or=
g', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  util-macros  compositeproto virtual/li=
bx11 libxfixes libxext', 'https://bugs.freedesktop.org/enter_bug.cgi?produc=
t=3Dxorg', '1', 'The composite extension provides three related mechanisms:=
 per-hierarchy storage, automatic shadow update, and external parent.  In p=
er-hierarchy storage, the rendering of an entire hierarchy of windows is re=
directed to off-screen storage.  In automatic shadow update, when a hierarc=
hy is rendered off-screen, the X server provides an automatic mechanism for=
 presenting those contents within the parent window.  In external parent, a=
 mechanism for providing redirection of compositing transformations through=
 a client.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/indi=
vidual/lib/libXcomposite-0.4.4.tar.bz2', 'Ross Burton <ross.burton@intel.co=
m>', 'None']
inserted (libxcomposite,0.4.4,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,=
https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  util-macros  compositeproto virtual/libx11 libxfixes lib=
xext,The composite extension provides three related mechanisms: per-hierarc=
hy storage, automatic shadow update, and external parent.  In per-hierarchy=
 storage, the rendering of an entire hierarchy of windows is redirected to =
off-screen storage.  In automatic shadow update, when a hierarchy is render=
ed off-screen, the X server provides an automatic mechanism for presenting =
those contents within the parent window.  In external parent, a mechanism f=
or providing redirection of compositing transformations through a client.,N=
/A,http://xorg.freedesktop.org/releases/individual/lib/libXcomposite-0.4.4.=
tar.bz2,Ross Burton <ross.burton@intel.com>)
['insserv', '1.14.0', 'N/A', 'GPLv2', 'base', '', 'r1', ' virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'N=
one', "This utility reorders the init.d boot scripts based on dependencies =
given in scripts' LSB comment headers, or in override files included in thi=
s package or added in /etc/insserv.", 'ErrAccess', 'N/A', 'ftp://ftp.suse.c=
om/pub/projects/init/insserv-1.14.0.tar.bz2', 'Chong Lu <Chong.Lu@windriver=
=2Ecom>', 'None']
inserted (insserv,1.14.0,N/A,GPLv2,base,r1,None,,None,ErrAccess, virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,This =
utility reorders the init.d boot scripts based on dependencies given in scr=
ipts' LSB comment headers, or in override files included in this package or=
 added in /etc/insserv.,N/A,ftp://ftp.suse.com/pub/projects/init/insserv-1.=
14.0.tar.bz2,Chong Lu <Chong.Lu@windriver.com>)
['mkfontscale', '1.1.1', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  util-macros-native zlib libfontenc freetype=
 xproto', 'https://bugs.freedesktop.org', 'None', 'For each directory argum=
ent, mkfontscale reads all of the scalable font files in the directory. For=
 every font file found, an X11 font name (XLFD) is generated, and is writte=
n together with the file name to a file fonts.scale in the directory.  The =
resulting fonts.scale is used by the mkfontdir program.', 'ErrAccess', 'N/A=
', 'http://xorg.freedesktop.org/releases/individual/app/mkfontscale-1.1.1.t=
ar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (mkfontscale,1.1.1,N/A,MIT-X,x11/apps,r0,None,http://www.x.org/,ht=
tps://bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-=
native zlib libfontenc freetype xproto,For each directory argument, mkfonts=
cale reads all of the scalable font files in the directory. For every font =
file found, an X11 font name (XLFD) is generated, and is written together w=
ith the file name to a file fonts.scale in the directory.  The resulting fo=
nts.scale is used by the mkfontdir program.,N/A,http://xorg.freedesktop.org=
/releases/individual/app/mkfontscale-1.1.1.tar.bz2,Saul Wold <sgw@linux.int=
el.com>)
['connman', '1.26', 'N/A', 'GPLv2', 'base', 'http://connman.net/', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  dbus glib-2.0 ppp iptables update-rc.d-native init=
scripts  ofono  bluez4  wpa-supplicant gnutls', 'https://01.org/jira/browse=
/CM', 'None', 'The ConnMan project provides a daemon for managing internet =
connections within embedded devices running the Linux operating system.  Th=
e Connection Manager is designed to be slim and to use as few resources as =
possible, so it can be easily integrated. It is a fully modular system that=
 can be extended, through plug-ins, to support all kinds of wired or wirele=
ss technologies. Also, configuration methods, like DHCP and domain name res=
olving, are implemented using plug-ins.', 'ErrAccess', 'N/A', 'http://kerne=
l.org/pub/linux/network/connman/connman-1.26.tar.xz', 'Cristian Iorga <cris=
tian.iorga@intel.com>', 'None']
inserted (connman,1.26,N/A,GPLv2,base,r0,None,http://connman.net/,https://0=
1.org/jira/browse/CM,ErrAccess,pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  dbus glib-2.0 ppp =
iptables update-rc.d-native initscripts  ofono  bluez4  wpa-supplicant gnut=
ls,The ConnMan project provides a daemon for managing internet connections =
within embedded devices running the Linux operating system.  The Connection=
 Manager is designed to be slim and to use as few resources as possible, so=
 it can be easily integrated. It is a fully modular system that can be exte=
nded, through plug-ins, to support all kinds of wired or wireless technolog=
ies. Also, configuration methods, like DHCP and domain name resolving, are =
implemented using plug-ins.,N/A,http://kernel.org/pub/linux/network/connman=
/connman-1.26.tar.xz,Cristian Iorga <cristian.iorga@intel.com>)
['libxml-sax-base-perl', '1.08', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', =
'', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc   perl perl-native', 'None', 'None', "This module has a very=
 simple task - to be a base class for PerlSAX drivers and filters. It's def=
ault behaviour is to pass the input directly to the output unchanged. It ca=
n be useful to use this module as a base class so you don't have to, for ex=
ample, implement the characters() callback.", 'ErrAccess', 'N/A', 'http://s=
earch.cpan.org/CPAN/authors/id/G/GR/GRANTM/XML-SAX-Base-1.08.tar.gz', 'None=
', 'None']
inserted (libxml-sax-base-perl,1.08,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,Non=
e,,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc   perl perl-native,This module has a very simple task=
 - to be a base class for PerlSAX drivers and filters. It's default behavio=
ur is to pass the input directly to the output unchanged. It can be useful =
to use this module as a base class so you don't have to, for example, imple=
ment the characters() callback.,N/A,http://search.cpan.org/CPAN/authors/id/=
G/GR/GRANTM/XML-SAX-Base-1.08.tar.gz,None)
['ccache', '3.1.9', 'N/A', 'GPLv3+', 'devel', 'http://ccache.samba.org', 'r=
0', 'autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  zlib', 'None', 'None', 'ccache is a compiler cache. It speeds=
 up recompilation by caching the result of previous compilations and detect=
ing when the same compilation is being done again. Supported languages are =
C, C\\+\\+, Objective-C and Objective-C++.', 'ErrAccess', 'N/A', 'http://sa=
mba.org/ftp/ccache/ccache-3.1.9.tar.xz', 'Wenzong Fan <wenzong.fan@windrive=
r.com>', 'None']
inserted (ccache,3.1.9,N/A,GPLv3+,devel,r0,None,http://ccache.samba.org,Non=
e,ErrAccess,autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  zlib,ccache is a compiler cache. It speeds up recompil=
ation by caching the result of previous compilations and detecting when the=
 same compilation is being done again. Supported languages are C, C\+\+, Ob=
jective-C and Objective-C++.,N/A,http://samba.org/ftp/ccache/ccache-3.1.9.t=
ar.xz,Wenzong Fan <wenzong.fan@windriver.com>)
['owl-video', '0.1+gitAUTOINC+07ab48f331', '0.1+gitAUTOINC+07ab48f331', 'LG=
PLv2.1 & GPLv2+', 'x11', 'http://o-hand.com/', 'r2', 'pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  libowl-av', 'http://bugzilla.yoctoproject.org/', 'None', 'OpenedHand W=
idget Library video widget.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/o=
wl-video', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (owl-video,0.1+gitAUTOINC+07ab48f331,0.1+gitAUTOINC+07ab48f331,LGP=
Lv2.1 & GPLv2+,x11,r2,None,http://o-hand.com/,http://bugzilla.yoctoproject.=
org/,MATCH,pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  libowl-av,OpenedHand Widget Library vi=
deo widget.,N/A,git://git.yoctoproject.org/owl-video,Ross Burton <ross.burt=
on@intel.com>)
['console-tools', '0.3.2', 'N/A', 'GPLv2', 'base', '', 'r8', 'autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native virtual/g=
ettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc   virtual/update-alternatives', 'None', 'None', '=
Provides tools that enable the set-up and manipulation of the linux console=
 and console-font files.', 'ErrAccess', 'N/A', 'http://downloads.sourceforg=
e.net/lct/console-tools-0.3.2.tar.gz', 'Chen Qi <Qi.Chen@windriver.com>', '=
None']
inserted (console-tools,0.3.2,N/A,GPLv2,base,r8,None,,None,ErrAccess,autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native vi=
rtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc   virtual/update-alternatives,Provides too=
ls that enable the set-up and manipulation of the linux console and console=
-font files.,N/A,http://downloads.sourceforge.net/lct/console-tools-0.3.2.t=
ar.gz,Chen Qi <Qi.Chen@windriver.com>)
['xf86-video-omapfb', '0.1.1+gitrAUTOINC+28c006c94e', '0.1.1+gitAUTOINC+', =
'MIT-X & GPLv2+', 'x11/drivers', 'http://www.x.org', 'r21.7', 'pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  renderproto videoproto xextproto fontsproto virtual/xserver x=
proto randrproto util-macros virtual/libx11', 'https://bugs.freedesktop.org=
', '2', 'omapfb driver supports the basic Texas Instruments OMAP framebuffe=
r.', 'UPDATE', 'N/A', 'git://git.pingu.fi/xf86-video-omapfb;protocol=3Dhttp=
', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86-video-omapfb,0.1.1+gitrAUTOINC+28c006c94e,0.1.1+gitAUTOINC+,=
MIT-X & GPLv2+,x11/drivers,r21.7,2,http://www.x.org,https://bugs.freedeskto=
p.org,UPDATE,pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextproto fon=
tsproto virtual/xserver xproto randrproto util-macros virtual/libx11,omapfb=
 driver supports the basic Texas Instruments OMAP framebuffer.,N/A,git://gi=
t.pingu.fi/xf86-video-omapfb;protocol=3Dhttp,Ross Burton <ross.burton@intel=
=2Ecom>)
['libi18n-collate-perl', '1.02', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', =
'http://search.cpan.org/~flora/I18N-Collate/', 'r0', ' virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-nativ=
e', 'None', 'None', 'This module provides you with objects that will collat=
e according to your national character set, provided that the POSIX setloca=
le() function is supported on your system.', 'ErrAccess', 'N/A', 'http://se=
arch.cpan.org/CPAN/authors/id/F/FL/FLORA/I18N-Collate-1.02.tar.gz', 'Saul W=
old <sgw@linux.intel.com>', 'None']
inserted (libi18n-collate-perl,1.02,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,Non=
e,http://search.cpan.org/~flora/I18N-Collate/,None,ErrAccess, virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl per=
l-native,This module provides you with objects that will collate according =
to your national character set, provided that the POSIX setlocale() functio=
n is supported on your system.,N/A,http://search.cpan.org/CPAN/authors/id/F=
/FL/FLORA/I18N-Collate-1.02.tar.gz,Saul Wold <sgw@linux.intel.com>)
['mtd-utils', '1.5.1+gitAUTOINC+9f107132a6', '1.5.1+gitAUTOINC+92686f212c',=
 'GPLv2+', 'base', 'http://www.linux-mtd.infradead.org/', 'r0', ' virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib =
lzo e2fsprogs util-linux', 'None', 'None', 'Tools for managing memory techn=
ology devices.', 'UPDATE', 'N/A', 'git://git.infradead.org/mtd-utils.git', =
'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (mtd-utils,1.5.1+gitAUTOINC+9f107132a6,1.5.1+gitAUTOINC+92686f212c=
,GPLv2+,base,r0,None,http://www.linux-mtd.infradead.org/,None,UPDATE, virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  z=
lib lzo e2fsprogs util-linux,Tools for managing memory technology devices.,=
N/A,git://git.infradead.org/mtd-utils.git,Saul Wold <sgw@linux.intel.com>)
['xinput', '1.6.1', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  util-macros-native virtual/libx11  libxi libxran=
dr libxinerama', 'https://bugs.freedesktop.org', 'None', 'Xinput is an util=
ity for configuring and testing XInput devices', 'ErrAccess', 'N/A', 'http:=
//xorg.freedesktop.org/releases/individual/app/xinput-1.6.1.tar.bz2', 'Ross=
 Burton <ross.burton@intel.com>', 'None']
inserted (xinput,1.6.1,N/A,MIT-X,x11/apps,r0,None,http://www.x.org/,https:/=
/bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-nativ=
e virtual/libx11  libxi libxrandr libxinerama,Xinput is an utility for conf=
iguring and testing XInput devices,N/A,http://xorg.freedesktop.org/releases=
/individual/app/xinput-1.6.1.tar.bz2,Ross Burton <ross.burton@intel.com>)
['v86d', '0.1.10', 'N/A', 'GPLv2', 'base', 'http://dev.gentoo.org/~spock/pr=
ojects/uvesafb/', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  virtual/kernel update-rc.d-native initscripts=
 ', 'None', 'None', 'User support binary for the uvesafb kernel module.', '=
ErrAccess', 'N/A', 'http://distfiles.gentoo.org/distfiles/v86d-0.1.10.tar.b=
z2', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (v86d,0.1.10,N/A,GPLv2,base,r2,None,http://dev.gentoo.org/~spock/p=
rojects/uvesafb/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  virtual/kernel update-rc.d-native init=
scripts ,User support binary for the uvesafb kernel module.,N/A,http://dist=
files.gentoo.org/distfiles/v86d-0.1.10.tar.bz2,Richard Purdie <richard.purd=
ie@linuxfoundation.org>)
['at-spi2-core', '2.12.0', 'N/A', 'LGPLv2', 'base', '', 'r0', 'pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  dbus glib-2.0 virtual/libx11 libxi libxtst intltool-native gt=
k-doc-stub-native', 'None', 'None', 'Assistive Technology Service Provider =
Interface (dbus core).', 'ErrAccess', 'N/A', 'http://ftp.gnome.org/pub/GNOM=
E/sources/at-spi2-core/2.12/at-spi2-core-2.12.0.tar.xz', 'Ross Burton <ross=
=2Eburton@intel.com>', 'None']
inserted (at-spi2-core,2.12.0,N/A,LGPLv2,base,r0,None,,None,ErrAccess,pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  dbus glib-2.0 virtual/libx11 libxi libxtst intltool-na=
tive gtk-doc-stub-native,Assistive Technology Service Provider Interface (d=
bus core).,N/A,http://ftp.gnome.org/pub/GNOME/sources/at-spi2-core/2.12/at-=
spi2-core-2.12.0.tar.xz,Ross Burton <ross.burton@intel.com>)
['xcb-proto', '1.11', 'N/A', 'MIT', 'x11/libs', 'http://xcb.freedesktop.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc    python-native ', 'https://bugs.freede=
sktop.org/enter_bug.cgi?product=3DXCB', 'None', 'Function prototypes for th=
e X protocol C-language Binding (XCB).  XCB is a replacement for Xlib featu=
ring a small footprint, latency hiding, direct access to the protocol, impr=
oved threading support, and extensibility.', 'ErrAccess', 'N/A', 'http://xc=
b.freedesktop.org/dist/xcb-proto-1.11.tar.bz2', 'Ross Burton <ross.burton@i=
ntel.com>', 'None']
inserted (xcb-proto,1.11,N/A,MIT,x11/libs,r0,None,http://xcb.freedesktop.or=
g,https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,ErrAccess,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc    python-native ,Function prototypes for the X protocol=
 C-language Binding (XCB).  XCB is a replacement for Xlib featuring a small=
 footprint, latency hiding, direct access to the protocol, improved threadi=
ng support, and extensibility.,N/A,http://xcb.freedesktop.org/dist/xcb-prot=
o-1.11.tar.bz2,Ross Burton <ross.burton@intel.com>)
['leafpad', '0.8.18.1', 'N/A', 'GPLv2 & GPLv2+', 'base', 'http://tarot.free=
shell.org/leafpad/', 'r2', 'pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ intltool-native =
libowl', 'None', 'None', 'Simple GTK+ Text Editor.', 'ErrAccess', 'N/A', 'h=
ttp://download.savannah.nongnu.org/releases/leafpad/leafpad-0.8.18.1.tar.gz=
', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (leafpad,0.8.18.1,N/A,GPLv2 & GPLv2+,base,r2,None,http://tarot.fre=
eshell.org/leafpad/,None,ErrAccess,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ intltool-=
native libowl,Simple GTK+ Text Editor.,N/A,http://download.savannah.nongnu.=
org/releases/leafpad/leafpad-0.8.18.1.tar.gz,Ross Burton <ross.burton@intel=
=2Ecom>)
['sbc', '1.3', 'N/A', 'GPLv2', 'libs', 'https://www.bluez.org', 'r0', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  libsndfile1', 'None', 'None', 'Bluetooth low-complexi=
ty, subband codec (SBC) library.', 'ErrAccess', 'N/A', 'http://kernel.org/p=
ub/linux/bluetooth/sbc-1.3.tar.xz', 'Cristian Iorga <cristian.iorga@intel.c=
om>', 'None']
inserted (sbc,1.3,N/A,GPLv2,libs,r0,None,https://www.bluez.org,None,ErrAcce=
ss,pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  libsndfile1,Bluetooth low-complexity, subband =
codec (SBC) library.,N/A,http://kernel.org/pub/linux/bluetooth/sbc-1.3.tar.=
xz,Cristian Iorga <cristian.iorga@intel.com>)
['gnu-efi', '3.0u', 'N/A', 'GPLv2+', 'devel', 'http://sourceforge.net/proje=
cts/gnu-efi/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ', 'None', 'None', 'Libraries for producing EFI =
binaries.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge.net/gnu-efi/g=
nu-efi_3.0u.orig.tar.gz', 'None', 'None']
inserted (gnu-efi,3.0u,N/A,GPLv2+,devel,r0,None,http://sourceforge.net/proj=
ects/gnu-efi/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  ,Libraries for producing EFI binaries.,N/=
A,http://downloads.sourceforge.net/gnu-efi/gnu-efi_3.0u.orig.tar.gz,None)
['gconf', '3.2.6', 'N/A', 'LGPLv2+', 'x11/gnome', '', 'r0', 'pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus dbus-glib libxml2 =
intltool-native gobject-introspection-stub gnome-common-native gtk-doc-stub=
-native', 'None', 'None', 'GNOME configuration system.', 'ErrAccess', 'N/A'=
, 'http://ftp.gnome.org/pub/GNOME/sources/GConf/3.2/GConf-3.2.6.tar.xz;name=
=3Darchive', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (gconf,3.2.6,N/A,LGPLv2+,x11/gnome,r0,None,,None,ErrAccess,pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus dbus-glib l=
ibxml2 intltool-native gobject-introspection-stub gnome-common-native gtk-d=
oc-stub-native,GNOME configuration system.,N/A,http://ftp.gnome.org/pub/GNO=
ME/sources/GConf/3.2/GConf-3.2.6.tar.xz;name=3Darchive,Saul Wold <sgw@linux=
=2Eintel.com>)
['openjade-native', '1.3.2', 'N/A', 'BSD', 'base', 'http://openjade.sourcef=
orge.net', 'r5', 'autoconf-native automake-native libtool-native gnu-config=
-native  opensp-native sgml-common-native', 'None', 'None', 'OpenJade is a =
suite of tools for validating, processing, and applying DSSSL (Document Sty=
le Semantics and Specification Language) stylesheets to SGML and XML docume=
nts.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge.net/openjade/openj=
ade-1.3.2.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (openjade-native,1.3.2,N/A,BSD,base,r5,None,http://openjade.source=
forge.net,None,ErrAccess,autoconf-native automake-native libtool-native gnu=
-config-native  opensp-native sgml-common-native,OpenJade is a suite of too=
ls for validating, processing, and applying DSSSL (Document Style Semantics=
 and Specification Language) stylesheets to SGML and XML documents.,N/A,htt=
p://downloads.sourceforge.net/openjade/openjade-1.3.2.tar.gz,Paul Eggleton =
<paul.eggleton@linux.intel.com>)
['libxft', '2.3.2', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  util-macros virtual/libx11 libxrender freetype font=
config', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', =
'Xft was designed to provide good support for scalable fonts, and to do so =
efficiently.  Unlike the core fonts system, it supports features such as an=
ti-aliasing and sub-pixel rasterisation. Perhaps more importantly, it gives=
 applications full control over the way glyphs are rendered, making fine ty=
pesetting and WYSIWIG display possible. Finally, it allows applications to =
use fonts that are not installed system-wide for displaying documents with =
embedded fonts.  Xft is not compatible with the core fonts system: usage of=
 Xft requires fairly extensive changes to toolkits (user-interface librarie=
s).', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/individual/=
lib/libXft-2.3.2.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxft,2.3.2,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://bugs.=
freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  util-macros virtual/libx11 libxrender freetype fontconfig,Xft was des=
igned to provide good support for scalable fonts, and to do so efficiently.=
  Unlike the core fonts system, it supports features such as anti-aliasing =
and sub-pixel rasterisation. Perhaps more importantly, it gives application=
s full control over the way glyphs are rendered, making fine typesetting an=
d WYSIWIG display possible. Finally, it allows applications to use fonts th=
at are not installed system-wide for displaying documents with embedded fon=
ts.  Xft is not compatible with the core fonts system: usage of Xft require=
s fairly extensive changes to toolkits (user-interface libraries).,N/A,http=
://xorg.freedesktop.org/releases/individual/lib/libXft-2.3.2.tar.bz2,Ross B=
urton <ross.burton@intel.com>)
['gst-openmax', '0.10.1', 'N/A', 'LGPLv2.1', 'base', 'http://freedesktop.or=
g/wiki/GstOpenMAX', 'r4', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  gstreamer', 'None', 'N=
one', 'GstOpenMAX is a GStreamer plug-in that allows communication with Ope=
nMAX Integration Layer (IL) components. OpenMAX IL is an industry standard =
that provides an abstraction layer for computer graphics, video, and sound =
routines.', 'ErrAccess', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-o=
penmax/gst-openmax-0.10.1.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.c=
om>', 'None']
inserted (gst-openmax,0.10.1,N/A,LGPLv2.1,base,r4,None,http://freedesktop.o=
rg/wiki/GstOpenMAX,None,ErrAccess,pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gstreamer,GstOp=
enMAX is a GStreamer plug-in that allows communication with OpenMAX Integra=
tion Layer (IL) components. OpenMAX IL is an industry standard that provide=
s an abstraction layer for computer graphics, video, and sound routines.,N/=
A,http://gstreamer.freedesktop.org/src/gst-openmax/gst-openmax-0.10.1.tar.b=
z2,Cristian Iorga <cristian.iorga@intel.com>)
['orc', '0.4.18', 'N/A', 'BSD-2-Clause & BSD-3-Clause', 'base', 'http://cod=
e.entropywave.com/projects/orc/', 'r2.0', 'pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'No=
ne', 'None', 'Optimised Inner Loop Runtime Compiler.', 'ErrAccess', 'N/A', =
'http://code.entropywave.com/download/orc/orc-0.4.18.tar.gz;name=3Dorc', 'N=
one', 'None']
inserted (orc,0.4.18,N/A,BSD-2-Clause & BSD-3-Clause,base,r2.0,None,http://=
code.entropywave.com/projects/orc/,None,ErrAccess,pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 ,Optimised Inner Loop Runtime Compiler.,N/A,http://code.entropywave.com/do=
wnload/orc/orc-0.4.18.tar.gz;name=3Dorc,None)
['bash', '4.3', 'N/A', 'GPLv3+', 'base/shell', 'http://tiswww.case.edu/php/=
chet/bash/bashtop.html', 'r0', 'autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ncu=
rses bison-native texinfo-native virtual/update-alternatives', 'None', 'Non=
e', 'An sh-compatible command language interpreter.', 'ErrAccess', '4.2', '=
ftp://ftp.gnu.org/gnu/bash/bash-4.3.tar.gz;name=3Dtarball', 'Hongxu Jia <ho=
ngxu.jia@windriver.com>', 'None']
inserted (bash,4.3,N/A,GPLv3+,base/shell,r0,None,http://tiswww.case.edu/php=
/chet/bash/bashtop.html,None,ErrAccess,autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  ncurses bison-native texinfo-native virtual/update-alternatives,An sh-c=
ompatible command language interpreter.,4.2,ftp://ftp.gnu.org/gnu/bash/bash=
-4.3.tar.gz;name=3Dtarball,Hongxu Jia <hongxu.jia@windriver.com>)
['ltp', '20140828', '20140828+gitAUTOINC+a83cbb8ce3', 'GPLv2 & GPLv2+ & LGP=
Lv2+ & LGPLv2.1+ & BSD-2-Clause', 'console/utils', 'http://ltp.sourceforge.=
net', 'r0', 'autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  attr libaio libcap acl openssl zip-native', 'None', '=
None', 'The Linux Test Project is a joint project with SGI, IBM, OSDL, and =
Bull with a goal to deliver test suites to the open source community that v=
alidate the reliability, robustness, and stability of Linux. The Linux Test=
 Project is a collection of tools for testing the Linux kernel and related =
features.', 'UPDATE', 'N/A', 'git://github.com/linux-test-project/ltp.git',=
 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (ltp,20140828,20140828+gitAUTOINC+a83cbb8ce3,GPLv2 & GPLv2+ & LGPL=
v2+ & LGPLv2.1+ & BSD-2-Clause,console/utils,r0,None,http://ltp.sourceforge=
=2Enet,None,UPDATE,autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  attr libaio libcap acl openssl zip-native,The L=
inux Test Project is a joint project with SGI, IBM, OSDL, and Bull with a g=
oal to deliver test suites to the open source community that validate the r=
eliability, robustness, and stability of Linux. The Linux Test Project is a=
 collection of tools for testing the Linux kernel and related features.,N/A=
,git://github.com/linux-test-project/ltp.git,Robert Yang <liezhi.yang@windr=
iver.com>)
['openssh', '6.6p1', 'N/A', 'BSD', 'console/network', 'http://openssh.org',=
 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  zlib openssl  base-files base-passwd shadow-native shadow-=
sysroot shadow update-rc.d-native initscripts tcp-wrappers virtual/update-a=
lternatives', 'None', 'None', 'Secure rlogin/rsh/rcp/telnet replacement (Op=
enSSH) Ssh (Secure Shell) is a program for logging into a remote machine an=
d for executing commands on a remote machine.', 'ErrAccess', 'N/A', 'ftp://=
ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-6.6p1.tar.gz', 'Paul E=
ggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (openssh,6.6p1,N/A,BSD,console/network,r0,None,http://openssh.org,=
None,ErrAccess,autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  zlib openssl  base-files base-passwd shadow-native =
shadow-sysroot shadow update-rc.d-native initscripts tcp-wrappers virtual/u=
pdate-alternatives,Secure rlogin/rsh/rcp/telnet replacement (OpenSSH) Ssh (=
Secure Shell) is a program for logging into a remote machine and for execut=
ing commands on a remote machine.,N/A,ftp://ftp.openbsd.org/pub/OpenBSD/Ope=
nSSH/portable/openssh-6.6p1.tar.gz,Paul Eggleton <paul.eggleton@linux.intel=
=2Ecom>)
['chrpath', '0.16', 'N/A', 'GPLv2', 'base', 'http://alioth.debian.org/proje=
cts/chrpath/', 'r0', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ', 'http://alioth.debian.org/tracker/?atid=
=3D412807&group_id=3D31052', 'None', "chrpath allows you to change the rpat=
h (where the application looks for libraries) in an application. It does no=
t (yet) allow you to add an rpath if there isn't one already.", 'ErrAccess'=
, 'N/A', 'http://alioth.debian.org/frs/download.php/file/3979/chrpath-0.16.=
tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (chrpath,0.16,N/A,GPLv2,base,r0,None,http://alioth.debian.org/proj=
ects/chrpath/,http://alioth.debian.org/tracker/?atid=3D412807&group_id=3D31=
052,ErrAccess,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  ,chrpath allows you to change the rpath (where the a=
pplication looks for libraries) in an application. It does not (yet) allow =
you to add an rpath if there isn't one already.,N/A,http://alioth.debian.or=
g/frs/download.php/file/3979/chrpath-0.16.tar.gz,Paul Eggleton <paul.egglet=
on@linux.intel.com>)
['atk', '2.12.0', 'N/A', 'GPLv2+ & LGPLv2+', 'x11/libs', 'http://live.gnome=
=2Eorg/GAP/', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 gnome-common-native=
 gtk-doc-stub-native', 'https://bugzilla.gnome.org/', 'None', 'Accessibilit=
y toolkit for GNOME.', 'ErrAccess', 'N/A', 'http://ftp.gnome.org/pub/GNOME/=
sources/atk/2.12/atk-2.12.0.tar.xz;name=3Darchive', 'Ross Burton <ross.burt=
on@intel.com>', 'None']
inserted (atk,2.12.0,N/A,GPLv2+ & LGPLv2+,x11/libs,r0,None,http://live.gnom=
e.org/GAP/,https://bugzilla.gnome.org/,ErrAccess,pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
glib-2.0 gnome-common-native gtk-doc-stub-native,Accessibility toolkit for =
GNOME.,N/A,http://ftp.gnome.org/pub/GNOME/sources/atk/2.12/atk-2.12.0.tar.x=
z;name=3Darchive,Ross Burton <ross.burton@intel.com>)
['matchbox-terminal', '0.0+gitAUTOINC+452bca2534', '0.0+gitAUTOINC+452bca25=
34', 'GPLv2+', 'x11/utils', 'http://www.matchbox-project.org/', 'r0', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  gtk+ vte', 'http://bugzilla.yoctoproject.org/', 'None=
', 'Lightweight GTK+ terminal application.', 'MATCH', 'N/A', 'git://git.yoc=
toproject.org/matchbox-terminal', 'Ross Burton <ross.burton@intel.com>', 'N=
one']
inserted (matchbox-terminal,0.0+gitAUTOINC+452bca2534,0.0+gitAUTOINC+452bca=
2534,GPLv2+,x11/utils,r0,None,http://www.matchbox-project.org/,http://bugzi=
lla.yoctoproject.org/,MATCH,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ vte,Lightweight =
GTK+ terminal application.,N/A,git://git.yoctoproject.org/matchbox-terminal=
,Ross Burton <ross.burton@intel.com>)
['libarchive', '3.1.2', 'N/A', 'BSD', 'devel', 'http://www.libarchive.org/'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  e2fsprogs-native bzip2 libxml2 attr zlib=
', 'None', 'None', 'C library and command-line tools for reading and writin=
g tar, cpio, zip, ISO, and other archive formats', 'ErrAccess', 'N/A', 'htt=
p://libarchive.org/downloads/libarchive-3.1.2.tar.gz', 'Paul Barker <paul@p=
aulbarker.me.uk>', 'None']
inserted (libarchive,3.1.2,N/A,BSD,devel,r0,None,http://www.libarchive.org/=
,None,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  e2fsprogs-native bzip2 libxml2 at=
tr zlib,C library and command-line tools for reading and writing tar, cpio,=
 zip, ISO, and other archive formats,N/A,http://libarchive.org/downloads/li=
barchive-3.1.2.tar.gz,Paul Barker <paul@paulbarker.me.uk>)
['xmodmap', '1.0.8', 'N/A', 'MIT', 'x11/apps', 'http://www.x.org/', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros-native virtual/libx11', 'https://bugs=
=2Efreedesktop.org', '1', "The xmodmap program is used to edit and display =
the keyboard modifier map and keymap table that are used by client applicat=
ions to convert event keycodes into keysyms. It is usually run from the use=
r's session startup script to configure the keyboard according to personal =
tastes.", 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/individ=
ual/app/xmodmap-1.0.8.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'Non=
e']
inserted (xmodmap,1.0.8,N/A,MIT,x11/apps,r0,1,http://www.x.org/,https://bug=
s.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native vi=
rtual/libx11,The xmodmap program is used to edit and display the keyboard m=
odifier map and keymap table that are used by client applications to conver=
t event keycodes into keysyms. It is usually run from the user's session st=
artup script to configure the keyboard according to personal tastes.,N/A,ht=
tp://xorg.freedesktop.org/releases/individual/app/xmodmap-1.0.8.tar.bz2,Ros=
s Burton <ross.burton@intel.com>)
['xf86-video-fbdev', '0.4.4', 'N/A', 'MIT-X', 'x11/drivers', 'http://www.x.=
org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextproto fon=
tsproto virtual/xserver xproto randrproto util-macros', 'https://bugs.freed=
esktop.org', '2', 'fbdev is an Xorg driver for framebuffer devices. This is=
 a non-accelerated driver.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.o=
rg/releases/individual/driver/xf86-video-fbdev-0.4.4.tar.bz2', 'Ross Burton=
 <ross.burton@intel.com>', 'None']
inserted (xf86-video-fbdev,0.4.4,N/A,MIT-X,x11/drivers,r0,2,http://www.x.or=
g,https://bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  renderpr=
oto videoproto xextproto fontsproto virtual/xserver xproto randrproto util-=
macros,fbdev is an Xorg driver for framebuffer devices. This is a non-accel=
erated driver.,N/A,http://xorg.freedesktop.org/releases/individual/driver/x=
f86-video-fbdev-0.4.4.tar.bz2,Ross Burton <ross.burton@intel.com>)
['u-boot-mkimage', 'v2014.07+gitAUTOINC+524123a707', '2014.10+gitAUTOINC+d8=
bec60c1b', 'GPLv2+', 'bootloader', '', 'r0', ' virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'U-Bo=
ot bootloader image creation tool.', 'UPDATE', 'N/A', 'git://git.denx.de/u-=
boot.git;branch=3Dmaster;protocol=3Dgit', 'Saul Wold <sgw@linux.intel.com>'=
, 'None']
inserted (u-boot-mkimage,v2014.07+gitAUTOINC+524123a707,2014.10+gitAUTOINC+=
d8bec60c1b,GPLv2+,bootloader,r0,None,,None,UPDATE, virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,U-Boot bootloader i=
mage creation tool.,N/A,git://git.denx.de/u-boot.git;branch=3Dmaster;protoc=
ol=3Dgit,Saul Wold <sgw@linux.intel.com>)
['grub-efi', '2.00', 'N/A', 'GPLv3', 'bootloaders', 'http://www.gnu.org/sof=
tware/grub/', 'r2', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  grub-efi-nativ=
e texinfo-native', 'None', 'None', 'GRUB2 is the next generaion of a GPLed =
bootloader intended to unify bootloading across x86 operating systems. In a=
ddition to loading the Linux kernel, it implements the Multiboot standard, =
which allows for flexible loading of multiple boot images. This recipe buil=
ds an EFI binary for the target. It does not install or package anything, i=
t only deploys a target-arch GRUB EFI image.', 'ErrAccess', 'N/A', 'ftp://f=
tp.gnu.org/gnu/grub/grub-2.00.tar.gz', 'None', 'None']
inserted (grub-efi,2.00,N/A,GPLv3,bootloaders,r2,None,http://www.gnu.org/so=
ftware/grub/,None,ErrAccess,autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  grub-ef=
i-native texinfo-native,GRUB2 is the next generaion of a GPLed bootloader i=
ntended to unify bootloading across x86 operating systems. In addition to l=
oading the Linux kernel, it implements the Multiboot standard, which allows=
 for flexible loading of multiple boot images. This recipe builds an EFI bi=
nary for the target. It does not install or package anything, it only deplo=
ys a target-arch GRUB EFI image.,N/A,ftp://ftp.gnu.org/gnu/grub/grub-2.00.t=
ar.gz,None)
['psplash', '0.1+gitAUTOINC+14c8f7b705', '0.1+gitAUTOINC+14c8f7b705', 'GPLv=
2+', 'base', 'http://git.yoctoproject.org/cgit/cgit.cgi/psplash', 'r15', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc   update-rc.d-native initscripts  virtual/update-al=
ternatives', 'None', 'None', "PSplash is a userspace graphical boot splash =
screen for mainly embedded Linux devices supporting a 16bpp or 32bpp frameb=
uffer. It has few dependencies (just libc), supports basic images and text =
and handles rotation. Its visual look is configurable by basic source chang=
es. Also included is a 'client' command utility for sending information to =
psplash such as boot progress information.", 'MATCH', 'N/A', 'git://git.yoc=
toproject.org/psplash', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'N=
one']
inserted (psplash,0.1+gitAUTOINC+14c8f7b705,0.1+gitAUTOINC+14c8f7b705,GPLv2=
+,base,r15,None,http://git.yoctoproject.org/cgit/cgit.cgi/psplash,None,MATC=
H,pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc   update-rc.d-native initscripts  virtual/update=
-alternatives,PSplash is a userspace graphical boot splash screen for mainl=
y embedded Linux devices supporting a 16bpp or 32bpp framebuffer. It has fe=
w dependencies (just libc), supports basic images and text and handles rota=
tion. Its visual look is configurable by basic source changes. Also include=
d is a 'client' command utility for sending information to psplash such as =
boot progress information.,N/A,git://git.yoctoproject.org/psplash,Paul Eggl=
eton <paul.eggleton@linux.intel.com>)
['gcc-cross-initial-i586', '4.9.1', 'N/A', 'GPL-3.0-with-GCC-exception & GP=
Lv3', 'devel', 'http://www.gnu.org/software/gcc/', 'r0', '  virtual/i586-po=
ky-linux-binutils mpfr-native gmp-native libmpc-native zlib-native texinfo-=
dummy-native', 'None', 'None', 'GNU cc and gcc C compilers.', 'ErrAccess', =
'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2', 'Richard Pu=
rdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (gcc-cross-initial-i586,4.9.1,N/A,GPL-3.0-with-GCC-exception & GPL=
v3,devel,r0,None,http://www.gnu.org/software/gcc/,None,ErrAccess,  virtual/=
i586-poky-linux-binutils mpfr-native gmp-native libmpc-native zlib-native t=
exinfo-dummy-native,GNU cc and gcc C compilers.,N/A,ftp://ftp.gnu.org/gnu/g=
cc/gcc-4.9.1/gcc-4.9.1.tar.bz2,Richard Purdie <richard.purdie@linuxfoundati=
on.org>)
['xcmiscproto', '1.2.2', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.=
org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire pro=
tocol for the XC-MISC extension, which is used to get details of XID alloca=
tions within the server.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org=
/releases/individual/proto/xcmiscproto-1.2.2.tar.bz2', 'Ross Burton <ross.b=
urton@intel.com>', 'None']
inserted (xcmiscproto,1.2.2,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  util-macros,This package provides the wire protocol for th=
e XC-MISC extension, which is used to get details of XID allocations within=
 the server.,N/A,http://xorg.freedesktop.org/releases/individual/proto/xcmi=
scproto-1.2.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['harfbuzz', '0.9.35', 'N/A', 'MIT', 'libs', 'http://www.freedesktop.org/wi=
ki/Software/HarfBuzz', 'r0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 cairo free=
type', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3DHarfBuzz', 'No=
ne', 'HarfBuzz is an OpenType text shaping engine.', 'ErrAccess', 'N/A', 'h=
ttp://www.freedesktop.org/software/harfbuzz/release/harfbuzz-0.9.35.tar.bz2=
', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (harfbuzz,0.9.35,N/A,MIT,libs,r0,None,http://www.freedesktop.org/w=
iki/Software/HarfBuzz,https://bugs.freedesktop.org/enter_bug.cgi?product=3D=
HarfBuzz,ErrAccess,pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 cairo freetype,HarfBu=
zz is an OpenType text shaping engine.,N/A,http://www.freedesktop.org/softw=
are/harfbuzz/release/harfbuzz-0.9.35.tar.bz2,Cristian Iorga <cristian.iorga=
@intel.com>)
['xz', '5.1.3alpha', 'N/A', 'GPLv2+ & GPLv3+ & LGPLv2.1+ & PD', 'base', 'ht=
tp://tukaani.org/xz/', 'r0', 'autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'N=
one', 'None', 'Utilities for managing LZMA compressed files.', 'ErrAccess',=
 '5.0.4', 'http://tukaani.org/xz/xz-5.1.3alpha.tar.gz', 'Chen Qi <Qi.Chen@w=
indriver.com>', 'None']
inserted (xz,5.1.3alpha,N/A,GPLv2+ & GPLv3+ & LGPLv2.1+ & PD,base,r0,None,h=
ttp://tukaani.org/xz/,None,ErrAccess,autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native virtual/gettext gettext-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  ,Utilities for managing LZMA compressed files.,5.0.4,http://tukaani.org/x=
z/xz-5.1.3alpha.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['unifdef', '2.10', 'N/A', 'BSD-2-Clause', 'devel', '', 'r0', ' virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'Non=
e', 'None', 'Selectively remove #ifdef statements from sources.', 'ErrAcces=
s', 'N/A', 'http://dotat.at/prog/unifdef/unifdef-2.10.tar.xz', 'Richard Pur=
die <richard.purdie@linuxfoundation.org>', 'None']
inserted (unifdef,2.10,N/A,BSD-2-Clause,devel,r0,None,,None,ErrAccess, virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
,Selectively remove #ifdef statements from sources.,N/A,http://dotat.at/pro=
g/unifdef/unifdef-2.10.tar.xz,Richard Purdie <richard.purdie@linuxfoundatio=
n.org>)
['udev-extraconf', '1.1', '1.1', 'MIT', 'base', '', 'r0', ' virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', =
'None', 'Extra machine specific configuration files for udev, specifically =
blacklist information.', 'MATCH', 'N/A', '        file://automount.rules   =
     file://mount.sh        file://mount.blacklist        file://autonet.ru=
les        file://network.sh        file://localextra.rules ', 'An\xc3\xadb=
al Lim\xc3\xb3n <anibal.limon@linux.intel.com>', 'None']
inserted (udev-extraconf,1.1,1.1,MIT,base,r0,None,,None,MATCH, virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Extra m=
achine specific configuration files for udev, specifically blacklist inform=
ation.,N/A,        file://automount.rules        file://mount.sh        fil=
e://mount.blacklist        file://autonet.rules        file://network.sh   =
     file://localextra.rules ,An?bal Lim?n <anibal.limon@linux.intel.com>)
['mtools', '4.0.18', 'N/A', 'GPLv3', 'optional', 'http://www.gnu.org/softwa=
re/mtools/', 'r0', 'autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc   texinfo-native', 'None', 'None', 'Mtools is a=
 collection of utilities to access MS-DOS disks from GNU and Unix without m=
ounting them.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/mtools/mtools-4.=
0.18.tar.bz2', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (mtools,4.0.18,N/A,GPLv3,optional,r0,None,http://www.gnu.org/softw=
are/mtools/,None,ErrAccess,autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc   texinfo-native,Mtools is a collection =
of utilities to access MS-DOS disks from GNU and Unix without mounting them=
=2E,N/A,ftp://ftp.gnu.org/gnu/mtools/mtools-4.0.18.tar.bz2,Paul Eggleton <p=
aul.eggleton@linux.intel.com>)
['libxml-simple-perl', '2.20', 'N/A', 'Artistic-1.0 | GPL-1.0', 'libs', 'ht=
tp://search.cpan.org/~markov/XML-LibXML-Simple-0.93/lib/XML/LibXML/Simple.p=
od', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc   libxml-parser-perl perl perl-native', 'None', 'None', 'Th=
e XML::Simple Perl module provides a simple API layer on top of an underlyi=
ng XML parsing module to maintain XML files (especially configuration files=
). It is a blunt rewrite of XML::Simple (by Grant McLean) to use the XML::L=
ibXML parser for XML structures, where the original uses plain Perl or SAX =
parsers.', 'ErrAccess', 'N/A', 'http://www.cpan.org/modules/by-module/XML/X=
ML-Simple-2.20.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libxml-simple-perl,2.20,N/A,Artistic-1.0 | GPL-1.0,libs,r0,None,h=
ttp://search.cpan.org/~markov/XML-LibXML-Simple-0.93/lib/XML/LibXML/Simple.=
pod,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc   libxml-parser-perl perl perl-native,The XML::Simpl=
e Perl module provides a simple API layer on top of an underlying XML parsi=
ng module to maintain XML files (especially configuration files). It is a b=
lunt rewrite of XML::Simple (by Grant McLean) to use the XML::LibXML parser=
 for XML structures, where the original uses plain Perl or SAX parsers.,N/A=
,http://www.cpan.org/modules/by-module/XML/XML-Simple-2.20.tar.gz,Saul Wold=
 <sgw@linux.intel.com>)
['cups', '2.0.0', 'N/A', 'GPLv2 & LGPLv2', 'console/utils', '', 'r0', 'auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  gnutls libpng jpeg dbus dbus-glib zlib libusb base-files base-passwd s=
hadow-native shadow-sysroot shadow avahi', 'None', 'None', 'An Internet pri=
nting system for Unix.', 'ErrAccess', '1.6.2', 'http://www.cups.org/softwar=
e/2.0.0/cups-2.0.0-source.tar.bz2', 'Chong Lu <Chong.Lu@windriver.com>', 'N=
one']
inserted (cups,2.0.0,N/A,GPLv2 & LGPLv2,console/utils,r0,None,,None,ErrAcce=
ss,autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  gnutls libpng jpeg dbus dbus-glib zlib libusb base-files base-p=
asswd shadow-native shadow-sysroot shadow avahi,An Internet printing system=
 for Unix.,1.6.2,http://www.cups.org/software/2.0.0/cups-2.0.0-source.tar.b=
z2,Chong Lu <Chong.Lu@windriver.com>)
['mesa', '10.3.4', 'N/A', 'MIT', 'x11', 'http://mesa3d.org', 'r0', 'pkgconf=
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
t Rendering Infrastructure and X.org environment.', 'ErrAccess', 'N/A', 'ft=
p://ftp.freedesktop.org/pub/mesa/10.3.4/MesaLib-10.3.4.tar.bz2', 'Ross Burt=
on <ross.burton@intel.com>', 'None']
inserted (mesa,10.3.4,N/A,MIT,x11,r0,2,http://mesa3d.org,https://bugs.freed=
esktop.org,ErrAccess,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  expat makedepend-native flex-native bison-native libxml2-native udev  py=
thon-native   dri2proto libdrm wayland xf86driproto glproto virtual/libx11 =
libxext libxxf86vm libxdamage libxfixes,Mesa is an open-source implementati=
on of the OpenGL specification - a system for rendering interactive 3D grap=
hics.  A variety of device drivers allows Mesa to be used in many different=
 environments ranging from software emulation to complete hardware accelera=
tion for modern GPUs. Mesa is used as part of the overall Direct Rendering =
Infrastructure and X.org environment.,N/A,ftp://ftp.freedesktop.org/pub/mes=
a/10.3.4/MesaLib-10.3.4.tar.bz2,Ross Burton <ross.burton@intel.com>)
['gstreamer1.0-omx', '1.2.0', 'N/A', 'LGPLv2.1', 'multimedia', 'http://www.=
gstreamer.net/', 'r1', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  gstreamer1.0 gstreamer1.0-plugins-base gstreamer1.0-plugins-bad', 'No=
ne', 'None', 'OpenMAX IL plugins for GStreamer.', 'ErrAccess', 'N/A', 'http=
://gstreamer.freedesktop.org/src/gst-omx/gst-omx-1.2.0.tar.xz', 'None', 'No=
ne']
inserted (gstreamer1.0-omx,1.2.0,N/A,LGPLv2.1,multimedia,r1,None,http://www=
=2Egstreamer.net/,None,ErrAccess,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native virtual/gettext gette=
xt-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  gstreamer1.0 gstreamer1.0-plugins-base gstreamer1.0-plugins-=
bad,OpenMAX IL plugins for GStreamer.,N/A,http://gstreamer.freedesktop.org/=
src/gst-omx/gst-omx-1.2.0.tar.xz,None)
['systemtap-uprobes', '2.6+gitAUTOINC+7682e51d2e', '2.6+gitAUTOINC+e6f437ad=
fe', 'GPLv2', 'base', '', 'r1', 'virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  system=
tap virtual/kernel', 'None', 'None', 'UProbes kernel module for SystemTap.'=
, 'UPDATE', 'N/A', 'git://sourceware.org/git/systemtap.git', 'Tom Zanussi <=
tom.zanussi@intel.com>', 'None']
inserted (systemtap-uprobes,2.6+gitAUTOINC+7682e51d2e,2.6+gitAUTOINC+e6f437=
adfe,GPLv2,base,r1,None,,None,UPDATE,virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  sy=
stemtap virtual/kernel,UProbes kernel module for SystemTap.,N/A,git://sourc=
eware.org/git/systemtap.git,Tom Zanussi <tom.zanussi@intel.com>)
['quilt', '0.63', 'N/A', 'GPLv2', 'devel', 'http://savannah.nongnu.org/proj=
ects/quilt/', 'r0', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'No=
ne', 'Tool for working with series of patches.', 'ErrAccess', 'N/A', 'http:=
//download.savannah.gnu.org/releases/quilt/quilt-0.63.tar.gz', 'Chong Lu <C=
hong.Lu@windriver.com>', 'None']
inserted (quilt,0.63,N/A,GPLv2,devel,r0,None,http://savannah.nongnu.org/pro=
jects/quilt/,None,ErrAccess,autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Tool f=
or working with series of patches.,N/A,http://download.savannah.gnu.org/rel=
eases/quilt/quilt-0.63.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['gcc-runtime', '4.9.1', 'N/A', 'GPL-3.0-with-GCC-exception & GPLv3', 'deve=
l', 'http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automake-nat=
ive libtool-native gnu-config-native   virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-g++ libgcc texinfo-native', 'None', 'None', 'GNU cc and gcc=
 C compilers.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gc=
c-4.9.1.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (gcc-runtime,4.9.1,N/A,GPL-3.0-with-GCC-exception & GPLv3,devel,r0=
,None,http://www.gnu.org/software/gcc/,None,ErrAccess,autoconf-native autom=
ake-native libtool-native gnu-config-native   virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-g++ libgcc texinfo-native,GNU cc and gcc C compilers=
=2E,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2,Saul Wold <sg=
w@linux.intel.com>)
['pkgconfig', '0.28', 'N/A', 'GPLv2+', 'console/utils', 'http://pkg-config.=
freedesktop.org/wiki/', 'r0', 'autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  glib-2.0', 'http://bugs.freedesktop=
=2Eorg/buglist.cgi?product=3Dpkg-config', 'None', 'pkg-config is a helper t=
ool used when compiling applications and libraries. It helps determined the=
 correct compiler/link options.  It is also language-agnostic.', 'ErrAccess=
', 'N/A', 'http://pkgconfig.freedesktop.org/releases/pkg-config-0.28.tar.gz=
', 'An\xc3\xadbal Lim\xc3\xb3n <anibal.limon@linux.intel.com>', 'removes gl=
ib-conf, adds circular depends']
inserted (pkgconfig,0.28,N/A,GPLv2+,console/utils,r0,None,http://pkg-config=
=2Efreedesktop.org/wiki/,http://bugs.freedesktop.org/buglist.cgi?product=3D=
pkg-config,ErrAccess,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  glib-2.0,pkg-config is a helper tool used whe=
n compiling applications and libraries. It helps determined the correct com=
piler/link options.  It is also language-agnostic.,N/A,http://pkgconfig.fre=
edesktop.org/releases/pkg-config-0.28.tar.gz,An?bal Lim?n <anibal.limon@lin=
ux.intel.com>)
['libxfixes', '5.0.1', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros virtual/libx11 xproto fixespro=
to xextproto', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg',=
 '1', 'X applications have often needed to work around various shortcomings=
 in the core X window system.  This extension is designed to provide the mi=
nimal server-side support necessary to eliminate problems caused by these w=
orkarounds.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/ind=
ividual/lib/libXfixes-5.0.1.tar.bz2', 'Ross Burton <ross.burton@intel.com>'=
, 'None']
inserted (libxfixes,5.0.1,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  util-macros virtual/libx11 xproto fixesproto xextproto,X app=
lications have often needed to work around various shortcomings in the core=
 X window system.  This extension is designed to provide the minimal server=
-side support necessary to eliminate problems caused by these workarounds.,=
N/A,http://xorg.freedesktop.org/releases/individual/lib/libXfixes-5.0.1.tar=
=2Ebz2,Ross Burton <ross.burton@intel.com>)
['kconfig-frontends', '3.12.0.0', 'N/A', 'GPL-2.0', 'devel', 'http://ymorin=
=2Eis-a-geek.org/projects/kconfig-frontends', 'r0', 'autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   ncurses flex=
 bison gperf-native pkgconfig-native', 'None', 'None', 'The kconfig-fronten=
ds project aims at centralising the effort of keeping an up-to-date, out-of=
-tree, packaging of the kconfig infrastructure, ready for use by third-part=
y projects. The kconfig-frontends package provides the kconfig parser, as w=
ell as all the frontends', 'ErrAccess', 'N/A', 'http://ymorin.is-a-geek.org=
/download/kconfig-frontends/kconfig-frontends-3.12.0.0.tar.xz', 'Saul Wold =
<sgw@linux.intel.com>', 'PRS Reports Incorrectly']
inserted (kconfig-frontends,3.12.0.0,N/A,GPL-2.0,devel,r0,None,http://ymori=
n.is-a-geek.org/projects/kconfig-frontends,None,ErrAccess,autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   ncurses=
 flex bison gperf-native pkgconfig-native,The kconfig-frontends project aim=
s at centralising the effort of keeping an up-to-date, out-of-tree, packagi=
ng of the kconfig infrastructure, ready for use by third-party projects. Th=
e kconfig-frontends package provides the kconfig parser, as well as all the=
 frontends,N/A,http://ymorin.is-a-geek.org/download/kconfig-frontends/kconf=
ig-frontends-3.12.0.0.tar.xz,Saul Wold <sgw@linux.intel.com>)
['xorg-minimal-fonts', '1.0', '1.0', 'PD', 'x11/fonts', 'http://www.x.org',=
 'r2', ' ', 'None', '1', 'Minimal fonts required by X.org.', 'MATCH', 'N/A'=
, 'file://misc', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xorg-minimal-fonts,1.0,1.0,PD,x11/fonts,r2,1,http://www.x.org,Non=
e,MATCH, ,Minimal fonts required by X.org.,N/A,file://misc,Ross Burton <ros=
s.burton@intel.com>)
['libxpm', '3.5.11', 'N/A', 'BSD', 'x11/libs', 'http://www.x.org', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros libxext=
 libsm libxt', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg',=
 '1', 'libXpm provides support and common operation for the XPM pixmap form=
at, which is commonly used in legacy X applications.  XPM is an extension o=
f the monochrome XBM bitmap specificied in the X protocol.', 'ErrAccess', '=
N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXpm-3.5.11.ta=
r.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxpm,3.5.11,N/A,BSD,x11/libs,r0,1,http://www.x.org,https://bugs=
=2Efreedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  util-macros libxext libsm libxt,lib=
Xpm provides support and common operation for the XPM pixmap format, which =
is commonly used in legacy X applications.  XPM is an extension of the mono=
chrome XBM bitmap specificied in the X protocol.,N/A,http://xorg.freedeskto=
p.org/releases/individual/lib/libXpm-3.5.11.tar.bz2,Ross Burton <ross.burto=
n@intel.com>)
['connman-conf', '1.0', '1.0', 'GPLv2', 'base', '', 'r2', ' virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', =
'None', 'This is the ConnMan configuration to set up a Wired network interf=
ace for a qemu machine.', 'MATCH', 'N/A', 'file://wired.config             =
              file://wired-setup                          ', 'None', 'None']
inserted (connman-conf,1.0,1.0,GPLv2,base,r2,None,,None,MATCH, virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,This is=
 the ConnMan configuration to set up a Wired network interface for a qemu m=
achine.,N/A,file://wired.config                           file://wired-setu=
p                          ,None)
['libpcre', '8.36', 'N/A', 'BSD', 'devel', 'http://www.pcre.org', 'r0', 'au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   bzip2 zlib', 'None', 'None', 'The PCRE library is a set of function=
s that implement regular expression pattern matching using the same syntax =
and semantics as Perl 5. PCRE has its own native API, as well as a set of w=
rapper functions that correspond to the POSIX regular expression API.', 'Er=
rAccess', 'N/A', 'http://downloads.sourceforge.net/project/pcre/pcre/8.36/p=
cre-8.36.tar.bz2', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (libpcre,8.36,N/A,BSD,devel,r0,None,http://www.pcre.org,None,ErrAc=
cess,autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc   bzip2 zlib,The PCRE library is a set of functions that imple=
ment regular expression pattern matching using the same syntax and semantic=
s as Perl 5. PCRE has its own native API, as well as a set of wrapper funct=
ions that correspond to the POSIX regular expression API.,N/A,http://downlo=
ads.sourceforge.net/project/pcre/pcre/8.36/pcre-8.36.tar.bz2,Chong Lu <Chon=
g.Lu@windriver.com>)
['dosfstools', '2.11', 'N/A', 'GPLv2', 'base', '', 'r5', ' virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', '=
None', 'DOS FAT Filesystem Utilities.', 'ErrAccess', 'N/A', 'ftp://ftp.uni-=
erlangen.de/pub/Linux/LOCAL/dosfstools/dosfstools-2.11.src.tar.gz', 'Paul E=
ggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (dosfstools,2.11,N/A,GPLv2,base,r5,None,,None,ErrAccess, virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,DOS =
FAT Filesystem Utilities.,N/A,ftp://ftp.uni-erlangen.de/pub/Linux/LOCAL/dos=
fstools/dosfstools-2.11.src.tar.gz,Paul Eggleton <paul.eggleton@linux.intel=
=2Ecom>)
['lighttpd', '1.4.35', 'N/A', 'BSD', 'net', 'http://www.lighttpd.net/', 'r1=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib libpcre u=
pdate-rc.d-native initscripts', 'http://redmine.lighttpd.net/projects/light=
tpd/issues', 'None', 'Lightweight high-performance web server.', 'ErrAccess=
', 'N/A', 'http://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.=
4.35.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (lighttpd,1.4.35,N/A,BSD,net,r1,None,http://www.lighttpd.net/,http=
://redmine.lighttpd.net/projects/lighttpd/issues,ErrAccess,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  zlib libpcre update-rc.d-native in=
itscripts,Lightweight high-performance web server.,N/A,http://download.ligh=
ttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.35.tar.bz2,Ross Burton <ross.=
burton@intel.com>)
['latencytop', '0.5', 'N/A', 'GPLv2', 'base', 'http://www.latencytop.org/',=
 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  virtual/libintl ncurses glib-2.0 gtk+', 'None', 'None', 'Linux=
 tool for measuring and fixing latency.', 'ErrAccess', 'N/A', 'http://www.l=
atencytop.org/download/latencytop-0.5.tar.gz', 'Richard Purdie <richard.pur=
die@linuxfoundation.org>', 'None']
inserted (latencytop,0.5,N/A,GPLv2,base,r3,None,http://www.latencytop.org/,=
None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  virtual/libintl ncurses glib-2.0 gtk+,Linux tool for me=
asuring and fixing latency.,N/A,http://www.latencytop.org/download/latencyt=
op-0.5.tar.gz,Richard Purdie <richard.purdie@linuxfoundation.org>)
['lrzsz', '0.12.20', 'N/A', 'GPLv2+', 'console/network', 'http://www.ohse.d=
e/uwe/software/lrzsz.html', 'r6', 'autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native virtual/gettext gettext-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
 virtual/update-alternatives', 'None', 'None', "Lrzsz is a cosmetically mod=
ified zmodem/ymodem/xmodem package built from the public-domain version of =
Chuck Forsberg's rzsz package. These programs use error correcting protocol=
s ({z,x,y}modem) to send (sz, sx, sb) and receive (rz, rx, rb) files over a=
 dial-in serial port from a variety of programs running under various opera=
ting systems. ", 'ErrAccess', 'N/A', 'http://www.ohse.de/uwe/releases/lrzsz=
-0.12.20.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (lrzsz,0.12.20,N/A,GPLv2+,console/network,r6,None,http://www.ohse.=
de/uwe/software/lrzsz.html,None,ErrAccess,autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native virtual/gettext gettext-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   virtual/update-alternatives,Lrzsz is a cosmetically modified zmodem=
/ymodem/xmodem package built from the public-domain version of Chuck Forsbe=
rg's rzsz package. These programs use error correcting protocols ({z,x,y}mo=
dem) to send (sz, sx, sb) and receive (rz, rx, rb) files over a dial-in ser=
ial port from a variety of programs running under various operating systems=
=2E ,N/A,http://www.ohse.de/uwe/releases/lrzsz-0.12.20.tar.gz,Cristian Iorg=
a <cristian.iorga@intel.com>)
['libunwind', '1.1', 'N/A', 'MIT', 'base', 'http://www.nongnu.org/libunwind=
', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc   ', 'None', 'None', 'a portable and efficient C programm=
ing interface (API) to determine the call-chain of a program', 'ErrAccess',=
 'N/A', 'http://download.savannah.nongnu.org/releases/libunwind/libunwind-1=
=2E1.tar.gz', 'None', 'None']
inserted (libunwind,1.1,N/A,MIT,base,r0,None,http://www.nongnu.org/libunwin=
d,None,ErrAccess,autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc   ,a portable and efficient C programming interfac=
e (API) to determine the call-chain of a program,N/A,http://download.savann=
ah.nongnu.org/releases/libunwind/libunwind-1.1.tar.gz,None)
['hdparm', '9.45', 'N/A', 'BSD', 'console/utils', '', 'r0', ' virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/=
update-alternatives', 'None', 'None', 'hdparm is a Linux shell utility for =
viewing and manipulating various IDE drive and driver parameters.', 'ErrAcc=
ess', 'N/A', 'http://downloads.sourceforge.net/hdparm/hdparm-9.45.tar.gz', =
'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (hdparm,9.45,N/A,BSD,console/utils,r0,None,,None,ErrAccess, virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   v=
irtual/update-alternatives,hdparm is a Linux shell utility for viewing and =
manipulating various IDE drive and driver parameters.,N/A,http://downloads.=
sourceforge.net/hdparm/hdparm-9.45.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['xf86-input-vmmouse', '13.0.0', 'N/A', 'MIT-X', 'x11/drivers', 'http://www=
=2Ex.org', 'r21.0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randr=
proto util-macros inputproto kbproto ', 'https://bugs.freedesktop.org', '2'=
, "The vmmouse driver enables support for the special VMMouse protocol that=
 is provided by VMware virtual machines to give absolute pointer positionin=
g. The vmmouse driver is capable of falling back to the standard 'mouse' dr=
iver if a VMware virtual machine is not detected.", 'ErrAccess', 'N/A', 'ht=
tp://xorg.freedesktop.org/releases/individual/driver/xf86-input-vmmouse-13.=
0.0.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86-input-vmmouse,13.0.0,N/A,MIT-X,x11/drivers,r21.0,2,http://ww=
w.x.org,https://bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  vi=
rtual/xserver xproto randrproto util-macros inputproto kbproto ,The vmmouse=
 driver enables support for the special VMMouse protocol that is provided b=
y VMware virtual machines to give absolute pointer positioning. The vmmouse=
 driver is capable of falling back to the standard 'mouse' driver if a VMwa=
re virtual machine is not detected.,N/A,http://xorg.freedesktop.org/release=
s/individual/driver/xf86-input-vmmouse-13.0.0.tar.bz2,Ross Burton <ross.bur=
ton@intel.com>)
['libevent', '2.0.21', 'N/A', 'BSD', 'libs', 'http://libevent.org/', 'r1', =
'autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  ', 'http://sourceforge.net/tracker/?group_id=3D50884&atid=3D46132=
2', 'None', 'An asynchronous event notification library.', 'ErrAccess', 'N/=
A', 'http://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.t=
ar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (libevent,2.0.21,N/A,BSD,libs,r1,None,http://libevent.org/,http://=
sourceforge.net/tracker/?group_id=3D50884&atid=3D461322,ErrAccess,autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
,An asynchronous event notification library.,N/A,http://github.com/download=
s/libevent/libevent/libevent-2.0.21-stable.tar.gz,Paul Eggleton <paul.eggle=
ton@linux.intel.com>)
['gtk-theme-torturer', '0.0.0+gitAUTOINC+99962ae39b', '0.0.0+gitAUTOINC+999=
62ae39b', 'GPLv2', 'devel', 'http://wiki.laptop.org/go/GTK_for_OLPC', 'r0',=
 ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  gtk+', 'None', 'None', 'GTK+ Theme benchmark program.', 'MATCH', 'N/=
A', 'git://dev.laptop.org/projects/soc-gtk/', 'Ross Burton <ross.burton@int=
el.com>', 'None']
inserted (gtk-theme-torturer,0.0.0+gitAUTOINC+99962ae39b,0.0.0+gitAUTOINC+9=
9962ae39b,GPLv2,devel,r0,None,http://wiki.laptop.org/go/GTK_for_OLPC,None,M=
ATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  gtk+,GTK+ Theme benchmark program.,N/A,git://dev.laptop.org/proje=
cts/soc-gtk/,Ross Burton <ross.burton@intel.com>)
['gst-ffmpeg', '0.10.13', 'N/A', 'GPLv2+ & LGPLv2+ & ( (GPLv2+ & LGPLv2.1+)=
 | (GPLv3+ & LGPLv3+) )', 'multimedia', 'http://www.gstreamer.net/', 'r8', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  gstreamer gst-plugins-base zlib bzip2 yasm-nativ=
e libav', 'None', 'None', 'FFmpeg-based GStreamer plug-in.', 'ErrAccess', '=
N/A', 'http://gstreamer.freedesktop.org/src/gst-ffmpeg/gst-ffmpeg-0.10.13.t=
ar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', 'not compatible with =
gst-fluendo 0.10.x']
inserted (gst-ffmpeg,0.10.13,N/A,GPLv2+ & LGPLv2+ & ( (GPLv2+ & LGPLv2.1+) =
| (GPLv3+ & LGPLv3+) ),multimedia,r8,None,http://www.gstreamer.net/,None,Er=
rAccess,pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base zlib bzip2 yas=
m-native libav,FFmpeg-based GStreamer plug-in.,N/A,http://gstreamer.freedes=
ktop.org/src/gst-ffmpeg/gst-ffmpeg-0.10.13.tar.bz2,Cristian Iorga <cristian=
=2Eiorga@intel.com>)
['libsdl', '1.2.15', 'N/A', 'LGPLv2.1', 'libs', 'http://www.libsdl.org', 'r=
3', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc              virtual/libgl libglu            =
virtual/libx11 libxext libxrandr libxrender            tslib alsa-lib', 'ht=
tp://bugzilla.libsdl.org/', 'None', 'Simple DirectMedia Layer is a cross-pl=
atform multimedia library designed to provide low level access to audio, ke=
yboard, mouse, joystick, 3D hardware via OpenGL, and 2D video framebuffer.'=
, 'ErrAccess', 'N/A', 'http://www.libsdl.org/release/SDL-1.2.15.tar.gz', 'K=
ai Kang <kai.kang@windriver.com>', 'None']
inserted (libsdl,1.2.15,N/A,LGPLv2.1,libs,r3,None,http://www.libsdl.org,htt=
p://bugzilla.libsdl.org/,ErrAccess,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc              vi=
rtual/libgl libglu            virtual/libx11 libxext libxrandr libxrender  =
          tslib alsa-lib,Simple DirectMedia Layer is a cross-platform multi=
media library designed to provide low level access to audio, keyboard, mous=
e, joystick, 3D hardware via OpenGL, and 2D video framebuffer.,N/A,http://w=
ww.libsdl.org/release/SDL-1.2.15.tar.gz,Kai Kang <kai.kang@windriver.com>)
['dpkg', '1.17.4', 'N/A', 'GPLv2.0+', 'base', '', 'r0', 'pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  zlib bzip2 perl ncurses perl-native'=
, 'None', 'None', 'Package maintenance system from Debian.', 'ErrAccess', '=
N/A', 'ftp://ftp.debian.org/debian/pool/main/d/dpkg/dpkg_1.17.4.tar.xz', 'A=
n\xc3\xadbal Lim\xc3\xb3n <anibal.limon@linux.intel.com>', 'None']
inserted (dpkg,1.17.4,N/A,GPLv2.0+,base,r0,None,,None,ErrAccess,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  zlib bzip2 perl ncurses perl-=
native,Package maintenance system from Debian.,N/A,ftp://ftp.debian.org/deb=
ian/pool/main/d/dpkg/dpkg_1.17.4.tar.xz,An?bal Lim?n <anibal.limon@linux.in=
tel.com>)
['beecrypt', '4.2.1', 'N/A', 'GPLv2 & LGPLv2.1', 'base', 'http://sourceforg=
e.net/projects/beecrypt', 'r3', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'A general-pur=
pose cryptography library.', 'ErrAccess', 'N/A', 'http://downloads.sourcefo=
rge.net/beecrypt/beecrypt-4.2.1.tar.gz', 'Chong Lu <Chong.Lu@windriver.com>=
', 'None']
inserted (beecrypt,4.2.1,N/A,GPLv2 & LGPLv2.1,base,r3,None,http://sourcefor=
ge.net/projects/beecrypt,None,ErrAccess,autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  ,A general-purpose cryptog=
raphy library.,N/A,http://downloads.sourceforge.net/beecrypt/beecrypt-4.2.1=
=2Etar.gz,Chong Lu <Chong.Lu@windriver.com>)
['pm-utils', '1.4.1', 'N/A', 'GPLv2', 'base', 'http://pm-utils.freedesktop.=
org/wiki/', 'r1', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native pkgconfig-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'Simple she=
ll command line tools to suspend and hibernate.', 'ErrAccess', 'N/A', 'http=
://pm-utils.freedesktop.org/releases/pm-utils-1.4.1.tar.gz', 'Cristian Iorg=
a <cristian.iorga@intel.com>', 'None']
inserted (pm-utils,1.4.1,N/A,GPLv2,base,r1,None,http://pm-utils.freedesktop=
=2Eorg/wiki/,None,ErrAccess,autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native pkgconfig-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Simple shell command=
 line tools to suspend and hibernate.,N/A,http://pm-utils.freedesktop.org/r=
eleases/pm-utils-1.4.1.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['grep', '2.19', 'N/A', 'GPLv3', 'console/utils', 'http://savannah.gnu.org/=
projects/grep/', 'r0', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-na=
tive virtual/update-alternatives', 'http://savannah.gnu.org/bugs/?group=3Dg=
rep', 'None', 'GNU grep utility.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/g=
nu/grep/grep-2.19.tar.xz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (grep,2.19,N/A,GPLv3,console/utils,r0,None,http://savannah.gnu.org=
/projects/grep/,http://savannah.gnu.org/bugs/?group=3Dgrep,ErrAccess,autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native vi=
rtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc   texinfo-native virtual/update-alternativ=
es,GNU grep utility.,N/A,ftp://ftp.gnu.org/gnu/grep/grep-2.19.tar.xz,Chen Q=
i <Qi.Chen@windriver.com>)
['guile', '2.0.11', 'N/A', 'GPLv3', 'devel', 'http://www.gnu.org/software/g=
uile/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  lib=
unistring bdwgc gmp libtool libffi ncurses readline texinfo-native guile-na=
tive libatomics-ops', 'None', 'None', "Guile is the GNU Ubiquitous Intellig=
ent Language for Extensions, the official extension language for the GNU op=
erating system. Guile is a library designed to help programmers create flex=
ible applications. Using Guile in an application allows the application's f=
unctionality to be extended by users or other programmers with plug-ins, mo=
dules, or scripts. Guile provides what might be described as 'practical sof=
tware freedom,' making it possible for users to customize an application to=
 meet their needs without digging into the application's internals.", 'ErrA=
ccess', 'N/A', 'ftp://ftp.gnu.org/gnu/guile/guile-2.0.11.tar.xz', 'Chong Lu=
 <Chong.Lu@windriver.com>', 'None']
inserted (guile,2.0.11,N/A,GPLv3,devel,r0,None,http://www.gnu.org/software/=
guile/,None,ErrAccess,pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  libunistring bdwgc gmp libtool libffi ncurses readline texinfo-native g=
uile-native libatomics-ops,Guile is the GNU Ubiquitous Intelligent Language=
 for Extensions, the official extension language for the GNU operating syst=
em. Guile is a library designed to help programmers create flexible applica=
tions. Using Guile in an application allows the application's functionality=
 to be extended by users or other programmers with plug-ins, modules, or sc=
ripts. Guile provides what might be described as 'practical software freedo=
m,' making it possible for users to customize an application to meet their =
needs without digging into the application's internals.,N/A,ftp://ftp.gnu.o=
rg/gnu/guile/guile-2.0.11.tar.xz,Chong Lu <Chong.Lu@windriver.com>)
['python-scons', '2.3.2', 'N/A', 'MIT', 'devel/python', '', 'r0', ' virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   py=
thon-native python  python-native ', 'None', 'None', 'Software Construction=
 tool (make/autotools replacement).', 'ErrAccess', 'N/A', 'http://downloads=
=2Esourceforge.net/scons/scons-2.3.2.tar.gz', 'Richard Purdie <richard.purd=
ie@linuxfoundation.org>', 'None']
inserted (python-scons,2.3.2,N/A,MIT,devel/python,r0,None,,None,ErrAccess, =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc   python-native python  python-native ,Software Construction tool (make/=
autotools replacement).,N/A,http://downloads.sourceforge.net/scons/scons-2.=
3.2.tar.gz,Richard Purdie <richard.purdie@linuxfoundation.org>)
['dtc', '1.4.0+gitAUTOINC+65cc4d2748', '1.4.1+gitAUTOINC+302fca9f4c', 'GPLv=
2 | BSD', 'bootloader', '', 'r0', ' virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  flex-native bison-native', 'None', =
'None', 'The Device Tree Compiler is a tool used to manipulate the Open-Fir=
mware-like device tree used by PowerPC kernels.', 'UPDATE', 'N/A', 'git://g=
it.kernel.org/pub/scm/utils/dtc/dtc.git', 'Saul Wold <sgw@linux.intel.com>'=
, 'None']
inserted (dtc,1.4.0+gitAUTOINC+65cc4d2748,1.4.1+gitAUTOINC+302fca9f4c,GPLv2=
 | BSD,bootloader,r0,None,,None,UPDATE, virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  flex-native bison-native,The De=
vice Tree Compiler is a tool used to manipulate the Open-Firmware-like devi=
ce tree used by PowerPC kernels.,N/A,git://git.kernel.org/pub/scm/utils/dtc=
/dtc.git,Saul Wold <sgw@linux.intel.com>)
['libglu', '9.0.0', 'N/A', 'MIT', 'x11', 'http://mesa3d.org', '0', 'pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  virtual/libgl', 'https://bugs.freedesktop.org', '2', 'GL=
U is a utility toolkit used with OpenGL implementations', 'ErrAccess', 'N/A=
', 'ftp://ftp.freedesktop.org/pub/mesa/glu/glu-9.0.0.tar.bz2', 'Saul Wold <=
sgw@linux.intel.com>', 'None']
inserted (libglu,9.0.0,N/A,MIT,x11,0,2,http://mesa3d.org,https://bugs.freed=
esktop.org,ErrAccess,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  virtual/libgl,GLU is a utili=
ty toolkit used with OpenGL implementations,N/A,ftp://ftp.freedesktop.org/p=
ub/mesa/glu/glu-9.0.0.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['serf', '1.3.8', 'N/A', 'Apache-2.0', 'base', '', 'r0', ' virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  python-scons=
-native openssl apr apr-util util-linux expat', 'None', 'None', 'serf versi=
on 1.3.8-r0.', 'ErrAccess', 'N/A', 'http://serf.googlecode.com/svn/src_rele=
ases/serf-1.3.8.tar.bz2', 'None', 'None']
inserted (serf,1.3.8,N/A,Apache-2.0,base,r0,None,,None,ErrAccess, virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  pytho=
n-scons-native openssl apr apr-util util-linux expat,serf version 1.3.8-r0.=
,N/A,http://serf.googlecode.com/svn/src_releases/serf-1.3.8.tar.bz2,None)
['libxv', '1.0.10', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros libxext videoproto', 'https://bug=
s.freedesktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'libXv provides an=
 X Window System client interface to the X Video extension to the X protoco=
l. The X Video extension allows for accelerated drawing of videos.  Hardwar=
e adaptors are exposed to clients, which may draw in a number of colourspac=
es, including YUV.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/relea=
ses/individual/lib/libXv-1.0.10.tar.bz2', 'Ross Burton <ross.burton@intel.c=
om>', 'None']
inserted (libxv,1.0.10,N/A,MIT-style,x11/libs,r0,None,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  util-macros libxext videoproto,libXv provides an X Window Sy=
stem client interface to the X Video extension to the X protocol. The X Vid=
eo extension allows for accelerated drawing of videos.  Hardware adaptors a=
re exposed to clients, which may draw in a number of colourspaces, includin=
g YUV.,N/A,http://xorg.freedesktop.org/releases/individual/lib/libXv-1.0.10=
=2Etar.bz2,Ross Burton <ross.burton@intel.com>)
['python-mako', '0.9.1', 'N/A', 'MIT', 'devel/python', '', 'r0', ' virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   pyt=
hon-native python  python-native  python-distribute-native', 'None', 'None'=
, 'Templating library for Python.', 'ErrAccess', 'N/A', 'https://pypi.pytho=
n.org/packages/source/M/Mako/Mako-0.9.1.tar.gz', 'Khem Raj <raj.khem@gmail.=
com>', 'None']
inserted (python-mako,0.9.1,N/A,MIT,devel/python,r0,None,,None,ErrAccess, v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c   python-native python  python-native  python-distribute-native,Templatin=
g library for Python.,N/A,https://pypi.python.org/packages/source/M/Mako/Ma=
ko-0.9.1.tar.gz,Khem Raj <raj.khem@gmail.com>)
['pong-clock', '1.0', '1.0', 'GPLv2+', 'base', '', 'r0', ' virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/libx=
11 xdmcp xau', 'None', 'None', 'A clock combined with a game of pong.', 'MA=
TCH', '1.0', 'file://pong-clock-no-flicker.c', 'Ross Burton <ross.burton@in=
tel.com>', 'None']
inserted (pong-clock,1.0,1.0,GPLv2+,base,r0,None,,None,MATCH, virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/l=
ibx11 xdmcp xau,A clock combined with a game of pong.,1.0,file://pong-clock=
-no-flicker.c,Ross Burton <ross.burton@intel.com>)
['linux-yocto', '3.14.19+gitAUTOINC+fb6271a942_e19a1b40de', '3.14.26+gitAUT=
OINC+38cd560d50', 'GPLv2', 'kernel', '', 'r0', '  xz-native bc-native virtu=
al/i586-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native depmodw=
rapper-cross bc-native', 'None', 'None', 'Yocto Kernel', 'UPDATE', 'N/A', '=
git://git.yoctoproject.org/linux-yocto-3.14.git;bareclone=3D1;branch=3Dstan=
dard/common-pc/base,meta;name=3Dmachine,meta', 'Darren Hart <dvhart@linux.i=
ntel.com>', 'None']
inserted (linux-yocto,3.14.19+gitAUTOINC+fb6271a942_e19a1b40de,3.14.26+gitA=
UTOINC+38cd560d50,GPLv2,kernel,r0,None,,None,UPDATE,  xz-native bc-native v=
irtual/i586-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native dep=
modwrapper-cross bc-native,Yocto Kernel,N/A,git://git.yoctoproject.org/linu=
x-yocto-3.14.git;bareclone=3D1;branch=3Dstandard/common-pc/base,meta;name=
=3Dmachine,meta,Darren Hart <dvhart@linux.intel.com>)
['gtk-update-icon-cache-native', '3.4.4', 'N/A', 'LGPLv2 & LGPLv2+ & LGPLv2=
=2E1+', 'libs', '', 'r0', 'pkgconfig-native  gdk-pixbuf-native', 'None', 'N=
one', 'Just gtk-update-icon-cache built from GTK+ natively, for on-host pos=
tinst script execution.', 'ErrAccess', 'N/A', 'http://download.gnome.org/so=
urces/gtk+/3.4/gtk+-3.4.4.tar.xz', 'Ross Burton <ross.burton@intel.com>', '=
None']
inserted (gtk-update-icon-cache-native,3.4.4,N/A,LGPLv2 & LGPLv2+ & LGPLv2.=
1+,libs,r0,None,,None,ErrAccess,pkgconfig-native  gdk-pixbuf-native,Just gt=
k-update-icon-cache built from GTK+ natively, for on-host postinst script e=
xecution.,N/A,http://download.gnome.org/sources/gtk+/3.4/gtk+-3.4.4.tar.xz,=
Ross Burton <ross.burton@intel.com>)
['builder', '0.1', '0.1', 'MIT', 'x11', '', 'r6', ' virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   base-files base-pa=
sswd shadow-native shadow-sysroot shadow', 'None', 'None', 'This recipe cre=
ate a new user named builder, who is used for specific jobs like building. =
The task can be auto started via mini X', 'MATCH', 'N/A', 'file://builder_h=
ob_start.sh            file://please_wait_dialog.py           ', 'Saul Wold=
 <sgw@linux.intel.com>', 'None']
inserted (builder,0.1,0.1,MIT,x11,r6,None,,None,MATCH, virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   base-files base=
-passwd shadow-native shadow-sysroot shadow,This recipe create a new user n=
amed builder, who is used for specific jobs like building. The task can be =
auto started via mini X,N/A,file://builder_hob_start.sh            file://p=
lease_wait_dialog.py           ,Saul Wold <sgw@linux.intel.com>)
['matchbox-desktop-sato', '0.1+gitAUTOINC+810b0b08eb', '0.1+gitAUTOINC+810b=
0b08eb', 'GPLv2', 'x11', 'http://matchbox-project.org', 'r1', 'pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  ', 'http://bugzilla.yoctoproject.org/', 'None', 'Matchbox des=
ktop folders for the Sato environment.', 'MATCH', 'N/A', 'git://git.yoctopr=
oject.org/matchbox-desktop-sato', 'Ross Burton <ross.burton@intel.com>', 'N=
one']
inserted (matchbox-desktop-sato,0.1+gitAUTOINC+810b0b08eb,0.1+gitAUTOINC+81=
0b0b08eb,GPLv2,x11,r1,None,http://matchbox-project.org,http://bugzilla.yoct=
oproject.org/,MATCH,pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  ,Matchbox desktop folders for=
 the Sato environment.,N/A,git://git.yoctoproject.org/matchbox-desktop-sato=
,Ross Burton <ross.burton@intel.com>)
['xf86-input-mouse', '1.9.1', 'N/A', 'MIT-X', 'x11/drivers', 'http://www.x.=
org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randrproto ut=
il-macros inputproto kbproto ', 'https://bugs.freedesktop.org', '2', "mouse=
 is an Xorg input driver for mice. The driver supports most available mouse=
 types and interfaces.  The mouse driver functions as a pointer input devic=
e, and may be used as the X server's core pointer. Multiple mice are suppor=
ted by multiple instances of this driver.", 'ErrAccess', 'N/A', 'http://xor=
g.freedesktop.org/releases/individual/driver/xf86-input-mouse-1.9.1.tar.bz2=
', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86-input-mouse,1.9.1,N/A,MIT-X,x11/drivers,r0,2,http://www.x.or=
g,https://bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/=
xserver xproto randrproto util-macros inputproto kbproto ,mouse is an Xorg =
input driver for mice. The driver supports most available mouse types and i=
nterfaces.  The mouse driver functions as a pointer input device, and may b=
e used as the X server's core pointer. Multiple mice are supported by multi=
ple instances of this driver.,N/A,http://xorg.freedesktop.org/releases/indi=
vidual/driver/xf86-input-mouse-1.9.1.tar.bz2,Ross Burton <ross.burton@intel=
=2Ecom>)
['hicolor-icon-theme', '0.13', 'N/A', 'GPLv2', 'unknown', 'http://icon-them=
e.freedesktop.org/wiki/HicolorTheme', 'r1', 'pkgconfig-native autoconf-nati=
ve automake-native libtool-native gnu-config-native   gnome-common-native',=
 'https://bugs.freedesktop.org/', 'None', 'Default icon theme that all icon=
 themes automatically inherit from.', 'ErrAccess', 'N/A', 'http://icon-them=
e.freedesktop.org/releases/hicolor-icon-theme-0.13.tar.gz', 'Ross Burton <r=
oss.burton@intel.com>', 'None']
inserted (hicolor-icon-theme,0.13,N/A,GPLv2,unknown,r1,None,http://icon-the=
me.freedesktop.org/wiki/HicolorTheme,https://bugs.freedesktop.org/,ErrAcces=
s,pkgconfig-native autoconf-native automake-native libtool-native gnu-confi=
g-native   gnome-common-native,Default icon theme that all icon themes auto=
matically inherit from.,N/A,http://icon-theme.freedesktop.org/releases/hico=
lor-icon-theme-0.13.tar.gz,Ross Burton <ross.burton@intel.com>)
['pointercal', '0.0', '0.0', 'MIT', 'base', '', 'r11', ' ', 'None', 'None',=
 'Touchscreen calibration data.', 'MATCH', '0.0', 'file://pointercal       =
     file://COPYING', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (pointercal,0.0,0.0,MIT,base,r11,None,,None,MATCH, ,Touchscreen ca=
libration data.,0.0,file://pointercal            file://COPYING,Ross Burton=
 <ross.burton@intel.com>)
['libcroco', '0.6.8', 'N/A', 'LGPLv2 & LGPLv2.1', 'x11/utils', 'http://www.=
gnome.org/', 'r1', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 libxml2 zlib gnome-c=
ommon-native gtk-doc-stub-native', 'https://bugzilla.gnome.org/', 'None', '=
Cascading Style Sheet (CSS) parsing and manipulation toolkit.', 'ErrAccess'=
, 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/libcroco/0.6/libcroco-0.6.=
8.tar.xz;name=3Darchive', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libcroco,0.6.8,N/A,LGPLv2 & LGPLv2.1,x11/utils,r1,None,http://www=
=2Egnome.org/,https://bugzilla.gnome.org/,ErrAccess,pkgconfig-native autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  glib-2.0 libxml2 zlib gnome-common-native gtk-doc-stub-native,Cascading =
Style Sheet (CSS) parsing and manipulation toolkit.,N/A,http://ftp.gnome.or=
g/pub/GNOME/sources/libcroco/0.6/libcroco-0.6.8.tar.xz;name=3Darchive,Ross =
Burton <ross.burton@intel.com>)
['xf86-video-modesetting', '0.8.1', 'N/A', 'MIT-X', 'x11/drivers', 'http://=
www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextpro=
to fontsproto virtual/xserver xproto randrproto util-macros', 'https://bugs=
=2Efreedesktop.org', '2', 'Provides a generic kernel modesetting display dr=
iver for the X.Org X server.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop=
=2Eorg/releases/individual/driver/xf86-video-modesetting-0.8.1.tar.bz2', 'R=
oss Burton <ross.burton@intel.com>', 'None']
inserted (xf86-video-modesetting,0.8.1,N/A,MIT-X,x11/drivers,r0,2,http://ww=
w.x.org,https://bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  re=
nderproto videoproto xextproto fontsproto virtual/xserver xproto randrproto=
 util-macros,Provides a generic kernel modesetting display driver for the X=
=2EOrg X server.,N/A,http://xorg.freedesktop.org/releases/individual/driver=
/xf86-video-modesetting-0.8.1.tar.bz2,Ross Burton <ross.burton@intel.com>)
['libowl', '0.1+gitAUTOINC+6ebc8ac8f8', '0.1+gitAUTOINC+6ebc8ac8f8', 'GPLv2=
 & LGPLv2+', 'libs', 'http://www.o-hand.com', 'r0', 'pkgconfig-native autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  gtk+', 'http://bugzilla.yoctoproject.org/', 'None', 'OpenedHand Widget =
Library.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/libowl', 'Ross Burto=
n <ross.burton@intel.com>', 'None']
inserted (libowl,0.1+gitAUTOINC+6ebc8ac8f8,0.1+gitAUTOINC+6ebc8ac8f8,GPLv2 =
& LGPLv2+,libs,r0,None,http://www.o-hand.com,http://bugzilla.yoctoproject.o=
rg/,MATCH,pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  gtk+,OpenedHand Widget Library.,N/A,git=
://git.yoctoproject.org/libowl,Ross Burton <ross.burton@intel.com>)
['shadow-sysroot', '4.2.1', '4.2.1', 'BSD | Artistic-1.0', 'base utils', 'h=
ttp://pkg-shadow.alioth.debian.org', 'r3', ' virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  base-passwd', 'https://ali=
oth.debian.org/tracker/?group_id=3D30580', 'None', 'Shadow utils requiremen=
ts for useradd.bbclass.', 'MATCH', 'N/A', 'file://login.defs_shadow-sysroot=
', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (shadow-sysroot,4.2.1,4.2.1,BSD | Artistic-1.0,base utils,r3,None,=
http://pkg-shadow.alioth.debian.org,https://alioth.debian.org/tracker/?grou=
p_id=3D30580,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  base-passwd,Shadow utils requirements for useradd.b=
bclass.,N/A,file://login.defs_shadow-sysroot,Chen Qi <Qi.Chen@windriver.com=
>)
['telepathy-python', '0.15.19', 'N/A', 'LGPLv2.1+', 'base', 'http://telepat=
hy.freedesktop.org/wiki/', 'r6', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  libxslt-native  python-native ',=
 'None', 'None', 'Telepathy IM framework - Python package.', 'ErrAccess', '=
N/A', 'http://telepathy.freedesktop.org/releases/telepathy-python/telepathy=
-python-0.15.19.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None=
']
inserted (telepathy-python,0.15.19,N/A,LGPLv2.1+,base,r6,None,http://telepa=
thy.freedesktop.org/wiki/,None,ErrAccess,autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  libxslt-native  python-na=
tive ,Telepathy IM framework - Python package.,N/A,http://telepathy.freedes=
ktop.org/releases/telepathy-python/telepathy-python-0.15.19.tar.gz,Cristian=
 Iorga <cristian.iorga@intel.com>)
['dbus-glib', '0.102', 'N/A', 'AFL-2 | GPLv2+', 'base', 'http://www.freedes=
ktop.org/Software/dbus', 'r0', 'pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native virtual/gettext gettex=
t-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  expat glib-2.0 virtual/libintl dbus-glib-native dbus', 'None'=
, 'None', 'GLib bindings for the D-Bus message bus that integrate the D-Bus=
 library with the GLib thread abstraction and main loop.', 'ErrAccess', 'N/=
A', 'http://dbus.freedesktop.org/releases/dbus-glib/dbus-glib-0.102.tar.gz'=
, 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (dbus-glib,0.102,N/A,AFL-2 | GPLv2+,base,r0,None,http://www.freede=
sktop.org/Software/dbus,None,ErrAccess,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native virtual/gettext=
 gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  expat glib-2.0 virtual/libintl dbus-glib-native dbus,G=
Lib bindings for the D-Bus message bus that integrate the D-Bus library wit=
h the GLib thread abstraction and main loop.,N/A,http://dbus.freedesktop.or=
g/releases/dbus-glib/dbus-glib-0.102.tar.gz,Chong Lu <Chong.Lu@windriver.co=
m>)
['opkg-collateral', '1.0', '1.0', 'MIT', 'base', '', 'r2', ' virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None',=
 'None', 'Constructs the main configuration file for opkg.', 'MATCH', 'N/A'=
, 'file://opkg.conf.comments ', '   file://dest ', '   file://src ', 'Paul =
Barker <paul@paulbarker.me.uk>', 'None']
inserted (opkg-collateral,1.0,1.0,MIT,base,r2,None,,None,MATCH, virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Constr=
ucts the main configuration file for opkg.,N/A,file://opkg.conf.comments , =
  file://dest )
['libxkbfile', '1.0.8', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros virtual/libx11 kbproto', 'htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libxkbfile p=
rovides an interface to read and manipulate description files for XKB, the =
X11 keyboard configuration extension.', 'ErrAccess', 'N/A', 'http://xorg.fr=
eedesktop.org/releases/individual/lib/libxkbfile-1.0.8.tar.bz2', 'Ross Burt=
on <ross.burton@intel.com>', 'None']
inserted (libxkbfile,1.0.8,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  util-macros virtual/libx11 kbproto,libxkbfile provides an i=
nterface to read and manipulate description files for XKB, the X11 keyboard=
 configuration extension.,N/A,http://xorg.freedesktop.org/releases/individu=
al/lib/libxkbfile-1.0.8.tar.bz2,Ross Burton <ross.burton@intel.com>)
['xf86-video-omap', '0.4.2+gitrAUTOINC+ae0394e687', '0.4.3+gitAUTOINC+5d3d4=
9ba6a', 'GPLv2+', 'x11/drivers', 'http://www.x.org', 'r21.3', 'pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  renderproto videoproto xextproto fontsproto virtual/xserver x=
proto randrproto util-macros virtual/libx11 libdrm xf86driproto', 'https://=
bugs.freedesktop.org', '2', "Open-source X.org graphics driver for TI OMAP =
graphics Currently relies on a closed-source submodule for EXA acceleration=
 on the following chipsets:   + OMAP3430   + OMAP3630   + OMAP4430   + OMAP=
4460   + OMAP5430   + OMAP5432 NOTE: this driver is work in progress..  you=
 probably don't want to try and use it yet.  The API/ABI between driver and=
 kernel, and driver and acceleration submodules is not stable yet.  This dr=
iver requires the omapdrm kernel driver w/ GEM support. ", 'UPDATE', 'N/A',=
 'git://anongit.freedesktop.org/xorg/driver/xf86-video-omap', 'Ross Burton =
<ross.burton@intel.com>', 'None']
inserted (xf86-video-omap,0.4.2+gitrAUTOINC+ae0394e687,0.4.3+gitAUTOINC+5d3=
d49ba6a,GPLv2+,x11/drivers,r21.3,2,http://www.x.org,https://bugs.freedeskto=
p.org,UPDATE,pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextproto fon=
tsproto virtual/xserver xproto randrproto util-macros virtual/libx11 libdrm=
 xf86driproto,Open-source X.org graphics driver for TI OMAP graphics Curren=
tly relies on a closed-source submodule for EXA acceleration on the followi=
ng chipsets:   + OMAP3430   + OMAP3630   + OMAP4430   + OMAP4460   + OMAP54=
30   + OMAP5432 NOTE: this driver is work in progress..  you probably don't=
 want to try and use it yet.  The API/ABI between driver and kernel, and dr=
iver and acceleration submodules is not stable yet.  This driver requires t=
he omapdrm kernel driver w/ GEM support. ,N/A,git://anongit.freedesktop.org=
/xorg/driver/xf86-video-omap,Ross Burton <ross.burton@intel.com>)
['qmmp', '0.7.7', 'N/A', 'GPLv2', 'multimedia', 'http://qmmp.ylsoftware.com=
', 'r0', 'qt4-tools-native qt4-x11 autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native cmake-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  taglib libmad libv=
orbis libogg alsa-lib libsndfile1 libsamplerate0 curl', 'None', 'None', 'Qm=
mp is an audio player, written with the help of the Qt library. The user in=
terface is similar to Winamp or XMMS.', 'ErrAccess', 'N/A', 'http://qmmp.yl=
software.com/files/qmmp-0.7.7.tar.bz2', 'Hongxu Jia <hongxu.jia@windriver.c=
om>', 'None']
inserted (qmmp,0.7.7,N/A,GPLv2,multimedia,r0,None,http://qmmp.ylsoftware.co=
m,None,ErrAccess,qt4-tools-native qt4-x11 autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native cmake-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  taglib libm=
ad libvorbis libogg alsa-lib libsndfile1 libsamplerate0 curl,Qmmp is an aud=
io player, written with the help of the Qt library. The user interface is s=
imilar to Winamp or XMMS.,N/A,http://qmmp.ylsoftware.com/files/qmmp-0.7.7.t=
ar.bz2,Hongxu Jia <hongxu.jia@windriver.com>)
['telepathy-glib', '0.24.0', 'N/A', 'LGPLv2.1+', 'base', 'http://telepathy.=
freedesktop.org/wiki/', 'r0', 'pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native virtual/gettext gettext=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  glib-2.0 dbus python-native-runtime dbus-native dbus-glib libx=
slt-native', 'None', 'None', 'Telepathy Framework: GLib-based helper librar=
y for connection managers', 'ErrAccess', 'N/A', 'http://telepathy.freedeskt=
op.org/releases/telepathy-glib/telepathy-glib-0.24.0.tar.gz', 'Cristian Ior=
ga <cristian.iorga@intel.com>', 'None']
inserted (telepathy-glib,0.24.0,N/A,LGPLv2.1+,base,r0,None,http://telepathy=
=2Efreedesktop.org/wiki/,None,ErrAccess,pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native virtual/gettex=
t gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  glib-2.0 dbus python-native-runtime dbus-native dbus-=
glib libxslt-native,Telepathy Framework: GLib-based helper library for conn=
ection managers,N/A,http://telepathy.freedesktop.org/releases/telepathy-gli=
b/telepathy-glib-0.24.0.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['gaku', '0.1+gitAUTOINC+a0be2fe4b5', '0.1+gitAUTOINC+a0be2fe4b5', 'GPLv2+'=
, 'base', '', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  gtk+ gstreamer libowl-av', '=
None', 'None', 'Simple music player using GTK+ and GStreamer.', 'MATCH', '0=
=2E0+svnr399', 'git://git.yoctoproject.org/gaku', 'Cristian Iorga <cristian=
=2Eiorga@intel.com>', 'None']
inserted (gaku,0.1+gitAUTOINC+a0be2fe4b5,0.1+gitAUTOINC+a0be2fe4b5,GPLv2+,b=
ase,r0,None,,None,MATCH,pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ gstreamer libowl-av,=
Simple music player using GTK+ and GStreamer.,0.0+svnr399,git://git.yoctopr=
oject.org/gaku,Cristian Iorga <cristian.iorga@intel.com>)
['which', '2.20', 'N/A', 'GPLv3+', 'libs', 'http://carlo17.home.xs4all.nl/w=
hich/', 'r3', 'autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  cwautomacros-native texinfo-native virtual/update-a=
lternatives', 'None', 'None', 'Which is a utility that prints out the full =
path of the executables that bash(1) would execute when the passed program =
names would have been entered on the shell prompt. It does this by using th=
e exact same algorithm as bash.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gn=
u/which/which-2.20.tar.gz', 'Alejandro Hernandez <alejandro.hernandez@linux=
=2Eintel.com>', 'None']
inserted (which,2.20,N/A,GPLv3+,libs,r3,None,http://carlo17.home.xs4all.nl/=
which/,None,ErrAccess,autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  cwautomacros-native texinfo-native virtual/u=
pdate-alternatives,Which is a utility that prints out the full path of the =
executables that bash(1) would execute when the passed program names would =
have been entered on the shell prompt. It does this by using the exact same=
 algorithm as bash.,N/A,ftp://ftp.gnu.org/gnu/which/which-2.20.tar.gz,Aleja=
ndro Hernandez <alejandro.hernandez@linux.intel.com>)
['libcap', '2.24', 'N/A', 'BSD | GPLv2', 'base', 'http://sites.google.com/s=
ite/fullycapable/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  perl-native-runtime attr', 'None', 'None', =
'Library for getting/setting POSIX.1e capabilities.', 'ErrAccess', 'N/A', '=
http://kernel.org/pub/linux/libs/security/linux-privs/libcap2/libcap-2.24.t=
ar.xz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (libcap,2.24,N/A,BSD | GPLv2,base,r0,None,http://sites.google.com/=
site/fullycapable/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  perl-native-runtime attr,Library for=
 getting/setting POSIX.1e capabilities.,N/A,http://kernel.org/pub/linux/lib=
s/security/linux-privs/libcap2/libcap-2.24.tar.xz,Chong Lu <Chong.Lu@windri=
ver.com>)
['libfakekey', '0.0+gitAUTOINC+e327ff049b', '0.0+gitAUTOINC+e327ff049b', 'L=
GPLv2+', 'x11/wm', 'http://matchbox-project.org/', 'r0', 'pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  libxtst', 'http://bugzilla.yoctopro=
ject.org/', 'None', "libfakekey is a simple library for converting UTF-8 ch=
aracters into 'fake' X key-presses.", 'MATCH', 'N/A', 'git://git.yoctoproje=
ct.org/libfakekey', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libfakekey,0.0+gitAUTOINC+e327ff049b,0.0+gitAUTOINC+e327ff049b,LG=
PLv2+,x11/wm,r0,None,http://matchbox-project.org/,http://bugzilla.yoctoproj=
ect.org/,MATCH,pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  lib=
xtst,libfakekey is a simple library for converting UTF-8 characters into 'f=
ake' X key-presses.,N/A,git://git.yoctoproject.org/libfakekey,Ross Burton <=
ross.burton@intel.com>)
['libaio', '0.3.109', 'N/A', 'LGPLv2.1+', 'base', 'http://lse.sourceforge.n=
et/io/aio.html', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ', 'None', 'None', 'Asynchronous input/output =
library that uses the kernels native interface', 'ErrAccess', 'N/A', 'ftp:/=
/ftp.debian.org/debian/pool/main/liba/libaio/libaio_0.3.109.orig.tar.gz', '=
Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libaio,0.3.109,N/A,LGPLv2.1+,base,r2,None,http://lse.sourceforge.=
net/io/aio.html,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  ,Asynchronous input/output library that=
 uses the kernels native interface,N/A,ftp://ftp.debian.org/debian/pool/mai=
n/liba/libaio/libaio_0.3.109.orig.tar.gz,Saul Wold <sgw@linux.intel.com>)
['wireless-tools', '30.pre9', 'N/A', 'GPLv2 & (LGPLv2.1 | MPL-1.1 | BSD)', =
'base', 'http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/Tools.html', =
'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  ', 'None', '1', 'Tools for the Linux Standard Wireless Extensio=
n Subsystem.', 'ErrAccess', 'N/A', 'http://www.hpl.hp.com/personal/Jean_Tou=
rrilhes/Linux/wireless_tools.30.pre9.tar.gz', 'Cristian Iorga <cristian.ior=
ga@intel.com>', 'None']
inserted (wireless-tools,30.pre9,N/A,GPLv2 & (LGPLv2.1 | MPL-1.1 | BSD),bas=
e,r0,1,http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/Tools.html,None=
,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  ,Tools for the Linux Standard Wireless Extension Subsystem.=
,N/A,http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/wireless_tools.30=
=2Epre9.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['fixesproto', '5.0', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedeskt=
op.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the X Fixes extension.  This extension is designed to provide =
server-side support for application work arounds to shortcomings in the cor=
e X window system.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/relea=
ses/individual/proto/fixesproto-5.0.tar.bz2', 'Ross Burton <ross.burton@int=
el.com>', 'None']
inserted (fixesproto,5.0,N/A,MIT & MIT-style,x11/libs,r1,1,http://www.x.org=
,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  util-macros,This package provides the wire protocol for=
 the X Fixes extension.  This extension is designed to provide server-side =
support for application work arounds to shortcomings in the core X window s=
ystem.,N/A,http://xorg.freedesktop.org/releases/individual/proto/fixesproto=
-5.0.tar.bz2,Ross Burton <ross.burton@intel.com>)
['docbook-sgml-dtd-4.1-native', '4.1', 'N/A', 'OASIS', 'base', 'http://www.=
docbook.org/sgml/', 'r3.0', ' sgml-common-native', 'None', 'None', 'Documen=
t type definitions for verification of SGML data files against the DocBook =
rule set', 'ErrAccess', 'N/A', 'http://docbook.org/sgml/4.1/docbk41.zip', '=
Paul Eggleton <paul.eggleton@linux.intel.com>', 'PRS Reports Incorrectly']
inserted (docbook-sgml-dtd-4.1-native,4.1,N/A,OASIS,base,r3.0,None,http://w=
ww.docbook.org/sgml/,None,ErrAccess, sgml-common-native,Document type defin=
itions for verification of SGML data files against the DocBook rule set,N/A=
,http://docbook.org/sgml/4.1/docbk41.zip,Paul Eggleton <paul.eggleton@linux=
=2Eintel.com>)
['quota', '4.01', 'N/A', 'BSD & GPLv2+ & LGPLv2.1+', 'base', 'http://source=
forge.net/projects/linuxquota/', 'r1', 'pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native virtual/gettex=
t gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  gettext-native e2fsprogs tcp-wrappers', 'http://sourc=
eforge.net/tracker/?group_id=3D18136&atid=3D118136', 'None', 'Tools for mon=
itoring & limiting user disk usage per filesystem.', 'ErrAccess', 'N/A', 'h=
ttp://downloads.sourceforge.net/project/linuxquota/quota-tools/4.01/quota-4=
=2E01.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (quota,4.01,N/A,BSD & GPLv2+ & LGPLv2.1+,base,r1,None,http://sourc=
eforge.net/projects/linuxquota/,http://sourceforge.net/tracker/?group_id=3D=
18136&atid=3D118136,ErrAccess,pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native virtual/gettext gettext-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  gettext-native e2fsprogs tcp-wrappers,Tools for monitoring & li=
miting user disk usage per filesystem.,N/A,http://downloads.sourceforge.net=
/project/linuxquota/quota-tools/4.01/quota-4.01.tar.gz,Cristian Iorga <cris=
tian.iorga@intel.com>)
['iproute2', '3.17.0', 'N/A', 'GPLv2+', 'base', 'http://www.linuxfoundation=
=2Eorg/collaborate/workgroups/networking/iproute2', 'r0', ' virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native=
 bison-native iptables virtual/update-alternatives', 'None', 'None', 'Iprou=
te2 is a collection of utilities for controlling TCP / IP networking and tr=
affic control in Linux.  Of the utilities ip and tc are the most important.=
  ip controls IPv4 and IPv6 configuration and tc stands for traffic control=
=2E', 'ErrAccess', 'N/A', 'http://kernel.org/pub/linux/utils/net/iproute2/i=
proute2-3.17.0.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (iproute2,3.17.0,N/A,GPLv2+,base,r0,None,http://www.linuxfoundatio=
n.org/collaborate/workgroups/networking/iproute2,None,ErrAccess, virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-n=
ative bison-native iptables virtual/update-alternatives,Iproute2 is a colle=
ction of utilities for controlling TCP / IP networking and traffic control =
in Linux.  Of the utilities ip and tc are the most important.  ip controls =
IPv4 and IPv6 configuration and tc stands for traffic control.,N/A,http://k=
ernel.org/pub/linux/utils/net/iproute2/iproute2-3.17.0.tar.xz,Cristian Iorg=
a <cristian.iorga@intel.com>)
['nss-myhostname', '0.3', 'N/A', 'LGPLv2.1', 'base', 'http://0pointer.de/le=
nnart/projects/nss-myhostname/', 'r0', 'autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'plugin=
 for the GNU Name Service Switch (NSS) functionality of the GNU C Library (=
glibc) providing host name resolution for the locally configured system hos=
tname as returned by gethostname(2).', 'ErrAccess', 'N/A', 'http://0pointer=
=2Ede/lennart/projects/nss-myhostname/nss-myhostname-0.3.tar.gz', 'None', '=
None']
inserted (nss-myhostname,0.3,N/A,LGPLv2.1,base,r0,None,http://0pointer.de/l=
ennart/projects/nss-myhostname/,None,ErrAccess,autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,plugin for the GNU=
 Name Service Switch (NSS) functionality of the GNU C Library (glibc) provi=
ding host name resolution for the locally configured system hostname as ret=
urned by gethostname(2).,N/A,http://0pointer.de/lennart/projects/nss-myhost=
name/nss-myhostname-0.3.tar.gz,None)
['xrandr', '1.4.2', 'N/A', 'MIT', 'x11/apps', 'http://www.x.org/', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros-native virtual/libx11 libxrandr libxre=
nder', 'https://bugs.freedesktop.org', '1', 'Xrandr is used to set the size=
, orientation and/or reflection of the outputs for a screen. It can also se=
t the screen size.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/relea=
ses/individual/app/xrandr-1.4.2.tar.bz2', 'An\xc3\xadbal Lim\xc3\xb3n <anib=
al.limon@linux.intel.com>', 'None']
inserted (xrandr,1.4.2,N/A,MIT,x11/apps,r0,1,http://www.x.org/,https://bugs=
=2Efreedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native v=
irtual/libx11 libxrandr libxrender,Xrandr is used to set the size, orientat=
ion and/or reflection of the outputs for a screen. It can also set the scre=
en size.,N/A,http://xorg.freedesktop.org/releases/individual/app/xrandr-1.4=
=2E2.tar.bz2,An?bal Lim?n <anibal.limon@linux.intel.com>)
['cwautomacros', '20110201', 'N/A', 'GPLv2', 'base', 'http://cwautomacros.b=
erlios.de/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  ', 'None', 'None', 'Collection of autoconf m4 macr=
os.', 'ErrAccess', 'N/A', 'http://download.berlios.de/cwautomacros/cwautoma=
cros-20110201.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (cwautomacros,20110201,N/A,GPLv2,base,r0,None,http://cwautomacros.=
berlios.de/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ,Collection of autoconf m4 macros.,N/A,http=
://download.berlios.de/cwautomacros/cwautomacros-20110201.tar.bz2,Cristian =
Iorga <cristian.iorga@intel.com>)
['xvideo-tests', '0.1+gitAUTOINC+f8f320d025', '0.1+gitAUTOINC+f8f320d025', =
'GPLv2+', 'base', '', 'r0', 'autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  libxv', 'None', 'None', 'Simple XVide=
o test application.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/test-xvid=
eo', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (xvideo-tests,0.1+gitAUTOINC+f8f320d025,0.1+gitAUTOINC+f8f320d025,=
GPLv2+,base,r0,None,,None,MATCH,autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  libxv,Simple XVideo test applicati=
on.,N/A,git://git.yoctoproject.org/test-xvideo,Cristian Iorga <cristian.ior=
ga@intel.com>)
['wpa-supplicant', '2.3', 'N/A', 'BSD', 'network', 'http://hostap.epitest.f=
i/wpa_supplicant/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  dbus libnl libgcrypt gnutls', 'http://hosta=
p.epitest.fi/bugz/', 'None', 'Client for Wi-Fi Protected Access (WPA).', 'E=
rrAccess', 'N/A', 'http://hostap.epitest.fi/releases/wpa_supplicant-2.3.tar=
=2Egz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (wpa-supplicant,2.3,N/A,BSD,network,r0,None,http://hostap.epitest.=
fi/wpa_supplicant/,http://hostap.epitest.fi/bugz/,ErrAccess, virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  dbus libnl=
 libgcrypt gnutls,Client for Wi-Fi Protected Access (WPA).,N/A,http://hosta=
p.epitest.fi/releases/wpa_supplicant-2.3.tar.gz,Cristian Iorga <cristian.io=
rga@intel.com>)
['libxxf86dga', '1.1.4', 'N/A', 'MIT-X', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros libxext xf86dgaproto', 'https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXxf86dga provi=
des the XFree86-DGA extension, which allows direct graphics access to a fra=
mebuffer-like region, and also allows relative mouse reporting, et al.  It =
is mainly used by games and emulators for games.', 'ErrAccess', 'N/A', 'htt=
p://xorg.freedesktop.org/releases/individual/lib/libXxf86dga-1.1.4.tar.bz2'=
, 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxxf86dga,1.1.4,N/A,MIT-X,x11/libs,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  util-macros libxext xf86dgaproto,libXxf86dga provides the XFre=
e86-DGA extension, which allows direct graphics access to a framebuffer-lik=
e region, and also allows relative mouse reporting, et al.  It is mainly us=
ed by games and emulators for games.,N/A,http://xorg.freedesktop.org/releas=
es/individual/lib/libXxf86dga-1.1.4.tar.bz2,Ross Burton <ross.burton@intel.=
com>)
['strace', '4.9', 'N/A', 'BSD', 'console/utils', 'http://strace.sourceforge=
=2Enet', 'r0', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc   libaio', 'None', 'None', 'System call tracing too=
l.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge.net/strace/strace-4.=
9.tar.xz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (strace,4.9,N/A,BSD,console/utils,r0,None,http://strace.sourceforg=
e.net,None,ErrAccess,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc   libaio,System call tracing tool.,N/A,http://=
downloads.sourceforge.net/strace/strace-4.9.tar.xz,Chong Lu <Chong.Lu@windr=
iver.com>)
['hostap-utils', '0.4.7', 'N/A', 'GPLv2', 'kernel/userland', 'http://hostap=
=2Eepitest.fi', 'r4', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'http://hostap.epitest.fi/bugz/', 'None', 'T=
he hostap driver supports Host AP mode, it allows for IEEE 802.11 managemen=
t functions on the host computer and allows the system to act as an access =
point.', 'ErrAccess', 'N/A', 'http://hostap.epitest.fi/releases/hostap-util=
s-0.4.7.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (hostap-utils,0.4.7,N/A,GPLv2,kernel/userland,r4,None,http://hosta=
p.epitest.fi,http://hostap.epitest.fi/bugz/,ErrAccess, virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,The hostap driv=
er supports Host AP mode, it allows for IEEE 802.11 management functions on=
 the host computer and allows the system to act as an access point.,N/A,htt=
p://hostap.epitest.fi/releases/hostap-utils-0.4.7.tar.gz,Cristian Iorga <cr=
istian.iorga@intel.com>)
['cogl-1.0', '1.18.2', 'N/A', 'MIT', 'base', 'http://wiki.clutter-project.o=
rg/wiki/Cogl', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  glib-2.0 gdk-pixbuf gtk-doc-stub-native pango virtual/mesa wayland virt=
ual/libgles2 virtual/libgl libdrm virtual/libx11 libxcomposite libxfixes li=
bxi libxrandr', 'None', 'None', 'Modern 3D graphics API with associated uti=
lity APIs.', 'ErrAccess', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/co=
gl/1.18/cogl-1.18.2.tar.xz;name=3Darchive', 'Ross Burton <ross.burton@intel=
=2Ecom>', 'None']
inserted (cogl-1.0,1.18.2,N/A,MIT,base,r0,None,http://wiki.clutter-project.=
org/wiki/Cogl,None,ErrAccess,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  glib-2.0 gdk-pixbuf gtk-doc-stub-native pango virtual/mesa wayla=
nd virtual/libgles2 virtual/libgl libdrm virtual/libx11 libxcomposite libxf=
ixes libxi libxrandr,Modern 3D graphics API with associated utility APIs.,N=
/A,http://ftp.gnome.org/pub/GNOME/sources/cogl/1.18/cogl-1.18.2.tar.xz;name=
=3Darchive,Ross Burton <ross.burton@intel.com>)
['trace-cmd', '2.3.2+gitAUTOINC+79e08f8edb', '2.4+gitAUTOINC+79e08f8edb', '=
GPLv2 & LGPLv2.1', 'base', '', 'r3', 'pkgconfig-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc    python-native=
 ', 'None', 'None', 'User interface to Ftrace.', 'UPDATE', 'N/A', 'git://gi=
t.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=3Dgit;=
branch=3Dtrace-cmd-stable-v2.3', 'Darren Hart <dvhart@linux.intel.com>', 'N=
one']
inserted (trace-cmd,2.3.2+gitAUTOINC+79e08f8edb,2.4+gitAUTOINC+79e08f8edb,G=
PLv2 & LGPLv2.1,base,r3,None,,None,UPDATE,pkgconfig-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc    python-na=
tive ,User interface to Ftrace.,N/A,git://git.kernel.org/pub/scm/linux/kern=
el/git/rostedt/trace-cmd.git;protocol=3Dgit;branch=3Dtrace-cmd-stable-v2.3,=
Darren Hart <dvhart@linux.intel.com>)
['nettle', '2.7.1', 'N/A', 'LGPLv2.1 & GPLv2', 'libs', 'http://www.lysator.=
liu.se/~nisse/nettle/', 'r0', 'autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc   gmp', 'None', 'None', 'A low level=
 cryptographic library.', 'ErrAccess', 'N/A', 'http://www.lysator.liu.se/~n=
isse/archive/nettle-2.7.1.tar.gz', 'Armin Kuster <akuster808@gmail.com>', '=
3.0.0 breaks gnutls, api changes']
inserted (nettle,2.7.1,N/A,LGPLv2.1 & GPLv2,libs,r0,None,http://www.lysator=
=2Eliu.se/~nisse/nettle/,None,ErrAccess,autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc   gmp,A low level cryptogra=
phic library.,N/A,http://www.lysator.liu.se/~nisse/archive/nettle-2.7.1.tar=
=2Egz,Armin Kuster <akuster808@gmail.com>)
['bigreqsproto', '1.1.2', 'N/A', 'MIT-X', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org=
/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoc=
ol for the BIG-REQUESTS extension, used to send larger requests that usual =
in order to avoid fragmentation.', 'ErrAccess', 'N/A', 'http://xorg.freedes=
ktop.org/releases/individual/proto/bigreqsproto-1.1.2.tar.bz2', 'Saul Wold =
<sgw@linux.intel.com>', 'None']
inserted (bigreqsproto,1.1.2,N/A,MIT-X,x11/libs,r0,1,http://www.x.org,https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  util-macros,This package provides the wire protocol for the B=
IG-REQUESTS extension, used to send larger requests that usual in order to =
avoid fragmentation.,N/A,http://xorg.freedesktop.org/releases/individual/pr=
oto/bigreqsproto-1.1.2.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['xinit', '1.3.3', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros-native virtual/libx11', 'https://bugs=
=2Efreedesktop.org', '1', 'The xinit program is used to start the X Window =
System server and a first client program on systems that cannot start X dir=
ectly from /etc/init or in environments that use multiple window systems. W=
hen this first client exits, xinit will kill the X server and then terminat=
e.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/individual/a=
pp/xinit-1.3.3.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xinit,1.3.3,N/A,MIT-X,x11/apps,r0,1,http://www.x.org/,https://bug=
s.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native vi=
rtual/libx11,The xinit program is used to start the X Window System server =
and a first client program on systems that cannot start X directly from /et=
c/init or in environments that use multiple window systems. When this first=
 client exits, xinit will kill the X server and then terminate.,N/A,http://=
xorg.freedesktop.org/releases/individual/app/xinit-1.3.3.tar.bz2,Ross Burto=
n <ross.burton@intel.com>)
['gstreamer1.0', '1.4.1', 'N/A', 'LGPLv2+', 'multimedia', 'http://gstreamer=
=2Efreedesktop.org/', 'r0', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  glib-2.0 libxml2 bison-native flex-native', 'https://bugzilla.gn=
ome.org/enter_bug.cgi?product=3DGstreamer', 'None', 'GStreamer is a multime=
dia framework for encoding and decoding video and sound. It supports a wide=
 range of formats including mp3, ogg, avi, mpeg and quicktime.', 'ErrAccess=
', 'N/A', 'http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.4.1.t=
ar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (gstreamer1.0,1.4.1,N/A,LGPLv2+,multimedia,r0,None,http://gstreame=
r.freedesktop.org/,https://bugzilla.gnome.org/enter_bug.cgi?product=3DGstre=
amer,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gli=
b-2.0 libxml2 bison-native flex-native,GStreamer is a multimedia framework =
for encoding and decoding video and sound. It supports a wide range of form=
ats including mp3, ogg, avi, mpeg and quicktime.,N/A,http://gstreamer.freed=
esktop.org/src/gstreamer/gstreamer-1.4.1.tar.xz,Cristian Iorga <cristian.io=
rga@intel.com>)
['linuxdoc-tools-native', '0.9.69', 'N/A', 'GPLv3+', 'base', 'http://packag=
es.debian.org/linuxdoc-tools', 'r0', 'autoconf-native automake-native libto=
ol-native gnu-config-native  groff-native openjade-native', 'None', 'None',=
 'Convert LinuxDoc SGML source into other formats.', 'ErrAccess', '0.9.66',=
 'ftp://ftp.debian.org/debian/pool/main/l/linuxdoc-tools/linuxdoc-tools_0.9=
=2E69.orig.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (linuxdoc-tools-native,0.9.69,N/A,GPLv3+,base,r0,None,http://packa=
ges.debian.org/linuxdoc-tools,None,ErrAccess,autoconf-native automake-nativ=
e libtool-native gnu-config-native  groff-native openjade-native,Convert Li=
nuxDoc SGML source into other formats.,0.9.66,ftp://ftp.debian.org/debian/p=
ool/main/l/linuxdoc-tools/linuxdoc-tools_0.9.69.orig.tar.gz,Paul Eggleton <=
paul.eggleton@linux.intel.com>)
['initramfs-live-install-efi', '1.0', '1.0', 'MIT', 'base', '', 'r1', ' ', =
'None', 'None', 'Live image install script for grub-efi.', 'MATCH', 'N/A', =
'file://init-install-efi.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-live-install-efi,1.0,1.0,MIT,base,r1,None,,None,MATCH, =
,Live image install script for grub-efi.,N/A,file://init-install-efi.sh,Sau=
l Wold <sgw@linux.intel.com>)
['tcf-agent', '0.4.0+gitAUTOINC+4ef94ecb92', '8.0+gitAUTOINC+3dddb01fef', '=
EPL-1.0 | EDL-1.0', 'base', 'http://wiki.eclipse.org/TCF', 'r2', ' virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util=
-linux openssl update-rc.d-native initscripts', 'https://bugs.eclipse.org/b=
ugs/', 'None', 'Target Communication Framework for the Eclipse IDE.', 'UPDA=
TE', 'N/A', 'git://git.eclipse.org/gitroot/tcf/org.eclipse.tcf.agent.git', =
'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (tcf-agent,0.4.0+gitAUTOINC+4ef94ecb92,8.0+gitAUTOINC+3dddb01fef,E=
PL-1.0 | EDL-1.0,base,r2,None,http://wiki.eclipse.org/TCF,https://bugs.ecli=
pse.org/bugs/,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-linux openssl update-rc.d-native initscripts=
,Target Communication Framework for the Eclipse IDE.,N/A,git://git.eclipse.=
org/gitroot/tcf/org.eclipse.tcf.agent.git,Richard Purdie <richard.purdie@li=
nuxfoundation.org>)
['icecc-create-env-native', '0.1', '0.1', 'GPLv2+', 'base', '', 'r2', ' ', =
'None', 'None', 'This is a version of the icecc-create-env script that has =
been modified in order to make it work with OE.', 'MATCH', 'N/A', 'file://i=
cecc-create-env', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (icecc-create-env-native,0.1,0.1,GPLv2+,base,r2,None,,None,MATCH, =
,This is a version of the icecc-create-env script that has been modified in=
 order to make it work with OE.,N/A,file://icecc-create-env,Saul Wold <sgw@=
linux.intel.com>)
['xf86-video-intel', '2.99.912', 'N/A', 'MIT-X', 'x11/drivers', 'http://www=
=2Ex.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextprot=
o fontsproto virtual/xserver xproto randrproto util-macros virtual/libx11 d=
rm libpciaccess pixman xf86driproto dri2proto udev', 'https://bugs.freedesk=
top.org', '2', 'intel is an Xorg driver for Intel integrated graphics chips=
ets. The driver supports depths 8, 15, 16 and 24. On some chipsets, the dri=
ver supports hardware accelerated 3D via the Direct Rendering Infrastructur=
e (DRI).', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/indivi=
dual/driver/xf86-video-intel-2.99.912.tar.bz2', 'Ross Burton <ross.burton@i=
ntel.com>', 'None']
inserted (xf86-video-intel,2.99.912,N/A,MIT-X,x11/drivers,r0,2,http://www.x=
=2Eorg,https://bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ren=
derproto videoproto xextproto fontsproto virtual/xserver xproto randrproto =
util-macros virtual/libx11 drm libpciaccess pixman xf86driproto dri2proto u=
dev,intel is an Xorg driver for Intel integrated graphics chipsets. The dri=
ver supports depths 8, 15, 16 and 24. On some chipsets, the driver supports=
 hardware accelerated 3D via the Direct Rendering Infrastructure (DRI).,N/A=
,http://xorg.freedesktop.org/releases/individual/driver/xf86-video-intel-2.=
99.912.tar.bz2,Ross Burton <ross.burton@intel.com>)
['btrfs-tools', '3.14.2+gitAUTOINC+44cdb62d34', '3.17.3+gitAUTOINC+e4c12281=
c2', 'GPLv2', 'base', 'https://btrfs.wiki.kernel.org', 'r0', ' virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-lin=
ux attr e2fsprogs lzo acl', 'None', 'None', 'Btrfs is a new copy on write f=
ilesystem for Linux aimed at implementing advanced features while focusing =
on fault tolerance, repair and easy administration. This package contains u=
tilities (mkfs, fsck, btrfsctl) used to work with btrfs and an utility (btr=
fs-convert) to make a btrfs filesystem from an ext3.', 'UPDATE', 'N/A', 'gi=
t://git.kernel.org/pub/scm/linux/kernel/git/kdave/btrfs-progs.git', 'Richar=
d Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (btrfs-tools,3.14.2+gitAUTOINC+44cdb62d34,3.17.3+gitAUTOINC+e4c122=
81c2,GPLv2,base,r0,None,https://btrfs.wiki.kernel.org,None,UPDATE, virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util=
-linux attr e2fsprogs lzo acl,Btrfs is a new copy on write filesystem for L=
inux aimed at implementing advanced features while focusing on fault tolera=
nce, repair and easy administration. This package contains utilities (mkfs,=
 fsck, btrfsctl) used to work with btrfs and an utility (btrfs-convert) to =
make a btrfs filesystem from an ext3.,N/A,git://git.kernel.org/pub/scm/linu=
x/kernel/git/kdave/btrfs-progs.git,Richard Purdie <richard.purdie@linuxfoun=
dation.org>)
['libtirpc', '0.2.5', 'N/A', 'BSD', 'libs/network', 'http://sourceforge.net=
/projects/libtirpc/', 'r0', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc   xz-native', 'http:/=
/sourceforge.net/tracker/?group_id=3D183075&atid=3D903784', 'None', 'Libtir=
pc is a port of Suns Transport-Independent RPC library to Linux', 'ErrAcces=
s', 'N/A', 'http://downloads.sourceforge.net/libtirpc/libtirpc-0.2.5.tar.bz=
2;name=3Dlibtirpc', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libtirpc,0.2.5,N/A,BSD,libs/network,r0,None,http://sourceforge.ne=
t/projects/libtirpc/,http://sourceforge.net/tracker/?group_id=3D183075&atid=
=3D903784,ErrAccess,pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc   xz-native,Libtirpc is a port=
 of Suns Transport-Independent RPC library to Linux,N/A,http://downloads.so=
urceforge.net/libtirpc/libtirpc-0.2.5.tar.bz2;name=3Dlibtirpc,Cristian Iorg=
a <cristian.iorga@intel.com>)
['findutils', '4.5.14', 'N/A', 'GPLv3+', 'console/utils', 'http://www.gnu.o=
rg/software/findutils/', 'r0', 'autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bis=
on-native texinfo-native virtual/update-alternatives', 'http://savannah.gnu=
=2Eorg/bugs/?group=3Dfindutils', 'None', 'The GNU Find Utilities are the ba=
sic directory searching utilities of the GNU operating system. These progra=
ms are typically used in conjunction with other programs to provide modular=
 and powerful directory search and file locating capabilities to other comm=
ands.', 'ErrAccess', 'N/A', 'ftp://alpha.gnu.org/gnu/findutils/findutils-4.=
5.14.tar.gz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (findutils,4.5.14,N/A,GPLv3+,console/utils,r0,None,http://www.gnu.=
org/software/findutils/,http://savannah.gnu.org/bugs/?group=3Dfindutils,Err=
Access,autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  bison-native texinfo-native =
virtual/update-alternatives,The GNU Find Utilities are the basic directory =
searching utilities of the GNU operating system. These programs are typical=
ly used in conjunction with other programs to provide modular and powerful =
directory search and file locating capabilities to other commands.,N/A,ftp:=
//alpha.gnu.org/gnu/findutils/findutils-4.5.14.tar.gz,Chen Qi <Qi.Chen@wind=
river.com>)
['popt', '1.16', 'N/A', 'MIT', 'libs', 'http://rpm5.org/', 'r3', 'autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native virtu=
al/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ', 'None', 'None', 'Library for parsing comm=
and line options.', 'ErrAccess', 'N/A', 'http://rpm5.org/files/popt/popt-1.=
16.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (popt,1.16,N/A,MIT,libs,r3,None,http://rpm5.org/,None,ErrAccess,au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  ,Library for parsing command line opt=
ions.,N/A,http://rpm5.org/files/popt/popt-1.16.tar.gz,Paul Eggleton <paul.e=
ggleton@linux.intel.com>)
['x264', 'r2265+gitAUTOINC+ffc3ad4945', 'r2265+gitAUTOINC+40bb56814e', 'GPL=
v2', 'base', 'http://www.videolan.org/developers/x264.html', 'r0', 'pkgconf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  yasm-native perl-native', 'None', 'None', 'A free software l=
ibrary and application for encoding video streams into the H.264/MPEG-4 AVC=
 format.', 'UPDATE', 'N/A', 'git://git.videolan.org/x264.git', 'Paul Egglet=
on <paul.eggleton@linux.intel.com>', 'None']
inserted (x264,r2265+gitAUTOINC+ffc3ad4945,r2265+gitAUTOINC+40bb56814e,GPLv=
2,base,r0,None,http://www.videolan.org/developers/x264.html,None,UPDATE,pkg=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  yasm-native perl-native,A free software library and appl=
ication for encoding video streams into the H.264/MPEG-4 AVC format.,N/A,gi=
t://git.videolan.org/x264.git,Paul Eggleton <paul.eggleton@linux.intel.com>)
['blktool', '4-6.1', 'N/A', 'GPLv2+', 'base', 'http://packages.debian.org/u=
nstable/admin/blktool', 'r1', 'pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0', 'None',=
 'None', 'blktool is used for querying and/or changing settings of a block =
device. It is like hdparm but a more general tool, as it works on SCSI, IDE=
 and SATA devices.', 'ErrAccess', 'N/A', 'ftp://ftp.debian.org/debian/pool/=
main/b/blktool/blktool_4.orig.tar.gz;name=3Dtarball', 'Paul Eggleton <paul.=
eggleton@linux.intel.com>', 'None']
inserted (blktool,4-6.1,N/A,GPLv2+,base,r1,None,http://packages.debian.org/=
unstable/admin/blktool,None,ErrAccess,pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0,bl=
ktool is used for querying and/or changing settings of a block device. It i=
s like hdparm but a more general tool, as it works on SCSI, IDE and SATA de=
vices.,N/A,ftp://ftp.debian.org/debian/pool/main/b/blktool/blktool_4.orig.t=
ar.gz;name=3Dtarball,Paul Eggleton <paul.eggleton@linux.intel.com>)
['kernelshark', '1.2+gitAUTOINC+7055ffd37b', '2.4+gitAUTOINC+293f62596a', '=
GPLv2', 'base', '', 'r3', 'pkgconfig-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ libxml2', 'None', 'No=
ne', 'Graphical trace viewer for Ftrace.', 'UPDATE', 'N/A', 'git://git.kern=
el.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git', 'Darren Hart <dvhar=
t@linux.intel.com>', '0.2 is the latest version.']
inserted (kernelshark,1.2+gitAUTOINC+7055ffd37b,2.4+gitAUTOINC+293f62596a,G=
PLv2,base,r3,None,,None,UPDATE,pkgconfig-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ libxml2,Graphical=
 trace viewer for Ftrace.,N/A,git://git.kernel.org/pub/scm/linux/kernel/git=
/rostedt/trace-cmd.git,Darren Hart <dvhart@linux.intel.com>)
['liberror-perl', '0.17022', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', '', =
'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc   perl perl perl-native', 'None', 'None', 'The Error package pro=
vides two interfaces. Firstly Error provides a procedural interface to exce=
ption handling. Secondly Error is a base class for errors/exceptions that c=
an either be thrown, for subsequent catch, or can simply be recorded.', 'Er=
rAccess', 'N/A', 'http://cpan.metacpan.org/authors/id/S/SH/SHLOMIF/Error-0.=
17022.tar.gz', 'None', 'None']
inserted (liberror-perl,0.17022,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,None,,N=
one,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc   perl perl perl-native,The Error package provides two in=
terfaces. Firstly Error provides a procedural interface to exception handli=
ng. Secondly Error is a base class for errors/exceptions that can either be=
 thrown, for subsequent catch, or can simply be recorded.,N/A,http://cpan.m=
etacpan.org/authors/id/S/SH/SHLOMIF/Error-0.17022.tar.gz,None)
['dri3proto', '1.0', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/enter_=
bug.cgi?product=3Dxorg', 'None', 'The DRI3 extension provides mechanisms to=
 translate between direct rendered buffers and X pixmaps. When combined wit=
h the Present extension, a complete direct rendering solution for OpenGL is=
 provided.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/indi=
vidual/proto/dri3proto-1.0.tar.bz2', 'None', 'None']
inserted (dri3proto,1.0,N/A,MIT,x11/libs,r0,None,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  util-macros,The DRI3 extension provides mechanisms to translate b=
etween direct rendered buffers and X pixmaps. When combined with the Presen=
t extension, a complete direct rendering solution for OpenGL is provided.,N=
/A,http://xorg.freedesktop.org/releases/individual/proto/dri3proto-1.0.tar.=
bz2,None)
['matchbox-theme-sato', '0.1', 'N/A', 'CC-BY-SA-3.0', 'x11/wm', 'http://www=
=2Ematchbox-project.org/', 'r1', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  matchbox-wm', '=
http://bugzilla.yoctoproject.org/', 'None', 'Matchbox window manager Sato t=
hemes.', 'ErrAccess', 'N/A', 'http://pokylinux.org/releases/sato/matchbox-t=
heme-sato-0.1.tar.gz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (matchbox-theme-sato,0.1,N/A,CC-BY-SA-3.0,x11/wm,r1,None,http://ww=
w.matchbox-project.org/,http://bugzilla.yoctoproject.org/,ErrAccess,pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  matchbox-wm,Matchbox window manager Sato themes.,N/A,htt=
p://pokylinux.org/releases/sato/matchbox-theme-sato-0.1.tar.gz,Ross Burton =
<ross.burton@intel.com>)
['gstreamer1.0-plugins-base', '1.4.1', 'N/A', 'GPLv2+ & LGPLv2+', 'multimed=
ia', 'http://gstreamer.freedesktop.org/', 'r0', 'pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native virtu=
al/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  gstreamer1.0 virtual/libx11 libxv freetype l=
iboil util-linux alsa-lib tremor libogg orc libtheora libvorbis virtual/lib=
x11 libsm libxrender', 'https://bugzilla.gnome.org/enter_bug.cgi?product=3D=
Gstreamer', 'None', 'Plugins for the GStreamer multimedia framework 1.x.', =
'ErrAccess', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-plugins-base/=
gst-plugins-base-1.4.1.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>'=
, 'None']
inserted (gstreamer1.0-plugins-base,1.4.1,N/A,GPLv2+ & LGPLv2+,multimedia,r=
0,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/enter_b=
ug.cgi?product=3DGstreamer,ErrAccess,pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native virtual/gettext g=
ettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  gstreamer1.0 virtual/libx11 libxv freetype liboil util-l=
inux alsa-lib tremor libogg orc libtheora libvorbis virtual/libx11 libsm li=
bxrender,Plugins for the GStreamer multimedia framework 1.x.,N/A,http://gst=
reamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.4.1.tar.xz,C=
ristian Iorga <cristian.iorga@intel.com>)
['docbook-sgml-dtd-3.1-native', '3.1', 'N/A', 'OASIS', 'base', 'http://www.=
docbook.org/sgml/', 'r3.0', ' sgml-common-native', 'None', 'None', 'Documen=
t type definitions for verification of SGML data files against the DocBook =
rule set', 'ErrAccess', 'N/A', 'http://www.docbook.org/sgml/3.1/docbk31.zip=
', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'PRS Reports Incorrectl=
y']
inserted (docbook-sgml-dtd-3.1-native,3.1,N/A,OASIS,base,r3.0,None,http://w=
ww.docbook.org/sgml/,None,ErrAccess, sgml-common-native,Document type defin=
itions for verification of SGML data files against the DocBook rule set,N/A=
,http://www.docbook.org/sgml/3.1/docbk31.zip,Paul Eggleton <paul.eggleton@l=
inux.intel.com>)
['fontconfig', '2.11.1', 'N/A', 'MIT-style & MIT & PD', 'libs', 'http://www=
=2Efontconfig.org', 'r0', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  expat freetype zlib', =
'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dfontconfig', 'None', =
"Fontconfig is a font configuration and customization library, which does n=
ot depend on the X Window System. It is designed to locate fonts within the=
 system and select them according to requirements specified by applications=
=2E Fontconfig is not a rasterization library, nor does it impose a particu=
lar rasterization library on the application. The X-specific library 'Xft' =
uses fontconfig along with freetype to specify and rasterize fonts.", 'ErrA=
ccess', 'N/A', 'http://fontconfig.org/release/fontconfig-2.11.1.tar.gz', 'R=
oss Burton <ross.burton@intel.com>', 'None']
inserted (fontconfig,2.11.1,N/A,MIT-style & MIT & PD,libs,r0,None,http://ww=
w.fontconfig.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dfontc=
onfig,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  expat freetype zlib,Fontconfig is=
 a font configuration and customization library, which does not depend on t=
he X Window System. It is designed to locate fonts within the system and se=
lect them according to requirements specified by applications. Fontconfig i=
s not a rasterization library, nor does it impose a particular rasterizatio=
n library on the application. The X-specific library 'Xft' uses fontconfig =
along with freetype to specify and rasterize fonts.,N/A,http://fontconfig.o=
rg/release/fontconfig-2.11.1.tar.gz,Ross Burton <ross.burton@intel.com>)
['weston-init', '1.0', '1.0', 'MIT', 'base', '', 'r0', '  update-rc.d-nativ=
e initscripts', 'None', 'None', 'Startup script for the Weston Wayland comp=
ositor.', 'MATCH', 'N/A', 'file://init', 'None', 'None']
inserted (weston-init,1.0,1.0,MIT,base,r0,None,,None,MATCH,  update-rc.d-na=
tive initscripts,Startup script for the Weston Wayland compositor.,N/A,file=
://init,None)
['mini-x-session', '0.1', '0.1', 'GPLv2', 'x11', 'http://www.yoctoproject.o=
rg', 'r4', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc   virtual/update-alternatives', 'http://bugzilla.pokylinux.=
org', 'None', 'Very simple session manager for X.', 'MATCH', 'N/A', 'file:/=
/mini-x-session', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (mini-x-session,0.1,0.1,GPLv2,x11,r4,None,http://www.yoctoproject.=
org,http://bugzilla.pokylinux.org,MATCH, virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc   virtual/update-alternatives,V=
ery simple session manager for X.,N/A,file://mini-x-session,Saul Wold <sgw@=
linux.intel.com>)
['python-pygtk', '2.24.0', 'N/A', 'LGPLv2.1', 'devel/python', '', 'r1', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  gtk+ libglade python-pycairo python-pygobject pytho=
n-native python  python-native ', 'None', 'None', 'Python bindings for the =
GTK+ UI toolkit.', 'ErrAccess', 'N/A', 'ftp://ftp.gnome.org/pub/gnome/sourc=
es/pygtk/2.24/pygtk-2.24.0.tar.bz2', 'Richard Purdie <richard.purdie@linuxf=
oundation.org>', 'None']
inserted (python-pygtk,2.24.0,N/A,LGPLv2.1,devel/python,r1,None,,None,ErrAc=
cess,pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  gtk+ libglade python-pycairo python-pygobjec=
t python-native python  python-native ,Python bindings for the GTK+ UI tool=
kit.,N/A,ftp://ftp.gnome.org/pub/gnome/sources/pygtk/2.24/pygtk-2.24.0.tar.=
bz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['iptables', '1.4.21', 'N/A', 'GPLv2+', 'base', 'http://www.netfilter.org/'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ', 'http://bugzilla.netfilter.org/', 'No=
ne', 'iptables is the userspace command line program used to configure and =
control network packet filtering code in Linux.', 'ErrAccess', 'N/A', 'http=
://netfilter.org/projects/iptables/files/iptables-1.4.21.tar.bz2', 'Cristia=
n Iorga <cristian.iorga@intel.com>', 'None']
inserted (iptables,1.4.21,N/A,GPLv2+,base,r0,None,http://www.netfilter.org/=
,http://bugzilla.netfilter.org/,ErrAccess,pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,iptabl=
es is the userspace command line program used to configure and control netw=
ork packet filtering code in Linux.,N/A,http://netfilter.org/projects/iptab=
les/files/iptables-1.4.21.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['recordproto', '1.14.2', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org=
', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the X Record extension.  This extension is used to record and =
play back event sequences.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.o=
rg/releases/individual/proto/recordproto-1.14.2.tar.bz2', 'Ross Burton <ros=
s.burton@intel.com>', 'None']
inserted (recordproto,1.14.2,N/A,MIT-style,x11/libs,r1,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  util-macros,This package provides the wire protocol for t=
he X Record extension.  This extension is used to record and play back even=
t sequences.,N/A,http://xorg.freedesktop.org/releases/individual/proto/reco=
rdproto-1.14.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['freetype', '2.5.3', 'N/A', 'FreeType | GPLv2+', 'libs', 'http://www.freet=
ype.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  ', 'https://savannah.nongnu.org=
/bugs/?group=3Dfreetype', 'None', 'FreeType is a software font engine that =
is designed to be small, efficient, highly customizable, and portable while=
 capable of producing high-quality output (glyph images). It can be used in=
 graphics libraries, display servers, font conversion tools, text image gen=
eration tools, and many other products as well.', 'ErrAccess', 'N/A', 'http=
://downloads.sourceforge.net/freetype/freetype-2.5.3.tar.bz2', 'Ross Burton=
 <ross.burton@intel.com>', 'None']
inserted (freetype,2.5.3,N/A,FreeType | GPLv2+,libs,r0,None,http://www.free=
type.org/,https://savannah.nongnu.org/bugs/?group=3Dfreetype,ErrAccess,pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ,FreeType is a software font engine that is designed =
to be small, efficient, highly customizable, and portable while capable of =
producing high-quality output (glyph images). It can be used in graphics li=
braries, display servers, font conversion tools, text image generation tool=
s, and many other products as well.,N/A,http://downloads.sourceforge.net/fr=
eetype/freetype-2.5.3.tar.bz2,Ross Burton <ross.burton@intel.com>)
['rpmresolve', '1.0', '1.0', 'GPLv2', 'base', '', 'r2', ' virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  rpm', 'None',=
 'None', 'OpenEmbedded RPM resolver - performs RPM database lookups in batc=
hes to avoid  repeated invocations of rpm on the command line.', 'MATCH', '=
N/A', 'file://rpmresolve.c', 'Paul Eggleton <paul.eggleton@linux.intel.com>=
', 'None']
inserted (rpmresolve,1.0,1.0,GPLv2,base,r2,None,,None,MATCH, virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  rpm,OpenEm=
bedded RPM resolver - performs RPM database lookups in batches to avoid  re=
peated invocations of rpm on the command line.,N/A,file://rpmresolve.c,Paul=
 Eggleton <paul.eggleton@linux.intel.com>)
['createrepo', '0.4.11', 'N/A', 'GPLv2+', 'base', 'http://createrepo.baseur=
l.org/', 'r9', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', 'None', 'Creates metadata indexes for RPM p=
ackage repositories.', 'ErrAccess', 'N/A', 'http://createrepo.baseurl.org/d=
ownload/createrepo-0.4.11.tar.gz', 'Hongxu Jia <hongxu.jia@windriver.com>',=
 'Versions after 0.9.* use YUM, so we hold at 0.4.11']
inserted (createrepo,0.4.11,N/A,GPLv2+,base,r9,None,http://createrepo.baseu=
rl.org/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ,Creates metadata indexes for RPM package repos=
itories.,N/A,http://createrepo.baseurl.org/download/createrepo-0.4.11.tar.g=
z,Hongxu Jia <hongxu.jia@windriver.com>)
['db', '6.0.30', 'N/A', 'AGPL-3.0', 'libs', 'http://www.oracle.com/technolo=
gy/products/berkeley-db/db/index.html', 'r0', 'autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', =
'Berkeley Database v6.', 'ErrAccess', 'N/A', 'http://download.oracle.com/be=
rkeley-db/db-6.0.30.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', '=
API compatibility issue']
inserted (db,6.0.30,N/A,AGPL-3.0,libs,r0,None,http://www.oracle.com/technol=
ogy/products/berkeley-db/db/index.html,None,ErrAccess,autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Berkeley Da=
tabase v6.,N/A,http://download.oracle.com/berkeley-db/db-6.0.30.tar.gz,Cris=
tian Iorga <cristian.iorga@intel.com>)
['cpio', '2.11', 'N/A', 'GPLv3', 'base', 'http://www.gnu.org/software/cpio/=
', 'r5', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  texinfo-native texinfo-na=
tive virtual/update-alternatives', 'None', 'None', 'GNU cpio is a tool for =
creating and extracting archives, or copying files from one place to anothe=
r. It handles a number of cpio formats as well as reading and writing tar f=
iles.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/cpio/cpio-2.11.tar.gz', =
'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (cpio,2.11,N/A,GPLv3,base,r5,None,http://www.gnu.org/software/cpio=
/,None,ErrAccess,autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  texinfo-native tex=
info-native virtual/update-alternatives,GNU cpio is a tool for creating and=
 extracting archives, or copying files from one place to another. It handle=
s a number of cpio formats as well as reading and writing tar files.,N/A,ft=
p://ftp.gnu.org/gnu/cpio/cpio-2.11.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['liboil', '0.3.17', 'N/A', 'BSD', 'base', 'http://liboil.freedesktop.org/'=
, 'r5', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  glib-2.0', 'https://bugs.freedesktop.org=
/', 'None', 'Library of simple functions optimized for various CPUs.', 'Err=
Access', 'N/A', 'http://liboil.freedesktop.org/download/liboil-0.3.17.tar.g=
z', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (liboil,0.3.17,N/A,BSD,base,r5,None,http://liboil.freedesktop.org/=
,https://bugs.freedesktop.org/,ErrAccess,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0=
,Library of simple functions optimized for various CPUs.,N/A,http://liboil.=
freedesktop.org/download/liboil-0.3.17.tar.gz,Saul Wold <sgw@linux.intel.co=
m>)
['kbd', '2.0.2', 'N/A', 'GPLv2+', 'base', '', 'r0', 'pkgconfig-native autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native v=
irtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  libcheck virtual/update-alternatives', '=
None', 'None', 'Keytable files and keyboard utilities.', 'ErrAccess', 'N/A'=
, 'http://kernel.org/pub/linux/utils/kbd/kbd-2.0.2.tar.xz', 'Saul Wold <sgw=
@linux.intel.com>', 'None']
inserted (kbd,2.0.2,N/A,GPLv2+,base,r0,None,,None,ErrAccess,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  libcheck virtual/update-alternati=
ves,Keytable files and keyboard utilities.,N/A,http://kernel.org/pub/linux/=
utils/kbd/kbd-2.0.2.tar.xz,Saul Wold <sgw@linux.intel.com>)
['libnotify', '0.6.0', 'N/A', 'LGPLv2.1', 'libs', '', 'r1', 'pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  dbus gtk+ dbus-glib gnome-common-native', 'None', 'None', 'Libr=
ary for sending desktop notifications to a notification daemon.', 'ErrAcces=
s', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/libnotify/0.6/libnotify-=
0.6.0.tar.bz2;name=3Darchive', 'Ross Burton <ross.burton@intel.com>', 'None=
']
inserted (libnotify,0.6.0,N/A,LGPLv2.1,libs,r1,None,,None,ErrAccess,pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  dbus gtk+ dbus-glib gnome-common-native,Library for send=
ing desktop notifications to a notification daemon.,N/A,http://ftp.gnome.or=
g/pub/GNOME/sources/libnotify/0.6/libnotify-0.6.0.tar.bz2;name=3Darchive,Ro=
ss Burton <ross.burton@intel.com>)
['libomxil', '0.9.3', 'N/A', 'LGPLv2.1+', 'base', 'http://omxil.sourceforge=
=2Enet/', 'r0', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  ', 'None', 'None', 'Bellagio is an opensource imp=
lementation of the Khronos OpenMAX                Integration Layer API to =
access multimedia components.', 'ErrAccess', 'N/A', 'http://downloads.sourc=
eforge.net/omxil/libomxil-bellagio-0.9.3.tar.gz', 'Cristian Iorga <cristian=
=2Eiorga@intel.com>', 'None']
inserted (libomxil,0.9.3,N/A,LGPLv2.1+,base,r0,None,http://omxil.sourceforg=
e.net/,None,ErrAccess,autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ,Bellagio is an opensource implementation of=
 the Khronos OpenMAX                Integration Layer API to access multime=
dia components.,N/A,http://downloads.sourceforge.net/omxil/libomxil-bellagi=
o-0.9.3.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['alsa-state', '0.2.0', '0.2.0', 'MIT', 'base', '', 'r5', ' virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   update-rc.=
d-native initscripts', 'None', 'None', 'Alsa Scenario Files - an init scrip=
t and state files to restore sound state at system boot and save it at syst=
em shut down.', 'MATCH', 'N/A', '  file://asound.conf   file://asound.state=
   file://alsa-state-init ', 'Cristian Iorga <cristian.iorga@intel.com>', '=
None']
inserted (alsa-state,0.2.0,0.2.0,MIT,base,r5,None,,None,MATCH, virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   update-=
rc.d-native initscripts,Alsa Scenario Files - an init script and state file=
s to restore sound state at system boot and save it at system shut down.,N/=
A,  file://asound.conf   file://asound.state   file://alsa-state-init ,Cris=
tian Iorga <cristian.iorga@intel.com>)
['util-linux', '2.24.2', 'N/A', 'GPLv2+ & LGPLv2.1+ & BSD', 'base', '', 'r1=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib ncurses v=
irtual/update-alternatives', 'None', 'None', 'Util-linux includes a suite o=
f basic system administration utilities commonly found on most Linux system=
s.  Some of the more important utilities include disk partitioning, kernel =
message management, filesystem creation, and system login.', 'ErrAccess', '=
N/A', 'http://kernel.org/pub/linux/utils/util-linux/v2.24/util-linux-2.24.2=
=2Etar.xz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (util-linux,2.24.2,N/A,GPLv2+ & LGPLv2.1+ & BSD,base,r1,None,,None=
,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib nc=
urses virtual/update-alternatives,Util-linux includes a suite of basic syst=
em administration utilities commonly found on most Linux systems.  Some of =
the more important utilities include disk partitioning, kernel message mana=
gement, filesystem creation, and system login.,N/A,http://kernel.org/pub/li=
nux/utils/util-linux/v2.24/util-linux-2.24.2.tar.xz,Chen Qi <Qi.Chen@windri=
ver.com>)
['libdaemon', '0.14', 'N/A', 'LGPLv2.1+', 'libs', 'http://0pointer.de/lenna=
rt/projects/libdaemon/', 'r0', 'pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None'=
, 'Lightweight C library which eases the writing of UNIX daemons.', 'ErrAcc=
ess', 'N/A', 'http://0pointer.de/lennart/projects/libdaemon/libdaemon-0.14.=
tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libdaemon,0.14,N/A,LGPLv2.1+,libs,r0,None,http://0pointer.de/lenn=
art/projects/libdaemon/,None,ErrAccess,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Lightweig=
ht C library which eases the writing of UNIX daemons.,N/A,http://0pointer.d=
e/lennart/projects/libdaemon/libdaemon-0.14.tar.gz,Saul Wold <sgw@linux.int=
el.com>)
['gnome-icon-theme', '2.31.0', 'N/A', 'LGPLv3+ | CC-BY-SA-3.0', 'x11/gnome'=
, 'http://www.gnome.org/', 'r5', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  icon-naming-uti=
ls-native glib-2.0 intltool-native libxml-simple-perl-native perl-native hi=
color-icon-theme gtk-update-icon-cache-native', 'https://bugzilla.gnome.org=
/', 'None', 'GNOME 2 default icon themes.', 'ErrAccess', '3.7.4', 'http://f=
tp.gnome.org/pub/GNOME/sources/gnome-icon-theme/2.31/gnome-icon-theme-2.31.=
0.tar.bz2', 'Alejandro Hernandez <alejandro.hernandez@linux.intel.com>', 'w=
aiting for the sato gtk3 port']
inserted (gnome-icon-theme,2.31.0,N/A,LGPLv3+ | CC-BY-SA-3.0,x11/gnome,r5,N=
one,http://www.gnome.org/,https://bugzilla.gnome.org/,ErrAccess,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  icon-naming-utils-native glib-2.0 intltool-native libxml-sim=
ple-perl-native perl-native hicolor-icon-theme gtk-update-icon-cache-native=
,GNOME 2 default icon themes.,3.7.4,http://ftp.gnome.org/pub/GNOME/sources/=
gnome-icon-theme/2.31/gnome-icon-theme-2.31.0.tar.bz2,Alejandro Hernandez <=
alejandro.hernandez@linux.intel.com>)
['libxcalibrate', '0.0+gitAUTOINC+209d83af61', '0.0+gitAUTOINC+209d83af61',=
 'MIT-style', 'x11/libs', 'http://www.x.org', 'r0', 'pkgconfig-native autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  virtual/libx11 calibrateproto libxext', 'https://bugs.freedesktop.org/e=
nter_bug.cgi?product=3Dxorg', 'None', 'libXCalibrate is a library for perfo=
rming touchscreen calibration with the kdrive tslib touchscreen driver.', '=
MATCH', 'N/A', 'git://anongit.freedesktop.org/git/xorg/lib/libXCalibrate', =
'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxcalibrate,0.0+gitAUTOINC+209d83af61,0.0+gitAUTOINC+209d83af61=
,MIT-style,x11/libs,r0,None,http://www.x.org,https://bugs.freedesktop.org/e=
nter_bug.cgi?product=3Dxorg,MATCH,pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 =
calibrateproto libxext,libXCalibrate is a library for performing touchscree=
n calibration with the kdrive tslib touchscreen driver.,N/A,git://anongit.f=
reedesktop.org/git/xorg/lib/libXCalibrate,Ross Burton <ross.burton@intel.co=
m>)
['libxml-namespacesupport-perl', '1.11', 'N/A', 'Artistic-1.0 | GPL-1.0+', =
'libs', '', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc   perl perl-native', 'None', 'None', 'XML::Namespace=
Support offers a simple way to process namespace-based XML names.          =
       It also helps maintain a prefix-to-namespace URI map, and provides a=
 number of                 basic checks. ', 'ErrAccess', 'N/A', 'http://sea=
rch.cpan.org/CPAN/authors/id/P/PE/PERIGRIN/XML-NamespaceSupport-1.11.tar.gz=
', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libxml-namespacesupport-perl,1.11,N/A,Artistic-1.0 | GPL-1.0+,lib=
s,r3,None,,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc   perl perl-native,XML::NamespaceSupport offe=
rs a simple way to process namespace-based XML names.                 It al=
so helps maintain a prefix-to-namespace URI map, and provides a number of  =
               basic checks. ,N/A,http://search.cpan.org/CPAN/authors/id/P/=
PE/PERIGRIN/XML-NamespaceSupport-1.11.tar.gz,Saul Wold <sgw@linux.intel.com=
>)
['adt-installer', '0.2.0', 'N/A', 'MIT', 'base', 'http://www.yoctoproject.o=
rg/tools-resources/projects/application-development-toolkit-adt', 'r11', ' =
', 'None', 'None', 'Creates the Application Development Toolkit (ADT) insta=
ller tarball', 'ErrAccess', '1.1', 'https://opkg.googlecode.com/files/opkg-=
0.2.0.tar.gz', 'Jessica Zhang <jessica.zhang@intel.com>', 'None']
inserted (adt-installer,0.2.0,N/A,MIT,base,r11,None,http://www.yoctoproject=
=2Eorg/tools-resources/projects/application-development-toolkit-adt,None,Er=
rAccess, ,Creates the Application Development Toolkit (ADT) installer tarba=
ll,1.1,https://opkg.googlecode.com/files/opkg-0.2.0.tar.gz,Jessica Zhang <j=
essica.zhang@intel.com>)
['xextproto', '7.3.0', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x.=
org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-=
macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', =
'This package provides the wire protocol for several X extensions.  These p=
rotocol extensions include DOUBLE-BUFFER, DPMS, Extended-Visual-Information=
, LBX, MIT_SHM, MIT_SUNDRY-NONSTANDARD, Multi-Buffering, SECURITY, SHAPE, S=
YNC, TOG-CUP, XC-APPGROUP, XC-MISC, XTEST.  In addition a small set of util=
ity functions are also available.', 'ErrAccess', 'N/A', 'http://xorg.freede=
sktop.org/releases/individual/proto/xextproto-7.3.0.tar.bz2', 'Ross Burton =
<ross.burton@intel.com>', 'None']
inserted (xextproto,7.3.0,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.x.or=
g,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros,This packag=
e provides the wire protocol for several X extensions.  These protocol exte=
nsions include DOUBLE-BUFFER, DPMS, Extended-Visual-Information, LBX, MIT_S=
HM, MIT_SUNDRY-NONSTANDARD, Multi-Buffering, SECURITY, SHAPE, SYNC, TOG-CUP=
, XC-APPGROUP, XC-MISC, XTEST.  In addition a small set of utility function=
s are also available.,N/A,http://xorg.freedesktop.org/releases/individual/p=
roto/xextproto-7.3.0.tar.bz2,Ross Burton <ross.burton@intel.com>)
['liberation-fonts', '1.04', 'N/A', 'GPLv2', 'x11/fonts', 'https://fedoraho=
sted.org/liberation-fonts/', 'r4', ' virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   qemu-native', 'https://bugzilla.r=
edhat.com/', '1', 'The Liberation(tm) Fonts is a font family originally cre=
ated by Ascender(c) which aims at metric compatibility with Arial, Times Ne=
w Roman, Courier New.', 'ErrAccess', 'N/A', 'https://fedorahosted.org/relea=
ses/l/i/liberation-fonts/liberation-fonts-1.04.tar.gz', 'Ross Burton <ross.=
burton@intel.com>', '2.00.0 - fontforge package required ']
inserted (liberation-fonts,1.04,N/A,GPLv2,x11/fonts,r4,1,https://fedorahost=
ed.org/liberation-fonts/,https://bugzilla.redhat.com/,ErrAccess, virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   qemu-=
native,The Liberation(tm) Fonts is a font family originally created by Asce=
nder(c) which aims at metric compatibility with Arial, Times New Roman, Cou=
rier New.,N/A,https://fedorahosted.org/releases/l/i/liberation-fonts/libera=
tion-fonts-1.04.tar.gz,Ross Burton <ross.burton@intel.com>)
['patch', '2.7.1', 'N/A', 'GPLv3', 'utils', '', 'r0', 'autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   attr virtu=
al/update-alternatives', 'None', 'None', 'patch takes a patch file containi=
ng a difference listing produced by the diff program and applies those diff=
erences to one or more original files, producing patched versions.', 'ErrAc=
cess', 'N/A', 'ftp://ftp.gnu.org/gnu/patch/patch-2.7.1.tar.gz', 'Hongxu Jia=
 <hongxu.jia@windriver.com>', 'None']
inserted (patch,2.7.1,N/A,GPLv3,utils,r0,None,,None,ErrAccess,autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   att=
r virtual/update-alternatives,patch takes a patch file containing a differe=
nce listing produced by the diff program and applies those differences to o=
ne or more original files, producing patched versions.,N/A,ftp://ftp.gnu.or=
g/gnu/patch/patch-2.7.1.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['rt-tests', '0.89', '0.89+gitAUTOINC+c5f2a44360', 'GPLv2 & GPLv2+', 'tests=
', 'https://rt.wiki.kernel.org/index.php/Cyclictest', 'r0', ' virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  linux-lib=
c-headers virtual/libc', 'None', 'None', 'Real-Time preemption testcases.',=
 'UPDATE', 'N/A', 'git://git.kernel.org/pub/scm/linux/kernel/git/clrkwllms/=
rt-tests.git', 'Darren Hart <dvhart@linux.intel.com>', 'None']
inserted (rt-tests,0.89,0.89+gitAUTOINC+c5f2a44360,GPLv2 & GPLv2+,tests,r0,=
None,https://rt.wiki.kernel.org/index.php/Cyclictest,None,UPDATE, virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  linux=
-libc-headers virtual/libc,Real-Time preemption testcases.,N/A,git://git.ke=
rnel.org/pub/scm/linux/kernel/git/clrkwllms/rt-tests.git,Darren Hart <dvhar=
t@linux.intel.com>)
['gst-plugin-bluetooth', '4.101', 'N/A', 'GPLv2+ & LGPLv2.1+', 'libs', 'htt=
p://www.bluez.org', 'r1', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  bluez4 gst-plugins-bas=
e alsa-lib', 'None', 'None', 'Linux Bluetooth stack V4 userland components.=
  These include a system configurations, daemons, tools and system librarie=
s.', 'ErrAccess', 'N/A', 'http://kernel.org/pub/linux/bluetooth/bluez-4.101=
=2Etar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (gst-plugin-bluetooth,4.101,N/A,GPLv2+ & LGPLv2.1+,libs,r1,None,ht=
tp://www.bluez.org,None,ErrAccess,pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bluez4 gst-plug=
ins-base alsa-lib,Linux Bluetooth stack V4 userland components.  These incl=
ude a system configurations, daemons, tools and system libraries.,N/A,http:=
//kernel.org/pub/linux/bluetooth/bluez-4.101.tar.gz,Cristian Iorga <cristia=
n.iorga@intel.com>)
['distcc-config', '1.0', '1.0', 'MIT', 'base', '', 'r0', ' virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', '=
None', 'Sets up distcc for compilation on the target device.', 'MATCH', 'N/=
A', 'file://distcc.sh', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'N=
one']
inserted (distcc-config,1.0,1.0,MIT,base,r0,None,,None,MATCH, virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Sets up =
distcc for compilation on the target device.,N/A,file://distcc.sh,Paul Eggl=
eton <paul.eggleton@linux.intel.com>)
['net-tools', '1.60-25', 'N/A', 'GPLv2+', 'base', 'http://net-tools.berlios=
=2Ede/', 'r0', 'virtual/gettext gettext-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update-alterna=
tives', 'http://bugs.debian.org/net-tools', 'None', 'A collection of progra=
ms that form the base set of the NET-3 networking distribution for the Linu=
x operating system', 'ErrAccess', 'N/A', 'ftp://ftp.debian.org/debian/pool/=
main/n/net-tools/net-tools_1.60.orig.tar.gz;name=3Dtarball', 'Cristian Iorg=
a <cristian.iorga@intel.com>', 'None']
inserted (net-tools,1.60-25,N/A,GPLv2+,base,r0,None,http://net-tools.berlio=
s.de/,http://bugs.debian.org/net-tools,ErrAccess,virtual/gettext gettext-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc   virtual/update-alternatives,A collection of programs that form t=
he base set of the NET-3 networking distribution for the Linux operating sy=
stem,N/A,ftp://ftp.debian.org/debian/pool/main/n/net-tools/net-tools_1.60.o=
rig.tar.gz;name=3Dtarball,Cristian Iorga <cristian.iorga@intel.com>)
['lttng-ust', '2.5.0', '2.5.2+gitAUTOINC+85d1d2791f', 'LGPLv2.1+ & MIT & GP=
Lv2', 'base', 'http://lttng.org/ust', 'r0', 'autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  liburcu util-linux', =
'https://bugs.lttng.org/projects/lttng-ust', '2', 'The LTTng UST 2.x packag=
e contains the userspace tracer library to trace userspace codes.', 'UPDATE=
', 'N/A', 'git://git.lttng.org/lttng-ust.git;branch=3Dstable-2.5', 'Richard=
 Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (lttng-ust,2.5.0,2.5.2+gitAUTOINC+85d1d2791f,LGPLv2.1+ & MIT & GPL=
v2,base,r0,2,http://lttng.org/ust,https://bugs.lttng.org/projects/lttng-ust=
,UPDATE,autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  liburcu util-linux,The LTTng UST 2.x package contains the =
userspace tracer library to trace userspace codes.,N/A,git://git.lttng.org/=
lttng-ust.git;branch=3Dstable-2.5,Richard Purdie <richard.purdie@linuxfound=
ation.org>)
['midori', '0.5.8', 'N/A', 'LGPLv2.1', 'base', 'http://midori-browser.org/'=
, 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native cmake-native pkgconfig-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  webkit-gtk libsoup-2.4 open=
ssl python-native python-docutils-native librsvg-native libnotify libxscrns=
aver hicolor-icon-theme gtk-update-icon-cache-native  python-native  vala-n=
ative vala', 'None', 'None', 'A lightweight web browser.', 'ErrAccess', 'N/=
A', 'https://launchpad.net/midori/trunk/0.5.8/+download/midori-0.5.8.tar.bz=
2;subdir=3Dmidori-0.5.8', 'Alejandro Hernandez <alejandro.hernandez@linux.i=
ntel.com>', 'None']
inserted (midori,0.5.8,N/A,LGPLv2.1,base,r0,None,http://midori-browser.org/=
,None,ErrAccess,autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native cmake-native pkgconfig-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  webkit-gtk libsoup-2=
=2E4 openssl python-native python-docutils-native librsvg-native libnotify =
libxscrnsaver hicolor-icon-theme gtk-update-icon-cache-native  python-nativ=
e  vala-native vala,A lightweight web browser.,N/A,https://launchpad.net/mi=
dori/trunk/0.5.8/+download/midori-0.5.8.tar.bz2;subdir=3Dmidori-0.5.8,Aleja=
ndro Hernandez <alejandro.hernandez@linux.intel.com>)
['libvorbis', '1.3.4', 'N/A', 'BSD', 'libs', 'http://www.vorbis.com/', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  libogg', 'https://trac.xiph.org', 'None', 'Ogg=
 Vorbis is a high-quality lossy audio codec that is free of intellectual pr=
operty restrictions. libvorbis is the main vorbis codec library.', 'ErrAcce=
ss', 'N/A', 'http://downloads.xiph.org/releases/vorbis/libvorbis-1.3.4.tar.=
xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libvorbis,1.3.4,N/A,BSD,libs,r0,None,http://www.vorbis.com/,https=
://trac.xiph.org,ErrAccess,pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  libogg,Ogg Vorbis is a=
 high-quality lossy audio codec that is free of intellectual property restr=
ictions. libvorbis is the main vorbis codec library.,N/A,http://downloads.x=
iph.org/releases/vorbis/libvorbis-1.3.4.tar.xz,Cristian Iorga <cristian.ior=
ga@intel.com>)
['enchant', '1.6.0', 'N/A', 'LGPLv2.1+', 'libs', 'http://www.abisource.com/=
projects/enchant/', 'r3', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  aspell glib-2.0', 'htt=
p://bugzilla.abisource.com/enter_bug.cgi?product=3DEnchant', 'None', 'Encha=
nt Spell checker API Library.', 'ErrAccess', 'N/A', 'http://www.abisource.c=
om/downloads/enchant/1.6.0/enchant-1.6.0.tar.gz', 'Cristian Iorga <cristian=
=2Eiorga@intel.com>', 'None']
inserted (enchant,1.6.0,N/A,LGPLv2.1+,libs,r3,None,http://www.abisource.com=
/projects/enchant/,http://bugzilla.abisource.com/enter_bug.cgi?product=3DEn=
chant,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  aspell glib-2.0,Enchant Spell che=
cker API Library.,N/A,http://www.abisource.com/downloads/enchant/1.6.0/ench=
ant-1.6.0.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['rpcbind', '0.2.1', 'N/A', 'BSD', 'console/network', 'http://sourceforge.n=
et/projects/rpcbind/', 'r0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libtirpc quota upda=
te-rc.d-native initscripts base-files base-passwd shadow-native shadow-sysr=
oot shadow tcp-wrappers', 'http://sourceforge.net/tracker/?group_id=3D20123=
7&atid=3D976751', 'None', 'The rpcbind utility is a server that converts RP=
C                program numbers into universal addresses.', 'ErrAccess', '=
N/A', 'http://downloads.sourceforge.net/rpcbind/rpcbind-0.2.1.tar.bz2', 'Ho=
ngxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (rpcbind,0.2.1,N/A,BSD,console/network,r0,None,http://sourceforge.=
net/projects/rpcbind/,http://sourceforge.net/tracker/?group_id=3D201237&ati=
d=3D976751,ErrAccess,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  libtirpc quota update-rc.d-n=
ative initscripts base-files base-passwd shadow-native shadow-sysroot shado=
w tcp-wrappers,The rpcbind utility is a server that converts RPC           =
     program numbers into universal addresses.,N/A,http://downloads.sourcef=
orge.net/rpcbind/rpcbind-0.2.1.tar.bz2,Hongxu Jia <hongxu.jia@windriver.com=
>)
['json-c', '0.11', 'N/A', 'MIT', 'base', 'https://github.com/json-c/json-c/=
wiki', 'r0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  ', 'None', 'None', 'JSON-C implements a reference co=
unting object model that allows you to easily construct JSON objects in C.'=
, 'ErrAccess', 'N/A', 'https://s3.amazonaws.com/json-c_releases/releases/js=
on-c-0.11.tar.gz', 'None', 'None']
inserted (json-c,0.11,N/A,MIT,base,r0,None,https://github.com/json-c/json-c=
/wiki,None,ErrAccess,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  ,JSON-C implements a reference counting objec=
t model that allows you to easily construct JSON objects in C.,N/A,https://=
s3.amazonaws.com/json-c_releases/releases/json-c-0.11.tar.gz,None)
['libnss-mdns', '0.10', 'N/A', 'LGPLv2.1+', 'libs', 'http://0pointer.de/len=
nart/projects/nss-mdns/', 'r7', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  avahi', 'None', 'None', 'Name Ser=
vice Switch module for Multicast DNS (zeroconf) name resolution.', 'ErrAcce=
ss', 'N/A', 'http://0pointer.de/lennart/projects/nss-mdns/nss-mdns-0.10.tar=
=2Egz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libnss-mdns,0.10,N/A,LGPLv2.1+,libs,r7,None,http://0pointer.de/le=
nnart/projects/nss-mdns/,None,ErrAccess,autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  avahi,Name Service Switch =
module for Multicast DNS (zeroconf) name resolution.,N/A,http://0pointer.de=
/lennart/projects/nss-mdns/nss-mdns-0.10.tar.gz,Saul Wold <sgw@linux.intel.=
com>)
['guilt-native', 'git', '0.35+gitrAUTOINC+6fe15cb073', 'GPLv2', 'base', '',=
 'r0', ' ', 'None', 'None', 'quilt-like tool for Git.', 'UPDATE', 'N/A', 'g=
it://repo.or.cz/guilt.git', 'Bruce Ashfield <bruce.ashfield@windriver.com>'=
, 'None']
inserted (guilt-native,git,0.35+gitrAUTOINC+6fe15cb073,GPLv2,base,r0,None,,=
None,UPDATE, ,quilt-like tool for Git.,N/A,git://repo.or.cz/guilt.git,Bruce=
 Ashfield <bruce.ashfield@windriver.com>)
['linux-dummy', '1.0', '1.0', 'GPLv2', 'kernel', '', 'r1', ' virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None',=
 'None', 'Dummy Linux kernel, to be selected as the preferred provider for =
virtual/kernel to satisfy dependencies for situations where you wish to bui=
ld the kernel externally from the build system.', 'MATCH', 'N/A', 'file://C=
OPYING.GPL', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (linux-dummy,1.0,1.0,GPLv2,kernel,r1,None,,None,MATCH, virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Dummy =
Linux kernel, to be selected as the preferred provider for virtual/kernel t=
o satisfy dependencies for situations where you wish to build the kernel ex=
ternally from the build system.,N/A,file://COPYING.GPL,Saul Wold <sgw@linux=
=2Eintel.com>)
['libpciaccess', '0.13.2', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://ww=
w.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.free=
desktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'libpciaccess provides f=
unctionality for X to access the PCI bus and devices in a platform-independ=
ent way.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/indivi=
dual/lib/libpciaccess-0.13.2.tar.bz2', 'Richard Purdie <richard.purdie@linu=
xfoundation.org>', 'None']
inserted (libpciaccess,0.13.2,N/A,MIT & MIT-style,x11/libs,r0,None,http://w=
ww.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAcces=
s,pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros,libpciaccess provides functionality=
 for X to access the PCI bus and devices in a platform-independent way.,N/A=
,http://xorg.freedesktop.org/releases/individual/lib/libpciaccess-0.13.2.ta=
r.bz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['sed', '4.2.2', 'N/A', 'GPLv3+', 'console/utils', 'http://www.gnu.org/soft=
ware/sed/', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-native =
virtual/update-alternatives', 'None', 'None', 'Stream EDitor (text filterin=
g utility).', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/sed/sed-4.2.2.tar.=
gz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (sed,4.2.2,N/A,GPLv3+,console/utils,r0,None,http://www.gnu.org/sof=
tware/sed/,None,ErrAccess,autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-=
native virtual/update-alternatives,Stream EDitor (text filtering utility).,=
N/A,ftp://ftp.gnu.org/gnu/sed/sed-4.2.2.tar.gz,Chen Qi <Qi.Chen@windriver.c=
om>)
['initramfs-live-boot', '1.0', '1.0', 'MIT', 'base', '', 'r12', ' virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtu=
al/kernel', 'None', 'None', 'Live image init script.', 'MATCH', 'N/A', 'fil=
e://init-live.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-live-boot,1.0,1.0,MIT,base,r12,None,,None,MATCH, virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  vi=
rtual/kernel,Live image init script.,N/A,file://init-live.sh,Saul Wold <sgw=
@linux.intel.com>)
['setserial', '2.17', 'N/A', 'GPLv2.0', 'console/utils', 'http://setserial.=
sourceforge.net', 'r3', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc   groff-native', 'None', 'None', 'setseria=
l is a program designed to set and/or report the configuration information =
associated with a serial port', 'ErrAccess', 'N/A', 'http://downloads.sourc=
eforge.net/setserial/setserial-2.17.tar.gz', 'Robert Yang <liezhi.yang@wind=
river.com>', 'None']
inserted (setserial,2.17,N/A,GPLv2.0,console/utils,r3,None,http://setserial=
=2Esourceforge.net,None,ErrAccess,autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc   groff-native,setserial is a pro=
gram designed to set and/or report the configuration information associated=
 with a serial port,N/A,http://downloads.sourceforge.net/setserial/setseria=
l-2.17.tar.gz,Robert Yang <liezhi.yang@windriver.com>)
['gst-fluendo-mp3', '0.10.19', 'N/A', 'MIT', 'multimedia', 'http://www.flue=
ndo.com/resources/source-plugins.php', 'r0', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gst=
reamer zlib', 'None', 'None', 'Fluendo closed-format mp3 GStreamer plug-in.=
', 'ErrAccess', 'N/A', 'http://core.fluendo.com/gstreamer/src/gst-fluendo-m=
p3/gst-fluendo-mp3-0.10.19.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.=
com>', 'None']
inserted (gst-fluendo-mp3,0.10.19,N/A,MIT,multimedia,r0,None,http://www.flu=
endo.com/resources/source-plugins.php,None,ErrAccess,pkgconfig-native autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  gstreamer zlib,Fluendo closed-format mp3 GStreamer plug-in.,N/A,http://=
core.fluendo.com/gstreamer/src/gst-fluendo-mp3/gst-fluendo-mp3-0.10.19.tar.=
bz2,Cristian Iorga <cristian.iorga@intel.com>)
['mdadm', '3.3.2', 'N/A', 'GPLv2 & GPLv2+', 'base', 'http://www.kernel.org/=
pub/linux/utils/raid/mdadm/', 'r0', 'autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'Tool for =
managing software RAID under Linux.', 'ErrAccess', 'N/A', 'http://kernel.or=
g/pub/linux/utils/raid/mdadm/mdadm-3.3.2.tar.xz', 'Richard Purdie <richard.=
purdie@linuxfoundation.org>', 'None']
inserted (mdadm,3.3.2,N/A,GPLv2 & GPLv2+,base,r0,None,http://www.kernel.org=
/pub/linux/utils/raid/mdadm/,None,ErrAccess,autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  ,Tool for managing sof=
tware RAID under Linux.,N/A,http://kernel.org/pub/linux/utils/raid/mdadm/md=
adm-3.3.2.tar.xz,Richard Purdie <richard.purdie@linuxfoundation.org>)
['gtk-doc-stub', '1.1+gitAUTOINC+1dea266593', '1.1+gitAUTOINC+1dea266593', =
'GPLv2', 'x11/base', '', 'r0', 'autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', "Stub implement=
ation of gtk-doc, as we don't want to build the API documentation", 'MATCH'=
, 'N/A', 'git://git.gnome.org/gtk-doc-stub', 'Saul Wold <sgw@linux.intel.co=
m>', 'PRS Reports Incorrectly']
inserted (gtk-doc-stub,1.1+gitAUTOINC+1dea266593,1.1+gitAUTOINC+1dea266593,=
GPLv2,x11/base,r0,None,,None,MATCH,autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  ,Stub implementation of gtk-doc=
, as we don't want to build the API documentation,N/A,git://git.gnome.org/g=
tk-doc-stub,Saul Wold <sgw@linux.intel.com>)
['libxau', '1.0.8', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros  x=
proto', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', '=
libxau provides the main interfaces to the X11 authorisation handling, whic=
h controls authorisation for X connections, both client-side and server-sid=
e.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/individual/l=
ib/libXau-1.0.8.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxau,1.0.8,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  util-macros  xproto,libxau provi=
des the main interfaces to the X11 authorisation handling, which controls a=
uthorisation for X connections, both client-side and server-side.,N/A,http:=
//xorg.freedesktop.org/releases/individual/lib/libXau-1.0.8.tar.bz2,Ross Bu=
rton <ross.burton@intel.com>)
['glib-networking', '2.38.0', 'N/A', 'LGPLv2', 'libs', 'http://git.gnome.or=
g/browse/glib-networking/', 'r0', 'pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native virtual/gettext get=
text-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  glib-2.0 intltool-native gnome-common-native gnutls', 'htt=
p://bugzilla.gnome.org', 'None', 'glib-networking contains the implementati=
ons of certain GLib networking features that cannot be implemented directly=
 in GLib itself because of their dependencies.', 'ErrAccess', 'N/A', 'http:=
//ftp.gnome.org/pub/GNOME/sources/glib-networking/2.38/glib-networking-2.38=
=2E0.tar.xz;name=3Darchive', 'Ross Burton <ross.burton@intel.com>', 'Pendin=
g Glib-2.0 Update']
inserted (glib-networking,2.38.0,N/A,LGPLv2,libs,r0,None,http://git.gnome.o=
rg/browse/glib-networking/,http://bugzilla.gnome.org,ErrAccess,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 intltool-native gnome=
-common-native gnutls,glib-networking contains the implementations of certa=
in GLib networking features that cannot be implemented directly in GLib its=
elf because of their dependencies.,N/A,http://ftp.gnome.org/pub/GNOME/sourc=
es/glib-networking/2.38/glib-networking-2.38.0.tar.xz;name=3Darchive,Ross B=
urton <ross.burton@intel.com>)
['kmod', '18+gitAUTOINC+ae58de0fcb', '19+gitAUTOINC+fd56638aed', 'GPL-2.0+ =
& LGPL-2.1+', 'base', 'http://packages.profusion.mobi/kmod/', 'r0', 'pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc   pkgconfig-native zlib gtk-doc-stub-native virtual/upda=
te-alternatives', 'None', 'None', 'kmod is a set of tools to handle common =
tasks with Linux kernel modules like                insert, remove, list, c=
heck properties, resolve dependencies and aliases.', 'UPDATE', '9', 'git://=
git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git', 'Chen Qi <Qi.Chen@windr=
iver.com>', 'None']
inserted (kmod,18+gitAUTOINC+ae58de0fcb,19+gitAUTOINC+fd56638aed,GPL-2.0+ &=
 LGPL-2.1+,base,r0,None,http://packages.profusion.mobi/kmod/,None,UPDATE,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc   pkgconfig-native zlib gtk-doc-stub-native virtual/=
update-alternatives,kmod is a set of tools to handle common tasks with Linu=
x kernel modules like                insert, remove, list, check properties=
, resolve dependencies and aliases.,9,git://git.kernel.org/pub/scm/utils/ke=
rnel/kmod/kmod.git,Chen Qi <Qi.Chen@windriver.com>)
['help2man-native', '1.46.4', 'N/A', 'GPLv3', 'devel', '', 'r0', ' autoconf=
-native automake-native', 'None', 'None', 'Program for creating simple man =
pages.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/help2man/help2man-1.46.=
4.tar.xz', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (help2man-native,1.46.4,N/A,GPLv3,devel,r0,None,,None,ErrAccess, a=
utoconf-native automake-native,Program for creating simple man pages.,N/A,f=
tp://ftp.gnu.org/gnu/help2man/help2man-1.46.4.tar.xz,Hongxu Jia <hongxu.jia=
@windriver.com>)
['mkfontdir', '1.0.7', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8=
=2E0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros-native virtual/libx11', 'http=
s://bugs.freedesktop.org', '1', 'For each directory argument, mkfontdir rea=
ds all of the font files in the directory. The font names and related data =
are written out to the files \\"fonts.dir\\", \\"fonts.scale\\", and \\"fon=
ts.alias\\".  The X server and font server use these files to find the avai=
lable font files.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releas=
es/individual/app/mkfontdir-1.0.7.tar.bz2', 'Saul Wold <sgw@linux.intel.com=
>', 'None']
inserted (mkfontdir,1.0.7,N/A,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https=
://bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-nat=
ive virtual/libx11,For each directory argument, mkfontdir reads all of the =
font files in the directory. The font names and related data are written ou=
t to the files \"fonts.dir\", \"fonts.scale\", and \"fonts.alias\".  The X =
server and font server use these files to find the available font files.,N/=
A,http://xorg.freedesktop.org/releases/individual/app/mkfontdir-1.0.7.tar.b=
z2,Saul Wold <sgw@linux.intel.com>)
['yasm', '1.2.0', 'N/A', 'BSD', 'base', 'http://www.tortall.net/projects/ya=
sm/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'x8=
6 (SSE) assembler supporting NASM and GAS-syntaxes.', 'ErrAccess', 'N/A', '=
http://www.tortall.net/projects/yasm/releases/yasm-1.2.0.tar.gz', 'Paul Egg=
leton <paul.eggleton@linux.intel.com>', 'None']
inserted (yasm,1.2.0,N/A,BSD,base,r0,None,http://www.tortall.net/projects/y=
asm/,None,ErrAccess,autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,x86 (SSE) asse=
mbler supporting NASM and GAS-syntaxes.,N/A,http://www.tortall.net/projects=
/yasm/releases/yasm-1.2.0.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.c=
om>)
['libpng', '1.6.13', 'N/A', 'Libpng', 'libs', 'http://www.libpng.org/', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  zlib', 'None', 'None', 'PNG image format deco=
ding library.', 'ErrAccess', '1.6.6', 'http://downloads.sourceforge.net/pro=
ject/libpng/libpng16/1.6.13/libpng-1.6.13.tar.xz', 'Ross Burton <ross.burto=
n@intel.com>', 'None']
inserted (libpng,1.6.13,N/A,Libpng,libs,r0,None,http://www.libpng.org/,None=
,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  zlib,PNG image format decoding library=
=2E,1.6.6,http://downloads.sourceforge.net/project/libpng/libpng16/1.6.13/l=
ibpng-1.6.13.tar.xz,Ross Burton <ross.burton@intel.com>)
['screen', '4.0.3', 'N/A', 'GPLv2+', 'console/utils', 'http://www.gnu.org/s=
oftware/screen/', 'r4', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  ncurses            texinfo-native', 'http=
s://savannah.gnu.org/bugs/?func=3Dadditem&group=3Dscreen', 'None', 'Screen =
is a full-screen window manager that multiplexes a physical terminal betwee=
n several processes, typically interactive shells.', 'ErrAccess', 'N/A', 'f=
tp://ftp.gnu.org/gnu/screen/screen-4.0.3.tar.gz;name=3Dtarball', 'An\xc3\xa=
dbal Lim\xc3\xb3n <anibal.limon@linux.intel.com>', 'None']
inserted (screen,4.0.3,N/A,GPLv2+,console/utils,r4,None,http://www.gnu.org/=
software/screen/,https://savannah.gnu.org/bugs/?func=3Dadditem&group=3Dscre=
en,ErrAccess,autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ncurses            texinfo-native,Screen is a full-sc=
reen window manager that multiplexes a physical terminal between several pr=
ocesses, typically interactive shells.,N/A,ftp://ftp.gnu.org/gnu/screen/scr=
een-4.0.3.tar.gz;name=3Dtarball,An?bal Lim?n <anibal.limon@linux.intel.com>)
['msmtp', '1.4.32', 'N/A', 'GPLv3', 'console/network', 'http://msmtp.source=
forge.net/', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native virtual/gettext gettext-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  zlib gnutls virtual/update-alternatives', 'None', 'None', 'A sendmail rep=
lacement for use in MTAs like mutt', 'ErrAccess', 'N/A', 'http://sourceforg=
e.net/projects/msmtp/files/msmtp/1.4.32/msmtp-1.4.32.tar.bz2', 'Saul Wold <=
sgw@linux.intel.com>', 'None']
inserted (msmtp,1.4.32,N/A,GPLv3,console/network,r0,None,http://msmtp.sourc=
eforge.net/,None,ErrAccess,pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  zlib gnutls virtual/update-alternatives,A sendmail replacement for=
 use in MTAs like mutt,N/A,http://sourceforge.net/projects/msmtp/files/msmt=
p/1.4.32/msmtp-1.4.32.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['systemtap', '2.6+gitAUTOINC+7682e51d2e', '2.6+gitAUTOINC+e6f437adfe', 'GP=
Lv2', 'base', '', 'r0', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native virtual/gettext gettext-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  elfutils sqlite3 systemtap-native', 'None', 'None', 'Script-directed=
 dynamic tracing and performance analysis tool for Linux.', 'UPDATE', 'N/A'=
, 'git://sourceware.org/git/systemtap.git', 'Saul Wold <sgw@linux.intel.com=
>', 'None']
inserted (systemtap,2.6+gitAUTOINC+7682e51d2e,2.6+gitAUTOINC+e6f437adfe,GPL=
v2,base,r0,None,,None,UPDATE,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  elfutils sqlite3 systemtap-native,Script-directed dynamic tracin=
g and performance analysis tool for Linux.,N/A,git://sourceware.org/git/sys=
temtap.git,Saul Wold <sgw@linux.intel.com>)
['gnupg', '2.0.26', 'N/A', 'GPLv3 & LGPLv3', 'base', 'http://www.gnupg.org/=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  pth liba=
ssuan libksba zlib bzip2 readline libgcrypt texinfo-native', 'None', 'None'=
, 'GNU Privacy Guard - encryption and signing tools (2.x).', 'ErrAccess', '=
N/A', 'ftp://ftp.gnupg.org/gcrypt/gnupg/gnupg-2.0.26.tar.bz2', 'Hongxu Jia =
<hongxu.jia@windriver.com>', 'None']
inserted (gnupg,2.0.26,N/A,GPLv3 & LGPLv3,base,r0,None,http://www.gnupg.org=
/,None,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native virtual/gettext gettext-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  p=
th libassuan libksba zlib bzip2 readline libgcrypt texinfo-native,GNU Priva=
cy Guard - encryption and signing tools (2.x).,N/A,ftp://ftp.gnupg.org/gcry=
pt/gnupg/gnupg-2.0.26.tar.bz2,Hongxu Jia <hongxu.jia@windriver.com>)
['xdg-utils', '1.1.0-rc1', 'N/A', 'MIT', 'base', '', 'r0', 'autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'No=
ne', 'None', 'The xdg-utils package is a set of simple scripts that provide=
 basic desktop integration functions for any Free Desktop, such as Linux. T=
hey are intended to provide a set of defacto standards. The following scrip=
ts are provided at this time: xdg-desktop-icon xdg-desktop-menu xdg-email x=
dg-icon-resource xdg-mime xdg-open xdg-screensaver xdg-terminal ', 'ErrAcce=
ss', 'N/A', 'http://portland.freedesktop.org/download/xdg-utils-1.1.0-rc1.t=
ar.gz', 'Ross Burton <ross.burton@intel.com>', 'only release candidates ava=
ilable ']
inserted (xdg-utils,1.1.0-rc1,N/A,MIT,base,r0,None,,None,ErrAccess,autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 ,The xdg-utils package is a set of simple scripts that provide basic deskt=
op integration functions for any Free Desktop, such as Linux. They are inte=
nded to provide a set of defacto standards. The following scripts are provi=
ded at this time: xdg-desktop-icon xdg-desktop-menu xdg-email xdg-icon-reso=
urce xdg-mime xdg-open xdg-screensaver xdg-terminal ,N/A,http://portland.fr=
eedesktop.org/download/xdg-utils-1.1.0-rc1.tar.gz,Ross Burton <ross.burton@=
intel.com>)
['initramfs-boot', '1.0', '1.0', 'MIT', 'base', '', 'r2', ' ', 'None', 'Non=
e', 'Extremely basic live image init script.', 'MATCH', 'N/A', 'file://init=
-boot.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-boot,1.0,1.0,MIT,base,r2,None,,None,MATCH, ,Extremely b=
asic live image init script.,N/A,file://init-boot.sh,Saul Wold <sgw@linux.i=
ntel.com>)
['hwlatdetect', '0.89', '0.89+gitAUTOINC+c5f2a44360', 'GPLv2', 'tests', 'ht=
tp://git.kernel.org/?p=3Dlinux/kernel/git/clrkwllms/rt-tests.git', 'r0', ' =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  ', 'None', 'None', 'Python utility for controlling the kernel hardware =
latency detection module (hwlat_detector.ko).', 'UPDATE', 'N/A', 'git://git=
=2Ekernel.org/pub/scm/linux/kernel/git/clrkwllms/rt-tests.git', 'Darren Har=
t <dvhart@linux.intel.com>', 'None']
inserted (hwlatdetect,0.89,0.89+gitAUTOINC+c5f2a44360,GPLv2,tests,r0,None,h=
ttp://git.kernel.org/?p=3Dlinux/kernel/git/clrkwllms/rt-tests.git,None,UPDA=
TE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  ,Python utility for controlling the kernel hardware latency detecti=
on module (hwlat_detector.ko).,N/A,git://git.kernel.org/pub/scm/linux/kerne=
l/git/clrkwllms/rt-tests.git,Darren Hart <dvhart@linux.intel.com>)
['gstreamer1.0-plugins-ugly', '1.4.1', 'N/A', 'GPLv2+ & LGPLv2.1+ & LGPLv2+=
', 'multimedia', 'http://gstreamer.freedesktop.org/', 'r0', 'pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugin=
s-base libid3tag liba52 lame libmad mpeg2dec orc', 'https://bugzilla.gnome.=
org/enter_bug.cgi?product=3DGstreamer', 'None', 'Plugins for the GStreamer =
multimedia framework 1.x.', 'ErrAccess', 'N/A', 'http://gstreamer.freedeskt=
op.org/src/gst-plugins-ugly/gst-plugins-ugly-1.4.1.tar.xz', 'Cristian Iorga=
 <cristian.iorga@intel.com>', 'None']
inserted (gstreamer1.0-plugins-ugly,1.4.1,N/A,GPLv2+ & LGPLv2.1+ & LGPLv2+,=
multimedia,r0,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome=
=2Eorg/enter_bug.cgi?product=3DGstreamer,ErrAccess,pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native vir=
tual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugins-base lib=
id3tag liba52 lame libmad mpeg2dec orc,Plugins for the GStreamer multimedia=
 framework 1.x.,N/A,http://gstreamer.freedesktop.org/src/gst-plugins-ugly/g=
st-plugins-ugly-1.4.1.tar.xz,Cristian Iorga <cristian.iorga@intel.com>)
['libatomics-ops', '7.2', 'N/A', 'GPLv2 & MIT', 'optional', 'http://www.hpl=
=2Ehp.com/research/linux/atomic_ops/', 'r1', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', =
'None', 'None', 'A library for atomic integer operations', 'ErrAccess', 'N/=
A', 'http://www.hpl.hp.com/research/linux/atomic_ops/download/libatomic_ops=
-7.2.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libatomics-ops,7.2,N/A,GPLv2 & MIT,optional,r1,None,http://www.hp=
l.hp.com/research/linux/atomic_ops/,None,ErrAccess,pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  ,A library for atomic integer operations,N/A,http://www.hpl.hp.com/resear=
ch/linux/atomic_ops/download/libatomic_ops-7.2.tar.gz,Cristian Iorga <crist=
ian.iorga@intel.com>)
['vte', '0.28.2', 'N/A', 'LGPLv2.1+', 'base', '', 'r6', 'pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc   glib-2.0 gtk+ intltool-native ncurses gobject-introspection-stub g=
nome-common-native hicolor-icon-theme gtk-update-icon-cache-native gconf gc=
onf-native shared-mime-info-native shared-mime-info gtk-doc-stub-native', '=
https://bugzilla.gnome.org/buglist.cgi?product=3Dvte', 'None', 'Virtual ter=
minal emulator GTK+ widget library.', 'ErrAccess', 'N/A', 'http://ftp.gnome=
=2Eorg/pub/GNOME/sources/vte/0.28/vte-0.28.2.tar.bz2;name=3Darchive', 'Ross=
 Burton <ross.burton@intel.com>', 'Pending Glib-2.0 Update']
inserted (vte,0.28.2,N/A,LGPLv2.1+,base,r6,None,,https://bugzilla.gnome.org=
/buglist.cgi?product=3Dvte,ErrAccess,pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   glib-2.0 gt=
k+ intltool-native ncurses gobject-introspection-stub gnome-common-native h=
icolor-icon-theme gtk-update-icon-cache-native gconf gconf-native shared-mi=
me-info-native shared-mime-info gtk-doc-stub-native,Virtual terminal emulat=
or GTK+ widget library.,N/A,http://ftp.gnome.org/pub/GNOME/sources/vte/0.28=
/vte-0.28.2.tar.bz2;name=3Darchive,Ross Burton <ross.burton@intel.com>)
['libgcc-initial', '4.9.1', 'N/A', 'GPL-3.0-with-GCC-exception & GPLv3', 'd=
evel', 'http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automake-=
native libtool-native gnu-config-native   virtual/i586-poky-linux-gcc-initi=
al texinfo-native', 'None', 'None', 'GNU cc and gcc C compilers.', 'ErrAcce=
ss', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2', 'Saul =
Wold <sgw@linux.intel.com>', 'None']
inserted (libgcc-initial,4.9.1,N/A,GPL-3.0-with-GCC-exception & GPLv3,devel=
,r0,None,http://www.gnu.org/software/gcc/,None,ErrAccess,autoconf-native au=
tomake-native libtool-native gnu-config-native   virtual/i586-poky-linux-gc=
c-initial texinfo-native,GNU cc and gcc C compilers.,N/A,ftp://ftp.gnu.org/=
gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['libgcrypt', '1.6.2', 'N/A', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://directo=
ry.fsf.org/project/libgcrypt/', 'r0', 'pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libgpg-err=
or libcap texinfo-native', 'https://bugs.g10code.com/gnupg/index', 'None', =
'General purpose cryptographic library based on the code from GnuPG.', 'Err=
Access', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/libgcrypt/libgcrypt-1.6.2.tar.g=
z', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (libgcrypt,1.6.2,N/A,GPLv2+ & LGPLv2.1+,libs,r0,None,http://direct=
ory.fsf.org/project/libgcrypt/,https://bugs.g10code.com/gnupg/index,ErrAcce=
ss,pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  libgpg-error libcap texinfo-native,General pur=
pose cryptographic library based on the code from GnuPG.,N/A,ftp://ftp.gnup=
g.org/gcrypt/libgcrypt/libgcrypt-1.6.2.tar.gz,Hongxu Jia <hongxu.jia@windri=
ver.com>)
['initramfs-live-install-efi-testfs', '1.0', '1.0', 'MIT', 'base', '', 'r0'=
, ' ', 'None', 'None', 'Live image install script for with a second rootfs/=
kernel option.', 'MATCH', 'N/A', 'file://init-install-efi-testfs.sh', 'None=
', 'None']
inserted (initramfs-live-install-efi-testfs,1.0,1.0,MIT,base,r0,None,,None,=
MATCH, ,Live image install script for with a second rootfs/kernel option.,N=
/A,file://init-install-efi-testfs.sh,None)
['mingetty', '1.08', 'N/A', 'GPLv2', 'console/utils', 'http://sourceforge.n=
et/projects/mingetty/', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc   virtual/update-alternatives', 'None', =
'None', 'Compact getty terminal handler for virtual consoles only.', 'ErrAc=
cess', 'N/A', 'http://cdnetworks-kr-1.dl.sourceforge.net/project/mingetty/m=
ingetty/1.08/mingetty-1.08.tar.gz', 'Kai Kang <kai.kang@windriver.com>', 'N=
one']
inserted (mingetty,1.08,N/A,GPLv2,console/utils,r3,None,http://sourceforge.=
net/projects/mingetty/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc   virtual/update-alternatives,Com=
pact getty terminal handler for virtual consoles only.,N/A,http://cdnetwork=
s-kr-1.dl.sourceforge.net/project/mingetty/mingetty/1.08/mingetty-1.08.tar.=
gz,Kai Kang <kai.kang@windriver.com>)
['cross-localedef-native', '2.20', '28+gitAUTOINC+f80af76648', 'LGPL-2.1', =
'libs', 'http://www.gnu.org/software/libc/libc.html', 'r0', 'autoconf-nativ=
e automake-native libtool-native gnu-config-native  ', 'None', 'None', 'Cro=
ss locale generation tool for glibc.', 'UPDATE', 'N/A', 'git://sourceware.o=
rg/git/glibc.git;branch=3Drelease/2.20/master;name=3Dglibc', 'Saul Wold <sg=
w@linux.intel.com>', 'None']
inserted (cross-localedef-native,2.20,28+gitAUTOINC+f80af76648,LGPL-2.1,lib=
s,r0,None,http://www.gnu.org/software/libc/libc.html,None,UPDATE,autoconf-n=
ative automake-native libtool-native gnu-config-native  ,Cross locale gener=
ation tool for glibc.,N/A,git://sourceware.org/git/glibc.git;branch=3Drelea=
se/2.20/master;name=3Dglibc,Saul Wold <sgw@linux.intel.com>)
['libpcap', '1.6.2', 'N/A', 'BSD', 'libs/network', 'http://www.tcpdump.org/=
', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  flex-native bison-native', 'http://sourceforge.net/track=
er/?group_id=3D53067&atid=3D469577', 'None', 'Libpcap provides a portable f=
ramework for low-level network monitoring.  Libpcap can provide network sta=
tistics collection, security monitoring and network debugging.', 'ErrAccess=
', 'N/A', 'http://www.tcpdump.org/release/libpcap-1.6.2.tar.gz', 'Cristian =
Iorga <cristian.iorga@intel.com>', 'None']
inserted (libpcap,1.6.2,N/A,BSD,libs/network,r0,None,http://www.tcpdump.org=
/,http://sourceforge.net/tracker/?group_id=3D53067&atid=3D469577,ErrAccess,=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  flex-native bison-native,Libpcap provides a portable framework for=
 low-level network monitoring.  Libpcap can provide network statistics coll=
ection, security monitoring and network debugging.,N/A,http://www.tcpdump.o=
rg/release/libpcap-1.6.2.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['libxkbcommon', '0.5.0', 'N/A', 'MIT & MIT-style', 'base', 'http://www.xkb=
common.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  util-macros flex-native bison=
-native libxcb xkeyboard-config', 'None', 'None', 'libxkbcommon is a keymap=
 compiler and support library which processes a reduced subset of keymaps a=
s defined by the XKB specification.', 'ErrAccess', 'N/A', 'http://xkbcommon=
=2Eorg/download/libxkbcommon-0.5.0.tar.xz', 'Saul Wold <sgw@linux.intel.com=
>', 'None']
inserted (libxkbcommon,0.5.0,N/A,MIT & MIT-style,base,r0,None,http://www.xk=
bcommon.org,None,ErrAccess,pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros flex-nativ=
e bison-native libxcb xkeyboard-config,libxkbcommon is a keymap compiler an=
d support library which processes a reduced subset of keymaps as defined by=
 the XKB specification.,N/A,http://xkbcommon.org/download/libxkbcommon-0.5.=
0.tar.xz,Saul Wold <sgw@linux.intel.com>)
['liba52', '0.7.4', 'N/A', 'GPLv2+', 'libs', 'http://liba52.sourceforge.net=
/', 'r4', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ', 'None', 'None', 'ATSC A/52 surround sound stream dec=
oder.', 'ErrAccess', 'N/A', 'http://liba52.sourceforge.net/files/a52dec-0.7=
=2E4.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (liba52,0.7.4,N/A,GPLv2+,libs,r4,None,http://liba52.sourceforge.ne=
t/,None,ErrAccess,autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ,ATSC A/52 surround sound stream decoder.,N/A,ht=
tp://liba52.sourceforge.net/files/a52dec-0.7.4.tar.gz,Cristian Iorga <crist=
ian.iorga@intel.com>)
['python-distribute', '0.6.32', 'N/A', 'PSF', 'devel/python', 'http://packa=
ges.python.org/distribute', 'ml5', ' virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   python python-native python  pyth=
on-native ', 'None', 'None', 'Download, build, install, upgrade, and uninst=
all Python packages.', 'ErrAccess', '0.7.3', 'http://pypi.python.org/packag=
es/source/d/distribute/distribute-0.6.32.tar.gz', 'Richard Purdie <richard.=
purdie@linuxfoundation.org>', "0.7.3 only upgrades 0.6.32, can't install on=
 its own, also obsolete"]
inserted (python-distribute,0.6.32,N/A,PSF,devel/python,ml5,None,http://pac=
kages.python.org/distribute,None,ErrAccess, virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc   python python-native pytho=
n  python-native ,Download, build, install, upgrade, and uninstall Python p=
ackages.,0.7.3,http://pypi.python.org/packages/source/d/distribute/distribu=
te-0.6.32.tar.gz,Richard Purdie <richard.purdie@linuxfoundation.org>)
['valgrind', '3.10.1', 'N/A', 'GPLv2 & GPLv2+ & BSD', 'base', 'http://valgr=
ind.org/', 'r0', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  virtual/libx11', 'http://valgrind.org/support/bu=
g_reports.html', 'None', 'Valgrind memory debugger and instrumentation fram=
ework.', 'ErrAccess', 'N/A', 'http://www.valgrind.org/downloads/valgrind-3.=
10.1.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (valgrind,3.10.1,N/A,GPLv2 & GPLv2+ & BSD,base,r0,None,http://valg=
rind.org/,http://valgrind.org/support/bug_reports.html,ErrAccess,autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  v=
irtual/libx11,Valgrind memory debugger and instrumentation framework.,N/A,h=
ttp://www.valgrind.org/downloads/valgrind-3.10.1.tar.bz2,Saul Wold <sgw@lin=
ux.intel.com>)
['sysstat', '10.2.1', 'N/A', 'GPLv2+', 'console/utils', 'http://sebastien.g=
odard.pagesperso-orange.fr/', 'r0', 'autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native virtual/gettext gettext-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  ', 'None', 'None', 'The sysstat utilities are a collection of performance=
 monitoring tools for Linux.', 'ErrAccess', 'N/A', 'http://pagesperso-orang=
e.fr/sebastien.godard/sysstat-10.2.1.tar.gz', 'Chen Qi <Qi.Chen@windriver.c=
om>', 'None']
inserted (sysstat,10.2.1,N/A,GPLv2+,console/utils,r0,None,http://sebastien.=
godard.pagesperso-orange.fr/,None,ErrAccess,autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  ,The sysstat utilities are a collection of performance monitoring =
tools for Linux.,N/A,http://pagesperso-orange.fr/sebastien.godard/sysstat-1=
0.2.1.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['qt4-native', '4.8.6', 'N/A', 'LGPLv2.1 | GPLv3', 'libs', 'http://qt-proje=
ct.org/', 'r0', ' zlib-native dbus-native', 'None', 'None', 'Qt version 4 t=
ools and support files for the build host.', 'ErrAccess', 'N/A', 'http://do=
wnload.qt-project.org/official_releases/qt/4.8/4.8.6/qt-everywhere-opensour=
ce-src-4.8.6.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'Non=
e']
inserted (qt4-native,4.8.6,N/A,LGPLv2.1 | GPLv3,libs,r0,None,http://qt-proj=
ect.org/,None,ErrAccess, zlib-native dbus-native,Qt version 4 tools and sup=
port files for the build host.,N/A,http://download.qt-project.org/official_=
releases/qt/4.8/4.8.6/qt-everywhere-opensource-src-4.8.6.tar.gz,Paul Egglet=
on <paul.eggleton@linux.intel.com>)
['gstreamer1.0-rtsp-server', '1.4.1', 'N/A', 'LGPLv2', 'multimedia', 'http:=
//cgit.freedesktop.org/gstreamer/gst-rtsp-server/', 'r0', 'pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  gstreamer1.0 libcgroup gstreamer1.0-plugins-base', 'None', 'None'=
, 'A library on top of GStreamer for building an RTSP server.', 'ErrAccess'=
, 'N/A', 'http://gstreamer.freedesktop.org/src/gst-rtsp-server/gst-rtsp-ser=
ver-1.4.1.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (gstreamer1.0-rtsp-server,1.4.1,N/A,LGPLv2,multimedia,r0,None,http=
://cgit.freedesktop.org/gstreamer/gst-rtsp-server/,None,ErrAccess,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  gstreamer1.0 libcgroup gstreamer1.0-plugins-base,A library=
 on top of GStreamer for building an RTSP server.,N/A,http://gstreamer.free=
desktop.org/src/gst-rtsp-server/gst-rtsp-server-1.4.1.tar.xz,Cristian Iorga=
 <cristian.iorga@intel.com>)
['remake', '3.82+dbg-0.9+gitAUTOINC+f05508e521', '3.82+dbg0.9+gitAUTOINC+f9=
0722c611', 'GPLv2', 'devel', 'http://bashdb.sourceforge.net/remake/', 'r1',=
 'autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc   readline virtual/update-alternat=
ives', 'None', 'None', 'remake is a patched and modernized version of GNU m=
ake utility that adds improved error reporting, the ability to trace execut=
ion in a comprehensible way, and a debugger.', 'UPDATE', 'N/A', 'git://gith=
ub.com/rocky/remake.git', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (remake,3.82+dbg-0.9+gitAUTOINC+f05508e521,3.82+dbg0.9+gitAUTOINC+=
f90722c611,GPLv2,devel,r1,None,http://bashdb.sourceforge.net/remake/,None,U=
PDATE,autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc   readline virtual/update-alte=
rnatives,remake is a patched and modernized version of GNU make utility tha=
t adds improved error reporting, the ability to trace execution in a compre=
hensible way, and a debugger.,N/A,git://github.com/rocky/remake.git,Robert =
Yang <liezhi.yang@windriver.com>)
['autogen-native', '5.18.3', 'N/A', 'GPLv3', 'devel', 'http://www.gnu.org/s=
oftware/autogen/', 'r0', 'pkgconfig-native autoconf-native automake-native =
libtool-native gnu-config-native  guile-native libtool-native libxml2-nativ=
e texinfo-dummy-native', 'None', 'None', 'AutoGen is a tool designed to sim=
plify the creation and maintenance of programs that contain large amounts o=
f repetitious text. It is especially valuable in programs that have several=
 blocks of text that must be kept synchronized.', 'ErrAccess', 'N/A', 'ftp:=
//ftp.gnu.org/gnu/autogen/rel5.18.3/autogen-5.18.3.tar.gz', 'Robert Yang <l=
iezhi.yang@windriver.com>', 'None']
inserted (autogen-native,5.18.3,N/A,GPLv3,devel,r0,None,http://www.gnu.org/=
software/autogen/,None,ErrAccess,pkgconfig-native autoconf-native automake-=
native libtool-native gnu-config-native  guile-native libtool-native libxml=
2-native texinfo-dummy-native,AutoGen is a tool designed to simplify the cr=
eation and maintenance of programs that contain large amounts of repetitiou=
s text. It is especially valuable in programs that have several blocks of t=
ext that must be kept synchronized.,N/A,ftp://ftp.gnu.org/gnu/autogen/rel5.=
18.3/autogen-5.18.3.tar.gz,Robert Yang <liezhi.yang@windriver.com>)
['libnewt', '0.52.18', 'N/A', 'LGPLv2', 'libs', 'https://fedorahosted.org/n=
ewt/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  slang popt', 'None', 'None', 'Newt is a programming =
library for color text mode, widget based user interfaces.  Newt can be use=
d to add stacked windows, entry widgets, checkboxes, radio buttons, labels,=
 plain text fields, scrollbars, etc., to text mode user interfaces.  This p=
ackage also contains the shared library needed by programs built with newt,=
 as well as a /usr/bin/dialog replacement called whiptail.  Newt is based o=
n the slang library.', 'ErrAccess', 'N/A', 'https://fedorahosted.org/releas=
es/n/e/newt/newt-0.52.18.tar.gz', 'Hongxu Jia <hongxu.jia@windriver.com>', =
'None']
inserted (libnewt,0.52.18,N/A,LGPLv2,libs,r0,None,https://fedorahosted.org/=
newt/,None,ErrAccess,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  slang popt,Newt is a programming library for =
color text mode, widget based user interfaces.  Newt can be used to add sta=
cked windows, entry widgets, checkboxes, radio buttons, labels, plain text =
fields, scrollbars, etc., to text mode user interfaces.  This package also =
contains the shared library needed by programs built with newt, as well as =
a /usr/bin/dialog replacement called whiptail.  Newt is based on the slang =
library.,N/A,https://fedorahosted.org/releases/n/e/newt/newt-0.52.18.tar.gz=
,Hongxu Jia <hongxu.jia@windriver.com>)
['libical', '1.0.0', 'N/A', 'LGPLv2.1 | MPL-1', 'libs', 'https://github.com=
/libical/libical', 'r0', 'autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ', 'https://github.com/libical/libical/i=
ssues', 'None', 'iCal and scheduling (RFC 2445, 2446, 2447) library.', 'Err=
Access', 'N/A', 'https://github.com/libical/libical/archive/v1.0.0.tar.gz',=
 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libical,1.0.0,N/A,LGPLv2.1 | MPL-1,libs,r0,None,https://github.co=
m/libical/libical,https://github.com/libical/libical/issues,ErrAccess,autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  ,iCal and scheduling (RFC 2445, 2446, 2447) library.,N/A,https://github=
=2Ecom/libical/libical/archive/v1.0.0.tar.gz,Cristian Iorga <cristian.iorga=
@intel.com>)
['at-spi2-atk', '2.12.1', 'N/A', 'LGPLv2', 'base', '', 'r0', 'pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  dbus glib-2.0 atk at-spi2-core', 'None', 'None', 'AT-SPI 2 Too=
lkit Bridge.', 'ErrAccess', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/=
at-spi2-atk/2.12/at-spi2-atk-2.12.1.tar.xz', 'Ross Burton <ross.burton@inte=
l.com>', 'None']
inserted (at-spi2-atk,2.12.1,N/A,LGPLv2,base,r0,None,,None,ErrAccess,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  dbus glib-2.0 atk at-spi2-core,AT-SPI 2 Toolkit Bridge.=
,N/A,http://ftp.gnome.org/pub/GNOME/sources/at-spi2-atk/2.12/at-spi2-atk-2.=
12.1.tar.xz,Ross Burton <ross.burton@intel.com>)
['bison', '2.7.1', 'N/A', 'GPLv3', 'devel', 'http://www.gnu.org/software/bi=
son/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  bison-native flex-nat=
ive texinfo-native', 'None', 'None', 'Bison is a general-purpose parser gen=
erator that converts an annotated context-free grammar into an LALR(1) or G=
LR parser for that grammar.  Bison is upward compatible with Yacc: all prop=
erly-written Yacc grammars ought to work with Bison with no change. Anyone =
familiar with Yacc should be able to use Bison with little trouble.', 'ErrA=
ccess', 'N/A', 'ftp://ftp.gnu.org/gnu/bison/bison-2.7.1.tar.xz', 'Chong Lu =
<Chong.Lu@windriver.com>', 'None']
inserted (bison,2.7.1,N/A,GPLv3,devel,r0,None,http://www.gnu.org/software/b=
ison/,None,ErrAccess,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bison-native f=
lex-native texinfo-native,Bison is a general-purpose parser generator that =
converts an annotated context-free grammar into an LALR(1) or GLR parser fo=
r that grammar.  Bison is upward compatible with Yacc: all properly-written=
 Yacc grammars ought to work with Bison with no change. Anyone familiar wit=
h Yacc should be able to use Bison with little trouble.,N/A,ftp://ftp.gnu.o=
rg/gnu/bison/bison-2.7.1.tar.xz,Chong Lu <Chong.Lu@windriver.com>)
['gcc-cross-canadian-i586', '4.9.1', 'N/A', 'GPL-3.0-with-GCC-exception & G=
PLv3', 'devel', 'http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native =
automake-native libtool-native gnu-config-native gettext-native nativesdk-g=
ettext  virtual/i586-poky-linux-gcc virtual/i586-pokysdk-linux-binutils-cro=
sssdk virtual/nativesdk-i586-pokysdk-linux-libc-for-gcc nativesdk-gettext n=
ativesdk-gmp nativesdk-mpfr nativesdk-libmpc nativesdk-elfutils nativesdk-z=
lib texinfo-native chrpath-replacement-native', 'None', 'None', 'GNU cc and=
 gcc C compilers (cross-canadian for i586 target).', 'ErrAccess', 'N/A', 'f=
tp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2', 'Richard Purdie <ric=
hard.purdie@linuxfoundation.org>', 'None']
inserted (gcc-cross-canadian-i586,4.9.1,N/A,GPL-3.0-with-GCC-exception & GP=
Lv3,devel,r0,None,http://www.gnu.org/software/gcc/,None,ErrAccess,autoconf-=
native automake-native libtool-native gnu-config-native gettext-native nati=
vesdk-gettext  virtual/i586-poky-linux-gcc virtual/i586-pokysdk-linux-binut=
ils-crosssdk virtual/nativesdk-i586-pokysdk-linux-libc-for-gcc nativesdk-ge=
ttext nativesdk-gmp nativesdk-mpfr nativesdk-libmpc nativesdk-elfutils nati=
vesdk-zlib texinfo-native chrpath-replacement-native,GNU cc and gcc C compi=
lers (cross-canadian for i586 target).,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.=
9.1/gcc-4.9.1.tar.bz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['makedevs', '1.0.1', '1.0.1', 'GPLv2', 'base', '', 'r0', ' virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', =
'None', 'Tool for creating device nodes.', 'MATCH', 'N/A', 'file://makedevs=
=2Ec            file://COPYING.patch', 'Chen Qi <Qi.Chen@windriver.com>', '=
None']
inserted (makedevs,1.0.1,1.0.1,GPLv2,base,r0,None,,None,MATCH, virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Tool fo=
r creating device nodes.,N/A,file://makedevs.c            file://COPYING.pa=
tch,Chen Qi <Qi.Chen@windriver.com>)
['ofono', '1.15', 'N/A', 'GPLv2', 'base', 'http://www.ofono.org', 'r0', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  dbus glib-2.0 udev mobile-broadband-provider-info u=
pdate-rc.d-native initscripts bluez4', 'None', 'None', 'oFono is a stack fo=
r mobile telephony devices on Linux. oFono supports speaking to telephony d=
evices through specific drivers, or with generic AT commands.', 'ErrAccess'=
, '1.6', 'http://kernel.org/pub/linux/network/ofono/ofono-1.15.tar.xz', 'Cr=
istian Iorga <cristian.iorga@intel.com>', 'None']
inserted (ofono,1.15,N/A,GPLv2,base,r0,None,http://www.ofono.org,None,ErrAc=
cess,pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  dbus glib-2.0 udev mobile-broadband-provider=
-info update-rc.d-native initscripts bluez4,oFono is a stack for mobile tel=
ephony devices on Linux. oFono supports speaking to telephony devices throu=
gh specific drivers, or with generic AT commands.,1.6,http://kernel.org/pub=
/linux/network/ofono/ofono-1.15.tar.xz,Cristian Iorga <cristian.iorga@intel=
=2Ecom>)
['usbinit', '1.0', '1.0', 'GPLv2', 'base', '', 'r3', '  update-rc.d-native =
initscripts', 'None', 'None', 'Initscript for enabling USB gadget Ethernet.=
', 'MATCH', 'n/a', 'file://usb-gether            file://COPYING.GPL', 'Saul=
 Wold <sgw@linux.intel.com>', 'None']
inserted (usbinit,1.0,1.0,GPLv2,base,r3,None,,None,MATCH,  update-rc.d-nati=
ve initscripts,Initscript for enabling USB gadget Ethernet.,n/a,file://usb-=
gether            file://COPYING.GPL,Saul Wold <sgw@linux.intel.com>)
['qt-demo-init', '0.1', '0.1', 'MIT', 'base', '', 'r3', '  update-rc.d-nati=
ve initscripts', 'None', 'None', 'Init script for qtdemo.', 'MATCH', 'N/A',=
 'file://qtdemo-init', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'No=
ne']
inserted (qt-demo-init,0.1,0.1,MIT,base,r3,None,,None,MATCH,  update-rc.d-n=
ative initscripts,Init script for qtdemo.,N/A,file://qtdemo-init,Paul Eggle=
ton <paul.eggleton@linux.intel.com>)
['xkeyboard-config', '2.12', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://=
freedesktop.org/wiki/Software/XKeyboardConfig', 'r0', 'pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
 virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  intltool-native virtual/gettext util-m=
acros libxslt-native', 'https://bugs.freedesktop.org/enter_bug.cgi?product=
=3Dxkeyboard-config', 'None', 'The non-arch keyboard configuration database=
 for X Window.  The goal is to provide the consistent, well-structured, fre=
quently released open source of X keyboard configuration data for X Window =
System implementations.  The project is targeted to XKB-based systems.', 'E=
rrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/individual/data/xke=
yboard-config/xkeyboard-config-2.12.tar.bz2', 'Ross Burton <ross.burton@int=
el.com>', 'None']
inserted (xkeyboard-config,2.12,N/A,MIT & MIT-style,x11/libs,r0,None,http:/=
/freedesktop.org/wiki/Software/XKeyboardConfig,https://bugs.freedesktop.org=
/enter_bug.cgi?product=3Dxkeyboard-config,ErrAccess,pkgconfig-native autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native vi=
rtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  intltool-native virtual/gettext util-macr=
os libxslt-native,The non-arch keyboard configuration database for X Window=
=2E  The goal is to provide the consistent, well-structured, frequently rel=
eased open source of X keyboard configuration data for X Window System impl=
ementations.  The project is targeted to XKB-based systems.,N/A,http://xorg=
=2Efreedesktop.org/releases/individual/data/xkeyboard-config/xkeyboard-conf=
ig-2.12.tar.bz2,Ross Burton <ross.burton@intel.com>)
['x11vnc', '0.9.13', 'N/A', 'GPLv2+', 'x11/utils', 'http://www.karlrunge.co=
m/x11vnc/', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  openssl virtual/libx11 libxext jpeg zlib libxfi=
xes libxrandr libxdamage libxtst avahi', 'None', 'None', 'Exports your X se=
ssion on-the-fly via VNC.', 'ErrAccess', 'N/A', 'http://downloads.sourcefor=
ge.net/libvncserver/x11vnc/0.9.13/x11vnc-0.9.13.tar.gz', 'Richard Purdie <r=
ichard.purdie@linuxfoundation.org>', 'None']
inserted (x11vnc,0.9.13,N/A,GPLv2+,x11/utils,r0,None,http://www.karlrunge.c=
om/x11vnc/,None,ErrAccess,autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  openssl virtual/libx11 libxext jpeg zlib=
 libxfixes libxrandr libxdamage libxtst avahi,Exports your X session on-the=
-fly via VNC.,N/A,http://downloads.sourceforge.net/libvncserver/x11vnc/0.9.=
13/x11vnc-0.9.13.tar.gz,Richard Purdie <richard.purdie@linuxfoundation.org>)
['gcc-cross-i586', '4.9.1', 'N/A', 'GPL-3.0-with-GCC-exception & GPLv3', 'd=
evel', 'http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automake-=
native libtool-native gnu-config-native   virtual/i586-poky-linux-binutils =
virtual/i586-poky-linux-libc-for-gcc linux-libc-headers mpfr-native gmp-nat=
ive libmpc-native zlib-native texinfo-dummy-native', 'None', 'None', 'GNU c=
c and gcc C compilers.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc=
-4.9.1/gcc-4.9.1.tar.bz2', 'Richard Purdie <richard.purdie@linuxfoundation.=
org>', 'None']
inserted (gcc-cross-i586,4.9.1,N/A,GPL-3.0-with-GCC-exception & GPLv3,devel=
,r0,None,http://www.gnu.org/software/gcc/,None,ErrAccess,autoconf-native au=
tomake-native libtool-native gnu-config-native   virtual/i586-poky-linux-bi=
nutils virtual/i586-poky-linux-libc-for-gcc linux-libc-headers mpfr-native =
gmp-native libmpc-native zlib-native texinfo-dummy-native,GNU cc and gcc C =
compilers.,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2,Richar=
d Purdie <richard.purdie@linuxfoundation.org>)
['nativesdk-qemu-helper', '1.0', '1.0', 'GPLv2', 'base', '', 'r9', 'virtual=
/nativesdk-i586-pokysdk-linux-compilerlibs chrpath-replacement-native virtu=
al/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-libc', 'None', 'None',=
 'Qemu helper scripts.', 'MATCH', 'N/A', 'file:///tmp/poky.packages/scripts=
/runqemu            file:///tmp/poky.packages/scripts/runqemu-internal     =
       file:///tmp/poky.packages/scripts/runqemu-addptable2image           =
 file:///tmp/poky.packages/scripts/runqemu-gen-tapdevs            file:///t=
mp/poky.packages/scripts/runqemu-ifup            file:///tmp/poky.packages/=
scripts/runqemu-ifdown            file:///tmp/poky.packages/scripts/oe-find=
-native-sysroot            file:///tmp/poky.packages/scripts/runqemu-extrac=
t-sdk            file:///tmp/poky.packages/scripts/runqemu-export-rootfs   =
         file://tunctl.c            file://raw2flash.c           ', 'Saul W=
old <sgw@linux.intel.com>', 'None']
inserted (nativesdk-qemu-helper,1.0,1.0,GPLv2,base,r9,None,,None,MATCH,virt=
ual/nativesdk-i586-pokysdk-linux-compilerlibs chrpath-replacement-native vi=
rtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-libc,Qemu helper sc=
ripts.,N/A,file:///tmp/poky.packages/scripts/runqemu            file:///tmp=
/poky.packages/scripts/runqemu-internal            file:///tmp/poky.package=
s/scripts/runqemu-addptable2image            file:///tmp/poky.packages/scri=
pts/runqemu-gen-tapdevs            file:///tmp/poky.packages/scripts/runqem=
u-ifup            file:///tmp/poky.packages/scripts/runqemu-ifdown         =
   file:///tmp/poky.packages/scripts/oe-find-native-sysroot            file=
:///tmp/poky.packages/scripts/runqemu-extract-sdk            file:///tmp/po=
ky.packages/scripts/runqemu-export-rootfs            file://tunctl.c       =
     file://raw2flash.c           ,Saul Wold <sgw@linux.intel.com>)
['qt-mobility-x11', '1.2.0', 'N/A', 'LGPLv2.1', 'x11/libs', 'http://qt-proj=
ect.org/', 'r8', 'qt4-tools-native qt4-x11  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  gstreamer util-linux bluez4=
 pulseaudio', 'None', 'None', 'Mobile device API extensions for Qt/X11 4.x.=
', 'ErrAccess', 'N/A', 'http://pkgs.fedoraproject.org/repo/pkgs/qt-mobility=
/qt-mobility-opensource-src-1.2.0.tar.gz/ea5db5a8d3dd4709c2926dceda646bd8/q=
t-mobility-opensource-src-1.2.0.tar.gz', 'Paul Eggleton <paul.eggleton@linu=
x.intel.com>', 'None']
inserted (qt-mobility-x11,1.2.0,N/A,LGPLv2.1,x11/libs,r8,None,http://qt-pro=
ject.org/,None,ErrAccess,qt4-tools-native qt4-x11  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gstreamer util-linux=
 bluez4 pulseaudio,Mobile device API extensions for Qt/X11 4.x.,N/A,http://=
pkgs.fedoraproject.org/repo/pkgs/qt-mobility/qt-mobility-opensource-src-1.2=
=2E0.tar.gz/ea5db5a8d3dd4709c2926dceda646bd8/qt-mobility-opensource-src-1.2=
=2E0.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['mtdev', '1.1.5', 'N/A', 'MIT', 'libs', 'http://bitmath.org/code/mtdev/', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  ', 'None', 'None', 'mtdev is a library whi=
ch transforms all variants of kernel multitouch events to the slotted type =
B protocol. The events put into mtdev may be from any MT device, specifical=
ly type A without contact tracking, type A with contact tracking, or type B=
 with contact tracking', 'ErrAccess', 'N/A', 'http://bitmath.org/code/mtdev=
/mtdev-1.1.5.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (mtdev,1.1.5,N/A,MIT,libs,r0,None,http://bitmath.org/code/mtdev/,N=
one,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  ,mtdev is a library which transform=
s all variants of kernel multitouch events to the slotted type B protocol. =
The events put into mtdev may be from any MT device, specifically type A wi=
thout contact tracking, type A with contact tracking, or type B with contac=
t tracking,N/A,http://bitmath.org/code/mtdev/mtdev-1.1.5.tar.bz2,Ross Burto=
n <ross.burton@intel.com>)
['texinfo-dummy-native', '1.0', '1.0', 'MIT', 'console/utils', '', 'r0', ' =
', 'None', 'None', 'Fake version of the texinfo utility suite', 'MATCH', 'N=
/A', 'file://template.py file://COPYING', 'None', 'None']
inserted (texinfo-dummy-native,1.0,1.0,MIT,console/utils,r0,None,,None,MATC=
H, ,Fake version of the texinfo utility suite,N/A,file://template.py file:/=
/COPYING,None)
['byacc', '20141006', 'N/A', 'PD', 'devel', '', 'r0', 'autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', =
'None', 'A parser generator utility that reads a grammar specification from=
 a file and generates an LR(1) parser for it.  The parsers consist of a set=
 of LALR(1) parsing tables and a driver routine written in the C programmin=
g language.', 'ErrAccess', 'N/A', 'ftp://invisible-island.net/byacc/byacc-2=
0141006.tgz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (byacc,20141006,N/A,PD,devel,r0,None,,None,ErrAccess,autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,A p=
arser generator utility that reads a grammar specification from a file and =
generates an LR(1) parser for it.  The parsers consist of a set of LALR(1) =
parsing tables and a driver routine written in the C programming language.,=
N/A,ftp://invisible-island.net/byacc/byacc-20141006.tgz,Chong Lu <Chong.Lu@=
windriver.com>)
['wayland', '1.6.0', 'N/A', 'MIT', 'base', 'http://wayland.freedesktop.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  expat libffi wayland-native', 'None', 'N=
one', 'Wayland is a protocol for a compositor to talk to its clients as wel=
l as a C library implementation of that protocol. The compositor can be a s=
tandalone display server running on Linux kernel modesetting and evdev inpu=
t devices, an X application, or a wayland client itself. The clients can be=
 traditional applications, X servers (rootless or fullscreen) or other disp=
lay servers.', 'ErrAccess', 'N/A', 'http://wayland.freedesktop.org/releases=
/wayland-1.6.0.tar.xz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (wayland,1.6.0,N/A,MIT,base,r0,None,http://wayland.freedesktop.org=
,None,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  expat libffi wayland-native,Wayla=
nd is a protocol for a compositor to talk to its clients as well as a C lib=
rary implementation of that protocol. The compositor can be a standalone di=
splay server running on Linux kernel modesetting and evdev input devices, a=
n X application, or a wayland client itself. The clients can be traditional=
 applications, X servers (rootless or fullscreen) or other display servers.=
,N/A,http://wayland.freedesktop.org/releases/wayland-1.6.0.tar.xz,Ross Burt=
on <ross.burton@intel.com>)
['dbus-wait', '0.1+gitAUTOINC+6cc6077a36', '0.1+gitAUTOINC+6cc6077a36', 'GP=
Lv2', 'base', 'http://git.yoctoproject.org/cgit/cgit.cgi/dbus-wait', 'r2', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  dbus', 'None', 'None', 'A simple tool to wait fo=
r a specific signal over DBus.', 'MATCH', 'N/A', 'git://git.yoctoproject.or=
g/dbus-wait', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (dbus-wait,0.1+gitAUTOINC+6cc6077a36,0.1+gitAUTOINC+6cc6077a36,GPL=
v2,base,r2,None,http://git.yoctoproject.org/cgit/cgit.cgi/dbus-wait,None,MA=
TCH,pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  dbus,A simple tool to wait for a specific sig=
nal over DBus.,N/A,git://git.yoctoproject.org/dbus-wait,Chong Lu <Chong.Lu@=
windriver.com>)
['libxxf86misc', '1.0.3', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros libxext xf86miscproto', 'https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The XFree86-Misc =
extension, provides a means to access input device configuration settings s=
pecific to the XFree86/Xorg DDX.', 'ErrAccess', 'N/A', 'http://xorg.freedes=
ktop.org/releases/individual/lib/libXxf86misc-1.0.3.tar.bz2', 'Ross Burton =
<ross.burton@intel.com>', 'None']
inserted (libxxf86misc,1.0.3,N/A,MIT,x11/libs,r0,1,http://www.x.org,https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  util-macros libxext xf86miscproto,The XFree86-Misc extension, p=
rovides a means to access input device configuration settings specific to t=
he XFree86/Xorg DDX.,N/A,http://xorg.freedesktop.org/releases/individual/li=
b/libXxf86misc-1.0.3.tar.bz2,Ross Burton <ross.burton@intel.com>)
['gcc-crosssdk-initial-i586', '4.9.1', 'N/A', 'GPL-3.0-with-GCC-exception &=
 GPLv3', 'devel', 'http://www.gnu.org/software/gcc/', 'r0', '  virtual/i586=
-pokysdk-linux-binutils-crosssdk gettext-native mpfr-native gmp-native libm=
pc-native zlib-native texinfo-native', 'None', 'None', 'GNU cc and gcc C co=
mpilers.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9=
=2E1.tar.bz2', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None=
']
inserted (gcc-crosssdk-initial-i586,4.9.1,N/A,GPL-3.0-with-GCC-exception & =
GPLv3,devel,r0,None,http://www.gnu.org/software/gcc/,None,ErrAccess,  virtu=
al/i586-pokysdk-linux-binutils-crosssdk gettext-native mpfr-native gmp-nati=
ve libmpc-native zlib-native texinfo-native,GNU cc and gcc C compilers.,N/A=
,ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2,Richard Purdie <rich=
ard.purdie@linuxfoundation.org>)
['netbase', '5.3', 'N/A', 'GPLv2', 'base', 'http://packages.debian.org/netb=
ase', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  ', 'None', '1', 'This package provides the necessary infr=
astructure for basic TCP/IP based networking', 'ErrAccess', 'N/A', 'ftp://f=
tp.debian.org/debian/pool/main/n/netbase/netbase_5.3.tar.xz', 'Cristian Ior=
ga <cristian.iorga@intel.com>', 'None']
inserted (netbase,5.3,N/A,GPLv2,base,r0,1,http://packages.debian.org/netbas=
e,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ,This package provides the necessary infrastructure f=
or basic TCP/IP based networking,N/A,ftp://ftp.debian.org/debian/pool/main/=
n/netbase/netbase_5.3.tar.xz,Cristian Iorga <cristian.iorga@intel.com>)
['rpm', '5.4.14', 'N/A', 'LGPLv2.1', 'base', 'http://rpm5.org/', 'r0', 'aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
 virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  libpcre attr acl popt ossp-uuid file b=
yacc-native beecrypt bzip2 db elfutils openssl python zlib', 'None', 'None'=
, 'The RPM Package Manager (RPM) is a powerful command line driven package =
management system capable of installing, uninstalling, verifying, querying,=
 and updating software packages. Each software package consists of an archi=
ve of files along with information about the package like its version, a de=
scription, etc.', 'ErrAccess', '5.4.10', 'http://www.rpm5.org/files/rpm/rpm=
-5.4/rpm-5.4.14-0.20131024.src.rpm;extract=3Drpm-5.4.14.tar.gz', 'Mark Hatl=
e <mark.hatle@windriver.com>', 'None']
inserted (rpm,5.4.14,N/A,LGPLv2.1,base,r0,None,http://rpm5.org/,None,ErrAcc=
ess,autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  libpcre attr acl popt ossp-uuid=
 file byacc-native beecrypt bzip2 db elfutils openssl python zlib,The RPM P=
ackage Manager (RPM) is a powerful command line driven package management s=
ystem capable of installing, uninstalling, verifying, querying, and updatin=
g software packages. Each software package consists of an archive of files =
along with information about the package like its version, a description, e=
tc.,5.4.10,http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.14-0.20131024.src.=
rpm;extract=3Drpm-5.4.14.tar.gz,Mark Hatle <mark.hatle@windriver.com>)
['gcc-source', '4.9.1', 'N/A', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel=
', 'http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automake-nati=
ve libtool-native gnu-config-native    texinfo-native', 'None', 'None', 'GN=
U cc and gcc C compilers.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/=
gcc-4.9.1/gcc-4.9.1.tar.bz2', 'None', 'None']
inserted (gcc-source,4.9.1,N/A,GPL-3.0-with-GCC-exception & GPLv3,devel,r0,=
None,http://www.gnu.org/software/gcc/,None,ErrAccess,autoconf-native automa=
ke-native libtool-native gnu-config-native    texinfo-native,GNU cc and gcc=
 C compilers.,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.9.1/gcc-4.9.1.tar.bz2,Non=
e)
['xf86-input-synaptics', '1.8.0', 'N/A', 'MIT-X', 'x11/drivers', 'http://ww=
w.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randrprot=
o util-macros inputproto kbproto  libxi mtdev libxtst libevdev', 'https://b=
ugs.freedesktop.org', '2', 'synaptics is an Xorg input driver for the touch=
pads from Synaptics Incorporated. Even though these touchpads (by default, =
operating in a compatibility mode emulating a standard mouse) can be handle=
d by the normal evdev or mouse drivers, this driver allows more advanced fe=
atures of the touchpad to become available.', 'ErrAccess', 'N/A', 'http://x=
org.freedesktop.org/releases/individual/driver/xf86-input-synaptics-1.8.0.t=
ar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86-input-synaptics,1.8.0,N/A,MIT-X,x11/drivers,r0,2,http://www.=
x.org,https://bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virt=
ual/xserver xproto randrproto util-macros inputproto kbproto  libxi mtdev l=
ibxtst libevdev,synaptics is an Xorg input driver for the touchpads from Sy=
naptics Incorporated. Even though these touchpads (by default, operating in=
 a compatibility mode emulating a standard mouse) can be handled by the nor=
mal evdev or mouse drivers, this driver allows more advanced features of th=
e touchpad to become available.,N/A,http://xorg.freedesktop.org/releases/in=
dividual/driver/xf86-input-synaptics-1.8.0.tar.bz2,Ross Burton <ross.burton=
@intel.com>)
['cracklib', '2.9.2', 'N/A', 'LGPLv2.1+', 'base', 'http://sourceforge.net/p=
rojects/cracklib', 'r0', 'autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  cracklib-=
native zlib', 'None', 'None', 'Password strength checker library.', 'ErrAcc=
ess', 'N/A', 'http://downloads.sourceforge.net/cracklib/cracklib-2.9.2.tar.=
gz', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (cracklib,2.9.2,N/A,LGPLv2.1+,base,r0,None,http://sourceforge.net/=
projects/cracklib,None,ErrAccess,autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  cr=
acklib-native zlib,Password strength checker library.,N/A,http://downloads.=
sourceforge.net/cracklib/cracklib-2.9.2.tar.gz,Hongxu Jia <hongxu.jia@windr=
iver.com>)
['ncurses', '5.9', 'N/A', 'MIT', 'libs', 'http://www.gnu.org/software/ncurs=
es/ncurses.html', 'r15.1', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  ncurses-native virtual/update-alternat=
ives', 'None', 'None', 'SVr4 and XSI-Curses compatible curses library and t=
erminfo tools including tic, infocmp, captoinfo. Supports color, multiple h=
ighlights, forms-drawing characters, and automatic recognition of keypad an=
d function-key sequences. Extensions include resizable windows and mouse su=
pport on both xterm and Linux console using the gpm library.', 'ErrAccess',=
 'N/A', 'ftp://ftp.gnu.org/gnu/ncurses/ncurses-5.9.tar.gz', 'Hongxu Jia <ho=
ngxu.jia@windriver.com>', 'None']
inserted (ncurses,5.9,N/A,MIT,libs,r15.1,None,http://www.gnu.org/software/n=
curses/ncurses.html,None,ErrAccess,autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  ncurses-native virtual/update-a=
lternatives,SVr4 and XSI-Curses compatible curses library and terminfo tool=
s including tic, infocmp, captoinfo. Supports color, multiple highlights, f=
orms-drawing characters, and automatic recognition of keypad and function-k=
ey sequences. Extensions include resizable windows and mouse support on bot=
h xterm and Linux console using the gpm library.,N/A,ftp://ftp.gnu.org/gnu/=
ncurses/ncurses-5.9.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['libxi', '1.7.4', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros libxext inputproto libxfixes=
', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libxi=
 is an extension to the X11 protocol to support input devices other than th=
e core X keyboard and pointer.  It allows client programs to select input f=
rom these devices independently from each other and independently from the =
core devices.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/i=
ndividual/lib/libXi-1.7.4.tar.bz2', 'Ross Burton <ross.burton@intel.com>', =
'None']
inserted (libxi,1.7.4,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.x.org,ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  util-macros libxext inputproto libxfixes,libxi is an exten=
sion to the X11 protocol to support input devices other than the core X key=
board and pointer.  It allows client programs to select input from these de=
vices independently from each other and independently from the core devices=
=2E,N/A,http://xorg.freedesktop.org/releases/individual/lib/libXi-1.7.4.tar=
=2Ebz2,Ross Burton <ross.burton@intel.com>)
['python-numpy', '1.7.0', 'N/A', 'PSF', 'devel/python', '', 'r1', ' virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   py=
thon-native python  python-native ', 'None', 'None', 'A sophisticated Numer=
ic Processing Package for Python.', 'ErrAccess', 'N/A', 'http://downloads.s=
ourceforge.net/numpy/numpy-1.7.0.tar.gz', 'Khem Raj <raj.khem@gmail.com>', =
'None']
inserted (python-numpy,1.7.0,N/A,PSF,devel/python,r1,None,,None,ErrAccess, =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc   python-native python  python-native ,A sophisticated Numeric Processin=
g Package for Python.,N/A,http://downloads.sourceforge.net/numpy/numpy-1.7.=
0.tar.gz,Khem Raj <raj.khem@gmail.com>)
['xcursor-transparent-theme', '0.1.1', 'N/A', 'GPLv2', 'x11/base', 'http://=
www.matchbox-project.org/', 'r4', 'autoconf-native automake-native libtool-=
native gnu-config-native  ', 'http://bugzilla.yoctoproject.org/', 'None', '=
Transparent X11 cursor theme for touchscreens.', 'ErrAccess', 'N/A', 'http:=
//downloads.yoctoproject.org/releases/matchbox/utils/xcursor-transparent-th=
eme-0.1.1.tar.gz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xcursor-transparent-theme,0.1.1,N/A,GPLv2,x11/base,r4,None,http:/=
/www.matchbox-project.org/,http://bugzilla.yoctoproject.org/,ErrAccess,auto=
conf-native automake-native libtool-native gnu-config-native  ,Transparent =
X11 cursor theme for touchscreens.,N/A,http://downloads.yoctoproject.org/re=
leases/matchbox/utils/xcursor-transparent-theme-0.1.1.tar.gz,Ross Burton <r=
oss.burton@intel.com>)
['nfs-utils', '1.3.1', 'N/A', 'MIT & GPLv2+ & BSD', 'console/network', 'htt=
p://nfs.sourceforge.net/', 'r0', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libcap libnfsid=
map libevent util-linux sqlite3 base-files base-passwd shadow-native shadow=
-sysroot shadow update-rc.d-native initscripts tcp-wrappers', 'None', 'None=
', 'The nfs-utils package provides a daemon for the kernel NFS server and r=
elated tools.', 'ErrAccess', 'N/A', 'http://kernel.org/pub/linux/utils/nfs-=
utils/1.3.1/nfs-utils-1.3.1.tar.xz', 'Alejandro Hernandez <alejandro.hernan=
dez@linux.intel.com>', 'None']
inserted (nfs-utils,1.3.1,N/A,MIT & GPLv2+ & BSD,console/network,r0,None,ht=
tp://nfs.sourceforge.net/,None,ErrAccess,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libcap l=
ibnfsidmap libevent util-linux sqlite3 base-files base-passwd shadow-native=
 shadow-sysroot shadow update-rc.d-native initscripts tcp-wrappers,The nfs-=
utils package provides a daemon for the kernel NFS server and related tools=
=2E,N/A,http://kernel.org/pub/linux/utils/nfs-utils/1.3.1/nfs-utils-1.3.1.t=
ar.xz,Alejandro Hernandez <alejandro.hernandez@linux.intel.com>)
['libmad', '0.15.1b', 'N/A', 'GPLv2+', 'libs', 'http://sourceforge.net/proj=
ects/mad/', 'r3', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  libid3tag', 'http://sourceforg=
e.net/tracker/?group_id=3D12349&atid=3D112349', 'None', 'MPEG Audio Decoder=
 library.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge.net/mad/libma=
d-0.15.1b.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libmad,0.15.1b,N/A,GPLv2+,libs,r3,None,http://sourceforge.net/pro=
jects/mad/,http://sourceforge.net/tracker/?group_id=3D12349&atid=3D112349,E=
rrAccess,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  libid3tag,MPEG Audio Decoder library.,N/=
A,http://downloads.sourceforge.net/mad/libmad-0.15.1b.tar.gz,Saul Wold <sgw=
@linux.intel.com>)
['run-postinsts', '1.0', '1.0', 'MIT', 'devel', '', 'r9', '  update-rc.d-na=
tive initscripts', 'None', 'None', 'Runs postinstall scripts on first boot =
of the target device.', 'MATCH', 'check', 'file://run-postinsts            =
file://run-postinsts.init            file://run-postinsts.service', 'Cristi=
an Iorga <cristian.iorga@intel.com>', 'None']
inserted (run-postinsts,1.0,1.0,MIT,devel,r9,None,,None,MATCH,  update-rc.d=
-native initscripts,Runs postinstall scripts on first boot of the target de=
vice.,check,file://run-postinsts            file://run-postinsts.init      =
      file://run-postinsts.service,Cristian Iorga <cristian.iorga@intel.com=
>)
['libpng12', '1.2.51', 'N/A', 'Libpng', 'libs', 'http://www.libpng.org/', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  zlib', 'None', 'None', 'PNG image format de=
coding library.', 'ErrAccess', '1.2.50', 'http://downloads.sourceforge.net/=
project/libpng/libpng12/1.2.51/libpng-1.2.51.tar.xz', 'Ross Burton <ross.bu=
rton@intel.com>', 'None']
inserted (libpng12,1.2.51,N/A,Libpng,libs,r0,None,http://www.libpng.org/,No=
ne,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  zlib,PNG image format decoding libra=
ry.,1.2.50,http://downloads.sourceforge.net/project/libpng/libpng12/1.2.51/=
libpng-1.2.51.tar.xz,Ross Burton <ross.burton@intel.com>)
['sysprof', '1.2.0+gitAUTOINC+cd44ee6644', '1.2.0+gitAUTOINC+69018972ad', '=
GPLv2', 'base', '', 'r0', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ libglade', 'None'=
, 'None', 'System-wide Performance Profiler for Linux.', 'UPDATE', 'N/A', '=
git://git.gnome.org/sysprof', 'Tom Zanussi <tom.zanussi@intel.com>', 'None']
inserted (sysprof,1.2.0+gitAUTOINC+cd44ee6644,1.2.0+gitAUTOINC+69018972ad,G=
PLv2,base,r0,None,,None,UPDATE,pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ libglade,Syst=
em-wide Performance Profiler for Linux.,N/A,git://git.gnome.org/sysprof,Tom=
 Zanussi <tom.zanussi@intel.com>)
['binutils-crosssdk-i586', '2.24', 'N/A', 'GPLv3', 'devel', 'http://www.gnu=
=2Eorg/software/binutils/', 'r0', '  flex-native bison-native zlib-native g=
nu-config-native autoconf-native texinfo-native', 'http://sourceware.org/bu=
gzilla/', 'None', 'The GNU Binutils are a collection of binary tools. The m=
ain ones are ld (GNU Linker), and as (GNU Assembler). This package also inc=
ludes addition tools such as addr2line (Converts addresses into filenames a=
nd line numbers), ar (utility for creating, modifying and extracting archiv=
es), nm (list symbols in object files), objcopy (copy and translate object =
files), objdump (Display object information), and other tools and related l=
ibraries.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/binutils/binutils-2.=
24.tar.bz2', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (binutils-crosssdk-i586,2.24,N/A,GPLv3,devel,r0,None,http://www.gn=
u.org/software/binutils/,http://sourceware.org/bugzilla/,ErrAccess,  flex-n=
ative bison-native zlib-native gnu-config-native autoconf-native texinfo-na=
tive,The GNU Binutils are a collection of binary tools. The main ones are l=
d (GNU Linker), and as (GNU Assembler). This package also includes addition=
 tools such as addr2line (Converts addresses into filenames and line number=
s), ar (utility for creating, modifying and extracting archives), nm (list =
symbols in object files), objcopy (copy and translate object files), objdum=
p (Display object information), and other tools and related libraries.,N/A,=
ftp://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2,Robert Yang <liezhi.ya=
ng@windriver.com>)
['icon-naming-utils', '0.8.90', 'N/A', 'GPLv2', 'base', '', 'r4', 'autoconf=
-native automake-native libtool-native gnu-config-native  libxml-simple-per=
l-native perl-native', 'None', 'None', 'A Perl script used for maintaining =
backwards compatibility with current desktop icon themes, while migrating t=
o the names specified in the Icon Naming Specification. The Icon Naming Uti=
lities map the icon names used by the GNOME and KDE desktops to the icon na=
mes proposed in the Icon Naming Specification, and generate the icon files =
appropriate to the desktop environment you use. The Icon Naming Specificati=
on provides a standard list of common icon contexts and names that can be u=
sed to make icon themes work in a desktop environment or application that i=
mplements the naming specification. ', 'ErrAccess', 'N/A', 'http://tango.fr=
eedesktop.org/releases/icon-naming-utils-0.8.90.tar.gz', 'None', 'None']
inserted (icon-naming-utils,0.8.90,N/A,GPLv2,base,r4,None,,None,ErrAccess,a=
utoconf-native automake-native libtool-native gnu-config-native  libxml-sim=
ple-perl-native perl-native,A Perl script used for maintaining backwards co=
mpatibility with current desktop icon themes, while migrating to the names =
specified in the Icon Naming Specification. The Icon Naming Utilities map t=
he icon names used by the GNOME and KDE desktops to the icon names proposed=
 in the Icon Naming Specification, and generate the icon files appropriate =
to the desktop environment you use. The Icon Naming Specification provides =
a standard list of common icon contexts and names that can be used to make =
icon themes work in a desktop environment or application that implements th=
e naming specification. ,N/A,http://tango.freedesktop.org/releases/icon-nam=
ing-utils-0.8.90.tar.gz,None)
['libnl', '3.2.25', 'N/A', 'LGPLv2.1', 'libs/network', 'http://www.infradea=
d.org/~tgr/libnl/', 'r0', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native bison-nati=
ve', 'None', '1', 'A library for applications dealing with netlink sockets.=
', 'ErrAccess', 'N/A', 'http://www.infradead.org/~tgr/libnl/files/libnl-3.2=
=2E25.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'libnl-3.2.2 is incompati=
ble with libnl2, so no Upgrade']
inserted (libnl,3.2.25,N/A,LGPLv2.1,libs/network,r0,1,http://www.infradead.=
org/~tgr/libnl/,None,ErrAccess,pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native bison-=
native,A library for applications dealing with netlink sockets.,N/A,http://=
www.infradead.org/~tgr/libnl/files/libnl-3.2.25.tar.gz,Saul Wold <sgw@linux=
=2Eintel.com>)
['zlib', '1.2.8', 'N/A', 'Zlib', 'libs', 'http://zlib.net/', 'r0', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ',=
 'None', 'None', 'Zlib is a general-purpose, patent-free, lossless data com=
pression library which is used by many different programs.', 'ErrAccess', '=
N/A', 'http://www.zlib.net/zlib-1.2.8.tar.xz', 'Chen Qi <Qi.Chen@windriver.=
com>', 'None']
inserted (zlib,1.2.8,N/A,Zlib,libs,r0,None,http://zlib.net/,None,ErrAccess,=
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  ,Zlib is a general-purpose, patent-free, lossless data compression lib=
rary which is used by many different programs.,N/A,http://www.zlib.net/zlib=
-1.2.8.tar.xz,Chen Qi <Qi.Chen@windriver.com>)
['xrestop', '0.4', 'N/A', 'GPLv2+', 'x11/utils', 'http://www.freedesktop.or=
g/wiki/Software/xrestop', 'r3', 'pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxres libxext =
virtual/libx11 ncurses', 'https://bugs.freedesktop.org/', 'None', 'top-like=
 statistics of X11 server resource usage by clients', 'ErrAccess', 'N/A', '=
http://downloads.yoctoproject.org/releases/xrestop/xrestop-0.4.tar.gz', 'Ro=
ss Burton <ross.burton@intel.com>', 'None']
inserted (xrestop,0.4,N/A,GPLv2+,x11/utils,r3,None,http://www.freedesktop.o=
rg/wiki/Software/xrestop,https://bugs.freedesktop.org/,ErrAccess,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  libxres libxext virtual/libx11 ncurses,top-like statistics =
of X11 server resource usage by clients,N/A,http://downloads.yoctoproject.o=
rg/releases/xrestop/xrestop-0.4.tar.gz,Ross Burton <ross.burton@intel.com>)
['xtrans', '1.3.4', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-mac=
ros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Th=
e X Transport Interface is intended to combine all system and transport spe=
cific code into a single place.  This API should be used by all libraries, =
clients and servers of the X Window System. Use of this API should allow th=
e addition of new types of transports and support for new platforms without=
 making any changes to the source except in the X Transport Interface code.=
', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib=
/xtrans-1.3.4.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xtrans,1.3.4,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  util-macros,The X Transpor=
t Interface is intended to combine all system and transport specific code i=
nto a single place.  This API should be used by all libraries, clients and =
servers of the X Window System. Use of this API should allow the addition o=
f new types of transports and support for new platforms without making any =
changes to the source except in the X Transport Interface code.,N/A,http://=
xorg.freedesktop.org/releases/individual/lib/xtrans-1.3.4.tar.bz2,Ross Burt=
on <ross.burton@intel.com>)
['resolvconf', '1.76', 'N/A', 'GPLv2+', 'console/network', 'http://packages=
=2Edebian.org/resolvconf', 'r0', ' ', 'None', 'None', "Resolvconf is a fram=
ework for keeping track of the system's information about currently availab=
le nameservers. It sets itself up as the intermediary between programs that=
 supply nameserver information and programs that need nameserver informatio=
n.", 'ErrAccess', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/r/resolvcon=
f/resolvconf_1.76.tar.xz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (resolvconf,1.76,N/A,GPLv2+,console/network,r0,None,http://package=
s.debian.org/resolvconf,None,ErrAccess, ,Resolvconf is a framework for keep=
ing track of the system's information about currently available nameservers=
=2E It sets itself up as the intermediary between programs that supply name=
server information and programs that need nameserver information.,N/A,ftp:/=
/ftp.debian.org/debian/pool/main/r/resolvconf/resolvconf_1.76.tar.xz,Chen Q=
i <Qi.Chen@windriver.com>)
['xf86-input-evdev', '2.9.0', 'N/A', 'MIT-X', 'x11/drivers', 'http://www.x.=
org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randrproto ut=
il-macros inputproto kbproto  mtdev libevdev', 'https://bugs.freedesktop.or=
g', '2', "evdev is an Xorg input driver for Linux's generic event devices. =
It therefore supports all input devices that the kernel knows about, includ=
ing most mice and keyboards. The evdev driver can serve as both a pointer a=
nd a keyboard input device, and may be used as both the core keyboard and t=
he core pointer. Multiple input devices are supported by multiple instances=
 of this driver, with one Load directive for evdev in the Module section of=
 your xorg.conf for each input device that will use this driver. ", 'ErrAcc=
ess', 'N/A', 'http://xorg.freedesktop.org/releases/individual/driver/xf86-i=
nput-evdev-2.9.0.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86-input-evdev,2.9.0,N/A,MIT-X,x11/drivers,r0,2,http://www.x.or=
g,https://bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/=
xserver xproto randrproto util-macros inputproto kbproto  mtdev libevdev,ev=
dev is an Xorg input driver for Linux's generic event devices. It therefore=
 supports all input devices that the kernel knows about, including most mic=
e and keyboards. The evdev driver can serve as both a pointer and a keyboar=
d input device, and may be used as both the core keyboard and the core poin=
ter. Multiple input devices are supported by multiple instances of this dri=
ver, with one Load directive for evdev in the Module section of your xorg.c=
onf for each input device that will use this driver. ,N/A,http://xorg.freed=
esktop.org/releases/individual/driver/xf86-input-evdev-2.9.0.tar.bz2,Ross B=
urton <ross.burton@intel.com>)
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
rrAccess', '0.6.31', 'http://avahi.org/download/avahi-0.6.31.tar.gz', 'Paul=
 Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (avahi,0.6.31,N/A,GPLv2+ & LGPLv2.1+,network,r11.1,None,http://ava=
hi.org,http://avahi.org/report,ErrAccess,pkgconfig-native autoconf-native a=
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
['procps', '3.3.10', 'N/A', 'GPLv2+ & LGPLv2+', 'base', 'https://gitorious.=
org/procps', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native virtual/gettext gettext-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  ncurses virtual/update-alternatives', 'None', 'None', 'Procps contains a =
set of system utilities that provide system information about processes usi=
ng the /proc filesystem. The package includes the programs ps, top, vmstat,=
 w, kill, and skill.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge.ne=
t/project/procps-ng/Production/procps-ng-3.3.10.tar.xz', 'Saul Wold <sgw@li=
nux.intel.com>', 'None']
inserted (procps,3.3.10,N/A,GPLv2+ & LGPLv2+,base,r0,None,https://gitorious=
=2Eorg/procps,None,ErrAccess,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  ncurses virtual/update-alternatives,Procps contains a set of sys=
tem utilities that provide system information about processes using the /pr=
oc filesystem. The package includes the programs ps, top, vmstat, w, kill, =
and skill.,N/A,http://downloads.sourceforge.net/project/procps-ng/Productio=
n/procps-ng-3.3.10.tar.xz,Saul Wold <sgw@linux.intel.com>)
['matchbox-panel-2', '2.0+gitAUTOINC+26a3a67b41', '2.0+gitAUTOINC+1a7304d6e=
9', 'GPLv2+', 'base', 'http://matchbox-project.org', 'r0', 'pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  gnome-common gtk+ startup-notification dbus dbus-glib    ', 'htt=
p://bugzilla.yoctoproject.org/', 'None', 'Simple GTK+ based panel for handh=
eld devices.', 'UPDATE', 'N/A', 'git://git.yoctoproject.org/matchbox-panel-=
2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (matchbox-panel-2,2.0+gitAUTOINC+26a3a67b41,2.0+gitAUTOINC+1a7304d=
6e9,GPLv2+,base,r0,None,http://matchbox-project.org,http://bugzilla.yoctopr=
oject.org/,UPDATE,pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  gnome-common gtk+ startup-notif=
ication dbus dbus-glib    ,Simple GTK+ based panel for handheld devices.,N/=
A,git://git.yoctoproject.org/matchbox-panel-2,Ross Burton <ross.burton@inte=
l.com>)
['binutils-cross-i586', '2.24', 'N/A', 'GPLv3', 'devel', 'http://www.gnu.or=
g/software/binutils/', 'r0', '  flex-native bison-native zlib-native gnu-co=
nfig-native autoconf-native texinfo-dummy-native', 'http://sourceware.org/b=
ugzilla/', 'None', 'The GNU Binutils are a collection of binary tools. The =
main ones are ld (GNU Linker), and as (GNU Assembler). This package also in=
cludes addition tools such as addr2line (Converts addresses into filenames =
and line numbers), ar (utility for creating, modifying and extracting archi=
ves), nm (list symbols in object files), objcopy (copy and translate object=
 files), objdump (Display object information), and other tools and related =
libraries.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/binutils/binutils-2=
=2E24.tar.bz2', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (binutils-cross-i586,2.24,N/A,GPLv3,devel,r0,None,http://www.gnu.o=
rg/software/binutils/,http://sourceware.org/bugzilla/,ErrAccess,  flex-nati=
ve bison-native zlib-native gnu-config-native autoconf-native texinfo-dummy=
-native,The GNU Binutils are a collection of binary tools. The main ones ar=
e ld (GNU Linker), and as (GNU Assembler). This package also includes addit=
ion tools such as addr2line (Converts addresses into filenames and line num=
bers), ar (utility for creating, modifying and extracting archives), nm (li=
st symbols in object files), objcopy (copy and translate object files), obj=
dump (Display object information), and other tools and related libraries.,N=
/A,ftp://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2,Robert Yang <liezhi=
=2Eyang@windriver.com>)
['libassuan', '2.1.2', 'N/A', 'GPLv3 & LGPLv2.1+', 'base', 'http://www.gnup=
g.org/related_software/libassuan/', 'r0', 'pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libgpg=
-error texinfo-native', 'https://bugs.g10code.com/gnupg/index', 'None', 'IP=
C library used by GnuPG and GPGME.', 'ErrAccess', 'N/A', 'ftp://ftp.gnupg.o=
rg/gcrypt/libassuan/libassuan-2.1.2.tar.bz2', 'Saul Wold <sgw@linux.intel.c=
om>', 'None']
inserted (libassuan,2.1.2,N/A,GPLv3 & LGPLv2.1+,base,r0,None,http://www.gnu=
pg.org/related_software/libassuan/,https://bugs.g10code.com/gnupg/index,Err=
Access,pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  libgpg-error texinfo-native,IPC library us=
ed by GnuPG and GPGME.,N/A,ftp://ftp.gnupg.org/gcrypt/libassuan/libassuan-2=
=2E1.2.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['alsa-tools', '1.0.28', 'N/A', 'GPLv2 & LGPLv2+', 'console/utils', 'http:/=
/www.alsa-project.org', 'r0', 'pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  alsa-lib ncurses g=
tk+ gtk+3', 'https://bugtrack.alsa-project.org/alsa-bug/login_page.php', 'N=
one', 'Advanced tools for certain ALSA sound card drivers.', 'ErrAccess', '=
N/A', 'ftp://ftp.alsa-project.org/pub/tools/alsa-tools-1.0.28.tar.bz2', 'Ka=
i Kang <kai.kang@windriver.com>', 'None']
inserted (alsa-tools,1.0.28,N/A,GPLv2 & LGPLv2+,console/utils,r0,None,http:=
//www.alsa-project.org,https://bugtrack.alsa-project.org/alsa-bug/login_pag=
e.php,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  alsa-lib ncurses gtk+ gtk+3,Advan=
ced tools for certain ALSA sound card drivers.,N/A,ftp://ftp.alsa-project.o=
rg/pub/tools/alsa-tools-1.0.28.tar.bz2,Kai Kang <kai.kang@windriver.com>)
['libxml2', '2.9.1', 'N/A', 'MIT', 'libs', 'http://www.xmlsoft.org/', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  zlib   python-native ', 'http://bugzilla.gnome.=
org/buglist.cgi?product=3Dlibxml2', 'None', 'The XML Parser Library allows =
for manipulation of XML files.  Libxml2 exports Push and Pull type parser i=
nterfaces for both XML and HTML.  It can do DTD validation at parse time, o=
n a parsed document instance or with an arbitrary DTD.  Libxml2 includes co=
mplete XPath, XPointer and Xinclude implementations.  It also has a SAX lik=
e interface, which is designed to be compatible with Expat.', 'ErrAccess', =
'N/A', 'ftp://xmlsoft.org/libxml2/libxml2-2.9.1.tar.gz;name=3Dlibtar', 'Hon=
gxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (libxml2,2.9.1,N/A,MIT,libs,r0,None,http://www.xmlsoft.org/,http:/=
/bugzilla.gnome.org/buglist.cgi?product=3Dlibxml2,ErrAccess,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  zlib   python-native ,The XML Parser Library allows for manipula=
tion of XML files.  Libxml2 exports Push and Pull type parser interfaces fo=
r both XML and HTML.  It can do DTD validation at parse time, on a parsed d=
ocument instance or with an arbitrary DTD.  Libxml2 includes complete XPath=
, XPointer and Xinclude implementations.  It also has a SAX like interface,=
 which is designed to be compatible with Expat.,N/A,ftp://xmlsoft.org/libxm=
l2/libxml2-2.9.1.tar.gz;name=3Dlibtar,Hongxu Jia <hongxu.jia@windriver.com>)
['settings-daemon', '0.0+gitAUTOINC+9a99528b02', '0.0+gitAUTOINC+9a99528b02=
', 'MIT-style', 'x11', 'http://svn.o-hand.com/view/matchbox/trunk/settings-=
daemon/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  gconf glib-2.0 gtk+ gconf gconf-=
native', 'http://bugzilla.yoctoproject.org/', 'None', 'Provides a bridge be=
tween gconf and xsettings.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/xs=
ettings-daemon', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (settings-daemon,0.0+gitAUTOINC+9a99528b02,0.0+gitAUTOINC+9a99528b=
02,MIT-style,x11,r0,None,http://svn.o-hand.com/view/matchbox/trunk/settings=
-daemon/,http://bugzilla.yoctoproject.org/,MATCH,pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
gconf glib-2.0 gtk+ gconf gconf-native,Provides a bridge between gconf and =
xsettings.,N/A,git://git.yoctoproject.org/xsettings-daemon,Ross Burton <ros=
s.burton@intel.com>)
['font-util', '1.3.0', 'N/A', 'BSD & MIT', 'x11/fonts', 'http://www.x.org',=
 'r2.0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  encodings util-macros', 'https://bugs.f=
reedesktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'X.Org font package c=
reation/installation utilities.', 'ErrAccess', 'N/A', 'http://xorg.freedesk=
top.org/releases/individual/font/font-util-1.3.0.tar.bz2', 'Ross Burton <ro=
ss.burton@intel.com>', 'None']
inserted (font-util,1.3.0,N/A,BSD & MIT,x11/fonts,r2.0,None,http://www.x.or=
g,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  encodings util-macros,X.Org font package creation/inst=
allation utilities.,N/A,http://xorg.freedesktop.org/releases/individual/fon=
t/font-util-1.3.0.tar.bz2,Ross Burton <ross.burton@intel.com>)
['libx11-diet', '1.6.2', 'N/A', 'MIT & MIT-style & BSD', 'x11/libs', 'http:=
//www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  util-macros xproto xextproto=
 xtrans libxcb kbproto inputproto xproto-native', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', "This package provides a client =
interface to the X Window System, otherwise known as 'Xlib'.  It provides a=
 complete API for the basic functions of the window system.  Support for XC=
MS and XLOCALE is disabled in this version.", 'ErrAccess', 'N/A', 'http://x=
org.freedesktop.org/releases/individual/lib/libX11-1.6.2.tar.bz2', 'Kai Kan=
g <kai.kang@windriver.com>', 'None']
inserted (libx11-diet,1.6.2,N/A,MIT & MIT-style & BSD,x11/libs,r0,1,http://=
www.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAcce=
ss,pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros xproto xextproto xtrans libxcb kbp=
roto inputproto xproto-native,This package provides a client interface to t=
he X Window System, otherwise known as 'Xlib'.  It provides a complete API =
for the basic functions of the window system.  Support for XCMS and XLOCALE=
 is disabled in this version.,N/A,http://xorg.freedesktop.org/releases/indi=
vidual/lib/libX11-1.6.2.tar.bz2,Kai Kang <kai.kang@windriver.com>)
['oprofileui-server', '0.0+gitAUTOINC+389e1875af', '0.0+gitAUTOINC+389e1875=
af', 'GPLv2', 'x11', 'http://labs.o-hand.com/oprofileui/', 'r0', 'pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  glib-2.0 avahi intltool-native intltool-native update-rc.d=
-native initscripts', 'http://bugzilla.yoctoproject.org/', 'None', 'User in=
terface for the OProfile tool', 'MATCH', 'N/A', 'git://git.yoctoproject.org=
/oprofileui', 'Saul Wold <sgw@linux.intel.com>', 'PRS Reports Incorrectly']
inserted (oprofileui-server,0.0+gitAUTOINC+389e1875af,0.0+gitAUTOINC+389e18=
75af,GPLv2,x11,r0,None,http://labs.o-hand.com/oprofileui/,http://bugzilla.y=
octoproject.org/,MATCH,pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 avahi intltool-na=
tive intltool-native update-rc.d-native initscripts,User interface for the =
OProfile tool,N/A,git://git.yoctoproject.org/oprofileui,Saul Wold <sgw@linu=
x.intel.com>)
['chkconfig', '1.3.58', 'N/A', 'GPLv2', 'base', 'http://fedorahosted.org/re=
leases/c/h/chkconfig', 'r7', 'virtual/gettext gettext-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libnewt p=
opt', 'None', 'None', 'Chkconfig is a basic system utility.  It updates and=
 queries runlevel information for system services.  Chkconfig manipulates t=
he numerous symbolic links in /etc/rc.d, to relieve system administrators o=
f some of the drudgery of manually editing the symbolic links.', 'ErrAccess=
', 'N/A', 'http://fedorahosted.org/releases/c/h/chkconfig/chkconfig-1.3.58.=
tar.bz2', 'Wenzong Fan <wenzong.fan@windriver.com>', 'None']
inserted (chkconfig,1.3.58,N/A,GPLv2,base,r7,None,http://fedorahosted.org/r=
eleases/c/h/chkconfig,None,ErrAccess,virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  li=
bnewt popt,Chkconfig is a basic system utility.  It updates and queries run=
level information for system services.  Chkconfig manipulates the numerous =
symbolic links in /etc/rc.d, to relieve system administrators of some of th=
e drudgery of manually editing the symbolic links.,N/A,http://fedorahosted.=
org/releases/c/h/chkconfig/chkconfig-1.3.58.tar.bz2,Wenzong Fan <wenzong.fa=
n@windriver.com>)
['texinfo', '5.2', 'N/A', 'GPLv3+', 'console/utils', 'http://www.gnu.org/so=
ftware/texinfo/', 'r0', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib ncurs=
es texinfo-replacement-native', 'None', 'None', 'Texinfo is a documentation=
 system that can produce both online information and printed output from a =
single source file. The GNU Project uses the Texinfo file format for most o=
f its documentation.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/texinfo/t=
exinfo-5.2.tar.gz', 'Alejandro Hernandez <alejandro.hernandez@linux.intel.c=
om>', 'Checking script parses directory wrong']
inserted (texinfo,5.2,N/A,GPLv3+,console/utils,r0,None,http://www.gnu.org/s=
oftware/texinfo/,None,ErrAccess,autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zli=
b ncurses texinfo-replacement-native,Texinfo is a documentation system that=
 can produce both online information and printed output from a single sourc=
e file. The GNU Project uses the Texinfo file format for most of its docume=
ntation.,N/A,ftp://ftp.gnu.org/gnu/texinfo/texinfo-5.2.tar.gz,Alejandro Her=
nandez <alejandro.hernandez@linux.intel.com>)
['libbsd', '0.7.0', 'N/A', 'BSD-4-Clause & MIT', 'libs', 'http://libbsd.fre=
edesktop.org/wiki/', 'r0', 'pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'T=
his library provides useful functions commonly found on BSD systems,       =
         and lacking on others like GNU systems, thus making it easier to p=
ort                projects with strong BSD origins, without needing to emb=
ed the same                code over and over again on each project.', 'Err=
Access', 'N/A', 'http://libbsd.freedesktop.org/releases/libbsd-0.7.0.tar.xz=
', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (libbsd,0.7.0,N/A,BSD-4-Clause & MIT,libs,r0,None,http://libbsd.fr=
eedesktop.org/wiki/,None,ErrAccess,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,This library =
provides useful functions commonly found on BSD systems,                and=
 lacking on others like GNU systems, thus making it easier to port         =
       projects with strong BSD origins, without needing to embed the same =
               code over and over again on each project.,N/A,http://libbsd.=
freedesktop.org/releases/libbsd-0.7.0.tar.xz,Chong Lu <Chong.Lu@windriver.c=
om>)
['libpthread-stubs', '0.3', 'N/A', 'MIT', 'x11/libs', 'http://xcb.freedeskt=
op.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  ', 'http://bugs.freedesktop.org/b=
uglist.cgi?product=3DXCB', 'None', 'This library provides weak aliases for =
pthread functions not provided in libc or otherwise available by default.',=
 'ErrAccess', 'N/A', 'http://xcb.freedesktop.org/dist/libpthread-stubs-0.3.=
tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libpthread-stubs,0.3,N/A,MIT,x11/libs,r0,None,http://xcb.freedesk=
top.org,http://bugs.freedesktop.org/buglist.cgi?product=3DXCB,ErrAccess,pkg=
config-native autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  ,This library provides weak aliases for pthread func=
tions not provided in libc or otherwise available by default.,N/A,http://xc=
b.freedesktop.org/dist/libpthread-stubs-0.3.tar.bz2,Saul Wold <sgw@linux.in=
tel.com>)
['pax', '3.4', 'N/A', 'BSD', 'base', 'http://www.openbsd.org/cgi-bin/cvsweb=
/src/bin/pax/', 'r2', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  ', 'http://www.openbsd.org/query-pr.html', =
'None', 'pax (Portable Archive eXchange) is the POSIX standard archive tool=
', 'ErrAccess', 'N/A', 'ftp://ftp.suse.com/pub/people/kukuk/pax/pax-3.4.tar=
=2Ebz2', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (pax,3.4,N/A,BSD,base,r2,None,http://www.openbsd.org/cgi-bin/cvswe=
b/src/bin/pax/,http://www.openbsd.org/query-pr.html,ErrAccess,autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,pax=
 (Portable Archive eXchange) is the POSIX standard archive tool,N/A,ftp://f=
tp.suse.com/pub/people/kukuk/pax/pax-3.4.tar.bz2,Hongxu Jia <hongxu.jia@win=
driver.com>)
['make', '4.0', 'N/A', 'GPLv3 & LGPLv2', 'devel', 'http://www.gnu.org/softw=
are/make/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native virtual/gettext gettext-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
  texinfo-native', 'None', 'None', "Make is a tool which controls the gener=
ation of executables and other non-source files of a program from the progr=
am's source files.  Make gets its knowledge of how to build your program fr=
om a file called the makefile, which lists each of the non-source files and=
 how to compute it from other files.", 'ErrAccess', 'N/A', 'ftp://ftp.gnu.o=
rg/gnu/make/make-4.0.tar.bz2', 'Robert Yang <liezhi.yang@windriver.com>', '=
None']
inserted (make,4.0,N/A,GPLv3 & LGPLv2,devel,r0,None,http://www.gnu.org/soft=
ware/make/,None,ErrAccess,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc   texinfo-native,Make is a tool which controls the generation of exe=
cutables and other non-source files of a program from the program's source =
files.  Make gets its knowledge of how to build your program from a file ca=
lled the makefile, which lists each of the non-source files and how to comp=
ute it from other files.,N/A,ftp://ftp.gnu.org/gnu/make/make-4.0.tar.bz2,Ro=
bert Yang <liezhi.yang@windriver.com>)
['pcmanfm', '1.1.2', 'N/A', 'GPLv2 & GPLv2+ & LGPLv2.1+', 'x11', 'http://pc=
manfm.sourceforge.net/', 'r0', 'pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ startup-noti=
fication libfm intltool-native libowl', 'None', 'None', 'Fast lightweight t=
abbed filemanager.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge.net/=
pcmanfm/pcmanfm-1.1.2.tar.gz', 'Alejandro Hernandez <alejandro.hernandez@li=
nux.intel.com>', 'None']
inserted (pcmanfm,1.1.2,N/A,GPLv2 & GPLv2+ & LGPLv2.1+,x11,r0,None,http://p=
cmanfm.sourceforge.net/,None,ErrAccess,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ start=
up-notification libfm intltool-native libowl,Fast lightweight tabbed filema=
nager.,N/A,http://downloads.sourceforge.net/pcmanfm/pcmanfm-1.1.2.tar.gz,Al=
ejandro Hernandez <alejandro.hernandez@linux.intel.com>)
['eglinfo-x11', '1.0', '1.0+gitAUTOINC+223817ee37', 'Zlib', 'graphics', 'ht=
tps://github.com/dv1/eglinfo', 'r0', ' virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  virtual/egl virtual/libx11', 'No=
ne', 'None', 'Utility for printing information EGL and its client APIs (Ope=
nGL, OpenGL ES, OpenVG) (X11 version).', 'UPDATE', 'N/A', 'git://github.com=
/dv1/eglinfo.git;branch=3Dmaster', 'None', 'None']
inserted (eglinfo-x11,1.0,1.0+gitAUTOINC+223817ee37,Zlib,graphics,r0,None,h=
ttps://github.com/dv1/eglinfo,None,UPDATE, virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  virtual/egl virtual/libx11,U=
tility for printing information EGL and its client APIs (OpenGL, OpenGL ES,=
 OpenVG) (X11 version).,N/A,git://github.com/dv1/eglinfo.git;branch=3Dmaste=
r,None)
['coreutils', '8.22', 'N/A', 'GPLv3+', 'base', 'http://www.gnu.org/software=
/coreutils/', 'r0', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gmp libcap tex=
info-native virtual/update-alternatives', 'http://debbugs.gnu.org/coreutils=
', 'None', 'The GNU Core Utilities provide the basic file, shell and text m=
anipulation utilities. These are the core utilities which are expected to e=
xist on every system.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/coreutil=
s/coreutils-8.22.tar.xz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (coreutils,8.22,N/A,GPLv3+,base,r0,None,http://www.gnu.org/softwar=
e/coreutils/,http://debbugs.gnu.org/coreutils,ErrAccess,autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native virtual/gettext=
 gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  gmp libcap texinfo-native virtual/update-alternatives,=
The GNU Core Utilities provide the basic file, shell and text manipulation =
utilities. These are the core utilities which are expected to exist on ever=
y system.,N/A,ftp://ftp.gnu.org/gnu/coreutils/coreutils-8.22.tar.xz,Chen Qi=
 <Qi.Chen@windriver.com>)
['webkit-gtk', '1.8.3', 'N/A', 'BSD & LGPLv2+', 'base', 'http://www.webkitg=
tk.org/', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  zlib enchant libsoup-2.4 curl li=
bxml2 cairo libxslt libxt libidn gnutls            gtk+ gstreamer gst-plugi=
ns-base flex-native gperf-native perl-native-runtime sqlite3 icu  virtual/l=
ibgl gtk-doc-stub-native', 'http://bugs.webkit.org/', 'None', 'WebKit web r=
endering engine for the GTK+ platform.', 'ErrAccess', '1.10.2', 'http://www=
=2Ewebkitgtk.org/releases/webkit-1.8.3.tar.xz', 'Ross Burton <ross.burton@i=
ntel.com>', '>=3D 1.10.2 needs ruby']
inserted (webkit-gtk,1.8.3,N/A,BSD & LGPLv2+,base,r1,None,http://www.webkit=
gtk.org/,http://bugs.webkit.org/,ErrAccess,pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib e=
nchant libsoup-2.4 curl libxml2 cairo libxslt libxt libidn gnutls          =
  gtk+ gstreamer gst-plugins-base flex-native gperf-native perl-native-runt=
ime sqlite3 icu  virtual/libgl gtk-doc-stub-native,WebKit web rendering eng=
ine for the GTK+ platform.,1.10.2,http://www.webkitgtk.org/releases/webkit-=
1.8.3.tar.xz,Ross Burton <ross.burton@intel.com>)
['sqlite3', '3.8.6.0', 'N/A', 'PD', 'libs', 'http://www.sqlite.org', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  readline ncurses', 'None', '3', 'Embeddable SQL =
database engine.', 'ErrAccess', '3.8.0.2', 'http://www.sqlite.org/2014/sqli=
te-autoconf-3080600.tar.gz', 'An\xc3\xadbal Lim\xc3\xb3n <anibal.limon@linu=
x.intel.com>', 'None']
inserted (sqlite3,3.8.6.0,N/A,PD,libs,r0,3,http://www.sqlite.org,None,ErrAc=
cess,pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  readline ncurses,Embeddable SQL database eng=
ine.,3.8.0.2,http://www.sqlite.org/2014/sqlite-autoconf-3080600.tar.gz,An?b=
al Lim?n <anibal.limon@linux.intel.com>)
['python-async', '0.6.1', 'N/A', 'BSD', 'devel/python', 'http://github.com/=
gitpython-developers/async', 'r0', ' virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   python-native python  python-nati=
ve ', 'None', 'None', 'Python framework to process interdependent tasks in =
a pool of workers.', 'ErrAccess', 'N/A', 'http://pypi.python.org/packages/s=
ource/a/async/async-0.6.1.tar.gz', 'None', 'None']
inserted (python-async,0.6.1,N/A,BSD,devel/python,r0,None,http://github.com=
/gitpython-developers/async,None,ErrAccess, virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc   python-native python  pyth=
on-native ,Python framework to process interdependent tasks in a pool of wo=
rkers.,N/A,http://pypi.python.org/packages/source/a/async/async-0.6.1.tar.g=
z,None)
['libxdamage', '1.1.4', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros virtual/libx11 damageproto libxfixe=
s', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', "'Dam=
age' is a term that describes changes make to pixel contents of windows and=
 pixmaps.  Damage accumulates as drawing occurs in the drawable.  Each draw=
ing operation 'damages' one or more rectangular areas within the drawable. =
 The rectangles are guaranteed to include the set of pixels modified by eac=
h operation, but may include significantly more than just those pixels.  Th=
e DAMAGE extension allows applications to either receive the raw rectangles=
 as a stream of events, or to have them partially processed within the X se=
rver to reduce the amount of data transmitted as well as reduce the process=
ing latency once the repaint operation has started.", 'ErrAccess', 'N/A', '=
http://xorg.freedesktop.org/releases/individual/lib/libXdamage-1.1.4.tar.bz=
2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxdamage,1.1.4,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  util-macros virtual/libx11 damageproto libxfixes,'Damage' is a te=
rm that describes changes make to pixel contents of windows and pixmaps.  D=
amage accumulates as drawing occurs in the drawable.  Each drawing operatio=
n 'damages' one or more rectangular areas within the drawable.  The rectang=
les are guaranteed to include the set of pixels modified by each operation,=
 but may include significantly more than just those pixels.  The DAMAGE ext=
ension allows applications to either receive the raw rectangles as a stream=
 of events, or to have them partially processed within the X server to redu=
ce the amount of data transmitted as well as reduce the processing latency =
once the repaint operation has started.,N/A,http://xorg.freedesktop.org/rel=
eases/individual/lib/libXdamage-1.1.4.tar.bz2,Ross Burton <ross.burton@inte=
l.com>)
['xserver-nodm-init', '1.0', '1.0', 'GPLv2', 'x11', '', 'r31', ' virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   updat=
e-rc.d-native initscripts', 'None', 'None', 'Simple Xserver Init Script (no=
 dm).', 'MATCH', 'N/A', 'file://xserver-nodm            file://Xusername   =
         file://gplv2-license.patch            file://xserver-nodm.service =
           file://xserver-nodm.conf ', 'Ross Burton <ross.burton@intel.com>=
', 'None']
inserted (xserver-nodm-init,1.0,1.0,GPLv2,x11,r31,None,,None,MATCH, virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   up=
date-rc.d-native initscripts,Simple Xserver Init Script (no dm).,N/A,file:/=
/xserver-nodm            file://Xusername            file://gplv2-license.p=
atch            file://xserver-nodm.service            file://xserver-nodm.=
conf ,Ross Burton <ross.burton@intel.com>)
['directfb', '1.7.4', 'N/A', 'LGPLv2.1', 'libs', 'http://directfb.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  jpeg libpng freetype zlib tslib sysfsutils', =
'None', 'None', 'DirectFB is a thin library that provides developers with h=
ardware graphics acceleration, input device handling and abstraction, an in=
tegrated windowing system with support for translucent windows and multiple=
 display layers on top of the Linux framebuffer device.', 'ErrAccess', 'N/A=
', 'http://www.directfb.org/downloads/Core/DirectFB-1.7/DirectFB-1.7.4.tar.=
gz', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (directfb,1.7.4,N/A,LGPLv2.1,libs,r0,None,http://directfb.org,None=
,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  jpeg libpng freetype zlib tslib sysfsu=
tils,DirectFB is a thin library that provides developers with hardware grap=
hics acceleration, input device handling and abstraction, an integrated win=
dowing system with support for translucent windows and multiple display lay=
ers on top of the Linux framebuffer device.,N/A,http://www.directfb.org/dow=
nloads/Core/DirectFB-1.7/DirectFB-1.7.4.tar.gz,Hongxu Jia <hongxu.jia@windr=
iver.com>)
['mklibs-native', '0.1.39', 'N/A', 'GPLv2+', 'devel', 'https://launchpad.ne=
t/mklibs', 'r0', 'autoconf-native automake-native libtool-native gnu-config=
-native gettext-minimal-native  python-native dpkg-native  python-native ',=
 'None', 'None', 'mklibs produces cut-down shared libraries that contain on=
ly the routines required by a particular set of executables.', 'ErrAccess',=
 'N/A', 'http://ftp.de.debian.org/debian/pool/main/m/mklibs/mklibs_0.1.39.t=
ar.xz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (mklibs-native,0.1.39,N/A,GPLv2+,devel,r0,None,https://launchpad.n=
et/mklibs,None,ErrAccess,autoconf-native automake-native libtool-native gnu=
-config-native gettext-minimal-native  python-native dpkg-native  python-na=
tive ,mklibs produces cut-down shared libraries that contain only the routi=
nes required by a particular set of executables.,N/A,http://ftp.de.debian.o=
rg/debian/pool/main/m/mklibs/mklibs_0.1.39.tar.xz,Robert Yang <liezhi.yang@=
windriver.com>)
['python-pygobject', '2.28.3', 'N/A', 'LGPLv2.1', 'devel/python', '', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  python python-pygobject-native libffi glib-2.0 =
python-native python  python-native ', 'None', 'None', 'Python GObject bind=
ings.', 'ErrAccess', '3.13.3', 'http://ftp.gnome.org/pub/GNOME/sources/pygo=
bject/2.28/pygobject-2.28.3.tar.bz2', 'Richard Purdie <richard.purdie@linux=
foundation.org>', "Newer versions of python-pygobject depend on gobject-int=
rospection which doesn't cross-compile"]
inserted (python-pygobject,2.28.3,N/A,LGPLv2.1,devel/python,r0,None,,None,E=
rrAccess,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  python python-pygobject-native libffi gl=
ib-2.0 python-native python  python-native ,Python GObject bindings.,3.13.3=
,http://ftp.gnome.org/pub/GNOME/sources/pygobject/2.28/pygobject-2.28.3.tar=
=2Ebz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['piglit', '1.0+gitrAUTOINC+bbeff5d21b', '1.0+gitAUTOINC+a68d27e725', 'MIT =
& LGPLv2+ & GPLv3 & GPLv2+ & BSD-3-Clause', 'base', '', 'r0', 'autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native cmake-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  virtual/libx11 libxrender waffle virtual/libgl libglu python-mako=
-native python-numpy-native  python-native ', 'None', 'None', 'OpenGL drive=
r testing framework.', 'UPDATE', 'N/A', 'git://anongit.freedesktop.org/pigl=
it', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (piglit,1.0+gitrAUTOINC+bbeff5d21b,1.0+gitAUTOINC+a68d27e725,MIT &=
 LGPLv2+ & GPLv3 & GPLv2+ & BSD-3-Clause,base,r0,None,,None,UPDATE,autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native cmak=
e-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  virtual/libx11 libxrender waffle virtual/libgl libglu python-=
mako-native python-numpy-native  python-native ,OpenGL driver testing frame=
work.,N/A,git://anongit.freedesktop.org/piglit,Ross Burton <ross.burton@int=
el.com>)
['pinentry', '0.9.0', 'N/A', 'GPLv2', 'base', 'http://www.gnupg.org/related=
_software/pinentry/index.en.html', 'r0', 'autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc    libcap  ncurses', 'Non=
e', 'None', 'Pinentry is a collection of simple PIN or passphrase entry dia=
logs which utilize the Assuan protocol as described by the aegypten project=
; see http://www.gnupg.org/aegypten/ for details.', 'ErrAccess', 'N/A', 'ft=
p://ftp.gnupg.org/gcrypt/pinentry/pinentry-0.9.0.tar.bz2', 'Armin Kuster <a=
kuster808@gmail.com>', 'None']
inserted (pinentry,0.9.0,N/A,GPLv2,base,r0,None,http://www.gnupg.org/relate=
d_software/pinentry/index.en.html,None,ErrAccess,autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc    libcap  ncurses=
,Pinentry is a collection of simple PIN or passphrase entry dialogs which u=
tilize the Assuan protocol as described by the aegypten project; see http:/=
/www.gnupg.org/aegypten/ for details.,N/A,ftp://ftp.gnupg.org/gcrypt/pinent=
ry/pinentry-0.9.0.tar.bz2,Armin Kuster <akuster808@gmail.com>)
['libunique', '1.1.6', 'N/A', 'LGPLv2.1', 'base', 'https://wiki.gnome.org/A=
ttic/LibUnique', 'r7', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 gtk+ dbus dbus-g=
lib', 'https://bugzilla.gnome.org/enter_bug.cgi?product=3Dlibunique', 'None=
', 'Unique is a library for writing single instance GTK+ applications. If y=
ou launch a single instance application twice, the second instance will eit=
her just quit or will send a message to the running instance.', 'ErrAccess'=
, 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/libunique/1.1/libunique-1.=
1.6.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'Do not upgrade to version=
: 2.91.4 because it requires gtk+ >=3D 2.90.0 and the stable version of gtk=
+ used by poky is 2.20.1']
inserted (libunique,1.1.6,N/A,LGPLv2.1,base,r7,None,https://wiki.gnome.org/=
Attic/LibUnique,https://bugzilla.gnome.org/enter_bug.cgi?product=3Dlibuniqu=
e,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  glib-2.0 gtk+ dbus dbus-glib,Unique i=
s a library for writing single instance GTK+ applications. If you launch a =
single instance application twice, the second instance will either just qui=
t or will send a message to the running instance.,N/A,http://ftp.gnome.org/=
pub/GNOME/sources/libunique/1.1/libunique-1.1.6.tar.bz2,Saul Wold <sgw@linu=
x.intel.com>)
['gst-fluendo-mpegdemux', '0.10.72', 'N/A', 'MPLv1.1', 'multimedia', 'http:=
//www.fluendo.com/resources/source-plugins.php', 'r0', 'pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  gstreamer zlib', 'None', 'None', 'Fluendo closed-format mpeg video G=
Streamer plug-in.', 'ErrAccess', 'N/A', 'http://core.fluendo.com/gstreamer/=
src/gst-fluendo-mpegdemux/gst-fluendo-mpegdemux-0.10.72.tar.bz2', 'Cristian=
 Iorga <cristian.iorga@intel.com>', 'None']
inserted (gst-fluendo-mpegdemux,0.10.72,N/A,MPLv1.1,multimedia,r0,None,http=
://www.fluendo.com/resources/source-plugins.php,None,ErrAccess,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  gstreamer zlib,Fluendo closed-format mpeg video GStreamer plu=
g-in.,N/A,http://core.fluendo.com/gstreamer/src/gst-fluendo-mpegdemux/gst-f=
luendo-mpegdemux-0.10.72.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['build-appliance-image', '8.0', '12.0.0+gitAUTOINC+02627ad3d9', 'MIT', 'ba=
se', 'http://www.yoctoproject.org/documentation/build-appliance', 'r0', ' z=
ip-native gzip-native qemuwrapper-cross depmodwrapper-cross', 'None', 'None=
', 'An image containing the build system that you can boot and run using ei=
ther VMware Player or VMware Workstation.', 'UPDATE', 'N/A', 'git://git.yoc=
toproject.org/poky;branch=3Ddizzy', 'Saul Wold <sgw@linux.intel.com>', 'Non=
e']
inserted (build-appliance-image,8.0,12.0.0+gitAUTOINC+02627ad3d9,MIT,base,r=
0,None,http://www.yoctoproject.org/documentation/build-appliance,None,UPDAT=
E, zip-native gzip-native qemuwrapper-cross depmodwrapper-cross,An image co=
ntaining the build system that you can boot and run using either VMware Pla=
yer or VMware Workstation.,N/A,git://git.yoctoproject.org/poky;branch=3Ddiz=
zy,Saul Wold <sgw@linux.intel.com>)
['libtelepathy', '0.3.3', 'N/A', 'LGPLv2.1+', 'base', 'http://telepathy.fre=
edesktop.org/wiki/', 'r5', 'pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus dbus-gl=
ib telepathy-glib libxslt-native  python-native ', 'None', 'None', 'Telepat=
hy is a D-Bus framework for unifying real time communication, including ins=
tant messaging, voice calls and video calls.  It abstracts differences betw=
een protocols to provide a unified interface for applications.', 'ErrAccess=
', 'N/A', 'http://telepathy.freedesktop.org/releases/libtelepathy/libtelepa=
thy-0.3.3.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libtelepathy,0.3.3,N/A,LGPLv2.1+,base,r5,None,http://telepathy.fr=
eedesktop.org/wiki/,None,ErrAccess,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus =
dbus-glib telepathy-glib libxslt-native  python-native ,Telepathy is a D-Bu=
s framework for unifying real time communication, including instant messagi=
ng, voice calls and video calls.  It abstracts differences between protocol=
s to provide a unified interface for applications.,N/A,http://telepathy.fre=
edesktop.org/releases/libtelepathy/libtelepathy-0.3.3.tar.gz,Cristian Iorga=
 <cristian.iorga@intel.com>)
['binutils-cross-canadian-i586', '2.24', 'N/A', 'GPLv3', 'devel', 'http://w=
ww.gnu.org/software/binutils/', 'r0', 'autoconf-native automake-native libt=
ool-native gnu-config-native gettext-native nativesdk-gettext  flex-native =
bison-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-libc=
 nativesdk-zlib nativesdk-gettext nativesdk-flex texinfo-native chrpath-rep=
lacement-native', 'http://sourceware.org/bugzilla/', 'None', 'The GNU Binut=
ils are a collection of binary tools. The main ones are ld (GNU Linker), an=
d as (GNU Assembler). This package also includes addition tools such as add=
r2line (Converts addresses into filenames and line numbers), ar (utility fo=
r creating, modifying and extracting archives), nm (list symbols in object =
files), objcopy (copy and translate object files), objdump (Display object =
information), and other tools and related libraries.', 'ErrAccess', 'N/A', =
'ftp://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2', 'Robert Yang <liezh=
i.yang@windriver.com>', 'None']
inserted (binutils-cross-canadian-i586,2.24,N/A,GPLv3,devel,r0,None,http://=
www.gnu.org/software/binutils/,http://sourceware.org/bugzilla/,ErrAccess,au=
toconf-native automake-native libtool-native gnu-config-native gettext-nati=
ve nativesdk-gettext  flex-native bison-native virtual/i586-pokysdk-linux-g=
cc-crosssdk virtual/nativesdk-libc nativesdk-zlib nativesdk-gettext natives=
dk-flex texinfo-native chrpath-replacement-native,The GNU Binutils are a co=
llection of binary tools. The main ones are ld (GNU Linker), and as (GNU As=
sembler). This package also includes addition tools such as addr2line (Conv=
erts addresses into filenames and line numbers), ar (utility for creating, =
modifying and extracting archives), nm (list symbols in object files), objc=
opy (copy and translate object files), objdump (Display object information)=
, and other tools and related libraries.,N/A,ftp://ftp.gnu.org/gnu/binutils=
/binutils-2.24.tar.bz2,Robert Yang <liezhi.yang@windriver.com>)
['gamin', '0.1.10', 'N/A', 'LGPLv2+', 'base', 'http://people.gnome.org/~vei=
llard/gamin/', 'r5', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0', 'None', 'None', =
'Gamin is a file and directory monitoring system defined to be a subset of =
the FAM (File Alteration Monitor) system.', 'ErrAccess', 'N/A', 'http://www=
=2Egnome.org/~veillard/gamin/sources/gamin-0.1.10.tar.gz', 'Saul Wold <sgw@=
linux.intel.com>', 'None']
inserted (gamin,0.1.10,N/A,LGPLv2+,base,r5,None,http://people.gnome.org/~ve=
illard/gamin/,None,ErrAccess,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0,Gamin is a =
file and directory monitoring system defined to be a subset of the FAM (Fil=
e Alteration Monitor) system.,N/A,http://www.gnome.org/~veillard/gamin/sour=
ces/gamin-0.1.10.tar.gz,Saul Wold <sgw@linux.intel.com>)
['bootchart2', '0.14.6+gitAUTOINC+b65ed43b0a', '0.14.6+gitAUTOINC+3ab81137c=
a', 'GPL-3.0', 'base', 'https://github.com/mmeeks/bootchart', 'r0', ' virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   =
 python-native  update-rc.d-native initscripts', 'None', 'None', 'Monitors =
where the system spends its time at start, creating a graph of all processe=
s, disk utilization, and wait time.', 'UPDATE', 'N/A', 'git://github.com/mm=
eeks/bootchart.git', 'None', 'None']
inserted (bootchart2,0.14.6+gitAUTOINC+b65ed43b0a,0.14.6+gitAUTOINC+3ab8113=
7ca,GPL-3.0,base,r0,None,https://github.com/mmeeks/bootchart,None,UPDATE, v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c    python-native  update-rc.d-native initscripts,Monitors where the syste=
m spends its time at start, creating a graph of all processes, disk utiliza=
tion, and wait time.,N/A,git://github.com/mmeeks/bootchart.git,None)
['lsof', '4.87', 'N/A', 'BSD', 'devel', '', 'r0', ' virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', =
'Lsof is a Unix-specific diagnostic tool. Its name stands for LiSt Open Fil=
es, and it does just that.', 'ErrAccess', 'N/A', 'ftp://lsof.itap.purdue.ed=
u/pub/tools/unix/lsof/lsof_4.87.tar.bz2', 'An\xc3\xadbal Lim\xc3\xb3n <anib=
al.limon@linux.intel.com>', 'None']
inserted (lsof,4.87,N/A,BSD,devel,r0,None,,None,ErrAccess, virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Lsof is a U=
nix-specific diagnostic tool. Its name stands for LiSt Open Files, and it d=
oes just that.,N/A,ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/lsof_4.87=
=2Etar.bz2,An?bal Lim?n <anibal.limon@linux.intel.com>)
['fontsproto', '2.1.3', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire prot=
ocol for the X Font rasterisation extensions.  These extensions are used to=
 control server-side font configurations.', 'ErrAccess', 'N/A', 'http://xor=
g.freedesktop.org/releases/individual/proto/fontsproto-2.1.3.tar.bz2', 'Ros=
s Burton <ross.burton@intel.com>', 'None']
inserted (fontsproto,2.1.3,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  util-macros,This package provides the wire protocol for the=
 X Font rasterisation extensions.  These extensions are used to control ser=
ver-side font configurations.,N/A,http://xorg.freedesktop.org/releases/indi=
vidual/proto/fontsproto-2.1.3.tar.bz2,Ross Burton <ross.burton@intel.com>)
['libdrm', '2.4.58', 'N/A', 'MIT', 'x11/base', 'http://dri.freedesktop.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  libpthread-stubs udev  libpciaccess', 'N=
one', 'None', 'The runtime library for accessing the kernel DRM services.  =
DRM stands for \\"Direct Rendering Manager\\", which is the kernel portion =
of the \\"Direct Rendering Infrastructure\\" (DRI).  DRI is required for ma=
ny hardware accelerated OpenGL drivers.', 'ErrAccess', 'N/A', 'http://dri.f=
reedesktop.org/libdrm/libdrm-2.4.58.tar.bz2', 'Richard Purdie <richard.purd=
ie@linuxfoundation.org>', 'None']
inserted (libdrm,2.4.58,N/A,MIT,x11/base,r0,None,http://dri.freedesktop.org=
,None,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  libpthread-stubs udev  libpciacce=
ss,The runtime library for accessing the kernel DRM services.  DRM stands f=
or \"Direct Rendering Manager\", which is the kernel portion of the \"Direc=
t Rendering Infrastructure\" (DRI).  DRI is required for many hardware acce=
lerated OpenGL drivers.,N/A,http://dri.freedesktop.org/libdrm/libdrm-2.4.58=
=2Etar.bz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['docbook-xsl-stylesheets', '1.78.1', 'N/A', 'XSL', 'base', 'http://docbook=
=2Esourceforge.net', 'r0', ' ', 'None', 'None', 'XSL stylesheets for proces=
sing DocBook XML to various output formats.', 'ErrAccess', 'N/A', 'http://d=
ownloads.sourceforge.net/docbook/docbook-xsl-1.78.1.tar.bz2', 'None', 'None=
']
inserted (docbook-xsl-stylesheets,1.78.1,N/A,XSL,base,r0,None,http://docboo=
k.sourceforge.net,None,ErrAccess, ,XSL stylesheets for processing DocBook X=
ML to various output formats.,N/A,http://downloads.sourceforge.net/docbook/=
docbook-xsl-1.78.1.tar.bz2,None)
['python-argparse', '1.2.1', 'N/A', 'PSF', 'devel/python', '', 'r4', ' virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
 python-native python  python-native  python-distribute-native', 'None', 'N=
one', 'Python command-line parsing library.', 'ErrAccess', 'N/A', 'http://a=
rgparse.googlecode.com/files/argparse-1.2.1.tar.gz', 'Richard Purdie <richa=
rd.purdie@linuxfoundation.org>', 'None']
inserted (python-argparse,1.2.1,N/A,PSF,devel/python,r4,None,,None,ErrAcces=
s, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   python-native python  python-native  python-distribute-native,Pytho=
n command-line parsing library.,N/A,http://argparse.googlecode.com/files/ar=
gparse-1.2.1.tar.gz,Richard Purdie <richard.purdie@linuxfoundation.org>)
['dhcp', '4.3.0', 'N/A', 'ISC', 'console/network', 'http://www.isc.org/', '=
r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  openssl bind', 'None', 'None', 'DHCP (Dynamic Host Configura=
tion Protocol) is a protocol which allows individual devices on an IP netwo=
rk to get their own network configuration information from a server.  DHCP =
helps make it easier to administer devices.', 'ErrAccess', 'N/A', 'ftp://ft=
p.isc.org/isc/dhcp/4.3.0/dhcp-4.3.0.tar.gz', 'Hongxu Jia <hongxu.jia@windri=
ver.com>', 'None']
inserted (dhcp,4.3.0,N/A,ISC,console/network,r0,None,http://www.isc.org/,No=
ne,ErrAccess,autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  openssl bind,DHCP (Dynamic Host Configuration Protoco=
l) is a protocol which allows individual devices on an IP network to get th=
eir own network configuration information from a server.  DHCP helps make i=
t easier to administer devices.,N/A,ftp://ftp.isc.org/isc/dhcp/4.3.0/dhcp-4=
=2E3.0.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['libxxf86vm', '1.1.3', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros libxext xf86vidmodeproto', 'https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXxf86vm provi=
des an interface to the XFree86-VidModeExtension extension, which allows cl=
ient applications to get and set video mode timings in extensive detail.  I=
t is used by the xvidtune program in particular.', 'ErrAccess', 'N/A', 'htt=
p://xorg.freedesktop.org/releases/individual/lib/libXxf86vm-1.1.3.tar.bz2',=
 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxxf86vm,1.1.3,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  util-macros libxext xf86vidmodeproto,libXxf86vm provides an inter=
face to the XFree86-VidModeExtension extension, which allows client applica=
tions to get and set video mode timings in extensive detail.  It is used by=
 the xvidtune program in particular.,N/A,http://xorg.freedesktop.org/releas=
es/individual/lib/libXxf86vm-1.1.3.tar.bz2,Ross Burton <ross.burton@intel.c=
om>)
['liburcu', '0.8.5', 'N/A', 'LGPLv2.1+ & MIT-style', 'base', 'http://lttng.=
org/urcu', 'r0', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ', 'http://lttng.org/project/issues', 'None', 'U=
serspace RCU (read-copy-update) library.', 'ErrAccess', '0.7.0', 'http://lt=
tng.org/files/urcu/userspace-rcu-0.8.5.tar.bz2', 'Saul Wold <sgw@linux.inte=
l.com>', 'None']
inserted (liburcu,0.8.5,N/A,LGPLv2.1+ & MIT-style,base,r0,None,http://lttng=
=2Eorg/urcu,http://lttng.org/project/issues,ErrAccess,autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Userspace R=
CU (read-copy-update) library.,0.7.0,http://lttng.org/files/urcu/userspace-=
rcu-0.8.5.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['gzip', '1.6', 'N/A', 'GPLv3+', 'console/utils', 'http://www.gnu.org/softw=
are/gzip/', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc   texinfo-native virtual/update-alternatives', '=
None', 'None', 'GNU Gzip is a popular data compression program originally w=
ritten by Jean-loup Gailly for the GNU project. Mark Adler wrote the decomp=
ression part', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/gzip/gzip-1.6.tar=
=2Egz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (gzip,1.6,N/A,GPLv3+,console/utils,r0,None,http://www.gnu.org/soft=
ware/gzip/,None,ErrAccess,autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc   texinfo-native virtual/update-alternati=
ves,GNU Gzip is a popular data compression program originally written by Je=
an-loup Gailly for the GNU project. Mark Adler wrote the decompression part=
,N/A,ftp://ftp.gnu.org/gnu/gzip/gzip-1.6.tar.gz,Chen Qi <Qi.Chen@windriver.=
com>)
['bdwgc', '7.4.2', 'N/A', 'MIT', 'devel', 'http://www.hboehm.info/gc/', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc   libatomics-ops', 'None', 'None', 'The Boehm-=
Demers-Weiser conservative garbage collector can be used as a garbage colle=
cting replacement for C malloc or C++ new. It allows you to allocate memory=
 basically as you normally would, without explicitly deallocating memory th=
at is no longer useful. The collector automatically recycles memory when it=
 determines that it can no longer be otherwise accessed.  The collector is =
also used by a number of programming language implementations that either u=
se C as intermediate code, want to facilitate easier interoperation with C =
libraries, or just prefer the simple collector interface.  Alternatively, t=
he garbage collector may be used as a leak detector for C or C++ programs, =
though that is not its primary goal.  Empirically, this collector works wit=
h most unmodified C programs, simply by replacing malloc with GC_malloc cal=
ls, replacing realloc with GC_realloc calls, and removing free calls.', 'Er=
rAccess', 'gc-7.2d', 'http://www.hboehm.info/gc/gc_source/gc-7.4.2.tar.gz',=
 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (bdwgc,7.4.2,N/A,MIT,devel,r0,None,http://www.hboehm.info/gc/,None=
,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc   libatomics-ops,The Boehm-Demers-Weise=
r conservative garbage collector can be used as a garbage collecting replac=
ement for C malloc or C++ new. It allows you to allocate memory basically a=
s you normally would, without explicitly deallocating memory that is no lon=
ger useful. The collector automatically recycles memory when it determines =
that it can no longer be otherwise accessed.  The collector is also used by=
 a number of programming language implementations that either use C as inte=
rmediate code, want to facilitate easier interoperation with C libraries, o=
r just prefer the simple collector interface.  Alternatively, the garbage c=
ollector may be used as a leak detector for C or C++ programs, though that =
is not its primary goal.  Empirically, this collector works with most unmod=
ified C programs, simply by replacing malloc with GC_malloc calls, replacin=
g realloc with GC_realloc calls, and removing free calls.,gc-7.2d,http://ww=
w.hboehm.info/gc/gc_source/gc-7.4.2.tar.gz,Richard Purdie <richard.purdie@l=
inuxfoundation.org>)
['speex', '1.2rc1', 'N/A', 'BSD', 'libs', 'http://www.speex.org', 'r2', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  libogg', 'None', 'None', 'Speex is an Open Source/F=
ree Software patent-free audio compression format designed for speech.', 'E=
rrAccess', 'N/A', 'http://downloads.us.xiph.org/releases/speex/speex-1.2rc1=
=2Etar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (speex,1.2rc1,N/A,BSD,libs,r2,None,http://www.speex.org,None,ErrAc=
cess,pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  libogg,Speex is an Open Source/Free Software=
 patent-free audio compression format designed for speech.,N/A,http://downl=
oads.us.xiph.org/releases/speex/speex-1.2rc1.tar.gz,Cristian Iorga <cristia=
n.iorga@intel.com>)
['gnome-doc-utils', '0.20.10', 'N/A', 'GPLv2 & LGPLv2.1', 'base', '', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxml2 libxslt =
libxslt-native gnome-doc-utils-native glib-2.0 gnome-common-native  python-=
native ', 'None', 'None', 'The GNOME Documentation Build Utilities (gnome-d=
oc- utils) were created to make it easier for application developers to inc=
lude and create documentation in their releases. They include the xml2po to=
ol which makes it easier to translate and keep up to date translations of d=
ocumentation.', 'ErrAccess', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources=
/gnome-doc-utils/0.20/gnome-doc-utils-0.20.10.tar.xz;name=3Darchive', 'Alej=
andro Hernandez <alejandro.hernandez@linux.intel.com>', 'None']
inserted (gnome-doc-utils,0.20.10,N/A,GPLv2 & LGPLv2.1,base,r0,None,,None,E=
rrAccess,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxml2 l=
ibxslt libxslt-native gnome-doc-utils-native glib-2.0 gnome-common-native  =
python-native ,The GNOME Documentation Build Utilities (gnome-doc- utils) w=
ere created to make it easier for application developers to include and cre=
ate documentation in their releases. They include the xml2po tool which mak=
es it easier to translate and keep up to date translations of documentation=
=2E,N/A,http://ftp.gnome.org/pub/GNOME/sources/gnome-doc-utils/0.20/gnome-d=
oc-utils-0.20.10.tar.xz;name=3Darchive,Alejandro Hernandez <alejandro.herna=
ndez@linux.intel.com>)
['matchbox-desktop', '2.0+gitAUTOINC+71e3e6e042', '2.0+gitAUTOINC+09170f41a=
b', 'GPLv2+ & LGPLv2+', 'x11/wm', 'http://matchbox-project.org/', 'r0', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  gtk+ startup-notification dbus', 'http://bugzilla.y=
octoproject.org/', 'None', 'Matchbox Window Manager Desktop.', 'UPDATE', 'N=
/A', 'git://git.yoctoproject.org/matchbox-desktop-2', 'Ross Burton <ross.bu=
rton@intel.com>', 'None']
inserted (matchbox-desktop,2.0+gitAUTOINC+71e3e6e042,2.0+gitAUTOINC+09170f4=
1ab,GPLv2+ & LGPLv2+,x11/wm,r0,None,http://matchbox-project.org/,http://bug=
zilla.yoctoproject.org/,UPDATE,pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ startup-notif=
ication dbus,Matchbox Window Manager Desktop.,N/A,git://git.yoctoproject.or=
g/matchbox-desktop-2,Ross Burton <ross.burton@intel.com>)
['less', '470', 'N/A', 'GPLv3+ | BSD-2-Clause', 'console/utils', 'http://ww=
w.greenwoodsoftware.com/', 'r0', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ncurses virtual/update-alternati=
ves', 'None', 'None', 'Less is a program similar to more, i.e. a terminal b=
ased program for viewing text files and the output from other programs. Les=
s offers many features beyond those that more does.', 'ErrAccess', 'N/A', '=
http://www.greenwoodsoftware.com/less/less-470.tar.gz', 'Chong Lu <Chong.Lu=
@windriver.com>', 'None']
inserted (less,470,N/A,GPLv3+ | BSD-2-Clause,console/utils,r0,None,http://w=
ww.greenwoodsoftware.com/,None,ErrAccess,autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  ncurses virtual/update-al=
ternatives,Less is a program similar to more, i.e. a terminal based program=
 for viewing text files and the output from other programs. Less offers man=
y features beyond those that more does.,N/A,http://www.greenwoodsoftware.co=
m/less/less-470.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['randrproto', '1.4.0', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire prot=
ocol for the X Resize, Rotate and Reflect extension.  This extension provid=
es the ability to resize, rotate and reflect the root window of a screen.',=
 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto=
/randrproto-1.4.0.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (randrproto,1.4.0,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  util-macros,This package provides the wire protocol for the=
 X Resize, Rotate and Reflect extension.  This extension provides the abili=
ty to resize, rotate and reflect the root window of a screen.,N/A,http://xo=
rg.freedesktop.org/releases/individual/proto/randrproto-1.4.0.tar.bz2,Ross =
Burton <ross.burton@intel.com>)
['neon', '0.30.0', 'N/A', 'LGPLv2+', 'libs', 'http://www.webdav.org/neon/',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  zlib libxml2 expat time gnutls libproxy',=
 'None', 'None', 'An HTTP and WebDAV client library with a C interface.', '=
ErrAccess', 'N/A', 'http://www.webdav.org/neon/neon-0.30.0.tar.gz', 'Cristi=
an Iorga <cristian.iorga@intel.com>', 'None']
inserted (neon,0.30.0,N/A,LGPLv2+,libs,r0,None,http://www.webdav.org/neon/,=
None,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  zlib libxml2 expat time gnutls lib=
proxy,An HTTP and WebDAV client library with a C interface.,N/A,http://www.=
webdav.org/neon/neon-0.30.0.tar.gz,Cristian Iorga <cristian.iorga@intel.com=
>)
['xev', '1.2.1', 'N/A', 'MIT', 'x11/apps', 'http://www.x.org/', 'r0', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  util-macros-native virtual/libx11 libxrandr xproto', =
'https://bugs.freedesktop.org', '1', 'Xev creates a window and then asks th=
e X server to send it events whenever anything happens to the window (such =
as it being moved, resized, typed in, clicked in, etc.). You can also attac=
h it to an existing window.', 'ErrAccess', '1.0.4', 'http://xorg.freedeskto=
p.org/releases/individual/app/xev-1.2.1.tar.bz2', 'Ross Burton <ross.burton=
@intel.com>', 'None']
inserted (xev,1.2.1,N/A,MIT,x11/apps,r0,1,http://www.x.org/,https://bugs.fr=
eedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native virtua=
l/libx11 libxrandr xproto,Xev creates a window and then asks the X server t=
o send it events whenever anything happens to the window (such as it being =
moved, resized, typed in, clicked in, etc.). You can also attach it to an e=
xisting window.,1.0.4,http://xorg.freedesktop.org/releases/individual/app/x=
ev-1.2.1.tar.bz2,Ross Burton <ross.burton@intel.com>)
['libxtst', '1.2.2', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros libxext recordproto inputproto l=
ibxi', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'T=
his extension is a minimal set of client and server extensions required to =
completely test the X11 server with no user intervention.', 'ErrAccess', 'N=
/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXtst-1.2.2.tar=
=2Ebz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxtst,1.2.2,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  util-macros libxext recordproto inputproto libxi,This extensio=
n is a minimal set of client and server extensions required to completely t=
est the X11 server with no user intervention.,N/A,http://xorg.freedesktop.o=
rg/releases/individual/lib/libXtst-1.2.2.tar.bz2,Ross Burton <ross.burton@i=
ntel.com>)
['clutter-gst-1.0', '1.6.0', 'N/A', 'LGPLv2+', 'base', 'http://www.clutter-=
project.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  gst-plugins-base gst-plugins-bad clutter-1.0 gtk-doc-stub-native', 'Non=
e', 'None', 'GStreamer integration library for Clutter.', 'ErrAccess', 'N/A=
', 'http://ftp.gnome.org/pub/GNOME/sources/clutter-gst/1.6/clutter-gst-1.6.=
0.tar.xz;name=3Darchive', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (clutter-gst-1.0,1.6.0,N/A,LGPLv2+,base,r0,None,http://www.clutter=
-project.org/,None,ErrAccess,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  gst-plugins-base gst-plugins-bad clutter-1.0 gtk-doc-stub-native=
,GStreamer integration library for Clutter.,N/A,http://ftp.gnome.org/pub/GN=
OME/sources/clutter-gst/1.6/clutter-gst-1.6.0.tar.xz;name=3Darchive,Ross Bu=
rton <ross.burton@intel.com>)
['libdmx', '1.1.3', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  util-macros libxext dmxproto', 'https://bugs.freede=
sktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The DMX extension provides s=
upport for communication with and control of Xdmx(1) server. Attributes of =
the Xdmx(1) server and of the back-end screens attached to the server can b=
e queried and modified via this protocol.', 'ErrAccess', 'N/A', 'http://xor=
g.freedesktop.org/releases/individual/lib/libdmx-1.1.3.tar.bz2', 'Saul Wold=
 <sgw@linux.intel.com>', 'None']
inserted (libdmx,1.1.3,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://bugs.=
freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  util-macros libxext dmxproto,The DMX extension provides support for c=
ommunication with and control of Xdmx(1) server. Attributes of the Xdmx(1) =
server and of the back-end screens attached to the server can be queried an=
d modified via this protocol.,N/A,http://xorg.freedesktop.org/releases/indi=
vidual/lib/libdmx-1.1.3.tar.bz2,Saul Wold <sgw@linux.intel.com>)
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
 without the need for a central server.', 'ErrAccess', 'N/A', 'http://avahi=
=2Eorg/download/avahi-0.6.31.tar.gz', 'Paul Eggleton <paul.eggleton@linux.i=
ntel.com>', 'None']
inserted (avahi-ui,0.6.31,N/A,GPLv2+ & LGPLv2.1+,network,r11.0,None,http://=
avahi.org,http://avahi.org/report,ErrAccess,pkgconfig-native autoconf-nativ=
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
['gst-plugins-gl', '0.10.3', 'N/A', 'GPLv2+ & LGPLv2+ & LGPLv2.1+ ', 'multi=
media', 'http://gstreamer.freedesktop.org/', 'r4', 'pkgconfig-native autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native vi=
rtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base virtual/libgle=
s2 virtual/egl jpeg libpng glew', 'https://bugzilla.gnome.org/enter_bug.cgi=
?product=3DGstreamer', 'None', 'Plugins for the GStreamer multimedia framew=
ork.', 'ErrAccess', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-plugin=
s-gl/gst-plugins-gl-0.10.3.tar.bz2', 'None', 'None']
inserted (gst-plugins-gl,0.10.3,N/A,GPLv2+ & LGPLv2+ & LGPLv2.1+ ,multimedi=
a,r4,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/ente=
r_bug.cgi?product=3DGstreamer,ErrAccess,pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native virtual/gettex=
t gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  gstreamer gst-plugins-base virtual/libgles2 virtual/e=
gl jpeg libpng glew,Plugins for the GStreamer multimedia framework.,N/A,htt=
p://gstreamer.freedesktop.org/src/gst-plugins-gl/gst-plugins-gl-0.10.3.tar.=
bz2,None)
['tzcode-native', '2014j', 'N/A', 'PD & BSD', 'base', '', 'r0', ' ', 'None'=
, 'None', 'tzcode, timezone zoneinfo utils -- zic, zdump, tzselect', 'ErrAc=
cess', 'N/A', 'ftp://ftp.iana.org/tz/releases/tzcode2014j.tar.gz;name=3Dtzc=
ode', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (tzcode-native,2014j,N/A,PD & BSD,base,r0,None,,None,ErrAccess, ,t=
zcode, timezone zoneinfo utils -- zic, zdump, tzselect,N/A,ftp://ftp.iana.o=
rg/tz/releases/tzcode2014j.tar.gz;name=3Dtzcode,Robert Yang <liezhi.yang@wi=
ndriver.com>)
['subversion', '1.8.10', 'N/A', 'Apache-2', 'console/network', 'http://subv=
ersion.tigris.org', 'r0', 'autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  apr-util=
 serf sqlite3 file', 'None', 'None', 'Subversion (svn) version control syst=
em client.', 'ErrAccess', 'N/A', 'http://www.apache.org/dist/subversion/sub=
version-1.8.10.tar.bz2', 'Richard Purdie <richard.purdie@linuxfoundation.or=
g>', 'None']
inserted (subversion,1.8.10,N/A,Apache-2,console/network,r0,None,http://sub=
version.tigris.org,None,ErrAccess,autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native virtual/gettext gettext-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  a=
pr-util serf sqlite3 file,Subversion (svn) version control system client.,N=
/A,http://www.apache.org/dist/subversion/subversion-1.8.10.tar.bz2,Richard =
Purdie <richard.purdie@linuxfoundation.org>)
['apr', '1.5.1', 'N/A', 'Apache-2.0', 'libs', 'http://apr.apache.org/', 'r0=
', 'autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  util-linux', 'None', 'None', 'Apache Portable Runtime (APR) li=
brary.', 'ErrAccess', 'N/A', 'http://www.apache.org/dist/apr/apr-1.5.1.tar.=
bz2', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (apr,1.5.1,N/A,Apache-2.0,libs,r0,None,http://apr.apache.org/,None=
,ErrAccess,autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  util-linux,Apache Portable Runtime (APR) library.,N/A,h=
ttp://www.apache.org/dist/apr/apr-1.5.1.tar.bz2,Hongxu Jia <hongxu.jia@wind=
river.com>)
['rgb', '1.0.5', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros-native virtual/libx11  xproto util-ma=
cros', 'https://bugs.freedesktop.org', '1', 'This package includes both the=
 list mapping X color names to RGB values (rgb.txt) and, if configured to u=
se a database for color lookup, the rgb program to convert the text file in=
to the binary database format.', 'ErrAccess', 'N/A', 'http://xorg.freedeskt=
op.org/releases/individual/app/rgb-1.0.5.tar.bz2', 'Saul Wold <sgw@linux.in=
tel.com>', 'None']
inserted (rgb,1.0.5,N/A,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https://bug=
s.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native vi=
rtual/libx11  xproto util-macros,This package includes both the list mappin=
g X color names to RGB values (rgb.txt) and, if configured to use a databas=
e for color lookup, the rgb program to convert the text file into the binar=
y database format.,N/A,http://xorg.freedesktop.org/releases/individual/app/=
rgb-1.0.5.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['cryptodev-module', '1.6', 'N/A', 'GPLv2', 'base', 'http://cryptodev-linux=
=2Eorg/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc   virtual/kernel cryptodev-linux', 'None', 'None', 'A =
/dev/crypto device driver kernel module.', 'ErrAccess', 'N/A', 'http://down=
load.gna.org/cryptodev-linux/cryptodev-linux-1.6.tar.gz', 'None', 'None']
inserted (cryptodev-module,1.6,N/A,GPLv2,base,r0,None,http://cryptodev-linu=
x.org/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc   virtual/kernel cryptodev-linux,A /dev/crypto de=
vice driver kernel module.,N/A,http://download.gna.org/cryptodev-linux/cryp=
todev-linux-1.6.tar.gz,None)
['xwininfo', '1.1.3', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxext libx=
mu', 'https://bugs.freedesktop.org', '0', 'Xwininfo is a utility for displa=
ying information about windows.  Information may include window position, s=
ize, color depth, and a number of other items.', 'ErrAccess', 'N/A', 'http:=
//xorg.freedesktop.org/releases/individual/app/xwininfo-1.1.3.tar.bz2', 'Ro=
ss Burton <ross.burton@intel.com>', 'None']
inserted (xwininfo,1.1.3,N/A,MIT-X,x11/apps,r0,0,http://www.x.org/,https://=
bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native=
 virtual/libx11 libxext libxmu,Xwininfo is a utility for displaying informa=
tion about windows.  Information may include window position, size, color d=
epth, and a number of other items.,N/A,http://xorg.freedesktop.org/releases=
/individual/app/xwininfo-1.1.3.tar.bz2,Ross Burton <ross.burton@intel.com>)
['gmp', '6.0.0', 'N/A', 'GPLv2 | LGPLv3', 'devel', 'http://gmplib.org/', 'r=
0', 'autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc   texinfo-native', 'None', 'None', 'GMP is a free library for =
arbitrary precision arithmetic, operating on signed integers, rational numb=
ers, and floating point numbers', 'ErrAccess', 'N/A', 'ftp://ftp.gmplib.org=
/pub/gmp-6.0.0/gmp-6.0.0a.tar.bz2', 'Robert Yang <liezhi.yang@windriver.com=
>', 'None']
inserted (gmp,6.0.0,N/A,GPLv2 | LGPLv3,devel,r0,None,http://gmplib.org/,Non=
e,ErrAccess,autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc   texinfo-native,GMP is a free library for arbitrary pr=
ecision arithmetic, operating on signed integers, rational numbers, and flo=
ating point numbers,N/A,ftp://ftp.gmplib.org/pub/gmp-6.0.0/gmp-6.0.0a.tar.b=
z2,Robert Yang <liezhi.yang@windriver.com>)
['nativesdk-libtool', '2.4.2', 'N/A', 'GPLv2 & LGPLv2.1', 'devel', 'http://=
www.gnu.org/software/libtool/libtool.html', 'r6.0', 'autoconf-native libtoo=
l-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pok=
ysdk-linux-compilerlibs chrpath-replacement-native gnu-config-native automa=
ke-native texinfo-native virtual/nativesdk-libc', 'None', 'None', 'This is =
GNU libtool, a generic library support script. Libtool hides the complexity=
 of generating special library types (such as shared libraries) behind a co=
nsistent interface.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/libtool/li=
btool-2.4.2.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (nativesdk-libtool,2.4.2,N/A,GPLv2 & LGPLv2.1,devel,r6.0,None,http=
://www.gnu.org/software/libtool/libtool.html,None,ErrAccess,autoconf-native=
 libtool-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i=
586-pokysdk-linux-compilerlibs chrpath-replacement-native gnu-config-native=
 automake-native texinfo-native virtual/nativesdk-libc,This is GNU libtool,=
 a generic library support script. Libtool hides the complexity of generati=
ng special library types (such as shared libraries) behind a consistent int=
erface.,N/A,ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz,Robert Yang =
<liezhi.yang@windriver.com>)
['socat', '1.7.2.4', 'N/A', 'GPL-2.0+-with-OpenSSL-exception', 'console/net=
work', 'http://www.dest-unreach.org/socat/', 'r0', 'autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  openssl readli=
ne tcp-wrappers', 'None', 'None', 'Socat is a relay for bidirectional data =
transfer between two independent data channels.', 'ErrAccess', 'N/A', 'http=
://www.dest-unreach.org/socat/download/socat-1.7.2.4.tar.bz2', 'Hongxu Jia =
<hongxu.jia@windriver.com>', '2.0.0 is beta']
inserted (socat,1.7.2.4,N/A,GPL-2.0+-with-OpenSSL-exception,console/network=
,r0,None,http://www.dest-unreach.org/socat/,None,ErrAccess,autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  openssl=
 readline tcp-wrappers,Socat is a relay for bidirectional data transfer bet=
ween two independent data channels.,N/A,http://www.dest-unreach.org/socat/d=
ownload/socat-1.7.2.4.tar.bz2,Hongxu Jia <hongxu.jia@windriver.com>)
['lzop', '1.03', 'N/A', 'GPLv2+', 'base', '', 'r0', 'autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   lzo', 'None'=
, 'None', 'lzop is a compression utility which is designed to be a companio=
n to gzip. \\nIt is based on the LZO data compression library and its main =
advantages over \\ngzip are much higher compression and decompression speed=
 at the cost of some \\ncompression ratio. The lzop compression utility was=
 designed with the goals \\nof reliability, speed, portability and with rea=
sonable drop-in compatibility \\nto gzip.', 'ErrAccess', 'N/A', 'http://www=
=2Elzop.org/download/lzop-1.03.tar.gz', 'Saul Wold <sgw@linux.intel.com>', =
'None']
inserted (lzop,1.03,N/A,GPLv2+,base,r0,None,,None,ErrAccess,autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   lzo,l=
zop is a compression utility which is designed to be a companion to gzip. \=
nIt is based on the LZO data compression library and its main advantages ov=
er \ngzip are much higher compression and decompression speed at the cost o=
f some \ncompression ratio. The lzop compression utility was designed with =
the goals \nof reliability, speed, portability and with reasonable drop-in =
compatibility \nto gzip.,N/A,http://www.lzop.org/download/lzop-1.03.tar.gz,=
Saul Wold <sgw@linux.intel.com>)
['xproto', '7.0.26', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x.or=
g', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedeskto=
p.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the basic =
headers for the X Window System.', 'ErrAccess', 'N/A', 'http://xorg.freedes=
ktop.org/releases/individual/proto/xproto-7.0.26.tar.bz2', 'Ross Burton <ro=
ss.burton@intel.com>', 'None']
inserted (xproto,7.0.26,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.x.org,=
https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  util-macros,This package provides the basic headers for =
the X Window System.,N/A,http://xorg.freedesktop.org/releases/individual/pr=
oto/xproto-7.0.26.tar.bz2,Ross Burton <ross.burton@intel.com>)
['babeltrace', '1.2.4+gitAUTOINC+90395824ef', '1.2.4+gitAUTOINC+a53ed9239a'=
, 'MIT & GPLv2', 'base', 'http://www.efficios.com/babeltrace/', 'r0', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  glib-2.0 util-linux popt bison-native flex-native', '=
https://bugs.lttng.org/projects/babeltrace', 'None', 'Babeltrace provides t=
race read and write libraries in host side, as well as a trace converter, w=
hich used to convert LTTng 2.0 traces into human-readable log.', 'UPDATE', =
'N/A', 'git://git.efficios.com/babeltrace.git;branch=3Dstable-1.2', 'Saul W=
old <sgw@linux.intel.com>', 'None']
inserted (babeltrace,1.2.4+gitAUTOINC+90395824ef,1.2.4+gitAUTOINC+a53ed9239=
a,MIT & GPLv2,base,r0,None,http://www.efficios.com/babeltrace/,https://bugs=
=2Elttng.org/projects/babeltrace,UPDATE,pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 =
util-linux popt bison-native flex-native,Babeltrace provides trace read and=
 write libraries in host side, as well as a trace converter, which used to =
convert LTTng 2.0 traces into human-readable log.,N/A,git://git.efficios.co=
m/babeltrace.git;branch=3Dstable-1.2,Saul Wold <sgw@linux.intel.com>)
['apr-util', '1.5.3', 'N/A', 'Apache-2.0', 'libs', 'http://apr.apache.org/'=
, 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  apr expat gdbm', 'None', 'None', 'Apache Portable Runtime=
 (APR) companion library.', 'ErrAccess', 'N/A', 'http://www.apache.org/dist=
/apr/apr-util-1.5.3.tar.gz', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None=
']
inserted (apr-util,1.5.3,N/A,Apache-2.0,libs,r0,None,http://apr.apache.org/=
,None,ErrAccess,autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  apr expat gdbm,Apache Portable Runtime (APR) compa=
nion library.,N/A,http://www.apache.org/dist/apr/apr-util-1.5.3.tar.gz,Hong=
xu Jia <hongxu.jia@windriver.com>)
['ca-certificates', '20140325', '20141019+gitAUTOINC+171cf7716b', 'GPL-2.0+=
 & MPL-2.0', 'misc', 'http://packages.debian.org/sid/ca-certificates', 'r0'=
, ' ca-certificates-native', 'None', 'None', "This package includes PEM fil=
es of CA certificates to allow SSL-based applications to check for the auth=
enticity of SSL connections. This derived from Debian's CA Certificates.", =
'UPDATE', 'N/A', 'git://anonscm.debian.org/collab-maint/ca-certificates.git=
', 'None', 'None']
inserted (ca-certificates,20140325,20141019+gitAUTOINC+171cf7716b,GPL-2.0+ =
& MPL-2.0,misc,r0,None,http://packages.debian.org/sid/ca-certificates,None,=
UPDATE, ca-certificates-native,This package includes PEM files of CA certif=
icates to allow SSL-based applications to check for the authenticity of SSL=
 connections. This derived from Debian's CA Certificates.,N/A,git://anonscm=
=2Edebian.org/collab-maint/ca-certificates.git,None)
['libglade', '2.6.4', 'N/A', 'LGPLv2 & LGPLv2+', 'libs', 'http://library.gn=
ome.org/devel/libglade/', 'r5', 'pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib gdk-pixbuf =
gtk+ gnome-common-native gtk-doc-stub-native', 'https://bugzilla.gnome.org/=
', 'None', 'Runtime support for the GTK+ interface builder.', 'ErrAccess', =
'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/libglade/2.6/libglade-2.6.4.=
tar.bz2;name=3Darchive', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libglade,2.6.4,N/A,LGPLv2 & LGPLv2+,libs,r5,None,http://library.g=
nome.org/devel/libglade/,https://bugzilla.gnome.org/,ErrAccess,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  zlib gdk-pixbuf gtk+ gnome-common-native gtk-doc-stub-native,=
Runtime support for the GTK+ interface builder.,N/A,http://ftp.gnome.org/pu=
b/GNOME/sources/libglade/2.6/libglade-2.6.4.tar.bz2;name=3Darchive,Ross Bur=
ton <ross.burton@intel.com>)
['dri2proto', '2.8', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/enter_=
bug.cgi?product=3Dxorg', 'None', 'This package provides the wire protocol f=
or the Direct Rendering Ifnrastructure 2.  DIR is required for may hardware=
 accelerated OpenGL drivers.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop=
=2Eorg/releases/individual/proto/dri2proto-2.8.tar.bz2', 'Ross Burton <ross=
=2Eburton@intel.com>', 'None']
inserted (dri2proto,2.8,N/A,MIT,x11/libs,r0,None,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  util-macros,This package provides the wire protocol for the Direc=
t Rendering Ifnrastructure 2.  DIR is required for may hardware accelerated=
 OpenGL drivers.,N/A,http://xorg.freedesktop.org/releases/individual/proto/=
dri2proto-2.8.tar.bz2,Ross Burton <ross.burton@intel.com>)
['shadow', '4.2.1', 'N/A', 'BSD | Artistic-1.0', 'base/utils', 'http://pkg-=
shadow.alioth.debian.org', 'r0', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native virtual/gettext gettext-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  s=
hadow-native virtual/update-alternatives', 'https://alioth.debian.org/track=
er/?group_id=3D30580', 'None', 'Tools to change and administer password and=
 group data.', 'ErrAccess', 'N/A', 'http://pkg-shadow.alioth.debian.org/rel=
eases/shadow-4.2.1.tar.xz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (shadow,4.2.1,N/A,BSD | Artistic-1.0,base/utils,r0,None,http://pkg=
-shadow.alioth.debian.org,https://alioth.debian.org/tracker/?group_id=3D305=
80,ErrAccess,autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  shadow-native virtual/=
update-alternatives,Tools to change and administer password and group data.=
,N/A,http://pkg-shadow.alioth.debian.org/releases/shadow-4.2.1.tar.xz,Chen =
Qi <Qi.Chen@windriver.com>)
['desktop-file-utils-native', '0.22', 'N/A', 'GPLv2', 'console/utils', 'htt=
p://www.freedesktop.org/wiki/Software/desktop-file-utils', 'r0', 'autoconf-=
native automake-native libtool-native gnu-config-native  glib-2.0-native', =
'None', 'None', 'Command line utilities for working with *.desktop files.',=
 'ErrAccess', 'N/A', 'http://freedesktop.org/software/desktop-file-utils/re=
leases/desktop-file-utils-0.22.tar.xz', 'Saul Wold <sgw@linux.intel.com>', =
'None']
inserted (desktop-file-utils-native,0.22,N/A,GPLv2,console/utils,r0,None,ht=
tp://www.freedesktop.org/wiki/Software/desktop-file-utils,None,ErrAccess,au=
toconf-native automake-native libtool-native gnu-config-native  glib-2.0-na=
tive,Command line utilities for working with *.desktop files.,N/A,http://fr=
eedesktop.org/software/desktop-file-utils/releases/desktop-file-utils-0.22.=
tar.xz,Saul Wold <sgw@linux.intel.com>)
['python3', '3.3.3', 'N/A', 'PSFv2', 'devel/python', 'http://www.python.org=
', 'r0.0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  python3-native libffi bzip2 db gdbm o=
penssl readline sqlite3 zlib virtual/libintl xz  python3-native ', 'None', =
'None', 'The Python Programming Language.', 'ErrAccess', 'N/A', 'http://www=
=2Epython.org/ftp/python/3.3.3/Python-3.3.3.tar.bz2', 'Richard Purdie <rich=
ard.purdie@linuxfoundation.org>', 'None']
inserted (python3,3.3.3,N/A,PSFv2,devel/python,r0.0,None,http://www.python.=
org,None,ErrAccess,pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  python3-native libffi bzip2 db=
 gdbm openssl readline sqlite3 zlib virtual/libintl xz  python3-native ,The=
 Python Programming Language.,N/A,http://www.python.org/ftp/python/3.3.3/Py=
thon-3.3.3.tar.bz2,Richard Purdie <richard.purdie@linuxfoundation.org>)
['python-smartpm', '1.4.1', 'N/A', 'GPLv2', 'devel/python', 'http://labix.o=
rg/smart/', 'r9', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  python rpm gettext-native python-rpm python-native =
python  python-native  rpm', 'None', 'None', 'The Smart Package Manager pro=
ject has the ambitious objective of creating smart and portable algorithms =
for solving adequately the problem of managing software upgrades and instal=
lation.', 'ErrAccess', 'N/A', 'http://launchpad.net/smart/trunk/1.4.1/+down=
load/smart-1.4.1.tar.bz2', 'Paul Eggleton <paul.eggleton@linux.intel.com>',=
 'None']
inserted (python-smartpm,1.4.1,N/A,GPLv2,devel/python,r9,None,http://labix.=
org/smart/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  python rpm gettext-native python-rpm python-=
native python  python-native  rpm,The Smart Package Manager project has the=
 ambitious objective of creating smart and portable algorithms for solving =
adequately the problem of managing software upgrades and installation.,N/A,=
http://launchpad.net/smart/trunk/1.4.1/+download/smart-1.4.1.tar.bz2,Paul E=
ggleton <paul.eggleton@linux.intel.com>)
['makedepend', '1.0.5', 'N/A', 'MIT-X', 'x11/utils', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  xproto util-macros', 'https://bugs.freedeskt=
op.org/enter_bug.cgi?product=3Dxorg', '1', 'The makedepend program reads ea=
ch sourcefile in sequence and parses it like a C-preprocessor, processing a=
ll #include, #define,  #undef, #ifdef, #ifndef, #endif, #if, #elif and #els=
e directives so that it can correctly tell which #include, directives would=
 be used in a compilation. Any #include, directives can reference files hav=
ing other #include directives, and parsing will occur in these files as wel=
l.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/individual/u=
til/makedepend-1.0.5.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'N=
one']
inserted (makedepend,1.0.5,N/A,MIT-X,x11/utils,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  xproto util-macros,The makedepend program reads each sourcefil=
e in sequence and parses it like a C-preprocessor, processing all #include,=
 #define,  #undef, #ifdef, #ifndef, #endif, #if, #elif and #else directives=
 so that it can correctly tell which #include, directives would be used in =
a compilation. Any #include, directives can reference files having other #i=
nclude directives, and parsing will occur in these files as well.,N/A,http:=
//xorg.freedesktop.org/releases/individual/util/makedepend-1.0.5.tar.gz,Rob=
ert Yang <liezhi.yang@windriver.com>)
['matchbox-session', '0.1', '0.1', 'GPLv2', 'x11', 'http://www.matchbox-pro=
ject.org/', 'r4', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc   virtual/update-alternatives', 'http://bugzilla.yoc=
toproject.org/', 'None', 'Custom Matchbox session files.', 'MATCH', 'N/A', =
'file://matchbox-session', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (matchbox-session,0.1,0.1,GPLv2,x11,r4,None,http://www.matchbox-pr=
oject.org/,http://bugzilla.yoctoproject.org/,MATCH, virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update-alt=
ernatives,Custom Matchbox session files.,N/A,file://matchbox-session,Ross B=
urton <ross.burton@intel.com>)
['minicom', '2.7', 'N/A', 'GPLv2+', 'console/network', '', 'r0', 'pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  ncurses virtual/libiconv', =
'None', 'None', 'Minicom is a text-based modem control and terminal emulati=
on program for Unix-like operating systems', 'ErrAccess', '2.6.2', 'https:/=
/alioth.debian.org/frs/download.php/latestfile/3/minicom-2.7.tar.gz', 'Cris=
tian Iorga <cristian.iorga@intel.com>', 'None']
inserted (minicom,2.7,N/A,GPLv2+,console/network,r0,None,,None,ErrAccess,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ncurses virtual/libi=
conv,Minicom is a text-based modem control and terminal emulation program f=
or Unix-like operating systems,2.6.2,https://alioth.debian.org/frs/download=
=2Ephp/latestfile/3/minicom-2.7.tar.gz,Cristian Iorga <cristian.iorga@intel=
=2Ecom>)
['xf86dgaproto', '2.1', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r2',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/ent=
er_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol f=
or the XFree86 Direct Graphics Access extension. This extension allows dire=
ct graphics access to a framebuffer-like region, as well as relative mouse =
reporting.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/indi=
vidual/proto/xf86dgaproto-2.1.tar.bz2', 'Ross Burton <ross.burton@intel.com=
>', 'None']
inserted (xf86dgaproto,2.1,N/A,MIT,x11/libs,r2,1,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  util-macros,This package provides the wire protocol for the XFree=
86 Direct Graphics Access extension. This extension allows direct graphics =
access to a framebuffer-like region, as well as relative mouse reporting.,N=
/A,http://xorg.freedesktop.org/releases/individual/proto/xf86dgaproto-2.1.t=
ar.bz2,Ross Burton <ross.burton@intel.com>)
['libxdmcp', '1.1.1', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros =
xproto', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', =
'The purpose of the X Display Manager Control Protocol (XDMCP) is to provid=
e a uniform mechanism for an autonomous display to request login service fr=
om a remote host. An X terminal (screen, keyboard, mouse, processor, networ=
k interface) is a prime example of an autonomous display.', 'ErrAccess', 'N=
/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXdmcp-1.1.1.ta=
r.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxdmcp,1.1.1,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  util-macros xproto,The purpose=
 of the X Display Manager Control Protocol (XDMCP) is to provide a uniform =
mechanism for an autonomous display to request login service from a remote =
host. An X terminal (screen, keyboard, mouse, processor, network interface)=
 is a prime example of an autonomous display.,N/A,http://xorg.freedesktop.o=
rg/releases/individual/lib/libXdmcp-1.1.1.tar.bz2,Ross Burton <ross.burton@=
intel.com>)
['unfs3', '0.9.22.r490', 'N/A', 'unfs3', 'console/network', '', 'r0', 'auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  flex-native bison-native flex', 'None', 'None', 'Userspace NFS server =
v3 protocol.', 'ErrUnsupportedProto', 'N/A', 'svn://svn.code.sf.net/p/unfs3=
/code;module=3Dtrunk;rev=3D490', 'Paul Eggleton <paul.eggleton@linux.intel.=
com>', 'None']
inserted (unfs3,0.9.22.r490,N/A,unfs3,console/network,r0,None,,None,ErrUnsu=
pportedProto,autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  flex-native bison-native flex,Userspace NFS server v3=
 protocol.,N/A,svn://svn.code.sf.net/p/unfs3/code;module=3Dtrunk;rev=3D490,=
Paul Eggleton <paul.eggleton@linux.intel.com>)
['man-pages', '3.75', 'N/A', 'GPLv2+', 'console/utils', 'http://www.kernel.=
org/pub/linux/docs/man-pages', 'r0', ' virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc   virtual/update-alternatives', '=
None', 'None', 'The Linux man-pages project documents the Linux kernel and =
C library interfaces that are employed by user programs', 'ErrAccess', 'N/A=
', 'http://kernel.org/pub/linux/docs/man-pages/Archive/man-pages-3.75.tar.g=
z', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (man-pages,3.75,N/A,GPLv2+,console/utils,r0,None,http://www.kernel=
=2Eorg/pub/linux/docs/man-pages,None,ErrAccess, virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update-alterna=
tives,The Linux man-pages project documents the Linux kernel and C library =
interfaces that are employed by user programs,N/A,http://kernel.org/pub/lin=
ux/docs/man-pages/Archive/man-pages-3.75.tar.gz,Hongxu Jia <hongxu.jia@wind=
river.com>)
['docbook-dsssl-stylesheets-native', '1.79', 'N/A', 'DSSSL', 'base', 'http:=
//docbook.sourceforge.net', 'r4', ' sgml-common-native', 'None', 'None', 'D=
SSSL stylesheets used to transform SGML and XML DocBook files.', 'ErrAccess=
', 'N/A', 'http://downloads.sourceforge.net/docbook/docbook-dsssl-1.79.tar.=
bz2', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (docbook-dsssl-stylesheets-native,1.79,N/A,DSSSL,base,r4,None,http=
://docbook.sourceforge.net,None,ErrAccess, sgml-common-native,DSSSL stylesh=
eets used to transform SGML and XML DocBook files.,N/A,http://downloads.sou=
rceforge.net/docbook/docbook-dsssl-1.79.tar.bz2,Paul Eggleton <paul.eggleto=
n@linux.intel.com>)
['libxmu', '1.1.2', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros libxt libxext', 'https://bu=
gs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Xmu Library is =
a collection of miscellaneous (some might say random) utility functions tha=
t have been useful in building various applications and widgets. This libra=
ry is required by the Athena Widgets. A subset of the functions that do not=
 rely on the Athena Widgets (libXaw) or X Toolkit Instrinsics (libXt) are p=
rovided in a second library, libXmuu.', 'ErrAccess', 'N/A', 'http://xorg.fr=
eedesktop.org/releases/individual/lib/libXmu-1.1.2.tar.bz2', 'Ross Burton <=
ross.burton@intel.com>', 'None']
inserted (libxmu,1.1.2,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  util-macros libxt libxext,The Xmu Library is a collection=
 of miscellaneous (some might say random) utility functions that have been =
useful in building various applications and widgets. This library is requir=
ed by the Athena Widgets. A subset of the functions that do not rely on the=
 Athena Widgets (libXaw) or X Toolkit Instrinsics (libXt) are provided in a=
 second library, libXmuu.,N/A,http://xorg.freedesktop.org/releases/individu=
al/lib/libXmu-1.1.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['shared-mime-info', '1.3', 'N/A', 'LGPLv2+', 'base', 'http://freedesktop.o=
rg/wiki/Software/shared-mime-info', 'r0', 'pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native virtual/get=
text gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  libxml2 intltool-native glib-2.0 shared-mime-info-=
native', 'None', 'None', 'Shared MIME type database and specification.', 'E=
rrAccess', 'N/A', 'http://freedesktop.org/~hadess/shared-mime-info-1.3.tar.=
xz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (shared-mime-info,1.3,N/A,LGPLv2+,base,r0,None,http://freedesktop.=
org/wiki/Software/shared-mime-info,None,ErrAccess,pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native virt=
ual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  libxml2 intltool-native glib-2.0 shared-mim=
e-info-native,Shared MIME type database and specification.,N/A,http://freed=
esktop.org/~hadess/shared-mime-info-1.3.tar.xz,Ross Burton <ross.burton@int=
el.com>)
['keymaps', '1.0', '1.0', 'GPLv2', 'base', '', 'r31', '  update-rc.d-native=
 initscripts ', 'None', 'None', 'Keymaps and initscript to set the keymap o=
n bootup.', 'MATCH', '1.0', 'file://keymap.sh ', '   file://GPLv2.patch', '=
Saul Wold <sgw@linux.intel.com>', 'None']
inserted (keymaps,1.0,1.0,GPLv2,base,r31,None,,None,MATCH,  update-rc.d-nat=
ive initscripts ,Keymaps and initscript to set the keymap on bootup.,1.0,fi=
le://keymap.sh ,   file://GPLv2.patch)
['grub', '2.00', 'N/A', 'GPLv3', 'bootloaders', 'http://www.gnu.org/softwar=
e/grub/', 'r1', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  autogen-native fle=
x-native bison-native xz texinfo-native', 'None', 'None', 'GRUB2 is the nex=
t generaion of a GPLed bootloader intended to unify bootloading across x86 =
operating systems. In addition to loading the Linux kernel, it implements t=
he Multiboot standard, which allows for flexible loading of multiple boot i=
mages.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/grub/grub-2.00.tar.gz',=
 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'grub2 is a different thi=
ng']
inserted (grub,2.00,N/A,GPLv3,bootloaders,r1,None,http://www.gnu.org/softwa=
re/grub/,None,ErrAccess,autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  autogen-nat=
ive flex-native bison-native xz texinfo-native,GRUB2 is the next generaion =
of a GPLed bootloader intended to unify bootloading across x86 operating sy=
stems. In addition to loading the Linux kernel, it implements the Multiboot=
 standard, which allows for flexible loading of multiple boot images.,N/A,f=
tp://ftp.gnu.org/gnu/grub/grub-2.00.tar.gz,Paul Eggleton <paul.eggleton@lin=
ux.intel.com>)
['xeyes', '1.1.1', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros-native virtual/libx11  virtual/libx11=
 libxau libxt libxext libxmu libxrender', 'https://bugs.freedesktop.org', '=
1', 'Xeyes is a small X11 application that shows a pair of eyes that move t=
o follow the location of the mouse cursor around the screen.', 'ErrAccess',=
 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/xeyes-1.1.1.ta=
r.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xeyes,1.1.1,N/A,MIT-X,x11/apps,r0,1,http://www.x.org/,https://bug=
s.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native vi=
rtual/libx11  virtual/libx11 libxau libxt libxext libxmu libxrender,Xeyes i=
s a small X11 application that shows a pair of eyes that move to follow the=
 location of the mouse cursor around the screen.,N/A,http://xorg.freedeskto=
p.org/releases/individual/app/xeyes-1.1.1.tar.bz2,Ross Burton <ross.burton@=
intel.com>)
['udev', '182', 'N/A', 'GPLv2.0+ & LGPLv2.1+', 'base', 'http://www.kernel.o=
rg/pub/linux/utils/kernel/hotplug/udev/udev.html', 'r9', 'pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  acl glib-2.0 libusb usbutils pciutils gperf-native libxslt-native =
util-linux module-init-tools update-rc.d-native initscripts', 'None', 'None=
', 'udev is a daemon which dynamically creates and removes device nodes fro=
m /dev/, handles hotplug events and loads drivers at boot time.', 'ErrAcces=
s', 'N/A', 'http://kernel.org/pub/linux/utils/kernel/hotplug/udev-182.tar.g=
z', 'An\xc3\xadbal Lim\xc3\xb3n <anibal.limon@linux.intel.com>', 'None']
inserted (udev,182,N/A,GPLv2.0+ & LGPLv2.1+,base,r9,None,http://www.kernel.=
org/pub/linux/utils/kernel/hotplug/udev/udev.html,None,ErrAccess,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  acl glib-2.0 libusb usbutils pciutils gperf-native libxslt-=
native util-linux module-init-tools update-rc.d-native initscripts,udev is =
a daemon which dynamically creates and removes device nodes from /dev/, han=
dles hotplug events and loads drivers at boot time.,N/A,http://kernel.org/p=
ub/linux/utils/kernel/hotplug/udev-182.tar.gz,An?bal Lim?n <anibal.limon@li=
nux.intel.com>)
['sato-screenshot', '0.1+gitAUTOINC+3a9688e8a0', '0.1+gitAUTOINC+3a9688e8a0=
', 'GPLv2 & GPLv2+', 'base', 'http://www.o-hand.com', 'r2', 'pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  matchbox-panel-2', 'http://bugzilla.yoctoproject.org/', 'None',=
 'Ultra-simple screen capture utility, aimed at handheld devices.', 'MATCH'=
, 'N/A', 'git://git.yoctoproject.org/screenshot', 'Saul Wold <sgw@linux.int=
el.com>', 'PRS Reports Incorrectly']
inserted (sato-screenshot,0.1+gitAUTOINC+3a9688e8a0,0.1+gitAUTOINC+3a9688e8=
a0,GPLv2 & GPLv2+,base,r2,None,http://www.o-hand.com,http://bugzilla.yoctop=
roject.org/,MATCH,pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  matchbox-panel-2,Ultra-simple s=
creen capture utility, aimed at handheld devices.,N/A,git://git.yoctoprojec=
t.org/screenshot,Saul Wold <sgw@linux.intel.com>)
['font-alias', '1.0.3', 'N/A', 'MIT', 'x11/fonts', 'http://www.x.org', 'r2.=
3', 'pkgconfig-native autoconf-native automake-native libtool-native gnu-co=
nfig-native  util-macros-native font-util-native', 'https://bugs.freedeskto=
p.org/enter_bug.cgi?product=3Dxorg', '1', 'X font aliases.', 'ErrAccess', '=
N/A', 'http://xorg.freedesktop.org/releases/individual/font/font-alias-1.0.=
3.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (font-alias,1.0.3,N/A,MIT,x11/fonts,r2.3,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nat=
ive autoconf-native automake-native libtool-native gnu-config-native  util-=
macros-native font-util-native,X font aliases.,N/A,http://xorg.freedesktop.=
org/releases/individual/font/font-alias-1.0.3.tar.bz2,Ross Burton <ross.bur=
ton@intel.com>)
['tcp-wrappers', '7.6', 'N/A', 'BSD', 'console/network', '', 'r10', ' virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  '=
, 'None', 'None', 'Tools for monitoring and filtering incoming requests for=
 tcp                services.', 'ErrAccess', 'N/A', 'ftp://ftp.porcupine.or=
g/pub/security/tcp_wrappers_7.6.tar.gz', 'Saul Wold <sgw@linux.intel.com>',=
 'None']
inserted (tcp-wrappers,7.6,N/A,BSD,console/network,r10,None,,None,ErrAccess=
, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  ,Tools for monitoring and filtering incoming requests for tcp        =
        services.,N/A,ftp://ftp.porcupine.org/pub/security/tcp_wrappers_7.6=
=2Etar.gz,Saul Wold <sgw@linux.intel.com>)
['bjam-native', '1.57.0', 'N/A', 'BSL-1.0 & MIT & Python-2.0', 'devel', 'ht=
tp://www.boost.org/', 'r0', ' ', 'None', 'None', 'Portable Boost.Jam build =
tool for boost.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge.net/boo=
st/boost_1_57_0.tar.bz2', 'None', 'None']
inserted (bjam-native,1.57.0,N/A,BSL-1.0 & MIT & Python-2.0,devel,r0,None,h=
ttp://www.boost.org/,None,ErrAccess, ,Portable Boost.Jam build tool for boo=
st.,N/A,http://downloads.sourceforge.net/boost/boost_1_57_0.tar.bz2,None)
['xf86-video-vesa', '2.3.3', 'N/A', 'MIT-X', 'x11/drivers', 'http://www.x.o=
rg', 'r21.0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextproto f=
ontsproto virtual/xserver xproto randrproto util-macros virtual/libx11 rand=
rproto libpciaccess', 'https://bugs.freedesktop.org', '2', 'vesa is an Xorg=
 driver for generic VESA video cards. It can drive most VESA-compatible vid=
eo cards, but only makes use of the basic standard VESA core that is common=
 to these cards. The driver supports depths 8, 15 16 and 24.', 'ErrAccess',=
 'N/A', 'http://xorg.freedesktop.org/releases/individual/driver/xf86-video-=
vesa-2.3.3.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xf86-video-vesa,2.3.3,N/A,MIT-X,x11/drivers,r21.0,2,http://www.x.=
org,https://bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  render=
proto videoproto xextproto fontsproto virtual/xserver xproto randrproto uti=
l-macros virtual/libx11 randrproto libpciaccess,vesa is an Xorg driver for =
generic VESA video cards. It can drive most VESA-compatible video cards, bu=
t only makes use of the basic standard VESA core that is common to these ca=
rds. The driver supports depths 8, 15 16 and 24.,N/A,http://xorg.freedeskto=
p.org/releases/individual/driver/xf86-video-vesa-2.3.3.tar.bz2,Ross Burton =
<ross.burton@intel.com>)
['libfontenc', '1.1.2', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros zlib xproto font-util', 'https://bu=
gs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libfontenc is a lib=
rary which helps font libraries portably determine and deal with different =
encodings of fonts.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/rele=
ases/individual/lib/libfontenc-1.1.2.tar.bz2', 'Ross Burton <ross.burton@in=
tel.com>', 'None']
inserted (libfontenc,1.1.2,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  util-macros zlib xproto font-util,libfontenc is a library which h=
elps font libraries portably determine and deal with different encodings of=
 fonts.,N/A,http://xorg.freedesktop.org/releases/individual/lib/libfontenc-=
1.1.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['texi2html', '5.0', 'N/A', 'GPLv2', 'console/utils', 'http://www.nongnu.or=
g/texi2html/', 'r2', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo-nati=
ve', 'None', 'None', 'Perl script that converts Texinfo to HTML.', 'ErrAcce=
ss', 'N/A', 'http://download.savannah.gnu.org/releases/texi2html/texi2html-=
5.0.tar.bz2', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (texi2html,5.0,N/A,GPLv2,console/utils,r2,None,http://www.nongnu.o=
rg/texi2html/,None,ErrAccess,autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texin=
fo-native,Perl script that converts Texinfo to HTML.,N/A,http://download.sa=
vannah.gnu.org/releases/texi2html/texi2html-5.0.tar.bz2,Robert Yang <liezhi=
=2Eyang@windriver.com>)
['modutils-initscripts', '1.0', '1.0', 'PD', 'base', '', 'r7', ' virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   updat=
e-rc.d-native initscripts ', 'None', 'None', 'Initscript for auto-loading k=
ernel modules on boot.', 'MATCH', 'N/A', 'file://modutils.sh ', '   file://=
PD.patch', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (modutils-initscripts,1.0,1.0,PD,base,r7,None,,None,MATCH, virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   up=
date-rc.d-native initscripts ,Initscript for auto-loading kernel modules on=
 boot.,N/A,file://modutils.sh ,   file://PD.patch)
['initramfs-framework', '1.0', '1.0', 'MIT', 'base', '', 'r2', ' ', 'None',=
 'None', 'Modular initramfs system.', 'MATCH', 'N/A', 'file://init         =
   file://finish            file://mdev            file://udev            f=
ile://e2fs            file://debug', 'Saul Wold <sgw@linux.intel.com>', 'No=
ne']
inserted (initramfs-framework,1.0,1.0,MIT,base,r2,None,,None,MATCH, ,Modula=
r initramfs system.,N/A,file://init            file://finish            fil=
e://mdev            file://udev            file://e2fs            file://de=
bug,Saul Wold <sgw@linux.intel.com>)
['xdpyinfo', '1.3.1', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxtst libx=
ext libxxf86vm libxxf86dga libxxf86misc libxi libxrender libxinerama libdmx=
 libxau libxcomposite', 'https://bugs.freedesktop.org', '1', 'Xdpyinfo is a=
 utility for displaying information about an X server. It is used to examin=
e the capabilities of a server, the predefined values for various parameter=
s used in communicating between clients and the server, and the different t=
ypes of screens and visuals that are available.', 'ErrAccess', 'N/A', 'http=
://xorg.freedesktop.org/releases/individual/app/xdpyinfo-1.3.1.tar.bz2', 'R=
oss Burton <ross.burton@intel.com>', 'None']
inserted (xdpyinfo,1.3.1,N/A,MIT-X,x11/apps,r0,1,http://www.x.org/,https://=
bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native=
 virtual/libx11 libxtst libxext libxxf86vm libxxf86dga libxxf86misc libxi l=
ibxrender libxinerama libdmx libxau libxcomposite,Xdpyinfo is a utility for=
 displaying information about an X server. It is used to examine the capabi=
lities of a server, the predefined values for various parameters used in co=
mmunicating between clients and the server, and the different types of scre=
ens and visuals that are available.,N/A,http://xorg.freedesktop.org/release=
s/individual/app/xdpyinfo-1.3.1.tar.bz2,Ross Burton <ross.burton@intel.com>)
['renderproto', '0.11.1', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org=
', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the X Rendering extension.  This is the basis the image compos=
ition within the X window system.', 'ErrAccess', 'N/A', 'http://xorg.freede=
sktop.org/releases/individual/proto/renderproto-0.11.1.tar.bz2', 'Ross Burt=
on <ross.burton@intel.com>', 'None']
inserted (renderproto,0.11.1,N/A,MIT-style,x11/libs,r1,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  util-macros,This package provides the wire protocol for t=
he X Rendering extension.  This is the basis the image composition within t=
he X window system.,N/A,http://xorg.freedesktop.org/releases/individual/pro=
to/renderproto-0.11.1.tar.bz2,Ross Burton <ross.burton@intel.com>)
['glibc', '2.20', '28+gitAUTOINC+f80af76648', 'GPLv2 & LGPLv2.1', 'libs', '=
http://www.gnu.org/software/libc/libc.html', 'r0', 'autoconf-native automak=
e-native libtool-native gnu-config-native  virtual/i586-poky-linux-gcc-init=
ial libgcc-initial linux-libc-headers virtual/i586-poky-linux-libc-initial =
gperf-native kconfig-frontends-native texinfo-native', 'None', 'None', 'The=
 GNU C Library is used as the system C library in most systems with the Lin=
ux kernel.', 'UPDATE', '2.11.2', 'git://sourceware.org/git/glibc.git;branch=
=3Drelease/2.20/master', 'Richard Purdie <richard.purdie@linuxfoundation.or=
g>', 'two glibc plugins are based on 2.10.1']
inserted (glibc,2.20,28+gitAUTOINC+f80af76648,GPLv2 & LGPLv2.1,libs,r0,None=
,http://www.gnu.org/software/libc/libc.html,None,UPDATE,autoconf-native aut=
omake-native libtool-native gnu-config-native  virtual/i586-poky-linux-gcc-=
initial libgcc-initial linux-libc-headers virtual/i586-poky-linux-libc-init=
ial gperf-native kconfig-frontends-native texinfo-native,The GNU C Library =
is used as the system C library in most systems with the Linux kernel.,2.11=
=2E2,git://sourceware.org/git/glibc.git;branch=3Drelease/2.20/master,Richar=
d Purdie <richard.purdie@linuxfoundation.org>)
['docbook-sgml-dtd-4.5-native', '4.5', 'N/A', 'OASIS', 'base', 'http://www.=
docbook.org/sgml/', 'r3.0', ' sgml-common-native', 'None', 'None', 'Documen=
t type definitions for verification of SGML data files against the DocBook =
rule set', 'ErrAccess', 'N/A', 'http://www.docbook.org/sgml/4.5/docbook-4.5=
=2Ezip', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'PRS Reports Inco=
rrectly']
inserted (docbook-sgml-dtd-4.5-native,4.5,N/A,OASIS,base,r3.0,None,http://w=
ww.docbook.org/sgml/,None,ErrAccess, sgml-common-native,Document type defin=
itions for verification of SGML data files against the DocBook rule set,N/A=
,http://www.docbook.org/sgml/4.5/docbook-4.5.zip,Paul Eggleton <paul.egglet=
on@linux.intel.com>)
['automake', '1.14.1', 'N/A', 'GPLv2', 'devel', 'http://www.gnu.org/softwar=
e/automake/', 'r0', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc   texinfo-native', 'None', 'None', "Automake i=
s a tool for automatically generating `Makefile.in' files compliant with th=
e GNU Coding Standards. Automake requires the use of Autoconf.", 'ErrAccess=
', 'N/A', 'ftp://ftp.gnu.org/gnu/automake/automake-1.14.1.tar.gz', 'Robert =
Yang <liezhi.yang@windriver.com>', 'None']
inserted (automake,1.14.1,N/A,GPLv2,devel,r0,None,http://www.gnu.org/softwa=
re/automake/,None,ErrAccess,autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc   texinfo-native,Automake is a tool for=
 automatically generating `Makefile.in' files compliant with the GNU Coding=
 Standards. Automake requires the use of Autoconf.,N/A,ftp://ftp.gnu.org/gn=
u/automake/automake-1.14.1.tar.gz,Robert Yang <liezhi.yang@windriver.com>)
['linux-libc-headers', '3.16', 'N/A', 'GPLv2', 'devel', '', 'r0', '  unifde=
f-native', 'None', 'None', "Sanitized set of kernel headers for the C libra=
ry's use.", 'ErrAccess', 'N/A', 'http://kernel.org/pub/linux/kernel/v3.0/li=
nux-3.16.tar.xz', 'Bruce Ashfield <bruce.ashfield@windriver.com>', 'None']
inserted (linux-libc-headers,3.16,N/A,GPLv2,devel,r0,None,,None,ErrAccess, =
 unifdef-native,Sanitized set of kernel headers for the C library's use.,N/=
A,http://kernel.org/pub/linux/kernel/v3.0/linux-3.16.tar.xz,Bruce Ashfield =
<bruce.ashfield@windriver.com>)
['mx-1.0', '1.4.7+gitAUTOINC+9b1db6b806', '1.99.4+gitAUTOINC+24efb0cc16', '=
LGPLv2.1', 'base', '', 'r0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native virtual/gettext gettext-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  clutter-1.0 dbus-glib gdk-pixbuf gtk-doc-stub-native', 'None', =
'None', 'Clutter based UI widget library.', 'UPDATE', 'N/A', 'git://github.=
com/clutter-project/mx.git;branch=3Dmx-1.4', 'Saul Wold <sgw@linux.intel.co=
m>', 'PRS 1.99 is dev version']
inserted (mx-1.0,1.4.7+gitAUTOINC+9b1db6b806,1.99.4+gitAUTOINC+24efb0cc16,L=
GPLv2.1,base,r0,None,,None,UPDATE,pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native virtual/gettext gett=
ext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  clutter-1.0 dbus-glib gdk-pixbuf gtk-doc-stub-native,Clutte=
r based UI widget library.,N/A,git://github.com/clutter-project/mx.git;bran=
ch=3Dmx-1.4,Saul Wold <sgw@linux.intel.com>)
['libcgroup', '0.41', 'N/A', 'LGPLv2.1', 'libs', '', 'r0', 'pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  bison-native flex-native ', 'None', 'None', 'libcgroup is a libr=
ary that abstracts the control group file system in Linux. Control groups a=
llow you to limit, account and isolate resource usage (CPU, memory, disk I/=
O, etc.) of groups of processes.', 'ErrAccess', 'N/A', 'http://downloads.so=
urceforge.net/project/libcg/libcgroup/v0.41/libcgroup-0.41.tar.bz2', 'Saul =
Wold <sgw@linux.intel.com>', 'None']
inserted (libcgroup,0.41,N/A,LGPLv2.1,libs,r0,None,,None,ErrAccess,pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  bison-native flex-native ,libcgroup is a library that abs=
tracts the control group file system in Linux. Control groups allow you to =
limit, account and isolate resource usage (CPU, memory, disk I/O, etc.) of =
groups of processes.,N/A,http://downloads.sourceforge.net/project/libcg/lib=
cgroup/v0.41/libcgroup-0.41.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['linux-firmware', '0.0+gitAUTOINC+0e5f63771d', '0.0+gitAUTOINC+38e5405c96'=
, 'Proprietary', 'kernel', '', 'r0', '  virtual/update-alternatives', 'None=
', '1', 'Firmware files for use with Linux kernel.', 'UPDATE', 'N/A', 'git:=
//git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git', 'Cr=
istian Iorga <cristian.iorga@intel.com>', 'None']
inserted (linux-firmware,0.0+gitAUTOINC+0e5f63771d,0.0+gitAUTOINC+38e5405c9=
6,Proprietary,kernel,r0,1,,None,UPDATE,  virtual/update-alternatives,Firmwa=
re files for use with Linux kernel.,N/A,git://git.kernel.org/pub/scm/linux/=
kernel/git/firmware/linux-firmware.git,Cristian Iorga <cristian.iorga@intel=
=2Ecom>)
['icu', '53.1', 'N/A', 'ICU', 'base', 'http://site.icu-project.org/', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  icu-native', 'None', 'None', 'The International=
 Component for Unicode (ICU) is a mature, portable set of C/C++ and Java li=
braries for Unicode support, software internationalization (I18N) and globa=
lization (G11N), giving applications the same results on all platforms.', '=
ErrAccess', '4.8.1.1', 'http://download.icu-project.org/files/icu4c/53.1/ic=
u4c-53_1-src.tgz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (icu,53.1,N/A,ICU,base,r0,None,http://site.icu-project.org/,None,E=
rrAccess,pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  icu-native,The International Component f=
or Unicode (ICU) is a mature, portable set of C/C++ and Java libraries for =
Unicode support, software internationalization (I18N) and globalization (G1=
1N), giving applications the same results on all platforms.,4.8.1.1,http://=
download.icu-project.org/files/icu4c/53.1/icu4c-53_1-src.tgz,Ross Burton <r=
oss.burton@intel.com>)
['formfactor', '0.0', '0.0', 'MIT', 'base', '', 'r45', ' ', 'None', 'None',=
 'Device formfactor information.', 'MATCH', '0.0', 'file://config file://ma=
chconfig', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (formfactor,0.0,0.0,MIT,base,r45,None,,None,MATCH, ,Device formfac=
tor information.,0.0,file://config file://machconfig,Cristian Iorga <cristi=
an.iorga@intel.com>)
['bc', '1.06', 'N/A', 'GPLv2+ & LGPLv2.1', 'base', 'http://www.gnu.org/soft=
ware/bc/bc.html', 'r2', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  flex texinfo-native virtual/update-altern=
atives', 'None', 'None', 'Arbitrary precision calculator language.', 'ErrAc=
cess', '1.06', 'ftp://ftp.gnu.org/gnu/bc/bc-1.06.tar.gz', 'Alejandro Hernan=
dez <alejandro.hernandez@linux.intel.com>', 'None']
inserted (bc,1.06,N/A,GPLv2+ & LGPLv2.1,base,r2,None,http://www.gnu.org/sof=
tware/bc/bc.html,None,ErrAccess,autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  flex texinfo-native virtual/update=
-alternatives,Arbitrary precision calculator language.,1.06,ftp://ftp.gnu.o=
rg/gnu/bc/bc-1.06.tar.gz,Alejandro Hernandez <alejandro.hernandez@linux.int=
el.com>)
['update-rc.d', '0.7', '0.7+gitAUTOINC+eca680ddf2', 'GPLv2+', 'base', '', '=
r5', ' ', 'None', 'None', 'update-rc.d is a utilities that allows the manag=
ement of symlinks to the initscripts in the /etc/rcN.d directory structure.=
', 'UPDATE', 'N/A', 'git://github.com/philb/update-rc.d.git', 'Saul Wold <s=
gw@linux.intel.com>', 'None']
inserted (update-rc.d,0.7,0.7+gitAUTOINC+eca680ddf2,GPLv2+,base,r5,None,,No=
ne,UPDATE, ,update-rc.d is a utilities that allows the management of symlin=
ks to the initscripts in the /etc/rcN.d directory structure.,N/A,git://gith=
ub.com/philb/update-rc.d.git,Saul Wold <sgw@linux.intel.com>)
['linux-yocto-rt', '3.14.19+gitAUTOINC+fb6271a942_0a875ce52a', '3.14.26+git=
AUTOINC+7f0712d102', 'GPLv2', 'kernel', '', 'r0', '  xz-native bc-native vi=
rtual/i586-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native depm=
odwrapper-cross bc-native', 'None', 'None', 'Yocto Kernel', 'UPDATE', 'N/A'=
, 'git://git.yoctoproject.org/linux-yocto-3.14.git;bareclone=3D1;branch=3Ds=
tandard/preempt-rt/base,meta;name=3Dmachine,meta', 'Darren Hart <dvhart@lin=
ux.intel.com>', 'None']
inserted (linux-yocto-rt,3.14.19+gitAUTOINC+fb6271a942_0a875ce52a,3.14.26+g=
itAUTOINC+7f0712d102,GPLv2,kernel,r0,None,,None,UPDATE,  xz-native bc-nativ=
e virtual/i586-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native =
depmodwrapper-cross bc-native,Yocto Kernel,N/A,git://git.yoctoproject.org/l=
inux-yocto-3.14.git;bareclone=3D1;branch=3Dstandard/preempt-rt/base,meta;na=
me=3Dmachine,meta,Darren Hart <dvhart@linux.intel.com>)
['kern-tools-native', '0.2+gitAUTOINC+23345b8846', '0.2+gitAUTOINC+f3658129=
1d', 'GPLv2', 'base', '', 'r12', ' git-native', 'None', 'None', 'Tools for =
managing Yocto Project style branched kernels.', 'UPDATE', 'N/A', 'git://gi=
t.yoctoproject.org/yocto-kernel-tools.git', 'Bruce Ashfield <bruce.ashfield=
@windriver.com>', 'None']
inserted (kern-tools-native,0.2+gitAUTOINC+23345b8846,0.2+gitAUTOINC+f36581=
291d,GPLv2,base,r12,None,,None,UPDATE, git-native,Tools for managing Yocto =
Project style branched kernels.,N/A,git://git.yoctoproject.org/yocto-kernel=
-tools.git,Bruce Ashfield <bruce.ashfield@windriver.com>)
['dmidecode', '2.12', 'N/A', 'GPLv2', 'base', 'http://www.nongnu.org/dmidec=
ode/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  ', 'None', 'None', 'DMI (Desktop Management Interface) t=
able related utilities.', 'ErrAccess', 'N/A', 'http://download.savannah.non=
gnu.org/releases/dmidecode/dmidecode-2.12.tar.bz2', 'None', 'None']
inserted (dmidecode,2.12,N/A,GPLv2,base,r0,None,http://www.nongnu.org/dmide=
code/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  ,DMI (Desktop Management Interface) table related=
 utilities.,N/A,http://download.savannah.nongnu.org/releases/dmidecode/dmid=
ecode-2.12.tar.bz2,None)
['syslinux', '6.01', 'N/A', 'GPLv2+', 'base', 'http://syslinux.zytor.com/',=
 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  nasm-native util-linux', 'None', 'None', 'Multi-purpose linux =
bootloader.', 'ErrAccess', 'N/A', 'http://kernel.org/pub/linux/utils/boot/s=
yslinux/6.xx/syslinux-6.01.tar.bz2', 'Darren Hart <dvhart@linux.intel.com>'=
, 'Waiting for 4.06 for 3.3 kernel headers support']
inserted (syslinux,6.01,N/A,GPLv2+,base,r0,None,http://syslinux.zytor.com/,=
None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  nasm-native util-linux,Multi-purpose linux bootloader.,=
N/A,http://kernel.org/pub/linux/utils/boot/syslinux/6.xx/syslinux-6.01.tar.=
bz2,Darren Hart <dvhart@linux.intel.com>)
['wget', '1.16', 'N/A', 'GPLv3', 'console/network', 'https://www.gnu.org/so=
ftware/wget/', 'r0', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gnutls zlib l=
ibpcre texinfo-native virtual/update-alternatives', 'None', 'None', 'Consol=
e URL download utility supporting HTTP, FTP, etc.', 'ErrAccess', 'N/A', 'ft=
p://ftp.gnu.org/gnu/wget/wget-1.16.tar.gz', 'Robert Yang <liezhi.yang@windr=
iver.com>', 'None']
inserted (wget,1.16,N/A,GPLv3,console/network,r0,None,https://www.gnu.org/s=
oftware/wget/,None,ErrAccess,autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gnutls=
 zlib libpcre texinfo-native virtual/update-alternatives,Console URL downlo=
ad utility supporting HTTP, FTP, etc.,N/A,ftp://ftp.gnu.org/gnu/wget/wget-1=
=2E16.tar.gz,Robert Yang <liezhi.yang@windriver.com>)
['libxml-parser-perl', '2.41', 'N/A', 'Artistic-1.0 | GPL-1.0', 'libs', '',=
 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc   expat expat-native perl perl-native', 'None', 'None', 'XML::P=
arser - A perl module for parsing XML documents.', 'ErrAccess', 'N/A', 'htt=
p://www.cpan.org/modules/by-module/XML/XML-Parser-2.41.tar.gz', 'Hongxu Jia=
 <hongxu.jia@windriver.com>', 'None']
inserted (libxml-parser-perl,2.41,N/A,Artistic-1.0 | GPL-1.0,libs,r3,None,,=
None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc   expat expat-native perl perl-native,XML::Parser - A pe=
rl module for parsing XML documents.,N/A,http://www.cpan.org/modules/by-mod=
ule/XML/XML-Parser-2.41.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['xcb-util-keysyms', '0.3.9', 'N/A', 'MIT', 'x11/libs', 'http://xcb.freedes=
ktop.org/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native', =
'https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'The xc=
b-util module provides a number of libraries which sit on top of libxcb, th=
e core X protocol library, and some of the extension libraries. These exper=
imental libraries provide convenience functions and interfaces which make t=
he raw X protocol more usable. Some of the libraries also provide client-si=
de code which is not strictly part of the X protocol but which have traditi=
onally been provided by Xlib.', 'ErrAccess', 'N/A', 'http://xcb.freedesktop=
=2Eorg/dist/xcb-util-keysyms-0.3.9.tar.bz2', 'Ross Burton <ross.burton@inte=
l.com>', 'None']
inserted (xcb-util-keysyms,0.3.9,N/A,MIT,x11/libs,r0,None,http://xcb.freede=
sktop.org/XcbUtil/,https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB=
,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  libxcb gperf-native,The xcb-util modul=
e provides a number of libraries which sit on top of libxcb, the core X pro=
tocol library, and some of the extension libraries. These experimental libr=
aries provide convenience functions and interfaces which make the raw X pro=
tocol more usable. Some of the libraries also provide client-side code whic=
h is not strictly part of the X protocol but which have traditionally been =
provided by Xlib.,N/A,http://xcb.freedesktop.org/dist/xcb-util-keysyms-0.3.=
9.tar.bz2,Ross Burton <ross.burton@intel.com>)
['pcmciautils', '018', 'N/A', 'GPLv2', 'kernel/userland', 'http://kernel.or=
g/pub/linux/utils/kernel/pcmcia/pcmcia.html', 'r1', ' virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  udev sysfsutils f=
lex-native', 'None', 'None', 'Linux kernel userland utilities for the PCMCI=
A subsystem.', 'ErrAccess', 'N/A', 'http://kernel.org/pub/linux/utils/kerne=
l/pcmcia/pcmciautils-018.tar.bz2', 'Robert Yang <liezhi.yang@windriver.com>=
', 'None']
inserted (pcmciautils,018,N/A,GPLv2,kernel/userland,r1,None,http://kernel.o=
rg/pub/linux/utils/kernel/pcmcia/pcmcia.html,None,ErrAccess, virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  udev sysfs=
utils flex-native,Linux kernel userland utilities for the PCMCIA subsystem.=
,N/A,http://kernel.org/pub/linux/utils/kernel/pcmcia/pcmciautils-018.tar.bz=
2,Robert Yang <liezhi.yang@windriver.com>)
['acl', '2.2.52', 'N/A', 'LGPLv2.1+ & GPLv2+', 'libs', 'http://savannah.non=
gnu.org/projects/acl/', 'r0', 'autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  attr=
', 'None', 'None', 'Utilities for managing POSIX Access Control Lists.', 'E=
rrAccess', 'N/A', 'http://download.savannah.gnu.org/releases/acl/acl-2.2.52=
=2Esrc.tar.gz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (acl,2.2.52,N/A,LGPLv2.1+ & GPLv2+,libs,r0,None,http://savannah.no=
ngnu.org/projects/acl/,None,ErrAccess,autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  attr,Utilities for managing POSIX Access Control Lists.,N/A,http://downl=
oad.savannah.gnu.org/releases/acl/acl-2.2.52.src.tar.gz,Chong Lu <Chong.Lu@=
windriver.com>)
['libexif', '0.6.21', 'N/A', 'LGPLv2.1', 'libs', 'http://sourceforge.net/pr=
ojects/libexif', 'r0', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', =
'None', 'Library for reading extended image information (EXIF) from JPEG fi=
les.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge.net/libexif/libexi=
f-0.6.21.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libexif,0.6.21,N/A,LGPLv2.1,libs,r0,None,http://sourceforge.net/p=
rojects/libexif,None,ErrAccess,autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Lib=
rary for reading extended image information (EXIF) from JPEG files.,N/A,htt=
p://downloads.sourceforge.net/libexif/libexif-0.6.21.tar.bz2,Saul Wold <sgw=
@linux.intel.com>)
['libxres', '1.0.7', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros libxext resourceproto', 'https://bugs.=
freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXRes provides an X =
Window System client interface to the Resource extension to the X protocol.=
  The Resource extension allows for X clients to see and monitor the X reso=
urce usage of various clients (pixmaps, et al).', 'ErrAccess', 'N/A', 'http=
://xorg.freedesktop.org/releases/individual/lib/libXres-1.0.7.tar.bz2', 'Ro=
ss Burton <ross.burton@intel.com>', 'None']
inserted (libxres,1.0.7,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://bugs=
=2Efreedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  util-macros libxext resourceproto,libXRes provides an X Window Sys=
tem client interface to the Resource extension to the X protocol.  The Reso=
urce extension allows for X clients to see and monitor the X resource usage=
 of various clients (pixmaps, et al).,N/A,http://xorg.freedesktop.org/relea=
ses/individual/lib/libXres-1.0.7.tar.bz2,Ross Burton <ross.burton@intel.com=
>)
['ptest-runner', '1.0', '1.0', 'MIT', 'base', 'https://wiki.yoctoproject.or=
g/wiki/Ptest', 'r0', ' ', 'None', 'None', 'The ptest-runner package install=
s a ptest-runner shell script which loops through all installed ptest test =
suites and runs them in sequence.', 'MATCH', 'N/A', ' file://ptest-runner',=
 'None', 'None']
inserted (ptest-runner,1.0,1.0,MIT,base,r0,None,https://wiki.yoctoproject.o=
rg/wiki/Ptest,None,MATCH, ,The ptest-runner package installs a ptest-runner=
 shell script which loops through all installed ptest test suites and runs =
them in sequence.,N/A, file://ptest-runner,None)
['libtool', '2.4.2', 'N/A', 'GPLv2 & LGPLv2.1', 'devel', 'http://www.gnu.or=
g/software/libtool/libtool.html', 'r6.0', 'autoconf-native automake-native =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  libtool-native texinfo-native', 'None', 'None', 'Thi=
s is GNU libtool, a generic library support script. Libtool hides the compl=
exity of generating special library types (such as shared libraries) behind=
 a consistent interface.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/libto=
ol/libtool-2.4.2.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (libtool,2.4.2,N/A,GPLv2 & LGPLv2.1,devel,r6.0,None,http://www.gnu=
=2Eorg/software/libtool/libtool.html,None,ErrAccess,autoconf-native automak=
e-native gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  libtool-native texinfo-native,This is GNU l=
ibtool, a generic library support script. Libtool hides the complexity of g=
enerating special library types (such as shared libraries) behind a consist=
ent interface.,N/A,ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz,Rober=
t Yang <liezhi.yang@windriver.com>)
['cryptodev-linux', '1.6', 'N/A', 'GPLv2', 'base', 'http://cryptodev-linux.=
org/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  ', 'None', 'None', 'A /dev/crypto device driver header f=
ile.', 'ErrAccess', 'N/A', 'http://download.gna.org/cryptodev-linux/cryptod=
ev-linux-1.6.tar.gz', 'None', 'None']
inserted (cryptodev-linux,1.6,N/A,GPLv2,base,r0,None,http://cryptodev-linux=
=2Eorg/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ,A /dev/crypto device driver header file.,N/A,h=
ttp://download.gna.org/cryptodev-linux/cryptodev-linux-1.6.tar.gz,None)
['shutdown-desktop', '1.0', '1.0', 'MIT', 'base', '', 'r1', ' ', 'None', 'N=
one', 'Provides an icon to shut down the system cleanly.', 'MATCH', 'N/A', =
'file://shutdown.desktop', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (shutdown-desktop,1.0,1.0,MIT,base,r1,None,,None,MATCH, ,Provides =
an icon to shut down the system cleanly.,N/A,file://shutdown.desktop,Saul W=
old <sgw@linux.intel.com>)
['sgml-common', '0.6.3', 'N/A', 'GPLv2+', 'base', 'http://sources.redhat.co=
m/docbook-tools/', 'r1', 'autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ', 'None', 'None', 'The sgml-common pack=
age gathers very basic stuff necessary to work with SGML and XML, such as x=
ml.dcl, a SGML declaration of XML; iso-entities, a list of the basic SGML I=
SO entities; and install-catalog, a script used to add entries to (or remov=
e entries from) centralized catalogs whose entries are pointers to SGML ope=
n catalogs, as defined by OASIS.', 'ErrAccess', 'N/A', 'ftp://sources.redha=
t.com/pub/docbook-tools/new-trials/SOURCES/sgml-common-0.6.3.tgz', 'Paul Eg=
gleton <paul.eggleton@linux.intel.com>', 'None']
inserted (sgml-common,0.6.3,N/A,GPLv2+,base,r1,None,http://sources.redhat.c=
om/docbook-tools/,None,ErrAccess,autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  ,The sgml-common package gathers =
very basic stuff necessary to work with SGML and XML, such as xml.dcl, a SG=
ML declaration of XML; iso-entities, a list of the basic SGML ISO entities;=
 and install-catalog, a script used to add entries to (or remove entries fr=
om) centralized catalogs whose entries are pointers to SGML open catalogs, =
as defined by OASIS.,N/A,ftp://sources.redhat.com/pub/docbook-tools/new-tri=
als/SOURCES/sgml-common-0.6.3.tgz,Paul Eggleton <paul.eggleton@linux.intel.=
com>)
['xtscal', '0.6.3', 'N/A', 'GPLv2 & GPLv2+', 'x11/base', 'http://gpe.linuxt=
ogo.org', 'r13', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 libxft libxcalib=
rate', 'http://bugs.linuxtogo.org', 'None', 'Basic touchscreen calibration =
utility', 'ErrAccess', 'N/A', 'http://gpe.linuxtogo.org/download/source/xts=
cal-0.6.3.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xtscal,0.6.3,N/A,GPLv2 & GPLv2+,x11/base,r13,None,http://gpe.linu=
xtogo.org,http://bugs.linuxtogo.org,ErrAccess,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  vir=
tual/libx11 libxft libxcalibrate,Basic touchscreen calibration utility,N/A,=
http://gpe.linuxtogo.org/download/source/xtscal-0.6.3.tar.bz2,Ross Burton <=
ross.burton@intel.com>)
['libxml-perl', '0.08', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', '', 'r3',=
 ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   libxml-parser-perl perl perl-native', 'None', 'None', 'libxml-perl =
is a collection of smaller Perl modules, scripts, and documents for working=
 with XML in Perl.  libxml-perl software works in combination with XML::Par=
ser, PerlSAX, XML::DOM, XML::Grove and others.', 'ErrAccess', 'N/A', 'http:=
//www.cpan.org/modules/by-module/XML/libxml-perl-0.08.tar.gz', 'Saul Wold <=
sgw@linux.intel.com>', 'None']
inserted (libxml-perl,0.08,N/A,Artistic-1.0 | GPL-1.0+,libs,r3,None,,None,E=
rrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc   libxml-parser-perl perl perl-native,libxml-perl is a collect=
ion of smaller Perl modules, scripts, and documents for working with XML in=
 Perl.  libxml-perl software works in combination with XML::Parser, PerlSAX=
, XML::DOM, XML::Grove and others.,N/A,http://www.cpan.org/modules/by-modul=
e/XML/libxml-perl-0.08.tar.gz,Saul Wold <sgw@linux.intel.com>)
['matchbox-config-gtk', '0.0+gitAUTOINC+3ed74dfb7c', '0.0+gitAUTOINC+3ed74d=
fb7c', 'GPLv2+', 'base', 'http://matchbox-project.org', 'r0', 'pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  gconf gtk+', 'http://bugzilla.yoctoproject.org/', 'None', 'Ma=
tchbox GTK+ theme configuration application.', 'MATCH', 'N/A', 'git://git.y=
octoproject.org/matchbox-config-gtk', 'Ross Burton <ross.burton@intel.com>'=
, 'None']
inserted (matchbox-config-gtk,0.0+gitAUTOINC+3ed74dfb7c,0.0+gitAUTOINC+3ed7=
4dfb7c,GPLv2+,base,r0,None,http://matchbox-project.org,http://bugzilla.yoct=
oproject.org/,MATCH,pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  gconf gtk+,Matchbox GTK+ them=
e configuration application.,N/A,git://git.yoctoproject.org/matchbox-config=
-gtk,Ross Burton <ross.burton@intel.com>)
['libxcursor', '1.1.14', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros libxrender libxfixes', 'http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Xcursor is a =
simple library designed to help locate and load cursors. Cursors can be loa=
ded from files or memory. A library of common cursors exists which map to t=
he standard X cursor names. Cursors can exist in several sizes and the libr=
ary automatically picks the best size.', 'ErrAccess', 'N/A', 'http://xorg.f=
reedesktop.org/releases/individual/lib/libXcursor-1.1.14.tar.bz2', 'Ross Bu=
rton <ross.burton@intel.com>', 'None']
inserted (libxcursor,1.1.14,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  util-macros libxrender libxfixes,Xcursor is a simple libra=
ry designed to help locate and load cursors. Cursors can be loaded from fil=
es or memory. A library of common cursors exists which map to the standard =
X cursor names. Cursors can exist in several sizes and the library automati=
cally picks the best size.,N/A,http://xorg.freedesktop.org/releases/individ=
ual/lib/libXcursor-1.1.14.tar.bz2,Ross Burton <ross.burton@intel.com>)
['zisofs-tools-native', '1.0.8', 'N/A', 'GPLv2', 'console/utils', 'http://f=
reecode.com/projects/zisofs-tools', 'r0', ' zlib-native', 'None', 'None', '=
Utilities for creating compressed CD-ROM filesystems.', 'ErrAccess', 'N/A',=
 'http://pkgs.fedoraproject.org/repo/pkgs/zisofs-tools/zisofs-tools-1.0.8.t=
ar.bz2/2d0ed8c9a1f60b45f949b136f9be1f6c/zisofs-tools-1.0.8.tar.bz2', 'None'=
, 'None']
inserted (zisofs-tools-native,1.0.8,N/A,GPLv2,console/utils,r0,None,http://=
freecode.com/projects/zisofs-tools,None,ErrAccess, zlib-native,Utilities fo=
r creating compressed CD-ROM filesystems.,N/A,http://pkgs.fedoraproject.org=
/repo/pkgs/zisofs-tools/zisofs-tools-1.0.8.tar.bz2/2d0ed8c9a1f60b45f949b136=
f9be1f6c/zisofs-tools-1.0.8.tar.bz2,None)
['pax-utils', '0.8.1', 'N/A', 'GPLv2+', 'base', 'http://www.gentoo.org/proj=
/en/hardened/pax-utils.xml', 'r0', ' virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'This is a smal=
l set of various PaX aware and related utilities for ELF binaries. It can c=
heck ELF binary files and running processes for issues that might be releva=
nt when using ELF binaries along with PaX, such as non-PIC code or executab=
le stack and heap.', 'ErrAccess', 'N/A', 'http://gentoo.osuosl.org/distfile=
s/pax-utils-0.8.1.tar.xz', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (pax-utils,0.8.1,N/A,GPLv2+,base,r0,None,http://www.gentoo.org/pro=
j/en/hardened/pax-utils.xml,None,ErrAccess, virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  ,This is a small set of var=
ious PaX aware and related utilities for ELF binaries. It can check ELF bin=
ary files and running processes for issues that might be relevant when usin=
g ELF binaries along with PaX, such as non-PIC code or executable stack and=
 heap.,N/A,http://gentoo.osuosl.org/distfiles/pax-utils-0.8.1.tar.xz,Hongxu=
 Jia <hongxu.jia@windriver.com>)
['ppp', '2.4.6', 'N/A', 'BSD & GPLv2+ & LGPLv2+ & PD', 'console/network', '=
http://samba.org/ppp/', 'r0', 'autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  libpcap', 'http://ppp.samba.org/cgi=
-bin/ppp-bugs', 'None', "ppp (Paul's PPP Package) is an open source package=
 which implements the Point-to-Point Protocol (PPP) on Linux and Solaris sy=
stems.", 'ErrAccess', 'N/A', 'http://ppp.samba.org/ftp/ppp/ppp-2.4.6.tar.gz=
', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (ppp,2.4.6,N/A,BSD & GPLv2+ & LGPLv2+ & PD,console/network,r0,None=
,http://samba.org/ppp/,http://ppp.samba.org/cgi-bin/ppp-bugs,ErrAccess,auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  libpcap,ppp (Paul's PPP Package) is an open source package which imple=
ments the Point-to-Point Protocol (PPP) on Linux and Solaris systems.,N/A,h=
ttp://ppp.samba.org/ftp/ppp/ppp-2.4.6.tar.gz,Hongxu Jia <hongxu.jia@windriv=
er.com>)
['watchdog', '5.14', 'N/A', 'GPL-2.0+', 'base', 'http://watchdog.sourceforg=
e.net/', 'r0', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  ', 'http://sourceforge.net/tracker/?group_id=3D172=
030&atid=3D860194', 'None', 'Watchdog is a daemon that checks if your syste=
m is still working. If programs in user space are not longer executed it wi=
ll reboot the system.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge.n=
et/watchdog/watchdog-5.14.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None=
']
inserted (watchdog,5.14,N/A,GPL-2.0+,base,r0,None,http://watchdog.sourcefor=
ge.net/,http://sourceforge.net/tracker/?group_id=3D172030&atid=3D860194,Err=
Access,autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  ,Watchdog is a daemon that checks if your system is still w=
orking. If programs in user space are not longer executed it will reboot th=
e system.,N/A,http://downloads.sourceforge.net/watchdog/watchdog-5.14.tar.g=
z,Saul Wold <sgw@linux.intel.com>)
['nss', '3.17.2', 'N/A', 'MPL-2.0 | (MPL-2.0 & GPL-2.0+) | (MPL-2.0 & LGPL-=
2.1+)', 'libs', 'http://www.mozilla.org/projects/security/pki/nss/', 'r0', =
' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  sqlite3 nspr zlib nss-native', 'None', 'None', 'Network Security Serv=
ices (NSS) is a set of libraries designed to support cross-platform develop=
ment of security-enabled client and server applications. Applications built=
 with NSS can support SSL v2 and v3, TLS, PKCS 5, PKCS 7, PKCS 11, PKCS 12,=
 S/MIME, X.509 v3 certificates, and other security standards.', 'ErrAccess'=
, 'N/A', 'http://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_=
3_17_2_RTM/src/nss-3.17.2.tar.gz', 'None', 'None']
inserted (nss,3.17.2,N/A,MPL-2.0 | (MPL-2.0 & GPL-2.0+) | (MPL-2.0 & LGPL-2=
=2E1+),libs,r0,None,http://www.mozilla.org/projects/security/pki/nss/,None,=
ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  sqlite3 nspr zlib nss-native,Network Security Services (NSS)=
 is a set of libraries designed to support cross-platform development of se=
curity-enabled client and server applications. Applications built with NSS =
can support SSL v2 and v3, TLS, PKCS 5, PKCS 7, PKCS 11, PKCS 12, S/MIME, X=
=2E509 v3 certificates, and other security standards.,N/A,http://ftp.mozill=
a.org/pub/mozilla.org/security/nss/releases/NSS_3_17_2_RTM/src/nss-3.17.2.t=
ar.gz,None)
['gst-plugins-base', '0.10.36', 'N/A', 'GPLv2+ & LGPLv2+', 'multimedia', 'h=
ttp://gstreamer.freedesktop.org/', 'r8', 'pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native virtual/gett=
ext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  gstreamer alsa-lib liboil libogg libvorbis libtheor=
a util-linux tremor glib-2.0-native virtual/libx11 libxv libsm libice', 'ht=
tps://bugzilla.gnome.org/enter_bug.cgi?product=3DGstreamer', 'None', 'Plugi=
ns for the GStreamer multimedia framework.', 'ErrAccess', 'N/A', 'http://gs=
treamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-0.10.36.tar.b=
z2', 'Cristian Iorga <cristian.iorga@intel.com>', 'not compatible with gst-=
fluendo 0.10.x']
inserted (gst-plugins-base,0.10.36,N/A,GPLv2+ & LGPLv2+,multimedia,r8,None,=
http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/enter_bug.cgi?=
product=3DGstreamer,ErrAccess,pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native virtual/gettext gettext-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  gstreamer alsa-lib liboil libogg libvorbis libtheora util-linux=
 tremor glib-2.0-native virtual/libx11 libxv libsm libice,Plugins for the G=
Streamer multimedia framework.,N/A,http://gstreamer.freedesktop.org/src/gst=
-plugins-base/gst-plugins-base-0.10.36.tar.bz2,Cristian Iorga <cristian.ior=
ga@intel.com>)
['xvinfo', '1.1.2', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros-native virtual/libx11  libxv', 'ht=
tps://bugs.freedesktop.org', '1', 'xvinfo prints out the capabilities of an=
y video adaptors associated with the display that are accessible through th=
e X-Video extension.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/rel=
eases/individual/app/xvinfo-1.1.2.tar.bz2', 'Ross Burton <ross.burton@intel=
=2Ecom>', 'None']
inserted (xvinfo,1.1.2,N/A,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https://=
bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native=
 virtual/libx11  libxv,xvinfo prints out the capabilities of any video adap=
tors associated with the display that are accessible through the X-Video ex=
tension.,N/A,http://xorg.freedesktop.org/releases/individual/app/xvinfo-1.1=
=2E2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['git', '2.0.1', 'N/A', 'GPLv2', 'console/utils', '', 'r0', 'autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  opens=
sl curl zlib expat perl-native', 'None', 'None', 'Distributed version contr=
ol system.', 'ErrAccess', 'N/A', 'http://kernel.org/pub/software/scm/git/gi=
t-2.0.1.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (git,2.0.1,N/A,GPLv2,console/utils,r0,None,,None,ErrAccess,autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  openssl curl zlib expat perl-native,Distributed version control system.,N=
/A,http://kernel.org/pub/software/scm/git/git-2.0.1.tar.gz,Robert Yang <lie=
zhi.yang@windriver.com>)
['initramfs-live-install', '1.0', '1.0', 'MIT', 'base', '', 'r9', ' ', 'Non=
e', 'None', 'Live image install script for grub.', 'MATCH', 'N/A', 'file://=
init-install.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-live-install,1.0,1.0,MIT,base,r9,None,,None,MATCH, ,Liv=
e image install script for grub.,N/A,file://init-install.sh,Saul Wold <sgw@=
linux.intel.com>)
['cronie', '1.4.12', 'N/A', 'ISC & BSD-3-Clause & BSD-2-Clause & GPLv2+', '=
utils', 'https://fedorahosted.org/cronie/', 'r0', 'autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   update-rc.d-na=
tive initscripts base-files base-passwd shadow-native shadow-sysroot shadow=
', 'mmaslano@redhat.com', 'None', 'Cronie contains the standard UNIX daemon=
 crond that runs specified programs at scheduled times and related tools. I=
t is based on the original cron and has security and configuration enhancem=
ents like the ability to use pam and SELinux.', 'ErrAccess', 'N/A', 'https:=
//fedorahosted.org/releases/c/r/cronie/cronie-1.4.12.tar.gz', 'Alejandro He=
rnandez <alejandro.hernandez@linux.intel.com>', 'None']
inserted (cronie,1.4.12,N/A,ISC & BSD-3-Clause & BSD-2-Clause & GPLv2+,util=
s,r0,None,https://fedorahosted.org/cronie/,mmaslano@redhat.com,ErrAccess,au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   update-rc.d-native initscripts base-files base-passwd shadow-native=
 shadow-sysroot shadow,Cronie contains the standard UNIX daemon crond that =
runs specified programs at scheduled times and related tools. It is based o=
n the original cron and has security and configuration enhancements like th=
e ability to use pam and SELinux.,N/A,https://fedorahosted.org/releases/c/r=
/cronie/cronie-1.4.12.tar.gz,Alejandro Hernandez <alejandro.hernandez@linux=
=2Eintel.com>)
['libacpi', '0.2', 'N/A', 'MIT', 'base', 'http://www.ngolde.de/libacpi.html=
', 'r6', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  ', 'None', 'None', 'General purpose shared library for progr=
ams gathering ACPI data on Linux. Thermal zones, battery infomration, fan i=
nformation and AC states are implemented.', 'ErrAccess', 'N/A', 'http://www=
=2Engolde.de/download/libacpi-0.2.tar.gz', 'An\xc3\xadbal Lim\xc3\xb3n <ani=
bal.limon@linux.intel.com>', 'None']
inserted (libacpi,0.2,N/A,MIT,base,r6,None,http://www.ngolde.de/libacpi.htm=
l,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ,General purpose shared library for programs gatherin=
g ACPI data on Linux. Thermal zones, battery infomration, fan information a=
nd AC states are implemented.,N/A,http://www.ngolde.de/download/libacpi-0.2=
=2Etar.gz,An?bal Lim?n <anibal.limon@linux.intel.com>)
['python-pycurl', '7.19.5', 'N/A', 'LGPLv2.1+ | MIT', 'devel/python', 'http=
://pycurl.sourceforge.net/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  curl python python-native python  =
python-native ', 'None', 'None', 'Python bindings for libcurl.', 'ErrAccess=
', 'N/A', 'http://pycurl.sourceforge.net/download/pycurl-7.19.5.tar.gz;name=
=3Darchive', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (python-pycurl,7.19.5,N/A,LGPLv2.1+ | MIT,devel/python,r0,None,htt=
p://pycurl.sourceforge.net/,None,ErrAccess, virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  curl python python-native p=
ython  python-native ,Python bindings for libcurl.,N/A,http://pycurl.source=
forge.net/download/pycurl-7.19.5.tar.gz;name=3Darchive,Richard Purdie <rich=
ard.purdie@linuxfoundation.org>)
['libxinerama', '1.1.3', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros libxext xineramaproto', 'https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Xinerama is a simp=
le library designed to interface the Xinerama Extension for retrieving info=
rmation about physical output devices which may be combined into a single l=
ogical X screen.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/release=
s/individual/lib/libXinerama-1.1.3.tar.bz2', 'Ross Burton <ross.burton@inte=
l.com>', 'None']
inserted (libxinerama,1.1.3,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros libxext xineramaproto,Xinerama is a simple library d=
esigned to interface the Xinerama Extension for retrieving information abou=
t physical output devices which may be combined into a single logical X scr=
een.,N/A,http://xorg.freedesktop.org/releases/individual/lib/libXinerama-1.=
1.3.tar.bz2,Ross Burton <ross.burton@intel.com>)
['cairo', '1.12.16', 'N/A', 'MPL-1 & LGPLv2.1', 'libs', 'http://cairographi=
cs.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  libpng fontconfig pixman glib-2.0=
 zlib virtual/libx11 libsm libxrender libxext', 'http://bugs.freedesktop.or=
g', 'None', 'Cairo is a multi-platform library providing anti-aliased vecto=
r-based rendering for multiple target backends. Paths consist of line segme=
nts and cubic splines and can be rendered at any width with various join an=
d cap styles. All colors may be specified with optional translucence (opaci=
ty/alpha) and combined using the extended Porter/Duff compositing algebra a=
s found in the X Render Extension.', 'ErrAccess', 'N/A', 'http://cairograph=
ics.org/releases/cairo-1.12.16.tar.xz', 'Ross Burton <ross.burton@intel.com=
>', 'None']
inserted (cairo,1.12.16,N/A,MPL-1 & LGPLv2.1,libs,r0,None,http://cairograph=
ics.org,http://bugs.freedesktop.org,ErrAccess,pkgconfig-native autoconf-nat=
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
['x11-common', '0.1', '0.1', 'GPLv2', 'x11', '', 'r47', ' virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'N=
one', 'Common X11 scripts and configuration files.', 'MATCH', '1:7.6', 'fil=
e://etc            file://gplv2-license.patch', 'Ross Burton <ross.burton@i=
ntel.com>', 'None']
inserted (x11-common,0.1,0.1,GPLv2,x11,r47,None,,None,MATCH, virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Common X1=
1 scripts and configuration files.,1:7.6,file://etc            file://gplv2=
-license.patch,Ross Burton <ross.burton@intel.com>)
['groff', '1.22.2', 'N/A', 'GPLv3', 'base', 'ftp://ftp.gnu.org/gnu/groff/',=
 'r1', 'autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  groff-native texinfo-native', 'None', 'None', 'The groff (=
GNU troff) software is a typesetting package which reads plain text mixed w=
ith formatting commands and produces formatted output.', 'ErrAccess', 'N/A'=
, 'ftp://ftp.gnu.org/gnu/groff/groff-1.22.2.tar.gz', 'Hongxu Jia <hongxu.ji=
a@windriver.com>', '1.18.1.4 is latest GPLv2 Version no 1.21']
inserted (groff,1.22.2,N/A,GPLv3,base,r1,None,ftp://ftp.gnu.org/gnu/groff/,=
None,ErrAccess,autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  groff-native texinfo-native,The groff (GNU troff) s=
oftware is a typesetting package which reads plain text mixed with formatti=
ng commands and produces formatted output.,N/A,ftp://ftp.gnu.org/gnu/groff/=
groff-1.22.2.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['libart-lgpl', '2.3.21', 'N/A', 'LGPLv2', 'x11/gnome', '', 'r2', 'pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  ', 'None', 'None', 'Library of functions for 2D graphics.=
', 'ErrAccess', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/libart_lgpl/=
2.3/libart_lgpl-2.3.21.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'No=
ne']
inserted (libart-lgpl,2.3.21,N/A,LGPLv2,x11/gnome,r2,None,,None,ErrAccess,p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  ,Library of functions for 2D graphics.,N/A,http://=
ftp.gnome.org/pub/GNOME/sources/libart_lgpl/2.3/libart_lgpl-2.3.21.tar.bz2,=
Ross Burton <ross.burton@intel.com>)
['python3-distribute', '0.6.32', 'N/A', 'PSF', 'devel/python', 'http://pack=
ages.python.org/distribute', 'ml5', ' virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc   python3 python3-native python3  =
python3-native ', 'None', 'None', 'Download, build, install, upgrade, and u=
ninstall Python packages.', 'ErrAccess', 'N/A', 'http://pypi.python.org/pac=
kages/source/d/distribute/distribute-0.6.32.tar.gz', 'Khem Raj <raj.khem@gm=
ail.com>', 'None']
inserted (python3-distribute,0.6.32,N/A,PSF,devel/python,ml5,None,http://pa=
ckages.python.org/distribute,None,ErrAccess, virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc   python3 python3-native py=
thon3  python3-native ,Download, build, install, upgrade, and uninstall Pyt=
hon packages.,N/A,http://pypi.python.org/packages/source/d/distribute/distr=
ibute-0.6.32.tar.gz,Khem Raj <raj.khem@gmail.com>)
['xhost', '1.0.6', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros-native virtual/libx11 libxmu libxau',=
 'https://bugs.freedesktop.org', '1', 'The xhost program is used to add and=
 delete host names or user names to the list allowed to make connections to=
 the X server. In the case of hosts, this provides a rudimentary form of pr=
ivacy control and security. Environments which require more sophisticated m=
easures should implement the user-based mechanism or use the hooks in the p=
rotocol for passing other authentication data to the server.', 'ErrAccess',=
 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/xhost-1.0.6.ta=
r.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (xhost,1.0.6,N/A,MIT-X,x11/apps,r0,1,http://www.x.org/,https://bug=
s.freedesktop.org,ErrAccess,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros-native vi=
rtual/libx11 libxmu libxau,The xhost program is used to add and delete host=
 names or user names to the list allowed to make connections to the X serve=
r. In the case of hosts, this provides a rudimentary form of privacy contro=
l and security. Environments which require more sophisticated measures shou=
ld implement the user-based mechanism or use the hooks in the protocol for =
passing other authentication data to the server.,N/A,http://xorg.freedeskto=
p.org/releases/individual/app/xhost-1.0.6.tar.bz2,Ross Burton <ross.burton@=
intel.com>)
['directfb-examples', '1.7.0', 'N/A', 'MIT', 'libs', '', 'r0', 'pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  directfb', 'None', 'None', 'The DirectFB-examples package co=
ntains a set of simple DirectFB       applications that can be used to test=
 and demonstrate various DirectFB       features', 'ErrAccess', 'N/A', 'htt=
p://www.directfb.org/downloads/Extras/DirectFB-examples-1.7.0.tar.gz', 'Hon=
gxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (directfb-examples,1.7.0,N/A,MIT,libs,r0,None,,None,ErrAccess,pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  directfb,The DirectFB-examples package contains a set=
 of simple DirectFB       applications that can be used to test and demonst=
rate various DirectFB       features,N/A,http://www.directfb.org/downloads/=
Extras/DirectFB-examples-1.7.0.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['xinput-calibrator', '0.7.5+gitAUTOINC+c01c5af807', '0.4.1+gitAUTOINC+03da=
df5510', 'MIT-X', 'base', 'http://www.freedesktop.org/wiki/Software/xinput_=
calibrator', 'r6', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 libxi', 'None'=
, 'None', 'Touchscreen calibration program for X11.', 'UPDATE', 'N/A', 'git=
://github.com/tias/xinput_calibrator.git', 'Ross Burton <ross.burton@intel.=
com>', 'None']
inserted (xinput-calibrator,0.7.5+gitAUTOINC+c01c5af807,0.4.1+gitAUTOINC+03=
dadf5510,MIT-X,base,r6,None,http://www.freedesktop.org/wiki/Software/xinput=
_calibrator,None,UPDATE,pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 libxi,Touc=
hscreen calibration program for X11.,N/A,git://github.com/tias/xinput_calib=
rator.git,Ross Burton <ross.burton@intel.com>)
['libmpc', '1.0.2', 'N/A', 'LGPLv3', 'libs', 'http://www.multiprecision.org=
/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  gmp mpfr texinfo-native', 'None', 'None', 'Mpc is a C l=
ibrary for the arithmetic of complex numbers with arbitrarily high precisio=
n and correct rounding of the result. It is built upon and follows the same=
 principles as Mpfr', 'ErrAccess', 'N/A', 'http://www.multiprecision.org/mp=
c/download/mpc-1.0.2.tar.gz', 'Richard Purdie <richard.purdie@linuxfoundati=
on.org>', 'None']
inserted (libmpc,1.0.2,N/A,LGPLv3,libs,r0,None,http://www.multiprecision.or=
g/,None,ErrAccess,autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  gmp mpfr texinfo-native,Mpc is a C library for t=
he arithmetic of complex numbers with arbitrarily high precision and correc=
t rounding of the result. It is built upon and follows the same principles =
as Mpfr,N/A,http://www.multiprecision.org/mpc/download/mpc-1.0.2.tar.gz,Ric=
hard Purdie <richard.purdie@linuxfoundation.org>)
['oprofileui', '0.0+gitAUTOINC+389e1875af', '0.0+gitAUTOINC+389e1875af', 'G=
PLv2', 'x11', 'http://labs.o-hand.com/oprofileui/', 'r0', 'pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  glib-2.0 avahi intltool-native gtk+ libglade libxml2 avahi-ui gco=
nf', 'http://bugzilla.yoctoproject.org/', 'None', 'User interface for the O=
Profile tool', 'MATCH', 'N/A', 'git://git.yoctoproject.org/oprofileui', 'Ri=
chard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (oprofileui,0.0+gitAUTOINC+389e1875af,0.0+gitAUTOINC+389e1875af,GP=
Lv2,x11,r0,None,http://labs.o-hand.com/oprofileui/,http://bugzilla.yoctopro=
ject.org/,MATCH,pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  glib-2.0 avahi intltool-native gt=
k+ libglade libxml2 avahi-ui gconf,User interface for the OProfile tool,N/A=
,git://git.yoctoproject.org/oprofileui,Richard Purdie <richard.purdie@linux=
foundation.org>)
['taglib', '1.9.1', 'N/A', 'LGPLv2.1 | MPL-1', 'libs/multimedia', 'http://t=
aglib.github.io/', 'r0', 'pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native cmake-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib', 'No=
ne', 'None', 'Library for reading and editing the meta-data of popular audi=
o formats.', 'ErrAccess', 'N/A', 'http://taglib.github.io/releases/taglib-1=
=2E9.1.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (taglib,1.9.1,N/A,LGPLv2.1 | MPL-1,libs/multimedia,r0,None,http://=
taglib.github.io/,None,ErrAccess,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native cmake-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zli=
b,Library for reading and editing the meta-data of popular audio formats.,N=
/A,http://taglib.github.io/releases/taglib-1.9.1.tar.gz,Cristian Iorga <cri=
stian.iorga@intel.com>)
['debianutils', '4.4', 'N/A', 'GPLv2 & SMAIL_GPL', 'base', '', 'r0', 'autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc   virtual/update-alternatives', 'None', 'None', 'Miscellaneous utilities=
 specific to Debian.', 'ErrAccess', 'N/A', 'ftp://ftp.debian.org/debian/poo=
l/main/d/debianutils/debianutils_4.4.tar.gz', 'None', 'None']
inserted (debianutils,4.4,N/A,GPLv2 & SMAIL_GPL,base,r0,None,,None,ErrAcces=
s,autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc   virtual/update-alternatives,Miscellaneous utilities specific to=
 Debian.,N/A,ftp://ftp.debian.org/debian/pool/main/d/debianutils/debianutil=
s_4.4.tar.gz,None)
['gst-plugins-ugly', '0.10.19', 'N/A', 'GPLv2+ & LGPLv2.1+ & LGPLv2+', 'mul=
timedia', 'http://gstreamer.freedesktop.org/', 'r3', 'pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base libid3tag li=
bmad mpeg2dec liba52 lame', 'https://bugzilla.gnome.org/enter_bug.cgi?produ=
ct=3DGstreamer', 'None', 'Plugins for the GStreamer multimedia framework.',=
 'ErrAccess', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-plugins-ugly=
/gst-plugins-ugly-0.10.19.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.c=
om>', 'not compatible with gst-fluendo 0.10.x']
inserted (gst-plugins-ugly,0.10.19,N/A,GPLv2+ & LGPLv2.1+ & LGPLv2+,multime=
dia,r3,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/en=
ter_bug.cgi?product=3DGstreamer,ErrAccess,pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native virtual/gett=
ext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  gstreamer gst-plugins-base libid3tag libmad mpeg2de=
c liba52 lame,Plugins for the GStreamer multimedia framework.,N/A,http://gs=
treamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-0.10.19.tar.b=
z2,Cristian Iorga <cristian.iorga@intel.com>)
['sysvinit-inittab', '2.88dsf', '2.88dsf', 'GPLv2', 'base', '', 'r10', ' ',=
 'None', 'None', 'Inittab configuration for SysVinit.', 'MATCH', 'N/A', 'fi=
le://inittab', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (sysvinit-inittab,2.88dsf,2.88dsf,GPLv2,base,r10,None,,None,MATCH,=
 ,Inittab configuration for SysVinit.,N/A,file://inittab,Saul Wold <sgw@lin=
ux.intel.com>)
['libtheora', '1.1.1', 'N/A', 'BSD', 'libs', 'http://xiph.org/', 'r1', 'pkg=
config-native autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  libogg', 'https://trac.xiph.org/newticket', 'None', =
'The libtheora reference implementation provides the standard encoder and d=
ecoder under a BSD license.', 'ErrAccess', 'N/A', 'http://downloads.xiph.or=
g/releases/theora/libtheora-1.1.1.tar.bz2', 'Saul Wold <sgw@linux.intel.com=
>', '1.1.1 is latest stable release not 1.2.0alpha1']
inserted (libtheora,1.1.1,N/A,BSD,libs,r1,None,http://xiph.org/,https://tra=
c.xiph.org/newticket,ErrAccess,pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libogg,The libtheo=
ra reference implementation provides the standard encoder and decoder under=
 a BSD license.,N/A,http://downloads.xiph.org/releases/theora/libtheora-1.1=
=2E1.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['gptfdisk', '0.8.10+gitAUTOINC+a920398fa3', '0.8.10+gitAUTOINC+a920398fa3'=
, 'GPLv2', 'base', '', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-linux popt ncurses', 'None', 'None'=
, 'GPT fdisk is a disk partitioning tool loosely modeled on Linux fdisk, bu=
t used for modifying GUID Partition Table (GPT) disks. The related FixParts=
 utility fixes some common problems on Master Boot Record (MBR) disks.', 'M=
ATCH', 'N/A', 'git://git.code.sf.net/p/gptfdisk/code', 'None', 'None']
inserted (gptfdisk,0.8.10+gitAUTOINC+a920398fa3,0.8.10+gitAUTOINC+a920398fa=
3,GPLv2,base,r0,None,,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  util-linux popt ncurses,GPT fdisk is =
a disk partitioning tool loosely modeled on Linux fdisk, but used for modif=
ying GUID Partition Table (GPT) disks. The related FixParts utility fixes s=
ome common problems on Master Boot Record (MBR) disks.,N/A,git://git.code.s=
f.net/p/gptfdisk/code,None)
['attr', '2.4.47', 'N/A', 'LGPLv2.1+ & GPLv2+', 'libs', 'http://savannah.no=
ngnu.org/projects/attr/', 'r0', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  nc=
urses virtual/libintl', 'None', 'None', 'Utilities for manipulating filesys=
tem extended attributes.', 'ErrAccess', 'N/A', 'http://download.savannah.gn=
u.org/releases/attr/attr-2.4.47.src.tar.gz', 'Chong Lu <Chong.Lu@windriver.=
com>', 'None']
inserted (attr,2.4.47,N/A,LGPLv2.1+ & GPLv2+,libs,r0,None,http://savannah.n=
ongnu.org/projects/attr/,None,ErrAccess,autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native virtual/gettext gettext-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  ncurses virtual/libintl,Utilities for manipulating filesystem extended=
 attributes.,N/A,http://download.savannah.gnu.org/releases/attr/attr-2.4.47=
=2Esrc.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['cryptodev-tests', '1.6', 'N/A', 'GPLv2', 'base', 'http://cryptodev-linux.=
org/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc   openssl', 'None', 'None', 'A test suite for /dev/crypto=
 device driver.', 'ErrAccess', 'N/A', 'http://download.gna.org/cryptodev-li=
nux/cryptodev-linux-1.6.tar.gz', 'None', 'None']
inserted (cryptodev-tests,1.6,N/A,GPLv2,base,r0,None,http://cryptodev-linux=
=2Eorg/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc   openssl,A test suite for /dev/crypto device dr=
iver.,N/A,http://download.gna.org/cryptodev-linux/cryptodev-linux-1.6.tar.g=
z,None)
['gstreamer', '0.10.36', 'N/A', 'LGPLv2+', 'multimedia', 'http://gstreamer.=
freedesktop.org/', 'r2', 'pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  glib-2.0 libxml2 bison-native flex-native', 'https://bugzilla.gnome=
=2Eorg/enter_bug.cgi?product=3DGstreamer', 'None', 'GStreamer is a multimed=
ia framework for encoding and decoding video and sound. It supports a wide =
range of formats including mp3, ogg, avi, mpeg and quicktime.', 'ErrAccess'=
, 'N/A', 'http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-0.10.36.=
tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', ' not compatible wit=
h gst-fluendo 0.10.x ']
inserted (gstreamer,0.10.36,N/A,LGPLv2+,multimedia,r2,None,http://gstreamer=
=2Efreedesktop.org/,https://bugzilla.gnome.org/enter_bug.cgi?product=3DGstr=
eamer,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gl=
ib-2.0 libxml2 bison-native flex-native,GStreamer is a multimedia framework=
 for encoding and decoding video and sound. It supports a wide range of for=
mats including mp3, ogg, avi, mpeg and quicktime.,N/A,http://gstreamer.free=
desktop.org/src/gstreamer/gstreamer-0.10.36.tar.bz2,Cristian Iorga <cristia=
n.iorga@intel.com>)
['menu-cache', '0.4.1', 'N/A', 'GPLv2 & GPLv2+', 'x11/libs', 'http://lxde.s=
ourceforge.net/', 'r0', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 zlib gtk-doc-st=
ub-native', 'None', 'None', 'A library creating and utilizing caches to spe=
ed up freedesktop.org application menus', 'ErrAccess', 'N/A', 'http://downl=
oads.sourceforge.net/lxde/menu-cache-0.4.1.tar.gz', 'Ross Burton <ross.burt=
on@intel.com>', 'None']
inserted (menu-cache,0.4.1,N/A,GPLv2 & GPLv2+,x11/libs,r0,None,http://lxde.=
sourceforge.net/,None,ErrAccess,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 zlib gtk=
-doc-stub-native,A library creating and utilizing caches to speed up freede=
sktop.org application menus,N/A,http://downloads.sourceforge.net/lxde/menu-=
cache-0.4.1.tar.gz,Ross Burton <ross.burton@intel.com>)
['libnfsidmap', '0.25', 'N/A', 'BSD', 'libs', 'http://www.citi.umich.edu/pr=
ojects/nfsv4/linux/', 'r0', 'autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'NFS id mapping li=
brary.', 'ErrAccess', 'N/A', 'http://www.citi.umich.edu/projects/nfsv4/linu=
x/libnfsidmap/libnfsidmap-0.25.tar.gz', 'Paul Eggleton <paul.eggleton@linux=
=2Eintel.com>', 'None']
inserted (libnfsidmap,0.25,N/A,BSD,libs,r0,None,http://www.citi.umich.edu/p=
rojects/nfsv4/linux/,None,ErrAccess,autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  ,NFS id mapping library.,N/A,h=
ttp://www.citi.umich.edu/projects/nfsv4/linux/libnfsidmap/libnfsidmap-0.25.=
tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['initscripts', '1.0', '1.0', 'GPLv2', 'base', '', 'r155', '  update-rc.d-n=
ative  virtual/update-alternatives', 'None', 'None', 'Initscripts provide t=
he basic system startup initialization scripts for the system.  These scrip=
ts include actions such as filesystem mounting, fsck, RTC manipulation and =
other actions routinely performed at system startup.  In addition, the scri=
pts are also used during system shutdown to reverse the actions performed a=
t startup.', 'MATCH', '9.40', 'file://functions            file://halt     =
       file://umountfs            file://devpts.sh            file://devpts=
            file://hostname.sh            file://mountall.sh            fil=
e://banner.sh            file://bootmisc.sh            file://mountnfs.sh  =
          file://reboot            file://checkfs.sh            file://sing=
le            file://sendsigs            file://urandom            file://r=
mnologin.sh            file://checkroot.sh            file://umountnfs.sh  =
          file://sysfs.sh            file://populate-volatile.sh           =
 file://read-only-rootfs-hook.sh            file://volatiles            fil=
e://save-rtc.sh            file://GPLv2.patch            file://dmesg.sh   =
         file://logrotate-dmesg.conf ', 'Saul Wold <sgw@linux.intel.com>', =
'None']
inserted (initscripts,1.0,1.0,GPLv2,base,r155,None,,None,MATCH,  update-rc.=
d-native  virtual/update-alternatives,Initscripts provide the basic system =
startup initialization scripts for the system.  These scripts include actio=
ns such as filesystem mounting, fsck, RTC manipulation and other actions ro=
utinely performed at system startup.  In addition, the scripts are also use=
d during system shutdown to reverse the actions performed at startup.,9.40,=
file://functions            file://halt            file://umountfs         =
   file://devpts.sh            file://devpts            file://hostname.sh =
           file://mountall.sh            file://banner.sh            file:/=
/bootmisc.sh            file://mountnfs.sh            file://reboot        =
    file://checkfs.sh            file://single            file://sendsigs  =
          file://urandom            file://rmnologin.sh            file://c=
heckroot.sh            file://umountnfs.sh            file://sysfs.sh      =
      file://populate-volatile.sh            file://read-only-rootfs-hook.s=
h            file://volatiles            file://save-rtc.sh            file=
://GPLv2.patch            file://dmesg.sh            file://logrotate-dmesg=
=2Econf ,Saul Wold <sgw@linux.intel.com>)
['libfm', '1.1.2.2', 'N/A', 'GPLv2 & GPLv2+', 'x11/libs', 'http://pcmanfm.s=
ourceforge.net/', 'r0', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 pango gtk+ menu=
-cache intltool-native libexif gtk-doc-stub-native', 'None', 'None', 'Libra=
ry for file management.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge=
=2Enet/pcmanfm/libfm-1.1.2.2.tar.gz', 'Ross Burton <ross.burton@intel.com>'=
, 'None']
inserted (libfm,1.1.2.2,N/A,GPLv2 & GPLv2+,x11/libs,r0,None,http://pcmanfm.=
sourceforge.net/,None,ErrAccess,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 pango gt=
k+ menu-cache intltool-native libexif gtk-doc-stub-native,Library for file =
management.,N/A,http://downloads.sourceforge.net/pcmanfm/libfm-1.1.2.2.tar.=
gz,Ross Burton <ross.burton@intel.com>)
['libxrender', '0.9.8', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros virtual/libx11 renderproto xp=
roto xdmcp', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '=
1', 'The X Rendering Extension (Render) introduces digital image compositio=
n as the foundation of a new rendering model within the X Window System. Re=
ndering geometric figures is accomplished by client-side tessellation into =
either triangles or trapezoids.  Text is drawn by loading glyphs into the s=
erver and rendering sets of them.', 'ErrAccess', 'N/A', 'http://xorg.freede=
sktop.org/releases/individual/lib/libXrender-0.9.8.tar.bz2', 'Ross Burton <=
ross.burton@intel.com>', 'None']
inserted (libxrender,0.9.8,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  util-macros virtual/libx11 renderproto xproto xdmcp,The X R=
endering Extension (Render) introduces digital image composition as the fou=
ndation of a new rendering model within the X Window System. Rendering geom=
etric figures is accomplished by client-side tessellation into either trian=
gles or trapezoids.  Text is drawn by loading glyphs into the server and re=
ndering sets of them.,N/A,http://xorg.freedesktop.org/releases/individual/l=
ib/libXrender-0.9.8.tar.bz2,Ross Burton <ross.burton@intel.com>)
['prelink', '1.0+gitAUTOINC+faa069deec', '1.0+gitAUTOINC+3ceadf992d', 'GPLv=
2', 'devel', '', 'r0', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  elfutils binutils', 'None', 'None', 'The p=
relink package contains a utility which modifies ELF shared libraries and e=
xecutables, so that far fewer relocations need to be resolved at runtime an=
d thus programs come up faster.', 'UPDATE', '1.0+git1+9552f214c7faa816fdb55=
b289a457f0cab034f00', 'git://git.yoctoproject.org/prelink-cross.git;branch=
=3Dcross_prelink', 'Mark Hatle <mark.hatle@windriver.com>', 'None']
inserted (prelink,1.0+gitAUTOINC+faa069deec,1.0+gitAUTOINC+3ceadf992d,GPLv2=
,devel,r0,None,,None,UPDATE,autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  elfutils binutils,The prelink package =
contains a utility which modifies ELF shared libraries and executables, so =
that far fewer relocations need to be resolved at runtime and thus programs=
 come up faster.,1.0+git1+9552f214c7faa816fdb55b289a457f0cab034f00,git://gi=
t.yoctoproject.org/prelink-cross.git;branch=3Dcross_prelink,Mark Hatle <mar=
k.hatle@windriver.com>)
['autoconf', '2.69', 'N/A', 'GPLv2 & GPLv3', 'devel', 'http://www.gnu.org/s=
oftware/autoconf/', 'r11', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc   m4-native texinfo-native', 'None', 'N=
one', 'Autoconf is an extensible package of M4 macros that produce shell sc=
ripts to automatically configure software source code packages. Autoconf cr=
eates a configuration script for a package from a template file that lists =
the operating system features that the package can use, in the form of M4 m=
acro calls.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/autoconf/autoconf-=
2.69.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (autoconf,2.69,N/A,GPLv2 & GPLv3,devel,r11,None,http://www.gnu.org=
/software/autoconf/,None,ErrAccess,autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc   m4-native texinfo-native,Autoc=
onf is an extensible package of M4 macros that produce shell scripts to aut=
omatically configure software source code packages. Autoconf creates a conf=
iguration script for a package from a template file that lists the operatin=
g system features that the package can use, in the form of M4 macro calls.,=
N/A,ftp://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz,Robert Yang <liezhi=
=2Eyang@windriver.com>)
['json-glib', '1.0.0', 'N/A', 'LGPLv2.1', 'base', 'http://live.gnome.org/Js=
onGlib', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gl=
ib-2.0 gnome-common-native hicolor-icon-theme gtk-update-icon-cache-native =
gconf gconf-native shared-mime-info-native shared-mime-info', 'None', 'None=
', 'Use JSON-GLib it is possible to parse and generate valid JSON data stru=
ctures, using a DOM-like API. JSON-GLib also offers GObject integration, pr=
oviding the ability to serialize and deserialize GObject instances to and f=
rom JSON data types.', 'ErrAccess', 'N/A', 'http://ftp.gnome.org/pub/GNOME/=
sources/json-glib/1.0/json-glib-1.0.0.tar.xz;name=3Darchive', 'Ross Burton =
<ross.burton@intel.com>', 'None']
inserted (json-glib,1.0.0,N/A,LGPLv2.1,base,r0,None,http://live.gnome.org/J=
sonGlib,None,ErrAccess,pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native virtual/gettext gettext-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  glib-2.0 gnome-common-native hicolor-icon-theme gtk-update-icon-cache-=
native gconf gconf-native shared-mime-info-native shared-mime-info,Use JSON=
-GLib it is possible to parse and generate valid JSON data structures, usin=
g a DOM-like API. JSON-GLib also offers GObject integration, providing the =
ability to serialize and deserialize GObject instances to and from JSON dat=
a types.,N/A,http://ftp.gnome.org/pub/GNOME/sources/json-glib/1.0/json-glib=
-1.0.0.tar.xz;name=3Darchive,Ross Burton <ross.burton@intel.com>)
['mailx', '12.5', 'N/A', 'BSD & MPL-1', 'console/network', 'http://heirloom=
=2Esourceforge.net/mailx.html', 'r2', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  openssl', 'None', 'None', '=
Mailx is derived from Berkeley Mail and is intended provide the functionali=
ty of the POSIX mailx command with additional support for MIME, IMAP, POP3,=
 SMTP, and S/MIME.', 'ErrAccess', 'N/A', 'ftp://ftp.debian.org/debian/pool/=
main/h/heirloom-mailx/heirloom-mailx_12.5.orig.tar.gz;name=3Darchive', 'Kai=
 Kang <kai.kang@windriver.com>', 'None']
inserted (mailx,12.5,N/A,BSD & MPL-1,console/network,r2,None,http://heirloo=
m.sourceforge.net/mailx.html,None,ErrAccess,autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  openssl,Mailx is deriv=
ed from Berkeley Mail and is intended provide the functionality of the POSI=
X mailx command with additional support for MIME, IMAP, POP3, SMTP, and S/M=
IME.,N/A,ftp://ftp.debian.org/debian/pool/main/h/heirloom-mailx/heirloom-ma=
ilx_12.5.orig.tar.gz;name=3Darchive,Kai Kang <kai.kang@windriver.com>)
['distcc', '3.1', 'N/A', 'GPLv2', 'devel', '', 'r0', 'pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  avahi update-rc.d-native initscripts base-files base-passwd shadow-nat=
ive shadow-sysroot shadow gtk+ popt', 'None', 'None', 'distcc is a parallel=
 build system that distributes compilation of C/C++/ObjC code across machin=
es on a network.', 'ErrAccess', 'N/A', 'http://distcc.googlecode.com/files/=
distcc-3.1.tar.bz2', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (distcc,3.1,N/A,GPLv2,devel,r0,None,,None,ErrAccess,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  avahi update-rc.d-native initscripts base-files base-passwd sha=
dow-native shadow-sysroot shadow gtk+ popt,distcc is a parallel build syste=
m that distributes compilation of C/C++/ObjC code across machines on a netw=
ork.,N/A,http://distcc.googlecode.com/files/distcc-3.1.tar.bz2,Hongxu Jia <=
hongxu.jia@windriver.com>)
['usbutils', '007', 'N/A', 'GPLv2+', 'base', 'http://www.linux-usb.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libusb zlib v=
irtual/libiconv', 'None', 'None', 'Contains the lsusb utility for inspectin=
g the devices connected to the USB bus.', 'ErrAccess', '006', 'http://kerne=
l.org/pub/linux/utils/usb/usbutils/usbutils-007.tar.gz', 'Saul Wold <sgw@li=
nux.intel.com>', 'None']
inserted (usbutils,007,N/A,GPLv2+,base,r0,None,http://www.linux-usb.org,Non=
e,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libusb=
 zlib virtual/libiconv,Contains the lsusb utility for inspecting the device=
s connected to the USB bus.,006,http://kernel.org/pub/linux/utils/usb/usbut=
ils/usbutils-007.tar.gz,Saul Wold <sgw@linux.intel.com>)
['weston', '1.6.0', 'N/A', 'MIT', 'base', 'http://wayland.freedesktop.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  libxkbcommon gdk-pixbuf pixman cairo glib=
-2.0 jpeg wayland virtual/egl pango base-files base-passwd shadow-native sh=
adow-sysroot shadow virtual/egl udev mtdev drm udev virtual/mesa mtdev virt=
ual/mesa virtual/libx11 libxcb libxcb libxcursor cairo', 'None', 'None', 'W=
eston is the reference implementation of a Wayland compositor', 'ErrAccess'=
, 'N/A', 'http://wayland.freedesktop.org/releases/weston-1.6.0.tar.xz', 'Ro=
ss Burton <ross.burton@intel.com>', 'None']
inserted (weston,1.6.0,N/A,MIT,base,r0,None,http://wayland.freedesktop.org,=
None,ErrAccess,pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  libxkbcommon gdk-pixbuf pixman cai=
ro glib-2.0 jpeg wayland virtual/egl pango base-files base-passwd shadow-na=
tive shadow-sysroot shadow virtual/egl udev mtdev drm udev virtual/mesa mtd=
ev virtual/mesa virtual/libx11 libxcb libxcb libxcursor cairo,Weston is the=
 reference implementation of a Wayland compositor,N/A,http://wayland.freede=
sktop.org/releases/weston-1.6.0.tar.xz,Ross Burton <ross.burton@intel.com>)
['scrnsaverproto', '1.2.2', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org=
/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoc=
ol for the X Screen Saver extension.  This extension allows an external \\"=
screen saver\\" client to detect when the alternative image is to be displa=
yed and to provide the graphics.', 'ErrAccess', 'N/A', 'http://xorg.freedes=
ktop.org/releases/individual/proto/scrnsaverproto-1.2.2.tar.bz2', 'Ross Bur=
ton <ross.burton@intel.com>', 'None']
inserted (scrnsaverproto,1.2.2,N/A,MIT,x11/libs,r0,1,http://www.x.org,https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  util-macros,This package provides the wire protocol for the X=
 Screen Saver extension.  This extension allows an external \"screen saver\=
" client to detect when the alternative image is to be displayed and to pro=
vide the graphics.,N/A,http://xorg.freedesktop.org/releases/individual/prot=
o/scrnsaverproto-1.2.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['at', '3.1.16', 'N/A', 'GPLv2+', 'base', '', 'r0', 'autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex flex-nat=
ive             update-rc.d-native initscripts', 'None', 'None', 'At allows=
 for commands to be run at a particular time.  Batch will execute commands =
when the system load levels drop to a particular level.', 'ErrAccess', 'N/A=
', 'ftp://ftp.debian.org/debian/pool/main/a/at/at_3.1.16.orig.tar.gz', 'Cho=
ng Lu <Chong.Lu@windriver.com>', 'None']
inserted (at,3.1.16,N/A,GPLv2+,base,r0,None,,None,ErrAccess,autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex f=
lex-native             update-rc.d-native initscripts,At allows for command=
s to be run at a particular time.  Batch will execute commands when the sys=
tem load levels drop to a particular level.,N/A,ftp://ftp.debian.org/debian=
/pool/main/a/at/at_3.1.16.orig.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['file', '5.18', 'N/A', 'BSD', 'console/utils', 'http://www.darwinsys.com/f=
ile/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  zlib file-native', 'None', 'None', 'File attempts to=
 classify files depending on their contents and prints a description if a m=
atch is found.', 'ErrAccess', 'N/A', 'ftp://ftp.astron.com/pub/file/file-5.=
18.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (file,5.18,N/A,BSD,console/utils,r0,None,http://www.darwinsys.com/=
file/,None,ErrAccess,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  zlib file-native,File attempts to classify fi=
les depending on their contents and prints a description if a match is foun=
d.,N/A,ftp://ftp.astron.com/pub/file/file-5.18.tar.gz,Robert Yang <liezhi.y=
ang@windriver.com>)
['curl', '7.38.0', 'N/A', 'MIT', 'console/network', 'http://curl.haxx.se/',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc   gnutls zlib', 'http://curl.haxx.se/mail/=
list.cgi?list=3Dcurl-tracker', 'None', 'Command line tool and library for c=
lient-side URL transfers.', 'ErrAccess', 'N/A', 'http://curl.haxx.se/downlo=
ad/curl-7.38.0.tar.bz2', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (curl,7.38.0,N/A,MIT,console/network,r0,None,http://curl.haxx.se/,=
http://curl.haxx.se/mail/list.cgi?list=3Dcurl-tracker,ErrAccess,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc   gnutls zlib,Command line tool and library for client-side U=
RL transfers.,N/A,http://curl.haxx.se/download/curl-7.38.0.tar.bz2,Chen Qi =
<Qi.Chen@windriver.com>)
['libenv-perl', '1.04', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', 'http://s=
earch.cpan.org/~flora/Env/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   perl perl-native', 'None', 'None'=
, 'Perl maintains environment variables in a special hash named %ENV. For w=
hen this access method is inconvenient, the Perl module Env allows environm=
ent variables to be treated as scalar or array variables.', 'ErrAccess', 'N=
/A', 'http://search.cpan.org/CPAN/authors/id/F/FL/FLORA/Env-1.04.tar.gz', '=
Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libenv-perl,1.04,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,None,http://=
search.cpan.org/~flora/Env/,None,ErrAccess, virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native,Perl main=
tains environment variables in a special hash named %ENV. For when this acc=
ess method is inconvenient, the Perl module Env allows environment variable=
s to be treated as scalar or array variables.,N/A,http://search.cpan.org/CP=
AN/authors/id/F/FL/FLORA/Env-1.04.tar.gz,Saul Wold <sgw@linux.intel.com>)
['bzip2', '1.0.6', 'N/A', 'bzip2', 'console/utils', 'http://www.bzip.org/',=
 'r5', 'autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc   virtual/update-alternatives', 'None', 'None', 'bzip2 comp=
resses files using the Burrows-Wheeler block-sorting text compression algor=
ithm, and Huffman coding. Compression is generally considerably better than=
 that achieved by more conventional LZ77/LZ78-based compressors, and approa=
ches the performance of the PPM family of statistical compressors.', 'ErrAc=
cess', 'N/A', 'http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz', 'Chen Qi <Qi.=
Chen@windriver.com>', 'None']
inserted (bzip2,1.0.6,N/A,bzip2,console/utils,r5,None,http://www.bzip.org/,=
None,ErrAccess,autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc   virtual/update-alternatives,bzip2 compresses files=
 using the Burrows-Wheeler block-sorting text compression algorithm, and Hu=
ffman coding. Compression is generally considerably better than that achiev=
ed by more conventional LZ77/LZ78-based compressors, and approaches the per=
formance of the PPM family of statistical compressors.,N/A,http://www.bzip.=
org/1.0.6/bzip2-1.0.6.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['cmake', '2.8.12.2', 'N/A', 'BSD', 'console/utils', 'http://www.cmake.org/=
', 'r0', 'cmake-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc   curl expat zlib libarchive', 'http://publi=
c.kitware.com/Bug/my_view_page.php', 'None', 'Cross-platform, open-source m=
ake system.', 'ErrAccess', 'N/A', 'http://www.cmake.org/files/v2.8/cmake-2.=
8.12.2.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (cmake,2.8.12.2,N/A,BSD,console/utils,r0,None,http://www.cmake.org=
/,http://public.kitware.com/Bug/my_view_page.php,ErrAccess,cmake-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc   curl expat zlib libarchive,Cross-platform, open-source make system.,=
N/A,http://www.cmake.org/files/v2.8/cmake-2.8.12.2.tar.gz,Paul Eggleton <pa=
ul.eggleton@linux.intel.com>)
['nasm', '2.11.06', 'N/A', 'BSD-2-Clause', 'devel', '', 'r0', 'autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gro=
ff-native', 'None', 'None', 'General-purpose x86 assembler.', 'ErrAccess', =
'N/A', 'http://www.nasm.us/pub/nasm/releasebuilds/2.11.06/nasm-2.11.06.tar.=
bz2', 'Richard Purdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (nasm,2.11.06,N/A,BSD-2-Clause,devel,r0,None,,None,ErrAccess,autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  groff-native,General-purpose x86 assembler.,N/A,http://www.nasm.us/pub/=
nasm/releasebuilds/2.11.06/nasm-2.11.06.tar.bz2,Richard Purdie <richard.pur=
die@linuxfoundation.org>)
['gettext', '0.18.3.2', 'N/A', 'GPLv3+ & LGPL-2.1+', 'libs', 'http://www.gn=
u.org/software/gettext/gettext.html', 'r0', 'autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  gettext-native virtua=
l/libiconv expat texinfo-native', 'None', 'None', 'GNU gettext is a set of =
tools that provides a framework to help other programs produce multi-lingua=
l messages. These tools include a set of conventions about how programs sho=
uld be written to support message catalogs, a directory and file naming org=
anization for the message catalogs themselves, a runtime library supporting=
 the retrieval of translated messages, and a few stand-alone programs to ma=
ssage in various ways the sets of translatable and already translated strin=
gs.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/gettext/gettext-0.18.3.2.t=
ar.gz', 'Wenzong Fan <wenzong.fan@windriver.com>', 'None']
inserted (gettext,0.18.3.2,N/A,GPLv3+ & LGPL-2.1+,libs,r0,None,http://www.g=
nu.org/software/gettext/gettext.html,None,ErrAccess,autoconf-native automak=
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
['matchbox-keyboard', '0.0+gitAUTOINC+217f1bfe14', '0.0+gitAUTOINC+217f1bfe=
14', 'LGPLv2.1', 'x11', 'http://matchbox-project.org', 'r4', 'pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  qemu-native libfakekey expat li=
bxft gtk+ matchbox-panel-2', 'http://bugzilla.yoctoproject.org/', 'None', '=
Matchbox virtual keyboard for X11.', 'MATCH', 'N/A', 'git://git.yoctoprojec=
t.org/matchbox-keyboard;branch=3Dmatchbox-keyboard-0-1', 'Ross Burton <ross=
=2Eburton@intel.com>', 'None']
inserted (matchbox-keyboard,0.0+gitAUTOINC+217f1bfe14,0.0+gitAUTOINC+217f1b=
fe14,LGPLv2.1,x11,r4,None,http://matchbox-project.org,http://bugzilla.yocto=
project.org/,MATCH,pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native virtual/gettext gettext-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 qemu-native libfakekey expat libxft gtk+ matchbox-panel-2,Matchbox virtual=
 keyboard for X11.,N/A,git://git.yoctoproject.org/matchbox-keyboard;branch=
=3Dmatchbox-keyboard-0-1,Ross Burton <ross.burton@intel.com>)
['libtimedate-perl', '2.30', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', '', =
'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc   perl perl-native', 'None', 'None', 'Perl modules useful for ma=
nipulating date and time information.', 'ErrAccess', 'N/A', 'http://search.=
cpan.org/CPAN/authors/id/G/GB/GBARR/TimeDate-2.30.tar.gz', 'Richard Purdie =
<richard.purdie@linuxfoundation.org>', 'None']
inserted (libtimedate-perl,2.30,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,None,,N=
one,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc   perl perl-native,Perl modules useful for manipulating d=
ate and time information.,N/A,http://search.cpan.org/CPAN/authors/id/G/GB/G=
BARR/TimeDate-2.30.tar.gz,Richard Purdie <richard.purdie@linuxfoundation.or=
g>)
['glproto', '1.4.17', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/enter=
_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol for=
 the OpenGL-related extensions, used to enable the rendering of application=
s using OpenGL.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases=
/individual/proto/glproto-1.4.17.tar.bz2', 'Ross Burton <ross.burton@intel.=
com>', 'None']
inserted (glproto,1.4.17,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://bug=
s.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  util-macros,This package provides the wire protocol for the OpenGL-=
related extensions, used to enable the rendering of applications using Open=
GL.,N/A,http://xorg.freedesktop.org/releases/individual/proto/glproto-1.4.1=
7.tar.bz2,Ross Burton <ross.burton@intel.com>)
['sysklogd', '1.5', 'N/A', 'GPLv2+ & BSD', 'base', 'http://www.infodrom.org=
/projects/sysklogd/', 'r7', ' virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc   update-rc.d-native initscripts virtual/u=
pdate-alternatives', 'None', 'None', 'The sysklogd package implements two s=
ystem log daemons: syslogd, klogd', 'ErrAccess', 'N/A', 'http://www.infodro=
m.org/projects/sysklogd/download/sysklogd-1.5.tar.gz', 'Chen Qi <Qi.Chen@wi=
ndriver.com>', 'None']
inserted (sysklogd,1.5,N/A,GPLv2+ & BSD,base,r7,None,http://www.infodrom.or=
g/projects/sysklogd/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   update-rc.d-native initscripts vi=
rtual/update-alternatives,The sysklogd package implements two system log da=
emons: syslogd, klogd,N/A,http://www.infodrom.org/projects/sysklogd/downloa=
d/sysklogd-1.5.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['stat', '3.3', 'N/A', 'GPLv2', 'console/utils', '', 'r0', ' virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/u=
pdate-alternatives', 'None', 'None', 'Displays all information about a file=
 that the stat() call provides and all information about a filesystem that =
statfs() provides.', 'ErrAccess', 'N/A', 'ftp://metalab.unc.edu/pub/Linux/u=
tils/file/stat-3.3.tar.gz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (stat,3.3,N/A,GPLv2,console/utils,r0,None,,None,ErrAccess, virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   vi=
rtual/update-alternatives,Displays all information about a file that the st=
at() call provides and all information about a filesystem that statfs() pro=
vides.,N/A,ftp://metalab.unc.edu/pub/Linux/utils/file/stat-3.3.tar.gz,Chen =
Qi <Qi.Chen@windriver.com>)
['hostap-conf', '1.0', '1.0', 'GPLv2', 'kernel/modules', '', 'r15', ' ', 'N=
one', 'None', "PCMCIA-cs configuration files for wireless LAN cards based o=
n Intersil's Prism2/2.5/3 chipset.", 'MATCH', 'N/A', 'file://hostap_cs.moda=
lias            file://COPYING.patch', 'Cristian Iorga <cristian.iorga@inte=
l.com>', 'None']
inserted (hostap-conf,1.0,1.0,GPLv2,kernel/modules,r15,None,,None,MATCH, ,P=
CMCIA-cs configuration files for wireless LAN cards based on Intersil's Pri=
sm2/2.5/3 chipset.,N/A,file://hostap_cs.modalias            file://COPYING.=
patch,Cristian Iorga <cristian.iorga@intel.com>)
['inputproto', '2.3.1', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x=
=2Eorg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ut=
il-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1=
', 'This package provides the wire protocol for the X Input extension.  The=
 extension supports input devices other then the core X keyboard and pointe=
r.', 'ErrAccess', '2.2.99.1', 'http://xorg.freedesktop.org/releases/individ=
ual/proto/inputproto-2.3.1.tar.bz2', 'Ross Burton <ross.burton@intel.com>',=
 '2.2.99.1 is unstable']
inserted (inputproto,2.3.1,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.x.o=
rg,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros,This packa=
ge provides the wire protocol for the X Input extension.  The extension sup=
ports input devices other then the core X keyboard and pointer.,2.2.99.1,ht=
tp://xorg.freedesktop.org/releases/individual/proto/inputproto-2.3.1.tar.bz=
2,Ross Burton <ross.burton@intel.com>)
['rsync', '3.1.0', 'N/A', 'GPLv3+', 'console/network', 'http://rsync.samba.=
org/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  popt acl attr', 'http://rsync.samba.org/bugzilla.htm=
l', 'None', 'File synchronization tool.', 'ErrAccess', 'N/A', 'http://rsync=
=2Esamba.org/ftp/rsync/src/rsync-3.1.0.tar.gz', 'Robert Yang <liezhi.yang@w=
indriver.com>', 'None']
inserted (rsync,3.1.0,N/A,GPLv3+,console/network,r0,None,http://rsync.samba=
=2Eorg/,http://rsync.samba.org/bugzilla.html,ErrAccess,autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  popt acl at=
tr,File synchronization tool.,N/A,http://rsync.samba.org/ftp/rsync/src/rsyn=
c-3.1.0.tar.gz,Robert Yang <liezhi.yang@windriver.com>)
['lsbtest', '1.0', '1.0', 'GPLv2', 'console/utils', '', 'r3', ' virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'Non=
e', 'None', 'Automates Linux Standard Base (LSB) tests.', 'MATCH', '1.0', '=
file://LSB_Test.sh ', '', '   file://packages_list ', '', '   file://sessio=
n ', '', '   ', 'Yi Zhao <yi.zhao@windriver.com>', 'None']
inserted (lsbtest,1.0,1.0,GPLv2,console/utils,r3,None,,None,MATCH, virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Aut=
omates Linux Standard Base (LSB) tests.,1.0,file://LSB_Test.sh ,)
['intltool', '0.50.2', 'N/A', 'GPLv2', 'devel', '', 'r0', 'pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  libxml-parser-perl-native perl-native', 'None', 'None', 'Utility =
scripts for internationalizing XML.', 'ErrAccess', 'N/A', 'http://launchpad=
=2Enet/intltool/trunk/0.50.2/+download/intltool-0.50.2.tar.gz', 'Richard Pu=
rdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (intltool,0.50.2,N/A,GPLv2,devel,r0,None,,None,ErrAccess,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  libxml-parser-perl-native perl-native,Utility scripts for =
internationalizing XML.,N/A,http://launchpad.net/intltool/trunk/0.50.2/+dow=
nload/intltool-0.50.2.tar.gz,Richard Purdie <richard.purdie@linuxfoundation=
=2Eorg>)
['libogg', '1.3.2', 'N/A', 'BSD', 'libs', 'http://xiph.org/', 'r0', 'pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ', 'https://trac.xiph.org/newticket', 'None', 'libogg i=
s the bitstream and framing library for the Ogg project. It provides functi=
ons which are necessary to codec libraries like libvorbis.', 'ErrAccess', '=
N/A', 'http://downloads.xiph.org/releases/ogg/libogg-1.3.2.tar.xz', 'Cristi=
an Iorga <cristian.iorga@intel.com>', 'None']
inserted (libogg,1.3.2,N/A,BSD,libs,r0,None,http://xiph.org/,https://trac.x=
iph.org/newticket,ErrAccess,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  ,libogg is the bitstr=
eam and framing library for the Ogg project. It provides functions which ar=
e necessary to codec libraries like libvorbis.,N/A,http://downloads.xiph.or=
g/releases/ogg/libogg-1.3.2.tar.xz,Cristian Iorga <cristian.iorga@intel.com=
>)
['portmap', '6.0', 'N/A', 'BSD', 'console/network', 'http://neil.brown.name=
/portmap/', 'r9', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  virtual/fakeroot-native update-rc.d-native initscri=
pts tcp-wrappers', 'None', 'None', 'RPC program number mapper.', 'ErrAccess=
', 'N/A', 'http://www.sourcefiles.org/Networking/Tools/Miscellanenous/portm=
ap-6.0.tgz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (portmap,6.0,N/A,BSD,console/network,r9,None,http://neil.brown.nam=
e/portmap/,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  virtual/fakeroot-native update-rc.d-native i=
nitscripts tcp-wrappers,RPC program number mapper.,N/A,http://www.sourcefil=
es.org/Networking/Tools/Miscellanenous/portmap-6.0.tgz,Robert Yang <liezhi.=
yang@windriver.com>)
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
pe conversions for values passed between the two languages.", 'ErrAccess', =
'N/A', 'ftp://sourceware.org/pub/libffi/libffi-3.1.tar.gz', 'Saul Wold <sgw=
@linux.intel.com>', 'None']
inserted (libffi,3.1,N/A,MIT,base,r0,None,,None,ErrAccess,autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   texinfo=
-native,The `libffi' library provides a portable, high level programming in=
terface to various calling conventions.  This allows a programmer to call a=
ny function specified by a call interface description at run time. FFI stan=
ds for Foreign Function Interface.  A foreign function interface is the pop=
ular name for the interface that allows code written in one language to cal=
l code written in another language.  The `libffi' library really only provi=
des the lowest, machine dependent layer of a fully featured foreign functio=
n interface.  A layer must exist above `libffi' that handles type conversio=
ns for values passed between the two languages.,N/A,ftp://sourceware.org/pu=
b/libffi/libffi-3.1.tar.gz,Saul Wold <sgw@linux.intel.com>)
['readline', '6.3', 'N/A', 'GPLv3+', 'libs', '', 'r0', 'autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   ncurses t=
exinfo-native', 'None', 'None', 'The GNU Readline library provides a set of=
 functions for use by applications that allow users to edit command lines a=
s they are typed in. Both Emacs and vi editing modes are available. The Rea=
dline library includes  additional functions to maintain a list of previous=
ly-entered command lines, to recall and perhaps reedit those   lines, and p=
erform csh-like history expansion on previous commands.', 'ErrAccess', 'N/A=
', 'ftp://ftp.gnu.org/gnu/readline/readline-6.3.tar.gz;name=3Darchive', 'Ho=
ngxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (readline,6.3,N/A,GPLv3+,libs,r0,None,,None,ErrAccess,autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   nc=
urses texinfo-native,The GNU Readline library provides a set of functions f=
or use by applications that allow users to edit command lines as they are t=
yped in. Both Emacs and vi editing modes are available. The Readline librar=
y includes  additional functions to maintain a list of previously-entered c=
ommand lines, to recall and perhaps reedit those   lines, and perform csh-l=
ike history expansion on previous commands.,N/A,ftp://ftp.gnu.org/gnu/readl=
ine/readline-6.3.tar.gz;name=3Darchive,Hongxu Jia <hongxu.jia@windriver.com=
>)
['slang', '2.2.4', 'N/A', 'GPLv2', 'libs', 'http://www.jedsoft.org/slang/',=
 'r12', 'autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  pcre', 'None', 'None', "S-Lang is an interpreted language=
 and a programming library.  The S-Lang language was designed so that it ca=
n be easily embedded into a program to provide the program with a powerful =
extension language. The S-Lang library, provided in this package, provides =
the S-Lang extension language.  S-Lang's syntax resembles C, which makes it=
 easy to recode S-Lang procedures in C if you need to.", 'ErrAccess', 'N/A'=
, 'ftp://space.mit.edu/pub/davis/slang/v2.2/slang-2.2.4.tar.bz2', 'Kai Kang=
 <kai.kang@windriver.com>', 'None']
inserted (slang,2.2.4,N/A,GPLv2,libs,r12,None,http://www.jedsoft.org/slang/=
,None,ErrAccess,autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  pcre,S-Lang is an interpreted language and a progr=
amming library.  The S-Lang language was designed so that it can be easily =
embedded into a program to provide the program with a powerful extension la=
nguage. The S-Lang library, provided in this package, provides the S-Lang e=
xtension language.  S-Lang's syntax resembles C, which makes it easy to rec=
ode S-Lang procedures in C if you need to.,N/A,ftp://space.mit.edu/pub/davi=
s/slang/v2.2/slang-2.2.4.tar.bz2,Kai Kang <kai.kang@windriver.com>)
['sato-icon-theme', '0.4.1', 'N/A', 'CC-BY-SA-3.0', 'x11', 'http://www.o-ha=
nd.com', 'r6', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive gnu-config-native  icon-naming-utils-native libxml-simple-perl-native =
hicolor-icon-theme gtk-update-icon-cache-native perl-native', 'http://bugzi=
lla.yoctoproject.org/', 'None', 'Sato icon theme.', 'ErrAccess', 'N/A', 'ht=
tp://pokylinux.org/releases/sato/sato-icon-theme-0.4.1.tar.gz', 'Alejandro =
Hernandez <alejandro.hernandez@linux.intel.com>', 'None']
inserted (sato-icon-theme,0.4.1,N/A,CC-BY-SA-3.0,x11,r6,None,http://www.o-h=
and.com,http://bugzilla.yoctoproject.org/,ErrAccess,pkgconfig-native autoco=
nf-native automake-native libtool-native gnu-config-native  icon-naming-uti=
ls-native libxml-simple-perl-native hicolor-icon-theme gtk-update-icon-cach=
e-native perl-native,Sato icon theme.,N/A,http://pokylinux.org/releases/sat=
o/sato-icon-theme-0.4.1.tar.gz,Alejandro Hernandez <alejandro.hernandez@lin=
ux.intel.com>)
['mobile-broadband-provider-info', '20140618+gitrAUTOINC+d06ebd314a', '2012=
0614+gitAUTOINC+40cfb36741', 'PD', 'network', '', 'r0', 'autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None'=
, '1', 'Mobile Broadband Service Provider Database.', 'UPDATE', 'N/A', 'git=
://git.gnome.org/mobile-broadband-provider-info', 'Saul Wold <sgw@linux.int=
el.com>', 'None']
inserted (mobile-broadband-provider-info,20140618+gitrAUTOINC+d06ebd314a,20=
120614+gitAUTOINC+40cfb36741,PD,network,r0,1,,None,UPDATE,autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Mobile =
Broadband Service Provider Database.,N/A,git://git.gnome.org/mobile-broadba=
nd-provider-info,Saul Wold <sgw@linux.intel.com>)
['cdrtools-native', '3.01a20', 'N/A', 'GPLv2 & CDDL-1.0 & LGPLv2.1+', 'cons=
ole/utils', 'http://cdrecord.berlios.de/private/cdrecord.html', 'r0', ' ', =
'None', 'None', 'A set of tools for CD recording, including cdrecord.', 'Er=
rAccess', 'N/A', 'ftp://ftp.berlios.de/pub/cdrecord/alpha/cdrtools-3.01a20.=
tar.bz2', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (cdrtools-native,3.01a20,N/A,GPLv2 & CDDL-1.0 & LGPLv2.1+,console/=
utils,r0,None,http://cdrecord.berlios.de/private/cdrecord.html,None,ErrAcce=
ss, ,A set of tools for CD recording, including cdrecord.,N/A,ftp://ftp.ber=
lios.de/pub/cdrecord/alpha/cdrtools-3.01a20.tar.bz2,Paul Eggleton <paul.egg=
leton@linux.intel.com>)
['dmxproto', '2.3.1', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/enter=
_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol for=
 the DMX extension.  The DMX extension provides support for communication w=
ith and control of Xdmx server.  Attributes of the Xdmx server and of the b=
ack-end screens attached to the server can be queried and modified via this=
 protocol.', 'ErrAccess', 'N/A', 'http://xorg.freedesktop.org/releases/indi=
vidual/proto/dmxproto-2.3.1.tar.bz2', 'Ross Burton <ross.burton@intel.com>'=
, 'None']
inserted (dmxproto,2.3.1,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://bug=
s.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrAccess,pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  util-macros,This package provides the wire protocol for the DMX ext=
ension.  The DMX extension provides support for communication with and cont=
rol of Xdmx server.  Attributes of the Xdmx server and of the back-end scre=
ens attached to the server can be queried and modified via this protocol.,N=
/A,http://xorg.freedesktop.org/releases/individual/proto/dmxproto-2.3.1.tar=
=2Ebz2,Ross Burton <ross.burton@intel.com>)
['diffutils', '3.3', 'N/A', 'GPLv3+', 'base', '', 'r0', 'autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native virtual/gettex=
t gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc   texinfo-native virtual/update-alternatives', 'None',=
 'None', 'Diffutils contains the GNU diff, diff3, sdiff, and cmp utilities.=
 These programs are usually used for creating patch files.', 'ErrAccess', '=
N/A', 'ftp://ftp.gnu.org/gnu/diffutils/diffutils-3.3.tar.xz', 'Chong Lu <Ch=
ong.Lu@windriver.com>', 'None']
inserted (diffutils,3.3,N/A,GPLv3+,base,r0,None,,None,ErrAccess,autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native virtual=
/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc   texinfo-native virtual/update-alternatives,Di=
ffutils contains the GNU diff, diff3, sdiff, and cmp utilities. These progr=
ams are usually used for creating patch files.,N/A,ftp://ftp.gnu.org/gnu/di=
ffutils/diffutils-3.3.tar.xz,Chong Lu <Chong.Lu@windriver.com>)
['pseudo', '1.6.2', 'N/A', 'LGPL2.1', 'base', 'http://git.yoctoproject.org/=
cgit/cgit.cgi/pseudo', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  sqlite3 attr', 'None', 'None', 'Pseudo g=
ives fake root capabilities to a normal user.', 'ErrAccess', 'N/A', 'http:/=
/www.yoctoproject.org/downloads/pseudo/pseudo-1.6.2.tar.bz2', 'Mark Hatle <=
mark.hatle@windriver.com>', 'None']
inserted (pseudo,1.6.2,N/A,LGPL2.1,base,r0,None,http://git.yoctoproject.org=
/cgit/cgit.cgi/pseudo,None,ErrAccess, virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  sqlite3 attr,Pseudo gives fake ro=
ot capabilities to a normal user.,N/A,http://www.yoctoproject.org/downloads=
/pseudo/pseudo-1.6.2.tar.bz2,Mark Hatle <mark.hatle@windriver.com>)
['pulseaudio', '5.0', 'N/A', 'GPLv2+ & LGPLv2.1', 'libs/multimedia', 'http:=
//www.pulseaudio.org', 'r0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native virtual/gettext gettext-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  libatomics-ops liboil libsamplerate0 libsndfile1 libtool udev a=
lsa-lib glib-2.0 dbus gconf json-c gdbm speex libxml-parser-perl-native lib=
cap perl-native base-files base-passwd shadow-native shadow-sysroot shadow =
avahi bluez4 sbc virtual/libx11 libxtst libice libsm libxcb', 'None', 'None=
', 'Sound server for Linux and Unix-like operating systems.', 'ErrAccess', =
'N/A', 'http://freedesktop.org/software/pulseaudio/releases/pulseaudio-5.0.=
tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (pulseaudio,5.0,N/A,GPLv2+ & LGPLv2.1,libs/multimedia,r0,None,http=
://www.pulseaudio.org,None,ErrAccess,pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native virtual/gettext g=
ettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  libatomics-ops liboil libsamplerate0 libsndfile1 libtool=
 udev alsa-lib glib-2.0 dbus gconf json-c gdbm speex libxml-parser-perl-nat=
ive libcap perl-native base-files base-passwd shadow-native shadow-sysroot =
shadow avahi bluez4 sbc virtual/libx11 libxtst libice libsm libxcb,Sound se=
rver for Linux and Unix-like operating systems.,N/A,http://freedesktop.org/=
software/pulseaudio/releases/pulseaudio-5.0.tar.xz,Cristian Iorga <cristian=
=2Eiorga@intel.com>)
['e2fsprogs', '1.42.9', 'N/A', 'GPLv2 & LGPLv2 & BSD & MIT', 'base', 'http:=
//e2fsprogs.sourceforge.net/', 'r0', 'pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native virtual/gettext =
gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  util-linux texinfo-native virtual/update-alternatives',=
 'None', 'None', 'The Ext2 Filesystem Utilities (e2fsprogs) contain all of =
the standard utilities for creating, fixing, configuring , and debugging ex=
t2 filesystems.', 'ErrAccess', 'N/A', 'http://downloads.sourceforge.net/e2f=
sprogs/e2fsprogs-1.42.9.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>',=
 'None']
inserted (e2fsprogs,1.42.9,N/A,GPLv2 & LGPLv2 & BSD & MIT,base,r0,None,http=
://e2fsprogs.sourceforge.net/,None,ErrAccess,pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native virtual/g=
ettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  util-linux texinfo-native virtual/update-alterna=
tives,The Ext2 Filesystem Utilities (e2fsprogs) contain all of the standard=
 utilities for creating, fixing, configuring , and debugging ext2 filesyste=
ms.,N/A,http://downloads.sourceforge.net/e2fsprogs/e2fsprogs-1.42.9.tar.gz,=
Robert Yang <liezhi.yang@windriver.com>)
['libdumpvalue-perl', '1.17', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', 'ht=
tp://search.cpan.org/~flora/Dumpvalue/', 'r0', ' virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native', 'N=
one', 'None', 'Perl module for provides screen dump of Perl data.', 'ErrAcc=
ess', 'N/A', 'http://search.cpan.org/CPAN/authors/id/F/FL/FLORA/Dumpvalue-1=
=2E17.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libdumpvalue-perl,1.17,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,None,h=
ttp://search.cpan.org/~flora/Dumpvalue/,None,ErrAccess, virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-nati=
ve,Perl module for provides screen dump of Perl data.,N/A,http://search.cpa=
n.org/CPAN/authors/id/F/FL/FLORA/Dumpvalue-1.17.tar.gz,Saul Wold <sgw@linux=
=2Eintel.com>)
['libmatchbox', '1.11', 'N/A', 'LGPLv2+', 'x11/libs', 'http://matchbox-proj=
ect.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 libxext jpeg lib=
png libxft libxsettings-client', 'http://bugzilla.yoctoproject.com/', 'None=
', 'Matchbox window manager core library.', 'ErrAccess', 'N/A', 'http://dow=
nloads.yoctoproject.org/releases/matchbox/libmatchbox/1.11/libmatchbox-1.11=
=2Etar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libmatchbox,1.11,N/A,LGPLv2+,x11/libs,r0,None,http://matchbox-pro=
ject.org/,http://bugzilla.yoctoproject.com/,ErrAccess,pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  virtual/libx11 libxext jpeg libpng libxft libxsettings-client,Matchbox=
 window manager core library.,N/A,http://downloads.yoctoproject.org/release=
s/matchbox/libmatchbox/1.11/libmatchbox-1.11.tar.bz2,Ross Burton <ross.burt=
on@intel.com>)
['presentproto', '1.0+gitAUTOINC+24f3a56e54', '1.0+gitAUTOINC+ef84007fc4', =
'GPLv2', 'x11/libs', 'http://www.x.org', 'r0', 'pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  u=
til-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '=
None', 'The Present extension provides a way for applications to update the=
ir                window contents from a pixmap in a well defined fashion, =
synchronizing                with the display refresh and potentially using=
 a more efficient                mechanism than copying the contents of the=
 source pixmap.              ', 'UPDATE', 'N/A', 'git://anongit.freedesktop=
=2Eorg/git/xorg/proto/presentproto', 'Ross Burton <ross.burton@intel.com>',=
 'None']
inserted (presentproto,1.0+gitAUTOINC+24f3a56e54,1.0+gitAUTOINC+ef84007fc4,=
GPLv2,x11/libs,r0,None,http://www.x.org,https://bugs.freedesktop.org/enter_=
bug.cgi?product=3Dxorg,UPDATE,pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros,The Pre=
sent extension provides a way for applications to update their             =
   window contents from a pixmap in a well defined fashion, synchronizing  =
              with the display refresh and potentially using a more efficie=
nt                mechanism than copying the contents of the source pixmap.=
              ,N/A,git://anongit.freedesktop.org/git/xorg/proto/presentprot=
o,Ross Burton <ross.burton@intel.com>)
['time', '1.7', 'N/A', 'GPLv2+', 'utils', 'http://www.gnu.org/software/time=
/', 'r2', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc   texinfo-native virtual/update-alternatives', 'None', '=
None', 'time measures many of the CPU resources, such as time and memory, t=
hat other programs use.', 'ErrAccess', 'N/A', 'ftp://ftp.gnu.org/gnu/time/t=
ime-1.7.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (time,1.7,N/A,GPLv2+,utils,r2,None,http://www.gnu.org/software/tim=
e/,None,ErrAccess,autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc   texinfo-native virtual/update-alternatives,time=
 measures many of the CPU resources, such as time and memory, that other pr=
ograms use.,N/A,ftp://ftp.gnu.org/gnu/time/time-1.7.tar.gz,Robert Yang <lie=
zhi.yang@windriver.com>)
['gnome-desktop-testing', '2014.1', 'N/A', 'LGPLv2+', 'base', 'https://wiki=
=2Egnome.org/GnomeGoals/InstalledTests', 'r0', 'pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  g=
lib-2.0', 'None', 'None', 'Test runner for GNOME-style installed tests.', '=
ErrAccess', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/gnome-desktop-te=
sting/2014.1/gnome-desktop-testing-2014.1.tar.xz', 'None', 'None']
inserted (gnome-desktop-testing,2014.1,N/A,LGPLv2+,base,r0,None,https://wik=
i.gnome.org/GnomeGoals/InstalledTests,None,ErrAccess,pkgconfig-native autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  glib-2.0,Test runner for GNOME-style installed tests.,N/A,http://ftp.gn=
ome.org/pub/GNOME/sources/gnome-desktop-testing/2014.1/gnome-desktop-testin=
g-2014.1.tar.xz,None)
['oprofile', '1.0.0', 'N/A', 'LGPLv2.1+ & GPLv2', 'devel', 'http://oprofile=
=2Esourceforge.net/news/', 'r0', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  popt binutils v=
irtual/kernel', 'http://sourceforge.net/tracker/?group_id=3D16191&atid=3D11=
6191', 'None', 'OProfile is a system-wide profiler for Linux systems, capab=
le of profiling all running code at low overhead.', 'ErrAccess', 'N/A', 'ht=
tp://downloads.sourceforge.net/oprofile/oprofile-1.0.0.tar.gz', 'Richard Pu=
rdie <richard.purdie@linuxfoundation.org>', 'None']
inserted (oprofile,1.0.0,N/A,LGPLv2.1+ & GPLv2,devel,r0,None,http://oprofil=
e.sourceforge.net/news/,http://sourceforge.net/tracker/?group_id=3D16191&at=
id=3D116191,ErrAccess,pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  popt binutils virtual/kerne=
l,OProfile is a system-wide profiler for Linux systems, capable of profilin=
g all running code at low overhead.,N/A,http://downloads.sourceforge.net/op=
rofile/oprofile-1.0.0.tar.gz,Richard Purdie <richard.purdie@linuxfoundation=
=2Eorg>)
['libksba', '1.3.1', 'N/A', 'GPLv2+ | LGPLv3+ | GPLv3+', 'base', 'http://ww=
w.gnupg.org/related_software/libksba/', 'r0', 'pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  li=
bgpg-error texinfo-native', 'None', 'None', 'Easy API to create and parse X=
=2E509 and CMS related objects.', 'ErrAccess', 'N/A', 'ftp://ftp.gnupg.org/=
gcrypt/libksba/libksba-1.3.1.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', '=
None']
inserted (libksba,1.3.1,N/A,GPLv2+ | LGPLv3+ | GPLv3+,base,r0,None,http://w=
ww.gnupg.org/related_software/libksba/,None,ErrAccess,pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  libgpg-error texinfo-native,Easy API to create and parse X.509 and CMS=
 related objects.,N/A,ftp://ftp.gnupg.org/gcrypt/libksba/libksba-1.3.1.tar.=
bz2,Saul Wold <sgw@linux.intel.com>)
['base-passwd', '3.5.29', 'N/A', 'GPLv2+', 'base', '', 'r0', 'autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', '=
None', 'None', 'The master copies of the user database files (/etc/passwd a=
nd /etc/group).  The update-passwd tool is also provided to keep the system=
 databases synchronized with these master files.', 'ErrAccess', 'N/A', 'ftp=
://ftp.debian.org/debian/pool/main/b/base-passwd/base-passwd_3.5.29.tar.gz'=
, 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (base-passwd,3.5.29,N/A,GPLv2+,base,r0,None,,None,ErrAccess,autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  ,The master copies of the user database files (/etc/passwd and /etc/grou=
p).  The update-passwd tool is also provided to keep the system databases s=
ynchronized with these master files.,N/A,ftp://ftp.debian.org/debian/pool/m=
ain/b/base-passwd/base-passwd_3.5.29.tar.gz,Saul Wold <sgw@linux.intel.com>)
['mpfr', '3.1.2', 'N/A', 'GPLv3 & LGPLv3', 'devel', 'http://www.mpfr.org/',=
 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  gmp texinfo-native', 'None', 'None', 'C library for multip=
le-precision floating-point computations with exact rounding.', 'ErrAccess'=
, 'N/A', 'http://www.mpfr.org/mpfr-3.1.2/mpfr-3.1.2.tar.xz', 'Richard Purdi=
e <richard.purdie@linuxfoundation.org>', 'None']
inserted (mpfr,3.1.2,N/A,GPLv3 & LGPLv3,devel,r0,None,http://www.mpfr.org/,=
None,ErrAccess,autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  gmp texinfo-native,C library for multiple-precision=
 floating-point computations with exact rounding.,N/A,http://www.mpfr.org/m=
pfr-3.1.2/mpfr-3.1.2.tar.xz,Richard Purdie <richard.purdie@linuxfoundation.=
org>)

Database update successful!
Now updating pkgrecord table and generate new upgr_hist table, please wait =
a minute......
milestone_target_to_db.py date_parameter =3D 2014-10-15
['milestone_target_to_db.py', '2014-10-15']
SERVER_PATH: /srv/www/vhosts/packages.yoctoproject.org/python-function/../n=
ewserver/webserver/
Database update successful!
REPORT-SYSTEM-UPDATE ERROR: Didn't draw chart because some failures happend=
 before
Any problem, please contact Saul Wold <sgw@linux.intel.com>=20

--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--bg08WKrSYDhXBjb5--
