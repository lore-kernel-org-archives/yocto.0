Return-Path: <scott.a.garman@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 53BF94C8009E
	for <yocto@yoctoproject.org>; Wed,  9 Feb 2011 13:34:58 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Feb 2011 11:34:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,447,1291622400"; 
	d="txt'?scan'208";a="386489775"
Received: from unknown (HELO [10.255.14.206]) ([10.255.14.206])
	by azsmga001.ch.intel.com with ESMTP; 09 Feb 2011 11:34:57 -0800
Message-ID: <4D52EC60.9020508@intel.com>
Date: Wed, 09 Feb 2011 11:34:56 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Documentation audit - initial results.
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
X-List-Received-Date: Wed, 09 Feb 2011 19:34:58 -0000
X-Groupsio-MsgNum: 954
Content-Type: multipart/mixed; boundary="------------070804090905080806010202"

--------------070804090905080806010202
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I thought I'd share the initial results from the documentation audit 
I've been doing.

I count a recipe as generating documentation if it creates a -doc output 
package which is populated with files (as opposed to an empty directory 
tree).

Using this metric, and building recipes as obtained from bitbake -s for 
qemux86, I've obtained the following numbers:

302 recipes are producing documentation
285 recipes do not currently produce documentation
22 recipes failed to build

I did manage to filter out from this analysis a number of obvious recipe 
filename patterns: task-/meta-/-native/-nativesdk/-image. That said, 
there are still some false negatives in the "documentation_missing" 
list. For example, our plethora of gcc-related recipes do not produce 
documentation and instead associate it with the primary recipe (gcc), 
and so on.

I will be continuing to look into fixing recipes with missing 
documentation that *should* be providing it as time goes on, but this 
gives us a good baseline to start with.

To keep track of this baseline, I will be coordinating with Saul 
sometime soon to add a new (Yocto is not a) distro tracking field to all 
recipes. This field will be named RECIPE_DOC_AUDIT_STATUS_pn-<pkg> and 
will be "red" for recipes that are either missing documentation or (as 
you add new recipes) have not been audited. The status will be "green" 
for recipes that either produce documentation or it's been confirmed 
that the recipe does not need to build documentation. I'd prefer not to 
further complicate the tracking field, but will consider suggestions 
from Saul or Richard if finer-grained detail is needed.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

--------------070804090905080806010202
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
fotowall
gawk
gcc
gccmakedep
gconf-dbus
gdb
gdbm
gdk-pixbuf
genext2fs
gettext
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
jpeg
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
libidn
libmpc
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
modutils
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
rpm
rsync
screen
sed
setserial
shared-mime-info
speex
strace
subversion
sudo
sysfsutils
sysklogd
syslinux
sysstat
systemtap
talloc
tar
tcl
tcp-wrappers
telepathy-glib
telepathy-idle
telepathy-mission-control
texinfo
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
xdpyinfo
xextproto
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
xwininfo
xz
zip
zypper

--------------070804090905080806010202
Content-Type: text/plain;
 name="documentation_missing.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="documentation_missing.txt"

adt-installer
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
clutter
clutter-1.4
clutter-box2d
clutter-gst-1.4
clutter-gtk-1.4
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
eds-tools
eee-acpi-scripts
eggdbus
eglibc-initial
elfutils
encodings
evieext
external-csl-toolchain
external-poky-toolchain
external-python-tarball
font-alias
font-util
fontcacheproto
fontconfig
formfactor
freetype
fstests
gail
gaku
galago-daemon
gamin
gcc-cross
gcc-cross-canadian-i586
gcc-cross-initial
gcc-cross-intermediate
gcc-cross-kernel-3.4.4
gcc-crosssdk
gcc-crosssdk-initial
gcc-crosssdk-intermediate
gcc-runtime
gdb-cross
gdb-cross-canadian-i586
git
glew
glibc
glibc-initial
glproto
gnome-common
gnome-icon-theme
gnome-mime-data
gnu-config
gobject-introspection
grub
gst-ffmpeg
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
hicolor-icon-theme
hostap-conf
hostap-utils
initramfs-boot
initramfs-live-boot
initramfs-live-install
initscripts
iputils
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
libdrm-poulsbo
liberation-fonts
libfakekey
libfontenc
libgcc
libgdbus
libgpg-error
libgsmd
libical
libiconv
libid3tag
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
libxml-parser-perl
libxml-perl
libxml-simple-perl
libxprintapputil
libxprintutil
libxsettings-client
libxtrap
libzypp
linux
linux-dummy
linux-firmware
linux-libc-headers
linux-libc-headers-yocto
linux-rp
linux-yocto
linux-yocto-stable
lrzsz
lsb
lsbsetup
lttng-control
lttng-viewer
lzo
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
modutils-collateral
modutils-cross
modutils-initscripts
mutter
netbase
oh-puzzles
openjade
opkg-collateral
opkg-config-base
opkg-utils
orinoco-conf
owl-video
package-index
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
quicky
quota
resolvconf
resourceproto
run-postinsts
rxvt-unicode
sat-solver
sato-icon-theme
screenshot
scrnsaverproto
settings-daemon
sgml-common
shadow
sqlite3
startup-notification
sysprof
sysvinit
table
taglib
tcf-agent
telepathy-python
tidy
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
xorg-minimal-fonts
xproto
xserver-nodm-init
xserver-xf86-config
xtscal
xvideo-tests
yaffs2-utils
zaurusd
zeroconf
zlib

--------------070804090905080806010202
Content-Type: text/plain;
 name="build_errors.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="build_errors.txt"

alsa-tools
eds-tools
external-csl-toolchain
external-poky-toolchain
gail
gcc-cross-kernel-3.4.4
glibc
glibc-initial
gobject-introspection
gst-openmax
gst-plugins-ugly
libiconv
libomxil
libx11-diet
linux-rp
modutils-cross
mutter
openjade
rxvt-unicode
table
tidy
update-alternatives-dpkg

--------------070804090905080806010202--
