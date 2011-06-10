Return-Path: <scott.a.garman@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 532794C800E0
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2011 13:21:08 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Jun 2011 11:21:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,348,1304319600"; 
	d="txt'?scan'208";a="10955083"
Received: from unknown (HELO [10.255.13.148]) ([10.255.13.148])
	by azsmga001.ch.intel.com with ESMTP; 10 Jun 2011 11:21:07 -0700
Message-ID: <4DF26092.7020902@intel.com>
Date: Fri, 10 Jun 2011 11:21:06 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: "Wold, Saul" <saul.wold@intel.com>
Subject: Results of the latest documentation audit, June 2011
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 10 Jun 2011 18:21:08 -0000
X-Groupsio-MsgNum: 1605
Content-Type: multipart/mixed; boundary="------------060701070806030201090501"

--------------060701070806030201090501
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

As a data point for where we stand in ensuring our packages are 
producing documentation, I have some scripts which build all recipes 
(using the output of bitbake -s, not world), and then check that a -doc 
package is generated which is populated with files.

A summary of the results using yesterday's master are as follows:

584 recipes in total
307 recipes are building documentation
277 recipes are not building documentation

20 recipes did not build, and are counted above as "not building 
documentation"

It's the impression of Saul and I that some of the recipes which do not 
build are failing due to dependency issues. In this case, it's generally 
not from a missing dependency, but having another recipe built first 
which then gets picked up (e.g, during do_configure) and causes a build 
failure.

For comparison, here were the results from last month (May 6th):

591 recipes in total
308 recipes are building documentation
283 recipes are not building documentation

31 recipes did not build

The lists of recipes are attached to this email. We'd like to improve 
the percentage of recipes that produce documentation (separated into 
-doc packages, of course) for our next major release in October.

Our userspace recipe maintainers should look into setting aside some 
time to know which of their recipes are in the "not building 
documentation" list and work to improve them. A lot of this is likely to 
be low-hanging fruit.

Thanks,

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

--------------060701070806030201090501
Content-Type: text/plain;
 name="build_errors.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="build_errors.txt"

alsa-tools
clutter-1.6
clutter-box2d
clutter-box2d-1.6
clutter-gst-1.6
gobject-introspection
json-glib
libx11-diet
libzypp
minicom
mtools
mutter
rpm
rxvt-unicode
sat-solver
syslinux
texinfo
update-alternatives-dpkg
xwininfo
zypper

--------------060701070806030201090501
Content-Type: text/plain;
 name="documentation_exists.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="documentation_exists.txt"

