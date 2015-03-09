Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37F1AE00712; Mon,  9 Mar 2015 03:14:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 368A5E00477
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 03:14:46 -0700 (PDT)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 92A8C84821C2
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 06:14:44 -0400 (EDT)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 09 Mar 2015 10:14:44 -0000
Message-ID: <20150309101444.6544.48975@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 09 Mar 2015 10:14:50 -0000
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

Package               Version      Upstream version      Maintainer           NoUpgradeReason
--------------------  -----------  --------------------  -------------------  ------------------------------
nfs-utils             1.3.1        1.3.2                 Alejandro Hernandez
midori                0.5.8        0.5.9                 Alejandro Hernandez
python-smmap          0.8.2        0.9.0                 Alejandro Hernandez
gnome-icon-theme      2.31.0       3.12.0                Alejandro Hernandez  waiting for the sato gtk3 port
jpeg                  8d           9a                    Aníbal Limón         webkit-gtk 1.8.3 doesn't wo...
apt                   0.9.9.4      1.0.9.7               Aníbal Limón
dpkg                  1.17.21      1.17.24               Aníbal Limón
sqlite3               3.8.7.4      3.8.8.3.              Aníbal Limón
screen                4.0.3        4.2.1                 Aníbal Limón
nettle                2.7.1        3.0                   Armin Kuster         3.0.0 breaks gnutls, api ch...
linux-libc-headers    3.19         3.19.1                Bruce Ashfield
resolvconf            1.76         1.76.1                Chen Qi
console-tools         0.3.2        1999.03.02            Chen Qi
util-linux            2.25.2       2.26                  Chen Qi
kmod                  19+gitX      20+gitAUTOINC+037...  Chen Qi
curl                  7.40.0       7.41.0                Chen Qi
sudo                  1.8.11p2     1.8.12                Chen Qi
sysstat               11.0.2       11.1.3                Chen Qi
xz                    5.2.0        5.2.1                 Chen Qi
dbus-glib             0.102        0.104                 Chong Lu
dbus-test             1.8.10       1.9.14                Chong Lu
dbus                  1.8.10       1.9.14                Chong Lu             D-BUS 1.9.x is the developm...
bison                 2.7.1        3.0.4                 Chong Lu
strace                4.9          4.10                  Chong Lu
bluez4                4.101        5.28                  Cristian Iorga       BlueZ 5.x is not backward-c...
gst-plugin-bluetooth  4.101        5.28                  Cristian Iorga
iproute2              3.17.0       3.19.0                Cristian Iorga
alsa-lib              1.0.28       1.0.29                Cristian Iorga
alsa-utils-alsaconf   1.0.28       1.0.29                Cristian Iorga
alsa-utils            1.0.28       1.0.29                Cristian Iorga
gst-ffmpeg            0.10.13      0.11.2                Cristian Iorga
gst-fluendo-mp3       0.10.31      0.10.32               Cristian Iorga
gst-plugins-bad       0.10.23      1.4.5                 Cristian Iorga       not compatible with gst-flu...
gst-plugins-base      0.10.36      1.4.5                 Cristian Iorga       not compatible with gst-flu...
gst-plugins-good      0.10.31      1.4.5                 Cristian Iorga       not compatible with gst-flu...
gst-plugins-ugly      0.10.19      1.4.5                 Cristian Iorga
gstreamer             0.10.36      1.4.5                 Cristian Iorga       not compatible with gst-fl...
libvorbis             1.3.4        1.3.5                 Cristian Iorga
libatomics-ops        7.2          7.4.0                 Cristian Iorga
speex                 1.2rc1       1.2rc2                Cristian Iorga
db                    6.0.30       6.1.23.NC             Cristian Iorga       API compatibility issue
libical               1.0.0        1.0.1                 Cristian Iorga
quota                 4.01         4.02                  Cristian Iorga
harfbuzz              0.9.38       0.9.39                Cristian Iorga
hwlatdetect           0.89         0.91                  Darren Hart
rt-tests              0.89         0.91                  Darren Hart
dhcp                  4.3.1        4.3.2                 Hongxu Jia
socat                 1.7.2.4      1.7.3.0               Hongxu Jia
distcc                3.1          3.2rc1                Hongxu Jia
qmmp                  0.7.7        0.8.3                 Hongxu Jia
patch                 2.7.1        2.7.5                 Hongxu Jia
perl                  5.20.0       5.21.9                Hongxu Jia
createrepo            0.4.11       0.10.3                Hongxu Jia           Versions after 0.9.* use YU...
bash                  4.3          4.3.30                Hongxu Jia           The latest version in yocto...
groff                 1.22.2       1.22.3                Hongxu Jia           1.18.1.4 is latest GPLv2 Ve...
man-pages             3.76         3.81                  Hongxu Jia
directfb              1.7.6        1.7.7                 Hongxu Jia
alsa-tools            1.0.28       1.0.29                Kai Kang
python-mako           0.9.1        1.0.1                 Khem Raj
python-nose           1.2.1        1.3.4                 Khem Raj
python-numpy          1.7.0        1.9.2                 Khem Raj
python3-distribute    0.6.32       0.7.3                 Khem Raj
rpm                   5.4.14       5.4.15                Mark Hatle
libpfm4               4.3.0        4.6.0                 Matthew McClintock
cryptodev-module      1.6          1.7                   No maintainer
cryptodev-tests       1.6          1.7                   No maintainer
liberror-perl         0.17022      0.17023               No maintainer
cryptodev-linux       1.6          1.7                   No maintainer
qt4-embedded          4.8.6        5.4.1                 Paul Eggleton
dropbear              2014.66      2015.67               Paul Eggleton
dosfstools            2.11         3.0.27                Paul Eggleton
libav                 9.16         11.2                  Paul Eggleton
x264                  r2265+gitX   r2491                 Paul Eggleton
qt4-x11-free          4.8.6        5.4.1                 Paul Eggleton
gpgme                 1.4.3        1.5.3                 Paul Eggleton
yasm                  1.2.0        1.3.0                 Paul Eggleton
libevent              2.0.21       2.0.22                Paul Eggleton
augeas                1.2.0        1.3.0                 Paul Eggleton
libevdev              1.3          1.4                   Paul Eggleton
libpng12              1.2.52       1.6.16                Randy Witt
python-async          0.6.1        0.6.2                 Randy Witt
libtasn1              4.0          4.2                   Randy Witt
tcf-agent             0.4.0+gitX   8.0+gitAUTOINC+bb...  Randy Witt
unfs3                 0.9.22.r490  0.9.22.r494           Randy Witt
libunistring          0.9.4        0.9.5                 Randy Witt
ethtool               3.16         3.18                  Randy Witt
libpam                1.1.6        1.1.8                 Randy Witt
gdb                   7.8.1        7.9                   Richard Purdie
intltool              0.50.2       0.51.0                Richard Purdie
nasm                  2.11.06      2.11.08               Richard Purdie
python-distribute     0.6.32       0.7.3                 Richard Purdie       0.7.3 only upgrades 0.6.32,...
python-gst            0.10.22      1.4.0                 Richard Purdie
python-pygobject      2.28.3       3.15.91               Richard Purdie       Newer versions of python-py...
python3               3.3.3        3.5.0a1               Richard Purdie
python                2.7.9        3.5.0a1               Richard Purdie
libmpc                1.0.2        1.0.3                 Richard Purdie
glib-2.0              2.42.1       2.43.91               Robert Yang
binutils              2.24         2.25                  Robert Yang
e2fsprogs             1.42.9       1.42.11               Robert Yang
git                   2.3.0        2.3.2                 Robert Yang
python-git            0.3.6        0.3/                  Robert Yang
gmp                   6.0.0        6.0.0a                Robert Yang
logrotate             3.8.8        3.8.9                 Robert Yang
wget                  1.16.1       1.16.3                Robert Yang
liberation-fonts      1.04         2.00.1                Ross Burton          2.00.0 - fontforge package ...
waffle                1.3.0        1.5.1                 Ross Burton
libinput              0.7.0        0.12.0                Ross Burton
wayland               1.6.0        1.7.0                 Ross Burton
weston                1.6.0        1.7.0                 Ross Burton
xf86-video-omap       0.4.2+gitrX  0.4.3+gitrAUTOINC...  Ross Burton
xf86-video-vmware     13.0.2       13.1.0                Ross Burton
glib-networking       2.38.0       2.43.91               Ross Burton          Pending Glib-2.0 Update
libxshmfence          1.1          1.2                   Ross Burton
libxxf86vm            1.1.3        1.1.4                 Ross Burton
xkeyboard-config      2.13         2.14                  Ross Burton
xproto                7.0.26       7.0.27                Ross Burton
xserver-xorg          1.16.3       1.17.1                Ross Burton
at-spi2-atk           2.14.1       2.15.90               Ross Burton
at-spi2-core          2.14.1       2.15.90               Ross Burton
puzzles               r10116       r10286                Ross Burton
webkit-gtk            1.8.3        1.9.92                Ross Burton          >= 1.10.2 needs ruby
atk                   2.14.0       2.15.91               Ross Burton
vala                  0.26.1       0.27.1                Ross Burton
libsoup-2.4           2.46.0       2.49.91.1             Ross Burton
shared-mime-info      1.3          1.4                   Ross Burton
vte                   0.28.2       0.39.90               Ross Burton          Pending Glib-2.0 Update
gdk-pixbuf            2.30.8       2.31.3                Ross Burton
gtk+3                 3.12.2       3.15.10               Ross Burton
gtk+                  2.24.25      3.15.10               Ross Burton          Do not upgrade to version: ...
gtk-engines           2.20.2       2.91.1                Ross Burton          2.91.1 is a 3.0 beta release
libnotify             0.6.0        0.7.6                 Ross Burton
librsvg               2.40.6       2.40.8                Ross Burton
cairo                 1.12.18      1.14.1                Ross Burton
clutter-1.0           1.20.0       1.21.6                Ross Burton
clutter-gst-1.0       1.6.0        3.0.4                 Ross Burton
clutter-gtk-1.0       1.4.4        1.6.0                 Ross Burton
cogl-1.0              1.18.2       1.20.0                Ross Burton
fontconfig            2.11.1       2.11.93               Ross Burton
freetype              2.5.4        2.5.5                 Ross Burton
mesa-gl               10.4.4       10.4.6                Ross Burton
mesa                  10.4.4       10.4.6                Ross Burton
openssl               1.0.1k       1.0.2                 Saul Wold
uclibc                0.9.33+gitX  0.9.33.2+gitAUTOI...  Saul Wold
systemtap             2.6+gitX     2.7+gitAUTOINC+39...  Saul Wold
libtheora             1.1.1        1.2.0alpha1           Saul Wold
tiff                  4.0.3        4.0.4beta             Saul Wold
libidn                1.29         1.30                  Saul Wold
libunique             1.1.6        3.0.2                 Saul Wold            Do not upgrade to version: ...
mx-1.0                1.4.7+gitX   1.99.4+gitAUTOINC...  Saul Wold            PRS 1.99 is dev version
blktrace              1.0.5+gitX   1.1.0+gitAUTOINC+...  Tom Zanussi
systemtap-uprobes     2.6+gitX     2.7+gitAUTOINC+39...  Tom Zanussi
ccache                3.1.9        3.2.1                 Wenzong Fan
chkconfig             1.3.58       1.3.63                Wenzong Fan

Upgradable count: 130
Upgradable total count: 153

The based commit is:

commit 3c78468f12296abd02abce6eeac0f69bc7509958
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Tue Mar 3 13:12:50 2015 +0000

    build-appliance-image: Update to master head revision
    
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

