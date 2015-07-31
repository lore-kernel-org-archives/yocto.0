Return-Path: <lukas.weiss@janitza.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C206E00B43; Thu, 30 Jul 2015 22:25:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA93CE00B1A
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 22:25:21 -0700 (PDT)
Received: by wibxm9 with SMTP id xm9so17163411wib.1
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 22:25:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=U4W3f2XB9TlJ/bqdgLDAplLYz4Ul3ljj0BJ+VbQzZnA=;
	b=OjY66fXbQaflTZ6hvMqef7mQJ5KlcQkmNdAuqpeJaHkjRyrJgTXJVAMKgcjkpucOYN
	D4IXCq+jvBW87E1vIH0UB3jTDkDsRQAEUH5gms/tBtUDNXUNjiBKvV5BhF2LQQPl4hst
	LeSkIYpCq6zvB4ZuYrlmZhmX67lF5FXhebGCeO1zOMif7iL3YKceErlw+H7YZQQG0cQt
	1zPiwtBG+Yn2h3FtdbNUB70+qfeZ95vys/O8PDBNRtnl9A2Zm/mIrHpSsrCgVuBEdpz9
	FZM/airdC3XWIZpUz1okHBHzpyvcjbMUyLoD2kEZOgj+lBQ3QHljqYk7N+WqNSY+iw5d
	EAXA==
X-Gm-Message-State: ALoCoQlyESSA4M8tbF3QnYadLRrIo5eMuPhftuZupLK7+7tWUu85ih0zguihNSqC6yL3MNgbny5F
MIME-Version: 1.0
X-Received: by 10.180.37.74 with SMTP id w10mr2939000wij.92.1438320321193;
	Thu, 30 Jul 2015 22:25:21 -0700 (PDT)
Received: by 10.27.174.208 with HTTP; Thu, 30 Jul 2015 22:25:21 -0700 (PDT)
Date: Fri, 31 Jul 2015 07:25:21 +0200
Message-ID: <CAM8P1k9OK=6xJydVg=_zeBgjbAC5En4TzaEANqWhjMVs+Sg0kg@mail.gmail.com>
From: Lukas Weiss <lukas.weiss@janitza.de>
To: yocto@yoctoproject.org
Subject: arm-none-eabi toolchain
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
X-List-Received-Date: Fri, 31 Jul 2015 05:25:23 -0000
Content-Type: multipart/alternative; boundary=e89a8f64720fd17f94051c250beb

--e89a8f64720fd17f94051c250beb
Content-Type: text/plain; charset=UTF-8

Hello,

i need a arm-none-eabi toolchain on my yocto host/build system. Ive tried
to use the arm-poky-linux-gnueabi, but it does not support the arm version
+ format i need:

arm-poky-linux-gnueabi-ld: unrecognised emulation mode: thumb
| Supported emulations: armelf_linux_eabi armelfb_linux_eabi

My Linux runs on a ARM9 (armv5e, elf), I need cortex-m3 (armv7m, thumb).
Where do I get that? I do not find any documentation about *additional*
toolchains to generate code like peripheral-firmware in my yocto
environment.

a) How do I get the toolchain in by yocto host?
b) How to i tell the bitbake-tool to use that toolchain on a certain
receipe (PACKAGE_ARCH, TARGET_SYS, ... )?

Do you have any hints?

Regards,
Lukas

--e89a8f64720fd17f94051c250beb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello, <br><br></div>i need a arm-none-eabi=
 toolchain on my yocto host/build system. Ive tried to use the arm-poky-lin=
ux-gnueabi, but it does not support the arm version + format i need:<br><br=
><span style=3D"font-family:monospace,monospace">arm-poky-linux-gnueabi-ld:=
 unrecognised emulation mode: thumb<br>| Supported emulations: armelf_linux=
_eabi armelfb_linux_eabi</span><br><br>My Linux runs on a ARM9 (armv5e, elf=
), I need cortex-m3 (armv7m, thumb).<br></div>Where do I get that? I do not=
 find any documentation about <i>additional</i> toolchains to generate code=
 like peripheral-firmware in my yocto environment.<br><br></div><div>a) How=
 do I get the toolchain in by yocto host?<br></div><div>b) How to i tell th=
e bitbake-tool to use that toolchain on a certain receipe (PACKAGE_ARCH, TA=
RGET_SYS, ... )?<br></div><div><br></div>Do you have any hints?<br clear=3D=
"all"><div><div><div><div><br></div><div>Regards,<br></div><div>Lukas<br></=
div></div></div></div></div>

--e89a8f64720fd17f94051c250beb--