acl
acpid
alsa-utils
apt
aspell
at
atk
attr
augeas
autoconf
automake
avahi
base-passwd
bash
bc
bigreqsproto
bind
binutils
bison
blktool
blktrace
bluez-hcidump
bluez4
byacc
bzip2
cairo
chrpath
compositeproto
console-tools
contacts
coreutils
cpio
createrepo
cronie
cups
curl
damageproto
dates
db
dbus
dbus-glib
dhcp
diffstat
diffutils
directfb
distcc
dosfstools
dpkg
e2fsprogs
ed
eglibc
enchant
ethtool
expat
file
findutils
fixesproto
flac
flex
fontsproto
foomatic-filters
fotowall
gail
gawk
gcc
gccmakedep
gconf-dbus
gdb
gdbm
gdk-pixbuf
genext2fs
gettext
ghostscript
git
glib-2.0
gmp
gnome-desktop
gnome-doc-utils
gnome-keyring
gnome-vfs
gnutls
gperf
gpgme
grep
groff
gssdp
gst-plugins-base
gstreamer
gthumb
gtk+
gupnp
gupnp-av
gypsy
gzip
hal
hdparm
icu
imake
inputproto
insserv
intltool
iproute2
iptables
iputils
jpeg
lame
less
liba52
libacpi
libassuan
libcanberra
libcap
libcheck
libdaemon
libdmx
libevent
libexif
libffi
libfm
libgalago
libgcrypt
libgdata
libglade
libgnome-keyring
libice
libiconv
libidn
libmpc
libnewt
libnfsidmap
libogg
liboil
libpam
libpcap
libpcre
libpng
librsvg
libsm
libsndfile1
libsoup
libsoup-2.4
libtasn1
libtirpc
libtool
libunique
libuser
libvorbis
libx11
libx11-trim
libxau
libxcb
libxcomposite
libxcursor
libxdmcp
libxext
libxfixes
libxfontcache
libxft
libxi
libxinerama
libxml2
libxmu
libxp
libxpm
libxrandr
libxrender
libxres
libxscrnsaver
libxslt
libxt
libxtst
libxv
libxvmc
libxxf86dga
libxxf86misc
libxxf86vm
lighttpd
logrotate
lsof
lttng-ust
lzo
m4
mailx
make
makedepend
mc
mdadm
metacity
mingetty
mkfontdir
mkfontscale
mktemp
modutils
mpeg2dec
mpfr
msmtp
mtd-utils
nasm
ncurses
neon
net-tools
nfs-utils
ofono
opensp
openssh
openssl
opkg
opkg-nogpg
oprofile
oprofileui
pango
parted
patch
pax
pax-utils
pciutils
pcmciautils
perl
pkgconfig
pm-utils
popt
portmap
powertop
ppp
printproto
procps
psmisc
pth
pulseaudio
python
python-dbus
python-imaging
python-pycurl
python-scons
qemu
qt4-embedded
qt4-x11-free
quilt
randrproto
readline
recordproto
renderproto
rpcbind
rsync
screen
sed
setserial
shared-mime-info
slang
speex
sqlite3
strace
subversion
sudo
sysfsutils
sysklogd
sysstat
systemtap
sysvinit
tar
tcl
tcp-wrappers
telepathy-glib
telepathy-idle
telepathy-mission-control
tiff
time
udev
unzip
usbutils
util-linux
valgrind
videoproto
vte
watchdog
which
wireless-tools
wpa-supplicant
x11perf
x11vnc
xauth
xcmiscproto
xdg-utils
xdpyinfo
xf86-input-evdev
xf86-input-keyboard
xf86-input-mouse
xf86-input-synaptics
xf86-input-vmmouse
xf86-video-intel
xf86-video-vesa
xf86-video-vmware
xhost
xinit
xkbcomp
xmodmap
xprop
xrandr
xrestop
xserver-kdrive
xserver-xf86-dri-lite
xserver-xf86-lite
xset
xtrans
xvinfo
xz
zip

--------------060701070806030201090501
Content-Type: text/plain;
 name="documentation_missing.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="documentation_missing.txt"

