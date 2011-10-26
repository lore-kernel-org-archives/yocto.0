Return-Path: <scott.a.garman@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43D7EE006B4
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 10:40:05 -0700 (PDT)
Received: from mail-ey0-f180.google.com ([209.85.215.180])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 26 Oct 2011 10:40:03 -0700
Received: by eyg5 with SMTP id 5so1853145eyg.25
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 10:40:02 -0700 (PDT)
Received: by 10.216.229.30 with SMTP id g30mr12485249weq.51.1319650801976;
	Wed, 26 Oct 2011 10:40:01 -0700 (PDT)
Received: from [127.0.0.1] (masterfoo.zenlinux.com. [207.192.74.254])
	by mx.google.com with ESMTPS id fr4sm4467847wbb.0.2011.10.26.10.39.59
	(version=SSLv3 cipher=OTHER); Wed, 26 Oct 2011 10:40:01 -0700 (PDT)
Message-ID: <4EA845DB.6010408@intel.com>
Date: Wed, 26 Oct 2011 10:39:39 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Results of the latest documentation audit, October 2011
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
X-List-Received-Date: Wed, 26 Oct 2011 17:40:05 -0000
X-Groupsio-MsgNum: 3164
Content-Type: multipart/mixed; boundary="------------020508070305070907000509"

--------------020508070305070907000509
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

Here are the results of the latest documentation audit, using a recent 
Poky master (72a1e63b67445c65954c21f5cbfab74d617a257f):

587 recipes in total
334 recipes are building documentation
252 recipes are not building documentation

7 recipes did not build, and are counted above as "not building 
documentation"

For comparison, here were the results from my last audit (September 29):

589 recipes in total
324 recipes are building documentation
265 recipes are not building documentation

6 recipes did not build.

So progress continues to be made.

The lists of recipes are attached to this email. We'd like to improve 
the percentage of recipes that produce documentation (separated into 
-doc packages, of course) for our next major release (1.2, in April).

Our userspace recipe maintainers should look into setting aside some 
time to know which of their recipes are in the "not building 
documentation" list and work to improve them. A lot of this is likely to 
be low-hanging fruit, and is easy to do when upgrading your recipes.

Thanks,

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

--------------020508070305070907000509
Content-Type: text/plain;
 name="build_errors.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="build_errors.txt"

clutter
cogl
gobject-introspection
opkg-nogpg
qmmp
quicky
update-alternatives-dpkg

--------------020508070305070907000509
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
base-files
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
btrfs-tools
byacc
bzip2
cairo
ccache
chrpath
clutter-box2d-1.6
clutter-gst-1.6
cmake
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
dri2proto
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
gcc-cross
gcc-cross-initial
gcc-cross-intermediate
gcc-crosssdk
gcc-crosssdk-initial
gcc-crosssdk-intermediate
gcc-runtime
gccmakedep
gconf-dbus
gdb
gdbm
gdk-pixbuf
genext2fs
gettext
ghostscript
git
gmp
gnome-desktop
gnome-doc-utils
gnome-keyring
gnutls
gperf
gpgme
grep
groff
gssdp
gst-plugin-bluetooth
gst-plugins-base
gstreamer
gthumb
gtk+
gupnp
gupnp-av
gypsy
gzip
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
json-glib
lame
less
liba52
libacpi
libarchive
libassuan
libcanberra
libcap
libcheck
libdaemon
libdmx
libevent
libexif
libffi
libgalago
libgcc
libgcrypt
libgdata
libglade
libgnome-keyring
libice
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
libsdl
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
libx11-diet
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
lsb
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
minicom
mkfontdir
mkfontscale
mktemp
mpeg2dec
mpfr
msmtp
mtd-utils
mtools
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
python-dbus
python-imaging
python-pycurl
python-scons
qemu
qt4-x11-free
quilt
randrproto
readline
recordproto
renderproto
resolvconf
resourceproto
rgb
rpcbind
rpm
rsync
rt-tests
rxvt-unicode
screen
sed
setserial
shadow
shared-mime-info
slang
speex
sqlite3
strace
subversion
sudo
sysfsutils
sysklogd
syslinux
sysstat
systemtap
sysvinit
tar
tcl
tcp-wrappers
telepathy-glib
telepathy-idle
telepathy-mission-control
texinfo
tiff
time
ttf-bitstream-vera
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
xserver-xorg
xserver-xorg-lite
xset
xtrans
xvinfo
xwininfo
xz
zip
zypper

