Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1167E00C45
	for <yocto@yoctoproject.org>; Mon, 21 Apr 2014 11:07:59 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id sa20so8194547veb.36
	for <yocto@yoctoproject.org>; Mon, 21 Apr 2014 11:07:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=EpixarhU8JN3jOKEt1+l/+gxZxc9b6KoA4AnOlhqjJU=;
	b=DWUlufncoWSCXNL0ENF6rxZUR35zpX12Ac8+qcp3ppSJN1Y8lPWie/r/qd2kX2mJQl
	jDXlj/It3uyCoLkn4mNnSnBTHi24kf3z7SHvz7hbP9/tUuy6XyH6i6+W0chRCcKScVVW
	qr+uxvf++x/AMmBfTgi2XdcYzuQfxtllLnQE8b1A9rfTAXfnC0sqqOW29WKT6uKpAtYl
	MAh/u61jH8EccjugHPY1Ys0Hs1mwrJxJtuzHLYvxfMgGZ5b9CU/xWd4gVigZUJadigH8
	No/ukOwJPmke8oaY0QtXkxJBAnqaJND9kPRcqmb1SXH0UuJF2fLhxqP9Gj64wiA+Bred
	F6vA==
X-Gm-Message-State: ALoCoQnIW8gBFs1UudsiNr1tcvqGNb+IwEl7fliDjr7J+1o1EBIYS1yFWinFWTRwZEArjMsgigFq
MIME-Version: 1.0
X-Received: by 10.221.29.137 with SMTP id ry9mr32363939vcb.6.1398103678257;
	Mon, 21 Apr 2014 11:07:58 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Mon, 21 Apr 2014 11:07:58 -0700 (PDT)
In-Reply-To: <1397995216.16672.17.camel@ted>
References: <1397858808-10025-1-git-send-email-elizabeth.flanagan@intel.com>
	<1397995216.16672.17.camel@ted>
Date: Mon, 21 Apr 2014 11:07:58 -0700
Message-ID: <CAPhnLPDJP-UzA3wD_t43y=5xxci4r-AnDb_KZnE83Zs2oLRksA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][daisy] distro_alias.inc: update/sort alias information.
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
X-List-Received-Date: Mon, 21 Apr 2014 18:08:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

Looking at this again. It looks like something went odd either with
the scripts I hacked together to generate this or my commit.

-b