alsa-lib
alsa-tools
apmd
apr
apr-util
base-files
beecrypt
binutils-cross
binutils-cross-canadian-i586
binutils-crosssdk
bluez-dtl1-workaround
boost
busybox
calibrateproto
chkconfig
clutter
clutter-1.6
clutter-box2d
clutter-box2d-1.6
clutter-gst-1.6
connman
connman-gnome
consolekit
cracklib
cwautomacros
dbus-wait
dmxproto
dri2proto
dropbear
dtc
eds-dbus
eee-acpi-scripts
eggdbus
eglibc-initial
elfutils
encodings
evieext
external-python-tarball
font-alias
font-util
fontcacheproto
fontconfig
formfactor
freetype
fstests
gaku
galago-daemon
gamin
gcc-cross
gcc-cross-canadian-i586
gcc-cross-initial
gcc-cross-intermediate
gcc-crosssdk
gcc-crosssdk-initial
gcc-crosssdk-intermediate
gcc-runtime
gdb-cross
gdb-cross-canadian-i586
glew
glibc
glproto
gnome-common
gnome-icon-theme
gnome-mime-data
gnu-config
gobject-introspection
grub
gst-ffmpeg
gst-fluendo-mp3
gst-fluendo-mpegdemux
gst-meta-base
gst-openmax
gst-plugins-bad
gst-plugins-good
gst-plugins-ugly
gtk-doc
gtk-engines
gtk-sato-engine
gtk-theme-torturer
gtkhtml2
gupnp-tools
hal-info
hello-mod
hicolor-icon-theme
hostap-conf
hostap-utils
initramfs-boot
initramfs-live-boot
initramfs-live-install
initscripts
irda-utils
js
json-glib
kbproto
kernelshark
kexec-tools
keymaps
latencytop
leafpad
libaio
libart-lgpl
libatomics-ops
libconvert-asn1-perl
libcroco
libdrm
liberation-fonts
libfakekey
libfontenc
libgcc
libgdbus
libgpg-error
libgsmd
libical
libid3tag
libmad
libmatchbox
libmusicbrainz
libnl
libnss-mdns
libomxil
libowl
libowl-av
libpciaccess
libproxy
libpthread-stubs
libsamplerate0
libtelepathy
libtheora
libtimedate-perl
libtool-cross
liburcu
liburi-perl
libusb-compat
libusb1
libx11-diet
libxcalibrate
libxdamage
libxfont
libxkbfile
libxml-namespacesupport-perl
libxml-parser-perl
libxml-perl
libxml-sax-perl
libxml-simple-perl
libxprintapputil
libxprintutil
libxsettings-client
libxtrap
libzypp
lrzsz
lsb
lsbsetup
lttng-control
lttng-viewer
makedevs
man
man-pages
matchbox-config-gtk
matchbox-desktop
matchbox-desktop-sato
matchbox-keyboard
matchbox-panel-2
matchbox-session
matchbox-session-sato
matchbox-stroke
matchbox-terminal
matchbox-theme-sato
matchbox-theme-sato-2
matchbox-wm
matchbox-wm-2
menu-cache
mesa-demos
mesa-dri
mesa-xlib
minicom
module-init-tools
module-init-tools-cross
modutils-collateral
modutils-cross
modutils-initscripts
mtools
mutter
netbase
oh-puzzles
opkg-collateral
opkg-config-base
opkg-utils
orinoco-conf
owl-video
pcmanfm
pixman
pointercal
poky-feed-config-opkg
polkit
polkit-gnome
ppp-dialin
prelink
pseudo
psplash
puzzles
python-gst
python-pycairo
python-pygobject
python-pygtk
python-pyrex
qemu-config
qemugl
qmmp
quicky
quota
resolvconf
resourceproto
rpm
run-postinsts
rxvt-unicode
sat-solver
sato-icon-theme
screenshot
scrnsaverproto
settings-daemon
sgml-common
shadow
startup-notification
syslinux
sysprof
sysvinit-inittab
taglib
tasks
tcf-agent
telepathy-python
texinfo
tinylogin
trace-cmd
trapproto
tremor
tslib
ttf-bitstream-vera
tzdata
u-boot-mkimage
ubootchart
udev-extraconf
update-alternatives-dpkg
update-modules
update-rc.d
usbinit
util-macros
v86d
web
web-webkit
webkit-gtk
x11-common
xcb-proto
xcb-util
xcursor-transparent-theme
xextproto
xf86-video-omapfb
xf86bigfontproto
xf86dgaproto
xf86driproto
xf86miscproto
xf86rushproto
xf86vidmodeproto
xineramaproto
xinetd
xkeyboard-config
xorg-cf-files
xorg-minimal-fonts
xproto
xserver-nodm-init
xserver-xf86-config
xtscal
xvideo-tests
xwininfo
zaurusd
zeroconf
zlib
zypper

--------------060701070806030201090501
Content-Type: text/plain;
 name="documentation_missing_detail.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="documentation_missing_detail.txt"

