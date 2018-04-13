Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6D5BE00B8F; Fri, 13 Apr 2018 04:18:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2427CE00857
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 04:18:40 -0700 (PDT)
Received: by mail-qk0-f181.google.com with SMTP id g7so8654175qkm.1
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 04:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zOCcFHc/Z4jiYhX5CcHGt+IoFnst7fVOsA+M/NQlBYI=;
	b=pvXxV41a/2PQYZKWR4kCDtTfzyQgcf0iueHCAWEw29QfDbvnTOvY4ASCQ2S30il7L6
	yvPuAS/Rg4wUnTKugtNZcA2aQAbz/4sisoU+6LWRG2cypRligAMd0ohI04oSvXSWffgE
	bzncrR4L61oewNyYkX8HyzbjbADqd1STGvHG56bfiC4Td3hPFDfEGJqaK+S5Yc2iKj5o
	nXw7Kvp2QHJrTlD54afXGiK4f38oYCeeHgNMQSjR48vIMOxceLFwXIEFW0H1Btk80gII
	8frnJU8K9m5t+/THaF3QDsvX5H7SnteiNE/UgrIKqlxOox9McKS7/IV9P92asa2LcOtU
	sWyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zOCcFHc/Z4jiYhX5CcHGt+IoFnst7fVOsA+M/NQlBYI=;
	b=g4/ErkowZslU7zxyeiFhljttXl8drDzeTNPwQQozLQekaoRwWwnZI17qOLjrMG3cky
	KLGypmkGelSRD9X6GQ9QoQOZNSp5X4QWyMprlvkX3Fvkuc+OujWPC79ZBujnpOuXy0DV
	1zvHmpmDo73GKl7QF4ir8oGu5WGq8MxibfC0+qHHESxJohqdkZfQGdAdMqveAgrPIP6/
	yMp018ElgLuOra3Y5JW7CGDKrQjZmNfP9G76TperosmHcAibi4HRyCbSBLvW4+G7b2fE
	MZfYQ6F6/UBhHMxtPfJ3IDQjsucLa3EhnO/ZTOwrU0O0R51WIa8z+AgLsJd44WvtzFPL
	wOAw==
X-Gm-Message-State: ALQs6tCcNfsApEy60/vOhjUJNfQIgrdxb73iYtLWid9Rh9/hxHSTBgPY
	ctua00V+PfoyWQyx5VAHABcacVzFnx3wnyUCWGdc6w==
X-Google-Smtp-Source: AIpwx4+jRbd79DxjzhcOdg9zjXnd/HGH51gDKC052PRni+A+i39xrr7VgsMLw0Y5Mfj+mcrDxDtRwDbFp5vNmgv2QQM=
X-Received: by 10.55.139.197 with SMTP id n188mr3953063qkd.212.1523618319717; 
	Fri, 13 Apr 2018 04:18:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.247.141 with HTTP; Fri, 13 Apr 2018 04:18:39 -0700 (PDT)
In-Reply-To: <53349f0b-7dcf-78d3-2410-fcca9d55ab5a@faresoftware.it>
References: <229102f0-f056-b246-a5ff-7f1f1653b8df@faresoftware.it>
	<CAGAf8LyY_BSgGo6sGQME8_0hevJ9f2CNKjFPFxo1UZL1YQL-1g@mail.gmail.com>
	<53349f0b-7dcf-78d3-2410-fcca9d55ab5a@faresoftware.it>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 13 Apr 2018 13:18:39 +0200
Message-ID: <CAGAf8LxrgiJMa=qidVoUfCwJ6jrHyekE7nUQk1hxgA4y6Zrrqw@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Which recipe produce that file?
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
X-List-Received-Date: Fri, 13 Apr 2018 11:18:43 -0000
Content-Type: multipart/alternative; boundary="001a114f84d0b858700569b908f6"

--001a114f84d0b858700569b908f6
Content-Type: text/plain; charset="UTF-8"

Toradex Qt5 complete set of layers for Colibri iMX6board (I did it in
09/2017 and implated it on Toradex development board):

