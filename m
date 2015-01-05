Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2783CE004F2; Mon,  5 Jan 2015 10:44:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3B43E00344
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 10:44:21 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 05 Jan 2015 10:40:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,701,1413270000"; d="scan'208";a="657087665"
Received: from unknown (HELO localhost.localdomain) ([10.252.252.96])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2015 10:44:05 -0800
Message-ID: <54AADB74.4070203@linux.intel.com>
Date: Mon, 05 Jan 2015 10:44:04 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: [Recipe reporting system] Upgradable recipe name list
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
X-List-Received-Date: Mon, 05 Jan 2015 18:44:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

This mail was sent out by Recipe reporting system.

This message list those recipes which need to be upgraded. If maintainers
believe some of them needn't to upgrade this time, they can fill in
RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this
recipe remainder until newer upstream version was detected.

Example:
RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 is unstable"

You can check the detail information at:

http://packages.yoctoproject.org/upgradepkgname

Package               Version        Upstream version      Maintainer 
         NoUpgradeReason
--------------------  -------------  -------------------- 
-------------------  ------------------------------
gnome-icon-theme      2.31.0         3.7.4                 Alejandro 
Hernandez  waiting for the sato gtk3 port
midori                0.5.8          0.5.9                 Alejandro 
Hernandez
dpkg                  1.17.21        1.17.23               Aníbal Limón
screen                4.0.3          4.2.1                 Aníbal Limón
apt                   0.9.9.4        1.0.9.5               Aníbal Limón
jpeg                  8d             9                     Aníbal Limón 
         webkit-gtk 1.8.3 doesn't wo...
nettle                2.7.1          3.0                   Armin Kuster 
         3.0.0 breaks gnutls, api ch...
linux-libc-headers    3.17.7         3.18.1                Bruce Ashfield
grep                  2.5.1a         2.21                  Chen Qi
sysklogd              1.5            1.5.1                 Chen Qi
sysstat               10.2.1         11.1.2                Chen Qi
curl                  7.38.0         7.39.0                Chen Qi
cpio                  2.8            2.11                  Chen Qi
util-linux            2.24.2         2.25.2                Chen Qi
coreutils             8.22           8.23                  Chen Qi
console-tools         0.3.2          1999.03.02            Chen Qi
bison                 2.7.1          3.0.2                 Chong Lu
dbus                  1.8.10         1.9.6                 Chong Lu 
         D-BUS 1.9.x is the developm...
quota                 4.01           4.02                  Cristian Iorga
libical               1.0.0          1.0.1                 Cristian Iorga
neon                  0.30.0         0.30.1                Cristian Iorga
pulseaudio            5.0            5.99.2                Cristian Iorga
libatomics-ops        7.2            7.4.0                 Cristian Iorga
speex                 1.2rc1         1.2rc2                Cristian Iorga
gst-fluendo-mpegd...  0.10.72        0.10.85               Cristian Iorga
db                    6.0.30         6.1.19                Cristian 
Iorga       API compatibility issue
gst-fluendo-mp3       0.10.19        0.10.31               Cristian Iorga
flac                  1.3.0          1.3.1                 Cristian Iorga
connman               1.26           1.27                  Cristian Iorga
bluez5                5.25           5.27                  Cristian Iorga
gst-plugin-bluetooth  4.101          5.27                  Cristian Iorga
bluez4                4.101          5.27                  Cristian 
Iorga       BlueZ 5.x is not backward-c...
iproute2              3.17.0         3.18.0                Cristian Iorga
ofono                 1.15           1.16                  Cristian Iorga
neard                 0.14           0.15                  Cristian Iorga
syslinux              6.01           6.03                  Darren Hart 
         Waiting for 4.06 for 3.3 ke...
linux-yocto-rt        3.14.24+gitX   3.14.26+gitAUTOIN...  Darren Hart
kernelshark           1.2+gitX       2.4+gitAUTOINC+29...  Darren Hart 
         0.2 is the latest version.
trace-cmd             2.3.2+gitX     2.4+gitAUTOINC+79...  Darren Hart
perl                  5.20.0         5.21.7                Hongxu Jia
libxml-parser-perl    2.41           2.43                  Hongxu Jia
elfutils              0.160          0.161                 Hongxu Jia
xmlto                 0.0.25         0.0.26                Hongxu Jia
bash                  4.3            4.3.30                Hongxu Jia
groff                 1.22.2         1.22.3                Hongxu Jia 
         1.18.1.4 is latest GPLv2 Ve...
rpcbind               0.2.1          0.2.2                 Hongxu Jia
man                   1.6g           2.5a6                 Hongxu Jia
createrepo            0.4.11         0.10.3                Hongxu Jia 
         Versions after 0.9.* use YU...