No files shipped with the -doc package: alsa-lib
There was an error building package alsa-tools
No -doc package: alsa-tools
No files shipped with the -doc package: apmd
No files shipped with the -doc package: apr
No files shipped with the -doc package: apr-util
No -doc package: base-files
No files shipped with the -doc package: beecrypt
No -doc package: binutils-cross
No -doc package: binutils-cross-canadian-i586
No -doc package: binutils-crosssdk
No -doc package: bluez-dtl1-workaround
No -doc package: boost
No files shipped with the -doc package: busybox
No files shipped with the -doc package: calibrateproto
No files shipped with the -doc package: chkconfig
No files shipped with the -doc package: clutter
There was an error building package clutter-1.6
No -doc package: clutter-1.6
There was an error building package clutter-box2d
No -doc package: clutter-box2d
There was an error building package clutter-box2d-1.6
No -doc package: clutter-box2d-1.6
There was an error building package clutter-gst-1.6
No -doc package: clutter-gst-1.6
No files shipped with the -doc package: connman
No files shipped with the -doc package: connman-gnome
No files shipped with the -doc package: consolekit
No files shipped with the -doc package: cracklib
No files shipped with the -doc package: cwautomacros
No files shipped with the -doc package: dbus-wait
No files shipped with the -doc package: dmxproto
No files shipped with the -doc package: dri2proto
No files shipped with the -doc package: dropbear
No files shipped with the -doc package: dtc
No files shipped with the -doc package: eds-dbus
No files shipped with the -doc package: eee-acpi-scripts
No files shipped with the -doc package: eggdbus
No -doc package: eglibc-initial
No files shipped with the -doc package: elfutils
No -doc package: encodings
No files shipped with the -doc package: evieext
No -doc package: external-python-tarball
No -doc package: font-alias
No files shipped with the -doc package: font-util
No files shipped with the -doc package: fontcacheproto
No files shipped with the -doc package: fontconfig
No -doc package: formfactor
No files shipped with the -doc package: freetype
No files shipped with the -doc package: fstests
No files shipped with the -doc package: gaku
No files shipped with the -doc package: galago-daemon
No files shipped with the -doc package: gamin
No -doc package: gcc-cross
No -doc package: gcc-cross-canadian-i586
No -doc package: gcc-cross-initial
No -doc package: gcc-cross-intermediate
No -doc package: gcc-crosssdk
No -doc package: gcc-crosssdk-initial
No -doc package: gcc-crosssdk-intermediate
No -doc package: gcc-runtime
No -doc package: gdb-cross
No -doc package: gdb-cross-canadian-i586
No files shipped with the -doc package: glew
There was an error building package glibc
No -doc package: glibc
No files shipped with the -doc package: glproto
No files shipped with the -doc package: gnome-common
No files shipped with the -doc package: gnome-icon-theme
No files shipped with the -doc package: gnome-mime-data
No -doc package: gnu-config
There was an error building package gobject-introspection
No -doc package: gobject-introspection
No files shipped with the -doc package: grub
No files shipped with the -doc package: gst-ffmpeg
No files shipped with the -doc package: gst-fluendo-mp3
No files shipped with the -doc package: gst-fluendo-mpegdemux
No -doc package: gst-meta-base
No files shipped with the -doc package: gst-openmax
No files shipped with the -doc package: gst-plugins-bad
No files shipped with the -doc package: gst-plugins-good
No files shipped with the -doc package: gst-plugins-ugly
No files shipped with the -doc package: gtk-doc
No files shipped with the -doc package: gtk-engines
No files shipped with the -doc package: gtk-sato-engine
No files shipped with the -doc package: gtk-theme-torturer
No files shipped with the -doc package: gtkhtml2
No files shipped with the -doc package: gupnp-tools
No -doc package: hal-info
No -doc package: hello-mod
No -doc package: hicolor-icon-theme
No -doc package: hostap-conf
No files shipped with the -doc package: hostap-utils
No -doc package: initramfs-boot
No -doc package: initramfs-live-boot
No files shipped with the -doc package: initramfs-live-install
No files shipped with the -doc package: initscripts
No files shipped with the -doc package: irda-utils
No files shipped with the -doc package: js
There was an error building package json-glib
No -doc package: json-glib
No files shipped with the -doc package: kbproto
No files shipped with the -doc package: kernelshark
No files shipped with the -doc package: kexec-tools
No -doc package: keymaps
No files shipped with the -doc package: latencytop
No files shipped with the -doc package: leafpad
No files shipped with the -doc package: libaio
No files shipped with the -doc package: libart-lgpl
No files shipped with the -doc package: libatomics-ops
No -doc package: libconvert-asn1-perl
No files shipped with the -doc package: libcroco
No files shipped with the -doc package: libdrm
No -doc package: liberation-fonts
No files shipped with the -doc package: libfakekey
No files shipped with the -doc package: libfontenc
No -doc package: libgcc
No files shipped with the -doc package: libgdbus
No files shipped with the -doc package: libgpg-error
No files shipped with the -doc package: libgsmd
No files shipped with the -doc package: libical
No files shipped with the -doc package: libid3tag
No files shipped with the -doc package: libmad
No files shipped with the -doc package: libmatchbox
No files shipped with the -doc package: libmusicbrainz
No files shipped with the -doc package: libnl
No files shipped with the -doc package: libnss-mdns
No files shipped with the -doc package: libomxil
No files shipped with the -doc package: libowl
No files shipped with the -doc package: libowl-av
No files shipped with the -doc package: libpciaccess
No files shipped with the -doc package: libproxy
No files shipped with the -doc package: libpthread-stubs
No files shipped with the -doc package: libsamplerate0
No files shipped with the -doc package: libtelepathy
No files shipped with the -doc package: libtheora
No -doc package: libtimedate-perl
No -doc package: libtool-cross
No files shipped with the -doc package: liburcu
No files shipped with the -doc package: liburi-perl
No files shipped with the -doc package: libusb-compat
No files shipped with the -doc package: libusb1
There was an error building package libx11-diet
No -doc package: libx11-diet
No files shipped with the -doc package: libxcalibrate
No files shipped with the -doc package: libxdamage
No files shipped with the -doc package: libxfont
No files shipped with the -doc package: libxkbfile
No files shipped with the -doc package: libxml-namespacesupport-perl
No files shipped with the -doc package: libxml-parser-perl
No files shipped with the -doc package: libxml-perl
No files shipped with the -doc package: libxml-sax-perl
No files shipped with the -doc package: libxml-simple-perl
No files shipped with the -doc package: libxprintapputil
No files shipped with the -doc package: libxprintutil
No files shipped with the -doc package: libxsettings-client
No files shipped with the -doc package: libxtrap
There was an error building package libzypp
No -doc package: libzypp
No files shipped with the -doc package: lrzsz
No files shipped with the -doc package: lsb
No files shipped with the -doc package: lsbsetup
No files shipped with the -doc package: lttng-control
No files shipped with the -doc package: lttng-viewer
No files shipped with the -doc package: makedevs
No files shipped with the -doc package: man
No files shipped with the -doc package: man-pages
No files shipped with the -doc package: matchbox-config-gtk
No files shipped with the -doc package: matchbox-desktop
No files shipped with the -doc package: matchbox-desktop-sato
No files shipped with the -doc package: matchbox-keyboard
No files shipped with the -doc package: matchbox-panel-2
No files shipped with the -doc package: matchbox-session
No -doc package: matchbox-session-sato
No files shipped with the -doc package: matchbox-stroke
No files shipped with the -doc package: matchbox-terminal
No files shipped with the -doc package: matchbox-theme-sato
No files shipped with the -doc package: matchbox-theme-sato-2
No files shipped with the -doc package: matchbox-wm
No files shipped with the -doc package: matchbox-wm-2
No files shipped with the -doc package: menu-cache
No files shipped with the -doc package: mesa-demos
No files shipped with the -doc package: mesa-dri
No files shipped with the -doc package: mesa-xlib
There was an error building package minicom
No -doc package: minicom
No files shipped with the -doc package: module-init-tools
No -doc package: module-init-tools-cross
No files shipped with the -doc package: modutils-collateral
No -doc package: modutils-cross
No files shipped with the -doc package: modutils-initscripts
There was an error building package mtools
No -doc package: mtools
There was an error building package mutter
No -doc package: mutter
No -doc package: netbase
No files shipped with the -doc package: oh-puzzles
No files shipped with the -doc package: opkg-collateral
No -doc package: opkg-config-base
No files shipped with the -doc package: opkg-utils
No -doc package: orinoco-conf
No files shipped with the -doc package: owl-video
No files shipped with the -doc package: pcmanfm
No files shipped with the -doc package: pixman
No -doc package: pointercal
No -doc package: poky-feed-config-opkg
No files shipped with the -doc package: polkit
No files shipped with the -doc package: polkit-gnome
No -doc package: ppp-dialin
No files shipped with the -doc package: prelink
No files shipped with the -doc package: pseudo
No files shipped with the -doc package: psplash
No files shipped with the -doc package: puzzles
No files shipped with the -doc package: python-gst
No files shipped with the -doc package: python-pycairo
No files shipped with the -doc package: python-pygobject
No files shipped with the -doc package: python-pygtk
No files shipped with the -doc package: python-pyrex
No -doc package: qemu-config
No files shipped with the -doc package: qemugl
No files shipped with the -doc package: qmmp
No files shipped with the -doc package: quicky
No files shipped with the -doc package: quota
No -doc package: resolvconf
No files shipped with the -doc package: resourceproto
There was an error building package rpm
No -doc package: rpm
No files shipped with the -doc package: run-postinsts
There was an error building package rxvt-unicode
No -doc package: rxvt-unicode
There was an error building package sat-solver
No -doc package: sat-solver
No -doc package: sato-icon-theme
No files shipped with the -doc package: screenshot
No files shipped with the -doc package: scrnsaverproto
No files shipped with the -doc package: settings-daemon
No files shipped with the -doc package: sgml-common
No -doc package: shadow
No files shipped with the -doc package: startup-notification
There was an error building package syslinux
No -doc package: syslinux
No files shipped with the -doc package: sysprof
No -doc package: sysvinit-inittab
No files shipped with the -doc package: taglib
No files shipped with the -doc package: tasks
No files shipped with the -doc package: tcf-agent
No files shipped with the -doc package: telepathy-python
There was an error building package texinfo
No -doc package: texinfo
No files shipped with the -doc package: tinylogin
No files shipped with the -doc package: trace-cmd
No files shipped with the -doc package: trapproto
No files shipped with the -doc package: tremor
No files shipped with the -doc package: tslib
No -doc package: ttf-bitstream-vera
No -doc package: tzdata
No files shipped with the -doc package: u-boot-mkimage
No files shipped with the -doc package: ubootchart
No files shipped with the -doc package: udev-extraconf
There was an error building package update-alternatives-dpkg
No -doc package: update-alternatives-dpkg
No -doc package: update-modules
No -doc package: update-rc.d
No files shipped with the -doc package: usbinit
No files shipped with the -doc package: util-macros
No -doc package: v86d
No files shipped with the -doc package: web
No files shipped with the -doc package: web-webkit
No files shipped with the -doc package: webkit-gtk
No -doc package: x11-common
No files shipped with the -doc package: xcb-proto
No files shipped with the -doc package: xcb-util
No -doc package: xcursor-transparent-theme
No files shipped with the -doc package: xextproto
No files shipped with the -doc package: xf86-video-omapfb
No files shipped with the -doc package: xf86bigfontproto
No files shipped with the -doc package: xf86dgaproto
No files shipped with the -doc package: xf86driproto
No files shipped with the -doc package: xf86miscproto
No files shipped with the -doc package: xf86rushproto
No files shipped with the -doc package: xf86vidmodeproto
No files shipped with the -doc package: xineramaproto
No files shipped with the -doc package: xinetd
No files shipped with the -doc package: xkeyboard-config
No files shipped with the -doc package: xorg-cf-files
No -doc package: xorg-minimal-fonts
No files shipped with the -doc package: xproto
No -doc package: xserver-nodm-init
No -doc package: xserver-xf86-config
No files shipped with the -doc package: xtscal
No files shipped with the -doc package: xvideo-tests
There was an error building package xwininfo
No -doc package: xwininfo
No -doc package: zaurusd
No files shipped with the -doc package: zeroconf
No files shipped with the -doc package: zlib
There was an error building package zypper
No -doc package: zypper

--------------060701070806030201090501--