This version is meta-toolchain-qt5 + angstrom-lxde-image (Qt5 + LXDE DT
with X11 server):

[user@localhost Qt5-plus-x11]$ cd oe-core
[user@localhost oe-core]$ ls -al
total 40
drwxr-----.  6 user user       4096 Oct 12  2017 .
drwxr-----.  3 user user       4096 Sep  4  2017 ..
drwxr-----.  8 user user       4096 Oct 12  2017 build
drwxr-----.  3 user vboxusers  4096 Oct 12  2017 deploy
-rwxr-----.  1 user vboxusers   674 Sep  4  2017 export
drwxr-----. 19 user vboxusers  4096 Sep  5  2017 layers
-rwxr-----.  1 user vboxusers 11923 Sep  4  2017 local.conf
drwxr-----.  7 user vboxusers  4096 Sep  4  2017 .repo
[user@localhost oe-core]$ cd layers
[user@localhost layers]$ ls -al
total 76
drwxr-----. 19 user vboxusers 4096 Sep  5  2017 .
drwxr-----.  6 user user      4096 Oct 12  2017 ..
drwxr-----. 13 user vboxusers 4096 Sep  7  2017 meta-angstrom
drwxr-----.  9 user vboxusers 4096 Sep  7  2017 meta-browser
drwxr-----. 21 user vboxusers 4096 Sep  7  2017 meta-freescale
drwxr-----.  7 user vboxusers 4096 Sep  7  2017 meta-freescale-3rdparty
drwxr-----.  6 user vboxusers 4096 Sep  7  2017 meta-freescale-distro
drwxr-----.  9 user vboxusers 4096 Sep  7  2017 meta-jetson-tk1
drwxr-----. 10 user vboxusers 4096 Sep  7  2017 meta-linaro
drwxr-----.  8 user vboxusers 4096 Sep  7  2017 meta-lxde
drwxr-----. 18 user vboxusers 4096 Sep  7  2017 meta-openembedded
drwxr-----.  6 user vboxusers 4096 Sep  7  2017 meta-qt4
drwxr-----. 11 user vboxusers 4096 Sep  7  2017 meta-qt5
drwxr-----. 10 user vboxusers 4096 Sep  7  2017 meta-snappy
drwxr-----. 13 user vboxusers 4096 Oct 12  2017 meta-toradex-bsp-common
drwxr-----. 21 user vboxusers 4096 Oct 12  2017 meta-toradex-demos
drwxr-----. 10 user vboxusers 4096 Sep  7  2017 meta-toradex-nxp
drwxr-----. 15 user vboxusers 4096 Sep  7  2017 meta-toradex-tegra
drwxr-----.  8 user vboxusers 4096 Sep  7  2017 openembedded-core









*[user@localhost layers]$ find . -name
xcb-uti*./openembedded-core/meta/recipes-graphics/xorg-lib/xcb-util_0.4.0.bb
<http://xcb-util_0.4.0.bb>./openembedded-core/meta/recipes-graphics/xorg-lib/xcb-util-renderutil_0.3.9.bb
<http://xcb-util-renderutil_0.3.9.bb>./openembedded-core/meta/recipes-graphics/xorg-lib/xcb-util-keysyms_0.4.0.bb
<http://xcb-util-keysyms_0.4.0.bb>./openembedded-core/meta/recipes-graphics/xorg-lib/xcb-util-wm_0.4.1.bb
<http://xcb-util-wm_0.4.1.bb>./openembedded-core/meta/recipes-graphics/xorg-lib/xcb-util.inc./openembedded-core/meta/recipes-graphics/xorg-lib/xcb-util-image_0.4.0.bb
<http://xcb-util-image_0.4.0.bb>./openembedded-core/meta/recipes-graphics/xorg-lib/xcb-util-image[user@localhost
layers]$ find . -name libxcb-uti*[user@localhost layers]$*

Zoran
_______

On Fri, Apr 13, 2018 at 10:17 AM, Mauro Ziliani <mauro@faresoftware.it>
wrote:

> Ok.
>
> Thanks for your help
>
>
> MZ
>
> Il 13/04/2018 09:49, Zoran Stojsavljevic ha scritto:
>
> Hello Mauro,
>
> Seems that you have somehow included duplicate recipes for xcb-util, in
> form of libxcb-util.
>
> I found the base package xcb-util in my base: meta (Open Embedded) layer:
>
> [user@localhost beaglebone-rocko-18.0.0]$ find . -name xcb-uti*
> *./meta/recipes-graphics/xorg-lib/xcb-util_0.4.0.bb
> <http://xcb-util_0.4.0.bb>*
> ./meta/recipes-graphics/xorg-lib/xcb-util-renderutil_0.3.9.bb
> ./meta/recipes-graphics/xorg-lib/xcb-util-keysyms_0.4.0.bb
> ./meta/recipes-graphics/xorg-lib/xcb-util-wm_0.4.1.bb
> ./meta/recipes-graphics/xorg-lib/xcb-util.inc
> ./meta/recipes-graphics/xorg-lib/xcb-util-image_0.4.0.bb
> ./meta/recipes-graphics/xorg-lib/xcb-util-image
> [user@localhost beaglebone-rocko-18.0.0]
>
> Since you are, after all, using imx6dl, you probably included quite a few
> more layers from Frescale/NXP, with doubled libxcb-util package included as
> well.
>
> Please, search for it there.
>
> Best Regards,
> Zoran
> _______
>
> On Fri, Apr 13, 2018 at 6:19 AM, Mauro Ziliani <mauro@faresoftware.it>
> wrote:
>
>> Hi all.
>>
>> My name's Mauro and I write from Parma, Italy.
>>
>>
>> I'm in trouble because recently I get a collision error.
>>
>> It seems that more than one recipes try to install the same file in the
>> same path in populate_sdk task
>>
>> This is an example
>>
>> --------------
>>
>> ERROR: xcb-util-0.4.0-r0 do_populate_sysroot: The recipe xcb-util is
>> trying to install files into a shared area when those files already exist.
>> Those files and their manifest location are:
>> /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-build
>> /tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.la
>>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-buil
>> d/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.so
>>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-buil
>> d/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.so.1.0.0
>>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-buil
>> d/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.a
>>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-buil
>> d/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.so.1
>>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-buil
>> d/tmp/sysroots/imx6dlsabresd/usr/lib/pkgconfig/xcb-event.pc
>>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-buil
>> d/tmp/sysroots/imx6dlsabresd/usr/lib/pkgconfig/xcb-util.pc
>>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-buil
>> d/tmp/sysroots/imx6dlsabresd/usr/lib/pkgconfig/xcb-aux.pc
>>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-buil
>> d/tmp/sysroots/imx6dlsabresd/usr/lib/pkgconfig/xcb-atom.pc
>>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-buil
>> d/tmp/sysroots/imx6dlsabresd/usr/include/xcb/xcb_event.h
>>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-buil
>> d/tmp/sysroots/imx6dlsabresd/usr/include/xcb/xcb_util.h
>>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-buil
>> d/tmp/sysroots/imx6dlsabresd/usr/include/xcb/xcb_aux.h
>>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-buil
>> d/tmp/sysroots/imx6dlsabresd/usr/include/xcb/xcb_atom.h
>>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-buil
>> d/tmp/sysroots/imx6dlsabresd/sysroot-providers/xcb-util
>> --------------
>>
>>
>> I'm working with a Jethro distro
>>
>> How can I solve this problem?
>>
>>
>> Best regards,
>>
>>   MZ
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>

--001a114f84d0b858700569b908f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Toradex Qt5 complete set of layers for <font size=3D"=
2">Colibri iMX6</font>board (I did it in 09/2017 and implated it on Toradex=
 development board):<br><br></div><div>This version is meta-toolchain-qt5 +=
 angstrom-lxde-image (Qt5 + LXDE DT with X11 server):<br></div><div><br>[us=
er@localhost Qt5-plus-x11]$ cd oe-core<br>[user@localhost oe-core]$ ls -al<=
br>total 40<br>drwxr-----.=C2=A0 6 user user=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 4096 Oct 12=C2=A0 2017 .<br>drwxr-----.=C2=A0 3 user user=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 4096 Sep=C2=A0 4=C2=A0 2017 ..<br>drwxr-----.=
=C2=A0 8 user user=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4096 Oct 12=C2=A0 20=
17 build<br>drwxr-----.=C2=A0 3 user vboxusers=C2=A0 4096 Oct 12=C2=A0 2017=
 deploy<br>-rwxr-----.=C2=A0 1 user vboxusers=C2=A0=C2=A0 674 Sep=C2=A0 4=