--------------020508070305070907000509
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
avahi-ui
beecrypt
binutils-cross
binutils-crosssdk
boost
busybox
calibrateproto
chkconfig
clutter
clutter-1.6
clutter-box2d
cogl
connman
connman-gnome
consolekit
cracklib
cwautomacros
dbus-wait
dmxproto
dropbear
dtc
eds-dbus
eee-acpi-scripts
eggdbus
eglibc-initial
eglibc-locale
elfutils
encodings
evieext
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
gdb-cross
glew
glib-2.0
glib-networking
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
libfm
libfontenc
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
module-init-tools
module-init-tools-cross
modutils-initscripts
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
python
python-argparse
python-gst
python-pycairo
python-pygobject
python-pygtk
python-pyrex
python-setuptools
qemu-config
qemugl
qmmp
qt-demo-init
quicky
quota
run-postinsts
sat-solver
sato-icon-theme
screenshot
scrnsaverproto
settings-daemon
sgml-common
shadow-sysroot
startup-notification
sysprof
sysvinit-inittab
taglib
tasks
tcf-agent
telepathy-python
tinylogin
trace-cmd
trapproto
tremor
tslib
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
zaurusd
zeroconf
zlib

--------------020508070305070907000509
Content-Type: text/plain;
 name="documentation_missing_detail.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="documentation_missing_detail.txt"

