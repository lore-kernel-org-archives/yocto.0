Return-Path: <akash12bhardwaj@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AC68E01081; Thu, 12 Jul 2018 21:08:44 -0700 (PDT)
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
	*      [209.85.218.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C5D7E0106F
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 21:08:43 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id d189-v6so59829509oib.6
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 21:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=zGmWxhoL1YIkRZc7G2EX+xRSL3Lb0k1GvY/WM/DoPSs=;
	b=WWHosl0Ki1YBvFviEg9QNp7kclKd+iwtZltiHejSbQ6ItzkrduHPK0ifn6czT7VenD
	Ijdk3H63kzex9arTvdk65QnW+hZWqSv/qEeDJLxek0rnG2J/aeSfJhebumQkR2SSZv64
	uvtIE/2HgXQ+L5qSuu40dSPfzkD1bawDTcg64IAqiIspRt0W8Icz6DTfbIdJf6FEIaY+
	6b/xsXgRosEESWEGHPYfr8qHI3xjwKlrIlo0+P4VUqZ3fpX4bDHG+a/ktmOmOtikzvLb
	dgkNzkW5CS9elN2kjJNN7ob2H1zrifporLFCoCoGGLQRaN9Vy18Vvw3OmyppONjJ3eTK
	7XPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=zGmWxhoL1YIkRZc7G2EX+xRSL3Lb0k1GvY/WM/DoPSs=;
	b=LCyJKROQ6aVHx27o/UMIIoDOPYQ9/hLc9yQoq2wfK9/go0G7VrQD7y5N5pvN2+msXy
	OQtozZESmDk1TMW/LH8aE5YlzWA4ru1lsDbOP2iEOMYx33MJRAzetcioSTO8l4VdPqHi
	wgLzLn93aNcNdXmO2laRJVA4K9MHfo4+LyLF0yQpJNPEQlEL0YcfhM7dk/IHwRnfD5/z
	igKR+Sdj6C11V+nu/crJGUHqSUyzvZTK/p7YuLY0vAYFtBX7zhO4pL9DgGrYW26EBJWL
	yOQHbldgcYnDFukain8jvq/GMK1Ku6ULzHAra/NpxRwhDCvcIBWHAdEWY6CpIHUl8vsK
	lHCA==
X-Gm-Message-State: AOUpUlEtBte3ZGMz0kvExTw5ZifLpCXuwQ7V+5WJXYLnGw/WqbsrBqpi
	UcLPeyKmoqf27JfksZHJOfW5MpEhh+jrC+qsJxu7Fg==
X-Google-Smtp-Source: AAOMgpd9GiqHmoH/rG4hWh06NOh6yG3hBVYzAIlulFBmatzv9uPxMKvOKw1+V3jaZ1XDtaA4pFFFcXemo4og3hg4rhQ=
X-Received: by 2002:aca:b954:: with SMTP id
	j81-v6mr5651932oif.356.1531454922804; 
	Thu, 12 Jul 2018 21:08:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:ed6:0:0:0:0:0 with HTTP;
	Thu, 12 Jul 2018 21:08:42 -0700 (PDT)
From: AKASH BHARDWAJ <akash12bhardwaj@gmail.com>
Date: Fri, 13 Jul 2018 09:38:42 +0530
Message-ID: <CALYZMn=p_AazMF8GQj3vYgrYHiF8Rn1L8TgT9w-FJbRCuBR59Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Issues in getting wiringpi and openvpn through Yocto built image
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
X-List-Received-Date: Fri, 13 Jul 2018 04:08:44 -0000
Content-Type: multipart/alternative; boundary="000000000000a9d4a20570d9a2d6"

--000000000000a9d4a20570d9a2d6
Content-Type: text/plain; charset="UTF-8"

I was actually trying to install wiringpi,wiringpi-dev and openvpn on Yocto.


I used the  command

IMAGE_INSTALL_APPEND = " git apt dpkg opkg rpm sudo wiringpi wiringpi-dev
> cmake connman connman-client tzdata i2c-tools i2c-tools-dev glibc-utils rpm
> dhcp-server bluez5 python-smbus bridge-utils hostapd apache2 openvpn"
> IMAGE_INSTALL_APPEND = " nano openvpn networkmanager iptables"
>

The openvpn file is present in  the /tmp/deploy/rpm directory .But when I
transferred the Image to sd card for Raspberrypi,then i find out that
wiringpi and openvpn file are not present anywhere on the SD card.
So,how can I resolve this issue?


The contents of local.conf are







DISTRO ?= "poky"
> DISTRO_FEATURES_append += " virtualization"
>
>
>
> PACKAGE_CLASSES ?= "package_rpm"
>
>
>
>
> EXTRA_IMAGE_FEATURES ?= "debug-tweaks dbg-pkgs dev-pkgs tools-sdk
> tools-debug eclipse-debug tools-profile"
>
>
>
> USER_CLASSES ?= "buildstats image-mklibs image-prelink"
>
>
>
> PATCHRESOLVE = "noop"
>
>
> BB_DISKMON_DIRS ??= "\
>     STOPTASKS,${TMPDIR},1G,100K \
>     STOPTASKS,${DL_DIR},1G,100K \
>     STOPTASKS,${SSTATE_DIR},1G,100K \
>     STOPTASKS,/tmp,100M,100K \
>     ABORT,${TMPDIR},100M,1K \
>     ABORT,${DL_DIR},100M,1K \
>     ABORT,${SSTATE_DIR},100M,1K \
>     ABORT,/tmp,10M,1K"
>
>
>
>
>
> PACKAGECONFIG_append_pn-qemu-native = " sdl"
> PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
> #ASSUME_PROVIDED += "libsdl-native"
>
>
> CONF_VERSION = "1"
> MACHINE = "raspberrypi3"
> PREFERRED_VERSION_linux-raspberrypi = "4.%"
> DISTRO_FEATURES_remove = "x11 wayland"
> DISTRO_FEATURES_append = " systemd"
> VIRTUAL-RUNTIME_init_manager = "systemd"
> IMAGE_INSTALL_APPEND = " git apt dpkg opkg rpm sudo wiringpi wiringpi-dev
> cmake connman connman-client tzdata i2c-tools i2c-tools-dev glibc-utils rpm
> dhcp-server bluez5 python-smbus bridge-utils hostapd apache2 openvpn"
> IMAGE_INSTALL_APPEND = " nano openvpn networkmanager iptables"
> ENABLE_UART="1"
> ENABLE_SPI_BUS= "1"
> ENABLE_I2C = "1"
> ENABLE_PCF857x_I2C_GPIO_expanders = "1"
>

--000000000000a9d4a20570d9a2d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I was actually trying to install wiringpi,wiringpi-de=
v and openvpn on Yocto.</div><div><br></div><div><br></div><div>I used the=
=C2=A0 command</div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div>IMAGE_INSTALL_APPEND =3D &quot; git apt dpkg opkg rpm sudo =
wiringpi=20
wiringpi-dev cmake connman connman-client tzdata i2c-tools i2c-tools-dev
 glibc-utils rpm dhcp-server bluez5 python-smbus bridge-utils hostapd=20
apache2 openvpn&quot;<br>IMAGE_INSTALL_APPEND =3D &quot; nano openvpn netwo=
rkmanager iptables&quot;</div></blockquote><div><br></div><div>The openvpn =
file is present in=C2=A0 the /tmp/deploy/rpm directory .But when I transfer=
red the Image to sd card for Raspberrypi,then i find out that wiringpi and =
openvpn file are not present anywhere on the SD card.</div><div>So,how can =
I resolve this issue?<br></div><div><br></div><div><br></div><div>The conte=
nts of local.conf are</div><div><br></div><div><br><br><br><br><br><br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">DISTRO ?=3D &quot;poky&quot;<=
br>DISTRO_FEATURES_append +=3D &quot; virtualization&quot;<br><br><br><br>P=
ACKAGE_CLASSES ?=3D &quot;package_rpm&quot;<br><br><br><br><br>EXTRA_IMAGE_=
FEATURES ?=3D &quot;debug-tweaks dbg-pkgs dev-pkgs tools-sdk tools-debug ec=
lipse-debug tools-profile&quot;<br><br><br><br>USER_CLASSES ?=3D &quot;buil=
dstats image-mklibs image-prelink&quot;<br><br><br><br>PATCHRESOLVE =3D &qu=
ot;noop&quot;<br><br><br>BB_DISKMON_DIRS ??=3D &quot;\<br>=C2=A0=C2=A0=C2=
=A0 STOPTASKS,${TMPDIR},1G,100K \<br>=C2=A0=C2=A0=C2=A0 STOPTASKS,${DL_DIR}=
,1G,100K \<br>=C2=A0=C2=A0=C2=A0 STOPTASKS,${SSTATE_DIR},1G,100K \<br>=C2=
=A0=C2=A0=C2=A0 STOPTASKS,/tmp,100M,100K \<br>=C2=A0=C2=A0=C2=A0 ABORT,${TM=
PDIR},100M,1K \<br>=C2=A0=C2=A0=C2=A0 ABORT,${DL_DIR},100M,1K \<br>=C2=A0=
=C2=A0=C2=A0 ABORT,${SSTATE_DIR},100M,1K \<br>=C2=A0=C2=A0=C2=A0 ABORT,/tmp=
,10M,1K&quot;<br><br><br><br><br><br>PACKAGECONFIG_append_pn-qemu-native =
=3D &quot; sdl&quot;<br>PACKAGECONFIG_append_pn-nativesdk-qemu =3D &quot; s=
dl&quot;<br>#ASSUME_PROVIDED +=3D &quot;libsdl-native&quot;<br><br><br>CONF=
_VERSION =3D &quot;1&quot;<br>MACHINE =3D &quot;raspberrypi3&quot;<br>PREFE=
RRED_VERSION_linux-raspberrypi =3D &quot;4.%&quot;<br>DISTRO_FEATURES_remov=
e =3D &quot;x11 wayland&quot;<br>DISTRO_FEATURES_append =3D &quot; systemd&=
quot;<br>VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;<br>IMAGE_INST=
ALL_APPEND =3D &quot; git apt dpkg opkg rpm sudo wiringpi wiringpi-dev cmak=
e connman connman-client tzdata i2c-tools i2c-tools-dev glibc-utils rpm dhc=
p-server bluez5 python-smbus bridge-utils hostapd apache2 openvpn&quot;<br>=
IMAGE_INSTALL_APPEND =3D &quot; nano openvpn networkmanager iptables&quot;<=
br>ENABLE_UART=3D&quot;1&quot;<br>ENABLE_SPI_BUS=3D &quot;1&quot;<br>ENABLE=
_I2C =3D &quot;1&quot;<br>ENABLE_PCF857x_I2C_GPIO_expanders =3D &quot;1&quo=
t; <br></blockquote></div></div>

--000000000000a9d4a20570d9a2d6--
