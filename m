Return-Path: <saul.wold@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 974EEE00A73; Thu, 18 Dec 2014 11:07:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EA1CE00A1A
	for <yocto@yoctoproject.org>; Thu, 18 Dec 2014 11:07:25 -0800 (PST)
Received: by mail-pa0-f50.google.com with SMTP id bj1so1992773pad.9
	for <yocto@yoctoproject.org>; Thu, 18 Dec 2014 11:07:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:organization:user-agent
	:mime-version:to:cc:subject:content-type:content-transfer-encoding;
	bh=4GeCyHd6/uVDelBVWV4KW32McT5/GF3ALOb4HU/1uaM=;
	b=VYWmwdSOi4d4oQxG46tOAQYu0MY+4T3jnGQe5Yzq+S2Lp7ED3jEvE+50hOJ2r1WM78
	rQvMF7ZUFJN0t9zb8X+zdyr081MQu0KyN9rjutdkEEPXSWTlDmWI2spyJEWKAmEXqNEV
	imfn/ETdY2WjoLR6IiKxTyE6NEFOtMTOJEWWVIZabW4+bA7WCwNpD+i2vyA8OfiaQSn7
	mbb+KZjg6o1u4b+btgswsQqkPuLHP6gTqEViI42NxmBM36mvbtRUhZl4ep7MHV4CJR9S
	GO2ejetpAwsZyYHMlW/+yR8+/8e5H7ELdUOGswDdwJdwk/jTJYM2mTc0edULVg98jyZ9
	wMsQ==
X-Gm-Message-State: ALoCoQlDVgJTRmAOdQi0eRuVlRClkPMcF+6Ldj3nar669axDuy4ccLRpzSudPVMSYmaW4XHt9n1E
X-Received: by 10.66.140.102 with SMTP id rf6mr5980976pab.1.1418929645142;
	Thu, 18 Dec 2014 11:07:25 -0800 (PST)
Received: from [10.23.90.62] (c-67-171-230-40.hsd1.wa.comcast.net.
	[67.171.230.40])
	by mx.google.com with ESMTPSA id ao5sm7393878pbc.86.2014.12.18.11.07.23
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 18 Dec 2014 11:07:24 -0800 (PST)
Message-ID: <549325EB.4020301@intel.com>
Date: Thu, 18 Dec 2014 11:07:23 -0800
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
X-Mailman-Approved-At: Thu, 18 Dec 2014 11:10:42 -0800
Cc: "Hernandez, Alejandro" <alejandro.hernandez@intel.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>, "Limon,
	Anibal" <anibal.limon@intel.com>, "Hart, Darren" <darren.hart@intel.com>
Subject: [Package Reporting System] Upgradable recipe list
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
X-List-Received-Date: Thu, 18 Dec 2014 19:07:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Folks,

We are in the midst of a upgrade to the PRS, and the current system is 
not generating valid data, so I will be sending out interim recipe lists 
every couple of weeks until the new system is online, which I hope will 
be sometime in early January.

Please review this list for packages that you can upgrade.

There are also some recipes that do not have maintainers currently, 
please let me know if you are interested in maintaining any of them.

Thanks

Sau!
Yocto Project User Space Maintainer