=C2=A0 2017 export<br>drwxr-----. 19 user vboxusers=C2=A0 4096 Sep=C2=A0 5=
=C2=A0 2017 layers<br>-rwxr-----.=C2=A0 1 user vboxusers 11923 Sep=C2=A0 4=
=C2=A0 2017 local.conf<br>drwxr-----.=C2=A0 7 user vboxusers=C2=A0 4096 Sep=
=C2=A0 4=C2=A0 2017 .repo<br>[user@localhost oe-core]$ cd layers<br>[user@l=
ocalhost layers]$ ls -al<br>total 76<br>drwxr-----. 19 user vboxusers 4096 =
Sep=C2=A0 5=C2=A0 2017 .<br>drwxr-----.=C2=A0 6 user user=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 4096 Oct 12=C2=A0 2017 ..<br>drwxr-----. 13 user vboxusers 409=
6 Sep=C2=A0 7=C2=A0 2017 meta-angstrom<br>drwxr-----.=C2=A0 9 user vboxuser=
s 4096 Sep=C2=A0 7=C2=A0 2017 meta-browser<br>drwxr-----. 21 user vboxusers=
 4096 Sep=C2=A0 7=C2=A0 2017 meta-freescale<br>drwxr-----.=C2=A0 7 user vbo=
xusers 4096 Sep=C2=A0 7=C2=A0 2017 meta-freescale-3rdparty<br>drwxr-----.=
=C2=A0 6 user vboxusers 4096 Sep=C2=A0 7=C2=A0 2017 meta-freescale-distro<b=
r>drwxr-----.=C2=A0 9 user vboxusers 4096 Sep=C2=A0 7=C2=A0 2017 meta-jetso=
n-tk1<br>drwxr-----. 10 user vboxusers 4096 Sep=C2=A0 7=C2=A0 2017 meta-lin=
aro<br>drwxr-----.=C2=A0 8 user vboxusers 4096 Sep=C2=A0 7=C2=A0 2017 meta-=
lxde<br>drwxr-----. 18 user vboxusers 4096 Sep=C2=A0 7=C2=A0 2017 meta-open=
embedded<br>drwxr-----.=C2=A0 6 user vboxusers 4096 Sep=C2=A0 7=C2=A0 2017 =
meta-qt4<br>drwxr-----. 11 user vboxusers 4096 Sep=C2=A0 7=C2=A0 2017 meta-=
qt5<br>drwxr-----. 10 user vboxusers 4096 Sep=C2=A0 7=C2=A0 2017 meta-snapp=
y<br>drwxr-----. 13 user vboxusers 4096 Oct 12=C2=A0 2017 meta-toradex-bsp-=
common<br>drwxr-----. 21 user vboxusers 4096 Oct 12=C2=A0 2017 meta-toradex=
-demos<br>drwxr-----. 10 user vboxusers 4096 Sep=C2=A0 7=C2=A0 2017 meta-to=
radex-nxp<br>drwxr-----. 15 user vboxusers 4096 Sep=C2=A0 7=C2=A0 2017 meta=
-toradex-tegra<br>drwxr-----.=C2=A0 8 user vboxusers 4096 Sep=C2=A0 7=C2=A0=
 2017 openembedded-core<br><u><i>[user@localhost layers]$ find . -name xcb-=
