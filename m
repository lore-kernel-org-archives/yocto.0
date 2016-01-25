Return-Path: <recipe-report@yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D50DE00BE6; Sun, 24 Jan 2016 21:30:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from packages.yoctoproject.org (unknown [198.145.29.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 899C9E00BE1
	for <yocto@yoctoproject.org>; Sun, 24 Jan 2016 21:30:27 -0800 (PST)
Received: from packages.yoctoproject.org (localhost [IPv6:::1])
	by packages.yoctoproject.org (Postfix) with ESMTP id 525FB84A294A
	for <yocto@yoctoproject.org>; Mon, 25 Jan 2016 00:30:26 -0500 (EST)
MIME-Version: 1.0
From: recipe-report@yoctoproject.org
To: yocto@yoctoproject.org
Date: Mon, 25 Jan 2016 05:30:26 -0000
Message-ID: <20160125053026.7870.69436@packages.yoctoproject.org>
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
X-List-Received-Date: Mon, 25 Jan 2016 05:30:29 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This mail was sent out by Recipe reporting system.

This message list those recipes which need to be upgraded. If maintainers
believe some of them needn't to upgrade at this time, they can fill
RECIPE_NO_UPDATE_REASON in respective recipe file to ignore this remainder
until newer upstream version was detected.

Example:
RECIPE_NO_UPDATE_REASON = "Version 2.0 is unstable"

You can check the detail information at:

http://recipes.yoctoproject.org/

Package               Version     Upstream version      Maintainer           NoUpgradeReason
--------------------  ----------  --------------------  -------------------  ------------------------------
python3-pip           7.1.2       8.0.2                 Alejandro Hernandez
python3-setuptools    19.4        19.6                  Alejandro Hernandez
ruby                  2.2.2       2.3.0                 Alejandro Hernandez
python-pygobject      2.28.3      3.19.2                Alejandro Hernandez  Newer versions of python-py...
python-setuptools     19.4        19.6                  Alejandro Hernandez
liberation-fonts      1.04        2.00.1                Alexander Kanavin    2.x depends on fontforge pa...
rxvt-unicode          9.21        9.22                  Alexander Kanavin
webkitgtk             2.10.4      2.10.5                Alexander Kanavin
libsecret             0.18.3      0.18.4                Alexander Kanavin
gcr                   3.18.0      3.19.4                Alexander Kanavin
mkelfimage            4.0+gitX    4.2+gitAUTOINC+43...  Alexander Kanavin    mkelfimage has been removed...
apt                   1.0.10.1    1.2                   Aníbal Limón
dpkg                  1.18.2      1.18.4                Aníbal Limón
pinentry              0.9.2       0.9.7                 Armin Kuster
guilt-native          0.35+gitX   0.36+gitAUTOINC+2...  Bruce Ashfield
dbus-glib             0.104       0.106                 Chen Qi
dbus-test             1.8.20      1.10.6                Chen Qi
diffstat              1.60        1.61                  Chen Qi
coreutils             8.24        8.25                  Chen Qi
dbus                  1.8.20      1.10.6                Chen Qi
cups                  2.0.4       2.1.2                 Chen Qi
findutils             4.5.14      4.5.19                Chen Qi
ncurses               6.0         6.0+20151024          Hongxu Jia
ghostscript           9.16        9.18                  Hongxu Jia
elfutils              0.164       0.165                 Hongxu Jia
libav                 9.18        11.4                  Jussi Kukkonen
waffle                1.5.1       1.5.2                 Jussi Kukkonen
libinput              1.1.4       1.1.5                 Jussi Kukkonen
wayland               1.9.0       1.9.91                Jussi Kukkonen
weston                1.9.0       1.9.91                Jussi Kukkonen
cmake                 3.3.2       3.4.2                 Jussi Kukkonen
libsoup-2.4           2.52.1      2.52.2                Jussi Kukkonen
docbook-xsl-style...  1.78.1      1.79.1                Jussi Kukkonen
gdk-pixbuf            2.32.1      2.32.3                Jussi Kukkonen
vala                  0.28.0      0.30.0                Jussi Kukkonen
gtk+3                 3.18.2      3.18.6                Jussi Kukkonen
glib-2.0              2.46.1      2.46.2                Jussi Kukkonen
gtk+                  2.24.28     2.24.29               Jussi Kukkonen
pixman                0.32.8      0.33.6                Jussi Kukkonen
freetype              2.6         2.6.2                 Jussi Kukkonen
glew                  1.12.0      1.13.0                Jussi Kukkonen
vte                   0.28.2      0.42.1                Jussi Kukkonen       matchbox-terminal needs to ...
linuxdoc-tools-na...  0.9.69      0.9.71                Jussi Kukkonen
gtk-icon-utils-na...  3.18.2      3.18.6                Jussi Kukkonen
at-spi2-core          2.18.1      2.18.3                Jussi Kukkonen
slang                 2.2.4       2.3.0                 Kai Kang
libsdl2               2.0.3       2.0.4                 Kai Kang
rpm                   5.4.14      5.4.15                Mark Hatle           5.4.15 has a package databa...
prelink               1.0+gitX    20151030.+gitAUTO...  Mark Hatle
acpid                 2.0.25      2.0.26                Maxin B. John
libical               1.0.1       2.0.0                 Maxin B. John
quota                 4.02        4.03                  Maxin B. John
iproute2              4.3.0       4.4.0                 Maxin B. John
db                    6.0.30      6.1.26                Maxin B. John        Updating to 6.1.x requires ...
gstreamer1.0-libav    1.7.1+gitX  3+gitAUTOINC+3dc2...  Maxin B. John
gstreamer1.0-plug...  1.7.1+gitX  3+gitAUTOINC+6662...  Maxin B. John
sqlite3               3.10.0      3.10.2                Maxin B. John
gstreamer1.0-plug...  1.7.1+gitX  3+gitAUTOINC+3bb5...  Maxin B. John
apt-native            1.0.10.1    1.2                   No maintainer
cmake-native          3.3.2       3.4.2                 No maintainer
gstreamer1.0          1.7.1+gitX  20010312+gitAUTOI...  No maintainer
ifupdown              0.8.2       0.8.10                No maintainer
gstreamer1.0-plug...  1.7.1+gitX  3+gitAUTOINC+2158...  No maintainer
gstreamer1.0-plug...  1.7.1+gitX  3+gitAUTOINC+84bb...  No maintainer
sgmlspl-native        1.1+gitX    1.03+gitAUTOINC+f...  No maintainer
debianutils           4.5.1       4.6                   No maintainer
adt-installer         0.3.0       0.3.1                 Randy Witt
lsbinitscripts        9.64        9.65                  Ross Burton
base-passwd           3.5.29      3.5.39                Ross Burton          Version 3.5.38 requires cde...
pulseaudio            6.0         8.0                   Tanu Kaskinen
alsa-plugins          1.0.29      1.1.0                 Tanu Kaskinen
alsa-utils-scripts    1.0.29      1.1.0                 Tanu Kaskinen
alsa-utils            1.0.29      1.1.0                 Tanu Kaskinen
alsa-tools            1.0.29      1.1.0                 Tanu Kaskinen
chkconfig             1.3.58      1.7                   Wenzong Fan          Version 1.5 requires selinux
ccache                3.2.3       3.2.4                 Wenzong Fan
gettext               0.19.6      0.19.7                Wenzong Fan

Upgradable count: 69
Upgradable total count: 77

The based commit is:

commit bf6372fc361e7588e95f682103332d7a7159c851
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Sun Jan 24 10:49:14 2016 +0000

    weston: Add missing DEPENDS on wayland-native
    
    Weston needs wayland-scanner which comes from wayland-native. Add the missing
    dependency to avoid build failures from:
    
    bitbake wayland; bitbake wayland-native:do_clean weston:do_cleansstate; bitbake weston
    
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Any problem, please contact Anibal Limon <anibal.limon@intel.com> 