No files shipped with the -doc package: alsa-lib
No files shipped with the -doc package: alsa-tools
No files shipped with the -doc package: apmd
No files shipped with the -doc package: apr
No files shipped with the -doc package: apr-util
No -doc package: avahi-ui
No files shipped with the -doc package: beecrypt
No -doc package: binutils-cross
No -doc package: binutils-crosssdk
No -doc package: boost
No files shipped with the -doc package: busybox
No files shipped with the -doc package: calibrateproto
No files shipped with the -doc package: chkconfig
There was an error building package clutter
No -doc package: clutter
No files shipped with the -doc package: clutter-1.6
No files shipped with the -doc package: clutter-box2d
There was an error building package cogl
No -doc package: cogl
No files shipped with the -doc package: connman
No files shipped with the -doc package: connman-gnome
No files shipped with the -doc package: consolekit
No files shipped with the -doc package: cracklib
No files shipped with the -doc package: cwautomacros
No files shipped with the -doc package: dbus-wait
No files shipped with the -doc package: dmxproto
No files shipped with the -doc package: dropbear
No files shipped with the -doc package: dtc
No files shipped with the -doc package: eds-dbus
No files shipped with the -doc package: eee-acpi-scripts
No files shipped with the -doc package: eggdbus
No -doc package: eglibc-initial
No -doc package: eglibc-locale
No files shipped with the -doc package: elfutils
No files shipped with the -doc package: encodings
No files shipped with the -doc package: evieext
No files shipped with the -doc package: font-alias
No files shipped with the -doc package: font-util
No files shipped with the -doc package: fontcacheproto
No files shipped with the -doc package: fontconfig
No files shipped with the -doc package: formfactor
No files shipped with the -doc package: freetype
No files shipped with the -doc package: fstests
No files shipped with the -doc package: gaku
No files shipped with the -doc package: galago-daemon
No files shipped with the -doc package: gamin
No -doc package: gdb-cross
No files shipped with the -doc package: glew
No files shipped with the -doc package: glib-2.0
No files shipped with the -doc package: glib-networking
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
No files shipped with the -doc package: hello-mod
No files shipped with the -doc package: hicolor-icon-theme
No files shipped with the -doc package: hostap-conf
No files shipped with the -doc package: hostap-utils
No files shipped with the -doc package: initramfs-boot
No files shipped with the -doc package: initramfs-live-boot
No files shipped with the -doc package: initramfs-live-install
No files shipped with the -doc package: initscripts
No files shipped with the -doc package: irda-utils
No files shipped with the -doc package: js
No files shipped with the -doc package: kbproto
No files shipped with the -doc package: kernelshark
No files shipped with the -doc package: kexec-tools
No files shipped with the -doc package: keymaps
No files shipped with the -doc package: latencytop
No files shipped with the -doc package: leafpad
No files shipped with the -doc package: libaio
No files shipped with the -doc package: libart-lgpl
No files shipped with the -doc package: libatomics-ops
No files shipped with the -doc package: libconvert-asn1-perl
No files shipped with the -doc package: libcroco
No files shipped with the -doc package: libdrm
No -doc package: liberation-fonts
No files shipped with the -doc package: libfakekey
No files shipped with the -doc package: libfm
No files shipped with the -doc package: libfontenc
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
No files shipped with the -doc package: libtimedate-perl
No -doc package: libtool-cross
No files shipped with the -doc package: liburcu
No files shipped with the -doc package: liburi-perl
No files shipped with the -doc package: libusb-compat
No files shipped with the -doc package: libusb1
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
No files shipped with the -doc package: libzypp
No files shipped with the -doc package: lrzsz
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
No files shipped with the -doc package: matchbox-session-sato
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
No files shipped with the -doc package: module-init-tools
No -doc package: module-init-tools-cross
No files shipped with the -doc package: modutils-initscripts
No files shipped with the -doc package: mutter
No files shipped with the -doc package: netbase
No files shipped with the -doc package: oh-puzzles
No files shipped with the -doc package: opkg-collateral
No files shipped with the -doc package: opkg-config-base
There was an error building package opkg-nogpg
No files shipped with the -doc package: opkg-utils
No files shipped with the -doc package: orinoco-conf
No files shipped with the -doc package: owl-video
No files shipped with the -doc package: pcmanfm
No files shipped with the -doc package: pixman
No files shipped with the -doc package: pointercal
No files shipped with the -doc package: poky-feed-config-opkg
No files shipped with the -doc package: polkit
No files shipped with the -doc package: polkit-gnome
No files shipped with the -doc package: ppp-dialin
No files shipped with the -doc package: prelink
No files shipped with the -doc package: pseudo
No files shipped with the -doc package: psplash
No files shipped with the -doc package: puzzles
No -doc package: python
No files shipped with the -doc package: python-argparse
No files shipped with the -doc package: python-gst
No files shipped with the -doc package: python-pycairo
No files shipped with the -doc package: python-pygobject
No files shipped with the -doc package: python-pygtk
No files shipped with the -doc package: python-pyrex
No files shipped with the -doc package: python-setuptools
No files shipped with the -doc package: qemu-config
No files shipped with the -doc package: qemugl
There was an error building package qmmp
No -doc package: qmmp
No files shipped with the -doc package: qt-demo-init
There was an error building package quicky
No -doc package: quicky
No files shipped with the -doc package: quota
No files shipped with the -doc package: run-postinsts
No files shipped with the -doc package: sat-solver
No files shipped with the -doc package: sato-icon-theme
No files shipped with the -doc package: screenshot
No files shipped with the -doc package: scrnsaverproto
No files shipped with the -doc package: settings-daemon
No files shipped with the -doc package: sgml-common
No files shipped with the -doc package: shadow-sysroot
No files shipped with the -doc package: startup-notification
No files shipped with the -doc package: sysprof
No files shipped with the -doc package: sysvinit-inittab
No files shipped with the -doc package: taglib
No files shipped with the -doc package: tasks
No files shipped with the -doc package: tcf-agent
No files shipped with the -doc package: telepathy-python
No files shipped with the -doc package: tinylogin
No files shipped with the -doc package: trace-cmd
No files shipped with the -doc package: trapproto
No files shipped with the -doc package: tremor
No files shipped with the -doc package: tslib
No -doc package: tzdata
No files shipped with the -doc package: u-boot-mkimage
No files shipped with the -doc package: ubootchart
No files shipped with the -doc package: udev-extraconf
There was an error building package update-alternatives-dpkg
No files shipped with the -doc package: update-alternatives-dpkg
No files shipped with the -doc package: update-modules
No files shipped with the -doc package: update-rc.d
No files shipped with the -doc package: usbinit
No files shipped with the -doc package: util-macros
No files shipped with the -doc package: v86d
No files shipped with the -doc package: web
No files shipped with the -doc package: web-webkit
No files shipped with the -doc package: webkit-gtk
No files shipped with the -doc package: x11-common
No files shipped with the -doc package: xcb-proto
No files shipped with the -doc package: xcb-util
No files shipped with the -doc package: xcursor-transparent-theme
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
No files shipped with the -doc package: xserver-nodm-init
No files shipped with the -doc package: xserver-xf86-config
No files shipped with the -doc package: xtscal
No files shipped with the -doc package: xvideo-tests
No files shipped with the -doc package: zaurusd
No files shipped with the -doc package: zeroconf
No files shipped with the -doc package: zlib

--------------020508070305070907000509--
