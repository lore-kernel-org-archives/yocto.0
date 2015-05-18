Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7072EE0086D; Mon, 18 May 2015 03:15:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3871E007B6
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 03:15:03 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id CD67484D3283
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 06:15:01 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 18 May 2015 10:15:01 -0000
Message-ID: <20150518101501.28883.55066@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 18 May 2015 10:15:10 -0000
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

http://packages.yoctoproject.org/

Package               Version        Upstream version      Maintainer           NoUpgradeReason
--------------------  -------------  --------------------  -------------------  ------------------------------
nfs-utils             1.3.1          1.3.2                 Alejandro Hernandez
midori                0.5.8          0.5.10                Alejandro Hernandez
python                2.7.9          3.5.0a4               Alejandro Hernandez
which                 2.20           2.21                  Alejandro Hernandez
gnome-icon-theme      2.31.0         3.12.0                Alejandro Hernandez  waiting for the sato gtk3 port
jpeg                  8d             9a                    Aníbal Limón         webkit-gtk 1.8.3 doesn't wo...
sqlite3               3.8.7.4        3.8.10.1.             Aníbal Limón
mc                    4.8.13         4.8.14                Aníbal Limón
screen                4.0.3          4.2.1                 Aníbal Limón
nettle                2.7.1          3.1rc3                Armin Kuster         3.0.0 breaks gnutls, api ch...
pinentry              0.9.1          0.9.2                 Armin Kuster
linux-libc-headers    3.19           3.19.8                Bruce Ashfield
console-tools         0.3.2          1999.03.02            Chen Qi
systemd               219+gitX       21585a6fabdd3e43c...  Chen Qi
util-linux            2.26.1         2.26.2                Chen Qi
gawk                  4.1.1          4.1.2                 Chen Qi              Version 4.1.0 requires Auto...
dbus-test             1.8.10         1.9.16                Chong Lu
iproute2              3.17.0         4.0.0                 Cristian Iorga
libpcap               1.6.2          1.7.3                 Cristian Iorga
wpa-supplicant        2.3            2.4                   Cristian Iorga
gst-plugins-ugly      0.10.19        1.4.5                 Cristian Iorga
alsa-utils-alsaconf   1.0.28         1.0.29                Cristian Iorga
gst-ffmpeg            0.10.13        0.11.2                Cristian Iorga
gst-fluendo-mp3       0.10.31        0.10.32               Cristian Iorga
gst-plugins-bad       0.10.23        1.4.5                 Cristian Iorga       not compatible with gst-flu...
gst-plugins-base      0.10.36        1.4.5                 Cristian Iorga       not compatible with gst-flu...
gst-plugins-good      0.10.31        1.4.5                 Cristian Iorga       not compatible with gst-flu...
gstreamer             0.10.36        1.4.5                 Cristian Iorga       not compatible with gst-fl...
libvorbis             1.3.4          1.3.5                 Cristian Iorga
libatomics-ops        7.2            7.4.0                 Cristian Iorga
speex                 1.2rc1         1.2rc2                Cristian Iorga
db                    6.0.30         6.1.23.NC             Cristian Iorga       API compatibility issue
libical               1.0.0          1.0.1                 Cristian Iorga
libtirpc              0.2.5          0.3.0                 Cristian Iorga
harfbuzz              0.9.38         0.9.40                Cristian Iorga
linux-yocto-rt        3.14.36+gitX   3.14.39+gitAUTOIN...  Darren Hart
u-boot-fw-utils       v2015.01+gitX  v2015.04+gitAUTOI...  Denys Dmytriyenko
u-boot-mkimage        v2015.01+gitX  v2015.04+gitAUTOI...  Denys Dmytriyenko
u-boot                v2015.01+gitX  v2015.04+gitAUTOI...  Denys Dmytriyenko
ncurses               5.9            20150516              Hongxu Jia
distcc                3.1            3.2rc1                Hongxu Jia
qmmp                  0.7.7          0.8.4                 Hongxu Jia
perl                  5.20.0         5.21.11               Hongxu Jia
createrepo            0.4.11         0.10.4                Hongxu Jia           Versions after 0.9.* use YU...
gnupg                 2.1.2          2.1.4                 Hongxu Jia
bash                  4.3            4.3.30                Hongxu Jia           The latest version in yocto...
libx11-diet           1.6.2          1.6.3                 Kai Kang
python-mako           0.9.1          1.0.1                 Khem Raj
python-nose           1.2.1          1.3.6                 Khem Raj
python-numpy          1.7.0          1.9.2                 Khem Raj
rpm                   5.4.14         5.4.15                Mark Hatle
libpfm4               4.3.0          4.6.0                 Matthew McClintock
gcc-sanitizers        4.9.2          5.1.0                 No maintainer
debianutils           4.4            4.5                   No maintainer
grub                  2.00+X         2.00+AUTOINC+a666...  Paul Eggleton
dropbear              2014.66        2015.67               Paul Eggleton
cmake                 2.8.12.2       3.2.2                 Paul Eggleton
dosfstools            2.11           3.0.27                Paul Eggleton
libav                 9.16           11.3                  Paul Eggleton
x264                  r2265+gitX     r2491                 Paul Eggleton
qt4-embedded          4.8.6          5.4.1                 Paul Eggleton
qt4-x11-free          4.8.6          5.4.1                 Paul Eggleton
yasm                  1.2.0          1.3.0                 Paul Eggleton
augeas                1.2.0          1.3.0                 Paul Eggleton
libgpg-error          1.18           1.19                  Paul Eggleton
libevdev              1.3            1.4.2                 Paul Eggleton
libpng12              1.2.52         1.6.17                Randy Witt
python-async          0.6.1          0.6.2                 Randy Witt
tcf-agent             0.4.0+gitX     8.0+gitAUTOINC+e4...  Randy Witt
unfs3                 0.9.22.r490    0.9.22.r494           Randy Witt
libpng                1.6.16         1.6.17                Randy Witt
libunistring          0.9.4          0.9.5                 Randy Witt
ethtool               3.16           3.18                  Randy Witt
libpam                1.1.6          1.2.0                 Randy Witt
libpciaccess          0.13.3         0.13.4                Richard Purdie
btrfs-tools           3.18.2+gitX    4.0+gitAUTOINC+19...  Richard Purdie
lttng-ust             2.6.0          2.6.1                 Richard Purdie
gcc-runtime           4.9.2          5.1.0                 Richard Purdie
gcc-source            4.9.2          5.1.0                 Richard Purdie
libgcc                4.9.2          5.1.0                 Richard Purdie
libgfortran           4.9.2          5.1.0                 Richard Purdie
gdb                   7.9            7.9.1                 Richard Purdie
intltool              0.50.2         0.51.0                Richard Purdie
nasm                  2.11.06        2.11.08               Richard Purdie
python-distribute     0.6.32         0.7.3                 Richard Purdie       0.7.3 only upgrades 0.6.32,...
python-gst            0.10.22        1.4.0                 Richard Purdie
python-pygobject      2.28.3         3.16.1                Richard Purdie       Newer versions of python-py...
libdrm                2.4.59         2.4.61                Richard Purdie
libmpc                1.0.2          1.0.3                 Richard Purdie
glib-2.0              2.44.0         2.45.1                Robert Yang
binutils              2.25           7.9.1                 Robert Yang
e2fsprogs             1.42.9         1.42.11               Robert Yang
gmp                   6.0.0          6.0.0a                Robert Yang
logrotate             3.8.8          3.9.1                 Robert Yang
liberation-fonts      1.04           2.00.1                Ross Burton          2.00.0 - fontforge package ...
waffle                1.3.0          1.5.1                 Ross Burton
libinput              0.7.0          0.15.0                Ross Burton
weston                1.6.0          1.7.92                Ross Burton
xvinfo                1.1.2          1.1.3                 Ross Burton
xf86-input-evdev      2.9.1          2.9.2                 Ross Burton
xf86-input-keyboard   1.8.0          1.8.1                 Ross Burton
xf86-input-synaptics  1.8.1          1.8.2                 Ross Burton
xf86-input-vmmouse    13.0.0         13.0.99               Ross Burton
xf86-video-omap       0.4.2+gitrX    0.4.3+gitrAUTOINC...  Ross Burton
xf86-video-vmware     13.0.2         13.1.0                Ross Burton
font-util             1.3.0          1.3.1                 Ross Burton
wayland               1.6.0          1.7.92                Ross Burton
libx11                1.6.2          1.6.3                 Ross Burton
libxdmcp              1.1.1          1.1.2                 Ross Burton
glib-networking       2.44.0         2.45.1                Ross Burton          Pending Glib-2.0 Update
libxkbfile            1.0.8          1.0.9                 Ross Burton
libxrender            0.9.8          0.9.9                 Ross Burton
libxshmfence          1.1            1.2                   Ross Burton
libxt                 1.1.4          1.1.5                 Ross Burton
libxvmc               1.0.8          1.0.9                 Ross Burton
libxxf86vm            1.1.3          1.1.4                 Ross Burton
xkeyboard-config      2.13           2.14                  Ross Burton
xserver-xorg          1.16.3         1.17.1                Ross Burton
xdpyinfo              1.3.1          1.3.2                 Ross Burton
libfontenc            1.1.2          1.1.3                 Ross Burton
puzzles               r10116         r10286                Ross Burton
webkit-gtk            1.8.3          1.9.92                Ross Burton          >= 1.10.2 needs ruby
vala                  0.26.1         0.28.0                Ross Burton
vte                   0.28.2         0.40.2                Ross Burton          Pending Glib-2.0 Update
gdk-pixbuf            2.30.8         2.31.4                Ross Burton          2.31.x is unstable
libxfont              1.5.0          1.5.1                 Ross Burton
gtk+3                 3.12.2         3.17.1                Ross Burton
gtk+                  2.24.27        3.17.1                Ross Burton          Do not upgrade to version: ...
gtk-engines           2.20.2         2.91.1                Ross Burton          2.91.1 is a 3.0 beta release
libnotify             0.6.0          0.7.6                 Ross Burton
clutter-1.0           1.20.0         1.22.2                Ross Burton
clutter-gst-1.0       1.6.0          3.0.4                 Ross Burton
clutter-gtk-1.0       1.4.4          1.6.0                 Ross Burton
cogl-1.0              1.18.2         1.20.0                Ross Burton
libxrandr             1.4.2          1.5.0                 Ross Burton
build-appliance-i...  12.0.1         13.0.0                Saul Wold
uclibc                0.9.33+gitX    0.9.33.2+gitAUTOI...  Saul Wold
libtheora             1.1.1          1.2.0alpha1           Saul Wold
tiff                  4.0.3          4.0.4beta             Saul Wold
boost                 1.57.0         1.58.0                Saul Wold
libksba               1.3.2          1.3.3                 Saul Wold
liburcu               0.8.6          0.8.7                 Saul Wold
libidn                1.29           1.30                  Saul Wold
lsbinitscripts        9.61           9.62                  Saul Wold
msmtp                 1.6.1          1.6.2                 Saul Wold
libunique             1.1.6          3.0.2                 Saul Wold            Do not upgrade to version: ...
mx-1.0                1.4.7+gitX     1.99.4+gitAUTOINC...  Saul Wold            PRS 1.99 is dev version
blktrace              1.0.5+gitX     1.1.0+gitAUTOINC+...  Tom Zanussi
chkconfig             1.3.58         1.4                   Wenzong Fan

Upgradable count: 127
Upgradable total count: 149

The based commit is:

commit aa2e02a4f78d87bd466bbf92ca57147066c5367f
Author: Mario Domenech Goulart <mario@ossystems.com.br>
Date:   Wed May 13 11:21:46 2015 -0300

    README: add "Contributing" section
    
    Tips on how to submit patches and links to source code and mailing
    list.
    
    Signed-off-by: Mario Domenech Goulart <mario@ossystems.com.br>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