uti*<br>./openembedded-core/meta/recipes-graphics/xorg-lib/<a href=3D"http:=
//xcb-util_0.4.0.bb">xcb-util_0.4.0.bb</a><br>./openembedded-core/meta/reci=
pes-graphics/xorg-lib/<a href=3D"http://xcb-util-renderutil_0.3.9.bb">xcb-u=
til-renderutil_0.3.9.bb</a><br>./openembedded-core/meta/recipes-graphics/xo=
rg-lib/<a href=3D"http://xcb-util-keysyms_0.4.0.bb">xcb-util-keysyms_0.4.0.=
bb</a><br>./openembedded-core/meta/recipes-graphics/xorg-lib/<a href=3D"htt=
p://xcb-util-wm_0.4.1.bb">xcb-util-wm_0.4.1.bb</a><br>./openembedded-core/m=
eta/recipes-graphics/xorg-lib/xcb-util.inc<br>./openembedded-core/meta/reci=
pes-graphics/xorg-lib/<a href=3D"http://xcb-util-image_0.4.0.bb">xcb-util-i=
mage_0.4.0.bb</a><br>./openembedded-core/meta/recipes-graphics/xorg-lib/xcb=
-util-image<br>[user@localhost layers]$ find . -name libxcb-uti*<br>[user@l=
ocalhost layers]$</i></u><br><br></div>Zoran<br>_______<br></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Apr 13, 2018 at 10:=
17 AM, Mauro Ziliani <span dir=3D"ltr">&lt;<a href=3D"mailto:mauro@faresoft=
ware.it" target=3D"_blank">mauro@faresoftware.it</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Ok.</p>
    <p>Thanks for your help</p><span class=3D"HOEnZb"><font color=3D"#88888=
8">
    <p><br>
    </p>
    <p>MZ<br>
    </p></font></span><div><div class=3D"h5">
    <br>
    <div class=3D"m_-9203481551536378023moz-cite-prefix">Il 13/04/2018 09:4=
9, Zoran
      Stojsavljevic ha scritto:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div>
            <div>Hello Mauro,<br>
            </div>
            <div><br>
              Seems that you have somehow included duplicate recipes for
              xcb-util, in form of libxcb-util.<br>
              <br>
              I found the base package xcb-util in my base: meta (Open
              Embedded) layer:<br>
              <br>
              [user@localhost beaglebone-rocko-18.0.0]$ find . -name
              xcb-uti*<br>
              <span style=3D"color:rgb(255,0,0)"><i><b>./meta/recipes-graph=
ics/xorg-<wbr>lib/<a href=3D"http://xcb-util_0.4.0.bb" target=3D"_blank">xc=
b-util_0.4.0.bb</a></b></i></span><br>
              ./meta/recipes-graphics/xorg-<wbr>lib/<a href=3D"http://xcb-u=
til-renderutil_0.3.9.bb" target=3D"_blank">xcb-util-renderutil_0.3.9.<wbr>b=
b</a><br>
              ./meta/recipes-graphics/xorg-<wbr>lib/<a href=3D"http://xcb-u=
til-keysyms_0.4.0.bb" target=3D"_blank">xcb-util-keysyms_0.4.0.bb</a><br>
              ./meta/recipes-graphics/xorg-<wbr>lib/<a href=3D"http://xcb-u=
til-wm_0.4.1.bb" target=3D"_blank">xcb-util-wm_0.4.1.bb</a><br>
              ./meta/recipes-graphics/xorg-<wbr>lib/xcb-util.inc<br>
              ./meta/recipes-graphics/xorg-<wbr>lib/<a href=3D"http://xcb-u=
til-image_0.4.0.bb" target=3D"_blank">xcb-util-image_0.4.0.bb</a><br>
              ./meta/recipes-graphics/xorg-<wbr>lib/xcb-util-image<br>
              [user@localhost beaglebone-rocko-18.0.0]<br>
              <br>
            </div>
            Since you are, after all, using imx6dl, you probably
            included quite a few more layers from Frescale/NXP, with
            doubled libxcb-util package included as well.<br>
            <br>
          </div>
          <div>Please, search for it there.<br>
          </div>
          <div><br>
          </div>
          Best Regards,<br>
        </div>
        Zoran<br>
        _______<br>
      </div>
      <div class=3D"gmail_extra"><br>
        <div class=3D"gmail_quote">On Fri, Apr 13, 2018 at 6:19 AM, Mauro
          Ziliani <span dir=3D"ltr">&lt;<a href=3D"mailto:mauro@faresoftwar=
