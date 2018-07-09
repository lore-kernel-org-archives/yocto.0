Return-Path: <akash12bhardwaj@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14B1BE00E4F; Mon,  9 Jul 2018 02:04:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akash12bhardwaj[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ED39E00812
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 02:04:36 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id r16-v6so34528789oie.3
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2018 02:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=AKPQLLiuWhaeXjdtEsMnJsIa8mOLdPI8oYaeB2qIBo8=;
	b=WbyCqGcfHucGU9W8bFMFsJZ+zieS6s77G/hdFkHlrkxvCcMxhJble913Mc0p6ILvzf
	Lri59+EqN4WEjd/jJFqlhDaFY+ABtuEYP3RwWrp2i/A3IGlQ4tYNfasT+VFf2WxAZzbn
	XqhgbSpe5Q+Jy6L6qoxZaQBM0vUsA9VHn3vl54S6AsBewwxb5yfme0K+SX10kHEYQp+M
	9hHiFq7gROLEwoJ+IWQyOQWotYPUGnMaIvY18eI7+dWxbC+/G3c+Iekq7+YH6epP5By1
	4/yidF5aBwgQ/JVFSH2G1iXCGwJTg1oNhYyExTpZcyrtURiqefnhWsm4hjOh6kgXaSWS
	/v0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AKPQLLiuWhaeXjdtEsMnJsIa8mOLdPI8oYaeB2qIBo8=;
	b=fmE6qeKEwkXYqySlScmCd0eZy/x7V0Ug0n4/0paOfmunS6UqvaS51wz7Bg4Uioenle
	ymwJ8/tBC3k7Sd1KwnJzXgMFADp/x/9s9jSL0rk3IItWw8oTP/W1C3RiHsna1UnJPCQO
	zh2MjoFC891l8jtBwo16HUiSLYylUwvL3V/stzlO37g8q520tGmch6LrCgUBRcygUiHu
	nSZFbHw24bSwkjotoJBmr5rP8LL459t39pwru1mWQKnqUcZAaYntB5vJy4RNEFOAGi7C
	gxIWOlstH/86xOcIXNJtmeLQ+KMz7StXveoE8qC+znTCw0jOAoabr6djdSUDdncKIA6z
	UG9g==
X-Gm-Message-State: APt69E1yJJokLodOSNqvJT4wh8gNFHPj4igVoGtKvLjiJuwm8P2HgMvj
	tKTvXp+zPx/XIgMHl72vlTTOYbTjmyfoh56+tuOPxg==
X-Google-Smtp-Source: AAOMgpc5GupNVDyEIipGc7ivyFqBwWYN+lfzBtXOShPRmPQYHh83EI32cko0ztu4Y9QW0n3G4CIEup9dbm8KFqWzZ3o=
X-Received: by 2002:aca:3b89:: with SMTP id
	i131-v6mr22675278oia.109.1531127076180; 
	Mon, 09 Jul 2018 02:04:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:ed6:0:0:0:0:0 with HTTP;
	Mon, 9 Jul 2018 02:04:35 -0700 (PDT)
From: AKASH BHARDWAJ <akash12bhardwaj@gmail.com>
Date: Mon, 9 Jul 2018 14:34:35 +0530
Message-ID: <CALYZMnnjxb=Vp3tmnW=Ftu20uGxWLZLaBC1kVieV_M-jd=Dc2g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Issue in extracting Yocto Sdk
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
X-List-Received-Date: Mon, 09 Jul 2018 09:04:38 -0000
Content-Type: multipart/alternative; boundary="0000000000007b547805708d4d87"

--0000000000007b547805708d4d87
Content-Type: text/plain; charset="UTF-8"

./poky-glibc-x86_64-rpi-basic-image-cortexa7hf-neon-vfpv4-toolchain-2.4.3.sh
Poky (Yocto Project Reference Distro) SDK installer version 2.4.3
=================================================================
Enter target directory for SDK (default: /opt/poky/2.4.3):
/home/akash/rpil/rpi-build/tmp
The directory "/home/akash/rpil/rpi-build/tmp" already contains a SDK for
this architecture.
If you continue, existing files will be overwritten! Proceed[y/N]? y
Extracting SDK.........................................................
...................................................................done
Setting it up...SDK could not be set up. Relocate script unable to find
ld-linux.so. Abort!

Presently,I am facing this issue.How can I rectify it?


Here is the local.conf file

CONF_VERSION = "1"
> DESCRIPTION = "Yocto-image"
> # Local configuration for meta-rpi images
> # Yocto Project 2.4 Poky distribution [rocko] branch
> # This is a sysvinit system
>
> LICENSE = "CLOSED"
>
> BBMASK = "meta-raspberrypi/recipes-kernel/linux-firmware"
>
> PACKAGE_FEED_URIS = "
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-devtools/wiringPi/wiringpi_git.bb?h=master
> https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-devtools/i2c-tools/i2c-tools_4.0.bb
> https://github.com/eMakerStudio/meta-rpi/tree/morty/recipes-devtools/pi-blaster/pi-blaster_git.bbappend
> https://git.pengutronix.de/cgit/imx/sdma-firmware"
>
> DISTRO_FEATURES = "ext2 pam opengl usbhost ${DISTRO_FEATURES_LIBC}  x11
> wayland"
>
> DISTRO_FEATURES_BACKFILL_CONSIDERED += "pulseaudio"
> DISTRO_FEATURES_append += "virtualization"
>
> IMAGE_INSTALL = "packagegroup-core-boot \
>     packagegroup-core-x11 \
>     packagegroup-lxde-base \
>     kernel-modules \
> "
>
> PREFERRED_PROVIDER_jpeg = "libjpeg-turbo"
> PREFERRED_PROVIDER_jpeg-native = "libjpeg-turbo-native"
>
> PREFERRED_PROVIDER_udev = "eudev"
> VIRTUAL-RUNTIME_init_manager = "sysvinit"
>
> MACHINE_FEATURES_remove = "apm"
>
> IMAGE_FSTYPES = "tar.xz ext3 rpi-sdimg "
>
> # override the meta-raspberrypi default 4.9 kernel
> PREFERRED_VERSION_linux-raspberrypi = "4.14%"
>
> # Choose the board you are building for
> #MACHINE="raspberrypi"
> #MACHINE="raspberrypi0"
> #MACHINE="raspberrypi0-wifi"
> #MACHINE="raspberrypi2"
> MACHINE = "raspberrypi3"
> #MACHINE="raspberrypi-cm"
> #MACHINE="raspberrypi-cm3"
>
> # Choices are Image or zImage if NOT using u-boot (no u-boot is the
> default)
> # Choices are uImage or zImage if using u-boot, though if you choose zImage
> # with u-boot you will also have to change the boot script boot command
> KERNEL_IMAGETYPE = "zImage"
>
> ENABLE_UART="1"
>
> #DL_DIR = "${HOME}/oe-sources"
>
> #SSTATE_DIR = "/oe4/rpi/sstate-cache"
>
> #TMPDIR = "/oe4/rpi/tmp-rocko"
>
> DISTRO = "poky"
> PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk "
>
> # i686 or x86_64
> SDKMACHINE = "x86_64"
>
> #EXTRA_IMAGE_FEATURES = "debug-tweaks"
>
>
>
> PACKAGECONFIG_append_pn-qemu-native = " sdl"
> PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
> USER_CLASSES = "image-mklibs image-prelink"
>
> PATCHRESOLVE = "noop"
>
> RM_OLD_IMAGE = "1"
>
> INHERIT += "rm_work"
>
>
>
>
> PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk "
>
>
> EXTRA_IMAGE_FEATURES += "tools-sdk tools-debug eclipse-debug tools-profile
> debug-tweaks "
>
> EXTRA_IMAGE_FEATURES += " package-management dev-pkgs "
>
> USER_CLASSES ?= "buildstats image-mklibs"
>
>
>
>
>
>
>
>
>
>
> GPU_MEM = "16"
>
>
> TOOLCHAIN_HOST_TASK += "nativesdk-cmake-dev"
> TOOLCHAIN_TARGET_TASK_append = " wiringpi-dev"
>
>
> IMAGE_INSTALL_APPEND = "git apt dpkg opkg rpm sudo wiringpi wiringpi-dev
> cmake connman connman-client tzdata i2c-tools i2c-tools-dev  pi-blaster
> pi-blaster-dev"
> CORE_IMAGE_EXTRA_INSTALL=" rpm opkg dpkg git sudo wiringpi apt
> wiringpi-dev cmake tzdata localedef i2c-tools i2c-tools-dev connman
> connman-client  pi-blaster pi-blaster-dev"
> IMAGE_INSTALL_append += "  bluez5 i2c-tools python-smbus bridge-utils
> hostapd dhcp-server iptables wpa-supplicant apache2  glibc-utils"
> ENABLE_UART="1"
> ENABLE_SPI_BUS= "1"
> ENABLE_I2C = "1"
> ENABLE_PCF857x_I2C_GPIO_expanders = "1"
>