gnupg                 2.0.26         2.1.1                 Hongxu Jia
man-pages             3.75           3.76                  Hongxu Jia
dhcp                  4.3.0          4.3.1                 Hongxu Jia
directfb              1.7.4          1.7.6                 Hongxu Jia
adt-installer         0.2.0          1.1                   Jessica Zhang
bind                  9.9.5          11                    Kai Kang
libsdl                1.2.15         1.2.15-1              Kai Kang
python-nose           1.2.1          1.3.4                 Khem Raj
python-numpy          1.7.0          1.9.1                 Khem Raj
python3-distribute    0.6.32         0.7.3                 Khem Raj
python-mako           0.9.1          1.0.0                 Khem Raj
rpm                   5.4.14         5.4.15-0.20140824     Mark Hatle
libgfortran           4.9.1          4.9.2                 No Maintainer
gcc-source            4.9.1          4.9.2                 No Maintainer
json-c                0.11           0.12                  No Maintainer
python-git            0.3.2.RC1      0.3.3                 No Maintainer
u-boot                v2014.07+gitX  v2014.10+gitAUTOI...  No Maintainer
python-async          0.6.1          0.6.2                 No Maintainer
gnu-efi               3.0u           3.0w                  No Maintainer
python-smmap          0.8.2          0.8.3                 No Maintainer
python-gitdb          0.5.4          0.6.1                 No Maintainer
linux-yocto-dev       3.17++gitX     3.17.6++5ff54d8fb...  No Maintainer
libpfm4               4.3.0          4.6.0                 No Maintainer
uclibc                0.9.33+gitX    0.9.33.2+gitAUTOI...  No Maintainer
ca-certificates       20140325       20141019              No Maintainer
dbus-test             1.8.10         1.9.6                 No Maintainer
libxshmfence          1.1            1.2                   No Maintainer
systemd               216+gitX       218+gitAUTOINC+9c...  No Maintainer
waffle                1.3.0          1.5.0                 No Maintainer
mesa-gl               10.3.4         10.4.1                No Maintainer
dropbear              2014.63        2014.66               Paul Eggleton
ethtool               3.16           3.18                  Paul Eggleton
qt-mobility-x11       1.2.0          1.2.2-20120224        Paul Eggleton
cmake                 2.8.12.2       3.1.0                 Paul Eggleton
augeas                1.2.0          1.3.0                 Paul Eggleton
yasm                  1.2.0          1.3.0                 Paul Eggleton
dosfstools            2.11           3.0.26                Paul Eggleton
unfs3                 0.9.22.r490    0.9.22.r494           Paul Eggleton
gpgme                 1.4.3          1.5.3                 Paul Eggleton
libav                 9.16           11.1                  Paul Eggleton
libgpg-error          1.12           1.17                  Paul Eggleton
libevdev              1.2.2          1.3.2                 Paul Eggleton
x264                  r2265+gitX     r2491                 Paul Eggleton
openssh               6.6p1          6.7p1                 Paul Eggleton
qt-mobility-embedded  1.2.0          1.2.2-20120224        Paul Eggleton
gcc                   4.9.1          4.9.2                 Richard Purdie
subversion            1.8.10         1.8.11                Richard Purdie
python-distribute     0.6.32         0.7.3                 Richard 
Purdie       0.7.3 only upgrades 0.6.32,...
python-gst            0.10.22        1.4.0                 Richard Purdie
python-scons          2.3.2          2.3.4                 Richard Purdie
python-pygobject      2.28.3         3.13.3                Richard 
Purdie       Newer versions of python-py...
python                2.7.3          3.4.2rc1              Richard Purdie
python3               3.3.3          3.4.2rc1              Richard Purdie
btrfs-tools           3.14.2+gitX    3.18+gitAUTOINC+1...  Richard Purdie
tcf-agent             0.4.0+gitX     8.0+gitAUTOINC+3d...  Richard Purdie
bdwgc                 7.4.2          gc-7.2d               Richard Purdie
file                  5.21           5.22                  Robert Yang
binutils              2.24           2.25                  Robert Yang
git                   2.2.0          2.2.1                 Robert Yang
e2fsprogs             1.42.9         1.42.12               Robert Yang
libtool               2.4.2          2.4.4                 Robert Yang
m4                    1.4.9          1.4.17                Robert Yang
gmp                   6.0.0          6.0.0a                Robert Yang
glib-2.0              2.42.1         2.43.2                Robert Yang
json-glib             1.0.0          1.0.2                 Ross Burton
gdk-pixbuf            2.30.8         2.31.2                Ross Burton
gtk+                  2.24.25        3.15.3                Ross Burton 
         Do not upgrade to version: ...
gtk+3                 3.12.2         3.15.3                Ross Burton
gtk-engines           2.20.2         2.91.1                Ross Burton 
         2.91.1 is a 3.0 beta release
hicolor-icon-theme    0.13           0.14                  Ross Burton
librsvg               2.40.2         2.40.6                Ross Burton
libnotify             0.6.0          0.7.6                 Ross Burton
webkit-gtk            1.8.3          1.10.2                Ross Burton 
         >= 1.10.2 needs ruby
