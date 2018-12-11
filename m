Return-Path: <akash12bhardwaj@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69852E00C1E; Mon, 10 Dec 2018 18:27:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akash12bhardwaj[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06394E00BB7
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2018 18:27:47 -0800 (PST)
Received: by mail-oi1-f181.google.com with SMTP id x202so10769243oif.13
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2018 18:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=yoacTsTAq8VYBlB0vMsV+81I4Z/BqKVBWzYHid3DwRs=;
	b=hAAh5XlZ7lB0fSWjZIS3WJhXtX2IV/pwcLdYkn78TJaSYaez3wDC51vMIHtRVyPjCe
	ad7m26vrdw2tg1vdueWEwKtW4Ud0RCeULUulXla4O8kQedYJuBN11GXXWIFhYkySxKb2
	8GJBrTVBR5F8e1fThcFR7aHFNTxbrcMjZfcQDS4p+EB3LmiOkS2XUTLjExkBwKabL/M9
	l2A7YiLIbbCNAzYr59Envpt2zBuTnH1+Jrh8qBYqmegd7umTA/Tni9MaG3rdTMbrl9Lp
	hWvG4VhdFaQ+ukSg8dqI5PbEn5qHe1y7Y0Kc9i03mYt1Gxlb9N2RdkU6SLJGg4t9mCsu
	zDJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yoacTsTAq8VYBlB0vMsV+81I4Z/BqKVBWzYHid3DwRs=;
	b=bsJs2nBd3dSYKRwd5PjWJf1Qdg10t6pbkB0knelK2p0AGC7xfQe4BlMhMVXwwbK3jj
	+AF8i35Ul7fW3YwNp7bCRObidhlcyRvy2ojwxZon4pjpIwidbmr882y/yJO6y/ijmCPp
	tGwvlxlb1Z8JeHVFucL/x8+A8cfuVGa7YraAhHkPOqbUxsWc25s9isOebV45TgzCkCOa
	UJKlbXEdQ/KnjGGULuyC1Yjrl5RY4LXrQI0N5edDm5JqgzCh2X89UwjJkdjmVkGXhUUO
	GXYZ04ipEjHTFa3OF4MhUP7j3FLBV4JFa7/NOQWO+KD4jYhR7wK1/NJnCVzXWBEaCz4W
	zvSw==
X-Gm-Message-State: AA+aEWb+NTGwMrepcMLQOlMXAMTASsL/iAKICDMiO2kDzn5qCRniqYFM
	bcWMMjfQQax/m/Znl5dhWYGQ+so2x17YHkRlCo4KsY5q
X-Google-Smtp-Source: AFSGD/UE/UjW4MqZnLIexIimuEr/hP9B+HYZTqqyL5uA2Pe81Dom2l+ofWK2C5AtRpxB0FIFG/SWuRDe4+LdLzVhIgE=
X-Received: by 2002:aca:b254:: with SMTP id b81mr258593oif.257.1544495266288; 
	Mon, 10 Dec 2018 18:27:46 -0800 (PST)
MIME-Version: 1.0
From: AKASH BHARDWAJ <akash12bhardwaj@gmail.com>
Date: Tue, 11 Dec 2018 07:57:35 +0530
Message-ID: <CALYZMn=_AhWPbX1Hx=7o=mhoGEU==jnCBJhiQ0v5Y6gL4f0H9A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Raspberry pi with Yocto os sd card is not working with Raspbian os sd card
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
X-List-Received-Date: Tue, 11 Dec 2018 02:27:48 -0000
Content-Type: multipart/alternative; boundary="000000000000b45736057cb5d3a6"

--000000000000b45736057cb5d3a6
Content-Type: text/plain; charset="UTF-8"

Few months ago,I built an custom image for Raspberrypi using Yocto
Project,flashed it in a sd card and was able to boot
raspberrypi.Presently,I am trying to use  a different sd card with raspbian
os in same Raspberrypi.But it is not able to boot Raspberrypi.How can I
rectify this problem?This is my code which I used few years back to
generate yocto image.










PACKAGE_CLASSES ?= "package_rpm package_deb"
>
>
> EXTRA_IMAGE_FEATURES ?= "debug-tweaks dbg-pkgs dev-pkgs tools-sdk
> tools-debug eclipse-debug "
>
>
> USER_CLASSES ?= "buildstats image-mklibs image-prelink"
>
>
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
> CONF_VERSION = "1"
> MACHINE = "raspberrypi3"
> PREFERRED_VERSION_linux-raspberrypi = "4.%"
> DISTRO_FEATURES_remove = "x11 wayland"
> DISTRO_FEATURES_append = " systemd"
> VIRTUAL-RUNTIME_init_manager = "systemd"
> IMAGE_INSTALL_append = " git apt dpkg opkg rpm sudo wiringpi wiringpi-dev
> connman connman-client tzdata i2c-tools i2c-tools-dev glibc-utils rpm
> dhcp-server bluez5 python-smbus bridge-utils hostapd apache2 openvpn
> iptables nano"
> IMAGE_INSTALL += "wiringpi"
> ENABLE_UART="1"
> ENABLE_SPI_BUS= "1"
> ENABLE_I2C = "1"
>

--000000000000b45736057cb5d3a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Few months ago,I built an custom ima=
ge for Raspberrypi using Yocto Project,flashed it in a sd card and was able=
 to boot raspberrypi.Presently,I am trying to use=C2=A0 a different sd card=
 with raspbian os in same Raspberrypi.But it is not=C2=A0able to boot Raspb=
errypi.How can I rectify this problem?This is my code which I used few year=
s back to generate yocto image.</div><div><br><br><br><br><br><br><br><br><=
br><blockquote><br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">PACKAG=
E_CLASSES ?=3D &quot;package_rpm package_deb&quot;<br><br><br>EXTRA_IMAGE_F=
EATURES ?=3D &quot;debug-tweaks dbg-pkgs dev-pkgs tools-sdk tools-debug ecl=
ipse-debug &quot;<br><br><br>USER_CLASSES ?=3D &quot;buildstats image-mklib=
s image-prelink&quot;<br><br><br><br><br>BB_DISKMON_DIRS ??=3D &quot;\<br>=
=C2=A0=C2=A0=C2=A0 STOPTASKS,${TMPDIR},1G,100K \<br>=C2=A0=C2=A0=C2=A0 STOP=
TASKS,${DL_DIR},1G,100K \<br>=C2=A0=C2=A0=C2=A0 STOPTASKS,${SSTATE_DIR},1G,=
100K \<br>=C2=A0=C2=A0=C2=A0 STOPTASKS,/tmp,100M,100K \<br>=C2=A0=C2=A0=C2=
=A0 ABORT,${TMPDIR},100M,1K \<br>=C2=A0=C2=A0=C2=A0 ABORT,${DL_DIR},100M,1K=
 \<br>=C2=A0=C2=A0=C2=A0 ABORT,${SSTATE_DIR},100M,1K \<br>=C2=A0=C2=A0=C2=
=A0 ABORT,/tmp,10M,1K&quot;<br><br><br><br><br><br>CONF_VERSION =3D &quot;1=
&quot;<br>MACHINE =3D &quot;raspberrypi3&quot;<br>PREFERRED_VERSION_linux-r=
aspberrypi =3D &quot;4.%&quot;<br>DISTRO_FEATURES_remove =3D &quot;x11 wayl=
and&quot;<br>DISTRO_FEATURES_append =3D &quot; systemd&quot;<br>VIRTUAL-RUN=
TIME_init_manager =3D &quot;systemd&quot;<br>IMAGE_INSTALL_append =3D &quot=
; git apt dpkg opkg rpm sudo wiringpi wiringpi-dev connman connman-client t=
zdata i2c-tools i2c-tools-dev glibc-utils rpm dhcp-server bluez5 python-smb=
us bridge-utils hostapd apache2 openvpn iptables nano&quot;<br>IMAGE_INSTAL=
L +=3D &quot;wiringpi&quot;<br>ENABLE_UART=3D&quot;1&quot;<br>ENABLE_SPI_BU=
S=3D &quot;1&quot;<br>ENABLE_I2C =3D &quot;1&quot; <br></blockquote></block=
quote></div></div></div>

--000000000000b45736057cb5d3a6--