--0000000000007b547805708d4d87
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">./<a href=3D"http://poky-glibc-x86_64-rpi-basic-image-cort=
exa7hf-neon-vfpv4-toolchain-2.4.3.sh" target=3D"_blank">poky-glibc-x86_64-r=
pi-basic-<wbr>image-cortexa7hf-neon-vfpv4-<wbr>toolchain-2.4.3.sh</a><br>Po=
ky (Yocto Project Reference Distro) SDK installer version 2.4.3<br>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D<br>Enter target director=
y for SDK (default: /opt/poky/2.4.3): /home/akash/rpil/rpi-build/tmp<br>The=
 directory &quot;/home/akash/rpil/rpi-build/<wbr>tmp&quot; already contains=
 a SDK for this architecture.<br>If you continue, existing files will be ov=
erwritten! Proceed[y/N]? y<br>Extracting SDK...........................<wbr=
>..............................<wbr>..............................<wbr>....=
..........................<wbr>.......done<br>Setting it up...SDK could not=
 be set up. Relocate script unable to find ld-linux.so. Abort!<br><div><br>=
</div><div>Presently,I am facing this issue.How can I rectify it?<div class=
=3D"gmail-yj6qo gmail-ajU"><div id=3D"gmail-:rc" class=3D"gmail-ajR" tabind=
ex=3D"0"><img class=3D"gmail-ajT" src=3D"https://ssl.gstatic.com/ui/v1/icon=
s/mail/images/cleardot.gif"></div></div></div><div><br></div><div><br></div=
><div>Here is the local.conf file</div><div><br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div>CONF_VERSION =3D &quot;1&quot;<br>DESCRIP=
TION =3D &quot;Yocto-image&quot;<br># Local configuration for meta-rpi imag=
es<br># Yocto Project 2.4 Poky distribution [rocko] branch<br># This is a s=
ysvinit system<br><br>LICENSE =3D &quot;CLOSED&quot;<br><br>BBMASK =3D &quo=
t;meta-raspberrypi/recipes-kernel/linux-firmware&quot;<br><br>PACKAGE_FEED_=
URIS =3D &quot; <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-r=
aspberrypi/tree/recipes-devtools/wiringPi/wiringpi_git.bb?h=3Dmaster">http:=
//git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-devtools=
/wiringPi/wiringpi_git.bb?h=3Dmaster</a> <a href=3D"https://git.yoctoprojec=
t.org/cgit.cgi/poky/plain/meta/recipes-devtools/i2c-tools/i2c-tools_4.0.bb"=
>https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-devtools/i2c=
-tools/i2c-tools_4.0.bb</a> <a href=3D"https://github.com/eMakerStudio/meta=
-rpi/tree/morty/recipes-devtools/pi-blaster/pi-blaster_git.bbappend">https:=
//github.com/eMakerStudio/meta-rpi/tree/morty/recipes-devtools/pi-blaster/p=
i-blaster_git.bbappend</a> <a href=3D"https://git.pengutronix.de/cgit/imx/s=
dma-firmware">https://git.pengutronix.de/cgit/imx/sdma-firmware</a>&quot;<b=
r><br>DISTRO_FEATURES =3D &quot;ext2 pam opengl usbhost ${DISTRO_FEATURES_L=
IBC}=C2=A0 x11 wayland&quot;<br><br>DISTRO_FEATURES_BACKFILL_CONSIDERED +=
=3D &quot;pulseaudio&quot;<br>DISTRO_FEATURES_append +=3D &quot;virtualizat=
ion&quot;<br><br>IMAGE_INSTALL =3D &quot;packagegroup-core-boot \<br>=C2=A0=
=C2=A0=C2=A0 packagegroup-core-x11 \<br>=C2=A0=C2=A0=C2=A0 packagegroup-lxd=
e-base \<br>=C2=A0=C2=A0=C2=A0 kernel-modules \<br>&quot;<br>=C2=A0 <br>PRE=
FERRED_PROVIDER_jpeg =3D &quot;libjpeg-turbo&quot;<br>PREFERRED_PROVIDER_jp=
eg-native =3D &quot;libjpeg-turbo-native&quot;<br><br>PREFERRED_PROVIDER_ud=
ev =3D &quot;eudev&quot;<br>VIRTUAL-RUNTIME_init_manager =3D &quot;sysvinit=
&quot;<br><br>MACHINE_FEATURES_remove =3D &quot;apm&quot;<br><br>IMAGE_FSTY=
PES =3D &quot;tar.xz ext3 rpi-sdimg &quot;<br><br># override the meta-raspb=
errypi default 4.9 kernel<br>PREFERRED_VERSION_linux-raspberrypi =3D &quot;=
4.14%&quot;<br><br># Choose the board you are building for<br>#MACHINE=3D&q=
uot;raspberrypi&quot;<br>#MACHINE=3D&quot;raspberrypi0&quot;<br>#MACHINE=3D=
&quot;raspberrypi0-wifi&quot;<br>#MACHINE=3D&quot;raspberrypi2&quot;<br>MAC=
HINE =3D &quot;raspberrypi3&quot;<br>#MACHINE=3D&quot;raspberrypi-cm&quot;<=
br>#MACHINE=3D&quot;raspberrypi-cm3&quot;<br><br># Choices are Image or zIm=
age if NOT using u-boot (no u-boot is the default)<br># Choices are uImage =
or zImage if using u-boot, though if you choose zImage<br># with u-boot you=
 will also have to change the boot script boot command<br>KERNEL_IMAGETYPE =