e.it" target=3D"_blank">mauro@faresoftware.it</a>&gt;</span>
          wrote:<br>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">Hi all.<br>
            <br>
            My name&#39;s Mauro and I write from Parma, Italy.<br>
            <br>
            <br>
            I&#39;m in trouble because recently I get a collision error.<br=
>
            <br>
            It seems that more than one recipes try to install the same
            file in the same path in populate_sdk task<br>
            <br>
            This is an example<br>
            <br>
            --------------<br>
            <br>
            ERROR: xcb-util-0.4.0-r0 do_populate_sysroot: The recipe
            xcb-util is trying to install files into a shared area when
            those files already exist. Those files and their manifest
            location are:<br>
            /media/mauro/Sviluppo/Catellan<wbr>iGroup/ibr115/bsp/clini5-bui=
ld<wbr>/tmp/sysroots/imx6dlsabresd/<wbr>usr/lib/<a href=3D"http://libxcb-ut=
il.la" rel=3D"noreferrer" target=3D"_blank">libxcb-util.la</a><br>
            =C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clin=
i5-buil<wbr>d/tmp/sysroots/imx6dlsabresd/<wbr>usr/lib/libxcb-util.so<br>
            =C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clin=
i5-buil<wbr>d/tmp/sysroots/imx6dlsabresd/<wbr>usr/lib/libxcb-util.so.1.0.0<=
br>
            =C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clin=
i5-buil<wbr>d/tmp/sysroots/imx6dlsabresd/<wbr>usr/lib/libxcb-util.a<br>
            =C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clin=
i5-buil<wbr>d/tmp/sysroots/imx6dlsabresd/<wbr>usr/lib/libxcb-util.so.1<br>
            =C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clin=
i5-buil<wbr>d/tmp/sysroots/imx6dlsabresd/<wbr>usr/lib/pkgconfig/xcb-event.p=
c<br>
            =C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clin=
i5-buil<wbr>d/tmp/sysroots/imx6dlsabresd/<wbr>usr/lib/pkgconfig/xcb-util.pc=
<br>
            =C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clin=
i5-buil<wbr>d/tmp/sysroots/imx6dlsabresd/<wbr>usr/lib/pkgconfig/xcb-aux.pc<=
br>
            =C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clin=
i5-buil<wbr>d/tmp/sysroots/imx6dlsabresd/<wbr>usr/lib/pkgconfig/xcb-atom.pc=
<br>
            =C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clin=
i5-buil<wbr>d/tmp/sysroots/imx6dlsabresd/<wbr>usr/include/xcb/xcb_event.h<b=
r>
            =C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clin=
i5-buil<wbr>d/tmp/sysroots/imx6dlsabresd/<wbr>usr/include/xcb/xcb_util.h<br=
>
            =C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clin=
i5-buil<wbr>d/tmp/sysroots/imx6dlsabresd/<wbr>usr/include/xcb/xcb_aux.h<br>
            =C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clin=
i5-buil<wbr>d/tmp/sysroots/imx6dlsabresd/<wbr>usr/include/xcb/xcb_atom.h<br=
>
            =C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clin=
i5-buil<wbr>d/tmp/sysroots/imx6dlsabresd/<wbr>sysroot-providers/xcb-util<br=
>
            --------------<br>
            <br>
            <br>
            I&#39;m working with a Jethro distro<br>
            <br>
            How can I solve this problem?<br>
            <br>
            <br>
            Best regards,<br>
            <br>
            =C2=A0 MZ<span class=3D"m_-9203481551536378023HOEnZb"><font col=
or=3D"#888888"><br>
                <br>
                -- <br>
                ______________________________<wbr>_________________<br>
                yocto mailing list<br>
                <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a><br>
                <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" r=
el=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/lis=
tinfo/yocto</a><br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </div></div></div>

</blockquote></div><br></div>

--001a114f84d0b858700569b908f6--
