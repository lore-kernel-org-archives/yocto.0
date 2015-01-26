Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C137CE00836; Mon, 26 Jan 2015 07:56:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F121FE006AF
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 07:56:34 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 26 Jan 2015 07:53:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,469,1418112000"; d="scan'208";a="517722029"
Received: from alimon-thinkpad-w540.zpn.intel.com (HELO alimon-ThinkPad-W540)
	([10.219.4.57])
	by orsmga003.jf.intel.com with ESMTP; 26 Jan 2015 07:49:30 -0800
MIME-Version: 1.0
From: anibal.limon@linux.intel.com
To: yocto@yoctoproject.org
Date: Mon, 26 Jan 2015 15:56:35 -0000
Message-ID: <20150126155635.19825.48788@alimon-ThinkPad-W540>
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
X-List-Received-Date: Mon, 26 Jan 2015 15:56:45 -0000
Content-Type: text/plain; charset="utf-8"
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

Package               Version        Upstream version      Maintainer           NoUpgradeReason
--------------------  -------------  --------------------  -------------------  ------------------------------
gnome-icon-theme      2.31.0         3.7.4                 Alejandro Hernandez  waiting for the sato gtk3 port
midori                0.5.8          0.5.9                 Alejandro Hernandez
dpkg                  1.17.21        1.17.23               Aníbal Limón
screen                4.0.3          4.2.1                 Aníbal Limón
apt                   0.9.9.4        1.0.9.6               Aníbal Limón
jpeg                  8d             9                     Aníbal Limón         webkit-gtk 1.8.3 doesn't wo...
nettle                2.7.1          3.0                   Armin Kuster         3.0.0 breaks gnutls, api ch...
linux-libc-headers    3.17.7         3.18.3                Bruce Ashfield
sysstat               11.0.2         11.1.2                Chen Qi
busybox               1.22.1         1.23.0                Chen Qi
systemd               216+gitX       218+gitAUTOINC+cc...  Chen Qi
console-tools         0.3.2          1999.03.02            Chen Qi
bison                 2.7.1          3.0.4                 Chong Lu
dbus                  1.8.10         1.9.6                 Chong Lu             D-BUS 1.9.x is the developm...
quota                 4.01           4.02                  Cristian Iorga
libical               1.0.0          1.0.1                 Cristian Iorga
pulseaudio            5.0            5.99.3                Cristian Iorga
libatomics-ops        7.2            7.4.0                 Cristian Iorga
neon                  0.30.0         0.30.1                Cristian Iorga
speex                 1.2rc1         1.2rc2                Cristian Iorga
gst-fluendo-mpegd...  0.10.72        0.10.85               Cristian Iorga
gst-fluendo-mp3       0.10.31        0.10.32               Cristian Iorga
db                    6.0.30         6.1.19                Cristian Iorga       API compatibility issue
flac                  1.3.0          1.3.1                 Cristian Iorga
connman               1.26           1.27                  Cristian Iorga
gst-plugin-bluetooth  4.101          5.27                  Cristian Iorga
bluez4                4.101          5.27                  Cristian Iorga       BlueZ 5.x is not backward-c...
iproute2              3.17.0         3.18.0                Cristian Iorga
ofono                 1.15           1.16                  Cristian Iorga
neard                 0.14           0.15                  Cristian Iorga
harfbuzz              0.9.37         0.9.38                Cristian Iorga
linux-yocto           3.14.24+gitX   3.14.26+gitAUTOIN...  Darren Hart
kernelshark           1.2+gitX       2.5.1+gitAUTOINC+...  Darren Hart          0.2 is the latest version.
trace-cmd             2.3.2+gitX     2.5.1+gitAUTOINC+...  Darren Hart
pigz                  2.3.1          2.3.3                 Hongxu Jia
qmmp                  0.7.7          0.8.3                 Hongxu Jia
man                   1.6g           2.5a6                 Hongxu Jia
perl                  5.20.0         5.21.8                Hongxu Jia
libxml-parser-perl    2.41           2.44                  Hongxu Jia
groff                 1.22.2         1.22.3                Hongxu Jia           1.18.1.4 is latest GPLv2 Ve...
bash                  4.3            4.3.30                Hongxu Jia
patch                 2.7.1          2.7.3                 Hongxu Jia
createrepo            0.4.11         0.10.3                Hongxu Jia           Versions after 0.9.* use YU...
socat                 1.7.2.4        1.7.3.0               Hongxu Jia
man-pages             3.76           3.78                  Hongxu Jia
adt-installer         0.2.0          1.1                   Jessica Zhang
bind                  9.9.5          11                    Kai Kang
libsdl                1.2.15         1.2.15-1              Kai Kang
python-numpy          1.7.0          1.9.1                 Khem Raj
rpm                   5.4.14         5.4.15-0.20140824     Mark Hatle
libinput              0.7.0          0.8.0                 No Maintainer
libgfortran           4.9.1          4.9.2                 No Maintainer
gcc-source            4.9.1          4.9.2                 No Maintainer
u-boot                v2014.07+gitX  v2015.01+gitAUTOI...  No Maintainer
linux-yocto-dev       3.17++gitX     3.17.6++5ff54d8fb...  No Maintainer
ca-certificates       20140325       20141019              No Maintainer
libpfm4               4.3.0          4.6.0                 No Maintainer
dbus-test             1.8.10         1.9.6                 No Maintainer
uclibc                0.9.33+gitX    0.9.33.2+gitAUTOI...  No Maintainer
gcc-sanitizers        4.9.1          4.9.2                 No Maintainer
libxshmfence          1.1            1.2                   No Maintainer
waffle                1.3.0          1.5.1                 No Maintainer
mesa-gl               10.3.4         10.4.3                No Maintainer
qt-mobility-x11       1.2.0          1.2.2-20120224        Paul Eggleton
qt-mobility-embedded  1.2.0          1.2.2-20120224        Paul Eggleton
ethtool               3.16           3.18                  Paul Eggleton
cmake                 2.8.12.2       3.1.1                 Paul Eggleton
augeas                1.2.0          1.3.0                 Paul Eggleton
yasm                  1.2.0          1.3.0                 Paul Eggleton
dosfstools            2.11           3.0.26                Paul Eggleton
unfs3                 0.9.22.r490    0.9.22.r494           Paul Eggleton
gpgme                 1.4.3          1.5.3                 Paul Eggleton
libav                 9.16           11.2                  Paul Eggleton
libgpg-error          1.17           1.18                  Paul Eggleton
libevdev              1.3            1.3.2                 Paul Eggleton
x264                  r2265+gitX     r2491                 Paul Eggleton
gcc                   4.9.1          4.9.2                 Richard Purdie
subversion            1.8.10         1.8.11                Richard Purdie
python-distribute     0.6.32         0.7.3                 Richard Purdie       0.7.3 only upgrades 0.6.32,...
python-gst            0.10.22        1.4.0                 Richard Purdie
python-scons          2.3.2          2.3.4                 Richard Purdie
python-pygobject      2.28.3         3.13.3                Richard Purdie       Newer versions of python-py...
python-pycurl         7.19.5         7.19.5.1              Richard Purdie
python                2.7.3          3.4.2rc1              Richard Purdie
python3               3.3.3          3.4.2rc1              Richard Purdie
btrfs-tools           3.14.2+gitX    3.18.1+gitAUTOINC...  Richard Purdie
tcf-agent             0.4.0+gitX     8.0+gitAUTOINC+46...  Richard Purdie
gdb                   7.8.1          7.8.2                 Richard Purdie
bdwgc                 7.4.2          gc-7.2d               Richard Purdie
libdrm                2.4.58         2.4.59                Richard Purdie
binutils              2.24           2.25                  Robert Yang
ltp                   20140828       20150119              Robert Yang
git                   2.2.1          2.2.2                 Robert Yang
e2fsprogs             1.42.9         1.42.12               Robert Yang
libtool               2.4.4          2.4.5                 Robert Yang
glib-2.0              2.42.1         2.43.3                Robert Yang
wayland               1.6.0          1.6.91                Ross Burton
gdk-pixbuf            2.30.8         2.31.2                Ross Burton
gtk+                  2.24.25        3.15.4                Ross Burton          Do not upgrade to version: ...
gtk+3                 3.12.2         3.15.4                Ross Burton
gtk-engines           2.20.2         2.91.1                Ross Burton          2.91.1 is a 3.0 beta release
libnotify             0.6.0          0.7.6                 Ross Burton
webkit-gtk            1.8.3          1.10.2                Ross Burton          >= 1.10.2 needs ruby
puzzles               r10116         r10286                Ross Burton
libpam                1.1.6          1.1.8                 Ross Burton
vala                  0.26.1         0.27.1                Ross Burton
vte                   0.28.2         0.39.1                Ross Burton          Pending Glib-2.0 Update
libsoup-2.4           2.46.0         2.49.1                Ross Burton
icu                   53.1           55                    Ross Burton
libtasn1              4.0            4.2                   Ross Burton
gnutls                3.3.11         3.3.12                Ross Burton
at-spi2-core          2.14.1         2.15.4                Ross Burton
atk                   2.14.0         2.15.4                Ross Burton
at-spi2-atk           2.14.1         2.15.4                Ross Burton
libpng                1.6.13         1.6.16                Ross Burton
x11-common            0.1            1:7.6                 Ross Burton
liberation-fonts      1.04           2.00.1                Ross Burton          2.00.0 - fontforge package ...
glib-networking       2.38.0         2.43.1                Ross Burton          Pending Glib-2.0 Update
freetype              2.5.4          2.5.5                 Ross Burton
xf86-video-omap       0.4.2+gitrX    0.4.3+gitrAUTOINC...  Ross Burton
xf86-video-vmware     13.0.2         13.1.0                Ross Burton
xserver-xorg          1.16.2         1.16.99.902           Ross Burton
cairo                 1.12.18        5c-1.5                Ross Burton
xproto                7.0.26         7.0.27                Ross Burton
mesa                  10.3.4         10.4.3                Ross Burton
clutter-gtk-1.0       1.4.4          1.6.0                 Ross Burton
clutter-gst-1.0       1.6.0          3.0.4                 Ross Burton
clutter-1.0           1.20.0         1.21.4                Ross Burton
fontconfig            2.11.1         2.11.92               Ross Burton
weston                1.6.0          1.6.91                Ross Burton
libunique             1.1.6          3.0.2                 Saul Wold            Do not upgrade to version: ...
gcc-runtime           4.9.1          4.9.2                 Saul Wold
libgcc                4.9.1          4.9.2                 Saul Wold
u-boot-mkimage        v2014.07+gitX  v2015.01+gitAUTOI...  Saul Wold
lsbinitscripts        9.60           9.61                  Saul Wold
linux-yocto-tiny      3.17.6+gitX    2012+gitAUTOINC+5...  Saul Wold
nspr                  4.10.7         4.10.8                Saul Wold
tiff                  4.0.3          4.0.4beta             Saul Wold
initscripts           1.0            9.40                  Saul Wold
openssl               1.0.1j         1.0.2                 Saul Wold
base-passwd           3.5.29         3.5.37                Saul Wold
build-appliance-i...  8.0            12.0.1                Saul Wold
mkfontscale           1.1.1          1.1.2                 Saul Wold
u-boot-fw-utils       v2014.07+gitX  v2015.01+gitAUTOI...  Saul Wold
mx-1.0                1.4.7+gitX     1.99.4+gitAUTOINC...  Saul Wold            PRS 1.99 is dev version
blktrace              1.0.5+gitX     1.1.0+gitAUTOINC+...  Tom Zanussi
chkconfig             1.3.58         1.3.63                Wenzong Fan
ccache                3.1.9          3.2.1                 Wenzong Fan

Upgradable count: 129
Upgradable total count: 148

The based commit is:

commit 2a775ebbb175dd70fc7228607c306d4ccb9e4ba4
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Wed Jan 21 17:33:55 2015 +0000

    net-tools: Fix rerunning of do_patch task
    
    Rerunning the do_patch task currently fails. The code is nearly correct
    but needs to remove the quilt ".pc" directory and move the secondary
    one into place in order to rerun, not move it into the .pc directory
    as the code currently does.
    
    [YOCTO #7128]
    
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Saul Wold <sgw@linux.intel.com> 

