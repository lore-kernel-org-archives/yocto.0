Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4A32E00AB6; Fri,  4 Oct 2019 17:03:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F41E4E0097C
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2019 17:03:40 -0700 (PDT)
Received: by mail-qt1-f174.google.com with SMTP id c21so10919579qtj.12
	for <yocto@yoctoproject.org>; Fri, 04 Oct 2019 17:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=gpEmccF7cv93M40Rq9wajlIvKoyTiL66LEqvuiKe0Nk=;
	b=bgbuhUvoS7luzsQgYm1tWlDY02tC5fwZ4JOQUhvUWlOxG/SxCNxx8n6W5lGJqDramJ
	o+3fM3zezQMjtzZaUVQqbRevOehc8/j1h6iY5DKLdY6hzEjOS00YmvL2e5UfacjbvwLP
	7Vcc5aUEpJj6NkJfO8hB0llWgAcdVXMfLKU4yKYs68YsFy4btiMkKxFv8h+oNUW1uW7z
	M/Gm4igdyn4u+/n/2TPAcq92HEEFHJe1WYgg5MUSg2p6EJ0Cyb0REXX1z/xdmXIsZsIp
	DJdDeRTOMVns6WiUFIGweV/8IvxHxa0LOMTjGhQYbfUgoqYuOOJnburBOixqTiKpwXfy
	0+og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gpEmccF7cv93M40Rq9wajlIvKoyTiL66LEqvuiKe0Nk=;
	b=txLFcQtF9Gv5ZnBrfqWIE64VfxBzNOIV49bEbf1lFiV3WspDvIOrTPTS49a4ZUC2zx
	hKkegsgq+mhPPS63IVBw/yMOfVf7Z32wSouT4nKitcwIvLgoQNREj9MN+ifsoRnWiVMZ
	7OxGlorp7lB84rOMs3lid0ett/4Rb9Z7So1uTBE4wgFEWPeFGFSqSUH+UADtJtv0YOFf
	Sex9MRx5rO5EKQQ4yiw8uR7yGR2nc0fdAAJXOsenkGHESxRhR6eSzcu+407Hv8cX5THd
	16GG0gtM4e7hl6Iu0ecYcYqZxLhgLGRA1MxVWxfSc0np5OqszJxeieH2ggXQYg6VUbb6
	4EaQ==
X-Gm-Message-State: APjAAAW09z1DLiMlr6XQ4qvp538p1ewL7HrrC4mtTHLMn243dXM1wvEZ
	aN39MZe52opaGLraReurWXM0R6Clr8NIWcgxN37MmQrIHPM=
X-Google-Smtp-Source: APXvYqzbYahKN6XxKFJkpJdZWvgSLh3xxru1T52a61Z9JldjfJYmpaMDdC9oWkQGfkO0mhywEJWElduK5pCOQhtITSQ=
X-Received: by 2002:ac8:1302:: with SMTP id e2mr18578123qtj.326.1570233819804; 
	Fri, 04 Oct 2019 17:03:39 -0700 (PDT)
MIME-Version: 1.0
From: Davis Roman <davis.roman84@gmail.com>
Date: Fri, 4 Oct 2019 20:03:28 -0400
Message-ID: <CACfi_Z1EyksY4NrV8iRnRoyMS00qDfFgWdshOwhCd1ohqouL=A@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: using BBMULTICONFIG to create a 32-bit rootfs, kernel, u-boot that also includes a 64-bit kernel, u-boot for NXP i.mx6/i.mx8
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
X-List-Received-Date: Sat, 05 Oct 2019 00:03:41 -0000
Content-Type: multipart/alternative; boundary="0000000000000b371805941e8de2"

--0000000000000b371805941e8de2
Content-Type: text/plain; charset="UTF-8"

Hello,

We're working on a Linux distro for two systems where one is based on
NXP i.mx6(32-bit,armv7) and the other i.mx8(64-bit,armv8).

I have two machine types defined in Yocto so individually I can build
either one however our goal is to create a single distro that can run on
both processors.