=3D &quot;zImage&quot;<br><br>ENABLE_UART=3D&quot;1&quot;<br><br>#DL_DIR =
=3D &quot;${HOME}/oe-sources&quot;<br><br>#SSTATE_DIR =3D &quot;/oe4/rpi/ss=
tate-cache&quot;<br><br>#TMPDIR =3D &quot;/oe4/rpi/tmp-rocko&quot;<br><br>D=
ISTRO =3D &quot;poky&quot;<br>PACKAGE_CLASSES ?=3D &quot;package_rpm packag=
e_deb package_ipk &quot;<br><br># i686 or x86_64<br>SDKMACHINE =3D &quot;x8=
6_64&quot;<br><br>#EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks&quot;<br><br=
><br><br>PACKAGECONFIG_append_pn-qemu-native =3D &quot; sdl&quot;<br>PACKAG=
ECONFIG_append_pn-nativesdk-qemu =3D &quot; sdl&quot;<br>USER_CLASSES =3D &=
quot;image-mklibs image-prelink&quot;<br><br>PATCHRESOLVE =3D &quot;noop&qu=
ot;<br><br>RM_OLD_IMAGE =3D &quot;1&quot;<br><br>INHERIT +=3D &quot;rm_work=
&quot;<br><br><br><br><br>PACKAGE_CLASSES ?=3D &quot;package_rpm package_de=
b package_ipk &quot;<br><br><br>EXTRA_IMAGE_FEATURES +=3D &quot;tools-sdk t=
ools-debug eclipse-debug tools-profile debug-tweaks &quot;<br><br>EXTRA_IMA=
GE_FEATURES +=3D &quot; package-management dev-pkgs &quot;<br><br>USER_CLAS=
SES ?=3D &quot;buildstats image-mklibs&quot;<br><br>=C2=A0<br><br><br><br><=
br><br><br><br><br>GPU_MEM =3D &quot;16&quot;<br><br><br>TOOLCHAIN_HOST_TAS=
K +=3D &quot;nativesdk-cmake-dev&quot;<br>TOOLCHAIN_TARGET_TASK_append =3D =
&quot; wiringpi-dev&quot;<br><br><br>IMAGE_INSTALL_APPEND =3D &quot;git apt=
 dpkg opkg rpm sudo wiringpi wiringpi-dev cmake connman connman-client tzda=
ta i2c-tools i2c-tools-dev=C2=A0 pi-blaster pi-blaster-dev&quot;<br>CORE_IM=
AGE_EXTRA_INSTALL=3D&quot; rpm opkg dpkg git sudo wiringpi apt wiringpi-dev=
 cmake tzdata localedef i2c-tools i2c-tools-dev connman connman-client=C2=
=A0 pi-blaster pi-blaster-dev&quot;<br>IMAGE_INSTALL_append +=3D &quot;=C2=
=A0 bluez5 i2c-tools python-smbus bridge-utils hostapd dhcp-server iptables=
 wpa-supplicant apache2=C2=A0 glibc-utils&quot;<br>ENABLE_UART=3D&quot;1&qu=
ot;<br>ENABLE_SPI_BUS=3D &quot;1&quot;<br>ENABLE_I2C =3D &quot;1&quot;<br>E=
NABLE_PCF857x_I2C_GPIO_expanders =3D &quot;1&quot;<br></div></blockquote></=
div>

--0000000000007b547805708d4d87--
