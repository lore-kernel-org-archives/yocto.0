Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B118E00B28; Fri, 13 Apr 2018 00:49:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_10_20, 
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f178.google.com (mail-yb0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23379E008A2
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 00:49:22 -0700 (PDT)
Received: by mail-yb0-f178.google.com with SMTP id e5-v6so4019633ybq.13
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 00:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=n42J8LgfKKHHe0rxMCnIAlUQ0Ota81jsZwZmxJjDwOE=;
	b=sk15PeqlU0HKEynDCbJ2XwH4lTHmgJSCfuBGcA66IF9mXuGxhBXHmigej9YQWaJzzd
	VGkjY+TAEAT4x4wLY7a/NFafqRYfeORQi5HVjEDUGFuJRoin+ur/gGcrhLZql+bvDeel
	I59OZ598Exh4CIzeYniZB5WLyOUu4RL8M2b28K9efyToPo8JG7xcJbi+e8xsbY7fivg6
	TrD+kpvKDs5w6gAHEcv9aVwCk4xNYAvbDFFJCbl3XYU2beDFG1qIomDI38SaV1GNHIFX
	QrUOpShJO59D2VZN6eNzJgy14s8HIuJ6ZNNCkxa4AC9FRV9w57ttcKwQHlzpINx45Z0x
	BsDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=n42J8LgfKKHHe0rxMCnIAlUQ0Ota81jsZwZmxJjDwOE=;
	b=Ljd4zUUCkv2ST8jwkXv1pMQsQo3dOQMiebPDqWJSfD2x2RFEXREzf63KjXPrGjS7xw
	qXqELxt6RntlQiF/pSMU54bJ5NheSAaekKmO6dKkQH9zvmtuVyTcUUrZQMpz9Z+Lehdm
	+RuMROSsG3rJqCN/0hF0Q+IZhYSlttBMAfAiWV4i574N/6LOI+5+iPsEmk8ZNpDPwr8n
	DTpM+Rt9vqha+HJBM1eyBVW8R7bKRf5JmVrMjPWJpEPUnQkUeOzICT0j9ZdfreuKpc6v
	ot6xcodXBdy2HPDW7V/gwVzdIM8puw2V4TURyFHZrsfwLWH8QU98I4C16iC3Lxhkpi+7
	dmFg==
X-Gm-Message-State: ALQs6tB0F9sHfeqD8orOSewUnmdwKl6wF+q/wqGU+v1Dbc3xl3vb8VqV
	1nX0ymldgTJdTIa8czfBMCFBSkNUHCFku0hFTgLUKQ==
X-Google-Smtp-Source: AIpwx49r5iEYzROk9ASW3bOswOiNNLjfGniGN9H95V9FgQgVGIvk93gUJ17JG7d1FgWO0cVo324xBSNXIPOC3p+0pN4=
X-Received: by 2002:a25:287:: with SMTP id
	129-v6mr3835080ybc.302.1523605761741; 
	Fri, 13 Apr 2018 00:49:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.247.141 with HTTP; Fri, 13 Apr 2018 00:49:21 -0700 (PDT)
In-Reply-To: <229102f0-f056-b246-a5ff-7f1f1653b8df@faresoftware.it>
References: <229102f0-f056-b246-a5ff-7f1f1653b8df@faresoftware.it>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 13 Apr 2018 09:49:21 +0200
Message-ID: <CAGAf8LyY_BSgGo6sGQME8_0hevJ9f2CNKjFPFxo1UZL1YQL-1g@mail.gmail.com>
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
X-List-Received-Date: Fri, 13 Apr 2018 07:49:25 -0000
Content-Type: multipart/alternative; boundary="00000000000034d8940569b61cff"

--00000000000034d8940569b61cff
Content-Type: text/plain; charset="UTF-8"

Hello Mauro,

Seems that you have somehow included duplicate recipes for xcb-util, in
form of libxcb-util.

I found the base package xcb-util in my base: meta (Open Embedded) layer:

[user@localhost beaglebone-rocko-18.0.0]$ find . -name xcb-uti*
*./meta/recipes-graphics/xorg-lib/xcb-util_0.4.0.bb
<http://xcb-util_0.4.0.bb>*
./meta/recipes-graphics/xorg-lib/xcb-util-renderutil_0.3.9.bb
./meta/recipes-graphics/xorg-lib/xcb-util-keysyms_0.4.0.bb
./meta/recipes-graphics/xorg-lib/xcb-util-wm_0.4.1.bb
./meta/recipes-graphics/xorg-lib/xcb-util.inc
./meta/recipes-graphics/xorg-lib/xcb-util-image_0.4.0.bb
./meta/recipes-graphics/xorg-lib/xcb-util-image
[user@localhost beaglebone-rocko-18.0.0]

Since you are, after all, using imx6dl, you probably included quite a few
more layers from Frescale/NXP, with doubled libxcb-util package included as
well.

Please, search for it there.

Best Regards,
Zoran
_______

On Fri, Apr 13, 2018 at 6:19 AM, Mauro Ziliani <mauro@faresoftware.it>
wrote:

> Hi all.
>
> My name's Mauro and I write from Parma, Italy.
>
>
> I'm in trouble because recently I get a collision error.
>
> It seems that more than one recipes try to install the same file in the
> same path in populate_sdk task
>
> This is an example
>
> --------------
>
> ERROR: xcb-util-0.4.0-r0 do_populate_sysroot: The recipe xcb-util is
> trying to install files into a shared area when those files already exist.
> Those files and their manifest location are:
> /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-
> build/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.la
>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-
> build/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.so
>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-
> build/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.so.1.0.0
>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-
> build/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.a
>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-
> build/tmp/sysroots/imx6dlsabresd/usr/lib/libxcb-util.so.1
>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-
> build/tmp/sysroots/imx6dlsabresd/usr/lib/pkgconfig/xcb-event.pc
>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-
> build/tmp/sysroots/imx6dlsabresd/usr/lib/pkgconfig/xcb-util.pc
>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-
> build/tmp/sysroots/imx6dlsabresd/usr/lib/pkgconfig/xcb-aux.pc
>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-
> build/tmp/sysroots/imx6dlsabresd/usr/lib/pkgconfig/xcb-atom.pc
>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-
> build/tmp/sysroots/imx6dlsabresd/usr/include/xcb/xcb_event.h
>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-
> build/tmp/sysroots/imx6dlsabresd/usr/include/xcb/xcb_util.h
>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-
> build/tmp/sysroots/imx6dlsabresd/usr/include/xcb/xcb_aux.h
>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-
> build/tmp/sysroots/imx6dlsabresd/usr/include/xcb/xcb_atom.h
>  /media/mauro/Sviluppo/CatellaniGroup/ibr115/bsp/clini5-
> build/tmp/sysroots/imx6dlsabresd/sysroot-providers/xcb-util
> --------------
>
>
> I'm working with a Jethro distro
>
> How can I solve this problem?
>
>
> Best regards,
>
>   MZ
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000034d8940569b61cff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello Mauro,<br></div><div><br>Seems that y=
ou have somehow included duplicate recipes for xcb-util, in form of libxcb-=
util.<br><br>I found the base package xcb-util in my base: meta (Open Embed=
ded) layer:<br><br>[user@localhost beaglebone-rocko-18.0.0]$ find . -name x=
cb-uti*<br><span style=3D"color:rgb(255,0,0)"><i><b>./meta/recipes-graphics=
/xorg-lib/<a href=3D"http://xcb-util_0.4.0.bb">xcb-util_0.4.0.bb</a></b></i=
></span><br>./meta/recipes-graphics/xorg-lib/<a href=3D"http://xcb-util-ren=
derutil_0.3.9.bb">xcb-util-renderutil_0.3.9.bb</a><br>./meta/recipes-graphi=
cs/xorg-lib/<a href=3D"http://xcb-util-keysyms_0.4.0.bb">xcb-util-keysyms_0=
.4.0.bb</a><br>./meta/recipes-graphics/xorg-lib/<a href=3D"http://xcb-util-=
wm_0.4.1.bb">xcb-util-wm_0.4.1.bb</a><br>./meta/recipes-graphics/xorg-lib/x=
cb-util.inc<br>./meta/recipes-graphics/xorg-lib/<a href=3D"http://xcb-util-=
image_0.4.0.bb">xcb-util-image_0.4.0.bb</a><br>./meta/recipes-graphics/xorg=
-lib/xcb-util-image<br>[user@localhost beaglebone-rocko-18.0.0]<br><br></di=
v>Since you are, after all, using imx6dl, you probably included quite a few=
 more layers from Frescale/NXP, with doubled libxcb-util package included a=
s well.<br><br></div><div>Please, search for it there.<br></div><div><br></=
div>Best Regards,<br></div>Zoran<br>_______<br> </div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On Fri, Apr 13, 2018 at 6:19 AM, Mauro=
 Ziliani <span dir=3D"ltr">&lt;<a href=3D"mailto:mauro@faresoftware.it" tar=
get=3D"_blank">mauro@faresoftware.it</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">Hi all.<br>
<br>
My name&#39;s Mauro and I write from Parma, Italy.<br>
<br>
<br>
I&#39;m in trouble because recently I get a collision error.<br>
<br>
It seems that more than one recipes try to install the same file in the sam=
e path in populate_sdk task<br>
<br>
This is an example<br>
<br>
--------------<br>
<br>
ERROR: xcb-util-0.4.0-r0 do_populate_sysroot: The recipe xcb-util is trying=
 to install files into a shared area when those files already exist. Those =
files and their manifest location are:<br>
/media/mauro/Sviluppo/Catellan<wbr>iGroup/ibr115/bsp/clini5-<wbr>build/tmp/=
sysroots/imx6dlsabre<wbr>sd/usr/lib/<a href=3D"http://libxcb-util.la" rel=
=3D"noreferrer" target=3D"_blank">libxcb-util.la</a><br>
=C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>buil=
d/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/libxcb-util.so<br>
=C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>buil=
d/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/libxcb-util.so.1.0.<wbr>0<br>
=C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>buil=
d/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/libxcb-util.a<br>
=C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>buil=
d/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/libxcb-util.so.1<br>
=C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>buil=
d/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/pkgconfig/xcb-<wbr>event.pc<br>
=C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>buil=
d/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/pkgconfig/xcb-util.<wbr>pc<br>
=C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>buil=
d/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/pkgconfig/xcb-aux.<wbr>pc<br>
=C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>buil=
d/tmp/sysroots/imx6dlsabre<wbr>sd/usr/lib/pkgconfig/xcb-atom.<wbr>pc<br>
=C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>buil=
d/tmp/sysroots/imx6dlsabre<wbr>sd/usr/include/xcb/xcb_event.h<br>
=C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>buil=
d/tmp/sysroots/imx6dlsabre<wbr>sd/usr/include/xcb/xcb_util.h<br>
=C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>buil=
d/tmp/sysroots/imx6dlsabre<wbr>sd/usr/include/xcb/xcb_aux.h<br>
=C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>buil=
d/tmp/sysroots/imx6dlsabre<wbr>sd/usr/include/xcb/xcb_atom.h<br>
=C2=A0/media/mauro/Sviluppo/Catella<wbr>niGroup/ibr115/bsp/clini5-<wbr>buil=
d/tmp/sysroots/imx6dlsabre<wbr>sd/sysroot-providers/xcb-util<br>
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
=C2=A0 MZ<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--00000000000034d8940569b61cff--