> This mail was sent out by Package Report System.
> This message list those recipes which need to be upgraded. If maintainers believe some of them needn't to upgrade this time, they can fill in RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking
> files to ignore this recipe remainder until newer upstream version was detected.
> Example:
> RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 because the new version is unstable"
> You can check the detail information at http://packages.yoctoproject.org/upgradepkgname
>
>
> Package                       Version             Upstream version         Maintainer          NoUpgradeReason
> gnome-icon-theme              2.31.0              3.7.4                    Alejandro Hernandez waiting for the sato gtk3 port
> midori                        0.5.8               0.5.9                    Alejandro Hernandez
> dpkg                          1.17.4              1.17.22                  Aníbal Limón
> apt                           0.9.9.4             1.0.9.4                  Aníbal Limón
> xrandr                        1.4.2               1.4.3                    Aníbal Limón
> acpid                         2.0.22              2.0.23                   Aníbal Limón
> screen                        4.0.3               4.2.1                    Aníbal Limón
> lsof                          4.87                4.88                     Aníbal Limón
> mc                            4.8.12              4.8.13                   Aníbal Limón
> sqlite3                       3.8.6.0             3.8.7.4                  Aníbal Limón
> linux-libc-headers            3.16                3.18.1                   Bruce Ashfield
> kmod                          18+gitX             19+gitAUTOINC+fd56638aed Chen Qi
> pciutils                      3.2.1               3.3.0                    Chen Qi
> grep                          2.5.1a              2.21                     Chen Qi
> sudo                          1.8.10p3            1.8.11                   Chen Qi
> cpio                          2.8                 2.11                     Chen Qi
> tar                           1.27.1              1.28                     Chen Qi
> sysklogd                      1.5                 1.5.1                    Chen Qi
> xz                            5.1.3alpha          5.1.4beta                Chen Qi
> sysstat                       10.2.1              11.1.2                   Chen Qi
> curl                          7.38.0              7.39.0                   Chen Qi
> util-linux                    2.24.2              2.25.2                   Chen Qi
> coreutils                     8.22                8.23                     Chen Qi
> console-tools                 0.3.2               1999.03.02               Chen Qi
> bison                         2.7.1               3.0.2                    Chong Lu
> less                          470                 471                      Chong Lu
> byacc                         20141006            20141128                 Chong Lu
> cups                          2.0.0               2.0.1                    Chong Lu
> dbus                          1.8.10              1.9.4                    Chong Lu            D-BUS 1.9.x is the developmen...
> qemu                          2.1.2               2.2.0                    Cristian Iorga
> pulseaudio                    5                   5.99.1                   Cristian Iorga
> libatomics-ops                7.2                 7.4.0                    Cristian Iorga
> speex                         1.2rc1              1.2rc2                   Cristian Iorga
> gst-fluendo-mpegdemux         0.10.72             0.10.85                  Cristian Iorga
> gstreamer1.0-rtsp-server      1.4.1               1.4.4                    Cristian Iorga
> gstreamer1.0-plugins-ugly     1.4.1               1.4.4                    Cristian Iorga
> gstreamer1.0                  1.4.1               1.4.4                    Cristian Iorga
> gstreamer1.0-plugins-bad      1.4.1               1.4.4                    Cristian Iorga
> gstreamer1.0-libav            1.4.1               1.4.4                    Cristian Iorga
> gstreamer1.0-plugins-good     1.4.1               1.4.4                    Cristian Iorga
> gstreamer1.0-plugins-base     1.4.1               1.4.4                    Cristian Iorga
> gst-fluendo-mp3               0.10.19             0.10.31                  Cristian Iorga
> flac                          1.3.0               1.3.1                    Cristian Iorga
> connman                       1.26                1.27                     Cristian Iorga
> bluez5                        5.25                5.26                     Cristian Iorga
> gst-plugin-bluetooth          4.101               5.26                     Cristian Iorga
> bluez4                        4.101               5.26                     Cristian Iorga      BlueZ 5.x is not backward-com...
> telepathy-mission-control     5.16.1              5.99.11                  Cristian Iorga
> telepathy-idle                0.2.0               0.99.11                  Cristian Iorga
> telepathy-glib                0.24.0              0.99.11                  Cristian Iorga
> ofono                         1.15                1.16                     Cristian Iorga
> neard                         0.14                0.15                     Cristian Iorga
> harfbuzz                      0.9.35              0.9.37                   Cristian Iorga
> quota                         4.01                4.02                     Cristian Iorga
> libical                       1.0.0               1.0.1                    Cristian Iorga
> neon                          0.30.0              0.30.1                   Cristian Iorga
> db                            6.0.30              6.1.19                   Cristian Iorga      API compatibility issue
> syslinux                      6.01                6.03                     Darren Hart         Waiting for 4.06 for 3.3 kern...
> kernelshark                   1.2+gitX            2.4+gitAUTOINC+293f62596 Darren Hart         0.2 is the latest version.
> trace-cmd                     2.3.2+gitX          2.4+gitAUTOINC+79e08f8ed Darren Hart
> libxml-parser-perl            2.41                2.43                     Hongxu Jia
> xmlto                         0.0.25              0.0.26                   Hongxu Jia
> dhcp                          4.3.0               4.3.1                    Hongxu Jia
> ppp                           2.4.6               2.4.7                    Hongxu Jia
> directfb                      1.7.4               1.7.6                    Hongxu Jia
> qmmp                          0.7.7               0.8.2                    Hongxu Jia
> man                           1.6g                2.5a6                    Hongxu Jia
> groff                         1.22.2              1.22.3                   Hongxu Jia          1.18.1.4 is latest GPLv2 Vers...
> bash                          4.3                 4.3.30                   Hongxu Jia
> rpcbind                       0.2.1               0.2.2                    Hongxu Jia
> createrepo                    0.4.11              0.10.3                   Hongxu Jia          Versions after 0.9.* use YUM,...
> apr-util                      1.5.3               1.5.4                    Hongxu Jia
> gnupg                         2.0.26              2.1.1                    Hongxu Jia
> libxml2                       2.9.1               2.9.2                    Hongxu Jia
> adt-installer                 0.2.0               1.1                      Jessica Zhang
> bind                          9.9.5               11                       Kai Kang
> libsdl                        1.2.15              1.2.15-1                 Kai Kang
> python-nose                   1.2.1               1.3.4                    Khem Raj
> python-numpy                  1.7.0               1.9.1                    Khem Raj
> python3-distribute            0.6.32              0.7.3                    Khem Raj
> python-mako                   0.9.1               1.0.0                    Khem Raj
> rpm                           5.4.14              5.4.15-0.20140824        Mark Hatle
> libgfortran                   4.9.1               4.9.2                    No Maintainer
> json-c                        0.11                0.12                     No Maintainer
> python-async                  0.6.1               0.6.2                    No Maintainer
> python-smmap                  0.8.2               0.8.3                    No Maintainer
> python-gitdb                  0.5.4               0.6.0                    No Maintainer
> libpfm4                       4.3.0               4.5.0                    No Maintainer
> waffle                        1.3.0               1.5.0                    No Maintainer
> mesa-gl                       10.3.4              10.4.0                   No Maintainer
> libinput                      0.6.0               0.7.0                    No Maintainer
> gnu-efi                       3.0u                3.0w                     No Maintainer
> ca-certificates               20140325            20141019                 No Maintainer
> dbus-test                     1.8.10              1.9.4                    No Maintainer
> systemd                       216+gitX            218+gitAUTOINC+f2cbe59e1 No Maintainer
> glibc-initial                 2.2                 28                       No Maintainer
> cmake                         2.8.12.2            3.1.0                    Paul Eggleton
> yasm                          1.2.0               1.3.0                    Paul Eggleton
> dosfstools                    2.11                3.0.26                   Paul Eggleton
> libav                         9.16                11.1                     Paul Eggleton
> x264                          r2265+gitX          r2491                    Paul Eggleton
> openssh                       6.6p1               6.7p1                    Paul Eggleton
> qt-mobility-embedded          1.2.0               1.2.2-20120224           Paul Eggleton
> qt-mobility-x11               1.2.0               1.2.2-20120224           Paul Eggleton
> ethtool                       3.16                3.18                     Paul Eggleton
> augeas                        1.2.0               1.3.0                    Paul Eggleton
> gpgme                         1.4.3               1.5.3                    Paul Eggleton
> libgpg-error                  1.12                1.17                     Paul Eggleton
> libevdev                      1.2.2               1.3.2                    Paul Eggleton
> dropbear                      2014.63             2014.66                  Paul Eggleton
> gcc                           4.9.1               4.9.2                    Richard Purdie
> subversion                    1.8.10              1.8.11                   Richard Purdie
> python-gst                    0.10.22             1.4.0                    Richard Purdie
> python-scons                  2.3.2               2.3.4                    Richard Purdie
> python-pygobject              2.28.3              3.13.3                   Richard Purdie      Newer versions of python-pygo...
> python                        2.7.3               3.4.2rc1                 Richard Purdie
> python3                       3.3.3               3.4.2rc1                 Richard Purdie
> btrfs-tools                   3.14.2+gitX         3.17.3+gitAUTOINC+e4c122 Richard Purdie
> tcf-agent                     0.4.0+gitX          8.0+gitAUTOINC+b2cc9d89a Richard Purdie
> lttng-modules                 2.5.0               2.5.2                    Richard Purdie
> lttng-ust                     2.5.0               2.5.2                    Richard Purdie
> bdwgc                         7.4.2               gc-7.2d                  Richard Purdie
> rsync                         3.1.0               3.1.1                    Robert Yang
> file                          5.18                5.21                     Robert Yang
> make                          4                   4.1                      Robert Yang
> git                           2.0.1               2.2.0                    Robert Yang
> e2fsprogs                     1.42.9              1.42.12                  Robert Yang
> libtool                       2.4.2               2.4.4                    Robert Yang
> m4                            1.4.9               1.4.17                   Robert Yang
> wget                          1.16                1.16.1                   Robert Yang
> logrotate                     3.8.7               3.8.8                    Robert Yang
> gmp                           6.0.0               6.0.0a                   Robert Yang
> glib-2.0                      2.40.0              2.43.2                   Robert Yang
> json-glib                     1.0.0               1.0.2                    Ross Burton
> gdk-pixbuf                    2.30.8              2.31.2                   Ross Burton
> gtk+                          2.24.24             3.15.3                   Ross Burton         Do not upgrade to version: 2....
> gtk+3                         3.12.2              3.15.3                   Ross Burton
> hicolor-icon-theme            0.13                0.14                     Ross Burton
> librsvg                       2.40.2              2.40.6                   Ross Burton
> libnotify                     0.6.0               0.7.6                    Ross Burton
> libpng12                      1.2.51              1.2.52                   Ross Burton
> x11-common                    0.1                 1:7.6                    Ross Burton
> liberation-fonts              1.04                2.00.1                   Ross Burton         2.00.0 - fontforge package re...
> xcb-util-keysyms              0.3.9               0.4.0                    Ross Burton
> xkeyboard-config              2.12                2.13                     Ross Burton
> xtrans                        1.3.4               1.3.5                    Ross Burton
> xcb-util                      0.3.9               0.4.0                    Ross Burton
> libxext                       1.3.2               1.3.3                    Ross Burton
> xcb-util-image                0.3.9               0.4.0                    Ross Burton
> freetype                      2.5.3               2.5.4                    Ross Burton
> xf86-video-intel              2.99.912            2.99.916                 Ross Burton
> xf86-video-omap               0.4.2+gitrX         0.4.3+gitrAUTOINC+5d3d49 Ross Burton
> xf86-video-modesetting        0.8.1               0.9.0                    Ross Burton
> xf86-input-evdev              2.9.0               2.9.1                    Ross Burton
> xf86-input-synaptics          1.8.0               1.8.1                    Ross Burton
> xserver-xorg                  1.16.2              1.16.99.901              Ross Burton
> xkbcomp                       1.2.4               1.3.0                    Ross Burton
> xinit                         1.3.3               1.3.4                    Ross Burton
> cairo                         1.12.16             5c-1.5                   Ross Burton
> xcb-proto                     1.2+gitrX           1.11+gitrAUTOINC+691d2b9 Ross Burton
> clutter-gtk-1.0               1.4.4               1.6.0                    Ross Burton
> clutter-1.0                   1.18.2              1.21.2                   Ross Burton
> clutter-gst-1.0               1.6.0               3.0.0                    Ross Burton
> pango                         1.36.6              1.36.8                   Ross Burton
> libpam                        1.1.6               1.1.8                    Ross Burton
> vte                           0.28.2              0.39.1                   Ross Burton         Pending Glib-2.0 Update
> libfm                         1.1.2.2             1.2.3                    Ross Burton
> libsoup-2.4                   2.46.0              2.49.1                   Ross Burton
> icu                           53.1                55                       Ross Burton
> gnutls                        3.3.5               3.3.11                   Ross Burton
> libtasn1                      4                   4.2                      Ross Burton
> at-spi2-core                  2.12.0              2.15.3                   Ross Burton
> at-spi2-atk                   2.12.1              2.15.3                   Ross Burton
> atk                           2.12.0              2.15.3                   Ross Burton
> glib-networking               2.38.0              2.43.1                   Ross Burton         Pending Glib-2.0 Update
> libffi                        3.1                 3.2.1                    Saul Wold
> libunique                     1.1.6               3.0.2                    Saul Wold           Do not upgrade to version: 2....
> dtc                           1.4.0+gitX          1.4.1+gitAUTOINC+302fca9 Saul Wold
> rgb                           1.0.5               1.0.6                    Saul Wold
> mx-1.0                        1.4.7+gitX          1.99.4+gitAUTOINC+24efb0 Saul Wold           PRS 1.99 is dev version
> usbutils                      7                   8                        Saul Wold
> lsbinitscripts                9.56.1              9.6                      Saul Wold
> libaio                        0.3.109             0.3.110                  Saul Wold
> gdbm                          1.8.3               1.11                     Saul Wold
> libksba                       1.3.1               1.3.2                    Saul Wold
> libassuan                     2.1.2               2.2.0                    Saul Wold
> liburcu                       0.8.5               0.8.6                    Saul Wold
> initscripts                   1                   9.4                      Saul Wold
> base-passwd                   3.5.29              3.5.37                   Saul Wold
> build-appliance-image         8                   12.0.0                   Saul Wold
> blktrace                      1.0.5+gitX          1.1.0+gitAUTOINC+2cf87e6 Tom Zanussi
> ccache                        3.1.9               3.2.1                    Wenzong Fan
> chkconfig                     1.3.58              1.3.63                   Wenzong Fan
> gettext                       0.18.3.2            0.19.3                   Wenzong Fan
> Upgradable Count: 179
> Upgrade Total Count: 194