puzzles               r10116         r10286                Ross Burton
libtasn1              4.0            4.2                   Ross Burton
icu                   53.1           55                    Ross Burton
libpam                1.1.6          1.1.8                 Ross Burton
libpng12              1.2.51         1.2.52                Ross Burton
libfm                 1.1.2.2        1.2.3                 Ross Burton
vte                   0.28.2         0.39.1                Ross Burton 
         Pending Glib-2.0 Update
at-spi2-core          2.14.1         2.15.3                Ross Burton
atk                   2.14.0         2.15.3                Ross Burton
at-spi2-atk           2.14.1         2.15.3                Ross Burton
libpng                1.6.13         1.6.16                Ross Burton
x11-common            0.1            1:7.6                 Ross Burton
glib-networking       2.38.0         2.43.1                Ross Burton 
         Pending Glib-2.0 Update
liberation-fonts      1.04           2.00.1                Ross Burton 
         2.00.0 - fontforge package ...
xkeyboard-config      2.12           2.13                  Ross Burton
freetype              2.5.3          2.5.5                 Ross Burton
xf86-video-intel      2.99.912       2.99.917              Ross Burton
xf86-video-omap       0.4.2+gitrX    0.4.3+gitrAUTOINC...  Ross Burton
xf86-video-modese...  0.8.1          0.9.0                 Ross Burton
xf86-input-evdev      2.9.0          2.9.1                 Ross Burton
xf86-input-synaptics  1.8.0          1.8.1                 Ross Burton
xserver-xorg          1.16.2         1.16.99.901           Ross Burton
xkbcomp               1.2.4          1.3.0                 Ross Burton
xinit                 1.3.3          1.3.4                 Ross Burton
cairo                 1.12.18        5c-1.5                Ross Burton
xcb-proto             1.2+gitrX      1.11+gitrAUTOINC+...  Ross Burton
libsoup-2.4           2.46.0         2.49.1                Ross Burton
xproto                7.0.26         7.0.27                Ross Burton
mesa                  10.3.4+gitX    10.4.1+gitAUTOINC...  Ross Burton
clutter-gtk-1.0       1.4.4          1.6.0                 Ross Burton
clutter-gst-1.0       1.6.0          3.0.0                 Ross Burton
clutter-1.0           1.20.0         1.21.2                Ross Burton
fontconfig            2.11.1         2.11.91               Ross Burton
libffi                3.1            3.2.1                 Saul Wold
libunique             1.1.6          3.0.2                 Saul Wold 
         Do not upgrade to version: ...
rxvt-unicode          9.20           9.21                  Saul Wold
gcc-runtime           4.9.1          4.9.2                 Saul Wold
libgcc                4.9.1          4.9.2                 Saul Wold
u-boot-mkimage        v2014.07+gitX  v2014.10+gitAUTOI...  Saul Wold
msmtp                 1.4.32         1.6.1                 Saul Wold
lsbinitscripts        9.56.1         9.60                  Saul Wold
libaio                0.3.109        0.3.110               Saul Wold
dtc                   1.4.0+gitX     1.4.1+gitAUTOINC+...  Saul Wold
gdbm                  1.8.3          1.11                  Saul Wold
linux-yocto-tiny      3.17.6+gitX    2012+gitAUTOINC+5...  Saul Wold
libassuan             2.1.2          2.2.0                 Saul Wold
liburcu               0.8.5          0.8.6                 Saul Wold
initscripts           1.0            9.40                  Saul Wold
base-passwd           3.5.29         3.5.37                Saul Wold
build-appliance-i...  8.0            12.0.0                Saul Wold
usbutils              007            008                   Saul Wold
rgb                   1.0.5          1.0.6                 Saul Wold
u-boot-fw-utils       v2014.07+gitX  v2014.10+gitAUTOI...  Saul Wold
libksba               1.3.1          1.3.2                 Saul Wold
mx-1.0                1.4.7+gitX     1.99.4+gitAUTOINC...  Saul Wold 
         PRS 1.99 is dev version
blktrace              1.0.5+gitX     1.1.0+gitAUTOINC+...  Tom Zanussi
chkconfig             1.3.58         1.3.63                Wenzong Fan
ccache                3.1.9          3.2.1                 Wenzong Fan
gettext               0.18.3.2       0.19.4                Wenzong Fan

Upgradable count: 160
Upgradable total count: 180

The based commit is:

commit 24f19fedb40d0af84beb8e9a6595ea06f09d4615
Author: Awais Belal <awais_belal@mentor.com>
Date:   Mon Dec 29 14:46:48 2014 +0500

     gstreamer1.0-omx: use mulitple SCMs to fetch submodules
         The gstreamer omx package uses a submodule 'common' which
     is fetched by the configure script. This approach fails
     on non-network builds as the fetcher tries to look upstream
     for the submodule.
     We now use multiple SCMs, one for the main omx package and
     the other for the 'common' submodule so it is available in
     the downloads_dir for later use.
         Signed-off-by: Awais Belal <awais_belal@mentor.com>
     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Saul Wold <sgw@linux.intel.com>