On Sun, Apr 20, 2014 at 5:00 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Fri, 2014-04-18 at 15:06 -0700, Elizabeth Flanagan wrote:
>> From: Beth Flanagan <elizabeth.flanagan@intel.com>
>>
>> Added new package data and resorted per
>> http://article.gmane.org/gmane.linux.embedded.poky/9253
>>
>> Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
>> ---
>>  meta-yocto/conf/distro/include/distro_alias.inc | 25 +++++++++++++++++++++++--
>>  1 file changed, 23 insertions(+), 2 deletions(-)
>>
>> diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
>> index 96db5ba..68a82b7 100644
>> --- a/meta-yocto/conf/distro/include/distro_alias.inc
>> +++ b/meta-yocto/conf/distro/include/distro_alias.inc
>> @@ -71,6 +71,7 @@ DISTRO_PN_ALIAS_pn-core-image-sato-sdk = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-core-image-weston = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-core-image-x11 = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-cross-localedef = "OSPDT"
>> +DISTRO_PN_ALIAS_pn-cryptodev-linux = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-cwautomacros = "OSPDT upstream=http://cwautomacros.berlios.de/"
>>  DISTRO_PN_ALIAS_pn-damageproto = "Meego=xorg-x11-proto-damageproto"
>>  DISTRO_PN_ALIAS_pn-db = "Debian=db5.1 Ubuntu=db5.1"
>> @@ -122,7 +123,9 @@ DISTRO_PN_ALIAS_pn-gdk-pixbuf-csource-native = "Debian=libgdk-pixbuf2.0-0 Fedora
>>  DISTRO_PN_ALIAS_pn-gettext-minimal-native = "Debian=gettext Fedora=gettext"
>>  DISTRO_PN_ALIAS_pn-glib-2.0 = "Meego=glib2 Fedora=glib2 OpenSuSE=glib2 Ubuntu=glib2.0 Mandriva=glib2.0 Debian=glib2.0"
>>  DISTRO_PN_ALIAS_pn-glproto = "Meego=xorg-x11-proto-glproto"
>> +DISTRO_PN_ALIAS_pn-gnome-desktop-testing = "Debian=gnome-desktop-testing Fedora=gnome-desktop-testing"
>>  DISTRO_PN_ALIAS_pn-gnu-config = "OpenedHand"
>> +DISTRO_PN_ALIAS_pn-grub-efi = "Debian=grub-efi Fedora=grub2-efi"
>>  DISTRO_PN_ALIAS_pn-grub-efi-i586 = "Ubuntu=grub Fedora=grub"
>>  DISTRO_PN_ALIAS_pn-grub-efi-x86-64-native = "Ubuntu=grub Fedora=grub"
>
> Something doesn't add up above...
>
>>  DISTRO_PN_ALIAS_pn-gst-ffmpeg = "Mandriva=gstreamer0.10-ffmpeg Debian=gstreamer0.10-ffmpeg"
>> @@ -137,6 +140,7 @@ DISTRO_PN_ALIAS_pn-gst-plugins-gl = "Debian=gstreamer0.10-plugins-gl OpenSuSE=gs
>>  DISTRO_PN_ALIAS_pn-gst-plugins-good = "Meego=gst-plugins-good Fedora=gstreamer-plugins-good OpenSuSE=gstreamer-plugins-good Ubuntu=gst-plugins-good0.10 Mandriva=gstreamer0.10-plugins-good Debian=gst-plugins-good0.10"
>>  DISTRO_PN_ALIAS_pn-gst-plugins-ugly = "OpenSuSE=gstreamer-plugins-ugly Mandriva=gstreamer0.10-plugins-ugly Debian=gst-plugins-ugly0.10"
>>  DISTRO_PN_ALIAS_pn-gstreamer1.0 = "Debian=gstreamer1.0 Ubuntu=gstreamer1.0"
>> +DISTRO_PN_ALIAS_pn-gstreamer1.0-meta-base = "Meego=gstreamer Fedora=gstreamer OpenSuSE=gstreamer Ubuntu=gstreamer0.10"
>
> meta-base is just a meta package?
>
>>  DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-bad = "Debian=gstreamer1.0-plugins-bad Ubuntu=gstreamer1.0-plugins-bad"
>>  DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-base = "Debian=gstreamer1.0-plugins-base Ubuntu=gstreamer1.0-plugins-base"
>>  DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-good = "Debian=gstreamer1.0-plugins-good Ubuntu=gstreamer1.0-plugins-bad"
>> @@ -148,6 +152,7 @@ DISTRO_PN_ALIAS_pn-gtk-engines = "Fedora=gtk2-engines OpenSuSE=gtk2-engines Ubun
>>  DISTRO_PN_ALIAS_pn-gtk-sato-engine = "OpenedHand"
>>  DISTRO_PN_ALIAS_pn-gtk-theme-torturer = "OSPDT upstream=http://wiki.laptop.org/go/GTK_for_OLPC"
>>  DISTRO_PN_ALIAS_pn-gtk-update-icon-cache-native = "OSPDT"
>> +DISTRO_PN_ALIAS_pn-gummiboot = "Debian=gummiboot Fedora=gummiboot"
>>  DISTRO_PN_ALIAS_pn-hello-mod = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-hostap-conf = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-hwlatdetect = "OSPDT"
>> @@ -158,6 +163,8 @@ DISTRO_PN_ALIAS_pn-initramfs-framework = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-initramfs-live-boot = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-initramfs-live-install = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-initramfs-live-install-efi = "OE-Core"
>> +DISTRO_PN_ALIAS_pn-initramfs-live-install-efi-testfs = "OE-Core"
>> +DISTRO_PN_ALIAS_pn-initramfs-live-install-testfs = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-initscripts = "Fedora=initscripts Mandravia=initscripts"
>>  DISTRO_PN_ALIAS_pn-inputproto = "Meego=xorg-x11-proto-inputproto"
>>  DISTRO_PN_ALIAS_pn-iproute2 = "OSPDT"
>> @@ -195,7 +202,9 @@ DISTRO_PN_ALIAS_pn-libical = "Ubuntu=libical Fedora=libical"
>>  DISTRO_PN_ALIAS_pn-libiconv = "Fedora=mingw-libiconv Opensuse=cross-mingw-libiconv"
>>  DISTRO_PN_ALIAS_pn-libjson = "Ubuntu=libjson0-dev Debian=libjson0-dev"
>>  DISTRO_PN_ALIAS_pn-libksba = "Fedora=libksba Debian=libksba8"
>> +DISTRO_PN_ALIAS_pn-libksba = "Fedora=libksba Ubuntu=libksba"
>
> Duplicate?
>
>>  DISTRO_PN_ALIAS_pn-liblbxutil = "Mandriva=liblbxutil OpenSuse=xorg-x11-devel"
>> +DISTRO_PN_ALIAS_pn-libmatchbox = "Ubuntu=libmatchbox Fedora=libmatchbox"
>>  DISTRO_PN_ALIAS_pn-libmpc = "Fedora=libmpc OpenSuse=libmpc2"
>>  DISTRO_PN_ALIAS_pn-libnewt = "Debian=libnewt0.52 Fedora=newt"
>>  DISTRO_PN_ALIAS_pn-libnewt-python = "Ubuntu=python-newt Fedora=newt-python"
>> @@ -224,6 +233,7 @@ DISTRO_PN_ALIAS_pn-libx11-diet = "Debian=libx11-6 Fedora=libX11 Ubuntu=libx11-6
>>  DISTRO_PN_ALIAS_pn-libxcalibrate = "OSPDT upstream=http://cgit.freedesktop.org/xorg/lib/libXCalibrate/"
>>  DISTRO_PN_ALIAS_pn-libxfontcache = "Mandriva=libxfontcache Debian=libxfontcache"
>>  DISTRO_PN_ALIAS_pn-libxft = "Mandriva=libxft Debian=libxft2 Ubuntu=libxft2"
>> +DISTRO_PN_ALIAS_pn-libxi = "Ubuntu=libxi Fedora=libXi"
>>  DISTRO_PN_ALIAS_pn-libxkbcommon = "Fedora=libxkbcommon Debian=libxkbcommon"
>>  DISTRO_PN_ALIAS_pn-libxprintapputil = "Debian=libxprintapputil Ubuntu=libxprintapputil1 Mandriva=libxprintapputil"
>>  DISTRO_PN_ALIAS_pn-libxscrnsaver = "Fedora=libXScrnSaver Ubuntu=libxss1 Mandriva=libxscrnsaver"
>> @@ -243,6 +253,7 @@ DISTRO_PN_ALIAS_pn-ltp = "Mandriva=ltp Ubuntu=ltp"
>>  DISTRO_PN_ALIAS_pn-lttng-modules = "OSPDT upstream=http://lttng.org/"
>>  DISTRO_PN_ALIAS_pn-lttng-tools = "OSPDT upstream=http://lttng.org/"
>>  DISTRO_PN_ALIAS_pn-lttng-ust = "OSPDT upstream=http://lttng.org/"
>> +DISTRO_PN_ALIAS_pn-lz4 = "Debian=lz4 Fedora=lz4"
>>  DISTRO_PN_ALIAS_pn-lzo = "Debian=liblzo Ubuntu=liblzo Fedora=lzp"
>>  DISTRO_PN_ALIAS_pn-lzo-native = "Debian=liblzo Ubuntu=liblzo Fedora=lzp"
>>  DISTRO_PN_ALIAS_pn-mailx = "Debian=bsd-mailx Ubuntu=bsd-mailx"
>> @@ -277,6 +288,7 @@ DISTRO_PN_ALIAS_pn-mini-x-session = "OSPDT"
>>  DISTRO_PN_ALIAS_pn-mkfontdir = "Mandriva=mkfontdir Ubuntu=xfonts-utils Fedora=xorg-x11-font-utils"
>>  DISTRO_PN_ALIAS_pn-mkfontscale = "Mandriva=mkfontscale Ubuntu=xfonts-utils Fedora=xorg-x11-font-utils"
>>  DISTRO_PN_ALIAS_pn-mktemp = "Mandriva=mktemp Fedora=mktemp"
>> +DISTRO_PN_ALIAS_pn-mmc-utils = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-moblin-proto = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-modutils-collateral = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-modutils-initscripts = "OE-Core"
>> @@ -303,18 +315,19 @@ DISTRO_PN_ALIAS_pn-opkg-collateral = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-opkg-config-base = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-opkg-nogpg = "OSPDT upstream=http://svn.openmoko.org/trunk/src/tar"
>>  DISTRO_PN_ALIAS_pn-opkg-utils = "OSPDT upstream=http://svn.openmoko.org/trunk/src/target/opkg/"
>> +DISTRO_PN_ALIAS_pn-oprofile = "Debian=oprofile Fedora=oprofile"
>>  DISTRO_PN_ALIAS_pn-oprofileui = "Fedora=oprofileui Ubuntu=oprofile-gui Debian=oprofile-gui"
>>  DISTRO_PN_ALIAS_pn-oprofileui-server = "Fedora=oprofileui Ubuntu=oprofile-gui Debian=oprofile-gui"
>>  DISTRO_PN_ALIAS_pn-owl-video = "OpenedHand"
>>  DISTRO_PN_ALIAS_pn-packagegroup-base = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-packagegroup-core = "OE-Core"
>> -DISTRO_PN_ALIAS_pn-packagegroup-core-full-cmdline = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-packagegroup-core-boot = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-packagegroup-core-buildessential = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-packagegroup-core-clutter = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-packagegroup-core-device-devel = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-packagegroup-core-directfb = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-packagegroup-core-eclipse-debug = "OE-Core"
>> +DISTRO_PN_ALIAS_pn-packagegroup-core-full-cmdline = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-packagegroup-core-lsb = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-packagegroup-core-nfs = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-packagegroup-core-qt = "OE-Core"
>> @@ -343,6 +356,7 @@ DISTRO_PN_ALIAS_pn-packagegroup-sdk-host = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-packagegroup-self-hosted = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-package-index = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-perf = "OSPDT"
>> +DISTRO_PN_ALIAS_pn-piglit = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-pkgconfig = "Ubuntu=pkg-config Fedora=pkgconfig"
>>  DISTRO_PN_ALIAS_pn-pkgconfig-native = "Ubuntu=pkg-config Fedora=pkgconfig"
>>  DISTRO_PN_ALIAS_pn-pointercal = "OE-Core"
>> @@ -350,13 +364,17 @@ DISTRO_PN_ALIAS_pn-pointercal-xinput = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-poky-feed-config-opkg = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-pong-clock = "OpenedHand"
>>  DISTRO_PN_ALIAS_pn-portmap = "Debian=rpcbind Fedora=rpcbind"
>> +DISTRO_PN_ALIAS_pn-postinst-intercept = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-powertop = "Meego=powertop Fedora=powertop Debian=powertop OpenSuSE=powertop Mandriva=powertop"
>>  DISTRO_PN_ALIAS_pn-ppp-dialin = "OE-Core"
>> +DISTRO_PN_ALIAS_pn-presentproto = "Debian=x11proto-present-dev Fedora=xorg-x11-proto-devel"
>>  DISTRO_PN_ALIAS_pn-printproto = "Debian=x11proto-print-dev Ubuntu=x11proto-print-dev Mandriva=x11-proto-devel"
>>  DISTRO_PN_ALIAS_pn-pseudo = "Windriver"
>>  DISTRO_PN_ALIAS_pn-psplash = "OpenedHand"
>>  DISTRO_PN_ALIAS_pn-ptest-runner = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-puzzles = "Debian=sgt-puzzles Fedora=puzzles"
>> +DISTRO_PN_ALIAS_pn-python3-distribute = "Debian=python3-setuptools Fedora=python3-setuptools"
>> +DISTRO_PN_ALIAS_pn-python-ZSI = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-python-argparse = "Fedora=python-argparse OpenSuSE=python-argparse"
>>  DISTRO_PN_ALIAS_pn-python-argparse-native = "Fedora=python-argparse OpenSuSE=python-argparse"
>>  DISTRO_PN_ALIAS_pn-python-dbus = "Ubuntu=python-dbus Debian=python-dbus Mandriva=python-dbus"
>> @@ -370,7 +388,6 @@ DISTRO_PN_ALIAS_pn-python-pyrex = "Mandriva=python-pyrex Ubuntu=python-pyrex"
>>  DISTRO_PN_ALIAS_pn-python-scons = "Fedora=scons OpenSuSE=scons Ubuntu=scons Mandriva=scons Debian=scons"
>>  DISTRO_PN_ALIAS_pn-python-setuptools = "Mandriva=python-setup OpenSuSE=python-setup-git"
>>  DISTRO_PN_ALIAS_pn-python-smartpm = "Debian=smart OpenSuSE=smart"
>> -DISTRO_PN_ALIAS_pn-python-ZSI = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-qemu-config = "OpenedHand"
>>  DISTRO_PN_ALIAS_pn-qemugl = "OpenedHand"
>>  DISTRO_PN_ALIAS_pn-qemu-helper = "OpenedHand"
>> @@ -381,6 +398,7 @@ DISTRO_PN_ALIAS_pn-qmmp = "Fedora=qmmp Debian=qmmp"
>>  DISTRO_PN_ALIAS_pn-qt4e-demo-image = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-qt4-embedded = "OSPDT"
>>  DISTRO_PN_ALIAS_pn-qt4-graphics-system = "OE-Core"
>> +DISTRO_PN_ALIAS_pn-qt4-graphics-system = "OE-Core"
>
> Duplicate?
>
>>  DISTRO_PN_ALIAS_pn-qt4-native = "Mandriva=libqt4-devel Ubuntu=libqt4-dev"
>>  DISTRO_PN_ALIAS_pn-qt4-tools = "Mandriva=libqt4-devel Ubuntu=libqt4-dev"
>>  DISTRO_PN_ALIAS_pn-qt4-x11-free = "Ubuntu=qt-x11-free Debian=qt-x11-free"
>> @@ -438,6 +456,7 @@ DISTRO_PN_ALIAS_pn-ubootchart = "OSPDT upstream=http://code.google.com/p/ubootch
>>  DISTRO_PN_ALIAS_pn-u-boot-fw-utils = "Ubuntu=u-boot-tools Debian=u-boot-tools"
>>  DISTRO_PN_ALIAS_pn-u-boot-mkimage = "Ubuntu=uboot-mkimage Debian=uboot-mkimage"
>>  DISTRO_PN_ALIAS_pn-udev-extraconf = "OE-Core"
>> +DISTRO_PN_ALIAS_pn-unfs3 = "Debian=unfs3 Fedora=unfs3"
>>  DISTRO_PN_ALIAS_pn-unfs-server = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-update-alternatives-dpkg = "Opensuse=update-alternatives Mandriva=update-alternatives"
>>  DISTRO_PN_ALIAS_pn-update-rc.d = "OE-Core"
>> @@ -445,6 +464,7 @@ DISTRO_PN_ALIAS_pn-usbinit = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-util-macros = "Meego=xorg-x11-util-macros Fedora=xorg-x11-util-macros Mandriva=x11-util-macros"
>>  DISTRO_PN_ALIAS_pn-v86d = "Debian=v86d Ubuntu=v86d"
>>  DISTRO_PN_ALIAS_pn-videoproto = "Meego=xorg-x11-proto-videoproto"
>> +DISTRO_PN_ALIAS_pn-waffle = "OE-Core"
>>  DISTRO_PN_ALIAS_pn-watchdog = "Debian=watchdog Ubuntu=watchdog Mandriva=watchdog"
>>  DISTRO_PN_ALIAS_pn-webkit-gtk = "Fedora=webkitgtk Ubuntu=libwebkit"
>>  DISTRO_PN_ALIAS_pn-web-webkit = "OpenedHand"
>> @@ -507,3 +527,4 @@ DISTRO_PN_ALIAS_pn-xwininfo = "Fedora=xorg-x11-utils Ubuntu=x11-utils"
>>  DISTRO_PN_ALIAS_pn-yaffs2-utils = "OSPDT upstream=http://www.yaffs.net"
>>  DISTRO_PN_ALIAS_pn-zaurusd = "OpenedHand"
>>  DISTRO_PN_ALIAS_pn-zeroconf = "OSPDT upstream=http://www.progsoc.org/~wildfire/zeroconf/"
>> +DISTRO_PN_ALIAS_pn-zeroconf = "OSPDT upstream=http://www.progsoc.org/~wildfire/zeroconf/"
>
> Duplicate?
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

