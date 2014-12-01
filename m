Return-Path: <packages@packages.i.yoctoproject.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 696FDE0084A; Sun, 30 Nov 2014 18:01:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NAME_EMAIL_DIFF autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via
	SMTP * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.5 NAME_EMAIL_DIFF Sender NAME is an unrelated email address
Received: from packages.i.yoctoproject.org (packages.i.yoctoproject.org
	[10.0.10.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 720CBE0084A
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 18:01:08 -0800 (PST)
Received: by packages.i.yoctoproject.org (Postfix, from userid 802)
	id 70224A409E; Mon,  1 Dec 2014 02:01:08 +0000 (UTC)
Date: Mon, 1 Dec 2014 02:01:08 +0000
From: "package-report@yoctoproject.org" <packages@packages.i.yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20141201020108.GA19765@packages.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [Package Report System]Manual check recipes name list
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
X-List-Received-Date: Mon, 01 Dec 2014 02:01:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This mail was sent out by Package Report System.
It will list all the recipes which can't check upstream version by script, and will show how long it is since their last mannual version check.
You can check the detail information at http://packages.yoctoproject.org/manuallychkinfo


PackageName              Version             LastChkVersion      LastChkTime              Maintainer                              NoUpgradeReason               
ccache                   3.1.9               N/A                 41972 d                  Wenzong Fan <wenzong.fan@wind...        No data                       
chkconfig                1.3.58              N/A                 41972 d                  Wenzong Fan <wenzong.fan@wind...        No data                       
gettext                  0.18.3.2            N/A                 41972 d                  Wenzong Fan <wenzong.fan@wind...        No data                       
pth                      2.0.7               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
gdbm                     1.11                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
npth                     1.0                 N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
sysvinit                 2.88dsf             N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
rxvt-unicode             9.20                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
boost                    1.56.0              N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libpod-plainer-perl      1.04                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
lsbinitscripts           9.56.1              N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libclass-isa-perl        0.36                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
startup-notification...  0.12                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
xcb-util-renderutil      0.3.9               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
ossp-uuid                1.6.2               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
openssl                  1.0.1j              N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        1.0.1 is beta 1.0.0c is latest
lame                     3.99.5              N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
mpeg2dec                 0.4.1               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        Why are we currently at 0.4.1?
libfile-checktree-pe...  4.41                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
mesa-demos               8.2.0               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
tiff                     4.0.3               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
glew                     1.11.0              N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libidn                   1.29                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
lzo                      2.08                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
nspr                     4.10.7              N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
psmisc                   22.21               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
ed                       1.9                 N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
mkfontscale              1.1.1               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libi18n-collate-perl...  1.02                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
gconf                    3.2.6               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libxml-simple-perl       2.20                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
kconfig-frontends        3.12.0.0            N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        PRS Reports Incorrectly       
libglu                   9.0.0               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libaio                   0.3.109             N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
bigreqsproto             1.1.2               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
liboil                   0.3.17              N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
kbd                      2.0.2               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libdaemon                0.14                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libxml-namespacesupp...  1.11                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libnss-mdns              0.10                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
mkfontdir                1.0.7               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
msmtp                    1.4.32              N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libxkbcommon             0.5.0               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
valgrind                 3.9.0               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libmad                   0.15.1b             N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libnl                    3.2.25              N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        libnl-3.2.2 is incompatible wi...
procps                   3.2.8               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libassuan                2.1.2               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libpthread-stubs         0.3                 N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libunique                1.1.6               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        Do not upgrade to version: 2.9...
gamin                    0.1.10              N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
liburcu                  0.8.5               0.7.0               823 day                  Saul Wold <sgw@linux.intel.co...        No data                       
libdmx                   1.1.3               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
rgb                      1.0.5               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
lzop                     1.03                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
desktop-file-utils-n...  0.22                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
tcp-wrappers             7.6                 N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libcgroup                0.41                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libexif                  0.6.21              N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libxml-perl              0.08                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
watchdog                 5.14                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libtheora                1.1.1               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        1.1.1 is latest stable release...
usbutils                 007                 006                 819 day                  Saul Wold <sgw@linux.intel.co...        No data                       
libenv-perl              1.04                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libffi                   3.1                 N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libdumpvalue-perl        1.17                N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
libksba                  1.3.1               N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
base-passwd              3.5.29              N/A                 41972 d                  Saul Wold <sgw@linux.intel.co...        No data                       
xf86miscproto            0.9.3               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xserver-xorg             1.15.1              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libice                   1.0.9               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxt                    1.1.4               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
kbproto                  1.0.6               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xauth                    1.0.9               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxfont                 1.5.0               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
puzzles                  r10116              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
gtk+                     2.24.24             N/A                 41972 d                  Ross Burton <ross.burton@inte...        Do not upgrade to version: 2.9...
gnutls                   3.3.5               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxscrnsaver            1.2.2               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xcb-util-image           0.3.9               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
util-macros              1.19.0              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxslt                  1.1.28              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xf86-video-vmware        13.0.2              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxext                  1.3.2               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
vala                     0.26.1              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
clutter-1.0              1.18.2              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
gtk+3                    3.12.2              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxcb                   1.10                N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xcb-util-wm              0.4.1               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
resourceproto            1.2.0               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxrandr                1.4.2               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xkbcomp                  1.2.4               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xcb-util                 0.3.9               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libpam                   1.1.6               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxsettings-client      0.10                N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libtasn1                 4.0                 N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxvmc                  1.0.8               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xineramaproto            1.2.1               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
videoproto               2.3.2               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
librsvg                  2.40.2              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
gtk-engines              2.20.2              2.91.1              636 day                  Ross Burton <ross.burton@inte...        2.91.1 is a 3.0 beta release  
gperf                    3.0.4               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
clutter-gtk-1.0          1.4.4               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
compositeproto           0.4.2               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xf86vidmodeproto         2.3.1               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libx11                   1.6.2               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xf86driproto             2.1.1               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libsoup-2.4              2.46.0              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
gdk-pixbuf               2.30.8              2.27.2              636 day                  Ross Burton <ross.burton@inte...        2.27.2 is unstable            
xprop                    1.2.2               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
pixman                   0.32.6              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xf86-input-keyboard      1.8.0               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
damageproto              1.2.1               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
pango                    1.36.6              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libsm                    1.2.2               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
encodings                1.0.4               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxcomposite            0.4.4               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xinput                   1.6.1               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
at-spi2-core             2.12.0              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xcb-proto                1.10                N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
leafpad                  0.8.18.1            N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxft                   2.3.2               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
atk                      2.12.0              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xmodmap                  1.0.8               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xf86-video-fbdev         0.4.4               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xcmiscproto              1.2.2               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
mesa                     10.1.3              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxfixes                5.0.1               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxpm                   3.5.11              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
lighttpd                 1.4.35              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xf86-input-vmmouse       13.0.0              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxv                    1.0.10              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
gtk-update-icon-cach...  3.4.4               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xf86-input-mouse         1.9.1               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
hicolor-icon-theme       0.13                N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libcroco                 0.6.8               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xf86-video-modesetti...  0.8.1               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxkbfile               1.0.8               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
fixesproto               5.0                 N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxxf86dga              1.1.4               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
cogl-1.0                 1.18.2              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xinit                    1.3.3               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xf86-video-intel         2.99.912            N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
matchbox-theme-sato      0.1                 N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
fontconfig               2.11.1              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
recordproto              1.14.2              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
freetype                 2.5.3               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libnotify                0.6.0               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xextproto                7.3.0               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
liberation-fonts         1.04                N/A                 41972 d                  Ross Burton <ross.burton@inte...        2.00.0 - fontforge package req...
libxau                   1.0.8               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
glib-networking          2.38.0              N/A                 41972 d                  Ross Burton <ross.burton@inte...        Pending Glib-2.0 Update       
libpng                   1.6.13              1.6.6               425 day                  Ross Burton <ross.burton@inte...        No data                       
xdg-utils                1.1.0-rc1           N/A                 41972 d                  Ross Burton <ross.burton@inte...        only release candidates availa...
vte                      0.28.2              N/A                 41972 d                  Ross Burton <ross.burton@inte...        Pending Glib-2.0 Update       
at-spi2-atk              2.12.1              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xkeyboard-config         2.12                N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
mtdev                    1.1.5               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
wayland                  1.6.0               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxxf86misc             1.0.3               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xf86-input-synaptics...  1.8.0               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxi                    1.7.4               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xcursor-transparent-...  0.1.1               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libpng12                 1.2.51              1.2.50              425 day                  Ross Burton <ross.burton@inte...        No data                       
xrestop                  0.4                 N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xtrans                   1.3.4               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xf86-input-evdev         2.9.0               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
font-util                1.3.0               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
webkit-gtk               1.8.3               1.10.2              636 day                  Ross Burton <ross.burton@inte...        >= 1.10.2 needs ruby          
libxdamage               1.1.4               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
fontsproto               2.1.3               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxxf86vm               1.1.3               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
randrproto               1.4.0               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xev                      1.2.1               1.0.4               818 day                  Ross Burton <ross.burton@inte...        No data                       
libxtst                  1.2.2               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
clutter-gst-1.0          1.6.0               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xwininfo                 1.1.3               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xproto                   7.0.26              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libglade                 2.6.4               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
dri2proto                2.8                 N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xf86dgaproto             2.1                 N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxdmcp                 1.1.1               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxmu                   1.1.2               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
shared-mime-info         1.3                 N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xeyes                    1.1.1               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
font-alias               1.0.3               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xf86-video-vesa          2.3.3               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libfontenc               1.1.2               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xdpyinfo                 1.3.1               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
renderproto              0.11.1              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
icu                      53.1                4.8.1.1             824 day                  Ross Burton <ross.burton@inte...        No data                       
xcb-util-keysyms         0.3.9               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxres                  1.0.7               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xtscal                   0.6.3               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxcursor               1.1.14              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xvinfo                   1.1.2               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxinerama              1.1.3               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
cairo                    1.12.16             N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libart-lgpl              2.3.21              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
xhost                    1.0.6               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
menu-cache               0.4.1               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libfm                    1.1.2.2             N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libxrender               0.9.8               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
json-glib                1.0.0               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
weston                   1.6.0               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
scrnsaverproto           1.2.2               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
glproto                  1.4.17              N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
inputproto               2.3.1               2.2.99.1            636 day                  Ross Burton <ross.burton@inte...        2.2.99.1 is unstable          
dmxproto                 2.3.1               N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
libmatchbox              1.11                N/A                 41972 d                  Ross Burton <ross.burton@inte...        No data                       
gnu-config               20120814            N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
squashfs-tools           4.3                 4.2                 752 day                  Robert Yang <liezhi.yang@wind...        No data                       
glib-2.0                 2.40.0              N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
tzdata                   2014j               N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
m4                       1.4.17              N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
logrotate                3.8.7               N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
libcheck                 0.9.14              N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
binutils                 2.24                N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
setserial                2.17                N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
autogen-native           5.18.3              N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
make                     4.0                 N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
mklibs-native            0.1.39              N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
tzcode-native            2014j               N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
gmp                      6.0.0               N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
nativesdk-libtool        2.4.2               N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
makedepend               1.0.5               N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
texi2html                5.0                 N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
automake                 1.14.1              N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
wget                     1.16                N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
pcmciautils              018                 N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
libtool                  2.4.2               N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
git                      2.0.1               N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
autoconf                 2.69                N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
file                     5.18                N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
rsync                    3.1.0               N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
portmap                  6.0                 N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
e2fsprogs                1.42.9              N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
time                     1.7                 N/A                 41972 d                  Robert Yang <liezhi.yang@wind...        No data                       
python-dbus              1.2.0               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
python-docutils          0.12                N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
python-pyrex             0.9.9               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
python-pycairo           1.10.0              N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
libunistring             0.9.4               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
python-gst               0.10.22             N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
gccmakedep               1.0.3               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
gcc                      4.9.1               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
powertop                 2.6.1               N/A                 41972 d                  Richard Purdie <richard.purdi...        Do not upgrade to version 1.97...
libconvert-asn1-perl...  0.27                N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
kexec-tools              2.0.8               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
python                   2.7.3               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
python-imaging           1.1.7               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
x11perf                  1.5.4               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
gdb                      7.8.1               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
v86d                     0.1.10              N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
unifdef                  2.10                N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
latencytop               0.5                 N/A                 124 day                  Richard Purdie <richard.purdi...        No data                       
python-scons             2.3.2               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
python-pygtk             2.24.0              N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
libpciaccess             0.13.2              N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
mdadm                    3.3.2               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
python-distribute        0.6.32              0.7.3               41972 d                  Richard Purdie <richard.purdi...        0.7.3 only upgrades 0.6.32, ca...
x11vnc                   0.9.13              N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
python-pygobject         2.28.3              3.13.3              41972 d                  Richard Purdie <richard.purdi...        Newer versions of python-pygob...
libdrm                   2.4.54              N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
python-argparse          1.2.1               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
bdwgc                    7.4.2               gc-7.2d             826 day                  Richard Purdie <richard.purdi...        No data                       
subversion               1.8.10              N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
python3                  3.3.3               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
python-pycurl            7.19.5              N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
libmpc                   1.0.2               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
nasm                     2.11.06             N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
libtimedate-perl         2.30                N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
intltool                 0.50.2              N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
oprofile                 1.0.0               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
mpfr                     3.1.2               N/A                 41972 d                  Richard Purdie <richard.purdi...        No data                       
gpgme                    1.4.3               N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
dropbear                 2014.63             N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
libevdev                 1.2.2               N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
libgpg-error             1.12                N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
quicky                   0.4                 N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
tslib                    1.1                 N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
expat                    2.1.0               N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
sgmlspl-native           1.03ii              N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
nativesdk-qt4-tools      4.8.6               N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
ethtool                  3.16                N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
fotowall                 0.9                 N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
qt-mobility-embedded...  1.2.0               N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
opensp                   1.5.2               N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
libav                    0.8.15              N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
qt4-x11-free             4.8.6               N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
docbook-utils-native...  0.6.14              N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
augeas                   1.2.0               N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
openjade-native          1.3.2               N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
openssh                  6.6p1               N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
chrpath                  0.16                N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
mtools                   4.0.18              N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
dosfstools               2.11                N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
libevent                 2.0.21              N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
docbook-sgml-dtd-4.1...  4.1                 N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        PRS Reports Incorrectly       
linuxdoc-tools-nativ...  0.9.69              0.9.66              822 day                  Paul Eggleton <paul.eggleton@...        No data                       
popt                     1.16                N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
blktool                  4-6.1               N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
docbook-sgml-dtd-3.1...  3.1                 N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        PRS Reports Incorrectly       
yasm                     1.2.0               N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
qt4-native               4.8.6               N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
qt-mobility-x11          1.2.0               N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
avahi                    0.6.31              0.6.31              41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
avahi-ui                 0.6.31              N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
python-smartpm           1.4.1               N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
unfs3                    0.9.22.r490         N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
docbook-dsssl-styles...  1.79                N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
grub                     2.00                N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        grub2 is a different thing    
docbook-sgml-dtd-4.5...  4.5                 N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        PRS Reports Incorrectly       
sgml-common              0.6.3               N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
libnfsidmap              0.25                N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
cmake                    2.8.12.2            N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
cdrtools-native          3.01a20             N/A                 41972 d                  Paul Eggleton <paul.eggleton@...        No data                       
opkg                     0.2.4               0.1.8               822 day                  Paul Barker <paul@paulbarker....        No data                       
libarchive               3.1.2               N/A                 41972 d                  Paul Barker <paul@paulbarker....        No data                       
libsdl2                  2.0.3               N/A                 41972 d                  No Maintainer info                      No data                       
libinput                 0.6.0               N/A                 41972 d                  No Maintainer info                      No data                       
libxshmfence             1.1                 N/A                 41972 d                  No Maintainer info                      No data                       
dbus-test                1.8.2               N/A                 41972 d                  No Maintainer info                      No data                       
python-git               0.3.2.RC1           N/A                 41972 d                  No Maintainer info                      No data                       
i2c-tools                3.1.1               N/A                 41972 d                  No Maintainer info                      No data                       
docbook-xml-dtd4         4.5                 N/A                 41972 d                  No Maintainer info                      No data                       
mesa-gl                  10.1.3              N/A                 41972 d                  No Maintainer info                      No data                       
python-smmap             0.8.2               N/A                 41972 d                  No Maintainer info                      No data                       
xf86-video-cirrus        1.5.2               N/A                 41972 d                  No Maintainer info                      No data                       
python-gitdb             0.5.4               N/A                 41972 d                  No Maintainer info                      No data                       
waffle                   1.3.0               N/A                 41972 d                  No Maintainer info                      No data                       
expect                   5.45                N/A                 41972 d                  No Maintainer info                      No data                       
libxml-sax-base-perl...  1.08                N/A                 41972 d                  No Maintainer info                      No data                       
gnu-efi                  3.0u                N/A                 41972 d                  No Maintainer info                      No data                       
orc                      0.4.18              N/A                 41972 d                  No Maintainer info                      No data                       
grub-efi                 2.00                N/A                 41972 d                  No Maintainer info                      No data                       
gstreamer1.0-omx         1.2.0               N/A                 41972 d                  No Maintainer info                      No data                       
patchelf                 0.8                 N/A                 41972 d                  No Maintainer info                      No data                       
libunwind                1.1                 N/A                 41972 d                  No Maintainer info                      No data                       
serf                     1.3.8               N/A                 41972 d                  No Maintainer info                      No data                       
nss-myhostname           0.3                 N/A                 41972 d                  No Maintainer info                      No data                       
liberror-perl            0.17022             N/A                 41972 d                  No Maintainer info                      No data                       
dri3proto                1.0                 N/A                 41972 d                  No Maintainer info                      No data                       
json-c                   0.11                N/A                 41972 d                  No Maintainer info                      No data                       
icon-naming-utils        0.8.90              N/A                 41972 d                  No Maintainer info                      No data                       
python-async             0.6.1               N/A                 41972 d                  No Maintainer info                      No data                       
docbook-xsl-styleshe...  1.78.1              N/A                 41972 d                  No Maintainer info                      No data                       
gst-plugins-gl           0.10.3              N/A                 41972 d                  No Maintainer info                      No data                       
cryptodev-module         1.6                 N/A                 41972 d                  No Maintainer info                      No data                       
bjam-native              1.56.0              N/A                 41972 d                  No Maintainer info                      No data                       
dmidecode                2.12                N/A                 41972 d                  No Maintainer info                      No data                       
cryptodev-linux          1.6                 N/A                 41972 d                  No Maintainer info                      No data                       
zisofs-tools-native      1.0.8               N/A                 41972 d                  No Maintainer info                      No data                       
nss                      3.17.2              N/A                 41972 d                  No Maintainer info                      No data                       
debianutils              4.4                 N/A                 41972 d                  No Maintainer info                      No data                       
cryptodev-tests          1.6                 N/A                 41972 d                  No Maintainer info                      No data                       
gnome-desktop-testin...  2014.1              N/A                 41972 d                  No Maintainer info                      No data                       
rpm                      5.4.14              5.4.10              819 day                  Mark Hatle <mark.hatle@windri...        No data                       
pseudo                   1.6.2               N/A                 41972 d                  Mark Hatle <mark.hatle@windri...        No data                       
python-nose              1.2.1               N/A                 41972 d                  Khem Raj <raj.khem@gmail.com>           No data                       
python-mako              0.9.1               N/A                 41972 d                  Khem Raj <raj.khem@gmail.com>           No data                       
python-numpy             1.7.0               N/A                 41972 d                  Khem Raj <raj.khem@gmail.com>           No data                       
python3-distribute       0.6.32              N/A                 41972 d                  Khem Raj <raj.khem@gmail.com>           No data                       
libxml-sax-perl          0.99                N/A                 41972 d                  Kai Kang <kai.kang@windriver....        No data                       
liburi-perl              1.60                N/A                 41972 d                  Kai Kang <kai.kang@windriver....        No data                       
bind                     9.9.5               N/A                 41972 d                  Kai Kang <kai.kang@windriver....        No data                       
libsdl                   1.2.15              N/A                 41972 d                  Kai Kang <kai.kang@windriver....        No data                       
mingetty                 1.08                N/A                 41972 d                  Kai Kang <kai.kang@windriver....        No data                       
alsa-tools               1.0.28              N/A                 41972 d                  Kai Kang <kai.kang@windriver....        No data                       
libx11-diet              1.6.2               N/A                 41972 d                  Kai Kang <kai.kang@windriver....        No data                       
mailx                    12.5                N/A                 41972 d                  Kai Kang <kai.kang@windriver....        No data                       
slang                    2.2.4               N/A                 41972 d                  Kai Kang <kai.kang@windriver....        No data                       
adt-installer            0.2.0               1.1                 811 day                  Jessica Zhang <jessica.zhang@...        No data                       
ghostscript              9.15                N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
parted                   3.2                 N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
xmlto                    0.0.25              N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
elfutils                 0.148               N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
libnewt-python           0.52.17             N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
perl                     5.20.0              N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
pigz                     2.3.1               N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
man                      1.6g                N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
lsb                      4.1                 N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
bash                     4.3                 4.2                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
qmmp                     0.7.7               N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
createrepo               0.4.11              N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        Versions after 0.9.* use YUM, ...
patch                    2.7.1               N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
rpcbind                  0.2.1               N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
help2man-native          1.46.4              N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
gnupg                    2.0.26              N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
libgcrypt                1.6.2               N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
libnewt                  0.52.17             N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
cracklib                 2.9.1               N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
ncurses                  5.9                 N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
libxml2                  2.9.1               N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
pax                      3.4                 N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
directfb                 1.7.4               N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
dhcp                     4.3.0               N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
apr                      1.5.1               N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
socat                    1.7.2.4             N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        2.0.0 is beta                 
apr-util                 1.5.3               N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
man-pages                3.75                N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
libxml-parser-perl       2.41                N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
pax-utils                0.8.1               N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
ppp                      2.4.6               N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
groff                    1.22.2              N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        1.18.1.4 is latest GPLv2 Versi...
directfb-examples        1.7.0               N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
distcc                   3.1                 N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
readline                 6.3                 N/A                 41972 d                  Hongxu Jia <hongxu.jia@windri...        No data                       
syslinux                 6.01                N/A                 41972 d                  Darren Hart <dvhart@linux.int...        Waiting for 4.06 for 3.3 kerne...
telepathy-mission-co...  5.16.1              N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
gstreamer1.0-plugins...  1.4.1               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
apmd                     3.2.2-14            N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
gst-plugins-bad          0.10.23             N/A                 41972 d                  Cristian Iorga <cristian.iorg...        not compatible with gst-fluend...
telepathy-idle           0.2.0               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
gst-plugins-good         0.10.31             N/A                 41972 d                  Cristian Iorga <cristian.iorg...        not compatible with gst-fluend...
libid3tag                0.15.1b             N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
gstreamer1.0-libav       1.4.1               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
libproxy                 0.4.11              N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
irda-utils               0.9.18              N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
tremor                   20120314            20120122            630 day                  Cristian Iorga <cristian.iorg...        Same revision on different SVN...
alsa-utils               1.0.28              N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
bluez-hcidump            2.5                 N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
qemu                     2.1.2               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
libsamplerate0           0.1.8               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
flac                     1.3.0               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
bluez4                   4.101               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        BlueZ 5.x is not backward-comp...
bluez5                   5.25                N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
neard                    0.14                N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
gstreamer1.0-plugins...  1.4.1               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
alsa-lib                 1.0.28              N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
libsndfile1              1.0.25              N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
alsa-utils-alsaconf      1.0.28              N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
connman                  1.26                N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
sbc                      1.3                 N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
gst-openmax              0.10.1              N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
harfbuzz                 0.9.35              N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
lrzsz                    0.12.20             N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
gst-ffmpeg               0.10.13             N/A                 41972 d                  Cristian Iorga <cristian.iorg...        not compatible with gst-fluend...
pm-utils                 1.4.1               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
telepathy-python         0.15.19             N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
telepathy-glib           0.24.0              N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
wireless-tools           30.pre9             N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
quota                    4.01                N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
iproute2                 3.17.0              N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
cwautomacros             20110201            N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
wpa-supplicant           2.3                 N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
hostap-utils             0.4.7               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
gstreamer1.0             1.4.1               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
libtirpc                 0.2.5               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
gstreamer1.0-plugins...  1.4.1               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
iptables                 1.4.21              N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
db                       6.0.30              N/A                 41972 d                  Cristian Iorga <cristian.iorg...        API compatibility issue       
libomxil                 0.9.3               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
gst-plugin-bluetooth...  4.101               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
net-tools                1.60-25             N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
libvorbis                1.3.4               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
enchant                  1.6.0               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
gst-fluendo-mp3          0.10.19             N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
gstreamer1.0-plugins...  1.4.1               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
libatomics-ops           7.2                 N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
libpcap                  1.6.2               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
liba52                   0.7.4               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
gstreamer1.0-rtsp-se...  1.4.1               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
libical                  1.0.0               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
ofono                    1.15                1.6                 822 day                  Cristian Iorga <cristian.iorg...        No data                       
netbase                  5.3                 N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
gst-fluendo-mpegdemu...  0.10.72             N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
libtelepathy             0.3.3               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
speex                    1.2rc1              N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
neon                     0.30.0              N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
minicom                  2.7                 2.6.2               405 day                  Cristian Iorga <cristian.iorg...        No data                       
gst-plugins-base         0.10.36             N/A                 41972 d                  Cristian Iorga <cristian.iorg...        not compatible with gst-fluend...
taglib                   1.9.1               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
gst-plugins-ugly         0.10.19             N/A                 41972 d                  Cristian Iorga <cristian.iorg...        not compatible with gst-fluend...
gstreamer                0.10.36             N/A                 41972 d                  Cristian Iorga <cristian.iorg...         not compatible with gst-fluen...
libogg                   1.3.2               N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
pulseaudio               5.0                 N/A                 41972 d                  Cristian Iorga <cristian.iorg...        No data                       
iputils                  s20121221           N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
mktemp                   1.7                 N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
foomatic-filters         4.0.17              N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
diffstat                 1.59                N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
libuser                  0.60                N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
tcl                      8.6.3               N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
flex                     2.5.39              N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
dbus                     1.8.2               N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        D-BUS 1.7.x is the development...
insserv                  1.14.0              N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
cups                     2.0.0               1.6.2               538 day                  Chong Lu <Chong.Lu@windriver....        No data                       
quilt                    0.63                N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
libpcre                  8.36                N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
hdparm                   9.45                N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
beecrypt                 4.2.1               N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
guile                    2.0.11              N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
dbus-glib                0.100.2             N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
libcap                   2.24                N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
strace                   4.9                 N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
bison                    2.7.1               N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
byacc                    20141006            N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
libbsd                   0.7.0               N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
less                     470                 N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
acl                      2.2.52              N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
attr                     2.4.47              N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
at                       3.1.16              N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
diffutils                3.3                 N/A                 41972 d                  Chong Lu <Chong.Lu@windriver....        No data                       
busybox                  1.22.1              N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
gawk                     4.1.1               N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        Version 4.1.0 requires Automak...
zip                      3.0                 3.0                 818 day                  Chen Qi <Qi.Chen@windriver.co...        No data                       
sysfsutils               2.1.0               N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
tar                      1.27.1              N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
sudo                     1.8.10p3            N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
pciutils                 3.2.1               N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
consolekit               0.4.6               N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
console-tools            0.3.2               N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
xz                       5.1.3alpha          5.0.4               818 day                  Chen Qi <Qi.Chen@windriver.co...        No data                       
grep                     2.19                N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
findutils                4.5.14              N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
cpio                     2.11                N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
util-linux               2.24.2              N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
sed                      4.2.2               N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
sysstat                  10.2.1              N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
zlib                     1.2.8               N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
resolvconf               1.76                N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
coreutils                8.22                N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
gzip                     1.6                 N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
shadow                   4.2.1               N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
curl                     7.37.1              N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
bzip2                    1.0.6               N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
sysklogd                 1.5                 N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
stat                     3.3                 N/A                 41972 d                  Chen Qi <Qi.Chen@windriver.co...        No data                       
linux-libc-headers       3.16                N/A                 41972 d                  Bruce Ashfield <bruce.ashfiel...        No data                       
lz4                      r123                122                 93 days                  Armin Kuster <akuster808@gmai...        No data                       
nettle                   2.7.1               N/A                 102 day                  Armin Kuster <akuster808@gmai...        3.0.0 breaks gnutls, api chang...
pinentry                 0.9.0               N/A                 41972 d                  Armin Kuster <akuster808@gmai...        No data                       
xset                     1.2.3               N/A                 41972 d                  An?bal Lim?n <anibal.limon@li...        No data                       
xinetd                   2.3.15              N/A                 124 day                  An?bal Lim?n <anibal.limon@li...        No data                       
apt                      0.9.9.4             N/A                 41972 d                  An?bal Lim?n <anibal.limon@li...        No data                       
mc                       4.8.12              N/A                 41972 d                  An?bal Lim?n <anibal.limon@li...        No data                       
acpid                    2.0.22              N/A                 41972 d                  An?bal Lim?n <anibal.limon@li...        No data                       
jpeg                     8d                  9                   636 day                  An?bal Lim?n <anibal.limon@li...        webkit-gtk 1.8.3 doesn't work ...
pkgconfig                0.28                N/A                 41972 d                  An?bal Lim?n <anibal.limon@li...        removes glib-conf, adds circul...
dpkg                     1.17.4              N/A                 41972 d                  An?bal Lim?n <anibal.limon@li...        No data                       
xrandr                   1.4.2               N/A                 41972 d                  An?bal Lim?n <anibal.limon@li...        No data                       
screen                   4.0.3               N/A                 41972 d                  An?bal Lim?n <anibal.limon@li...        No data                       
sqlite3                  3.8.6.0             3.8.0.2             425 day                  An?bal Lim?n <anibal.limon@li...        No data                       
lsof                     4.87                N/A                 124 day                  An?bal Lim?n <anibal.limon@li...        No data                       
udev                     182                 N/A                 41972 d                  An?bal Lim?n <anibal.limon@li...        No data                       
libacpi                  0.2                 N/A                 41972 d                  An?bal Lim?n <anibal.limon@li...        No data                       
unzip                    6.0                 6.0                 819 day                  Alejandro Hernandez <alejandr...        No data                       
libusb-compat            0.1.5               N/A                 41972 d                  Alejandro Hernandez <alejandr...        No data                       
gnome-common             3.14.0              N/A                 41972 d                  Alejandro Hernandez <alejandr...        No data                       
libusb1                  1.0.19              N/A                 41972 d                  Alejandro Hernandez <alejandr...        No data                       
gsettings-desktop-sc...  3.10.1              N/A                 41972 d                  Alejandro Hernandez <alejandr...        No data                       
gnome-mime-data          2.18.0              N/A                 41972 d                  Alejandro Hernandez <alejandr...        No data                       
aspell                   0.60.6.1            N/A                 41972 d                  Alejandro Hernandez <alejandr...        No data                       
ttf-bitstream-vera       1.10                N/A                 41972 d                  Alejandro Hernandez <alejandr...        No data                       
which                    2.20                N/A                 41972 d                  Alejandro Hernandez <alejandr...        No data                       
gnome-icon-theme         2.31.0              3.7.4               636 day                  Alejandro Hernandez <alejandr...        waiting for the sato gtk3 port
midori                   0.5.5               N/A                 41972 d                  Alejandro Hernandez <alejandr...        No data                       
nfs-utils                1.3.1               N/A                 41972 d                  Alejandro Hernandez <alejandr...        No data                       
texinfo                  5.2                 N/A                 41972 d                  Alejandro Hernandez <alejandr...        Checking script parses directo...
pcmanfm                  1.1.2               N/A                 41972 d                  Alejandro Hernandez <alejandr...        No data                       
gnome-doc-utils          0.20.10             N/A                 41972 d                  Alejandro Hernandez <alejandr...        No data                       
bc                       1.06                1.06                41972 d                  Alejandro Hernandez <alejandr...        No data                       
cronie                   1.4.12              N/A                 41972 d                  Alejandro Hernandez <alejandr...        No data                       
sato-icon-theme          0.4.1               N/A                 41972 d                  Alejandro Hernandez <alejandr...        No data                       
Manual Check Count: 564
Manual Need Check Count: 564
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

