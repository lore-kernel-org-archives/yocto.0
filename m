Return-Path: <packages@packages.i.yoctoproject.org>
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 630D2E00474
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 14:22:07 -0700 (PDT)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 58245A401E; Tue, 22 Apr 2014 21:22:07 +0000 (UTC)
Date: Tue, 22 Apr 2014 21:22:07 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20140422212207.GA5008@packages.i.yoctoproject.org>
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
X-List-Received-Date: Tue, 22 Apr 2014 21:22:07 -0000
X-Groupsio-MsgNum: 19147
Content-Type: multipart/mixed; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline

--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

warning: templates not found /srv/home/halstead/poky/build/tmp/sysroots/x86=
_64-linux/usr/share/git-core/templates
Cloning into 'poky.packages'...
Checking connectivity... done
Already up-to-date.
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
['busybox', '1.22.1', 'N/A', 'GPLv2 & bzip2', 'base', 'http://www.busybox.n=
et', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc   kern-tools-native update-rc.d-native virtual/update-alter=
natives', 'https://bugs.busybox.net/', 'None', 'BusyBox combines tiny versi=
ons of many common UNIX utilities into a single small executable. It provid=
es minimalist replacements for most of the utilities you usually find in GN=
U fileutils, shellutils, etc. The utilities in BusyBox generally have fewer=
 options than their full-featured GNU cousins; however, the options that ar=
e included provide the expected functionality and behave very much like the=
ir GNU counterparts. BusyBox provides a fairly complete POSIX environment f=
or any small or embedded system.', 'ErrHostNoDir:/downloads/:-:busybox-1.22=
=2E1.tar.bz2:www.busybox.net/downloads/busybox-1.22.1.tar.bz2', 'N/A', 'htt=
p://www.busybox.net/downloads/busybox-1.22.1.tar.bz2;name=3Dtarball', 'Chen=
 Qi <Qi.Chen@windriver.com>', 'None']
inserted (busybox,1.22.1,N/A,GPLv2 & bzip2,base,r0,None,http://www.busybox.=
net,https://bugs.busybox.net/,ErrHostNoDir:/downloads/:-:busybox-1.22.1.tar=
=2Ebz2:www.busybox.net/downloads/busybox-1.22.1.tar.bz2, virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   kern-tools-na=
tive update-rc.d-native virtual/update-alternatives,BusyBox combines tiny v=
ersions of many common UNIX utilities into a single small executable. It pr=
ovides minimalist replacements for most of the utilities you usually find i=
n GNU fileutils, shellutils, etc. The utilities in BusyBox generally have f=
ewer options than their full-featured GNU cousins; however, the options tha=
t are included provide the expected functionality and behave very much like=
 their GNU counterparts. BusyBox provides a fairly complete POSIX environme=
nt for any small or embedded system.,N/A,http://www.busybox.net/downloads/b=
usybox-1.22.1.tar.bz2;name=3Dtarball,Chen Qi <Qi.Chen@windriver.com>)
['telepathy-mission-control', '5.16.1', 'N/A', 'LGPLv2.1+', 'libs', 'http:/=
/telepathy.freedesktop.org/wiki/Mission_Control/', 'r0', 'pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  libtelepathy dbus-glib gconf libxslt-native  python-native ', 'Non=
e', 'None', 'Central control for Telepathy IM connection managers.', 'ErrHo=
stNoDir:/releases/telepathy-mission-control/:-:telepathy-mission-control-5.=
16.1.tar.gz:telepathy.freedesktop.org/releases/telepathy-mission-control/te=
lepathy-mission-control-5.16.1.tar.gz', 'N/A', 'http://telepathy.freedeskto=
p.org/releases/telepathy-mission-control/telepathy-mission-control-5.16.1.t=
ar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (telepathy-mission-control,5.16.1,N/A,LGPLv2.1+,libs,r0,None,http:=
//telepathy.freedesktop.org/wiki/Mission_Control/,None,ErrHostNoDir:/releas=
es/telepathy-mission-control/:-:telepathy-mission-control-5.16.1.tar.gz:tel=
epathy.freedesktop.org/releases/telepathy-mission-control/telepathy-mission=
-control-5.16.1.tar.gz,pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  libtelepathy dbus-glib gco=
nf libxslt-native  python-native ,Central control for Telepathy IM connecti=
on managers.,N/A,http://telepathy.freedesktop.org/releases/telepathy-missio=
n-control/telepathy-mission-control-5.16.1.tar.gz,Cristian Iorga <cristian.=
iorga@intel.com>)
['pth', '2.0.7', 'N/A', 'GPLv2+', 'libs', 'http://www.gnu.org/software/pth/=
', 'r3', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'GNU Portable Thread=
s library.', 'ErrHostNoDir:/gnu/pth/:-:pth-2.0.7.tar.gz:ftp.gnu.org/gnu/pth=
/pth-2.0.7.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/pth/pth-2.0.7.tar.gz', 'S=
aul Wold <sgw@linux.intel.com>', 'None']
inserted (pth,2.0.7,N/A,GPLv2+,libs,r3,None,http://www.gnu.org/software/pth=
/,None,ErrHostNoDir:/gnu/pth/:-:pth-2.0.7.tar.gz:ftp.gnu.org/gnu/pth/pth-2.=
0.7.tar.gz,pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  ,GNU Portable Threads library.,N/A,ftp=
://ftp.gnu.org/gnu/pth/pth-2.0.7.tar.gz,Saul Wold <sgw@linux.intel.com>)
['iputils', 's20121221', 'N/A', 'BSD & GPLv2+', 'console/network', 'http://=
www.skbuff.net/iputils', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  gnutls docbook-utils-native sgmlspl-na=
tive libcap virtual/update-alternatives', 'None', 'None', 'Utilities for th=
e IP protocol, including traceroute6, tracepath, tracepath6, ping, ping6 an=
d arping.', 'ErrHostNoDir:/iputils/:-:iputils-s20121221.tar.bz2:www.skbuff.=
net/iputils/iputils-s20121221.tar.bz2', 'N/A', 'http://www.skbuff.net/iputi=
ls/iputils-s20121221.tar.bz2', 'Cristiana Voicu <cristiana.voicu@intel.com>=
', 'None']
inserted (iputils,s20121221,N/A,BSD & GPLv2+,console/network,r0,None,http:/=
/www.skbuff.net/iputils,None,ErrHostNoDir:/iputils/:-:iputils-s20121221.tar=
=2Ebz2:www.skbuff.net/iputils/iputils-s20121221.tar.bz2, virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gnutls docbook=
-utils-native sgmlspl-native libcap virtual/update-alternatives,Utilities f=
or the IP protocol, including traceroute6, tracepath, tracepath6, ping, pin=
g6 and arping.,N/A,http://www.skbuff.net/iputils/iputils-s20121221.tar.bz2,=
Cristiana Voicu <cristiana.voicu@intel.com>)
['sysfsutils', '2.1.0', 'N/A', 'GPLv2 & LGPLv2.1', 'base', 'http://linux-di=
ag.sourceforge.net/Sysfsutils.html', 'r5', 'autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', "To=
ols for working with the sysfs virtual filesystem.  The tool 'systool' can =
query devices by bus, class and topology.", 'ErrHostNoDir:/linux-diag/:-:sy=
sfsutils-2.1.0.tar.gz:downloads.sourceforge.net/linux-diag/sysfsutils-2.1.0=
=2Etar.gz', 'N/A', 'http://downloads.sourceforge.net/linux-diag/sysfsutils-=
2.1.0.tar.gz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (sysfsutils,2.1.0,N/A,GPLv2 & LGPLv2.1,base,r5,None,http://linux-d=
iag.sourceforge.net/Sysfsutils.html,None,ErrHostNoDir:/linux-diag/:-:sysfsu=
tils-2.1.0.tar.gz:downloads.sourceforge.net/linux-diag/sysfsutils-2.1.0.tar=
=2Egz,autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  ,Tools for working with the sysfs virtual filesystem.  The t=
ool 'systool' can query devices by bus, class and topology.,N/A,http://down=
loads.sourceforge.net/linux-diag/sysfsutils-2.1.0.tar.gz,Chen Qi <Qi.Chen@w=
indriver.com>)
['qemu-helper-native', '1.0', 'INVALID', 'GPLv2', 'base', '', 'r1', ' ', 'N=
one', 'None', 'Helper utilities needed by the runqemu script.', 'MATCH', 'N=
/A', 'file://tunctl.c', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (qemu-helper-native,1.0,INVALID,GPLv2,base,r1,None,,None,MATCH, ,H=
elper utilities needed by the runqemu script.,N/A,file://tunctl.c,Cristian =
Iorga <cristian.iorga@intel.com>)
['python-dbus', '1.2.0', 'N/A', 'MIT', 'devel/python', 'http://www.freedesk=
top.org/Software/dbus', 'r0', 'pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  expat dbus dbus-gl=
ib virtual/libintl python-pyrex-native python-native python  python-native =
', 'None', 'None', 'Python bindings for the DBus inter-process communicatio=
n system.', 'ErrHostNoDir:/releases/dbus-python/:-:dbus-python-1.2.0.tar.gz=
:dbus.freedesktop.org/releases/dbus-python/dbus-python-1.2.0.tar.gz', 'N/A'=
, 'http://dbus.freedesktop.org/releases/dbus-python/dbus-python-1.2.0.tar.g=
z', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (python-dbus,1.2.0,N/A,MIT,devel/python,r0,None,http://www.freedes=
ktop.org/Software/dbus,None,ErrHostNoDir:/releases/dbus-python/:-:dbus-pyth=
on-1.2.0.tar.gz:dbus.freedesktop.org/releases/dbus-python/dbus-python-1.2.0=
=2Etar.gz,pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  expat dbus dbus-glib virtual/libintl py=
thon-pyrex-native python-native python  python-native ,Python bindings for =
the DBus inter-process communication system.,N/A,http://dbus.freedesktop.or=
g/releases/dbus-python/dbus-python-1.2.0.tar.gz,Laurentiu Palcu <laurentiu.=
palcu@intel.com>)
['swabber-native', '0.0+gitAUTOINC+2d1fe36fb0', '0.0+gitAUTOINC+2d1fe36', '=
GPLv2', 'base', 'http://git.yoctoproject.org/cgit/cgit.cgi/swabber', 'r0', =
' ', 'None', 'None', 'Tool to monitor and report on host system file usage.=
', 'MATCH', 'N/A', 'git://git.yoctoproject.org/swabber', 'Saul Wold <sgw@li=
nux.intel.com>', 'None']
inserted (swabber-native,0.0+gitAUTOINC+2d1fe36fb0,0.0+gitAUTOINC+2d1fe36,G=
PLv2,base,r0,None,http://git.yoctoproject.org/cgit/cgit.cgi/swabber,None,MA=
TCH, ,Tool to monitor and report on host system file usage.,N/A,git://git.y=
octoproject.org/swabber,Saul Wold <sgw@linux.intel.com>)
['gstreamer1.0-plugins-good', '1.2.3', 'N/A', 'GPLv2+ & LGPLv2.1+', 'multim=
edia', 'http://gstreamer.freedesktop.org/', 'r0', 'pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native vir=
tual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugins-base zli=
b bzip2 cairo flac gdk-pixbuf jpeg libpng orc pulseaudio libsoup-2.4 speex =
taglib virtual/libx11 libsm libxrender', 'https://bugzilla.gnome.org/enter_=
bug.cgi?product=3DGstreamer', 'None', 'Plugins for the GStreamer multimedia=
 framework 1.x.', 'ErrHostNoDir:/src/gst-plugins-good/:-:gst-plugins-good-1=
=2E2.3.tar.xz:gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-go=
od-1.2.3.tar.xz', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-plugins-=
good/gst-plugins-good-1.2.3.tar.xz', 'Cristian Iorga <cristian.iorga@intel.=
com>', 'None']
inserted (gstreamer1.0-plugins-good,1.2.3,N/A,GPLv2+ & LGPLv2.1+,multimedia=
,r0,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/enter=
_bug.cgi?product=3DGstreamer,ErrHostNoDir:/src/gst-plugins-good/:-:gst-plug=
ins-good-1.2.3.tar.xz:gstreamer.freedesktop.org/src/gst-plugins-good/gst-pl=
ugins-good-1.2.3.tar.xz,pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  gstreamer1.0 gstreamer1.0-plugins-base zlib bzip2 cairo flac gdk-pixb=
uf jpeg libpng orc pulseaudio libsoup-2.4 speex taglib virtual/libx11 libsm=
 libxrender,Plugins for the GStreamer multimedia framework 1.x.,N/A,http://=
gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.2.3.tar.x=
z,Cristian Iorga <cristian.iorga@intel.com>)
['gdbm', '1.11', 'N/A', 'GPLv3', 'libs', 'http://www.gnu.org/software/gdbm/=
', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'Key/v=
alue database library with extensible hashing.', 'ErrHostNoDir:/gnu/gdbm/:-=
:gdbm-1.11.tar.gz:ftp.gnu.org/gnu/gdbm/gdbm-1.11.tar.gz', 'N/A', 'ftp://ftp=
=2Egnu.org/gnu/gdbm/gdbm-1.11.tar.gz', 'Saul Wold <sgw@linux.intel.com>', '=
None']
inserted (gdbm,1.11,N/A,GPLv3,libs,r0,None,http://www.gnu.org/software/gdbm=
/,None,ErrHostNoDir:/gnu/gdbm/:-:gdbm-1.11.tar.gz:ftp.gnu.org/gnu/gdbm/gdbm=
-1.11.tar.gz,autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  ,Key/value database li=
brary with extensible hashing.,N/A,ftp://ftp.gnu.org/gnu/gdbm/gdbm-1.11.tar=
=2Egz,Saul Wold <sgw@linux.intel.com>)
['automake', '1.14', 'N/A', 'GPLv2', 'devel', 'http://www.gnu.org/software/=
automake/', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'None', 'None', "Automake is a tool for auto=
matically generating `Makefile.in' files compliant with the GNU Coding Stan=
dards. Automake requires the use of Autoconf.", 'ErrHostNoDir:/gnu/automake=
/:-:automake-1.14.tar.gz:ftp.gnu.org/gnu/automake/automake-1.14.tar.gz', 'N=
/A', 'ftp://ftp.gnu.org/gnu/automake/automake-1.14.tar.gz', 'Robert Yang <l=
iezhi.yang@windriver.com>', 'None']
inserted (automake,1.14,N/A,GPLv2,devel,r0,None,http://www.gnu.org/software=
/automake/,None,ErrHostNoDir:/gnu/automake/:-:automake-1.14.tar.gz:ftp.gnu.=
org/gnu/automake/automake-1.14.tar.gz,autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  ,Automake is a tool for auto=
matically generating `Makefile.in' files compliant with the GNU Coding Stan=
dards. Automake requires the use of Autoconf.,N/A,ftp://ftp.gnu.org/gnu/aut=
omake/automake-1.14.tar.gz,Robert Yang <liezhi.yang@windriver.com>)
['gpgme', '1.4.3', 'N/A', 'GPLv2+ & LGPLv2.1+', 'base', 'http://www.gnupg.o=
rg/gpgme.html', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  libgpg-error libassuan', 'https://bugs.g10c=
ode.com/gnupg/index', 'None', 'GnuPG Made Easy (GPGME) is a library designe=
d to make access to GnuPG easier for applications. It provides a High-Level=
 Crypto API for encryption, decryption, signing, signature verification and=
 key management', 'ErrHostNoDir:/gcrypt/gpgme/:-:gpgme-1.4.3.tar.bz2:ftp.gn=
upg.org/gcrypt/gpgme/gpgme-1.4.3.tar.bz2', 'N/A', 'ftp://ftp.gnupg.org/gcry=
pt/gpgme/gpgme-1.4.3.tar.bz2', 'Paul Eggleton <paul.eggleton@linux.intel.co=
m>', 'None']
inserted (gpgme,1.4.3,N/A,GPLv2+ & LGPLv2.1+,base,r0,None,http://www.gnupg.=
org/gpgme.html,https://bugs.g10code.com/gnupg/index,ErrHostNoDir:/gcrypt/gp=
gme/:-:gpgme-1.4.3.tar.bz2:ftp.gnupg.org/gcrypt/gpgme/gpgme-1.4.3.tar.bz2,a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  libgpg-error libassuan,GnuPG Made Easy (GPGME) is a library designe=
d to make access to GnuPG easier for applications. It provides a High-Level=
 Crypto API for encryption, decryption, signing, signature verification and=
 key management,N/A,ftp://ftp.gnupg.org/gcrypt/gpgme/gpgme-1.4.3.tar.bz2,Pa=
ul Eggleton <paul.eggleton@linux.intel.com>)
['xserver-xorg', '1.15.0', 'N/A', 'MIT-X', 'x11/base', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  randrproto renderproto fixesproto damagepr=
oto xextproto xproto xf86dgaproto xf86miscproto xf86vidmodeproto compositep=
roto recordproto resourceproto videoproto scrnsaverproto  xineramaproto fon=
tsproto kbproto inputproto bigreqsproto xcmiscproto presentproto pixman lib=
xfont xtrans libxau libxext libxdmcp libdrm libxkbfile libpciaccess openssl=
 libgcrypt font-util glproto virtual/mesa xf86driproto dri2proto glproto vi=
rtual/libgl virtual/libx11 udev', 'None', '2', 'The X.Org X server.', 'ErrH=
ostNoDir:/releases/individual/xserver/:-:xorg-server-1.15.0.tar.bz2:xorg.fr=
eedesktop.org/releases/individual/xserver/xorg-server-1.15.0.tar.bz2', 'N/A=
', 'http://xorg.freedesktop.org/releases/individual/xserver/xorg-server-1.1=
5.0.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xserver-xorg,1.15.0,N/A,MIT-X,x11/base,r0,2,http://www.x.org,None=
,ErrHostNoDir:/releases/individual/xserver/:-:xorg-server-1.15.0.tar.bz2:xo=
rg.freedesktop.org/releases/individual/xserver/xorg-server-1.15.0.tar.bz2,p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  randrproto renderproto fixesproto damageproto xext=
proto xproto xf86dgaproto xf86miscproto xf86vidmodeproto compositeproto rec=
ordproto resourceproto videoproto scrnsaverproto  xineramaproto fontsproto =
kbproto inputproto bigreqsproto xcmiscproto presentproto pixman libxfont xt=
rans libxau libxext libxdmcp libdrm libxkbfile libpciaccess openssl libgcry=
pt font-util glproto virtual/mesa xf86driproto dri2proto glproto virtual/li=
bgl virtual/libx11 udev,The X.Org X server.,N/A,http://xorg.freedesktop.org=
/releases/individual/xserver/xorg-server-1.15.0.tar.bz2,Laurentiu Palcu <la=
urentiu.palcu@intel.com>)
['libice', '1.0.8', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros xproto xtrans', 'https://bugs.fre=
edesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Inter-Client Exchange=
 (ICE) protocol provides a generic framework for building protocols on top =
of reliable, byte-stream transport connections. It provides basic mechanism=
s for setting up and shutting down connections, for performing authenticati=
on, for negotiating versions, and for reporting errors. ', 'ErrHostNoDir:/r=
eleases/individual/lib/:-:libICE-1.0.8.tar.bz2:xorg.freedesktop.org/release=
s/individual/lib/libICE-1.0.8.tar.bz2', 'N/A', 'http://xorg.freedesktop.org=
/releases/individual/lib/libICE-1.0.8.tar.bz2', 'Ross Burton <ross.burton@i=
ntel.com>', 'None']
inserted (libice,1.0.8,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/i=
ndividual/lib/:-:libICE-1.0.8.tar.bz2:xorg.freedesktop.org/releases/individ=
ual/lib/libICE-1.0.8.tar.bz2,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros xproto x=
trans,The Inter-Client Exchange (ICE) protocol provides a generic framework=
 for building protocols on top of reliable, byte-stream transport connectio=
ns. It provides basic mechanisms for setting up and shutting down connectio=
ns, for performing authentication, for negotiating versions, and for report=
ing errors. ,N/A,http://xorg.freedesktop.org/releases/individual/lib/libICE=
-1.0.8.tar.bz2,Ross Burton <ross.burton@intel.com>)
['ldconfig-native', '2.12.1', 'INVALID', 'GPLv2+', 'base', '', 'r2', ' ', '=
None', 'None', 'A standalone native ldconfig build.', 'MATCH', 'N/A', 'file=
://ldconfig-native-2.12.1.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'Non=
e']
inserted (ldconfig-native,2.12.1,INVALID,GPLv2+,base,r2,None,,None,MATCH, ,=
A standalone native ldconfig build.,N/A,file://ldconfig-native-2.12.1.tar.b=
z2,Saul Wold <sgw@linux.intel.com>)
['xset', '1.2.3', 'N/A', 'MIT', 'x11/apps', 'http://www.x.org/', 'r0', 'pkg=
config-native autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  util-macros-native virtual/libx11 libxext libxxf86mi=
sc libxmu libxau', 'https://bugs.freedesktop.org', '1', 'xset is a utility =
that is used to set various user preference options of the display.', 'ErrH=
ostNoDir:/releases/individual/app/:-:xset-1.2.3.tar.bz2:xorg.freedesktop.or=
g/releases/individual/app/xset-1.2.3.tar.bz2', 'N/A', 'http://xorg.freedesk=
top.org/releases/individual/app/xset-1.2.3.tar.bz2', 'Laurentiu Palcu <laur=
entiu.palcu@intel.com>', 'None']
inserted (xset,1.2.3,N/A,MIT,x11/apps,r0,1,http://www.x.org/,https://bugs.f=
reedesktop.org,ErrHostNoDir:/releases/individual/app/:-:xset-1.2.3.tar.bz2:=
xorg.freedesktop.org/releases/individual/app/xset-1.2.3.tar.bz2,pkgconfig-n=
ative autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  util-macros-native virtual/libx11 libxext libxxf86misc libxm=
u libxau,xset is a utility that is used to set various user preference opti=
ons of the display.,N/A,http://xorg.freedesktop.org/releases/individual/app=
/xset-1.2.3.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['dropbear', '2014.63', 'N/A', 'MIT & BSD-3-Clause & BSD-2-Clause & PD', 'c=
onsole/network', 'http://matt.ucc.asn.au/dropbear/dropbear.html', 'r0', 'au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  zlib  update-rc.d-native virtual/update-alternatives', 'None', 'None=
', 'A lightweight SSH and SCP implementation.', 'ErrHostNoDir:/dropbear/rel=
eases/:-:dropbear-2014.63.tar.bz2:matt.ucc.asn.au/dropbear/releases/dropbea=
r-2014.63.tar.bz2', 'N/A', 'http://matt.ucc.asn.au/dropbear/releases/dropbe=
ar-2014.63.tar.bz2', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None=
']
inserted (dropbear,2014.63,N/A,MIT & BSD-3-Clause & BSD-2-Clause & PD,conso=
le/network,r0,None,http://matt.ucc.asn.au/dropbear/dropbear.html,None,ErrHo=
stNoDir:/dropbear/releases/:-:dropbear-2014.63.tar.bz2:matt.ucc.asn.au/drop=
bear/releases/dropbear-2014.63.tar.bz2,autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  zlib  update-rc.d-native vi=
rtual/update-alternatives,A lightweight SSH and SCP implementation.,N/A,htt=
p://matt.ucc.asn.au/dropbear/releases/dropbear-2014.63.tar.bz2,Paul Eggleto=
n <paul.eggleton@linux.intel.com>)
['bluez-hcidump', '2.5', 'N/A', 'GPLv2+', 'console', '', 'r1', 'autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bl=
uez4', 'None', 'None', 'The hcidump tool reads raw HCI data coming from and=
 going to a Bluetooth device and displays the commands, events and data in =
a human-readable form.', 'ErrHostNoDir:/pub/linux/bluetooth/:-:bluez-hcidum=
p-2.5.tar.gz:www.kernel.org/pub/linux/bluetooth/bluez-hcidump-2.5.tar.gz', =
'N/A', 'http://www.kernel.org/pub/linux/bluetooth/bluez-hcidump-2.5.tar.gz'=
, 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (bluez-hcidump,2.5,N/A,GPLv2+,console,r1,None,,None,ErrHostNoDir:/=
pub/linux/bluetooth/:-:bluez-hcidump-2.5.tar.gz:www.kernel.org/pub/linux/bl=
uetooth/bluez-hcidump-2.5.tar.gz,autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  bluez4,The hcidump tool reads raw=
 HCI data coming from and going to a Bluetooth device and displays the comm=
ands, events and data in a human-readable form.,N/A,http://www.kernel.org/p=
ub/linux/bluetooth/bluez-hcidump-2.5.tar.gz,Cristian Iorga <cristian.iorga@=
intel.com>)
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
icy or style.', 'ErrHostNoDir:/releases/individual/lib/:-:libXt-1.1.4.tar.b=
z2:xorg.freedesktop.org/releases/individual/lib/libXt-1.1.4.tar.bz2', 'N/A'=
, 'http://xorg.freedesktop.org/releases/individual/lib/libXt-1.1.4.tar.bz2'=
, 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (libxt,1.1.4,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.x.org,ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/relea=
ses/individual/lib/:-:libXt-1.1.4.tar.bz2:xorg.freedesktop.org/releases/ind=
ividual/lib/libXt-1.1.4.tar.bz2,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros util-=
linux libxcb libsm virtual/libx11 kbproto libxdmcp,The Intrinsics are a pro=
gramming library tailored to the special requirements of user interface con=
struction within a network window system, specifically the X Window System.=
 The Intrinsics and a widget set make up an X Toolkit. The Intrinsics provi=
de the base mechanism necessary to build a wide variety of interoperating w=
idget sets and application environments. The Intrinsics are a layer on top =
of Xlib, the C Library X Interface. They extend the fundamental abstraction=
s provided by the X Window System while still remaining independent of any =
particular user interface policy or style.,N/A,http://xorg.freedesktop.org/=
releases/individual/lib/libXt-1.1.4.tar.bz2,Laurentiu Palcu <laurentiu.palc=
u@intel.com>)
['kbproto', '1.0.6', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/=
enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoco=
l for the X Keyboard extension.  This extension is used to control options =
related to keyboard handling and layout.', 'ErrHostNoDir:/releases/individu=
al/proto/:-:kbproto-1.0.6.tar.bz2:xorg.freedesktop.org/releases/individual/=
proto/kbproto-1.0.6.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/=
individual/proto/kbproto-1.0.6.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@=
intel.com>', 'None']
inserted (kbproto,1.0.6,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/=
individual/proto/:-:kbproto-1.0.6.tar.bz2:xorg.freedesktop.org/releases/ind=
ividual/proto/kbproto-1.0.6.tar.bz2,pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros,T=
his package provides the wire protocol for the X Keyboard extension.  This =
extension is used to control options related to keyboard handling and layou=
t.,N/A,http://xorg.freedesktop.org/releases/individual/proto/kbproto-1.0.6.=
tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['unzip', '60', 'N/A', 'BSD-3-Clause', 'console/utils', 'http://www.info-zi=
p.org', 'r5', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ', 'None', '1', 'Utilities for extracting and viewing f=
iles in .zip archives.', 'ErrHostNoDir:/pub/infozip/src/:-:unzip60.tgz:ftp.=
info-zip.org/pub/infozip/src/unzip60.tgz', '6.0', 'ftp://ftp.info-zip.org/p=
ub/infozip/src/unzip60.tgz', 'Cristiana Voicu <cristiana.voicu@intel.com>',=
 'None']
inserted (unzip,60,N/A,BSD-3-Clause,console/utils,r5,1,http://www.info-zip.=
org,None,ErrHostNoDir:/pub/infozip/src/:-:unzip60.tgz:ftp.info-zip.org/pub/=
infozip/src/unzip60.tgz, virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ,Utilities for extracting and viewing files in=
 .zip archives.,6.0,ftp://ftp.info-zip.org/pub/infozip/src/unzip60.tgz,Cris=
tiana Voicu <cristiana.voicu@intel.com>)
['xauth', '1.0.8', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros-native virtual/libx11 libxau libxext =
libxmu', 'https://bugs.freedesktop.org', '1', 'X application to edit and di=
splay the authorization information used in connecting to the X server.', '=
ErrHostNoDir:/releases/individual/app/:-:xauth-1.0.8.tar.bz2:xorg.freedeskt=
op.org/releases/individual/app/xauth-1.0.8.tar.bz2', 'N/A', 'http://xorg.fr=
eedesktop.org/releases/individual/app/xauth-1.0.8.tar.bz2', 'Laurentiu Palc=
u <laurentiu.palcu@intel.com>', 'None']
inserted (xauth,1.0.8,N/A,MIT-X,x11/apps,r0,1,http://www.x.org/,https://bug=
s.freedesktop.org,ErrHostNoDir:/releases/individual/app/:-:xauth-1.0.8.tar.=
bz2:xorg.freedesktop.org/releases/individual/app/xauth-1.0.8.tar.bz2,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  util-macros-native virtual/libx11 libxau libxext libxmu=
,X application to edit and display the authorization information used in co=
nnecting to the X server.,N/A,http://xorg.freedesktop.org/releases/individu=
al/app/xauth-1.0.8.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['libusb-compat', '0.1.5', 'N/A', 'LGPLv2.1+', 'libs', 'http://www.libusb.o=
rg/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  libusb1', 'http://www.libusb.org/rep=
ort', '1', 'libusb-0.1 compatible layer for libusb1, a drop-in replacement =
that aims to look, feel and behave exactly like libusb-0.1', 'ErrHostNoDir:=
/libusb/:-:libusb-compat-0.1.5.tar.bz2:downloads.sourceforge.net/libusb/lib=
usb-compat-0.1.5.tar.bz2', 'N/A', 'http://downloads.sourceforge.net/libusb/=
libusb-compat-0.1.5.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libusb-compat,0.1.5,N/A,LGPLv2.1+,libs,r0,1,http://www.libusb.org=
/,http://www.libusb.org/report,ErrHostNoDir:/libusb/:-:libusb-compat-0.1.5.=
tar.bz2:downloads.sourceforge.net/libusb/libusb-compat-0.1.5.tar.bz2,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  libusb1,libusb-0.1 compatible layer for libusb1, a drop=
-in replacement that aims to look, feel and behave exactly like libusb-0.1,=
N/A,http://downloads.sourceforge.net/libusb/libusb-compat-0.1.5.tar.bz2,Sau=
l Wold <sgw@linux.intel.com>)
['gnome-common', '3.7.4', 'N/A', 'GPLv2+', 'x11/gnome', 'http://www.gnome.o=
rg/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e gnu-config-native  ', 'https://bugzilla.gnome.org/', 'None', 'Common macr=
os for building GNOME applications.', 'ErrHostNoDir:/pub/GNOME/sources/gnom=
e-common/3.7/gnome-common-3.7.4.tar.xz:3.7:-:ftp.gnome.org/pub/GNOME/source=
s/gnome-common/3.7/gnome-common-3.7.4.tar.xz', 'N/A', 'http://ftp.gnome.org=
/pub/GNOME/sources/gnome-common/3.7/gnome-common-3.7.4.tar.xz;name=3Darchiv=
e', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (gnome-common,3.7.4,N/A,GPLv2+,x11/gnome,r0,None,http://www.gnome.=
org/,https://bugzilla.gnome.org/,ErrHostNoDir:/pub/GNOME/sources/gnome-comm=
on/3.7/gnome-common-3.7.4.tar.xz:3.7:-:ftp.gnome.org/pub/GNOME/sources/gnom=
e-common/3.7/gnome-common-3.7.4.tar.xz,pkgconfig-native autoconf-native aut=
omake-native libtool-native gnu-config-native  ,Common macros for building =
GNOME applications.,N/A,http://ftp.gnome.org/pub/GNOME/sources/gnome-common=
/3.7/gnome-common-3.7.4.tar.xz;name=3Darchive,Valentin Popa <valentin.popa@=
intel.com>)
['libxfont', '1.4.7', 'N/A', 'MIT & MIT-style & BSD', 'x11/libs', 'http://w=
ww.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  util-macros freetype xtrans fon=
tsproto libfontenc zlib', 'https://bugs.freedesktop.org/enter_bug.cgi?produ=
ct=3Dxorg', '1', 'libXfont provides various services for X servers, most no=
tably font selection and rasterisation (through external libraries such as =
freetype).', 'ErrHostNoDir:/releases/individual/lib/:-:libXfont-1.4.7.tar.b=
z2:xorg.freedesktop.org/releases/individual/lib/libXfont-1.4.7.tar.bz2', 'N=
/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXfont-1.4.7.ta=
r.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxfont,1.4.7,N/A,MIT & MIT-style & BSD,x11/libs,r0,1,http://www=
=2Ex.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostN=
oDir:/releases/individual/lib/:-:libXfont-1.4.7.tar.bz2:xorg.freedesktop.or=
g/releases/individual/lib/libXfont-1.4.7.tar.bz2,pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
util-macros freetype xtrans fontsproto libfontenc zlib,libXfont provides va=
rious services for X servers, most notably font selection and rasterisation=
 (through external libraries such as freetype).,N/A,http://xorg.freedesktop=
=2Eorg/releases/individual/lib/libXfont-1.4.7.tar.bz2,Ross Burton <ross.bur=
ton@intel.com>)
['puzzles', 'r10116', 'N/A', 'MIT', 'base', 'http://www.chiark.greenend.org=
=2Euk/~sgtatham/puzzles/', 'r0', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  gtk+ libxt', 'None', 'None', "Si=
mon Tatham's Portable Puzzle Collection.", 'UPDATE', 'N/A', 'svn://svn.tart=
arus.org/sgt;module=3Dpuzzles;rev=3D10116', 'Valentin Popa <valentin.popa@i=
ntel.com>', 'None']
inserted (puzzles,r10116,N/A,MIT,base,r0,None,http://www.chiark.greenend.or=
g.uk/~sgtatham/puzzles/,None,UPDATE,autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  gtk+ libxt,Simon Tatham's Port=
able Puzzle Collection.,N/A,svn://svn.tartarus.org/sgt;module=3Dpuzzles;rev=
=3D10116,Valentin Popa <valentin.popa@intel.com>)
['python-docutils', '0.11', 'N/A', 'PSF & BSD-2-Clause & GPLv3', 'devel/pyt=
hon', 'http://docutils.sourceforge.net', 'r0', ' virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  python python-native p=
ython  python-native ', 'None', 'None', 'Text processing system for documen=
tation.', 'ErrHostNoDir:/docutils/:-:docutils-0.11.tar.gz:downloads.sourcef=
orge.net/docutils/docutils-0.11.tar.gz', 'N/A', 'http://downloads.sourcefor=
ge.net/docutils/docutils-0.11.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@in=
tel.com>', 'None']
inserted (python-docutils,0.11,N/A,PSF & BSD-2-Clause & GPLv3,devel/python,=
r0,None,http://docutils.sourceforge.net,None,ErrHostNoDir:/docutils/:-:docu=
tils-0.11.tar.gz:downloads.sourceforge.net/docutils/docutils-0.11.tar.gz, v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  python python-native python  python-native ,Text processing system for d=
ocumentation.,N/A,http://downloads.sourceforge.net/docutils/docutils-0.11.t=
ar.gz,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['gtk+', '2.24.22', 'N/A', 'LGPLv2 & LGPLv2+ & LGPLv2.1+', 'libs', 'http://=
www.gtk.org', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  qemu-native glib-2.0 pango a=
tk jpeg libpng gdk-pixbuf-native docbook-utils-native  cairo gdk-pixbuf gtk=
-doc-stub-native virtual/libx11 libxext libxcursor libxrandr libxdamage lib=
xrender libxcomposite virtual/update-alternatives', 'https://bugzilla.gnome=
=2Eorg/', 'None', 'GTK+ is a multi-platform toolkit for creating graphical =
user interfaces. Offering a complete set of widgets, GTK+ is suitable for p=
rojects ranging from small one-off projects to complete application suites.=
', 'ErrHostNoDir:/pub/gnome/sources/gtk+/2.24/gtk+-2.24.22.tar.xz:2.24:-:ft=
p.gnome.org/pub/gnome/sources/gtk+/2.24/gtk+-2.24.22.tar.xz', 'N/A', 'http:=
//ftp.gnome.org/pub/gnome/sources/gtk+/2.24/gtk+-2.24.22.tar.xz', 'Valentin=
 Popa <valentin.popa@intel.com>', 'Do not upgrade to version: 2.99.2 becaus=
e prefer stable tree']
inserted (gtk+,2.24.22,N/A,LGPLv2 & LGPLv2+ & LGPLv2.1+,libs,r0,None,http:/=
/www.gtk.org,https://bugzilla.gnome.org/,ErrHostNoDir:/pub/gnome/sources/gt=
k+/2.24/gtk+-2.24.22.tar.xz:2.24:-:ftp.gnome.org/pub/gnome/sources/gtk+/2.2=
4/gtk+-2.24.22.tar.xz,pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  qemu-native glib-2.0 pango =
atk jpeg libpng gdk-pixbuf-native docbook-utils-native  cairo gdk-pixbuf gt=
k-doc-stub-native virtual/libx11 libxext libxcursor libxrandr libxdamage li=
bxrender libxcomposite virtual/update-alternatives,GTK+ is a multi-platform=
 toolkit for creating graphical user interfaces. Offering a complete set of=
 widgets, GTK+ is suitable for projects ranging from small one-off projects=
 to complete application suites.,N/A,http://ftp.gnome.org/pub/gnome/sources=
/gtk+/2.24/gtk+-2.24.22.tar.xz,Valentin Popa <valentin.popa@intel.com>)
['lttng-modules', '2.4.0', '2.4.1', 'LGPLv2.1 & GPLv2', 'devel', '', 'r0', =
' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  virtual/kernel virtual/kernel', 'None', 'None', 'The lttng-modules 2.=
0 package contains the kernel tracer modules', 'ErrUnknown:git.lttng.org/lt=
tng-modules.git', 'N/A', 'git://git.lttng.org/lttng-modules.git;branch=3Dst=
able-2.4', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (lttng-modules,2.4.0,2.4.1,LGPLv2.1 & GPLv2,devel,r0,None,,None,Er=
rUnknown:git.lttng.org/lttng-modules.git, virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  virtual/kernel virtual/kernel=
,The lttng-modules 2.0 package contains the kernel tracer modules,N/A,git:/=
/git.lttng.org/lttng-modules.git;branch=3Dstable-2.4,Laurentiu Palcu <laure=
ntiu.palcu@intel.com>)
['gnutls', '2.12.23', 'N/A', 'GPLv3+ & LGPLv2.1+', 'base', 'http://www.gnu.=
org/software/gnutls/', 'r8.4', 'pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native virtual/gettext gettex=
t-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  zlib lzo libtasn1 libgcrypt (>=3D 1.4.2) libcap readline', 'h=
ttps://savannah.gnu.org/support/?group=3Dgnutls', 'None', 'GNU Transport La=
yer Security Library.', 'ErrHostNoDir:/gcrypt/gnutls/2.12.23/:v2.12:gnutls-=
2.12.23.tar.bz2:ftp.gnutls.org/gcrypt/gnutls/v2.12/gnutls-2.12.23.tar.bz2',=
 'N/A', 'ftp://ftp.gnutls.org/gcrypt/gnutls/v2.12/gnutls-2.12.23.tar.bz2', =
'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (gnutls,2.12.23,N/A,GPLv3+ & LGPLv2.1+,base,r8.4,None,http://www.g=
nu.org/software/gnutls/,https://savannah.gnu.org/support/?group=3Dgnutls,Er=
rHostNoDir:/gcrypt/gnutls/2.12.23/:v2.12:gnutls-2.12.23.tar.bz2:ftp.gnutls.=
org/gcrypt/gnutls/v2.12/gnutls-2.12.23.tar.bz2,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native virtual=
/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  zlib lzo libtasn1 libgcrypt (>=3D 1.4.2) libca=
p readline,GNU Transport Layer Security Library.,N/A,ftp://ftp.gnutls.org/g=
crypt/gnutls/v2.12/gnutls-2.12.23.tar.bz2,Valentin Popa <valentin.popa@inte=
l.com>)
['apmd', '3.2.2-14', 'N/A', 'GPLv2+', 'base', 'http://apenwarr.ca/apmd/', '=
r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  libtool-cross update-rc.d-native', 'None', 'None', 'The Advanced=
 Power Management (APM) support provides access to battery status informati=
on and a set of tools for managing notebook power consumption.', 'ErrHostNo=
Dir:/debian/pool/main/a/apmd/:-:apmd_3.2.2.orig.tar.gz:ftp.debian.org/debia=
n/pool/main/a/apmd/apmd_3.2.2.orig.tar.gz', 'N/A', 'ftp://ftp.debian.org/de=
bian/pool/main/a/apmd/apmd_3.2.2.orig.tar.gz;name=3Dtarball', 'Cristian Ior=
ga <cristian.iorga@intel.com>', 'None']
inserted (apmd,3.2.2-14,N/A,GPLv2+,base,r2,None,http://apenwarr.ca/apmd/,No=
ne,ErrHostNoDir:/debian/pool/main/a/apmd/:-:apmd_3.2.2.orig.tar.gz:ftp.debi=
an.org/debian/pool/main/a/apmd/apmd_3.2.2.orig.tar.gz, virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libtool-cross up=
date-rc.d-native,The Advanced Power Management (APM) support provides acces=
s to battery status information and a set of tools for managing notebook po=
wer consumption.,N/A,ftp://ftp.debian.org/debian/pool/main/a/apmd/apmd_3.2.=
2.orig.tar.gz;name=3Dtarball,Cristian Iorga <cristian.iorga@intel.com>)
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
graphics.', 'ErrHostNoDir:/releases/individual/lib/:-:libXScrnSaver-1.2.2.t=
ar.bz2:xorg.freedesktop.org/releases/individual/lib/libXScrnSaver-1.2.2.tar=
=2Ebz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXSc=
rnSaver-1.2.2.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (libxscrnsaver,1.2.2,N/A,MIT,x11/libs,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/=
individual/lib/:-:libXScrnSaver-1.2.2.tar.bz2:xorg.freedesktop.org/releases=
/individual/lib/libXScrnSaver-1.2.2.tar.bz2,pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-=
macros libxext scrnsaverproto,The X Window System provides support for chan=
ging the image on a display screen after a user-settable period of inactivi=
ty to avoid burning the cathode ray tube phosphors. However, no interfaces =
are provided for the user to control the image that is drawn. This extensio=
n allows an external \"screen saver\" client to detect when the alternate i=
mage is to be displayed and to provide the graphics.,N/A,http://xorg.freede=
sktop.org/releases/individual/lib/libXScrnSaver-1.2.2.tar.bz2,Valentin Popa=
 <valentin.popa@intel.com>)
['gst-plugins-bad', '0.10.23', 'N/A', 'GPLv2+ & LGPLv2+ & LGPLv2.1+ ', 'mul=
timedia', 'http://gstreamer.freedesktop.org/', 'r4', 'pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base glib-2.0-nat=
ive bzip2 curl librsvg', 'https://bugzilla.gnome.org/enter_bug.cgi?product=
=3DGstreamer', 'None', 'Plugins for the GStreamer multimedia framework.', '=
ErrHostNoDir:/src/gst-plugins-bad/:-:gst-plugins-bad-0.10.23.tar.bz2:gstrea=
mer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-0.10.23.tar.bz2', '=
N/A', 'http://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad=
-0.10.23.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', 'not compat=
ible with gst-fluendo 0.10.x']
inserted (gst-plugins-bad,0.10.23,N/A,GPLv2+ & LGPLv2+ & LGPLv2.1+ ,multime=
dia,r4,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/en=
ter_bug.cgi?product=3DGstreamer,ErrHostNoDir:/src/gst-plugins-bad/:-:gst-pl=
ugins-bad-0.10.23.tar.bz2:gstreamer.freedesktop.org/src/gst-plugins-bad/gst=
-plugins-bad-0.10.23.tar.bz2,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  gstreamer gst-plugins-base glib-2.0-native bzip2 curl librsvg,Pl=
ugins for the GStreamer multimedia framework.,N/A,http://gstreamer.freedesk=
top.org/src/gst-plugins-bad/gst-plugins-bad-0.10.23.tar.bz2,Cristian Iorga =
<cristian.iorga@intel.com>)
['npth', '0.91', 'N/A', 'LGPLv3+ & GPLv2+', 'libs', 'http://www.gnupg.org/s=
oftware/pth/', 'r0', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ', 'None', 'None', 'New GNU Portable Threads=
 library.', 'ErrHostNoDir:/gcrypt/npth/:-:npth-0.91.tar.bz2:ftp.gnupg.org/g=
crypt/npth/npth-0.91.tar.bz2', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/npth/npth=
-0.91.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (npth,0.91,N/A,LGPLv3+ & GPLv2+,libs,r0,None,http://www.gnupg.org/=
software/pth/,None,ErrHostNoDir:/gcrypt/npth/:-:npth-0.91.tar.bz2:ftp.gnupg=
=2Eorg/gcrypt/npth/npth-0.91.tar.bz2,autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  ,New GNU Portable Threads lib=
rary.,N/A,ftp://ftp.gnupg.org/gcrypt/npth/npth-0.91.tar.bz2,Saul Wold <sgw@=
linux.intel.com>)
['ghostscript', '9.07', 'N/A', 'GPLv3', 'console/utils', 'http://www.ghosts=
cript.com', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ghostscript-native tiff jpeg fontconfig cups', =
'None', 'None', 'Ghostscript is used for PostScript/PDF preview and printin=
g.  Usually as a back-end to a program such as ghostview, it can display Po=
stScript and PDF documents in an X11 environment. Furthermore, it can rende=
r PostScript and PDF files as graphics to be printed on non-PostScript prin=
ters. Supported printers include common dot-matrix, inkjet and laser models=
=2E Package gsfonts contains a set of standard fonts for Ghostscript. ', 'E=
rrHostNoDir:/public/:-:ghostscript-9.07.tar.gz:downloads.ghostscript.com/pu=
blic/ghostscript-9.07.tar.gz', 'N/A', 'http://downloads.ghostscript.com/pub=
lic/ghostscript-9.07.tar.gz', 'Kai Kang <kai.kang@windriver.com>', 'None']
inserted (ghostscript,9.07,N/A,GPLv3,console/utils,r0,None,http://www.ghost=
script.com,None,ErrHostNoDir:/public/:-:ghostscript-9.07.tar.gz:downloads.g=
hostscript.com/public/ghostscript-9.07.tar.gz,autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ghostscript-native t=
iff jpeg fontconfig cups,Ghostscript is used for PostScript/PDF preview and=
 printing.  Usually as a back-end to a program such as ghostview, it can di=
splay PostScript and PDF documents in an X11 environment. Furthermore, it c=
an render PostScript and PDF files as graphics to be printed on non-PostScr=
ipt printers. Supported printers include common dot-matrix, inkjet and lase=
r models. Package gsfonts contains a set of standard fonts for Ghostscript.=
 ,N/A,http://downloads.ghostscript.com/public/ghostscript-9.07.tar.gz,Kai K=
ang <kai.kang@windriver.com>)
['sysvinit', '2.88dsf', 'N/A', 'GPLv2+', 'base', 'http://savannah.nongnu.or=
g/projects/sysvinit/', 'r11', ' virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc   update-rc.d-native base-passwd virtual=
/update-alternatives', 'None', 'None', 'This package is required to boot in=
 most configurations.  It provides the /sbin/init program.  This is the fir=
st process started on boot, and the last process terminated before the syst=
em halts.', 'ErrHostNoDir:/releases-noredirect/sysvinit/:-:sysvinit-2.88dsf=
=2Etar.bz2:download.savannah.gnu.org/releases-noredirect/sysvinit/sysvinit-=
2.88dsf.tar.bz2', 'N/A', 'http://download.savannah.gnu.org/releases-noredir=
ect/sysvinit/sysvinit-2.88dsf.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', =
'None']
inserted (sysvinit,2.88dsf,N/A,GPLv2+,base,r11,None,http://savannah.nongnu.=
org/projects/sysvinit/,None,ErrHostNoDir:/releases-noredirect/sysvinit/:-:s=
ysvinit-2.88dsf.tar.bz2:download.savannah.gnu.org/releases-noredirect/sysvi=
nit/sysvinit-2.88dsf.tar.bz2, virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc   update-rc.d-native base-passwd virtual/u=
pdate-alternatives,This package is required to boot in most configurations.=
  It provides the /sbin/init program.  This is the first process started on=
 boot, and the last process terminated before the system halts.,N/A,http://=
download.savannah.gnu.org/releases-noredirect/sysvinit/sysvinit-2.88dsf.tar=
=2Ebz2,Saul Wold <sgw@linux.intel.com>)
['telepathy-idle', '0.2.0', 'N/A', 'LGPLv2.1', 'base', 'http://telepathy.fr=
eedesktop.org/wiki/', 'r0', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus telepa=
thy-glib openssl libxslt-native  python-native ', 'None', 'None', 'Telepath=
y implementation of the Internet Relay Chat protocols.', 'ErrHostNoDir:/rel=
eases/telepathy-idle/:-:telepathy-idle-0.2.0.tar.gz:telepathy.freedesktop.o=
rg/releases/telepathy-idle/telepathy-idle-0.2.0.tar.gz', 'N/A', 'http://tel=
epathy.freedesktop.org/releases/telepathy-idle/telepathy-idle-0.2.0.tar.gz'=
, 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (telepathy-idle,0.2.0,N/A,LGPLv2.1,base,r0,None,http://telepathy.f=
reedesktop.org/wiki/,None,ErrHostNoDir:/releases/telepathy-idle/:-:telepath=
y-idle-0.2.0.tar.gz:telepathy.freedesktop.org/releases/telepathy-idle/telep=
athy-idle-0.2.0.tar.gz,pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus telepathy-gl=
ib openssl libxslt-native  python-native ,Telepathy implementation of the I=
nternet Relay Chat protocols.,N/A,http://telepathy.freedesktop.org/releases=
/telepathy-idle/telepathy-idle-0.2.0.tar.gz,Cristian Iorga <cristian.iorga@=
intel.com>)
['gst-plugins-good', '0.10.31', 'N/A', 'GPLv2+ & LGPLv2.1+', 'multimedia', =
'http://gstreamer.freedesktop.org/', 'r8', 'pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native virtual/ge=
ttext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  gstreamer gst-plugins-base gconf cairo libpng zli=
b libid3tag flac             speex libsoup-2.4 gconf gconf-native jpeg puls=
eaudio', 'https://bugzilla.gnome.org/enter_bug.cgi?product=3DGstreamer', 'N=
one', 'Plugins for the GStreamer multimedia framework.', 'ErrHostNoDir:/src=
/gst-plugins-good/:-:gst-plugins-good-0.10.31.tar.bz2:gstreamer.freedesktop=
=2Eorg/src/gst-plugins-good/gst-plugins-good-0.10.31.tar.bz2', 'N/A', 'http=
://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-0.10.31.=
tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', 'not compatible with=
 gst-fluendo 0.10.x']
inserted (gst-plugins-good,0.10.31,N/A,GPLv2+ & LGPLv2.1+,multimedia,r8,Non=
e,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/enter_bug.cg=
i?product=3DGstreamer,ErrHostNoDir:/src/gst-plugins-good/:-:gst-plugins-goo=
d-0.10.31.tar.bz2:gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugin=
s-good-0.10.31.tar.bz2,pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native virtual/gettext gettext-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  gstreamer gst-plugins-base gconf cairo libpng zlib libid3tag flac     =
        speex libsoup-2.4 gconf gconf-native jpeg pulseaudio,Plugins for th=
e GStreamer multimedia framework.,N/A,http://gstreamer.freedesktop.org/src/=
gst-plugins-good/gst-plugins-good-0.10.31.tar.bz2,Cristian Iorga <cristian.=
iorga@intel.com>)
['libid3tag', '0.15.1b', 'N/A', 'GPLv2+', 'libs', 'http://sourceforge.net/p=
rojects/mad/', 'r7', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  zlib gperf-native', 'http:/=
/sourceforge.net/tracker/?group_id=3D12349&atid=3D112349', 'None', 'Library=
 for interacting with ID3 tags in MP3 files.', 'ErrHostNoDir:/pub/mpeg/:-:l=
ibid3tag-0.15.1b.tar.gz:ftp.mars.org/pub/mpeg/libid3tag-0.15.1b.tar.gz', 'N=
/A', 'ftp://ftp.mars.org/pub/mpeg/libid3tag-0.15.1b.tar.gz', 'Cristian Iorg=
a <cristian.iorga@intel.com>', 'None']
inserted (libid3tag,0.15.1b,N/A,GPLv2+,libs,r7,None,http://sourceforge.net/=
projects/mad/,http://sourceforge.net/tracker/?group_id=3D12349&atid=3D11234=
9,ErrHostNoDir:/pub/mpeg/:-:libid3tag-0.15.1b.tar.gz:ftp.mars.org/pub/mpeg/=
libid3tag-0.15.1b.tar.gz,pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  zlib gperf-native,Librar=
y for interacting with ID3 tags in MP3 files.,N/A,ftp://ftp.mars.org/pub/mp=
eg/libid3tag-0.15.1b.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['python-pyrex', '0.9.9', 'N/A', 'Apache-2.0', 'devel/python', '', 'r4', ' =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc   python-native python  python-native ', 'None', 'None', "Pyrex is a lan=
guage specially designed for writing Python extension modules. It's designe=
d to bridge the gap between the nice, high-level, easy-to-use world of Pyth=
on and the messy, low-level world of C.", 'ErrHostNoDir:/greg.ewing/python/=
Pyrex/:-:Pyrex-0.9.9.tar.gz:www.cosc.canterbury.ac.nz/greg.ewing/python/Pyr=
ex/Pyrex-0.9.9.tar.gz', 'N/A', 'http://www.cosc.canterbury.ac.nz/greg.ewing=
/python/Pyrex/Pyrex-0.9.9.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.=
com>', 'None']
inserted (python-pyrex,0.9.9,N/A,Apache-2.0,devel/python,r4,None,,None,ErrH=
ostNoDir:/greg.ewing/python/Pyrex/:-:Pyrex-0.9.9.tar.gz:www.cosc.canterbury=
=2Eac.nz/greg.ewing/python/Pyrex/Pyrex-0.9.9.tar.gz, virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   python-native pyt=
hon  python-native ,Pyrex is a language specially designed for writing Pyth=
on extension modules. It's designed to bridge the gap between the nice, hig=
h-level, easy-to-use world of Python and the messy, low-level world of C.,N=
/A,http://www.cosc.canterbury.ac.nz/greg.ewing/python/Pyrex/Pyrex-0.9.9.tar=
=2Egz,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['libxml-sax-perl', '0.99', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', '', '=
r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc   libxml-namespacesupport-perl-native perl perl-native', 'None', =
'None', 'XML::SAX consists of several framework classes for using and build=
ing Perl SAX2 XML parsers, filters, and drivers.  It is designed around the=
 need to be able to "plug in" different SAX parsers to an application witho=
ut requiring programmer intervention.  Those of you familiar with the DBI w=
ill be right at home.  Some of the designs come from the Java JAXP specific=
ation (SAX part), only without the javaness.', 'ErrHostNoDir:/CPAN/authors/=
id/G/GR/GRANTM/:-:XML-SAX-0.99.tar.gz:search.cpan.org/CPAN/authors/id/G/GR/=
GRANTM/XML-SAX-0.99.tar.gz', 'N/A', 'http://search.cpan.org/CPAN/authors/id=
/G/GR/GRANTM/XML-SAX-0.99.tar.gz', 'Kai Kang <kai.kang@windriver.com>', 'No=
ne']
inserted (libxml-sax-perl,0.99,N/A,Artistic-1.0 | GPL-1.0+,libs,r2,None,,No=
ne,ErrHostNoDir:/CPAN/authors/id/G/GR/GRANTM/:-:XML-SAX-0.99.tar.gz:search.=
cpan.org/CPAN/authors/id/G/GR/GRANTM/XML-SAX-0.99.tar.gz, virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   libxml-names=
pacesupport-perl-native perl perl-native,XML::SAX consists of several frame=
work classes for using and building Perl SAX2 XML parsers, filters, and dri=
vers.  It is designed around the need to be able to "plug in" different SAX=
 parsers to an application without requiring programmer intervention.  Thos=
e of you familiar with the DBI will be right at home.  Some of the designs =
come from the Java JAXP specification (SAX part), only without the javaness=
=2E,N/A,http://search.cpan.org/CPAN/authors/id/G/GR/GRANTM/XML-SAX-0.99.tar=
=2Egz,Kai Kang <kai.kang@windriver.com>)
['gstreamer1.0-libav', '1.2.3', 'N/A', 'GPLv2+ & LGPLv2+ & ( (GPLv2+ & LGPL=
v2.1+) | (GPLv3+ & LGPLv3+) )', 'multimedia', 'http://www.gstreamer.net/', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugins-base zli=
b bzip2 orc yasm-native', 'None', 'None', 'Libav-based GStreamer 1.x plugin=
=2E', 'ErrHostNoDir:/src/gst-libav/:-:gst-libav-1.2.3.tar.xz:gstreamer.free=
desktop.org/src/gst-libav/gst-libav-1.2.3.tar.xz', 'N/A', 'http://gstreamer=
=2Efreedesktop.org/src/gst-libav/gst-libav-1.2.3.tar.xz', 'Cristian Iorga <=
cristian.iorga@intel.com>', 'None']
inserted (gstreamer1.0-libav,1.2.3,N/A,GPLv2+ & LGPLv2+ & ( (GPLv2+ & LGPLv=
2.1+) | (GPLv3+ & LGPLv3+) ),multimedia,r0,None,http://www.gstreamer.net/,N=
one,ErrHostNoDir:/src/gst-libav/:-:gst-libav-1.2.3.tar.xz:gstreamer.freedes=
ktop.org/src/gst-libav/gst-libav-1.2.3.tar.xz,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gst=
reamer1.0 gstreamer1.0-plugins-base zlib bzip2 orc yasm-native,Libav-based =
GStreamer 1.x plugin.,N/A,http://gstreamer.freedesktop.org/src/gst-libav/gs=
t-libav-1.2.3.tar.xz,Cristian Iorga <cristian.iorga@intel.com>)
['python-nose', '1.2.1', 'N/A', 'LGPLv2.1', 'devel/python', '', 'r0', ' vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
  python-native python  python-native  python-distribute-native', 'None', '=
None', 'nose extends the test loading and running features of unittest, mak=
ing it easier to write, find and run tests.', 'ErrHostNoDir:/packages/sourc=
e/n/nose/:-:nose-1.2.1.tar.gz:pypi.python.org/packages/source/n/nose/nose-1=
=2E2.1.tar.gz', 'N/A', 'http://pypi.python.org/packages/source/n/nose/nose-=
1.2.1.tar.gz', 'None', 'None']
inserted (python-nose,1.2.1,N/A,LGPLv2.1,devel/python,r0,None,,None,ErrHost=
NoDir:/packages/source/n/nose/:-:nose-1.2.1.tar.gz:pypi.python.org/packages=
/source/n/nose/nose-1.2.1.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc   python-native python  python-native =
 python-distribute-native,nose extends the test loading and running feature=
s of unittest, making it easier to write, find and run tests.,N/A,http://py=
pi.python.org/packages/source/n/nose/nose-1.2.1.tar.gz,None)
['libsdl2', '2.0.1', 'N/A', 'Zlib', 'libs', 'http://www.libsdl.org', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc              virtual/libgl            virtual/lib=
x11 libxext libxrandr libxrender            tslib alsa-lib', 'http://bugzil=
la.libsdl.org/', 'None', 'Simple DirectMedia Layer is a cross-platform mult=
imedia library designed to provide low level access to audio, keyboard, mou=
se, joystick, 3D hardware via OpenGL, and 2D video framebuffer.', 'ErrHostN=
oDir:/release/:-:SDL2-2.0.1.tar.gz:www.libsdl.org/release/SDL2-2.0.1.tar.gz=
', 'N/A', 'http://www.libsdl.org/release/SDL2-2.0.1.tar.gz', 'None', 'None']
inserted (libsdl2,2.0.1,N/A,Zlib,libs,r0,None,http://www.libsdl.org,http://=
bugzilla.libsdl.org/,ErrHostNoDir:/release/:-:SDL2-2.0.1.tar.gz:www.libsdl.=
org/release/SDL2-2.0.1.tar.gz,pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc              virtual=
/libgl            virtual/libx11 libxext libxrandr libxrender            ts=
lib alsa-lib,Simple DirectMedia Layer is a cross-platform multimedia librar=
y designed to provide low level access to audio, keyboard, mouse, joystick,=
 3D hardware via OpenGL, and 2D video framebuffer.,N/A,http://www.libsdl.or=
g/release/SDL2-2.0.1.tar.gz,None)
['parted', '3.1', 'N/A', 'GPLv3+', 'console/tools', 'http://www.gnu.org/sof=
tware/parted/parted.html', 'r1', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native virtual/gettext gett=
ext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  ncurses readline util-linux', 'None', 'None', 'Disk partiti=
on editing/resizing utility.', 'ErrHostNoDir:/gnu/parted/:-:parted-3.1.tar.=
xz:ftp.gnu.org/gnu/parted/parted-3.1.tar.xz', 'N/A', 'ftp://ftp.gnu.org/gnu=
/parted/parted-3.1.tar.xz', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (parted,3.1,N/A,GPLv3+,console/tools,r1,None,http://www.gnu.org/so=
ftware/parted/parted.html,None,ErrHostNoDir:/gnu/parted/:-:parted-3.1.tar.x=
z:ftp.gnu.org/gnu/parted/parted-3.1.tar.xz,pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native virtual/get=
text gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  ncurses readline util-linux,Disk partition editing=
/resizing utility.,N/A,ftp://ftp.gnu.org/gnu/parted/parted-3.1.tar.xz,Hongx=
u Jia <hongxu.jia@windriver.com>)
['gtk-sato-engine', '0.3.3+gitAUTOINC+4740ad8d53', '0.3.3+gitAUTOINC+4740ad=
8', 'LGPLv2.1 & LGPLv2+', 'x11/base', 'http://www.o-hand.com', 'r0', 'pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  gtk+', 'http://bugzilla.yoctoproject.org/', 'None', 'S=
ato theme engine for GTK+.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/gt=
k-sato-engine', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (gtk-sato-engine,0.3.3+gitAUTOINC+4740ad8d53,0.3.3+gitAUTOINC+4740=
ad8,LGPLv2.1 & LGPLv2+,x11/base,r0,None,http://www.o-hand.com,http://bugzil=
la.yoctoproject.org/,MATCH,pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+,Sato theme engine=
 for GTK+.,N/A,git://git.yoctoproject.org/gtk-sato-engine,Valentin Popa <va=
lentin.popa@intel.com>)
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
traditionally been provided by Xlib.', 'ErrHostNoDir:/dist/:-:xcb-util-imag=
e-0.3.9.tar.bz2:xcb.freedesktop.org/dist/xcb-util-image-0.3.9.tar.bz2', 'N/=
A', 'http://xcb.freedesktop.org/dist/xcb-util-image-0.3.9.tar.bz2', 'Lauren=
tiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xcb-util-image,0.3.9,N/A,MIT,x11/libs,r0,None,http://xcb.freedesk=
top.org/XcbUtil/,https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,E=
rrHostNoDir:/dist/:-:xcb-util-image-0.3.9.tar.bz2:xcb.freedesktop.org/dist/=
xcb-util-image-0.3.9.tar.bz2,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native =
xcb-util,The xcb-util module provides a number of libraries which sit on to=
p of libxcb, the core X protocol library, and some of the extension librari=
es. These experimental libraries provide convenience functions and interfac=
es which make the raw X protocol more usable. Some of the libraries also pr=
ovide client-side code which is not strictly part of the X protocol but whi=
ch have traditionally been provided by Xlib.,N/A,http://xcb.freedesktop.org=
/dist/xcb-util-image-0.3.9.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.c=
om>)
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
['util-macros', '1.18.0', 'N/A', 'MIT & MIT-style', 'x11/utils', 'http://ww=
w.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ', 'https://bugs.freedesktop.org=
/enter_bug.cgi?product=3Dxorg', '1', 'M4 autotools macros used by various X=
=2Eorg programs.', 'ErrHostNoDir:/releases/individual/util/:-:util-macros-1=
=2E18.0.tar.gz:xorg.freedesktop.org/releases/individual/util/util-macros-1.=
18.0.tar.gz', 'N/A', 'http://xorg.freedesktop.org/releases/individual/util/=
util-macros-1.18.0.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (util-macros,1.18.0,N/A,MIT & MIT-style,x11/utils,r0,1,http://www.=
x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDi=
r:/releases/individual/util/:-:util-macros-1.18.0.tar.gz:xorg.freedesktop.o=
rg/releases/individual/util/util-macros-1.18.0.tar.gz,pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  ,M4 autotools macros used by various X.org programs.,N/A,http://xorg.f=
reedesktop.org/releases/individual/util/util-macros-1.18.0.tar.gz,Saul Wold=
 <sgw@linux.intel.com>)
['squashfs-tools', '4.2', 'N/A', 'GPL-2 & PD', 'base', '', 'r2', ' virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  attr=
 zlib xz', 'None', 'None', 'Tools for manipulating SquashFS filesystems.', =
'ErrHostNoDir:/squashfs/:-:squashfs4.2.tar.gz:downloads.sourceforge.net/squ=
ashfs/squashfs4.2.tar.gz', '4.2', 'http://downloads.sourceforge.net/squashf=
s/squashfs4.2.tar.gz;name=3Dsquashfs', 'Cristiana Voicu <cristiana.voicu@in=
tel.com>', 'None']
inserted (squashfs-tools,4.2,N/A,GPL-2 & PD,base,r2,None,,None,ErrHostNoDir=
:/squashfs/:-:squashfs4.2.tar.gz:downloads.sourceforge.net/squashfs/squashf=
s4.2.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  attr zlib xz,Tools for manipulating SquashFS filesystems.,=
4.2,http://downloads.sourceforge.net/squashfs/squashfs4.2.tar.gz;name=3Dsqu=
ashfs,Cristiana Voicu <cristiana.voicu@intel.com>)
['libxslt', '1.1.28', 'N/A', 'MIT', 'libs', 'http://xmlsoft.org/XSLT/', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  libxml2', 'https://bugzilla.gnome.org/', 'Non=
e', 'GNOME XSLT library.', 'ErrHostNoDir:/libxslt//:-:libxslt-1.1.28.tar.gz=
:xmlsoft.org/libxslt//libxslt-1.1.28.tar.gz', 'N/A', 'ftp://xmlsoft.org/lib=
xslt//libxslt-1.1.28.tar.gz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxslt,1.1.28,N/A,MIT,libs,r0,None,http://xmlsoft.org/XSLT/,http=
s://bugzilla.gnome.org/,ErrHostNoDir:/libxslt//:-:libxslt-1.1.28.tar.gz:xml=
soft.org/libxslt//libxslt-1.1.28.tar.gz,pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxml2,G=
NOME XSLT library.,N/A,ftp://xmlsoft.org/libxslt//libxslt-1.1.28.tar.gz,Ros=
s Burton <ross.burton@intel.com>)
['python-pycairo', '1.10.0', 'N/A', 'LGPLv2.1 & MPL-1.1', 'python-devel', '=
http://cairographics.org/pycairo', 'r2', 'pkgconfig-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  cairo pytho=
n-native python  python-native ', 'http://bugs.freedesktop.org', 'None', 'P=
ython bindings for the Cairo canvas library.', 'ErrHostNoDir:/releases/:-:p=
y2cairo-1.10.0.tar.bz2:cairographics.org/releases/py2cairo-1.10.0.tar.bz2',=
 'N/A', 'http://cairographics.org/releases/py2cairo-1.10.0.tar.bz2', 'Laure=
ntiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (python-pycairo,1.10.0,N/A,LGPLv2.1 & MPL-1.1,python-devel,r2,None=
,http://cairographics.org/pycairo,http://bugs.freedesktop.org,ErrHostNoDir:=
/releases/:-:py2cairo-1.10.0.tar.bz2:cairographics.org/releases/py2cairo-1.=
10.0.tar.bz2,pkgconfig-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  cairo python-native python  python-nativ=
e ,Python bindings for the Cairo canvas library.,N/A,http://cairographics.o=
rg/releases/py2cairo-1.10.0.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.=
com>)
['mktemp', '1.7', 'N/A', 'ISC', 'console/utils', 'http://www.mktemp.org/', =
'r3', 'autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc   virtual/update-alternatives', 'http://www.mktemp.org/bugs'=
, 'None', 'Enables safe temporary file creation from shell scripts.', 'ErrH=
ostNoDir:/pub/mktemp/:-:mktemp-1.7.tar.gz:ftp.mktemp.org/pub/mktemp/mktemp-=
1.7.tar.gz', 'N/A', 'ftp://ftp.mktemp.org/pub/mktemp/mktemp-1.7.tar.gz', 'C=
hong Lu <Chong.Lu@windriver.com>', 'None']
inserted (mktemp,1.7,N/A,ISC,console/utils,r3,None,http://www.mktemp.org/,h=
ttp://www.mktemp.org/bugs,ErrHostNoDir:/pub/mktemp/:-:mktemp-1.7.tar.gz:ftp=
=2Emktemp.org/pub/mktemp/mktemp-1.7.tar.gz,autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update-alterna=
tives,Enables safe temporary file creation from shell scripts.,N/A,ftp://ft=
p.mktemp.org/pub/mktemp/mktemp-1.7.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['xf86-video-vmware', '13.0.1', 'N/A', 'MIT-X', 'x11/drivers', 'http://www.=
x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextproto f=
ontsproto virtual/xserver xproto randrproto util-macros virtual/libx11 xine=
ramaproto videoproto libpciaccess', 'https://bugs.freedesktop.org', '2', 'v=
mware is an Xorg driver for VMware virtual video cards.', 'ErrHostNoDir:/re=
leases/individual/driver/:-:xf86-video-vmware-13.0.1.tar.bz2:xorg.freedeskt=
op.org/releases/individual/driver/xf86-video-vmware-13.0.1.tar.bz2', 'N/A',=
 'http://xorg.freedesktop.org/releases/individual/driver/xf86-video-vmware-=
13.0.1.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86-video-vmware,13.0.1,N/A,MIT-X,x11/drivers,r0,2,http://www.x.=
org,https://bugs.freedesktop.org,ErrHostNoDir:/releases/individual/driver/:=
-:xf86-video-vmware-13.0.1.tar.bz2:xorg.freedesktop.org/releases/individual=
/driver/xf86-video-vmware-13.0.1.tar.bz2,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  renderpr=
oto videoproto xextproto fontsproto virtual/xserver xproto randrproto util-=
macros virtual/libx11 xineramaproto videoproto libpciaccess,vmware is an Xo=
rg driver for VMware virtual video cards.,N/A,http://xorg.freedesktop.org/r=
eleases/individual/driver/xf86-video-vmware-13.0.1.tar.bz2,Laurentiu Palcu =
<laurentiu.palcu@intel.com>)
['libunistring', '0.9.3', 'N/A', 'GPLv3&LGPLv3', 'devel', 'http://www.gnu.o=
rg/software/libunistring/', 'r3', 'autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', "Text files =
are nowadays usually encoded in Unicode, and may consist of very different =
scripts from Latin letters to Chinese Hanzi with many kinds of special char=
acters accents, right-to-left writing marks, hyphens, Roman numbers, and mu=
ch more. But the POSIX platform APIs for text do not contain adequate funct=
ions for dealing with particular properties of many Unicode characters. In =
fact, the POSIX APIs for text have several assumptions at their base which =
don't hold for Unicode text.  This library provides functions for manipulat=
ing Unicode strings and for manipulating C strings according to the Unicode=
 standard.  This package contains documentation.", 'ErrHostNoDir:/gnu/libun=
istring/:-:libunistring-0.9.3.tar.gz:ftp.gnu.org/gnu/libunistring/libunistr=
ing-0.9.3.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/libunistring/libunistring-=
0.9.3.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (libunistring,0.9.3,N/A,GPLv3&LGPLv3,devel,r3,None,http://www.gnu.=
org/software/libunistring/,None,ErrHostNoDir:/gnu/libunistring/:-:libunistr=
ing-0.9.3.tar.gz:ftp.gnu.org/gnu/libunistring/libunistring-0.9.3.tar.gz,aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  ,Text files are nowadays usually encoded in Unicode, and may consist =
of very different scripts from Latin letters to Chinese Hanzi with many kin=
ds of special characters accents, right-to-left writing marks, hyphens, Rom=
an numbers, and much more. But the POSIX platform APIs for text do not cont=
ain adequate functions for dealing with particular properties of many Unico=
de characters. In fact, the POSIX APIs for text have several assumptions at=
 their base which don't hold for Unicode text.  This library provides funct=
ions for manipulating Unicode strings and for manipulating C strings accord=
ing to the Unicode standard.  This package contains documentation.,N/A,ftp:=
//ftp.gnu.org/gnu/libunistring/libunistring-0.9.3.tar.gz,Laurentiu Palcu <l=
aurentiu.palcu@intel.com>)
['elfutils', '0.148', 'N/A', '(GPL-2+ & Elfutils-Exception)', 'base', 'http=
s://fedorahosted.org/elfutils', 'r11', 'autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native virtual/gettext gettext-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  libtool bzip2 zlib virtual/libintl', 'None', 'None', 'Utilities and li=
braries for handling compiled object files.', 'ErrHostNoDir:/releases/e/l/e=
lfutils/:-:elfutils-0.148.tar.bz2:fedorahosted.org/releases/e/l/elfutils/el=
futils-0.148.tar.bz2', 'N/A', 'https://fedorahosted.org/releases/e/l/elfuti=
ls/elfutils-0.148.tar.bz2', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (elfutils,0.148,N/A,(GPL-2+ & Elfutils-Exception),base,r11,None,ht=
tps://fedorahosted.org/elfutils,None,ErrHostNoDir:/releases/e/l/elfutils/:-=
:elfutils-0.148.tar.bz2:fedorahosted.org/releases/e/l/elfutils/elfutils-0.1=
48.tar.bz2,autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  libtool bzip2 zlib virtu=
al/libintl,Utilities and libraries for handling compiled object files.,N/A,=
https://fedorahosted.org/releases/e/l/elfutils/elfutils-0.148.tar.bz2,Hongx=
u Jia <hongxu.jia@windriver.com>)
['libproxy', '0.4.11', 'N/A', 'LGPLv2.1+', 'libs', 'http://code.google.com/=
p/libproxy/', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native cmake-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gconf glib-2.0'=
, 'http://code.google.com/p/libproxy/issues/list', 'None', 'Library providi=
ng automatic proxy configuration management.', 'ErrHostNoDir:/files/:-:libp=
roxy-0.4.11.zip:libproxy.googlecode.com/files/libproxy-0.4.11.zip', 'N/A', =
'http://libproxy.googlecode.com/files/libproxy-0.4.11.zip', 'Cristian Iorga=
 <cristian.iorga@intel.com>', 'None']
inserted (libproxy,0.4.11,N/A,LGPLv2.1+,libs,r0,None,http://code.google.com=
/p/libproxy/,http://code.google.com/p/libproxy/issues/list,ErrHostNoDir:/fi=
les/:-:libproxy-0.4.11.zip:libproxy.googlecode.com/files/libproxy-0.4.11.zi=
p,pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native cmake-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  gconf glib-2.0,Library providing a=
utomatic proxy configuration management.,N/A,http://libproxy.googlecode.com=
/files/libproxy-0.4.11.zip,Cristian Iorga <cristian.iorga@intel.com>)
['xf86-video-intel', '2.99.910', 'N/A', 'MIT-X', 'x11/drivers', 'http://www=
=2Ex.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextprot=
o fontsproto virtual/xserver xproto randrproto util-macros virtual/libx11 d=
rm libpciaccess pixman xf86driproto dri2proto udev', 'https://bugs.freedesk=
top.org', '2', 'intel is an Xorg driver for Intel integrated graphics chips=
ets. The driver supports depths 8, 15, 16 and 24. On some chipsets, the dri=
ver supports hardware accelerated 3D via the Direct Rendering Infrastructur=
e (DRI).', 'ErrHostNoDir:/releases/individual/driver/:-:xf86-video-intel-2.=
99.910.tar.bz2:xorg.freedesktop.org/releases/individual/driver/xf86-video-i=
ntel-2.99.910.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/indivi=
dual/driver/xf86-video-intel-2.99.910.tar.bz2', 'Laurentiu Palcu <laurentiu=
=2Epalcu@intel.com>', 'None']
inserted (xf86-video-intel,2.99.910,N/A,MIT-X,x11/drivers,r0,2,http://www.x=
=2Eorg,https://bugs.freedesktop.org,ErrHostNoDir:/releases/individual/drive=
r/:-:xf86-video-intel-2.99.910.tar.bz2:xorg.freedesktop.org/releases/indivi=
dual/driver/xf86-video-intel-2.99.910.tar.bz2,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ren=
derproto videoproto xextproto fontsproto virtual/xserver xproto randrproto =
util-macros virtual/libx11 drm libpciaccess pixman xf86driproto dri2proto u=
dev,intel is an Xorg driver for Intel integrated graphics chipsets. The dri=
ver supports depths 8, 15, 16 and 24. On some chipsets, the driver supports=
 hardware accelerated 3D via the Direct Rendering Infrastructure (DRI).,N/A=
,http://xorg.freedesktop.org/releases/individual/driver/xf86-video-intel-2.=
99.910.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['libgpg-error', '1.12', 'N/A', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://www.g=
nupg.org/related_software/libgpg-error/', 'r0', 'pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native virtu=
al/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ', 'https://bugs.g10code.com/gnupg/index', '=
None', 'Small library that defines common error values for all GnuPG compon=
ents.', 'ErrHostNoDir:/gcrypt/libgpg-error/:-:libgpg-error-1.12.tar.bz2:ftp=
=2Egnupg.org/gcrypt/libgpg-error/libgpg-error-1.12.tar.bz2', 'N/A', 'ftp://=
ftp.gnupg.org/gcrypt/libgpg-error/libgpg-error-1.12.tar.bz2', 'Paul Eggleto=
n <paul.eggleton@linux.intel.com>', 'None']
inserted (libgpg-error,1.12,N/A,GPLv2+ & LGPLv2.1+,libs,r0,None,http://www.=
gnupg.org/related_software/libgpg-error/,https://bugs.g10code.com/gnupg/ind=
ex,ErrHostNoDir:/gcrypt/libgpg-error/:-:libgpg-error-1.12.tar.bz2:ftp.gnupg=
=2Eorg/gcrypt/libgpg-error/libgpg-error-1.12.tar.bz2,pkgconfig-native autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native v=
irtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ,Small library that defines common error=
 values for all GnuPG components.,N/A,ftp://ftp.gnupg.org/gcrypt/libgpg-err=
or/libgpg-error-1.12.tar.bz2,Paul Eggleton <paul.eggleton@linux.intel.com>)
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
['rxvt-unicode', '9.19', 'N/A', 'GPLv2+', 'x11/utils', '', 'r0', 'autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
virtual/libx11 libxt libxft gdk-pixbuf virtual/update-alternatives', 'None'=
, 'None', 'rxvt-unicode is a clone of the well known terminal emulator rxvt=
, modified to store text in Unicode (either UCS-2 or UCS-4) and to use loca=
le-correct input and output. It also supports mixing multiple fonts at the =
same time, including Xft fonts.', 'ErrHostNoDir:/rxvt-unicode/Attic/:-:rxvt=
-unicode-9.19.tar.bz2:dist.schmorp.de/rxvt-unicode/Attic/rxvt-unicode-9.19.=
tar.bz2', 'N/A', 'http://dist.schmorp.de/rxvt-unicode/Attic/rxvt-unicode-9.=
19.tar.bz2', 'Cristiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (rxvt-unicode,9.19,N/A,GPLv2+,x11/utils,r0,None,,None,ErrHostNoDir=
:/rxvt-unicode/Attic/:-:rxvt-unicode-9.19.tar.bz2:dist.schmorp.de/rxvt-unic=
ode/Attic/rxvt-unicode-9.19.tar.bz2,autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 libxt libxft gd=
k-pixbuf virtual/update-alternatives,rxvt-unicode is a clone of the well kn=
own terminal emulator rxvt, modified to store text in Unicode (either UCS-2=
 or UCS-4) and to use locale-correct input and output. It also supports mix=
ing multiple fonts at the same time, including Xft fonts.,N/A,http://dist.s=
chmorp.de/rxvt-unicode/Attic/rxvt-unicode-9.19.tar.bz2,Cristiana Voicu <cri=
stiana.voicu@intel.com>)
['libowl-av', '0.1+gitAUTOINC+03030c41ea', '0.1+gitAUTOINC+03030c4', 'LGPLv=
2+', 'x11', 'http://www.o-hand.com', 'r3', 'pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ =
gstreamer gst-plugins-base', 'http://bugzilla.yoctoproject.org/', 'None', '=
OpenedHand Widget Library Audio/Video.', 'MATCH', 'N/A', 'git://git.yoctopr=
oject.org/libowl-av', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (libowl-av,0.1+gitAUTOINC+03030c41ea,0.1+gitAUTOINC+03030c4,LGPLv2=
+,x11,r3,None,http://www.o-hand.com,http://bugzilla.yoctoproject.org/,MATCH=
,pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  gtk+ gstreamer gst-plugins-base,OpenedHand Widge=
t Library Audio/Video.,N/A,git://git.yoctoproject.org/libowl-av,Valentin Po=
pa <valentin.popa@intel.com>)
['init-ifupdown', '1.0', 'INVALID', 'GPLv2', 'base', 'http://packages.debia=
n.org/ifupdown', 'r7', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc   update-rc.d-native', 'None', 'None', 'This pa=
ckage provides high level tools to configure network interfaces', 'MATCH', =
'N/A', 'file://copyright', 'None', 'None']
inserted (init-ifupdown,1.0,INVALID,GPLv2,base,r7,None,http://packages.debi=
an.org/ifupdown,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc   update-rc.d-native,This package provides h=
igh level tools to configure network interfaces,N/A,file://copyright,None)
['tslib', '1.1', 'N/A', 'LGPLv2', 'base', 'http://tslib.berlios.de/', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'None', 'None', 'Tslib is an abstraction lay=
er for touchscreen panel events, as well as a filter stack for the manipula=
tion of those events. Tslib is generally used on embedded devices to provid=
e a common user space interface to touchscreen functionality.', 'ErrHostNoD=
ir:/kergoth/tslib/releases/download/1.1/:1.1:tslib-1.1.tar.xz:github.com/ke=
rgoth/tslib/releases/download/1.1/tslib-1.1.tar.xz', 'N/A', 'https://github=
=2Ecom/kergoth/tslib/releases/download/1.1/tslib-1.1.tar.xz;downloadfilenam=
e=3Dtslib-1.1.tar.xz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'No=
ne']
inserted (tslib,1.1,N/A,LGPLv2,base,r0,None,http://tslib.berlios.de/,None,E=
rrHostNoDir:/kergoth/tslib/releases/download/1.1/:1.1:tslib-1.1.tar.xz:gith=
ub.com/kergoth/tslib/releases/download/1.1/tslib-1.1.tar.xz,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  ,Tslib is an abstraction layer for touchscreen panel events, as =
well as a filter stack for the manipulation of those events. Tslib is gener=
ally used on embedded devices to provide a common user space interface to t=
ouchscreen functionality.,N/A,https://github.com/kergoth/tslib/releases/dow=
nload/1.1/tslib-1.1.tar.xz;downloadfilename=3Dtslib-1.1.tar.xz,Paul Eggleto=
n <paul.eggleton@linux.intel.com>)
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
hors of client APIs for X protocol extensions.', 'ErrHostNoDir:/releases/in=
dividual/lib/:-:libXext-1.3.2.tar.bz2:xorg.freedesktop.org/releases/individ=
ual/lib/libXext-1.3.2.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/release=
s/individual/lib/libXext-1.3.2.tar.bz2', 'Ross Burton <ross.burton@intel.co=
m>', 'None']
inserted (libxext,1.3.2,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/=
individual/lib/:-:libXext-1.3.2.tar.bz2:xorg.freedesktop.org/releases/indiv=
idual/lib/libXext-1.3.2.tar.bz2,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros xprot=
o virtual/libx11 xextproto libxau libxdmcp,libXext provides an X Window Sys=
tem client interface to several extensions to the X protocol.  The supporte=
d protocol extensions are DOUBLE-BUFFER, DPMS, Extended-Visual-Information,=
 LBX, MIT_SHM, MIT_SUNDRY-NONSTANDARD, Multi-Buffering, SECURITY, SHAPE, SY=
NC, TOG-CUP, XC-APPGROUP, XC-MISC, XTEST.  libXext also provides a small se=
t of utility functions to aid authors of client APIs for X protocol extensi=
ons.,N/A,http://xorg.freedesktop.org/releases/individual/lib/libXext-1.3.2.=
tar.bz2,Ross Burton <ross.burton@intel.com>)
['boost', '1.55.0', 'N/A', 'BSL-1.0 & MIT & Python-2.0', 'libs', 'http://ww=
w.boost.org/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  bjam-native zlib bzip2', 'None', 'None', 'Free p=
eer-reviewed portable C++ source libraries.', 'ErrHostNoDir:/boost/:-:boost=
_1_55_0.tar.bz2:downloads.sourceforge.net/boost/boost_1_55_0.tar.bz2', 'N/A=
', 'http://downloads.sourceforge.net/boost/boost_1_55_0.tar.bz2', 'Saul Wol=
d <sgw@linux.intel.com>', 'None']
inserted (boost,1.55.0,N/A,BSL-1.0 & MIT & Python-2.0,libs,r0,None,http://w=
ww.boost.org/,None,ErrHostNoDir:/boost/:-:boost_1_55_0.tar.bz2:downloads.so=
urceforge.net/boost/boost_1_55_0.tar.bz2, virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  bjam-native zlib bzip2,Free p=
eer-reviewed portable C++ source libraries.,N/A,http://downloads.sourceforg=
e.net/boost/boost_1_55_0.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['python-imaging', '1.1.7', 'N/A', 'MIT', 'devel/python', '', 'r5', ' virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  f=
reetype jpeg tiff python-native python  python-native ', 'None', 'None', 'P=
ython Imaging Library (PIL).', 'ErrHostNoDir:/downloads/:-:Imaging-1.1.7.ta=
r.gz:effbot.org/downloads/Imaging-1.1.7.tar.gz', 'N/A', 'http://effbot.org/=
downloads/Imaging-1.1.7.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.co=
m>', 'None']
inserted (python-imaging,1.1.7,N/A,MIT,devel/python,r5,None,,None,ErrHostNo=
Dir:/downloads/:-:Imaging-1.1.7.tar.gz:effbot.org/downloads/Imaging-1.1.7.t=
ar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  freetype jpeg tiff python-native python  python-native ,Python I=
maging Library (PIL).,N/A,http://effbot.org/downloads/Imaging-1.1.7.tar.gz,=
Laurentiu Palcu <laurentiu.palcu@intel.com>)
['libpod-plainer-perl', '1.03', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', '=
http://search.cpan.org/dist/Pod-Plainer/', 'r0', ' virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native', =
'None', 'None', "Pod::Plainer uses Pod::Parser which takes Pod with the (ne=
w) 'C<< .. >>' constructs and returns the old(er) style with just 'C<>'; '<=
' and '>' are replaced by 'E<lt>' and 'E<gt>'. This can be used to pre-proc=
ess Pod before using tools which do not recognise the new style Pods.", 'Er=
rHostNoDir:/CPAN/authors/id/R/RM/RMBARKER/:-:Pod-Plainer-1.03.tar.gz:search=
=2Ecpan.org/CPAN/authors/id/R/RM/RMBARKER/Pod-Plainer-1.03.tar.gz', 'N/A', =
'http://search.cpan.org/CPAN/authors/id/R/RM/RMBARKER/Pod-Plainer-1.03.tar.=
gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libpod-plainer-perl,1.03,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,None=
,http://search.cpan.org/dist/Pod-Plainer/,None,ErrHostNoDir:/CPAN/authors/i=
d/R/RM/RMBARKER/:-:Pod-Plainer-1.03.tar.gz:search.cpan.org/CPAN/authors/id/=
R/RM/RMBARKER/Pod-Plainer-1.03.tar.gz, virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc   perl perl-native,Pod::Plainer u=
ses Pod::Parser which takes Pod with the (new) 'C<< .. >>' constructs and r=
eturns the old(er) style with just 'C<>'; '<' and '>' are replaced by 'E<lt=
>' and 'E<gt>'. This can be used to pre-process Pod before using tools whic=
h do not recognise the new style Pods.,N/A,http://search.cpan.org/CPAN/auth=
ors/id/R/RM/RMBARKER/Pod-Plainer-1.03.tar.gz,Saul Wold <sgw@linux.intel.com=
>)
['unifdef-native', '2.6.18+git', 'INVALID', 'BSD-2-Clause', 'devel', '', 'r=
1', ' ', 'None', 'None', 'Kernel header preprocessor.', 'MATCH', '2.6.18+gi=
t', 'file://unifdef.c', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'Non=
e']
inserted (unifdef-native,2.6.18+git,INVALID,BSD-2-Clause,devel,r1,None,,Non=
e,MATCH, ,Kernel header preprocessor.,2.6.18+git,file://unifdef.c,Laurentiu=
 Palcu <laurentiu.palcu@intel.com>)
['binutils-crosssdk', '2.24', 'N/A', 'GPLv3', 'devel', 'http://www.gnu.org/=
software/binutils/', 'r0', '  flex-native bison-native zlib-native gnu-conf=
ig-native autoconf-native', 'http://sourceware.org/bugzilla/', 'None', 'The=
 GNU Binutils are a collection of binary tools. The main ones are ld (GNU L=
inker), and as (GNU Assembler). This package also includes addition tools s=
uch as addr2line (Converts addresses into filenames and line numbers), ar (=
utility for creating, modifying and extracting archives), nm (list symbols =
in object files), objcopy (copy and translate object files), objdump (Displ=
ay object information), and other tools and related libraries.', 'ErrHostNo=
Dir:/gnu/binutils/:-:binutils-2.24.tar.bz2:ftp.gnu.org/gnu/binutils/binutil=
s-2.24.tar.bz2', 'N/A', 'ftp://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.b=
z2', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (binutils-crosssdk,2.24,N/A,GPLv3,devel,r0,None,http://www.gnu.org=
/software/binutils/,http://sourceware.org/bugzilla/,ErrHostNoDir:/gnu/binut=
ils/:-:binutils-2.24.tar.bz2:ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2=
,  flex-native bison-native zlib-native gnu-config-native autoconf-native,T=
he GNU Binutils are a collection of binary tools. The main ones are ld (GNU=
 Linker), and as (GNU Assembler). This package also includes addition tools=
 such as addr2line (Converts addresses into filenames and line numbers), ar=
 (utility for creating, modifying and extracting archives), nm (list symbol=
s in object files), objcopy (copy and translate object files), objdump (Dis=
play object information), and other tools and related libraries.,N/A,ftp://=
ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2,Robert Yang <liezhi.yang@win=
driver.com>)
['vala', '0.16.0', 'N/A', 'LGPLv2.1', 'devel', 'http://vala-project.org', '=
r1.1', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  bison-native flex-native libxslt-native g=
lib-2.0', 'None', 'None', 'Vala is a C#-like language dedicated to ease GOb=
ject programming. Vala compiles to plain C and has no runtime environment n=
or penalities whatsoever.', 'ErrHostNoDir:/pub/GNOME/sources/vala/0.16/vala=
-0.16.0.tar.xz:0.16:-:ftp.gnome.org/pub/GNOME/sources/vala/0.16/vala-0.16.0=
=2Etar.xz', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/vala/0.16/vala-0=
=2E16.0.tar.xz', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (vala,0.16.0,N/A,LGPLv2.1,devel,r1.1,None,http://vala-project.org,=
None,ErrHostNoDir:/pub/GNOME/sources/vala/0.16/vala-0.16.0.tar.xz:0.16:-:ft=
p.gnome.org/pub/GNOME/sources/vala/0.16/vala-0.16.0.tar.xz,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  bison-native flex-native libxslt-native glib-2.0,Vala is a C#-lik=
e language dedicated to ease GObject programming. Vala compiles to plain C =
and has no runtime environment nor penalities whatsoever.,N/A,http://ftp.gn=
ome.org/pub/GNOME/sources/vala/0.16/vala-0.16.0.tar.xz,Ross Burton <ross.bu=
rton@intel.com>)
['gawk', '4.0.2', 'N/A', 'GPLv3', 'console/utils', 'www.gnu.org/software/ga=
wk', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc   readline virtual/updat=
e-alternatives', 'bug-gawk@gnu.org', 'None', 'The GNU version of awk, a tex=
t processing utility. Awk interprets a special-purpose programming language=
 to do quick and easy text pattern matching and reformatting jobs.', 'ErrHo=
stNoDir:/gnu/gawk/:-:gawk-4.0.2.tar.gz:ftp.gnu.org/gnu/gawk/gawk-4.0.2.tar.=
gz', 'N/A', 'ftp://ftp.gnu.org/gnu/gawk/gawk-4.0.2.tar.gz', 'Chen Qi <Qi.Ch=
en@windriver.com>', 'Version 4.1.0 requires Automake 1.13, but have 1.12.6']
inserted (gawk,4.0.2,N/A,GPLv3,console/utils,r0,None,www.gnu.org/software/g=
awk,bug-gawk@gnu.org,ErrHostNoDir:/gnu/gawk/:-:gawk-4.0.2.tar.gz:ftp.gnu.or=
g/gnu/gawk/gawk-4.0.2.tar.gz,autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   readl=
ine virtual/update-alternatives,The GNU version of awk, a text processing u=
tility. Awk interprets a special-purpose programming language to do quick a=
nd easy text pattern matching and reformatting jobs.,N/A,ftp://ftp.gnu.org/=
gnu/gawk/gawk-4.0.2.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['oh-puzzles', '0.2+gitAUTOINC+92f1a20e4b', '0.2+gitAUTOINC+92f1a20', 'MIT'=
, 'x11', 'http://o-hand.com/', 'r10', 'pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ gconf=
 intltool-native librsvg libowl', 'http://bugzilla.yoctoproject.org/', 'Non=
e', 'Portable Puzzle Collection.', 'MATCH', 'N/A', 'git://git.yoctoproject.=
org/oh-puzzles', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (oh-puzzles,0.2+gitAUTOINC+92f1a20e4b,0.2+gitAUTOINC+92f1a20,MIT,x=
11,r10,None,http://o-hand.com/,http://bugzilla.yoctoproject.org/,MATCH,pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  gtk+ gconf intltool-native librsvg libowl,Portable Pu=
zzle Collection.,N/A,git://git.yoctoproject.org/oh-puzzles,Valentin Popa <v=
alentin.popa@intel.com>)
['xinetd', '2.3.15', 'N/A', 'BSD', 'base', 'http://www.xinetd.org', 'r2', '=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc   update-rc.d-native tcp-wrappers', 'None', 'None', 'Socket-based s=
ervice activation daemon.', 'ErrHostNoDir:/:-:xinetd-2.3.15.tar.gz:www.xine=
td.org/xinetd-2.3.15.tar.gz', 'N/A', 'http://www.xinetd.org/xinetd-2.3.15.t=
ar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xinetd,2.3.15,N/A,BSD,base,r2,None,http://www.xinetd.org,None,Err=
HostNoDir:/:-:xinetd-2.3.15.tar.gz:www.xinetd.org/xinetd-2.3.15.tar.gz,auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc   update-rc.d-native tcp-wrappers,Socket-based service activation daemo=
n.,N/A,http://www.xinetd.org/xinetd-2.3.15.tar.gz,Laurentiu Palcu <laurenti=
u.palcu@intel.com>)
['connman-gnome', '0.7', '0.7', 'GPLv2 & LGPLv2.1', 'libs/network', 'http:/=
/connman.net/', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  gtk+ dbus-glib intltool-native hicolor-icon=
-theme gtk-update-icon-cache-native', 'None', 'None', 'GTK+ frontend for th=
e ConnMan network connection manager.', 'ErrUnknown:github.com/connectivity=
/connman-gnome.git', 'N/A', 'git://github.com/connectivity/connman-gnome.gi=
t', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (connman-gnome,0.7,0.7,GPLv2 & LGPLv2.1,libs/network,r0,None,http:=
//connman.net/,None,ErrUnknown:github.com/connectivity/connman-gnome.git,au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  gtk+ dbus-glib intltool-native hicolor-icon-theme gtk-update-icon-ca=
che-native,GTK+ frontend for the ConnMan network connection manager.,N/A,gi=
t://github.com/connectivity/connman-gnome.git,Cristian Iorga <cristian.iorg=
a@intel.com>)
['tremor', '20120314', 'N/A', 'BSD', 'libs', '', 'r1', 'autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libogg', '=
None', 'None', 'tremor is a fixed point implementation of the vorbis codec.=
', 'UPDATE', '20120122', 'svn://svn.xiph.org/trunk;module=3DTremor;rev=3D18=
221;protocol=3Dhttp', 'Cristian Iorga <cristian.iorga@intel.com>', 'Same re=
vision on different SVN modules']
inserted (tremor,20120314,N/A,BSD,libs,r1,None,,None,UPDATE,autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libogg=
,tremor is a fixed point implementation of the vorbis codec.,20120122,svn:/=
/svn.xiph.org/trunk;module=3DTremor;rev=3D18221;protocol=3Dhttp,Cristian Io=
rga <cristian.iorga@intel.com>)
['clutter-1.0', '1.16.2', 'N/A', 'LGPLv2.1+', 'base', 'http://www.clutter-p=
roject.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  pango glib-2.0 json-glib atk udev cogl-1.0 gtk-doc-stub-native virtual/l=
ibx11 libxi libxfixes virtual/libgl wayland libxkbcommon gdk-pixbuf virtual=
/libx11 libxi libxfixes', 'None', 'None', 'Graphics library for creating ha=
rdware-accelerated user interfaces.', 'ErrHostNoDir:/pub/GNOME/sources/clut=
ter/1.16/clutter-1.16.2.tar.xz:1.16:-:ftp.gnome.org/pub/GNOME/sources/clutt=
er/1.16/clutter-1.16.2.tar.xz', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sour=
ces/clutter/1.16/clutter-1.16.2.tar.xz;name=3Darchive', 'Ross Burton <ross.=
burton@intel.com>', 'None']
inserted (clutter-1.0,1.16.2,N/A,LGPLv2.1+,base,r0,None,http://www.clutter-=
project.org/,None,ErrHostNoDir:/pub/GNOME/sources/clutter/1.16/clutter-1.16=
=2E2.tar.xz:1.16:-:ftp.gnome.org/pub/GNOME/sources/clutter/1.16/clutter-1.1=
6.2.tar.xz,pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  pango g=
lib-2.0 json-glib atk udev cogl-1.0 gtk-doc-stub-native virtual/libx11 libx=
i libxfixes virtual/libgl wayland libxkbcommon gdk-pixbuf virtual/libx11 li=
bxi libxfixes,Graphics library for creating hardware-accelerated user inter=
faces.,N/A,http://ftp.gnome.org/pub/GNOME/sources/clutter/1.16/clutter-1.16=
=2E2.tar.xz;name=3Darchive,Ross Burton <ross.burton@intel.com>)
['shadow-securetty', '4.1.4.3', 'INVALID', 'MIT', 'base utils', '', 'r3', '=
 ', 'None', 'None', 'Provider of the machine specific securetty file.', 'MA=
TCH', 'N/A', 'file://securetty', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (shadow-securetty,4.1.4.3,INVALID,MIT,base utils,r3,None,,None,MAT=
CH, ,Provider of the machine specific securetty file.,N/A,file://securetty,=
Chen Qi <Qi.Chen@windriver.com>)
['gtk+3', '3.10.7', 'N/A', 'LGPLv2 & LGPLv2+ & LGPLv2.1+', 'libs', 'http://=
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
=2E', 'ErrHostNoDir:/pub/gnome/sources/gtk+/3.10/gtk+-3.10.7.tar.xz:3.10:-:=
ftp.gnome.org/pub/gnome/sources/gtk+/3.10/gtk+-3.10.7.tar.xz', 'N/A', 'http=
://ftp.gnome.org/pub/gnome/sources/gtk+/3.10/gtk+-3.10.7.tar.xz', 'Valentin=
 Popa <valentin.popa@intel.com>', 'None']
inserted (gtk+3,3.10.7,N/A,LGPLv2 & LGPLv2+ & LGPLv2.1+,libs,r0,None,http:/=
/www.gtk.org,https://bugzilla.gnome.org/,ErrHostNoDir:/pub/gnome/sources/gt=
k+/3.10/gtk+-3.10.7.tar.xz:3.10:-:ftp.gnome.org/pub/gnome/sources/gtk+/3.10=
/gtk+-3.10.7.tar.xz,pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  qemu-native glib-2.0 cairo pa=
ngo atk jpeg libpng gdk-pixbuf            docbook-utils-native gdk-pixbuf-n=
ative glib-2.0-native gtk-doc-stub-native wayland libxkbcommon at-spi2-atk =
fontconfig libx11 libxext libxcursor libxi libxdamage libxrandr libxrender =
libxcomposite libxfixes virtual/update-alternatives,GTK+ is a multi-platfor=
m toolkit for creating graphical user interfaces. Offering a complete set o=
f widgets, GTK+ is suitable for projects ranging from small one-off project=
s to complete application suites.,N/A,http://ftp.gnome.org/pub/gnome/source=
s/gtk+/3.10/gtk+-3.10.7.tar.xz,Valentin Popa <valentin.popa@intel.com>)
['python-gst', '0.10.22', 'N/A', 'LGPLv2.1', 'devel/python', '', 'r2', 'pkg=
config-native autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  gstreamer gst-plugins-base python-pygobject python-n=
ative python  python-native ', 'None', 'None', 'Python bindings for the GSt=
reamer multimedia framework.', 'ErrHostNoDir:/src/gst-python/:-:gst-python-=
0.10.22.tar.bz2:gstreamer.freedesktop.org/src/gst-python/gst-python-0.10.22=
=2Etar.bz2', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-python/gst-py=
thon-0.10.22.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None=
']
inserted (python-gst,0.10.22,N/A,LGPLv2.1,devel/python,r2,None,,None,ErrHos=
tNoDir:/src/gst-python/:-:gst-python-0.10.22.tar.bz2:gstreamer.freedesktop.=
org/src/gst-python/gst-python-0.10.22.tar.bz2,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gst=
reamer gst-plugins-base python-pygobject python-native python  python-nativ=
e ,Python bindings for the GStreamer multimedia framework.,N/A,http://gstre=
amer.freedesktop.org/src/gst-python/gst-python-0.10.22.tar.bz2,Laurentiu Pa=
lcu <laurentiu.palcu@intel.com>)
['xserver-xf86-config', '0.1', 'INVALID', 'MIT-X', 'x11/base', 'http://www.=
x.org', 'r27', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', 'None', 'X.Org X server configuration file.=
', 'MATCH', 'N/A', 'file://xorg.conf', 'Laurentiu Palcu <laurentiu.palcu@in=
tel.com>', 'None']
inserted (xserver-xf86-config,0.1,INVALID,MIT-X,x11/base,r27,None,http://ww=
w.x.org,None,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ,X.Org X server configuration file.,N/A,file://xorg=
=2Econf,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['gccmakedep', '1.0.2', 'N/A', 'MIT-X', 'x11/utils', 'http://www.x.org', 'r=
3', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/=
enter_bug.cgi?product=3Dxorg', '1', "create dependencies in makefiles using=
 'gcc -M'", 'ErrHostNoDir:/releases/individual/util/:-:gccmakedep-1.0.2.tar=
=2Egz:xorg.freedesktop.org/releases/individual/util/gccmakedep-1.0.2.tar.gz=
', 'N/A', 'http://xorg.freedesktop.org/releases/individual/util/gccmakedep-=
1.0.2.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (gccmakedep,1.0.2,N/A,MIT-X,x11/utils,r3,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/=
individual/util/:-:gccmakedep-1.0.2.tar.gz:xorg.freedesktop.org/releases/in=
dividual/util/gccmakedep-1.0.2.tar.gz,pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros=
,create dependencies in makefiles using 'gcc -M',N/A,http://xorg.freedeskto=
p.org/releases/individual/util/gccmakedep-1.0.2.tar.gz,Laurentiu Palcu <lau=
rentiu.palcu@intel.com>)
['lsbinitscripts', '9.52', 'N/A', 'GPLv2', 'base', '', 'r0', ' virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  popt gli=
b-2.0 virtual/update-alternatives', 'None', 'None', 'SysV init scripts whic=
h are only used in an LSB image.', 'ErrHostNoDir:/repo/pkgs/initscripts/ini=
tscripts-9.52.tar.bz2/2453811ec27a781a77f309f356663d9e/:-:initscripts-9.52.=
tar.bz2:pkgs.fedoraproject.org/repo/pkgs/initscripts/initscripts-9.52.tar.b=
z2/2453811ec27a781a77f309f356663d9e/initscripts-9.52.tar.bz2', 'N/A', 'http=
://pkgs.fedoraproject.org/repo/pkgs/initscripts/initscripts-9.52.tar.bz2/24=
53811ec27a781a77f309f356663d9e/initscripts-9.52.tar.bz2', 'Saul Wold <sgw@l=
inux.intel.com>', 'None']
inserted (lsbinitscripts,9.52,N/A,GPLv2,base,r0,None,,None,ErrHostNoDir:/re=
po/pkgs/initscripts/initscripts-9.52.tar.bz2/2453811ec27a781a77f309f356663d=
9e/:-:initscripts-9.52.tar.bz2:pkgs.fedoraproject.org/repo/pkgs/initscripts=
/initscripts-9.52.tar.bz2/2453811ec27a781a77f309f356663d9e/initscripts-9.52=
=2Etar.bz2, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  popt glib-2.0 virtual/update-alternatives,SysV init scripts=
 which are only used in an LSB image.,N/A,http://pkgs.fedoraproject.org/rep=
o/pkgs/initscripts/initscripts-9.52.tar.bz2/2453811ec27a781a77f309f356663d9=
e/initscripts-9.52.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['libnewt-python', '0.52.14', 'N/A', 'LGPLv2', 'libs', 'https://fedorahoste=
d.org/newt/', 'r2', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  libnewt python  python-native ', 'None', 'Non=
e', 'Newt is a programming library for color text mode, widget based user i=
nterfaces.  Newt can be used to add stacked windows, entry widgets, checkbo=
xes, radio buttons, labels, plain text fields, scrollbars, etc., to text mo=
de user interfaces.  This package also contains the shared library needed b=
y programs built with newt, as well as a /usr/bin/dialog replacement called=
 whiptail.  Newt is based on the slang library.', 'ErrHostNoDir:/releases/n=
/e/newt/:-:newt-0.52.14.tar.gz:fedorahosted.org/releases/n/e/newt/newt-0.52=
=2E14.tar.gz', 'N/A', 'https://fedorahosted.org/releases/n/e/newt/newt-0.52=
=2E14.tar.gz', 'None', 'None']
inserted (libnewt-python,0.52.14,N/A,LGPLv2,libs,r2,None,https://fedorahost=
ed.org/newt/,None,ErrHostNoDir:/releases/n/e/newt/:-:newt-0.52.14.tar.gz:fe=
dorahosted.org/releases/n/e/newt/newt-0.52.14.tar.gz,autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libnewt pytho=
n  python-native ,Newt is a programming library for color text mode, widget=
 based user interfaces.  Newt can be used to add stacked windows, entry wid=
gets, checkboxes, radio buttons, labels, plain text fields, scrollbars, etc=
=2E, to text mode user interfaces.  This package also contains the shared l=
ibrary needed by programs built with newt, as well as a /usr/bin/dialog rep=
lacement called whiptail.  Newt is based on the slang library.,N/A,https://=
fedorahosted.org/releases/n/e/newt/newt-0.52.14.tar.gz,None)
['gnu-config', '20120814', 'N/A', 'GPLv2', 'devel', '', 'r0', ' ', 'None', =
'None', 'Tool that installs the GNU config.guess / config.sub into a direct=
ory tree', 'ErrHostNoDir:/releases/gnu-config/:-:gnu-config-20120814.tar.bz=
2:downloads.yoctoproject.org/releases/gnu-config/gnu-config-20120814.tar.bz=
2', 'N/A', 'http://downloads.yoctoproject.org/releases/gnu-config/gnu-confi=
g-20120814.tar.bz2', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (gnu-config,20120814,N/A,GPLv2,devel,r0,None,,None,ErrHostNoDir:/r=
eleases/gnu-config/:-:gnu-config-20120814.tar.bz2:downloads.yoctoproject.or=
g/releases/gnu-config/gnu-config-20120814.tar.bz2, ,Tool that installs the =
GNU config.guess / config.sub into a directory tree,N/A,http://downloads.yo=
ctoproject.org/releases/gnu-config/gnu-config-20120814.tar.bz2,Robert Yang =
<liezhi.yang@windriver.com>)
['python-git', '0.3.2.RC1', 'N/A', 'BSD-3-Clause', 'devel/python', 'http://=
github.com/gitpython-developers/GitPython', 'r0', ' virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  python-gitdb python=
-native python  python-native  python-distribute-native', 'None', 'None', '=
GitPython provides object model read and write access to a git repository. =
Access repository information conveniently, alter the index directly, handl=
e remotes, or go down to low-level object database access with big-files su=
pport.', 'ErrHostNoDir:/packages/source/G/GitPython/:-:GitPython-0.3.2.RC1.=
tar.gz:pypi.python.org/packages/source/G/GitPython/GitPython-0.3.2.RC1.tar.=
gz', 'N/A', 'http://pypi.python.org/packages/source/G/GitPython/GitPython-0=
=2E3.2.RC1.tar.gz', 'None', 'None']
inserted (python-git,0.3.2.RC1,N/A,BSD-3-Clause,devel/python,r0,None,http:/=
/github.com/gitpython-developers/GitPython,None,ErrHostNoDir:/packages/sour=
ce/G/GitPython/:-:GitPython-0.3.2.RC1.tar.gz:pypi.python.org/packages/sourc=
e/G/GitPython/GitPython-0.3.2.RC1.tar.gz, virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  python-gitdb python-native py=
thon  python-native  python-distribute-native,GitPython provides object mod=
el read and write access to a git repository. Access repository information=
 conveniently, alter the index directly, handle remotes, or go down to low-=
level object database access with big-files support.,N/A,http://pypi.python=
=2Eorg/packages/source/G/GitPython/GitPython-0.3.2.RC1.tar.gz,None)
['eglibc-initial', '2.19', 'N/A', 'GPLv2 & LGPLv2.1', 'libs', 'http://www.e=
glibc.org/home', 'r0', 'autoconf-native automake-native libtool-native gnu-=
config-native  linux-libc-headers virtual/i586-poky-linux-gcc-initial kconf=
ig-frontends-native', 'None', 'None', "Embedded GLIBC (EGLIBC) is a variant=
 of the GNU C Library (GLIBC) that is designed to work well on embedded sys=
tems. EGLIBC strives to be source and binary compatible with GLIBC. EGLIBC'=
s goals include reduced footprint, configurable components, better support =
for cross-compilation and cross-testing.", 'ErrHostNoDir:/releases/eglibc/:=
-:eglibc-2.19-svnr25243.tar.bz2:downloads.yoctoproject.org/releases/eglibc/=
eglibc-2.19-svnr25243.tar.bz2', 'N/A', 'http://downloads.yoctoproject.org/r=
eleases/eglibc/eglibc-2.19-svnr25243.tar.bz2', 'Laurentiu Palcu <laurentiu.=
palcu@intel.com>', 'None']
inserted (eglibc-initial,2.19,N/A,GPLv2 & LGPLv2.1,libs,r0,None,http://www.=
eglibc.org/home,None,ErrHostNoDir:/releases/eglibc/:-:eglibc-2.19-svnr25243=
=2Etar.bz2:downloads.yoctoproject.org/releases/eglibc/eglibc-2.19-svnr25243=
=2Etar.bz2,autoconf-native automake-native libtool-native gnu-config-native=
  linux-libc-headers virtual/i586-poky-linux-gcc-initial kconfig-frontends-=
native,Embedded GLIBC (EGLIBC) is a variant of the GNU C Library (GLIBC) th=
at is designed to work well on embedded systems. EGLIBC strives to be sourc=
e and binary compatible with GLIBC. EGLIBC's goals include reduced footprin=
t, configurable components, better support for cross-compilation and cross-=
testing.,N/A,http://downloads.yoctoproject.org/releases/eglibc/eglibc-2.19-=
svnr25243.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['alsa-utils', '1.0.27.2', 'N/A', 'GPLv2+', 'console/utils', 'http://www.al=
sa-project.org', 'r0', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  alsa-lib nc=
urses libsamplerate0 udev udev', 'https://bugtrack.alsa-project.org/alsa-bu=
g/login_page.php', 'None', 'ALSA sound utilities.', 'ErrHostNoDir:/pub/util=
s/:-:alsa-utils-1.0.27.2.tar.bz2:ftp.alsa-project.org/pub/utils/alsa-utils-=
1.0.27.2.tar.bz2', 'N/A', 'ftp://ftp.alsa-project.org/pub/utils/alsa-utils-=
1.0.27.2.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (alsa-utils,1.0.27.2,N/A,GPLv2+,console/utils,r0,None,http://www.a=
lsa-project.org,https://bugtrack.alsa-project.org/alsa-bug/login_page.php,E=
rrHostNoDir:/pub/utils/:-:alsa-utils-1.0.27.2.tar.bz2:ftp.alsa-project.org/=
pub/utils/alsa-utils-1.0.27.2.tar.bz2,autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  alsa-lib ncurses libsamplerate0 udev udev,ALSA sound utilities.,N/A,ftp:=
//ftp.alsa-project.org/pub/utils/alsa-utils-1.0.27.2.tar.bz2,Cristian Iorga=
 <cristian.iorga@intel.com>)
['foomatic-filters', '4.0.17', 'N/A', 'GPLv2+', 'base', '', 'r1', 'autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
  cups perl libxml2', 'None', 'None', 'Foomatic is a printer database desig=
ned to make it easier to set up common printers for use with UNIX-like oper=
ating systems.It provides the "glue" between a print spooler (like CUPS or =
lpr) and the printer, by processing files sent to the printer.  This packag=
e consists of filters used by the printer spoolers to convert the incoming =
PostScript data into the printer\'s native format using a printer-specific,=
 but spooler-independent PPD file. ', 'ErrHostNoDir:/download/foomatic/:-:f=
oomatic-filters-4.0.17.tar.gz:www.openprinting.org/download/foomatic/foomat=
ic-filters-4.0.17.tar.gz', 'N/A', 'http://www.openprinting.org/download/foo=
matic/foomatic-filters-4.0.17.tar.gz', 'Saul Wold <sgw@linux.intel.com>', '=
None']
inserted (foomatic-filters,4.0.17,N/A,GPLv2+,base,r1,None,,None,ErrHostNoDi=
r:/download/foomatic/:-:foomatic-filters-4.0.17.tar.gz:www.openprinting.org=
/download/foomatic/foomatic-filters-4.0.17.tar.gz,autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   cups perl libxm=
l2,Foomatic is a printer database designed to make it easier to set up comm=
on printers for use with UNIX-like operating systems.It provides the "glue"=
 between a print spooler (like CUPS or lpr) and the printer, by processing =
files sent to the printer.  This package consists of filters used by the pr=
inter spoolers to convert the incoming PostScript data into the printer's n=
ative format using a printer-specific, but spooler-independent PPD file. ,N=
/A,http://www.openprinting.org/download/foomatic/foomatic-filters-4.0.17.ta=
r.gz,Saul Wold <sgw@linux.intel.com>)
['libusb1', '1.0.9', 'N/A', 'LGPLv2.1+', 'libs', 'http://libusb.sf.net', 'r=
1', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ', 'http://www.libusb.org/report', 'None', '=
Userspace library to access USB (version 1.0).', 'ErrHostNoDir:/libusb/:-:l=
ibusb-1.0.9.tar.bz2:downloads.sourceforge.net/libusb/libusb-1.0.9.tar.bz2',=
 'N/A', 'http://downloads.sourceforge.net/libusb/libusb-1.0.9.tar.bz2', 'Sa=
ul Wold <sgw@linux.intel.com>', 'None']
inserted (libusb1,1.0.9,N/A,LGPLv2.1+,libs,r1,None,http://libusb.sf.net,htt=
p://www.libusb.org/report,ErrHostNoDir:/libusb/:-:libusb-1.0.9.tar.bz2:down=
loads.sourceforge.net/libusb/libusb-1.0.9.tar.bz2,pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 ,Userspace library to access USB (version 1.0).,N/A,http://downloads.sourc=
eforge.net/libusb/libusb-1.0.9.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['apt', '0.9.9.4', 'N/A', 'GPLv2.0+', 'base', '', 'r0', 'autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native virtual/gettex=
t gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  curl db', 'None', 'None', 'Advanced front-end for dpk=
g.', 'ErrHostNoDir:/debian/pool/main/a/apt/:-:apt_0.9.9.4.tar.gz:ftp.debian=
=2Eorg/debian/pool/main/a/apt/apt_0.9.9.4.tar.gz', 'N/A', 'ftp://ftp.debian=
=2Eorg/debian/pool/main/a/apt/apt_0.9.9.4.tar.gz', 'Cristiana Voicu <cristi=
ana.voicu@intel.com>', 'None']
inserted (apt,0.9.9.4,N/A,GPLv2.0+,base,r0,None,,None,ErrHostNoDir:/debian/=
pool/main/a/apt/:-:apt_0.9.9.4.tar.gz:ftp.debian.org/debian/pool/main/a/apt=
/apt_0.9.9.4.tar.gz,autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  curl db,Advance=
d front-end for dpkg.,N/A,ftp://ftp.debian.org/debian/pool/main/a/apt/apt_0=
=2E9.9.4.tar.gz,Cristiana Voicu <cristiana.voicu@intel.com>)
['libxcb', '1.10', 'N/A', 'MIT', 'x11/libs', 'http://xcb.freedesktop.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  xcb-proto xproto libxau libxslt-native xcb=
-proto-native libpthread-stubs  python-native  libxdmcp', 'https://bugs.fre=
edesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'The X protocol C-langua=
ge Binding (XCB) is a replacement for Xlib featuring a small footprint, lat=
ency hiding, direct access to the protocol, improved threading support, and=
 extensibility.', 'ErrHostNoDir:/dist/:-:libxcb-1.10.tar.bz2:xcb.freedeskto=
p.org/dist/libxcb-1.10.tar.bz2', 'N/A', 'http://xcb.freedesktop.org/dist/li=
bxcb-1.10.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxcb,1.10,N/A,MIT,x11/libs,r0,None,http://xcb.freedesktop.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,ErrHostNoDir:/dist/=
:-:libxcb-1.10.tar.bz2:xcb.freedesktop.org/dist/libxcb-1.10.tar.bz2,pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  xcb-proto xproto libxau libxslt-native xcb-proto-native =
libpthread-stubs  python-native  libxdmcp,The X protocol C-language Binding=
 (XCB) is a replacement for Xlib featuring a small footprint, latency hidin=
g, direct access to the protocol, improved threading support, and extensibi=
lity.,N/A,http://xcb.freedesktop.org/dist/libxcb-1.10.tar.bz2,Ross Burton <=
ross.burton@intel.com>)
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
ethod, with no duplicates.', 'ErrHostNoDir:/CPAN/authors/id/S/SM/SMUELLER/:=
-:Class-ISA-0.36.tar.gz:search.cpan.org/CPAN/authors/id/S/SM/SMUELLER/Class=
-ISA-0.36.tar.gz', 'N/A', 'http://search.cpan.org/CPAN/authors/id/S/SM/SMUE=
LLER/Class-ISA-0.36.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libclass-isa-perl,0.36,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,None,h=
ttp://search.cpan.org/dist/Class-ISA/,None,ErrHostNoDir:/CPAN/authors/id/S/=
SM/SMUELLER/:-:Class-ISA-0.36.tar.gz:search.cpan.org/CPAN/authors/id/S/SM/S=
MUELLER/Class-ISA-0.36.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc   perl perl-native,Suppose you have a cla=
ss (like Food::Fish::Fishstick) that is derived, via its @ISA, from one or =
more superclasses (as Food::Fish::Fishstick is from Food::Fish,Life::Fungus=
, and Chemicals), and some of those superclasses may themselves each bederi=
ved, via its @ISA, from one or more superclasses (as above).When, then, you=
 call a method in that class ($fishstick->calories), Perl first searchesthe=
re for that method, but if it's not there, it goes searching in its supercl=
asses, andso on, in a depth-first (or maybe "height-first" is the word) sea=
rch. In the above example,it'd first look in Food::Fish, then Food, then Ma=
tter, then Life::Fungus, then Life, thenChemicals.This library, Class::ISA,=
 provides functions that return that list -- the list(in order) of names of=
 classes Perl would search to find a method, with no duplicates.,N/A,http:/=
/search.cpan.org/CPAN/authors/id/S/SM/SMUELLER/Class-ISA-0.36.tar.gz,Saul W=
old <sgw@linux.intel.com>)
['xcb-util-wm', '0.4.0', 'N/A', 'MIT', 'x11/libs', 'http://xcb.freedesktop.=
org/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native', 'http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'The xcb-uti=
l module provides a number of libraries which sit on top of libxcb, the cor=
e X protocol library, and some of the extension libraries. These experiment=
al libraries provide convenience functions and interfaces which make the ra=
w X protocol more usable. Some of the libraries also provide client-side co=
de which is not strictly part of the X protocol but which have traditionall=
y been provided by Xlib.', 'ErrHostNoDir:/dist/:-:xcb-util-wm-0.4.0.tar.bz2=
:xcb.freedesktop.org/dist/xcb-util-wm-0.4.0.tar.bz2', 'N/A', 'http://xcb.fr=
eedesktop.org/dist/xcb-util-wm-0.4.0.tar.bz2', 'Laurentiu Palcu <laurentiu.=
palcu@intel.com>', 'None']
inserted (xcb-util-wm,0.4.0,N/A,MIT,x11/libs,r0,None,http://xcb.freedesktop=
=2Eorg/XcbUtil/,https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,Er=
rHostNoDir:/dist/:-:xcb-util-wm-0.4.0.tar.bz2:xcb.freedesktop.org/dist/xcb-=
util-wm-0.4.0.tar.bz2,pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native,The xcb=
-util module provides a number of libraries which sit on top of libxcb, the=
 core X protocol library, and some of the extension libraries. These experi=
mental libraries provide convenience functions and interfaces which make th=
e raw X protocol more usable. Some of the libraries also provide client-sid=
e code which is not strictly part of the X protocol but which have traditio=
nally been provided by Xlib.,N/A,http://xcb.freedesktop.org/dist/xcb-util-w=
m-0.4.0.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['zip', '30', 'N/A', 'BSD-3-Clause', 'console/utils', 'http://www.info-zip.=
org', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  ', 'None', 'None', 'Compressor/archiver for creating and =
modifying .zip files.', 'ErrHostNoDir:/pub/infozip/src/:-:zip30.tgz:ftp.inf=
o-zip.org/pub/infozip/src/zip30.tgz', '3.0', 'ftp://ftp.info-zip.org/pub/in=
fozip/src/zip30.tgz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (zip,30,N/A,BSD-3-Clause,console/utils,r2,None,http://www.info-zip=
=2Eorg,None,ErrHostNoDir:/pub/infozip/src/:-:zip30.tgz:ftp.info-zip.org/pub=
/infozip/src/zip30.tgz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ,Compressor/archiver for creating and modifying=
 .zip files.,3.0,ftp://ftp.info-zip.org/pub/infozip/src/zip30.tgz,Chen Qi <=
Qi.Chen@windriver.com>)
['matchbox-wm', '1.2+gitAUTOINC+29544f0e61', '1.2+gitAUTOINC+29544f0', 'GPL=
v2+', 'x11/wm', 'http://matchbox-project.org', 'r0', 'pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  libmatchbox virtual/libx11 libxext libxrender startup-notification exp=
at gconf libxcursor libxfixes', 'http://bugzilla.yoctoproject.org/', 'None'=
, 'Matchbox lightweight window manager.', 'MATCH', 'N/A', 'git://git.yoctop=
roject.org/matchbox-window-manager', 'Valentin Popa <valentin.popa@intel.co=
m>', 'None']
inserted (matchbox-wm,1.2+gitAUTOINC+29544f0e61,1.2+gitAUTOINC+29544f0,GPLv=
2+,x11/wm,r0,None,http://matchbox-project.org,http://bugzilla.yoctoproject.=
org/,MATCH,pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  libmatchbox virtual/libx11 libxext lib=
xrender startup-notification expat gconf libxcursor libxfixes,Matchbox ligh=
tweight window manager.,N/A,git://git.yoctoproject.org/matchbox-window-mana=
ger,Valentin Popa <valentin.popa@intel.com>)
['qt4-embedded', '4.8.5', 'N/A', 'LGPLv2.1 | GPLv3', 'libs', 'http://qt-pro=
ject.org/', 'r0', 'qt4-tools-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   directfb tslib qt4-tools-native f=
reetype jpeg libpng zlib dbus openssl glib-2.0 gstreamer gst-plugins-base s=
qlite3 tiff icu pulseaudio', 'None', 'None', 'Qt is a versatile cross-platf=
orm application framework -- this is the embedded (framebuffer) version.', =
'ErrHostNoDir:/official_releases/qt/4.8/4.8.5/qt-everywhere-opensource-src-=
4.8.5.tar.gz:4.8:-:download.qt-project.org/official_releases/qt/4.8/4.8.5/q=
t-everywhere-opensource-src-4.8.5.tar.gz', 'N/A', 'http://download.qt-proje=
ct.org/official_releases/qt/4.8/4.8.5/qt-everywhere-opensource-src-4.8.5.ta=
r.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (qt4-embedded,4.8.5,N/A,LGPLv2.1 | GPLv3,libs,r0,None,http://qt-pr=
oject.org/,None,ErrHostNoDir:/official_releases/qt/4.8/4.8.5/qt-everywhere-=
opensource-src-4.8.5.tar.gz:4.8:-:download.qt-project.org/official_releases=
/qt/4.8/4.8.5/qt-everywhere-opensource-src-4.8.5.tar.gz,qt4-tools-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c   directfb tslib qt4-tools-native freetype jpeg libpng zlib dbus openssl =
glib-2.0 gstreamer gst-plugins-base sqlite3 tiff icu pulseaudio,Qt is a ver=
satile cross-platform application framework -- this is the embedded (frameb=
uffer) version.,N/A,http://download.qt-project.org/official_releases/qt/4.8=
/4.8.5/qt-everywhere-opensource-src-4.8.5.tar.gz,Paul Eggleton <paul.egglet=
on@linux.intel.com>)
['startup-notification', '0.12', 'N/A', 'LGPLv2+', 'libs', 'http://www.free=
desktop.org/wiki/Software/startup-notification/', 'r2', 'pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  virtual/libx11 libsm xcb-util', 'https://bugs.freedesktop.org/enter=
_bug.cgi?product=3DSpecifications', 'None', 'Enables monitoring and display=
 of application startup.', 'ErrHostNoDir:/software/startup-notification/rel=
eases/:-:startup-notification-0.12.tar.gz:www.freedesktop.org/software/star=
tup-notification/releases/startup-notification-0.12.tar.gz', 'N/A', 'http:/=
/www.freedesktop.org/software/startup-notification/releases/startup-notific=
ation-0.12.tar.gz', 'Cristiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (startup-notification,0.12,N/A,LGPLv2+,libs,r2,None,http://www.fre=
edesktop.org/wiki/Software/startup-notification/,https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3DSpecifications,ErrHostNoDir:/software/startup-no=
tification/releases/:-:startup-notification-0.12.tar.gz:www.freedesktop.org=
/software/startup-notification/releases/startup-notification-0.12.tar.gz,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  virtual/libx11 libsm xcb-util,Enables monitoring an=
d display of application startup.,N/A,http://www.freedesktop.org/software/s=
tartup-notification/releases/startup-notification-0.12.tar.gz,Cristiana Voi=
cu <cristiana.voicu@intel.com>)
['glib-2.0', '2.38.2', 'N/A', 'LGPLv2+ & BSD & PD', 'libs', '', 'r0', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0-native virtua=
l/libiconv libffi zlib dbus gtk-doc-stub-native', 'http://bugzilla.gnome.or=
g', '1', 'GLib is a general-purpose utility library, which provides many us=
eful data types, macros, type conversions, string utilities, file utilities=
, a main loop abstraction, and so on.', 'ErrHostNoDir:/pub/GNOME/sources/gl=
ib/2.38/glib-2.38.2.tar.xz:2.38:-:ftp.gnome.org/pub/GNOME/sources/glib/2.38=
/glib-2.38.2.tar.xz', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/glib/2=
=2E38/glib-2.38.2.tar.xz', 'Robert Yang <liezhi.yang@windriver.com>', 'None=
']
inserted (glib-2.0,2.38.2,N/A,LGPLv2+ & BSD & PD,libs,r0,1,,http://bugzilla=
=2Egnome.org,ErrHostNoDir:/pub/GNOME/sources/glib/2.38/glib-2.38.2.tar.xz:2=
=2E38:-:ftp.gnome.org/pub/GNOME/sources/glib/2.38/glib-2.38.2.tar.xz,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0-native virtual/=
libiconv libffi zlib dbus gtk-doc-stub-native,GLib is a general-purpose uti=
lity library, which provides many useful data types, macros, type conversio=
ns, string utilities, file utilities, a main loop abstraction, and so on.,N=
/A,http://ftp.gnome.org/pub/GNOME/sources/glib/2.38/glib-2.38.2.tar.xz,Robe=
rt Yang <liezhi.yang@windriver.com>)
['tzdata', '2013i', 'N/A', 'PD & BSD', 'base', 'ftp://elsie.nci.nih.gov/pub=
/', 'r0', ' tzcode-native', 'None', 'None', 'Timezone database.', 'ErrHostN=
oDir:/tz/releases/:-:tzdata2013i.tar.gz:ftp.iana.org/tz/releases/tzdata2013=
i.tar.gz', 'N/A', 'ftp://ftp.iana.org/tz/releases/tzdata2013i.tar.gz;name=
=3Dtzdata', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (tzdata,2013i,N/A,PD & BSD,base,r0,None,ftp://elsie.nci.nih.gov/pu=
b/,None,ErrHostNoDir:/tz/releases/:-:tzdata2013i.tar.gz:ftp.iana.org/tz/rel=
eases/tzdata2013i.tar.gz, tzcode-native,Timezone database.,N/A,ftp://ftp.ia=
na.org/tz/releases/tzdata2013i.tar.gz;name=3Dtzdata,Robert Yang <liezhi.yan=
g@windriver.com>)
['m4', '1.4.17', 'N/A', 'GPLv3', 'base', '', 'r0', 'autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'No=
ne', 'GNU m4 is an implementation of the traditional Unix macro processor. =
 It is mostly SVR4 compatible although it has some extensions (for example,=
 handling more than 9 positional parameters to macros). GNU M4 also has bui=
lt-in functions for including files, running shell commands, doing arithmet=
ic, etc.', 'ErrHostNoDir:/gnu/m4/:-:m4-1.4.17.tar.gz:ftp.gnu.org/gnu/m4/m4-=
1.4.17.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/m4/m4-1.4.17.tar.gz', 'Robert=
 Yang <liezhi.yang@windriver.com>', 'None']
inserted (m4,1.4.17,N/A,GPLv3,base,r0,None,,None,ErrHostNoDir:/gnu/m4/:-:m4=
-1.4.17.tar.gz:ftp.gnu.org/gnu/m4/m4-1.4.17.tar.gz,autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,GNU m4 is an i=
mplementation of the traditional Unix macro processor.  It is mostly SVR4 c=
ompatible although it has some extensions (for example, handling more than =
9 positional parameters to macros). GNU M4 also has built-in functions for =
including files, running shell commands, doing arithmetic, etc.,N/A,ftp://f=
tp.gnu.org/gnu/m4/m4-1.4.17.tar.gz,Robert Yang <liezhi.yang@windriver.com>)
['resourceproto', '1.2.0', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r=
1', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/=
enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoco=
l for the X Resource extension.  XRes provides an interface that allows X c=
lients to see and monitor X resource usage of various clients.', 'ErrHostNo=
Dir:/releases/individual/proto/:-:resourceproto-1.2.0.tar.bz2:xorg.freedesk=
top.org/releases/individual/proto/resourceproto-1.2.0.tar.bz2', 'N/A', 'htt=
p://xorg.freedesktop.org/releases/individual/proto/resourceproto-1.2.0.tar.=
bz2', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (resourceproto,1.2.0,N/A,MIT,x11/libs,r1,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/=
individual/proto/:-:resourceproto-1.2.0.tar.bz2:xorg.freedesktop.org/releas=
es/individual/proto/resourceproto-1.2.0.tar.bz2,pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  u=
til-macros,This package provides the wire protocol for the X Resource exten=
sion.  XRes provides an interface that allows X clients to see and monitor =
X resource usage of various clients.,N/A,http://xorg.freedesktop.org/releas=
es/individual/proto/resourceproto-1.2.0.tar.bz2,Valentin Popa <valentin.pop=
a@intel.com>)
['qemu', '1.7.0', 'N/A', 'GPLv2 & LGPLv2.1', 'base', 'http://qemu.org', 'r0=
', 'autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  glib-2.0 zlib alsa-lib pixman dtc libsdl            virtual/li=
bx11', 'None', 'None', 'Fast open source processor emulator.', 'ErrHostNoDi=
r:/download/:-:qemu-1.7.0.tar.bz2:wiki.qemu.org/download/qemu-1.7.0.tar.bz2=
', 'N/A', 'http://wiki.qemu.org/download/qemu-1.7.0.tar.bz2', 'Cristian Ior=
ga <cristian.iorga@intel.com>', 'None']
inserted (qemu,1.7.0,N/A,GPLv2 & LGPLv2.1,base,r0,None,http://qemu.org,None=
,ErrHostNoDir:/download/:-:qemu-1.7.0.tar.bz2:wiki.qemu.org/download/qemu-1=
=2E7.0.tar.bz2,autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  glib-2.0 zlib alsa-lib pixman dtc libsdl           =
 virtual/libx11,Fast open source processor emulator.,N/A,http://wiki.qemu.o=
rg/download/qemu-1.7.0.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['libxrandr', '1.4.2', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros virtual/libx11 randrproto libx=
render libxext', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg=
', '1', 'The X Resize, Rotate and Reflect Extension, called RandR for short=
, brings the ability to resize, rotate and reflect the root window of a scr=
een. It is based on the X Resize and Rotate Extension as specified in the P=
roceedings of the 2001 Usenix Technical Conference [RANDR].', 'ErrHostNoDir=
:/releases/individual/lib/:-:libXrandr-1.4.2.tar.bz2:xorg.freedesktop.org/r=
eleases/individual/lib/libXrandr-1.4.2.tar.bz2', 'N/A', 'http://xorg.freede=
sktop.org/releases/individual/lib/libXrandr-1.4.2.tar.bz2', 'Ross Burton <r=
oss.burton@intel.com>', 'None']
inserted (libxrandr,1.4.2,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/release=
s/individual/lib/:-:libXrandr-1.4.2.tar.bz2:xorg.freedesktop.org/releases/i=
ndividual/lib/libXrandr-1.4.2.tar.bz2,pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros=
 virtual/libx11 randrproto libxrender libxext,The X Resize, Rotate and Refl=
ect Extension, called RandR for short, brings the ability to resize, rotate=
 and reflect the root window of a screen. It is based on the X Resize and R=
otate Extension as specified in the Proceedings of the 2001 Usenix Technica=
l Conference [RANDR].,N/A,http://xorg.freedesktop.org/releases/individual/l=
ib/libXrandr-1.4.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['libsamplerate0', '0.1.8', 'N/A', 'GPLv2+', 'libs', 'http://www.mega-nerd.=
com/SRC/', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  flac libsndfile1', 'None', 'Non=
e', 'Audio Sample Rate Conversion library.', 'ErrHostNoDir:/SRC/:-:libsampl=
erate-0.1.8.tar.gz:www.mega-nerd.com/SRC/libsamplerate-0.1.8.tar.gz', 'N/A'=
, 'http://www.mega-nerd.com/SRC/libsamplerate-0.1.8.tar.gz', 'Cristian Iorg=
a <cristian.iorga@intel.com>', 'None']
inserted (libsamplerate0,0.1.8,N/A,GPLv2+,libs,r1,None,http://www.mega-nerd=
=2Ecom/SRC/,None,ErrHostNoDir:/SRC/:-:libsamplerate-0.1.8.tar.gz:www.mega-n=
erd.com/SRC/libsamplerate-0.1.8.tar.gz,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flac libsn=
dfile1,Audio Sample Rate Conversion library.,N/A,http://www.mega-nerd.com/S=
RC/libsamplerate-0.1.8.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['expat', '2.1.0', 'N/A', 'MIT', 'libs', 'http://expat.sourceforge.net/', '=
r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc   gzip-native', 'None', 'None', 'Expat is an XML parser libra=
ry written in C. It is a stream-oriented parser in which an application reg=
isters handlers for things the parser might find in the XML document (like =
start tags)', 'ErrHostNoDir:/expat/:-:expat-2.1.0.tar.gz:downloads.sourcefo=
rge.net/expat/expat-2.1.0.tar.gz', 'N/A', 'http://downloads.sourceforge.net=
/expat/expat-2.1.0.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>'=
, 'None']
inserted (expat,2.1.0,N/A,MIT,libs,r0,None,http://expat.sourceforge.net/,No=
ne,ErrHostNoDir:/expat/:-:expat-2.1.0.tar.gz:downloads.sourceforge.net/expa=
t/expat-2.1.0.tar.gz,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc   gzip-native,Expat is an XML parser library w=
ritten in C. It is a stream-oriented parser in which an application registe=
rs handlers for things the parser might find in the XML document (like star=
t tags),N/A,http://downloads.sourceforge.net/expat/expat-2.1.0.tar.gz,Paul =
Eggleton <paul.eggleton@linux.intel.com>)
['lttng-tools', 'v2.4.0', 'v2.4.0', 'GPLv2 & LGPLv2.1', 'devel', '', 'r0', =
'autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  liburcu popt lttng-ust', 'None', 'None', 'The Linux trace toolkit=
 is a suite of tools designed to extract program execution details from the=
 Linux operating system and interpret them.', 'ErrUnknown:git.lttng.org/ltt=
ng-tools.git', 'N/A', 'git://git.lttng.org/lttng-tools.git;branch=3Dstable-=
2.4', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (lttng-tools,v2.4.0,v2.4.0,GPLv2 & LGPLv2.1,devel,r0,None,,None,Er=
rUnknown:git.lttng.org/lttng-tools.git,autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  liburcu popt lttng-ust,The =
Linux trace toolkit is a suite of tools designed to extract program executi=
on details from the Linux operating system and interpret them.,N/A,git://gi=
t.lttng.org/lttng-tools.git;branch=3Dstable-2.4,Laurentiu Palcu <laurentiu.=
palcu@intel.com>)
['sgmlspl-native', '1.03ii', 'N/A', 'GPLv2+', 'libs', 'http://search.cpan.o=
rg/src/DMEGG/SGMLSpm-1.03ii/DOC/HTML/SGMLSpm/sgmlspm.html', 'r3', '  perl-n=
ative perl-native', 'None', 'None', 'A simple post-processor for SGMLS and =
NSGMLS.', 'ErrHostNoDir:/authors/id/D/DM/DMEGG/:-:SGMLSpm-1.03ii.tar.gz:www=
=2Ecpan.org/authors/id/D/DM/DMEGG/SGMLSpm-1.03ii.tar.gz', 'N/A', 'http://ww=
w.cpan.org/authors/id/D/DM/DMEGG/SGMLSpm-1.03ii.tar.gz', 'Paul Eggleton <pa=
ul.eggleton@linux.intel.com>', 'None']
inserted (sgmlspl-native,1.03ii,N/A,GPLv2+,libs,r3,None,http://search.cpan.=
org/src/DMEGG/SGMLSpm-1.03ii/DOC/HTML/SGMLSpm/sgmlspm.html,None,ErrHostNoDi=
r:/authors/id/D/DM/DMEGG/:-:SGMLSpm-1.03ii.tar.gz:www.cpan.org/authors/id/D=
/DM/DMEGG/SGMLSpm-1.03ii.tar.gz,  perl-native perl-native,A simple post-pro=
cessor for SGMLS and NSGMLS.,N/A,http://www.cpan.org/authors/id/D/DM/DMEGG/=
SGMLSpm-1.03ii.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['initramfs-live-install-testfs', '1.0', 'INVALID', 'MIT', 'base', '', 'r0'=
, ' ', 'None', 'None', 'Live image install script with a second rootfs/kern=
el.', 'MATCH', 'N/A', 'file://init-install-testfs.sh', 'None', 'None']
inserted (initramfs-live-install-testfs,1.0,INVALID,MIT,base,r0,None,,None,=
MATCH, ,Live image install script with a second rootfs/kernel.,N/A,file://i=
nit-install-testfs.sh,None)
['xkbcomp', '1.2.4', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxkbfile'=
, 'https://bugs.freedesktop.org', 'None', 'The xkbcomp keymap compiler conv=
erts a description of an XKB keymap into one of several output formats. The=
 most common use for xkbcomp is to create a compiled keymap file (.xkm exte=
nsion) which can be read directly by XKB-capable X servers or utilities.', =
'ErrHostNoDir:/releases/individual/app/:-:xkbcomp-1.2.4.tar.bz2:xorg.freede=
sktop.org/releases/individual/app/xkbcomp-1.2.4.tar.bz2', 'N/A', 'http://xo=
rg.freedesktop.org/releases/individual/app/xkbcomp-1.2.4.tar.bz2', 'Laurent=
iu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xkbcomp,1.2.4,N/A,MIT-X,x11/apps,r8.0,None,http://www.x.org/,http=
s://bugs.freedesktop.org,ErrHostNoDir:/releases/individual/app/:-:xkbcomp-1=
=2E2.4.tar.bz2:xorg.freedesktop.org/releases/individual/app/xkbcomp-1.2.4.t=
ar.bz2,pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxkbfi=
le,The xkbcomp keymap compiler converts a description of an XKB keymap into=
 one of several output formats. The most common use for xkbcomp is to creat=
e a compiled keymap file (.xkm extension) which can be read directly by XKB=
-capable X servers or utilities.,N/A,http://xorg.freedesktop.org/releases/i=
ndividual/app/xkbcomp-1.2.4.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.=
com>)
['flac', '1.3.0', 'N/A', 'GFDL-1.2 & GPLv2+ & LGPLv2.1+ & BSD', 'libs', 'ht=
tps://xiph.org/flac/', 'r0', 'autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libog=
g', 'http://sourceforge.net/p/flac/bugs/', 'None', 'FLAC stands for Free Lo=
ssless Audio Codec, a lossless audio compression format.', 'ErrHostNoDir:/r=
eleases/flac/:-:flac-1.3.0.tar.xz:downloads.xiph.org/releases/flac/flac-1.3=
=2E0.tar.xz', 'N/A', 'http://downloads.xiph.org/releases/flac/flac-1.3.0.ta=
r.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (flac,1.3.0,N/A,GFDL-1.2 & GPLv2+ & LGPLv2.1+ & BSD,libs,r0,None,h=
ttps://xiph.org/flac/,http://sourceforge.net/p/flac/bugs/,ErrHostNoDir:/rel=
eases/flac/:-:flac-1.3.0.tar.xz:downloads.xiph.org/releases/flac/flac-1.3.0=
=2Etar.xz,autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  libogg,FLAC stands for Fr=
ee Lossless Audio Codec, a lossless audio compression format.,N/A,http://do=
wnloads.xiph.org/releases/flac/flac-1.3.0.tar.xz,Cristian Iorga <cristian.i=
orga@intel.com>)
['xf86miscproto', '0.9.3', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r=
1', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/=
enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoco=
l for the XFree miscellaneous extension.  The XFree86-Misc extension provid=
es a means to access input device configuration settings specific to the XF=
ree86/Xorg DDX.', 'ErrHostNoDir:/releases/individual/proto/:-:xf86miscproto=
-0.9.3.tar.bz2:xorg.freedesktop.org/releases/individual/proto/xf86miscproto=
-0.9.3.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/pr=
oto/xf86miscproto-0.9.3.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.c=
om>', 'None']
inserted (xf86miscproto,0.9.3,N/A,MIT,x11/libs,r1,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/=
individual/proto/:-:xf86miscproto-0.9.3.tar.bz2:xorg.freedesktop.org/releas=
es/individual/proto/xf86miscproto-0.9.3.tar.bz2,pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  u=
til-macros,This package provides the wire protocol for the XFree miscellane=
ous extension.  The XFree86-Misc extension provides a means to access input=
 device configuration settings specific to the XFree86/Xorg DDX.,N/A,http:/=
/xorg.freedesktop.org/releases/individual/proto/xf86miscproto-0.9.3.tar.bz2=
,Laurentiu Palcu <laurentiu.palcu@intel.com>)
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
een provided by Xlib.', 'ErrHostNoDir:/dist/:-:xcb-util-0.3.9.tar.bz2:xcb.f=
reedesktop.org/dist/xcb-util-0.3.9.tar.bz2', 'N/A', 'http://xcb.freedesktop=
=2Eorg/dist/xcb-util-0.3.9.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@inte=
l.com>', 'None']
inserted (xcb-util,0.3.9,N/A,MIT,x11/libs,r0,None,http://xcb.freedesktop.or=
g/XcbUtil/,https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,ErrHost=
NoDir:/dist/:-:xcb-util-0.3.9.tar.bz2:xcb.freedesktop.org/dist/xcb-util-0.3=
=2E9.tar.bz2,pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  libxcb gperf-native,The xcb-util mod=
ule provides a number of libraries which sit on top of libxcb, the core X p=
rotocol library, and some of the extension libraries. These experimental li=
braries provide convenience functions and interfaces which make the raw X p=
rotocol more usable. Some of the libraries also provide client-side code wh=
ich is not strictly part of the X protocol but which have traditionally bee=
n provided by Xlib.,N/A,http://xcb.freedesktop.org/dist/xcb-util-0.3.9.tar.=
bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['libpam', '1.1.6', 'N/A', 'GPLv2+ | BSD', 'base', 'https://fedorahosted.or=
g/linux-pam/', 'r5', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  bison flex flex-native cracklib', 'https://fedorahosted.org/linux-pam/n=
ewticket', 'None', 'Linux-PAM (Pluggable Authentication Modules for Linux),=
 a flexible mechanism for authenticating users', 'ErrHostNoDir:/library/:-:=
Linux-PAM-1.1.6.tar.bz2:linux-pam.org/library/Linux-PAM-1.1.6.tar.bz2', 'N/=
A', 'http://linux-pam.org/library/Linux-PAM-1.1.6.tar.bz2', 'Valentin Popa =
<valentin.popa@intel.com>', 'None']
inserted (libpam,1.1.6,N/A,GPLv2+ | BSD,base,r5,None,https://fedorahosted.o=
rg/linux-pam/,https://fedorahosted.org/linux-pam/newticket,ErrHostNoDir:/li=
brary/:-:Linux-PAM-1.1.6.tar.bz2:linux-pam.org/library/Linux-PAM-1.1.6.tar.=
bz2,pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bison flex fle=
x-native cracklib,Linux-PAM (Pluggable Authentication Modules for Linux), a=
 flexible mechanism for authenticating users,N/A,http://linux-pam.org/libra=
ry/Linux-PAM-1.1.6.tar.bz2,Valentin Popa <valentin.popa@intel.com>)
['libxsettings-client', '0.10', 'N/A', 'MIT-style', 'x/libs', 'http://match=
box-project.org/sources/optional-dependencies/', 'r5', 'autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native virtual/gettext=
 gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  virtual/libx11', 'http://bugzilla.yoctoproject.org/', =
'None', 'Libraries used for applications making use of the Xsettings config=
uration setting propagation protocol. Controls setting of double click time=
out, drag-and-drop threshold, and default foreground and background colors =
for all applications running within a desktop.', 'ErrHostNoDir:/releases/ma=
tchbox/optional-dependencies/:-:Xsettings-client-0.10.tar.gz:downloads.yoct=
oproject.org/releases/matchbox/optional-dependencies/Xsettings-client-0.10.=
tar.gz', 'N/A', 'http://downloads.yoctoproject.org/releases/matchbox/option=
al-dependencies/Xsettings-client-0.10.tar.gz', 'Valentin Popa <valentin.pop=
a@intel.com>', 'None']
inserted (libxsettings-client,0.10,N/A,MIT-style,x/libs,r5,None,http://matc=
hbox-project.org/sources/optional-dependencies/,http://bugzilla.yoctoprojec=
t.org/,ErrHostNoDir:/releases/matchbox/optional-dependencies/:-:Xsettings-c=
lient-0.10.tar.gz:downloads.yoctoproject.org/releases/matchbox/optional-dep=
endencies/Xsettings-client-0.10.tar.gz,autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  virtual/libx11,Libraries used for applications making use of the Xsetti=
ngs configuration setting propagation protocol. Controls setting of double =
click timeout, drag-and-drop threshold, and default foreground and backgrou=
nd colors for all applications running within a desktop.,N/A,http://downloa=
ds.yoctoproject.org/releases/matchbox/optional-dependencies/Xsettings-clien=
t-0.10.tar.gz,Valentin Popa <valentin.popa@intel.com>)
['mc', '4.8.10', 'N/A', 'GPLv3', 'console/utils', 'http://www.midnight-comm=
ander.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native virtual/gettext gettext-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  ncurses glib-2.0', 'None', 'None', 'Midnight Commander is an ncurses base=
d file manager.', 'ErrHostNoDir:/downloads/:-:mc-4.8.10.tar.bz2:www.midnigh=
t-commander.org/downloads/mc-4.8.10.tar.bz2', 'N/A', 'http://www.midnight-c=
ommander.org/downloads/mc-4.8.10.tar.bz2', 'Saul Wold <sgw@linux.intel.com>=
', 'None']
inserted (mc,4.8.10,N/A,GPLv3,console/utils,r0,None,http://www.midnight-com=
mander.org/,None,ErrHostNoDir:/downloads/:-:mc-4.8.10.tar.bz2:www.midnight-=
commander.org/downloads/mc-4.8.10.tar.bz2,pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native virtual/gett=
ext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ncurses glib-2.0,Midnight Commander is an ncurses b=
ased file manager.,N/A,http://www.midnight-commander.org/downloads/mc-4.8.1=
0.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['libtasn1', '3.4', 'N/A', 'GPLv3+ & LGPLv2.1+', 'base', 'http://www.gnu.or=
g/software/libtasn1/', 'r0', 'autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'Library for ASN.=
1 and DER manipulation.', 'ErrHostNoDir:/gnu/libtasn1/:-:libtasn1-3.4.tar.g=
z:ftp.gnu.org/gnu/libtasn1/libtasn1-3.4.tar.gz', 'N/A', 'ftp://ftp.gnu.org/=
gnu/libtasn1/libtasn1-3.4.tar.gz', 'Valentin Popa <valentin.popa@intel.com>=
', 'None']
inserted (libtasn1,3.4,N/A,GPLv3+ & LGPLv2.1+,base,r0,None,http://www.gnu.o=
rg/software/libtasn1/,None,ErrHostNoDir:/gnu/libtasn1/:-:libtasn1-3.4.tar.g=
z:ftp.gnu.org/gnu/libtasn1/libtasn1-3.4.tar.gz,autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Library for ASN.1 =
and DER manipulation.,N/A,ftp://ftp.gnu.org/gnu/libtasn1/libtasn1-3.4.tar.g=
z,Valentin Popa <valentin.popa@intel.com>)
['bluez4', '4.101', 'N/A', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://www.bluez.=
org', 'r10', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  udev libusb dbus-glib glib-2.0 libcheck readline lib=
sndfile1 alsa-lib', 'None', 'None', 'Linux Bluetooth stack V4 userland comp=
onents.  These include a system configurations, daemons, tools and system l=
ibraries.', 'ErrHostNoDir:/pub/linux/bluetooth/:-:bluez-4.101.tar.gz:kernel=
=2Eorg/pub/linux/bluetooth/bluez-4.101.tar.gz', 'N/A', 'http://kernel.org/p=
ub/linux/bluetooth/bluez-4.101.tar.gz', 'Cristian Iorga <cristian.iorga@int=
el.com>', 'BlueZ 5.x is not backward-compatible; components that interact w=
ith bluez not updated']
inserted (bluez4,4.101,N/A,GPLv2+ & LGPLv2.1+,libs,r10,None,http://www.blue=
z.org,None,ErrHostNoDir:/pub/linux/bluetooth/:-:bluez-4.101.tar.gz:kernel.o=
rg/pub/linux/bluetooth/bluez-4.101.tar.gz,autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  udev libusb dbus-glib gl=
ib-2.0 libcheck readline libsndfile1 alsa-lib,Linux Bluetooth stack V4 user=
land components.  These include a system configurations, daemons, tools and=
 system libraries.,N/A,http://kernel.org/pub/linux/bluetooth/bluez-4.101.ta=
r.gz,Cristian Iorga <cristian.iorga@intel.com>)
['bluez5', '5.15', 'N/A', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://www.bluez.o=
rg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  udev libusb dbus-glib glib-2.0 libche=
ck readline libical', 'None', 'None', 'Linux Bluetooth stack V5 userland co=
mponents.  These include a system configurations, daemons, tools and system=
 libraries.', 'ErrHostNoDir:/pub/linux/bluetooth/:-:bluez-5.15.tar.xz:kerne=
l.org/pub/linux/bluetooth/bluez-5.15.tar.xz', 'N/A', 'http://kernel.org/pub=
/linux/bluetooth/bluez-5.15.tar.xz', 'Cristian Iorga <cristian.iorga@intel.=
com>', 'None']
inserted (bluez5,5.15,N/A,GPLv2+ & LGPLv2.1+,libs,r0,None,http://www.bluez.=
org,None,ErrHostNoDir:/pub/linux/bluetooth/:-:bluez-5.15.tar.xz:kernel.org/=
pub/linux/bluetooth/bluez-5.15.tar.xz,pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  udev libusb=
 dbus-glib glib-2.0 libcheck readline libical,Linux Bluetooth stack V5 user=
land components.  These include a system configurations, daemons, tools and=
 system libraries.,N/A,http://kernel.org/pub/linux/bluetooth/bluez-5.15.tar=
=2Exz,Cristian Iorga <cristian.iorga@intel.com>)
['nativesdk-qt4-tools', '4.8.5', 'N/A', 'LGPLv2.1 | GPLv3', 'libs', 'http:/=
/qt-project.org/', 'r0', 'nativesdk-dbus qt4-tools-native virtual/i586-poky=
sdk-linux-gcc-crosssdk nativesdk-zlib nativesdk-libx11 virtual/nativesdk-i5=
86-pokysdk-linux-compilerlibs chrpath-replacement-native qt4-native virtual=
/nativesdk-libc', 'None', 'None', 'SDK tools for Qt version 4.x.', 'ErrHost=
NoDir:/official_releases/qt/4.8/4.8.5/qt-everywhere-opensource-src-4.8.5.ta=
r.gz:4.8:-:download.qt-project.org/official_releases/qt/4.8/4.8.5/qt-everyw=
here-opensource-src-4.8.5.tar.gz', 'N/A', 'http://download.qt-project.org/o=
fficial_releases/qt/4.8/4.8.5/qt-everywhere-opensource-src-4.8.5.tar.gz', '=
Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (nativesdk-qt4-tools,4.8.5,N/A,LGPLv2.1 | GPLv3,libs,r0,None,http:=
//qt-project.org/,None,ErrHostNoDir:/official_releases/qt/4.8/4.8.5/qt-ever=
ywhere-opensource-src-4.8.5.tar.gz:4.8:-:download.qt-project.org/official_r=
eleases/qt/4.8/4.8.5/qt-everywhere-opensource-src-4.8.5.tar.gz,nativesdk-db=
us qt4-tools-native virtual/i586-pokysdk-linux-gcc-crosssdk nativesdk-zlib =
nativesdk-libx11 virtual/nativesdk-i586-pokysdk-linux-compilerlibs chrpath-=
replacement-native qt4-native virtual/nativesdk-libc,SDK tools for Qt versi=
on 4.x.,N/A,http://download.qt-project.org/official_releases/qt/4.8/4.8.5/q=
t-everywhere-opensource-src-4.8.5.tar.gz,Paul Eggleton <paul.eggleton@linux=
=2Eintel.com>)
['xcb-util-renderutil', '0.3.8', 'N/A', 'MIT', 'x11/libs', 'http://xcb.free=
desktop.org/XcbUtil/', 'r0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-native=
', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB', 'None', 'The=
 xcb-util module provides a number of libraries which sit on top of libxcb,=
 the core X protocol library, and some of the extension libraries. These ex=
perimental libraries provide convenience functions and interfaces which mak=
e the raw X protocol more usable. Some of the libraries also provide client=
-side code which is not strictly part of the X protocol but which have trad=
itionally been provided by Xlib.', 'ErrHostNoDir:/dist/:-:xcb-util-renderut=
il-0.3.8.tar.bz2:xcb.freedesktop.org/dist/xcb-util-renderutil-0.3.8.tar.bz2=
', 'N/A', 'http://xcb.freedesktop.org/dist/xcb-util-renderutil-0.3.8.tar.bz=
2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (xcb-util-renderutil,0.3.8,N/A,MIT,x11/libs,r0,None,http://xcb.fre=
edesktop.org/XcbUtil/,https://bugs.freedesktop.org/enter_bug.cgi?product=3D=
XCB,ErrHostNoDir:/dist/:-:xcb-util-renderutil-0.3.8.tar.bz2:xcb.freedesktop=
=2Eorg/dist/xcb-util-renderutil-0.3.8.tar.bz2,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  lib=
xcb gperf-native,The xcb-util module provides a number of libraries which s=
it on top of libxcb, the core X protocol library, and some of the extension=
 libraries. These experimental libraries provide convenience functions and =
interfaces which make the raw X protocol more usable. Some of the libraries=
 also provide client-side code which is not strictly part of the X protocol=
 but which have traditionally been provided by Xlib.,N/A,http://xcb.freedes=
ktop.org/dist/xcb-util-renderutil-0.3.8.tar.bz2,Saul Wold <sgw@linux.intel.=
com>)
['libxvmc', '1.0.8', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros libxext libxv videoproto', 'https://bu=
gs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'XvMC extends the X =
Video extension (Xv) and enables hardware rendered motion compensation supp=
ort.', 'ErrHostNoDir:/releases/individual/lib/:-:libXvMC-1.0.8.tar.bz2:xorg=
=2Efreedesktop.org/releases/individual/lib/libXvMC-1.0.8.tar.bz2', 'N/A', '=
http://xorg.freedesktop.org/releases/individual/lib/libXvMC-1.0.8.tar.bz2',=
 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (libxvmc,1.0.8,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://bugs=
=2Efreedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/indi=
vidual/lib/:-:libXvMC-1.0.8.tar.bz2:xorg.freedesktop.org/releases/individua=
l/lib/libXvMC-1.0.8.tar.bz2,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros libxext l=
ibxv videoproto,XvMC extends the X Video extension (Xv) and enables hardwar=
e rendered motion compensation support.,N/A,http://xorg.freedesktop.org/rel=
eases/individual/lib/libXvMC-1.0.8.tar.bz2,Valentin Popa <valentin.popa@int=
el.com>)
['ossp-uuid', '1.6.2', 'N/A', 'MIT', 'libs', 'http://www.ossp.org/pkg/lib/u=
uid/', 'r2', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  ', 'None', 'None', 'OSSP uuid is a ISO-C:1999 applic=
ation programming interface (API) and corresponding command line interface =
(CLI) for the generation of DCE 1.1, ISO/IEC 11578:1996 and RFC 4122 compli=
ant Universally Unique Identifier (UUID). It supports DCE 1.1 variant UUIDs=
 of version 1 (time and node based), version 3 (name based, MD5), version 4=
 (random number based) and version 5 (name based, SHA-1).', 'ErrHostNoDir:/=
files/:-:uuid-1.6.2.tar.gz:gnome-build-stage-1.googlecode.com/files/uuid-1.=
6.2.tar.gz', 'N/A', 'http://gnome-build-stage-1.googlecode.com/files/uuid-1=
=2E6.2.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (ossp-uuid,1.6.2,N/A,MIT,libs,r2,None,http://www.ossp.org/pkg/lib/=
uuid/,None,ErrHostNoDir:/files/:-:uuid-1.6.2.tar.gz:gnome-build-stage-1.goo=
glecode.com/files/uuid-1.6.2.tar.gz,autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  ,OSSP uuid is a ISO-C:1999 app=
lication programming interface (API) and corresponding command line interfa=
ce (CLI) for the generation of DCE 1.1, ISO/IEC 11578:1996 and RFC 4122 com=
pliant Universally Unique Identifier (UUID). It supports DCE 1.1 variant UU=
IDs of version 1 (time and node based), version 3 (name based, MD5), versio=
n 4 (random number based) and version 5 (name based, SHA-1).,N/A,http://gno=
me-build-stage-1.googlecode.com/files/uuid-1.6.2.tar.gz,Saul Wold <sgw@linu=
x.intel.com>)
['xineramaproto', '1.2.1', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://ww=
w.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.free=
desktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the =
wire protocol for the Xinerama extension.  This extension is used for retri=
eving information about physical output devices which may be combined into =
a single logical X screen.', 'ErrHostNoDir:/releases/individual/proto/:-:xi=
neramaproto-1.2.1.tar.bz2:xorg.freedesktop.org/releases/individual/proto/xi=
neramaproto-1.2.1.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/in=
dividual/proto/xineramaproto-1.2.1.tar.bz2', 'Laurentiu Palcu <laurentiu.pa=
lcu@intel.com>', 'None']
inserted (xineramaproto,1.2.1,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.=
x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDi=
r:/releases/individual/proto/:-:xineramaproto-1.2.1.tar.bz2:xorg.freedeskto=
p.org/releases/individual/proto/xineramaproto-1.2.1.tar.bz2,pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros,This package provides the wire protocol for the Xine=
rama extension.  This extension is used for retrieving information about ph=
ysical output devices which may be combined into a single logical X screen.=
,N/A,http://xorg.freedesktop.org/releases/individual/proto/xineramaproto-1.=
2.1.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['ethtool', '3.13', 'N/A', 'GPLv2+', 'console/network', 'http://www.kernel.=
org/pub/software/network/ethtool/', 'r0', 'autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'A s=
mall utility for examining and tuning the settings of your ethernet-based n=
etwork interfaces.', 'ErrHostNoDir:/pub/software/network/ethtool/:-:ethtool=
-3.13.tar.gz:kernel.org/pub/software/network/ethtool/ethtool-3.13.tar.gz', =
'N/A', 'http://kernel.org/pub/software/network/ethtool/ethtool-3.13.tar.gz'=
, 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (ethtool,3.13,N/A,GPLv2+,console/network,r0,None,http://www.kernel=
=2Eorg/pub/software/network/ethtool/,None,ErrHostNoDir:/pub/software/networ=
k/ethtool/:-:ethtool-3.13.tar.gz:kernel.org/pub/software/network/ethtool/et=
htool-3.13.tar.gz,autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ,A small utility for examining and tuning the se=
ttings of your ethernet-based network interfaces.,N/A,http://kernel.org/pub=
/software/network/ethtool/ethtool-3.13.tar.gz,Paul Eggleton <paul.eggleton@=
linux.intel.com>)
['neard', '0.14', 'N/A', 'GPLv2', 'base', 'http://01.org/linux-nfc', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  dbus glib-2.0 libnl update-rc.d-native', 'None',=
 'None', 'A daemon for the Linux Near Field Communication stack', 'ErrHostN=
oDir:/pub/linux/network/nfc/:-:neard-0.14.tar.xz:kernel.org/pub/linux/netwo=
rk/nfc/neard-0.14.tar.xz', 'N/A', 'http://kernel.org/pub/linux/network/nfc/=
neard-0.14.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (neard,0.14,N/A,GPLv2,base,r0,None,http://01.org/linux-nfc,None,Er=
rHostNoDir:/pub/linux/network/nfc/:-:neard-0.14.tar.xz:kernel.org/pub/linux=
/network/nfc/neard-0.14.tar.xz,pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  dbus glib-2.0 libn=
l update-rc.d-native,A daemon for the Linux Near Field Communication stack,=
N/A,http://kernel.org/pub/linux/network/nfc/neard-0.14.tar.xz,Cristian Iorg=
a <cristian.iorga@intel.com>)
['tar', '1.27.1', 'N/A', 'GPLv3', 'base', 'http://www.gnu.org/software/tar/=
', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update-alternati=
ves', 'None', 'None', 'GNU tar saves many files together into a single tape=
 or disk archive, and can restore individual files from the archive.', 'Err=
HostNoDir:/gnu/tar/:-:tar-1.27.1.tar.bz2:ftp.gnu.org/gnu/tar/tar-1.27.1.tar=
=2Ebz2', 'N/A', 'ftp://ftp.gnu.org/gnu/tar/tar-1.27.1.tar.bz2', 'Chen Qi <Q=
i.Chen@windriver.com>', 'None']
inserted (tar,1.27.1,N/A,GPLv3,base,r0,None,http://www.gnu.org/software/tar=
/,None,ErrHostNoDir:/gnu/tar/:-:tar-1.27.1.tar.bz2:ftp.gnu.org/gnu/tar/tar-=
1.27.1.tar.bz2,autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update-alte=
rnatives,GNU tar saves many files together into a single tape or disk archi=
ve, and can restore individual files from the archive.,N/A,ftp://ftp.gnu.or=
g/gnu/tar/tar-1.27.1.tar.bz2,Chen Qi <Qi.Chen@windriver.com>)
['diffstat', '1.58', 'N/A', 'MIT', 'devel', 'http://invisible-island.net/di=
ffstat/', 'r0', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None',=
 'diffstat reads the output of diff and displays a histogram of the inserti=
ons, deletions, and modifications per-file. It is useful for reviewing larg=
e, complex patch files.', 'ErrHostNoDir:/diffstat/:-:diffstat-1.58.tgz:invi=
sible-island.net/diffstat/diffstat-1.58.tgz', 'N/A', 'ftp://invisible-islan=
d.net/diffstat/diffstat-1.58.tgz', 'Chong Lu <Chong.Lu@windriver.com>', 'No=
ne']
inserted (diffstat,1.58,N/A,MIT,devel,r0,None,http://invisible-island.net/d=
iffstat/,None,ErrHostNoDir:/diffstat/:-:diffstat-1.58.tgz:invisible-island.=
net/diffstat/diffstat-1.58.tgz,autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,dif=
fstat reads the output of diff and displays a histogram of the insertions, =
deletions, and modifications per-file. It is useful for reviewing large, co=
mplex patch files.,N/A,ftp://invisible-island.net/diffstat/diffstat-1.58.tg=
z,Chong Lu <Chong.Lu@windriver.com>)
['gstreamer1.0-plugins-bad', '1.2.3', 'N/A', 'GPLv2+ & LGPLv2+ & LGPLv2.1+ =
', 'multimedia', 'http://gstreamer.freedesktop.org/', 'r0', 'pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugin=
s-base bzip2 bluez4 bzip2 curl libxml2 virtual/egl virtual/libgles2 gnutls =
neon orc sbc libxml2 libusb1 udev wayland', 'https://bugzilla.gnome.org/ent=
er_bug.cgi?product=3DGstreamer', 'None', 'Plugins for the GStreamer multime=
dia framework 1.x.', 'ErrHostNoDir:/src/gst-plugins-bad/:-:gst-plugins-bad-=
1.2.3.tar.xz:gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-=
1.2.3.tar.xz', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-plugins-bad=
/gst-plugins-bad-1.2.3.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>'=
, 'None']
inserted (gstreamer1.0-plugins-bad,1.2.3,N/A,GPLv2+ & LGPLv2+ & LGPLv2.1+ ,=
multimedia,r0,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome=
=2Eorg/enter_bug.cgi?product=3DGstreamer,ErrHostNoDir:/src/gst-plugins-bad/=
:-:gst-plugins-bad-1.2.3.tar.xz:gstreamer.freedesktop.org/src/gst-plugins-b=
ad/gst-plugins-bad-1.2.3.tar.xz,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native virtual/gettext gettex=
t-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  gstreamer1.0 gstreamer1.0-plugins-base bzip2 bluez4 bzip2 cur=
l libxml2 virtual/egl virtual/libgles2 gnutls neon orc sbc libxml2 libusb1 =
udev wayland,Plugins for the GStreamer multimedia framework 1.x.,N/A,http:/=
/gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-1.2.3.tar.xz=
,Cristian Iorga <cristian.iorga@intel.com>)
['sudo', '1.8.9p5', 'N/A', 'ISC & BSD & Zlib', 'admin', 'http://www.sudo.ws=
', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc    ', 'http://www.sudo.ws/bugs/', 'None', 'Sudo (superuse=
r do) allows a system administrator to give certain users (or groups of use=
rs) the ability to run some (or all) commands as root while logging all com=
mands and arguments.', 'ErrHostNoDir:/sudo/dist/:-:sudo-1.8.9p5.tar.gz:ftp.=
sudo.ws/sudo/dist/sudo-1.8.9p5.tar.gz', 'N/A', 'http://ftp.sudo.ws/sudo/dis=
t/sudo-1.8.9p5.tar.gz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (sudo,1.8.9p5,N/A,ISC & BSD & Zlib,admin,r0,None,http://www.sudo.w=
s,http://www.sudo.ws/bugs/,ErrHostNoDir:/sudo/dist/:-:sudo-1.8.9p5.tar.gz:f=
tp.sudo.ws/sudo/dist/sudo-1.8.9p5.tar.gz,autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc    ,Sudo (superuser do) al=
lows a system administrator to give certain users (or groups of users) the =
ability to run some (or all) commands as root while logging all commands an=
d arguments.,N/A,http://ftp.sudo.ws/sudo/dist/sudo-1.8.9p5.tar.gz,Chen Qi <=
Qi.Chen@windriver.com>)
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
['openssl', '1.0.1g', 'N/A', 'openssl', 'libs/network', 'http://www.openssl=
=2Eorg/', 'r0', 'pkgconfig-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  perl-native-runtime cryptodev-linux'=
, 'http://www.openssl.org/news/vulnerabilities.html', 'None', 'Secure Socke=
t Layer (SSL) binary and related cryptographic tools.', 'ErrHostNoDir:/sour=
ce/:-:openssl-1.0.1g.tar.gz:www.openssl.org/source/openssl-1.0.1g.tar.gz', =
'N/A', 'http://www.openssl.org/source/openssl-1.0.1g.tar.gz', 'Cristiana Vo=
icu <cristiana.voicu@intel.com>', '1.0.1 is beta 1.0.0c is latest']
inserted (openssl,1.0.1g,N/A,openssl,libs/network,r0,None,http://www.openss=
l.org/,http://www.openssl.org/news/vulnerabilities.html,ErrHostNoDir:/sourc=
e/:-:openssl-1.0.1g.tar.gz:www.openssl.org/source/openssl-1.0.1g.tar.gz,pkg=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  perl-native-runtime cryptodev-linux,Secure Socket Layer =
(SSL) binary and related cryptographic tools.,N/A,http://www.openssl.org/so=
urce/openssl-1.0.1g.tar.gz,Cristiana Voicu <cristiana.voicu@intel.com>)
['logrotate', '3.8.7', 'N/A', 'GPLv2', 'console/utils', 'https://fedorahost=
ed.org/logrotate/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  coreutils popt', 'None', 'None', 'Rotates, =
compresses, removes and mails system log files.', 'ErrHostNoDir:/releases/l=
/o/logrotate/:-:logrotate-3.8.7.tar.gz:fedorahosted.org/releases/l/o/logrot=
ate/logrotate-3.8.7.tar.gz', 'N/A', 'https://fedorahosted.org/releases/l/o/=
logrotate/logrotate-3.8.7.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>=
', 'None']
inserted (logrotate,3.8.7,N/A,GPLv2,console/utils,r0,None,https://fedorahos=
ted.org/logrotate/,None,ErrHostNoDir:/releases/l/o/logrotate/:-:logrotate-3=
=2E8.7.tar.gz:fedorahosted.org/releases/l/o/logrotate/logrotate-3.8.7.tar.g=
z, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  coreutils popt,Rotates, compresses, removes and mails system log fil=
es.,N/A,https://fedorahosted.org/releases/l/o/logrotate/logrotate-3.8.7.tar=
=2Egz,Robert Yang <liezhi.yang@windriver.com>)
['gdb-cross-canadian-i586', '7.6.2', 'N/A', 'GPLv2 & GPLv3 & LGPLv2 & LGPLv=
3', 'devel', 'http://www.gnu.org/software/gdb/', 'r0', 'autoconf-native aut=
omake-native libtool-native gnu-config-native  nativesdk-ncurses nativesdk-=
expat nativesdk-gettext nativesdk-readline nativesdk-python chrpath-replace=
ment-native', 'None', 'None', 'GNU debugger (cross-canadian gdb for i586 ta=
rget).', 'ErrHostNoDir:/gnu/gdb/:-:gdb-7.6.2.tar.gz:ftp.gnu.org/gnu/gdb/gdb=
-7.6.2.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/gdb/gdb-7.6.2.tar.gz', 'Laure=
ntiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (gdb-cross-canadian-i586,7.6.2,N/A,GPLv2 & GPLv3 & LGPLv2 & LGPLv3=
,devel,r0,None,http://www.gnu.org/software/gdb/,None,ErrHostNoDir:/gnu/gdb/=
:-:gdb-7.6.2.tar.gz:ftp.gnu.org/gnu/gdb/gdb-7.6.2.tar.gz,autoconf-native au=
tomake-native libtool-native gnu-config-native  nativesdk-ncurses nativesdk=
-expat nativesdk-gettext nativesdk-readline nativesdk-python chrpath-replac=
ement-native,GNU debugger (cross-canadian gdb for i586 target).,N/A,ftp://f=
tp.gnu.org/gnu/gdb/gdb-7.6.2.tar.gz,Laurentiu Palcu <laurentiu.palcu@intel.=
com>)
['base-files', '3.0.14', 'INVALID', 'GPLv2', 'base', '', 'r86', ' ', 'None'=
, 'None', 'The base-files package creates the basic system directory struct=
ure and provides a small set of key configuration files for the system.', '=
MATCH', 'N/A', 'file://rotation', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (base-files,3.0.14,INVALID,GPLv2,base,r86,None,,None,MATCH, ,The b=
ase-files package creates the basic system directory structure and provides=
 a small set of key configuration files for the system.,N/A,file://rotation=
,Saul Wold <sgw@linux.intel.com>)
['gsettings-desktop-schemas', '3.10.1', 'N/A', 'LGPLv2.1', 'base', 'http://=
live.gnome.org/gsettings-desktop-schemas', 'r1', 'pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native virt=
ual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  glib-2.0 gnome-common-native glib-2.0-nativ=
e', 'https://bugzilla.gnome.org/', 'None', 'GNOME desktop-wide GSettings sc=
hemas.', 'ErrHostNoDir:/pub/GNOME/sources/gsettings-desktop-schemas/3.10/gs=
ettings-desktop-schemas-3.10.1.tar.xz:3.10:-:ftp.gnome.org/pub/GNOME/source=
s/gsettings-desktop-schemas/3.10/gsettings-desktop-schemas-3.10.1.tar.xz', =
'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/gsettings-desktop-schemas/3.=
10/gsettings-desktop-schemas-3.10.1.tar.xz;name=3Darchive', 'Valentin Popa =
<valentin.popa@intel.com>', 'None']
inserted (gsettings-desktop-schemas,3.10.1,N/A,LGPLv2.1,base,r1,None,http:/=
/live.gnome.org/gsettings-desktop-schemas,https://bugzilla.gnome.org/,ErrHo=
stNoDir:/pub/GNOME/sources/gsettings-desktop-schemas/3.10/gsettings-desktop=
-schemas-3.10.1.tar.xz:3.10:-:ftp.gnome.org/pub/GNOME/sources/gsettings-des=
ktop-schemas/3.10/gsettings-desktop-schemas-3.10.1.tar.xz,pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  glib-2.0 gnome-common-native glib-2=
=2E0-native,GNOME desktop-wide GSettings schemas.,N/A,http://ftp.gnome.org/=
pub/GNOME/sources/gsettings-desktop-schemas/3.10/gsettings-desktop-schemas-=
3.10.1.tar.xz;name=3Darchive,Valentin Popa <valentin.popa@intel.com>)
['videoproto', '2.3.2', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x=
=2Eorg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freed=
esktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the w=
ire protocol for the X Video extension.  This extension alows for accerlate=
d drawing of videos.', 'ErrHostNoDir:/releases/individual/proto/:-:videopro=
to-2.3.2.tar.bz2:xorg.freedesktop.org/releases/individual/proto/videoproto-=
2.3.2.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/pro=
to/videoproto-2.3.2.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>', 'N=
one']
inserted (videoproto,2.3.2,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.x.o=
rg,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/=
releases/individual/proto/:-:videoproto-2.3.2.tar.bz2:xorg.freedesktop.org/=
releases/individual/proto/videoproto-2.3.2.tar.bz2,pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  util-macros,This package provides the wire protocol for the X Video exten=
sion.  This extension alows for accerlated drawing of videos.,N/A,http://xo=
rg.freedesktop.org/releases/individual/proto/videoproto-2.3.2.tar.bz2,Valen=
tin Popa <valentin.popa@intel.com>)
['gcc', '4.8.2', 'N/A', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel', 'htt=
p://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  mpfr gmp libmpc zlib ', 'None', 'None', 'GNU cc and gcc C compilers.', =
'ErrHostNoDir:/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2:gcc-4.8.2:-:ftp.gnu.org/=
gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc=
-4.8.2/gcc-4.8.2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', '=
None']
inserted (gcc,4.8.2,N/A,GPL-3.0-with-GCC-exception & GPLv3,devel,r0,None,ht=
tp://www.gnu.org/software/gcc/,None,ErrHostNoDir:/gnu/gcc/gcc-4.8.2/gcc-4.8=
=2E2.tar.bz2:gcc-4.8.2:-:ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2,au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  mpfr gmp libmpc zlib ,GNU cc and gcc =
C compilers.,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2,Laur=
entiu Palcu <laurentiu.palcu@intel.com>)
['lame', '3.99.5', 'N/A', 'LGPLv2+', 'console/utils', 'http://lame.sourcefo=
rge.net/', 'r1', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ncurses', 'http://sourceforge.net/tracker/?group=
_id=3D290&atid=3D100290', 'None', 'High quality MP3 audio encoder.', 'ErrHo=
stNoDir:/lame/:-:lame-3.99.5.tar.gz:downloads.sourceforge.net/lame/lame-3.9=
9.5.tar.gz', 'N/A', 'http://downloads.sourceforge.net/lame/lame-3.99.5.tar.=
gz', 'Cristiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (lame,3.99.5,N/A,LGPLv2+,console/utils,r1,None,http://lame.sourcef=
orge.net/,http://sourceforge.net/tracker/?group_id=3D290&atid=3D100290,ErrH=
ostNoDir:/lame/:-:lame-3.99.5.tar.gz:downloads.sourceforge.net/lame/lame-3.=
99.5.tar.gz,autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ncurses,High quality MP3 audio encoder.,N/A,http://dow=
nloads.sourceforge.net/lame/lame-3.99.5.tar.gz,Cristiana Voicu <cristiana.v=
oicu@intel.com>)
['systemd-systemctl-native', '1.0', 'INVALID', 'MIT', 'base', '', 'r6', ' '=
, 'None', 'None', 'Wrapper for enabling systemd services.', 'MATCH', 'N/A',=
 'file://systemctl', 'None', 'None']
inserted (systemd-systemctl-native,1.0,INVALID,MIT,base,r6,None,,None,MATCH=
, ,Wrapper for enabling systemd services.,N/A,file://systemctl,None)
['alsa-lib', '1.0.27.2', 'N/A', 'LGPLv2.1 & GPLv2+', 'libs/multimedia', 'ht=
tp://www.alsa-project.org', 'r0', 'pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'https://bu=
gtrack.alsa-project.org/alsa-bug/login_page.php', 'None', 'ALSA sound libra=
ry.', 'ErrHostNoDir:/pub/lib/:-:alsa-lib-1.0.27.2.tar.bz2:ftp.alsa-project.=
org/pub/lib/alsa-lib-1.0.27.2.tar.bz2', 'N/A', 'ftp://ftp.alsa-project.org/=
pub/lib/alsa-lib-1.0.27.2.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.c=
om>', 'None']
inserted (alsa-lib,1.0.27.2,N/A,LGPLv2.1 & GPLv2+,libs/multimedia,r0,None,h=
ttp://www.alsa-project.org,https://bugtrack.alsa-project.org/alsa-bug/login=
_page.php,ErrHostNoDir:/pub/lib/:-:alsa-lib-1.0.27.2.tar.bz2:ftp.alsa-proje=
ct.org/pub/lib/alsa-lib-1.0.27.2.tar.bz2,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,ALSA so=
und library.,N/A,ftp://ftp.alsa-project.org/pub/lib/alsa-lib-1.0.27.2.tar.b=
z2,Cristian Iorga <cristian.iorga@intel.com>)
['libtool-cross', '2.4.2', 'N/A', 'GPLv2 & LGPLv2.1', 'devel', 'http://www.=
gnu.org/software/libtool/libtool.html', 'r6.1', 'autoconf-native automake-n=
ative gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  libtool-native', 'None', 'None', 'This is GNU =
libtool, a generic library support script. Libtool hides the complexity of =
generating special library types (such as shared libraries) behind a consis=
tent interface.', 'ErrHostNoDir:/gnu/libtool/:-:libtool-2.4.2.tar.gz:ftp.gn=
u.org/gnu/libtool/libtool-2.4.2.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/libt=
ool/libtool-2.4.2.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None=
']
inserted (libtool-cross,2.4.2,N/A,GPLv2 & LGPLv2.1,devel,r6.1,None,http://w=
ww.gnu.org/software/libtool/libtool.html,None,ErrHostNoDir:/gnu/libtool/:-:=
libtool-2.4.2.tar.gz:ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz,autoconf-=
native automake-native gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  libtool-native,This is GNU li=
btool, a generic library support script. Libtool hides the complexity of ge=
nerating special library types (such as shared libraries) behind a consiste=
nt interface.,N/A,ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz,Robert=
 Yang <liezhi.yang@windriver.com>)
['librsvg', '2.40.1', 'N/A', 'LGPLv2+', 'x11/utils', 'http://ftp.gnome.org/=
pub/GNOME/sources/librsvg/', 'r0', 'pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  cairo gdk-pix=
buf glib-2.0 libcroco libxml2 pango gnome-common-native qemu-native gtk-doc=
-stub-native gdk-pixbuf-native', 'https://bugzilla.gnome.org/', 'None', 'Li=
brary for rendering SVG files.', 'ErrHostNoDir:/pub/GNOME/sources/librsvg/2=
=2E40/librsvg-2.40.1.tar.xz:2.40:-:ftp.gnome.org/pub/GNOME/sources/librsvg/=
2.40/librsvg-2.40.1.tar.xz', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources=
/librsvg/2.40/librsvg-2.40.1.tar.xz;name=3Darchive', 'Ross Burton <ross.bur=
ton@intel.com>', 'None']
inserted (librsvg,2.40.1,N/A,LGPLv2+,x11/utils,r0,None,http://ftp.gnome.org=
/pub/GNOME/sources/librsvg/,https://bugzilla.gnome.org/,ErrHostNoDir:/pub/G=
NOME/sources/librsvg/2.40/librsvg-2.40.1.tar.xz:2.40:-:ftp.gnome.org/pub/GN=
OME/sources/librsvg/2.40/librsvg-2.40.1.tar.xz,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ca=
iro gdk-pixbuf glib-2.0 libcroco libxml2 pango gnome-common-native qemu-nat=
ive gtk-doc-stub-native gdk-pixbuf-native,Library for rendering SVG files.,=
N/A,http://ftp.gnome.org/pub/GNOME/sources/librsvg/2.40/librsvg-2.40.1.tar.=
xz;name=3Darchive,Ross Burton <ross.burton@intel.com>)
['fstests', '0.1+gitAUTOINC+e5939ff608', '0.1+gitAUTOINC+e5939ff', 'Zlib', =
'devel', 'http://www.o-hand.com', 'r0', 'autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  pango libxext libxft virt=
ual/libx11 gtk+', 'None', 'None', 'Various benchmarning tests for X.', 'MAT=
CH', '0.0+svnr426', 'git://git.yoctoproject.org/fstests', 'Laurentiu Palcu =
<laurentiu.palcu@intel.com>', 'None']
inserted (fstests,0.1+gitAUTOINC+e5939ff608,0.1+gitAUTOINC+e5939ff,Zlib,dev=
el,r0,None,http://www.o-hand.com,None,MATCH,autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  pango libxext libxft v=
irtual/libx11 gtk+,Various benchmarning tests for X.,0.0+svnr426,git://git.=
yoctoproject.org/fstests,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['mkelfimage', '4.0+gitAUTOINC+686a48a339', '4.0+gitAUTOINC+d6060b7', 'GPLv=
2', 'devel', 'http://www.coreboot.org/Mkelfimage', 'r0', 'autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   zlib', =
'None', 'None', 'Utility for creating ELF boot images for ELF-based Linux k=
ernel images.', 'UPDATE', 'N/A', 'git://review.coreboot.org/p/coreboot;prot=
ocol=3Dhttp', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (mkelfimage,4.0+gitAUTOINC+686a48a339,4.0+gitAUTOINC+d6060b7,GPLv2=
,devel,r0,None,http://www.coreboot.org/Mkelfimage,None,UPDATE,autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   zli=
b,Utility for creating ELF boot images for ELF-based Linux kernel images.,N=
/A,git://review.coreboot.org/p/coreboot;protocol=3Dhttp,Saul Wold <sgw@linu=
x.intel.com>)
['gtk-engines', '2.20.2', 'N/A', 'LGPLv2.1', 'x11/base', 'http://www.gnome.=
org/', 'r3', 'pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  intltool-native gtk+ gnome-common-n=
ative', 'https://bugzilla.gnome.org/', 'None', 'GTK+ theme engines.', 'ErrH=
ostNoDir:/pub/GNOME/sources/gtk-engines/2.20/gtk-engines-2.20.2.tar.bz2:2.2=
0:-:ftp.gnome.org/pub/GNOME/sources/gtk-engines/2.20/gtk-engines-2.20.2.tar=
=2Ebz2', '2.91.1', 'http://ftp.gnome.org/pub/GNOME/sources/gtk-engines/2.20=
/gtk-engines-2.20.2.tar.bz2;name=3Darchive', 'Valentin Popa <valentin.popa@=
intel.com>', '2.91.1 is a 3.0 beta release']
inserted (gtk-engines,2.20.2,N/A,LGPLv2.1,x11/base,r3,None,http://www.gnome=
=2Eorg/,https://bugzilla.gnome.org/,ErrHostNoDir:/pub/GNOME/sources/gtk-eng=
ines/2.20/gtk-engines-2.20.2.tar.bz2:2.20:-:ftp.gnome.org/pub/GNOME/sources=
/gtk-engines/2.20/gtk-engines-2.20.2.tar.bz2,pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  intl=
tool-native gtk+ gnome-common-native,GTK+ theme engines.,2.91.1,http://ftp.=
gnome.org/pub/GNOME/sources/gtk-engines/2.20/gtk-engines-2.20.2.tar.bz2;nam=
e=3Darchive,Valentin Popa <valentin.popa@intel.com>)
['liburi-perl', '1.60', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', '', 'r0',=
 ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   perl perl perl-native', 'None', 'None', 'This package contains the =
URI.pm module with friends. The module implements the URI class. URI object=
s can be used to access and manipulate the various components that make up =
these strings.', 'ErrHostNoDir:/authors/id/G/GA/GAAS/:-:URI-1.60.tar.gz:www=
=2Ecpan.org/authors/id/G/GA/GAAS/URI-1.60.tar.gz', 'N/A', 'http://www.cpan.=
org/authors/id/G/GA/GAAS/URI-1.60.tar.gz', 'Kai Kang <kai.kang@windriver.co=
m>', 'None']
inserted (liburi-perl,1.60,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,None,,None,E=
rrHostNoDir:/authors/id/G/GA/GAAS/:-:URI-1.60.tar.gz:www.cpan.org/authors/i=
d/G/GA/GAAS/URI-1.60.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc   perl perl perl-native,This package contai=
ns the URI.pm module with friends. The module implements the URI class. URI=
 objects can be used to access and manipulate the various components that m=
ake up these strings.,N/A,http://www.cpan.org/authors/id/G/GA/GAAS/URI-1.60=
=2Etar.gz,Kai Kang <kai.kang@windriver.com>)
['libcheck', '0.9.12', 'N/A', 'LGPLv2.1+', 'devel', 'http://check.sourcefor=
ge.net/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'Check - unit=
 testing framework for C code.', 'ErrHostNoDir:/check/:-:check-0.9.12.tar.g=
z:downloads.sourceforge.net/check/check-0.9.12.tar.gz', 'N/A', 'http://down=
loads.sourceforge.net/check/check-0.9.12.tar.gz', 'Saul Wold <sgw@linux.int=
el.com>', 'None']
inserted (libcheck,0.9.12,N/A,LGPLv2.1+,devel,r0,None,http://check.sourcefo=
rge.net/,None,ErrHostNoDir:/check/:-:check-0.9.12.tar.gz:downloads.sourcefo=
rge.net/check/check-0.9.12.tar.gz,pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Check - unit t=
esting framework for C code.,N/A,http://downloads.sourceforge.net/check/che=
ck-0.9.12.tar.gz,Saul Wold <sgw@linux.intel.com>)
['eee-acpi-scripts', '1.1.12+gitAUTOINC+9d4cdedca2', '1.1.12+gitAUTOINC+9d4=
cded', 'GPLv2', 'base', 'http://alioth.debian.org/projects/debian-eeepc/', =
'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  ', 'None', 'None', 'eeePC specific ACPI scripts.', 'MATCH', '1.=
1.12+9d4cdedca25b396405f8587f9c4fbf8229e041c2', 'git://git.debian.org/git/d=
ebian-eeepc/eeepc-acpi-scripts.git', 'Cristiana Voicu <cristiana.voicu@inte=
l.com>', 'None']
inserted (eee-acpi-scripts,1.1.12+gitAUTOINC+9d4cdedca2,1.1.12+gitAUTOINC+9=
d4cded,GPLv2,base,r0,None,http://alioth.debian.org/projects/debian-eeepc/,N=
one,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  ,eeePC specific ACPI scripts.,1.1.12+9d4cdedca25b396405f8587=
f9c4fbf8229e041c2,git://git.debian.org/git/debian-eeepc/eeepc-acpi-scripts.=
git,Cristiana Voicu <cristiana.voicu@intel.com>)
['gperf', '3.0.4', 'N/A', 'GPLv3+', 'base', 'http://www.gnu.org/software/gp=
erf', 'r0', 'autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ', 'None', 'None', 'GNU gperf is a perfect hash funct=
ion generator', 'ErrHostNoDir:/gnu/gperf/:-:gperf-3.0.4.tar.gz:ftp.gnu.org/=
gnu/gperf/gperf-3.0.4.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/gperf/gperf-3.=
0.4.tar.gz', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (gperf,3.0.4,N/A,GPLv3+,base,r0,None,http://www.gnu.org/software/g=
perf,None,ErrHostNoDir:/gnu/gperf/:-:gperf-3.0.4.tar.gz:ftp.gnu.org/gnu/gpe=
rf/gperf-3.0.4.tar.gz,autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ,GNU gperf is a perfect hash function genera=
tor,N/A,ftp://ftp.gnu.org/gnu/gperf/gperf-3.0.4.tar.gz,Valentin Popa <valen=
tin.popa@intel.com>)
['mpeg2dec', '0.4.1', 'N/A', 'GPLv2+', 'libs', 'http://libmpeg2.sourceforge=
=2Enet/', 'r2', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  virtual/libx11', 'None', 'None',=
 'Library and test program for decoding MPEG-2 and MPEG-1 video streams.', =
'ErrHostNoDir:/files/:-:mpeg2dec-0.4.1.tar.gz:libmpeg2.sourceforge.net/file=
s/mpeg2dec-0.4.1.tar.gz', 'N/A', 'http://libmpeg2.sourceforge.net/files/mpe=
g2dec-0.4.1.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'Why are we current=
ly at 0.4.1?']
inserted (mpeg2dec,0.4.1,N/A,GPLv2+,libs,r2,None,http://libmpeg2.sourceforg=
e.net/,None,ErrHostNoDir:/files/:-:mpeg2dec-0.4.1.tar.gz:libmpeg2.sourcefor=
ge.net/files/mpeg2dec-0.4.1.tar.gz,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11=
,Library and test program for decoding MPEG-2 and MPEG-1 video streams.,N/A=
,http://libmpeg2.sourceforge.net/files/mpeg2dec-0.4.1.tar.gz,Saul Wold <sgw=
@linux.intel.com>)
['clutter-gtk-1.0', '1.4.4', 'N/A', 'LGPLv2+', 'base', 'http://www.clutter-=
project.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  clutter-1.0 gtk+3 gtk-doc-stub-native', 'None', 'None', 'Library for em=
bedding a Clutter canvas in a GTK+ application.', 'ErrHostNoDir:/pub/GNOME/=
sources/clutter-gtk/1.4/clutter-gtk-1.4.4.tar.xz:1.4:-:ftp.gnome.org/pub/GN=
OME/sources/clutter-gtk/1.4/clutter-gtk-1.4.4.tar.xz', 'N/A', 'http://ftp.g=
nome.org/pub/GNOME/sources/clutter-gtk/1.4/clutter-gtk-1.4.4.tar.xz;name=3D=
archive', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (clutter-gtk-1.0,1.4.4,N/A,LGPLv2+,base,r0,None,http://www.clutter=
-project.org/,None,ErrHostNoDir:/pub/GNOME/sources/clutter-gtk/1.4/clutter-=
gtk-1.4.4.tar.xz:1.4:-:ftp.gnome.org/pub/GNOME/sources/clutter-gtk/1.4/clut=
ter-gtk-1.4.4.tar.xz,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  clutter-1.0 gtk+3 gtk-doc-stub-native,Library for embedding a Clutter ca=
nvas in a GTK+ application.,N/A,http://ftp.gnome.org/pub/GNOME/sources/clut=
ter-gtk/1.4/clutter-gtk-1.4.4.tar.xz;name=3Darchive,Ross Burton <ross.burto=
n@intel.com>)
['perl', '5.14.3', 'N/A', 'Artistic-1.0 | GPL-1.0', 'devel', 'http://www.pe=
rl.org/', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  virtual/db grep-native gdbm zlib perl-native', 'None'=
, 'None', 'Perl scripting language.', 'ErrHostNoDir:/src/5.0/perl-5.14.3.ta=
r.gz:5.0:-:www.cpan.org/src/5.0/perl-5.14.3.tar.gz', 'N/A', 'http://www.cpa=
n.org/src/5.0/perl-5.14.3.tar.gz', 'Hongxu Jia <hongxu.jia@windriver.com>',=
 'None']
inserted (perl,5.14.3,N/A,Artistic-1.0 | GPL-1.0,devel,r1,None,http://www.p=
erl.org/,None,ErrHostNoDir:/src/5.0/perl-5.14.3.tar.gz:5.0:-:www.cpan.org/s=
rc/5.0/perl-5.14.3.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  virtual/db grep-native gdbm zlib perl-native=
,Perl scripting language.,N/A,http://www.cpan.org/src/5.0/perl-5.14.3.tar.g=
z,Hongxu Jia <hongxu.jia@windriver.com>)
['linux-yocto-tiny', '3.14+gitAUTOINC+928d7b2dda_0143c6ebb4', '3.14+gitAUTO=
INC+fcf0e4d', 'GPLv2', 'kernel', '', 'r0', '  xz-native bc-native virtual/i=
586-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native depmodwrapp=
er-cross', 'None', 'None', 'Yocto Kernel', 'UPDATE', 'N/A', 'git://git.yoct=
oproject.org/linux-yocto-3.14.git;bareclone=3D1;branch=3Dstandard/tiny/base=
,meta;name=3Dmachine,meta', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (linux-yocto-tiny,3.14+gitAUTOINC+928d7b2dda_0143c6ebb4,3.14+gitAU=
TOINC+fcf0e4d,GPLv2,kernel,r0,None,,None,UPDATE,  xz-native bc-native virtu=
al/i586-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native depmodw=
rapper-cross,Yocto Kernel,N/A,git://git.yoctoproject.org/linux-yocto-3.14.g=
it;bareclone=3D1;branch=3Dstandard/tiny/base,meta;name=3Dmachine,meta,Saul =
Wold <sgw@linux.intel.com>)
['pigz', '2.3.1', 'N/A', 'Zlib', 'console/utils', 'http://zlib.net/pigz/', =
'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  zlib', 'None', 'None', 'pigz, which stands for parallel impleme=
ntation of gzip, is a fully functional replacement for gzip that exploits m=
ultiple processors and multiple cores to the hilt when compressing data. pi=
gz was written by Mark Adler, and uses the zlib and pthread libraries.', 'E=
rrHostNoDir:/pigz/:-:pigz-2.3.1.tar.gz:zlib.net/pigz/pigz-2.3.1.tar.gz', 'N=
/A', 'http://zlib.net/pigz/pigz-2.3.1.tar.gz', 'Saul Wold <sgw@linux.intel.=
com>', 'None']
inserted (pigz,2.3.1,N/A,Zlib,console/utils,r0,None,http://zlib.net/pigz/,N=
one,ErrHostNoDir:/pigz/:-:pigz-2.3.1.tar.gz:zlib.net/pigz/pigz-2.3.1.tar.gz=
, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  zlib,pigz, which stands for parallel implementation of gzip, is a ful=
ly functional replacement for gzip that exploits multiple processors and mu=
ltiple cores to the hilt when compressing data. pigz was written by Mark Ad=
ler, and uses the zlib and pthread libraries.,N/A,http://zlib.net/pigz/pigz=
-2.3.1.tar.gz,Saul Wold <sgw@linux.intel.com>)
['compositeproto', '0.4.2', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://w=
ww.x.org', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.fre=
edesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the=
 wire protocol for the X composite extension.  The X composite extension pr=
ovides three related mechanisms for compositing and off-screen storage.', '=
ErrHostNoDir:/releases/individual/proto/:-:compositeproto-0.4.2.tar.bz2:xor=
g.freedesktop.org/releases/individual/proto/compositeproto-0.4.2.tar.bz2', =
'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/compositeprot=
o-0.4.2.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (compositeproto,0.4.2,N/A,MIT & MIT-style,x11/libs,r1,1,http://www=
=2Ex.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostN=
oDir:/releases/individual/proto/:-:compositeproto-0.4.2.tar.bz2:xorg.freede=
sktop.org/releases/individual/proto/compositeproto-0.4.2.tar.bz2,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  util-macros,This package provides the wire protocol for the=
 X composite extension.  The X composite extension provides three related m=
echanisms for compositing and off-screen storage.,N/A,http://xorg.freedeskt=
op.org/releases/individual/proto/compositeproto-0.4.2.tar.bz2,Ross Burton <=
ross.burton@intel.com>)
['libxfixes', '5.0.1', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  util-macros virtual/libx11 xproto fixespro=
to xextproto', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg',=
 '1', 'X applications have often needed to work around various shortcomings=
 in the core X window system.  This extension is designed to provide the mi=
nimal server-side support necessary to eliminate problems caused by these w=
orkarounds.', 'ErrHostNoDir:/releases/individual/lib/:-:libXfixes-5.0.1.tar=
=2Ebz2:xorg.freedesktop.org/releases/individual/lib/libXfixes-5.0.1.tar.bz2=
', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXfixes-5.=
0.1.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxfixes,5.0.1,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/release=
s/individual/lib/:-:libXfixes-5.0.1.tar.bz2:xorg.freedesktop.org/releases/i=
ndividual/lib/libXfixes-5.0.1.tar.bz2,pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros=
 virtual/libx11 xproto fixesproto xextproto,X applications have often neede=
d to work around various shortcomings in the core X window system.  This ex=
tension is designed to provide the minimal server-side support necessary to=
 eliminate problems caused by these workarounds.,N/A,http://xorg.freedeskto=
p.org/releases/individual/lib/libXfixes-5.0.1.tar.bz2,Ross Burton <ross.bur=
ton@intel.com>)
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
x-compilerlibs virtual/libc  openssl libcap update-rc.d-native', 'None', 'N=
one', 'ISC Internet Domain Name Server.', 'ErrHostNoDir:/isc/bind9/9.9.5/:9=
=2E9.5:bind-9.9.5.tar.gz:ftp.isc.org/isc/bind9/9.9.5/bind-9.9.5.tar.gz', 'N=
/A', 'ftp://ftp.isc.org/isc/bind9/9.9.5/bind-9.9.5.tar.gz', 'Kai Kang <kai.=
kang@windriver.com>', 'None']
inserted (bind,9.9.5,N/A,ISC & BSD,console/network,r0,None,http://www.isc.o=
rg/sw/bind/,None,ErrHostNoDir:/isc/bind9/9.9.5/:9.9.5:bind-9.9.5.tar.gz:ftp=
=2Eisc.org/isc/bind9/9.9.5/bind-9.9.5.tar.gz,autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  openssl libcap update=
-rc.d-native,ISC Internet Domain Name Server.,N/A,ftp://ftp.isc.org/isc/bin=
d9/9.9.5/bind-9.9.5.tar.gz,Kai Kang <kai.kang@windriver.com>)
['libx11', '1.6.2', 'N/A', 'MIT & MIT-style & BSD', 'x11/libs', 'http://www=
=2Ex.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native virtual/gettext gettext-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
util-macros xproto xextproto xtrans libxcb kbproto inputproto xproto-native=
', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', "This =
package provides a client interface to the X Window System, otherwise known=
 as 'Xlib'.  It provides a complete API for the basic functions of the wind=
ow system.", 'ErrHostNoDir:/releases/individual/lib/:-:libX11-1.6.2.tar.bz2=
:xorg.freedesktop.org/releases/individual/lib/libX11-1.6.2.tar.bz2', 'N/A',=
 'http://xorg.freedesktop.org/releases/individual/lib/libX11-1.6.2.tar.bz2'=
, 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (libx11,1.6.2,N/A,MIT & MIT-style & BSD,x11/libs,r0,1,http://www.x=
=2Eorg,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoD=
ir:/releases/individual/lib/:-:libX11-1.6.2.tar.bz2:xorg.freedesktop.org/re=
leases/individual/lib/libX11-1.6.2.tar.bz2,pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native virtual/get=
text gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros xproto xextproto xtrans libxcb kbproto=
 inputproto xproto-native,This package provides a client interface to the X=
 Window System, otherwise known as 'Xlib'.  It provides a complete API for =
the basic functions of the window system.,N/A,http://xorg.freedesktop.org/r=
eleases/individual/lib/libX11-1.6.2.tar.bz2,Valentin Popa <valentin.popa@in=
tel.com>)
['mesa-gl', '9.2.5', 'N/A', 'MIT', 'x11', 'http://mesa3d.org', 'r0', 'pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  expat makedepend-native=
 flex-native bison-native udev  python-native   dri2proto libdrm xf86dripro=
to glproto virtual/libx11 libxext libxxf86vm libxdamage libxfixes', 'https:=
//bugs.freedesktop.org', '2', 'Mesa is an open-source implementation of the=
 OpenGL specification - a system for rendering interactive 3D graphics.  A =
variety of device drivers allows Mesa to be used in many different environm=
ents ranging from software emulation to complete hardware acceleration for =
modern GPUs. Mesa is used as part of the overall Direct Rendering Infrastru=
cture and X.org environment.', 'ErrHostNoDir:/pub/mesa/9.2.5/MesaLib-9.2.5.=
tar.bz2:9.2.5:-:ftp.freedesktop.org/pub/mesa/9.2.5/MesaLib-9.2.5.tar.bz2', =
'N/A', 'ftp://ftp.freedesktop.org/pub/mesa/9.2.5/MesaLib-9.2.5.tar.bz2', 'N=
one', 'None']
inserted (mesa-gl,9.2.5,N/A,MIT,x11,r0,2,http://mesa3d.org,https://bugs.fre=
edesktop.org,ErrHostNoDir:/pub/mesa/9.2.5/MesaLib-9.2.5.tar.bz2:9.2.5:-:ftp=
=2Efreedesktop.org/pub/mesa/9.2.5/MesaLib-9.2.5.tar.bz2,pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  expat makedepend-native flex-native b=
ison-native udev  python-native   dri2proto libdrm xf86driproto glproto vir=
tual/libx11 libxext libxxf86vm libxdamage libxfixes,Mesa is an open-source =
implementation of the OpenGL specification - a system for rendering interac=
tive 3D graphics.  A variety of device drivers allows Mesa to be used in ma=
ny different environments ranging from software emulation to complete hardw=
are acceleration for modern GPUs. Mesa is used as part of the overall Direc=
t Rendering Infrastructure and X.org environment.,N/A,ftp://ftp.freedesktop=
=2Eorg/pub/mesa/9.2.5/MesaLib-9.2.5.tar.bz2,None)
['python-smmap', '0.8.2', 'N/A', 'BSD', 'devel/python', 'http://github.com/=
gitpython-developers/GitPython', 'r0', ' virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc   python-native python  python-=
native  python-distribute-native', 'None', 'None', 'A pure Python implement=
ation of a sliding memory map to help unifying memory mapped access on 32 a=
nd 64 bit systems and to help managing resources more efficiently.', 'ErrHo=
stNoDir:/packages/source/s/smmap/:-:smmap-0.8.2.tar.gz:pypi.python.org/pack=
ages/source/s/smmap/smmap-0.8.2.tar.gz', 'N/A', 'http://pypi.python.org/pac=
kages/source/s/smmap/smmap-0.8.2.tar.gz', 'None', 'None']
inserted (python-smmap,0.8.2,N/A,BSD,devel/python,r0,None,http://github.com=
/gitpython-developers/GitPython,None,ErrHostNoDir:/packages/source/s/smmap/=
:-:smmap-0.8.2.tar.gz:pypi.python.org/packages/source/s/smmap/smmap-0.8.2.t=
ar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc   python-native python  python-native  python-distribute-native,A=
 pure Python implementation of a sliding memory map to help unifying memory=
 mapped access on 32 and 64 bit systems and to help managing resources more=
 efficiently.,N/A,http://pypi.python.org/packages/source/s/smmap/smmap-0.8.=
2.tar.gz,None)
['powertop', '2.5', 'N/A', 'GPLv2', 'base', 'http://01.org/powertop/', 'r0'=
, 'autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ncurses libnl pciutils virtual/u=
pdate-alternatives', 'http://bugzilla.lesswatts.org/', 'None', 'Linux tool =
to diagnose issues with power consumption and power management.', 'ErrHostN=
oDir:/powertop/sites/default/files/downloads/:-:powertop-2.5.tar.gz:01.org/=
powertop/sites/default/files/downloads/powertop-2.5.tar.gz', 'N/A', 'http:/=
/01.org/powertop/sites/default/files/downloads/powertop-2.5.tar.gz', 'Laure=
ntiu Palcu <laurentiu.palcu@intel.com>', "Do not upgrade to version 1.97 si=
nce it's a beta release of the comming PowerTOP 2.0"]
inserted (powertop,2.5,N/A,GPLv2,base,r0,None,http://01.org/powertop/,http:=
//bugzilla.lesswatts.org/,ErrHostNoDir:/powertop/sites/default/files/downlo=
ads/:-:powertop-2.5.tar.gz:01.org/powertop/sites/default/files/downloads/po=
wertop-2.5.tar.gz,autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ncurses libnl pci=
utils virtual/update-alternatives,Linux tool to diagnose issues with power =
consumption and power management.,N/A,http://01.org/powertop/sites/default/=
files/downloads/powertop-2.5.tar.gz,Laurentiu Palcu <laurentiu.palcu@intel.=
com>)
['fotowall', '0.9', 'N/A', 'GPLv2+', 'x11/apps', 'http://www.enricoros.com/=
opensource/fotowall', 'r4', 'qt4-tools-native qt4-x11  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None=
', 'Fotowall is a creative tool that allows you to layout your photos or pi=
ctures in a personal way. You can add pictures, then resize, move, change c=
olors, text, shadows, etc..', 'ErrHostNoDir:/CONTENT/content-files/:-:71316=
-Fotowall-0.9.tar.bz2:qt-apps.org/CONTENT/content-files/71316-Fotowall-0.9.=
tar.bz2', 'N/A', 'http://qt-apps.org/CONTENT/content-files/71316-Fotowall-0=
=2E9.tar.bz2', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (fotowall,0.9,N/A,GPLv2+,x11/apps,r4,None,http://www.enricoros.com=
/opensource/fotowall,None,ErrHostNoDir:/CONTENT/content-files/:-:71316-Foto=
wall-0.9.tar.bz2:qt-apps.org/CONTENT/content-files/71316-Fotowall-0.9.tar.b=
z2,qt4-tools-native qt4-x11  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  ,Fotowall is a creative tool that allows y=
ou to layout your photos or pictures in a personal way. You can add picture=
s, then resize, move, change colors, text, shadows, etc..,N/A,http://qt-app=
s.org/CONTENT/content-files/71316-Fotowall-0.9.tar.bz2,Paul Eggleton <paul.=
eggleton@linux.intel.com>)
['pciutils', '3.2.1', 'N/A', 'GPLv2+', 'console/utils', 'http://atrey.karli=
n.mff.cuni.cz/~mj/pciutils.shtml', 'r0', ' virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  zlib kmod', 'None', 'None', =
'The PCI Utilities package contains a library for portable access to PCI bu=
s configuration space and several utilities based on this library.', 'ErrHo=
stNoDir:/pub/software/utils/pciutils/:-:pciutils-3.2.1.tar.bz2:kernel.org/p=
ub/software/utils/pciutils/pciutils-3.2.1.tar.bz2', 'N/A', 'http://kernel.o=
rg/pub/software/utils/pciutils/pciutils-3.2.1.tar.bz2', 'Valentin Popa <val=
entin.popa@intel.com>', 'None']
inserted (pciutils,3.2.1,N/A,GPLv2+,console/utils,r0,None,http://atrey.karl=
in.mff.cuni.cz/~mj/pciutils.shtml,None,ErrHostNoDir:/pub/software/utils/pci=
utils/:-:pciutils-3.2.1.tar.bz2:kernel.org/pub/software/utils/pciutils/pciu=
tils-3.2.1.tar.bz2, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  zlib kmod,The PCI Utilities package contains a libr=
ary for portable access to PCI bus configuration space and several utilitie=
s based on this library.,N/A,http://kernel.org/pub/software/utils/pciutils/=
pciutils-3.2.1.tar.bz2,Valentin Popa <valentin.popa@intel.com>)
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
tine returns the number of warnings issued.', 'ErrHostNoDir:/CPAN/authors/i=
d/F/FL/FLORA/:-:File-CheckTree-4.41.tar.gz:search.cpan.org/CPAN/authors/id/=
F/FL/FLORA/File-CheckTree-4.41.tar.gz', 'N/A', 'http://search.cpan.org/CPAN=
/authors/id/F/FL/FLORA/File-CheckTree-4.41.tar.gz', 'Saul Wold <sgw@linux.i=
ntel.com>', 'None']
inserted (libfile-checktree-perl,4.41,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,N=
one,http://search.cpan.org/~flora/File-CheckTree/,None,ErrHostNoDir:/CPAN/a=
uthors/id/F/FL/FLORA/:-:File-CheckTree-4.41.tar.gz:search.cpan.org/CPAN/aut=
hors/id/F/FL/FLORA/File-CheckTree-4.41.tar.gz, virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native,The va=
lidate() routine takes a single multiline string consisting of directives, =
each containing a filename plus a file test to try on it. (The file test ma=
y also be a "cd", causing subsequent relative filenames to be interpreted r=
elative to that directory.) After the file test you may put || die to make =
it a fatal error if the file test fails. The default is || warn. The file t=
est may optionally have a "!' prepended to test for the opposite condition.=
 If you do a cd and then list some relative filenames, you may want to inde=
nt them slightly for readability. If you supply your own die() or warn() me=
ssage, you can use $file to interpolate the filename. Filetests may be bunc=
hed: "-rwx" tests for all of -r, -w, and -x. Only the first failed test of =
the bunch will produce a warning. The routine returns the number of warning=
s issued.,N/A,http://search.cpan.org/CPAN/authors/id/F/FL/FLORA/File-CheckT=
ree-4.41.tar.gz,Saul Wold <sgw@linux.intel.com>)
['binutils', '2.24', 'N/A', 'GPLv3', 'devel', 'http://www.gnu.org/software/=
binutils/', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native biso=
n-native zlib-native gnu-config-native autoconf-native flex bison zlib virt=
ual/update-alternatives', 'http://sourceware.org/bugzilla/', 'None', 'The G=
NU Binutils are a collection of binary tools. The main ones are ld (GNU Lin=
ker), and as (GNU Assembler). This package also includes addition tools suc=
h as addr2line (Converts addresses into filenames and line numbers), ar (ut=
ility for creating, modifying and extracting archives), nm (list symbols in=
 object files), objcopy (copy and translate object files), objdump (Display=
 object information), and other tools and related libraries.', 'ErrHostNoDi=
r:/gnu/binutils/:-:binutils-2.24.tar.bz2:ftp.gnu.org/gnu/binutils/binutils-=
2.24.tar.bz2', 'N/A', 'ftp://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2=
', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (binutils,2.24,N/A,GPLv3,devel,r0,None,http://www.gnu.org/software=
/binutils/,http://sourceware.org/bugzilla/,ErrHostNoDir:/gnu/binutils/:-:bi=
nutils-2.24.tar.bz2:ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2,autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native virt=
ual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  flex-native bison-native zlib-native gnu-co=
nfig-native autoconf-native flex bison zlib virtual/update-alternatives,The=
 GNU Binutils are a collection of binary tools. The main ones are ld (GNU L=
inker), and as (GNU Assembler). This package also includes addition tools s=
uch as addr2line (Converts addresses into filenames and line numbers), ar (=
utility for creating, modifying and extracting archives), nm (list symbols =
in object files), objcopy (copy and translate object files), objdump (Displ=
ay object information), and other tools and related libraries.,N/A,ftp://ft=
p.gnu.org/gnu/binutils/binutils-2.24.tar.bz2,Robert Yang <liezhi.yang@windr=
iver.com>)
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
['libuser', '0.60', 'N/A', 'LGPLv2', 'base', 'https://fedorahosted.org/libu=
ser/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  popt libpam glib-2.0 =
xz-native docbook-utils-native linuxdoc-tools-native python  python-native =
', 'https://fedorahosted.org/libuser/newticket', 'None', 'The libuser libra=
ry implements a standardized interface for manipulating and administering u=
ser and group accounts', 'ErrHostNoDir:/releases/l/i/libuser/:-:libuser-0.6=
0.tar.xz:fedorahosted.org/releases/l/i/libuser/libuser-0.60.tar.xz', 'N/A',=
 'https://fedorahosted.org/releases/l/i/libuser/libuser-0.60.tar.xz', 'Chon=
g Lu <Chong.Lu@windriver.com>', 'None']
inserted (libuser,0.60,N/A,LGPLv2,base,r0,None,https://fedorahosted.org/lib=
user/,https://fedorahosted.org/libuser/newticket,ErrHostNoDir:/releases/l/i=
/libuser/:-:libuser-0.60.tar.xz:fedorahosted.org/releases/l/i/libuser/libus=
er-0.60.tar.xz,autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  popt libpam glib-2.0=
 xz-native docbook-utils-native linuxdoc-tools-native python  python-native=
 ,The libuser library implements a standardized interface for manipulating =
and administering user and group accounts,N/A,https://fedorahosted.org/rele=
ases/l/i/libuser/libuser-0.60.tar.xz,Chong Lu <Chong.Lu@windriver.com>)
['lsb', '4.1', 'N/A', 'GPLv2+', 'console/utils', 'http://prdownloads.source=
forge.net/lsb', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'None', 'None', 'LSB support for OpenEmbedde=
d.', 'ErrHostNoDir:/project/lsb/lsb_release/4.1/:1.4:lsb-release-1.4.tar.gz=
:downloads.sourceforge.net/project/lsb/lsb_release/1.4/lsb-release-1.4.tar.=
gz', 'N/A', 'http://downloads.sourceforge.net/project/lsb/lsb_release/1.4/l=
sb-release-1.4.tar.gz', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (lsb,4.1,N/A,GPLv2+,console/utils,r2,None,http://prdownloads.sourc=
eforge.net/lsb,None,ErrHostNoDir:/project/lsb/lsb_release/4.1/:1.4:lsb-rele=
ase-1.4.tar.gz:downloads.sourceforge.net/project/lsb/lsb_release/1.4/lsb-re=
lease-1.4.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  ,LSB support for OpenEmbedded.,N/A,http://downloads.s=
ourceforge.net/project/lsb/lsb_release/1.4/lsb-release-1.4.tar.gz,Hongxu Ji=
a <hongxu.jia@windriver.com>)
['libconvert-asn1-perl', '0.26', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', =
'', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc   perl perl-native', 'None', 'None', 'Convert::ASN1 - Perl A=
SN.1 Encode/Decode library.', 'ErrHostNoDir:/CPAN/authors/id/G/GB/GBARR/:-:=
Convert-ASN1-0.26.tar.gz:search.cpan.org/CPAN/authors/id/G/GB/GBARR/Convert=
-ASN1-0.26.tar.gz', 'N/A', 'http://search.cpan.org/CPAN/authors/id/G/GB/GBA=
RR/Convert-ASN1-0.26.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.com>'=
, 'None']
inserted (libconvert-asn1-perl,0.26,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,Non=
e,,None,ErrHostNoDir:/CPAN/authors/id/G/GB/GBARR/:-:Convert-ASN1-0.26.tar.g=
z:search.cpan.org/CPAN/authors/id/G/GB/GBARR/Convert-ASN1-0.26.tar.gz, virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
 perl perl-native,Convert::ASN1 - Perl ASN.1 Encode/Decode library.,N/A,htt=
p://search.cpan.org/CPAN/authors/id/G/GB/GBARR/Convert-ASN1-0.26.tar.gz,Lau=
rentiu Palcu <laurentiu.palcu@intel.com>)
['opensp', '1.5.2', 'N/A', 'BSD', 'libs', 'http://openjade.sourceforge.net'=
, 'r1', 'autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'An SGM=
L parser used by the OpenJade suite of utilities.', 'ErrHostNoDir:/openjade=
/:-:OpenSP-1.5.2.tar.gz:downloads.sourceforge.net/openjade/OpenSP-1.5.2.tar=
=2Egz', 'N/A', 'http://downloads.sourceforge.net/openjade/OpenSP-1.5.2.tar.=
gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (opensp,1.5.2,N/A,BSD,libs,r1,None,http://openjade.sourceforge.net=
,None,ErrHostNoDir:/openjade/:-:OpenSP-1.5.2.tar.gz:downloads.sourceforge.n=
et/openjade/OpenSP-1.5.2.tar.gz,autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,An=
 SGML parser used by the OpenJade suite of utilities.,N/A,http://downloads.=
sourceforge.net/openjade/OpenSP-1.5.2.tar.gz,Paul Eggleton <paul.eggleton@l=
inux.intel.com>)
['acpid', '1.0.10', 'N/A', 'GPLv2+', 'base', 'http://sourceforge.net/projec=
ts/acpid/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc   update-rc.d-native', 'http://sourceforge.net/track=
er/?group_id=3D33140&atid=3D407341', 'None', 'A daemon for delivering ACPI =
events.', 'ErrHostNoDir:/acpid/:-:acpid-1.0.10.tar.gz:downloads.sourceforge=
=2Enet/acpid/acpid-1.0.10.tar.gz', 'N/A', 'http://downloads.sourceforge.net=
/acpid/acpid-1.0.10.tar.gz', 'Cristiana Voicu <cristiana.voicu@intel.com>',=
 'None']
inserted (acpid,1.0.10,N/A,GPLv2+,base,r0,None,http://sourceforge.net/proje=
cts/acpid/,http://sourceforge.net/tracker/?group_id=3D33140&atid=3D407341,E=
rrHostNoDir:/acpid/:-:acpid-1.0.10.tar.gz:downloads.sourceforge.net/acpid/a=
cpid-1.0.10.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc   update-rc.d-native,A daemon for delivering ACPI ev=
ents.,N/A,http://downloads.sourceforge.net/acpid/acpid-1.0.10.tar.gz,Cristi=
ana Voicu <cristiana.voicu@intel.com>)
['lz4', 'r112', 'N/A', 'BSD', 'base', '', 'r0', ' virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'L=
Z4 is a very fast lossless compression algorithm, providing compression spe=
ed at 400 MB/s per core, scalable with multi-cores CPU. It also features an=
 extremely fast decoder, with speed in multiple GB/s per core, typically re=
aching RAM speed limits on multi-core systems.', 'UPDATE', 'N/A', 'svn://lz=
4.googlecode.com/svn/;module=3Dtrunk;protocol=3Dhttp', 'None', 'None']
inserted (lz4,r112,N/A,BSD,base,r0,None,,None,UPDATE, virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,LZ4 is a very fa=
st lossless compression algorithm, providing compression speed at 400 MB/s =
per core, scalable with multi-cores CPU. It also features an extremely fast=
 decoder, with speed in multiple GB/s per core, typically reaching RAM spee=
d limits on multi-core systems.,N/A,svn://lz4.googlecode.com/svn/;module=3D=
trunk;protocol=3Dhttp,None)
['jpeg', '8d', 'N/A', 'BSD-3-Clause', 'libs', 'http://www.ijg.org/', 'r1', =
'autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  libtool-cross', 'None', 'None', 'libjpeg contains a library for h=
andling the JPEG (JFIF) image format, as well as related programs for acces=
sing the libjpeg functions.', 'ErrHostNoDir:/files/:-:jpegsrc.v8d.tar.gz:ww=
w.ijg.org/files/jpegsrc.v8d.tar.gz', '9', 'http://www.ijg.org/files/jpegsrc=
=2Ev8d.tar.gz', 'Ross Burton <ross.burton@intel.com>', "webkit-gtk 1.8.3 do=
esn't work with jpeg 9"]
inserted (jpeg,8d,N/A,BSD-3-Clause,libs,r1,None,http://www.ijg.org/,None,Er=
rHostNoDir:/files/:-:jpegsrc.v8d.tar.gz:www.ijg.org/files/jpegsrc.v8d.tar.g=
z,autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  libtool-cross,libjpeg contains a library for handling the JPEG (=
JFIF) image format, as well as related programs for accessing the libjpeg f=
unctions.,9,http://www.ijg.org/files/jpegsrc.v8d.tar.gz,Ross Burton <ross.b=
urton@intel.com>)
['kexec-tools', '2.0.4', 'N/A', 'GPLv2', 'kernel/userland', 'http://kernel.=
org/pub/linux/utils/kernel/kexec/', 'r0', 'autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  zlib xz', 'None', 'None=
', 'Kexec is a fast reboot feature that lets you reboot to a new Linux kern=
el', 'ErrHostNoDir:/pub/linux/utils/kernel/kexec/:-:kexec-tools-2.0.4.tar.g=
z:kernel.org/pub/linux/utils/kernel/kexec/kexec-tools-2.0.4.tar.gz', 'N/A',=
 'http://kernel.org/pub/linux/utils/kernel/kexec/kexec-tools-2.0.4.tar.gz',=
 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (kexec-tools,2.0.4,N/A,GPLv2,kernel/userland,r0,None,http://kernel=
=2Eorg/pub/linux/utils/kernel/kexec/,None,ErrHostNoDir:/pub/linux/utils/ker=
nel/kexec/:-:kexec-tools-2.0.4.tar.gz:kernel.org/pub/linux/utils/kernel/kex=
ec/kexec-tools-2.0.4.tar.gz,autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  zlib xz,Kexec is a fast reboot feature=
 that lets you reboot to a new Linux kernel,N/A,http://kernel.org/pub/linux=
/utils/kernel/kexec/kexec-tools-2.0.4.tar.gz,Laurentiu Palcu <laurentiu.pal=
cu@intel.com>)
['tcl', '8.6.1', 'N/A', 'BSD-3-Clause', 'devel/tcltk', 'http://tcl.sourcefo=
rge.net', 'r0', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  tcl-native zlib', 'None', 'None', 'Tool Command L=
anguage.', 'ErrHostNoDir:/tcl/:-:tcl8.6.1-src.tar.gz:downloads.sourceforge.=
net/tcl/tcl8.6.1-src.tar.gz', 'N/A', 'http://downloads.sourceforge.net/tcl/=
tcl8.6.1-src.tar.gz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (tcl,8.6.1,N/A,BSD-3-Clause,devel/tcltk,r0,None,http://tcl.sourcef=
orge.net,None,ErrHostNoDir:/tcl/:-:tcl8.6.1-src.tar.gz:downloads.sourceforg=
e.net/tcl/tcl8.6.1-src.tar.gz,autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  tcl-native zlib,Tool Command Languag=
e.,N/A,http://downloads.sourceforge.net/tcl/tcl8.6.1-src.tar.gz,Chong Lu <C=
hong.Lu@windriver.com>)
['opkg-utils', '0.1.8+gitAUTOINC+c33b217016', '0.1.8+gitAUTOINC+c33b217', '=
GPLv2+', 'base', 'http://code.google.com/p/opkg/', 'r0', ' virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', '=
None', 'Additional utilities for the opkg package manager.', 'MATCH', 'N/A'=
, 'git://git.yoctoproject.org/opkg-utils', 'Cristiana Voicu <cristiana.voic=
u@intel.com>', 'None']
inserted (opkg-utils,0.1.8+gitAUTOINC+c33b217016,0.1.8+gitAUTOINC+c33b217,G=
PLv2+,base,r0,None,http://code.google.com/p/opkg/,None,MATCH, virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Addition=
al utilities for the opkg package manager.,N/A,git://git.yoctoproject.org/o=
pkg-utils,Cristiana Voicu <cristiana.voicu@intel.com>)
['libav', '0.8.9', 'N/A', 'GPLv2+', 'libs', 'http://libav.org/', 'r0', 'pkg=
config-native autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  virtual/libsdl zlib libogg libvorbis libtheora yasm-=
native bzip2 virtual/libx11 libxfixes libxext xproto x264', 'None', 'None',=
 'A complete, cross-platform solution to record, convert and stream audio a=
nd video.', 'ErrHostNoDir:/releases/:-:libav-0.8.9.tar.xz:libav.org/release=
s/libav-0.8.9.tar.xz', 'N/A', 'http://libav.org/releases/libav-0.8.9.tar.xz=
', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (libav,0.8.9,N/A,GPLv2+,libs,r0,None,http://libav.org/,None,ErrHos=
tNoDir:/releases/:-:libav-0.8.9.tar.xz:libav.org/releases/libav-0.8.9.tar.x=
z,pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  virtual/libsdl zlib libogg libvorbis libtheora =
yasm-native bzip2 virtual/libx11 libxfixes libxext xproto x264,A complete, =
cross-platform solution to record, convert and stream audio and video.,N/A,=
http://libav.org/releases/libav-0.8.9.tar.xz,Paul Eggleton <paul.eggleton@l=
inux.intel.com>)
['gummiboot', '43+gitAUTOINC+4062c51075', '44+gitAUTOINC+9a356dd', 'LGPLv2.=
1', 'base', 'http://freedesktop.org/wiki/Software/gummiboot', 'r0', 'autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  gnu-efi util-linux', 'None', 'None', 'Gummiboot is a simple UEFI boot ma=
nager which executes configured EFI images..', 'UPDATE', 'N/A', 'git://anon=
git.freedesktop.org/gummiboot', 'None', 'None']
inserted (gummiboot,43+gitAUTOINC+4062c51075,44+gitAUTOINC+9a356dd,LGPLv2.1=
,base,r0,None,http://freedesktop.org/wiki/Software/gummiboot,None,UPDATE,au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  gnu-efi util-linux,Gummiboot is a simple UEFI boot manager which exe=
cutes configured EFI images..,N/A,git://anongit.freedesktop.org/gummiboot,N=
one)
['util-linux', '2.24.1', 'N/A', 'GPLv2+ & LGPLv2.1+ & BSD', 'base', '', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib ncurses v=
irtual/update-alternatives', 'None', 'None', 'Util-linux includes a suite o=
f basic system administration utilities commonly found on most Linux system=
s.  Some of the more important utilities include disk partitioning, kernel =
message management, filesystem creation, and system login.', 'ErrHostNoDir:=
/pub/linux/utils/util-linux/v2.24/util-linux-2.24.1.tar.xz:v2.24:-:kernel.o=
rg/pub/linux/utils/util-linux/v2.24/util-linux-2.24.1.tar.xz', 'N/A', 'http=
://kernel.org/pub/linux/utils/util-linux/v2.24/util-linux-2.24.1.tar.xz', '=
Saul Wold <sgw@linux.intel.com>', 'None']
inserted (util-linux,2.24.1,N/A,GPLv2+ & LGPLv2.1+ & BSD,base,r0,None,,None=
,ErrHostNoDir:/pub/linux/utils/util-linux/v2.24/util-linux-2.24.1.tar.xz:v2=
=2E24:-:kernel.org/pub/linux/utils/util-linux/v2.24/util-linux-2.24.1.tar.x=
z,pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib ncurses vir=
tual/update-alternatives,Util-linux includes a suite of basic system admini=
stration utilities commonly found on most Linux systems.  Some of the more =
important utilities include disk partitioning, kernel message management, f=
ilesystem creation, and system login.,N/A,http://kernel.org/pub/linux/utils=
/util-linux/v2.24/util-linux-2.24.1.tar.xz,Saul Wold <sgw@linux.intel.com>)
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
nt.', 'MATCH', 'N/A', 'file://session', 'Valentin Popa <valentin.popa@intel=
=2Ecom>', 'None']
inserted (matchbox-session-sato,0.1,INVALID,GPLv2.0+,x11,r30,None,http://ww=
w.matchbox-project.org/,http://bugzilla.yoctoproject.org/,MATCH, virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gconf-=
native,Custom Matchbox session files for the Sato environment.,N/A,file://s=
ession,Valentin Popa <valentin.popa@intel.com>)
['mesa-demos', '8.1.0', 'N/A', 'MIT & PD', 'x11', 'http://mesa3d.org', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  virtual/libgl glew libdrm virtual/egl freetype=
 virtual/libgl virtual/libgles1 virtual/libgles2 virtual/libx11', 'https://=
bugs.freedesktop.org', 'None', 'This package includes the demonstration app=
lication, such as glxgears. These applications can be used for Mesa validat=
ion and benchmarking.', 'ErrHostNoDir:/pub/mesa/demos/8.1.0/:8.1.0:mesa-dem=
os-8.1.0.tar.bz2:ftp.freedesktop.org/pub/mesa/demos/8.1.0/mesa-demos-8.1.0.=
tar.bz2', 'N/A', 'ftp://ftp.freedesktop.org/pub/mesa/demos/8.1.0/mesa-demos=
-8.1.0.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (mesa-demos,8.1.0,N/A,MIT & PD,x11,r0,None,http://mesa3d.org,https=
://bugs.freedesktop.org,ErrHostNoDir:/pub/mesa/demos/8.1.0/:8.1.0:mesa-demo=
s-8.1.0.tar.bz2:ftp.freedesktop.org/pub/mesa/demos/8.1.0/mesa-demos-8.1.0.t=
ar.bz2,pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  virtual/libgl glew libdrm virtual/egl free=
type virtual/libgl virtual/libgles1 virtual/libgles2 virtual/libx11,This pa=
ckage includes the demonstration application, such as glxgears. These appli=
cations can be used for Mesa validation and benchmarking.,N/A,ftp://ftp.fre=
edesktop.org/pub/mesa/demos/8.1.0/mesa-demos-8.1.0.tar.bz2,Saul Wold <sgw@l=
inux.intel.com>)
['libsoup-2.4', '2.45.3', 'N/A', 'LGPLv2', 'x11/gnome/libs', 'http://www.gn=
ome.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 gnutls libxml2 sqlite3=
 intltool-native', 'https://bugzilla.gnome.org/', 'None', 'An HTTP library =
implementation in C.', 'ErrHostNoDir:/pub/GNOME/sources/libsoup/2.45/libsou=
p-2.45.3.tar.xz:2.45:-:ftp.gnome.org/pub/GNOME/sources/libsoup/2.45/libsoup=
-2.45.3.tar.xz', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/libsoup/2.4=
5/libsoup-2.45.3.tar.xz', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (libsoup-2.4,2.45.3,N/A,LGPLv2,x11/gnome/libs,r0,None,http://www.g=
nome.org/,https://bugzilla.gnome.org/,ErrHostNoDir:/pub/GNOME/sources/libso=
up/2.45/libsoup-2.45.3.tar.xz:2.45:-:ftp.gnome.org/pub/GNOME/sources/libsou=
p/2.45/libsoup-2.45.3.tar.xz,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 gnutls libx=
ml2 sqlite3 intltool-native,An HTTP library implementation in C.,N/A,http:/=
/ftp.gnome.org/pub/GNOME/sources/libsoup/2.45/libsoup-2.45.3.tar.xz,Valenti=
n Popa <valentin.popa@intel.com>)
['gdk-pixbuf', '2.30.3', 'N/A', 'LGPLv2', 'libs', 'http://www.gtk.org/', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 qemu=
-native jpeg libpng', 'https://bugzilla.gnome.org/', 'None', 'Image loading=
 library for GTK+.', 'ErrHostNoDir:/pub/GNOME/sources/gdk-pixbuf/2.30/gdk-p=
ixbuf-2.30.3.tar.xz:2.30:-:ftp.gnome.org/pub/GNOME/sources/gdk-pixbuf/2.30/=
gdk-pixbuf-2.30.3.tar.xz', '2.27.2', 'http://ftp.gnome.org/pub/GNOME/source=
s/gdk-pixbuf/2.30/gdk-pixbuf-2.30.3.tar.xz', 'Ross Burton <ross.burton@inte=
l.com>', '2.27.2 is unstable']
inserted (gdk-pixbuf,2.30.3,N/A,LGPLv2,libs,r0,None,http://www.gtk.org/,htt=
ps://bugzilla.gnome.org/,ErrHostNoDir:/pub/GNOME/sources/gdk-pixbuf/2.30/gd=
k-pixbuf-2.30.3.tar.xz:2.30:-:ftp.gnome.org/pub/GNOME/sources/gdk-pixbuf/2.=
30/gdk-pixbuf-2.30.3.tar.xz,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native virtual/gettext gettext-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  glib-2.0 qemu-native jpeg libpng,Image loading library for GTK+.,=
2.27.2,http://ftp.gnome.org/pub/GNOME/sources/gdk-pixbuf/2.30/gdk-pixbuf-2.=
30.3.tar.xz,Ross Burton <ross.burton@intel.com>)
['consolekit', '0.4.6', 'N/A', 'GPLv2+', 'base', 'http://www.freedesktop.or=
g/wiki/Software/ConsoleKit', 'r0', 'pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus=
 dbus-glib virtual/libx11', 'https://bugs.freedesktop.org/buglist.cgi?query=
_format=3Dspecific&product=3DConsoleKit', 'None', 'Framework for defining a=
nd tracking users, login sessions, and seats.', 'ErrHostNoDir:/software/Con=
soleKit/dist/:-:ConsoleKit-0.4.6.tar.xz:www.freedesktop.org/software/Consol=
eKit/dist/ConsoleKit-0.4.6.tar.xz', 'N/A', 'http://www.freedesktop.org/soft=
ware/ConsoleKit/dist/ConsoleKit-0.4.6.tar.xz', 'Saul Wold <sgw@linux.intel.=
com>', 'None']
inserted (consolekit,0.4.6,N/A,GPLv2+,base,r0,None,http://www.freedesktop.o=
rg/wiki/Software/ConsoleKit,https://bugs.freedesktop.org/buglist.cgi?query_=
format=3Dspecific&product=3DConsoleKit,ErrHostNoDir:/software/ConsoleKit/di=
st/:-:ConsoleKit-0.4.6.tar.xz:www.freedesktop.org/software/ConsoleKit/dist/=
ConsoleKit-0.4.6.tar.xz,pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus dbus-glib v=
irtual/libx11,Framework for defining and tracking users, login sessions, an=
d seats.,N/A,http://www.freedesktop.org/software/ConsoleKit/dist/ConsoleKit=
-0.4.6.tar.xz,Saul Wold <sgw@linux.intel.com>)
['xprop', '1.2.2', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros-native virtual/libx11  libxmu virtual=
/libx11', 'https://bugs.freedesktop.org', '1', 'The xprop utility is for di=
splaying window and font properties in an X server. One window or font is s=
elected using the command line arguments or possibly in the case of a windo=
w, by clicking on the desired window. A list of properties is then given, p=
ossibly with formatting information.', 'ErrHostNoDir:/releases/individual/a=
pp/:-:xprop-1.2.2.tar.bz2:xorg.freedesktop.org/releases/individual/app/xpro=
p-1.2.2.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/a=
pp/xprop-1.2.2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'No=
ne']
inserted (xprop,1.2.2,N/A,MIT-X,x11/apps,r0,1,http://www.x.org/,https://bug=
s.freedesktop.org,ErrHostNoDir:/releases/individual/app/:-:xprop-1.2.2.tar.=
bz2:xorg.freedesktop.org/releases/individual/app/xprop-1.2.2.tar.bz2,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  util-macros-native virtual/libx11  libxmu virtual/libx1=
1,The xprop utility is for displaying window and font properties in an X se=
rver. One window or font is selected using the command line arguments or po=
ssibly in the case of a window, by clicking on the desired window. A list o=
f properties is then given, possibly with formatting information.,N/A,http:=
//xorg.freedesktop.org/releases/individual/app/xprop-1.2.2.tar.bz2,Laurenti=
u Palcu <laurentiu.palcu@intel.com>)
['tiff', '4.0.3', 'N/A', 'BSD-2-Clause', 'base', 'http://www.remotesensing.=
org/libtiff/', 'r0', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc   jpeg xz zlib', 'None', 'None', 'Provides su=
pport for the Tag Image File Format (TIFF).', 'ErrHostNoDir:/pub/libtiff/:-=
:tiff-4.0.3.tar.gz:ftp.remotesensing.org/pub/libtiff/tiff-4.0.3.tar.gz', 'N=
/A', 'ftp://ftp.remotesensing.org/pub/libtiff/tiff-4.0.3.tar.gz', 'Saul Wol=
d <sgw@linux.intel.com>', 'None']
inserted (tiff,4.0.3,N/A,BSD-2-Clause,base,r0,None,http://www.remotesensing=
=2Eorg/libtiff/,None,ErrHostNoDir:/pub/libtiff/:-:tiff-4.0.3.tar.gz:ftp.rem=
otesensing.org/pub/libtiff/tiff-4.0.3.tar.gz,autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc   jpeg xz zlib,Provide=
s support for the Tag Image File Format (TIFF).,N/A,ftp://ftp.remotesensing=
=2Eorg/pub/libtiff/tiff-4.0.3.tar.gz,Saul Wold <sgw@linux.intel.com>)
['glew', '1.10.0', 'N/A', 'MIT', 'x11', 'http://glew.sourceforge.net/', 'r0=
', 'autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  virtual/libx11 virtual/libgl libglu libxext libxi libxmu', 'ht=
tp://sourceforge.net/tracker/?group_id=3D67586', 'None', 'The OpenGL Extens=
ion Wrangler Library (GLEW) is a cross-platform open-source C/C++ extension=
 loading library.', 'ErrHostNoDir:/project/glew/glew/1.10.0/:1.10.0:glew-1.=
10.0.tgz:downloads.sourceforge.net/project/glew/glew/1.10.0/glew-1.10.0.tgz=
', 'N/A', 'http://downloads.sourceforge.net/project/glew/glew/1.10.0/glew-1=
=2E10.0.tgz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (glew,1.10.0,N/A,MIT,x11,r0,None,http://glew.sourceforge.net/,http=
://sourceforge.net/tracker/?group_id=3D67586,ErrHostNoDir:/project/glew/gle=
w/1.10.0/:1.10.0:glew-1.10.0.tgz:downloads.sourceforge.net/project/glew/gle=
w/1.10.0/glew-1.10.0.tgz,autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  virtual/libx11 virtual/libgl libglu libxe=
xt libxi libxmu,The OpenGL Extension Wrangler Library (GLEW) is a cross-pla=
tform open-source C/C++ extension loading library.,N/A,http://downloads.sou=
rceforge.net/project/glew/glew/1.10.0/glew-1.10.0.tgz,Saul Wold <sgw@linux.=
intel.com>)
['pixman', '0.32.4', 'N/A', 'MIT & MIT-style & PD', 'x11/libs', 'http://www=
=2Ex.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  util-macros zlib libpng', 'http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Pixman provid=
es a library for manipulating pixel regions -- a set of Y-X banded rectangl=
es, image compositing using the Porter/Duff model and implicit mask generat=
ion for geometric primitives including trapezoids, triangles, and rectangle=
s.', 'ErrHostNoDir:/releases/individual/lib/:-:pixman-0.32.4.tar.bz2:xorg.f=
reedesktop.org/releases/individual/lib/pixman-0.32.4.tar.bz2', 'N/A', 'http=
://xorg.freedesktop.org/releases/individual/lib/pixman-0.32.4.tar.bz2', 'Ro=
ss Burton <ross.burton@intel.com>', 'None']
inserted (pixman,0.32.4,N/A,MIT & MIT-style & PD,x11/libs,r0,1,http://www.x=
=2Eorg,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoD=
ir:/releases/individual/lib/:-:pixman-0.32.4.tar.bz2:xorg.freedesktop.org/r=
eleases/individual/lib/pixman-0.32.4.tar.bz2,pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util=
-macros zlib libpng,Pixman provides a library for manipulating pixel region=
s -- a set of Y-X banded rectangles, image compositing using the Porter/Duf=
f model and implicit mask generation for geometric primitives including tra=
pezoids, triangles, and rectangles.,N/A,http://xorg.freedesktop.org/release=
s/individual/lib/pixman-0.32.4.tar.bz2,Ross Burton <ross.burton@intel.com>)
['flex', '2.5.38', 'N/A', 'BSD', 'devel', 'http://sourceforge.net/projects/=
flex/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', '=
Flex is a fast lexical analyser generator.  Flex is a tool for generating p=
rograms that recognize lexical patterns in text.', 'ErrHostNoDir:/flex/:-:f=
lex-2.5.38.tar.bz2:downloads.sourceforge.net/flex/flex-2.5.38.tar.bz2', 'N/=
A', 'http://downloads.sourceforge.net/flex/flex-2.5.38.tar.bz2', 'Chong Lu =
<Chong.Lu@windriver.com>', 'None']
inserted (flex,2.5.38,N/A,BSD,devel,r0,None,http://sourceforge.net/projects=
/flex/,None,ErrHostNoDir:/flex/:-:flex-2.5.38.tar.bz2:downloads.sourceforge=
=2Enet/flex/flex-2.5.38.tar.bz2,autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Fl=
ex is a fast lexical analyser generator.  Flex is a tool for generating pro=
grams that recognize lexical patterns in text.,N/A,http://downloads.sourcef=
orge.net/flex/flex-2.5.38.tar.bz2,Chong Lu <Chong.Lu@windriver.com>)
['libsndfile1', '1.0.25', 'N/A', 'LGPLv2.1', 'libs/multimedia', 'http://www=
=2Emega-nerd.com/libsndfile', 'r2', 'pkgconfig-native autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  sqlite3 alsa=
-lib', 'None', 'None', 'Audio format Conversion library.', 'ErrHostNoDir:/l=
ibsndfile/files/:-:libsndfile-1.0.25.tar.gz:www.mega-nerd.com/libsndfile/fi=
les/libsndfile-1.0.25.tar.gz', 'N/A', 'http://www.mega-nerd.com/libsndfile/=
files/libsndfile-1.0.25.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>=
', 'None']
inserted (libsndfile1,1.0.25,N/A,LGPLv2.1,libs/multimedia,r2,None,http://ww=
w.mega-nerd.com/libsndfile,None,ErrHostNoDir:/libsndfile/files/:-:libsndfil=
e-1.0.25.tar.gz:www.mega-nerd.com/libsndfile/files/libsndfile-1.0.25.tar.gz=
,pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  sqlite3 alsa-lib,Audio format Conversion library=
=2E,N/A,http://www.mega-nerd.com/libsndfile/files/libsndfile-1.0.25.tar.gz,=
Cristian Iorga <cristian.iorga@intel.com>)
['xf86-input-keyboard', '1.8.0', 'N/A', 'MIT-X', 'x11/drivers', 'http://www=
=2Ex.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randrpro=
to util-macros inputproto kbproto ', 'https://bugs.freedesktop.org', '2', "=
keyboard is an Xorg input driver for keyboards. The driver supports the sta=
ndard OS-provided keyboard interface.  The driver functions as a keyboard i=
nput device, and may be used as the X server's core keyboard.", 'ErrHostNoD=
ir:/releases/individual/driver/:-:xf86-input-keyboard-1.8.0.tar.bz2:xorg.fr=
eedesktop.org/releases/individual/driver/xf86-input-keyboard-1.8.0.tar.bz2'=
, 'N/A', 'http://xorg.freedesktop.org/releases/individual/driver/xf86-input=
-keyboard-1.8.0.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'N=
one']
inserted (xf86-input-keyboard,1.8.0,N/A,MIT-X,x11/drivers,r0,2,http://www.x=
=2Eorg,https://bugs.freedesktop.org,ErrHostNoDir:/releases/individual/drive=
r/:-:xf86-input-keyboard-1.8.0.tar.bz2:xorg.freedesktop.org/releases/indivi=
dual/driver/xf86-input-keyboard-1.8.0.tar.bz2,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  vir=
tual/xserver xproto randrproto util-macros inputproto kbproto ,keyboard is =
an Xorg input driver for keyboards. The driver supports the standard OS-pro=
vided keyboard interface.  The driver functions as a keyboard input device,=
 and may be used as the X server's core keyboard.,N/A,http://xorg.freedeskt=
op.org/releases/individual/driver/xf86-input-keyboard-1.8.0.tar.bz2,Laurent=
iu Palcu <laurentiu.palcu@intel.com>)
['python', '2.7.3', 'N/A', 'PSFv2', 'devel/python', 'http://www.python.org'=
, 'r0.3', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  python-native bzip2 db gdbm openssl readline sqlite3 zl=
ib  python-native ', 'None', 'None', 'The Python Programming Language.', 'E=
rrHostNoDir:/ftp/python/2.7.3/Python-2.7.3.tar.bz2:2.7.3:-:www.python.org/f=
tp/python/2.7.3/Python-2.7.3.tar.bz2', 'N/A', 'http://www.python.org/ftp/py=
thon/2.7.3/Python-2.7.3.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.c=
om>', 'None']
inserted (python,2.7.3,N/A,PSFv2,devel/python,r0.3,None,http://www.python.o=
rg,None,ErrHostNoDir:/ftp/python/2.7.3/Python-2.7.3.tar.bz2:2.7.3:-:www.pyt=
hon.org/ftp/python/2.7.3/Python-2.7.3.tar.bz2,autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  python-native bzip2 =
db gdbm openssl readline sqlite3 zlib  python-native ,The Python Programmin=
g Language.,N/A,http://www.python.org/ftp/python/2.7.3/Python-2.7.3.tar.bz2=
,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['libidn', '1.28', 'N/A', '(LGPLv2.1+ | LGPLv3) & GPLv3+', 'libs', 'http://=
www.gnu.org/software/libidn/', 'r0', 'autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native pkgconfig-native virtual/gettext =
gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ', 'None', 'None', 'Implementation of the Stringprep, P=
unycode and IDNA specifications defined by the IETF Internationalized Domai=
n Names (IDN) working group.', 'ErrHostNoDir:/gnu/libidn/:-:libidn-1.28.tar=
=2Egz:ftp.gnu.org/gnu/libidn/libidn-1.28.tar.gz', 'N/A', 'ftp://ftp.gnu.org=
/gnu/libidn/libidn-1.28.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libidn,1.28,N/A,(LGPLv2.1+ | LGPLv3) & GPLv3+,libs,r0,None,http:/=
/www.gnu.org/software/libidn/,None,ErrHostNoDir:/gnu/libidn/:-:libidn-1.28.=
tar.gz:ftp.gnu.org/gnu/libidn/libidn-1.28.tar.gz,autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native pkgconfig-native virtu=
al/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ,Implementation of the Stringprep, Punycode =
and IDNA specifications defined by the IETF Internationalized Domain Names =
(IDN) working group.,N/A,ftp://ftp.gnu.org/gnu/libidn/libidn-1.28.tar.gz,Sa=
ul Wold <sgw@linux.intel.com>)
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
['damageproto', '1.2.1', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org'=
, 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.=
org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire pro=
tocol for the DAMAGE extension.  The DAMAGE extension allows applications t=
o receive information about changes made to pixel contents of windows and p=
ixmaps.', 'ErrHostNoDir:/releases/individual/proto/:-:damageproto-1.2.1.tar=
=2Ebz2:xorg.freedesktop.org/releases/individual/proto/damageproto-1.2.1.tar=
=2Ebz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/dama=
geproto-1.2.1.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (damageproto,1.2.1,N/A,MIT-style,x11/libs,r1,1,http://www.x.org,ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/relea=
ses/individual/proto/:-:damageproto-1.2.1.tar.bz2:xorg.freedesktop.org/rele=
ases/individual/proto/damageproto-1.2.1.tar.bz2,pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  u=
til-macros,This package provides the wire protocol for the DAMAGE extension=
=2E  The DAMAGE extension allows applications to receive information about =
changes made to pixel contents of windows and pixmaps.,N/A,http://xorg.free=
desktop.org/releases/individual/proto/damageproto-1.2.1.tar.bz2,Ross Burton=
 <ross.burton@intel.com>)
['gnome-mime-data', '2.18.0', 'N/A', 'GPLv2 & GPLv2+', 'base', 'http://www.=
gnome.org/', 'r4', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc   gnome-common-native shared-m=
ime-info-native shared-mime-info shared-mime-info intltool-native', 'https:=
//bugzilla.gnome.org/', 'None', 'Base MIME and Application database for GNO=
ME.', 'ErrHostNoDir:/pub/GNOME/sources/gnome-mime-data/2.18/gnome-mime-data=
-2.18.0.tar.bz2:2.18:-:ftp.gnome.org/pub/GNOME/sources/gnome-mime-data/2.18=
/gnome-mime-data-2.18.0.tar.bz2', 'N/A', 'http://ftp.gnome.org/pub/GNOME/so=
urces/gnome-mime-data/2.18/gnome-mime-data-2.18.0.tar.bz2;name=3Darchive', =
'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (gnome-mime-data,2.18.0,N/A,GPLv2 & GPLv2+,base,r4,None,http://www=
=2Egnome.org/,https://bugzilla.gnome.org/,ErrHostNoDir:/pub/GNOME/sources/g=
nome-mime-data/2.18/gnome-mime-data-2.18.0.tar.bz2:2.18:-:ftp.gnome.org/pub=
/GNOME/sources/gnome-mime-data/2.18/gnome-mime-data-2.18.0.tar.bz2,pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc   gnome-common-native shared-mime-info-native shared-mime-=
info shared-mime-info intltool-native,Base MIME and Application database fo=
r GNOME.,N/A,http://ftp.gnome.org/pub/GNOME/sources/gnome-mime-data/2.18/gn=
ome-mime-data-2.18.0.tar.bz2;name=3Darchive,Valentin Popa <valentin.popa@in=
tel.com>)
['lzo', '2.06', 'N/A', 'GPLv2+', 'libs', 'http://www.oberhumer.com/opensour=
ce/lzo/', 'r1', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  ', 'None', 'None', 'Lossless data compression lib=
rary.', 'ErrHostNoDir:/opensource/lzo/download/:-:lzo-2.06.tar.gz:www.oberh=
umer.com/opensource/lzo/download/lzo-2.06.tar.gz', 'N/A', 'http://www.oberh=
umer.com/opensource/lzo/download/lzo-2.06.tar.gz', 'Cristiana Voicu <cristi=
ana.voicu@intel.com>', 'None']
inserted (lzo,2.06,N/A,GPLv2+,libs,r1,None,http://www.oberhumer.com/opensou=
rce/lzo/,None,ErrHostNoDir:/opensource/lzo/download/:-:lzo-2.06.tar.gz:www.=
oberhumer.com/opensource/lzo/download/lzo-2.06.tar.gz,autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Lossless da=
ta compression library.,N/A,http://www.oberhumer.com/opensource/lzo/downloa=
d/lzo-2.06.tar.gz,Cristiana Voicu <cristiana.voicu@intel.com>)
['gcc-cross', '4.8.2', 'N/A', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel'=
, 'http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automake-nativ=
e libtool-native gnu-config-native   virtual/i586-poky-linux-binutils virtu=
al/i586-poky-linux-libc-for-gcc linux-libc-headers mpfr-native gmp-native l=
ibmpc-native zlib-native', 'None', 'None', 'GNU cc and gcc C compilers.', '=
ErrHostNoDir:/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2:gcc-4.8.2:-:ftp.gnu.org/g=
nu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-=
4.8.2/gcc-4.8.2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'N=
one']
inserted (gcc-cross,4.8.2,N/A,GPL-3.0-with-GCC-exception & GPLv3,devel,r0,N=
one,http://www.gnu.org/software/gcc/,None,ErrHostNoDir:/gnu/gcc/gcc-4.8.2/g=
cc-4.8.2.tar.bz2:gcc-4.8.2:-:ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz=
2,autoconf-native automake-native libtool-native gnu-config-native   virtua=
l/i586-poky-linux-binutils virtual/i586-poky-linux-libc-for-gcc linux-libc-=
headers mpfr-native gmp-native libmpc-native zlib-native,GNU cc and gcc C c=
ompilers.,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2,Laurent=
iu Palcu <laurentiu.palcu@intel.com>)
['ppp-dialin', '0.1', 'INVALID', 'MIT', 'console/network', '', 'r8', ' ppp =
base-passwd shadow-native shadow-sysroot shadow', 'None', 'None', 'Enables =
PPP dial-in through a serial connection.', 'MATCH', 'check', 'file://host-p=
eer', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (ppp-dialin,0.1,INVALID,MIT,console/network,r8,None,,None,MATCH, p=
pp base-passwd shadow-native shadow-sysroot shadow,Enables PPP dial-in thro=
ugh a serial connection.,check,file://host-peer,Hongxu Jia <hongxu.jia@wind=
river.com>)
['pango', '1.36.2', 'N/A', 'LGPLv2.0+', 'libs', 'http://www.pango.org/', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  glib-2.0 fontconfig freetype zlib virtual/li=
biconv cairo harfbuzz qemu-native gnome-common-native gtk-doc-stub-native v=
irtual/libx11 libxft', 'http://bugzilla.gnome.org', 'None', 'Pango is a lib=
rary for laying out and rendering of text, with an emphasis on internationa=
lization. Pango can be used anywhere that text layout is needed, though mos=
t of the work on Pango so far has been done in the context of the GTK+ widg=
et toolkit. Pango forms the core of text and font handling for GTK+-2.x.', =
'ErrHostNoDir:/pub/GNOME/sources/pango/1.36/pango-1.36.2.tar.xz:1.36:-:ftp.=
gnome.org/pub/GNOME/sources/pango/1.36/pango-1.36.2.tar.xz', 'N/A', 'http:/=
/ftp.gnome.org/pub/GNOME/sources/pango/1.36/pango-1.36.2.tar.xz;name=3Darch=
ive', 'Cristiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (pango,1.36.2,N/A,LGPLv2.0+,libs,r0,None,http://www.pango.org/,htt=
p://bugzilla.gnome.org,ErrHostNoDir:/pub/GNOME/sources/pango/1.36/pango-1.3=
6.2.tar.xz:1.36:-:ftp.gnome.org/pub/GNOME/sources/pango/1.36/pango-1.36.2.t=
ar.xz,pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  glib-2.0 fontconfig freetype zlib virtual/l=
ibiconv cairo harfbuzz qemu-native gnome-common-native gtk-doc-stub-native =
virtual/libx11 libxft,Pango is a library for laying out and rendering of te=
xt, with an emphasis on internationalization. Pango can be used anywhere th=
at text layout is needed, though most of the work on Pango so far has been =
done in the context of the GTK+ widget toolkit. Pango forms the core of tex=
t and font handling for GTK+-2.x.,N/A,http://ftp.gnome.org/pub/GNOME/source=
s/pango/1.36/pango-1.36.2.tar.xz;name=3Darchive,Cristiana Voicu <cristiana.=
voicu@intel.com>)
['qt4-x11-free', '4.8.5', 'N/A', 'LGPLv2.1 | GPLv3', 'x11/libs', 'http://qt=
-project.org/', 'r0', 'qt4-tools-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc   qt4-tools-native freetype jpe=
g libpng zlib dbus openssl glib-2.0 gstreamer gst-plugins-base sqlite3 tiff=
 icu pulseaudio virtual/libgl virtual/libx11 fontconfig libxft libxext libx=
render libxrandr libxcursor', 'None', 'None', 'Qt is a versatile cross-plat=
form application framework -- this is the X11 version.', 'ErrHostNoDir:/off=
icial_releases/qt/4.8/4.8.5/qt-everywhere-opensource-src-4.8.5.tar.gz:4.8:-=
:download.qt-project.org/official_releases/qt/4.8/4.8.5/qt-everywhere-opens=
ource-src-4.8.5.tar.gz', 'N/A', 'http://download.qt-project.org/official_re=
leases/qt/4.8/4.8.5/qt-everywhere-opensource-src-4.8.5.tar.gz', 'Paul Eggle=
ton <paul.eggleton@linux.intel.com>', 'None']
inserted (qt4-x11-free,4.8.5,N/A,LGPLv2.1 | GPLv3,x11/libs,r0,None,http://q=
t-project.org/,None,ErrHostNoDir:/official_releases/qt/4.8/4.8.5/qt-everywh=
ere-opensource-src-4.8.5.tar.gz:4.8:-:download.qt-project.org/official_rele=
ases/qt/4.8/4.8.5/qt-everywhere-opensource-src-4.8.5.tar.gz,qt4-tools-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   qt4-tools-native freetype jpeg libpng zlib dbus openssl glib-2.0 gs=
treamer gst-plugins-base sqlite3 tiff icu pulseaudio virtual/libgl virtual/=
libx11 fontconfig libxft libxext libxrender libxrandr libxcursor,Qt is a ve=
rsatile cross-platform application framework -- this is the X11 version.,N/=
A,http://download.qt-project.org/official_releases/qt/4.8/4.8.5/qt-everywhe=
re-opensource-src-4.8.5.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com=
>)
['aspell', '0.60.6.1', 'N/A', 'LGPLv2 | LGPLv2.1', 'console/utils', '', 'r1=
', 'autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'GNU Aspell =
spell-checker.', 'ErrHostNoDir:/gnu/aspell/:-:aspell-0.60.6.1.tar.gz:ftp.gn=
u.org/gnu/aspell/aspell-0.60.6.1.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/asp=
ell/aspell-0.60.6.1.tar.gz', 'Cristiana Voicu <cristiana.voicu@intel.com>',=
 'None']
inserted (aspell,0.60.6.1,N/A,LGPLv2 | LGPLv2.1,console/utils,r1,None,,None=
,ErrHostNoDir:/gnu/aspell/:-:aspell-0.60.6.1.tar.gz:ftp.gnu.org/gnu/aspell/=
aspell-0.60.6.1.tar.gz,autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,GNU Aspell =
spell-checker.,N/A,ftp://ftp.gnu.org/gnu/aspell/aspell-0.60.6.1.tar.gz,Cris=
tiana Voicu <cristiana.voicu@intel.com>)
['nfs-export-root', '1.0', 'INVALID', 'MIT', 'base', '', 'r1', ' virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'No=
ne', 'None', 'Enables NFS access from any host to the entire filesystem (fo=
r development purposes).', 'MATCH', 'N/A', 'file://exports', 'Saul Wold <sg=
w@linux.intel.com>', 'None']
inserted (nfs-export-root,1.0,INVALID,MIT,base,r1,None,,None,MATCH, virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,En=
ables NFS access from any host to the entire filesystem (for development pu=
rposes).,N/A,file://exports,Saul Wold <sgw@linux.intel.com>)
['nspr', '4.10.3', 'N/A', 'GPL-2.0 | MPL-2.0 | LGPL-2.1', 'libs/network', '=
http://www.mozilla.org/projects/nspr/', 'r0', 'autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', =
'Netscape Portable Runtime Library.', 'ErrHostNoDir:/pub/mozilla.org/nspr/r=
eleases/4.10.3/src/:v4.10.3:nspr-4.10.3.tar.gz:ftp.mozilla.org/pub/mozilla.=
org/nspr/releases/v4.10.3/src/nspr-4.10.3.tar.gz', 'N/A', 'ftp://ftp.mozill=
a.org/pub/mozilla.org/nspr/releases/v4.10.3/src/nspr-4.10.3.tar.gz', 'Saul =
Wold <sgw@linux.intel.com>', 'None']
inserted (nspr,4.10.3,N/A,GPL-2.0 | MPL-2.0 | LGPL-2.1,libs/network,r0,None=
,http://www.mozilla.org/projects/nspr/,None,ErrHostNoDir:/pub/mozilla.org/n=
spr/releases/4.10.3/src/:v4.10.3:nspr-4.10.3.tar.gz:ftp.mozilla.org/pub/moz=
illa.org/nspr/releases/v4.10.3/src/nspr-4.10.3.tar.gz,autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Netscape Po=
rtable Runtime Library.,N/A,ftp://ftp.mozilla.org/pub/mozilla.org/nspr/rele=
ases/v4.10.3/src/nspr-4.10.3.tar.gz,Saul Wold <sgw@linux.intel.com>)
['dbus', '1.6.18', 'N/A', 'AFL-2 | GPLv2+', 'base', 'http://dbus.freedeskto=
p.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  exp=
at virtual/libintl base-passwd shadow-native shadow-sysroot shadow update-r=
c.d-native  virtual/libx11 libsm', 'None', 'None', 'D-Bus is a message bus =
system, a simple way for applications to talk to one another. In addition t=
o interprocess communication, D-Bus helps coordinate process lifecycle; it =
makes it simple and reliable to code a \\"single instance\\" application or=
 daemon, and to launch applications and daemons on demand when their servic=
es are needed.', 'ErrHostNoDir:/releases/dbus/:-:dbus-1.6.18.tar.gz:dbus.fr=
eedesktop.org/releases/dbus/dbus-1.6.18.tar.gz', 'N/A', 'http://dbus.freede=
sktop.org/releases/dbus/dbus-1.6.18.tar.gz', 'Chong Lu <Chong.Lu@windriver.=
com>', 'D-BUS 1.7.x is the development version, not stable.']
inserted (dbus,1.6.18,N/A,AFL-2 | GPLv2+,base,r0,None,http://dbus.freedeskt=
op.org,None,ErrHostNoDir:/releases/dbus/:-:dbus-1.6.18.tar.gz:dbus.freedesk=
top.org/releases/dbus/dbus-1.6.18.tar.gz,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native virtual/gette=
xt gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  expat virtual/libintl base-passwd shadow-native shad=
ow-sysroot shadow update-rc.d-native  virtual/libx11 libsm,D-Bus is a messa=
ge bus system, a simple way for applications to talk to one another. In add=
ition to interprocess communication, D-Bus helps coordinate process lifecyc=
le; it makes it simple and reliable to code a \"single instance\" applicati=
on or daemon, and to launch applications and daemons on demand when their s=
ervices are needed.,N/A,http://dbus.freedesktop.org/releases/dbus/dbus-1.6.=
18.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['pointercal-xinput', '0.0', 'INVALID', 'MIT', 'base', '', 'r7', ' virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', '=
None', 'None', 'Touchscreen calibration data from xinput-calibrator.', 'MAT=
CH', 'N/A', 'file://pointercal.xinput', 'None', 'None']
inserted (pointercal-xinput,0.0,INVALID,MIT,base,r7,None,,None,MATCH, virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,=
Touchscreen calibration data from xinput-calibrator.,N/A,file://pointercal.=
xinput,None)
['docbook-utils-native', '0.6.14', 'N/A', 'GPLv2', 'console/utils', 'http:/=
/sources.redhat.com/docbook-tools/', 'r3', 'autoconf-native automake-native=
 libtool-native gnu-config-native  openjade-native sgmlspl-native docbook-d=
sssl-stylesheets-native docbook-sgml-dtd-3.1-native', 'None', 'None', 'A co=
llection of all the free software tools you need to work on and format DocB=
ook documents.', 'ErrHostNoDir:/pub/docbook-tools/new-trials/SOURCES/:-:doc=
book-utils-0.6.14.tar.gz:sources.redhat.com/pub/docbook-tools/new-trials/SO=
URCES/docbook-utils-0.6.14.tar.gz', 'N/A', 'ftp://sources.redhat.com/pub/do=
cbook-tools/new-trials/SOURCES/docbook-utils-0.6.14.tar.gz', 'Paul Eggleton=
 <paul.eggleton@linux.intel.com>', 'None']
inserted (docbook-utils-native,0.6.14,N/A,GPLv2,console/utils,r3,None,http:=
//sources.redhat.com/docbook-tools/,None,ErrHostNoDir:/pub/docbook-tools/ne=
w-trials/SOURCES/:-:docbook-utils-0.6.14.tar.gz:sources.redhat.com/pub/docb=
ook-tools/new-trials/SOURCES/docbook-utils-0.6.14.tar.gz,autoconf-native au=
tomake-native libtool-native gnu-config-native  openjade-native sgmlspl-nat=
ive docbook-dsssl-stylesheets-native docbook-sgml-dtd-3.1-native,A collecti=
on of all the free software tools you need to work on and format DocBook do=
cuments.,N/A,ftp://sources.redhat.com/pub/docbook-tools/new-trials/SOURCES/=
docbook-utils-0.6.14.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['psmisc', '22.21', 'N/A', 'GPLv2', 'base', '', 'r0', 'autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native virtual/gettext =
gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ncurses virtual/libintl virtual/update-alternatives', '=
None', 'None', 'The psmisc package contains utilities for managing processe=
s on your system: pstree, killall and fuser.  The pstree command displays a=
 tree structure of all of the running processes on your system.  The killal=
l command sends a specified signal (SIGTERM if nothing is specified) to pro=
cesses identified by name.  The fuser command identifies the PIDs of proces=
ses that are using specified files or filesystems.', 'ErrHostNoDir:/psmisc/=
:-:psmisc-22.21.tar.gz:downloads.sourceforge.net/psmisc/psmisc-22.21.tar.gz=
', 'N/A', 'http://downloads.sourceforge.net/psmisc/psmisc-22.21.tar.gz', 'S=
aul Wold <sgw@linux.intel.com>', 'None']
inserted (psmisc,22.21,N/A,GPLv2,base,r0,None,,None,ErrHostNoDir:/psmisc/:-=
:psmisc-22.21.tar.gz:downloads.sourceforge.net/psmisc/psmisc-22.21.tar.gz,a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  ncurses virtual/libintl virtual/upda=
te-alternatives,The psmisc package contains utilities for managing processe=
s on your system: pstree, killall and fuser.  The pstree command displays a=
 tree structure of all of the running processes on your system.  The killal=
l command sends a specified signal (SIGTERM if nothing is specified) to pro=
cesses identified by name.  The fuser command identifies the PIDs of proces=
ses that are using specified files or filesystems.,N/A,http://downloads.sou=
rceforge.net/psmisc/psmisc-22.21.tar.gz,Saul Wold <sgw@linux.intel.com>)
['python-gitdb', '0.5.4', 'N/A', 'BSD-3-Clause', 'devel/python', 'http://gi=
thub.com/gitpython-developers/gitdb', 'r0', ' virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  python-async python-smmap=
 python-native python  python-native ', 'None', 'None', 'A pure-Python git =
object database.', 'ErrHostNoDir:/packages/source/g/gitdb/:-:gitdb-0.5.4.ta=
r.gz:pypi.python.org/packages/source/g/gitdb/gitdb-0.5.4.tar.gz', 'N/A', 'h=
ttps://pypi.python.org/packages/source/g/gitdb/gitdb-0.5.4.tar.gz', 'None',=
 'None']
inserted (python-gitdb,0.5.4,N/A,BSD-3-Clause,devel/python,r0,None,http://g=
ithub.com/gitpython-developers/gitdb,None,ErrHostNoDir:/packages/source/g/g=
itdb/:-:gitdb-0.5.4.tar.gz:pypi.python.org/packages/source/g/gitdb/gitdb-0.=
5.4.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  python-async python-smmap python-native python  python-nati=
ve ,A pure-Python git object database.,N/A,https://pypi.python.org/packages=
/source/g/gitdb/gitdb-0.5.4.tar.gz,None)
['alsa-utils-alsaconf', '1.0.27.2', 'N/A', 'GPLv2+', 'console/utils', 'http=
://www.alsa-project.org', 'r0', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  al=
sa-lib ncurses libsamplerate0 udev udev', 'https://bugtrack.alsa-project.or=
g/alsa-bug/login_page.php', 'None', 'Shell script that creates ALSA configu=
ration files.', 'ErrHostNoDir:/pub/utils/:-:alsa-utils-1.0.27.2.tar.bz2:ftp=
=2Ealsa-project.org/pub/utils/alsa-utils-1.0.27.2.tar.bz2', 'N/A', 'ftp://f=
tp.alsa-project.org/pub/utils/alsa-utils-1.0.27.2.tar.bz2', 'Cristian Iorga=
 <cristian.iorga@intel.com>', 'None']
inserted (alsa-utils-alsaconf,1.0.27.2,N/A,GPLv2+,console/utils,r0,None,htt=
p://www.alsa-project.org,https://bugtrack.alsa-project.org/alsa-bug/login_p=
age.php,ErrHostNoDir:/pub/utils/:-:alsa-utils-1.0.27.2.tar.bz2:ftp.alsa-pro=
ject.org/pub/utils/alsa-utils-1.0.27.2.tar.bz2,autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native virtual/gettext gettext-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  alsa-lib ncurses libsamplerate0 udev udev,Shell script that cre=
ates ALSA configuration files.,N/A,ftp://ftp.alsa-project.org/pub/utils/als=
a-utils-1.0.27.2.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['opkg', '0.2.1', 'N/A', 'GPLv2+', 'base', 'http://code.google.com/p/opkg/'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ', 'http://code.google.com/p/opkg/issues=
/list', '1', 'Open Package Manager.', 'ErrHostNoDir:/releases/opkg/:-:opkg-=
0.2.1.tar.gz:downloads.yoctoproject.org/releases/opkg/opkg-0.2.1.tar.gz', '=
0.1.8', 'http://downloads.yoctoproject.org/releases/opkg/opkg-0.2.1.tar.gz'=
, 'Cristiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (opkg,0.2.1,N/A,GPLv2+,base,r0,1,http://code.google.com/p/opkg/,ht=
tp://code.google.com/p/opkg/issues/list,ErrHostNoDir:/releases/opkg/:-:opkg=
-0.2.1.tar.gz:downloads.yoctoproject.org/releases/opkg/opkg-0.2.1.tar.gz,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ,Open Package Manager.,0.1.8,http://downloads.yocto=
project.org/releases/opkg/opkg-0.2.1.tar.gz,Cristiana Voicu <cristiana.voic=
u@intel.com>)
['libsm', '1.2.2', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros libice xproto xtrans e2fsprogs', '=
https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Sessi=
on Management Library (SMlib) is a low-level \\"C\\" language interface to =
XSMP.  The purpose of the X Session Management Protocol (XSMP) is to provid=
e a uniform mechanism for users to save and restore their sessions.  A sess=
ion is a group of clients, each of which has a particular state.', 'ErrHost=
NoDir:/releases/individual/lib/:-:libSM-1.2.2.tar.bz2:xorg.freedesktop.org/=
releases/individual/lib/libSM-1.2.2.tar.bz2', 'N/A', 'http://xorg.freedeskt=
op.org/releases/individual/lib/libSM-1.2.2.tar.bz2', 'Ross Burton <ross.bur=
ton@intel.com>', 'None']
inserted (libsm,1.2.2,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/in=
dividual/lib/:-:libSM-1.2.2.tar.bz2:xorg.freedesktop.org/releases/individua=
l/lib/libSM-1.2.2.tar.bz2,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros libice xpro=
to xtrans e2fsprogs,The Session Management Library (SMlib) is a low-level \=
"C\" language interface to XSMP.  The purpose of the X Session Management P=
rotocol (XSMP) is to provide a uniform mechanism for users to save and rest=
ore their sessions.  A session is a group of clients, each of which has a p=
articular state.,N/A,http://xorg.freedesktop.org/releases/individual/lib/li=
bSM-1.2.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['ttf-bitstream-vera', '1.10', 'N/A', 'BitstreamVera', 'x11/fonts', '', 'r7=
', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc   qemu-native', 'None', 'None', 'The Bitstream Vera fonts include f=
our monospace and sans faces (normal, oblique, bold, bold oblique) and two =
serif faces (normal and bold).  In addition Fontconfig/Xft2 can artificiall=
y oblique the serif faces for you: this loses hinting and distorts the face=
s slightly, but is visibly different than normal and bold, and reasonably p=
leasing.', 'ErrHostNoDir:/pub/GNOME/sources/ttf-bitstream-vera/1.10/ttf-bit=
stream-vera-1.10.tar.bz2:1.10:-:ftp.gnome.org/pub/GNOME/sources/ttf-bitstre=
am-vera/1.10/ttf-bitstream-vera-1.10.tar.bz2', 'N/A', 'http://ftp.gnome.org=
/pub/GNOME/sources/ttf-bitstream-vera/1.10/ttf-bitstream-vera-1.10.tar.bz2'=
, 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (ttf-bitstream-vera,1.10,N/A,BitstreamVera,x11/fonts,r7,None,,None=
,ErrHostNoDir:/pub/GNOME/sources/ttf-bitstream-vera/1.10/ttf-bitstream-vera=
-1.10.tar.bz2:1.10:-:ftp.gnome.org/pub/GNOME/sources/ttf-bitstream-vera/1.1=
0/ttf-bitstream-vera-1.10.tar.bz2, virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc   qemu-native,The Bitstream Vera font=
s include four monospace and sans faces (normal, oblique, bold, bold obliqu=
e) and two serif faces (normal and bold).  In addition Fontconfig/Xft2 can =
artificially oblique the serif faces for you: this loses hinting and distor=
ts the faces slightly, but is visibly different than normal and bold, and r=
easonably pleasing.,N/A,http://ftp.gnome.org/pub/GNOME/sources/ttf-bitstrea=
m-vera/1.10/ttf-bitstream-vera-1.10.tar.bz2,Valentin Popa <valentin.popa@in=
tel.com>)
['augeas', '1.2.0', 'N/A', 'LGPLv2.1+', 'base', 'http://augeas.net/', 'r0',=
 'autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  readline libxml2', 'https://fedorahosted.org/augeas/report/1', '=
None', 'Augeas configuration API.', 'ErrHostNoDir:/:-:augeas-1.2.0.tar.gz:d=
ownload.augeas.net/augeas-1.2.0.tar.gz', 'N/A', 'http://download.augeas.net=
/augeas-1.2.0.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'No=
ne']
inserted (augeas,1.2.0,N/A,LGPLv2.1+,base,r0,None,http://augeas.net/,https:=
//fedorahosted.org/augeas/report/1,ErrHostNoDir:/:-:augeas-1.2.0.tar.gz:dow=
nload.augeas.net/augeas-1.2.0.tar.gz,autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  readline libxml2,Augeas confi=
guration API.,N/A,http://download.augeas.net/augeas-1.2.0.tar.gz,Paul Eggle=
ton <paul.eggleton@linux.intel.com>)
['ed', '1.9', 'N/A', 'GPLv3+', 'base', 'http://www.gnu.org/software/ed/', '=
r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  ', 'None', 'None', 'Line-oriented text editor.', 'ErrHostNoDir:/=
gnu/ed/:-:ed-1.9.tar.gz:ftp.gnu.org/gnu/ed/ed-1.9.tar.gz', 'N/A', 'ftp://ft=
p.gnu.org/gnu/ed/ed-1.9.tar.gz', 'Cristiana Voicu <cristiana.voicu@intel.co=
m>', 'None']
inserted (ed,1.9,N/A,GPLv3+,base,r0,None,http://www.gnu.org/software/ed/,No=
ne,ErrHostNoDir:/gnu/ed/:-:ed-1.9.tar.gz:ftp.gnu.org/gnu/ed/ed-1.9.tar.gz, =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  ,Line-oriented text editor.,N/A,ftp://ftp.gnu.org/gnu/ed/ed-1.9.tar.gz,=
Cristiana Voicu <cristiana.voicu@intel.com>)
['x11perf', '1.5.4', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxmu libx=
render libxft libxext fontconfig', 'https://bugs.freedesktop.org', '1', 'Th=
e x11perf program runs one or more performance tests and reports how fast a=
n X server can execute the tests.', 'ErrHostNoDir:/releases/individual/app/=
:-:x11perf-1.5.4.tar.bz2:xorg.freedesktop.org/releases/individual/app/x11pe=
rf-1.5.4.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/=
app/x11perf-1.5.4.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', =
'None']
inserted (x11perf,1.5.4,N/A,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https:/=
/bugs.freedesktop.org,ErrHostNoDir:/releases/individual/app/:-:x11perf-1.5.=
4.tar.bz2:xorg.freedesktop.org/releases/individual/app/x11perf-1.5.4.tar.bz=
2,pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxmu libxre=
nder libxft libxext fontconfig,The x11perf program runs one or more perform=
ance tests and reports how fast an X server can execute the tests.,N/A,http=
://xorg.freedesktop.org/releases/individual/app/x11perf-1.5.4.tar.bz2,Laure=
ntiu Palcu <laurentiu.palcu@intel.com>)
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
['gdb', '7.6.2', 'N/A', 'GPLv2 & GPLv3 & LGPLv2 & LGPLv3', 'devel', 'http:/=
/www.gnu.org/software/gdb/', 'r0', 'autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native virtual/gettext gettext-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 expat ncurses readline lttng-ust', 'None', 'None', 'GNU debugger.', 'ErrHo=
stNoDir:/gnu/gdb/:-:gdb-7.6.2.tar.gz:ftp.gnu.org/gnu/gdb/gdb-7.6.2.tar.gz',=
 'N/A', 'ftp://ftp.gnu.org/gnu/gdb/gdb-7.6.2.tar.gz', 'Laurentiu Palcu <lau=
rentiu.palcu@intel.com>', 'None']
inserted (gdb,7.6.2,N/A,GPLv2 & GPLv3 & LGPLv2 & LGPLv3,devel,r0,None,http:=
//www.gnu.org/software/gdb/,None,ErrHostNoDir:/gnu/gdb/:-:gdb-7.6.2.tar.gz:=
ftp.gnu.org/gnu/gdb/gdb-7.6.2.tar.gz,autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native virtual/gettext gettext-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  expat ncurses readline lttng-ust,GNU debugger.,N/A,ftp://ftp.gnu.org/gnu/=
gdb/gdb-7.6.2.tar.gz,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['libgcc', '4.8.2', 'N/A', 'GPL-3.0-with-GCC-exception & GPLv3', 'devel', '=
http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automake-native l=
ibtool-native gnu-config-native   virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-g++', 'None', 'None', 'GNU cc and gcc C compilers.', 'ErrHostNoD=
ir:/gnu/gcc/4.8.2/:gcc-4.8.2:gcc-4.8.2.tar.bz2:ftp.gnu.org/gnu/gcc/gcc-4.8.=
2/gcc-4.8.2.tar.bz2', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2=
=2Etar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libgcc,4.8.2,N/A,GPL-3.0-with-GCC-exception & GPLv3,devel,r0,None=
,http://www.gnu.org/software/gcc/,None,ErrHostNoDir:/gnu/gcc/4.8.2/:gcc-4.8=
=2E2:gcc-4.8.2.tar.bz2:ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2,auto=
conf-native automake-native libtool-native gnu-config-native   virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-g++,GNU cc and gcc C compilers.,N/A=
,ftp://ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2,Saul Wold <sgw@linux=
=2Eintel.com>)
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
HostNoDir:/expect/Expect/5.45/expect5.45.tar.gz:5.45:-:downloads.sourceforg=
e.net/expect/Expect/5.45/expect5.45.tar.gz', 'N/A', 'http://downloads.sourc=
eforge.net/expect/Expect/5.45/expect5.45.tar.gz', 'None', 'None']
inserted (expect,5.45,N/A,PD,devel,r0,None,http://sourceforge.net/projects/=
expect/,None,ErrHostNoDir:/expect/Expect/5.45/expect5.45.tar.gz:5.45:-:down=
loads.sourceforge.net/expect/Expect/5.45/expect5.45.tar.gz,autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   tcl,Ex=
pect is a tool for automating interactive applications according to a scrip=
t. Following the script, Expect knows what can be expected from a program a=
nd what the correct response should be. Expect is also useful for testing t=
hese same applications. And by adding Tk, you can also wrap interactive app=
lications in X11 GUIs. An interpreted language provides branching and high-=
level control structures to direct the dialogue. In addition, the user can =
take control and interact directly when desired, afterward returning contro=
l to the script. ,N/A,http://downloads.sourceforge.net/expect/Expect/5.45/e=
xpect5.45.tar.gz,None)
['encodings', '1.0.4', 'N/A', 'PD', 'x11/fonts', 'http://www.x.org', 'r2.1'=
, 'pkgconfig-native autoconf-native automake-native libtool-native gnu-conf=
ig-native  mkfontscale-native font-util-native', 'https://bugs.freedesktop.=
org/enter_bug.cgi?product=3Dxorg', '1', 'The encodings that map to specific=
 characters for a number of Xorg and common fonts.', 'ErrHostNoDir:/release=
s/individual/font/:-:encodings-1.0.4.tar.bz2:xorg.freedesktop.org/releases/=
individual/font/encodings-1.0.4.tar.bz2', 'N/A', 'http://xorg.freedesktop.o=
rg/releases/individual/font/encodings-1.0.4.tar.bz2', 'Ross Burton <ross.bu=
rton@intel.com>', 'None']
inserted (encodings,1.0.4,N/A,PD,x11/fonts,r2.1,1,http://www.x.org,https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/in=
dividual/font/:-:encodings-1.0.4.tar.bz2:xorg.freedesktop.org/releases/indi=
vidual/font/encodings-1.0.4.tar.bz2,pkgconfig-native autoconf-native automa=
ke-native libtool-native gnu-config-native  mkfontscale-native font-util-na=
tive,The encodings that map to specific characters for a number of Xorg and=
 common fonts.,N/A,http://xorg.freedesktop.org/releases/individual/font/enc=
odings-1.0.4.tar.bz2,Ross Burton <ross.burton@intel.com>)
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
 a client.', 'ErrHostNoDir:/releases/individual/lib/:-:libXcomposite-0.4.4.=
tar.bz2:xorg.freedesktop.org/releases/individual/lib/libXcomposite-0.4.4.ta=
r.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXcom=
posite-0.4.4.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxcomposite,0.4.4,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,=
https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/rel=
eases/individual/lib/:-:libXcomposite-0.4.4.tar.bz2:xorg.freedesktop.org/re=
leases/individual/lib/libXcomposite-0.4.4.tar.bz2,pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 util-macros  compositeproto virtual/libx11 libxfixes libxext,The composite=
 extension provides three related mechanisms: per-hierarchy storage, automa=
tic shadow update, and external parent.  In per-hierarchy storage, the rend=
ering of an entire hierarchy of windows is redirected to off-screen storage=
=2E  In automatic shadow update, when a hierarchy is rendered off-screen, t=
he X server provides an automatic mechanism for presenting those contents w=
ithin the parent window.  In external parent, a mechanism for providing red=
irection of compositing transformations through a client.,N/A,http://xorg.f=
reedesktop.org/releases/individual/lib/libXcomposite-0.4.4.tar.bz2,Ross Bur=
ton <ross.burton@intel.com>)
['insserv', '1.14.0', 'N/A', 'GPLv2', 'base', '', 'r1', ' virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'N=
one', "This utility reorders the init.d boot scripts based on dependencies =
given in scripts' LSB comment headers, or in override files included in thi=
s package or added in /etc/insserv.", 'ErrHostNoDir:/pub/projects/init/:-:i=
nsserv-1.14.0.tar.bz2:ftp.suse.com/pub/projects/init/insserv-1.14.0.tar.bz2=
', 'N/A', 'ftp://ftp.suse.com/pub/projects/init/insserv-1.14.0.tar.bz2', 'C=
hong Lu <Chong.Lu@windriver.com>', 'None']
inserted (insserv,1.14.0,N/A,GPLv2,base,r1,None,,None,ErrHostNoDir:/pub/pro=
jects/init/:-:insserv-1.14.0.tar.bz2:ftp.suse.com/pub/projects/init/insserv=
-1.14.0.tar.bz2, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ,This utility reorders the init.d boot scripts based o=
n dependencies given in scripts' LSB comment headers, or in override files =
included in this package or added in /etc/insserv.,N/A,ftp://ftp.suse.com/p=
ub/projects/init/insserv-1.14.0.tar.bz2,Chong Lu <Chong.Lu@windriver.com>)
['mkfontscale', '1.1.1', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  util-macros-native zlib libfontenc freetype=
 xproto', 'https://bugs.freedesktop.org', 'None', 'For each directory argum=
ent, mkfontscale reads all of the scalable font files in the directory. For=
 every font file found, an X11 font name (XLFD) is generated, and is writte=
n together with the file name to a file fonts.scale in the directory.  The =
resulting fonts.scale is used by the mkfontdir program.', 'ErrHostNoDir:/re=
leases/individual/app/:-:mkfontscale-1.1.1.tar.bz2:xorg.freedesktop.org/rel=
eases/individual/app/mkfontscale-1.1.1.tar.bz2', 'N/A', 'http://xorg.freede=
sktop.org/releases/individual/app/mkfontscale-1.1.1.tar.bz2', 'Cristiana Vo=
icu <cristiana.voicu@intel.com>', 'None']
inserted (mkfontscale,1.1.1,N/A,MIT-X,x11/apps,r0,None,http://www.x.org/,ht=
tps://bugs.freedesktop.org,ErrHostNoDir:/releases/individual/app/:-:mkfonts=
cale-1.1.1.tar.bz2:xorg.freedesktop.org/releases/individual/app/mkfontscale=
-1.1.1.tar.bz2,pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  util-macros-native zlib libfontenc=
 freetype xproto,For each directory argument, mkfontscale reads all of the =
scalable font files in the directory. For every font file found, an X11 fon=
t name (XLFD) is generated, and is written together with the file name to a=
 file fonts.scale in the directory.  The resulting fonts.scale is used by t=
he mkfontdir program.,N/A,http://xorg.freedesktop.org/releases/individual/a=
pp/mkfontscale-1.1.1.tar.bz2,Cristiana Voicu <cristiana.voicu@intel.com>)
['connman', '1.22', 'N/A', 'GPLv2', 'base', 'http://connman.net/', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  dbus glib-2.0 ppp iptables update-rc.d-native  ofo=
no  bluez4  wpa-supplicant gnutls', 'https://01.org/jira/browse/CM', 'None'=
, 'The ConnMan project provides a daemon for managing internet connections =
within embedded devices running the Linux operating system.  The Connection=
 Manager is designed to be slim and to use as few resources as possible, so=
 it can be easily integrated. It is a fully modular system that can be exte=
nded, through plug-ins, to support all kinds of wired or wireless technolog=
ies. Also, configuration methods, like DHCP and domain name resolving, are =
implemented using plug-ins.', 'ErrHostNoDir:/pub/linux/network/connman/:-:c=
onnman-1.22.tar.xz:kernel.org/pub/linux/network/connman/connman-1.22.tar.xz=
', 'N/A', 'http://kernel.org/pub/linux/network/connman/connman-1.22.tar.xz'=
, 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (connman,1.22,N/A,GPLv2,base,r0,None,http://connman.net/,https://0=
1.org/jira/browse/CM,ErrHostNoDir:/pub/linux/network/connman/:-:connman-1.2=
2.tar.xz:kernel.org/pub/linux/network/connman/connman-1.22.tar.xz,pkgconfig=
-native autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  dbus glib-2.0 ppp iptables update-rc.d-native  ofono  blue=
z4  wpa-supplicant gnutls,The ConnMan project provides a daemon for managin=
g internet connections within embedded devices running the Linux operating =
system.  The Connection Manager is designed to be slim and to use as few re=
sources as possible, so it can be easily integrated. It is a fully modular =
system that can be extended, through plug-ins, to support all kinds of wire=
d or wireless technologies. Also, configuration methods, like DHCP and doma=
in name resolving, are implemented using plug-ins.,N/A,http://kernel.org/pu=
b/linux/network/connman/connman-1.22.tar.xz,Cristian Iorga <cristian.iorga@=
intel.com>)
['libxml-sax-base-perl', '1.08', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', =
'', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc   perl perl-native', 'None', 'None', "This module has a very=
 simple task - to be a base class for PerlSAX drivers and filters. It's def=
ault behaviour is to pass the input directly to the output unchanged. It ca=
n be useful to use this module as a base class so you don't have to, for ex=
ample, implement the characters() callback.", 'ErrHostNoDir:/CPAN/authors/i=
d/G/GR/GRANTM/:-:XML-SAX-Base-1.08.tar.gz:search.cpan.org/CPAN/authors/id/G=
/GR/GRANTM/XML-SAX-Base-1.08.tar.gz', 'N/A', 'http://search.cpan.org/CPAN/a=
uthors/id/G/GR/GRANTM/XML-SAX-Base-1.08.tar.gz', 'None', 'None']
inserted (libxml-sax-base-perl,1.08,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,Non=
e,,None,ErrHostNoDir:/CPAN/authors/id/G/GR/GRANTM/:-:XML-SAX-Base-1.08.tar.=
gz:search.cpan.org/CPAN/authors/id/G/GR/GRANTM/XML-SAX-Base-1.08.tar.gz, vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
   perl perl-native,This module has a very simple task - to be a base class=
 for PerlSAX drivers and filters. It's default behaviour is to pass the inp=
ut directly to the output unchanged. It can be useful to use this module as=
 a base class so you don't have to, for example, implement the characters()=
 callback.,N/A,http://search.cpan.org/CPAN/authors/id/G/GR/GRANTM/XML-SAX-B=
ase-1.08.tar.gz,None)
['ccache', '3.1.9', 'N/A', 'GPLv3+', 'devel', 'http://ccache.samba.org', 'r=
0', 'autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  zlib', 'None', 'None', 'ccache is a compiler cache. It speeds=
 up recompilation by caching the result of previous compilations and detect=
ing when the same compilation is being done again. Supported languages are =
C, C\\+\\+, Objective-C and Objective-C++.', 'ErrHostNoDir:/ftp/ccache/:-:c=
cache-3.1.9.tar.xz:samba.org/ftp/ccache/ccache-3.1.9.tar.xz', 'N/A', 'http:=
//samba.org/ftp/ccache/ccache-3.1.9.tar.xz', 'Wenzong Fan <wenzong.fan@wind=
river.com>', 'None']
inserted (ccache,3.1.9,N/A,GPLv3+,devel,r0,None,http://ccache.samba.org,Non=
e,ErrHostNoDir:/ftp/ccache/:-:ccache-3.1.9.tar.xz:samba.org/ftp/ccache/ccac=
he-3.1.9.tar.xz,autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  zlib,ccache is a compiler cache. It speeds up reco=
mpilation by caching the result of previous compilations and detecting when=
 the same compilation is being done again. Supported languages are C, C\+\+=
, Objective-C and Objective-C++.,N/A,http://samba.org/ftp/ccache/ccache-3.1=
=2E9.tar.xz,Wenzong Fan <wenzong.fan@windriver.com>)
['owl-video', '0.1+gitAUTOINC+07ab48f331', '0.1+gitAUTOINC+07ab48f', 'LGPLv=
2.1 & GPLv2+', 'x11', 'http://o-hand.com/', 'r2', 'pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  libowl-av', 'http://bugzilla.yoctoproject.org/', 'None', 'OpenedHand Widg=
et Library video widget.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/owl-=
video', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (owl-video,0.1+gitAUTOINC+07ab48f331,0.1+gitAUTOINC+07ab48f,LGPLv2=
=2E1 & GPLv2+,x11,r2,None,http://o-hand.com/,http://bugzilla.yoctoproject.o=
rg/,MATCH,pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  libowl-av,OpenedHand Widget Library vid=
eo widget.,N/A,git://git.yoctoproject.org/owl-video,Valentin Popa <valentin=
=2Epopa@intel.com>)
['console-tools', '0.3.2', 'N/A', 'GPLv2', 'base', '', 'r8', 'autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native virtual/g=
ettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc   virtual/update-alternatives', 'None', 'None', '=
Provides tools that enable the set-up and manipulation of the linux console=
 and console-font files.', 'ErrHostNoDir:/lct/:-:console-tools-0.3.2.tar.gz=
:downloads.sourceforge.net/lct/console-tools-0.3.2.tar.gz', 'N/A', 'http://=
downloads.sourceforge.net/lct/console-tools-0.3.2.tar.gz', 'Saul Wold <sgw@=
linux.intel.com>', 'None']
inserted (console-tools,0.3.2,N/A,GPLv2,base,r8,None,,None,ErrHostNoDir:/lc=
t/:-:console-tools-0.3.2.tar.gz:downloads.sourceforge.net/lct/console-tools=
-0.3.2.tar.gz,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update-alter=
natives,Provides tools that enable the set-up and manipulation of the linux=
 console and console-font files.,N/A,http://downloads.sourceforge.net/lct/c=
onsole-tools-0.3.2.tar.gz,Saul Wold <sgw@linux.intel.com>)
['xf86-video-omapfb', '0.1.1+gitrAUTOINC+28c006c94e', '0.1.1+gitrAUTOINC+28=
c006c94e+gitrAUTOINC+fatal: ', 'MIT-X & GPLv2+', 'x11/drivers', 'http://www=
=2Ex.org', 'r21.7', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextp=
roto fontsproto virtual/xserver xproto randrproto util-macros virtual/libx1=
1', 'https://bugs.freedesktop.org', '2', 'omapfb driver supports the basic =
Texas Instruments OMAP framebuffer.', 'UPDATE', 'N/A', 'git://git.pingu.fi/=
xf86-video-omapfb;protocol=3Dhttp', 'Laurentiu Palcu <laurentiu.palcu@intel=
=2Ecom>', 'None']
inserted (xf86-video-omapfb,0.1.1+gitrAUTOINC+28c006c94e,0.1.1+gitrAUTOINC+=
28c006c94e+gitrAUTOINC+fatal: ,MIT-X & GPLv2+,x11/drivers,r21.7,2,http://ww=
w.x.org,https://bugs.freedesktop.org,UPDATE,pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  rende=
rproto videoproto xextproto fontsproto virtual/xserver xproto randrproto ut=
il-macros virtual/libx11,omapfb driver supports the basic Texas Instruments=
 OMAP framebuffer.,N/A,git://git.pingu.fi/xf86-video-omapfb;protocol=3Dhttp=
,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['libi18n-collate-perl', '1.02', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', =
'http://search.cpan.org/~flora/I18N-Collate/', 'r0', ' virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-nativ=
e', 'None', 'None', 'This module provides you with objects that will collat=
e according to your national character set, provided that the POSIX setloca=
le() function is supported on your system.', 'ErrHostNoDir:/CPAN/authors/id=
/F/FL/FLORA/:-:I18N-Collate-1.02.tar.gz:search.cpan.org/CPAN/authors/id/F/F=
L/FLORA/I18N-Collate-1.02.tar.gz', 'N/A', 'http://search.cpan.org/CPAN/auth=
ors/id/F/FL/FLORA/I18N-Collate-1.02.tar.gz', 'Saul Wold <sgw@linux.intel.co=
m>', 'None']
inserted (libi18n-collate-perl,1.02,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,Non=
e,http://search.cpan.org/~flora/I18N-Collate/,None,ErrHostNoDir:/CPAN/autho=
rs/id/F/FL/FLORA/:-:I18N-Collate-1.02.tar.gz:search.cpan.org/CPAN/authors/i=
d/F/FL/FLORA/I18N-Collate-1.02.tar.gz, virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc   perl perl-native,This module pr=
ovides you with objects that will collate according to your national charac=
ter set, provided that the POSIX setlocale() function is supported on your =
system.,N/A,http://search.cpan.org/CPAN/authors/id/F/FL/FLORA/I18N-Collate-=
1.02.tar.gz,Saul Wold <sgw@linux.intel.com>)
['mtd-utils', '1.5.0+gitAUTOINC+dcea43eba9', '1.5.1+gitAUTOINC+5923077', 'G=
PLv2+', 'base', 'http://www.linux-mtd.infradead.org/', 'r0', ' virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib lzo=
 e2fsprogs util-linux', 'None', 'None', 'Tools for managing memory technolo=
gy devices.', 'UPDATE', 'N/A', 'git://git.infradead.org/mtd-utils.git', 'Cr=
istiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (mtd-utils,1.5.0+gitAUTOINC+dcea43eba9,1.5.1+gitAUTOINC+5923077,GP=
Lv2+,base,r0,None,http://www.linux-mtd.infradead.org/,None,UPDATE, virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib=
 lzo e2fsprogs util-linux,Tools for managing memory technology devices.,N/A=
,git://git.infradead.org/mtd-utils.git,Cristiana Voicu <cristiana.voicu@int=
el.com>)
['xinput', '1.6.1', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  util-macros-native virtual/libx11  libxi libxran=
dr libxinerama', 'https://bugs.freedesktop.org', 'None', 'Xinput is an util=
ity for configuring and testing XInput devices', 'ErrHostNoDir:/releases/in=
dividual/app/:-:xinput-1.6.1.tar.bz2:xorg.freedesktop.org/releases/individu=
al/app/xinput-1.6.1.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/=
individual/app/xinput-1.6.1.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@int=
el.com>', 'None']
inserted (xinput,1.6.1,N/A,MIT-X,x11/apps,r0,None,http://www.x.org/,https:/=
/bugs.freedesktop.org,ErrHostNoDir:/releases/individual/app/:-:xinput-1.6.1=
=2Etar.bz2:xorg.freedesktop.org/releases/individual/app/xinput-1.6.1.tar.bz=
2,pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros-native virtual/libx11  libxi libxra=
ndr libxinerama,Xinput is an utility for configuring and testing XInput dev=
ices,N/A,http://xorg.freedesktop.org/releases/individual/app/xinput-1.6.1.t=
ar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['v86d', '0.1.10', 'N/A', 'GPLv2', 'base', 'http://dev.gentoo.org/~spock/pr=
ojects/uvesafb/', 'r1', ' virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  virtual/kernel update-rc.d-native', 'None', '=
None', 'User support binary for the uvesafb kernel module.', 'ErrHostNoDir:=
/distfiles/:-:v86d-0.1.10.tar.bz2:distfiles.gentoo.org/distfiles/v86d-0.1.1=
0.tar.bz2', 'N/A', 'http://distfiles.gentoo.org/distfiles/v86d-0.1.10.tar.b=
z2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (v86d,0.1.10,N/A,GPLv2,base,r1,None,http://dev.gentoo.org/~spock/p=
rojects/uvesafb/,None,ErrHostNoDir:/distfiles/:-:v86d-0.1.10.tar.bz2:distfi=
les.gentoo.org/distfiles/v86d-0.1.10.tar.bz2, virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  virtual/kernel update-rc.=
d-native,User support binary for the uvesafb kernel module.,N/A,http://dist=
files.gentoo.org/distfiles/v86d-0.1.10.tar.bz2,Laurentiu Palcu <laurentiu.p=
alcu@intel.com>)
['at-spi2-core', '2.10.2', 'N/A', 'LGPLv2', 'base', '', 'r0', 'autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  dbu=
s glib-2.0 virtual/libx11 libxi libxtst intltool-native gtk-doc-stub-native=
', 'None', 'None', 'Assistive Technology Service Provider Interface (dbus c=
ore).', 'ErrHostNoDir:/pub/GNOME/sources/at-spi2-core/2.10/at-spi2-core-2.1=
0.2.tar.xz:2.10:-:ftp.gnome.org/pub/GNOME/sources/at-spi2-core/2.10/at-spi2=
-core-2.10.2.tar.xz', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/at-spi=
2-core/2.10/at-spi2-core-2.10.2.tar.xz', 'Cristiana Voicu <cristiana.voicu@=
intel.com>', 'None']
inserted (at-spi2-core,2.10.2,N/A,LGPLv2,base,r0,None,,None,ErrHostNoDir:/p=
ub/GNOME/sources/at-spi2-core/2.10/at-spi2-core-2.10.2.tar.xz:2.10:-:ftp.gn=
ome.org/pub/GNOME/sources/at-spi2-core/2.10/at-spi2-core-2.10.2.tar.xz,auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  dbus glib-2.0 virtual/libx11 libxi libxtst intltool-native gtk-doc-stu=
b-native,Assistive Technology Service Provider Interface (dbus core).,N/A,h=
ttp://ftp.gnome.org/pub/GNOME/sources/at-spi2-core/2.10/at-spi2-core-2.10.2=
=2Etar.xz,Cristiana Voicu <cristiana.voicu@intel.com>)
['xcb-proto', '1.10', 'N/A', 'MIT', 'x11/libs', 'http://xcb.freedesktop.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc    python-native ', 'https://bugs.freede=
sktop.org/enter_bug.cgi?product=3DXCB', 'None', 'Function prototypes for th=
e X protocol C-language Binding (XCB).  XCB is a replacement for Xlib featu=
ring a small footprint, latency hiding, direct access to the protocol, impr=
oved threading support, and extensibility.', 'ErrHostNoDir:/dist/:-:xcb-pro=
to-1.10.tar.bz2:xcb.freedesktop.org/dist/xcb-proto-1.10.tar.bz2', 'N/A', 'h=
ttp://xcb.freedesktop.org/dist/xcb-proto-1.10.tar.bz2', 'Laurentiu Palcu <l=
aurentiu.palcu@intel.com>', 'None']
inserted (xcb-proto,1.10,N/A,MIT,x11/libs,r0,None,http://xcb.freedesktop.or=
g,https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB,ErrHostNoDir:/di=
st/:-:xcb-proto-1.10.tar.bz2:xcb.freedesktop.org/dist/xcb-proto-1.10.tar.bz=
2,pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc    python-native ,Function prototypes for the X =
protocol C-language Binding (XCB).  XCB is a replacement for Xlib featuring=
 a small footprint, latency hiding, direct access to the protocol, improved=
 threading support, and extensibility.,N/A,http://xcb.freedesktop.org/dist/=
xcb-proto-1.10.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['leafpad', '0.8.18.1', 'N/A', 'GPLv2 & GPLv2+', 'base', 'http://tarot.free=
shell.org/leafpad/', 'r2', 'pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ intltool-native =
libowl', 'None', 'None', 'Simple GTK+ Text Editor.', 'ErrHostNoDir:/downloa=
d/leafpad/:-:leafpad-0.8.18.1.tar.gz:savannah.nongnu.org/download/leafpad/l=
eafpad-0.8.18.1.tar.gz', 'N/A', 'http://savannah.nongnu.org/download/leafpa=
d/leafpad-0.8.18.1.tar.gz', 'Valentin Popa <valentin.popa@intel.com>', 'Non=
e']
inserted (leafpad,0.8.18.1,N/A,GPLv2 & GPLv2+,base,r2,None,http://tarot.fre=
eshell.org/leafpad/,None,ErrHostNoDir:/download/leafpad/:-:leafpad-0.8.18.1=
=2Etar.gz:savannah.nongnu.org/download/leafpad/leafpad-0.8.18.1.tar.gz,pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  gtk+ intltool-native libowl,Simple GTK+ Text Editor.,=
N/A,http://savannah.nongnu.org/download/leafpad/leafpad-0.8.18.1.tar.gz,Val=
entin Popa <valentin.popa@intel.com>)
['sbc', '1.2', 'N/A', 'GPLv2', 'libs', 'https://www.bluez.org', 'r0', 'auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  libsndfile1', 'None', 'None', 'Bluetooth low-complexity, subband codec=
 (SBC) library.', 'ErrHostNoDir:/pub/linux/bluetooth/:-:sbc-1.2.tar.xz:kern=
el.org/pub/linux/bluetooth/sbc-1.2.tar.xz', 'N/A', 'http://kernel.org/pub/l=
inux/bluetooth/sbc-1.2.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>'=
, 'None']
inserted (sbc,1.2,N/A,GPLv2,libs,r0,None,https://www.bluez.org,None,ErrHost=
NoDir:/pub/linux/bluetooth/:-:sbc-1.2.tar.xz:kernel.org/pub/linux/bluetooth=
/sbc-1.2.tar.xz,autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  libsndfile1,Bluetooth low-complexity, subband code=
c (SBC) library.,N/A,http://kernel.org/pub/linux/bluetooth/sbc-1.2.tar.xz,C=
ristian Iorga <cristian.iorga@intel.com>)
['gnu-efi', '3.0u', 'N/A', 'GPLv2+', 'devel', 'http://sourceforge.net/proje=
cts/gnu-efi/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ', 'None', 'None', 'Libraries for producing EFI =
binaries.', 'ErrHostNoDir:/gnu-efi/:-:gnu-efi_3.0u.orig.tar.gz:downloads.so=
urceforge.net/gnu-efi/gnu-efi_3.0u.orig.tar.gz', 'N/A', 'http://downloads.s=
ourceforge.net/gnu-efi/gnu-efi_3.0u.orig.tar.gz', 'None', 'None']
inserted (gnu-efi,3.0u,N/A,GPLv2+,devel,r0,None,http://sourceforge.net/proj=
ects/gnu-efi/,None,ErrHostNoDir:/gnu-efi/:-:gnu-efi_3.0u.orig.tar.gz:downlo=
ads.sourceforge.net/gnu-efi/gnu-efi_3.0u.orig.tar.gz, virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Libraries for pr=
oducing EFI binaries.,N/A,http://downloads.sourceforge.net/gnu-efi/gnu-efi_=
3.0u.orig.tar.gz,None)
['gconf', '3.2.6', 'N/A', 'LGPLv2+', 'x11/gnome', '', 'r0', 'pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus dbus-glib libxml2 =
intltool-native gobject-introspection-stub gnome-common-native gtk-doc-stub=
-native', 'None', 'None', 'GNOME configuration system.', 'ErrHostNoDir:/pub=
/GNOME/sources/GConf/3.2/GConf-3.2.6.tar.xz:3.2:-:ftp.gnome.org/pub/GNOME/s=
ources/GConf/3.2/GConf-3.2.6.tar.xz', 'N/A', 'http://ftp.gnome.org/pub/GNOM=
E/sources/GConf/3.2/GConf-3.2.6.tar.xz;name=3Darchive', 'Saul Wold <sgw@lin=
ux.intel.com>', 'None']
inserted (gconf,3.2.6,N/A,LGPLv2+,x11/gnome,r0,None,,None,ErrHostNoDir:/pub=
/GNOME/sources/GConf/3.2/GConf-3.2.6.tar.xz:3.2:-:ftp.gnome.org/pub/GNOME/s=
ources/GConf/3.2/GConf-3.2.6.tar.xz,pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native virtual/gettext ge=
ttext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  glib-2.0 dbus dbus-glib libxml2 intltool-native gobject-i=
ntrospection-stub gnome-common-native gtk-doc-stub-native,GNOME configurati=
on system.,N/A,http://ftp.gnome.org/pub/GNOME/sources/GConf/3.2/GConf-3.2.6=
=2Etar.xz;name=3Darchive,Saul Wold <sgw@linux.intel.com>)
['openjade-native', '1.3.2', 'N/A', 'BSD', 'base', 'http://openjade.sourcef=
orge.net', 'r5', 'autoconf-native automake-native libtool-native gnu-config=
-native  opensp-native sgml-common-native', 'None', 'None', 'OpenJade is a =
suite of tools for validating, processing, and applying DSSSL (Document Sty=
le Semantics and Specification Language) stylesheets to SGML and XML docume=
nts.', 'ErrHostNoDir:/openjade/:-:openjade-1.3.2.tar.gz:downloads.sourcefor=
ge.net/openjade/openjade-1.3.2.tar.gz', 'N/A', 'http://downloads.sourceforg=
e.net/openjade/openjade-1.3.2.tar.gz', 'Paul Eggleton <paul.eggleton@linux.=
intel.com>', 'None']
inserted (openjade-native,1.3.2,N/A,BSD,base,r5,None,http://openjade.source=
forge.net,None,ErrHostNoDir:/openjade/:-:openjade-1.3.2.tar.gz:downloads.so=
urceforge.net/openjade/openjade-1.3.2.tar.gz,autoconf-native automake-nativ=
e libtool-native gnu-config-native  opensp-native sgml-common-native,OpenJa=
de is a suite of tools for validating, processing, and applying DSSSL (Docu=
ment Style Semantics and Specification Language) stylesheets to SGML and XM=
L documents.,N/A,http://downloads.sourceforge.net/openjade/openjade-1.3.2.t=
ar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['libxft', '2.3.1', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', 'pk=
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
s).', 'ErrHostNoDir:/releases/individual/lib/:-:libXft-2.3.1.tar.bz2:xorg.f=
reedesktop.org/releases/individual/lib/libXft-2.3.1.tar.bz2', 'N/A', 'http:=
//xorg.freedesktop.org/releases/individual/lib/libXft-2.3.1.tar.bz2', 'Ross=
 Burton <ross.burton@intel.com>', 'None']
inserted (libxft,2.3.1,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://bugs.=
freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/individ=
ual/lib/:-:libXft-2.3.1.tar.bz2:xorg.freedesktop.org/releases/individual/li=
b/libXft-2.3.1.tar.bz2,pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  util-macros virtual/libx11=
 libxrender freetype fontconfig,Xft was designed to provide good support fo=
r scalable fonts, and to do so efficiently.  Unlike the core fonts system, =
it supports features such as anti-aliasing and sub-pixel rasterisation. Per=
haps more importantly, it gives applications full control over the way glyp=
hs are rendered, making fine typesetting and WYSIWIG display possible. Fina=
lly, it allows applications to use fonts that are not installed system-wide=
 for displaying documents with embedded fonts.  Xft is not compatible with =
the core fonts system: usage of Xft requires fairly extensive changes to to=
olkits (user-interface libraries).,N/A,http://xorg.freedesktop.org/releases=
/individual/lib/libXft-2.3.1.tar.bz2,Ross Burton <ross.burton@intel.com>)
['gst-openmax', '0.10.1', 'N/A', 'LGPLv2.1', 'base', 'http://freedesktop.or=
g/wiki/GstOpenMAX', 'r4', 'autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  gstreamer', 'None', 'None', 'GstOpenMAX=
 is a GStreamer plug-in that allows communication with OpenMAX Integration =
Layer (IL) components. OpenMAX IL is an industry standard that provides an =
abstraction layer for computer graphics, video, and sound routines.', 'ErrH=
ostNoDir:/src/gst-openmax/:-:gst-openmax-0.10.1.tar.bz2:gstreamer.freedeskt=
op.org/src/gst-openmax/gst-openmax-0.10.1.tar.bz2', 'N/A', 'http://gstreame=
r.freedesktop.org/src/gst-openmax/gst-openmax-0.10.1.tar.bz2', 'Cristian Io=
rga <cristian.iorga@intel.com>', 'None']
inserted (gst-openmax,0.10.1,N/A,LGPLv2.1,base,r4,None,http://freedesktop.o=
rg/wiki/GstOpenMAX,None,ErrHostNoDir:/src/gst-openmax/:-:gst-openmax-0.10.1=
=2Etar.bz2:gstreamer.freedesktop.org/src/gst-openmax/gst-openmax-0.10.1.tar=
=2Ebz2,autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  gstreamer,GstOpenMAX is a GStreamer plug-in that allows com=
munication with OpenMAX Integration Layer (IL) components. OpenMAX IL is an=
 industry standard that provides an abstraction layer for computer graphics=
, video, and sound routines.,N/A,http://gstreamer.freedesktop.org/src/gst-o=
penmax/gst-openmax-0.10.1.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['orc', '0.4.18', 'N/A', 'BSD-2-Clause & BSD-3-Clause', 'base', 'http://cod=
e.entropywave.com/projects/orc/', 'r2.0', 'pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'No=
ne', 'None', 'Optimised Inner Loop Runtime Compiler.', 'ErrHostNoDir:/downl=
oad/orc/:-:orc-0.4.18.tar.gz:code.entropywave.com/download/orc/orc-0.4.18.t=
ar.gz', 'N/A', 'http://code.entropywave.com/download/orc/orc-0.4.18.tar.gz;=
name=3Dorc', 'None', 'None']
inserted (orc,0.4.18,N/A,BSD-2-Clause & BSD-3-Clause,base,r2.0,None,http://=
code.entropywave.com/projects/orc/,None,ErrHostNoDir:/download/orc/:-:orc-0=
=2E4.18.tar.gz:code.entropywave.com/download/orc/orc-0.4.18.tar.gz,pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  ,Optimised Inner Loop Runtime Compiler.,N/A,http://code.e=
ntropywave.com/download/orc/orc-0.4.18.tar.gz;name=3Dorc,None)
['bash', '4.3', 'N/A', 'GPLv3+', 'base/shell', 'http://tiswww.case.edu/php/=
chet/bash/bashtop.html', 'r0', 'autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ncu=
rses bison-native virtual/update-alternatives', 'None', 'None', 'An sh-comp=
atible command language interpreter.', 'ErrHostNoDir:/gnu/bash/:-:bash-4.3.=
tar.gz:ftp.gnu.org/gnu/bash/bash-4.3.tar.gz', '4.2', 'ftp://ftp.gnu.org/gnu=
/bash/bash-4.3.tar.gz;name=3Dtarball', 'Hongxu Jia <hongxu.jia@windriver.co=
m>', 'None']
inserted (bash,4.3,N/A,GPLv3+,base/shell,r0,None,http://tiswww.case.edu/php=
/chet/bash/bashtop.html,None,ErrHostNoDir:/gnu/bash/:-:bash-4.3.tar.gz:ftp.=
gnu.org/gnu/bash/bash-4.3.tar.gz,autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  nc=
urses bison-native virtual/update-alternatives,An sh-compatible command lan=
guage interpreter.,4.2,ftp://ftp.gnu.org/gnu/bash/bash-4.3.tar.gz;name=3Dta=
rball,Hongxu Jia <hongxu.jia@windriver.com>)
['ltp', '20140115', '20140115', 'GPLv2 & GPLv2+ & LGPLv2+ & LGPLv2.1+ & BSD=
-2-Clause', 'console/utils', 'http://ltp.sourceforge.net', 'r0', 'autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
attr libaio libcap acl openssl', 'None', 'None', 'The Linux Test Project is=
 a joint project with SGI, IBM, OSDL, and Bull with a goal to deliver test =
suites to the open source community that validate the reliability, robustne=
ss, and stability of Linux. The Linux Test Project is a collection of tools=
 for testing the Linux kernel and related features.', 'ErrUnknown:github.co=
m/linux-test-project/ltp.git', 'N/A', 'git://github.com/linux-test-project/=
ltp.git', 'Mihai Lindner <mihaix.lindner@linux.intel.com>', 'None']
inserted (ltp,20140115,20140115,GPLv2 & GPLv2+ & LGPLv2+ & LGPLv2.1+ & BSD-=
2-Clause,console/utils,r0,None,http://ltp.sourceforge.net,None,ErrUnknown:g=
ithub.com/linux-test-project/ltp.git,autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  attr libaio libcap acl openss=
l,The Linux Test Project is a joint project with SGI, IBM, OSDL, and Bull w=
ith a goal to deliver test suites to the open source community that validat=
e the reliability, robustness, and stability of Linux. The Linux Test Proje=
ct is a collection of tools for testing the Linux kernel and related featur=
es.,N/A,git://github.com/linux-test-project/ltp.git,Mihai Lindner <mihaix.l=
indner@linux.intel.com>)
['openssh', '6.5p1', 'N/A', 'BSD', 'console/network', 'http://openssh.org',=
 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  zlib openssl  base-passwd shadow-native shadow-sysroot sha=
dow update-rc.d-native tcp-wrappers virtual/update-alternatives', 'None', '=
None', 'Secure rlogin/rsh/rcp/telnet replacement (OpenSSH) Ssh (Secure Shel=
l) is a program for logging into a remote machine and for executing command=
s on a remote machine.', 'ErrHostNoDir:/pub/OpenBSD/OpenSSH/portable/:-:ope=
nssh-6.5p1.tar.gz:ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-6.5p=
1.tar.gz', 'N/A', 'ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/opens=
sh-6.5p1.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (openssh,6.5p1,N/A,BSD,console/network,r0,None,http://openssh.org,=
None,ErrHostNoDir:/pub/OpenBSD/OpenSSH/portable/:-:openssh-6.5p1.tar.gz:ftp=
=2Eopenbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-6.5p1.tar.gz,autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  z=
lib openssl  base-passwd shadow-native shadow-sysroot shadow update-rc.d-na=
tive tcp-wrappers virtual/update-alternatives,Secure rlogin/rsh/rcp/telnet =
replacement (OpenSSH) Ssh (Secure Shell) is a program for logging into a re=
mote machine and for executing commands on a remote machine.,N/A,ftp://ftp.=
openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-6.5p1.tar.gz,Paul Eggleton=
 <paul.eggleton@linux.intel.com>)
['chrpath', '0.16', 'N/A', 'GPLv2', 'base', 'http://alioth.debian.org/proje=
cts/chrpath/', 'r0', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ', 'http://alioth.debian.org/tracker/?atid=
=3D412807&group_id=3D31052', 'None', "chrpath allows you to change the rpat=
h (where the application looks for libraries) in an application. It does no=
t (yet) allow you to add an rpath if there isn't one already.", 'ErrHostNoD=
ir:/frs/download.php/file/3979/:-:chrpath-0.16.tar.gz:alioth.debian.org/frs=
/download.php/file/3979/chrpath-0.16.tar.gz', 'N/A', 'http://alioth.debian.=
org/frs/download.php/file/3979/chrpath-0.16.tar.gz', 'Paul Eggleton <paul.e=
ggleton@linux.intel.com>', 'None']
inserted (chrpath,0.16,N/A,GPLv2,base,r0,None,http://alioth.debian.org/proj=
ects/chrpath/,http://alioth.debian.org/tracker/?atid=3D412807&group_id=3D31=
052,ErrHostNoDir:/frs/download.php/file/3979/:-:chrpath-0.16.tar.gz:alioth.=
debian.org/frs/download.php/file/3979/chrpath-0.16.tar.gz,autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,chrpath=
 allows you to change the rpath (where the application looks for libraries)=
 in an application. It does not (yet) allow you to add an rpath if there is=
n't one already.,N/A,http://alioth.debian.org/frs/download.php/file/3979/ch=
rpath-0.16.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['atk', '2.10.0', 'N/A', 'GPLv2+ & LGPLv2+', 'x11/libs', 'http://live.gnome=
=2Eorg/GAP/', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 gnome-common-native=
 gtk-doc-stub-native', 'https://bugzilla.gnome.org/', 'None', 'Accessibilit=
y toolkit for GNOME.', 'ErrHostNoDir:/pub/GNOME/sources/atk/2.10/atk-2.10.0=
=2Etar.xz:2.10:-:ftp.gnome.org/pub/GNOME/sources/atk/2.10/atk-2.10.0.tar.xz=
', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/atk/2.10/atk-2.10.0.tar.x=
z;name=3Darchive', 'Cristiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (atk,2.10.0,N/A,GPLv2+ & LGPLv2+,x11/libs,r0,None,http://live.gnom=
e.org/GAP/,https://bugzilla.gnome.org/,ErrHostNoDir:/pub/GNOME/sources/atk/=
2.10/atk-2.10.0.tar.xz:2.10:-:ftp.gnome.org/pub/GNOME/sources/atk/2.10/atk-=
2.10.0.tar.xz,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  glib-2.0 gnome-common-native gtk-do=
c-stub-native,Accessibility toolkit for GNOME.,N/A,http://ftp.gnome.org/pub=
/GNOME/sources/atk/2.10/atk-2.10.0.tar.xz;name=3Darchive,Cristiana Voicu <c=
ristiana.voicu@intel.com>)
['matchbox-terminal', '0.0+gitAUTOINC+452bca2534', '0.0+gitAUTOINC+452bca2'=
, 'GPLv2+', 'x11/utils', 'http://www.matchbox-project.org/', 'r0', 'pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  gtk+ vte', 'http://bugzilla.yoctoproject.org/', 'None', =
'Lightweight GTK+ terminal application.', 'MATCH', 'N/A', 'git://git.yoctop=
roject.org/matchbox-terminal', 'Valentin Popa <valentin.popa@intel.com>', '=
None']
inserted (matchbox-terminal,0.0+gitAUTOINC+452bca2534,0.0+gitAUTOINC+452bca=
2,GPLv2+,x11/utils,r0,None,http://www.matchbox-project.org/,http://bugzilla=
=2Eyoctoproject.org/,MATCH,pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ vte,Lightweight G=
TK+ terminal application.,N/A,git://git.yoctoproject.org/matchbox-terminal,=
Valentin Popa <valentin.popa@intel.com>)
['libarchive', '3.1.2', 'N/A', 'BSD', 'devel', 'http://www.libarchive.org/'=
, 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc   bzip2 libxml2 attr zlib', 'None', 'None', 'C library and=
 command-line tools for reading and writing tar, cpio, zip, ISO, and other =
archive formats', 'ErrHostNoDir:/downloads/:-:libarchive-3.1.2.tar.gz:libar=
chive.org/downloads/libarchive-3.1.2.tar.gz', 'N/A', 'http://libarchive.org=
/downloads/libarchive-3.1.2.tar.gz', 'Kai Kang <kai.kang@windriver.com>', '=
None']
inserted (libarchive,3.1.2,N/A,BSD,devel,r0,None,http://www.libarchive.org/=
,None,ErrHostNoDir:/downloads/:-:libarchive-3.1.2.tar.gz:libarchive.org/dow=
nloads/libarchive-3.1.2.tar.gz,autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc   bzip2 libxml2 attr zlib,C library =
and command-line tools for reading and writing tar, cpio, zip, ISO, and oth=
er archive formats,N/A,http://libarchive.org/downloads/libarchive-3.1.2.tar=
=2Egz,Kai Kang <kai.kang@windriver.com>)
['xmodmap', '1.0.8', 'N/A', 'MIT', 'x11/apps', 'http://www.x.org/', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros-native virtual/libx11', 'https://bugs=
=2Efreedesktop.org', '1', "The xmodmap program is used to edit and display =
the keyboard modifier map and keymap table that are used by client applicat=
ions to convert event keycodes into keysyms. It is usually run from the use=
r's session startup script to configure the keyboard according to personal =
tastes.", 'ErrHostNoDir:/releases/individual/app/:-:xmodmap-1.0.8.tar.bz2:x=
org.freedesktop.org/releases/individual/app/xmodmap-1.0.8.tar.bz2', 'N/A', =
'http://xorg.freedesktop.org/releases/individual/app/xmodmap-1.0.8.tar.bz2'=
, 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xmodmap,1.0.8,N/A,MIT,x11/apps,r0,1,http://www.x.org/,https://bug=
s.freedesktop.org,ErrHostNoDir:/releases/individual/app/:-:xmodmap-1.0.8.ta=
r.bz2:xorg.freedesktop.org/releases/individual/app/xmodmap-1.0.8.tar.bz2,pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  util-macros-native virtual/libx11,The xmodmap progr=
am is used to edit and display the keyboard modifier map and keymap table t=
hat are used by client applications to convert event keycodes into keysyms.=
 It is usually run from the user's session startup script to configure the =
keyboard according to personal tastes.,N/A,http://xorg.freedesktop.org/rele=
ases/individual/app/xmodmap-1.0.8.tar.bz2,Laurentiu Palcu <laurentiu.palcu@=
intel.com>)
['xf86-video-fbdev', '0.4.4', 'N/A', 'MIT-X', 'x11/drivers', 'http://www.x.=
org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextproto fon=
tsproto virtual/xserver xproto randrproto util-macros', 'https://bugs.freed=
esktop.org', '2', 'fbdev is an Xorg driver for framebuffer devices. This is=
 a non-accelerated driver.', 'ErrHostNoDir:/releases/individual/driver/:-:x=
f86-video-fbdev-0.4.4.tar.bz2:xorg.freedesktop.org/releases/individual/driv=
er/xf86-video-fbdev-0.4.4.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/rel=
eases/individual/driver/xf86-video-fbdev-0.4.4.tar.bz2', 'Laurentiu Palcu <=
laurentiu.palcu@intel.com>', 'None']
inserted (xf86-video-fbdev,0.4.4,N/A,MIT-X,x11/drivers,r0,2,http://www.x.or=
g,https://bugs.freedesktop.org,ErrHostNoDir:/releases/individual/driver/:-:=
xf86-video-fbdev-0.4.4.tar.bz2:xorg.freedesktop.org/releases/individual/dri=
ver/xf86-video-fbdev-0.4.4.tar.bz2,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  renderproto vi=
deoproto xextproto fontsproto virtual/xserver xproto randrproto util-macros=
,fbdev is an Xorg driver for framebuffer devices. This is a non-accelerated=
 driver.,N/A,http://xorg.freedesktop.org/releases/individual/driver/xf86-vi=
deo-fbdev-0.4.4.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['u-boot-mkimage', 'v2013.07+gitAUTOINC+62c175fbb8', 'v2013.07+gitAUTOINC+b=
149c4c', 'GPLv2+', 'bootloader', '', 'r0', ' virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'U-Boot=
 bootloader image creation tool.', 'UPDATE', 'N/A', 'git://git.denx.de/u-bo=
ot.git;branch=3Dmaster;protocol=3Dgit', 'Cristiana Voicu <cristiana.voicu@i=
ntel.com>', 'None']
inserted (u-boot-mkimage,v2013.07+gitAUTOINC+62c175fbb8,v2013.07+gitAUTOINC=
+b149c4c,GPLv2+,bootloader,r0,None,,None,UPDATE, virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  ,U-Boot bootloader ima=
ge creation tool.,N/A,git://git.denx.de/u-boot.git;branch=3Dmaster;protocol=
=3Dgit,Cristiana Voicu <cristiana.voicu@intel.com>)
['grub-efi', '2.00', 'N/A', 'GPLv3', 'bootloaders', 'http://www.gnu.org/sof=
tware/grub/', 'r2', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  grub-efi-nativ=
e', 'None', 'None', 'GRUB2 is the next generaion of a GPLed bootloader inte=
nded to unify bootloading across x86 operating systems. In addition to load=
ing the Linux kernel, it implements the Multiboot standard, which allows fo=
r flexible loading of multiple boot images. This recipe builds an EFI binar=
y for the target. It does not install or package anything, it only deploys =
a target-arch GRUB EFI image.', 'ErrHostNoDir:/gnu/grub/:-:grub-2.00.tar.gz=
:ftp.gnu.org/gnu/grub/grub-2.00.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/grub=
/grub-2.00.tar.gz', 'None', 'None']
inserted (grub-efi,2.00,N/A,GPLv3,bootloaders,r2,None,http://www.gnu.org/so=
ftware/grub/,None,ErrHostNoDir:/gnu/grub/:-:grub-2.00.tar.gz:ftp.gnu.org/gn=
u/grub/grub-2.00.tar.gz,autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  grub-efi-na=
tive,GRUB2 is the next generaion of a GPLed bootloader intended to unify bo=
otloading across x86 operating systems. In addition to loading the Linux ke=
rnel, it implements the Multiboot standard, which allows for flexible loadi=
ng of multiple boot images. This recipe builds an EFI binary for the target=
=2E It does not install or package anything, it only deploys a target-arch =
GRUB EFI image.,N/A,ftp://ftp.gnu.org/gnu/grub/grub-2.00.tar.gz,None)
['psplash', '0.1+gitAUTOINC+afd4e228c6', '0.1+gitAUTOINC+afd4e22', 'GPLv2+'=
, 'base', 'http://git.yoctoproject.org/cgit/cgit.cgi/psplash', 'r15', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc   update-rc.d-native virtual/update-alternatives', 'No=
ne', 'None', "PSplash is a userspace graphical boot splash screen for mainl=
y embedded Linux devices supporting a 16bpp or 32bpp framebuffer. It has fe=
w dependencies (just libc), supports basic images and text and handles rota=
tion. Its visual look is configurable by basic source changes. Also include=
d is a 'client' command utility for sending information to psplash such as =
boot progress information.", 'MATCH', 'N/A', 'git://git.yoctoproject.org/ps=
plash', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (psplash,0.1+gitAUTOINC+afd4e228c6,0.1+gitAUTOINC+afd4e22,GPLv2+,b=
ase,r15,None,http://git.yoctoproject.org/cgit/cgit.cgi/psplash,None,MATCH,p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc   update-rc.d-native virtual/update-alternatives,PS=
plash is a userspace graphical boot splash screen for mainly embedded Linux=
 devices supporting a 16bpp or 32bpp framebuffer. It has few dependencies (=
just libc), supports basic images and text and handles rotation. Its visual=
 look is configurable by basic source changes. Also included is a 'client' =
command utility for sending information to psplash such as boot progress in=
formation.,N/A,git://git.yoctoproject.org/psplash,Paul Eggleton <paul.eggle=
ton@linux.intel.com>)
['xcmiscproto', '1.2.2', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.=
org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire pro=
tocol for the XC-MISC extension, which is used to get details of XID alloca=
tions within the server.', 'ErrHostNoDir:/releases/individual/proto/:-:xcmi=
scproto-1.2.2.tar.bz2:xorg.freedesktop.org/releases/individual/proto/xcmisc=
proto-1.2.2.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individu=
al/proto/xcmiscproto-1.2.2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@inte=
l.com>', 'None']
inserted (xcmiscproto,1.2.2,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/relea=
ses/individual/proto/:-:xcmiscproto-1.2.2.tar.bz2:xorg.freedesktop.org/rele=
ases/individual/proto/xcmiscproto-1.2.2.tar.bz2,pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  u=
til-macros,This package provides the wire protocol for the XC-MISC extensio=
n, which is used to get details of XID allocations within the server.,N/A,h=
ttp://xorg.freedesktop.org/releases/individual/proto/xcmiscproto-1.2.2.tar.=
bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['harfbuzz', '0.9.26', 'N/A', 'MIT', 'libs', 'http://www.freedesktop.org/wi=
ki/Software/HarfBuzz', 'r0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 cairo free=
type', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3DHarfBuzz', 'No=
ne', 'HarfBuzz is an OpenType text shaping engine.', 'ErrHostNoDir:/softwar=
e/harfbuzz/release/:-:harfbuzz-0.9.26.tar.bz2:www.freedesktop.org/software/=
harfbuzz/release/harfbuzz-0.9.26.tar.bz2', 'N/A', 'http://www.freedesktop.o=
rg/software/harfbuzz/release/harfbuzz-0.9.26.tar.bz2', 'Cristian Iorga <cri=
stian.iorga@intel.com>', 'None']
inserted (harfbuzz,0.9.26,N/A,MIT,libs,r0,None,http://www.freedesktop.org/w=
iki/Software/HarfBuzz,https://bugs.freedesktop.org/enter_bug.cgi?product=3D=
HarfBuzz,ErrHostNoDir:/software/harfbuzz/release/:-:harfbuzz-0.9.26.tar.bz2=
:www.freedesktop.org/software/harfbuzz/release/harfbuzz-0.9.26.tar.bz2,pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  glib-2.0 cairo freetype,HarfBuzz is an OpenType text =
shaping engine.,N/A,http://www.freedesktop.org/software/harfbuzz/release/ha=
rfbuzz-0.9.26.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['xz', '5.1.3alpha', 'N/A', 'GPLv2+ & GPLv3+ & LGPLv2.1+ & PD', 'base', 'ht=
tp://tukaani.org/xz/', 'r0', 'autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'N=
one', 'None', 'Utilities for managing LZMA compressed files.', 'ErrHostNoDi=
r:/xz/:-:xz-5.1.3alpha.tar.gz:tukaani.org/xz/xz-5.1.3alpha.tar.gz', '5.0.4'=
, 'http://tukaani.org/xz/xz-5.1.3alpha.tar.gz', 'Chen Qi <Qi.Chen@windriver=
=2Ecom>', 'None']
inserted (xz,5.1.3alpha,N/A,GPLv2+ & GPLv3+ & LGPLv2.1+ & PD,base,r0,None,h=
ttp://tukaani.org/xz/,None,ErrHostNoDir:/xz/:-:xz-5.1.3alpha.tar.gz:tukaani=
=2Eorg/xz/xz-5.1.3alpha.tar.gz,autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Uti=
lities for managing LZMA compressed files.,5.0.4,http://tukaani.org/xz/xz-5=
=2E1.3alpha.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['udev-extraconf', '1.0', 'INVALID', 'MIT', 'base', '', 'r16', ' virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'No=
ne', 'None', 'Extra machine specific configuration files for udev, specific=
ally blacklist information.', 'MATCH', 'N/A', 'file://automount.rules', 'Cr=
istiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (udev-extraconf,1.0,INVALID,MIT,base,r16,None,,None,MATCH, virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Ex=
tra machine specific configuration files for udev, specifically blacklist i=
nformation.,N/A,file://automount.rules,Cristiana Voicu <cristiana.voicu@int=
el.com>)
['mtools', '4.0.18', 'N/A', 'GPLv3', 'optional', 'http://www.gnu.org/softwa=
re/mtools/', 'r0', 'autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ', 'None', 'None', 'Mtools is a collection of =
utilities to access MS-DOS disks from GNU and Unix without mounting them.',=
 'ErrHostNoDir:/gnu/mtools/:-:mtools-4.0.18.tar.bz2:ftp.gnu.org/gnu/mtools/=
mtools-4.0.18.tar.bz2', 'N/A', 'ftp://ftp.gnu.org/gnu/mtools/mtools-4.0.18.=
tar.bz2', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (mtools,4.0.18,N/A,GPLv3,optional,r0,None,http://www.gnu.org/softw=
are/mtools/,None,ErrHostNoDir:/gnu/mtools/:-:mtools-4.0.18.tar.bz2:ftp.gnu.=
org/gnu/mtools/mtools-4.0.18.tar.bz2,autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  ,Mtools is a collection of ut=
ilities to access MS-DOS disks from GNU and Unix without mounting them.,N/A=
,ftp://ftp.gnu.org/gnu/mtools/mtools-4.0.18.tar.bz2,Paul Eggleton <paul.egg=
leton@linux.intel.com>)
['libxml-simple-perl', '2.20', 'N/A', 'Artistic-1.0 | GPL-1.0', 'libs', 'ht=
tp://search.cpan.org/~markov/XML-LibXML-Simple-0.93/lib/XML/LibXML/Simple.p=
od', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc   libxml-parser-perl perl perl-native', 'None', 'None', 'Th=
e XML::Simple Perl module provides a simple API layer on top of an underlyi=
ng XML parsing module to maintain XML files (especially configuration files=
). It is a blunt rewrite of XML::Simple (by Grant McLean) to use the XML::L=
ibXML parser for XML structures, where the original uses plain Perl or SAX =
parsers.', 'ErrHostNoDir:/modules/by-module/XML/:-:XML-Simple-2.20.tar.gz:w=
ww.cpan.org/modules/by-module/XML/XML-Simple-2.20.tar.gz', 'N/A', 'http://w=
ww.cpan.org/modules/by-module/XML/XML-Simple-2.20.tar.gz', 'Saul Wold <sgw@=
linux.intel.com>', 'None']
inserted (libxml-simple-perl,2.20,N/A,Artistic-1.0 | GPL-1.0,libs,r0,None,h=
ttp://search.cpan.org/~markov/XML-LibXML-Simple-0.93/lib/XML/LibXML/Simple.=
pod,None,ErrHostNoDir:/modules/by-module/XML/:-:XML-Simple-2.20.tar.gz:www.=
cpan.org/modules/by-module/XML/XML-Simple-2.20.tar.gz, virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   libxml-parser-p=
erl perl perl-native,The XML::Simple Perl module provides a simple API laye=
r on top of an underlying XML parsing module to maintain XML files (especia=
lly configuration files). It is a blunt rewrite of XML::Simple (by Grant Mc=
Lean) to use the XML::LibXML parser for XML structures, where the original =
uses plain Perl or SAX parsers.,N/A,http://www.cpan.org/modules/by-module/X=
ML/XML-Simple-2.20.tar.gz,Saul Wold <sgw@linux.intel.com>)
['cups', '1.7.1', 'N/A', 'GPLv2 & LGPLv2', 'console/utils', '', 'r0', 'auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  gnutls libpng jpeg dbus dbus-glib zlib libusb avahi', 'None', 'None', =
'An Internet printing system for Unix.', 'ErrHostNoDir:/software/1.7.1/:1.7=
=2E1:cups-1.7.1-source.tar.bz2:www.cups.org/software/1.7.1/cups-1.7.1-sourc=
e.tar.bz2', '1.6.2', 'http://www.cups.org/software/1.7.1/cups-1.7.1-source.=
tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (cups,1.7.1,N/A,GPLv2 & LGPLv2,console/utils,r0,None,,None,ErrHost=
NoDir:/software/1.7.1/:1.7.1:cups-1.7.1-source.tar.bz2:www.cups.org/softwar=
e/1.7.1/cups-1.7.1-source.tar.bz2,autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  gnutls libpng jpeg dbus dbus-gli=
b zlib libusb avahi,An Internet printing system for Unix.,1.6.2,http://www.=
cups.org/software/1.7.1/cups-1.7.1-source.tar.bz2,Saul Wold <sgw@linux.inte=
l.com>)
['mesa', '9.2.5', 'N/A', 'MIT', 'x11', 'http://mesa3d.org', 'r0', 'pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  expat makedepend-native fl=
ex-native bison-native udev  python-native   dri2proto libdrm wayland xf86d=
riproto glproto virtual/libx11 libxext libxxf86vm libxdamage libxfixes', 'h=
ttps://bugs.freedesktop.org', '2', 'Mesa is an open-source implementation o=
f the OpenGL specification - a system for rendering interactive 3D graphics=
=2E  A variety of device drivers allows Mesa to be used in many different e=
nvironments ranging from software emulation to complete hardware accelerati=
on for modern GPUs. Mesa is used as part of the overall Direct Rendering In=
frastructure and X.org environment.', 'ErrHostNoDir:/pub/mesa/9.2.5/:9.2.5:=
MesaLib-9.2.5.tar.bz2:ftp.freedesktop.org/pub/mesa/9.2.5/MesaLib-9.2.5.tar.=
bz2', 'N/A', 'ftp://ftp.freedesktop.org/pub/mesa/9.2.5/MesaLib-9.2.5.tar.bz=
2', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (mesa,9.2.5,N/A,MIT,x11,r0,2,http://mesa3d.org,https://bugs.freede=
sktop.org,ErrHostNoDir:/pub/mesa/9.2.5/:9.2.5:MesaLib-9.2.5.tar.bz2:ftp.fre=
edesktop.org/pub/mesa/9.2.5/MesaLib-9.2.5.tar.bz2,pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native virt=
ual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  expat makedepend-native flex-native bison-n=
ative udev  python-native   dri2proto libdrm wayland xf86driproto glproto v=
irtual/libx11 libxext libxxf86vm libxdamage libxfixes,Mesa is an open-sourc=
e implementation of the OpenGL specification - a system for rendering inter=
active 3D graphics.  A variety of device drivers allows Mesa to be used in =
many different environments ranging from software emulation to complete har=
dware acceleration for modern GPUs. Mesa is used as part of the overall Dir=
ect Rendering Infrastructure and X.org environment.,N/A,ftp://ftp.freedeskt=
op.org/pub/mesa/9.2.5/MesaLib-9.2.5.tar.bz2,Valentin Popa <valentin.popa@in=
tel.com>)
['gstreamer1.0-omx', '1.0.0', 'N/A', 'LGPLv2.1', 'multimedia', 'http://www.=
gstreamer.net/', 'r1', 'pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  gstreamer1.0 gstreamer1.0-plugins-base', 'None', 'None', 'OpenMAX IL =
plugins for GStreamer.', 'ErrHostNoDir:/src/gst-omx/:-:gst-omx-1.0.0.tar.xz=
:gstreamer.freedesktop.org/src/gst-omx/gst-omx-1.0.0.tar.xz', 'N/A', 'http:=
//gstreamer.freedesktop.org/src/gst-omx/gst-omx-1.0.0.tar.xz', 'None', 'Non=
e']
inserted (gstreamer1.0-omx,1.0.0,N/A,LGPLv2.1,multimedia,r1,None,http://www=
=2Egstreamer.net/,None,ErrHostNoDir:/src/gst-omx/:-:gst-omx-1.0.0.tar.xz:gs=
treamer.freedesktop.org/src/gst-omx/gst-omx-1.0.0.tar.xz,pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugins-ba=
se,OpenMAX IL plugins for GStreamer.,N/A,http://gstreamer.freedesktop.org/s=
rc/gst-omx/gst-omx-1.0.0.tar.xz,None)
['gcc-cross-initial', '4.8.2', 'N/A', 'GPL-3.0-with-GCC-exception & GPLv3',=
 'devel', 'http://www.gnu.org/software/gcc/', 'r0', '  virtual/i586-poky-li=
nux-binutils mpfr-native gmp-native libmpc-native zlib-native', 'None', 'No=
ne', 'GNU cc and gcc C compilers.', 'ErrHostNoDir:/gnu/gcc/4.8.2/:gcc-4.8.2=
:gcc-4.8.2.tar.bz2:ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2', 'N/A',=
 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2', 'Laurentiu Palcu =
<laurentiu.palcu@intel.com>', 'None']
inserted (gcc-cross-initial,4.8.2,N/A,GPL-3.0-with-GCC-exception & GPLv3,de=
vel,r0,None,http://www.gnu.org/software/gcc/,None,ErrHostNoDir:/gnu/gcc/4.8=
=2E2/:gcc-4.8.2:gcc-4.8.2.tar.bz2:ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.t=
ar.bz2,  virtual/i586-poky-linux-binutils mpfr-native gmp-native libmpc-nat=
ive zlib-native,GNU cc and gcc C compilers.,N/A,ftp://ftp.gnu.org/gnu/gcc/g=
cc-4.8.2/gcc-4.8.2.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['systemtap-uprobes', '2.5+gitAUTOINC+ae91e3d552', '2.5+gitAUTOINC+996ca2f'=
, 'GPLv2', 'base', '', 'r1', 'virtual/gettext gettext-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  systemtap=
 virtual/kernel', 'None', 'None', 'UProbes kernel module for SystemTap.', '=
UPDATE', 'N/A', 'git://sourceware.org/git/systemtap.git', 'Tom Zanussi <tom=
=2Ezanussi@intel.com>', 'None']
inserted (systemtap-uprobes,2.5+gitAUTOINC+ae91e3d552,2.5+gitAUTOINC+996ca2=
f,GPLv2,base,r1,None,,None,UPDATE,virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  syste=
mtap virtual/kernel,UProbes kernel module for SystemTap.,N/A,git://sourcewa=
re.org/git/systemtap.git,Tom Zanussi <tom.zanussi@intel.com>)
['quilt', '0.61', 'N/A', 'GPLv2', 'devel', 'http://savannah.nongnu.org/proj=
ects/quilt/', 'r0', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'No=
ne', 'Tool for working with series of patches.', 'ErrHostNoDir:/releases/qu=
ilt/:-:quilt-0.61.tar.gz:download.savannah.gnu.org/releases/quilt/quilt-0.6=
1.tar.gz', 'N/A', 'http://download.savannah.gnu.org/releases/quilt/quilt-0.=
61.tar.gz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (quilt,0.61,N/A,GPLv2,devel,r0,None,http://savannah.nongnu.org/pro=
jects/quilt/,None,ErrHostNoDir:/releases/quilt/:-:quilt-0.61.tar.gz:downloa=
d.savannah.gnu.org/releases/quilt/quilt-0.61.tar.gz,autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native virtual/gettext get=
text-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  ,Tool for working with series of patches.,N/A,http://downl=
oad.savannah.gnu.org/releases/quilt/quilt-0.61.tar.gz,Chong Lu <Chong.Lu@wi=
ndriver.com>)
['gcc-runtime', '4.8.2', 'N/A', 'GPL-3.0-with-GCC-exception & GPLv3', 'deve=
l', 'http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automake-nat=
ive libtool-native gnu-config-native   virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-g++ libgcc', 'None', 'None', 'GNU cc and gcc C compilers.',=
 'ErrHostNoDir:/gnu/gcc/4.8.2/:gcc-4.8.2:gcc-4.8.2.tar.bz2:ftp.gnu.org/gnu/=
gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.8=
=2E2/gcc-4.8.2.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (gcc-runtime,4.8.2,N/A,GPL-3.0-with-GCC-exception & GPLv3,devel,r0=
,None,http://www.gnu.org/software/gcc/,None,ErrHostNoDir:/gnu/gcc/4.8.2/:gc=
c-4.8.2:gcc-4.8.2.tar.bz2:ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2,a=
utoconf-native automake-native libtool-native gnu-config-native   virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-g++ libgcc,GNU cc and gcc C comp=
ilers.,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2,Saul Wold =
<sgw@linux.intel.com>)
['pkgconfig', '0.28', 'N/A', 'GPLv2+', 'console/utils', 'http://pkg-config.=
freedesktop.org/wiki/', 'r0', 'autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  glib-2.0', 'http://bugs.freedesktop=
=2Eorg/buglist.cgi?product=3Dpkg-config', 'None', 'pkg-config is a helper t=
ool used when compiling applications and libraries. It helps determined the=
 correct compiler/link options.  It is also language-agnostic.', 'ErrHostNo=
Dir:/releases/:-:pkg-config-0.28.tar.gz:pkgconfig.freedesktop.org/releases/=
pkg-config-0.28.tar.gz', 'N/A', 'http://pkgconfig.freedesktop.org/releases/=
pkg-config-0.28.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'removes glib-c=
onf, adds circular depends']
inserted (pkgconfig,0.28,N/A,GPLv2+,console/utils,r0,None,http://pkg-config=
=2Efreedesktop.org/wiki/,http://bugs.freedesktop.org/buglist.cgi?product=3D=
pkg-config,ErrHostNoDir:/releases/:-:pkg-config-0.28.tar.gz:pkgconfig.freed=
esktop.org/releases/pkg-config-0.28.tar.gz,autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0,pkg-config is =
a helper tool used when compiling applications and libraries. It helps dete=
rmined the correct compiler/link options.  It is also language-agnostic.,N/=
A,http://pkgconfig.freedesktop.org/releases/pkg-config-0.28.tar.gz,Saul Wol=
d <sgw@linux.intel.com>)
['kconfig-frontends', '3.12.0.0', 'N/A', 'GPL-2.0', 'devel', 'http://ymorin=
=2Eis-a-geek.org/projects/kconfig-frontends', 'r0', 'autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   ncurses flex=
 bison gperf-native pkgconfig-native', 'None', 'None', 'The kconfig-fronten=
ds project aims at centralising the effort of keeping an up-to-date, out-of=
-tree, packaging of the kconfig infrastructure, ready for use by third-part=
y projects. The kconfig-frontends package provides the kconfig parser, as w=
ell as all the frontends', 'ErrHostNoDir:/download/kconfig-frontends/:-:kco=
nfig-frontends-3.12.0.0.tar.xz:ymorin.is-a-geek.org/download/kconfig-fronte=
nds/kconfig-frontends-3.12.0.0.tar.xz', 'N/A', 'http://ymorin.is-a-geek.org=
/download/kconfig-frontends/kconfig-frontends-3.12.0.0.tar.xz', 'Saul Wold =
<sgw@linux.intel.com>', 'PRS Reports Incorrectly']
inserted (kconfig-frontends,3.12.0.0,N/A,GPL-2.0,devel,r0,None,http://ymori=
n.is-a-geek.org/projects/kconfig-frontends,None,ErrHostNoDir:/download/kcon=
fig-frontends/:-:kconfig-frontends-3.12.0.0.tar.xz:ymorin.is-a-geek.org/dow=
nload/kconfig-frontends/kconfig-frontends-3.12.0.0.tar.xz,autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   ncurses=
 flex bison gperf-native pkgconfig-native,The kconfig-frontends project aim=
s at centralising the effort of keeping an up-to-date, out-of-tree, packagi=
ng of the kconfig infrastructure, ready for use by third-party projects. Th=
e kconfig-frontends package provides the kconfig parser, as well as all the=
 frontends,N/A,http://ymorin.is-a-geek.org/download/kconfig-frontends/kconf=
ig-frontends-3.12.0.0.tar.xz,Saul Wold <sgw@linux.intel.com>)
['xorg-minimal-fonts', '1.0', 'INVALID', 'PD', 'x11/fonts', 'http://www.x.o=
rg', 'r2', ' ', 'None', '1', 'Minimal fonts required by X.org.', 'MATCH', '=
N/A', 'file://misc', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xorg-minimal-fonts,1.0,INVALID,PD,x11/fonts,r2,1,http://www.x.org=
,None,MATCH, ,Minimal fonts required by X.org.,N/A,file://misc,Laurentiu Pa=
lcu <laurentiu.palcu@intel.com>)
['libxpm', '3.5.11', 'N/A', 'BSD', 'x11/libs', 'http://www.x.org', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros libxext=
 libsm libxt', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg',=
 '1', 'libXpm provides support and common operation for the XPM pixmap form=
at, which is commonly used in legacy X applications.  XPM is an extension o=
f the monochrome XBM bitmap specificied in the X protocol.', 'ErrHostNoDir:=
/releases/individual/lib/:-:libXpm-3.5.11.tar.bz2:xorg.freedesktop.org/rele=
ases/individual/lib/libXpm-3.5.11.tar.bz2', 'N/A', 'http://xorg.freedesktop=
=2Eorg/releases/individual/lib/libXpm-3.5.11.tar.bz2', 'Ross Burton <ross.b=
urton@intel.com>', 'None']
inserted (libxpm,3.5.11,N/A,BSD,x11/libs,r0,1,http://www.x.org,https://bugs=
=2Efreedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/indi=
vidual/lib/:-:libXpm-3.5.11.tar.bz2:xorg.freedesktop.org/releases/individua=
l/lib/libXpm-3.5.11.tar.bz2,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native virtual/gettext gettext-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  util-macros libxext libsm libxt,libXpm provides support and commo=
n operation for the XPM pixmap format, which is commonly used in legacy X a=
pplications.  XPM is an extension of the monochrome XBM bitmap specificied =
in the X protocol.,N/A,http://xorg.freedesktop.org/releases/individual/lib/=
libXpm-3.5.11.tar.bz2,Ross Burton <ross.burton@intel.com>)
['connman-conf', '1.0', 'INVALID', 'GPLv2', 'base', '', 'r2', ' virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'Non=
e', 'None', 'This is the ConnMan configuration to set up a Wired network in=
terface for a qemu machine.', 'MATCH', 'N/A', 'file://wired.config', 'None'=
, 'None']
inserted (connman-conf,1.0,INVALID,GPLv2,base,r2,None,,None,MATCH, virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Thi=
s is the ConnMan configuration to set up a Wired network interface for a qe=
mu machine.,N/A,file://wired.config,None)
['libpcre', '8.34', 'N/A', 'BSD', 'devel', 'http://www.pcre.org', 'r0', 'au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   bzip2 zlib', 'None', 'None', 'The PCRE library is a set of function=
s that implement regular expression pattern matching using the same syntax =
and semantics as Perl 5. PCRE has its own native API, as well as a set of w=
rapper functions that correspond to the POSIX regular expression API.', 'Er=
rHostNoDir:/project/pcre/pcre/8.34/:8.34:pcre-8.34.tar.bz2:downloads.source=
forge.net/project/pcre/pcre/8.34/pcre-8.34.tar.bz2', 'N/A', 'http://downloa=
ds.sourceforge.net/project/pcre/pcre/8.34/pcre-8.34.tar.bz2', 'Chong Lu <Ch=
ong.Lu@windriver.com>', 'None']
inserted (libpcre,8.34,N/A,BSD,devel,r0,None,http://www.pcre.org,None,ErrHo=
stNoDir:/project/pcre/pcre/8.34/:8.34:pcre-8.34.tar.bz2:downloads.sourcefor=
ge.net/project/pcre/pcre/8.34/pcre-8.34.tar.bz2,autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   bzip2 zlib,The PC=
RE library is a set of functions that implement regular expression pattern =
matching using the same syntax and semantics as Perl 5. PCRE has its own na=
tive API, as well as a set of wrapper functions that correspond to the POSI=
X regular expression API.,N/A,http://downloads.sourceforge.net/project/pcre=
/pcre/8.34/pcre-8.34.tar.bz2,Chong Lu <Chong.Lu@windriver.com>)
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
['lighttpd', '1.4.33', 'N/A', 'BSD', 'net', 'http://www.lighttpd.net/', 'r1=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib libpcre u=
pdate-rc.d-native', 'http://redmine.lighttpd.net/projects/lighttpd/issues',=
 'None', 'Lightweight high-performance web server.', 'ErrHostNoDir:/lighttp=
d/releases-1.4.x/:-:lighttpd-1.4.33.tar.bz2:download.lighttpd.net/lighttpd/=
releases-1.4.x/lighttpd-1.4.33.tar.bz2', 'N/A', 'http://download.lighttpd.n=
et/lighttpd/releases-1.4.x/lighttpd-1.4.33.tar.bz2', 'Valentin Popa <valent=
in.popa@intel.com>', 'None']
inserted (lighttpd,1.4.33,N/A,BSD,net,r1,None,http://www.lighttpd.net/,http=
://redmine.lighttpd.net/projects/lighttpd/issues,ErrHostNoDir:/lighttpd/rel=
eases-1.4.x/:-:lighttpd-1.4.33.tar.bz2:download.lighttpd.net/lighttpd/relea=
ses-1.4.x/lighttpd-1.4.33.tar.bz2,pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native virtual/gettext gett=
ext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  zlib libpcre update-rc.d-native,Lightweight high-performanc=
e web server.,N/A,http://download.lighttpd.net/lighttpd/releases-1.4.x/ligh=
ttpd-1.4.33.tar.bz2,Valentin Popa <valentin.popa@intel.com>)
['latencytop', '0.5', 'N/A', 'GPLv2', 'base', 'http://www.latencytop.org/',=
 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  virtual/libintl ncurses glib-2.0  gtk+', 'None', 'None', 'Linu=
x tool for measuring and fixing latency.', 'ErrHostNoDir:/download/:-:laten=
cytop-0.5.tar.gz:www.latencytop.org/download/latencytop-0.5.tar.gz', 'N/A',=
 'http://www.latencytop.org/download/latencytop-0.5.tar.gz', 'Laurentiu Pal=
cu <laurentiu.palcu@intel.com>', 'None']
inserted (latencytop,0.5,N/A,GPLv2,base,r3,None,http://www.latencytop.org/,=
None,ErrHostNoDir:/download/:-:latencytop-0.5.tar.gz:www.latencytop.org/dow=
nload/latencytop-0.5.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  virtual/libintl ncurses glib-2.0  gtk+,Lin=
ux tool for measuring and fixing latency.,N/A,http://www.latencytop.org/dow=
nload/latencytop-0.5.tar.gz,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['lrzsz', '0.12.20', 'N/A', 'GPLv2+', 'console/network', 'http://www.ohse.d=
e/uwe/software/lrzsz.html', 'r6', 'autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native virtual/gettext gettext-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
 virtual/update-alternatives', 'None', 'None', "Lrzsz is a cosmetically mod=
ified zmodem/ymodem/xmodem package built from the public-domain version of =
Chuck Forsberg's rzsz package. These programs use error correcting protocol=
s ({z,x,y}modem) to send (sz, sx, sb) and receive (rz, rx, rb) files over a=
 dial-in serial port from a variety of programs running under various opera=
ting systems. ", 'ErrHostNoDir:/uwe/releases/:-:lrzsz-0.12.20.tar.gz:www.oh=
se.de/uwe/releases/lrzsz-0.12.20.tar.gz', 'N/A', 'http://www.ohse.de/uwe/re=
leases/lrzsz-0.12.20.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', =
'None']
inserted (lrzsz,0.12.20,N/A,GPLv2+,console/network,r6,None,http://www.ohse.=
de/uwe/software/lrzsz.html,None,ErrHostNoDir:/uwe/releases/:-:lrzsz-0.12.20=
=2Etar.gz:www.ohse.de/uwe/releases/lrzsz-0.12.20.tar.gz,autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native virtual/gettext=
 gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc   virtual/update-alternatives,Lrzsz is a cosmetically m=
odified zmodem/ymodem/xmodem package built from the public-domain version o=
f Chuck Forsberg's rzsz package. These programs use error correcting protoc=
ols ({z,x,y}modem) to send (sz, sx, sb) and receive (rz, rx, rb) files over=
 a dial-in serial port from a variety of programs running under various ope=
rating systems. ,N/A,http://www.ohse.de/uwe/releases/lrzsz-0.12.20.tar.gz,C=
ristian Iorga <cristian.iorga@intel.com>)
['hdparm', '9.43', 'N/A', 'BSD', 'console/utils', '', 'r0', ' virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/=
update-alternatives', 'None', 'None', 'hdparm is a Linux shell utility for =
viewing and manipulating various IDE drive and driver parameters.', 'ErrHos=
tNoDir:/hdparm/:-:hdparm-9.43.tar.gz:downloads.sourceforge.net/hdparm/hdpar=
m-9.43.tar.gz', 'N/A', 'http://downloads.sourceforge.net/hdparm/hdparm-9.43=
=2Etar.gz', 'Cristiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (hdparm,9.43,N/A,BSD,console/utils,r0,None,,None,ErrHostNoDir:/hdp=
arm/:-:hdparm-9.43.tar.gz:downloads.sourceforge.net/hdparm/hdparm-9.43.tar.=
gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc   virtual/update-alternatives,hdparm is a Linux shell utility for vi=
ewing and manipulating various IDE drive and driver parameters.,N/A,http://=
downloads.sourceforge.net/hdparm/hdparm-9.43.tar.gz,Cristiana Voicu <cristi=
ana.voicu@intel.com>)
['xf86-input-vmmouse', '13.0.0', 'N/A', 'MIT-X', 'x11/drivers', 'http://www=
=2Ex.org', 'r21.0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randr=
proto util-macros inputproto kbproto ', 'https://bugs.freedesktop.org', '2'=
, "The vmmouse driver enables support for the special VMMouse protocol that=
 is provided by VMware virtual machines to give absolute pointer positionin=
g. The vmmouse driver is capable of falling back to the standard 'mouse' dr=
iver if a VMware virtual machine is not detected.", 'ErrHostNoDir:/releases=
/individual/driver/:-:xf86-input-vmmouse-13.0.0.tar.bz2:xorg.freedesktop.or=
g/releases/individual/driver/xf86-input-vmmouse-13.0.0.tar.bz2', 'N/A', 'ht=
tp://xorg.freedesktop.org/releases/individual/driver/xf86-input-vmmouse-13.=
0.0.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86-input-vmmouse,13.0.0,N/A,MIT-X,x11/drivers,r21.0,2,http://ww=
w.x.org,https://bugs.freedesktop.org,ErrHostNoDir:/releases/individual/driv=
er/:-:xf86-input-vmmouse-13.0.0.tar.bz2:xorg.freedesktop.org/releases/indiv=
idual/driver/xf86-input-vmmouse-13.0.0.tar.bz2,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  vi=
rtual/xserver xproto randrproto util-macros inputproto kbproto ,The vmmouse=
 driver enables support for the special VMMouse protocol that is provided b=
y VMware virtual machines to give absolute pointer positioning. The vmmouse=
 driver is capable of falling back to the standard 'mouse' driver if a VMwa=
re virtual machine is not detected.,N/A,http://xorg.freedesktop.org/release=
s/individual/driver/xf86-input-vmmouse-13.0.0.tar.bz2,Laurentiu Palcu <laur=
entiu.palcu@intel.com>)
['libevent', '2.0.21', 'N/A', 'BSD', 'libs', 'http://libevent.org/', 'r1', =
'autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  ', 'http://sourceforge.net/tracker/?group_id=3D50884&atid=3D46132=
2', 'None', 'An asynchronous event notification library.', 'ErrHostNoDir:/d=
ownloads/libevent/libevent/:-:libevent-2.0.21-stable.tar.gz:github.com/down=
loads/libevent/libevent/libevent-2.0.21-stable.tar.gz', 'N/A', 'http://gith=
ub.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz', 'Paul Eg=
gleton <paul.eggleton@linux.intel.com>', 'None']
inserted (libevent,2.0.21,N/A,BSD,libs,r1,None,http://libevent.org/,http://=
sourceforge.net/tracker/?group_id=3D50884&atid=3D461322,ErrHostNoDir:/downl=
oads/libevent/libevent/:-:libevent-2.0.21-stable.tar.gz:github.com/download=
s/libevent/libevent/libevent-2.0.21-stable.tar.gz,autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,An asynchronous=
 event notification library.,N/A,http://github.com/downloads/libevent/libev=
ent/libevent-2.0.21-stable.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.=
com>)
['gtk-theme-torturer', '0.0.0+gitAUTOINC+99962ae39b', '0.0.0+gitAUTOINC+999=
62ae', 'GPLv2', 'devel', 'http://wiki.laptop.org/go/GTK_for_OLPC', 'r0', ' =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  gtk+', 'None', 'None', 'GTK+ Theme benchmark program.', 'MATCH', 'N/A',=
 'git://dev.laptop.org/projects/soc-gtk/', 'Valentin Popa <valentin.popa@in=
tel.com>', 'None']
inserted (gtk-theme-torturer,0.0.0+gitAUTOINC+99962ae39b,0.0.0+gitAUTOINC+9=
9962ae,GPLv2,devel,r0,None,http://wiki.laptop.org/go/GTK_for_OLPC,None,MATC=
H, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  gtk+,GTK+ Theme benchmark program.,N/A,git://dev.laptop.org/projects=
/soc-gtk/,Valentin Popa <valentin.popa@intel.com>)
['gst-ffmpeg', '0.10.13', 'N/A', 'GPLv2+ & LGPLv2+ & ( (GPLv2+ & LGPLv2.1+)=
 | (GPLv3+ & LGPLv3+) )', 'multimedia', 'http://www.gstreamer.net/', 'r8', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  gstreamer gst-plugins-base zlib bzip2 yasm-nativ=
e libav', 'None', 'None', 'FFmpeg-based GStreamer plug-in.', 'ErrHostNoDir:=
/src/gst-ffmpeg/:-:gst-ffmpeg-0.10.13.tar.bz2:gstreamer.freedesktop.org/src=
/gst-ffmpeg/gst-ffmpeg-0.10.13.tar.bz2', 'N/A', 'http://gstreamer.freedeskt=
op.org/src/gst-ffmpeg/gst-ffmpeg-0.10.13.tar.bz2', 'Cristian Iorga <cristia=
n.iorga@intel.com>', 'not compatible with gst-fluendo 0.10.x']
inserted (gst-ffmpeg,0.10.13,N/A,GPLv2+ & LGPLv2+ & ( (GPLv2+ & LGPLv2.1+) =
| (GPLv3+ & LGPLv3+) ),multimedia,r8,None,http://www.gstreamer.net/,None,Er=
rHostNoDir:/src/gst-ffmpeg/:-:gst-ffmpeg-0.10.13.tar.bz2:gstreamer.freedesk=
top.org/src/gst-ffmpeg/gst-ffmpeg-0.10.13.tar.bz2,pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 gstreamer gst-plugins-base zlib bzip2 yasm-native libav,FFmpeg-based GStre=
amer plug-in.,N/A,http://gstreamer.freedesktop.org/src/gst-ffmpeg/gst-ffmpe=
g-0.10.13.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['libsdl', '1.2.15', 'N/A', 'LGPLv2.1', 'libs', 'http://www.libsdl.org', 'r=
3', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc              virtual/libgl libglu            =
virtual/libx11 libxext libxrandr libxrender            tslib alsa-lib', 'ht=
tp://bugzilla.libsdl.org/', 'None', 'Simple DirectMedia Layer is a cross-pl=
atform multimedia library designed to provide low level access to audio, ke=
yboard, mouse, joystick, 3D hardware via OpenGL, and 2D video framebuffer.'=
, 'ErrHostNoDir:/release/:-:SDL-1.2.15.tar.gz:www.libsdl.org/release/SDL-1.=
2.15.tar.gz', 'N/A', 'http://www.libsdl.org/release/SDL-1.2.15.tar.gz', 'Ka=
i Kang <kai.kang@windriver.com>', 'None']
inserted (libsdl,1.2.15,N/A,LGPLv2.1,libs,r3,None,http://www.libsdl.org,htt=
p://bugzilla.libsdl.org/,ErrHostNoDir:/release/:-:SDL-1.2.15.tar.gz:www.lib=
sdl.org/release/SDL-1.2.15.tar.gz,pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc              vir=
tual/libgl libglu            virtual/libx11 libxext libxrandr libxrender   =
         tslib alsa-lib,Simple DirectMedia Layer is a cross-platform multim=
edia library designed to provide low level access to audio, keyboard, mouse=
, joystick, 3D hardware via OpenGL, and 2D video framebuffer.,N/A,http://ww=
w.libsdl.org/release/SDL-1.2.15.tar.gz,Kai Kang <kai.kang@windriver.com>)
['dpkg', '1.17.4', 'N/A', 'GPLv2.0+', 'base', '', 'r0', 'pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  zlib bzip2 perl ncurses perl-native'=
, 'None', 'None', 'Package maintenance system from Debian.', 'ErrHostNoDir:=
/debian/pool/main/d/dpkg/:-:dpkg_1.17.4.tar.xz:ftp.debian.org/debian/pool/m=
ain/d/dpkg/dpkg_1.17.4.tar.xz', 'N/A', 'ftp://ftp.debian.org/debian/pool/ma=
in/d/dpkg/dpkg_1.17.4.tar.xz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (dpkg,1.17.4,N/A,GPLv2.0+,base,r0,None,,None,ErrHostNoDir:/debian/=
pool/main/d/dpkg/:-:dpkg_1.17.4.tar.xz:ftp.debian.org/debian/pool/main/d/dp=
kg/dpkg_1.17.4.tar.xz,pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  zlib bzip2 perl ncurses perl-native,Package maintenance system from Deb=
ian.,N/A,ftp://ftp.debian.org/debian/pool/main/d/dpkg/dpkg_1.17.4.tar.xz,Sa=
ul Wold <sgw@linux.intel.com>)
['beecrypt', '4.2.1', 'N/A', 'GPLv2 & LGPLv2.1', 'base', 'http://sourceforg=
e.net/projects/beecrypt', 'r3', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'A general-pur=
pose cryptography library.', 'ErrHostNoDir:/beecrypt/:-:beecrypt-4.2.1.tar.=
gz:downloads.sourceforge.net/beecrypt/beecrypt-4.2.1.tar.gz', 'N/A', 'http:=
//downloads.sourceforge.net/beecrypt/beecrypt-4.2.1.tar.gz', 'Chong Lu <Cho=
ng.Lu@windriver.com>', 'None']
inserted (beecrypt,4.2.1,N/A,GPLv2 & LGPLv2.1,base,r3,None,http://sourcefor=
ge.net/projects/beecrypt,None,ErrHostNoDir:/beecrypt/:-:beecrypt-4.2.1.tar.=
gz:downloads.sourceforge.net/beecrypt/beecrypt-4.2.1.tar.gz,autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,A gen=
eral-purpose cryptography library.,N/A,http://downloads.sourceforge.net/bee=
crypt/beecrypt-4.2.1.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['pm-utils', '1.4.1', 'N/A', 'GPLv2', 'base', 'http://pm-utils.freedesktop.=
org/wiki/', 'r1', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native pkgconfig-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'Simple she=
ll command line tools to suspend and hibernate.', 'ErrHostNoDir:/releases/:=
-:pm-utils-1.4.1.tar.gz:pm-utils.freedesktop.org/releases/pm-utils-1.4.1.ta=
r.gz', 'N/A', 'http://pm-utils.freedesktop.org/releases/pm-utils-1.4.1.tar.=
gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (pm-utils,1.4.1,N/A,GPLv2,base,r1,None,http://pm-utils.freedesktop=
=2Eorg/wiki/,None,ErrHostNoDir:/releases/:-:pm-utils-1.4.1.tar.gz:pm-utils.=
freedesktop.org/releases/pm-utils-1.4.1.tar.gz,autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native pkgconfig-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,S=
imple shell command line tools to suspend and hibernate.,N/A,http://pm-util=
s.freedesktop.org/releases/pm-utils-1.4.1.tar.gz,Cristian Iorga <cristian.i=
orga@intel.com>)
['grep', '2.18', 'N/A', 'GPLv3', 'console/utils', 'http://savannah.gnu.org/=
projects/grep/', 'r0', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/up=
date-alternatives', 'http://savannah.gnu.org/bugs/?group=3Dgrep', 'None', '=
GNU grep utility.', 'ErrHostNoDir:/gnu/grep/:-:grep-2.18.tar.xz:ftp.gnu.org=
/gnu/grep/grep-2.18.tar.xz', 'N/A', 'ftp://ftp.gnu.org/gnu/grep/grep-2.18.t=
ar.xz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (grep,2.18,N/A,GPLv3,console/utils,r0,None,http://savannah.gnu.org=
/projects/grep/,http://savannah.gnu.org/bugs/?group=3Dgrep,ErrHostNoDir:/gn=
u/grep/:-:grep-2.18.tar.xz:ftp.gnu.org/gnu/grep/grep-2.18.tar.xz,autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native virtua=
l/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc   virtual/update-alternatives,GNU grep utility=
=2E,N/A,ftp://ftp.gnu.org/gnu/grep/grep-2.18.tar.xz,Chen Qi <Qi.Chen@windri=
ver.com>)
['guile', '2.0.9', 'N/A', 'GPLv3', 'devel', 'http://www.gnu.org/software/gu=
ile/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  libunistring bdwgc gm=
p libtool libffi guile-native libatomics-ops', 'None', 'None', "Guile is th=
e GNU Ubiquitous Intelligent Language for Extensions, the official extensio=
n language for the GNU operating system. Guile is a library designed to hel=
p programmers create flexible applications. Using Guile in an application a=
llows the application's functionality to be extended by users or other prog=
rammers with plug-ins, modules, or scripts. Guile provides what might be de=
scribed as 'practical software freedom,' making it possible for users to cu=
stomize an application to meet their needs without digging into the applica=
tion's internals.", 'ErrHostNoDir:/gnu/guile/:-:guile-2.0.9.tar.xz:ftp.gnu.=
org/gnu/guile/guile-2.0.9.tar.xz', 'N/A', 'ftp://ftp.gnu.org/gnu/guile/guil=
e-2.0.9.tar.xz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (guile,2.0.9,N/A,GPLv3,devel,r0,None,http://www.gnu.org/software/g=
uile/,None,ErrHostNoDir:/gnu/guile/:-:guile-2.0.9.tar.xz:ftp.gnu.org/gnu/gu=
ile/guile-2.0.9.tar.xz,autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libunistring=
 bdwgc gmp libtool libffi guile-native libatomics-ops,Guile is the GNU Ubiq=
uitous Intelligent Language for Extensions, the official extension language=
 for the GNU operating system. Guile is a library designed to help programm=
ers create flexible applications. Using Guile in an application allows the =
application's functionality to be extended by users or other programmers wi=
th plug-ins, modules, or scripts. Guile provides what might be described as=
 'practical software freedom,' making it possible for users to customize an=
 application to meet their needs without digging into the application's int=
ernals.,N/A,ftp://ftp.gnu.org/gnu/guile/guile-2.0.9.tar.xz,Chong Lu <Chong.=
Lu@windriver.com>)
['python-scons', '2.3.0', 'N/A', 'MIT', 'devel/python', '', 'r0', ' virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   py=
thon-native python  python-native ', 'None', 'None', 'Software Construction=
 tool (make/autotools replacement).', 'ErrHostNoDir:/scons/:-:scons-2.3.0.t=
ar.gz:downloads.sourceforge.net/scons/scons-2.3.0.tar.gz', 'N/A', 'http://d=
ownloads.sourceforge.net/scons/scons-2.3.0.tar.gz', 'Laurentiu Palcu <laure=
ntiu.palcu@intel.com>', 'None']
inserted (python-scons,2.3.0,N/A,MIT,devel/python,r0,None,,None,ErrHostNoDi=
r:/scons/:-:scons-2.3.0.tar.gz:downloads.sourceforge.net/scons/scons-2.3.0.=
tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc   python-native python  python-native ,Software Construction too=
l (make/autotools replacement).,N/A,http://downloads.sourceforge.net/scons/=
scons-2.3.0.tar.gz,Laurentiu Palcu <laurentiu.palcu@intel.com>)
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
['libglu', '9.0.0', 'N/A', 'MIT', 'x11', 'http://mesa3d.org', '0', 'pkgconf=
ig-native autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  virtual/libgl', 'https://bugs.freedesktop.org', '2', 'GL=
U is a utility toolkit used with OpenGL implementations', 'ErrHostNoDir:/pu=
b/mesa/glu/:-:glu-9.0.0.tar.bz2:ftp.freedesktop.org/pub/mesa/glu/glu-9.0.0.=
tar.bz2', 'N/A', 'ftp://ftp.freedesktop.org/pub/mesa/glu/glu-9.0.0.tar.bz2'=
, 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libglu,9.0.0,N/A,MIT,x11,0,2,http://mesa3d.org,https://bugs.freed=
esktop.org,ErrHostNoDir:/pub/mesa/glu/:-:glu-9.0.0.tar.bz2:ftp.freedesktop.=
org/pub/mesa/glu/glu-9.0.0.tar.bz2,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/libgl,=
GLU is a utility toolkit used with OpenGL implementations,N/A,ftp://ftp.fre=
edesktop.org/pub/mesa/glu/glu-9.0.0.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['libxv', '1.0.10', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros libxext videoproto', 'https://bug=
s.freedesktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'libXv provides an=
 X Window System client interface to the X Video extension to the X protoco=
l. The X Video extension allows for accelerated drawing of videos.  Hardwar=
e adaptors are exposed to clients, which may draw in a number of colourspac=
es, including YUV.', 'ErrHostNoDir:/releases/individual/lib/:-:libXv-1.0.10=
=2Etar.bz2:xorg.freedesktop.org/releases/individual/lib/libXv-1.0.10.tar.bz=
2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXv-1.0.1=
0.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (libxv,1.0.10,N/A,MIT-style,x11/libs,r0,None,http://www.x.org,http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/release=
s/individual/lib/:-:libXv-1.0.10.tar.bz2:xorg.freedesktop.org/releases/indi=
vidual/lib/libXv-1.0.10.tar.bz2,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros libxe=
xt videoproto,libXv provides an X Window System client interface to the X V=
ideo extension to the X protocol. The X Video extension allows for accelera=
ted drawing of videos.  Hardware adaptors are exposed to clients, which may=
 draw in a number of colourspaces, including YUV.,N/A,http://xorg.freedeskt=
op.org/releases/individual/lib/libXv-1.0.10.tar.bz2,Valentin Popa <valentin=
=2Epopa@intel.com>)
['python-mako', '0.9.1', 'N/A', 'MIT', 'devel/python', '', 'r0', ' virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   pyt=
hon-native python  python-native  python-distribute-native', 'None', 'None'=
, 'Templating library for Python.', 'ErrHostNoDir:/packages/source/M/Mako/:=
-:Mako-0.9.1.tar.gz:pypi.python.org/packages/source/M/Mako/Mako-0.9.1.tar.g=
z', 'N/A', 'https://pypi.python.org/packages/source/M/Mako/Mako-0.9.1.tar.g=
z', 'None', 'None']
inserted (python-mako,0.9.1,N/A,MIT,devel/python,r0,None,,None,ErrHostNoDir=
:/packages/source/M/Mako/:-:Mako-0.9.1.tar.gz:pypi.python.org/packages/sour=
ce/M/Mako/Mako-0.9.1.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc   python-native python  python-native  pyth=
on-distribute-native,Templating library for Python.,N/A,https://pypi.python=
=2Eorg/packages/source/M/Mako/Mako-0.9.1.tar.gz,None)
['pong-clock', '1.0', 'INVALID', 'GPLv2+', 'base', '', 'r0', ' virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/=
libx11 xdmcp xau', 'None', 'None', 'A clock combined with a game of pong.',=
 'MATCH', '1.0', 'file://pong-clock-no-flicker.c', 'Valentin Popa <valentin=
=2Epopa@intel.com>', 'None']
inserted (pong-clock,1.0,INVALID,GPLv2+,base,r0,None,,None,MATCH, virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtu=
al/libx11 xdmcp xau,A clock combined with a game of pong.,1.0,file://pong-c=
lock-no-flicker.c,Valentin Popa <valentin.popa@intel.com>)
['linux-yocto', '3.14+gitAUTOINC+928d7b2dda_0143c6ebb4', '3.14+gitAUTOINC+f=
cf0e4d', 'GPLv2', 'kernel', '', 'r0', '  xz-native bc-native virtual/i586-p=
oky-linux-binutils virtual/i586-poky-linux-gcc kmod-native depmodwrapper-cr=
oss', 'None', 'None', 'Yocto Kernel', 'UPDATE', 'N/A', 'git://git.yoctoproj=
ect.org/linux-yocto-3.14.git;bareclone=3D1;branch=3Dstandard/common-pc/base=
,meta;name=3Dmachine,meta', 'Darren Hart <dvhart@linux.intel.com>', 'None']
inserted (linux-yocto,3.14+gitAUTOINC+928d7b2dda_0143c6ebb4,3.14+gitAUTOINC=
+fcf0e4d,GPLv2,kernel,r0,None,,None,UPDATE,  xz-native bc-native virtual/i5=
86-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native depmodwrappe=
r-cross,Yocto Kernel,N/A,git://git.yoctoproject.org/linux-yocto-3.14.git;ba=
reclone=3D1;branch=3Dstandard/common-pc/base,meta;name=3Dmachine,meta,Darre=
n Hart <dvhart@linux.intel.com>)
['gtk-update-icon-cache-native', '3.4.4', 'N/A', 'LGPLv2 & LGPLv2+ & LGPLv2=
=2E1+', 'libs', '', 'r0', 'pkgconfig-native  gdk-pixbuf-native', 'None', 'N=
one', 'Just gtk-update-icon-cache built from GTK+ natively, for on-host pos=
tinst script execution.', 'ErrHostNoDir:/sources/gtk+/3.4/gtk+-3.4.4.tar.xz=
:3.4:-:download.gnome.org/sources/gtk+/3.4/gtk+-3.4.4.tar.xz', 'N/A', 'http=
://download.gnome.org/sources/gtk+/3.4/gtk+-3.4.4.tar.xz', 'Valentin Popa <=
valentin.popa@intel.com>', 'None']
inserted (gtk-update-icon-cache-native,3.4.4,N/A,LGPLv2 & LGPLv2+ & LGPLv2.=
1+,libs,r0,None,,None,ErrHostNoDir:/sources/gtk+/3.4/gtk+-3.4.4.tar.xz:3.4:=
-:download.gnome.org/sources/gtk+/3.4/gtk+-3.4.4.tar.xz,pkgconfig-native  g=
dk-pixbuf-native,Just gtk-update-icon-cache built from GTK+ natively, for o=
n-host postinst script execution.,N/A,http://download.gnome.org/sources/gtk=
+/3.4/gtk+-3.4.4.tar.xz,Valentin Popa <valentin.popa@intel.com>)
['builder', '0.1', 'INVALID', 'MIT', 'x11', '', 'r6', ' virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   base-passwd sh=
adow-native shadow-sysroot shadow', 'None', 'None', 'This recipe create a n=
ew user named builder, who is used for specific jobs like building. The tas=
k can be auto started via mini X', 'MATCH', 'N/A', 'file://builder_hob_star=
t.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (builder,0.1,INVALID,MIT,x11,r6,None,,None,MATCH, virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   base-passwd=
 shadow-native shadow-sysroot shadow,This recipe create a new user named bu=
ilder, who is used for specific jobs like building. The task can be auto st=
arted via mini X,N/A,file://builder_hob_start.sh,Saul Wold <sgw@linux.intel=
=2Ecom>)
['matchbox-desktop-sato', '0.1+gitAUTOINC+810b0b08eb', '0.1+gitAUTOINC+810b=
0b0', 'GPLv2', 'x11', 'http://matchbox-project.org', 'r1', 'pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  ', 'http://bugzilla.yoctoproject.org/', 'None', 'Matchbox deskto=
p folders for the Sato environment.', 'MATCH', 'N/A', 'git://git.yoctoproje=
ct.org/matchbox-desktop-sato', 'Valentin Popa <valentin.popa@intel.com>', '=
None']
inserted (matchbox-desktop-sato,0.1+gitAUTOINC+810b0b08eb,0.1+gitAUTOINC+81=
0b0b0,GPLv2,x11,r1,None,http://matchbox-project.org,http://bugzilla.yoctopr=
oject.org/,MATCH,pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ,Matchbox desktop folders for th=
e Sato environment.,N/A,git://git.yoctoproject.org/matchbox-desktop-sato,Va=
lentin Popa <valentin.popa@intel.com>)
['xf86-input-mouse', '1.9.0', 'N/A', 'MIT-X', 'x11/drivers', 'http://www.x.=
org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randrproto ut=
il-macros inputproto kbproto ', 'https://bugs.freedesktop.org', '2', "mouse=
 is an Xorg input driver for mice. The driver supports most available mouse=
 types and interfaces.  The mouse driver functions as a pointer input devic=
e, and may be used as the X server's core pointer. Multiple mice are suppor=
ted by multiple instances of this driver.", 'ErrHostNoDir:/releases/individ=
ual/driver/:-:xf86-input-mouse-1.9.0.tar.bz2:xorg.freedesktop.org/releases/=
individual/driver/xf86-input-mouse-1.9.0.tar.bz2', 'N/A', 'http://xorg.free=
desktop.org/releases/individual/driver/xf86-input-mouse-1.9.0.tar.bz2', 'La=
urentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86-input-mouse,1.9.0,N/A,MIT-X,x11/drivers,r0,2,http://www.x.or=
g,https://bugs.freedesktop.org,ErrHostNoDir:/releases/individual/driver/:-:=
xf86-input-mouse-1.9.0.tar.bz2:xorg.freedesktop.org/releases/individual/dri=
ver/xf86-input-mouse-1.9.0.tar.bz2,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/xserve=
r xproto randrproto util-macros inputproto kbproto ,mouse is an Xorg input =
driver for mice. The driver supports most available mouse types and interfa=
ces.  The mouse driver functions as a pointer input device, and may be used=
 as the X server's core pointer. Multiple mice are supported by multiple in=
stances of this driver.,N/A,http://xorg.freedesktop.org/releases/individual=
/driver/xf86-input-mouse-1.9.0.tar.bz2,Laurentiu Palcu <laurentiu.palcu@int=
el.com>)
['hicolor-icon-theme', '0.12', 'N/A', 'GPLv2', 'unknown', 'http://icon-them=
e.freedesktop.org/wiki/HicolorTheme', 'r1', 'pkgconfig-native autoconf-nati=
ve automake-native libtool-native gnu-config-native   gnome-common-native',=
 'https://bugs.freedesktop.org/', 'None', 'Default icon theme that all icon=
 themes automatically inherit from.', 'ErrHostNoDir:/releases/:-:hicolor-ic=
on-theme-0.12.tar.gz:icon-theme.freedesktop.org/releases/hicolor-icon-theme=
-0.12.tar.gz', 'N/A', 'http://icon-theme.freedesktop.org/releases/hicolor-i=
con-theme-0.12.tar.gz', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (hicolor-icon-theme,0.12,N/A,GPLv2,unknown,r1,None,http://icon-the=
me.freedesktop.org/wiki/HicolorTheme,https://bugs.freedesktop.org/,ErrHostN=
oDir:/releases/:-:hicolor-icon-theme-0.12.tar.gz:icon-theme.freedesktop.org=
/releases/hicolor-icon-theme-0.12.tar.gz,pkgconfig-native autoconf-native a=
utomake-native libtool-native gnu-config-native   gnome-common-native,Defau=
lt icon theme that all icon themes automatically inherit from.,N/A,http://i=
con-theme.freedesktop.org/releases/hicolor-icon-theme-0.12.tar.gz,Valentin =
Popa <valentin.popa@intel.com>)
['pointercal', '0.0', 'INVALID', 'MIT', 'base', '', 'r11', ' ', 'None', 'No=
ne', 'Touchscreen calibration data.', 'MATCH', '0.0', 'file://pointercal', =
'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (pointercal,0.0,INVALID,MIT,base,r11,None,,None,MATCH, ,Touchscree=
n calibration data.,0.0,file://pointercal,Valentin Popa <valentin.popa@inte=
l.com>)
['libcroco', '0.6.8', 'N/A', 'LGPLv2 & LGPLv2.1', 'x11/utils', 'http://www.=
gnome.org/', 'r1', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 libxml2 zlib gnome-c=
ommon-native', 'https://bugzilla.gnome.org/', 'None', 'Cascading Style Shee=
t (CSS) parsing and manipulation toolkit.', 'ErrHostNoDir:/pub/GNOME/source=
s/libcroco/0.6/libcroco-0.6.8.tar.xz:0.6:-:ftp.gnome.org/pub/GNOME/sources/=
libcroco/0.6/libcroco-0.6.8.tar.xz', 'N/A', 'http://ftp.gnome.org/pub/GNOME=
/sources/libcroco/0.6/libcroco-0.6.8.tar.xz;name=3Darchive', 'Valentin Popa=
 <valentin.popa@intel.com>', 'None']
inserted (libcroco,0.6.8,N/A,LGPLv2 & LGPLv2.1,x11/utils,r1,None,http://www=
=2Egnome.org/,https://bugzilla.gnome.org/,ErrHostNoDir:/pub/GNOME/sources/l=
ibcroco/0.6/libcroco-0.6.8.tar.xz:0.6:-:ftp.gnome.org/pub/GNOME/sources/lib=
croco/0.6/libcroco-0.6.8.tar.xz,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 libxml2 =
zlib gnome-common-native,Cascading Style Sheet (CSS) parsing and manipulati=
on toolkit.,N/A,http://ftp.gnome.org/pub/GNOME/sources/libcroco/0.6/libcroc=
o-0.6.8.tar.xz;name=3Darchive,Valentin Popa <valentin.popa@intel.com>)
['xf86-video-modesetting', '0.8.1', 'N/A', 'MIT-X', 'x11/drivers', 'http://=
www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextpro=
to fontsproto virtual/xserver xproto randrproto util-macros', 'https://bugs=
=2Efreedesktop.org', '2', 'Provides a generic kernel modesetting display dr=
iver for the X.Org X server.', 'ErrHostNoDir:/releases/individual/driver/:-=
:xf86-video-modesetting-0.8.1.tar.bz2:xorg.freedesktop.org/releases/individ=
ual/driver/xf86-video-modesetting-0.8.1.tar.bz2', 'N/A', 'http://xorg.freed=
esktop.org/releases/individual/driver/xf86-video-modesetting-0.8.1.tar.bz2'=
, 'None', 'None']
inserted (xf86-video-modesetting,0.8.1,N/A,MIT-X,x11/drivers,r0,2,http://ww=
w.x.org,https://bugs.freedesktop.org,ErrHostNoDir:/releases/individual/driv=
er/:-:xf86-video-modesetting-0.8.1.tar.bz2:xorg.freedesktop.org/releases/in=
dividual/driver/xf86-video-modesetting-0.8.1.tar.bz2,pkgconfig-native autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  renderproto videoproto xextproto fontsproto virtual/xserver xproto rand=
rproto util-macros,Provides a generic kernel modesetting display driver for=
 the X.Org X server.,N/A,http://xorg.freedesktop.org/releases/individual/dr=
iver/xf86-video-modesetting-0.8.1.tar.bz2,None)
['libowl', '0.1+gitAUTOINC+6ebc8ac8f8', '0.1+gitAUTOINC+6ebc8ac', 'GPLv2 & =
LGPLv2+', 'libs', 'http://www.o-hand.com', 'r0', 'pkgconfig-native autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 gtk+', 'http://bugzilla.yoctoproject.org/', 'None', 'OpenedHand Widget Lib=
rary.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/libowl', 'Valentin Popa=
 <valentin.popa@intel.com>', 'None']
inserted (libowl,0.1+gitAUTOINC+6ebc8ac8f8,0.1+gitAUTOINC+6ebc8ac,GPLv2 & L=
GPLv2+,libs,r0,None,http://www.o-hand.com,http://bugzilla.yoctoproject.org/=
,MATCH,pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  gtk+,OpenedHand Widget Library.,N/A,git://=
git.yoctoproject.org/libowl,Valentin Popa <valentin.popa@intel.com>)
['shadow-sysroot', '4.1.4.3', 'INVALID', 'BSD | Artistic-1.0', 'base utils'=
, 'http://pkg-shadow.alioth.debian.org', 'r3', ' virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  base-passwd', 'https:/=
/alioth.debian.org/tracker/?group_id=3D30580', 'None', 'Shadow utils requir=
ements for useradd.bbclass.', 'MATCH', 'N/A', 'file://login.defs_shadow-sys=
root', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (shadow-sysroot,4.1.4.3,INVALID,BSD | Artistic-1.0,base utils,r3,N=
one,http://pkg-shadow.alioth.debian.org,https://alioth.debian.org/tracker/?=
group_id=3D30580,MATCH, virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  base-passwd,Shadow utils requirements for usera=
dd.bbclass.,N/A,file://login.defs_shadow-sysroot,Saul Wold <sgw@linux.intel=
=2Ecom>)
['telepathy-python', '0.15.19', 'N/A', 'LGPLv2.1+', 'base', 'http://telepat=
hy.freedesktop.org/wiki/', 'r6', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  libxslt-native  python-native ',=
 'None', 'None', 'Telepathy IM framework - Python package.', 'ErrHostNoDir:=
/releases/telepathy-python/:-:telepathy-python-0.15.19.tar.gz:telepathy.fre=
edesktop.org/releases/telepathy-python/telepathy-python-0.15.19.tar.gz', 'N=
/A', 'http://telepathy.freedesktop.org/releases/telepathy-python/telepathy-=
python-0.15.19.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (telepathy-python,0.15.19,N/A,LGPLv2.1+,base,r6,None,http://telepa=
thy.freedesktop.org/wiki/,None,ErrHostNoDir:/releases/telepathy-python/:-:t=
elepathy-python-0.15.19.tar.gz:telepathy.freedesktop.org/releases/telepathy=
-python/telepathy-python-0.15.19.tar.gz,autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  libxslt-native  python-nat=
ive ,Telepathy IM framework - Python package.,N/A,http://telepathy.freedesk=
top.org/releases/telepathy-python/telepathy-python-0.15.19.tar.gz,Cristian =
Iorga <cristian.iorga@intel.com>)
['dbus-glib', '0.100.2', 'N/A', 'AFL-2 | GPLv2+', 'base', 'http://www.freed=
esktop.org/Software/dbus', 'r0', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native virtual/gettext gett=
ext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  expat glib-2.0 virtual/libintl dbus-glib-native dbus', 'Non=
e', 'None', 'GLib bindings for the D-Bus message bus that integrate the D-B=
us library with the GLib thread abstraction and main loop.', 'ErrHostNoDir:=
/releases/dbus-glib/:-:dbus-glib-0.100.2.tar.gz:dbus.freedesktop.org/releas=
es/dbus-glib/dbus-glib-0.100.2.tar.gz', 'N/A', 'http://dbus.freedesktop.org=
/releases/dbus-glib/dbus-glib-0.100.2.tar.gz', 'Chong Lu <Chong.Lu@windrive=
r.com>', 'None']
inserted (dbus-glib,0.100.2,N/A,AFL-2 | GPLv2+,base,r0,None,http://www.free=
desktop.org/Software/dbus,None,ErrHostNoDir:/releases/dbus-glib/:-:dbus-gli=
b-0.100.2.tar.gz:dbus.freedesktop.org/releases/dbus-glib/dbus-glib-0.100.2.=
tar.gz,pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  expat glib-=
2.0 virtual/libintl dbus-glib-native dbus,GLib bindings for the D-Bus messa=
ge bus that integrate the D-Bus library with the GLib thread abstraction an=
d main loop.,N/A,http://dbus.freedesktop.org/releases/dbus-glib/dbus-glib-0=
=2E100.2.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['opkg-collateral', '1.0', 'INVALID', 'MIT', 'base', '', 'r2', ' virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'No=
ne', 'None', 'Constructs the main configuration file for opkg.', 'MATCH', '=
N/A', 'file://opkg.conf.comments', 'Cristiana Voicu <cristiana.voicu@intel.=
com>', 'None']
inserted (opkg-collateral,1.0,INVALID,MIT,base,r2,None,,None,MATCH, virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Co=
nstructs the main configuration file for opkg.,N/A,file://opkg.conf.comment=
s,Cristiana Voicu <cristiana.voicu@intel.com>)
['libxkbfile', '1.0.8', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros virtual/libx11 kbproto', 'htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libxkbfile p=
rovides an interface to read and manipulate description files for XKB, the =
X11 keyboard configuration extension.', 'ErrHostNoDir:/releases/individual/=
lib/:-:libxkbfile-1.0.8.tar.bz2:xorg.freedesktop.org/releases/individual/li=
b/libxkbfile-1.0.8.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/i=
ndividual/lib/libxkbfile-1.0.8.tar.bz2', 'Ross Burton <ross.burton@intel.co=
m>', 'None']
inserted (libxkbfile,1.0.8,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releas=
es/individual/lib/:-:libxkbfile-1.0.8.tar.bz2:xorg.freedesktop.org/releases=
/individual/lib/libxkbfile-1.0.8.tar.bz2,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-mac=
ros virtual/libx11 kbproto,libxkbfile provides an interface to read and man=
ipulate description files for XKB, the X11 keyboard configuration extension=
=2E,N/A,http://xorg.freedesktop.org/releases/individual/lib/libxkbfile-1.0.=
8.tar.bz2,Ross Burton <ross.burton@intel.com>)
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
git://anongit.freedesktop.org/xorg/driver/xf86-video-omap', 'Laurentiu Palc=
u <laurentiu.palcu@intel.com>', 'None']
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
org/driver/xf86-video-omap,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['qmmp', '0.7.5', 'N/A', 'GPLv2', 'multimedia', 'http://qmmp.ylsoftware.com=
', 'r0', 'qt4-tools-native qt4-x11 autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native cmake-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  taglib libmad libv=
orbis libogg alsa-lib libsndfile1 libsamplerate0 curl', 'None', 'None', 'Qm=
mp is an audio player, written with the help of the Qt library. The user in=
terface is similar to Winamp or XMMS.', 'ErrHostNoDir:/files/:-:qmmp-0.7.5.=
tar.bz2:qmmp.ylsoftware.com/files/qmmp-0.7.5.tar.bz2', 'N/A', 'http://qmmp.=
ylsoftware.com/files/qmmp-0.7.5.tar.bz2', 'Kai Kang <kai.kang@windriver.com=
>', 'None']
inserted (qmmp,0.7.5,N/A,GPLv2,multimedia,r0,None,http://qmmp.ylsoftware.co=
m,None,ErrHostNoDir:/files/:-:qmmp-0.7.5.tar.bz2:qmmp.ylsoftware.com/files/=
qmmp-0.7.5.tar.bz2,qt4-tools-native qt4-x11 autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native cmake-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  taglib li=
bmad libvorbis libogg alsa-lib libsndfile1 libsamplerate0 curl,Qmmp is an a=
udio player, written with the help of the Qt library. The user interface is=
 similar to Winamp or XMMS.,N/A,http://qmmp.ylsoftware.com/files/qmmp-0.7.5=
=2Etar.bz2,Kai Kang <kai.kang@windriver.com>)
['telepathy-glib', '0.23.2', 'N/A', 'LGPLv2.1+', 'base', 'http://telepathy.=
freedesktop.org/wiki/', 'r0', 'pkgconfig-native autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native virtual/gettext gettext=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  glib-2.0 dbus python-native-runtime dbus-native dbus-glib libx=
slt-native', 'None', 'None', 'Telepathy Framework: GLib-based helper librar=
y for connection managers', 'ErrHostNoDir:/releases/telepathy-glib/:-:telep=
athy-glib-0.23.2.tar.gz:telepathy.freedesktop.org/releases/telepathy-glib/t=
elepathy-glib-0.23.2.tar.gz', 'N/A', 'http://telepathy.freedesktop.org/rele=
ases/telepathy-glib/telepathy-glib-0.23.2.tar.gz', 'Cristian Iorga <cristia=
n.iorga@intel.com>', 'None']
inserted (telepathy-glib,0.23.2,N/A,LGPLv2.1+,base,r0,None,http://telepathy=
=2Efreedesktop.org/wiki/,None,ErrHostNoDir:/releases/telepathy-glib/:-:tele=
pathy-glib-0.23.2.tar.gz:telepathy.freedesktop.org/releases/telepathy-glib/=
telepathy-glib-0.23.2.tar.gz,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  glib-2.0 dbus python-native-runtime dbus-native dbus-glib libxsl=
t-native,Telepathy Framework: GLib-based helper library for connection mana=
gers,N/A,http://telepathy.freedesktop.org/releases/telepathy-glib/telepathy=
-glib-0.23.2.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
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
['which', '2.20', 'N/A', 'GPLv3+', 'libs', 'http://carlo17.home.xs4all.nl/w=
hich/', 'r3', 'autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  cwautomacros-native virtual/update-alternatives', '=
None', 'None', 'Which is a utility that prints out the full path of the exe=
cutables that bash(1) would execute when the passed program names would hav=
e been entered on the shell prompt. It does this by using the exact same al=
gorithm as bash.', 'ErrHostNoDir:/gnu/which/:-:which-2.20.tar.gz:ftp.gnu.or=
g/gnu/which/which-2.20.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/which/which-2=
=2E20.tar.gz', 'Cristiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (which,2.20,N/A,GPLv3+,libs,r3,None,http://carlo17.home.xs4all.nl/=
which/,None,ErrHostNoDir:/gnu/which/:-:which-2.20.tar.gz:ftp.gnu.org/gnu/wh=
ich/which-2.20.tar.gz,autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  cwautomacros-native virtual/update-alternati=
ves,Which is a utility that prints out the full path of the executables tha=
t bash(1) would execute when the passed program names would have been enter=
ed on the shell prompt. It does this by using the exact same algorithm as b=
ash.,N/A,ftp://ftp.gnu.org/gnu/which/which-2.20.tar.gz,Cristiana Voicu <cri=
stiana.voicu@intel.com>)
['libcap', '2.22', 'N/A', 'BSD | GPLv2', 'base', 'http://sites.google.com/s=
ite/fullycapable/', 'r6', ' virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  attr perl-native-runtime ', 'None', 'None',=
 'Library for getting/setting POSIX.1e capabilities.', 'ErrHostNoDir:/debia=
n/pool/main/libc/libcap2/:-:libcap2_2.22.orig.tar.gz:ftp.debian.org/debian/=
pool/main/libc/libcap2/libcap2_2.22.orig.tar.gz', 'N/A', 'ftp://ftp.debian.=
org/debian/pool/main/libc/libcap2/libcap2_2.22.orig.tar.gz', 'Saul Wold <sg=
w@linux.intel.com>', 'None']
inserted (libcap,2.22,N/A,BSD | GPLv2,base,r6,None,http://sites.google.com/=
site/fullycapable/,None,ErrHostNoDir:/debian/pool/main/libc/libcap2/:-:libc=
ap2_2.22.orig.tar.gz:ftp.debian.org/debian/pool/main/libc/libcap2/libcap2_2=
=2E22.orig.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  attr perl-native-runtime ,Library for getting/settin=
g POSIX.1e capabilities.,N/A,ftp://ftp.debian.org/debian/pool/main/libc/lib=
cap2/libcap2_2.22.orig.tar.gz,Saul Wold <sgw@linux.intel.com>)
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
['libaio', '0.3.109', 'N/A', 'LGPLv2.1+', 'base', 'http://lse.sourceforge.n=
et/io/aio.html', 'r2', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  ', 'None', 'None', 'Asynchronous input/output =
library that uses the kernels native interface', 'ErrHostNoDir:/debian/pool=
/main/liba/libaio/:-:libaio_0.3.109.orig.tar.gz:ftp.debian.org/debian/pool/=
main/liba/libaio/libaio_0.3.109.orig.tar.gz', 'N/A', 'ftp://ftp.debian.org/=
debian/pool/main/liba/libaio/libaio_0.3.109.orig.tar.gz', 'Saul Wold <sgw@l=
inux.intel.com>', 'None']
inserted (libaio,0.3.109,N/A,LGPLv2.1+,base,r2,None,http://lse.sourceforge.=
net/io/aio.html,None,ErrHostNoDir:/debian/pool/main/liba/libaio/:-:libaio_0=
=2E3.109.orig.tar.gz:ftp.debian.org/debian/pool/main/liba/libaio/libaio_0.3=
=2E109.orig.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ,Asynchronous input/output library that uses the ke=
rnels native interface,N/A,ftp://ftp.debian.org/debian/pool/main/liba/libai=
o/libaio_0.3.109.orig.tar.gz,Saul Wold <sgw@linux.intel.com>)
['wireless-tools', '30.pre9', 'N/A', 'GPLv2 & (LGPLv2.1 | MPL-1.1 | BSD)', =
'base', 'http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/Tools.html', =
'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  ', 'None', '1', 'Tools for the Linux Standard Wireless Extensio=
n Subsystem.', 'ErrHostNoDir:/personal/Jean_Tourrilhes/Linux/:-:wireless_to=
ols.30.pre9.tar.gz:www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/wireless_t=
ools.30.pre9.tar.gz', 'N/A', 'http://www.hpl.hp.com/personal/Jean_Tourrilhe=
s/Linux/wireless_tools.30.pre9.tar.gz', 'Cristian Iorga <cristian.iorga@int=
el.com>', 'None']
inserted (wireless-tools,30.pre9,N/A,GPLv2 & (LGPLv2.1 | MPL-1.1 | BSD),bas=
e,r0,1,http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/Tools.html,None=
,ErrHostNoDir:/personal/Jean_Tourrilhes/Linux/:-:wireless_tools.30.pre9.tar=
=2Egz:www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/wireless_tools.30.pre9.=
tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  ,Tools for the Linux Standard Wireless Extension Subsystem.,N/A=
,http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/wireless_tools.30.pre=
9.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['fixesproto', '5.0', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedeskt=
op.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the X Fixes extension.  This extension is designed to provide =
server-side support for application work arounds to shortcomings in the cor=
e X window system.', 'ErrHostNoDir:/releases/individual/proto/:-:fixesproto=
-5.0.tar.bz2:xorg.freedesktop.org/releases/individual/proto/fixesproto-5.0.=
tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/fix=
esproto-5.0.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (fixesproto,5.0,N/A,MIT & MIT-style,x11/libs,r1,1,http://www.x.org=
,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/re=
leases/individual/proto/:-:fixesproto-5.0.tar.bz2:xorg.freedesktop.org/rele=
ases/individual/proto/fixesproto-5.0.tar.bz2,pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util=
-macros,This package provides the wire protocol for the X Fixes extension. =
 This extension is designed to provide server-side support for application =
work arounds to shortcomings in the core X window system.,N/A,http://xorg.f=
reedesktop.org/releases/individual/proto/fixesproto-5.0.tar.bz2,Ross Burton=
 <ross.burton@intel.com>)
['docbook-sgml-dtd-4.1-native', '41', 'N/A', 'OASIS', 'base', 'http://www.d=
ocbook.org/sgml/', 'r3.0', ' sgml-common-native', 'None', 'None', 'Document=
 type definitions for verification of SGML data files against the DocBook r=
ule set', 'ErrHostNoDir:/sgml/41/:4.1:docbk41.zip:docbook.org/sgml/4.1/docb=
k41.zip', 'N/A', 'http://docbook.org/sgml/4.1/docbk41.zip', 'Paul Eggleton =
<paul.eggleton@linux.intel.com>', 'PRS Reports Incorrectly']
inserted (docbook-sgml-dtd-4.1-native,41,N/A,OASIS,base,r3.0,None,http://ww=
w.docbook.org/sgml/,None,ErrHostNoDir:/sgml/41/:4.1:docbk41.zip:docbook.org=
/sgml/4.1/docbk41.zip, sgml-common-native,Document type definitions for ver=
ification of SGML data files against the DocBook rule set,N/A,http://docboo=
k.org/sgml/4.1/docbk41.zip,Paul Eggleton <paul.eggleton@linux.intel.com>)
['quota', '4.01', 'N/A', 'BSD & GPLv2+ & LGPLv2.1+', 'base', 'http://source=
forge.net/projects/linuxquota/', 'r1', 'pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native virtual/gettex=
t gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  gettext-native e2fsprogs tcp-wrappers', 'http://sourc=
eforge.net/tracker/?group_id=3D18136&atid=3D118136', 'None', 'Tools for mon=
itoring & limiting user disk usage per filesystem.', 'ErrHostNoDir:/project=
/linuxquota/quota-tools/4.01/:4.01:quota-4.01.tar.gz:downloads.sourceforge.=
net/project/linuxquota/quota-tools/4.01/quota-4.01.tar.gz', 'N/A', 'http://=
downloads.sourceforge.net/project/linuxquota/quota-tools/4.01/quota-4.01.ta=
r.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (quota,4.01,N/A,BSD & GPLv2+ & LGPLv2.1+,base,r1,None,http://sourc=
eforge.net/projects/linuxquota/,http://sourceforge.net/tracker/?group_id=3D=
18136&atid=3D118136,ErrHostNoDir:/project/linuxquota/quota-tools/4.01/:4.01=
:quota-4.01.tar.gz:downloads.sourceforge.net/project/linuxquota/quota-tools=
/4.01/quota-4.01.tar.gz,pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  gettext-native e2fsprogs tcp-wrappers,Tools for monitoring & limiting=
 user disk usage per filesystem.,N/A,http://downloads.sourceforge.net/proje=
ct/linuxquota/quota-tools/4.01/quota-4.01.tar.gz,Cristian Iorga <cristian.i=
orga@intel.com>)
['iproute2', '3.12.0', 'N/A', 'GPLv2+', 'base', 'http://www.linuxfoundation=
=2Eorg/collaborate/workgroups/networking/iproute2', 'r0', ' virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native=
 bison-native iptables virtual/update-alternatives', 'None', 'None', 'Iprou=
te2 is a collection of utilities for controlling TCP / IP networking and tr=
affic control in Linux.  Of the utilities ip and tc are the most important.=
  ip controls IPv4 and IPv6 configuration and tc stands for traffic control=
=2E', 'ErrHostNoDir:/pub/linux/utils/net/iproute2/:-:iproute2-3.12.0.tar.xz=
:kernel.org/pub/linux/utils/net/iproute2/iproute2-3.12.0.tar.xz', 'N/A', 'h=
ttp://kernel.org/pub/linux/utils/net/iproute2/iproute2-3.12.0.tar.xz', 'Cri=
stian Iorga <cristian.iorga@intel.com>', 'None']
inserted (iproute2,3.12.0,N/A,GPLv2+,base,r0,None,http://www.linuxfoundatio=
n.org/collaborate/workgroups/networking/iproute2,None,ErrHostNoDir:/pub/lin=
ux/utils/net/iproute2/:-:iproute2-3.12.0.tar.xz:kernel.org/pub/linux/utils/=
net/iproute2/iproute2-3.12.0.tar.xz, virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  flex-native bison-native iptables =
virtual/update-alternatives,Iproute2 is a collection of utilities for contr=
olling TCP / IP networking and traffic control in Linux.  Of the utilities =
ip and tc are the most important.  ip controls IPv4 and IPv6 configuration =
and tc stands for traffic control.,N/A,http://kernel.org/pub/linux/utils/ne=
t/iproute2/iproute2-3.12.0.tar.xz,Cristian Iorga <cristian.iorga@intel.com>)
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
['dbus-ptest', '1.6.18', 'N/A', 'AFL-2 | GPLv2+', 'base', 'http://dbus.free=
desktop.org', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  python-pygobject dbus dbus-glib', 'None', 'None', 'D-Bus test package (f=
or D-bus functionality testing only).', 'ErrHostNoDir:/releases/dbus/:-:dbu=
s-1.6.18.tar.gz:dbus.freedesktop.org/releases/dbus/dbus-1.6.18.tar.gz', 'N/=
A', 'http://dbus.freedesktop.org/releases/dbus/dbus-1.6.18.tar.gz', 'Chong =
Lu <Chong.Lu@windriver.com>', 'None']
inserted (dbus-ptest,1.6.18,N/A,AFL-2 | GPLv2+,base,r0,None,http://dbus.fre=
edesktop.org,None,ErrHostNoDir:/releases/dbus/:-:dbus-1.6.18.tar.gz:dbus.fr=
eedesktop.org/releases/dbus/dbus-1.6.18.tar.gz,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native virtual=
/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  python-pygobject dbus dbus-glib,D-Bus test pac=
kage (for D-bus functionality testing only).,N/A,http://dbus.freedesktop.or=
g/releases/dbus/dbus-1.6.18.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['cwautomacros', '20110201', 'N/A', 'GPLv2', 'base', 'http://cwautomacros.b=
erlios.de/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  ', 'None', 'None', 'Collection of autoconf m4 macr=
os.', 'ErrHostNoDir:/cwautomacros/:-:cwautomacros-20110201.tar.bz2:download=
=2Eberlios.de/cwautomacros/cwautomacros-20110201.tar.bz2', 'N/A', 'http://d=
ownload.berlios.de/cwautomacros/cwautomacros-20110201.tar.bz2', 'Cristian I=
orga <cristian.iorga@intel.com>', 'None']
inserted (cwautomacros,20110201,N/A,GPLv2,base,r0,None,http://cwautomacros.=
berlios.de/,None,ErrHostNoDir:/cwautomacros/:-:cwautomacros-20110201.tar.bz=
2:download.berlios.de/cwautomacros/cwautomacros-20110201.tar.bz2, virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Coll=
ection of autoconf m4 macros.,N/A,http://download.berlios.de/cwautomacros/c=
wautomacros-20110201.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
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
['wpa-supplicant', '2.1', 'N/A', 'BSD', 'network', 'http://hostap.epitest.f=
i/wpa_supplicant/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  gnutls dbus libnl openssl', 'http://hostap.=
epitest.fi/bugz/', 'None', 'Client for Wi-Fi Protected Access (WPA).', 'Err=
HostNoDir:/releases/:-:wpa_supplicant-2.1.tar.gz:hostap.epitest.fi/releases=
/wpa_supplicant-2.1.tar.gz', 'N/A', 'http://hostap.epitest.fi/releases/wpa_=
supplicant-2.1.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (wpa-supplicant,2.1,N/A,BSD,network,r0,None,http://hostap.epitest.=
fi/wpa_supplicant/,http://hostap.epitest.fi/bugz/,ErrHostNoDir:/releases/:-=
:wpa_supplicant-2.1.tar.gz:hostap.epitest.fi/releases/wpa_supplicant-2.1.ta=
r.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  gnutls dbus libnl openssl,Client for Wi-Fi Protected Access (WPA)=
=2E,N/A,http://hostap.epitest.fi/releases/wpa_supplicant-2.1.tar.gz,Cristia=
n Iorga <cristian.iorga@intel.com>)
['libxxf86dga', '1.1.4', 'N/A', 'MIT-X', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros libxext xf86dgaproto', 'https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXxf86dga provi=
des the XFree86-DGA extension, which allows direct graphics access to a fra=
mebuffer-like region, and also allows relative mouse reporting, et al.  It =
is mainly used by games and emulators for games.', 'ErrHostNoDir:/releases/=
individual/lib/:-:libXxf86dga-1.1.4.tar.bz2:xorg.freedesktop.org/releases/i=
ndividual/lib/libXxf86dga-1.1.4.tar.bz2', 'N/A', 'http://xorg.freedesktop.o=
rg/releases/individual/lib/libXxf86dga-1.1.4.tar.bz2', 'Ross Burton <ross.b=
urton@intel.com>', 'None']
inserted (libxxf86dga,1.1.4,N/A,MIT-X,x11/libs,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/=
individual/lib/:-:libXxf86dga-1.1.4.tar.bz2:xorg.freedesktop.org/releases/i=
ndividual/lib/libXxf86dga-1.1.4.tar.bz2,pkgconfig-native autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macr=
os libxext xf86dgaproto,libXxf86dga provides the XFree86-DGA extension, whi=
ch allows direct graphics access to a framebuffer-like region, and also all=
ows relative mouse reporting, et al.  It is mainly used by games and emulat=
ors for games.,N/A,http://xorg.freedesktop.org/releases/individual/lib/libX=
xf86dga-1.1.4.tar.bz2,Ross Burton <ross.burton@intel.com>)
['strace', '4.8', 'N/A', 'BSD', 'console/utils', 'http://strace.sourceforge=
=2Enet', 'r0', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc   libaio', 'None', 'None', 'System call tracing too=
l.', 'ErrHostNoDir:/strace/:-:strace-4.8.tar.xz:downloads.sourceforge.net/s=
trace/strace-4.8.tar.xz', 'N/A', 'http://downloads.sourceforge.net/strace/s=
trace-4.8.tar.xz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (strace,4.8,N/A,BSD,console/utils,r0,None,http://strace.sourceforg=
e.net,None,ErrHostNoDir:/strace/:-:strace-4.8.tar.xz:downloads.sourceforge.=
net/strace/strace-4.8.tar.xz,autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc   libaio,System call tracing tool.,N/A=
,http://downloads.sourceforge.net/strace/strace-4.8.tar.xz,Chong Lu <Chong.=
Lu@windriver.com>)
['hostap-utils', '0.4.7', 'N/A', 'GPLv2', 'kernel/userland', 'http://hostap=
=2Eepitest.fi', 'r4', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ', 'http://hostap.epitest.fi/bugz/', 'None', 'T=
he hostap driver supports Host AP mode, it allows for IEEE 802.11 managemen=
t functions on the host computer and allows the system to act as an access =
point.', 'ErrHostNoDir:/releases/:-:hostap-utils-0.4.7.tar.gz:hostap.epites=
t.fi/releases/hostap-utils-0.4.7.tar.gz', 'N/A', 'http://hostap.epitest.fi/=
releases/hostap-utils-0.4.7.tar.gz', 'Cristian Iorga <cristian.iorga@intel.=
com>', 'None']
inserted (hostap-utils,0.4.7,N/A,GPLv2,kernel/userland,r4,None,http://hosta=
p.epitest.fi,http://hostap.epitest.fi/bugz/,ErrHostNoDir:/releases/:-:hosta=
p-utils-0.4.7.tar.gz:hostap.epitest.fi/releases/hostap-utils-0.4.7.tar.gz, =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  ,The hostap driver supports Host AP mode, it allows for IEEE 802.11 man=
agement functions on the host computer and allows the system to act as an a=
ccess point.,N/A,http://hostap.epitest.fi/releases/hostap-utils-0.4.7.tar.g=
z,Cristian Iorga <cristian.iorga@intel.com>)
['cogl-1.0', '1.16.2', 'N/A', 'LGPLv2.1+', 'base', 'http://wiki.clutter-pro=
ject.org/wiki/Cogl', 'r0', 'pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native virtual/gettext gettext-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  glib-2.0 gdk-pixbuf gtk-doc-stub-native pango virtual/mesa waylan=
d virtual/libgles2 virtual/libgl libdrm virtual/libx11 libxcomposite libxfi=
xes libxi libxrandr', 'None', 'None', 'Modern 3D graphics API with associat=
ed utility APIs.', 'ErrHostNoDir:/pub/GNOME/sources/cogl/1.16/cogl-1.16.2.t=
ar.xz:1.16:-:ftp.gnome.org/pub/GNOME/sources/cogl/1.16/cogl-1.16.2.tar.xz',=
 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/cogl/1.16/cogl-1.16.2.tar.x=
z;name=3Darchive', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (cogl-1.0,1.16.2,N/A,LGPLv2.1+,base,r0,None,http://wiki.clutter-pr=
oject.org/wiki/Cogl,None,ErrHostNoDir:/pub/GNOME/sources/cogl/1.16/cogl-1.1=
6.2.tar.xz:1.16:-:ftp.gnome.org/pub/GNOME/sources/cogl/1.16/cogl-1.16.2.tar=
=2Exz,pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 gdk=
-pixbuf gtk-doc-stub-native pango virtual/mesa wayland virtual/libgles2 vir=
tual/libgl libdrm virtual/libx11 libxcomposite libxfixes libxi libxrandr,Mo=
dern 3D graphics API with associated utility APIs.,N/A,http://ftp.gnome.org=
/pub/GNOME/sources/cogl/1.16/cogl-1.16.2.tar.xz;name=3Darchive,Ross Burton =
<ross.burton@intel.com>)
['trace-cmd', '1.2+gitAUTOINC+7055ffd37b', '2.3.2+gitAUTOINC+8435f51', 'GPL=
v2 & LGPLv2.1', 'base', '', 'r3', 'pkgconfig-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc    python-native ',=
 'None', 'None', 'User interface to Ftrace.', 'UPDATE', 'N/A', 'git://git.k=
ernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git', 'Darren Hart <dv=
hart@linux.intel.com>', 'None']
inserted (trace-cmd,1.2+gitAUTOINC+7055ffd37b,2.3.2+gitAUTOINC+8435f51,GPLv=
2 & LGPLv2.1,base,r3,None,,None,UPDATE,pkgconfig-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc    python-nativ=
e ,User interface to Ftrace.,N/A,git://git.kernel.org/pub/scm/linux/kernel/=
git/rostedt/trace-cmd.git,Darren Hart <dvhart@linux.intel.com>)
['bigreqsproto', '1.1.2', 'N/A', 'MIT-X', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org=
/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoc=
ol for the BIG-REQUESTS extension, used to send larger requests that usual =
in order to avoid fragmentation.', 'ErrHostNoDir:/releases/individual/proto=
/:-:bigreqsproto-1.1.2.tar.bz2:xorg.freedesktop.org/releases/individual/pro=
to/bigreqsproto-1.1.2.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/release=
s/individual/proto/bigreqsproto-1.1.2.tar.bz2', 'Cristiana Voicu <cristiana=
=2Evoicu@intel.com>', 'None']
inserted (bigreqsproto,1.1.2,N/A,MIT-X,x11/libs,r0,1,http://www.x.org,https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases=
/individual/proto/:-:bigreqsproto-1.1.2.tar.bz2:xorg.freedesktop.org/releas=
es/individual/proto/bigreqsproto-1.1.2.tar.bz2,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ut=
il-macros,This package provides the wire protocol for the BIG-REQUESTS exte=
nsion, used to send larger requests that usual in order to avoid fragmentat=
ion.,N/A,http://xorg.freedesktop.org/releases/individual/proto/bigreqsproto=
-1.1.2.tar.bz2,Cristiana Voicu <cristiana.voicu@intel.com>)
['gcc-crosssdk', '4.8.2', 'N/A', 'GPL-3.0-with-GCC-exception & GPLv3', 'dev=
el', 'http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native automake-na=
tive libtool-native gnu-config-native   virtual/i586-pokysdk-linux-binutils=
-crosssdk virtual/nativesdk-i586-pokysdk-linux-libc-for-gcc gettext-native =
mpfr-native gmp-native libmpc-native zlib-native', 'None', 'None', 'GNU cc =
and gcc C compilers.', 'ErrHostNoDir:/gnu/gcc/4.8.2/:gcc-4.8.2:gcc-4.8.2.ta=
r.bz2:ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2', 'N/A', 'ftp://ftp.g=
nu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2', 'Laurentiu Palcu <laurentiu.pa=
lcu@intel.com>', 'None']
inserted (gcc-crosssdk,4.8.2,N/A,GPL-3.0-with-GCC-exception & GPLv3,devel,r=
0,None,http://www.gnu.org/software/gcc/,None,ErrHostNoDir:/gnu/gcc/4.8.2/:g=
cc-4.8.2:gcc-4.8.2.tar.bz2:ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2,=
autoconf-native automake-native libtool-native gnu-config-native   virtual/=
i586-pokysdk-linux-binutils-crosssdk virtual/nativesdk-i586-pokysdk-linux-l=
ibc-for-gcc gettext-native mpfr-native gmp-native libmpc-native zlib-native=
,GNU cc and gcc C compilers.,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.=
8.2.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['xinit', '1.3.3', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros-native virtual/libx11', 'https://bugs=
=2Efreedesktop.org', '1', 'The xinit program is used to start the X Window =
System server and a first client program on systems that cannot start X dir=
ectly from /etc/init or in environments that use multiple window systems. W=
hen this first client exits, xinit will kill the X server and then terminat=
e.', 'ErrHostNoDir:/releases/individual/app/:-:xinit-1.3.3.tar.bz2:xorg.fre=
edesktop.org/releases/individual/app/xinit-1.3.3.tar.bz2', 'N/A', 'http://x=
org.freedesktop.org/releases/individual/app/xinit-1.3.3.tar.bz2', 'Laurenti=
u Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xinit,1.3.3,N/A,MIT-X,x11/apps,r0,1,http://www.x.org/,https://bug=
s.freedesktop.org,ErrHostNoDir:/releases/individual/app/:-:xinit-1.3.3.tar.=
bz2:xorg.freedesktop.org/releases/individual/app/xinit-1.3.3.tar.bz2,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  util-macros-native virtual/libx11,The xinit program is =
used to start the X Window System server and a first client program on syst=
ems that cannot start X directly from /etc/init or in environments that use=
 multiple window systems. When this first client exits, xinit will kill the=
 X server and then terminate.,N/A,http://xorg.freedesktop.org/releases/indi=
vidual/app/xinit-1.3.3.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['gstreamer1.0', '1.2.3', 'N/A', 'LGPLv2+', 'multimedia', 'http://gstreamer=
=2Efreedesktop.org/', 'r0', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  glib-2.0 libxml2 bison-native flex-native', 'https://bugzilla.gn=
ome.org/enter_bug.cgi?product=3DGstreamer', 'None', 'GStreamer is a multime=
dia framework for encoding and decoding video and sound. It supports a wide=
 range of formats including mp3, ogg, avi, mpeg and quicktime.', 'ErrHostNo=
Dir:/src/gstreamer/:-:gstreamer-1.2.3.tar.xz:gstreamer.freedesktop.org/src/=
gstreamer/gstreamer-1.2.3.tar.xz', 'N/A', 'http://gstreamer.freedesktop.org=
/src/gstreamer/gstreamer-1.2.3.tar.xz', 'Cristian Iorga <cristian.iorga@int=
el.com>', 'None']
inserted (gstreamer1.0,1.2.3,N/A,LGPLv2+,multimedia,r0,None,http://gstreame=
r.freedesktop.org/,https://bugzilla.gnome.org/enter_bug.cgi?product=3DGstre=
amer,ErrHostNoDir:/src/gstreamer/:-:gstreamer-1.2.3.tar.xz:gstreamer.freede=
sktop.org/src/gstreamer/gstreamer-1.2.3.tar.xz,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native virtual=
/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  glib-2.0 libxml2 bison-native flex-native,GStr=
eamer is a multimedia framework for encoding and decoding video and sound. =
It supports a wide range of formats including mp3, ogg, avi, mpeg and quick=
time.,N/A,http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-1.2.3.ta=
r.xz,Cristian Iorga <cristian.iorga@intel.com>)
['linuxdoc-tools-native', '0.9.69', 'N/A', 'GPLv3+', 'base', 'http://packag=
es.debian.org/linuxdoc-tools', 'r0', 'autoconf-native automake-native libto=
ol-native gnu-config-native  groff-native openjade-native', 'None', 'None',=
 'Convert LinuxDoc SGML source into other formats.', 'ErrHostNoDir:/debian/=
pool/main/l/linuxdoc-tools/:-:linuxdoc-tools_0.9.69.orig.tar.gz:ftp.debian.=
org/debian/pool/main/l/linuxdoc-tools/linuxdoc-tools_0.9.69.orig.tar.gz', '=
0.9.66', 'ftp://ftp.debian.org/debian/pool/main/l/linuxdoc-tools/linuxdoc-t=
ools_0.9.69.orig.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', =
'None']
inserted (linuxdoc-tools-native,0.9.69,N/A,GPLv3+,base,r0,None,http://packa=
ges.debian.org/linuxdoc-tools,None,ErrHostNoDir:/debian/pool/main/l/linuxdo=
c-tools/:-:linuxdoc-tools_0.9.69.orig.tar.gz:ftp.debian.org/debian/pool/mai=
n/l/linuxdoc-tools/linuxdoc-tools_0.9.69.orig.tar.gz,autoconf-native automa=
ke-native libtool-native gnu-config-native  groff-native openjade-native,Co=
nvert LinuxDoc SGML source into other formats.,0.9.66,ftp://ftp.debian.org/=
debian/pool/main/l/linuxdoc-tools/linuxdoc-tools_0.9.69.orig.tar.gz,Paul Eg=
gleton <paul.eggleton@linux.intel.com>)
['initramfs-live-install-efi', '1.0', 'INVALID', 'MIT', 'base', '', 'r1', '=
 ', 'None', 'None', 'Live image install script for grub-efi.', 'MATCH', 'N/=
A', 'file://init-install-efi.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-live-install-efi,1.0,INVALID,MIT,base,r1,None,,None,MAT=
CH, ,Live image install script for grub-efi.,N/A,file://init-install-efi.sh=
,Saul Wold <sgw@linux.intel.com>)
['tcf-agent', '0.4.0+gitAUTOINC+4ef94ecb92', '8.0+gitAUTOINC+3b3f94a', 'EPL=
-1.0 | EDL-1.0', 'base', 'http://wiki.eclipse.org/TCF', 'r2', ' virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-li=
nux openssl update-rc.d-native', 'https://bugs.eclipse.org/bugs/', 'None', =
'Target Communication Framework for the Eclipse IDE.', 'UPDATE', 'N/A', 'gi=
t://git.eclipse.org/gitroot/tcf/org.eclipse.tcf.agent.git', 'Laurentiu Palc=
u <laurentiu.palcu@intel.com>', 'None']
inserted (tcf-agent,0.4.0+gitAUTOINC+4ef94ecb92,8.0+gitAUTOINC+3b3f94a,EPL-=
1.0 | EDL-1.0,base,r2,None,http://wiki.eclipse.org/TCF,https://bugs.eclipse=
=2Eorg/bugs/,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-linux openssl update-rc.d-native,Target Commu=
nication Framework for the Eclipse IDE.,N/A,git://git.eclipse.org/gitroot/t=
cf/org.eclipse.tcf.agent.git,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['icecc-create-env-native', '0.1', 'INVALID', 'GPLv2+', 'base', '', 'r2', '=
 ', 'None', 'None', 'This is a version of the icecc-create-env script that =
has been modified in order to make it work with OE.', 'MATCH', 'N/A', 'file=
://icecc-create-env', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (icecc-create-env-native,0.1,INVALID,GPLv2+,base,r2,None,,None,MAT=
CH, ,This is a version of the icecc-create-env script that has been modifie=
d in order to make it work with OE.,N/A,file://icecc-create-env,Saul Wold <=
sgw@linux.intel.com>)
['btrfs-tools', '3.12+gitAUTOINC+8cae1840af', '3.14.1+gitAUTOINC+f2d42b7', =
'GPLv2', 'base', 'https://btrfs.wiki.kernel.org', 'r0', ' virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-linux at=
tr e2fsprogs lzo acl', 'None', 'None', 'Btrfs is a new copy on write filesy=
stem for Linux aimed at implementing advanced features while focusing on fa=
ult tolerance, repair and easy administration. This package contains utilit=
ies (mkfs, fsck, btrfsctl) used to work with btrfs and an utility (btrfs-co=
nvert) to make a btrfs filesystem from an ext3.', 'UPDATE', 'N/A', 'git://g=
it.kernel.org/pub/scm/linux/kernel/git/mason/btrfs-progs.git', 'Laurentiu P=
alcu <laurentiu.palcu@intel.com>', 'None']
inserted (btrfs-tools,3.12+gitAUTOINC+8cae1840af,3.14.1+gitAUTOINC+f2d42b7,=
GPLv2,base,r0,None,https://btrfs.wiki.kernel.org,None,UPDATE, virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-linu=
x attr e2fsprogs lzo acl,Btrfs is a new copy on write filesystem for Linux =
aimed at implementing advanced features while focusing on fault tolerance, =
repair and easy administration. This package contains utilities (mkfs, fsck=
, btrfsctl) used to work with btrfs and an utility (btrfs-convert) to make =
a btrfs filesystem from an ext3.,N/A,git://git.kernel.org/pub/scm/linux/ker=
nel/git/mason/btrfs-progs.git,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['libtirpc', '0.2.4', 'N/A', 'BSD', 'libs/network', 'http://sourceforge.net=
/projects/libtirpc/', 'r0', 'pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc   xz-native', 'http:/=
/sourceforge.net/tracker/?group_id=3D183075&atid=3D903784', 'None', 'Libtir=
pc is a port of Suns Transport-Independent RPC library to Linux', 'ErrHostN=
oDir:/libtirpc/:-:libtirpc-0.2.4.tar.bz2:downloads.sourceforge.net/libtirpc=
/libtirpc-0.2.4.tar.bz2', 'N/A', 'http://downloads.sourceforge.net/libtirpc=
/libtirpc-0.2.4.tar.bz2;name=3Dlibtirpc', 'Cristian Iorga <cristian.iorga@i=
ntel.com>', 'None']
inserted (libtirpc,0.2.4,N/A,BSD,libs/network,r0,None,http://sourceforge.ne=
t/projects/libtirpc/,http://sourceforge.net/tracker/?group_id=3D183075&atid=
=3D903784,ErrHostNoDir:/libtirpc/:-:libtirpc-0.2.4.tar.bz2:downloads.source=
forge.net/libtirpc/libtirpc-0.2.4.tar.bz2,pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   xz-nat=
ive,Libtirpc is a port of Suns Transport-Independent RPC library to Linux,N=
/A,http://downloads.sourceforge.net/libtirpc/libtirpc-0.2.4.tar.bz2;name=3D=
libtirpc,Cristian Iorga <cristian.iorga@intel.com>)
['findutils', '4.4.2', 'N/A', 'GPLv3+', 'console/utils', 'http://www.gnu.or=
g/software/findutils/', 'r6', 'autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  biso=
n-native virtual/update-alternatives', 'http://savannah.gnu.org/bugs/?group=
=3Dfindutils', 'None', 'The GNU Find Utilities are the basic directory sear=
ching utilities of the GNU operating system. These programs are typically u=
sed in conjunction with other programs to provide modular and powerful dire=
ctory search and file locating capabilities to other commands.', 'ErrHostNo=
Dir:/gnu/findutils/:-:findutils-4.4.2.tar.gz:ftp.gnu.org/gnu/findutils/find=
utils-4.4.2.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/findutils/findutils-4.4.=
2.tar.gz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (findutils,4.4.2,N/A,GPLv3+,console/utils,r6,None,http://www.gnu.o=
rg/software/findutils/,http://savannah.gnu.org/bugs/?group=3Dfindutils,ErrH=
ostNoDir:/gnu/findutils/:-:findutils-4.4.2.tar.gz:ftp.gnu.org/gnu/findutils=
/findutils-4.4.2.tar.gz,autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bison-nativ=
e virtual/update-alternatives,The GNU Find Utilities are the basic director=
y searching utilities of the GNU operating system. These programs are typic=
ally used in conjunction with other programs to provide modular and powerfu=
l directory search and file locating capabilities to other commands.,N/A,ft=
p://ftp.gnu.org/gnu/findutils/findutils-4.4.2.tar.gz,Chen Qi <Qi.Chen@windr=
iver.com>)
['popt', '1.16', 'N/A', 'MIT', 'libs', 'http://rpm5.org/', 'r3', 'autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native virtu=
al/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ', 'None', 'None', 'Library for parsing comm=
and line options.', 'ErrHostNoDir:/files/popt/:-:popt-1.16.tar.gz:rpm5.org/=
files/popt/popt-1.16.tar.gz', 'N/A', 'http://rpm5.org/files/popt/popt-1.16.=
tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (popt,1.16,N/A,MIT,libs,r3,None,http://rpm5.org/,None,ErrHostNoDir=
:/files/popt/:-:popt-1.16.tar.gz:rpm5.org/files/popt/popt-1.16.tar.gz,autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native v=
irtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ,Library for parsing command line option=
s.,N/A,http://rpm5.org/files/popt/popt-1.16.tar.gz,Paul Eggleton <paul.eggl=
eton@linux.intel.com>)
['x264', 'r2265+gitAUTOINC+585324fee3', 'r2265+gitAUTOINC+d6b4e63', 'GPLv2'=
, 'base', 'http://www.videolan.org/developers/x264.html', 'r0', 'pkgconfig-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  yasm-native perl-native', 'None', 'None', 'A free software libr=
ary and application for encoding video streams into the H.264/MPEG-4 AVC fo=
rmat.', 'UPDATE', 'N/A', 'git://git.videolan.org/x264.git', 'Paul Eggleton =
<paul.eggleton@linux.intel.com>', 'None']
inserted (x264,r2265+gitAUTOINC+585324fee3,r2265+gitAUTOINC+d6b4e63,GPLv2,b=
ase,r0,None,http://www.videolan.org/developers/x264.html,None,UPDATE,pkgcon=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  yasm-native perl-native,A free software library and applica=
tion for encoding video streams into the H.264/MPEG-4 AVC format.,N/A,git:/=
/git.videolan.org/x264.git,Paul Eggleton <paul.eggleton@linux.intel.com>)
['blktool', '4-6.1', 'N/A', 'GPLv2+', 'base', 'http://packages.debian.org/u=
nstable/admin/blktool', 'r1', 'autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  glib-2.0', 'None', 'None', 'blktool=
 is used for querying and/or changing settings of a block device. It is lik=
e hdparm but a more general tool, as it works on SCSI, IDE and SATA devices=
=2E', 'ErrHostNoDir:/debian/pool/main/b/blktool/:-:blktool_4.orig.tar.gz:ft=
p.debian.org/debian/pool/main/b/blktool/blktool_4.orig.tar.gz', 'N/A', 'ftp=
://ftp.debian.org/debian/pool/main/b/blktool/blktool_4.orig.tar.gz;name=3Dt=
arball', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (blktool,4-6.1,N/A,GPLv2+,base,r1,None,http://packages.debian.org/=
unstable/admin/blktool,None,ErrHostNoDir:/debian/pool/main/b/blktool/:-:blk=
tool_4.orig.tar.gz:ftp.debian.org/debian/pool/main/b/blktool/blktool_4.orig=
=2Etar.gz,autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  glib-2.0,blktool is used for querying and/or changing se=
ttings of a block device. It is like hdparm but a more general tool, as it =
works on SCSI, IDE and SATA devices.,N/A,ftp://ftp.debian.org/debian/pool/m=
ain/b/blktool/blktool_4.orig.tar.gz;name=3Dtarball,Paul Eggleton <paul.eggl=
eton@linux.intel.com>)
['kernelshark', '1.2+gitAUTOINC+7055ffd37b', '2.3.2+gitAUTOINC+8435f51', 'G=
PLv2', 'base', '', 'r3', 'pkgconfig-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  gtk+  python-native ', 'Non=
e', 'None', 'Graphical trace viewer for Ftrace.', 'UPDATE', 'N/A', 'git://g=
it.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git', 'Darren Hart=
 <dvhart@linux.intel.com>', '0.2 is the latest version.']
inserted (kernelshark,1.2+gitAUTOINC+7055ffd37b,2.3.2+gitAUTOINC+8435f51,GP=
Lv2,base,r3,None,,None,UPDATE,pkgconfig-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+  python-native ,Gr=
aphical trace viewer for Ftrace.,N/A,git://git.kernel.org/pub/scm/linux/ker=
nel/git/rostedt/trace-cmd.git,Darren Hart <dvhart@linux.intel.com>)
['matchbox-theme-sato', '0.1', 'N/A', 'CC-BY-SA-3.0', 'x11/wm', 'http://www=
=2Ematchbox-project.org/', 'r1', 'pkgconfig-native autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  matchbox-wm', '=
http://bugzilla.yoctoproject.org/', 'None', 'Matchbox window manager Sato t=
hemes.', 'ErrHostNoDir:/releases/sato/:-:matchbox-theme-sato-0.1.tar.gz:pok=
ylinux.org/releases/sato/matchbox-theme-sato-0.1.tar.gz', 'N/A', 'http://po=
kylinux.org/releases/sato/matchbox-theme-sato-0.1.tar.gz', 'Valentin Popa <=
valentin.popa@intel.com>', 'None']
inserted (matchbox-theme-sato,0.1,N/A,CC-BY-SA-3.0,x11/wm,r1,None,http://ww=
w.matchbox-project.org/,http://bugzilla.yoctoproject.org/,ErrHostNoDir:/rel=
eases/sato/:-:matchbox-theme-sato-0.1.tar.gz:pokylinux.org/releases/sato/ma=
tchbox-theme-sato-0.1.tar.gz,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  matchbox-wm,Matchbox=
 window manager Sato themes.,N/A,http://pokylinux.org/releases/sato/matchbo=
x-theme-sato-0.1.tar.gz,Valentin Popa <valentin.popa@intel.com>)
['gstreamer1.0-plugins-base', '1.2.3', 'N/A', 'GPLv2+ & LGPLv2+', 'multimed=
ia', 'http://gstreamer.freedesktop.org/', 'r0', 'pkgconfig-native autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native virtu=
al/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  gstreamer1.0 virtual/libx11 libxv freetype l=
iboil util-linux alsa-lib tremor libogg orc libtheora libvorbis virtual/lib=
x11 libsm libxrender', 'https://bugzilla.gnome.org/enter_bug.cgi?product=3D=
Gstreamer', 'None', 'Plugins for the GStreamer multimedia framework 1.x.', =
'ErrHostNoDir:/src/gst-plugins-base/:-:gst-plugins-base-1.2.3.tar.xz:gstrea=
mer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.2.3.tar.xz', 'N=
/A', 'http://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-bas=
e-1.2.3.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (gstreamer1.0-plugins-base,1.2.3,N/A,GPLv2+ & LGPLv2+,multimedia,r=
0,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/enter_b=
ug.cgi?product=3DGstreamer,ErrHostNoDir:/src/gst-plugins-base/:-:gst-plugin=
s-base-1.2.3.tar.xz:gstreamer.freedesktop.org/src/gst-plugins-base/gst-plug=
ins-base-1.2.3.tar.xz,pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  gstreamer1.0 virtual/libx11 libxv freetype liboil util-linux alsa-lib t=
remor libogg orc libtheora libvorbis virtual/libx11 libsm libxrender,Plugin=
s for the GStreamer multimedia framework 1.x.,N/A,http://gstreamer.freedesk=
top.org/src/gst-plugins-base/gst-plugins-base-1.2.3.tar.xz,Cristian Iorga <=
cristian.iorga@intel.com>)
['docbook-sgml-dtd-3.1-native', '31', 'N/A', 'OASIS', 'base', 'http://www.d=
ocbook.org/sgml/', 'r3.0', ' sgml-common-native', 'None', 'None', 'Document=
 type definitions for verification of SGML data files against the DocBook r=
ule set', 'ErrHostNoDir:/sgml/31/:3.1:docbk31.zip:www.docbook.org/sgml/3.1/=
docbk31.zip', 'N/A', 'http://www.docbook.org/sgml/3.1/docbk31.zip', 'Paul E=
ggleton <paul.eggleton@linux.intel.com>', 'PRS Reports Incorrectly']
inserted (docbook-sgml-dtd-3.1-native,31,N/A,OASIS,base,r3.0,None,http://ww=
w.docbook.org/sgml/,None,ErrHostNoDir:/sgml/31/:3.1:docbk31.zip:www.docbook=
=2Eorg/sgml/3.1/docbk31.zip, sgml-common-native,Document type definitions f=
or verification of SGML data files against the DocBook rule set,N/A,http://=
www.docbook.org/sgml/3.1/docbk31.zip,Paul Eggleton <paul.eggleton@linux.int=
el.com>)
['fontconfig', '2.11.0', 'N/A', 'MIT-style & MIT & PD', 'libs', 'http://www=
=2Efontconfig.org', 'r0', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  expat freetype zlib', =
'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dfontconfig', 'None', =
"Fontconfig is a font configuration and customization library, which does n=
ot depend on the X Window System. It is designed to locate fonts within the=
 system and select them according to requirements specified by applications=
=2E Fontconfig is not a rasterization library, nor does it impose a particu=
lar rasterization library on the application. The X-specific library 'Xft' =
uses fontconfig along with freetype to specify and rasterize fonts.", 'ErrH=
ostNoDir:/release/:-:fontconfig-2.11.0.tar.gz:fontconfig.org/release/fontco=
nfig-2.11.0.tar.gz', 'N/A', 'http://fontconfig.org/release/fontconfig-2.11.=
0.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (fontconfig,2.11.0,N/A,MIT-style & MIT & PD,libs,r0,None,http://ww=
w.fontconfig.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dfontc=
onfig,ErrHostNoDir:/release/:-:fontconfig-2.11.0.tar.gz:fontconfig.org/rele=
ase/fontconfig-2.11.0.tar.gz,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  expat freetype zlib,=
Fontconfig is a font configuration and customization library, which does no=
t depend on the X Window System. It is designed to locate fonts within the =
system and select them according to requirements specified by applications.=
 Fontconfig is not a rasterization library, nor does it impose a particular=
 rasterization library on the application. The X-specific library 'Xft' use=
s fontconfig along with freetype to specify and rasterize fonts.,N/A,http:/=
/fontconfig.org/release/fontconfig-2.11.0.tar.gz,Laurentiu Palcu <laurentiu=
=2Epalcu@intel.com>)
['weston-init', '1.0', 'INVALID', 'MIT', 'base', '', 'r0', '  update-rc.d-n=
ative', 'None', 'None', 'Startup script for the Weston Wayland compositor.'=
, 'MATCH', 'N/A', 'file://init', 'None', 'None']
inserted (weston-init,1.0,INVALID,MIT,base,r0,None,,None,MATCH,  update-rc.=
d-native,Startup script for the Weston Wayland compositor.,N/A,file://init,=
None)
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
['python-pygtk', '2.24.0', 'N/A', 'LGPLv2.1', 'devel/python', '', 'r1', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  gtk+ libglade python-pycairo python-pygobject pytho=
n-native python  python-native ', 'None', 'None', 'Python bindings for the =
GTK+ UI toolkit.', 'ErrHostNoDir:/pub/gnome/sources/pygtk/2.24/pygtk-2.24.0=
=2Etar.bz2:2.24:-:ftp.gnome.org/pub/gnome/sources/pygtk/2.24/pygtk-2.24.0.t=
ar.bz2', 'N/A', 'ftp://ftp.gnome.org/pub/gnome/sources/pygtk/2.24/pygtk-2.2=
4.0.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (python-pygtk,2.24.0,N/A,LGPLv2.1,devel/python,r1,None,,None,ErrHo=
stNoDir:/pub/gnome/sources/pygtk/2.24/pygtk-2.24.0.tar.bz2:2.24:-:ftp.gnome=
=2Eorg/pub/gnome/sources/pygtk/2.24/pygtk-2.24.0.tar.bz2,pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  gtk+ libglade python-pycairo python-pygobject python-native python =
 python-native ,Python bindings for the GTK+ UI toolkit.,N/A,ftp://ftp.gnom=
e.org/pub/gnome/sources/pygtk/2.24/pygtk-2.24.0.tar.bz2,Laurentiu Palcu <la=
urentiu.palcu@intel.com>)
['iptables', '1.4.21', 'N/A', 'GPLv2+', 'base', 'http://www.netfilter.org/'=
, 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  ', 'http://bugzilla.netfilter.org/', 'None', 'iptables is=
 the userspace command line program used to configure and control network p=
acket filtering code in Linux.', 'ErrHostNoDir:/projects/iptables/files/:-:=
iptables-1.4.21.tar.bz2:netfilter.org/projects/iptables/files/iptables-1.4.=
21.tar.bz2', 'N/A', 'http://netfilter.org/projects/iptables/files/iptables-=
1.4.21.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (iptables,1.4.21,N/A,GPLv2+,base,r0,None,http://www.netfilter.org/=
,http://bugzilla.netfilter.org/,ErrHostNoDir:/projects/iptables/files/:-:ip=
tables-1.4.21.tar.bz2:netfilter.org/projects/iptables/files/iptables-1.4.21=
=2Etar.bz2,autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ,iptables is the userspace command line program used to=
 configure and control network packet filtering code in Linux.,N/A,http://n=
etfilter.org/projects/iptables/files/iptables-1.4.21.tar.bz2,Cristian Iorga=
 <cristian.iorga@intel.com>)
['recordproto', '1.14.2', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org=
', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the X Record extension.  This extension is used to record and =
play back event sequences.', 'ErrHostNoDir:/releases/individual/proto/:-:re=
cordproto-1.14.2.tar.bz2:xorg.freedesktop.org/releases/individual/proto/rec=
ordproto-1.14.2.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/indi=
vidual/proto/recordproto-1.14.2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu=
@intel.com>', 'None']
inserted (recordproto,1.14.2,N/A,MIT-style,x11/libs,r1,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/rele=
ases/individual/proto/:-:recordproto-1.14.2.tar.bz2:xorg.freedesktop.org/re=
leases/individual/proto/recordproto-1.14.2.tar.bz2,pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  util-macros,This package provides the wire protocol for the X Record exte=
nsion.  This extension is used to record and play back event sequences.,N/A=
,http://xorg.freedesktop.org/releases/individual/proto/recordproto-1.14.2.t=
ar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['freetype', '2.5.2', 'N/A', 'FreeType | GPLv2+', 'libs', 'http://www.freet=
ype.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  ', 'https://savannah.nongnu.org=
/bugs/?group=3Dfreetype', 'None', 'FreeType is a software font engine that =
is designed to be small, efficient, highly customizable, and portable while=
 capable of producing high-quality output (glyph images). It can be used in=
 graphics libraries, display servers, font conversion tools, text image gen=
eration tools, and many other products as well.', 'ErrHostNoDir:/freetype/:=
-:freetype-2.5.2.tar.bz2:downloads.sourceforge.net/freetype/freetype-2.5.2.=
tar.bz2', 'N/A', 'http://downloads.sourceforge.net/freetype/freetype-2.5.2.=
tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (freetype,2.5.2,N/A,FreeType | GPLv2+,libs,r0,None,http://www.free=
type.org/,https://savannah.nongnu.org/bugs/?group=3Dfreetype,ErrHostNoDir:/=
freetype/:-:freetype-2.5.2.tar.bz2:downloads.sourceforge.net/freetype/freet=
ype-2.5.2.tar.bz2,pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  ,FreeType is a software font en=
gine that is designed to be small, efficient, highly customizable, and port=
able while capable of producing high-quality output (glyph images). It can =
be used in graphics libraries, display servers, font conversion tools, text=
 image generation tools, and many other products as well.,N/A,http://downlo=
ads.sourceforge.net/freetype/freetype-2.5.2.tar.bz2,Ross Burton <ross.burto=
n@intel.com>)
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
['createrepo', '0.4.11', 'N/A', 'GPLv2+', 'base', 'http://createrepo.baseur=
l.org/', 'r9', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ', 'None', 'None', 'Creates metadata indexes for RPM p=
ackage repositories.', 'ErrHostNoDir:/download/:-:createrepo-0.4.11.tar.gz:=
createrepo.baseurl.org/download/createrepo-0.4.11.tar.gz', 'N/A', 'http://c=
reaterepo.baseurl.org/download/createrepo-0.4.11.tar.gz', 'Paul Eggleton <p=
aul.eggleton@linux.intel.com>', 'Versions after 0.9.* use YUM, so we hold a=
t 0.4.11']
inserted (createrepo,0.4.11,N/A,GPLv2+,base,r9,None,http://createrepo.baseu=
rl.org/,None,ErrHostNoDir:/download/:-:createrepo-0.4.11.tar.gz:createrepo.=
baseurl.org/download/createrepo-0.4.11.tar.gz, virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  ,Creates metadata indexe=
s for RPM package repositories.,N/A,http://createrepo.baseurl.org/download/=
createrepo-0.4.11.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['db', '5.3.21', 'N/A', 'Sleepycat', 'libs', 'http://www.oracle.com/technol=
ogy/products/berkeley-db/db/index.html', 'r0', 'autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None',=
 'Berkeley Database v5.', 'ErrHostNoDir:/berkeley-db/:-:db-5.3.21.tar.gz:do=
wnload.oracle.com/berkeley-db/db-5.3.21.tar.gz', 'N/A', 'http://download.or=
acle.com/berkeley-db/db-5.3.21.tar.gz', 'Cristian Iorga <cristian.iorga@int=
el.com>', 'API compatibility issue']
inserted (db,5.3.21,N/A,Sleepycat,libs,r0,None,http://www.oracle.com/techno=
logy/products/berkeley-db/db/index.html,None,ErrHostNoDir:/berkeley-db/:-:d=
b-5.3.21.tar.gz:download.oracle.com/berkeley-db/db-5.3.21.tar.gz,autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,=
Berkeley Database v5.,N/A,http://download.oracle.com/berkeley-db/db-5.3.21.=
tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['cpio', '2.11', 'N/A', 'GPLv3', 'base', 'http://www.gnu.org/software/cpio/=
', 'r4', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  texinfo-native virtual/up=
date-alternatives', 'None', 'None', 'GNU cpio is a tool for creating and ex=
tracting archives, or copying files from one place to another. It handles a=
 number of cpio formats as well as reading and writing tar files.', 'ErrHos=
tNoDir:/gnu/cpio/:-:cpio-2.11.tar.gz:ftp.gnu.org/gnu/cpio/cpio-2.11.tar.gz'=
, 'N/A', 'ftp://ftp.gnu.org/gnu/cpio/cpio-2.11.tar.gz', 'Chen Qi <Qi.Chen@w=
indriver.com>', 'None']
inserted (cpio,2.11,N/A,GPLv3,base,r4,None,http://www.gnu.org/software/cpio=
/,None,ErrHostNoDir:/gnu/cpio/:-:cpio-2.11.tar.gz:ftp.gnu.org/gnu/cpio/cpio=
-2.11.tar.gz,autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  texinfo-native virtual=
/update-alternatives,GNU cpio is a tool for creating and extracting archive=
s, or copying files from one place to another. It handles a number of cpio =
formats as well as reading and writing tar files.,N/A,ftp://ftp.gnu.org/gnu=
/cpio/cpio-2.11.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['liboil', '0.3.17', 'N/A', 'BSD', 'base', 'http://liboil.freedesktop.org/'=
, 'r5', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  glib-2.0', 'https://bugs.freedesktop.org=
/', 'None', 'Library of simple functions optimized for various CPUs.', 'Err=
HostNoDir:/download/:-:liboil-0.3.17.tar.gz:liboil.freedesktop.org/download=
/liboil-0.3.17.tar.gz', 'N/A', 'http://liboil.freedesktop.org/download/libo=
il-0.3.17.tar.gz', 'Cristiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (liboil,0.3.17,N/A,BSD,base,r5,None,http://liboil.freedesktop.org/=
,https://bugs.freedesktop.org/,ErrHostNoDir:/download/:-:liboil-0.3.17.tar.=
gz:liboil.freedesktop.org/download/liboil-0.3.17.tar.gz,pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  glib-2.0,Library of simple functions optimized for various CPUs.,N/A=
,http://liboil.freedesktop.org/download/liboil-0.3.17.tar.gz,Cristiana Voic=
u <cristiana.voicu@intel.com>)
['kbd', '2.0.1', 'N/A', 'GPLv2+', 'base', '', 'r0', 'autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native virtual/gettext ge=
ttext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  libcheck virtual/update-alternatives', 'None', 'None', 'K=
eytable files and keyboard utilities.', 'ErrHostNoDir:/pub/linux/utils/kbd/=
:-:kbd-2.0.1.tar.bz2:kernel.org/pub/linux/utils/kbd/kbd-2.0.1.tar.bz2', 'N/=
A', 'http://kernel.org/pub/linux/utils/kbd/kbd-2.0.1.tar.bz2', 'Saul Wold <=
sgw@linux.intel.com>', 'None']
inserted (kbd,2.0.1,N/A,GPLv2+,base,r0,None,,None,ErrHostNoDir:/pub/linux/u=
tils/kbd/:-:kbd-2.0.1.tar.bz2:kernel.org/pub/linux/utils/kbd/kbd-2.0.1.tar.=
bz2,autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  libcheck virtual/update-alterna=
tives,Keytable files and keyboard utilities.,N/A,http://kernel.org/pub/linu=
x/utils/kbd/kbd-2.0.1.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['libnotify', '0.6.0', 'N/A', 'LGPLv2.1', 'libs', '', 'r1', 'pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  dbus gtk+ gnome-common-native', 'None', 'None', 'Library for se=
nding desktop notifications to a notification daemon.', 'ErrHostNoDir:/pub/=
GNOME/sources/libnotify/0.6/libnotify-0.6.0.tar.bz2:0.6:-:ftp.gnome.org/pub=
/GNOME/sources/libnotify/0.6/libnotify-0.6.0.tar.bz2', 'N/A', 'http://ftp.g=
nome.org/pub/GNOME/sources/libnotify/0.6/libnotify-0.6.0.tar.bz2;name=3Darc=
hive', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libnotify,0.6.0,N/A,LGPLv2.1,libs,r1,None,,None,ErrHostNoDir:/pub=
/GNOME/sources/libnotify/0.6/libnotify-0.6.0.tar.bz2:0.6:-:ftp.gnome.org/pu=
b/GNOME/sources/libnotify/0.6/libnotify-0.6.0.tar.bz2,pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  dbus gtk+ gnome-common-native,Library for sending desktop notification=
s to a notification daemon.,N/A,http://ftp.gnome.org/pub/GNOME/sources/libn=
otify/0.6/libnotify-0.6.0.tar.bz2;name=3Darchive,Ross Burton <ross.burton@i=
ntel.com>)
['libomxil', '0.9.3', 'N/A', 'LGPLv2.1+', 'base', 'http://omxil.sourceforge=
=2Enet/', 'r0', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  ', 'None', 'None', 'Bellagio is an opensource imp=
lementation of the Khronos OpenMAX                Integration Layer API to =
access multimedia components.', 'ErrHostNoDir:/omxil/:-:libomxil-bellagio-0=
=2E9.3.tar.gz:downloads.sourceforge.net/omxil/libomxil-bellagio-0.9.3.tar.g=
z', 'N/A', 'http://downloads.sourceforge.net/omxil/libomxil-bellagio-0.9.3.=
tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libomxil,0.9.3,N/A,LGPLv2.1+,base,r0,None,http://omxil.sourceforg=
e.net/,None,ErrHostNoDir:/omxil/:-:libomxil-bellagio-0.9.3.tar.gz:downloads=
=2Esourceforge.net/omxil/libomxil-bellagio-0.9.3.tar.gz,autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Bellagio =
is an opensource implementation of the Khronos OpenMAX                Integ=
ration Layer API to access multimedia components.,N/A,http://downloads.sour=
ceforge.net/omxil/libomxil-bellagio-0.9.3.tar.gz,Cristian Iorga <cristian.i=
orga@intel.com>)
['alsa-state', '0.2.0', 'INVALID', 'MIT', 'base', '', 'r4', ' virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   update-r=
c.d-native', 'None', 'None', 'Alsa Scenario Files - an init script and stat=
e files to restore sound state at system boot and save it at system shut do=
wn.', 'MATCH', 'N/A', 'file://asound.conf', 'Cristian Iorga <cristian.iorga=
@intel.com>', 'None']
inserted (alsa-state,0.2.0,INVALID,MIT,base,r4,None,,None,MATCH, virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   updat=
e-rc.d-native,Alsa Scenario Files - an init script and state files to resto=
re sound state at system boot and save it at system shut down.,N/A,file://a=
sound.conf,Cristian Iorga <cristian.iorga@intel.com>)
['xf86driproto', '2.1.1', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/e=
nter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol=
 for the XFree86 Direct Rendering Infrastructure extension.  The XFree86-DR=
I extension is used to organize direct rendering support or 3D clients and =
help arbitrate requests.', 'ErrHostNoDir:/releases/individual/proto/:-:xf86=
driproto-2.1.1.tar.bz2:xorg.freedesktop.org/releases/individual/proto/xf86d=
riproto-2.1.1.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/indivi=
dual/proto/xf86driproto-2.1.1.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@i=
ntel.com>', 'None']
inserted (xf86driproto,2.1.1,N/A,MIT,x11/libs,r0,1,http://www.x.org,https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/i=
ndividual/proto/:-:xf86driproto-2.1.1.tar.bz2:xorg.freedesktop.org/releases=
/individual/proto/xf86driproto-2.1.1.tar.bz2,pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util=
-macros,This package provides the wire protocol for the XFree86 Direct Rend=
ering Infrastructure extension.  The XFree86-DRI extension is used to organ=
ize direct rendering support or 3D clients and help arbitrate requests.,N/A=
,http://xorg.freedesktop.org/releases/individual/proto/xf86driproto-2.1.1.t=
ar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
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
['gnome-icon-theme', '2.31.0', 'N/A', 'LGPLv3+ | CC-BY-SA-3.0', 'x11/gnome'=
, 'http://www.gnome.org/', 'r5', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  icon-naming-utils-native glib-2.=
0 intltool-native libxml-simple-perl-native perl-native hicolor-icon-theme =
gtk-update-icon-cache-native', 'https://bugzilla.gnome.org/', 'None', 'GNOM=
E 2 default icon themes.', 'ErrHostNoDir:/pub/GNOME/sources/gnome-icon-them=
e/2.31/gnome-icon-theme-2.31.0.tar.bz2:2.31:-:ftp.gnome.org/pub/GNOME/sourc=
es/gnome-icon-theme/2.31/gnome-icon-theme-2.31.0.tar.bz2', '3.7.4', 'http:/=
/ftp.gnome.org/pub/GNOME/sources/gnome-icon-theme/2.31/gnome-icon-theme-2.3=
1.0.tar.bz2', 'Valentin Popa <valentin.popa@intel.com>', 'waiting for the s=
ato gtk3 port']
inserted (gnome-icon-theme,2.31.0,N/A,LGPLv3+ | CC-BY-SA-3.0,x11/gnome,r5,N=
one,http://www.gnome.org/,https://bugzilla.gnome.org/,ErrHostNoDir:/pub/GNO=
ME/sources/gnome-icon-theme/2.31/gnome-icon-theme-2.31.0.tar.bz2:2.31:-:ftp=
=2Egnome.org/pub/GNOME/sources/gnome-icon-theme/2.31/gnome-icon-theme-2.31.=
0.tar.bz2,autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  icon-naming-utils-native glib-2.0 intltool-native libxml=
-simple-perl-native perl-native hicolor-icon-theme gtk-update-icon-cache-na=
tive,GNOME 2 default icon themes.,3.7.4,http://ftp.gnome.org/pub/GNOME/sour=
ces/gnome-icon-theme/2.31/gnome-icon-theme-2.31.0.tar.bz2,Valentin Popa <va=
lentin.popa@intel.com>)
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
['libxml-namespacesupport-perl', '1.11', 'N/A', 'Artistic-1.0 | GPL-1.0+', =
'libs', '', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc   perl perl-native', 'None', 'None', 'XML::Namespace=
Support offers a simple way to process namespace-based XML names.          =
       It also helps maintain a prefix-to-namespace URI map, and provides a=
 number of                 basic checks. ', 'ErrHostNoDir:/CPAN/authors/id/=
P/PE/PERIGRIN/:-:XML-NamespaceSupport-1.11.tar.gz:search.cpan.org/CPAN/auth=
ors/id/P/PE/PERIGRIN/XML-NamespaceSupport-1.11.tar.gz', 'N/A', 'http://sear=
ch.cpan.org/CPAN/authors/id/P/PE/PERIGRIN/XML-NamespaceSupport-1.11.tar.gz'=
, 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libxml-namespacesupport-perl,1.11,N/A,Artistic-1.0 | GPL-1.0+,lib=
s,r3,None,,None,ErrHostNoDir:/CPAN/authors/id/P/PE/PERIGRIN/:-:XML-Namespac=
eSupport-1.11.tar.gz:search.cpan.org/CPAN/authors/id/P/PE/PERIGRIN/XML-Name=
spaceSupport-1.11.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc   perl perl-native,XML::NamespaceSupport offer=
s a simple way to process namespace-based XML names.                 It als=
o helps maintain a prefix-to-namespace URI map, and provides a number of   =
              basic checks. ,N/A,http://search.cpan.org/CPAN/authors/id/P/P=
E/PERIGRIN/XML-NamespaceSupport-1.11.tar.gz,Saul Wold <sgw@linux.intel.com>)
['adt-installer', '0.2.0', 'N/A', 'MIT', 'base', 'http://www.yoctoproject.o=
rg/tools-resources/projects/application-development-toolkit-adt', 'r11', ' =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  ', 'None', 'None', 'Creates the Application Development Toolkit (ADT) i=
nstaller tarball', 'ErrHostNoDir:/files/:-:opkg-0.2.0.tar.gz:opkg.googlecod=
e.com/files/opkg-0.2.0.tar.gz', '1.1', 'https://opkg.googlecode.com/files/o=
pkg-0.2.0.tar.gz', 'Jessica Zhang <jessica.zhang@intel.com>', 'None']
inserted (adt-installer,0.2.0,N/A,MIT,base,r11,None,http://www.yoctoproject=
=2Eorg/tools-resources/projects/application-development-toolkit-adt,None,Er=
rHostNoDir:/files/:-:opkg-0.2.0.tar.gz:opkg.googlecode.com/files/opkg-0.2.0=
=2Etar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  ,Creates the Application Development Toolkit (ADT) installer=
 tarball,1.1,https://opkg.googlecode.com/files/opkg-0.2.0.tar.gz,Jessica Zh=
ang <jessica.zhang@intel.com>)
['xextproto', '7.3.0', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x.=
org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-=
macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', =
'This package provides the wire protocol for several X extensions.  These p=
rotocol extensions include DOUBLE-BUFFER, DPMS, Extended-Visual-Information=
, LBX, MIT_SHM, MIT_SUNDRY-NONSTANDARD, Multi-Buffering, SECURITY, SHAPE, S=
YNC, TOG-CUP, XC-APPGROUP, XC-MISC, XTEST.  In addition a small set of util=
ity functions are also available.', 'ErrHostNoDir:/releases/individual/prot=
o/:-:xextproto-7.3.0.tar.bz2:xorg.freedesktop.org/releases/individual/proto=
/xextproto-7.3.0.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/ind=
ividual/proto/xextproto-7.3.0.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@i=
ntel.com>', 'None']
inserted (xextproto,7.3.0,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.x.or=
g,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/r=
eleases/individual/proto/:-:xextproto-7.3.0.tar.bz2:xorg.freedesktop.org/re=
leases/individual/proto/xextproto-7.3.0.tar.bz2,pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native virtua=
l/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros,This package provides the wire pr=
otocol for several X extensions.  These protocol extensions include DOUBLE-=
BUFFER, DPMS, Extended-Visual-Information, LBX, MIT_SHM, MIT_SUNDRY-NONSTAN=
DARD, Multi-Buffering, SECURITY, SHAPE, SYNC, TOG-CUP, XC-APPGROUP, XC-MISC=
, XTEST.  In addition a small set of utility functions are also available.,=
N/A,http://xorg.freedesktop.org/releases/individual/proto/xextproto-7.3.0.t=
ar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['liberation-fonts', '1.04', 'N/A', 'GPLv2', 'x11/fonts', 'https://fedoraho=
sted.org/liberation-fonts/', 'r4', ' virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   qemu-native', 'https://bugzilla.r=
edhat.com/', '1', 'The Liberation(tm) Fonts is a font family originally cre=
ated by Ascender(c) which aims at metric compatibility with Arial, Times Ne=
w Roman, Courier New.', 'ErrHostNoDir:/releases/l/i/liberation-fonts/:-:lib=
eration-fonts-1.04.tar.gz:fedorahosted.org/releases/l/i/liberation-fonts/li=
beration-fonts-1.04.tar.gz', 'N/A', 'https://fedorahosted.org/releases/l/i/=
liberation-fonts/liberation-fonts-1.04.tar.gz', 'Valentin Popa <valentin.po=
pa@intel.com>', '2.00.0 - fontforge package required ']
inserted (liberation-fonts,1.04,N/A,GPLv2,x11/fonts,r4,1,https://fedorahost=
ed.org/liberation-fonts/,https://bugzilla.redhat.com/,ErrHostNoDir:/release=
s/l/i/liberation-fonts/:-:liberation-fonts-1.04.tar.gz:fedorahosted.org/rel=
eases/l/i/liberation-fonts/liberation-fonts-1.04.tar.gz, virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   qemu-native,T=
he Liberation(tm) Fonts is a font family originally created by Ascender(c) =
which aims at metric compatibility with Arial, Times New Roman, Courier New=
=2E,N/A,https://fedorahosted.org/releases/l/i/liberation-fonts/liberation-f=
onts-1.04.tar.gz,Valentin Popa <valentin.popa@intel.com>)
['patch', '2.7.1', 'N/A', 'GPLv3', 'utils', '', 'r0', 'autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   attr virtu=
al/update-alternatives', 'None', 'None', 'patch takes a patch file containi=
ng a difference listing produced by the diff program and applies those diff=
erences to one or more original files, producing patched versions.', 'ErrHo=
stNoDir:/gnu/patch/:-:patch-2.7.1.tar.gz:ftp.gnu.org/gnu/patch/patch-2.7.1.=
tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/patch/patch-2.7.1.tar.gz', 'Hongxu J=
ia <hongxu.jia@windriver.com>', 'None']
inserted (patch,2.7.1,N/A,GPLv3,utils,r0,None,,None,ErrHostNoDir:/gnu/patch=
/:-:patch-2.7.1.tar.gz:ftp.gnu.org/gnu/patch/patch-2.7.1.tar.gz,autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   a=
ttr virtual/update-alternatives,patch takes a patch file containing a diffe=
rence listing produced by the diff program and applies those differences to=
 one or more original files, producing patched versions.,N/A,ftp://ftp.gnu.=
org/gnu/patch/patch-2.7.1.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['rt-tests', '0.87', '0.89', 'GPLv2 & GPLv2+', 'tests', 'https://rt.wiki.ke=
rnel.org/index.php/Cyclictest', 'r0', ' virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  linux-libc-headers virtual/libc=
', 'None', 'None', 'Real-Time preemption testcases.', 'ErrUnknown:git.kerne=
l.org/pub/scm/linux/kernel/git/clrkwllms/rt-tests.git', 'N/A', 'git://git.k=
ernel.org/pub/scm/linux/kernel/git/clrkwllms/rt-tests.git', 'Darren Hart <d=
vhart@linux.intel.com>', 'None']
inserted (rt-tests,0.87,0.89,GPLv2 & GPLv2+,tests,r0,None,https://rt.wiki.k=
ernel.org/index.php/Cyclictest,None,ErrUnknown:git.kernel.org/pub/scm/linux=
/kernel/git/clrkwllms/rt-tests.git, virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  linux-libc-headers virtual/libc,Rea=
l-Time preemption testcases.,N/A,git://git.kernel.org/pub/scm/linux/kernel/=
git/clrkwllms/rt-tests.git,Darren Hart <dvhart@linux.intel.com>)
['gst-plugin-bluetooth', '4.101', 'N/A', 'GPLv2+ & LGPLv2.1+', 'libs', 'htt=
p://www.bluez.org', 'r1', 'autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  bluez4 gst-plugins-base alsa-lib', 'Non=
e', 'None', 'Linux Bluetooth stack V4 userland components.  These include a=
 system configurations, daemons, tools and system libraries.', 'ErrHostNoDi=
r:/pub/linux/bluetooth/:-:bluez-4.101.tar.gz:kernel.org/pub/linux/bluetooth=
/bluez-4.101.tar.gz', 'N/A', 'http://kernel.org/pub/linux/bluetooth/bluez-4=
=2E101.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (gst-plugin-bluetooth,4.101,N/A,GPLv2+ & LGPLv2.1+,libs,r1,None,ht=
tp://www.bluez.org,None,ErrHostNoDir:/pub/linux/bluetooth/:-:bluez-4.101.ta=
r.gz:kernel.org/pub/linux/bluetooth/bluez-4.101.tar.gz,autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bluez4 gst-=
plugins-base alsa-lib,Linux Bluetooth stack V4 userland components.  These =
include a system configurations, daemons, tools and system libraries.,N/A,h=
ttp://kernel.org/pub/linux/bluetooth/bluez-4.101.tar.gz,Cristian Iorga <cri=
stian.iorga@intel.com>)
['distcc-config', '1.0', 'INVALID', 'MIT', 'base', '', 'r0', ' virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None=
', 'None', 'Sets up distcc for compilation on the target device.', 'MATCH',=
 'N/A', 'file://distcc.sh', 'Paul Eggleton <paul.eggleton@linux.intel.com>'=
, 'None']
inserted (distcc-config,1.0,INVALID,MIT,base,r0,None,,None,MATCH, virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Sets=
 up distcc for compilation on the target device.,N/A,file://distcc.sh,Paul =
Eggleton <paul.eggleton@linux.intel.com>)
['net-tools', '1.60-25', 'N/A', 'GPLv2+', 'base', 'http://net-tools.berlios=
=2Ede/', 'r0', 'virtual/gettext gettext-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update-alterna=
tives', 'http://bugs.debian.org/net-tools', 'None', 'A collection of progra=
ms that form the base set of the NET-3 networking distribution for the Linu=
x operating system', 'ErrHostNoDir:/debian/pool/main/n/net-tools/:-:net-too=
ls_1.60.orig.tar.gz:ftp.debian.org/debian/pool/main/n/net-tools/net-tools_1=
=2E60.orig.tar.gz', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/n/net-too=
ls/net-tools_1.60.orig.tar.gz;name=3Dtarball', 'Cristian Iorga <cristian.io=
rga@intel.com>', 'None']
inserted (net-tools,1.60-25,N/A,GPLv2+,base,r0,None,http://net-tools.berlio=
s.de/,http://bugs.debian.org/net-tools,ErrHostNoDir:/debian/pool/main/n/net=
-tools/:-:net-tools_1.60.orig.tar.gz:ftp.debian.org/debian/pool/main/n/net-=
tools/net-tools_1.60.orig.tar.gz,virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtu=
al/update-alternatives,A collection of programs that form the base set of t=
he NET-3 networking distribution for the Linux operating system,N/A,ftp://f=
tp.debian.org/debian/pool/main/n/net-tools/net-tools_1.60.orig.tar.gz;name=
=3Dtarball,Cristian Iorga <cristian.iorga@intel.com>)
['lttng-ust', '2.4.0', '2.4.1', 'LGPLv2.1+ & BSD & GPLv2', 'base', 'http://=
lttng.org/ust', 'r0', 'autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  liburcu util-linux', 'https://bugs.lttng.or=
g/projects/lttng-ust', '2', 'The LTTng UST 2.x package contains the userspa=
ce tracer library to trace userspace codes.', 'ErrUnknown:git.lttng.org/ltt=
ng-ust.git', 'N/A', 'git://git.lttng.org/lttng-ust.git;branch=3Dstable-2.4'=
, 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (lttng-ust,2.4.0,2.4.1,LGPLv2.1+ & BSD & GPLv2,base,r0,2,http://lt=
tng.org/ust,https://bugs.lttng.org/projects/lttng-ust,ErrUnknown:git.lttng.=
org/lttng-ust.git,autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  liburcu util-linux,The LTTng UST 2.x package con=
tains the userspace tracer library to trace userspace codes.,N/A,git://git.=
lttng.org/lttng-ust.git;branch=3Dstable-2.4,Laurentiu Palcu <laurentiu.palc=
u@intel.com>)
['midori', '0.5.5', 'N/A', 'LGPLv2.1', 'base', 'http://www.twotoasts.de/ind=
ex.php?/pages/midori_summary.html', 'r0', 'pkgconfig-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  webkit-gtk=
 libsoup-2.4 openssl python-native python-docutils-native librsvg-native li=
bnotify libunique hicolor-icon-theme gtk-update-icon-cache-native  python-n=
ative  vala-native vala', 'None', 'None', 'A lightweight web browser.', 'Er=
rHostNoDir:/downloads/:-:midori_0.5.5_all_.tar.bz2:www.midori-browser.org/d=
ownloads/midori_0.5.5_all_.tar.bz2', 'N/A', 'http://www.midori-browser.org/=
downloads/midori_0.5.5_all_.tar.bz2', 'Ross Burton <ross.burton@intel.com>'=
, 'None']
inserted (midori,0.5.5,N/A,LGPLv2.1,base,r0,None,http://www.twotoasts.de/in=
dex.php?/pages/midori_summary.html,None,ErrHostNoDir:/downloads/:-:midori_0=
=2E5.5_all_.tar.bz2:www.midori-browser.org/downloads/midori_0.5.5_all_.tar.=
bz2,pkgconfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  webkit-gtk libsoup-2.4 openssl python-native pyth=
on-docutils-native librsvg-native libnotify libunique hicolor-icon-theme gt=
k-update-icon-cache-native  python-native  vala-native vala,A lightweight w=
eb browser.,N/A,http://www.midori-browser.org/downloads/midori_0.5.5_all_.t=
ar.bz2,Ross Burton <ross.burton@intel.com>)
['libvorbis', '1.3.4', 'N/A', 'BSD', 'libs', 'http://www.vorbis.com/', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  libogg', 'https://trac.xiph.org', 'None', 'Ogg=
 Vorbis is a high-quality lossy audio codec that is free of intellectual pr=
operty restrictions. libvorbis is the main vorbis codec library.', 'ErrHost=
NoDir:/releases/vorbis/:-:libvorbis-1.3.4.tar.xz:downloads.xiph.org/release=
s/vorbis/libvorbis-1.3.4.tar.xz', 'N/A', 'http://downloads.xiph.org/release=
s/vorbis/libvorbis-1.3.4.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com=
>', 'None']
inserted (libvorbis,1.3.4,N/A,BSD,libs,r0,None,http://www.vorbis.com/,https=
://trac.xiph.org,ErrHostNoDir:/releases/vorbis/:-:libvorbis-1.3.4.tar.xz:do=
wnloads.xiph.org/releases/vorbis/libvorbis-1.3.4.tar.xz,pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  libogg,Ogg Vorbis is a high-quality lossy audio codec that is free o=
f intellectual property restrictions. libvorbis is the main vorbis codec li=
brary.,N/A,http://downloads.xiph.org/releases/vorbis/libvorbis-1.3.4.tar.xz=
,Cristian Iorga <cristian.iorga@intel.com>)
['enchant', '1.6.0', 'N/A', 'LGPLv2.1+', 'libs', 'http://www.abisource.com/=
projects/enchant/', 'r3', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  aspell glib-2.0', 'htt=
p://bugzilla.abisource.com/enter_bug.cgi?product=3DEnchant', 'None', 'Encha=
nt Spell checker API Library.', 'ErrHostNoDir:/downloads/enchant/1.6.0/ench=
ant-1.6.0.tar.gz:1.6.0:-:www.abisource.com/downloads/enchant/1.6.0/enchant-=
1.6.0.tar.gz', 'N/A', 'http://www.abisource.com/downloads/enchant/1.6.0/enc=
hant-1.6.0.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (enchant,1.6.0,N/A,LGPLv2.1+,libs,r3,None,http://www.abisource.com=
/projects/enchant/,http://bugzilla.abisource.com/enter_bug.cgi?product=3DEn=
chant,ErrHostNoDir:/downloads/enchant/1.6.0/enchant-1.6.0.tar.gz:1.6.0:-:ww=
w.abisource.com/downloads/enchant/1.6.0/enchant-1.6.0.tar.gz,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  aspell glib-2.0,Enchant Spell checker API Library.,N/A,http://w=
ww.abisource.com/downloads/enchant/1.6.0/enchant-1.6.0.tar.gz,Cristian Iorg=
a <cristian.iorga@intel.com>)
['rpcbind', '0.2.1', 'N/A', 'BSD', 'console/network', 'http://sourceforge.n=
et/projects/rpcbind/', 'r0', 'autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  libtirpc quota update-rc.d-native ba=
se-passwd shadow-native shadow-sysroot shadow tcp-wrappers', 'http://source=
forge.net/tracker/?group_id=3D201237&atid=3D976751', 'None', 'The rpcbind u=
tility is a server that converts RPC                program numbers into un=
iversal addresses.', 'ErrHostNoDir:/rpcbind/:-:rpcbind-0.2.1.tar.bz2:downlo=
ads.sourceforge.net/rpcbind/rpcbind-0.2.1.tar.bz2', 'N/A', 'http://download=
s.sourceforge.net/rpcbind/rpcbind-0.2.1.tar.bz2', 'Hongxu Jia <hongxu.jia@w=
indriver.com>', 'None']
inserted (rpcbind,0.2.1,N/A,BSD,console/network,r0,None,http://sourceforge.=
net/projects/rpcbind/,http://sourceforge.net/tracker/?group_id=3D201237&ati=
d=3D976751,ErrHostNoDir:/rpcbind/:-:rpcbind-0.2.1.tar.bz2:downloads.sourcef=
orge.net/rpcbind/rpcbind-0.2.1.tar.bz2,autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  libtirpc quota update-rc.d-=
native base-passwd shadow-native shadow-sysroot shadow tcp-wrappers,The rpc=
bind utility is a server that converts RPC                program numbers i=
nto universal addresses.,N/A,http://downloads.sourceforge.net/rpcbind/rpcbi=
nd-0.2.1.tar.bz2,Hongxu Jia <hongxu.jia@windriver.com>)
['json-c', '0.11', 'N/A', 'MIT', 'base', 'https://github.com/json-c/json-c/=
wiki', 'r0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  ', 'None', 'None', 'JSON-C implements a reference co=
unting object model that allows you to easily construct JSON objects in C.'=
, 'ErrHostNoDir:/json-c_releases/releases/:-:json-c-0.11.tar.gz:s3.amazonaw=
s.com/json-c_releases/releases/json-c-0.11.tar.gz', 'N/A', 'https://s3.amaz=
onaws.com/json-c_releases/releases/json-c-0.11.tar.gz', 'None', 'None']
inserted (json-c,0.11,N/A,MIT,base,r0,None,https://github.com/json-c/json-c=
/wiki,None,ErrHostNoDir:/json-c_releases/releases/:-:json-c-0.11.tar.gz:s3.=
amazonaws.com/json-c_releases/releases/json-c-0.11.tar.gz,autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,JSON-C =
implements a reference counting object model that allows you to easily cons=
truct JSON objects in C.,N/A,https://s3.amazonaws.com/json-c_releases/relea=
ses/json-c-0.11.tar.gz,None)
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
['libpciaccess', '0.13.2', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://ww=
w.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.free=
desktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'libpciaccess provides f=
unctionality for X to access the PCI bus and devices in a platform-independ=
ent way.', 'ErrHostNoDir:/releases/individual/lib/:-:libpciaccess-0.13.2.ta=
r.bz2:xorg.freedesktop.org/releases/individual/lib/libpciaccess-0.13.2.tar.=
bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libpciacc=
ess-0.13.2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (libpciaccess,0.13.2,N/A,MIT & MIT-style,x11/libs,r0,None,http://w=
ww.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostN=
oDir:/releases/individual/lib/:-:libpciaccess-0.13.2.tar.bz2:xorg.freedeskt=
op.org/releases/individual/lib/libpciaccess-0.13.2.tar.bz2,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  util-macros,libpciaccess provides functionality for X to access t=
he PCI bus and devices in a platform-independent way.,N/A,http://xorg.freed=
esktop.org/releases/individual/lib/libpciaccess-0.13.2.tar.bz2,Laurentiu Pa=
lcu <laurentiu.palcu@intel.com>)
['sed', '4.2.2', 'N/A', 'GPLv3+', 'console/utils', 'http://www.gnu.org/soft=
ware/sed/', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update-=
alternatives', 'None', 'None', 'Stream EDitor (text filtering utility).', '=
ErrHostNoDir:/gnu/sed/:-:sed-4.2.2.tar.gz:ftp.gnu.org/gnu/sed/sed-4.2.2.tar=
=2Egz', 'N/A', 'ftp://ftp.gnu.org/gnu/sed/sed-4.2.2.tar.gz', 'Chen Qi <Qi.C=
hen@windriver.com>', 'None']
inserted (sed,4.2.2,N/A,GPLv3+,console/utils,r0,None,http://www.gnu.org/sof=
tware/sed/,None,ErrHostNoDir:/gnu/sed/:-:sed-4.2.2.tar.gz:ftp.gnu.org/gnu/s=
ed/sed-4.2.2.tar.gz,autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update=
-alternatives,Stream EDitor (text filtering utility).,N/A,ftp://ftp.gnu.org=
/gnu/sed/sed-4.2.2.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['initramfs-live-boot', '1.0', 'INVALID', 'MIT', 'base', '', 'r11', ' virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  v=
irtual/kernel', 'None', 'None', 'Live image init script.', 'MATCH', 'N/A', =
'file://init-live.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-live-boot,1.0,INVALID,MIT,base,r11,None,,None,MATCH, vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  virtual/kernel,Live image init script.,N/A,file://init-live.sh,Saul Wold =
<sgw@linux.intel.com>)
['setserial', '2.17', 'N/A', 'GPLv2.0', 'console/utils', 'http://setserial.=
sourceforge.net', 'r3', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  ', 'None', 'None', 'setserial is a progra=
m designed to set and/or report the configuration information associated wi=
th a serial port', 'ErrHostNoDir:/setserial/:-:setserial-2.17.tar.gz:downlo=
ads.sourceforge.net/setserial/setserial-2.17.tar.gz', 'N/A', 'http://downlo=
ads.sourceforge.net/setserial/setserial-2.17.tar.gz', 'Cristiana Voicu <cri=
stiana.voicu@intel.com>', 'None']
inserted (setserial,2.17,N/A,GPLv2.0,console/utils,r3,None,http://setserial=
=2Esourceforge.net,None,ErrHostNoDir:/setserial/:-:setserial-2.17.tar.gz:do=
wnloads.sourceforge.net/setserial/setserial-2.17.tar.gz,autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,setserial=
 is a program designed to set and/or report the configuration information a=
ssociated with a serial port,N/A,http://downloads.sourceforge.net/setserial=
/setserial-2.17.tar.gz,Cristiana Voicu <cristiana.voicu@intel.com>)
['gst-fluendo-mp3', '0.10.19', 'N/A', 'MIT', 'multimedia', 'http://www.flue=
ndo.com/resources/source-plugins.php', 'r0', 'pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gst=
reamer zlib', 'None', 'None', 'Fluendo closed-format mp3 GStreamer plug-in.=
', 'ErrHostNoDir:/gstreamer/src/gst-fluendo-mp3/:-:gst-fluendo-mp3-0.10.19.=
tar.bz2:core.fluendo.com/gstreamer/src/gst-fluendo-mp3/gst-fluendo-mp3-0.10=
=2E19.tar.bz2', 'N/A', 'http://core.fluendo.com/gstreamer/src/gst-fluendo-m=
p3/gst-fluendo-mp3-0.10.19.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.=
com>', 'None']
inserted (gst-fluendo-mp3,0.10.19,N/A,MIT,multimedia,r0,None,http://www.flu=
endo.com/resources/source-plugins.php,None,ErrHostNoDir:/gstreamer/src/gst-=
fluendo-mp3/:-:gst-fluendo-mp3-0.10.19.tar.bz2:core.fluendo.com/gstreamer/s=
rc/gst-fluendo-mp3/gst-fluendo-mp3-0.10.19.tar.bz2,pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  gstreamer zlib,Fluendo closed-format mp3 GStreamer plug-in.,N/A,http://co=
re.fluendo.com/gstreamer/src/gst-fluendo-mp3/gst-fluendo-mp3-0.10.19.tar.bz=
2,Cristian Iorga <cristian.iorga@intel.com>)
['mdadm', '3.3', 'N/A', 'GPLv2 & GPLv2+', 'base', 'http://www.kernel.org/pu=
b/linux/utils/raid/mdadm/', 'r0', 'autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'Tool for ma=
naging software RAID under Linux.', 'ErrHostNoDir:/pub/linux/utils/raid/mda=
dm/:-:mdadm-3.3.tar.bz2:kernel.org/pub/linux/utils/raid/mdadm/mdadm-3.3.tar=
=2Ebz2', 'N/A', 'http://kernel.org/pub/linux/utils/raid/mdadm/mdadm-3.3.tar=
=2Ebz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (mdadm,3.3,N/A,GPLv2 & GPLv2+,base,r0,None,http://www.kernel.org/p=
ub/linux/utils/raid/mdadm/,None,ErrHostNoDir:/pub/linux/utils/raid/mdadm/:-=
:mdadm-3.3.tar.bz2:kernel.org/pub/linux/utils/raid/mdadm/mdadm-3.3.tar.bz2,=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  ,Tool for managing software RAID under Linux.,N/A,http://kernel.or=
g/pub/linux/utils/raid/mdadm/mdadm-3.3.tar.bz2,Laurentiu Palcu <laurentiu.p=
alcu@intel.com>)
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
['libxau', '1.0.8', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros  x=
proto', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', '=
libxau provides the main interfaces to the X11 authorisation handling, whic=
h controls authorisation for X connections, both client-side and server-sid=
e.', 'ErrHostNoDir:/releases/individual/lib/:-:libXau-1.0.8.tar.bz2:xorg.fr=
eedesktop.org/releases/individual/lib/libXau-1.0.8.tar.bz2', 'N/A', 'http:/=
/xorg.freedesktop.org/releases/individual/lib/libXau-1.0.8.tar.bz2', 'Ross =
Burton <ross.burton@intel.com>', 'None']
inserted (libxau,1.0.8,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/i=
ndividual/lib/:-:libXau-1.0.8.tar.bz2:xorg.freedesktop.org/releases/individ=
ual/lib/libXau-1.0.8.tar.bz2,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  util-macros  xproto,libxau provides the main interfaces to the X=
11 authorisation handling, which controls authorisation for X connections, =
both client-side and server-side.,N/A,http://xorg.freedesktop.org/releases/=
individual/lib/libXau-1.0.8.tar.bz2,Ross Burton <ross.burton@intel.com>)
['glib-networking', '2.38.0', 'N/A', 'LGPLv2', 'libs', 'http://git.gnome.or=
g/browse/glib-networking/', 'r0', 'pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 intlt=
ool-native gnome-common-native gnutls', 'http://bugzilla.gnome.org', 'None'=
, 'glib-networking contains the implementations of certain GLib networking =
features that cannot be implemented directly in GLib itself because of thei=
r dependencies.', 'ErrHostNoDir:/pub/GNOME/sources/glib-networking/2.38/gli=
b-networking-2.38.0.tar.xz:2.38:-:ftp.gnome.org/pub/GNOME/sources/glib-netw=
orking/2.38/glib-networking-2.38.0.tar.xz', 'N/A', 'http://ftp.gnome.org/pu=
b/GNOME/sources/glib-networking/2.38/glib-networking-2.38.0.tar.xz;name=3Da=
rchive', 'Saul Wold <sgw@linux.intel.com>', 'Pending Glib-2.0 Update']
inserted (glib-networking,2.38.0,N/A,LGPLv2,libs,r0,None,http://git.gnome.o=
rg/browse/glib-networking/,http://bugzilla.gnome.org,ErrHostNoDir:/pub/GNOM=
E/sources/glib-networking/2.38/glib-networking-2.38.0.tar.xz:2.38:-:ftp.gno=
me.org/pub/GNOME/sources/glib-networking/2.38/glib-networking-2.38.0.tar.xz=
,pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  glib-2.0 intltool-native gnome-common-native gnu=
tls,glib-networking contains the implementations of certain GLib networking=
 features that cannot be implemented directly in GLib itself because of the=
ir dependencies.,N/A,http://ftp.gnome.org/pub/GNOME/sources/glib-networking=
/2.38/glib-networking-2.38.0.tar.xz;name=3Darchive,Saul Wold <sgw@linux.int=
el.com>)
['kmod', '16+gitAUTOINC+36c4bb928a', '17+gitAUTOINC+f5cdd57', 'GPL-2.0+ & L=
GPL-2.1+', 'base', 'http://packages.profusion.mobi/kmod/', 'r0', 'autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
 pkgconfig-native zlib gtk-doc-stub-native virtual/update-alternatives', 'N=
one', 'None', 'kmod is a set of tools to handle common tasks with Linux ker=
nel modules like                insert, remove, list, check properties, res=
olve dependencies and aliases.', 'UPDATE', '9', 'git://git.kernel.org/pub/s=
cm/utils/kernel/kmod/kmod.git', 'Cristiana Voicu <cristiana.voicu@intel.com=
>', 'None']
inserted (kmod,16+gitAUTOINC+36c4bb928a,17+gitAUTOINC+f5cdd57,GPL-2.0+ & LG=
PL-2.1+,base,r0,None,http://packages.profusion.mobi/kmod/,None,UPDATE,autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc   pkgconfig-native zlib gtk-doc-stub-native virtual/update-alternatives,=
kmod is a set of tools to handle common tasks with Linux kernel modules lik=
e                insert, remove, list, check properties, resolve dependenci=
es and aliases.,9,git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git,C=
ristiana Voicu <cristiana.voicu@intel.com>)
['help2man-native', '1.44.1', 'N/A', 'GPLv3', 'devel', '', 'r0', ' autoconf=
-native automake-native', 'None', 'None', 'Program for creating simple man =
pages.', 'ErrHostNoDir:/gnu/help2man/:-:help2man-1.44.1.tar.xz:ftp.gnu.org/=
gnu/help2man/help2man-1.44.1.tar.xz', 'N/A', 'ftp://ftp.gnu.org/gnu/help2ma=
n/help2man-1.44.1.tar.xz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (help2man-native,1.44.1,N/A,GPLv3,devel,r0,None,,None,ErrHostNoDir=
:/gnu/help2man/:-:help2man-1.44.1.tar.xz:ftp.gnu.org/gnu/help2man/help2man-=
1.44.1.tar.xz, autoconf-native automake-native,Program for creating simple =
man pages.,N/A,ftp://ftp.gnu.org/gnu/help2man/help2man-1.44.1.tar.xz,Saul W=
old <sgw@linux.intel.com>)
['mkfontdir', '1.0.7', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8=
=2E0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros-native virtual/libx11', 'http=
s://bugs.freedesktop.org', '1', 'For each directory argument, mkfontdir rea=
ds all of the font files in the directory. The font names and related data =
are written out to the files \\"fonts.dir\\", \\"fonts.scale\\", and \\"fon=
ts.alias\\".  The X server and font server use these files to find the avai=
lable font files.', 'ErrHostNoDir:/releases/individual/app/:-:mkfontdir-1.0=
=2E7.tar.bz2:xorg.freedesktop.org/releases/individual/app/mkfontdir-1.0.7.t=
ar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/mkfont=
dir-1.0.7.tar.bz2', 'Cristiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (mkfontdir,1.0.7,N/A,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https=
://bugs.freedesktop.org,ErrHostNoDir:/releases/individual/app/:-:mkfontdir-=
1.0.7.tar.bz2:xorg.freedesktop.org/releases/individual/app/mkfontdir-1.0.7.=
tar.bz2,pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros-native virtual/libx11,For eac=
h directory argument, mkfontdir reads all of the font files in the director=
y. The font names and related data are written out to the files \"fonts.dir=
\", \"fonts.scale\", and \"fonts.alias\".  The X server and font server use=
 these files to find the available font files.,N/A,http://xorg.freedesktop.=
org/releases/individual/app/mkfontdir-1.0.7.tar.bz2,Cristiana Voicu <cristi=
ana.voicu@intel.com>)
['yasm', '1.2.0', 'N/A', 'BSD', 'base', 'http://www.tortall.net/projects/ya=
sm/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'x8=
6 (SSE) assembler supporting NASM and GAS-syntaxes.', 'ErrHostNoDir:/projec=
ts/yasm/releases/:-:yasm-1.2.0.tar.gz:www.tortall.net/projects/yasm/release=
s/yasm-1.2.0.tar.gz', 'N/A', 'http://www.tortall.net/projects/yasm/releases=
/yasm-1.2.0.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None=
']
inserted (yasm,1.2.0,N/A,BSD,base,r0,None,http://www.tortall.net/projects/y=
asm/,None,ErrHostNoDir:/projects/yasm/releases/:-:yasm-1.2.0.tar.gz:www.tor=
tall.net/projects/yasm/releases/yasm-1.2.0.tar.gz,autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native virtual/gettext gette=
xt-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  ,x86 (SSE) assembler supporting NASM and GAS-syntaxes.,N/A,h=
ttp://www.tortall.net/projects/yasm/releases/yasm-1.2.0.tar.gz,Paul Eggleto=
n <paul.eggleton@linux.intel.com>)
['ubootchart', '0.0+r12', 'N/A', 'GPLv3', 'base', 'http://code.google.com/p=
/ubootchart/', 'r6', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc   virtual/update-alternatives', 'None', 'None', '=
A boot profiling tool.', 'UPDATE', '0.0+r12', 'svn://ubootchart.googlecode.=
com/svn/;protocol=3Dhttp;module=3Dtrunk', 'Cristiana Voicu <cristiana.voicu=
@intel.com>', 'None']
inserted (ubootchart,0.0+r12,N/A,GPLv3,base,r6,None,http://code.google.com/=
p/ubootchart/,None,UPDATE, virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc   virtual/update-alternatives,A boot profilin=
g tool.,0.0+r12,svn://ubootchart.googlecode.com/svn/;protocol=3Dhttp;module=
=3Dtrunk,Cristiana Voicu <cristiana.voicu@intel.com>)
['libpng', '1.6.8', 'N/A', 'Libpng', 'libs', 'http://www.libpng.org/', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  zlib', 'None', 'None', 'PNG image format decod=
ing library.', 'ErrHostNoDir:/project/libpng/libpng16/1.6.8/:1.6.8:libpng-1=
=2E6.8.tar.xz:downloads.sourceforge.net/project/libpng/libpng16/1.6.8/libpn=
g-1.6.8.tar.xz', '1.6.6', 'http://downloads.sourceforge.net/project/libpng/=
libpng16/1.6.8/libpng-1.6.8.tar.xz', 'Valentin Popa <valentin.popa@intel.co=
m>', 'None']
inserted (libpng,1.6.8,N/A,Libpng,libs,r0,None,http://www.libpng.org/,None,=
ErrHostNoDir:/project/libpng/libpng16/1.6.8/:1.6.8:libpng-1.6.8.tar.xz:down=
loads.sourceforge.net/project/libpng/libpng16/1.6.8/libpng-1.6.8.tar.xz,pkg=
config-native autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  zlib,PNG image format decoding library.,1.6.6,http:/=
/downloads.sourceforge.net/project/libpng/libpng16/1.6.8/libpng-1.6.8.tar.x=
z,Valentin Popa <valentin.popa@intel.com>)
['screen', '4.0.3', 'N/A', 'GPLv2+', 'console/utils', 'http://www.gnu.org/s=
oftware/screen/', 'r4', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  ncurses           ', 'https://savannah.gn=
u.org/bugs/?func=3Dadditem&group=3Dscreen', 'None', 'Screen is a full-scree=
n window manager that multiplexes a physical terminal between several proce=
sses, typically interactive shells.', 'ErrHostNoDir:/gnu/screen/:-:screen-4=
=2E0.3.tar.gz:ftp.gnu.org/gnu/screen/screen-4.0.3.tar.gz', 'N/A', 'ftp://ft=
p.gnu.org/gnu/screen/screen-4.0.3.tar.gz;name=3Dtarball', 'Valentin Popa <v=
alentin.popa@intel.com>', 'None']
inserted (screen,4.0.3,N/A,GPLv2+,console/utils,r4,None,http://www.gnu.org/=
software/screen/,https://savannah.gnu.org/bugs/?func=3Dadditem&group=3Dscre=
en,ErrHostNoDir:/gnu/screen/:-:screen-4.0.3.tar.gz:ftp.gnu.org/gnu/screen/s=
creen-4.0.3.tar.gz,autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  ncurses           ,Screen is a full-screen wind=
ow manager that multiplexes a physical terminal between several processes, =
typically interactive shells.,N/A,ftp://ftp.gnu.org/gnu/screen/screen-4.0.3=
=2Etar.gz;name=3Dtarball,Valentin Popa <valentin.popa@intel.com>)
['msmtp', '1.4.31', 'N/A', 'GPLv3', 'console/network', 'http://msmtp.source=
forge.net/', 'r0', 'autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib gnutls vir=
tual/update-alternatives', 'None', 'None', 'A sendmail replacement for use =
in MTAs like mutt', 'ErrHostNoDir:/projects/msmtp/files/msmtp/1.4.31/:1.4.3=
1:msmtp-1.4.31.tar.bz2:sourceforge.net/projects/msmtp/files/msmtp/1.4.31/ms=
mtp-1.4.31.tar.bz2', 'N/A', 'http://sourceforge.net/projects/msmtp/files/ms=
mtp/1.4.31/msmtp-1.4.31.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (msmtp,1.4.31,N/A,GPLv3,console/network,r0,None,http://msmtp.sourc=
eforge.net/,None,ErrHostNoDir:/projects/msmtp/files/msmtp/1.4.31/:1.4.31:ms=
mtp-1.4.31.tar.bz2:sourceforge.net/projects/msmtp/files/msmtp/1.4.31/msmtp-=
1.4.31.tar.bz2,autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib gnutls virtual/=
update-alternatives,A sendmail replacement for use in MTAs like mutt,N/A,ht=
tp://sourceforge.net/projects/msmtp/files/msmtp/1.4.31/msmtp-1.4.31.tar.bz2=
,Saul Wold <sgw@linux.intel.com>)
['systemtap', '2.5+gitAUTOINC+ae91e3d552', '2.5+gitAUTOINC+996ca2f', 'GPLv2=
', 'base', '', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  elfutils sqlite3 systemtap-native', 'None', 'None', 'Script-directed dy=
namic tracing and performance analysis tool for Linux.', 'UPDATE', 'N/A', '=
git://sourceware.org/git/systemtap.git', 'Cristiana Voicu <cristiana.voicu@=
intel.com>', 'None']
inserted (systemtap,2.5+gitAUTOINC+ae91e3d552,2.5+gitAUTOINC+996ca2f,GPLv2,=
base,r0,None,,None,UPDATE,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  elfutils sqlite3 systemtap-native,Script-directed dynamic tracing a=
nd performance analysis tool for Linux.,N/A,git://sourceware.org/git/system=
tap.git,Cristiana Voicu <cristiana.voicu@intel.com>)
['gnupg', '2.0.22', 'N/A', 'GPLv3 & LGPLv3', 'base', 'http://www.gnupg.org/=
', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  pth libassuan libksba zli=
b bzip2 readline libgcrypt', 'None', 'None', 'GNU Privacy Guard - encryptio=
n and signing tools (2.x).', 'ErrHostNoDir:/gcrypt/gnupg/:-:gnupg-2.0.22.ta=
r.bz2:ftp.gnupg.org/gcrypt/gnupg/gnupg-2.0.22.tar.bz2', 'N/A', 'ftp://ftp.g=
nupg.org/gcrypt/gnupg/gnupg-2.0.22.tar.bz2', 'Saul Wold <sgw@linux.intel.co=
m>', 'None']
inserted (gnupg,2.0.22,N/A,GPLv3 & LGPLv3,base,r0,None,http://www.gnupg.org=
/,None,ErrHostNoDir:/gcrypt/gnupg/:-:gnupg-2.0.22.tar.bz2:ftp.gnupg.org/gcr=
ypt/gnupg/gnupg-2.0.22.tar.bz2,autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  pth =
libassuan libksba zlib bzip2 readline libgcrypt,GNU Privacy Guard - encrypt=
ion and signing tools (2.x).,N/A,ftp://ftp.gnupg.org/gcrypt/gnupg/gnupg-2.0=
=2E22.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['xdg-utils', '1.1.0-rc1', 'N/A', 'MIT', 'base', '', 'r0', 'autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'No=
ne', 'None', 'The xdg-utils package is a set of simple scripts that provide=
 basic desktop integration functions for any Free Desktop, such as Linux. T=
hey are intended to provide a set of defacto standards. The following scrip=
ts are provided at this time: xdg-desktop-icon xdg-desktop-menu xdg-email x=
dg-icon-resource xdg-mime xdg-open xdg-screensaver ', 'ErrHostNoDir:/downlo=
ad/:-:xdg-utils-1.1.0-rc1.tar.gz:portland.freedesktop.org/download/xdg-util=
s-1.1.0-rc1.tar.gz', 'N/A', 'http://portland.freedesktop.org/download/xdg-u=
tils-1.1.0-rc1.tar.gz', 'Valentin Popa <valentin.popa@intel.com>', 'only re=
lease candidates available ']
inserted (xdg-utils,1.1.0-rc1,N/A,MIT,base,r0,None,,None,ErrHostNoDir:/down=
load/:-:xdg-utils-1.1.0-rc1.tar.gz:portland.freedesktop.org/download/xdg-ut=
ils-1.1.0-rc1.tar.gz,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  ,The xdg-utils package is a set of simple scr=
ipts that provide basic desktop integration functions for any Free Desktop,=
 such as Linux. They are intended to provide a set of defacto standards. Th=
e following scripts are provided at this time: xdg-desktop-icon xdg-desktop=
-menu xdg-email xdg-icon-resource xdg-mime xdg-open xdg-screensaver ,N/A,ht=
tp://portland.freedesktop.org/download/xdg-utils-1.1.0-rc1.tar.gz,Valentin =
Popa <valentin.popa@intel.com>)
['initramfs-boot', '1.0', 'INVALID', 'MIT', 'base', '', 'r2', ' ', 'None', =
'None', 'Extremely basic live image init script.', 'MATCH', 'N/A', 'file://=
init-boot.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-boot,1.0,INVALID,MIT,base,r2,None,,None,MATCH, ,Extreme=
ly basic live image init script.,N/A,file://init-boot.sh,Saul Wold <sgw@lin=
ux.intel.com>)
['hwlatdetect', '0.85', '0.89', 'GPLv2', 'tests', 'http://git.kernel.org/?p=
=3Dlinux/kernel/git/clrkwllms/rt-tests.git', 'r0', ' virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None',=
 'Python utility for controlling the kernel hardware latency detection modu=
le (hwlat_detector.ko).', 'ErrUnknown:git.kernel.org/pub/scm/linux/kernel/g=
it/clrkwllms/rt-tests.git', 'N/A', 'git://git.kernel.org/pub/scm/linux/kern=
el/git/clrkwllms/rt-tests.git', 'Darren Hart <dvhart@linux.intel.com>', 'No=
ne']
inserted (hwlatdetect,0.85,0.89,GPLv2,tests,r0,None,http://git.kernel.org/?=
p=3Dlinux/kernel/git/clrkwllms/rt-tests.git,None,ErrUnknown:git.kernel.org/=
pub/scm/linux/kernel/git/clrkwllms/rt-tests.git, virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  ,Python utility for co=
ntrolling the kernel hardware latency detection module (hwlat_detector.ko).=
,N/A,git://git.kernel.org/pub/scm/linux/kernel/git/clrkwllms/rt-tests.git,D=
arren Hart <dvhart@linux.intel.com>)
['gstreamer1.0-plugins-ugly', '1.2.3', 'N/A', 'GPLv2+ & LGPLv2.1+ & LGPLv2+=
', 'multimedia', 'http://gstreamer.freedesktop.org/', 'r0', 'pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  gstreamer1.0 gstreamer1.0-plugin=
s-base libid3tag liba52 lame libmad mpeg2dec orc', 'https://bugzilla.gnome.=
org/enter_bug.cgi?product=3DGstreamer', 'None', 'Plugins for the GStreamer =
multimedia framework 1.x.', 'ErrHostNoDir:/src/gst-plugins-ugly/:-:gst-plug=
ins-ugly-1.2.3.tar.xz:gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-pl=
ugins-ugly-1.2.3.tar.xz', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-=
plugins-ugly/gst-plugins-ugly-1.2.3.tar.xz', 'Cristian Iorga <cristian.iorg=
a@intel.com>', 'None']
inserted (gstreamer1.0-plugins-ugly,1.2.3,N/A,GPLv2+ & LGPLv2.1+ & LGPLv2+,=
multimedia,r0,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome=
=2Eorg/enter_bug.cgi?product=3DGstreamer,ErrHostNoDir:/src/gst-plugins-ugly=
/:-:gst-plugins-ugly-1.2.3.tar.xz:gstreamer.freedesktop.org/src/gst-plugins=
-ugly/gst-plugins-ugly-1.2.3.tar.xz,pkgconfig-native autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native virtual/gettext ge=
ttext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  gstreamer1.0 gstreamer1.0-plugins-base libid3tag liba52 l=
ame libmad mpeg2dec orc,Plugins for the GStreamer multimedia framework 1.x.=
,N/A,http://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly=
-1.2.3.tar.xz,Cristian Iorga <cristian.iorga@intel.com>)
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
['vte', '0.28.2', 'N/A', 'LGPLv2.1+', 'base', '', 'r6', 'pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc   glib-2.0 gtk+ intltool-native ncurses gobject-introspection-stub g=
nome-common-native hicolor-icon-theme gtk-update-icon-cache-native gconf gc=
onf-native shared-mime-info-native shared-mime-info gtk-doc-stub-native', '=
https://bugzilla.gnome.org/buglist.cgi?product=3Dvte', 'None', 'Virtual ter=
minal emulator GTK+ widget library.', 'ErrHostNoDir:/pub/GNOME/sources/vte/=
0.28/vte-0.28.2.tar.bz2:0.28:-:ftp.gnome.org/pub/GNOME/sources/vte/0.28/vte=
-0.28.2.tar.bz2', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/vte/0.28/v=
te-0.28.2.tar.bz2;name=3Darchive', 'Saul Wold <sgw@linux.intel.com>', 'Pend=
ing Glib-2.0 Update']
inserted (vte,0.28.2,N/A,LGPLv2.1+,base,r6,None,,https://bugzilla.gnome.org=
/buglist.cgi?product=3Dvte,ErrHostNoDir:/pub/GNOME/sources/vte/0.28/vte-0.2=
8.2.tar.bz2:0.28:-:ftp.gnome.org/pub/GNOME/sources/vte/0.28/vte-0.28.2.tar.=
bz2,pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc   glib-2.0 gtk+ intltool-native ncurses gobjec=
t-introspection-stub gnome-common-native hicolor-icon-theme gtk-update-icon=
-cache-native gconf gconf-native shared-mime-info-native shared-mime-info g=
tk-doc-stub-native,Virtual terminal emulator GTK+ widget library.,N/A,http:=
//ftp.gnome.org/pub/GNOME/sources/vte/0.28/vte-0.28.2.tar.bz2;name=3Darchiv=
e,Saul Wold <sgw@linux.intel.com>)
['libgcrypt', '1.5.3', 'N/A', 'GPLv2+ & LGPLv2.1+', 'libs', 'http://directo=
ry.fsf.org/project/libgcrypt/', 'r0', 'pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libgpg-err=
or libcap', 'https://bugs.g10code.com/gnupg/index', 'None', 'General purpos=
e cryptographic library based on the code from GnuPG.', 'ErrHostNoDir:/gcry=
pt/libgcrypt/:-:libgcrypt-1.5.3.tar.gz:ftp.gnupg.org/gcrypt/libgcrypt/libgc=
rypt-1.5.3.tar.gz', 'N/A', 'ftp://ftp.gnupg.org/gcrypt/libgcrypt/libgcrypt-=
1.5.3.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libgcrypt,1.5.3,N/A,GPLv2+ & LGPLv2.1+,libs,r0,None,http://direct=
ory.fsf.org/project/libgcrypt/,https://bugs.g10code.com/gnupg/index,ErrHost=
NoDir:/gcrypt/libgcrypt/:-:libgcrypt-1.5.3.tar.gz:ftp.gnupg.org/gcrypt/libg=
crypt/libgcrypt-1.5.3.tar.gz,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libgpg-error libcap,=
General purpose cryptographic library based on the code from GnuPG.,N/A,ftp=
://ftp.gnupg.org/gcrypt/libgcrypt/libgcrypt-1.5.3.tar.gz,Saul Wold <sgw@lin=
ux.intel.com>)
['initramfs-live-install-efi-testfs', '1.0', 'INVALID', 'MIT', 'base', '', =
'r0', ' ', 'None', 'None', 'Live image install script for with a second roo=
tfs/kernel option.', 'MATCH', 'N/A', 'file://init-install-efi-testfs.sh', '=
None', 'None']
inserted (initramfs-live-install-efi-testfs,1.0,INVALID,MIT,base,r0,None,,N=
one,MATCH, ,Live image install script for with a second rootfs/kernel optio=
n.,N/A,file://init-install-efi-testfs.sh,None)
['mingetty', '1.08', 'N/A', 'GPLv2', 'console/utils', 'http://sourceforge.n=
et/projects/mingetty/', 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc   virtual/update-alternatives', 'None', =
'None', 'Compact getty terminal handler for virtual consoles only.', 'ErrHo=
stNoDir:/project/mingetty/mingetty/1.08/:1.08:mingetty-1.08.tar.gz:cdnetwor=
ks-kr-1.dl.sourceforge.net/project/mingetty/mingetty/1.08/mingetty-1.08.tar=
=2Egz', 'N/A', 'http://cdnetworks-kr-1.dl.sourceforge.net/project/mingetty/=
mingetty/1.08/mingetty-1.08.tar.gz', 'Kai Kang <kai.kang@windriver.com>', '=
None']
inserted (mingetty,1.08,N/A,GPLv2,console/utils,r3,None,http://sourceforge.=
net/projects/mingetty/,None,ErrHostNoDir:/project/mingetty/mingetty/1.08/:1=
=2E08:mingetty-1.08.tar.gz:cdnetworks-kr-1.dl.sourceforge.net/project/minge=
tty/mingetty/1.08/mingetty-1.08.tar.gz, virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc   virtual/update-alternatives,Co=
mpact getty terminal handler for virtual consoles only.,N/A,http://cdnetwor=
ks-kr-1.dl.sourceforge.net/project/mingetty/mingetty/1.08/mingetty-1.08.tar=
=2Egz,Kai Kang <kai.kang@windriver.com>)
['cross-localedef-native', '2.19', 'N/A', 'LGPL-2.1', 'libs', 'http://www.e=
glibc.org/home', 'r0', 'autoconf-native automake-native libtool-native gnu-=
config-native  ', 'None', 'None', 'Cross locale generation tool for eglibc.=
', 'ErrHostNoDir:/releases/eglibc/:-:eglibc-2.19-svnr25243.tar.bz2:download=
s.yoctoproject.org/releases/eglibc/eglibc-2.19-svnr25243.tar.bz2', 'N/A', '=
http://downloads.yoctoproject.org/releases/eglibc/eglibc-2.19-svnr25243.tar=
=2Ebz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (cross-localedef-native,2.19,N/A,LGPL-2.1,libs,r0,None,http://www.=
eglibc.org/home,None,ErrHostNoDir:/releases/eglibc/:-:eglibc-2.19-svnr25243=
=2Etar.bz2:downloads.yoctoproject.org/releases/eglibc/eglibc-2.19-svnr25243=
=2Etar.bz2,autoconf-native automake-native libtool-native gnu-config-native=
  ,Cross locale generation tool for eglibc.,N/A,http://downloads.yoctoproje=
ct.org/releases/eglibc/eglibc-2.19-svnr25243.tar.bz2,Saul Wold <sgw@linux.i=
ntel.com>)
['libpcap', '1.5.3', 'N/A', 'BSD', 'libs/network', 'http://www.tcpdump.org/=
', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-=
config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  flex-native bison-native libnl bluez4', 'http://sourcefo=
rge.net/tracker/?group_id=3D53067&atid=3D469577', 'None', 'Libpcap provides=
 a portable framework for low-level network monitoring.  Libpcap can provid=
e network statistics collection, security monitoring and network debugging.=
', 'ErrHostNoDir:/release/:-:libpcap-1.5.3.tar.gz:www.tcpdump.org/release/l=
ibpcap-1.5.3.tar.gz', 'N/A', 'http://www.tcpdump.org/release/libpcap-1.5.3.=
tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libpcap,1.5.3,N/A,BSD,libs/network,r0,None,http://www.tcpdump.org=
/,http://sourceforge.net/tracker/?group_id=3D53067&atid=3D469577,ErrHostNoD=
ir:/release/:-:libpcap-1.5.3.tar.gz:www.tcpdump.org/release/libpcap-1.5.3.t=
ar.gz,autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  flex-native bison-native libnl bluez4,Libpcap provides a por=
table framework for low-level network monitoring.  Libpcap can provide netw=
ork statistics collection, security monitoring and network debugging.,N/A,h=
ttp://www.tcpdump.org/release/libpcap-1.5.3.tar.gz,Cristian Iorga <cristian=
=2Eiorga@intel.com>)
['libxkbcommon', '0.4.0', 'N/A', 'MIT & MIT-style', 'base', 'http://www.xkb=
common.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  util-macros flex-native bison=
-native libxcb', 'None', 'None', 'libxkbcommon is a keymap compiler and sup=
port library which processes a reduced subset of keymaps as defined by the =
XKB specification.', 'ErrHostNoDir:/download/:-:libxkbcommon-0.4.0.tar.xz:x=
kbcommon.org/download/libxkbcommon-0.4.0.tar.xz', 'N/A', 'http://xkbcommon.=
org/download/libxkbcommon-0.4.0.tar.xz', 'Saul Wold <sgw@linux.intel.com>',=
 'None']
inserted (libxkbcommon,0.4.0,N/A,MIT & MIT-style,base,r0,None,http://www.xk=
bcommon.org,None,ErrHostNoDir:/download/:-:libxkbcommon-0.4.0.tar.xz:xkbcom=
mon.org/download/libxkbcommon-0.4.0.tar.xz,pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-m=
acros flex-native bison-native libxcb,libxkbcommon is a keymap compiler and=
 support library which processes a reduced subset of keymaps as defined by =
the XKB specification.,N/A,http://xkbcommon.org/download/libxkbcommon-0.4.0=
=2Etar.xz,Saul Wold <sgw@linux.intel.com>)
['liba52', '0.7.4', 'N/A', 'GPLv2+', 'libs', 'http://liba52.sourceforge.net=
/', 'r4', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ', 'None', 'None', 'ATSC A/52 surround sound stream dec=
oder.', 'ErrHostNoDir:/files/:-:a52dec-0.7.4.tar.gz:liba52.sourceforge.net/=
files/a52dec-0.7.4.tar.gz', 'N/A', 'http://liba52.sourceforge.net/files/a52=
dec-0.7.4.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (liba52,0.7.4,N/A,GPLv2+,libs,r4,None,http://liba52.sourceforge.ne=
t/,None,ErrHostNoDir:/files/:-:a52dec-0.7.4.tar.gz:liba52.sourceforge.net/f=
iles/a52dec-0.7.4.tar.gz,autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  ,ATSC A/52 surround sound stream decoder.=
,N/A,http://liba52.sourceforge.net/files/a52dec-0.7.4.tar.gz,Cristian Iorga=
 <cristian.iorga@intel.com>)
['python-distribute', '0.6.32', 'N/A', 'PSF', 'devel/python', 'http://packa=
ges.python.org/distribute', 'ml5', ' virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   python python-native python  pyth=
on-native ', 'None', 'None', 'Download, build, install, upgrade, and uninst=
all Python packages.', 'ErrHostNoDir:/packages/source/d/distribute/:-:distr=
ibute-0.6.32.tar.gz:pypi.python.org/packages/source/d/distribute/distribute=
-0.6.32.tar.gz', 'N/A', 'http://pypi.python.org/packages/source/d/distribut=
e/distribute-0.6.32.tar.gz', 'None', 'None']
inserted (python-distribute,0.6.32,N/A,PSF,devel/python,ml5,None,http://pac=
kages.python.org/distribute,None,ErrHostNoDir:/packages/source/d/distribute=
/:-:distribute-0.6.32.tar.gz:pypi.python.org/packages/source/d/distribute/d=
istribute-0.6.32.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc   python python-native python  python-native ,D=
ownload, build, install, upgrade, and uninstall Python packages.,N/A,http:/=
/pypi.python.org/packages/source/d/distribute/distribute-0.6.32.tar.gz,None)
['valgrind', '3.9.0', 'N/A', 'GPLv2 & GPLv2+ & BSD', 'base', 'http://valgri=
nd.org/', 'r8', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  virtual/libx11', 'http://valgrind.org/support/bug=
_reports.html', 'None', 'Valgrind memory debugger and instrumentation frame=
work.', 'ErrHostNoDir:/downloads/:-:valgrind-3.9.0.tar.bz2:www.valgrind.org=
/downloads/valgrind-3.9.0.tar.bz2', 'N/A', 'http://www.valgrind.org/downloa=
ds/valgrind-3.9.0.tar.bz2', 'Cristiana Voicu <cristiana.voicu@intel.com>', =
'None']
inserted (valgrind,3.9.0,N/A,GPLv2 & GPLv2+ & BSD,base,r8,None,http://valgr=
ind.org/,http://valgrind.org/support/bug_reports.html,ErrHostNoDir:/downloa=
ds/:-:valgrind-3.9.0.tar.bz2:www.valgrind.org/downloads/valgrind-3.9.0.tar.=
bz2,autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  virtual/libx11,Valgrind memory debugger and instrumentation fr=
amework.,N/A,http://www.valgrind.org/downloads/valgrind-3.9.0.tar.bz2,Crist=
iana Voicu <cristiana.voicu@intel.com>)
['sysstat', '10.2.1', 'N/A', 'GPLv2+', 'console/utils', 'http://sebastien.g=
odard.pagesperso-orange.fr/', 'r0', 'autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native virtual/gettext gettext-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  ', 'None', 'None', 'The sysstat utilities are a collection of performance=
 monitoring tools for Linux.', 'ErrHostNoDir:/sebastien.godard/:-:sysstat-1=
0.2.1.tar.gz:pagesperso-orange.fr/sebastien.godard/sysstat-10.2.1.tar.gz', =
'N/A', 'http://pagesperso-orange.fr/sebastien.godard/sysstat-10.2.1.tar.gz'=
, 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (sysstat,10.2.1,N/A,GPLv2+,console/utils,r0,None,http://sebastien.=
godard.pagesperso-orange.fr/,None,ErrHostNoDir:/sebastien.godard/:-:sysstat=
-10.2.1.tar.gz:pagesperso-orange.fr/sebastien.godard/sysstat-10.2.1.tar.gz,=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  ,The sysstat utilities are a collec=
tion of performance monitoring tools for Linux.,N/A,http://pagesperso-orang=
e.fr/sebastien.godard/sysstat-10.2.1.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['qt4-native', '4.8.5', 'N/A', 'LGPLv2.1 | GPLv3', 'libs', 'http://qt-proje=
ct.org/', 'r0', ' zlib-native dbus-native', 'None', 'None', 'Qt version 4 t=
ools and support files for the build host.', 'ErrHostNoDir:/official_releas=
es/qt/4.8/4.8.5/qt-everywhere-opensource-src-4.8.5.tar.gz:4.8:-:download.qt=
-project.org/official_releases/qt/4.8/4.8.5/qt-everywhere-opensource-src-4.=
8.5.tar.gz', 'N/A', 'http://download.qt-project.org/official_releases/qt/4.=
8/4.8.5/qt-everywhere-opensource-src-4.8.5.tar.gz', 'Paul Eggleton <paul.eg=
gleton@linux.intel.com>', 'None']
inserted (qt4-native,4.8.5,N/A,LGPLv2.1 | GPLv3,libs,r0,None,http://qt-proj=
ect.org/,None,ErrHostNoDir:/official_releases/qt/4.8/4.8.5/qt-everywhere-op=
ensource-src-4.8.5.tar.gz:4.8:-:download.qt-project.org/official_releases/q=
t/4.8/4.8.5/qt-everywhere-opensource-src-4.8.5.tar.gz, zlib-native dbus-nat=
ive,Qt version 4 tools and support files for the build host.,N/A,http://dow=
nload.qt-project.org/official_releases/qt/4.8/4.8.5/qt-everywhere-opensourc=
e-src-4.8.5.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['remake', '3.82+dbg-0.9+gitAUTOINC+f05508e521', '3.82+dbg-0.9+gitAUTOINC+5=
960636', 'GPLv2', 'devel', 'http://bashdb.sourceforge.net/remake/', 'r1', '=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc   readline virtual/update-alternativ=
es', 'None', 'None', 'remake is a patched and modernized version of GNU mak=
e utility that adds improved error reporting, the ability to trace executio=
n in a comprehensible way, and a debugger.', 'UPDATE', 'N/A', 'git://github=
=2Ecom/rocky/remake.git', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (remake,3.82+dbg-0.9+gitAUTOINC+f05508e521,3.82+dbg-0.9+gitAUTOINC=
+5960636,GPLv2,devel,r1,None,http://bashdb.sourceforge.net/remake/,None,UPD=
ATE,autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc   readline virtual/update-altern=
atives,remake is a patched and modernized version of GNU make utility that =
adds improved error reporting, the ability to trace execution in a comprehe=
nsible way, and a debugger.,N/A,git://github.com/rocky/remake.git,Robert Ya=
ng <liezhi.yang@windriver.com>)
['autogen-native', '5.18.2', 'N/A', 'GPLv3', 'devel', 'http://www.gnu.org/s=
oftware/autogen/', 'r0', 'autoconf-native automake-native libtool-native gn=
u-config-native  guile-native libtool-native libxml2-native', 'None', 'None=
', 'AutoGen is a tool designed to simplify the creation and maintenance of =
programs that contain large amounts of repetitious text. It is especially v=
aluable in programs that have several blocks of text that must be kept sync=
hronized.', 'ErrHostNoDir:/gnu/autogen/rel5.18.2/autogen-5.18.2.tar.gz:rel5=
=2E18.2:-:ftp.gnu.org/gnu/autogen/rel5.18.2/autogen-5.18.2.tar.gz', 'N/A', =
'ftp://ftp.gnu.org/gnu/autogen/rel5.18.2/autogen-5.18.2.tar.gz', 'Robert Ya=
ng <liezhi.yang@windriver.com>', 'None']
inserted (autogen-native,5.18.2,N/A,GPLv3,devel,r0,None,http://www.gnu.org/=
software/autogen/,None,ErrHostNoDir:/gnu/autogen/rel5.18.2/autogen-5.18.2.t=
ar.gz:rel5.18.2:-:ftp.gnu.org/gnu/autogen/rel5.18.2/autogen-5.18.2.tar.gz,a=
utoconf-native automake-native libtool-native gnu-config-native  guile-nati=
ve libtool-native libxml2-native,AutoGen is a tool designed to simplify the=
 creation and maintenance of programs that contain large amounts of repetit=
ious text. It is especially valuable in programs that have several blocks o=
f text that must be kept synchronized.,N/A,ftp://ftp.gnu.org/gnu/autogen/re=
l5.18.2/autogen-5.18.2.tar.gz,Robert Yang <liezhi.yang@windriver.com>)
['libnewt', '0.52.14', 'N/A', 'LGPLv2', 'libs', 'https://fedorahosted.org/n=
ewt/', 'r2', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  slang popt', 'None', 'None', 'Newt is a programming =
library for color text mode, widget based user interfaces.  Newt can be use=
d to add stacked windows, entry widgets, checkboxes, radio buttons, labels,=
 plain text fields, scrollbars, etc., to text mode user interfaces.  This p=
ackage also contains the shared library needed by programs built with newt,=
 as well as a /usr/bin/dialog replacement called whiptail.  Newt is based o=
n the slang library.', 'ErrHostNoDir:/releases/n/e/newt/:-:newt-0.52.14.tar=
=2Egz:fedorahosted.org/releases/n/e/newt/newt-0.52.14.tar.gz', 'N/A', 'http=
s://fedorahosted.org/releases/n/e/newt/newt-0.52.14.tar.gz', 'Kai Kang <kai=
=2Ekang@windriver.com>', 'None']
inserted (libnewt,0.52.14,N/A,LGPLv2,libs,r2,None,https://fedorahosted.org/=
newt/,None,ErrHostNoDir:/releases/n/e/newt/:-:newt-0.52.14.tar.gz:fedorahos=
ted.org/releases/n/e/newt/newt-0.52.14.tar.gz,autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  slang popt,Newt is a=
 programming library for color text mode, widget based user interfaces.  Ne=
wt can be used to add stacked windows, entry widgets, checkboxes, radio but=
tons, labels, plain text fields, scrollbars, etc., to text mode user interf=
aces.  This package also contains the shared library needed by programs bui=
lt with newt, as well as a /usr/bin/dialog replacement called whiptail.  Ne=
wt is based on the slang library.,N/A,https://fedorahosted.org/releases/n/e=
/newt/newt-0.52.14.tar.gz,Kai Kang <kai.kang@windriver.com>)
['libical', '0.48', 'N/A', 'LGPLv2.1 | MPL-1', 'libs', 'http://sourceforge.=
net/projects/freeassociation/', 'r0', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  ', 'http://sourceforge.net/=
tracker/?group_id=3D16077&atid=3D116077', 'None', 'iCal and scheduling (RFC=
 2445, 2446, 2447) library.', 'ErrHostNoDir:/project/freeassociation/libica=
l/0.48/:libical-0.48:libical-0.48.tar.gz:downloads.sourceforge.net/project/=
freeassociation/libical/libical-0.48/libical-0.48.tar.gz', 'N/A', 'http://d=
ownloads.sourceforge.net/project/freeassociation/libical/libical-0.48/libic=
al-0.48.tar.gz', 'None', 'None']
inserted (libical,0.48,N/A,LGPLv2.1 | MPL-1,libs,r0,None,http://sourceforge=
=2Enet/projects/freeassociation/,http://sourceforge.net/tracker/?group_id=
=3D16077&atid=3D116077,ErrHostNoDir:/project/freeassociation/libical/0.48/:=
libical-0.48:libical-0.48.tar.gz:downloads.sourceforge.net/project/freeasso=
ciation/libical/libical-0.48/libical-0.48.tar.gz,autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,iCal and schedul=
ing (RFC 2445, 2446, 2447) library.,N/A,http://downloads.sourceforge.net/pr=
oject/freeassociation/libical/libical-0.48/libical-0.48.tar.gz,None)
['at-spi2-atk', '2.10.0', 'N/A', 'LGPLv2', 'base', '', 'r0', 'autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  dbus=
 glib-2.0 atk at-spi2-core', 'None', 'None', 'AT-SPI 2 Toolkit Bridge.', 'E=
rrHostNoDir:/pub/GNOME/sources/at-spi2-atk/2.10/at-spi2-atk-2.10.0.tar.xz:2=
=2E10:-:ftp.gnome.org/pub/GNOME/sources/at-spi2-atk/2.10/at-spi2-atk-2.10.0=
=2Etar.xz', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/at-spi2-atk/2.10=
/at-spi2-atk-2.10.0.tar.xz', 'Cristiana Voicu <cristiana.voicu@intel.com>',=
 'None']
inserted (at-spi2-atk,2.10.0,N/A,LGPLv2,base,r0,None,,None,ErrHostNoDir:/pu=
b/GNOME/sources/at-spi2-atk/2.10/at-spi2-atk-2.10.0.tar.xz:2.10:-:ftp.gnome=
=2Eorg/pub/GNOME/sources/at-spi2-atk/2.10/at-spi2-atk-2.10.0.tar.xz,autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  dbus glib-2.0 atk at-spi2-core,AT-SPI 2 Toolkit Bridge.,N/A,http://ftp.gn=
ome.org/pub/GNOME/sources/at-spi2-atk/2.10/at-spi2-atk-2.10.0.tar.xz,Cristi=
ana Voicu <cristiana.voicu@intel.com>)
['bison', '2.7.1', 'N/A', 'GPLv3', 'devel', 'http://www.gnu.org/software/bi=
son/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  bison-native flex-nat=
ive', 'None', 'None', 'Bison is a general-purpose parser generator that con=
verts an annotated context-free grammar into an LALR(1) or GLR parser for t=
hat grammar.  Bison is upward compatible with Yacc: all properly-written Ya=
cc grammars ought to work with Bison with no change. Anyone familiar with Y=
acc should be able to use Bison with little trouble.', 'ErrHostNoDir:/gnu/b=
ison/:-:bison-2.7.1.tar.xz:ftp.gnu.org/gnu/bison/bison-2.7.1.tar.xz', 'N/A'=
, 'ftp://ftp.gnu.org/gnu/bison/bison-2.7.1.tar.xz', 'Chong Lu <Chong.Lu@win=
driver.com>', 'None']
inserted (bison,2.7.1,N/A,GPLv3,devel,r0,None,http://www.gnu.org/software/b=
ison/,None,ErrHostNoDir:/gnu/bison/:-:bison-2.7.1.tar.xz:ftp.gnu.org/gnu/bi=
son/bison-2.7.1.tar.xz,autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  bison-native=
 flex-native,Bison is a general-purpose parser generator that converts an a=
nnotated context-free grammar into an LALR(1) or GLR parser for that gramma=
r.  Bison is upward compatible with Yacc: all properly-written Yacc grammar=
s ought to work with Bison with no change. Anyone familiar with Yacc should=
 be able to use Bison with little trouble.,N/A,ftp://ftp.gnu.org/gnu/bison/=
bison-2.7.1.tar.xz,Chong Lu <Chong.Lu@windriver.com>)
['gcc-cross-canadian-i586', '4.8.2', 'N/A', 'GPL-3.0-with-GCC-exception & G=
PLv3', 'devel', 'http://www.gnu.org/software/gcc/', 'r0', 'autoconf-native =
automake-native libtool-native gnu-config-native gettext-native nativesdk-g=
ettext  virtual/i586-poky-linux-gcc virtual/i586-pokysdk-linux-binutils-cro=
sssdk virtual/nativesdk-i586-pokysdk-linux-libc-for-gcc nativesdk-gettext n=
ativesdk-gmp nativesdk-mpfr nativesdk-libmpc nativesdk-elfutils nativesdk-z=
lib chrpath-replacement-native', 'None', 'None', 'GNU cc and gcc C compiler=
s (cross-canadian for i586 target).', 'ErrHostNoDir:/gnu/gcc/4.8.2/:gcc-4.8=
=2E2:gcc-4.8.2.tar.bz2:ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2', 'N=
/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2', 'Laurentiu Pa=
lcu <laurentiu.palcu@intel.com>', 'None']
inserted (gcc-cross-canadian-i586,4.8.2,N/A,GPL-3.0-with-GCC-exception & GP=
Lv3,devel,r0,None,http://www.gnu.org/software/gcc/,None,ErrHostNoDir:/gnu/g=
cc/4.8.2/:gcc-4.8.2:gcc-4.8.2.tar.bz2:ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8=
=2E2.tar.bz2,autoconf-native automake-native libtool-native gnu-config-nati=
ve gettext-native nativesdk-gettext  virtual/i586-poky-linux-gcc virtual/i5=
86-pokysdk-linux-binutils-crosssdk virtual/nativesdk-i586-pokysdk-linux-lib=
c-for-gcc nativesdk-gettext nativesdk-gmp nativesdk-mpfr nativesdk-libmpc n=
ativesdk-elfutils nativesdk-zlib chrpath-replacement-native,GNU cc and gcc =
C compilers (cross-canadian for i586 target).,N/A,ftp://ftp.gnu.org/gnu/gcc=
/gcc-4.8.2/gcc-4.8.2.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['makedevs', '1.0.1', 'INVALID', 'GPLv2', 'base', '', 'r0', ' virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None'=
, 'None', 'Tool for creating device nodes.', 'MATCH', 'N/A', 'file://makede=
vs.c', 'Cristiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (makedevs,1.0.1,INVALID,GPLv2,base,r0,None,,None,MATCH, virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Tool =
for creating device nodes.,N/A,file://makedevs.c,Cristiana Voicu <cristiana=
=2Evoicu@intel.com>)
['ofono', '1.14', 'N/A', 'GPLv2', 'base', 'http://www.ofono.org', 'r0', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  dbus glib-2.0 udev mobile-broadband-provider-info b=
luez4 update-rc.d-native', 'None', 'None', 'oFono is a stack for mobile tel=
ephony devices on Linux. oFono supports speaking to telephony devices throu=
gh specific drivers, or with generic AT commands.', 'ErrHostNoDir:/pub/linu=
x/network/ofono/:-:ofono-1.14.tar.xz:kernel.org/pub/linux/network/ofono/ofo=
no-1.14.tar.xz', '1.6', 'http://kernel.org/pub/linux/network/ofono/ofono-1.=
14.tar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (ofono,1.14,N/A,GPLv2,base,r0,None,http://www.ofono.org,None,ErrHo=
stNoDir:/pub/linux/network/ofono/:-:ofono-1.14.tar.xz:kernel.org/pub/linux/=
network/ofono/ofono-1.14.tar.xz,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  dbus glib-2.0 ude=
v mobile-broadband-provider-info bluez4 update-rc.d-native,oFono is a stack=
 for mobile telephony devices on Linux. oFono supports speaking to telephon=
y devices through specific drivers, or with generic AT commands.,1.6,http:/=
/kernel.org/pub/linux/network/ofono/ofono-1.14.tar.xz,Cristian Iorga <crist=
ian.iorga@intel.com>)
['usbinit', '1.0', 'INVALID', 'GPLv2', 'base', '', 'r3', '  update-rc.d-nat=
ive', 'None', 'None', 'Initscript for enabling USB gadget Ethernet.', 'MATC=
H', 'n/a', 'file://usb-gether', 'Cristiana Voicu <cristiana.voicu@intel.com=
>', 'None']
inserted (usbinit,1.0,INVALID,GPLv2,base,r3,None,,None,MATCH,  update-rc.d-=
native,Initscript for enabling USB gadget Ethernet.,n/a,file://usb-gether,C=
ristiana Voicu <cristiana.voicu@intel.com>)
['qt-demo-init', '0.1', 'INVALID', 'MIT', 'base', '', 'r3', '  update-rc.d-=
native', 'None', 'None', 'Init script for qtdemo.', 'MATCH', 'N/A', 'file:/=
/qtdemo-init', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (qt-demo-init,0.1,INVALID,MIT,base,r3,None,,None,MATCH,  update-rc=
=2Ed-native,Init script for qtdemo.,N/A,file://qtdemo-init,Paul Eggleton <p=
aul.eggleton@linux.intel.com>)
['xkeyboard-config', '2.11', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://=
freedesktop.org/wiki/Software/XKeyboardConfig', 'r0', 'pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  intltool-native virtual/gettext util-macros libxslt-native', 'https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxkeyboard-config', 'None', 'T=
he non-arch keyboard configuration database for X Window.  The goal is to p=
rovide the consistent, well-structured, frequently released open source of =
X keyboard configuration data for X Window System implementations.  The pro=
ject is targeted to XKB-based systems.', 'ErrHostNoDir:/releases/individual=
/data/xkeyboard-config/:-:xkeyboard-config-2.11.tar.bz2:xorg.freedesktop.or=
g/releases/individual/data/xkeyboard-config/xkeyboard-config-2.11.tar.bz2',=
 'N/A', 'http://xorg.freedesktop.org/releases/individual/data/xkeyboard-con=
fig/xkeyboard-config-2.11.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel=
=2Ecom>', 'None']
inserted (xkeyboard-config,2.11,N/A,MIT & MIT-style,x11/libs,r0,None,http:/=
/freedesktop.org/wiki/Software/XKeyboardConfig,https://bugs.freedesktop.org=
/enter_bug.cgi?product=3Dxkeyboard-config,ErrHostNoDir:/releases/individual=
/data/xkeyboard-config/:-:xkeyboard-config-2.11.tar.bz2:xorg.freedesktop.or=
g/releases/individual/data/xkeyboard-config/xkeyboard-config-2.11.tar.bz2,p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  intltool-native virtual/gettext util-macros libxsl=
t-native,The non-arch keyboard configuration database for X Window.  The go=
al is to provide the consistent, well-structured, frequently released open =
source of X keyboard configuration data for X Window System implementations=
=2E  The project is targeted to XKB-based systems.,N/A,http://xorg.freedesk=
top.org/releases/individual/data/xkeyboard-config/xkeyboard-config-2.11.tar=
=2Ebz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['x11vnc', '0.9.13', 'N/A', 'GPLv2+', 'x11/utils', 'http://www.karlrunge.co=
m/x11vnc/', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  openssl virtual/libx11 libxext jpeg zlib libxfi=
xes libxrandr libxdamage libxtst avahi', 'None', 'None', 'Exports your X se=
ssion on-the-fly via VNC.', 'ErrHostNoDir:/libvncserver/x11vnc/0.9.13/:0.9.=
13:x11vnc-0.9.13.tar.gz:downloads.sourceforge.net/libvncserver/x11vnc/0.9.1=
3/x11vnc-0.9.13.tar.gz', 'N/A', 'http://downloads.sourceforge.net/libvncser=
ver/x11vnc/0.9.13/x11vnc-0.9.13.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@=
intel.com>', 'None']
inserted (x11vnc,0.9.13,N/A,GPLv2+,x11/utils,r0,None,http://www.karlrunge.c=
om/x11vnc/,None,ErrHostNoDir:/libvncserver/x11vnc/0.9.13/:0.9.13:x11vnc-0.9=
=2E13.tar.gz:downloads.sourceforge.net/libvncserver/x11vnc/0.9.13/x11vnc-0.=
9.13.tar.gz,autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  openssl virtual/libx11 libxext jpeg zlib libxfixes lib=
xrandr libxdamage libxtst avahi,Exports your X session on-the-fly via VNC.,=
N/A,http://downloads.sourceforge.net/libvncserver/x11vnc/0.9.13/x11vnc-0.9.=
13.tar.gz,Laurentiu Palcu <laurentiu.palcu@intel.com>)
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
['mtdev', '1.1.5', 'N/A', 'MIT', 'libs', 'http://bitmath.org/code/mtdev/', =
'r0', 'pkgconfig-native autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  ', 'None', 'None', 'mtdev is a library whi=
ch transforms all variants of kernel multitouch events to the slotted type =
B protocol. The events put into mtdev may be from any MT device, specifical=
ly type A without contact tracking, type A with contact tracking, or type B=
 with contact tracking', 'ErrHostNoDir:/code/mtdev/:-:mtdev-1.1.5.tar.bz2:b=
itmath.org/code/mtdev/mtdev-1.1.5.tar.bz2', 'N/A', 'http://bitmath.org/code=
/mtdev/mtdev-1.1.5.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (mtdev,1.1.5,N/A,MIT,libs,r0,None,http://bitmath.org/code/mtdev/,N=
one,ErrHostNoDir:/code/mtdev/:-:mtdev-1.1.5.tar.bz2:bitmath.org/code/mtdev/=
mtdev-1.1.5.tar.bz2,pkgconfig-native autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtu=
al/i586-poky-linux-compilerlibs virtual/libc  ,mtdev is a library which tra=
nsforms all variants of kernel multitouch events to the slotted type B prot=
ocol. The events put into mtdev may be from any MT device, specifically typ=
e A without contact tracking, type A with contact tracking, or type B with =
contact tracking,N/A,http://bitmath.org/code/mtdev/mtdev-1.1.5.tar.bz2,Ross=
 Burton <ross.burton@intel.com>)
['byacc', '20140101', 'N/A', 'PD', 'devel', '', 'r0', 'autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', =
'None', 'A parser generator utility that reads a grammar specification from=
 a file and generates an LR(1) parser for it.  The parsers consist of a set=
 of LALR(1) parsing tables and a driver routine written in the C programmin=
g language.', 'ErrHostNoDir:/byacc/:-:byacc-20140101.tgz:invisible-island.n=
et/byacc/byacc-20140101.tgz', 'N/A', 'ftp://invisible-island.net/byacc/byac=
c-20140101.tgz', 'Chong Lu <Chong.Lu@windriver.com>', 'None']
inserted (byacc,20140101,N/A,PD,devel,r0,None,,None,ErrHostNoDir:/byacc/:-:=
byacc-20140101.tgz:invisible-island.net/byacc/byacc-20140101.tgz,autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,=
A parser generator utility that reads a grammar specification from a file a=
nd generates an LR(1) parser for it.  The parsers consist of a set of LALR(=
1) parsing tables and a driver routine written in the C programming languag=
e.,N/A,ftp://invisible-island.net/byacc/byacc-20140101.tgz,Chong Lu <Chong.=
Lu@windriver.com>)
['wayland', '1.4.0', 'N/A', 'MIT', 'base', 'http://wayland.freedesktop.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  expat libffi wayland-native', 'None', 'N=
one', 'Wayland is a protocol for a compositor to talk to its clients as wel=
l as a C library implementation of that protocol. The compositor can be a s=
tandalone display server running on Linux kernel modesetting and evdev inpu=
t devices, an X application, or a wayland client itself. The clients can be=
 traditional applications, X servers (rootless or fullscreen) or other disp=
lay servers.', 'ErrHostNoDir:/releases/:-:wayland-1.4.0.tar.xz:wayland.free=
desktop.org/releases/wayland-1.4.0.tar.xz', 'N/A', 'http://wayland.freedesk=
top.org/releases/wayland-1.4.0.tar.xz', 'Ross Burton <ross.burton@intel.com=
>', 'None']
inserted (wayland,1.4.0,N/A,MIT,base,r0,None,http://wayland.freedesktop.org=
,None,ErrHostNoDir:/releases/:-:wayland-1.4.0.tar.xz:wayland.freedesktop.or=
g/releases/wayland-1.4.0.tar.xz,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  expat libffi wayl=
and-native,Wayland is a protocol for a compositor to talk to its clients as=
 well as a C library implementation of that protocol. The compositor can be=
 a standalone display server running on Linux kernel modesetting and evdev =
input devices, an X application, or a wayland client itself. The clients ca=
n be traditional applications, X servers (rootless or fullscreen) or other =
display servers.,N/A,http://wayland.freedesktop.org/releases/wayland-1.4.0.=
tar.xz,Ross Burton <ross.burton@intel.com>)
['dbus-wait', '0.1+gitAUTOINC+6cc6077a36', '0.1+gitAUTOINC+6cc6077', 'GPLv2=
', 'base', 'http://git.yoctoproject.org/cgit/cgit.cgi/dbus-wait', 'r2', 'au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  dbus', 'None', 'None', 'A simple tool to wait for a specific signal =
over DBus.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/dbus-wait', 'Chong=
 Lu <Chong.Lu@windriver.com>', 'None']
inserted (dbus-wait,0.1+gitAUTOINC+6cc6077a36,0.1+gitAUTOINC+6cc6077,GPLv2,=
base,r2,None,http://git.yoctoproject.org/cgit/cgit.cgi/dbus-wait,None,MATCH=
,autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  dbus,A simple tool to wait for a specific signal over DBus.,N/A,g=
it://git.yoctoproject.org/dbus-wait,Chong Lu <Chong.Lu@windriver.com>)
['libxxf86misc', '1.0.3', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  util-macros libxext xf86miscproto', 'https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The XFree86-Misc =
extension, provides a means to access input device configuration settings s=
pecific to the XFree86/Xorg DDX.', 'ErrHostNoDir:/releases/individual/lib/:=
-:libXxf86misc-1.0.3.tar.bz2:xorg.freedesktop.org/releases/individual/lib/l=
ibXxf86misc-1.0.3.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/in=
dividual/lib/libXxf86misc-1.0.3.tar.bz2', 'Ross Burton <ross.burton@intel.c=
om>', 'None']
inserted (libxxf86misc,1.0.3,N/A,MIT,x11/libs,r0,1,http://www.x.org,https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/i=
ndividual/lib/:-:libXxf86misc-1.0.3.tar.bz2:xorg.freedesktop.org/releases/i=
ndividual/lib/libXxf86misc-1.0.3.tar.bz2,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-mac=
ros libxext xf86miscproto,The XFree86-Misc extension, provides a means to a=
ccess input device configuration settings specific to the XFree86/Xorg DDX.=
,N/A,http://xorg.freedesktop.org/releases/individual/lib/libXxf86misc-1.0.3=
=2Etar.bz2,Ross Burton <ross.burton@intel.com>)
['netbase', '5.2', 'N/A', 'GPLv2', 'base', 'http://packages.debian.org/netb=
ase', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  ', 'None', '1', 'This package provides the necessary infr=
astructure for basic TCP/IP based networking', 'ErrHostNoDir:/debian/pool/m=
ain/n/netbase/:-:netbase_5.2.tar.gz:ftp.debian.org/debian/pool/main/n/netba=
se/netbase_5.2.tar.gz', 'N/A', 'ftp://ftp.debian.org/debian/pool/main/n/net=
base/netbase_5.2.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'Non=
e']
inserted (netbase,5.2,N/A,GPLv2,base,r0,1,http://packages.debian.org/netbas=
e,None,ErrHostNoDir:/debian/pool/main/n/netbase/:-:netbase_5.2.tar.gz:ftp.d=
ebian.org/debian/pool/main/n/netbase/netbase_5.2.tar.gz, virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,This package =
provides the necessary infrastructure for basic TCP/IP based networking,N/A=
,ftp://ftp.debian.org/debian/pool/main/n/netbase/netbase_5.2.tar.gz,Cristia=
n Iorga <cristian.iorga@intel.com>)
['rpm', '5.4.9', 'N/A', 'LGPLv2.1', 'base', 'http://rpm5.org/', 'r63', 'aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
 virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  libpcre attr acl popt ossp-uuid file b=
ison-native beecrypt bzip2 db elfutils openssl python zlib', 'None', 'None'=
, 'The RPM Package Manager (RPM) is a powerful command line driven package =
management system capable of installing, uninstalling, verifying, querying,=
 and updating software packages. Each software package consists of an archi=
ve of files along with information about the package like its version, a de=
scription, etc.', 'ErrHostNoDir:/files/rpm/rpm-5.4/rpm-5.4.9-0.20120508.src=
=2Erpm:rpm-5.4:-:www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.9-0.20120508.src.rp=
m', '5.4.10', 'http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.9-0.20120508.s=
rc.rpm;extract=3Drpm-5.4.9.tar.gz', 'Mark Hatle <mark.hatle@windriver.com>'=
, 'None']
inserted (rpm,5.4.9,N/A,LGPLv2.1,base,r63,None,http://rpm5.org/,None,ErrHos=
tNoDir:/files/rpm/rpm-5.4/rpm-5.4.9-0.20120508.src.rpm:rpm-5.4:-:www.rpm5.o=
rg/files/rpm/rpm-5.4/rpm-5.4.9-0.20120508.src.rpm,autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native virtual/gettext gette=
xt-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  libpcre attr acl popt ossp-uuid file bison-native beecrypt b=
zip2 db elfutils openssl python zlib,The RPM Package Manager (RPM) is a pow=
erful command line driven package management system capable of installing, =
uninstalling, verifying, querying, and updating software packages. Each sof=
tware package consists of an archive of files along with information about =
the package like its version, a description, etc.,5.4.10,http://www.rpm5.or=
g/files/rpm/rpm-5.4/rpm-5.4.9-0.20120508.src.rpm;extract=3Drpm-5.4.9.tar.gz=
,Mark Hatle <mark.hatle@windriver.com>)
['xf86-input-synaptics', '1.7.3', 'N/A', 'MIT-X', 'x11/drivers', 'http://ww=
w.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randrprot=
o util-macros inputproto kbproto  libxi mtdev libxtst', 'https://bugs.freed=
esktop.org', '2', 'synaptics is an Xorg input driver for the touchpads from=
 Synaptics Incorporated. Even though these touchpads (by default, operating=
 in a compatibility mode emulating a standard mouse) can be handled by the =
normal evdev or mouse drivers, this driver allows more advanced features of=
 the touchpad to become available.', 'ErrHostNoDir:/releases/individual/dri=
ver/:-:xf86-input-synaptics-1.7.3.tar.bz2:xorg.freedesktop.org/releases/ind=
ividual/driver/xf86-input-synaptics-1.7.3.tar.bz2', 'N/A', 'http://xorg.fre=
edesktop.org/releases/individual/driver/xf86-input-synaptics-1.7.3.tar.bz2'=
, 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86-input-synaptics,1.7.3,N/A,MIT-X,x11/drivers,r0,2,http://www.=
x.org,https://bugs.freedesktop.org,ErrHostNoDir:/releases/individual/driver=
/:-:xf86-input-synaptics-1.7.3.tar.bz2:xorg.freedesktop.org/releases/indivi=
dual/driver/xf86-input-synaptics-1.7.3.tar.bz2,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  vi=
rtual/xserver xproto randrproto util-macros inputproto kbproto  libxi mtdev=
 libxtst,synaptics is an Xorg input driver for the touchpads from Synaptics=
 Incorporated. Even though these touchpads (by default, operating in a comp=
atibility mode emulating a standard mouse) can be handled by the normal evd=
ev or mouse drivers, this driver allows more advanced features of the touch=
pad to become available.,N/A,http://xorg.freedesktop.org/releases/individua=
l/driver/xf86-input-synaptics-1.7.3.tar.bz2,Laurentiu Palcu <laurentiu.palc=
u@intel.com>)
['cracklib', '2.9.1', 'N/A', 'LGPLv2.1+', 'base', 'http://sourceforge.net/p=
rojects/cracklib', 'r0', 'autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  cracklib-=
native zlib', 'None', 'None', 'Password strength checker library.', 'ErrHos=
tNoDir:/cracklib/:-:cracklib-2.9.1.tar.gz:downloads.sourceforge.net/crackli=
b/cracklib-2.9.1.tar.gz', 'N/A', 'http://downloads.sourceforge.net/cracklib=
/cracklib-2.9.1.tar.gz', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (cracklib,2.9.1,N/A,LGPLv2.1+,base,r0,None,http://sourceforge.net/=
projects/cracklib,None,ErrHostNoDir:/cracklib/:-:cracklib-2.9.1.tar.gz:down=
loads.sourceforge.net/cracklib/cracklib-2.9.1.tar.gz,autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native virtual/gettext ge=
ttext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  cracklib-native zlib,Password strength checker library.,N=
/A,http://downloads.sourceforge.net/cracklib/cracklib-2.9.1.tar.gz,Hongxu J=
ia <hongxu.jia@windriver.com>)
['ncurses', '5.9', 'N/A', 'MIT', 'libs', 'http://www.gnu.org/software/ncurs=
es/ncurses.html', 'r15.1', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  ncurses-native virtual/update-alternat=
ives', 'None', 'None', 'SVr4 and XSI-Curses compatible curses library and t=
erminfo tools including tic, infocmp, captoinfo. Supports color, multiple h=
ighlights, forms-drawing characters, and automatic recognition of keypad an=
d function-key sequences. Extensions include resizable windows and mouse su=
pport on both xterm and Linux console using the gpm library.', 'ErrHostNoDi=
r:/gnu/ncurses/:-:ncurses-5.9.tar.gz:ftp.gnu.org/gnu/ncurses/ncurses-5.9.ta=
r.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/ncurses/ncurses-5.9.tar.gz', 'Hongxu J=
ia <hongxu.jia@windriver.com>', 'None']
inserted (ncurses,5.9,N/A,MIT,libs,r15.1,None,http://www.gnu.org/software/n=
curses/ncurses.html,None,ErrHostNoDir:/gnu/ncurses/:-:ncurses-5.9.tar.gz:ft=
p.gnu.org/gnu/ncurses/ncurses-5.9.tar.gz,autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  ncurses-native virtual/up=
date-alternatives,SVr4 and XSI-Curses compatible curses library and terminf=
o tools including tic, infocmp, captoinfo. Supports color, multiple highlig=
hts, forms-drawing characters, and automatic recognition of keypad and func=
tion-key sequences. Extensions include resizable windows and mouse support =
on both xterm and Linux console using the gpm library.,N/A,ftp://ftp.gnu.or=
g/gnu/ncurses/ncurses-5.9.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['libxi', '1.7.2', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros libxext inputproto libxfixes=
', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libxi=
 is an extension to the X11 protocol to support input devices other than th=
e core X keyboard and pointer.  It allows client programs to select input f=
rom these devices independently from each other and independently from the =
core devices.', 'ErrHostNoDir:/releases/individual/lib/:-:libXi-1.7.2.tar.b=
z2:xorg.freedesktop.org/releases/individual/lib/libXi-1.7.2.tar.bz2', 'N/A'=
, 'http://xorg.freedesktop.org/releases/individual/lib/libXi-1.7.2.tar.bz2'=
, 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxi,1.7.2,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.x.org,ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/relea=
ses/individual/lib/:-:libXi-1.7.2.tar.bz2:xorg.freedesktop.org/releases/ind=
ividual/lib/libXi-1.7.2.tar.bz2,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros libxe=
xt inputproto libxfixes,libxi is an extension to the X11 protocol to suppor=
t input devices other than the core X keyboard and pointer.  It allows clie=
nt programs to select input from these devices independently from each othe=
r and independently from the core devices.,N/A,http://xorg.freedesktop.org/=
releases/individual/lib/libXi-1.7.2.tar.bz2,Ross Burton <ross.burton@intel.=
com>)
['python-numpy', '1.7.0', 'N/A', 'PSF', 'devel/python', '', 'r1', ' virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   py=
thon-native python  python-native ', 'None', 'None', 'A sophisticated Numer=
ic Processing Package for Python.', 'ErrHostNoDir:/numpy/:-:numpy-1.7.0.tar=
=2Egz:downloads.sourceforge.net/numpy/numpy-1.7.0.tar.gz', 'N/A', 'http://d=
ownloads.sourceforge.net/numpy/numpy-1.7.0.tar.gz', 'None', 'None']
inserted (python-numpy,1.7.0,N/A,PSF,devel/python,r1,None,,None,ErrHostNoDi=
r:/numpy/:-:numpy-1.7.0.tar.gz:downloads.sourceforge.net/numpy/numpy-1.7.0.=
tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc   python-native python  python-native ,A sophisticated Numeric P=
rocessing Package for Python.,N/A,http://downloads.sourceforge.net/numpy/nu=
mpy-1.7.0.tar.gz,None)
['xcursor-transparent-theme', '0.1.1', 'N/A', 'GPLv2', 'x11/base', 'http://=
www.matchbox-project.org/', 'r4', 'autoconf-native automake-native libtool-=
native gnu-config-native  ', 'http://bugzilla.yoctoproject.org/', 'None', '=
Transparent X11 cursor theme for touchscreens.', 'ErrHostNoDir:/releases/ma=
tchbox/utils/:-:xcursor-transparent-theme-0.1.1.tar.gz:downloads.yoctoproje=
ct.org/releases/matchbox/utils/xcursor-transparent-theme-0.1.1.tar.gz', 'N/=
A', 'http://downloads.yoctoproject.org/releases/matchbox/utils/xcursor-tran=
sparent-theme-0.1.1.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.com>',=
 'None']
inserted (xcursor-transparent-theme,0.1.1,N/A,GPLv2,x11/base,r4,None,http:/=
/www.matchbox-project.org/,http://bugzilla.yoctoproject.org/,ErrHostNoDir:/=
releases/matchbox/utils/:-:xcursor-transparent-theme-0.1.1.tar.gz:downloads=
=2Eyoctoproject.org/releases/matchbox/utils/xcursor-transparent-theme-0.1.1=
=2Etar.gz,autoconf-native automake-native libtool-native gnu-config-native =
 ,Transparent X11 cursor theme for touchscreens.,N/A,http://downloads.yocto=
project.org/releases/matchbox/utils/xcursor-transparent-theme-0.1.1.tar.gz,=
Laurentiu Palcu <laurentiu.palcu@intel.com>)
['nfs-utils', '1.2.9', 'N/A', 'MIT & GPLv2+ & BSD', 'console/network', 'htt=
p://nfs.sourceforge.net/', 'r0', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  libcap libnfsidmap libevent util=
-linux sqlite3 base-passwd shadow-native shadow-sysroot shadow update-rc.d-=
native tcp-wrappers', 'None', 'None', 'The nfs-utils package provides a dae=
mon for the kernel NFS server and related tools.', 'ErrHostNoDir:/pub/linux=
/utils/nfs-utils/1.2.9/:1.2.9:nfs-utils-1.2.9.tar.bz2:kernel.org/pub/linux/=
utils/nfs-utils/1.2.9/nfs-utils-1.2.9.tar.bz2', 'N/A', 'http://kernel.org/p=
ub/linux/utils/nfs-utils/1.2.9/nfs-utils-1.2.9.tar.bz2', 'Paul Eggleton <pa=
ul.eggleton@linux.intel.com>', 'None']
inserted (nfs-utils,1.2.9,N/A,MIT & GPLv2+ & BSD,console/network,r0,None,ht=
tp://nfs.sourceforge.net/,None,ErrHostNoDir:/pub/linux/utils/nfs-utils/1.2.=
9/:1.2.9:nfs-utils-1.2.9.tar.bz2:kernel.org/pub/linux/utils/nfs-utils/1.2.9=
/nfs-utils-1.2.9.tar.bz2,autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  libcap libnfsidmap libevent util-linux sq=
lite3 base-passwd shadow-native shadow-sysroot shadow update-rc.d-native tc=
p-wrappers,The nfs-utils package provides a daemon for the kernel NFS serve=
r and related tools.,N/A,http://kernel.org/pub/linux/utils/nfs-utils/1.2.9/=
nfs-utils-1.2.9.tar.bz2,Paul Eggleton <paul.eggleton@linux.intel.com>)
['libmad', '0.15.1b', 'N/A', 'GPLv2+', 'libs', 'http://sourceforge.net/proj=
ects/mad/', 'r3', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  libid3tag', 'http://sourceforg=
e.net/tracker/?group_id=3D12349&atid=3D112349', 'None', 'MPEG Audio Decoder=
 library.', 'ErrHostNoDir:/mad/:-:libmad-0.15.1b.tar.gz:downloads.sourcefor=
ge.net/mad/libmad-0.15.1b.tar.gz', 'N/A', 'http://downloads.sourceforge.net=
/mad/libmad-0.15.1b.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libmad,0.15.1b,N/A,GPLv2+,libs,r3,None,http://sourceforge.net/pro=
jects/mad/,http://sourceforge.net/tracker/?group_id=3D12349&atid=3D112349,E=
rrHostNoDir:/mad/:-:libmad-0.15.1b.tar.gz:downloads.sourceforge.net/mad/lib=
mad-0.15.1b.tar.gz,pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  libid3tag,MPEG Audio Decoder l=
ibrary.,N/A,http://downloads.sourceforge.net/mad/libmad-0.15.1b.tar.gz,Saul=
 Wold <sgw@linux.intel.com>)
['run-postinsts', '1.0', 'INVALID', 'MIT', 'devel', '', 'r9', '  update-rc.=
d-native', 'None', 'None', 'Runs postinstall scripts on first boot of the t=
arget device.', 'MATCH', 'check', 'file://run-postinsts', 'Cristian Iorga <=
cristian.iorga@intel.com>', 'None']
inserted (run-postinsts,1.0,INVALID,MIT,devel,r9,None,,None,MATCH,  update-=
rc.d-native,Runs postinstall scripts on first boot of the target device.,ch=
eck,file://run-postinsts,Cristian Iorga <cristian.iorga@intel.com>)
['libpng12', '1.2.50', 'N/A', 'Libpng', 'libs', 'http://www.libpng.org/', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  zlib', 'None', 'None', 'PNG image format de=
coding library.', 'ErrHostNoDir:/project/libpng/libpng12/1.2.50/libpng-1.2.=
50.tar.xz:1.2.50:-:downloads.sourceforge.net/project/libpng/libpng12/1.2.50=
/libpng-1.2.50.tar.xz', '1.2.50', 'http://downloads.sourceforge.net/project=
/libpng/libpng12/1.2.50/libpng-1.2.50.tar.xz', 'Valentin Popa <valentin.pop=
a@intel.com>', 'None']
inserted (libpng12,1.2.50,N/A,Libpng,libs,r0,None,http://www.libpng.org/,No=
ne,ErrHostNoDir:/project/libpng/libpng12/1.2.50/libpng-1.2.50.tar.xz:1.2.50=
:-:downloads.sourceforge.net/project/libpng/libpng12/1.2.50/libpng-1.2.50.t=
ar.xz,pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  zlib,PNG image format decoding library.,1.2=
=2E50,http://downloads.sourceforge.net/project/libpng/libpng12/1.2.50/libpn=
g-1.2.50.tar.xz,Valentin Popa <valentin.popa@intel.com>)
['sysprof', '1.2.0+gitAUTOINC+cd44ee6644', '1.2.0+gitAUTOINC+6901897', 'GPL=
v2', 'base', '', 'r0', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  gtk+ libglade', 'None', 'None', 'System-wi=
de Performance Profiler for Linux.', 'UPDATE', 'N/A', 'git://git.gnome.org/=
sysprof', 'Tom Zanussi <tom.zanussi@intel.com>', 'None']
inserted (sysprof,1.2.0+gitAUTOINC+cd44ee6644,1.2.0+gitAUTOINC+6901897,GPLv=
2,base,r0,None,,None,UPDATE,autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  gtk+ libglade,System-wide Performance =
Profiler for Linux.,N/A,git://git.gnome.org/sysprof,Tom Zanussi <tom.zanuss=
i@intel.com>)
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
mplements the naming specification. ', 'ErrHostNoDir:/releases/:-:icon-nami=
ng-utils-0.8.90.tar.gz:tango.freedesktop.org/releases/icon-naming-utils-0.8=
=2E90.tar.gz', 'N/A', 'http://tango.freedesktop.org/releases/icon-naming-ut=
ils-0.8.90.tar.gz', 'None', 'None']
inserted (icon-naming-utils,0.8.90,N/A,GPLv2,base,r4,None,,None,ErrHostNoDi=
r:/releases/:-:icon-naming-utils-0.8.90.tar.gz:tango.freedesktop.org/releas=
es/icon-naming-utils-0.8.90.tar.gz,autoconf-native automake-native libtool-=
native gnu-config-native  libxml-simple-perl-native perl-native,A Perl scri=
pt used for maintaining backwards compatibility with current desktop icon t=
hemes, while migrating to the names specified in the Icon Naming Specificat=
ion. The Icon Naming Utilities map the icon names used by the GNOME and KDE=
 desktops to the icon names proposed in the Icon Naming Specification, and =
generate the icon files appropriate to the desktop environment you use. The=
 Icon Naming Specification provides a standard list of common icon contexts=
 and names that can be used to make icon themes work in a desktop environme=
nt or application that implements the naming specification. ,N/A,http://tan=
go.freedesktop.org/releases/icon-naming-utils-0.8.90.tar.gz,None)
['libnl', '3.2.22', 'N/A', 'LGPLv2.1', 'libs/network', 'http://www.infradea=
d.org/~tgr/libnl/', 'r0', 'pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  flex-native bison-nati=
ve', 'None', '1', 'A library for applications dealing with netlink sockets.=
', 'ErrHostNoDir:/~tgr/libnl/files/:-:libnl-3.2.22.tar.gz:www.infradead.org=
/~tgr/libnl/files/libnl-3.2.22.tar.gz', 'N/A', 'http://www.infradead.org/~t=
gr/libnl/files/libnl-3.2.22.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'li=
bnl-3.2.2 is incompatible with libnl2, so no Upgrade']
inserted (libnl,3.2.22,N/A,LGPLv2.1,libs/network,r0,1,http://www.infradead.=
org/~tgr/libnl/,None,ErrHostNoDir:/~tgr/libnl/files/:-:libnl-3.2.22.tar.gz:=
www.infradead.org/~tgr/libnl/files/libnl-3.2.22.tar.gz,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  flex-native bison-native,A library for applications dealing with netl=
ink sockets.,N/A,http://www.infradead.org/~tgr/libnl/files/libnl-3.2.22.tar=
=2Egz,Saul Wold <sgw@linux.intel.com>)
['zlib', '1.2.8', 'N/A', 'Zlib', 'libs', 'http://zlib.net/', 'r0', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ',=
 'None', 'None', 'Zlib is a general-purpose, patent-free, lossless data com=
pression library which is used by many different programs.', 'ErrHostNoDir:=
/:-:zlib-1.2.8.tar.xz:www.zlib.net/zlib-1.2.8.tar.xz', 'N/A', 'http://www.z=
lib.net/zlib-1.2.8.tar.xz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (zlib,1.2.8,N/A,Zlib,libs,r0,None,http://zlib.net/,None,ErrHostNoD=
ir:/:-:zlib-1.2.8.tar.xz:www.zlib.net/zlib-1.2.8.tar.xz, virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Zlib is a gen=
eral-purpose, patent-free, lossless data compression library which is used =
by many different programs.,N/A,http://www.zlib.net/zlib-1.2.8.tar.xz,Chen =
Qi <Qi.Chen@windriver.com>)
['xrestop', '0.4', 'N/A', 'GPLv2+', 'x11/utils', 'http://www.freedesktop.or=
g/wiki/Software/xrestop', 'r3', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  libxres libxext virtual/libx11 nc=
urses', 'https://bugs.freedesktop.org/', 'None', 'top-like statistics of X1=
1 server resource usage by clients', 'ErrHostNoDir:/releases/xrestop/:-:xre=
stop-0.4.tar.gz:downloads.yoctoproject.org/releases/xrestop/xrestop-0.4.tar=
=2Egz', 'N/A', 'http://downloads.yoctoproject.org/releases/xrestop/xrestop-=
0.4.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xrestop,0.4,N/A,GPLv2+,x11/utils,r3,None,http://www.freedesktop.o=
rg/wiki/Software/xrestop,https://bugs.freedesktop.org/,ErrHostNoDir:/releas=
es/xrestop/:-:xrestop-0.4.tar.gz:downloads.yoctoproject.org/releases/xresto=
p/xrestop-0.4.tar.gz,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  libxres libxext virtual/libx11 ncurses,top-li=
ke statistics of X11 server resource usage by clients,N/A,http://downloads.=
yoctoproject.org/releases/xrestop/xrestop-0.4.tar.gz,Laurentiu Palcu <laure=
ntiu.palcu@intel.com>)
['xtrans', '1.3.3', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-mac=
ros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Th=
e X Transport Interface is intended to combine all system and transport spe=
cific code into a single place.  This API should be used by all libraries, =
clients and servers of the X Window System. Use of this API should allow th=
e addition of new types of transports and support for new platforms without=
 making any changes to the source except in the X Transport Interface code.=
', 'ErrHostNoDir:/releases/individual/lib/:-:xtrans-1.3.3.tar.bz2:xorg.free=
desktop.org/releases/individual/lib/xtrans-1.3.3.tar.bz2', 'N/A', 'http://x=
org.freedesktop.org/releases/individual/lib/xtrans-1.3.3.tar.bz2', 'Laurent=
iu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xtrans,1.3.3,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/rele=
ases/individual/lib/:-:xtrans-1.3.3.tar.bz2:xorg.freedesktop.org/releases/i=
ndividual/lib/xtrans-1.3.3.tar.bz2,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native virtual/gettext get=
text-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  util-macros,The X Transport Interface is intended to combi=
ne all system and transport specific code into a single place.  This API sh=
ould be used by all libraries, clients and servers of the X Window System. =
Use of this API should allow the addition of new types of transports and su=
pport for new platforms without making any changes to the source except in =
the X Transport Interface code.,N/A,http://xorg.freedesktop.org/releases/in=
dividual/lib/xtrans-1.3.3.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.co=
m>)
['resolvconf', '1.74', 'N/A', 'GPLv2+', 'console/network', 'http://packages=
=2Edebian.org/resolvconf', 'r0', ' ', 'None', 'None', "Resolvconf is a fram=
ework for keeping track of the system's information about currently availab=
le nameservers. It sets itself up as the intermediary between programs that=
 supply nameserver information and programs that need nameserver informatio=
n.", 'ErrHostNoDir:/debian/pool/main/r/resolvconf/:-:resolvconf_1.74.tar.gz=
:ftp.debian.org/debian/pool/main/r/resolvconf/resolvconf_1.74.tar.gz', 'N/A=
', 'ftp://ftp.debian.org/debian/pool/main/r/resolvconf/resolvconf_1.74.tar.=
gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (resolvconf,1.74,N/A,GPLv2+,console/network,r0,None,http://package=
s.debian.org/resolvconf,None,ErrHostNoDir:/debian/pool/main/r/resolvconf/:-=
:resolvconf_1.74.tar.gz:ftp.debian.org/debian/pool/main/r/resolvconf/resolv=
conf_1.74.tar.gz, ,Resolvconf is a framework for keeping track of the syste=
m's information about currently available nameservers. It sets itself up as=
 the intermediary between programs that supply nameserver information and p=
rograms that need nameserver information.,N/A,ftp://ftp.debian.org/debian/p=
ool/main/r/resolvconf/resolvconf_1.74.tar.gz,Saul Wold <sgw@linux.intel.com=
>)
['xf86-input-evdev', '2.8.2', 'N/A', 'MIT-X', 'x11/drivers', 'http://www.x.=
org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  virtual/xserver xproto randrproto ut=
il-macros inputproto kbproto  mtdev', 'https://bugs.freedesktop.org', '2', =
"evdev is an Xorg input driver for Linux's generic event devices. It theref=
ore supports all input devices that the kernel knows about, including most =
mice and keyboards. The evdev driver can serve as both a pointer and a keyb=
oard input device, and may be used as both the core keyboard and the core p=
ointer. Multiple input devices are supported by multiple instances of this =
driver, with one Load directive for evdev in the Module section of your xor=
g.conf for each input device that will use this driver. ", 'ErrHostNoDir:/r=
eleases/individual/driver/:-:xf86-input-evdev-2.8.2.tar.bz2:xorg.freedeskto=
p.org/releases/individual/driver/xf86-input-evdev-2.8.2.tar.bz2', 'N/A', 'h=
ttp://xorg.freedesktop.org/releases/individual/driver/xf86-input-evdev-2.8.=
2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86-input-evdev,2.8.2,N/A,MIT-X,x11/drivers,r0,2,http://www.x.or=
g,https://bugs.freedesktop.org,ErrHostNoDir:/releases/individual/driver/:-:=
xf86-input-evdev-2.8.2.tar.bz2:xorg.freedesktop.org/releases/individual/dri=
ver/xf86-input-evdev-2.8.2.tar.bz2,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  virtual/xserve=
r xproto randrproto util-macros inputproto kbproto  mtdev,evdev is an Xorg =
input driver for Linux's generic event devices. It therefore supports all i=
nput devices that the kernel knows about, including most mice and keyboards=
=2E The evdev driver can serve as both a pointer and a keyboard input devic=
e, and may be used as both the core keyboard and the core pointer. Multiple=
 input devices are supported by multiple instances of this driver, with one=
 Load directive for evdev in the Module section of your xorg.conf for each =
input device that will use this driver. ,N/A,http://xorg.freedesktop.org/re=
leases/individual/driver/xf86-input-evdev-2.8.2.tar.bz2,Laurentiu Palcu <la=
urentiu.palcu@intel.com>)
['avahi', '0.6.31', 'N/A', 'GPLv2+ & LGPLv2.1+', 'network', 'http://avahi.o=
rg', 'r11.1', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  exp=
at libcap libdaemon dbus glib-2.0 intltool-native update-rc.d-native base-p=
asswd shadow-native shadow-sysroot shadow', 'http://avahi.org/report', 'Non=
e', 'Avahi is a fully LGPL framework for Multicast DNS Service Discovery. I=
t allows programs to publish and discover services and hosts running on a l=
ocal network with no specific configuration. This tool implements IPv4LL, "=
Dynamic Configuration of IPv4 Link-Local Addresses" (IETF RFC3927), a proto=
col for automatic IP address configuration from the link-local 169.254.0.0/=
16 range without the need for a central server.', 'ErrHostNoDir:/download/:=
-:avahi-0.6.31.tar.gz:avahi.org/download/avahi-0.6.31.tar.gz', '0.6.31', 'h=
ttp://avahi.org/download/avahi-0.6.31.tar.gz', 'Paul Eggleton <paul.eggleto=
n@linux.intel.com>', 'None']
inserted (avahi,0.6.31,N/A,GPLv2+ & LGPLv2.1+,network,r11.1,None,http://ava=
hi.org,http://avahi.org/report,ErrHostNoDir:/download/:-:avahi-0.6.31.tar.g=
z:avahi.org/download/avahi-0.6.31.tar.gz,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native virtual/gette=
xt gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  expat libcap libdaemon dbus glib-2.0 intltool-native=
 update-rc.d-native base-passwd shadow-native shadow-sysroot shadow,Avahi i=
s a fully LGPL framework for Multicast DNS Service Discovery. It allows pro=
grams to publish and discover services and hosts running on a local network=
 with no specific configuration. This tool implements IPv4LL, "Dynamic Conf=
iguration of IPv4 Link-Local Addresses" (IETF RFC3927), a protocol for auto=
matic IP address configuration from the link-local 169.254.0.0/16 range wit=
hout the need for a central server.,0.6.31,http://avahi.org/download/avahi-=
0.6.31.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['procps', '3.2.8', 'N/A', 'GPLv2+ & LGPLv2+', 'base', 'http://procps.sf.ne=
t', 'r11', 'autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ncurses virtual/update-alternatives', 'None', 'None', =
'Procps contains a set of system utilities that provide system information =
about processes using the /proc filesystem. The package \\ includes the pro=
grams ps, top, vmstat, w, kill, and skill.', 'ErrHostNoDir:/:-:procps-3.2.8=
=2Etar.gz:procps.sourceforge.net/procps-3.2.8.tar.gz', 'N/A', 'http://procp=
s.sourceforge.net/procps-3.2.8.tar.gz', 'Saul Wold <sgw@linux.intel.com>', =
'None']
inserted (procps,3.2.8,N/A,GPLv2+ & LGPLv2+,base,r11,None,http://procps.sf.=
net,None,ErrHostNoDir:/:-:procps-3.2.8.tar.gz:procps.sourceforge.net/procps=
-3.2.8.tar.gz,autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  ncurses virtual/update-alternatives,Procps contains =
a set of system utilities that provide system information about processes u=
sing the /proc filesystem. The package \ includes the programs ps, top, vms=
tat, w, kill, and skill.,N/A,http://procps.sourceforge.net/procps-3.2.8.tar=
=2Egz,Saul Wold <sgw@linux.intel.com>)
['matchbox-panel-2', '2.0+gitAUTOINC+26a3a67b41', '2.0+gitAUTOINC+1a7304d',=
 'GPLv2+', 'base', 'http://matchbox-project.org', 'r0', 'pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  gnome-common gtk+ startup-notification dbus dbus-glib    ', 'http:/=
/bugzilla.yoctoproject.org/', 'None', 'Simple GTK+ based panel for handheld=
 devices.', 'UPDATE', 'N/A', 'git://git.yoctoproject.org/matchbox-panel-2',=
 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (matchbox-panel-2,2.0+gitAUTOINC+26a3a67b41,2.0+gitAUTOINC+1a7304d=
,GPLv2+,base,r0,None,http://matchbox-project.org,http://bugzilla.yoctoproje=
ct.org/,UPDATE,pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  gnome-common gtk+ startup-notifica=
tion dbus dbus-glib    ,Simple GTK+ based panel for handheld devices.,N/A,g=
it://git.yoctoproject.org/matchbox-panel-2,Valentin Popa <valentin.popa@int=
el.com>)
['libassuan', '2.1.1', 'N/A', 'GPLv3 & LGPLv2.1+', 'base', 'http://www.gnup=
g.org/related_software/libassuan/', 'r0', 'pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libgpg=
-error', 'https://bugs.g10code.com/gnupg/index', 'None', 'IPC library used =
by GnuPG and GPGME.', 'ErrHostNoDir:/gcrypt/libassuan/:-:libassuan-2.1.1.ta=
r.bz2:ftp.gnupg.org/gcrypt/libassuan/libassuan-2.1.1.tar.bz2', 'N/A', 'ftp:=
//ftp.gnupg.org/gcrypt/libassuan/libassuan-2.1.1.tar.bz2', 'Cristiana Voicu=
 <cristiana.voicu@intel.com>', 'None']
inserted (libassuan,2.1.1,N/A,GPLv3 & LGPLv2.1+,base,r0,None,http://www.gnu=
pg.org/related_software/libassuan/,https://bugs.g10code.com/gnupg/index,Err=
HostNoDir:/gcrypt/libassuan/:-:libassuan-2.1.1.tar.bz2:ftp.gnupg.org/gcrypt=
/libassuan/libassuan-2.1.1.tar.bz2,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libgpg-error,I=
PC library used by GnuPG and GPGME.,N/A,ftp://ftp.gnupg.org/gcrypt/libassua=
n/libassuan-2.1.1.tar.bz2,Cristiana Voicu <cristiana.voicu@intel.com>)
['alsa-tools', '1.0.27', 'N/A', 'GPLv2 & LGPLv2+', 'console/utils', 'http:/=
/www.alsa-project.org', 'r0', 'autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  alsa-lib ncurses gtk+ gtk+3', 'http=
s://bugtrack.alsa-project.org/alsa-bug/login_page.php', 'None', 'Advanced t=
ools for certain ALSA sound card drivers.', 'ErrHostNoDir:/pub/tools/:-:als=
a-tools-1.0.27.tar.bz2:ftp.alsa-project.org/pub/tools/alsa-tools-1.0.27.tar=
=2Ebz2', 'N/A', 'ftp://ftp.alsa-project.org/pub/tools/alsa-tools-1.0.27.tar=
=2Ebz2', 'Kai Kang <kai.kang@windriver.com>', 'None']
inserted (alsa-tools,1.0.27,N/A,GPLv2 & LGPLv2+,console/utils,r0,None,http:=
//www.alsa-project.org,https://bugtrack.alsa-project.org/alsa-bug/login_pag=
e.php,ErrHostNoDir:/pub/tools/:-:alsa-tools-1.0.27.tar.bz2:ftp.alsa-project=
=2Eorg/pub/tools/alsa-tools-1.0.27.tar.bz2,autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  alsa-lib ncurses gtk+ g=
tk+3,Advanced tools for certain ALSA sound card drivers.,N/A,ftp://ftp.alsa=
-project.org/pub/tools/alsa-tools-1.0.27.tar.bz2,Kai Kang <kai.kang@windriv=
er.com>)
['libxml2', '2.9.1', 'N/A', 'MIT', 'libs', 'http://www.xmlsoft.org/', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  zlib   python-native ', 'http://bugzilla.gnome.=
org/buglist.cgi?product=3Dlibxml2', 'None', 'The XML Parser Library allows =
for manipulation of XML files.  Libxml2 exports Push and Pull type parser i=
nterfaces for both XML and HTML.  It can do DTD validation at parse time, o=
n a parsed document instance or with an arbitrary DTD.  Libxml2 includes co=
mplete XPath, XPointer and Xinclude implementations.  It also has a SAX lik=
e interface, which is designed to be compatible with Expat.', 'ErrHostNoDir=
:/libxml2/:-:libxml2-2.9.1.tar.gz:xmlsoft.org/libxml2/libxml2-2.9.1.tar.gz'=
, 'N/A', 'ftp://xmlsoft.org/libxml2/libxml2-2.9.1.tar.gz;name=3Dlibtar', 'H=
ongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (libxml2,2.9.1,N/A,MIT,libs,r0,None,http://www.xmlsoft.org/,http:/=
/bugzilla.gnome.org/buglist.cgi?product=3Dlibxml2,ErrHostNoDir:/libxml2/:-:=
libxml2-2.9.1.tar.gz:xmlsoft.org/libxml2/libxml2-2.9.1.tar.gz,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  zlib   python-native ,The XML Parser Library allows for manipu=
lation of XML files.  Libxml2 exports Push and Pull type parser interfaces =
for both XML and HTML.  It can do DTD validation at parse time, on a parsed=
 document instance or with an arbitrary DTD.  Libxml2 includes complete XPa=
th, XPointer and Xinclude implementations.  It also has a SAX like interfac=
e, which is designed to be compatible with Expat.,N/A,ftp://xmlsoft.org/lib=
xml2/libxml2-2.9.1.tar.gz;name=3Dlibtar,Hongxu Jia <hongxu.jia@windriver.co=
m>)
['settings-daemon', '0.0+gitAUTOINC+9a99528b02', '0.0+gitAUTOINC+9a99528', =
'MIT-style', 'x11', 'http://svn.o-hand.com/view/matchbox/trunk/settings-dae=
mon/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  gconf glib-2.0 gtk+ gconf gconf-nat=
ive', 'http://bugzilla.yoctoproject.org/', 'None', 'Provides a bridge betwe=
en gconf and xsettings.', 'MATCH', 'N/A', 'git://git.yoctoproject.org/xsett=
ings-daemon', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (settings-daemon,0.0+gitAUTOINC+9a99528b02,0.0+gitAUTOINC+9a99528,=
MIT-style,x11,r0,None,http://svn.o-hand.com/view/matchbox/trunk/settings-da=
emon/,http://bugzilla.yoctoproject.org/,MATCH,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gco=
nf glib-2.0 gtk+ gconf gconf-native,Provides a bridge between gconf and xse=
ttings.,N/A,git://git.yoctoproject.org/xsettings-daemon,Valentin Popa <vale=
ntin.popa@intel.com>)
['font-util', '1.3.0', 'N/A', 'BSD & MIT', 'x11/fonts', 'http://www.x.org',=
 'r2.0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  encodings util-macros', 'https://bugs.f=
reedesktop.org/enter_bug.cgi?product=3Dxorg', 'None', 'X.Org font package c=
reation/installation utilities.', 'ErrHostNoDir:/releases/individual/font/:=
-:font-util-1.3.0.tar.bz2:xorg.freedesktop.org/releases/individual/font/fon=
t-util-1.3.0.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individ=
ual/font/font-util-1.3.0.tar.bz2', 'Ross Burton <ross.burton@intel.com>', '=
None']
inserted (font-util,1.3.0,N/A,BSD & MIT,x11/fonts,r2.0,None,http://www.x.or=
g,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/r=
eleases/individual/font/:-:font-util-1.3.0.tar.bz2:xorg.freedesktop.org/rel=
eases/individual/font/font-util-1.3.0.tar.bz2,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  enc=
odings util-macros,X.Org font package creation/installation utilities.,N/A,=
http://xorg.freedesktop.org/releases/individual/font/font-util-1.3.0.tar.bz=
2,Ross Burton <ross.burton@intel.com>)
['libx11-diet', '1.6.2', 'N/A', 'MIT & MIT-style & BSD', 'x11/libs', 'http:=
//www.x.org', 'r0', 'pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  util-macros xproto xextproto=
 xtrans libxcb kbproto inputproto xproto-native', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', "This package provides a client =
interface to the X Window System, otherwise known as 'Xlib'.  It provides a=
 complete API for the basic functions of the window system.  Support for XC=
MS and XLOCALE is disabled in this version.", 'ErrHostNoDir:/releases/indiv=
idual/lib/:-:libX11-1.6.2.tar.bz2:xorg.freedesktop.org/releases/individual/=
lib/libX11-1.6.2.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/ind=
ividual/lib/libX11-1.6.2.tar.bz2', 'Kai Kang <kai.kang@windriver.com>', 'No=
ne']
inserted (libx11-diet,1.6.2,N/A,MIT & MIT-style & BSD,x11/libs,r0,1,http://=
www.x.org,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHost=
NoDir:/releases/individual/lib/:-:libX11-1.6.2.tar.bz2:xorg.freedesktop.org=
/releases/individual/lib/libX11-1.6.2.tar.bz2,pkgconfig-native autoconf-nat=
ive automake-native libtool-native libtool-cross gnu-config-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  uti=
l-macros xproto xextproto xtrans libxcb kbproto inputproto xproto-native,Th=
is package provides a client interface to the X Window System, otherwise kn=
own as 'Xlib'.  It provides a complete API for the basic functions of the w=
indow system.  Support for XCMS and XLOCALE is disabled in this version.,N/=
A,http://xorg.freedesktop.org/releases/individual/lib/libX11-1.6.2.tar.bz2,=
Kai Kang <kai.kang@windriver.com>)
['oprofileui-server', '0.0+gitAUTOINC+f168b8bfdc', '0.0+gitAUTOINC+389e187'=
, 'GPLv2', 'x11', 'http://labs.o-hand.com/oprofileui/', 'r0', 'pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  glib-2.0 avahi update-rc.d-native', 'http://bugzilla.yoctopro=
ject.org/', 'None', 'User interface for the OProfile tool', 'UPDATE', 'N/A'=
, 'git://git.yoctoproject.org/oprofileui', 'Saul Wold <sgw@linux.intel.com>=
', 'PRS Reports Incorrectly']
inserted (oprofileui-server,0.0+gitAUTOINC+f168b8bfdc,0.0+gitAUTOINC+389e18=
7,GPLv2,x11,r0,None,http://labs.o-hand.com/oprofileui/,http://bugzilla.yoct=
oproject.org/,UPDATE,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 avahi update-rc.d-n=
ative,User interface for the OProfile tool,N/A,git://git.yoctoproject.org/o=
profileui,Saul Wold <sgw@linux.intel.com>)
['chkconfig', '1.3.58', 'N/A', 'GPLv2', 'base', 'http://fedorahosted.org/re=
leases/c/h/chkconfig', 'r7', 'virtual/gettext gettext-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libnewt p=
opt', 'None', 'None', 'Chkconfig is a basic system utility.  It updates and=
 queries runlevel information for system services.  Chkconfig manipulates t=
he numerous symbolic links in /etc/rc.d, to relieve system administrators o=
f some of the drudgery of manually editing the symbolic links.', 'ErrHostNo=
Dir:/releases/c/h/chkconfig/:-:chkconfig-1.3.58.tar.bz2:fedorahosted.org/re=
leases/c/h/chkconfig/chkconfig-1.3.58.tar.bz2', 'N/A', 'http://fedorahosted=
=2Eorg/releases/c/h/chkconfig/chkconfig-1.3.58.tar.bz2', 'Wenzong Fan <wenz=
ong.fan@windriver.com>', 'None']
inserted (chkconfig,1.3.58,N/A,GPLv2,base,r7,None,http://fedorahosted.org/r=
eleases/c/h/chkconfig,None,ErrHostNoDir:/releases/c/h/chkconfig/:-:chkconfi=
g-1.3.58.tar.bz2:fedorahosted.org/releases/c/h/chkconfig/chkconfig-1.3.58.t=
ar.bz2,virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  libnewt popt,Chkconfig is a basi=
c system utility.  It updates and queries runlevel information for system s=
ervices.  Chkconfig manipulates the numerous symbolic links in /etc/rc.d, t=
o relieve system administrators of some of the drudgery of manually editing=
 the symbolic links.,N/A,http://fedorahosted.org/releases/c/h/chkconfig/chk=
config-1.3.58.tar.bz2,Wenzong Fan <wenzong.fan@windriver.com>)
['texinfo', '5.2', 'N/A', 'GPLv3+', 'console/utils', 'http://www.gnu.org/so=
ftware/texinfo/', 'r0', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib ncurs=
es texinfo-native', 'None', 'None', 'Texinfo is a documentation system that=
 can produce both online information and printed output from a single sourc=
e file. The GNU Project uses the Texinfo file format for most of its docume=
ntation.', 'ErrHostNoDir:/gnu/texinfo/:-:texinfo-5.2.tar.gz:ftp.gnu.org/gnu=
/texinfo/texinfo-5.2.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/texinfo/texinfo=
-5.2.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'Checking script parses di=
rectory wrong']
inserted (texinfo,5.2,N/A,GPLv3+,console/utils,r0,None,http://www.gnu.org/s=
oftware/texinfo/,None,ErrHostNoDir:/gnu/texinfo/:-:texinfo-5.2.tar.gz:ftp.g=
nu.org/gnu/texinfo/texinfo-5.2.tar.gz,autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  zlib ncurses texinfo-native,Texinfo is a documentation system that can p=
roduce both online information and printed output from a single source file=
=2E The GNU Project uses the Texinfo file format for most of its documentat=
ion.,N/A,ftp://ftp.gnu.org/gnu/texinfo/texinfo-5.2.tar.gz,Saul Wold <sgw@li=
nux.intel.com>)
['libbsd', '0.6.0', 'N/A', 'BSD-4-Clause & MIT', 'libs', 'http://libbsd.fre=
edesktop.org/wiki/', 'r0', 'pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'T=
his library provides useful functions commonly found on BSD systems,       =
         and lacking on others like GNU systems, thus making it easier to p=
ort                projects with strong BSD origins, without needing to emb=
ed the same                code over and over again on each project.', 'Err=
HostNoDir:/releases/:-:libbsd-0.6.0.tar.xz:libbsd.freedesktop.org/releases/=
libbsd-0.6.0.tar.xz', 'N/A', 'http://libbsd.freedesktop.org/releases/libbsd=
-0.6.0.tar.xz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libbsd,0.6.0,N/A,BSD-4-Clause & MIT,libs,r0,None,http://libbsd.fr=
eedesktop.org/wiki/,None,ErrHostNoDir:/releases/:-:libbsd-0.6.0.tar.xz:libb=
sd.freedesktop.org/releases/libbsd-0.6.0.tar.xz,pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,=
This library provides useful functions commonly found on BSD systems,      =
          and lacking on others like GNU systems, thus making it easier to =
port                projects with strong BSD origins, without needing to em=
bed the same                code over and over again on each project.,N/A,h=
ttp://libbsd.freedesktop.org/releases/libbsd-0.6.0.tar.xz,Saul Wold <sgw@li=
nux.intel.com>)
['libpthread-stubs', '0.3', 'N/A', 'MIT', 'x11/libs', 'http://xcb.freedeskt=
op.org', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  ', 'http://bugs.freedesktop.org/b=
uglist.cgi?product=3DXCB', 'None', 'This library provides weak aliases for =
pthread functions not provided in libc or otherwise available by default.',=
 'ErrHostNoDir:/dist/:-:libpthread-stubs-0.3.tar.bz2:xcb.freedesktop.org/di=
st/libpthread-stubs-0.3.tar.bz2', 'N/A', 'http://xcb.freedesktop.org/dist/l=
ibpthread-stubs-0.3.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libpthread-stubs,0.3,N/A,MIT,x11/libs,r0,None,http://xcb.freedesk=
top.org,http://bugs.freedesktop.org/buglist.cgi?product=3DXCB,ErrHostNoDir:=
/dist/:-:libpthread-stubs-0.3.tar.bz2:xcb.freedesktop.org/dist/libpthread-s=
tubs-0.3.tar.bz2,pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ,This library provides weak alia=
ses for pthread functions not provided in libc or otherwise available by de=
fault.,N/A,http://xcb.freedesktop.org/dist/libpthread-stubs-0.3.tar.bz2,Sau=
l Wold <sgw@linux.intel.com>)
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
['make', '4.0', 'N/A', 'GPLv3 & LGPLv2', 'devel', 'http://www.gnu.org/softw=
are/make/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native virtual/gettext gettext-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 ', 'None', 'None', "Make is a tool which controls the generation of execut=
ables and other non-source files of a program from the program's source fil=
es.  Make gets its knowledge of how to build your program from a file calle=
d the makefile, which lists each of the non-source files and how to compute=
 it from other files.", 'ErrHostNoDir:/gnu/make/:-:make-4.0.tar.bz2:ftp.gnu=
=2Eorg/gnu/make/make-4.0.tar.bz2', 'N/A', 'ftp://ftp.gnu.org/gnu/make/make-=
4.0.tar.bz2', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (make,4.0,N/A,GPLv3 & LGPLv2,devel,r0,None,http://www.gnu.org/soft=
ware/make/,None,ErrHostNoDir:/gnu/make/:-:make-4.0.tar.bz2:ftp.gnu.org/gnu/=
make/make-4.0.tar.bz2,pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  ,Make is a tool which controls the generation of executables and other =
non-source files of a program from the program's source files.  Make gets i=
ts knowledge of how to build your program from a file called the makefile, =
which lists each of the non-source files and how to compute it from other f=
iles.,N/A,ftp://ftp.gnu.org/gnu/make/make-4.0.tar.bz2,Robert Yang <liezhi.y=
ang@windriver.com>)
['pcmanfm', '1.1.2', 'N/A', 'GPLv2 & GPLv2+ & LGPLv2.1+', 'x11', 'http://pc=
manfm.sourceforge.net/', 'r0', 'pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ startup-noti=
fication libfm libowl', 'None', 'None', 'Fast lightweight tabbed filemanage=
r.', 'ErrHostNoDir:/pcmanfm/:-:pcmanfm-1.1.2.tar.gz:downloads.sourceforge.n=
et/pcmanfm/pcmanfm-1.1.2.tar.gz', 'N/A', 'http://downloads.sourceforge.net/=
pcmanfm/pcmanfm-1.1.2.tar.gz', 'Valentin Popa <valentin.popa@intel.com>', '=
None']
inserted (pcmanfm,1.1.2,N/A,GPLv2 & GPLv2+ & LGPLv2.1+,x11,r0,None,http://p=
cmanfm.sourceforge.net/,None,ErrHostNoDir:/pcmanfm/:-:pcmanfm-1.1.2.tar.gz:=
downloads.sourceforge.net/pcmanfm/pcmanfm-1.1.2.tar.gz,pkgconfig-native aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  gtk+ startup-notification libfm libowl,Fast lightweight tabbed filema=
nager.,N/A,http://downloads.sourceforge.net/pcmanfm/pcmanfm-1.1.2.tar.gz,Va=
lentin Popa <valentin.popa@intel.com>)
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
['coreutils', '8.22', 'N/A', 'GPLv3+', 'base', 'http://www.gnu.org/software=
/coreutils/', 'r0', 'autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gmp libcap vir=
tual/update-alternatives', 'http://debbugs.gnu.org/coreutils', 'None', 'The=
 GNU Core Utilities provide the basic file, shell and text manipulation uti=
lities. These are the core utilities which are expected to exist on every s=
ystem.', 'ErrHostNoDir:/gnu/coreutils/:-:coreutils-8.22.tar.xz:ftp.gnu.org/=
gnu/coreutils/coreutils-8.22.tar.xz', 'N/A', 'ftp://ftp.gnu.org/gnu/coreuti=
ls/coreutils-8.22.tar.xz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (coreutils,8.22,N/A,GPLv3+,base,r0,None,http://www.gnu.org/softwar=
e/coreutils/,http://debbugs.gnu.org/coreutils,ErrHostNoDir:/gnu/coreutils/:=
-:coreutils-8.22.tar.xz:ftp.gnu.org/gnu/coreutils/coreutils-8.22.tar.xz,aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
 virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  gmp libcap virtual/update-alternatives=
,The GNU Core Utilities provide the basic file, shell and text manipulation=
 utilities. These are the core utilities which are expected to exist on eve=
ry system.,N/A,ftp://ftp.gnu.org/gnu/coreutils/coreutils-8.22.tar.xz,Chen Q=
i <Qi.Chen@windriver.com>)
['webkit-gtk', '1.8.3', 'N/A', 'BSD & LGPLv2+', 'base', 'http://www.webkitg=
tk.org/', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  zlib enchant libsoup-2.4 curl li=
bxml2 cairo libxslt libxt libidn gnutls            gtk+ gstreamer gst-plugi=
ns-base flex-native gperf-native perl-native-runtime sqlite3 icu  virtual/l=
ibgl gtk-doc-stub-native', 'http://bugs.webkit.org/', 'None', 'WebKit web r=
endering engine for the GTK+ platform.', 'ErrHostNoDir:/releases/:-:webkit-=
1.8.3.tar.xz:www.webkitgtk.org/releases/webkit-1.8.3.tar.xz', '1.10.2', 'ht=
tp://www.webkitgtk.org/releases/webkit-1.8.3.tar.xz', 'Valentin Popa <valen=
tin.popa@intel.com>', '>=3D 1.10.2 needs ruby']
inserted (webkit-gtk,1.8.3,N/A,BSD & LGPLv2+,base,r1,None,http://www.webkit=
gtk.org/,http://bugs.webkit.org/,ErrHostNoDir:/releases/:-:webkit-1.8.3.tar=
=2Exz:www.webkitgtk.org/releases/webkit-1.8.3.tar.xz,pkgconfig-native autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  zlib enchant libsoup-2.4 curl libxml2 cairo libxslt libxt libidn gnutls=
            gtk+ gstreamer gst-plugins-base flex-native gperf-native perl-n=
ative-runtime sqlite3 icu  virtual/libgl gtk-doc-stub-native,WebKit web ren=
dering engine for the GTK+ platform.,1.10.2,http://www.webkitgtk.org/releas=
es/webkit-1.8.3.tar.xz,Valentin Popa <valentin.popa@intel.com>)
['sqlite3', '3.8.3.1', 'N/A', 'PD', 'libs', 'http://www.sqlite.org', 'r0', =
'pkgconfig-native autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  readline ncurses', 'None', '1', 'Embeddable SQL =
database engine.', 'ErrHostNoDir:/2014/:-:sqlite-autoconf-3080301.tar.gz:ww=
w.sqlite.org/2014/sqlite-autoconf-3080301.tar.gz', '3.8.0.2', 'http://www.s=
qlite.org/2014/sqlite-autoconf-3080301.tar.gz', 'Saul Wold <sgw@linux.intel=
=2Ecom>', 'None']
inserted (sqlite3,3.8.3.1,N/A,PD,libs,r0,1,http://www.sqlite.org,None,ErrHo=
stNoDir:/2014/:-:sqlite-autoconf-3080301.tar.gz:www.sqlite.org/2014/sqlite-=
autoconf-3080301.tar.gz,pkgconfig-native autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  readline ncurses,Embeddab=
le SQL database engine.,3.8.0.2,http://www.sqlite.org/2014/sqlite-autoconf-=
3080301.tar.gz,Saul Wold <sgw@linux.intel.com>)
['python-async', '0.6.1', 'N/A', 'BSD', 'devel/python', 'http://github.com/=
gitpython-developers/async', 'r0', ' virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   python-native python  python-nati=
ve ', 'None', 'None', 'Python framework to process interdependent tasks in =
a pool of workers.', 'ErrHostNoDir:/packages/source/a/async/:-:async-0.6.1.=
tar.gz:pypi.python.org/packages/source/a/async/async-0.6.1.tar.gz', 'N/A', =
'http://pypi.python.org/packages/source/a/async/async-0.6.1.tar.gz', 'None'=
, 'None']
inserted (python-async,0.6.1,N/A,BSD,devel/python,r0,None,http://github.com=
/gitpython-developers/async,None,ErrHostNoDir:/packages/source/a/async/:-:a=
sync-0.6.1.tar.gz:pypi.python.org/packages/source/a/async/async-0.6.1.tar.g=
z, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   python-native python  python-native ,Python framework to process in=
terdependent tasks in a pool of workers.,N/A,http://pypi.python.org/package=
s/source/a/async/async-0.6.1.tar.gz,None)
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
ing latency once the repaint operation has started.", 'ErrHostNoDir:/releas=
es/individual/lib/:-:libXdamage-1.1.4.tar.bz2:xorg.freedesktop.org/releases=
/individual/lib/libXdamage-1.1.4.tar.bz2', 'N/A', 'http://xorg.freedesktop.=
org/releases/individual/lib/libXdamage-1.1.4.tar.bz2', 'Ross Burton <ross.b=
urton@intel.com>', 'None']
inserted (libxdamage,1.1.4,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/ind=
ividual/lib/:-:libXdamage-1.1.4.tar.bz2:xorg.freedesktop.org/releases/indiv=
idual/lib/libXdamage-1.1.4.tar.bz2,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros vi=
rtual/libx11 damageproto libxfixes,'Damage' is a term that describes change=
s make to pixel contents of windows and pixmaps.  Damage accumulates as dra=
wing occurs in the drawable.  Each drawing operation 'damages' one or more =
rectangular areas within the drawable.  The rectangles are guaranteed to in=
clude the set of pixels modified by each operation, but may include signifi=
cantly more than just those pixels.  The DAMAGE extension allows applicatio=
ns to either receive the raw rectangles as a stream of events, or to have t=
hem partially processed within the X server to reduce the amount of data tr=
ansmitted as well as reduce the processing latency once the repaint operati=
on has started.,N/A,http://xorg.freedesktop.org/releases/individual/lib/lib=
Xdamage-1.1.4.tar.bz2,Ross Burton <ross.burton@intel.com>)
['xserver-nodm-init', '1.0', 'INVALID', 'GPLv2', 'x11', '', 'r31', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   u=
pdate-rc.d-native', 'None', 'None', 'Simple Xserver Init Script (no dm).', =
'MATCH', 'N/A', 'file://xserver-nodm', 'Laurentiu Palcu <laurentiu.palcu@in=
tel.com>', 'None']
inserted (xserver-nodm-init,1.0,INVALID,GPLv2,x11,r31,None,,None,MATCH, vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
  update-rc.d-native,Simple Xserver Init Script (no dm).,N/A,file://xserver=
-nodm,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['directfb', '1.7.1', 'N/A', 'LGPLv2.1', 'libs', 'http://directfb.org', 'r0=
', 'pkgconfig-native autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  jpeg libpng freetype zlib tslib sysfsutils', =
'None', 'None', 'DirectFB is a thin library that provides developers with h=
ardware graphics acceleration, input device handling and abstraction, an in=
tegrated windowing system with support for translucent windows and multiple=
 display layers on top of the Linux framebuffer device.', 'ErrHostNoDir:/do=
wnloads/Core/DirectFB-1.7/DirectFB-1.7.1.tar.gz:DirectFB-1.7:-:www.directfb=
=2Eorg/downloads/Core/DirectFB-1.7/DirectFB-1.7.1.tar.gz', 'N/A', 'http://w=
ww.directfb.org/downloads/Core/DirectFB-1.7/DirectFB-1.7.1.tar.gz', 'Kai Ka=
ng <kai.kang@windriver.com>', 'None']
inserted (directfb,1.7.1,N/A,LGPLv2.1,libs,r0,None,http://directfb.org,None=
,ErrHostNoDir:/downloads/Core/DirectFB-1.7/DirectFB-1.7.1.tar.gz:DirectFB-1=
=2E7:-:www.directfb.org/downloads/Core/DirectFB-1.7/DirectFB-1.7.1.tar.gz,p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  jpeg libpng freetype zlib tslib sysfsutils,DirectF=
B is a thin library that provides developers with hardware graphics acceler=
ation, input device handling and abstraction, an integrated windowing syste=
m with support for translucent windows and multiple display layers on top o=
f the Linux framebuffer device.,N/A,http://www.directfb.org/downloads/Core/=
DirectFB-1.7/DirectFB-1.7.1.tar.gz,Kai Kang <kai.kang@windriver.com>)
['mklibs-native', '0.1.38', 'N/A', 'GPLv2+', 'devel', 'https://code.launchp=
ad.net/mklibs', 'r0', 'autoconf-native automake-native libtool-native gnu-c=
onfig-native gettext-minimal-native  python-native dpkg-native  python-nati=
ve ', 'None', 'None', 'mklibs produces cut-down shared libraries that conta=
in only the routines required by a particular set of executables.', 'ErrHos=
tNoDir:/debian/pool/main/m/mklibs/:-:mklibs_0.1.38.tar.gz:ftp.de.debian.org=
/debian/pool/main/m/mklibs/mklibs_0.1.38.tar.gz', 'N/A', 'http://ftp.de.deb=
ian.org/debian/pool/main/m/mklibs/mklibs_0.1.38.tar.gz', 'Robert Yang <liez=
hi.yang@windriver.com>', 'None']
inserted (mklibs-native,0.1.38,N/A,GPLv2+,devel,r0,None,https://code.launch=
pad.net/mklibs,None,ErrHostNoDir:/debian/pool/main/m/mklibs/:-:mklibs_0.1.3=
8.tar.gz:ftp.de.debian.org/debian/pool/main/m/mklibs/mklibs_0.1.38.tar.gz,a=
utoconf-native automake-native libtool-native gnu-config-native gettext-min=
imal-native  python-native dpkg-native  python-native ,mklibs produces cut-=
down shared libraries that contain only the routines required by a particul=
ar set of executables.,N/A,http://ftp.de.debian.org/debian/pool/main/m/mkli=
bs/mklibs_0.1.38.tar.gz,Robert Yang <liezhi.yang@windriver.com>)
['python-pygobject', '2.27.91', 'N/A', 'LGPLv2.1', 'devel/python', '', 'r6'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  python python-pygobject-native glib-2.0 python=
-native python  python-native ', 'None', 'None', 'Python GObject bindings.'=
, 'ErrHostNoDir:/pub/GNOME/sources/pygobject/2.27/pygobject-2.27.91.tar.bz2=
:2.27:-:ftp.gnome.org/pub/GNOME/sources/pygobject/2.27/pygobject-2.27.91.ta=
r.bz2', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/pygobject/2.27/pygob=
ject-2.27.91.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', "Newe=
r versions of python-pygobject depend on gobject-introspection which doesn'=
t cross-compile"]
inserted (python-pygobject,2.27.91,N/A,LGPLv2.1,devel/python,r6,None,,None,=
ErrHostNoDir:/pub/GNOME/sources/pygobject/2.27/pygobject-2.27.91.tar.bz2:2.=
27:-:ftp.gnome.org/pub/GNOME/sources/pygobject/2.27/pygobject-2.27.91.tar.b=
z2,pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  python python-pygobject-native glib-2.0 python=
-native python  python-native ,Python GObject bindings.,N/A,http://ftp.gnom=
e.org/pub/GNOME/sources/pygobject/2.27/pygobject-2.27.91.tar.bz2,Laurentiu =
Palcu <laurentiu.palcu@intel.com>)
['piglit', '1.0+gitrAUTOINC+bbeff5d21b', '1.0+gitrAUTOINC+072385f', 'MIT & =
LGPLv2+ & GPLv3 & GPLv2+ & BSD-3-Clause', 'base', '', 'r0', 'autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native cmake-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  virtual/libx11 waffle virtual/libgl libglu python-mako-native pytho=
n-numpy-native  python-native ', 'None', 'None', 'OpenGL driver testing fra=
mework.', 'UPDATE', 'N/A', 'git://anongit.freedesktop.org/piglit', 'None', =
'None']
inserted (piglit,1.0+gitrAUTOINC+bbeff5d21b,1.0+gitrAUTOINC+072385f,MIT & L=
GPLv2+ & GPLv3 & GPLv2+ & BSD-3-Clause,base,r0,None,,None,UPDATE,autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native cmake-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  virtual/libx11 waffle virtual/libgl libglu python-mako-native p=
ython-numpy-native  python-native ,OpenGL driver testing framework.,N/A,git=
://anongit.freedesktop.org/piglit,None)
['libunique', '1.1.6', 'N/A', 'LGPLv2.1', 'base', 'https://wiki.gnome.org/A=
ttic/LibUnique', 'r7', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-=
linux-compilerlibs virtual/libc  glib-2.0 gtk+ dbus dbus-glib', 'https://bu=
gzilla.gnome.org/enter_bug.cgi?product=3Dlibunique', 'None', 'Unique is a l=
ibrary for writing single instance GTK+ applications. If you launch a singl=
e instance application twice, the second instance will either just quit or =
will send a message to the running instance.', 'ErrHostNoDir:/pub/GNOME/sou=
rces/libunique/1.1/libunique-1.1.6.tar.bz2:1.1:-:ftp.gnome.org/pub/GNOME/so=
urces/libunique/1.1/libunique-1.1.6.tar.bz2', 'N/A', 'http://ftp.gnome.org/=
pub/GNOME/sources/libunique/1.1/libunique-1.1.6.tar.bz2', 'Cristiana Voicu =
<cristiana.voicu@intel.com>', 'Do not upgrade to version: 2.91.4 because it=
 requires gtk+ >=3D 2.90.0 and the stable version of gtk+ used by poky is 2=
=2E20.1']
inserted (libunique,1.1.6,N/A,LGPLv2.1,base,r7,None,https://wiki.gnome.org/=
Attic/LibUnique,https://bugzilla.gnome.org/enter_bug.cgi?product=3Dlibuniqu=
e,ErrHostNoDir:/pub/GNOME/sources/libunique/1.1/libunique-1.1.6.tar.bz2:1.1=
:-:ftp.gnome.org/pub/GNOME/sources/libunique/1.1/libunique-1.1.6.tar.bz2,au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  glib-2.0 gtk+ dbus dbus-glib,Unique is a library for writing single =
instance GTK+ applications. If you launch a single instance application twi=
ce, the second instance will either just quit or will send a message to the=
 running instance.,N/A,http://ftp.gnome.org/pub/GNOME/sources/libunique/1.1=
/libunique-1.1.6.tar.bz2,Cristiana Voicu <cristiana.voicu@intel.com>)
['gst-fluendo-mpegdemux', '0.10.72', 'N/A', 'MPLv1.1', 'multimedia', 'http:=
//www.fluendo.com/resources/source-plugins.php', 'r0', 'pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  gstreamer zlib', 'None', 'None', 'Fluendo closed-format mpeg video G=
Streamer plug-in.', 'ErrHostNoDir:/gstreamer/src/gst-fluendo-mpegdemux/:-:g=
st-fluendo-mpegdemux-0.10.72.tar.bz2:core.fluendo.com/gstreamer/src/gst-flu=
endo-mpegdemux/gst-fluendo-mpegdemux-0.10.72.tar.bz2', 'N/A', 'http://core.=
fluendo.com/gstreamer/src/gst-fluendo-mpegdemux/gst-fluendo-mpegdemux-0.10.=
72.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (gst-fluendo-mpegdemux,0.10.72,N/A,MPLv1.1,multimedia,r0,None,http=
://www.fluendo.com/resources/source-plugins.php,None,ErrHostNoDir:/gstreame=
r/src/gst-fluendo-mpegdemux/:-:gst-fluendo-mpegdemux-0.10.72.tar.bz2:core.f=
luendo.com/gstreamer/src/gst-fluendo-mpegdemux/gst-fluendo-mpegdemux-0.10.7=
2.tar.bz2,pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  gstreamer zlib,Fluendo closed-format mp=
eg video GStreamer plug-in.,N/A,http://core.fluendo.com/gstreamer/src/gst-f=
luendo-mpegdemux/gst-fluendo-mpegdemux-0.10.72.tar.bz2,Cristian Iorga <cris=
tian.iorga@intel.com>)
['build-appliance-image', '8.0', '10.0.1', 'MIT', 'base', 'http://www.yocto=
project.org/documentation/build-appliance', 'r0', ' zip-native gzip-native =
qemuwrapper-cross depmodwrapper-cross', 'None', 'None', 'An image containin=
g the build system that you can boot and run using either VMware Player or =
VMware Workstation.', 'ErrUnknown:git.yoctoproject.org/poky', 'N/A', 'git:/=
/git.yoctoproject.org/poky', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (build-appliance-image,8.0,10.0.1,MIT,base,r0,None,http://www.yoct=
oproject.org/documentation/build-appliance,None,ErrUnknown:git.yoctoproject=
=2Eorg/poky, zip-native gzip-native qemuwrapper-cross depmodwrapper-cross,A=
n image containing the build system that you can boot and run using either =
VMware Player or VMware Workstation.,N/A,git://git.yoctoproject.org/poky,Sa=
ul Wold <sgw@linux.intel.com>)
['libtelepathy', '0.3.3', 'N/A', 'LGPLv2.1+', 'base', 'http://telepathy.fre=
edesktop.org/wiki/', 'r5', 'pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus dbus-gl=
ib telepathy-glib libxslt-native  python-native ', 'None', 'None', 'Telepat=
hy is a D-Bus framework for unifying real time communication, including ins=
tant messaging, voice calls and video calls.  It abstracts differences betw=
een protocols to provide a unified interface for applications.', 'ErrHostNo=
Dir:/releases/libtelepathy/:-:libtelepathy-0.3.3.tar.gz:telepathy.freedeskt=
op.org/releases/libtelepathy/libtelepathy-0.3.3.tar.gz', 'N/A', 'http://tel=
epathy.freedesktop.org/releases/libtelepathy/libtelepathy-0.3.3.tar.gz', 'C=
ristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libtelepathy,0.3.3,N/A,LGPLv2.1+,base,r5,None,http://telepathy.fr=
eedesktop.org/wiki/,None,ErrHostNoDir:/releases/libtelepathy/:-:libtelepath=
y-0.3.3.tar.gz:telepathy.freedesktop.org/releases/libtelepathy/libtelepathy=
-0.3.3.tar.gz,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  glib-2.0 dbus dbus-glib telepathy-g=
lib libxslt-native  python-native ,Telepathy is a D-Bus framework for unify=
ing real time communication, including instant messaging, voice calls and v=
ideo calls.  It abstracts differences between protocols to provide a unifie=
d interface for applications.,N/A,http://telepathy.freedesktop.org/releases=
/libtelepathy/libtelepathy-0.3.3.tar.gz,Cristian Iorga <cristian.iorga@inte=
l.com>)
['binutils-cross-canadian-i586', '2.24', 'N/A', 'GPLv3', 'devel', 'http://w=
ww.gnu.org/software/binutils/', 'r0', 'autoconf-native automake-native libt=
ool-native gnu-config-native gettext-native nativesdk-gettext  flex-native =
bison-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-libc=
 nativesdk-zlib nativesdk-gettext chrpath-replacement-native', 'http://sour=
ceware.org/bugzilla/', 'None', 'The GNU Binutils are a collection of binary=
 tools. The main ones are ld (GNU Linker), and as (GNU Assembler). This pac=
kage also includes addition tools such as addr2line (Converts addresses int=
o filenames and line numbers), ar (utility for creating, modifying and extr=
acting archives), nm (list symbols in object files), objcopy (copy and tran=
slate object files), objdump (Display object information), and other tools =
and related libraries.', 'ErrHostNoDir:/gnu/binutils/:-:binutils-2.24.tar.b=
z2:ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2', 'N/A', 'ftp://ftp.gnu.o=
rg/gnu/binutils/binutils-2.24.tar.bz2', 'Robert Yang <liezhi.yang@windriver=
=2Ecom>', 'None']
inserted (binutils-cross-canadian-i586,2.24,N/A,GPLv3,devel,r0,None,http://=
www.gnu.org/software/binutils/,http://sourceware.org/bugzilla/,ErrHostNoDir=
:/gnu/binutils/:-:binutils-2.24.tar.bz2:ftp.gnu.org/gnu/binutils/binutils-2=
=2E24.tar.bz2,autoconf-native automake-native libtool-native gnu-config-nat=
ive gettext-native nativesdk-gettext  flex-native bison-native virtual/i586=
-pokysdk-linux-gcc-crosssdk virtual/nativesdk-libc nativesdk-zlib nativesdk=
-gettext chrpath-replacement-native,The GNU Binutils are a collection of bi=
nary tools. The main ones are ld (GNU Linker), and as (GNU Assembler). This=
 package also includes addition tools such as addr2line (Converts addresses=
 into filenames and line numbers), ar (utility for creating, modifying and =
extracting archives), nm (list symbols in object files), objcopy (copy and =
translate object files), objdump (Display object information), and other to=
ols and related libraries.,N/A,ftp://ftp.gnu.org/gnu/binutils/binutils-2.24=
=2Etar.bz2,Robert Yang <liezhi.yang@windriver.com>)
['gamin', '0.1.10', 'N/A', 'LGPLv2+', 'base', 'http://people.gnome.org/~vei=
llard/gamin/', 'r5', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0', 'None', 'None', =
'Gamin is a file and directory monitoring system defined to be a subset of =
the FAM (File Alteration Monitor) system.', 'ErrHostNoDir:/~veillard/gamin/=
sources/:-:gamin-0.1.10.tar.gz:www.gnome.org/~veillard/gamin/sources/gamin-=
0.1.10.tar.gz', 'N/A', 'http://www.gnome.org/~veillard/gamin/sources/gamin-=
0.1.10.tar.gz', 'Cristiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (gamin,0.1.10,N/A,LGPLv2+,base,r5,None,http://people.gnome.org/~ve=
illard/gamin/,None,ErrHostNoDir:/~veillard/gamin/sources/:-:gamin-0.1.10.ta=
r.gz:www.gnome.org/~veillard/gamin/sources/gamin-0.1.10.tar.gz,pkgconfig-na=
tive autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs =
virtual/libc  glib-2.0,Gamin is a file and directory monitoring system defi=
ned to be a subset of the FAM (File Alteration Monitor) system.,N/A,http://=
www.gnome.org/~veillard/gamin/sources/gamin-0.1.10.tar.gz,Cristiana Voicu <=
cristiana.voicu@intel.com>)
['lsof', '4.87', 'N/A', 'BSD', 'devel', '', 'r0', ' virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', =
'Lsof is a Unix-specific diagnostic tool. Its name stands for LiSt Open Fil=
es, and it does just that.', 'ErrHostNoDir:/pub/tools/unix/lsof/:-:lsof_4.8=
7.tar.bz2:lsof.itap.purdue.edu/pub/tools/unix/lsof/lsof_4.87.tar.bz2', 'N/A=
', 'ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/lsof_4.87.tar.bz2', 'Lau=
rentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (lsof,4.87,N/A,BSD,devel,r0,None,,None,ErrHostNoDir:/pub/tools/uni=
x/lsof/:-:lsof_4.87.tar.bz2:lsof.itap.purdue.edu/pub/tools/unix/lsof/lsof_4=
=2E87.tar.bz2, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  ,Lsof is a Unix-specific diagnostic tool. Its name stand=
s for LiSt Open Files, and it does just that.,N/A,ftp://lsof.itap.purdue.ed=
u/pub/tools/unix/lsof/lsof_4.87.tar.bz2,Laurentiu Palcu <laurentiu.palcu@in=
tel.com>)
['fontsproto', '2.1.2', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire prot=
ocol for the X Font rasterisation extensions.  These extensions are used to=
 control server-side font configurations.', 'ErrHostNoDir:/releases/individ=
ual/proto/:-:fontsproto-2.1.2.tar.bz2:xorg.freedesktop.org/releases/individ=
ual/proto/fontsproto-2.1.2.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/re=
leases/individual/proto/fontsproto-2.1.2.tar.bz2', 'Laurentiu Palcu <lauren=
tiu.palcu@intel.com>', 'None']
inserted (fontsproto,2.1.2,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releas=
es/individual/proto/:-:fontsproto-2.1.2.tar.bz2:xorg.freedesktop.org/releas=
es/individual/proto/fontsproto-2.1.2.tar.bz2,pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util=
-macros,This package provides the wire protocol for the X Font rasterisatio=
n extensions.  These extensions are used to control server-side font config=
urations.,N/A,http://xorg.freedesktop.org/releases/individual/proto/fontspr=
oto-2.1.2.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['libdrm', '2.4.52', 'N/A', 'MIT', 'x11/base', 'http://dri.freedesktop.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  libpthread-stubs udev  libpciaccess', 'N=
one', 'None', 'The runtime library for accessing the kernel DRM services.  =
DRM stands for \\"Direct Rendering Manager\\", which is the kernel portion =
of the \\"Direct Rendering Infrastructure\\" (DRI).  DRI is required for ma=
ny hardware accelerated OpenGL drivers.', 'ErrHostNoDir:/libdrm/:-:libdrm-2=
=2E4.52.tar.bz2:dri.freedesktop.org/libdrm/libdrm-2.4.52.tar.bz2', 'N/A', '=
http://dri.freedesktop.org/libdrm/libdrm-2.4.52.tar.bz2', 'Laurentiu Palcu =
<laurentiu.palcu@intel.com>', 'None']
inserted (libdrm,2.4.52,N/A,MIT,x11/base,r0,None,http://dri.freedesktop.org=
,None,ErrHostNoDir:/libdrm/:-:libdrm-2.4.52.tar.bz2:dri.freedesktop.org/lib=
drm/libdrm-2.4.52.tar.bz2,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  libpthread-stubs udev  =
libpciaccess,The runtime library for accessing the kernel DRM services.  DR=
M stands for \"Direct Rendering Manager\", which is the kernel portion of t=
he \"Direct Rendering Infrastructure\" (DRI).  DRI is required for many har=
dware accelerated OpenGL drivers.,N/A,http://dri.freedesktop.org/libdrm/lib=
drm-2.4.52.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['python-argparse', '1.2.1', 'N/A', 'PSF', 'devel/python', '', 'r4', ' virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
 python-native python  python-native  python-distribute-native', 'None', 'N=
one', 'Python command-line parsing library.', 'ErrHostNoDir:/files/:-:argpa=
rse-1.2.1.tar.gz:argparse.googlecode.com/files/argparse-1.2.1.tar.gz', 'N/A=
', 'http://argparse.googlecode.com/files/argparse-1.2.1.tar.gz', 'Laurentiu=
 Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (python-argparse,1.2.1,N/A,PSF,devel/python,r4,None,,None,ErrHostN=
oDir:/files/:-:argparse-1.2.1.tar.gz:argparse.googlecode.com/files/argparse=
-1.2.1.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc   python-native python  python-native  python-distribute-=
native,Python command-line parsing library.,N/A,http://argparse.googlecode.=
com/files/argparse-1.2.1.tar.gz,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['dhcp', '4.3.0', 'N/A', 'ISC', 'console/network', 'http://www.isc.org/', '=
r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-conf=
ig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  openssl bind', 'None', 'None', 'DHCP (Dynamic Host Configura=
tion Protocol) is a protocol which allows individual devices on an IP netwo=
rk to get their own network configuration information from a server.  DHCP =
helps make it easier to administer devices.', 'ErrHostNoDir:/isc/dhcp/4.3.0=
/:4.3.0:dhcp-4.3.0.tar.gz:ftp.isc.org/isc/dhcp/4.3.0/dhcp-4.3.0.tar.gz', 'N=
/A', 'ftp://ftp.isc.org/isc/dhcp/4.3.0/dhcp-4.3.0.tar.gz', 'Saul Wold <sgw@=
linux.intel.com>', 'None']
inserted (dhcp,4.3.0,N/A,ISC,console/network,r0,None,http://www.isc.org/,No=
ne,ErrHostNoDir:/isc/dhcp/4.3.0/:4.3.0:dhcp-4.3.0.tar.gz:ftp.isc.org/isc/dh=
cp/4.3.0/dhcp-4.3.0.tar.gz,autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  openssl bind,DHCP (Dynamic Host Configu=
ration Protocol) is a protocol which allows individual devices on an IP net=
work to get their own network configuration information from a server.  DHC=
P helps make it easier to administer devices.,N/A,ftp://ftp.isc.org/isc/dhc=
p/4.3.0/dhcp-4.3.0.tar.gz,Saul Wold <sgw@linux.intel.com>)
['libxxf86vm', '1.1.3', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros libxext xf86vidmodeproto', 'https:/=
/bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXxf86vm provi=
des an interface to the XFree86-VidModeExtension extension, which allows cl=
ient applications to get and set video mode timings in extensive detail.  I=
t is used by the xvidtune program in particular.', 'ErrHostNoDir:/releases/=
individual/lib/:-:libXxf86vm-1.1.3.tar.bz2:xorg.freedesktop.org/releases/in=
dividual/lib/libXxf86vm-1.1.3.tar.bz2', 'N/A', 'http://xorg.freedesktop.org=
/releases/individual/lib/libXxf86vm-1.1.3.tar.bz2', 'Ross Burton <ross.burt=
on@intel.com>', 'None']
inserted (libxxf86vm,1.1.3,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/ind=
ividual/lib/:-:libXxf86vm-1.1.3.tar.bz2:xorg.freedesktop.org/releases/indiv=
idual/lib/libXxf86vm-1.1.3.tar.bz2,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros li=
bxext xf86vidmodeproto,libXxf86vm provides an interface to the XFree86-VidM=
odeExtension extension, which allows client applications to get and set vid=
eo mode timings in extensive detail.  It is used by the xvidtune program in=
 particular.,N/A,http://xorg.freedesktop.org/releases/individual/lib/libXxf=
86vm-1.1.3.tar.bz2,Ross Burton <ross.burton@intel.com>)
['liburcu', '0.8.1', 'N/A', 'LGPLv2.1+ & MIT-style', 'base', 'http://lttng.=
org/urcu', 'r0', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  ', 'http://lttng.org/project/issues', 'None', 'U=
serspace RCU (read-copy-update) library.', 'ErrHostNoDir:/files/urcu/:-:use=
rspace-rcu-0.8.1.tar.bz2:lttng.org/files/urcu/userspace-rcu-0.8.1.tar.bz2',=
 '0.7.0', 'http://lttng.org/files/urcu/userspace-rcu-0.8.1.tar.bz2', 'Crist=
iana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (liburcu,0.8.1,N/A,LGPLv2.1+ & MIT-style,base,r0,None,http://lttng=
=2Eorg/urcu,http://lttng.org/project/issues,ErrHostNoDir:/files/urcu/:-:use=
rspace-rcu-0.8.1.tar.bz2:lttng.org/files/urcu/userspace-rcu-0.8.1.tar.bz2,a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  ,Userspace RCU (read-copy-update) library.,0.7.0,http://lttng.org/f=
iles/urcu/userspace-rcu-0.8.1.tar.bz2,Cristiana Voicu <cristiana.voicu@inte=
l.com>)
['gzip', '1.6', 'N/A', 'GPLv3+', 'console/utils', 'http://www.gnu.org/softw=
are/gzip/', 'r0', 'autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc   virtual/update-alternatives', 'None', 'None', =
'GNU Gzip is a popular data compression program originally written by Jean-=
loup Gailly for the GNU project. Mark Adler wrote the decompression part', =
'ErrHostNoDir:/gnu/gzip/:-:gzip-1.6.tar.gz:ftp.gnu.org/gnu/gzip/gzip-1.6.ta=
r.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/gzip/gzip-1.6.tar.gz', 'Chen Qi <Qi.Ch=
en@windriver.com>', 'None']
inserted (gzip,1.6,N/A,GPLv3+,console/utils,r0,None,http://www.gnu.org/soft=
ware/gzip/,None,ErrHostNoDir:/gnu/gzip/:-:gzip-1.6.tar.gz:ftp.gnu.org/gnu/g=
zip/gzip-1.6.tar.gz,autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc   virtual/update-alternatives,GNU Gzip is a pop=
ular data compression program originally written by Jean-loup Gailly for th=
e GNU project. Mark Adler wrote the decompression part,N/A,ftp://ftp.gnu.or=
g/gnu/gzip/gzip-1.6.tar.gz,Chen Qi <Qi.Chen@windriver.com>)
['bdwgc', '7.2d', 'N/A', 'MIT & FSF-Unlimited & GPL-2.0', 'devel', 'http://=
www.hpl.hp.com/personal/Hans_Boehm/gc/', 'r0', 'pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  '=
, 'None', 'None', 'The Boehm-Demers-Weiser conservative garbage collector c=
an be used as a garbage collecting replacement for C malloc or C++ new. It =
allows you to allocate memory basically as you normally would, without expl=
icitly deallocating memory that is no longer useful. The collector automati=
cally recycles memory when it determines that it can no longer be otherwise=
 accessed.  The collector is also used by a number of programming language =
implementations that either use C as intermediate code, want to facilitate =
easier interoperation with C libraries, or just prefer the simple collector=
 interface.  Alternatively, the garbage collector may be used as a leak det=
ector for C or C++ programs, though that is not its primary goal.  Empirica=
lly, this collector works with most unmodified C programs, simply by replac=
ing malloc with GC_malloc calls, replacing realloc with GC_realloc calls, a=
nd removing free calls.', 'ErrHostNoDir:/personal/Hans_Boehm/gc/gc_source/:=
-:gc-7.2d.tar.gz:www.hpl.hp.com/personal/Hans_Boehm/gc/gc_source/gc-7.2d.ta=
r.gz', 'gc-7.2d', 'http://www.hpl.hp.com/personal/Hans_Boehm/gc/gc_source/g=
c-7.2d.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (bdwgc,7.2d,N/A,MIT & FSF-Unlimited & GPL-2.0,devel,r0,None,http:/=
/www.hpl.hp.com/personal/Hans_Boehm/gc/,None,ErrHostNoDir:/personal/Hans_Bo=
ehm/gc/gc_source/:-:gc-7.2d.tar.gz:www.hpl.hp.com/personal/Hans_Boehm/gc/gc=
_source/gc-7.2d.tar.gz,pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  ,The Boehm-Demers-Weiser c=
onservative garbage collector can be used as a garbage collecting replaceme=
nt for C malloc or C++ new. It allows you to allocate memory basically as y=
ou normally would, without explicitly deallocating memory that is no longer=
 useful. The collector automatically recycles memory when it determines tha=
t it can no longer be otherwise accessed.  The collector is also used by a =
number of programming language implementations that either use C as interme=
diate code, want to facilitate easier interoperation with C libraries, or j=
ust prefer the simple collector interface.  Alternatively, the garbage coll=
ector may be used as a leak detector for C or C++ programs, though that is =
not its primary goal.  Empirically, this collector works with most unmodifi=
ed C programs, simply by replacing malloc with GC_malloc calls, replacing r=
ealloc with GC_realloc calls, and removing free calls.,gc-7.2d,http://www.h=
pl.hp.com/personal/Hans_Boehm/gc/gc_source/gc-7.2d.tar.gz,Laurentiu Palcu <=
laurentiu.palcu@intel.com>)
['speex', '1.2rc1', 'N/A', 'BSD', 'libs', 'http://www.speex.org', 'r2', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  libogg', 'None', 'None', 'Speex is an Open Source/F=
ree Software patent-free audio compression format designed for speech.', 'E=
rrHostNoDir:/releases/speex/:-:speex-1.2rc1.tar.gz:downloads.us.xiph.org/re=
leases/speex/speex-1.2rc1.tar.gz', 'N/A', 'http://downloads.us.xiph.org/rel=
eases/speex/speex-1.2rc1.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com=
>', 'None']
inserted (speex,1.2rc1,N/A,BSD,libs,r2,None,http://www.speex.org,None,ErrHo=
stNoDir:/releases/speex/:-:speex-1.2rc1.tar.gz:downloads.us.xiph.org/releas=
es/speex/speex-1.2rc1.tar.gz,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libogg,Speex is an O=
pen Source/Free Software patent-free audio compression format designed for =
speech.,N/A,http://downloads.us.xiph.org/releases/speex/speex-1.2rc1.tar.gz=
,Cristian Iorga <cristian.iorga@intel.com>)
['gnome-doc-utils', '0.20.10', 'N/A', 'GPLv2 & LGPLv2.1', 'base', '', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxml2 libxslt =
libxslt-native gnome-doc-utils-native glib-2.0 gnome-common-native  python-=
native ', 'None', 'None', 'The GNOME Documentation Build Utilities (gnome-d=
oc- utils) were created to make it easier for application developers to inc=
lude and create documentation in their releases. They include the xml2po to=
ol which makes it easier to translate and keep up to date translations of d=
ocumentation.', 'ErrHostNoDir:/pub/GNOME/sources/gnome-doc-utils/0.20/gnome=
-doc-utils-0.20.10.tar.xz:0.20:-:ftp.gnome.org/pub/GNOME/sources/gnome-doc-=
utils/0.20/gnome-doc-utils-0.20.10.tar.xz', 'N/A', 'http://ftp.gnome.org/pu=
b/GNOME/sources/gnome-doc-utils/0.20/gnome-doc-utils-0.20.10.tar.xz;name=3D=
archive', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (gnome-doc-utils,0.20.10,N/A,GPLv2 & LGPLv2.1,base,r0,None,,None,E=
rrHostNoDir:/pub/GNOME/sources/gnome-doc-utils/0.20/gnome-doc-utils-0.20.10=
=2Etar.xz:0.20:-:ftp.gnome.org/pub/GNOME/sources/gnome-doc-utils/0.20/gnome=
-doc-utils-0.20.10.tar.xz,pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  libxml2 libxslt libxslt-native gnome-doc-utils-native glib-2.0 gnom=
e-common-native  python-native ,The GNOME Documentation Build Utilities (gn=
ome-doc- utils) were created to make it easier for application developers t=
o include and create documentation in their releases. They include the xml2=
po tool which makes it easier to translate and keep up to date translations=
 of documentation.,N/A,http://ftp.gnome.org/pub/GNOME/sources/gnome-doc-uti=
ls/0.20/gnome-doc-utils-0.20.10.tar.xz;name=3Darchive,Valentin Popa <valent=
in.popa@intel.com>)
['matchbox-desktop', '2.0+gitAUTOINC+71e3e6e042', '2.0+gitAUTOINC+09170f4',=
 'GPLv2+ & LGPLv2+', 'x11/wm', 'http://matchbox-project.org/', 'r0', 'pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  gtk+ startup-notification dbus', 'http://bugzilla.yoct=
oproject.org/', 'None', 'Matchbox Window Manager Desktop.', 'UPDATE', 'N/A'=
, 'git://git.yoctoproject.org/matchbox-desktop-2', 'Valentin Popa <valentin=
=2Epopa@intel.com>', 'None']
inserted (matchbox-desktop,2.0+gitAUTOINC+71e3e6e042,2.0+gitAUTOINC+09170f4=
,GPLv2+ & LGPLv2+,x11/wm,r0,None,http://matchbox-project.org/,http://bugzil=
la.yoctoproject.org/,UPDATE,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  gtk+ startup-notifica=
tion dbus,Matchbox Window Manager Desktop.,N/A,git://git.yoctoproject.org/m=
atchbox-desktop-2,Valentin Popa <valentin.popa@intel.com>)
['less', '458', 'N/A', 'GPLv3+ | BSD-2-Clause', 'console/utils', 'http://ww=
w.greenwoodsoftware.com/', 'r0', 'autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ncurses virtual/update-alternati=
ves', 'None', 'None', 'Less is a program similar to more, i.e. a terminal b=
ased program for viewing text files and the output from other programs. Les=
s offers many features beyond those that more does.', 'ErrHostNoDir:/less/:=
-:less-458.tar.gz:www.greenwoodsoftware.com/less/less-458.tar.gz', 'N/A', '=
http://www.greenwoodsoftware.com/less/less-458.tar.gz', 'Saul Wold <sgw@lin=
ux.intel.com>', 'None']
inserted (less,458,N/A,GPLv3+ | BSD-2-Clause,console/utils,r0,None,http://w=
ww.greenwoodsoftware.com/,None,ErrHostNoDir:/less/:-:less-458.tar.gz:www.gr=
eenwoodsoftware.com/less/less-458.tar.gz,autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  ncurses virtual/update-al=
ternatives,Less is a program similar to more, i.e. a terminal based program=
 for viewing text files and the output from other programs. Less offers man=
y features beyond those that more does.,N/A,http://www.greenwoodsoftware.co=
m/less/less-458.tar.gz,Saul Wold <sgw@linux.intel.com>)
['cryptodev-linux', '1.6', 'N/A', 'GPLv2', 'base', 'http://cryptodev-linux.=
org/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  ', 'None', 'None', 'A /dev/crypto device driver.', 'ErrH=
ostNoDir:/cryptodev-linux/:-:cryptodev-linux-1.6.tar.gz:download.gna.org/cr=
yptodev-linux/cryptodev-linux-1.6.tar.gz', 'N/A', 'http://download.gna.org/=
cryptodev-linux/cryptodev-linux-1.6.tar.gz', 'None', 'None']
inserted (cryptodev-linux,1.6,N/A,GPLv2,base,r0,None,http://cryptodev-linux=
=2Eorg/,None,ErrHostNoDir:/cryptodev-linux/:-:cryptodev-linux-1.6.tar.gz:do=
wnload.gna.org/cryptodev-linux/cryptodev-linux-1.6.tar.gz, virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,A /dev/cryp=
to device driver.,N/A,http://download.gna.org/cryptodev-linux/cryptodev-lin=
ux-1.6.tar.gz,None)
['randrproto', '1.4.0', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire prot=
ocol for the X Resize, Rotate and Reflect extension.  This extension provid=
es the ability to resize, rotate and reflect the root window of a screen.',=
 'ErrHostNoDir:/releases/individual/proto/:-:randrproto-1.4.0.tar.bz2:xorg.=
freedesktop.org/releases/individual/proto/randrproto-1.4.0.tar.bz2', 'N/A',=
 'http://xorg.freedesktop.org/releases/individual/proto/randrproto-1.4.0.ta=
r.bz2', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (randrproto,1.4.0,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releas=
es/individual/proto/:-:randrproto-1.4.0.tar.bz2:xorg.freedesktop.org/releas=
es/individual/proto/randrproto-1.4.0.tar.bz2,pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util=
-macros,This package provides the wire protocol for the X Resize, Rotate an=
d Reflect extension.  This extension provides the ability to resize, rotate=
 and reflect the root window of a screen.,N/A,http://xorg.freedesktop.org/r=
eleases/individual/proto/randrproto-1.4.0.tar.bz2,Valentin Popa <valentin.p=
opa@intel.com>)
['neon', '0.30.0', 'N/A', 'LGPLv2+', 'libs', 'http://www.webdav.org/neon/',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  zlib libxml2 expat time gnutls libproxy',=
 'None', 'None', 'An HTTP and WebDAV client library with a C interface.', '=
ErrHostNoDir:/neon/:-:neon-0.30.0.tar.gz:www.webdav.org/neon/neon-0.30.0.ta=
r.gz', 'N/A', 'http://www.webdav.org/neon/neon-0.30.0.tar.gz', 'Cristian Io=
rga <cristian.iorga@intel.com>', 'None']
inserted (neon,0.30.0,N/A,LGPLv2+,libs,r0,None,http://www.webdav.org/neon/,=
None,ErrHostNoDir:/neon/:-:neon-0.30.0.tar.gz:www.webdav.org/neon/neon-0.30=
=2E0.tar.gz,pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  zlib libxml2 expat time gnutls libpro=
xy,An HTTP and WebDAV client library with a C interface.,N/A,http://www.web=
dav.org/neon/neon-0.30.0.tar.gz,Cristian Iorga <cristian.iorga@intel.com>)
['xev', '1.2.1', 'N/A', 'MIT', 'x11/apps', 'http://www.x.org/', 'r0', 'pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  util-macros-native virtual/libx11 libxrandr xproto', =
'https://bugs.freedesktop.org', '1', 'Xev creates a window and then asks th=
e X server to send it events whenever anything happens to the window (such =
as it being moved, resized, typed in, clicked in, etc.). You can also attac=
h it to an existing window.', 'ErrHostNoDir:/releases/individual/app/:-:xev=
-1.2.1.tar.bz2:xorg.freedesktop.org/releases/individual/app/xev-1.2.1.tar.b=
z2', '1.0.4', 'http://xorg.freedesktop.org/releases/individual/app/xev-1.2.=
1.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xev,1.2.1,N/A,MIT,x11/apps,r0,1,http://www.x.org/,https://bugs.fr=
eedesktop.org,ErrHostNoDir:/releases/individual/app/:-:xev-1.2.1.tar.bz2:xo=
rg.freedesktop.org/releases/individual/app/xev-1.2.1.tar.bz2,pkgconfig-nati=
ve autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  util-macros-native virtual/libx11 libxrandr xproto,Xev creates =
a window and then asks the X server to send it events whenever anything hap=
pens to the window (such as it being moved, resized, typed in, clicked in, =
etc.). You can also attach it to an existing window.,1.0.4,http://xorg.free=
desktop.org/releases/individual/app/xev-1.2.1.tar.bz2,Laurentiu Palcu <laur=
entiu.palcu@intel.com>)
['libxtst', '1.2.2', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', 'r=
0', 'pkgconfig-native autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  util-macros libxext recordproto inputproto l=
ibxi', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'T=
his extension is a minimal set of client and server extensions required to =
completely test the X11 server with no user intervention.', 'ErrHostNoDir:/=
releases/individual/lib/:-:libXtst-1.2.2.tar.bz2:xorg.freedesktop.org/relea=
ses/individual/lib/libXtst-1.2.2.tar.bz2', 'N/A', 'http://xorg.freedesktop.=
org/releases/individual/lib/libXtst-1.2.2.tar.bz2', 'Ross Burton <ross.burt=
on@intel.com>', 'None']
inserted (libxtst,1.2.2,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/=
individual/lib/:-:libXtst-1.2.2.tar.bz2:xorg.freedesktop.org/releases/indiv=
idual/lib/libXtst-1.2.2.tar.bz2,pkgconfig-native autoconf-native automake-n=
ative libtool-native libtool-cross gnu-config-native  virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros libxe=
xt recordproto inputproto libxi,This extension is a minimal set of client a=
nd server extensions required to completely test the X11 server with no use=
r intervention.,N/A,http://xorg.freedesktop.org/releases/individual/lib/lib=
Xtst-1.2.2.tar.bz2,Ross Burton <ross.burton@intel.com>)
['clutter-gst-1.0', '1.6.0', 'N/A', 'LGPLv2+', 'base', 'http://www.clutter-=
project.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native virtual/gettext gettext-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  gst-plugins-base gst-plugins-bad clutter-1.0 gtk-doc-stub-native', 'Non=
e', 'None', 'GStreamer integration library for Clutter.', 'ErrHostNoDir:/pu=
b/GNOME/sources/clutter-gst/1.6/clutter-gst-1.6.0.tar.xz:1.6:-:ftp.gnome.or=
g/pub/GNOME/sources/clutter-gst/1.6/clutter-gst-1.6.0.tar.xz', 'N/A', 'http=
://ftp.gnome.org/pub/GNOME/sources/clutter-gst/1.6/clutter-gst-1.6.0.tar.xz=
;name=3Darchive', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (clutter-gst-1.0,1.6.0,N/A,LGPLv2+,base,r0,None,http://www.clutter=
-project.org/,None,ErrHostNoDir:/pub/GNOME/sources/clutter-gst/1.6/clutter-=
gst-1.6.0.tar.xz:1.6:-:ftp.gnome.org/pub/GNOME/sources/clutter-gst/1.6/clut=
ter-gst-1.6.0.tar.xz,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  gst-plugins-base gst-plugins-bad clutter-1.0 gtk-doc-stub-native,GStream=
er integration library for Clutter.,N/A,http://ftp.gnome.org/pub/GNOME/sour=
ces/clutter-gst/1.6/clutter-gst-1.6.0.tar.xz;name=3Darchive,Ross Burton <ro=
ss.burton@intel.com>)
['libdmx', '1.1.3', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', 'pk=
gconfig-native autoconf-native automake-native libtool-native libtool-cross=
 gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  util-macros libxext dmxproto', 'https://bugs.freede=
sktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The DMX extension provides s=
upport for communication with and control of Xdmx(1) server. Attributes of =
the Xdmx(1) server and of the back-end screens attached to the server can b=
e queried and modified via this protocol.', 'ErrHostNoDir:/releases/individ=
ual/lib/:-:libdmx-1.1.3.tar.bz2:xorg.freedesktop.org/releases/individual/li=
b/libdmx-1.1.3.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/indiv=
idual/lib/libdmx-1.1.3.tar.bz2', 'Cristiana Voicu <cristiana.voicu@intel.co=
m>', 'None']
inserted (libdmx,1.1.3,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://bugs.=
freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/individ=
ual/lib/:-:libdmx-1.1.3.tar.bz2:xorg.freedesktop.org/releases/individual/li=
b/libdmx-1.1.3.tar.bz2,pkgconfig-native autoconf-native automake-native lib=
tool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vi=
rtual/i586-poky-linux-compilerlibs virtual/libc  util-macros libxext dmxpro=
to,The DMX extension provides support for communication with and control of=
 Xdmx(1) server. Attributes of the Xdmx(1) server and of the back-end scree=
ns attached to the server can be queried and modified via this protocol.,N/=
A,http://xorg.freedesktop.org/releases/individual/lib/libdmx-1.1.3.tar.bz2,=
Cristiana Voicu <cristiana.voicu@intel.com>)
['avahi-ui', '0.6.31', 'N/A', 'GPLv2+ & LGPLv2.1+', 'network', 'http://avah=
i.org', 'r11.0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native virtual/gettext gettext-native  virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
expat libcap libdaemon dbus glib-2.0  python-native  avahi gtk+ libglade up=
date-rc.d-native base-passwd shadow-native shadow-sysroot shadow python-nat=
ive python', 'http://avahi.org/report', 'None', 'Avahi is a fully LGPL fram=
ework for Multicast DNS Service Discovery. It allows programs to publish an=
d discover services and hosts running on a local network with no specific c=
onfiguration. This tool implements IPv4LL, "Dynamic Configuration of IPv4 L=
ink-Local Addresses" (IETF RFC3927), a protocol for automatic IP address co=
nfiguration from the link-local 169.254.0.0/16 range without the need for a=
 central server.', 'ErrHostNoDir:/download/:-:avahi-0.6.31.tar.gz:avahi.org=
/download/avahi-0.6.31.tar.gz', 'N/A', 'http://avahi.org/download/avahi-0.6=
=2E31.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'None']
inserted (avahi-ui,0.6.31,N/A,GPLv2+ & LGPLv2.1+,network,r11.0,None,http://=
avahi.org,http://avahi.org/report,ErrHostNoDir:/download/:-:avahi-0.6.31.ta=
r.gz:avahi.org/download/avahi-0.6.31.tar.gz,pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native virtual/ge=
ttext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  expat libcap libdaemon dbus glib-2.0  python-nati=
ve  avahi gtk+ libglade update-rc.d-native base-passwd shadow-native shadow=
-sysroot shadow python-native python,Avahi is a fully LGPL framework for Mu=
lticast DNS Service Discovery. It allows programs to publish and discover s=
ervices and hosts running on a local network with no specific configuration=
=2E This tool implements IPv4LL, "Dynamic Configuration of IPv4 Link-Local =
Addresses" (IETF RFC3927), a protocol for automatic IP address configuratio=
n from the link-local 169.254.0.0/16 range without the need for a central s=
erver.,N/A,http://avahi.org/download/avahi-0.6.31.tar.gz,Paul Eggleton <pau=
l.eggleton@linux.intel.com>)
['gst-plugins-gl', '0.10.3', 'N/A', 'GPLv2+ & LGPLv2+ & LGPLv2.1+ ', 'multi=
media', 'http://gstreamer.freedesktop.org/', 'r4', 'pkgconfig-native autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native vi=
rtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base virtual/libgle=
s2 virtual/egl jpeg libpng glew', 'https://bugzilla.gnome.org/enter_bug.cgi=
?product=3DGstreamer', 'None', 'Plugins for the GStreamer multimedia framew=
ork.', 'ErrHostNoDir:/src/gst-plugins-gl/:-:gst-plugins-gl-0.10.3.tar.bz2:g=
streamer.freedesktop.org/src/gst-plugins-gl/gst-plugins-gl-0.10.3.tar.bz2',=
 'N/A', 'http://gstreamer.freedesktop.org/src/gst-plugins-gl/gst-plugins-gl=
-0.10.3.tar.bz2', 'None', 'None']
inserted (gst-plugins-gl,0.10.3,N/A,GPLv2+ & LGPLv2+ & LGPLv2.1+ ,multimedi=
a,r4,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/ente=
r_bug.cgi?product=3DGstreamer,ErrHostNoDir:/src/gst-plugins-gl/:-:gst-plugi=
ns-gl-0.10.3.tar.bz2:gstreamer.freedesktop.org/src/gst-plugins-gl/gst-plugi=
ns-gl-0.10.3.tar.bz2,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  gstreamer gst-plugins-base virtual/libgles2 virtual/egl jpeg libpng glew=
,Plugins for the GStreamer multimedia framework.,N/A,http://gstreamer.freed=
esktop.org/src/gst-plugins-gl/gst-plugins-gl-0.10.3.tar.bz2,None)
['tzcode-native', '2013i', 'N/A', 'PD & BSD', 'base', '', 'r0', ' ', 'None'=
, 'None', 'Timezone zoneinfo utils (zic, zdump, tzselect).', 'ErrHostNoDir:=
/tz/releases/:-:tzcode2013i.tar.gz:ftp.iana.org/tz/releases/tzcode2013i.tar=
=2Egz', 'N/A', 'ftp://ftp.iana.org/tz/releases/tzcode2013i.tar.gz;name=3Dtz=
code', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (tzcode-native,2013i,N/A,PD & BSD,base,r0,None,,None,ErrHostNoDir:=
/tz/releases/:-:tzcode2013i.tar.gz:ftp.iana.org/tz/releases/tzcode2013i.tar=
=2Egz, ,Timezone zoneinfo utils (zic, zdump, tzselect).,N/A,ftp://ftp.iana.=
org/tz/releases/tzcode2013i.tar.gz;name=3Dtzcode,Robert Yang <liezhi.yang@w=
indriver.com>)
['subversion', '1.7.10', 'N/A', 'Apache-2', 'console/network', 'http://subv=
ersion.tigris.org', 'r0', 'autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  apr-util=
 neon sqlite3 file', 'None', 'None', 'Subversion (svn) version control syst=
em client.', 'ErrHostNoDir:/dist/subversion/:-:subversion-1.7.10.tar.bz2:ww=
w.apache.org/dist/subversion/subversion-1.7.10.tar.bz2', 'N/A', 'http://www=
=2Eapache.org/dist/subversion/subversion-1.7.10.tar.bz2', 'Laurentiu Palcu =
<laurentiu.palcu@intel.com>', 'None']
inserted (subversion,1.7.10,N/A,Apache-2,console/network,r0,None,http://sub=
version.tigris.org,None,ErrHostNoDir:/dist/subversion/:-:subversion-1.7.10.=
tar.bz2:www.apache.org/dist/subversion/subversion-1.7.10.tar.bz2,autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native virtua=
l/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  apr-util neon sqlite3 file,Subversion (svn) v=
ersion control system client.,N/A,http://www.apache.org/dist/subversion/sub=
version-1.7.10.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['apr', '1.4.8', 'N/A', 'Apache-2.0', 'libs', 'http://apr.apache.org/', 'r0=
', 'autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  util-linux', 'None', 'None', 'Apache Portable Runtime (APR) li=
brary.', 'ErrHostNoDir:/dist/apr/:-:apr-1.4.8.tar.bz2:www.apache.org/dist/a=
pr/apr-1.4.8.tar.bz2', 'N/A', 'http://www.apache.org/dist/apr/apr-1.4.8.tar=
=2Ebz2', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (apr,1.4.8,N/A,Apache-2.0,libs,r0,None,http://apr.apache.org/,None=
,ErrHostNoDir:/dist/apr/:-:apr-1.4.8.tar.bz2:www.apache.org/dist/apr/apr-1.=
4.8.tar.bz2,autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  util-linux,Apache Portable Runtime (APR) library.,N/A,=
http://www.apache.org/dist/apr/apr-1.4.8.tar.bz2,Hongxu Jia <hongxu.jia@win=
driver.com>)
['rgb', '1.0.5', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros-native virtual/libx11  xproto util-ma=
cros', 'https://bugs.freedesktop.org', '1', 'This package includes both the=
 list mapping X color names to RGB values (rgb.txt) and, if configured to u=
se a database for color lookup, the rgb program to convert the text file in=
to the binary database format.', 'ErrHostNoDir:/releases/individual/app/:-:=
rgb-1.0.5.tar.bz2:xorg.freedesktop.org/releases/individual/app/rgb-1.0.5.ta=
r.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/rgb-1.0=
=2E5.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (rgb,1.0.5,N/A,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https://bug=
s.freedesktop.org,ErrHostNoDir:/releases/individual/app/:-:rgb-1.0.5.tar.bz=
2:xorg.freedesktop.org/releases/individual/app/rgb-1.0.5.tar.bz2,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  util-macros-native virtual/libx11  xproto util-macros,This =
package includes both the list mapping X color names to RGB values (rgb.txt=
) and, if configured to use a database for color lookup, the rgb program to=
 convert the text file into the binary database format.,N/A,http://xorg.fre=
edesktop.org/releases/individual/app/rgb-1.0.5.tar.bz2,Saul Wold <sgw@linux=
=2Eintel.com>)
['xwininfo', '1.1.3', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxext libx=
mu', 'https://bugs.freedesktop.org', '0', 'Xwininfo is a utility for displa=
ying information about windows.  Information may include window position, s=
ize, color depth, and a number of other items.', 'ErrHostNoDir:/releases/in=
dividual/app/:-:xwininfo-1.1.3.tar.bz2:xorg.freedesktop.org/releases/indivi=
dual/app/xwininfo-1.1.3.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/relea=
ses/individual/app/xwininfo-1.1.3.tar.bz2', 'Laurentiu Palcu <laurentiu.pal=
cu@intel.com>', 'None']
inserted (xwininfo,1.1.3,N/A,MIT-X,x11/apps,r0,0,http://www.x.org/,https://=
bugs.freedesktop.org,ErrHostNoDir:/releases/individual/app/:-:xwininfo-1.1.=
3.tar.bz2:xorg.freedesktop.org/releases/individual/app/xwininfo-1.1.3.tar.b=
z2,pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxext libx=
mu,Xwininfo is a utility for displaying information about windows.  Informa=
tion may include window position, size, color depth, and a number of other =
items.,N/A,http://xorg.freedesktop.org/releases/individual/app/xwininfo-1.1=
=2E3.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['gmp', '5.1.1', 'N/A', 'LGPLv3&GPLv3', 'devel', 'http://gmplib.org/', 'r0'=
, 'autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  ', 'None', 'None', 'GMP is a free library for arbitrary precisi=
on arithmetic, operating on signed integers, rational numbers, and floating=
 point numbers', 'ErrHostNoDir:/pub/gmp-5.1.1/gmp-5.1.1.tar.bz2:gmp-5.1.1:-=
:ftp.gmplib.org/pub/gmp-5.1.1/gmp-5.1.1.tar.bz2', 'N/A', 'ftp://ftp.gmplib.=
org/pub/gmp-5.1.1/gmp-5.1.1.tar.bz2', 'Robert Yang <liezhi.yang@windriver.c=
om>', 'None']
inserted (gmp,5.1.1,N/A,LGPLv3&GPLv3,devel,r0,None,http://gmplib.org/,None,=
ErrHostNoDir:/pub/gmp-5.1.1/gmp-5.1.1.tar.bz2:gmp-5.1.1:-:ftp.gmplib.org/pu=
b/gmp-5.1.1/gmp-5.1.1.tar.bz2,autoconf-native automake-native libtool-nativ=
e libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  ,GMP is a free library for arbitrary=
 precision arithmetic, operating on signed integers, rational numbers, and =
floating point numbers,N/A,ftp://ftp.gmplib.org/pub/gmp-5.1.1/gmp-5.1.1.tar=
=2Ebz2,Robert Yang <liezhi.yang@windriver.com>)
['nativesdk-libtool', '2.4.2', 'N/A', 'GPLv2 & LGPLv2.1', 'devel', 'http://=
www.gnu.org/software/libtool/libtool.html', 'r6.0', 'autoconf-native libtoo=
l-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/nativesdk-i586-pok=
ysdk-linux-compilerlibs chrpath-replacement-native gnu-config-native automa=
ke-native virtual/nativesdk-libc', 'None', 'None', 'This is GNU libtool, a =
generic library support script. Libtool hides the complexity of generating =
special library types (such as shared libraries) behind a consistent interf=
ace.', 'ErrHostNoDir:/gnu/libtool/:-:libtool-2.4.2.tar.gz:ftp.gnu.org/gnu/l=
ibtool/libtool-2.4.2.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/libtool/libtool=
-2.4.2.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (nativesdk-libtool,2.4.2,N/A,GPLv2 & LGPLv2.1,devel,r6.0,None,http=
://www.gnu.org/software/libtool/libtool.html,None,ErrHostNoDir:/gnu/libtool=
/:-:libtool-2.4.2.tar.gz:ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz,autoc=
onf-native libtool-native virtual/i586-pokysdk-linux-gcc-crosssdk virtual/n=
ativesdk-i586-pokysdk-linux-compilerlibs chrpath-replacement-native gnu-con=
fig-native automake-native virtual/nativesdk-libc,This is GNU libtool, a ge=
neric library support script. Libtool hides the complexity of generating sp=
ecial library types (such as shared libraries) behind a consistent interfac=
e.,N/A,ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz,Robert Yang <liez=
hi.yang@windriver.com>)
['socat', '1.7.2.3', 'N/A', 'GPL-2.0+-with-OpenSSL-exception', 'console/net=
work', 'http://www.dest-unreach.org/socat/', 'r0', 'autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  openssl readli=
ne tcp-wrappers', 'None', 'None', 'Socat is a relay for bidirectional data =
transfer between two independent data channels.', 'ErrHostNoDir:/socat/down=
load/:-:socat-1.7.2.3.tar.bz2:www.dest-unreach.org/socat/download/socat-1.7=
=2E2.3.tar.bz2', 'N/A', 'http://www.dest-unreach.org/socat/download/socat-1=
=2E7.2.3.tar.bz2', 'Hongxu Jia <hongxu.jia@windriver.com>', '2.0.0 is beta']
inserted (socat,1.7.2.3,N/A,GPL-2.0+-with-OpenSSL-exception,console/network=
,r0,None,http://www.dest-unreach.org/socat/,None,ErrHostNoDir:/socat/downlo=
ad/:-:socat-1.7.2.3.tar.bz2:www.dest-unreach.org/socat/download/socat-1.7.2=
=2E3.tar.bz2,autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc  openssl readline tcp-wrappers,Socat is a relay for bi=
directional data transfer between two independent data channels.,N/A,http:/=
/www.dest-unreach.org/socat/download/socat-1.7.2.3.tar.bz2,Hongxu Jia <hong=
xu.jia@windriver.com>)
['lzop', '1.03', 'N/A', 'GPLv2+', 'base', '', 'r0', 'autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   lzo', 'None'=
, 'None', 'lzop is a compression utility which is designed to be a companio=
n to gzip. \\nIt is based on the LZO data compression library and its main =
advantages over \\ngzip are much higher compression and decompression speed=
 at the cost of some \\ncompression ratio. The lzop compression utility was=
 designed with the goals \\nof reliability, speed, portability and with rea=
sonable drop-in compatibility \\nto gzip.', 'ErrHostNoDir:/download/:-:lzop=
-1.03.tar.gz:www.lzop.org/download/lzop-1.03.tar.gz', 'N/A', 'http://www.lz=
op.org/download/lzop-1.03.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None=
']
inserted (lzop,1.03,N/A,GPLv2+,base,r0,None,,None,ErrHostNoDir:/download/:-=
:lzop-1.03.tar.gz:www.lzop.org/download/lzop-1.03.tar.gz,autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native  virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   lzo,lzop=
 is a compression utility which is designed to be a companion to gzip. \nIt=
 is based on the LZO data compression library and its main advantages over =
\ngzip are much higher compression and decompression speed at the cost of s=
ome \ncompression ratio. The lzop compression utility was designed with the=
 goals \nof reliability, speed, portability and with reasonable drop-in com=
patibility \nto gzip.,N/A,http://www.lzop.org/download/lzop-1.03.tar.gz,Sau=
l Wold <sgw@linux.intel.com>)
['xproto', '7.0.25', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x.or=
g', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedeskto=
p.org/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the basic =
headers for the X Window System.', 'ErrHostNoDir:/releases/individual/proto=
/:-:xproto-7.0.25.tar.bz2:xorg.freedesktop.org/releases/individual/proto/xp=
roto-7.0.25.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individu=
al/proto/xproto-7.0.25.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.co=
m>', 'None']
inserted (xproto,7.0.25,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.x.org,=
https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/rel=
eases/individual/proto/:-:xproto-7.0.25.tar.bz2:xorg.freedesktop.org/releas=
es/individual/proto/xproto-7.0.25.tar.bz2,pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native  virtual/i58=
6-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-ma=
cros,This package provides the basic headers for the X Window System.,N/A,h=
ttp://xorg.freedesktop.org/releases/individual/proto/xproto-7.0.25.tar.bz2,=
Laurentiu Palcu <laurentiu.palcu@intel.com>)
['babeltrace', '1.1.1+gitAUTOINC+a386e24609', '1.2.1+gitAUTOINC+8a2cd19', '=
MIT & GPLv2', 'base', 'http://www.efficios.com/babeltrace/', 'r0', 'autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  glib-2.0 util-linux popt', 'https://bugs.lttng.org/projects/babeltrace', =
'None', 'Babeltrace provides trace read and write libraries in host side, a=
s well as a trace converter, which used to convert LTTng 2.0 traces into hu=
man-readable log.', 'UPDATE', 'N/A', 'git://git.efficios.com/babeltrace.git=
', 'Cristiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (babeltrace,1.1.1+gitAUTOINC+a386e24609,1.2.1+gitAUTOINC+8a2cd19,M=
IT & GPLv2,base,r0,None,http://www.efficios.com/babeltrace/,https://bugs.lt=
tng.org/projects/babeltrace,UPDATE,autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 util-linux popt,Babelt=
race provides trace read and write libraries in host side, as well as a tra=
ce converter, which used to convert LTTng 2.0 traces into human-readable lo=
g.,N/A,git://git.efficios.com/babeltrace.git,Cristiana Voicu <cristiana.voi=
cu@intel.com>)
['apr-util', '1.5.2', 'N/A', 'Apache-2.0', 'libs', 'http://apr.apache.org/'=
, 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  apr expat gdbm', 'None', 'None', 'Apache Portable Runtime=
 (APR) companion library.', 'ErrHostNoDir:/dist/apr/:-:apr-util-1.5.2.tar.g=
z:www.apache.org/dist/apr/apr-util-1.5.2.tar.gz', 'N/A', 'http://www.apache=
=2Eorg/dist/apr/apr-util-1.5.2.tar.gz', 'Hongxu Jia <hongxu.jia@windriver.c=
om>', 'None']
inserted (apr-util,1.5.2,N/A,Apache-2.0,libs,r0,None,http://apr.apache.org/=
,None,ErrHostNoDir:/dist/apr/:-:apr-util-1.5.2.tar.gz:www.apache.org/dist/a=
pr/apr-util-1.5.2.tar.gz,autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  apr expat gdbm,Apache Portable Runtime (A=
PR) companion library.,N/A,http://www.apache.org/dist/apr/apr-util-1.5.2.ta=
r.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['ca-certificates', '20130610', '20140325', 'GPL-2.0+ & MPL-2.0', 'misc', '=
http://packages.debian.org/sid/ca-certificates', 'r0', ' ca-certificates-na=
tive', 'None', 'None', "This package includes PEM files of CA certificates =
to allow SSL-based applications to check for the authenticity of SSL connec=
tions. This derived from Debian's CA Certificates.", 'ErrUnknown:anonscm.de=
bian.org/collab-maint/ca-certificates.git', 'N/A', 'git://anonscm.debian.or=
g/collab-maint/ca-certificates.git', 'None', 'None']
inserted (ca-certificates,20130610,20140325,GPL-2.0+ & MPL-2.0,misc,r0,None=
,http://packages.debian.org/sid/ca-certificates,None,ErrUnknown:anonscm.deb=
ian.org/collab-maint/ca-certificates.git, ca-certificates-native,This packa=
ge includes PEM files of CA certificates to allow SSL-based applications to=
 check for the authenticity of SSL connections. This derived from Debian's =
CA Certificates.,N/A,git://anonscm.debian.org/collab-maint/ca-certificates.=
git,None)
['libglade', '2.6.4', 'N/A', 'LGPLv2 & LGPLv2+', 'libs', 'http://library.gn=
ome.org/devel/libglade/', 'r5', 'pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib gdk-pixbuf =
gtk+ gnome-common-native gtk-doc-stub-native', 'https://bugzilla.gnome.org/=
', 'None', 'Runtime support for the GTK+ interface builder.', 'ErrHostNoDir=
:/pub/GNOME/sources/libglade/2.6/libglade-2.6.4.tar.bz2:2.6:-:ftp.gnome.org=
/pub/GNOME/sources/libglade/2.6/libglade-2.6.4.tar.bz2', 'N/A', 'http://ftp=
=2Egnome.org/pub/GNOME/sources/libglade/2.6/libglade-2.6.4.tar.bz2;name=3Da=
rchive', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (libglade,2.6.4,N/A,LGPLv2 & LGPLv2+,libs,r5,None,http://library.g=
nome.org/devel/libglade/,https://bugzilla.gnome.org/,ErrHostNoDir:/pub/GNOM=
E/sources/libglade/2.6/libglade-2.6.4.tar.bz2:2.6:-:ftp.gnome.org/pub/GNOME=
/sources/libglade/2.6/libglade-2.6.4.tar.bz2,pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  zlib=
 gdk-pixbuf gtk+ gnome-common-native gtk-doc-stub-native,Runtime support fo=
r the GTK+ interface builder.,N/A,http://ftp.gnome.org/pub/GNOME/sources/li=
bglade/2.6/libglade-2.6.4.tar.bz2;name=3Darchive,Valentin Popa <valentin.po=
pa@intel.com>)
['dri2proto', '2.8', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/enter_=
bug.cgi?product=3Dxorg', 'None', 'This package provides the wire protocol f=
or the Direct Rendering Ifnrastructure 2.  DIR is required for may hardware=
 accelerated OpenGL drivers.', 'ErrHostNoDir:/releases/individual/proto/:-:=
dri2proto-2.8.tar.bz2:xorg.freedesktop.org/releases/individual/proto/dri2pr=
oto-2.8.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/p=
roto/dri2proto-2.8.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (dri2proto,2.8,N/A,MIT,x11/libs,r0,None,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/ind=
ividual/proto/:-:dri2proto-2.8.tar.bz2:xorg.freedesktop.org/releases/indivi=
dual/proto/dri2proto-2.8.tar.bz2,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros,This=
 package provides the wire protocol for the Direct Rendering Ifnrastructure=
 2.  DIR is required for may hardware accelerated OpenGL drivers.,N/A,http:=
//xorg.freedesktop.org/releases/individual/proto/dri2proto-2.8.tar.bz2,Ross=
 Burton <ross.burton@intel.com>)
['shadow', '4.1.4.3', 'N/A', 'BSD | Artistic-1.0', 'base utils', 'http://pk=
g-shadow.alioth.debian.org', 'r14', 'autoconf-native automake-native libtoo=
l-native libtool-cross gnu-config-native virtual/gettext gettext-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  shadow-native virtual/update-alternatives', 'https://alioth.debian.org/tr=
acker/?group_id=3D30580', 'None', 'Tools to change and administer password =
and group data.', 'ErrHostNoDir:/releases/:-:shadow-4.1.4.3.tar.bz2:pkg-sha=
dow.alioth.debian.org/releases/shadow-4.1.4.3.tar.bz2', 'N/A', 'http://pkg-=
shadow.alioth.debian.org/releases/shadow-4.1.4.3.tar.bz2', 'Chen Qi <Qi.Che=
n@windriver.com>', 'None']
inserted (shadow,4.1.4.3,N/A,BSD | Artistic-1.0,base utils,r14,None,http://=
pkg-shadow.alioth.debian.org,https://alioth.debian.org/tracker/?group_id=3D=
30580,ErrHostNoDir:/releases/:-:shadow-4.1.4.3.tar.bz2:pkg-shadow.alioth.de=
bian.org/releases/shadow-4.1.4.3.tar.bz2,autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native virtual/gettext gettext-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  shadow-native virtual/update-alternatives,Tools to change and adminis=
ter password and group data.,N/A,http://pkg-shadow.alioth.debian.org/releas=
es/shadow-4.1.4.3.tar.bz2,Chen Qi <Qi.Chen@windriver.com>)
['desktop-file-utils-native', '0.22', 'N/A', 'GPLv2', 'console/utils', 'htt=
p://www.freedesktop.org/wiki/Software/desktop-file-utils', 'r0', 'autoconf-=
native automake-native libtool-native gnu-config-native  glib-2.0-native', =
'None', 'None', 'Command line utilities for working with *.desktop files.',=
 'ErrHostNoDir:/software/desktop-file-utils/releases/:-:desktop-file-utils-=
0.22.tar.xz:freedesktop.org/software/desktop-file-utils/releases/desktop-fi=
le-utils-0.22.tar.xz', 'N/A', 'http://freedesktop.org/software/desktop-file=
-utils/releases/desktop-file-utils-0.22.tar.xz', 'Saul Wold <sgw@linux.inte=
l.com>', 'None']
inserted (desktop-file-utils-native,0.22,N/A,GPLv2,console/utils,r0,None,ht=
tp://www.freedesktop.org/wiki/Software/desktop-file-utils,None,ErrHostNoDir=
:/software/desktop-file-utils/releases/:-:desktop-file-utils-0.22.tar.xz:fr=
eedesktop.org/software/desktop-file-utils/releases/desktop-file-utils-0.22.=
tar.xz,autoconf-native automake-native libtool-native gnu-config-native  gl=
ib-2.0-native,Command line utilities for working with *.desktop files.,N/A,=
http://freedesktop.org/software/desktop-file-utils/releases/desktop-file-ut=
ils-0.22.tar.xz,Saul Wold <sgw@linux.intel.com>)
['python3', '3.3.3', 'N/A', 'PSFv2', 'devel/python', 'http://www.python.org=
', 'r0.0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  python3-native libffi bzip2 db gdbm o=
penssl readline sqlite3 zlib virtual/libintl xz  python3-native ', 'None', =
'None', 'The Python Programming Language.', 'ErrHostNoDir:/ftp/python/3.3.3=
/Python-3.3.3.tar.bz2:3.3.3:-:www.python.org/ftp/python/3.3.3/Python-3.3.3.=
tar.bz2', 'N/A', 'http://www.python.org/ftp/python/3.3.3/Python-3.3.3.tar.b=
z2', 'None', 'None']
inserted (python3,3.3.3,N/A,PSFv2,devel/python,r0.0,None,http://www.python.=
org,None,ErrHostNoDir:/ftp/python/3.3.3/Python-3.3.3.tar.bz2:3.3.3:-:www.py=
thon.org/ftp/python/3.3.3/Python-3.3.3.tar.bz2,pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  py=
thon3-native libffi bzip2 db gdbm openssl readline sqlite3 zlib virtual/lib=
intl xz  python3-native ,The Python Programming Language.,N/A,http://www.py=
thon.org/ftp/python/3.3.3/Python-3.3.3.tar.bz2,None)
['python-smartpm', '1.4.1', 'N/A', 'GPLv2', 'devel/python', 'http://labix.o=
rg/smart/', 'r9', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  python rpm gettext-native python-native python  pyt=
hon-native  rpm', 'None', 'None', 'The Smart Package Manager project has th=
e ambitious objective of creating smart and portable algorithms for solving=
 adequately the problem of managing software upgrades and installation.', '=
ErrHostNoDir:/smart/trunk/1.4.1/+download/smart-1.4.1.tar.bz2:1.4.1:-:launc=
hpad.net/smart/trunk/1.4.1/+download/smart-1.4.1.tar.bz2', 'N/A', 'http://l=
aunchpad.net/smart/trunk/1.4.1/+download/smart-1.4.1.tar.bz2', 'Paul Egglet=
on <paul.eggleton@linux.intel.com>', 'None']
inserted (python-smartpm,1.4.1,N/A,GPLv2,devel/python,r9,None,http://labix.=
org/smart/,None,ErrHostNoDir:/smart/trunk/1.4.1/+download/smart-1.4.1.tar.b=
z2:1.4.1:-:launchpad.net/smart/trunk/1.4.1/+download/smart-1.4.1.tar.bz2, v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  python rpm gettext-native python-native python  python-native  rpm,The S=
mart Package Manager project has the ambitious objective of creating smart =
and portable algorithms for solving adequately the problem of managing soft=
ware upgrades and installation.,N/A,http://launchpad.net/smart/trunk/1.4.1/=
+download/smart-1.4.1.tar.bz2,Paul Eggleton <paul.eggleton@linux.intel.com>)
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
l.', 'ErrHostNoDir:/releases/individual/util/:-:makedepend-1.0.5.tar.gz:xor=
g.freedesktop.org/releases/individual/util/makedepend-1.0.5.tar.gz', 'N/A',=
 'http://xorg.freedesktop.org/releases/individual/util/makedepend-1.0.5.tar=
=2Egz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (makedepend,1.0.5,N/A,MIT-X,x11/utils,r0,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/=
individual/util/:-:makedepend-1.0.5.tar.gz:xorg.freedesktop.org/releases/in=
dividual/util/makedepend-1.0.5.tar.gz,pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  xproto util=
-macros,The makedepend program reads each sourcefile in sequence and parses=
 it like a C-preprocessor, processing all #include, #define,  #undef, #ifde=
f, #ifndef, #endif, #if, #elif and #else directives so that it can correctl=
y tell which #include, directives would be used in a compilation. Any #incl=
ude, directives can reference files having other #include directives, and p=
arsing will occur in these files as well.,N/A,http://xorg.freedesktop.org/r=
eleases/individual/util/makedepend-1.0.5.tar.gz,Robert Yang <liezhi.yang@wi=
ndriver.com>)
['matchbox-session', '0.1', 'INVALID', 'GPLv2', 'x11', 'http://www.matchbox=
-project.org/', 'r4', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc   virtual/update-alternatives', 'http://bugzilla=
=2Eyoctoproject.org/', 'None', 'Custom Matchbox session files.', 'MATCH', '=
N/A', 'file://matchbox-session', 'Valentin Popa <valentin.popa@intel.com>',=
 'None']
inserted (matchbox-session,0.1,INVALID,GPLv2,x11,r4,None,http://www.matchbo=
x-project.org/,http://bugzilla.yoctoproject.org/,MATCH, virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   virtual/update=
-alternatives,Custom Matchbox session files.,N/A,file://matchbox-session,Va=
lentin Popa <valentin.popa@intel.com>)
['minicom', '2.7', 'N/A', 'GPLv2+', 'console/network', '', 'r0', 'autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native virtu=
al/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  ncurses virtual/libiconv', 'None', 'None', '=
Minicom is a text-based modem control and terminal emulation program for Un=
ix-like operating systems', 'ErrHostNoDir:/frs/download.php/latestfile/3/:-=
:minicom-2.7.tar.gz:alioth.debian.org/frs/download.php/latestfile/3/minicom=
-2.7.tar.gz', '2.6.2', 'https://alioth.debian.org/frs/download.php/latestfi=
le/3/minicom-2.7.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'Non=
e']
inserted (minicom,2.7,N/A,GPLv2+,console/network,r0,None,,None,ErrHostNoDir=
:/frs/download.php/latestfile/3/:-:minicom-2.7.tar.gz:alioth.debian.org/frs=
/download.php/latestfile/3/minicom-2.7.tar.gz,autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native virtual/gettext gettext-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  ncurses virtual/libiconv,Minicom is a text-based modem control a=
nd terminal emulation program for Unix-like operating systems,2.6.2,https:/=
/alioth.debian.org/frs/download.php/latestfile/3/minicom-2.7.tar.gz,Cristia=
n Iorga <cristian.iorga@intel.com>)
['xf86dgaproto', '2.1', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r2',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/ent=
er_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol f=
or the XFree86 Direct Graphics Access extension. This extension allows dire=
ct graphics access to a framebuffer-like region, as well as relative mouse =
reporting.', 'ErrHostNoDir:/releases/individual/proto/:-:xf86dgaproto-2.1.t=
ar.bz2:xorg.freedesktop.org/releases/individual/proto/xf86dgaproto-2.1.tar.=
bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/xf86dga=
proto-2.1.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86dgaproto,2.1,N/A,MIT,x11/libs,r2,1,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/ind=
ividual/proto/:-:xf86dgaproto-2.1.tar.bz2:xorg.freedesktop.org/releases/ind=
ividual/proto/xf86dgaproto-2.1.tar.bz2,pkgconfig-native autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macro=
s,This package provides the wire protocol for the XFree86 Direct Graphics A=
ccess extension. This extension allows direct graphics access to a framebuf=
fer-like region, as well as relative mouse reporting.,N/A,http://xorg.freed=
esktop.org/releases/individual/proto/xf86dgaproto-2.1.tar.bz2,Laurentiu Pal=
cu <laurentiu.palcu@intel.com>)
['libxdmcp', '1.1.1', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros =
xproto', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', =
'The purpose of the X Display Manager Control Protocol (XDMCP) is to provid=
e a uniform mechanism for an autonomous display to request login service fr=
om a remote host. An X terminal (screen, keyboard, mouse, processor, networ=
k interface) is a prime example of an autonomous display.', 'ErrHostNoDir:/=
releases/individual/lib/:-:libXdmcp-1.1.1.tar.bz2:xorg.freedesktop.org/rele=
ases/individual/lib/libXdmcp-1.1.1.tar.bz2', 'N/A', 'http://xorg.freedeskto=
p.org/releases/individual/lib/libXdmcp-1.1.1.tar.bz2', 'Ross Burton <ross.b=
urton@intel.com>', 'None']
inserted (libxdmcp,1.1.1,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases=
/individual/lib/:-:libXdmcp-1.1.1.tar.bz2:xorg.freedesktop.org/releases/ind=
ividual/lib/libXdmcp-1.1.1.tar.bz2,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native virtual/gettext get=
text-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  util-macros xproto,The purpose of the X Display Manager Co=
ntrol Protocol (XDMCP) is to provide a uniform mechanism for an autonomous =
display to request login service from a remote host. An X terminal (screen,=
 keyboard, mouse, processor, network interface) is a prime example of an au=
tonomous display.,N/A,http://xorg.freedesktop.org/releases/individual/lib/l=
ibXdmcp-1.1.1.tar.bz2,Ross Burton <ross.burton@intel.com>)
['unfs3', '0.9.22.r490', 'N/A', 'unfs3', 'console/network', '', 'r0', 'auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  flex-native bison-native flex', 'None', 'None', 'Userspace NFS server =
v3 protocol.', 'UPDATE', 'N/A', 'svn://svn.code.sf.net/p/unfs3/code;module=
=3Dtrunk;rev=3D490', 'None', 'None']
inserted (unfs3,0.9.22.r490,N/A,unfs3,console/network,r0,None,,None,UPDATE,=
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  flex-native bison-native flex,Userspace NFS server v3 protocol.,N/=
A,svn://svn.code.sf.net/p/unfs3/code;module=3Dtrunk;rev=3D490,None)
['rsync', '3.1.0', 'N/A', 'GPLv3+', 'console/network', 'http://rsync.samba.=
org/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  popt', 'http://rsync.samba.org/bugzilla.html', 'None=
', 'File synchronization tool.', 'ErrHostNoDir:/ftp/rsync/src/:-:rsync-3.1.=
0.tar.gz:rsync.samba.org/ftp/rsync/src/rsync-3.1.0.tar.gz', 'N/A', 'http://=
rsync.samba.org/ftp/rsync/src/rsync-3.1.0.tar.gz', 'Robert Yang <liezhi.yan=
g@windriver.com>', 'None']
inserted (rsync,3.1.0,N/A,GPLv3+,console/network,r0,None,http://rsync.samba=
=2Eorg/,http://rsync.samba.org/bugzilla.html,ErrHostNoDir:/ftp/rsync/src/:-=
:rsync-3.1.0.tar.gz:rsync.samba.org/ftp/rsync/src/rsync-3.1.0.tar.gz,autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  popt,File synchronization tool.,N/A,http://rsync.samba.org/ftp/rsync/src=
/rsync-3.1.0.tar.gz,Robert Yang <liezhi.yang@windriver.com>)
['man-pages', '3.60', 'N/A', 'GPLv2+', 'console/utils', 'http://www.kernel.=
org/pub/linux/docs/man-pages', 'r0', ' virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'The Linux ma=
n-pages project documents the Linux kernel and C library interfaces that ar=
e employed by user programs', 'ErrHostNoDir:/pub/linux/docs/man-pages/Archi=
ve/:-:man-pages-3.60.tar.gz:kernel.org/pub/linux/docs/man-pages/Archive/man=
-pages-3.60.tar.gz', 'N/A', 'http://kernel.org/pub/linux/docs/man-pages/Arc=
hive/man-pages-3.60.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (man-pages,3.60,N/A,GPLv2+,console/utils,r0,None,http://www.kernel=
=2Eorg/pub/linux/docs/man-pages,None,ErrHostNoDir:/pub/linux/docs/man-pages=
/Archive/:-:man-pages-3.60.tar.gz:kernel.org/pub/linux/docs/man-pages/Archi=
ve/man-pages-3.60.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  ,The Linux man-pages project documents the Li=
nux kernel and C library interfaces that are employed by user programs,N/A,=
http://kernel.org/pub/linux/docs/man-pages/Archive/man-pages-3.60.tar.gz,Sa=
ul Wold <sgw@linux.intel.com>)
['docbook-dsssl-stylesheets-native', '1.79', 'N/A', 'DSSSL', 'base', 'http:=
//docbook.sourceforge.net', 'r4', ' sgml-common-native', 'None', 'None', 'D=
SSSL stylesheets used to transform SGML and XML DocBook files.', 'ErrHostNo=
Dir:/docbook/:-:docbook-dsssl-1.79.tar.bz2:downloads.sourceforge.net/docboo=
k/docbook-dsssl-1.79.tar.bz2', 'N/A', 'http://downloads.sourceforge.net/doc=
book/docbook-dsssl-1.79.tar.bz2', 'Paul Eggleton <paul.eggleton@linux.intel=
=2Ecom>', 'None']
inserted (docbook-dsssl-stylesheets-native,1.79,N/A,DSSSL,base,r4,None,http=
://docbook.sourceforge.net,None,ErrHostNoDir:/docbook/:-:docbook-dsssl-1.79=
=2Etar.bz2:downloads.sourceforge.net/docbook/docbook-dsssl-1.79.tar.bz2, sg=
ml-common-native,DSSSL stylesheets used to transform SGML and XML DocBook f=
iles.,N/A,http://downloads.sourceforge.net/docbook/docbook-dsssl-1.79.tar.b=
z2,Paul Eggleton <paul.eggleton@linux.intel.com>)
['libxmu', '1.1.2', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x.org=
', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros libxt libxext', 'https://bu=
gs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'The Xmu Library is =
a collection of miscellaneous (some might say random) utility functions tha=
t have been useful in building various applications and widgets. This libra=
ry is required by the Athena Widgets. A subset of the functions that do not=
 rely on the Athena Widgets (libXaw) or X Toolkit Instrinsics (libXt) are p=
rovided in a second library, libXmuu.', 'ErrHostNoDir:/releases/individual/=
lib/:-:libXmu-1.1.2.tar.bz2:xorg.freedesktop.org/releases/individual/lib/li=
bXmu-1.1.2.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individua=
l/lib/libXmu-1.1.2.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxmu,1.1.2,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/rele=
ases/individual/lib/:-:libXmu-1.1.2.tar.bz2:xorg.freedesktop.org/releases/i=
ndividual/lib/libXmu-1.1.2.tar.bz2,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros li=
bxt libxext,The Xmu Library is a collection of miscellaneous (some might sa=
y random) utility functions that have been useful in building various appli=
cations and widgets. This library is required by the Athena Widgets. A subs=
et of the functions that do not rely on the Athena Widgets (libXaw) or X To=
olkit Instrinsics (libXt) are provided in a second library, libXmuu.,N/A,ht=
tp://xorg.freedesktop.org/releases/individual/lib/libXmu-1.1.2.tar.bz2,Ross=
 Burton <ross.burton@intel.com>)
['shared-mime-info', '1.2', 'N/A', 'LGPLv2+', 'base', 'http://freedesktop.o=
rg/wiki/Software/shared-mime-info', 'r0', 'pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native virtual/get=
text gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  libxml2 intltool-native glib-2.0 shared-mime-info-=
native', 'None', 'None', 'Shared MIME type database and specification.', 'E=
rrHostNoDir:/~hadess/:-:shared-mime-info-1.2.tar.xz:freedesktop.org/~hadess=
/shared-mime-info-1.2.tar.xz', 'N/A', 'file://parallelmake.patch', 'Valenti=
n Popa <valentin.popa@intel.com>', 'None']
inserted (shared-mime-info,1.2,N/A,LGPLv2+,base,r0,None,http://freedesktop.=
org/wiki/Software/shared-mime-info,None,ErrHostNoDir:/~hadess/:-:shared-mim=
e-info-1.2.tar.xz:freedesktop.org/~hadess/shared-mime-info-1.2.tar.xz,pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc=
 virtual/i586-poky-linux-compilerlibs virtual/libc  libxml2 intltool-native=
 glib-2.0 shared-mime-info-native,Shared MIME type database and specificati=
on.,N/A,file://parallelmake.patch,Valentin Popa <valentin.popa@intel.com>)
['keymaps', '1.0', 'INVALID', 'GPLv2', 'base', '', 'r31', '  update-rc.d-na=
tive', 'None', 'None', 'Keymaps and initscript to set the keymap on bootup.=
', 'MATCH', '1.0', 'file://keymap.sh', 'Cristiana Voicu <cristiana.voicu@in=
tel.com>', 'None']
inserted (keymaps,1.0,INVALID,GPLv2,base,r31,None,,None,MATCH,  update-rc.d=
-native,Keymaps and initscript to set the keymap on bootup.,1.0,file://keym=
ap.sh,Cristiana Voicu <cristiana.voicu@intel.com>)
['irda-utils', '0.9.18', 'N/A', 'GPLv2+', 'base', 'http://irda.sourceforge.=
net/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc   update-rc.d-native', 'irda-users@lists.sourceforge.=
net', 'None', 'Provides common files needed to use IrDA. IrDA allows commun=
ication over Infrared with other devices such as phones and laptops.', 'Err=
HostNoDir:/irda/:-:irda-utils-0.9.18.tar.gz:downloads.sourceforge.net/irda/=
irda-utils-0.9.18.tar.gz', 'N/A', 'http://downloads.sourceforge.net/irda/ir=
da-utils-0.9.18.tar.gz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None=
']
inserted (irda-utils,0.9.18,N/A,GPLv2+,base,r0,None,http://irda.sourceforge=
=2Enet/,irda-users@lists.sourceforge.net,ErrHostNoDir:/irda/:-:irda-utils-0=
=2E9.18.tar.gz:downloads.sourceforge.net/irda/irda-utils-0.9.18.tar.gz,auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc   update-rc.d-native,Provides common files needed to use IrDA. IrDA all=
ows communication over Infrared with other devices such as phones and lapto=
ps.,N/A,http://downloads.sourceforge.net/irda/irda-utils-0.9.18.tar.gz,Cris=
tian Iorga <cristian.iorga@intel.com>)
['grub', '2.00', 'N/A', 'GPLv3', 'bootloaders', 'http://www.gnu.org/softwar=
e/grub/', 'r1', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  autogen-native fle=
x-native bison-native xz', 'None', 'None', 'GRUB2 is the next generaion of =
a GPLed bootloader intended to unify bootloading across x86 operating syste=
ms. In addition to loading the Linux kernel, it implements the Multiboot st=
andard, which allows for flexible loading of multiple boot images.', 'ErrHo=
stNoDir:/gnu/grub/:-:grub-2.00.tar.gz:ftp.gnu.org/gnu/grub/grub-2.00.tar.gz=
', 'N/A', 'ftp://ftp.gnu.org/gnu/grub/grub-2.00.tar.gz', 'Paul Eggleton <pa=
ul.eggleton@linux.intel.com>', 'grub2 is a different thing']
inserted (grub,2.00,N/A,GPLv3,bootloaders,r1,None,http://www.gnu.org/softwa=
re/grub/,None,ErrHostNoDir:/gnu/grub/:-:grub-2.00.tar.gz:ftp.gnu.org/gnu/gr=
ub/grub-2.00.tar.gz,autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  autogen-native =
flex-native bison-native xz,GRUB2 is the next generaion of a GPLed bootload=
er intended to unify bootloading across x86 operating systems. In addition =
to loading the Linux kernel, it implements the Multiboot standard, which al=
lows for flexible loading of multiple boot images.,N/A,ftp://ftp.gnu.org/gn=
u/grub/grub-2.00.tar.gz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['xeyes', '1.1.1', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros-native virtual/libx11  virtual/libx11=
 libxau libxt libxext libxmu libxrender', 'https://bugs.freedesktop.org', '=
1', 'Xeyes is a small X11 application that shows a pair of eyes that move t=
o follow the location of the mouse cursor around the screen.', 'ErrHostNoDi=
r:/releases/individual/app/:-:xeyes-1.1.1.tar.bz2:xorg.freedesktop.org/rele=
ases/individual/app/xeyes-1.1.1.tar.bz2', 'N/A', 'http://xorg.freedesktop.o=
rg/releases/individual/app/xeyes-1.1.1.tar.bz2', 'Laurentiu Palcu <laurenti=
u.palcu@intel.com>', 'None']
inserted (xeyes,1.1.1,N/A,MIT-X,x11/apps,r0,1,http://www.x.org/,https://bug=
s.freedesktop.org,ErrHostNoDir:/releases/individual/app/:-:xeyes-1.1.1.tar.=
bz2:xorg.freedesktop.org/releases/individual/app/xeyes-1.1.1.tar.bz2,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  util-macros-native virtual/libx11  virtual/libx11 libxa=
u libxt libxext libxmu libxrender,Xeyes is a small X11 application that sho=
ws a pair of eyes that move to follow the location of the mouse cursor arou=
nd the screen.,N/A,http://xorg.freedesktop.org/releases/individual/app/xeye=
s-1.1.1.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['udev', '182', 'N/A', 'GPLv2.0+ & LGPLv2.1+', 'base', 'http://www.kernel.o=
rg/pub/linux/utils/kernel/hotplug/udev/udev.html', 'r7', 'pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  acl glib-2.0 libusb usbutils pciutils gperf-native libxslt-native =
util-linux module-init-tools update-rc.d-native', 'None', 'None', 'udev is =
a daemon which dynamically creates and removes device nodes from /dev/, han=
dles hotplug events and loads drivers at boot time.', 'ErrHostNoDir:/pub/li=
nux/utils/kernel/hotplug/:-:udev-182.tar.gz:kernel.org/pub/linux/utils/kern=
el/hotplug/udev-182.tar.gz', 'N/A', 'http://kernel.org/pub/linux/utils/kern=
el/hotplug/udev-182.tar.gz', 'Cristiana Voicu <cristiana.voicu@intel.com>',=
 'None']
inserted (udev,182,N/A,GPLv2.0+ & LGPLv2.1+,base,r7,None,http://www.kernel.=
org/pub/linux/utils/kernel/hotplug/udev/udev.html,None,ErrHostNoDir:/pub/li=
nux/utils/kernel/hotplug/:-:udev-182.tar.gz:kernel.org/pub/linux/utils/kern=
el/hotplug/udev-182.tar.gz,pkgconfig-native autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  acl glib-2.0 libusb us=
butils pciutils gperf-native libxslt-native util-linux module-init-tools up=
date-rc.d-native,udev is a daemon which dynamically creates and removes dev=
ice nodes from /dev/, handles hotplug events and loads drivers at boot time=
=2E,N/A,http://kernel.org/pub/linux/utils/kernel/hotplug/udev-182.tar.gz,Cr=
istiana Voicu <cristiana.voicu@intel.com>)
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
['eglibc', '2.19', 'N/A', 'GPLv2 & LGPLv2.1', 'libs', 'http://www.eglibc.or=
g/home', 'r0', 'autoconf-native automake-native libtool-native gnu-config-n=
ative  virtual/i586-poky-linux-gcc-initial linux-libc-headers virtual/i586-=
poky-linux-libc-initial gperf-native kconfig-frontends-native', 'None', 'No=
ne', "Embedded GLIBC (EGLIBC) is a variant of the GNU C Library (GLIBC) tha=
t is designed to work well on embedded systems. EGLIBC strives to be source=
 and binary compatible with GLIBC. EGLIBC's goals include reduced footprint=
, configurable components, better support for cross-compilation and cross-t=
esting.", 'ErrHostNoDir:/releases/eglibc/:-:eglibc-2.19-svnr25243.tar.bz2:d=
ownloads.yoctoproject.org/releases/eglibc/eglibc-2.19-svnr25243.tar.bz2', '=
N/A', 'http://downloads.yoctoproject.org/releases/eglibc/eglibc-2.19-svnr25=
243.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (eglibc,2.19,N/A,GPLv2 & LGPLv2.1,libs,r0,None,http://www.eglibc.o=
rg/home,None,ErrHostNoDir:/releases/eglibc/:-:eglibc-2.19-svnr25243.tar.bz2=
:downloads.yoctoproject.org/releases/eglibc/eglibc-2.19-svnr25243.tar.bz2,a=
utoconf-native automake-native libtool-native gnu-config-native  virtual/i5=
86-poky-linux-gcc-initial linux-libc-headers virtual/i586-poky-linux-libc-i=
nitial gperf-native kconfig-frontends-native,Embedded GLIBC (EGLIBC) is a v=
ariant of the GNU C Library (GLIBC) that is designed to work well on embedd=
ed systems. EGLIBC strives to be source and binary compatible with GLIBC. E=
GLIBC's goals include reduced footprint, configurable components, better su=
pport for cross-compilation and cross-testing.,N/A,http://downloads.yoctopr=
oject.org/releases/eglibc/eglibc-2.19-svnr25243.tar.bz2,Laurentiu Palcu <la=
urentiu.palcu@intel.com>)
['font-alias', '1.0.3', 'N/A', 'MIT', 'x11/fonts', 'http://www.x.org', 'r2.=
3', 'pkgconfig-native autoconf-native automake-native libtool-native gnu-co=
nfig-native  util-macros-native font-util-native', 'https://bugs.freedeskto=
p.org/enter_bug.cgi?product=3Dxorg', '1', 'X font aliases.', 'ErrHostNoDir:=
/releases/individual/font/:-:font-alias-1.0.3.tar.bz2:xorg.freedesktop.org/=
releases/individual/font/font-alias-1.0.3.tar.bz2', 'N/A', 'http://xorg.fre=
edesktop.org/releases/individual/font/font-alias-1.0.3.tar.bz2', 'Ross Burt=
on <ross.burton@intel.com>', 'None']
inserted (font-alias,1.0.3,N/A,MIT,x11/fonts,r2.3,1,http://www.x.org,https:=
//bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/=
individual/font/:-:font-alias-1.0.3.tar.bz2:xorg.freedesktop.org/releases/i=
ndividual/font/font-alias-1.0.3.tar.bz2,pkgconfig-native autoconf-native au=
tomake-native libtool-native gnu-config-native  util-macros-native font-uti=
l-native,X font aliases.,N/A,http://xorg.freedesktop.org/releases/individua=
l/font/font-alias-1.0.3.tar.bz2,Ross Burton <ross.burton@intel.com>)
['tcp-wrappers', '7.6', 'N/A', 'BSD', 'console/network', '', 'r10', ' virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  '=
, 'None', 'None', 'Tools for monitoring and filtering incoming requests for=
 tcp                services.', 'ErrHostNoDir:/pub/security/:-:tcp_wrappers=
_7.6.tar.gz:ftp.porcupine.org/pub/security/tcp_wrappers_7.6.tar.gz', 'N/A',=
 'ftp://ftp.porcupine.org/pub/security/tcp_wrappers_7.6.tar.gz', 'Saul Wold=
 <sgw@linux.intel.com>', 'None']
inserted (tcp-wrappers,7.6,N/A,BSD,console/network,r10,None,,None,ErrHostNo=
Dir:/pub/security/:-:tcp_wrappers_7.6.tar.gz:ftp.porcupine.org/pub/security=
/tcp_wrappers_7.6.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  ,Tools for monitoring and filtering incoming =
requests for tcp                services.,N/A,ftp://ftp.porcupine.org/pub/s=
ecurity/tcp_wrappers_7.6.tar.gz,Saul Wold <sgw@linux.intel.com>)
['bjam-native', '1.55.0', 'N/A', 'BSL-1.0 & MIT & Python-2.0', 'devel', 'ht=
tp://www.boost.org/', 'r0', ' ', 'None', 'None', 'Portable Boost.Jam build =
tool for boost.', 'ErrHostNoDir:/boost/:-:boost_1_55_0.tar.bz2:downloads.so=
urceforge.net/boost/boost_1_55_0.tar.bz2', 'N/A', 'http://downloads.sourcef=
orge.net/boost/boost_1_55_0.tar.bz2', 'None', 'None']
inserted (bjam-native,1.55.0,N/A,BSL-1.0 & MIT & Python-2.0,devel,r0,None,h=
ttp://www.boost.org/,None,ErrHostNoDir:/boost/:-:boost_1_55_0.tar.bz2:downl=
oads.sourceforge.net/boost/boost_1_55_0.tar.bz2, ,Portable Boost.Jam build =
tool for boost.,N/A,http://downloads.sourceforge.net/boost/boost_1_55_0.tar=
=2Ebz2,None)
['xf86-video-vesa', '2.3.3', 'N/A', 'MIT-X', 'x11/drivers', 'http://www.x.o=
rg', 'r21.0', 'pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  renderproto videoproto xextproto f=
ontsproto virtual/xserver xproto randrproto util-macros virtual/libx11 rand=
rproto libpciaccess', 'https://bugs.freedesktop.org', '2', 'vesa is an Xorg=
 driver for generic VESA video cards. It can drive most VESA-compatible vid=
eo cards, but only makes use of the basic standard VESA core that is common=
 to these cards. The driver supports depths 8, 15 16 and 24.', 'ErrHostNoDi=
r:/releases/individual/driver/:-:xf86-video-vesa-2.3.3.tar.bz2:xorg.freedes=
ktop.org/releases/individual/driver/xf86-video-vesa-2.3.3.tar.bz2', 'N/A', =
'http://xorg.freedesktop.org/releases/individual/driver/xf86-video-vesa-2.3=
=2E3.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86-video-vesa,2.3.3,N/A,MIT-X,x11/drivers,r21.0,2,http://www.x.=
org,https://bugs.freedesktop.org,ErrHostNoDir:/releases/individual/driver/:=
-:xf86-video-vesa-2.3.3.tar.bz2:xorg.freedesktop.org/releases/individual/dr=
iver/xf86-video-vesa-2.3.3.tar.bz2,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  renderproto vi=
deoproto xextproto fontsproto virtual/xserver xproto randrproto util-macros=
 virtual/libx11 randrproto libpciaccess,vesa is an Xorg driver for generic =
VESA video cards. It can drive most VESA-compatible video cards, but only m=
akes use of the basic standard VESA core that is common to these cards. The=
 driver supports depths 8, 15 16 and 24.,N/A,http://xorg.freedesktop.org/re=
leases/individual/driver/xf86-video-vesa-2.3.3.tar.bz2,Laurentiu Palcu <lau=
rentiu.palcu@intel.com>)
['libfontenc', '1.1.2', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  util-macros zlib xproto font-util', 'https://bu=
gs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libfontenc is a lib=
rary which helps font libraries portably determine and deal with different =
encodings of fonts.', 'ErrHostNoDir:/releases/individual/lib/:-:libfontenc-=
1.1.2.tar.bz2:xorg.freedesktop.org/releases/individual/lib/libfontenc-1.1.2=
=2Etar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/li=
bfontenc-1.1.2.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libfontenc,1.1.2,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/ind=
ividual/lib/:-:libfontenc-1.1.2.tar.bz2:xorg.freedesktop.org/releases/indiv=
idual/lib/libfontenc-1.1.2.tar.bz2,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros zl=
ib xproto font-util,libfontenc is a library which helps font libraries port=
ably determine and deal with different encodings of fonts.,N/A,http://xorg.=
freedesktop.org/releases/individual/lib/libfontenc-1.1.2.tar.bz2,Ross Burto=
n <ross.burton@intel.com>)
['texi2html', '5.0', 'N/A', 'GPLv2', 'console/utils', 'http://www.nongnu.or=
g/texi2html/', 'r2', 'autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', 'N=
one', 'Perl script that converts Texinfo to HTML.', 'ErrHostNoDir:/releases=
/texi2html/:-:texi2html-5.0.tar.bz2:download.savannah.gnu.org/releases/texi=
2html/texi2html-5.0.tar.bz2', 'N/A', 'http://download.savannah.gnu.org/rele=
ases/texi2html/texi2html-5.0.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', '=
None']
inserted (texi2html,5.0,N/A,GPLv2,console/utils,r2,None,http://www.nongnu.o=
rg/texi2html/,None,ErrHostNoDir:/releases/texi2html/:-:texi2html-5.0.tar.bz=
2:download.savannah.gnu.org/releases/texi2html/texi2html-5.0.tar.bz2,autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native vi=
rtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  ,Perl script that converts Texinfo to HTM=
L.,N/A,http://download.savannah.gnu.org/releases/texi2html/texi2html-5.0.ta=
r.bz2,Saul Wold <sgw@linux.intel.com>)
['gnome-desktop', '2.32.1', 'N/A', 'GPLv2 & LGPLv2', 'x11/gnome', '', 'r6',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  gconf libxrandr virtual/libx11 gtk+ glib-2.0 gn=
ome-doc-utils startup-notification gnome-common-native', 'None', 'None', 'G=
NOME library for reading .desktop files.', 'ErrHostNoDir:/pub/GNOME/sources=
/gnome-desktop/2.32/gnome-desktop-2.32.1.tar.bz2:2.32:-:ftp.gnome.org/pub/G=
NOME/sources/gnome-desktop/2.32/gnome-desktop-2.32.1.tar.bz2', '3.7.90', 'h=
ttp://ftp.gnome.org/pub/GNOME/sources/gnome-desktop/2.32/gnome-desktop-2.32=
=2E1.tar.bz2;name=3Darchive', 'Valentin Popa <valentin.popa@intel.com>', 'w=
aiting for the sato gtk3 port']
inserted (gnome-desktop,2.32.1,N/A,GPLv2 & LGPLv2,x11/gnome,r6,None,,None,E=
rrHostNoDir:/pub/GNOME/sources/gnome-desktop/2.32/gnome-desktop-2.32.1.tar.=
bz2:2.32:-:ftp.gnome.org/pub/GNOME/sources/gnome-desktop/2.32/gnome-desktop=
-2.32.1.tar.bz2,pkgconfig-native autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  gconf libxrandr virtual/libx11 gt=
k+ glib-2.0 gnome-doc-utils startup-notification gnome-common-native,GNOME =
library for reading .desktop files.,3.7.90,http://ftp.gnome.org/pub/GNOME/s=
ources/gnome-desktop/2.32/gnome-desktop-2.32.1.tar.bz2;name=3Darchive,Valen=
tin Popa <valentin.popa@intel.com>)
['initramfs-framework', '1.0', 'INVALID', 'MIT', 'base', '', 'r2', ' ', 'No=
ne', 'None', 'Modular initramfs system.', 'MATCH', 'N/A', 'file://init', 'S=
aul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-framework,1.0,INVALID,MIT,base,r2,None,,None,MATCH, ,Mo=
dular initramfs system.,N/A,file://init,Saul Wold <sgw@linux.intel.com>)
['xdpyinfo', '1.3.1', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxtst libx=
ext libxxf86vm libxxf86dga libxxf86misc libxi libxrender libxinerama libdmx=
 libxau libxcomposite', 'https://bugs.freedesktop.org', '1', 'Xdpyinfo is a=
 utility for displaying information about an X server. It is used to examin=
e the capabilities of a server, the predefined values for various parameter=
s used in communicating between clients and the server, and the different t=
ypes of screens and visuals that are available.', 'ErrHostNoDir:/releases/i=
ndividual/app/:-:xdpyinfo-1.3.1.tar.bz2:xorg.freedesktop.org/releases/indiv=
idual/app/xdpyinfo-1.3.1.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/rele=
ases/individual/app/xdpyinfo-1.3.1.tar.bz2', 'Laurentiu Palcu <laurentiu.pa=
lcu@intel.com>', 'None']
inserted (xdpyinfo,1.3.1,N/A,MIT-X,x11/apps,r0,1,http://www.x.org/,https://=
bugs.freedesktop.org,ErrHostNoDir:/releases/individual/app/:-:xdpyinfo-1.3.=
1.tar.bz2:xorg.freedesktop.org/releases/individual/app/xdpyinfo-1.3.1.tar.b=
z2,pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros-native virtual/libx11 libxtst libx=
ext libxxf86vm libxxf86dga libxxf86misc libxi libxrender libxinerama libdmx=
 libxau libxcomposite,Xdpyinfo is a utility for displaying information abou=
t an X server. It is used to examine the capabilities of a server, the pred=
efined values for various parameters used in communicating between clients =
and the server, and the different types of screens and visuals that are ava=
ilable.,N/A,http://xorg.freedesktop.org/releases/individual/app/xdpyinfo-1.=
3.1.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['renderproto', '0.11.1', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org=
', 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop=
=2Eorg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire =
protocol for the X Rendering extension.  This is the basis the image compos=
ition within the X window system.', 'ErrHostNoDir:/releases/individual/prot=
o/:-:renderproto-0.11.1.tar.bz2:xorg.freedesktop.org/releases/individual/pr=
oto/renderproto-0.11.1.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releas=
es/individual/proto/renderproto-0.11.1.tar.bz2', 'Valentin Popa <valentin.p=
opa@intel.com>', 'None']
inserted (renderproto,0.11.1,N/A,MIT-style,x11/libs,r1,1,http://www.x.org,h=
ttps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/rele=
ases/individual/proto/:-:renderproto-0.11.1.tar.bz2:xorg.freedesktop.org/re=
leases/individual/proto/renderproto-0.11.1.tar.bz2,pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  util-macros,This package provides the wire protocol for the X Rendering e=
xtension.  This is the basis the image composition within the X window syst=
em.,N/A,http://xorg.freedesktop.org/releases/individual/proto/renderproto-0=
=2E11.1.tar.bz2,Valentin Popa <valentin.popa@intel.com>)
['docbook-sgml-dtd-4.5-native', '4.5', 'N/A', 'OASIS', 'base', 'http://www.=
docbook.org/sgml/', 'r3.0', ' sgml-common-native', 'None', 'None', 'Documen=
t type definitions for verification of SGML data files against the DocBook =
rule set', 'ErrHostNoDir:/sgml/4.5/:4.5:docbook-4.5.zip:www.docbook.org/sgm=
l/4.5/docbook-4.5.zip', 'N/A', 'http://www.docbook.org/sgml/4.5/docbook-4.5=
=2Ezip', 'Paul Eggleton <paul.eggleton@linux.intel.com>', 'PRS Reports Inco=
rrectly']
inserted (docbook-sgml-dtd-4.5-native,4.5,N/A,OASIS,base,r3.0,None,http://w=
ww.docbook.org/sgml/,None,ErrHostNoDir:/sgml/4.5/:4.5:docbook-4.5.zip:www.d=
ocbook.org/sgml/4.5/docbook-4.5.zip, sgml-common-native,Document type defin=
itions for verification of SGML data files against the DocBook rule set,N/A=
,http://www.docbook.org/sgml/4.5/docbook-4.5.zip,Paul Eggleton <paul.egglet=
on@linux.intel.com>)
['binutils-cross', '2.24', 'N/A', 'GPLv3', 'devel', 'http://www.gnu.org/sof=
tware/binutils/', 'r0', '  flex-native bison-native zlib-native gnu-config-=
native autoconf-native', 'http://sourceware.org/bugzilla/', 'None', 'The GN=
U Binutils are a collection of binary tools. The main ones are ld (GNU Link=
er), and as (GNU Assembler). This package also includes addition tools such=
 as addr2line (Converts addresses into filenames and line numbers), ar (uti=
lity for creating, modifying and extracting archives), nm (list symbols in =
object files), objcopy (copy and translate object files), objdump (Display =
object information), and other tools and related libraries.', 'ErrHostNoDir=
:/gnu/binutils/:-:binutils-2.24.tar.bz2:ftp.gnu.org/gnu/binutils/binutils-2=
=2E24.tar.bz2', 'N/A', 'ftp://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz=
2', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (binutils-cross,2.24,N/A,GPLv3,devel,r0,None,http://www.gnu.org/so=
ftware/binutils/,http://sourceware.org/bugzilla/,ErrHostNoDir:/gnu/binutils=
/:-:binutils-2.24.tar.bz2:ftp.gnu.org/gnu/binutils/binutils-2.24.tar.bz2,  =
flex-native bison-native zlib-native gnu-config-native autoconf-native,The =
GNU Binutils are a collection of binary tools. The main ones are ld (GNU Li=
nker), and as (GNU Assembler). This package also includes addition tools su=
ch as addr2line (Converts addresses into filenames and line numbers), ar (u=
tility for creating, modifying and extracting archives), nm (list symbols i=
n object files), objcopy (copy and translate object files), objdump (Displa=
y object information), and other tools and related libraries.,N/A,ftp://ftp=
=2Egnu.org/gnu/binutils/binutils-2.24.tar.bz2,Robert Yang <liezhi.yang@wind=
river.com>)
['linux-libc-headers', '3.14', 'N/A', 'GPLv2', 'devel', '', 'r0', '  unifde=
f-native', 'None', 'None', "Sanitized set of kernel headers for the C libra=
ry's use.", 'ErrHostNoDir:/pub/linux/kernel/v3.0/linux-3.14.tar.xz:v3.0:-:k=
ernel.org/pub/linux/kernel/v3.0/linux-3.14.tar.xz', 'N/A', 'http://kernel.o=
rg/pub/linux/kernel/v3.0/linux-3.14.tar.xz', 'Bruce Ashfield <bruce.ashfiel=
d@windriver.com>', 'None']
inserted (linux-libc-headers,3.14,N/A,GPLv2,devel,r0,None,,None,ErrHostNoDi=
r:/pub/linux/kernel/v3.0/linux-3.14.tar.xz:v3.0:-:kernel.org/pub/linux/kern=
el/v3.0/linux-3.14.tar.xz,  unifdef-native,Sanitized set of kernel headers =
for the C library's use.,N/A,http://kernel.org/pub/linux/kernel/v3.0/linux-=
3.14.tar.xz,Bruce Ashfield <bruce.ashfield@windriver.com>)
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
['libcgroup', '0.41', 'N/A', 'LGPLv2.1', 'libs', '', 'r0', 'pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  bison-native flex-native ', 'None', 'None', 'libcgroup is a libr=
ary that abstracts the control group file system in Linux. Control groups a=
llow you to limit, account and isolate resource usage (CPU, memory, disk I/=
O, etc.) of groups of processes.', 'ErrHostNoDir:/project/libcg/libcgroup/0=
=2E41/:v0.41:libcgroup-0.41.tar.bz2:downloads.sourceforge.net/project/libcg=
/libcgroup/v0.41/libcgroup-0.41.tar.bz2', 'N/A', 'http://downloads.sourcefo=
rge.net/project/libcg/libcgroup/v0.41/libcgroup-0.41.tar.bz2', 'Saul Wold <=
sgw@linux.intel.com>', 'None']
inserted (libcgroup,0.41,N/A,LGPLv2.1,libs,r0,None,,None,ErrHostNoDir:/proj=
ect/libcg/libcgroup/0.41/:v0.41:libcgroup-0.41.tar.bz2:downloads.sourceforg=
e.net/project/libcg/libcgroup/v0.41/libcgroup-0.41.tar.bz2,pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  bison-native flex-native ,libcgroup is a library that abstracts t=
he control group file system in Linux. Control groups allow you to limit, a=
ccount and isolate resource usage (CPU, memory, disk I/O, etc.) of groups o=
f processes.,N/A,http://downloads.sourceforge.net/project/libcg/libcgroup/v=
0.41/libcgroup-0.41.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['linux-firmware', '0.0+gitAUTOINC+600caefd83', '0.0+gitAUTOINC+dec41bc', '=
Proprietary', 'kernel', '', 'r0', '  virtual/update-alternatives', 'None', =
'1', 'Firmware files for use with Linux kernel.', 'UPDATE', 'N/A', 'git://g=
it.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git', 'Crist=
ian Iorga <cristian.iorga@intel.com>', 'None']
inserted (linux-firmware,0.0+gitAUTOINC+600caefd83,0.0+gitAUTOINC+dec41bc,P=
roprietary,kernel,r0,1,,None,UPDATE,  virtual/update-alternatives,Firmware =
files for use with Linux kernel.,N/A,git://git.kernel.org/pub/scm/linux/ker=
nel/git/firmware/linux-firmware.git,Cristian Iorga <cristian.iorga@intel.co=
m>)
['icu', '51.2', 'N/A', 'ICU', 'base', 'http://site.icu-project.org/', 'r0',=
 'pkgconfig-native autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  icu-native', 'None', 'None', 'The International=
 Component for Unicode (ICU) is a mature, portable set of C/C++ and Java li=
braries for Unicode support, software internationalization (I18N) and globa=
lization (G11N), giving applications the same results on all platforms.', '=
ErrHostNoDir:/files/icu4c/51.2/:51.2:icu4c-51_2-src.tgz:download.icu-projec=
t.org/files/icu4c/51.2/icu4c-51_2-src.tgz', '4.8.1.1', 'http://download.icu=
-project.org/files/icu4c/51.2/icu4c-51_2-src.tgz', 'Valentin Popa <valentin=
=2Epopa@intel.com>', 'None']
inserted (icu,51.2,N/A,ICU,base,r0,None,http://site.icu-project.org/,None,E=
rrHostNoDir:/files/icu4c/51.2/:51.2:icu4c-51_2-src.tgz:download.icu-project=
=2Eorg/files/icu4c/51.2/icu4c-51_2-src.tgz,pkgconfig-native autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  icu-na=
tive,The International Component for Unicode (ICU) is a mature, portable se=
t of C/C++ and Java libraries for Unicode support, software internationaliz=
ation (I18N) and globalization (G11N), giving applications the same results=
 on all platforms.,4.8.1.1,http://download.icu-project.org/files/icu4c/51.2=
/icu4c-51_2-src.tgz,Valentin Popa <valentin.popa@intel.com>)
['formfactor', '0.0', 'INVALID', 'MIT', 'base', '', 'r44', ' ', 'None', 'No=
ne', 'Device formfactor information.', 'MATCH', '0.0', 'file://config', 'Cr=
istian Iorga <cristian.iorga@intel.com>', 'None']
inserted (formfactor,0.0,INVALID,MIT,base,r44,None,,None,MATCH, ,Device for=
mfactor information.,0.0,file://config,Cristian Iorga <cristian.iorga@intel=
=2Ecom>)
['bc', '1.06', 'N/A', 'GPLv2+ & LGPLv2.1', 'base', 'http://www.gnu.org/soft=
ware/bc/bc.html', 'r2', 'autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  flex virtual/update-alternatives', 'None'=
, 'None', 'Arbitrary precision calculator language.', 'ErrHostNoDir:/gnu/bc=
/:-:bc-1.06.tar.gz:ftp.gnu.org/gnu/bc/bc-1.06.tar.gz', '1.06', 'ftp://ftp.g=
nu.org/gnu/bc/bc-1.06.tar.gz', 'Cristiana Voicu <cristiana.voicu@intel.com>=
', 'None']
inserted (bc,1.06,N/A,GPLv2+ & LGPLv2.1,base,r2,None,http://www.gnu.org/sof=
tware/bc/bc.html,None,ErrHostNoDir:/gnu/bc/:-:bc-1.06.tar.gz:ftp.gnu.org/gn=
u/bc/bc-1.06.tar.gz,autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  flex virtual/update-alternatives,Arbitrary pre=
cision calculator language.,1.06,ftp://ftp.gnu.org/gnu/bc/bc-1.06.tar.gz,Cr=
istiana Voicu <cristiana.voicu@intel.com>)
['update-rc.d', '0.7', '0.7', 'GPLv2+', 'base', '', 'r5', ' ', 'None', 'Non=
e', 'update-rc.d is a utilities that allows the management of symlinks to t=
he initscripts in the /etc/rcN.d directory structure.', 'ErrUnknown:github.=
com/philb/update-rc.d.git', 'N/A', 'git://github.com/philb/update-rc.d.git'=
, 'Cristiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (update-rc.d,0.7,0.7,GPLv2+,base,r5,None,,None,ErrUnknown:github.c=
om/philb/update-rc.d.git, ,update-rc.d is a utilities that allows the manag=
ement of symlinks to the initscripts in the /etc/rcN.d directory structure.=
,N/A,git://github.com/philb/update-rc.d.git,Cristiana Voicu <cristiana.voic=
u@intel.com>)
['linux-yocto-rt', '3.10.35+gitAUTOINC+7df9ef8ee4_d1e73a1e09', '68054859+gi=
tAUTOINC+e559628', 'GPLv2', 'kernel', '', 'r0', '  xz-native bc-native virt=
ual/i586-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native depmod=
wrapper-cross', 'None', 'None', 'Yocto Kernel', 'UPDATE', 'N/A', 'git://git=
=2Eyoctoproject.org/linux-yocto-3.10.git;bareclone=3D1;branch=3Dstandard/pr=
eempt-rt/base,meta;name=3Dmachine,meta', 'Darren Hart <dvhart@linux.intel.c=
om>', 'None']
inserted (linux-yocto-rt,3.10.35+gitAUTOINC+7df9ef8ee4_d1e73a1e09,68054859+=
gitAUTOINC+e559628,GPLv2,kernel,r0,None,,None,UPDATE,  xz-native bc-native =
virtual/i586-poky-linux-binutils virtual/i586-poky-linux-gcc kmod-native de=
pmodwrapper-cross,Yocto Kernel,N/A,git://git.yoctoproject.org/linux-yocto-3=
=2E10.git;bareclone=3D1;branch=3Dstandard/preempt-rt/base,meta;name=3Dmachi=
ne,meta,Darren Hart <dvhart@linux.intel.com>)
['kern-tools-native', '0.2+gitAUTOINC+a42509b01c', '0.2+gitAUTOINC+a212a4a'=
, 'GPLv2', 'base', '', 'r12', ' git-native', 'None', 'None', 'Tools for man=
aging Yocto Project style branched kernels.', 'UPDATE', 'N/A', 'git://git.y=
octoproject.org/yocto-kernel-tools.git', 'Bruce Ashfield <bruce.ashfield@wi=
ndriver.com>', 'None']
inserted (kern-tools-native,0.2+gitAUTOINC+a42509b01c,0.2+gitAUTOINC+a212a4=
a,GPLv2,base,r12,None,,None,UPDATE, git-native,Tools for managing Yocto Pro=
ject style branched kernels.,N/A,git://git.yoctoproject.org/yocto-kernel-to=
ols.git,Bruce Ashfield <bruce.ashfield@windriver.com>)
['dmidecode', '2.12', 'N/A', 'GPLv2', 'base', 'http://www.nongnu.org/dmidec=
ode/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  ', 'None', 'None', 'DMI (Desktop Management Interface) t=
able related utilities.', 'ErrHostNoDir:/download/dmidecode/:-:dmidecode-2.=
12.tar.bz2:savannah.nongnu.org/download/dmidecode/dmidecode-2.12.tar.bz2', =
'N/A', 'http://savannah.nongnu.org/download/dmidecode/dmidecode-2.12.tar.bz=
2', 'None', 'None']
inserted (dmidecode,2.12,N/A,GPLv2,base,r0,None,http://www.nongnu.org/dmide=
code/,None,ErrHostNoDir:/download/dmidecode/:-:dmidecode-2.12.tar.bz2:savan=
nah.nongnu.org/download/dmidecode/dmidecode-2.12.tar.bz2, virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,DMI (Desktop=
 Management Interface) table related utilities.,N/A,http://savannah.nongnu.=
org/download/dmidecode/dmidecode-2.12.tar.bz2,None)
['syslinux', '6.01', 'N/A', 'GPLv2+', 'base', 'http://syslinux.zytor.com/',=
 'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  nasm-native util-linux', 'None', 'None', 'Multi-purpose linux =
bootloader.', 'ErrHostNoDir:/pub/linux/utils/boot/syslinux/6.xx/:-:syslinux=
-6.01.tar.bz2:kernel.org/pub/linux/utils/boot/syslinux/6.xx/syslinux-6.01.t=
ar.bz2', 'N/A', 'http://kernel.org/pub/linux/utils/boot/syslinux/6.xx/sysli=
nux-6.01.tar.bz2', 'Darren Hart <dvhart@linux.intel.com>', 'Waiting for 4.0=
6 for 3.3 kernel headers support']
inserted (syslinux,6.01,N/A,GPLv2+,base,r0,None,http://syslinux.zytor.com/,=
None,ErrHostNoDir:/pub/linux/utils/boot/syslinux/6.xx/:-:syslinux-6.01.tar.=
bz2:kernel.org/pub/linux/utils/boot/syslinux/6.xx/syslinux-6.01.tar.bz2, vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  nasm-native util-linux,Multi-purpose linux bootloader.,N/A,http://kernel.=
org/pub/linux/utils/boot/syslinux/6.xx/syslinux-6.01.tar.bz2,Darren Hart <d=
vhart@linux.intel.com>)
['wget', '1.14', 'N/A', 'GPLv3', 'console/network', '', 'r16.0', 'autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native virtu=
al/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  openssl zlib libpcre virtual/update-alternat=
ives', 'None', 'None', 'Console URL download utility supporting HTTP, FTP, =
etc.', 'ErrHostNoDir:/gnu/wget/:-:wget-1.14.tar.gz:ftp.gnu.org/gnu/wget/wge=
t-1.14.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/wget/wget-1.14.tar.gz', 'Robe=
rt Yang <liezhi.yang@windriver.com>', 'None']
inserted (wget,1.14,N/A,GPLv3,console/network,r16.0,None,,None,ErrHostNoDir=
:/gnu/wget/:-:wget-1.14.tar.gz:ftp.gnu.org/gnu/wget/wget-1.14.tar.gz,autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native vi=
rtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  openssl zlib libpcre virtual/update-alter=
natives,Console URL download utility supporting HTTP, FTP, etc.,N/A,ftp://f=
tp.gnu.org/gnu/wget/wget-1.14.tar.gz,Robert Yang <liezhi.yang@windriver.com=
>)
['libxml-parser-perl', '2.41', 'N/A', 'Artistic-1.0 | GPL-1.0', 'libs', '',=
 'r3', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc   expat expat-native perl perl-native', 'None', 'None', 'XML::P=
arser - A perl module for parsing XML documents.', 'ErrHostNoDir:/modules/b=
y-module/XML/:-:XML-Parser-2.41.tar.gz:www.cpan.org/modules/by-module/XML/X=
ML-Parser-2.41.tar.gz', 'N/A', 'http://www.cpan.org/modules/by-module/XML/X=
ML-Parser-2.41.tar.gz', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (libxml-parser-perl,2.41,N/A,Artistic-1.0 | GPL-1.0,libs,r3,None,,=
None,ErrHostNoDir:/modules/by-module/XML/:-:XML-Parser-2.41.tar.gz:www.cpan=
=2Eorg/modules/by-module/XML/XML-Parser-2.41.tar.gz, virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   expat expat-nativ=
e perl perl-native,XML::Parser - A perl module for parsing XML documents.,N=
/A,http://www.cpan.org/modules/by-module/XML/XML-Parser-2.41.tar.gz,Hongxu =
Jia <hongxu.jia@windriver.com>)
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
onally been provided by Xlib.', 'ErrHostNoDir:/dist/:-:xcb-util-keysyms-0.3=
=2E9.tar.bz2:xcb.freedesktop.org/dist/xcb-util-keysyms-0.3.9.tar.bz2', 'N/A=
', 'http://xcb.freedesktop.org/dist/xcb-util-keysyms-0.3.9.tar.bz2', 'Laure=
ntiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xcb-util-keysyms,0.3.9,N/A,MIT,x11/libs,r0,None,http://xcb.freede=
sktop.org/XcbUtil/,https://bugs.freedesktop.org/enter_bug.cgi?product=3DXCB=
,ErrHostNoDir:/dist/:-:xcb-util-keysyms-0.3.9.tar.bz2:xcb.freedesktop.org/d=
ist/xcb-util-keysyms-0.3.9.tar.bz2,pkgconfig-native autoconf-native automak=
e-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-=
linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxcb gperf-n=
ative,The xcb-util module provides a number of libraries which sit on top o=
f libxcb, the core X protocol library, and some of the extension libraries.=
 These experimental libraries provide convenience functions and interfaces =
which make the raw X protocol more usable. Some of the libraries also provi=
de client-side code which is not strictly part of the X protocol but which =
have traditionally been provided by Xlib.,N/A,http://xcb.freedesktop.org/di=
st/xcb-util-keysyms-0.3.9.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.co=
m>)
['pcmciautils', '018', 'N/A', 'GPLv2', 'kernel/userland', 'http://kernel.or=
g/pub/linux/utils/kernel/pcmcia/pcmcia.html', 'r1', ' virtual/i586-poky-lin=
ux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  udev sysfsutils f=
lex-native', 'None', 'None', 'Linux kernel userland utilities for the PCMCI=
A subsystem.', 'ErrHostNoDir:/pub/linux/utils/kernel/pcmcia/:-:pcmciautils-=
018.tar.bz2:kernel.org/pub/linux/utils/kernel/pcmcia/pcmciautils-018.tar.bz=
2', 'N/A', 'http://kernel.org/pub/linux/utils/kernel/pcmcia/pcmciautils-018=
=2Etar.bz2', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (pcmciautils,018,N/A,GPLv2,kernel/userland,r1,None,http://kernel.o=
rg/pub/linux/utils/kernel/pcmcia/pcmcia.html,None,ErrHostNoDir:/pub/linux/u=
tils/kernel/pcmcia/:-:pcmciautils-018.tar.bz2:kernel.org/pub/linux/utils/ke=
rnel/pcmcia/pcmciautils-018.tar.bz2, virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  udev sysfsutils flex-native,Linux =
kernel userland utilities for the PCMCIA subsystem.,N/A,http://kernel.org/p=
ub/linux/utils/kernel/pcmcia/pcmciautils-018.tar.bz2,Valentin Popa <valenti=
n.popa@intel.com>)
['acl', '2.2.52', 'N/A', 'LGPLv2.1+ & GPLv2+', 'libs', 'http://savannah.non=
gnu.org/projects/acl/', 'r0', 'autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  attr=
', 'None', 'None', 'Utilities for managing POSIX Access Control Lists.', 'E=
rrHostNoDir:/releases/acl/:-:acl-2.2.52.src.tar.gz:download.savannah.gnu.or=
g/releases/acl/acl-2.2.52.src.tar.gz', 'N/A', 'http://download.savannah.gnu=
=2Eorg/releases/acl/acl-2.2.52.src.tar.gz', 'Chong Lu <Chong.Lu@windriver.c=
om>', 'None']
inserted (acl,2.2.52,N/A,LGPLv2.1+ & GPLv2+,libs,r0,None,http://savannah.no=
ngnu.org/projects/acl/,None,ErrHostNoDir:/releases/acl/:-:acl-2.2.52.src.ta=
r.gz:download.savannah.gnu.org/releases/acl/acl-2.2.52.src.tar.gz,autoconf-=
native automake-native libtool-native libtool-cross gnu-config-native virtu=
al/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  attr,Utilities for managing POSIX Access Con=
trol Lists.,N/A,http://download.savannah.gnu.org/releases/acl/acl-2.2.52.sr=
c.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['libexif', '0.6.21', 'N/A', 'LGPLv2.1', 'libs', 'http://sourceforge.net/pr=
ojects/libexif', 'r0', 'autoconf-native automake-native libtool-native libt=
ool-cross gnu-config-native virtual/gettext gettext-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', =
'None', 'Library for reading extended image information (EXIF) from JPEG fi=
les.', 'ErrHostNoDir:/libexif/:-:libexif-0.6.21.tar.bz2:downloads.sourcefor=
ge.net/libexif/libexif-0.6.21.tar.bz2', 'N/A', 'http://downloads.sourceforg=
e.net/libexif/libexif-0.6.21.tar.bz2', 'Saul Wold <sgw@linux.intel.com>', '=
None']
inserted (libexif,0.6.21,N/A,LGPLv2.1,libs,r0,None,http://sourceforge.net/p=
rojects/libexif,None,ErrHostNoDir:/libexif/:-:libexif-0.6.21.tar.bz2:downlo=
ads.sourceforge.net/libexif/libexif-0.6.21.tar.bz2,autoconf-native automake=
-native libtool-native libtool-cross gnu-config-native virtual/gettext gett=
ext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  ,Library for reading extended image information (EXIF) from=
 JPEG files.,N/A,http://downloads.sourceforge.net/libexif/libexif-0.6.21.ta=
r.bz2,Saul Wold <sgw@linux.intel.com>)
['xrandr', '1.4.1', 'N/A', 'MIT', 'x11/apps', 'http://www.x.org/', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros-native virtual/libx11 libxrandr libxre=
nder', 'https://bugs.freedesktop.org', '1', 'Xrandr is used to set the size=
, orientation and/or reflection of the outputs for a screen. It can also se=
t the screen size.', 'ErrHostNoDir:/releases/individual/app/:-:xrandr-1.4.1=
=2Etar.bz2:xorg.freedesktop.org/releases/individual/app/xrandr-1.4.1.tar.bz=
2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/xrandr-1.4.=
1.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xrandr,1.4.1,N/A,MIT,x11/apps,r0,1,http://www.x.org/,https://bugs=
=2Efreedesktop.org,ErrHostNoDir:/releases/individual/app/:-:xrandr-1.4.1.ta=
r.bz2:xorg.freedesktop.org/releases/individual/app/xrandr-1.4.1.tar.bz2,pkg=
config-native autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  util-macros-native virtual/libx11 libxrandr libxrend=
er,Xrandr is used to set the size, orientation and/or reflection of the out=
puts for a screen. It can also set the screen size.,N/A,http://xorg.freedes=
ktop.org/releases/individual/app/xrandr-1.4.1.tar.bz2,Laurentiu Palcu <laur=
entiu.palcu@intel.com>)
['libxres', '1.0.7', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', 'p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros libxext resourceproto', 'https://bugs.=
freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'libXRes provides an X =
Window System client interface to the Resource extension to the X protocol.=
  The Resource extension allows for X clients to see and monitor the X reso=
urce usage of various clients (pixmaps, et al).', 'ErrHostNoDir:/releases/i=
ndividual/lib/:-:libXres-1.0.7.tar.bz2:xorg.freedesktop.org/releases/indivi=
dual/lib/libXres-1.0.7.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releas=
es/individual/lib/libXres-1.0.7.tar.bz2', 'Ross Burton <ross.burton@intel.c=
om>', 'None']
inserted (libxres,1.0.7,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://bugs=
=2Efreedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/indi=
vidual/lib/:-:libXres-1.0.7.tar.bz2:xorg.freedesktop.org/releases/individua=
l/lib/libXres-1.0.7.tar.bz2,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros libxext r=
esourceproto,libXRes provides an X Window System client interface to the Re=
source extension to the X protocol.  The Resource extension allows for X cl=
ients to see and monitor the X resource usage of various clients (pixmaps, =
et al).,N/A,http://xorg.freedesktop.org/releases/individual/lib/libXres-1.0=
=2E7.tar.bz2,Ross Burton <ross.burton@intel.com>)
['ptest-runner', '1.0', 'INVALID', 'MIT', 'base', 'https://wiki.yoctoprojec=
t.org/wiki/Ptest', 'r0', ' ', 'None', 'None', 'The ptest-runner package ins=
talls a ptest-runner shell script which loops through all installed ptest t=
est suites and runs them in sequence.', 'MATCH', 'N/A', 'file://ptest-runne=
r', 'None', 'None']
inserted (ptest-runner,1.0,INVALID,MIT,base,r0,None,https://wiki.yoctoproje=
ct.org/wiki/Ptest,None,MATCH, ,The ptest-runner package installs a ptest-ru=
nner shell script which loops through all installed ptest test suites and r=
uns them in sequence.,N/A,file://ptest-runner,None)
['libtool', '2.4.2', 'N/A', 'GPLv2 & LGPLv2.1', 'devel', 'http://www.gnu.or=
g/software/libtool/libtool.html', 'r6.0', 'autoconf-native automake-native =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  libtool-native', 'None', 'None', 'This is GNU libtoo=
l, a generic library support script. Libtool hides the complexity of genera=
ting special library types (such as shared libraries) behind a consistent i=
nterface.', 'ErrHostNoDir:/gnu/libtool/:-:libtool-2.4.2.tar.gz:ftp.gnu.org/=
gnu/libtool/libtool-2.4.2.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/libtool/li=
btool-2.4.2.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (libtool,2.4.2,N/A,GPLv2 & LGPLv2.1,devel,r6.0,None,http://www.gnu=
=2Eorg/software/libtool/libtool.html,None,ErrHostNoDir:/gnu/libtool/:-:libt=
ool-2.4.2.tar.gz:ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz,autoconf-nati=
ve automake-native gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  libtool-native,This is GNU libtoo=
l, a generic library support script. Libtool hides the complexity of genera=
ting special library types (such as shared libraries) behind a consistent i=
nterface.,N/A,ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz,Robert Yan=
g <liezhi.yang@windriver.com>)
['xf86vidmodeproto', '2.3.1', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org',=
 'r1', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.o=
rg/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire prot=
ocol for the XFree86 video mode extension.  This extension allows client ap=
plications to get and set video mode timings.', 'ErrHostNoDir:/releases/ind=
ividual/proto/:-:xf86vidmodeproto-2.3.1.tar.bz2:xorg.freedesktop.org/releas=
es/individual/proto/xf86vidmodeproto-2.3.1.tar.bz2', 'N/A', 'http://xorg.fr=
eedesktop.org/releases/individual/proto/xf86vidmodeproto-2.3.1.tar.bz2', 'L=
aurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xf86vidmodeproto,2.3.1,N/A,MIT,x11/libs,r1,1,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releas=
es/individual/proto/:-:xf86vidmodeproto-2.3.1.tar.bz2:xorg.freedesktop.org/=
releases/individual/proto/xf86vidmodeproto-2.3.1.tar.bz2,pkgconfig-native a=
utoconf-native automake-native libtool-native libtool-cross gnu-config-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  util-macros,This package provides the wire protocol for the XFree86=
 video mode extension.  This extension allows client applications to get an=
d set video mode timings.,N/A,http://xorg.freedesktop.org/releases/individu=
al/proto/xf86vidmodeproto-2.3.1.tar.bz2,Laurentiu Palcu <laurentiu.palcu@in=
tel.com>)
['gcc-crosssdk-initial', '4.8.2', 'N/A', 'GPL-3.0-with-GCC-exception & GPLv=
3', 'devel', 'http://www.gnu.org/software/gcc/', 'r0', '  virtual/i586-poky=
sdk-linux-binutils-crosssdk gettext-native mpfr-native gmp-native libmpc-na=
tive zlib-native', 'None', 'None', 'GNU cc and gcc C compilers.', 'ErrHostN=
oDir:/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2:gcc-4.8.2:-:ftp.gnu.org/gnu/gcc/g=
cc-4.8.2/gcc-4.8.2.tar.bz2', 'N/A', 'ftp://ftp.gnu.org/gnu/gcc/gcc-4.8.2/gc=
c-4.8.2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (gcc-crosssdk-initial,4.8.2,N/A,GPL-3.0-with-GCC-exception & GPLv3=
,devel,r0,None,http://www.gnu.org/software/gcc/,None,ErrHostNoDir:/gnu/gcc/=
gcc-4.8.2/gcc-4.8.2.tar.bz2:gcc-4.8.2:-:ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4=
=2E8.2.tar.bz2,  virtual/i586-pokysdk-linux-binutils-crosssdk gettext-nativ=
e mpfr-native gmp-native libmpc-native zlib-native,GNU cc and gcc C compile=
rs.,N/A,ftp://ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.bz2,Laurentiu Pal=
cu <laurentiu.palcu@intel.com>)
['shutdown-desktop', '1.0', 'INVALID', 'MIT', 'base', '', 'r1', ' ', 'None'=
, 'None', 'Provides an icon to shut down the system cleanly.', 'MATCH', 'N/=
A', 'file://shutdown.desktop', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (shutdown-desktop,1.0,INVALID,MIT,base,r1,None,,None,MATCH, ,Provi=
des an icon to shut down the system cleanly.,N/A,file://shutdown.desktop,Sa=
ul Wold <sgw@linux.intel.com>)
['sgml-common', '0.6.3', 'N/A', 'GPLv2+', 'base', 'http://sources.redhat.co=
m/docbook-tools/', 'r1', 'autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ', 'None', 'None', 'The sgml-common pack=
age gathers very basic stuff necessary to work with SGML and XML, such as x=
ml.dcl, a SGML declaration of XML; iso-entities, a list of the basic SGML I=
SO entities; and install-catalog, a script used to add entries to (or remov=
e entries from) centralized catalogs whose entries are pointers to SGML ope=
n catalogs, as defined by OASIS.', 'ErrHostNoDir:/pub/docbook-tools/new-tri=
als/SOURCES/:-:sgml-common-0.6.3.tgz:sources.redhat.com/pub/docbook-tools/n=
ew-trials/SOURCES/sgml-common-0.6.3.tgz', 'N/A', 'ftp://sources.redhat.com/=
pub/docbook-tools/new-trials/SOURCES/sgml-common-0.6.3.tgz', 'Paul Eggleton=
 <paul.eggleton@linux.intel.com>', 'None']
inserted (sgml-common,0.6.3,N/A,GPLv2+,base,r1,None,http://sources.redhat.c=
om/docbook-tools/,None,ErrHostNoDir:/pub/docbook-tools/new-trials/SOURCES/:=
-:sgml-common-0.6.3.tgz:sources.redhat.com/pub/docbook-tools/new-trials/SOU=
RCES/sgml-common-0.6.3.tgz,autoconf-native automake-native libtool-native l=
ibtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  ,The sgml-common package gathers very b=
asic stuff necessary to work with SGML and XML, such as xml.dcl, a SGML dec=
laration of XML; iso-entities, a list of the basic SGML ISO entities; and i=
nstall-catalog, a script used to add entries to (or remove entries from) ce=
ntralized catalogs whose entries are pointers to SGML open catalogs, as def=
ined by OASIS.,N/A,ftp://sources.redhat.com/pub/docbook-tools/new-trials/SO=
URCES/sgml-common-0.6.3.tgz,Paul Eggleton <paul.eggleton@linux.intel.com>)
['xtscal', '0.6.3', 'N/A', 'GPLv2 & GPLv2+', 'x11/base', 'http://gpe.linuxt=
ogo.org', 'r13', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  virtual/libx11 libxft libxcalibrate', 'http://bu=
gs.linuxtogo.org', 'None', 'Basic touchscreen calibration utility', 'ErrHos=
tNoDir:/download/source/:-:xtscal-0.6.3.tar.bz2:gpe.linuxtogo.org/download/=
source/xtscal-0.6.3.tar.bz2', 'N/A', 'http://gpe.linuxtogo.org/download/sou=
rce/xtscal-0.6.3.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', '=
None']
inserted (xtscal,0.6.3,N/A,GPLv2 & GPLv2+,x11/base,r13,None,http://gpe.linu=
xtogo.org,http://bugs.linuxtogo.org,ErrHostNoDir:/download/source/:-:xtscal=
-0.6.3.tar.bz2:gpe.linuxtogo.org/download/source/xtscal-0.6.3.tar.bz2,autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  virtual/libx11 libxft libxcalibrate,Basic touchscreen calibration utili=
ty,N/A,http://gpe.linuxtogo.org/download/source/xtscal-0.6.3.tar.bz2,Lauren=
tiu Palcu <laurentiu.palcu@intel.com>)
['libxml-perl', '0.08', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', '', 'r3',=
 ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   libxml-parser-perl perl perl-native', 'None', 'None', 'libxml-perl =
is a collection of smaller Perl modules, scripts, and documents for working=
 with XML in Perl.  libxml-perl software works in combination with XML::Par=
ser, PerlSAX, XML::DOM, XML::Grove and others.', 'ErrHostNoDir:/modules/by-=
module/XML/:-:libxml-perl-0.08.tar.gz:www.cpan.org/modules/by-module/XML/li=
bxml-perl-0.08.tar.gz', 'N/A', 'http://www.cpan.org/modules/by-module/XML/l=
ibxml-perl-0.08.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libxml-perl,0.08,N/A,Artistic-1.0 | GPL-1.0+,libs,r3,None,,None,E=
rrHostNoDir:/modules/by-module/XML/:-:libxml-perl-0.08.tar.gz:www.cpan.org/=
modules/by-module/XML/libxml-perl-0.08.tar.gz, virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc   libxml-parser-perl perl=
 perl-native,libxml-perl is a collection of smaller Perl modules, scripts, =
and documents for working with XML in Perl.  libxml-perl software works in =
combination with XML::Parser, PerlSAX, XML::DOM, XML::Grove and others.,N/A=
,http://www.cpan.org/modules/by-module/XML/libxml-perl-0.08.tar.gz,Saul Wol=
d <sgw@linux.intel.com>)
['matchbox-config-gtk', '0.0+gitAUTOINC+3ed74dfb7c', '0.0+gitAUTOINC+3ed74d=
f', 'GPLv2+', 'base', 'http://matchbox-project.org', 'r0', 'pkgconfig-nativ=
e autoconf-native automake-native libtool-native libtool-cross gnu-config-n=
ative  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc  gconf gtk+', 'http://bugzilla.yoctoproject.org/', 'None', 'Match=
box GTK+ theme configuration application.', 'MATCH', 'N/A', 'git://git.yoct=
oproject.org/matchbox-config-gtk', 'Valentin Popa <valentin.popa@intel.com>=
', 'None']
inserted (matchbox-config-gtk,0.0+gitAUTOINC+3ed74dfb7c,0.0+gitAUTOINC+3ed7=
4df,GPLv2+,base,r0,None,http://matchbox-project.org,http://bugzilla.yoctopr=
oject.org/,MATCH,pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc  gconf gtk+,Matchbox GTK+ theme c=
onfiguration application.,N/A,git://git.yoctoproject.org/matchbox-config-gt=
k,Valentin Popa <valentin.popa@intel.com>)
['libxcursor', '1.1.14', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org'=
, 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  util-macros libxrender libxfixes', 'http=
s://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Xcursor is a =
simple library designed to help locate and load cursors. Cursors can be loa=
ded from files or memory. A library of common cursors exists which map to t=
he standard X cursor names. Cursors can exist in several sizes and the libr=
ary automatically picks the best size.', 'ErrHostNoDir:/releases/individual=
/lib/:-:libXcursor-1.1.14.tar.bz2:xorg.freedesktop.org/releases/individual/=
lib/libXcursor-1.1.14.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/release=
s/individual/lib/libXcursor-1.1.14.tar.bz2', 'Ross Burton <ross.burton@inte=
l.com>', 'None']
inserted (libxcursor,1.1.14,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,ht=
tps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/relea=
ses/individual/lib/:-:libXcursor-1.1.14.tar.bz2:xorg.freedesktop.org/releas=
es/individual/lib/libXcursor-1.1.14.tar.bz2,pkgconfig-native autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-=
macros libxrender libxfixes,Xcursor is a simple library designed to help lo=
cate and load cursors. Cursors can be loaded from files or memory. A librar=
y of common cursors exists which map to the standard X cursor names. Cursor=
s can exist in several sizes and the library automatically picks the best s=
ize.,N/A,http://xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1=
=2E14.tar.bz2,Ross Burton <ross.burton@intel.com>)
['zisofs-tools-native', '1.0.8', 'N/A', 'GPLv2', 'console/utils', 'http://f=
reecode.com/projects/zisofs-tools', 'r0', ' zlib-native', 'None', 'None', '=
Utilities for creating compressed CD-ROM filesystems.', 'ErrHostNoDir:/repo=
/pkgs/zisofs-tools/zisofs-tools-1.0.8.tar.bz2/2d0ed8c9a1f60b45f949b136f9be1=
f6c/:-:zisofs-tools-1.0.8.tar.bz2:pkgs.fedoraproject.org/repo/pkgs/zisofs-t=
ools/zisofs-tools-1.0.8.tar.bz2/2d0ed8c9a1f60b45f949b136f9be1f6c/zisofs-too=
ls-1.0.8.tar.bz2', 'N/A', 'http://pkgs.fedoraproject.org/repo/pkgs/zisofs-t=
ools/zisofs-tools-1.0.8.tar.bz2/2d0ed8c9a1f60b45f949b136f9be1f6c/zisofs-too=
ls-1.0.8.tar.bz2', 'None', 'None']
inserted (zisofs-tools-native,1.0.8,N/A,GPLv2,console/utils,r0,None,http://=
freecode.com/projects/zisofs-tools,None,ErrHostNoDir:/repo/pkgs/zisofs-tool=
s/zisofs-tools-1.0.8.tar.bz2/2d0ed8c9a1f60b45f949b136f9be1f6c/:-:zisofs-too=
ls-1.0.8.tar.bz2:pkgs.fedoraproject.org/repo/pkgs/zisofs-tools/zisofs-tools=
-1.0.8.tar.bz2/2d0ed8c9a1f60b45f949b136f9be1f6c/zisofs-tools-1.0.8.tar.bz2,=
 zlib-native,Utilities for creating compressed CD-ROM filesystems.,N/A,http=
://pkgs.fedoraproject.org/repo/pkgs/zisofs-tools/zisofs-tools-1.0.8.tar.bz2=
/2d0ed8c9a1f60b45f949b136f9be1f6c/zisofs-tools-1.0.8.tar.bz2,None)
['pax-utils', '0.7', 'N/A', 'GPLv2+', 'base', 'http://www.gentoo.org/proj/e=
n/hardened/pax-utils.xml', 'r0', ' virtual/i586-poky-linux-gcc virtual/i586=
-poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'This is a small =
set of various PaX aware and related utilities for ELF binaries. It can che=
ck ELF binary files and running processes for issues that might be relevant=
 when using ELF binaries along with PaX, such as non-PIC code or executable=
 stack and heap.', 'ErrHostNoDir:/distfiles/:-:pax-utils-0.7.tar.xz:gentoo.=
osuosl.org/distfiles/pax-utils-0.7.tar.xz', 'N/A', 'http://gentoo.osuosl.or=
g/distfiles/pax-utils-0.7.tar.xz', 'Hongxu Jia <hongxu.jia@windriver.com>',=
 'None']
inserted (pax-utils,0.7,N/A,GPLv2+,base,r0,None,http://www.gentoo.org/proj/=
en/hardened/pax-utils.xml,None,ErrHostNoDir:/distfiles/:-:pax-utils-0.7.tar=
=2Exz:gentoo.osuosl.org/distfiles/pax-utils-0.7.tar.xz, virtual/i586-poky-l=
inux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,This is a smal=
l set of various PaX aware and related utilities for ELF binaries. It can c=
heck ELF binary files and running processes for issues that might be releva=
nt when using ELF binaries along with PaX, such as non-PIC code or executab=
le stack and heap.,N/A,http://gentoo.osuosl.org/distfiles/pax-utils-0.7.tar=
=2Exz,Hongxu Jia <hongxu.jia@windriver.com>)
['ppp', '2.4.6', 'N/A', 'BSD & GPLv2+ & LGPLv2+ & PD', 'console/network', '=
http://samba.org/ppp/', 'r0', 'autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  libpcap', 'http://ppp.samba.org/cgi=
-bin/ppp-bugs', 'None', "ppp (Paul's PPP Package) is an open source package=
 which implements the Point-to-Point Protocol (PPP) on Linux and Solaris sy=
stems.", 'ErrHostNoDir:/ftp/ppp/:-:ppp-2.4.6.tar.gz:ppp.samba.org/ftp/ppp/p=
pp-2.4.6.tar.gz', 'N/A', 'http://ppp.samba.org/ftp/ppp/ppp-2.4.6.tar.gz', '=
Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (ppp,2.4.6,N/A,BSD & GPLv2+ & LGPLv2+ & PD,console/network,r0,None=
,http://samba.org/ppp/,http://ppp.samba.org/cgi-bin/ppp-bugs,ErrHostNoDir:/=
ftp/ppp/:-:ppp-2.4.6.tar.gz:ppp.samba.org/ftp/ppp/ppp-2.4.6.tar.gz,autoconf=
-native automake-native libtool-native libtool-cross gnu-config-native  vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
 libpcap,ppp (Paul's PPP Package) is an open source package which implement=
s the Point-to-Point Protocol (PPP) on Linux and Solaris systems.,N/A,http:=
//ppp.samba.org/ftp/ppp/ppp-2.4.6.tar.gz,Hongxu Jia <hongxu.jia@windriver.c=
om>)
['watchdog', '5.13', 'N/A', 'GPL-2.0+', 'base', 'http://watchdog.sourceforg=
e.net/', 'r0', 'autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  ', 'http://sourceforge.net/tracker/?group_id=3D172=
030&atid=3D860194', 'None', 'Watchdog is a daemon that checks if your syste=
m is still working. If programs in user space are not longer executed it wi=
ll reboot the system.', 'ErrHostNoDir:/watchdog/:-:watchdog-5.13.tar.gz:dow=
nloads.sourceforge.net/watchdog/watchdog-5.13.tar.gz', 'N/A', 'http://downl=
oads.sourceforge.net/watchdog/watchdog-5.13.tar.gz', 'Cristiana Voicu <cris=
tiana.voicu@intel.com>', 'None']
inserted (watchdog,5.13,N/A,GPL-2.0+,base,r0,None,http://watchdog.sourcefor=
ge.net/,http://sourceforge.net/tracker/?group_id=3D172030&atid=3D860194,Err=
HostNoDir:/watchdog/:-:watchdog-5.13.tar.gz:downloads.sourceforge.net/watch=
dog/watchdog-5.13.tar.gz,autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  ,Watchdog is a daemon that checks if your=
 system is still working. If programs in user space are not longer executed=
 it will reboot the system.,N/A,http://downloads.sourceforge.net/watchdog/w=
atchdog-5.13.tar.gz,Cristiana Voicu <cristiana.voicu@intel.com>)
['nss', '3.15.1', 'N/A', 'MPL-1.1 GPL-2.0 LGPL-2.1', 'libs', 'http://www.mo=
zilla.org/projects/security/pki/nss/', 'r0', ' virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  sqlite3 nspr zlib nss-na=
tive', 'None', 'None', 'Network Security Services (NSS) is a set of librari=
es designed to support cross-platform development of security-enabled clien=
t and server applications. Applications built with NSS can support SSL v2 a=
nd v3, TLS, PKCS 5, PKCS 7, PKCS 11, PKCS 12, S/MIME, X.509 v3 certificates=
, and other security standards.', 'ErrHostNoDir:/pub/mozilla.org/security/n=
ss/releases/NSS_3_15_1_RTM/src/:-:nss-3.15.1.tar.gz:ftp.mozilla.org/pub/moz=
illa.org/security/nss/releases/NSS_3_15_1_RTM/src/nss-3.15.1.tar.gz', 'N/A'=
, 'file://nss-fix-support-cross-compiling.patch', 'None', 'None']
inserted (nss,3.15.1,N/A,MPL-1.1 GPL-2.0 LGPL-2.1,libs,r0,None,http://www.m=
ozilla.org/projects/security/pki/nss/,None,ErrHostNoDir:/pub/mozilla.org/se=
curity/nss/releases/NSS_3_15_1_RTM/src/:-:nss-3.15.1.tar.gz:ftp.mozilla.org=
/pub/mozilla.org/security/nss/releases/NSS_3_15_1_RTM/src/nss-3.15.1.tar.gz=
, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  sqlite3 nspr zlib nss-native,Network Security Services (NSS) is a set=
 of libraries designed to support cross-platform development of security-en=
abled client and server applications. Applications built with NSS can suppo=
rt SSL v2 and v3, TLS, PKCS 5, PKCS 7, PKCS 11, PKCS 12, S/MIME, X.509 v3 c=
ertificates, and other security standards.,N/A,file://nss-fix-support-cross=
-compiling.patch,None)
['gst-plugins-base', '0.10.36', 'N/A', 'GPLv2+ & LGPLv2+', 'multimedia', 'h=
ttp://gstreamer.freedesktop.org/', 'r8', 'pkgconfig-native autoconf-native =
automake-native libtool-native libtool-cross gnu-config-native virtual/gett=
ext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  gstreamer alsa-lib liboil libogg libvorbis libtheor=
a util-linux tremor glib-2.0-native virtual/libx11 libxv libsm libice', 'ht=
tps://bugzilla.gnome.org/enter_bug.cgi?product=3DGstreamer', 'None', 'Plugi=
ns for the GStreamer multimedia framework.', 'ErrHostNoDir:/src/gst-plugins=
-base/:-:gst-plugins-base-0.10.36.tar.bz2:gstreamer.freedesktop.org/src/gst=
-plugins-base/gst-plugins-base-0.10.36.tar.bz2', 'N/A', 'http://gstreamer.f=
reedesktop.org/src/gst-plugins-base/gst-plugins-base-0.10.36.tar.bz2', 'Cri=
stian Iorga <cristian.iorga@intel.com>', 'not compatible with gst-fluendo 0=
=2E10.x']
inserted (gst-plugins-base,0.10.36,N/A,GPLv2+ & LGPLv2+,multimedia,r8,None,=
http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/enter_bug.cgi?=
product=3DGstreamer,ErrHostNoDir:/src/gst-plugins-base/:-:gst-plugins-base-=
0.10.36.tar.bz2:gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-=
base-0.10.36.tar.bz2,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native virtual/gettext gettext-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  gstreamer alsa-lib liboil libogg libvorbis libtheora util-linux tremor g=
lib-2.0-native virtual/libx11 libxv libsm libice,Plugins for the GStreamer =
multimedia framework.,N/A,http://gstreamer.freedesktop.org/src/gst-plugins-=
base/gst-plugins-base-0.10.36.tar.bz2,Cristian Iorga <cristian.iorga@intel.=
com>)
['xvinfo', '1.1.2', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r8.0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros-native virtual/libx11  libxv', 'ht=
tps://bugs.freedesktop.org', '1', 'xvinfo prints out the capabilities of an=
y video adaptors associated with the display that are accessible through th=
e X-Video extension.', 'ErrHostNoDir:/releases/individual/app/:-:xvinfo-1.1=
=2E2.tar.bz2:xorg.freedesktop.org/releases/individual/app/xvinfo-1.1.2.tar.=
bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/app/xvinfo-1.=
1.2.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (xvinfo,1.1.2,N/A,MIT-X,x11/apps,r8.0,1,http://www.x.org/,https://=
bugs.freedesktop.org,ErrHostNoDir:/releases/individual/app/:-:xvinfo-1.1.2.=
tar.bz2:xorg.freedesktop.org/releases/individual/app/xvinfo-1.1.2.tar.bz2,p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  util-macros-native virtual/libx11  libxv,xvinfo pr=
ints out the capabilities of any video adaptors associated with the display=
 that are accessible through the X-Video extension.,N/A,http://xorg.freedes=
ktop.org/releases/individual/app/xvinfo-1.1.2.tar.bz2,Laurentiu Palcu <laur=
entiu.palcu@intel.com>)
['git', '1.9.0', 'N/A', 'GPLv2', 'console/utils', '', 'r0', 'autoconf-nativ=
e automake-native libtool-native libtool-cross gnu-config-native  virtual/i=
586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  opens=
sl curl zlib expat perl-native', 'None', 'None', 'Distributed version contr=
ol system.', 'ErrHostNoDir:/files/:-:git-1.9.0.tar.gz:git-core.googlecode.c=
om/files/git-1.9.0.tar.gz', 'N/A', 'http://git-core.googlecode.com/files/gi=
t-1.9.0.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (git,1.9.0,N/A,GPLv2,console/utils,r0,None,,None,ErrHostNoDir:/fil=
es/:-:git-1.9.0.tar.gz:git-core.googlecode.com/files/git-1.9.0.tar.gz,autoc=
onf-native automake-native libtool-native libtool-cross gnu-config-native  =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  openssl curl zlib expat perl-native,Distributed version control system.=
,N/A,http://git-core.googlecode.com/files/git-1.9.0.tar.gz,Robert Yang <lie=
zhi.yang@windriver.com>)
['initramfs-live-install', '1.0', 'INVALID', 'MIT', 'base', '', 'r9', ' ', =
'None', 'None', 'Live image install script for grub.', 'MATCH', 'N/A', 'fil=
e://init-install.sh', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (initramfs-live-install,1.0,INVALID,MIT,base,r9,None,,None,MATCH, =
,Live image install script for grub.,N/A,file://init-install.sh,Saul Wold <=
sgw@linux.intel.com>)
['cronie', '1.4.11', 'N/A', 'ISC & BSD', 'utils', 'https://fedorahosted.org=
/cronie/', 'r0', 'autoconf-native automake-native libtool-native libtool-cr=
oss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc   update-rc.d-native base-passwd shadow-native sh=
adow-sysroot shadow', 'mmaslano@redhat.com', 'None', 'Cronie contains the s=
tandard UNIX daemon crond that runs specified programs at scheduled times a=
nd related tools. It is based on the original cron and has security and con=
figuration enhancements like the ability to use pam and SELinux.', 'ErrHost=
NoDir:/releases/c/r/cronie/:-:cronie-1.4.11.tar.gz:fedorahosted.org/release=
s/c/r/cronie/cronie-1.4.11.tar.gz', 'N/A', 'https://fedorahosted.org/releas=
es/c/r/cronie/cronie-1.4.11.tar.gz', 'Cristiana Voicu <cristiana.voicu@inte=
l.com>', 'None']
inserted (cronie,1.4.11,N/A,ISC & BSD,utils,r0,None,https://fedorahosted.or=
g/cronie/,mmaslano@redhat.com,ErrHostNoDir:/releases/c/r/cronie/:-:cronie-1=
=2E4.11.tar.gz:fedorahosted.org/releases/c/r/cronie/cronie-1.4.11.tar.gz,au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   update-rc.d-native base-passwd shadow-native shadow-sysroot shadow,=
Cronie contains the standard UNIX daemon crond that runs specified programs=
 at scheduled times and related tools. It is based on the original cron and=
 has security and configuration enhancements like the ability to use pam an=
d SELinux.,N/A,https://fedorahosted.org/releases/c/r/cronie/cronie-1.4.11.t=
ar.gz,Cristiana Voicu <cristiana.voicu@intel.com>)
['libacpi', '0.2', 'N/A', 'MIT', 'base', 'http://www.ngolde.de/libacpi.html=
', 'r6', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  ', 'None', 'None', 'General purpose shared library for progr=
ams gathering ACPI data on Linux. Thermal zones, battery infomration, fan i=
nformation and AC states are implemented.', 'ErrHostNoDir:/download/:-:liba=
cpi-0.2.tar.gz:www.ngolde.de/download/libacpi-0.2.tar.gz', 'N/A', 'http://w=
ww.ngolde.de/download/libacpi-0.2.tar.gz', 'Saul Wold <sgw@linux.intel.com>=
', 'None']
inserted (libacpi,0.2,N/A,MIT,base,r6,None,http://www.ngolde.de/libacpi.htm=
l,None,ErrHostNoDir:/download/:-:libacpi-0.2.tar.gz:www.ngolde.de/download/=
libacpi-0.2.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  ,General purpose shared library for programs gather=
ing ACPI data on Linux. Thermal zones, battery infomration, fan information=
 and AC states are implemented.,N/A,http://www.ngolde.de/download/libacpi-0=
=2E2.tar.gz,Saul Wold <sgw@linux.intel.com>)
['python-pycurl', '7.19.3', 'N/A', 'LGPLv2.1+ | MIT', 'devel/python', 'http=
://pycurl.sourceforge.net/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  curl python python-native python  =
python-native ', 'None', 'None', 'Python bindings for libcurl.', 'ErrHostNo=
Dir:/download/:-:pycurl-7.19.3.tar.gz:pycurl.sourceforge.net/download/pycur=
l-7.19.3.tar.gz', 'N/A', 'http://pycurl.sourceforge.net/download/pycurl-7.1=
9.3.tar.gz;name=3Darchive', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', =
'None']
inserted (python-pycurl,7.19.3,N/A,LGPLv2.1+ | MIT,devel/python,r0,None,htt=
p://pycurl.sourceforge.net/,None,ErrHostNoDir:/download/:-:pycurl-7.19.3.ta=
r.gz:pycurl.sourceforge.net/download/pycurl-7.19.3.tar.gz, virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  curl python =
python-native python  python-native ,Python bindings for libcurl.,N/A,http:=
//pycurl.sourceforge.net/download/pycurl-7.19.3.tar.gz;name=3Darchive,Laure=
ntiu Palcu <laurentiu.palcu@intel.com>)
['libxinerama', '1.1.3', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0'=
, 'pkgconfig-native autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  util-macros libxext xineramaproto', 'https://b=
ugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', 'Xinerama is a simp=
le library designed to interface the Xinerama Extension for retrieving info=
rmation about physical output devices which may be combined into a single l=
ogical X screen.', 'ErrHostNoDir:/releases/individual/lib/:-:libXinerama-1.=
1.3.tar.bz2:xorg.freedesktop.org/releases/individual/lib/libXinerama-1.1.3.=
tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/lib/libXi=
nerama-1.1.3.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libxinerama,1.1.3,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://=
bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/in=
dividual/lib/:-:libXinerama-1.1.3.tar.bz2:xorg.freedesktop.org/releases/ind=
ividual/lib/libXinerama-1.1.3.tar.bz2,pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros=
 libxext xineramaproto,Xinerama is a simple library designed to interface t=
he Xinerama Extension for retrieving information about physical output devi=
ces which may be combined into a single logical X screen.,N/A,http://xorg.f=
reedesktop.org/releases/individual/lib/libXinerama-1.1.3.tar.bz2,Ross Burto=
n <ross.burton@intel.com>)
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
s found in the X Render Extension.', 'ErrHostNoDir:/releases/:-:cairo-1.12.=
16.tar.xz:cairographics.org/releases/cairo-1.12.16.tar.xz', 'N/A', 'http://=
cairographics.org/releases/cairo-1.12.16.tar.xz', 'Ross Burton <ross.burton=
@intel.com>', 'None']
inserted (cairo,1.12.16,N/A,MPL-1 & LGPLv2.1,libs,r0,None,http://cairograph=
ics.org,http://bugs.freedesktop.org,ErrHostNoDir:/releases/:-:cairo-1.12.16=
=2Etar.xz:cairographics.org/releases/cairo-1.12.16.tar.xz,pkgconfig-native =
autoconf-native automake-native libtool-native libtool-cross gnu-config-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  libpng fontconfig pixman glib-2.0 zlib virtual/libx11 libsm libxre=
nder libxext,Cairo is a multi-platform library providing anti-aliased vecto=
r-based rendering for multiple target backends. Paths consist of line segme=
nts and cubic splines and can be rendered at any width with various join an=
d cap styles. All colors may be specified with optional translucence (opaci=
ty/alpha) and combined using the extended Porter/Duff compositing algebra a=
s found in the X Render Extension.,N/A,http://cairographics.org/releases/ca=
iro-1.12.16.tar.xz,Ross Burton <ross.burton@intel.com>)
['x11-common', '0.1', 'INVALID', 'GPLv2', 'x11', '', 'r47', ' virtual/i586-=
poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None'=
, 'None', 'Common X11 scripts and configuration files.', 'MATCH', '1:7.6', =
'file://etc', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None']
inserted (x11-common,0.1,INVALID,GPLv2,x11,r47,None,,None,MATCH, virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Commo=
n X11 scripts and configuration files.,1:7.6,file://etc,Laurentiu Palcu <la=
urentiu.palcu@intel.com>)
['groff', '1.22.2', 'N/A', 'GPLv3', 'base', 'ftp://ftp.gnu.org/gnu/groff/',=
 'r1', 'autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  groff-native', 'None', 'None', 'The groff (GNU troff) soft=
ware is a typesetting package which reads plain text mixed with formatting =
commands and produces formatted output.', 'ErrHostNoDir:/gnu/groff/:-:groff=
-1.22.2.tar.gz:ftp.gnu.org/gnu/groff/groff-1.22.2.tar.gz', 'N/A', 'ftp://ft=
p.gnu.org/gnu/groff/groff-1.22.2.tar.gz', 'Hongxu Jia <hongxu.jia@windriver=
=2Ecom>', '1.18.1.4 is latest GPLv2 Version no 1.21']
inserted (groff,1.22.2,N/A,GPLv3,base,r1,None,ftp://ftp.gnu.org/gnu/groff/,=
None,ErrHostNoDir:/gnu/groff/:-:groff-1.22.2.tar.gz:ftp.gnu.org/gnu/groff/g=
roff-1.22.2.tar.gz,autoconf-native automake-native libtool-native libtool-c=
ross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux=
-compilerlibs virtual/libc  groff-native,The groff (GNU troff) software is =
a typesetting package which reads plain text mixed with formatting commands=
 and produces formatted output.,N/A,ftp://ftp.gnu.org/gnu/groff/groff-1.22.=
2.tar.gz,Hongxu Jia <hongxu.jia@windriver.com>)
['libart-lgpl', '2.3.21', 'N/A', 'LGPLv2', 'x11/gnome', '', 'r2', 'pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  ', 'None', 'None', 'Library of functions for 2D graphics.=
', 'ErrHostNoDir:/pub/GNOME/sources/libart_lgpl/2.3/libart_lgpl-2.3.21.tar.=
bz2:2.3:-:ftp.gnome.org/pub/GNOME/sources/libart_lgpl/2.3/libart_lgpl-2.3.2=
1.tar.bz2', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/libart_lgpl/2.3/=
libart_lgpl-2.3.21.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libart-lgpl,2.3.21,N/A,LGPLv2,x11/gnome,r2,None,,None,ErrHostNoDi=
r:/pub/GNOME/sources/libart_lgpl/2.3/libart_lgpl-2.3.21.tar.bz2:2.3:-:ftp.g=
nome.org/pub/GNOME/sources/libart_lgpl/2.3/libart_lgpl-2.3.21.tar.bz2,pkgco=
nfig-native autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc  ,Library of functions for 2D graphics.,N/A,http://ftp.=
gnome.org/pub/GNOME/sources/libart_lgpl/2.3/libart_lgpl-2.3.21.tar.bz2,Ross=
 Burton <ross.burton@intel.com>)
['python3-distribute', '0.6.32', 'N/A', 'PSF', 'devel/python', 'http://pack=
ages.python.org/distribute', 'ml5', ' virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc   python3 python3-native python3  =
python3-native ', 'None', 'None', 'Download, build, install, upgrade, and u=
ninstall Python packages.', 'ErrHostNoDir:/packages/source/d/distribute/:-:=
distribute-0.6.32.tar.gz:pypi.python.org/packages/source/d/distribute/distr=
ibute-0.6.32.tar.gz', 'N/A', 'http://pypi.python.org/packages/source/d/dist=
ribute/distribute-0.6.32.tar.gz', 'None', 'None']
inserted (python3-distribute,0.6.32,N/A,PSF,devel/python,ml5,None,http://pa=
ckages.python.org/distribute,None,ErrHostNoDir:/packages/source/d/distribut=
e/:-:distribute-0.6.32.tar.gz:pypi.python.org/packages/source/d/distribute/=
distribute-0.6.32.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc   python3 python3-native python3  python3-nati=
ve ,Download, build, install, upgrade, and uninstall Python packages.,N/A,h=
ttp://pypi.python.org/packages/source/d/distribute/distribute-0.6.32.tar.gz=
,None)
['xhost', '1.0.6', 'N/A', 'MIT-X', 'x11/apps', 'http://www.x.org/', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros-native virtual/libx11 libxmu libxau',=
 'https://bugs.freedesktop.org', '1', 'The xhost program is used to add and=
 delete host names or user names to the list allowed to make connections to=
 the X server. In the case of hosts, this provides a rudimentary form of pr=
ivacy control and security. Environments which require more sophisticated m=
easures should implement the user-based mechanism or use the hooks in the p=
rotocol for passing other authentication data to the server.', 'ErrHostNoDi=
r:/releases/individual/app/:-:xhost-1.0.6.tar.bz2:xorg.freedesktop.org/rele=
ases/individual/app/xhost-1.0.6.tar.bz2', 'N/A', 'http://xorg.freedesktop.o=
rg/releases/individual/app/xhost-1.0.6.tar.bz2', 'Laurentiu Palcu <laurenti=
u.palcu@intel.com>', 'None']
inserted (xhost,1.0.6,N/A,MIT-X,x11/apps,r0,1,http://www.x.org/,https://bug=
s.freedesktop.org,ErrHostNoDir:/releases/individual/app/:-:xhost-1.0.6.tar.=
bz2:xorg.freedesktop.org/releases/individual/app/xhost-1.0.6.tar.bz2,pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  util-macros-native virtual/libx11 libxmu libxau,The xho=
st program is used to add and delete host names or user names to the list a=
llowed to make connections to the X server. In the case of hosts, this prov=
ides a rudimentary form of privacy control and security. Environments which=
 require more sophisticated measures should implement the user-based mechan=
ism or use the hooks in the protocol for passing other authentication data =
to the server.,N/A,http://xorg.freedesktop.org/releases/individual/app/xhos=
t-1.0.6.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['directfb-examples', '1.7.0', 'N/A', 'MIT', 'libs', '', 'r0', 'autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  di=
rectfb', 'None', 'None', 'The DirectFB-examples package contains a set of s=
imple DirectFB       applications that can be used to test and demonstrate =
various DirectFB       features', 'ErrHostNoDir:/downloads/Extras/:-:Direct=
FB-examples-1.7.0.tar.gz:www.directfb.org/downloads/Extras/DirectFB-example=
s-1.7.0.tar.gz', 'N/A', 'http://www.directfb.org/downloads/Extras/DirectFB-=
examples-1.7.0.tar.gz', 'Kai Kang <kai.kang@windriver.com>', 'None']
inserted (directfb-examples,1.7.0,N/A,MIT,libs,r0,None,,None,ErrHostNoDir:/=
downloads/Extras/:-:DirectFB-examples-1.7.0.tar.gz:www.directfb.org/downloa=
ds/Extras/DirectFB-examples-1.7.0.tar.gz,autoconf-native automake-native li=
btool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc v=
irtual/i586-poky-linux-compilerlibs virtual/libc  directfb,The DirectFB-exa=
mples package contains a set of simple DirectFB       applications that can=
 be used to test and demonstrate various DirectFB       features,N/A,http:/=
/www.directfb.org/downloads/Extras/DirectFB-examples-1.7.0.tar.gz,Kai Kang =
<kai.kang@windriver.com>)
['xinput-calibrator', '0.7.5+gitAUTOINC+c01c5af807', '0.7.5+gitAUTOINC+03da=
df5', 'MIT-X', 'base', 'http://www.freedesktop.org/wiki/Software/xinput_cal=
ibrator', 'r6', 'autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  virtual/libx11 libxi', 'None', 'None', 'Touchscre=
en calibration program for X11.', 'UPDATE', 'N/A', 'git://github.com/tias/x=
input_calibrator.git', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'None=
']
inserted (xinput-calibrator,0.7.5+gitAUTOINC+c01c5af807,0.7.5+gitAUTOINC+03=
dadf5,MIT-X,base,r6,None,http://www.freedesktop.org/wiki/Software/xinput_ca=
librator,None,UPDATE,autoconf-native automake-native libtool-native libtool=
-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-lin=
ux-compilerlibs virtual/libc  virtual/libx11 libxi,Touchscreen calibration =
program for X11.,N/A,git://github.com/tias/xinput_calibrator.git,Laurentiu =
Palcu <laurentiu.palcu@intel.com>)
['libmpc', '1.0.2', 'N/A', 'LGPLv3', 'libs', 'http://www.multiprecision.org=
/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  gmp mpfr', 'None', 'None', 'Mpc is a C library for the =
arithmetic of complex numbers with arbitrarily high precision and correct r=
ounding of the result. It is built upon and follows the same principles as =
Mpfr', 'ErrHostNoDir:/mpc/download/:-:mpc-1.0.2.tar.gz:www.multiprecision.o=
rg/mpc/download/mpc-1.0.2.tar.gz', 'N/A', 'http://www.multiprecision.org/mp=
c/download/mpc-1.0.2.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.com>'=
, 'None']
inserted (libmpc,1.0.2,N/A,LGPLv3,libs,r0,None,http://www.multiprecision.or=
g/,None,ErrHostNoDir:/mpc/download/:-:mpc-1.0.2.tar.gz:www.multiprecision.o=
rg/mpc/download/mpc-1.0.2.tar.gz,autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i=
586-poky-linux-compilerlibs virtual/libc  gmp mpfr,Mpc is a C library for t=
he arithmetic of complex numbers with arbitrarily high precision and correc=
t rounding of the result. It is built upon and follows the same principles =
as Mpfr,N/A,http://www.multiprecision.org/mpc/download/mpc-1.0.2.tar.gz,Lau=
rentiu Palcu <laurentiu.palcu@intel.com>)
['oprofileui', '0.0+gitAUTOINC+f168b8bfdc', '0.0+gitAUTOINC+389e187', 'GPLv=
2', 'x11', 'http://labs.o-hand.com/oprofileui/', 'r0', 'pkgconfig-native au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc  glib-2.0 avahi gtk+ libglade libxml2 avahi-ui gconf', 'http://bugzil=
la.yoctoproject.org/', 'None', 'User interface for the OProfile tool', 'UPD=
ATE', 'N/A', 'git://git.yoctoproject.org/oprofileui', 'Laurentiu Palcu <lau=
rentiu.palcu@intel.com>', 'None']
inserted (oprofileui,0.0+gitAUTOINC+f168b8bfdc,0.0+gitAUTOINC+389e187,GPLv2=
,x11,r0,None,http://labs.o-hand.com/oprofileui/,http://bugzilla.yoctoprojec=
t.org/,UPDATE,pkgconfig-native autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  glib-2.0 avahi gtk+ libglade libxml=
2 avahi-ui gconf,User interface for the OProfile tool,N/A,git://git.yoctopr=
oject.org/oprofileui,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['taglib', '1.8', 'N/A', 'LGPLv2.1 | MPL-1', 'libs/multimedia', 'http://dev=
eloper.kde.org/~wheeler/taglib.html', 'r1', 'pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native cmake-nat=
ive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtu=
al/libc  zlib', 'None', 'None', 'Library for reading and editing the meta-d=
ata of popular audio formats.', 'ErrHostNoDir:/downloads/taglib/taglib/:-:t=
aglib-1.8.tar.gz:github.com/downloads/taglib/taglib/taglib-1.8.tar.gz', 'N/=
A', 'https://github.com/downloads/taglib/taglib/taglib-1.8.tar.gz', 'Cristi=
an Iorga <cristian.iorga@intel.com>', 'None']
inserted (taglib,1.8,N/A,LGPLv2.1 | MPL-1,libs/multimedia,r1,None,http://de=
veloper.kde.org/~wheeler/taglib.html,None,ErrHostNoDir:/downloads/taglib/ta=
glib/:-:taglib-1.8.tar.gz:github.com/downloads/taglib/taglib/taglib-1.8.tar=
=2Egz,pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native cmake-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  zlib,Library for reading and e=
diting the meta-data of popular audio formats.,N/A,https://github.com/downl=
oads/taglib/taglib/taglib-1.8.tar.gz,Cristian Iorga <cristian.iorga@intel.c=
om>)
['gst-plugins-ugly', '0.10.19', 'N/A', 'GPLv2+ & LGPLv2.1+ & LGPLv2+', 'mul=
timedia', 'http://gstreamer.freedesktop.org/', 'r3', 'pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  gstreamer gst-plugins-base libid3tag li=
bmad mpeg2dec liba52 lame', 'https://bugzilla.gnome.org/enter_bug.cgi?produ=
ct=3DGstreamer', 'None', 'Plugins for the GStreamer multimedia framework.',=
 'ErrHostNoDir:/src/gst-plugins-ugly/:-:gst-plugins-ugly-0.10.19.tar.bz2:gs=
treamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-0.10.19.tar.b=
z2', 'N/A', 'http://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plug=
ins-ugly-0.10.19.tar.bz2', 'Cristian Iorga <cristian.iorga@intel.com>', 'no=
t compatible with gst-fluendo 0.10.x']
inserted (gst-plugins-ugly,0.10.19,N/A,GPLv2+ & LGPLv2.1+ & LGPLv2+,multime=
dia,r3,None,http://gstreamer.freedesktop.org/,https://bugzilla.gnome.org/en=
ter_bug.cgi?product=3DGstreamer,ErrHostNoDir:/src/gst-plugins-ugly/:-:gst-p=
lugins-ugly-0.10.19.tar.bz2:gstreamer.freedesktop.org/src/gst-plugins-ugly/=
gst-plugins-ugly-0.10.19.tar.bz2,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native virtual/gettext gette=
xt-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs=
 virtual/libc  gstreamer gst-plugins-base libid3tag libmad mpeg2dec liba52 =
lame,Plugins for the GStreamer multimedia framework.,N/A,http://gstreamer.f=
reedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-0.10.19.tar.bz2,Cristi=
an Iorga <cristian.iorga@intel.com>)
['sysvinit-inittab', '2.88dsf', 'INVALID', 'GPLv2', 'base', '', 'r10', ' ',=
 'None', 'None', 'Inittab configuration for SysVinit.', 'MATCH', 'N/A', 'fi=
le://inittab', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (sysvinit-inittab,2.88dsf,INVALID,GPLv2,base,r10,None,,None,MATCH,=
 ,Inittab configuration for SysVinit.,N/A,file://inittab,Saul Wold <sgw@lin=
ux.intel.com>)
['libtheora', '1.1.1', 'N/A', 'BSD', 'libs', 'http://xiph.org/', 'r1', 'pkg=
config-native autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  libogg', 'https://trac.xiph.org/newticket', 'None', =
'The libtheora reference implementation provides the standard encoder and d=
ecoder under a BSD license.', 'ErrHostNoDir:/releases/theora/:-:libtheora-1=
=2E1.1.tar.bz2:downloads.xiph.org/releases/theora/libtheora-1.1.1.tar.bz2',=
 'N/A', 'http://downloads.xiph.org/releases/theora/libtheora-1.1.1.tar.bz2'=
, 'Saul Wold <sgw@linux.intel.com>', '1.1.1 is latest stable release not 1.=
2.0alpha1']
inserted (libtheora,1.1.1,N/A,BSD,libs,r1,None,http://xiph.org/,https://tra=
c.xiph.org/newticket,ErrHostNoDir:/releases/theora/:-:libtheora-1.1.1.tar.b=
z2:downloads.xiph.org/releases/theora/libtheora-1.1.1.tar.bz2,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  libogg,The libtheora reference implementation provides the sta=
ndard encoder and decoder under a BSD license.,N/A,http://downloads.xiph.or=
g/releases/theora/libtheora-1.1.1.tar.bz2,Saul Wold <sgw@linux.intel.com>)
['attr', '2.4.47', 'N/A', 'LGPLv2.1+ & GPLv2+', 'libs', 'http://savannah.no=
ngnu.org/projects/attr/', 'r0', 'autoconf-native automake-native libtool-na=
tive libtool-cross gnu-config-native virtual/gettext gettext-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  nc=
urses', 'None', 'None', 'Utilities for manipulating filesystem extended att=
ributes.', 'ErrHostNoDir:/releases/attr/:-:attr-2.4.47.src.tar.gz:download.=
savannah.gnu.org/releases/attr/attr-2.4.47.src.tar.gz', 'N/A', 'http://down=
load.savannah.gnu.org/releases/attr/attr-2.4.47.src.tar.gz', 'Chong Lu <Cho=
ng.Lu@windriver.com>', 'None']
inserted (attr,2.4.47,N/A,LGPLv2.1+ & GPLv2+,libs,r0,None,http://savannah.n=
ongnu.org/projects/attr/,None,ErrHostNoDir:/releases/attr/:-:attr-2.4.47.sr=
c.tar.gz:download.savannah.gnu.org/releases/attr/attr-2.4.47.src.tar.gz,aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
 virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc  ncurses,Utilities for manipulating fil=
esystem extended attributes.,N/A,http://download.savannah.gnu.org/releases/=
attr/attr-2.4.47.src.tar.gz,Chong Lu <Chong.Lu@windriver.com>)
['gdb-cross', '7.6.2', 'N/A', 'GPLv2 & GPLv3 & LGPLv2 & LGPLv3', 'devel', '=
http://www.gnu.org/software/gdb/', 'r0', 'autoconf-native automake-native l=
ibtool-native gnu-config-native gettext-minimal-native  expat-native ncurse=
s-native readline-native', 'None', 'None', 'GNU debugger.', 'ErrHostNoDir:/=
gnu/gdb/:-:gdb-7.6.2.tar.gz:ftp.gnu.org/gnu/gdb/gdb-7.6.2.tar.gz', 'N/A', '=
ftp://ftp.gnu.org/gnu/gdb/gdb-7.6.2.tar.gz', 'Laurentiu Palcu <laurentiu.pa=
lcu@intel.com>', 'None']
inserted (gdb-cross,7.6.2,N/A,GPLv2 & GPLv3 & LGPLv2 & LGPLv3,devel,r0,None=
,http://www.gnu.org/software/gdb/,None,ErrHostNoDir:/gnu/gdb/:-:gdb-7.6.2.t=
ar.gz:ftp.gnu.org/gnu/gdb/gdb-7.6.2.tar.gz,autoconf-native automake-native =
libtool-native gnu-config-native gettext-minimal-native  expat-native ncurs=
es-native readline-native,GNU debugger.,N/A,ftp://ftp.gnu.org/gnu/gdb/gdb-7=
=2E6.2.tar.gz,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['gstreamer', '0.10.36', 'N/A', 'LGPLv2+', 'multimedia', 'http://gstreamer.=
freedesktop.org/', 'r2', 'pkgconfig-native autoconf-native automake-native =
libtool-native libtool-cross gnu-config-native virtual/gettext gettext-nati=
ve  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtua=
l/libc  glib-2.0 libxml2 bison-native flex-native', 'https://bugzilla.gnome=
=2Eorg/enter_bug.cgi?product=3DGstreamer', 'None', 'GStreamer is a multimed=
ia framework for encoding and decoding video and sound. It supports a wide =
range of formats including mp3, ogg, avi, mpeg and quicktime.', 'ErrHostNoD=
ir:/src/gstreamer/:-:gstreamer-0.10.36.tar.bz2:gstreamer.freedesktop.org/sr=
c/gstreamer/gstreamer-0.10.36.tar.bz2', 'N/A', 'http://gstreamer.freedeskto=
p.org/src/gstreamer/gstreamer-0.10.36.tar.bz2', 'Cristian Iorga <cristian.i=
orga@intel.com>', ' not compatible with gst-fluendo 0.10.x ']
inserted (gstreamer,0.10.36,N/A,LGPLv2+,multimedia,r2,None,http://gstreamer=
=2Efreedesktop.org/,https://bugzilla.gnome.org/enter_bug.cgi?product=3DGstr=
eamer,ErrHostNoDir:/src/gstreamer/:-:gstreamer-0.10.36.tar.bz2:gstreamer.fr=
eedesktop.org/src/gstreamer/gstreamer-0.10.36.tar.bz2,pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-po=
ky-linux-compilerlibs virtual/libc  glib-2.0 libxml2 bison-native flex-nati=
ve,GStreamer is a multimedia framework for encoding and decoding video and =
sound. It supports a wide range of formats including mp3, ogg, avi, mpeg an=
d quicktime.,N/A,http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-0=
=2E10.36.tar.bz2,Cristian Iorga <cristian.iorga@intel.com>)
['menu-cache', '0.4.1', 'N/A', 'GPLv2 & GPLv2+', 'x11/libs', 'http://lxde.s=
ourceforge.net/', 'r0', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 zlib', 'None', =
'None', 'A library creating and utilizing caches to speed up freedesktop.or=
g application menus', 'ErrHostNoDir:/lxde/:-:menu-cache-0.4.1.tar.gz:downlo=
ads.sourceforge.net/lxde/menu-cache-0.4.1.tar.gz', 'N/A', 'http://downloads=
=2Esourceforge.net/lxde/menu-cache-0.4.1.tar.gz', 'Valentin Popa <valentin.=
popa@intel.com>', 'None']
inserted (menu-cache,0.4.1,N/A,GPLv2 & GPLv2+,x11/libs,r0,None,http://lxde.=
sourceforge.net/,None,ErrHostNoDir:/lxde/:-:menu-cache-0.4.1.tar.gz:downloa=
ds.sourceforge.net/lxde/menu-cache-0.4.1.tar.gz,pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  g=
lib-2.0 zlib,A library creating and utilizing caches to speed up freedeskto=
p.org application menus,N/A,http://downloads.sourceforge.net/lxde/menu-cach=
e-0.4.1.tar.gz,Valentin Popa <valentin.popa@intel.com>)
['libnfsidmap', '0.25', 'N/A', 'BSD', 'libs', 'http://www.citi.umich.edu/pr=
ojects/nfsv4/linux/', 'r0', 'autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-=
poky-linux-compilerlibs virtual/libc  ', 'None', 'None', 'NFS id mapping li=
brary.', 'ErrHostNoDir:/projects/nfsv4/linux/libnfsidmap/:-:libnfsidmap-0.2=
5.tar.gz:www.citi.umich.edu/projects/nfsv4/linux/libnfsidmap/libnfsidmap-0.=
25.tar.gz', 'N/A', 'http://www.citi.umich.edu/projects/nfsv4/linux/libnfsid=
map/libnfsidmap-0.25.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.com=
>', 'None']
inserted (libnfsidmap,0.25,N/A,BSD,libs,r0,None,http://www.citi.umich.edu/p=
rojects/nfsv4/linux/,None,ErrHostNoDir:/projects/nfsv4/linux/libnfsidmap/:-=
:libnfsidmap-0.25.tar.gz:www.citi.umich.edu/projects/nfsv4/linux/libnfsidma=
p/libnfsidmap-0.25.tar.gz,autoconf-native automake-native libtool-native li=
btool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  ,NFS id mapping library.,N/A,http://www.=
citi.umich.edu/projects/nfsv4/linux/libnfsidmap/libnfsidmap-0.25.tar.gz,Pau=
l Eggleton <paul.eggleton@linux.intel.com>)
['initscripts', '1.0', 'INVALID', 'GPLv2', 'base', '', 'r154', '  update-rc=
=2Ed-native  virtual/update-alternatives', 'None', 'None', 'Initscripts pro=
vide the basic system startup initialization scripts for the system.  These=
 scripts include actions such as filesystem mounting, fsck, RTC manipulatio=
n and other actions routinely performed at system startup.  In addition, th=
e scripts are also used during system shutdown to reverse the actions perfo=
rmed at startup.', 'MATCH', '9.40', 'file://functions', 'Saul Wold <sgw@lin=
ux.intel.com>', 'None']
inserted (initscripts,1.0,INVALID,GPLv2,base,r154,None,,None,MATCH,  update=
-rc.d-native  virtual/update-alternatives,Initscripts provide the basic sys=
tem startup initialization scripts for the system.  These scripts include a=
ctions such as filesystem mounting, fsck, RTC manipulation and other action=
s routinely performed at system startup.  In addition, the scripts are also=
 used during system shutdown to reverse the actions performed at startup.,9=
=2E40,file://functions,Saul Wold <sgw@linux.intel.com>)
['libfm', '1.1.2.2', 'N/A', 'GPLv2 & GPLv2+', 'x11/libs', 'http://pcmanfm.s=
ourceforge.net/', 'r0', 'pkgconfig-native autoconf-native automake-native l=
ibtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc =
virtual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0 pango gtk+ menu=
-cache intltool-native libexif', 'None', 'None', 'Library for file manageme=
nt.', 'ErrHostNoDir:/pcmanfm/:-:libfm-1.1.2.2.tar.gz:downloads.sourceforge.=
net/pcmanfm/libfm-1.1.2.2.tar.gz', 'N/A', 'http://downloads.sourceforge.net=
/pcmanfm/libfm-1.1.2.2.tar.gz', 'Valentin Popa <valentin.popa@intel.com>', =
'None']
inserted (libfm,1.1.2.2,N/A,GPLv2 & GPLv2+,x11/libs,r0,None,http://pcmanfm.=
sourceforge.net/,None,ErrHostNoDir:/pcmanfm/:-:libfm-1.1.2.2.tar.gz:downloa=
ds.sourceforge.net/pcmanfm/libfm-1.1.2.2.tar.gz,pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  g=
lib-2.0 pango gtk+ menu-cache intltool-native libexif,Library for file mana=
gement.,N/A,http://downloads.sourceforge.net/pcmanfm/libfm-1.1.2.2.tar.gz,V=
alentin Popa <valentin.popa@intel.com>)
['libxrender', '0.9.8', 'N/A', 'MIT-style', 'x11/libs', 'http://www.x.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  util-macros virtual/libx11 renderproto xp=
roto xdmcp', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '=
1', 'The X Rendering Extension (Render) introduces digital image compositio=
n as the foundation of a new rendering model within the X Window System. Re=
ndering geometric figures is accomplished by client-side tessellation into =
either triangles or trapezoids.  Text is drawn by loading glyphs into the s=
erver and rendering sets of them.', 'ErrHostNoDir:/releases/individual/lib/=
:-:libXrender-0.9.8.tar.bz2:xorg.freedesktop.org/releases/individual/lib/li=
bXrender-0.9.8.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/releases/indiv=
idual/lib/libXrender-0.9.8.tar.bz2', 'Ross Burton <ross.burton@intel.com>',=
 'None']
inserted (libxrender,0.9.8,N/A,MIT-style,x11/libs,r0,1,http://www.x.org,htt=
ps://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releas=
es/individual/lib/:-:libXrender-0.9.8.tar.bz2:xorg.freedesktop.org/releases=
/individual/lib/libXrender-0.9.8.tar.bz2,pkgconfig-native autoconf-native a=
utomake-native libtool-native libtool-cross gnu-config-native  virtual/i586=
-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-mac=
ros virtual/libx11 renderproto xproto xdmcp,The X Rendering Extension (Rend=
er) introduces digital image composition as the foundation of a new renderi=
ng model within the X Window System. Rendering geometric figures is accompl=
ished by client-side tessellation into either triangles or trapezoids.  Tex=
t is drawn by loading glyphs into the server and rendering sets of them.,N/=
A,http://xorg.freedesktop.org/releases/individual/lib/libXrender-0.9.8.tar.=
bz2,Ross Burton <ross.burton@intel.com>)
['prelink', '1.0+gitAUTOINC+6822ec76aa', 'cross.prelink+gitAUTOINC+79cc642'=
, 'GPLv2', 'devel', '', 'r0', 'autoconf-native automake-native libtool-nati=
ve libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i58=
6-poky-linux-compilerlibs virtual/libc  elfutils binutils', 'None', 'None',=
 'The prelink package contains a utility which modifies ELF shared librarie=
s and executables, so that far fewer relocations need to be resolved at run=
time and thus programs come up faster.', 'UPDATE', '1.0+git1+9552f214c7faa8=
16fdb55b289a457f0cab034f00', 'git://git.yoctoproject.org/prelink-cross.git;=
branch=3Dcross_prelink', 'Mark Hatle <mark.hatle@windriver.com>', 'None']
inserted (prelink,1.0+gitAUTOINC+6822ec76aa,cross.prelink+gitAUTOINC+79cc64=
2,GPLv2,devel,r0,None,,None,UPDATE,autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  elfutils binutils,The prelink p=
ackage contains a utility which modifies ELF shared libraries and executabl=
es, so that far fewer relocations need to be resolved at runtime and thus p=
rograms come up faster.,1.0+git1+9552f214c7faa816fdb55b289a457f0cab034f00,g=
it://git.yoctoproject.org/prelink-cross.git;branch=3Dcross_prelink,Mark Hat=
le <mark.hatle@windriver.com>)
['autoconf', '2.69', 'N/A', 'GPLv2 & GPLv3', 'devel', 'http://www.gnu.org/s=
oftware/autoconf/', 'r11', 'autoconf-native automake-native libtool-native =
libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-p=
oky-linux-compilerlibs virtual/libc   m4-native', 'None', 'None', 'Autoconf=
 is an extensible package of M4 macros that produce shell scripts to automa=
tically configure software source code packages. Autoconf creates a configu=
ration script for a package from a template file that lists the operating s=
ystem features that the package can use, in the form of M4 macro calls.', '=
ErrHostNoDir:/gnu/autoconf/:-:autoconf-2.69.tar.gz:ftp.gnu.org/gnu/autoconf=
/autoconf-2.69.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/autoconf/autoconf-2.6=
9.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (autoconf,2.69,N/A,GPLv2 & GPLv3,devel,r11,None,http://www.gnu.org=
/software/autoconf/,None,ErrHostNoDir:/gnu/autoconf/:-:autoconf-2.69.tar.gz=
:ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz,autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux=
-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   m4-native,Autoconf=
 is an extensible package of M4 macros that produce shell scripts to automa=
tically configure software source code packages. Autoconf creates a configu=
ration script for a package from a template file that lists the operating s=
ystem features that the package can use, in the form of M4 macro calls.,N/A=
,ftp://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz,Robert Yang <liezhi.ya=
ng@windriver.com>)
['json-glib', '0.16.2', 'N/A', 'LGPLv2.1', 'base', 'http://live.gnome.org/J=
sonGlib', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native virtual/gettext gettext-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  g=
lib-2.0 gnome-common-native hicolor-icon-theme gtk-update-icon-cache-native=
 gconf gconf-native shared-mime-info-native shared-mime-info', 'None', 'Non=
e', 'Use JSON-GLib it is possible to parse and generate valid JSON data str=
uctures, using a DOM-like API. JSON-GLib also offers GObject integration, p=
roviding the ability to serialize and deserialize GObject instances to and =
=66rom JSON data types.', 'ErrHostNoDir:/pub/GNOME/sources/json-glib/0.16/j=
son-glib-0.16.2.tar.xz:0.16:-:ftp.gnome.org/pub/GNOME/sources/json-glib/0.1=
6/json-glib-0.16.2.tar.xz', 'N/A', 'http://ftp.gnome.org/pub/GNOME/sources/=
json-glib/0.16/json-glib-0.16.2.tar.xz;name=3Darchive', 'Ross Burton <ross.=
burton@intel.com>', 'None']
inserted (json-glib,0.16.2,N/A,LGPLv2.1,base,r0,None,http://live.gnome.org/=
JsonGlib,None,ErrHostNoDir:/pub/GNOME/sources/json-glib/0.16/json-glib-0.16=
=2E2.tar.xz:0.16:-:ftp.gnome.org/pub/GNOME/sources/json-glib/0.16/json-glib=
-0.16.2.tar.xz,pkgconfig-native autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native virtual/gettext gettext-native  virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  gli=
b-2.0 gnome-common-native hicolor-icon-theme gtk-update-icon-cache-native g=
conf gconf-native shared-mime-info-native shared-mime-info,Use JSON-GLib it=
 is possible to parse and generate valid JSON data structures, using a DOM-=
like API. JSON-GLib also offers GObject integration, providing the ability =
to serialize and deserialize GObject instances to and from JSON data types.=
,N/A,http://ftp.gnome.org/pub/GNOME/sources/json-glib/0.16/json-glib-0.16.2=
=2Etar.xz;name=3Darchive,Ross Burton <ross.burton@intel.com>)
['mailx', '12.5', 'N/A', 'BSD & MPL-1', 'console/network', 'http://heirloom=
=2Esourceforge.net/mailx.html', 'r2', 'autoconf-native automake-native libt=
ool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc vir=
tual/i586-poky-linux-compilerlibs virtual/libc  openssl', 'None', 'None', '=
Mailx is derived from Berkeley Mail and is intended provide the functionali=
ty of the POSIX mailx command with additional support for MIME, IMAP, POP3,=
 SMTP, and S/MIME.', 'ErrHostNoDir:/debian/pool/main/h/heirloom-mailx/:-:he=
irloom-mailx_12.5.orig.tar.gz:ftp.debian.org/debian/pool/main/h/heirloom-ma=
ilx/heirloom-mailx_12.5.orig.tar.gz', 'N/A', 'ftp://ftp.debian.org/debian/p=
ool/main/h/heirloom-mailx/heirloom-mailx_12.5.orig.tar.gz;name=3Darchive', =
'Kai Kang <kai.kang@windriver.com>', 'None']
inserted (mailx,12.5,N/A,BSD & MPL-1,console/network,r2,None,http://heirloo=
m.sourceforge.net/mailx.html,None,ErrHostNoDir:/debian/pool/main/h/heirloom=
-mailx/:-:heirloom-mailx_12.5.orig.tar.gz:ftp.debian.org/debian/pool/main/h=
/heirloom-mailx/heirloom-mailx_12.5.orig.tar.gz,autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  openssl,Mailx is d=
erived from Berkeley Mail and is intended provide the functionality of the =
POSIX mailx command with additional support for MIME, IMAP, POP3, SMTP, and=
 S/MIME.,N/A,ftp://ftp.debian.org/debian/pool/main/h/heirloom-mailx/heirloo=
m-mailx_12.5.orig.tar.gz;name=3Darchive,Kai Kang <kai.kang@windriver.com>)
['distcc', '3.1', 'N/A', 'GPLv2', 'devel', '', 'r0', 'pkgconfig-native auto=
conf-native automake-native libtool-native libtool-cross gnu-config-native =
 virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/l=
ibc  avahi update-rc.d-native base-passwd shadow-native shadow-sysroot shad=
ow gtk+ popt', 'None', 'None', 'distcc is a parallel build system that dist=
ributes compilation of C/C++/ObjC code across machines on a network.', 'Err=
HostNoDir:/files/:-:distcc-3.1.tar.bz2:distcc.googlecode.com/files/distcc-3=
=2E1.tar.bz2', 'N/A', 'http://distcc.googlecode.com/files/distcc-3.1.tar.bz=
2', 'Hongxu Jia <hongxu.jia@windriver.com>', 'None']
inserted (distcc,3.1,N/A,GPLv2,devel,r0,None,,None,ErrHostNoDir:/files/:-:d=
istcc-3.1.tar.bz2:distcc.googlecode.com/files/distcc-3.1.tar.bz2,pkgconfig-=
native autoconf-native automake-native libtool-native libtool-cross gnu-con=
fig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlib=
s virtual/libc  avahi update-rc.d-native base-passwd shadow-native shadow-s=
ysroot shadow gtk+ popt,distcc is a parallel build system that distributes =
compilation of C/C++/ObjC code across machines on a network.,N/A,http://dis=
tcc.googlecode.com/files/distcc-3.1.tar.bz2,Hongxu Jia <hongxu.jia@windrive=
r.com>)
['usbutils', '007', 'N/A', 'GPLv2+', 'base', 'http://www.linux-usb.org', 'r=
0', 'autoconf-native automake-native libtool-native libtool-cross gnu-confi=
g-native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  libusb zlib virtual/libiconv',=
 'None', 'None', 'Contains the lsusb utility for inspecting the devices con=
nected to the USB bus.', 'ErrHostNoDir:/pub/linux/utils/usb/usbutils/:-:usb=
utils-007.tar.gz:kernel.org/pub/linux/utils/usb/usbutils/usbutils-007.tar.g=
z', '006', 'http://kernel.org/pub/linux/utils/usb/usbutils/usbutils-007.tar=
=2Egz', 'Cristiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (usbutils,007,N/A,GPLv2+,base,r0,None,http://www.linux-usb.org,Non=
e,ErrHostNoDir:/pub/linux/utils/usb/usbutils/:-:usbutils-007.tar.gz:kernel.=
org/pub/linux/utils/usb/usbutils/usbutils-007.tar.gz,autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native virtual/gettext ge=
ttext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  libusb zlib virtual/libiconv,Contains the lsusb utility f=
or inspecting the devices connected to the USB bus.,006,http://kernel.org/p=
ub/linux/utils/usb/usbutils/usbutils-007.tar.gz,Cristiana Voicu <cristiana.=
voicu@intel.com>)
['weston', '1.4.0', 'N/A', 'MIT', 'base', 'http://wayland.freedesktop.org',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  libxkbcommon gdk-pixbuf pixman cairo glib=
-2.0 jpeg wayland virtual/egl pango base-passwd shadow-native shadow-sysroo=
t shadow virtual/egl udev mtdev drm udev virtual/mesa mtdev virtual/mesa vi=
rtual/libx11 libxcb libxcb libxcursor cairo', 'None', 'None', 'Weston is th=
e reference implementation of a Wayland compositor', 'ErrHostNoDir:/release=
s/:-:weston-1.4.0.tar.xz:wayland.freedesktop.org/releases/weston-1.4.0.tar.=
xz', 'N/A', 'http://wayland.freedesktop.org/releases/weston-1.4.0.tar.xz', =
'Ross Burton <ross.burton@intel.com>', 'None']
inserted (weston,1.4.0,N/A,MIT,base,r0,None,http://wayland.freedesktop.org,=
None,ErrHostNoDir:/releases/:-:weston-1.4.0.tar.xz:wayland.freedesktop.org/=
releases/weston-1.4.0.tar.xz,pkgconfig-native autoconf-native automake-nati=
ve libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-=
gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libxkbcommon gdk-pix=
buf pixman cairo glib-2.0 jpeg wayland virtual/egl pango base-passwd shadow=
-native shadow-sysroot shadow virtual/egl udev mtdev drm udev virtual/mesa =
mtdev virtual/mesa virtual/libx11 libxcb libxcb libxcursor cairo,Weston is =
the reference implementation of a Wayland compositor,N/A,http://wayland.fre=
edesktop.org/releases/weston-1.4.0.tar.xz,Ross Burton <ross.burton@intel.co=
m>)
['scrnsaverproto', '1.2.2', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', '=
r0', 'pkgconfig-native autoconf-native automake-native libtool-native libto=
ol-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-l=
inux-compilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org=
/enter_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protoc=
ol for the X Screen Saver extension.  This extension allows an external \\"=
screen saver\\" client to detect when the alternative image is to be displa=
yed and to provide the graphics.', 'ErrHostNoDir:/releases/individual/proto=
/:-:scrnsaverproto-1.2.2.tar.bz2:xorg.freedesktop.org/releases/individual/p=
roto/scrnsaverproto-1.2.2.tar.bz2', 'N/A', 'http://xorg.freedesktop.org/rel=
eases/individual/proto/scrnsaverproto-1.2.2.tar.bz2', 'Laurentiu Palcu <lau=
rentiu.palcu@intel.com>', 'None']
inserted (scrnsaverproto,1.2.2,N/A,MIT,x11/libs,r0,1,http://www.x.org,https=
://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases=
/individual/proto/:-:scrnsaverproto-1.2.2.tar.bz2:xorg.freedesktop.org/rele=
ases/individual/proto/scrnsaverproto-1.2.2.tar.bz2,pkgconfig-native autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  util-macros,This package provides the wire protocol for the X Screen Save=
r extension.  This extension allows an external \"screen saver\" client to =
detect when the alternative image is to be displayed and to provide the gra=
phics.,N/A,http://xorg.freedesktop.org/releases/individual/proto/scrnsaverp=
roto-1.2.2.tar.bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['at', '3.1.14', 'N/A', 'GPLv2+', 'base', '', 'r0', 'autoconf-native automa=
ke-native libtool-native libtool-cross gnu-config-native  virtual/i586-poky=
-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  flex flex-nat=
ive            ', 'None', 'None', 'At allows for commands to be run at a pa=
rticular time.  Batch will execute commands when the system load levels dro=
p to a particular level.', 'ErrHostNoDir:/debian/pool/main/a/at/:-:at_3.1.1=
4.orig.tar.gz:ftp.debian.org/debian/pool/main/a/at/at_3.1.14.orig.tar.gz', =
'N/A', 'ftp://ftp.debian.org/debian/pool/main/a/at/at_3.1.14.orig.tar.gz', =
'Cristiana Voicu <cristiana.voicu@intel.com>', 'None']
inserted (at,3.1.14,N/A,GPLv2+,base,r0,None,,None,ErrHostNoDir:/debian/pool=
/main/a/at/:-:at_3.1.14.orig.tar.gz:ftp.debian.org/debian/pool/main/a/at/at=
_3.1.14.orig.tar.gz,autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  flex flex-native            ,At allows for com=
mands to be run at a particular time.  Batch will execute commands when the=
 system load levels drop to a particular level.,N/A,ftp://ftp.debian.org/de=
bian/pool/main/a/at/at_3.1.14.orig.tar.gz,Cristiana Voicu <cristiana.voicu@=
intel.com>)
['file', '5.16', 'N/A', 'BSD', 'console/utils', 'http://www.darwinsys.com/f=
ile/', 'r0', 'autoconf-native automake-native libtool-native libtool-cross =
gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-comp=
ilerlibs virtual/libc  zlib file-native', 'None', 'None', 'File attempts to=
 classify files depending on their contents and prints a description if a m=
atch is found.', 'ErrHostNoDir:/pub/file/:-:file-5.16.tar.gz:ftp.astron.com=
/pub/file/file-5.16.tar.gz', 'N/A', 'ftp://ftp.astron.com/pub/file/file-5.1=
6.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (file,5.16,N/A,BSD,console/utils,r0,None,http://www.darwinsys.com/=
file/,None,ErrHostNoDir:/pub/file/:-:file-5.16.tar.gz:ftp.astron.com/pub/fi=
le/file-5.16.tar.gz,autoconf-native automake-native libtool-native libtool-=
cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linu=
x-compilerlibs virtual/libc  zlib file-native,File attempts to classify fil=
es depending on their contents and prints a description if a match is found=
=2E,N/A,ftp://ftp.astron.com/pub/file/file-5.16.tar.gz,Robert Yang <liezhi.=
yang@windriver.com>)
['curl', '7.35.0', 'N/A', 'MIT', 'console/network', 'http://curl.haxx.se/',=
 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native lib=
tool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc  zlib gnutls', 'http://curl.haxx.se/mail/l=
ist.cgi?list=3Dcurl-tracker', 'None', 'Command line tool and library for cl=
ient-side URL transfers.', 'ErrHostNoDir:/download/:-:curl-7.35.0.tar.bz2:c=
url.haxx.se/download/curl-7.35.0.tar.bz2', 'N/A', 'http://curl.haxx.se/down=
load/curl-7.35.0.tar.bz2', 'Cristiana Voicu <cristiana.voicu@intel.com>', '=
None']
inserted (curl,7.35.0,N/A,MIT,console/network,r0,None,http://curl.haxx.se/,=
http://curl.haxx.se/mail/list.cgi?list=3Dcurl-tracker,ErrHostNoDir:/downloa=
d/:-:curl-7.35.0.tar.bz2:curl.haxx.se/download/curl-7.35.0.tar.bz2,pkgconfi=
g-native autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  zlib gnutls,Command line tool and library for client-side=
 URL transfers.,N/A,http://curl.haxx.se/download/curl-7.35.0.tar.bz2,Cristi=
ana Voicu <cristiana.voicu@intel.com>)
['libenv-perl', '1.04', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', 'http://s=
earch.cpan.org/~flora/Env/', 'r0', ' virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc   perl perl-native', 'None', 'None'=
, 'Perl maintains environment variables in a special hash named %ENV. For w=
hen this access method is inconvenient, the Perl module Env allows environm=
ent variables to be treated as scalar or array variables.', 'ErrHostNoDir:/=
CPAN/authors/id/F/FL/FLORA/:-:Env-1.04.tar.gz:search.cpan.org/CPAN/authors/=
id/F/FL/FLORA/Env-1.04.tar.gz', 'N/A', 'http://search.cpan.org/CPAN/authors=
/id/F/FL/FLORA/Env-1.04.tar.gz', 'Saul Wold <sgw@linux.intel.com>', 'None']
inserted (libenv-perl,1.04,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,None,http://=
search.cpan.org/~flora/Env/,None,ErrHostNoDir:/CPAN/authors/id/F/FL/FLORA/:=
-:Env-1.04.tar.gz:search.cpan.org/CPAN/authors/id/F/FL/FLORA/Env-1.04.tar.g=
z, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   perl perl-native,Perl maintains environment variables in a special =
hash named %ENV. For when this access method is inconvenient, the Perl modu=
le Env allows environment variables to be treated as scalar or array variab=
les.,N/A,http://search.cpan.org/CPAN/authors/id/F/FL/FLORA/Env-1.04.tar.gz,=
Saul Wold <sgw@linux.intel.com>)
['bzip2', '1.0.6', 'N/A', 'bzip2', 'console/utils', 'http://www.bzip.org/',=
 'r5', 'autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc   virtual/update-alternatives', 'None', 'None', 'bzip2 comp=
resses files using the Burrows-Wheeler block-sorting text compression algor=
ithm, and Huffman coding. Compression is generally considerably better than=
 that achieved by more conventional LZ77/LZ78-based compressors, and approa=
ches the performance of the PPM family of statistical compressors.', 'ErrHo=
stNoDir:/1.0.6/bzip2-1.0.6.tar.gz:1.0.6:-:www.bzip.org/1.0.6/bzip2-1.0.6.ta=
r.gz', 'N/A', 'http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz', 'Chen Qi <Qi.=
Chen@windriver.com>', 'None']
inserted (bzip2,1.0.6,N/A,bzip2,console/utils,r5,None,http://www.bzip.org/,=
None,ErrHostNoDir:/1.0.6/bzip2-1.0.6.tar.gz:1.0.6:-:www.bzip.org/1.0.6/bzip=
2-1.0.6.tar.gz,autoconf-native automake-native libtool-native libtool-cross=
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
ake system.', 'ErrHostNoDir:/files/v2.8/cmake-2.8.12.2.tar.gz:v2.8:-:www.cm=
ake.org/files/v2.8/cmake-2.8.12.2.tar.gz', 'N/A', 'http://www.cmake.org/fil=
es/v2.8/cmake-2.8.12.2.tar.gz', 'Paul Eggleton <paul.eggleton@linux.intel.c=
om>', 'None']
inserted (cmake,2.8.12.2,N/A,BSD,console/utils,r0,None,http://www.cmake.org=
/,http://public.kitware.com/Bug/my_view_page.php,ErrHostNoDir:/files/v2.8/c=
make-2.8.12.2.tar.gz:v2.8:-:www.cmake.org/files/v2.8/cmake-2.8.12.2.tar.gz,=
cmake-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc   curl expat zlib libarchive,Cross-platform, open-sour=
ce make system.,N/A,http://www.cmake.org/files/v2.8/cmake-2.8.12.2.tar.gz,P=
aul Eggleton <paul.eggleton@linux.intel.com>)
['nasm', '2.11', 'N/A', 'BSD-2-Clause', 'devel', '', 'r0', 'autoconf-native=
 automake-native libtool-native libtool-cross gnu-config-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  groff-=
native', 'None', 'None', 'General-purpose x86 assembler.', 'ErrHostNoDir:/p=
ub/nasm/releasebuilds/2.11/nasm-2.11.tar.bz2:2.11:-:www.nasm.us/pub/nasm/re=
leasebuilds/2.11/nasm-2.11.tar.bz2', 'N/A', 'http://www.nasm.us/pub/nasm/re=
leasebuilds/2.11/nasm-2.11.tar.bz2', 'Laurentiu Palcu <laurentiu.palcu@inte=
l.com>', 'None']
inserted (nasm,2.11,N/A,BSD-2-Clause,devel,r0,None,,None,ErrHostNoDir:/pub/=
nasm/releasebuilds/2.11/nasm-2.11.tar.bz2:2.11:-:www.nasm.us/pub/nasm/relea=
sebuilds/2.11/nasm-2.11.tar.bz2,autoconf-native automake-native libtool-nat=
ive libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  groff-native,General-purpose x86 a=
ssembler.,N/A,http://www.nasm.us/pub/nasm/releasebuilds/2.11/nasm-2.11.tar.=
bz2,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['gettext', '0.18.3.2', 'N/A', 'GPLv3+ & LGPL-2.1+', 'libs', 'http://www.gn=
u.org/software/gettext/gettext.html', 'r0', 'autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  gettext-native virtua=
l/libiconv expat', 'None', 'None', 'GNU gettext is a set of tools that prov=
ides a framework to help other programs produce multi-lingual messages. The=
se tools include a set of conventions about how programs should be written =
to support message catalogs, a directory and file naming organization for t=
he message catalogs themselves, a runtime library supporting the retrieval =
of translated messages, and a few stand-alone programs to massage in variou=
s ways the sets of translatable and already translated strings.', 'ErrHostN=
oDir:/gnu/gettext/:-:gettext-0.18.3.2.tar.gz:ftp.gnu.org/gnu/gettext/gettex=
t-0.18.3.2.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/gettext/gettext-0.18.3.2.=
tar.gz', 'Wenzong Fan <wenzong.fan@windriver.com>', 'None']
inserted (gettext,0.18.3.2,N/A,GPLv3+ & LGPL-2.1+,libs,r0,None,http://www.g=
nu.org/software/gettext/gettext.html,None,ErrHostNoDir:/gnu/gettext/:-:gett=
ext-0.18.3.2.tar.gz:ftp.gnu.org/gnu/gettext/gettext-0.18.3.2.tar.gz,autocon=
f-native automake-native libtool-native libtool-cross gnu-config-native  vi=
rtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc=
  gettext-native virtual/libiconv expat,GNU gettext is a set of tools that =
provides a framework to help other programs produce multi-lingual messages.=
 These tools include a set of conventions about how programs should be writ=
ten to support message catalogs, a directory and file naming organization f=
or the message catalogs themselves, a runtime library supporting the retrie=
val of translated messages, and a few stand-alone programs to massage in va=
rious ways the sets of translatable and already translated strings.,N/A,ftp=
://ftp.gnu.org/gnu/gettext/gettext-0.18.3.2.tar.gz,Wenzong Fan <wenzong.fan=
@windriver.com>)
['matchbox-keyboard', '0.0+gitAUTOINC+217f1bfe14', '0.0+gitAUTOINC+0899b02'=
, 'LGPLv2.1', 'x11', 'http://matchbox-project.org', 'r4', 'pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/i5=
86-poky-linux-compilerlibs virtual/libc  qemu-native libfakekey expat libxf=
t gtk+ matchbox-panel-2', 'http://bugzilla.yoctoproject.org/', 'None', 'Mat=
chbox virtual keyboard for X11.', 'UPDATE', 'N/A', 'git://git.yoctoproject.=
org/matchbox-keyboard;branch=3Dmatchbox-keyboard-0-1', 'Valentin Popa <vale=
ntin.popa@intel.com>', 'None']
inserted (matchbox-keyboard,0.0+gitAUTOINC+217f1bfe14,0.0+gitAUTOINC+0899b0=
2,LGPLv2.1,x11,r4,None,http://matchbox-project.org,http://bugzilla.yoctopro=
ject.org/,UPDATE,pkgconfig-native autoconf-native automake-native libtool-n=
ative libtool-cross gnu-config-native virtual/gettext gettext-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  q=
emu-native libfakekey expat libxft gtk+ matchbox-panel-2,Matchbox virtual k=
eyboard for X11.,N/A,git://git.yoctoproject.org/matchbox-keyboard;branch=3D=
matchbox-keyboard-0-1,Valentin Popa <valentin.popa@intel.com>)
['libtimedate-perl', '2.30', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', '', =
'r0', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc   perl perl-native', 'None', 'None', 'Perl modules useful for ma=
nipulating date and time information.', 'ErrHostNoDir:/CPAN/authors/id/G/GB=
/GBARR/:-:TimeDate-2.30.tar.gz:search.cpan.org/CPAN/authors/id/G/GB/GBARR/T=
imeDate-2.30.tar.gz', 'N/A', 'http://search.cpan.org/CPAN/authors/id/G/GB/G=
BARR/TimeDate-2.30.tar.gz', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', =
'None']
inserted (libtimedate-perl,2.30,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,None,,N=
one,ErrHostNoDir:/CPAN/authors/id/G/GB/GBARR/:-:TimeDate-2.30.tar.gz:search=
=2Ecpan.org/CPAN/authors/id/G/GB/GBARR/TimeDate-2.30.tar.gz, virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl=
-native,Perl modules useful for manipulating date and time information.,N/A=
,http://search.cpan.org/CPAN/authors/id/G/GB/GBARR/TimeDate-2.30.tar.gz,Lau=
rentiu Palcu <laurentiu.palcu@intel.com>)
['glproto', '1.4.17', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/enter=
_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol for=
 the OpenGL-related extensions, used to enable the rendering of application=
s using OpenGL.', 'ErrHostNoDir:/releases/individual/proto/:-:glproto-1.4.1=
7.tar.bz2:xorg.freedesktop.org/releases/individual/proto/glproto-1.4.17.tar=
=2Ebz2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/glpr=
oto-1.4.17.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (glproto,1.4.17,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://bug=
s.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/indiv=
idual/proto/:-:glproto-1.4.17.tar.bz2:xorg.freedesktop.org/releases/individ=
ual/proto/glproto-1.4.17.tar.bz2,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros,This=
 package provides the wire protocol for the OpenGL-related extensions, used=
 to enable the rendering of applications using OpenGL.,N/A,http://xorg.free=
desktop.org/releases/individual/proto/glproto-1.4.17.tar.bz2,Ross Burton <r=
oss.burton@intel.com>)
['sysklogd', '1.5', 'N/A', 'GPLv2+ & BSD', 'base', 'http://www.infodrom.org=
/projects/sysklogd/', 'r7', ' virtual/i586-poky-linux-gcc virtual/i586-poky=
-linux-compilerlibs virtual/libc   update-rc.d-native virtual/update-altern=
atives', 'None', 'None', 'The sysklogd package implements two system log da=
emons: syslogd, klogd', 'ErrHostNoDir:/projects/sysklogd/download/:-:sysklo=
gd-1.5.tar.gz:www.infodrom.org/projects/sysklogd/download/sysklogd-1.5.tar.=
gz', 'N/A', 'http://www.infodrom.org/projects/sysklogd/download/sysklogd-1.=
5.tar.gz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (sysklogd,1.5,N/A,GPLv2+ & BSD,base,r7,None,http://www.infodrom.or=
g/projects/sysklogd/,None,ErrHostNoDir:/projects/sysklogd/download/:-:syskl=
ogd-1.5.tar.gz:www.infodrom.org/projects/sysklogd/download/sysklogd-1.5.tar=
=2Egz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vir=
tual/libc   update-rc.d-native virtual/update-alternatives,The sysklogd pac=
kage implements two system log daemons: syslogd, klogd,N/A,http://www.infod=
rom.org/projects/sysklogd/download/sysklogd-1.5.tar.gz,Chen Qi <Qi.Chen@win=
driver.com>)
['stat', '3.3', 'N/A', 'GPLv2', 'console/utils', '', 'r0', ' virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None',=
 'None', 'Displays all information about a file that the stat() call provid=
es and all information about a filesystem that statfs() provides.', 'ErrHos=
tNoDir:/pub/Linux/utils/file/:-:stat-3.3.tar.gz:metalab.unc.edu/pub/Linux/u=
tils/file/stat-3.3.tar.gz', 'N/A', 'ftp://metalab.unc.edu/pub/Linux/utils/f=
ile/stat-3.3.tar.gz', 'Chen Qi <Qi.Chen@windriver.com>', 'None']
inserted (stat,3.3,N/A,GPLv2,console/utils,r0,None,,None,ErrHostNoDir:/pub/=
Linux/utils/file/:-:stat-3.3.tar.gz:metalab.unc.edu/pub/Linux/utils/file/st=
at-3.3.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compiler=
libs virtual/libc  ,Displays all information about a file that the stat() c=
all provides and all information about a filesystem that statfs() provides.=
,N/A,ftp://metalab.unc.edu/pub/Linux/utils/file/stat-3.3.tar.gz,Chen Qi <Qi=
=2EChen@windriver.com>)
['hostap-conf', '1.0', 'INVALID', 'GPLv2', 'kernel/modules', '', 'r15', ' '=
, 'None', 'None', "PCMCIA-cs configuration files for wireless LAN cards bas=
ed on Intersil's Prism2/2.5/3 chipset.", 'MATCH', 'N/A', 'file://hostap_cs.=
modalias', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (hostap-conf,1.0,INVALID,GPLv2,kernel/modules,r15,None,,None,MATCH=
, ,PCMCIA-cs configuration files for wireless LAN cards based on Intersil's=
 Prism2/2.5/3 chipset.,N/A,file://hostap_cs.modalias,Cristian Iorga <cristi=
an.iorga@intel.com>)
['inputproto', '2.3', 'N/A', 'MIT & MIT-style', 'x11/libs', 'http://www.x.o=
rg', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-m=
acros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', '1', '=
This package provides the wire protocol for the X Input extension.  The ext=
ension supports input devices other then the core X keyboard and pointer.',=
 'ErrHostNoDir:/releases/individual/proto/:-:inputproto-2.3.tar.bz2:xorg.fr=
eedesktop.org/releases/individual/proto/inputproto-2.3.tar.bz2', '2.2.99.1'=
, 'http://xorg.freedesktop.org/releases/individual/proto/inputproto-2.3.tar=
=2Ebz2', 'Ross Burton <ross.burton@intel.com>', '2.2.99.1 is unstable']
inserted (inputproto,2.3,N/A,MIT & MIT-style,x11/libs,r0,1,http://www.x.org=
,https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/re=
leases/individual/proto/:-:inputproto-2.3.tar.bz2:xorg.freedesktop.org/rele=
ases/individual/proto/inputproto-2.3.tar.bz2,pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native virtual/g=
ettext gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-=
compilerlibs virtual/libc  util-macros,This package provides the wire proto=
col for the X Input extension.  The extension supports input devices other =
then the core X keyboard and pointer.,2.2.99.1,http://xorg.freedesktop.org/=
releases/individual/proto/inputproto-2.3.tar.bz2,Ross Burton <ross.burton@i=
ntel.com>)
['modutils-initscripts', '1.0', 'INVALID', 'PD', 'base', '', 'r7', ' virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   u=
pdate-rc.d-native', 'None', 'None', 'Initscript for auto-loading kernel mod=
ules on boot.', 'MATCH', 'N/A', 'file://modutils.sh', 'Saul Wold <sgw@linux=
=2Eintel.com>', 'None']
inserted (modutils-initscripts,1.0,INVALID,PD,base,r7,None,,None,MATCH, vir=
tual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc =
  update-rc.d-native,Initscript for auto-loading kernel modules on boot.,N/=
A,file://modutils.sh,Saul Wold <sgw@linux.intel.com>)
['lsbtest', '1.0', 'INVALID', 'GPLv2', 'console/utils', '', 'r3', ' virtual=
/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', =
'None', 'None', 'Automates Linux Standard Base (LSB) tests.', 'MATCH', '1.0=
', 'file://LSB_Test.sh', 'Yi Zhao <yi.zhao@windriver.com>', 'None']
inserted (lsbtest,1.0,INVALID,GPLv2,console/utils,r3,None,,None,MATCH, virt=
ual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  =
,Automates Linux Standard Base (LSB) tests.,1.0,file://LSB_Test.sh,Yi Zhao =
<yi.zhao@windriver.com>)
['intltool', '0.50.2', 'N/A', 'GPLv2', 'devel', '', 'r0', 'pkgconfig-native=
 autoconf-native automake-native libtool-native libtool-cross gnu-config-na=
tive  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virt=
ual/libc  libxml-parser-perl-native perl-native', 'None', 'None', 'Utility =
scripts for internationalizing XML.', 'ErrHostNoDir:/intltool/trunk/0.50.2/=
+download/:0.50.2:intltool-0.50.2.tar.gz:launchpad.net/intltool/trunk/0.50.=
2/+download/intltool-0.50.2.tar.gz', 'N/A', 'http://launchpad.net/intltool/=
trunk/0.50.2/+download/intltool-0.50.2.tar.gz', 'Laurentiu Palcu <laurentiu=
=2Epalcu@intel.com>', 'None']
inserted (intltool,0.50.2,N/A,GPLv2,devel,r0,None,,None,ErrHostNoDir:/intlt=
ool/trunk/0.50.2/+download/:0.50.2:intltool-0.50.2.tar.gz:launchpad.net/int=
ltool/trunk/0.50.2/+download/intltool-0.50.2.tar.gz,pkgconfig-native autoco=
nf-native automake-native libtool-native libtool-cross gnu-config-native  v=
irtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/lib=
c  libxml-parser-perl-native perl-native,Utility scripts for internationali=
zing XML.,N/A,http://launchpad.net/intltool/trunk/0.50.2/+download/intltool=
-0.50.2.tar.gz,Laurentiu Palcu <laurentiu.palcu@intel.com>)
['libogg', '1.3.1', 'N/A', 'BSD', 'libs', 'http://xiph.org/', 'r0', 'pkgcon=
fig-native autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  ', 'https://trac.xiph.org/newticket', 'None', 'libogg i=
s the bitstream and framing library for the Ogg project. It provides functi=
ons which are necessary to codec libraries like libvorbis.', 'ErrHostNoDir:=
/releases/ogg/:-:libogg-1.3.1.tar.xz:downloads.xiph.org/releases/ogg/libogg=
-1.3.1.tar.xz', 'N/A', 'http://downloads.xiph.org/releases/ogg/libogg-1.3.1=
=2Etar.xz', 'Cristian Iorga <cristian.iorga@intel.com>', 'None']
inserted (libogg,1.3.1,N/A,BSD,libs,r0,None,http://xiph.org/,https://trac.x=
iph.org/newticket,ErrHostNoDir:/releases/ogg/:-:libogg-1.3.1.tar.xz:downloa=
ds.xiph.org/releases/ogg/libogg-1.3.1.tar.xz,pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,lib=
ogg is the bitstream and framing library for the Ogg project. It provides f=
unctions which are necessary to codec libraries like libvorbis.,N/A,http://=
downloads.xiph.org/releases/ogg/libogg-1.3.1.tar.xz,Cristian Iorga <cristia=
n.iorga@intel.com>)
['portmap', '6.0', 'N/A', 'BSD', 'console/network', 'http://neil.brown.name=
/portmap/', 'r9', ' virtual/i586-poky-linux-gcc virtual/i586-poky-linux-com=
pilerlibs virtual/libc  virtual/fakeroot-native update-rc.d-native tcp-wrap=
pers', 'None', 'None', 'RPC program number mapper.', 'ErrHostNoDir:/Network=
ing/Tools/Miscellanenous/:-:portmap-6.0.tgz:www.sourcefiles.org/Networking/=
Tools/Miscellanenous/portmap-6.0.tgz', 'N/A', 'http://www.sourcefiles.org/N=
etworking/Tools/Miscellanenous/portmap-6.0.tgz', 'Saul Wold <sgw@linux.inte=
l.com>', 'None']
inserted (portmap,6.0,N/A,BSD,console/network,r9,None,http://neil.brown.nam=
e/portmap/,None,ErrHostNoDir:/Networking/Tools/Miscellanenous/:-:portmap-6.=
0.tgz:www.sourcefiles.org/Networking/Tools/Miscellanenous/portmap-6.0.tgz, =
virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/li=
bc  virtual/fakeroot-native update-rc.d-native tcp-wrappers,RPC program num=
ber mapper.,N/A,http://www.sourcefiles.org/Networking/Tools/Miscellanenous/=
portmap-6.0.tgz,Saul Wold <sgw@linux.intel.com>)
['libffi', '3.0.13', 'N/A', 'MIT', 'base', '', 'r0', 'autoconf-native autom=
ake-native libtool-native libtool-cross gnu-config-native  virtual/i586-pok=
y-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', '=
None', "The `libffi' library provides a portable, high level programming in=
terface to various calling conventions.  This allows a programmer to call a=
ny function specified by a call interface description at run time. FFI stan=
ds for Foreign Function Interface.  A foreign function interface is the pop=
ular name for the interface that allows code written in one language to cal=
l code written in another language.  The `libffi' library really only provi=
des the lowest, machine dependent layer of a fully featured foreign functio=
n interface.  A layer must exist above `libffi' that handles type conversio=
ns for values passed between the two languages.", 'ErrHostNoDir:/pub/libffi=
/:-:libffi-3.0.13.tar.gz:sourceware.org/pub/libffi/libffi-3.0.13.tar.gz', '=
N/A', 'ftp://sourceware.org/pub/libffi/libffi-3.0.13.tar.gz', 'Saul Wold <s=
gw@linux.intel.com>', 'None']
inserted (libffi,3.0.13,N/A,MIT,base,r0,None,,None,ErrHostNoDir:/pub/libffi=
/:-:libffi-3.0.13.tar.gz:sourceware.org/pub/libffi/libffi-3.0.13.tar.gz,aut=
oconf-native automake-native libtool-native libtool-cross gnu-config-native=
  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/=
libc  ,The `libffi' library provides a portable, high level programming int=
erface to various calling conventions.  This allows a programmer to call an=
y function specified by a call interface description at run time. FFI stand=
s for Foreign Function Interface.  A foreign function interface is the popu=
lar name for the interface that allows code written in one language to call=
 code written in another language.  The `libffi' library really only provid=
es the lowest, machine dependent layer of a fully featured foreign function=
 interface.  A layer must exist above `libffi' that handles type conversion=
s for values passed between the two languages.,N/A,ftp://sourceware.org/pub=
/libffi/libffi-3.0.13.tar.gz,Saul Wold <sgw@linux.intel.com>)
['readline', '6.3', 'N/A', 'GPLv3+', 'libs', '', 'r0', 'autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc   ncurses',=
 'None', 'None', 'The GNU Readline library provides a set of functions for =
use by applications that allow users to edit command lines as they are type=
d in. Both Emacs and vi editing modes are available. The Readline library i=
ncludes  additional functions to maintain a list of previously-entered comm=
and lines, to recall and perhaps reedit those   lines, and perform csh-like=
 history expansion on previous commands.', 'ErrHostNoDir:/gnu/readline/:-:r=
eadline-6.3.tar.gz:ftp.gnu.org/gnu/readline/readline-6.3.tar.gz', 'N/A', 'f=
tp://ftp.gnu.org/gnu/readline/readline-6.3.tar.gz;name=3Darchive', 'Hongxu =
Jia <hongxu.jia@windriver.com>', 'None']
inserted (readline,6.3,N/A,GPLv3+,libs,r0,None,,None,ErrHostNoDir:/gnu/read=
line/:-:readline-6.3.tar.gz:ftp.gnu.org/gnu/readline/readline-6.3.tar.gz,au=
toconf-native automake-native libtool-native libtool-cross gnu-config-nativ=
e  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual=
/libc   ncurses,The GNU Readline library provides a set of functions for us=
e by applications that allow users to edit command lines as they are typed =
in. Both Emacs and vi editing modes are available. The Readline library inc=
ludes  additional functions to maintain a list of previously-entered comman=
d lines, to recall and perhaps reedit those   lines, and perform csh-like h=
istory expansion on previous commands.,N/A,ftp://ftp.gnu.org/gnu/readline/r=
eadline-6.3.tar.gz;name=3Darchive,Hongxu Jia <hongxu.jia@windriver.com>)
['slang', '2.2.4', 'N/A', 'GPLv2', 'libs', 'http://www.jedsoft.org/slang/',=
 'r12', 'autoconf-native automake-native libtool-native libtool-cross gnu-c=
onfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerl=
ibs virtual/libc  pcre', 'None', 'None', "S-Lang is an interpreted language=
 and a programming library.  The S-Lang language was designed so that it ca=
n be easily embedded into a program to provide the program with a powerful =
extension language. The S-Lang library, provided in this package, provides =
the S-Lang extension language.  S-Lang's syntax resembles C, which makes it=
 easy to recode S-Lang procedures in C if you need to.", 'ErrHostNoDir:/pub=
/davis/slang/v2.2/slang-2.2.4.tar.bz2:v2.2:-:space.mit.edu/pub/davis/slang/=
v2.2/slang-2.2.4.tar.bz2', 'N/A', 'ftp://space.mit.edu/pub/davis/slang/v2.2=
/slang-2.2.4.tar.bz2', 'Kai Kang <kai.kang@windriver.com>', 'None']
inserted (slang,2.2.4,N/A,GPLv2,libs,r12,None,http://www.jedsoft.org/slang/=
,None,ErrHostNoDir:/pub/davis/slang/v2.2/slang-2.2.4.tar.bz2:v2.2:-:space.m=
it.edu/pub/davis/slang/v2.2/slang-2.2.4.tar.bz2,autoconf-native automake-na=
tive libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linu=
x-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  pcre,S-Lang is an =
interpreted language and a programming library.  The S-Lang language was de=
signed so that it can be easily embedded into a program to provide the prog=
ram with a powerful extension language. The S-Lang library, provided in thi=
s package, provides the S-Lang extension language.  S-Lang's syntax resembl=
es C, which makes it easy to recode S-Lang procedures in C if you need to.,=
N/A,ftp://space.mit.edu/pub/davis/slang/v2.2/slang-2.2.4.tar.bz2,Kai Kang <=
kai.kang@windriver.com>)
['sato-icon-theme', '0.4.1', 'N/A', 'CC-BY-SA-3.0', 'x11', 'http://www.o-ha=
nd.com', 'r6', 'pkgconfig-native autoconf-native automake-native libtool-na=
tive gnu-config-native  icon-naming-utils-native libxml-simple-perl-native =
hicolor-icon-theme gtk-update-icon-cache-native perl-native', 'http://bugzi=
lla.yoctoproject.org/', 'None', 'Sato icon theme.', 'ErrHostNoDir:/releases=
/sato/:-:sato-icon-theme-0.4.1.tar.gz:pokylinux.org/releases/sato/sato-icon=
-theme-0.4.1.tar.gz', 'N/A', 'http://pokylinux.org/releases/sato/sato-icon-=
theme-0.4.1.tar.gz', 'Valentin Popa <valentin.popa@intel.com>', 'None']
inserted (sato-icon-theme,0.4.1,N/A,CC-BY-SA-3.0,x11,r6,None,http://www.o-h=
and.com,http://bugzilla.yoctoproject.org/,ErrHostNoDir:/releases/sato/:-:sa=
to-icon-theme-0.4.1.tar.gz:pokylinux.org/releases/sato/sato-icon-theme-0.4.=
1.tar.gz,pkgconfig-native autoconf-native automake-native libtool-native gn=
u-config-native  icon-naming-utils-native libxml-simple-perl-native hicolor=
-icon-theme gtk-update-icon-cache-native perl-native,Sato icon theme.,N/A,h=
ttp://pokylinux.org/releases/sato/sato-icon-theme-0.4.1.tar.gz,Valentin Pop=
a <valentin.popa@intel.com>)
['mobile-broadband-provider-info', '20120614+gitrAUTOINC+4ed19e11c2', '2012=
0614+gitrAUTOINC+35df25e', 'PD', 'network', '', 'r0', 'autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', 'None', =
'1', 'Mobile Broadband Service Provider Database.', 'UPDATE', 'N/A', 'git:/=
/git.gnome.org/mobile-broadband-provider-info', 'Cristiana Voicu <cristiana=
=2Evoicu@intel.com>', 'None']
inserted (mobile-broadband-provider-info,20120614+gitrAUTOINC+4ed19e11c2,20=
120614+gitrAUTOINC+35df25e,PD,network,r0,1,,None,UPDATE,autoconf-native aut=
omake-native libtool-native libtool-cross gnu-config-native  virtual/i586-p=
oky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,Mobile Br=
oadband Service Provider Database.,N/A,git://git.gnome.org/mobile-broadband=
-provider-info,Cristiana Voicu <cristiana.voicu@intel.com>)
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
['dmxproto', '2.3.1', 'N/A', 'MIT', 'x11/libs', 'http://www.x.org', 'r0', '=
pkgconfig-native autoconf-native automake-native libtool-native libtool-cro=
ss gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-c=
ompilerlibs virtual/libc  util-macros', 'https://bugs.freedesktop.org/enter=
_bug.cgi?product=3Dxorg', '1', 'This package provides the wire protocol for=
 the DMX extension.  The DMX extension provides support for communication w=
ith and control of Xdmx server.  Attributes of the Xdmx server and of the b=
ack-end screens attached to the server can be queried and modified via this=
 protocol.', 'ErrHostNoDir:/releases/individual/proto/:-:dmxproto-2.3.1.tar=
=2Ebz2:xorg.freedesktop.org/releases/individual/proto/dmxproto-2.3.1.tar.bz=
2', 'N/A', 'http://xorg.freedesktop.org/releases/individual/proto/dmxproto-=
2.3.1.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (dmxproto,2.3.1,N/A,MIT,x11/libs,r0,1,http://www.x.org,https://bug=
s.freedesktop.org/enter_bug.cgi?product=3Dxorg,ErrHostNoDir:/releases/indiv=
idual/proto/:-:dmxproto-2.3.1.tar.bz2:xorg.freedesktop.org/releases/individ=
ual/proto/dmxproto-2.3.1.tar.bz2,pkgconfig-native autoconf-native automake-=
native libtool-native libtool-cross gnu-config-native  virtual/i586-poky-li=
nux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros,This=
 package provides the wire protocol for the DMX extension.  The DMX extensi=
on provides support for communication with and control of Xdmx server.  Att=
ributes of the Xdmx server and of the back-end screens attached to the serv=
er can be queried and modified via this protocol.,N/A,http://xorg.freedeskt=
op.org/releases/individual/proto/dmxproto-2.3.1.tar.bz2,Ross Burton <ross.b=
urton@intel.com>)
['diffutils', '3.3', 'N/A', 'GPLv3+', 'base', '', 'r0', 'autoconf-native au=
tomake-native libtool-native libtool-cross gnu-config-native virtual/gettex=
t gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compi=
lerlibs virtual/libc   virtual/update-alternatives', 'None', 'None', 'Diffu=
tils contains the GNU diff, diff3, sdiff, and cmp utilities. These programs=
 are usually used for creating patch files.', 'ErrHostNoDir:/gnu/diffutils/=
:-:diffutils-3.3.tar.xz:ftp.gnu.org/gnu/diffutils/diffutils-3.3.tar.xz', 'N=
/A', 'ftp://ftp.gnu.org/gnu/diffutils/diffutils-3.3.tar.xz', 'Chong Lu <Cho=
ng.Lu@windriver.com>', 'None']
inserted (diffutils,3.3,N/A,GPLv3+,base,r0,None,,None,ErrHostNoDir:/gnu/dif=
futils/:-:diffutils-3.3.tar.xz:ftp.gnu.org/gnu/diffutils/diffutils-3.3.tar.=
xz,autoconf-native automake-native libtool-native libtool-cross gnu-config-=
native virtual/gettext gettext-native  virtual/i586-poky-linux-gcc virtual/=
i586-poky-linux-compilerlibs virtual/libc   virtual/update-alternatives,Dif=
futils contains the GNU diff, diff3, sdiff, and cmp utilities. These progra=
ms are usually used for creating patch files.,N/A,ftp://ftp.gnu.org/gnu/dif=
futils/diffutils-3.3.tar.xz,Chong Lu <Chong.Lu@windriver.com>)
['pseudo', '1.5.1', 'N/A', 'LGPL2.1', 'base', 'http://git.yoctoproject.org/=
cgit/cgit.cgi/pseudo', 'r4', ' virtual/i586-poky-linux-gcc virtual/i586-pok=
y-linux-compilerlibs virtual/libc  sqlite3', 'None', 'None', 'Pseudo gives =
fake root capabilities to a normal user.', 'ErrHostNoDir:/downloads/pseudo/=
:-:pseudo-1.5.1.tar.bz2:www.yoctoproject.org/downloads/pseudo/pseudo-1.5.1.=
tar.bz2', 'N/A', 'http://www.yoctoproject.org/downloads/pseudo/pseudo-1.5.1=
=2Etar.bz2', 'Mark Hatle <mark.hatle@windriver.com>', 'None']
inserted (pseudo,1.5.1,N/A,LGPL2.1,base,r4,None,http://git.yoctoproject.org=
/cgit/cgit.cgi/pseudo,None,ErrHostNoDir:/downloads/pseudo/:-:pseudo-1.5.1.t=
ar.bz2:www.yoctoproject.org/downloads/pseudo/pseudo-1.5.1.tar.bz2, virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  sqli=
te3,Pseudo gives fake root capabilities to a normal user.,N/A,http://www.yo=
ctoproject.org/downloads/pseudo/pseudo-1.5.1.tar.bz2,Mark Hatle <mark.hatle=
@windriver.com>)
['pulseaudio', '5.0', 'N/A', 'GPLv2+ & LGPLv2.1', 'libs/multimedia', 'http:=
//www.pulseaudio.org', 'r0', 'pkgconfig-native autoconf-native automake-nat=
ive libtool-native libtool-cross gnu-config-native virtual/gettext gettext-=
native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs vi=
rtual/libc  libatomics-ops liboil libsamplerate0 libsndfile1 libtool udev a=
lsa-lib glib-2.0 dbus gconf json-c gdbm speex libxml-parser-perl-native per=
l-native base-passwd shadow-native shadow-sysroot shadow avahi bluez4 sbc v=
irtual/libx11 libxtst libice libsm libxcb', 'None', 'None', 'Sound server f=
or Linux and Unix-like operating systems.', 'ErrHostNoDir:/software/pulseau=
dio/releases/:-:pulseaudio-5.0.tar.xz:freedesktop.org/software/pulseaudio/r=
eleases/pulseaudio-5.0.tar.xz', 'N/A', 'http://freedesktop.org/software/pul=
seaudio/releases/pulseaudio-5.0.tar.xz', 'Cristian Iorga <cristian.iorga@in=
tel.com>', 'None']
inserted (pulseaudio,5.0,N/A,GPLv2+ & LGPLv2.1,libs/multimedia,r0,None,http=
://www.pulseaudio.org,None,ErrHostNoDir:/software/pulseaudio/releases/:-:pu=
lseaudio-5.0.tar.xz:freedesktop.org/software/pulseaudio/releases/pulseaudio=
-5.0.tar.xz,pkgconfig-native autoconf-native automake-native libtool-native=
 libtool-cross gnu-config-native virtual/gettext gettext-native  virtual/i5=
86-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  libato=
mics-ops liboil libsamplerate0 libsndfile1 libtool udev alsa-lib glib-2.0 d=
bus gconf json-c gdbm speex libxml-parser-perl-native perl-native base-pass=
wd shadow-native shadow-sysroot shadow avahi bluez4 sbc virtual/libx11 libx=
tst libice libsm libxcb,Sound server for Linux and Unix-like operating syst=
ems.,N/A,http://freedesktop.org/software/pulseaudio/releases/pulseaudio-5.0=
=2Etar.xz,Cristian Iorga <cristian.iorga@intel.com>)
['e2fsprogs', '1.42.9', 'N/A', 'GPLv2 & LGPLv2 & BSD & MIT', 'base', 'http:=
//e2fsprogs.sourceforge.net/', 'r0', 'pkgconfig-native autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native virtual/gettext =
gettext-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc  util-linux', 'None', 'None', 'The Ext2 Filesystem Utili=
ties (e2fsprogs) contain all of the standard utilities for creating, fixing=
, configuring , and debugging ext2 filesystems.', 'ErrHostNoDir:/e2fsprogs/=
:-:e2fsprogs-1.42.9.tar.gz:downloads.sourceforge.net/e2fsprogs/e2fsprogs-1.=
42.9.tar.gz', 'N/A', 'http://downloads.sourceforge.net/e2fsprogs/e2fsprogs-=
1.42.9.tar.gz', 'Robert Yang <liezhi.yang@windriver.com>', 'None']
inserted (e2fsprogs,1.42.9,N/A,GPLv2 & LGPLv2 & BSD & MIT,base,r0,None,http=
://e2fsprogs.sourceforge.net/,None,ErrHostNoDir:/e2fsprogs/:-:e2fsprogs-1.4=
2.9.tar.gz:downloads.sourceforge.net/e2fsprogs/e2fsprogs-1.42.9.tar.gz,pkgc=
onfig-native autoconf-native automake-native libtool-native libtool-cross g=
nu-config-native virtual/gettext gettext-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  util-linux,The Ext2 Fi=
lesystem Utilities (e2fsprogs) contain all of the standard utilities for cr=
eating, fixing, configuring , and debugging ext2 filesystems.,N/A,http://do=
wnloads.sourceforge.net/e2fsprogs/e2fsprogs-1.42.9.tar.gz,Robert Yang <liez=
hi.yang@windriver.com>)
['libdumpvalue-perl', '1.17', 'N/A', 'Artistic-1.0 | GPL-1.0+', 'libs', 'ht=
tp://search.cpan.org/~flora/Dumpvalue/', 'r0', ' virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc   perl perl-native', 'N=
one', 'None', 'Perl module for provides screen dump of Perl data.', 'ErrHos=
tNoDir:/CPAN/authors/id/F/FL/FLORA/:-:Dumpvalue-1.17.tar.gz:search.cpan.org=
/CPAN/authors/id/F/FL/FLORA/Dumpvalue-1.17.tar.gz', 'N/A', 'http://search.c=
pan.org/CPAN/authors/id/F/FL/FLORA/Dumpvalue-1.17.tar.gz', 'Saul Wold <sgw@=
linux.intel.com>', 'None']
inserted (libdumpvalue-perl,1.17,N/A,Artistic-1.0 | GPL-1.0+,libs,r0,None,h=
ttp://search.cpan.org/~flora/Dumpvalue/,None,ErrHostNoDir:/CPAN/authors/id/=
F/FL/FLORA/:-:Dumpvalue-1.17.tar.gz:search.cpan.org/CPAN/authors/id/F/FL/FL=
ORA/Dumpvalue-1.17.tar.gz, virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc   perl perl-native,Perl module for provides s=
creen dump of Perl data.,N/A,http://search.cpan.org/CPAN/authors/id/F/FL/FL=
ORA/Dumpvalue-1.17.tar.gz,Saul Wold <sgw@linux.intel.com>)
['libmatchbox', '1.11', 'N/A', 'LGPLv2+', 'x11/libs', 'http://matchbox-proj=
ect.org/', 'r0', 'pkgconfig-native autoconf-native automake-native libtool-=
native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual=
/i586-poky-linux-compilerlibs virtual/libc  virtual/libx11 libxext jpeg lib=
png libxft libxsettings-client', 'http://bugzilla.yoctoproject.com/', 'None=
', 'Matchbox window manager core library.', 'ErrHostNoDir:/releases/matchbo=
x/libmatchbox/1.11/libmatchbox-1.11.tar.bz2:1.11:-:downloads.yoctoproject.o=
rg/releases/matchbox/libmatchbox/1.11/libmatchbox-1.11.tar.bz2', 'N/A', 'ht=
tp://downloads.yoctoproject.org/releases/matchbox/libmatchbox/1.11/libmatch=
box-1.11.tar.bz2', 'Ross Burton <ross.burton@intel.com>', 'None']
inserted (libmatchbox,1.11,N/A,LGPLv2+,x11/libs,r0,None,http://matchbox-pro=
ject.org/,http://bugzilla.yoctoproject.com/,ErrHostNoDir:/releases/matchbox=
/libmatchbox/1.11/libmatchbox-1.11.tar.bz2:1.11:-:downloads.yoctoproject.or=
g/releases/matchbox/libmatchbox/1.11/libmatchbox-1.11.tar.bz2,pkgconfig-nat=
ive autoconf-native automake-native libtool-native libtool-cross gnu-config=
-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs v=
irtual/libc  virtual/libx11 libxext jpeg libpng libxft libxsettings-client,=
Matchbox window manager core library.,N/A,http://downloads.yoctoproject.org=
/releases/matchbox/libmatchbox/1.11/libmatchbox-1.11.tar.bz2,Ross Burton <r=
oss.burton@intel.com>)
['presentproto', '1.0+gitAUTOINC+24f3a56e54', '1.0+gitAUTOINC+24f3a56', 'GP=
Lv2', 'x11/libs', 'http://www.x.org', 'r0', 'pkgconfig-native autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  util=
-macros', 'https://bugs.freedesktop.org/enter_bug.cgi?product=3Dxorg', 'Non=
e', 'The Present extension provides a way for applications to update their =
               window contents from a pixmap in a well defined fashion, syn=
chronizing                with the display refresh and potentially using a =
more efficient                mechanism than copying the contents of the so=
urce pixmap.              ', 'MATCH', 'N/A', 'git://anongit.freedesktop.org=
/git/xorg/proto/presentproto', 'None', 'None']
inserted (presentproto,1.0+gitAUTOINC+24f3a56e54,1.0+gitAUTOINC+24f3a56,GPL=
v2,x11/libs,r0,None,http://www.x.org,https://bugs.freedesktop.org/enter_bug=
=2Ecgi?product=3Dxorg,MATCH,pkgconfig-native autoconf-native automake-nativ=
e libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-g=
cc virtual/i586-poky-linux-compilerlibs virtual/libc  util-macros,The Prese=
nt extension provides a way for applications to update their               =
 window contents from a pixmap in a well defined fashion, synchronizing    =
            with the display refresh and potentially using a more efficient=
                mechanism than copying the contents of the source pixmap.  =
            ,N/A,git://anongit.freedesktop.org/git/xorg/proto/presentproto,=
None)
['time', '1.7', 'N/A', 'GPLv2+', 'utils', 'http://www.gnu.org/software/time=
/', 'r2', 'autoconf-native automake-native libtool-native libtool-cross gnu=
-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compile=
rlibs virtual/libc   virtual/update-alternatives', 'None', 'None', 'time me=
asures many of the CPU resources, such as time and memory, that other progr=
ams use.', 'ErrHostNoDir:/gnu/time/:-:time-1.7.tar.gz:ftp.gnu.org/gnu/time/=
time-1.7.tar.gz', 'N/A', 'ftp://ftp.gnu.org/gnu/time/time-1.7.tar.gz', 'Rob=
ert Yang <liezhi.yang@windriver.com>', 'None']
inserted (time,1.7,N/A,GPLv2+,utils,r2,None,http://www.gnu.org/software/tim=
e/,None,ErrHostNoDir:/gnu/time/:-:time-1.7.tar.gz:ftp.gnu.org/gnu/time/time=
-1.7.tar.gz,autoconf-native automake-native libtool-native libtool-cross gn=
u-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compil=
erlibs virtual/libc   virtual/update-alternatives,time measures many of the=
 CPU resources, such as time and memory, that other programs use.,N/A,ftp:/=
/ftp.gnu.org/gnu/time/time-1.7.tar.gz,Robert Yang <liezhi.yang@windriver.co=
m>)
['gnome-desktop-testing', '2014.1', 'N/A', 'LGPLv2+', 'base', 'https://wiki=
=2Egnome.org/GnomeGoals/InstalledTests', 'r0', 'pkgconfig-native autoconf-n=
ative automake-native libtool-native libtool-cross gnu-config-native  virtu=
al/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  g=
lib-2.0', 'None', 'None', 'Test runner for GNOME-style installed tests.', '=
ErrHostNoDir:/pub/GNOME/sources/gnome-desktop-testing/2014.1/gnome-desktop-=
testing-2014.1.tar.xz:2014.1:-:ftp.gnome.org/pub/GNOME/sources/gnome-deskto=
p-testing/2014.1/gnome-desktop-testing-2014.1.tar.xz', 'N/A', 'http://ftp.g=
nome.org/pub/GNOME/sources/gnome-desktop-testing/2014.1/gnome-desktop-testi=
ng-2014.1.tar.xz', 'None', 'None']
inserted (gnome-desktop-testing,2014.1,N/A,LGPLv2+,base,r0,None,https://wik=
i.gnome.org/GnomeGoals/InstalledTests,None,ErrHostNoDir:/pub/GNOME/sources/=
gnome-desktop-testing/2014.1/gnome-desktop-testing-2014.1.tar.xz:2014.1:-:f=
tp.gnome.org/pub/GNOME/sources/gnome-desktop-testing/2014.1/gnome-desktop-t=
esting-2014.1.tar.xz,pkgconfig-native autoconf-native automake-native libto=
ol-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virt=
ual/i586-poky-linux-compilerlibs virtual/libc  glib-2.0,Test runner for GNO=
ME-style installed tests.,N/A,http://ftp.gnome.org/pub/GNOME/sources/gnome-=
desktop-testing/2014.1/gnome-desktop-testing-2014.1.tar.xz,None)
['oprofile', '0.9.8', 'N/A', 'LGPLv2.1+ & GPLv2', 'devel', 'http://oprofile=
=2Esourceforge.net/news/', 'r2.3', 'autoconf-native automake-native libtool=
-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gcc virtua=
l/i586-poky-linux-compilerlibs virtual/libc  popt binutils virtual/kernel',=
 'http://sourceforge.net/tracker/?group_id=3D16191&atid=3D116191', 'None', =
'OProfile is a system-wide profiler for Linux systems, capable of profiling=
 all running code at low overhead.', 'ErrHostNoDir:/oprofile/:-:oprofile-0.=
9.8.tar.gz:downloads.sourceforge.net/oprofile/oprofile-0.9.8.tar.gz', 'N/A'=
, 'file://opstart.patch', 'Laurentiu Palcu <laurentiu.palcu@intel.com>', 'N=
one']
inserted (oprofile,0.9.8,N/A,LGPLv2.1+ & GPLv2,devel,r2.3,None,http://oprof=
ile.sourceforge.net/news/,http://sourceforge.net/tracker/?group_id=3D16191&=
atid=3D116191,ErrHostNoDir:/oprofile/:-:oprofile-0.9.8.tar.gz:downloads.sou=
rceforge.net/oprofile/oprofile-0.9.8.tar.gz,autoconf-native automake-native=
 libtool-native libtool-cross gnu-config-native  virtual/i586-poky-linux-gc=
c virtual/i586-poky-linux-compilerlibs virtual/libc  popt binutils virtual/=
kernel,OProfile is a system-wide profiler for Linux systems, capable of pro=
filing all running code at low overhead.,N/A,file://opstart.patch,Laurentiu=
 Palcu <laurentiu.palcu@intel.com>)
['libksba', '1.3.0', 'N/A', 'GPLv2+ | LGPLv3+ | GPLv3+', 'base', 'http://ww=
w.gnupg.org/related_software/libksba/', 'r1', 'pkgconfig-native autoconf-na=
tive automake-native libtool-native libtool-cross gnu-config-native  virtua=
l/i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  li=
bgpg-error', 'None', 'None', 'Easy API to create and parse X.509 and CMS re=
lated objects.', 'ErrHostNoDir:/gcrypt/libksba/:-:libksba-1.3.0.tar.bz2:ftp=
=2Egnupg.org/gcrypt/libksba/libksba-1.3.0.tar.bz2', 'N/A', 'ftp://ftp.gnupg=
=2Eorg/gcrypt/libksba/libksba-1.3.0.tar.bz2', 'Saul Wold <sgw@linux.intel.c=
om>', 'None']
inserted (libksba,1.3.0,N/A,GPLv2+ | LGPLv3+ | GPLv3+,base,r1,None,http://w=
ww.gnupg.org/related_software/libksba/,None,ErrHostNoDir:/gcrypt/libksba/:-=
:libksba-1.3.0.tar.bz2:ftp.gnupg.org/gcrypt/libksba/libksba-1.3.0.tar.bz2,p=
kgconfig-native autoconf-native automake-native libtool-native libtool-cros=
s gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-co=
mpilerlibs virtual/libc  libgpg-error,Easy API to create and parse X.509 an=
d CMS related objects.,N/A,ftp://ftp.gnupg.org/gcrypt/libksba/libksba-1.3.0=
=2Etar.bz2,Saul Wold <sgw@linux.intel.com>)
['base-passwd', '3.5.29', 'N/A', 'GPLv2+', 'base', '', 'r0', 'autoconf-nati=
ve automake-native libtool-native libtool-cross gnu-config-native  virtual/=
i586-poky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ', '=
None', 'None', 'The master copies of the user database files (/etc/passwd a=
nd /etc/group).  The update-passwd tool is also provided to keep the system=
 databases synchronized with these master files.', 'ErrHostNoDir:/debian/po=
ol/main/b/base-passwd/:-:base-passwd_3.5.29.tar.gz:ftp.debian.org/debian/po=
ol/main/b/base-passwd/base-passwd_3.5.29.tar.gz', 'N/A', 'ftp://ftp.debian.=
org/debian/pool/main/b/base-passwd/base-passwd_3.5.29.tar.gz', 'Saul Wold <=
sgw@linux.intel.com>', 'None']
inserted (base-passwd,3.5.29,N/A,GPLv2+,base,r0,None,,None,ErrHostNoDir:/de=
bian/pool/main/b/base-passwd/:-:base-passwd_3.5.29.tar.gz:ftp.debian.org/de=
bian/pool/main/b/base-passwd/base-passwd_3.5.29.tar.gz,autoconf-native auto=
make-native libtool-native libtool-cross gnu-config-native  virtual/i586-po=
ky-linux-gcc virtual/i586-poky-linux-compilerlibs virtual/libc  ,The master=
 copies of the user database files (/etc/passwd and /etc/group).  The updat=
e-passwd tool is also provided to keep the system databases synchronized wi=
th these master files.,N/A,ftp://ftp.debian.org/debian/pool/main/b/base-pas=
swd/base-passwd_3.5.29.tar.gz,Saul Wold <sgw@linux.intel.com>)
['mpfr', '3.1.2', 'N/A', 'GPLv3 & LGPLv3', 'devel', 'http://www.mpfr.org/',=
 'r0', 'autoconf-native automake-native libtool-native libtool-cross gnu-co=
nfig-native  virtual/i586-poky-linux-gcc virtual/i586-poky-linux-compilerli=
bs virtual/libc  gmp', 'None', 'None', 'C library for multiple-precision fl=
oating-point computations with exact rounding.', 'ErrHostNoDir:/3.1.2/:mpfr=
-3.1.2:mpfr-3.1.2.tar.xz:www.mpfr.org/mpfr-3.1.2/mpfr-3.1.2.tar.xz', 'N/A',=
 'http://www.mpfr.org/mpfr-3.1.2/mpfr-3.1.2.tar.xz', 'Laurentiu Palcu <laur=
entiu.palcu@intel.com>', 'None']
inserted (mpfr,3.1.2,N/A,GPLv3 & LGPLv3,devel,r0,None,http://www.mpfr.org/,=
None,ErrHostNoDir:/3.1.2/:mpfr-3.1.2:mpfr-3.1.2.tar.xz:www.mpfr.org/mpfr-3.=
1.2/mpfr-3.1.2.tar.xz,autoconf-native automake-native libtool-native libtoo=
l-cross gnu-config-native  virtual/i586-poky-linux-gcc virtual/i586-poky-li=
nux-compilerlibs virtual/libc  gmp,C library for multiple-precision floatin=
g-point computations with exact rounding.,N/A,http://www.mpfr.org/mpfr-3.1.=
2/mpfr-3.1.2.tar.xz,Laurentiu Palcu <laurentiu.palcu@intel.com>)

Database update successful!
Now updating pkgrecord table and generate new upgr_hist table, please wait =
a minute......
milestone_target_to_db.py date_parameter =3D 2014-04-24
['milestone_target_to_db.py', '2014-04-24']
Traceback (most recent call last):
  File "milestone_target_to_db.py", line 40, in <module>
    a =3D milestone_db_cu.execute('select pn,pv,pupver,pstatus from pkginfo=
table')
sqlite3.OperationalError: no such table: pkginfotable
REPORT-SYSTEM-UPDATE ERROR: run milestone_target_to_db.py faild! Please Che=
ck target format!=20
SERVER_PATH: /srv/www/vhosts/packages.yoctoproject.org/python-function/../n=
ewserver/webserver/
Database update successful!
REPORT-SYSTEM-UPDATE ERROR: Didn't draw chart because some failures happend=
 before
Any problem, please contact Saul Wold <sgw@linux.intel.com>=20

--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--BXVAT5kNtrzKuDFl--