So the idea is to use BBMULTICONFIG(
https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-BBMULTICONFIG
)
to build two separate images,

1) a 32-bit distro for an i.mx6
2) a 64-bit distro for an i.mx8

and then finally, take the 32-bit distro and add the 64-bit kernel+modules
and u-boot.

---------------------------------------
|--------------------------------------|
||           32-bit rootfs            ||
|--------------------------------------|
|-----------------   ----------------- |
|| 32-bit kernel |   |  64-bit kernel ||
|-----------------   ----------------- |
|-----------------   ----------------- |
|| 32-bit u-boot |   |  64-bit u-boot ||
|-----------------   ----------------- |
---------------------------------------
   i.mx6solo             i.mx8m mini

We've already tried our existing 32-bit rootfs + 64-bit kernel/u-boot on
the i.mx8 and the system runs.
So in theory, it should just be a matter of getting yocto to assemble all
the pieces together.

I don't have much experience with BBMULTICONFIG so any ideas or comments on
how to proceed would be appreciated.

Thank you,

Davis

--0000000000000b371805941e8de2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font face=3D"monospace">Hello,<br><br>We&#39;re working o=
n a Linux=C2=A0distro for two systems where one is based on<br>NXP i.mx6(32=
-bit,armv7) and the other i.mx8(64-bit,armv8).</font><div><font face=3D"mon=
ospace"><br></font></div><div><font face=3D"monospace">I have two machine t=
ypes defined in Yocto so individually I can build</font></div><div><font fa=
ce=3D"monospace">either one however our goal is to create a single distro=
=C2=A0</font><span style=3D"font-family:monospace">that can run on both pro=
cessors.</span></div><div><font face=3D"monospace"><br>So the idea is to us=
e BBMULTICONFIG(</font><a href=3D"https://www.yoctoproject.org/docs/latest/=
ref-manual/ref-manual.html#var-BBMULTICONFIG">https://www.yoctoproject.org/=
docs/latest/ref-manual/ref-manual.html#var-BBMULTICONFIG</a>)<div><font fac=
e=3D"monospace">to build two separate=C2=A0images,<br><br></font></div><div=
><font face=3D"monospace">1) a 32-bit distro for an i.mx6</font></div><div>=
<font face=3D"monospace">2) a 64-bit distro for an i.mx8</font></div><div><=
font face=3D"monospace"><br></font></div><div><font face=3D"monospace">and =
then finally, take the 32-bit distro and add the 64-bit kernel+modules and =
u-boot.<br><br>---------------------------------------<br>|----------------=
----------------------|<br>|| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 32-bit roo=
tfs =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0||<br>|-----------------------=
---------------|<br>|----------------- =C2=A0 ----------------- |<br>|| 32-=
bit kernel | =C2=A0 | =C2=A064-bit kernel ||<br>|----------------- =C2=A0 -=
---------------- |<br>|----------------- =C2=A0 ----------------- |<br>|| 3=
2-bit u-boot | =C2=A0 | =C2=A064-bit u-boot ||<br>|----------------- =C2=A0=
 ----------------- |<br>---------------------------------------<br>=C2=A0 =
=C2=A0i.mx6solo =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 i.mx8m mini<br><b=
r>We&#39;ve already tried our existing 32-bit rootfs=C2=A0+ 64-bit kernel/u=
-boot on the i.mx8 and the system runs.</font></div><div><font face=3D"mono=
space">So in theory,=C2=A0</font><span style=3D"font-family:monospace">it s=
hould just be a matter of getting yocto to assemble all the pieces</span><s=
pan style=3D"font-family:monospace">=C2=A0together.</span></div><div><span =
style=3D"font-family:monospace"><br></span></div><div><span style=3D"font-f=
amily:monospace">I don&#39;t have much experience with BBMULTICONFIG so a</=
span><span style=3D"font-family:monospace">ny ideas or comments on how to p=
roceed would be appreciated.</span></div><div><font face=3D"monospace"><br>=
Thank you,<br><br>Davis</font></div></div></div>

--0000000000000b371805941e8de2--
