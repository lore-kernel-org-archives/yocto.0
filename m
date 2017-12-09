Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B621E00D19; Sat,  9 Dec 2017 00:44:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f182.google.com (mail-wr0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C095E008CE
	for <yocto@yoctoproject.org>; Sat,  9 Dec 2017 00:44:02 -0800 (PST)
Received: by mail-wr0-f182.google.com with SMTP id v22so12837316wrb.0
	for <yocto@yoctoproject.org>; Sat, 09 Dec 2017 00:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mCVNavvjKGmrjkyM+Q0xC0RVVj2tucgM76qRIdZmv6A=;
	b=Chh0OHXauF8kMeXwWlcYron+PcQIhH5M8jm8f0kJAq7tZRmeBjJrkMqFbTFif1JLq2
	t1ImqnC9IuPKt3OU+V//2JsToQ5WqB/wbtfsozMWXtvmd2aqJk/lm0QtOq2bJcI41ut2
	WPkMpXLSO9p4fvbPCfLgmxmWvxKJOs3/WVplhXCAMb9sFgo1cZXD9xNlcGPJtbqtehpo
	OYlHac4VqsMpFEBmUesiiHM746bGHgKYYrsjAK74vzouGTo0KNcnm4Znj90JL8Dz/Wrz
	5q/mS+b3HIEpYc++mGd4TmNkJTYeDaSfesb3PQ4Kgvrz0Xm9aT3WnxL583EHsuOkLGUr
	sb2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mCVNavvjKGmrjkyM+Q0xC0RVVj2tucgM76qRIdZmv6A=;
	b=N1V8wQtSYNjYslWcEa3HA+YtDt9RbL2AvFMot5VhzjrcTO2BT3e7u0zrMgD+SxliRm
	wLF2QX3CIb+Iql2xC8wBfz2TuuEoQf0y4bPq8T52wyKo1sz5KMvHwPtqhjXMgJVDG1oB
	yOv92nvR9TZJPgJv47UgCE7D6SSc+nVLZK1xYLMs5I6ZbS86UMTx2PfnxCy2rdzEjU3W
	EEzlLc39fjRIyEs07kGxgqYdahecQ3P9aMWOL8uaEwsisON40+VDiYz1eXSQ2gm6tq5o
	6aNriT9cs1OSsiOs8v3OkSl1EGYA38+yxXtkX2lqJwOqnyzD9KXJDtGDeWgjDZg7f3h8
	z1xg==
X-Gm-Message-State: AJaThX4RnwHAnBu4jBAxKJ9gRQBm5wcJ3gOJNykGUFpzwp8U70oDcT/M
	DPLmqaFxB6FRg7m0f2te8hB4cls2R4Lj7bELNFg=
X-Google-Smtp-Source: AGs4zMYAnWt7Bl8yhgP8PK6VNyGpuh32NztOGsDAWGtb17iGsXIe+wMVM9QSgF82fA6X59C2KLaMnsTHgHQdxGfa3GY=
X-Received: by 10.223.136.162 with SMTP id f31mr29762175wrf.130.1512809041736; 
	Sat, 09 Dec 2017 00:44:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Sat, 9 Dec 2017 00:44:00 -0800 (PST)
In-Reply-To: <CAGT+Up4m43AF-C9Fx8vpoT8RXjG_B9AxVSfBTMEsEjB3t8X5Sw@mail.gmail.com>
References: <CAGT+Up6W9Z5itBhV2qr8RXFW6Ksb2qu60Xe17tdGjXzQWjae0Q@mail.gmail.com>
	<CAGsrAHew-9w0BTy8r_qUDLc_q28R1QVq0uqv511xrXckN3ASyQ@mail.gmail.com>
	<CAGT+Up4m43AF-C9Fx8vpoT8RXjG_B9AxVSfBTMEsEjB3t8X5Sw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Sat, 9 Dec 2017 09:44:00 +0100
Message-ID: <CAGAf8LzKPRu=C2PgOtRJPQptv14Rg8MGTkwGePLwA-VeGbkCZw@mail.gmail.com>
To: Yahya Ahmed <yahya.coder@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [x11][Question] QXcbIntegration: Cannot create platform OpenGL context
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
X-List-Received-Date: Sat, 09 Dec 2017 08:44:04 -0000
X-Groupsio-MsgNum: 39082
Content-Type: multipart/mixed; boundary="001a1146134c8c163e055fe44d9c"

--001a1146134c8c163e055fe44d9c
Content-Type: multipart/alternative; boundary="001a1146134c8c163c055fe44d9a"

--001a1146134c8c163c055fe44d9a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Ahmed,

I experimented with Toradex Colibri i.MX6 board. I managed to make X11+ Qt5
to compile, build target SDK for SD card, and make it work.

This is what I, according to TORADEX web pages, added to my local conf for
this to happen:

IMAGE_INSTALL_append =3D " qtbase qtbase-plugins cinematicexperience
liberation-fonts"
PACKAGECONFIG_FONTS_append_pn-qtbase =3D " fontconfig"

Actually, I'll attach my local.conf for this case, so you can inspect it
and get some ideas! I also can point to you how to build the
X11 + Qt5 for TORADEX Colibri i.MX6 module from scratch, if you would like
to do that, for cross reference.

Zoran

On Fri, Dec 8, 2017 at 10:37 PM, Yahya Ahmed <yahya.coder@gmail.com> wrote:

> Hello Mohammed,
>
> The mentioned link is using LinuxFB while what I'm trying to do is to
> build Qt5 with an X11 window system like the one in core-image-x11 or
> core-image-sato
> It'd be great if you have any idea how to do it
>
> Regards,=E2=80=8C
>
> On Mon, Dec 4, 2017 at 1:54 PM, mohammed aqdam <mohammedaqdam@gmail.com>
> wrote:
>
>> Hi yahya,
>>
>> Follow this link to build yocto image with qt5...
>> http://www.jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html
>>
>> Warm regards,
>> Mohammed Aqdam
>>
>> On Dec 4, 2017 1:09 AM, "Yahya Ahmed" <yahya.coder@gmail.com> wrote:
>>
>>> Hello,
>>>
>>>
>>> I've been trying to add Qt5 support to a core-image-sato image using
>>> Yocto's Poky Pyro on Raspberry Pi 3.
>>>
>>> In my bblayer.conf I added these lines:
>>>
>>> BBLAYERS ?=3D " \
>>>         /poky-pyro/meta \
>>>         /poky-pyro/meta-poky \
>>>         /poky-pyro/meta-yocto-bsp \
>>>         /poky-pyro/meta-openembedded/meta-oe \
>>>         /poky-pyro/meta-openembedded/meta-multimedia \
>>>         /poky-pyro/meta-openembedded/meta-networking \
>>>         /poky-pyro/meta-openembedded/meta-perl \
>>>         /poky-pyro/meta-openembedded/meta-python \
>>>         /poky-pyro/meta-raspberrypi \
>>>         /poky-pyro/meta-qt5 \
>>>   "
>>>
>>> In my local.conf I added these lines:
>>>
>>> DISTRO_FEATURES_append =3D " opengl "
>>> IMAGE_INSTALL_append =3D " qtbase qtdeclarative qtquickcontrols2 qtmult=
imedia qttools cinematicexperience "
>>>
>>> Bitbake finished building the image successfully, but when I run
>>> Qt5_cenimaticExperience on the target I get this error message:
>>>
>>> QXcbIntegration: Cannot create platform OpenGL context, neither GLX nor
>>> EGL are enabled.
>>>
>>> Any help would be very much appreciated!
>>> Thank You,
>>> --
>>> Yahya Ahmed
>>>
>>>
>>>
>>>
>>> =E2=80=8C
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>
>
> --
> Yahya Ahmed
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1146134c8c163c055fe44d9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Ahmed,<div><br></div><div>I experimented with Torade=
x Colibri i.MX6 board. I managed to make X11+ Qt5 to compile, build target =
SDK for SD card, and make it work.</div><div><br></div><div>This is what I,=
 according to TORADEX web pages, added to my local conf for this to happen:=
</div><div><br></div><div><div>IMAGE_INSTALL_append =3D &quot; qtbase qtbas=
e-plugins cinematicexperience liberation-fonts&quot;</div><div>PACKAGECONFI=
G_FONTS_append_pn-qtbase =3D &quot; fontconfig&quot;</div></div><div><br></=
div><div>Actually, I&#39;ll attach my local.conf for this case, so you can =
inspect it and get some ideas! I also can point to you how to build the</di=
v><div>X11 + Qt5 for TORADEX Colibri i.MX6 module from scratch, if you woul=
d like to do that, for cross reference.</div><div><br></div><div>Zoran</div=
></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, De=
c 8, 2017 at 10:37 PM, Yahya Ahmed <span dir=3D"ltr">&lt;<a href=3D"mailto:=
yahya.coder@gmail.com" target=3D"_blank">yahya.coder@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><img width=3D"=
0" height=3D"0" class=3D"m_-3823116900109710582mailtrack-img" alt=3D"" styl=
e=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/69f72da75693fa9a1=
4e48fab151352fc64812309.png?u=3D943036">Hello Mohammed,<div><br></div><div>=
The mentioned link is using LinuxFB while what I&#39;m trying to do is to b=
uild Qt5 with an X11 window system like the one in core-image-x11 or core-i=
mage-sato</div><div>It&#39;d be great if you have any idea how to do it</di=
v><div><br></div><div>Regards,=E2=80=8C</div><div class=3D"gmail_extra"><di=
v><div class=3D"h5"><br><div class=3D"gmail_quote">On Mon, Dec 4, 2017 at 1=
:54 PM, mohammed aqdam <span dir=3D"ltr">&lt;<a href=3D"mailto:mohammedaqda=
m@gmail.com" target=3D"_blank">mohammedaqdam@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div dir=3D"auto"><span style=3D"font-f=
amily:sans-serif">Hi yahya,</span><div dir=3D"auto" style=3D"font-family:sa=
ns-serif"><br></div><div dir=3D"auto" style=3D"font-family:sans-serif">Foll=
ow this link to build yocto image with qt5...</div><div dir=3D"auto" style=
=3D"font-family:sans-serif"><a href=3D"http://www.jumpnowtek.com/rpi/Raspbe=
rry-Pi-Systems-with-Yocto.html" target=3D"_blank">http://www.jumpnowtek.com=
/rpi/<wbr>Raspberry-Pi-Systems-with-Yoct<wbr>o.html</a><br></div><div dir=
=3D"auto" style=3D"font-family:sans-serif"><br></div><div dir=3D"auto" styl=
e=3D"font-family:sans-serif">Warm regards,</div><div dir=3D"auto" style=3D"=
font-family:sans-serif">Mohammed Aqdam</div></div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote"><div><div class=3D"m_-3823116900109710582h=
5">On Dec 4, 2017 1:09 AM, &quot;Yahya Ahmed&quot; &lt;<a href=3D"mailto:ya=
hya.coder@gmail.com" target=3D"_blank">yahya.coder@gmail.com</a>&gt; wrote:=
<br type=3D"attribution"></div></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><d=
iv class=3D"m_-3823116900109710582h5"><div dir=3D"ltr"><img width=3D"0" hei=
ght=3D"0" class=3D"m_-3823116900109710582mailtrack-img" alt=3D"" style=3D"d=
isplay:flex"><div><span style=3D"color:rgb(36,39,41);font-family:Arial,&quo=
t;Helvetica Neue&quot;,Helvetica,sans-serif;font-size:15px">Hello,</span><b=
r></div><div><p style=3D"margin:0px 0px 1em;padding:0px;border:0px;font-var=
iant-numeric:inherit;font-stretch:inherit;font-size:15px;line-height:inheri=
t;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;vertica=
l-align:baseline;clear:both;color:rgb(36,39,41)"><br></p><p style=3D"margin=
:0px 0px 1em;padding:0px;border:0px;font-variant-numeric:inherit;font-stret=
ch:inherit;font-size:15px;line-height:inherit;font-family:Arial,&quot;Helve=
tica Neue&quot;,Helvetica,sans-serif;vertical-align:baseline;clear:both;col=
or:rgb(36,39,41)">I&#39;ve been trying to add Qt5 support to a=C2=A0<code s=
tyle=3D"margin:0px;padding:1px 5px;border:0px;font-style:inherit;font-varia=
nt:inherit;font-weight:inherit;font-stretch:inherit;font-size:13px;line-hei=
ght:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&q=
uot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera=
 Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif;vertical-alig=
n:baseline;background-color:rgb(239,240,241);white-space:pre-wrap">core-ima=
ge-sato</code>=C2=A0image using Yocto&#39;s Poky Pyro on Raspberry Pi 3.</p=
><p style=3D"margin:0px 0px 1em;padding:0px;border:0px;font-variant-numeric=
:inherit;font-stretch:inherit;font-size:15px;line-height:inherit;font-famil=
y:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;vertical-align:base=
line;clear:both;color:rgb(36,39,41)">In my bblayer.conf I added these lines=
:</p><pre style=3D"margin-top:0px;margin-bottom:1em;padding:5px;border:0px;=
font-variant-numeric:inherit;font-stretch:inherit;font-size:13px;line-heigh=
t:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quo=
t;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera S=
ans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif;vertical-align:=
baseline;width:auto;max-height:600px;overflow:auto;background-color:rgb(239=
,240,241);word-wrap:normal;color:rgb(36,39,41)"><code style=3D"margin:0px;p=
adding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:i=
nherit;font-stretch:inherit;line-height:inherit;font-family:Consolas,Menlo,=
Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu =
Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot=
;,monospace,sans-serif;vertical-align:baseline;white-space:inherit">BBLAYER=
S ?=3D &quot; \
        /poky-pyro/meta \
        /poky-pyro/meta-poky \
        /poky-pyro/meta-yocto-bsp \
        /poky-pyro/meta-openembedded/m<wbr>eta-oe \
        /poky-pyro/meta-openembedded/m<wbr>eta-multimedia \
        /poky-pyro/meta-openembedded/m<wbr>eta-networking \
        /poky-pyro/meta-openembedded/m<wbr>eta-perl \
        /poky-pyro/meta-openembedded/m<wbr>eta-python \
        /poky-pyro/meta-raspberrypi \
        /poky-pyro/meta-qt5 \
  &quot;
</code></pre><p style=3D"margin:0px 0px 1em;padding:0px;border:0px;font-var=
iant-numeric:inherit;font-stretch:inherit;font-size:15px;line-height:inheri=
t;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;vertica=
l-align:baseline;clear:both;color:rgb(36,39,41)">In my local.conf I added t=
hese lines:</p><pre style=3D"margin-top:0px;margin-bottom:1em;padding:5px;b=
order:0px;font-variant-numeric:inherit;font-stretch:inherit;font-size:13px;=
line-height:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&=
quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstr=
eam Vera Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif;verti=
cal-align:baseline;width:auto;max-height:600px;overflow:auto;background-col=
or:rgb(239,240,241);word-wrap:normal;color:rgb(36,39,41)"><code style=3D"ma=
rgin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;fon=
t-weight:inherit;font-stretch:inherit;line-height:inherit;font-family:Conso=
las,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&qu=
ot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courie=
r New&quot;,monospace,sans-serif;vertical-align:baseline;white-space:inheri=
t">DISTRO_FEATURES_append =3D &quot; opengl &quot;
IMAGE_INSTALL_append =3D &quot; qtbase qtdeclarative qtquickcontrols2 qtmul=
timedia qttools cinematicexperience &quot;
</code></pre><p style=3D"margin:0px 0px 1em;padding:0px;border:0px;font-var=
iant-numeric:inherit;font-stretch:inherit;font-size:15px;line-height:inheri=
t;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;vertica=
l-align:baseline;clear:both;color:rgb(36,39,41)">Bitbake finished building =
the image successfully, but when I run Qt5_cenimaticExperience on the targe=
t I get this error message:</p><blockquote style=3D"margin:0px 0px 10px;pad=
ding:10px;border-width:0px 0px 0px 2px;border-top-style:initial;border-righ=
t-style:initial;border-bottom-style:initial;border-left-style:solid;border-=
top-color:initial;border-right-color:initial;border-bottom-color:initial;bo=
rder-left-color:rgb(255,235,142);font-variant-numeric:inherit;font-stretch:=
inherit;font-size:15px;line-height:inherit;font-family:Arial,&quot;Helvetic=
a Neue&quot;,Helvetica,sans-serif;vertical-align:baseline;quotes:none;backg=
round-color:rgb(255,248,220);color:rgb(36,39,41)"><p style=3D"margin:0px;pa=
dding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:in=
herit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-famil=
y:inherit;vertical-align:baseline;clear:both">QXcbIntegration: Cannot creat=
e platform OpenGL context, neither GLX nor EGL are enabled.</p></blockquote=
><p style=3D"margin:0px 0px 1em;padding:0px;border:0px;font-variant-numeric=
:inherit;font-stretch:inherit;font-size:15px;line-height:inherit;font-famil=
y:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;vertical-align:base=
line;clear:both;color:rgb(36,39,41)">Any help would be very much appreciate=
d!</p><div>Thank You,</div>-- <br><div class=3D"m_-3823116900109710582gmail=
_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Yahya Ahmed<div>=C2=A0</=
div></div></div></div></div>
<br><br><br>=E2=80=8C</div></div>
<br></div></div><span class=3D"m_-3823116900109710582HOEnZb"><font color=3D=
"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div></div></div><span c=
lass=3D"HOEnZb"><font color=3D"#888888">-- <br><div class=3D"m_-38231169001=
09710582gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr=
"><div dir=3D"ltr">Yahya Ahmed<div><br></div></div></div></div>
</font></span></div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a1146134c8c163c055fe44d9a--

--001a1146134c8c163e055fe44d9c
Content-Type: application/octet-stream; name="local.conf"
Content-Disposition: attachment; filename="local.conf"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jaz3exq00

V0FSTl9RQV9yZW1vdmUgPSAiaG9zdC11c2VyLWNvbnRhbWluYXRlZCIKCiMgbWV0YS1mcmVlc2Nh
bGUgb3RoZXJ3aXNlIGRlZmF1bHRzIHRvIHdheWxhbmQKRElTVFJPX0ZFQVRVUkVTX3JlbW92ZSA9
ICJ3YXlsYW5kIgoKIyBUaGlzIGZpbGUgaXMgeW91ciBsb2NhbCBjb25maWd1cmF0aW9uIGZpbGUg
YW5kIGlzIHdoZXJlIGFsbCBsb2NhbCB1c2VyIHNldHRpbmdzCiMgYXJlIHBsYWNlZC4gVGhlIGNv
bW1lbnRzIGluIHRoaXMgZmlsZSBnaXZlIHNvbWUgZ3VpZGUgdG8gdGhlIG9wdGlvbnMgYSBuZXcg
dXNlcgojIHRvIHRoZSBzeXN0ZW0gbWlnaHQgd2FudCB0byBjaGFuZ2UgYnV0IHByZXR0eSBtdWNo
IGFueSBjb25maWd1cmF0aW9uIG9wdGlvbiBjYW4KIyBiZSBzZXQgaW4gdGhpcyBmaWxlLiBNb3Jl
IGFkdmVudHVyb3VzIHVzZXJzIGNhbiBsb29rIGF0IGxvY2FsLmNvbmYuZXh0ZW5kZWQgCiMgd2hp
Y2ggY29udGFpbnMgb3RoZXIgZXhhbXBsZXMgb2YgY29uZmlndXJhdGlvbiB3aGljaCBjYW4gYmUg
cGxhY2VkIGluIHRoaXMgZmlsZQojIGJ1dCBuZXcgdXNlcnMgbGlrZWx5IHdvbid0IG5lZWQgYW55
IG9mIHRoZW0gaW5pdGlhbGx5LgojCiMgTGluZXMgc3RhcnRpbmcgd2l0aCB0aGUgJyMnIGNoYXJh
Y3RlciBhcmUgY29tbWVudGVkIG91dCBhbmQgaW4gc29tZSBjYXNlcyB0aGUgCiMgZGVmYXVsdCB2
YWx1ZXMgYXJlIHByb3ZpZGVkIGFzIGNvbW1lbnRzIHRvIHNob3cgcGVvcGxlIGV4YW1wbGUgc3lu
dGF4LiBFbmFibGluZwojIHRoZSBvcHRpb24gaXMgYSBxdWVzdGlvbiBvZiByZW1vdmluZyB0aGUg
IyBjaGFyYWN0ZXIgYW5kIG1ha2luZyBhbnkgY2hhbmdlIHRvIHRoZQojIHZhcmlhYmxlIGFzIHJl
cXVpcmVkLgoKIwojIFBhcmFsbGVsaXNtIE9wdGlvbnMKIwojIFRoZXNlIHR3byBvcHRpb25zIGNv
bnRyb2wgaG93IG11Y2ggcGFyYWxsZWxpc20gQml0QmFrZSBzaG91bGQgdXNlLiBUaGUgZmlyc3Qg
CiMgb3B0aW9uIGRldGVybWluZXMgaG93IG1hbnkgdGFza3MgYml0YmFrZSBzaG91bGQgcnVuIGlu
IHBhcmFsbGVsOgojCiNCQl9OVU1CRVJfVEhSRUFEUyA/PSAiNCIKIwojIERlZmF1bHQgdG8gc2V0
dGluZyBhdXRvbWF0aWNhbGx5IGJhc2VkIG9uIGNwdSBjb3VudApCQl9OVU1CRVJfVEhSRUFEUyA/
PSAiJHtAb2UudXRpbHMuY3B1X2NvdW50KCl9IgojIAojIFRoZSBzZWNvbmQgb3B0aW9uIGNvbnRy
b2xzIGhvdyBtYW55IHByb2Nlc3NlcyBtYWtlIHNob3VsZCBydW4gaW4gcGFyYWxsZWwgd2hlbgoj
IHJ1bm5pbmcgY29tcGlsZSB0YXNrczoKIwojUEFSQUxMRUxfTUFLRSA/PSAiLWogNCIKIwojIERl
ZmF1bHQgdG8gc2V0dGluZyBhdXRvbWF0aWNhbGx5IGJhc2VkIG9uIGNwdSBjb3VudApQQVJBTExF
TF9NQUtFID89ICItaiAke0BvZS51dGlscy5jcHVfY291bnQoKX0iCiMKIyBGb3IgYSBxdWFkLWNv
cmUgbWFjaGluZSwgQkJfTlVNQkVSX1RIUkVBRFMgPSAiNCIsIFBBUkFMTEVMX01BS0UgPSAiLWog
NCIgd291bGQKIyBiZSBhcHByb3ByaWF0ZSBmb3IgZXhhbXBsZS4KCkJCX05VTUJFUl9USFJFQURT
ID0gIjQiClBBUkFMTEVMX01BS0UgPSAiLWogNCIKCiMKIyBNYWNoaW5lIFNlbGVjdGlvbgojCiMg
WW91IG5lZWQgdG8gc2VsZWN0IGEgc3BlY2lmaWMgbWFjaGluZSB0byB0YXJnZXQgdGhlIGJ1aWxk
IHdpdGguIFRoZXNlIGFyZSB0aGUKIyBtYWNoaW5lcyB3aGljaCBmb3IgdGhlIFRvcmFkZXggQ29s
aWJyaSBhbmQgQXBhbGlzIGNvbXB1dGVyIG9uIG1vZHVsZSBmYW1pbGllcwojCiNNQUNISU5FID89
ICJhcGFsaXMtaW14NiIKI01BQ0hJTkUgPz0gImFwYWxpcy10MzAiCiNNQUNISU5FID89ICJhcGFs
aXMtdGsxIgojTUFDSElORSA/PSAiYXBhbGlzLXRrMS1tYWlubGluZSIKIwojTUFDSElORSA/PSAi
Y29saWJyaS1pbXg2IgojTUFDSElORSA/PSAiY29saWJyaS1pbXg3IgojTUFDSElORSA/PSAiY29s
aWJyaS10MjAiCiNNQUNISU5FID89ICJjb2xpYnJpLXQzMCIKI01BQ0hJTkUgPz0gImNvbGlicmkt
dmYiCgpNQUNISU5FID89ICJjb2xpYnJpLWlteDYiCgojCiMgVGhlcmUgYXJlIGFsc28gYSBzZWxl
Y3Rpb24gb2YgZW11bGF0ZWQgbWFjaGluZXMgYXZhaWxhYmxlIHdoaWNoIGNhbiBib290IGFuZCBy
dW4KIyBpbiB0aGUgUUVNVSBlbXVsYXRvcjoKIwojTUFDSElORSA/PSAicWVtdWFybSIKI01BQ0hJ
TkUgPz0gInFlbXVtaXBzIgojTUFDSElORSA/PSAicWVtdXBwYyIKI01BQ0hJTkUgPz0gInFlbXV4
ODYiCiNNQUNISU5FID89ICJxZW11eDg2LTY0IgoKIwojIFdoZXJlIHRvIHBsYWNlIGRvd25sb2Fk
cwojCiMgRHVyaW5nIGEgZmlyc3QgYnVpbGQgdGhlIHN5c3RlbSB3aWxsIGRvd25sb2FkIG1hbnkg
ZGlmZmVyZW50IHNvdXJjZSBjb2RlIHRhcmJhbGxzCiMgZnJvbSB2YXJpb3VzIHVwc3RyZWFtIHBy
b2plY3RzLiBUaGlzIGNhbiB0YWtlIGEgd2hpbGUsIHBhcnRpY3VsYXJseSBpZiB5b3VyIG5ldHdv
cmsKIyBjb25uZWN0aW9uIGlzIHNsb3cuIFRoZXNlIGFyZSBhbGwgc3RvcmVkIGluIERMX0RJUi4g
V2hlbiB3aXBpbmcgYW5kIHJlYnVpbGRpbmcgeW91CiMgY2FuIHByZXNlcnZlIHRoaXMgZGlyZWN0
b3J5IHRvIHNwZWVkIHVwIHRoaXMgcGFydCBvZiBzdWJzZXF1ZW50IGJ1aWxkcy4gVGhpcyBkaXJl
Y3RvcnkKIyBpcyBzYWZlIHRvIHNoYXJlIGJldHdlZW4gbXVsdGlwbGUgYnVpbGRzIG9uIHRoZSBz
YW1lIG1hY2hpbmUgdG9vLgojCiMgVGhlIGRlZmF1bHQgaXMgYSBkb3dubG9hZHMgZGlyZWN0b3J5
IHVuZGVyIFRPUERJUiB3aGljaCBpcyB0aGUgYnVpbGQgZGlyZWN0b3J5LgojCkRMX0RJUiA/PSAi
JHtUT1BESVJ9L2Rvd25sb2FkcyIKCiMKIyBXaGVyZSB0byBwbGFjZSBzaGFyZWQtc3RhdGUgZmls
ZXMKIwojIEJpdEJha2UgaGFzIHRoZSBjYXBhYmlsaXR5IHRvIGFjY2VsZXJhdGUgYnVpbGRzIGJh
c2VkIG9uIHByZXZpb3VzbHkgYnVpbHQgb3V0cHV0LgojIFRoaXMgaXMgZG9uZSB1c2luZyAic2hh
cmVkIHN0YXRlIiBmaWxlcyB3aGljaCBjYW4gYmUgdGhvdWdodCBvZiBhcyBjYWNoZSBvYmplY3Rz
CiMgYW5kIHRoaXMgb3B0aW9uIGRldGVybWluZXMgd2hlcmUgdGhvc2UgZmlsZXMgYXJlIHBsYWNl
ZC4KIwojIFlvdSBjYW4gd2lwZSBvdXQgVE1QRElSIGxlYXZpbmcgdGhpcyBkaXJlY3RvcnkgaW50
YWN0IGFuZCB0aGUgYnVpbGQgd291bGQgcmVnZW5lcmF0ZQojIGZyb20gdGhlc2UgZmlsZXMgaWYg
bm8gY2hhbmdlcyB3ZXJlIG1hZGUgdG8gdGhlIGNvbmZpZ3VyYXRpb24uIElmIGNoYW5nZXMgd2Vy
ZSBtYWRlCiMgdG8gdGhlIGNvbmZpZ3VyYXRpb24sIG9ubHkgc2hhcmVkIHN0YXRlIGZpbGVzIHdo
ZXJlIHRoZSBzdGF0ZSB3YXMgc3RpbGwgdmFsaWQgd291bGQKIyBiZSB1c2VkIChkb25lIHVzaW5n
IGNoZWNrc3VtcykuCiMKIyBUaGUgZGVmYXVsdCBpcyBhIHNzdGF0ZS1jYWNoZSBkaXJlY3Rvcnkg
dW5kZXIgVE9QRElSLgojCiNTU1RBVEVfRElSID89ICIke1RPUERJUn0vc3N0YXRlLWNhY2hlIgoK
IwojIFdoZXJlIHRvIHBsYWNlIHRoZSBidWlsZCBvdXRwdXQKIwojIFRoaXMgb3B0aW9uIHNwZWNp
ZmllcyB3aGVyZSB0aGUgYnVsayBvZiB0aGUgYnVpbGRpbmcgd29yayBzaG91bGQgYmUgZG9uZSBh
bmQKIyB3aGVyZSBCaXRCYWtlIHNob3VsZCBwbGFjZSBpdHMgdGVtcG9yYXJ5IGZpbGVzIGFuZCBv
dXRwdXQuIEtlZXAgaW4gbWluZCB0aGF0CiMgdGhpcyBpbmNsdWRlcyB0aGUgZXh0cmFjdGlvbiBh
bmQgY29tcGlsYXRpb24gb2YgbWFueSBhcHBsaWNhdGlvbnMgYW5kIHRoZSB0b29sY2hhaW4KIyB3
aGljaCBjYW4gdXNlIEdpZ2FieXRlcyBvZiBoYXJkIGRpc2sgc3BhY2UuCiMKIyBUaGUgZGVmYXVs
dCBpcyBhIHRtcCBkaXJlY3RvcnkgdW5kZXIgVE9QRElSLgojCiNUTVBESVIgPSAiJHtUT1BESVJ9
L3RtcCIKCiMKIyBXaGVyZSB0byBwbGFjZSBpbWFnZXMgYW5kIHN3IHBhY2thZ2VzCiMKIyBUaGlz
IHBsYWNlcyB0aGUgYnVpbGQgb3V0cHV0IGluIHBhcmFsbGVsIHRvIGJ1aWxkIGFuZCBsYXllcnMg
dGh1cwojIGlmIHlvdSBoYXZlIHNldmVyYWwgYnVpbGQgZGlyZWN0b3JpZXMgeW91IG5lZWQgdG8g
YWRqdXN0IGRlcGxveQojIHRvIHNvbWV0aGluZyB1bmlxdWUsIGUuZy4gIiR7VE9QRElSfS8uLi9k
ZXBsb3lfZmIiICIke1RPUERJUn0vLi4vZGVwbG95X3gxMSIKREVQTE9ZX0RJUiA9ICIke1RPUERJ
Un0vLi4vZGVwbG95IgoKIwojIFBhY2thZ2UgTWFuYWdlbWVudCBjb25maWd1cmF0aW9uCiMKIyBU
aGlzIHZhcmlhYmxlIGxpc3RzIHdoaWNoIHBhY2thZ2luZyBmb3JtYXRzIHRvIGVuYWJsZS4gTXVs
dGlwbGUgcGFja2FnZSBiYWNrZW5kcyAKIyBjYW4gYmUgZW5hYmxlZCBhdCBvbmNlIGFuZCB0aGUg
Zmlyc3QgaXRlbSBsaXN0ZWQgaW4gdGhlIHZhcmlhYmxlIHdpbGwgYmUgdXNlZCAKIyB0byBnZW5l
cmF0ZSB0aGUgcm9vdCBmaWxlc3lzdGVtcy4KIyBPcHRpb25zIGFyZToKIyAgLSAncGFja2FnZV9k
ZWInIGZvciBkZWJpYW4gc3R5bGUgZGViIGZpbGVzCiMgIC0gJ3BhY2thZ2VfaXBrJyBmb3IgaXBr
IGZpbGVzIGFyZSB1c2VkIGJ5IG9wa2cgKGEgZGViaWFuIHN0eWxlIGVtYmVkZGVkIHBhY2thZ2Ug
bWFuYWdlcikKIyAgLSAncGFja2FnZV9ycG0nIGZvciBycG0gc3R5bGUgcGFja2FnZXMKIyBFLmcu
OiBQQUNLQUdFX0NMQVNTRVMgPz0gInBhY2thZ2VfcnBtIHBhY2thZ2VfZGViIHBhY2thZ2VfaXBr
IgojIFdlIGRlZmF1bHQgdG8gaXBrOgojIyBQQUNLQUdFX0NMQVNTRVMgPz0gInBhY2thZ2VfaXBr
IgoKIyMgV2UgaGVyZSBkZWZhdWx0IHRvIHJwbSEKUEFDS0FHRV9DTEFTU0VTID89ICJwYWNrYWdl
X3JwbSIKCiMKIyBTREsvQURUIHRhcmdldCBhcmNoaXRlY3R1cmUKIwojIFRoaXMgdmFyaWFibGUg
c3BlY2lmaWVzIHRoZSBhcmNoaXRlY3R1cmUgdG8gYnVpbGQgU0RLL0FEVCBpdGVtcyBmb3IgYW5k
IG1lYW5zCiMgeW91IGNhbiBidWlsZCB0aGUgU0RLIHBhY2thZ2VzIGZvciBhcmNoaXRlY3R1cmVz
IG90aGVyIHRoYW4gdGhlIG1hY2hpbmUgeW91IGFyZSAKIyBydW5uaW5nIHRoZSBidWlsZCBvbiAo
aS5lLiBidWlsZGluZyBpNjg2IHBhY2thZ2VzIG9uIGFuIHg4Nl82NCBob3N0KS4KIyBTdXBwb3J0
ZWQgdmFsdWVzIGFyZSBpNjg2IGFuZCB4ODZfNjQKI1NES01BQ0hJTkUgPz0gImk2ODYiCgojCiMg
RXh0cmEgaW1hZ2UgY29uZmlndXJhdGlvbiBkZWZhdWx0cwojCiMgVGhlIEVYVFJBX0lNQUdFX0ZF
QVRVUkVTIHZhcmlhYmxlIGFsbG93cyBleHRyYSBwYWNrYWdlcyB0byBiZSBhZGRlZCB0byB0aGUg
Z2VuZXJhdGVkIAojIGltYWdlcy4gU29tZSBvZiB0aGVzZSBvcHRpb25zIGFyZSBhZGRlZCB0byBj
ZXJ0YWluIGltYWdlIHR5cGVzIGF1dG9tYXRpY2FsbHkuIFRoZQojIHZhcmlhYmxlIGNhbiBjb250
YWluIHRoZSBmb2xsb3dpbmcgb3B0aW9uczoKIyAgImRiZy1wa2dzIiAgICAgICAtIGFkZCAtZGJn
IHBhY2thZ2VzIGZvciBhbGwgaW5zdGFsbGVkIHBhY2thZ2VzCiMgICAgICAgICAgICAgICAgICAg
ICAoYWRkcyBzeW1ib2wgaW5mb3JtYXRpb24gZm9yIGRlYnVnZ2luZy9wcm9maWxpbmcpCiMgICJk
ZXYtcGtncyIgICAgICAgLSBhZGQgLWRldiBwYWNrYWdlcyBmb3IgYWxsIGluc3RhbGxlZCBwYWNr
YWdlcwojICAgICAgICAgICAgICAgICAgICAgKHVzZWZ1bCBpZiB5b3Ugd2FudCB0byBkZXZlbG9w
IGFnYWluc3QgbGlicyBpbiB0aGUgaW1hZ2UpCiMgICJwdGVzdC1wa2dzIiAgICAgLSBhZGQgLXB0
ZXN0IHBhY2thZ2VzIGZvciBhbGwgcHRlc3QtZW5hYmxlZCBwYWNrYWdlcwojICAgICAgICAgICAg
ICAgICAgICAgKHVzZWZ1bCBpZiB5b3Ugd2FudCB0byBydW4gdGhlIHBhY2thZ2UgdGVzdCBzdWl0
ZXMpCiMgICJ0b29scy1zZGsiICAgICAgLSBhZGQgZGV2ZWxvcG1lbnQgdG9vbHMgKGdjYywgbWFr
ZSwgcGtnY29uZmlnIGV0Yy4pCiMgICJ0b29scy1kZWJ1ZyIgICAgLSBhZGQgZGVidWdnaW5nIHRv
b2xzIChnZGIsIHN0cmFjZSkKIyAgImVjbGlwc2UtZGVidWciICAtIGFkZCBFY2xpcHNlIHJlbW90
ZSBkZWJ1Z2dpbmcgc3VwcG9ydAojICAidG9vbHMtcHJvZmlsZSIgIC0gYWRkIHByb2ZpbGluZyB0
b29scyAob3Byb2ZpbGUsIGV4bWFwLCBsdHRuZywgdmFsZ3JpbmQpCiMgICJ0b29scy10ZXN0YXBw
cyIgLSBhZGQgdXNlZnVsIHRlc3RpbmcgdG9vbHMgKHRzX3ByaW50LCBhcGxheSwgYXJlY29yZCBl
dGMuKQojICAiZGVidWctdHdlYWtzIiAgIC0gbWFrZSBhbiBpbWFnZSBzdWl0YWJsZSBmb3IgZGV2
ZWxvcG1lbnQKIyAgICAgICAgICAgICAgICAgICAgIGUuZy4gc3NoIHJvb3QgYWNjZXNzIGhhcyBh
IGJsYW5rIHBhc3N3b3JkCiMgVGhlcmUgYXJlIG90aGVyIGFwcGxpY2F0aW9uIHRhcmdldHMgdGhh
dCBjYW4gYmUgdXNlZCBoZXJlIHRvbywgc2VlCiMgbWV0YS9jbGFzc2VzL2ltYWdlLmJiY2xhc3Mg
YW5kIG1ldGEvY2xhc3Nlcy9jb3JlLWltYWdlLmJiY2xhc3MgZm9yIG1vcmUgZGV0YWlscy4KIyBX
ZSBkZWZhdWx0IHRvIGVuYWJsaW5nIHRoZSBkZWJ1Z2dpbmcgdHdlYWtzLgojIHBhY2thZ2UtbWFu
YWdlbWVudCBkZXBsb3lzIHRoZSBwYWNrYWdlIG1ldGEgZGF0YSBvZiBkZXBsb3llZCBwYWNrZWdl
cwpFWFRSQV9JTUFHRV9GRUFUVVJFUyA9ICJkZWJ1Zy10d2Vha3MgcGFja2FnZS1tYW5hZ2VtZW50
IgoKIyMjIGh0dHA6Ly9kZXZlbG9wZXIudG9yYWRleC5jb20va25vd2xlZGdlLWJhc2UvYm9hcmQt
c3VwcG9ydC1wYWNrYWdlL29wZW5lbWJlZGRlZC0oY29yZSkjQWRkaW5nX3RoZV9RdDVfTGF5ZXIg
IyMjCgpQUkVGRVJSRURfUFJPVklERVJfcHNwbGFzaC1zdXBwb3J0ID0gInBzcGxhc2gtYW5nc3Ry
b20iCiMjIGRlZmF1bHQgPT0+PiBJTUFHRV9JTlNUQUxMX2FwcGVuZCA9ICIgc3RyYWNlIgpJTUFH
RV9JTlNUQUxMX2FwcGVuZCA9ICIgc3RyYWNlIHF0YmFzZSBxdGJhc2UtcGx1Z2lucyBjaW5lbWF0
aWNleHBlcmllbmNlIGxpYmVyYXRpb24tZm9udHMiClBBQ0tBR0VDT05GSUdfRk9OVFNfYXBwZW5k
X3BuLXF0YmFzZSA9ICIgZm9udGNvbmZpZyIKSU1BR0VfUk9PVEZTX0VYVFJBX1NQQUNFID0gIiAx
MzEwNzIiCgojIyMgRm9yIHVzaW5nIGZyYW1lYnVmZmVyIHdpdGggRUdMRlMgKG9ubHkgc3VwcG9y
dGVkIG9uIGlNWDYpIGFuZCBidWlsZGluZyBhbiBpbWFnZQojIyMgd2l0aG91dCB0aGUgWDExIGFu
ZCBMWERFIGRlc2t0b3AgZW52aXJvbm1lbnQsIHVzZSB0aGUgY29uc29sZS10ZHgtaW1hZ2UgdGFy
Z2V0CiMjIyBhbmQgYWRkIHRoZSBmb2xsb3dpbmcgdG8gdGhlICJidWlsZC9jb25mL2xvY2FsLmNv
bmYiIGluIGFkZGl0aW9uIHRvIHRoZSBhYm92ZQoKIyMgRElTVFJPX0ZFQVRVUkVTX3JlbW92ZSA9
ICJ4MTEgd2F5bGFuZCIKIyMgSU1BR0VfSU5TVEFMTF9yZW1vdmUgPSAiZWdsaW5mby14MTEiCgoj
CiMgQWRkaXRpb25hbCBpbWFnZSBmZWF0dXJlcwojCiMgVGhlIGZvbGxvd2luZyBpcyBhIGxpc3Qg
b2YgYWRkaXRpb25hbCBjbGFzc2VzIHRvIHVzZSB3aGVuIGJ1aWxkaW5nIGltYWdlcyB3aGljaAoj
IGVuYWJsZSBleHRyYSBmZWF0dXJlcy4gU29tZSBhdmFpbGFibGUgb3B0aW9ucyB3aGljaCBjYW4g
YmUgaW5jbHVkZWQgaW4gdGhpcyB2YXJpYWJsZSAKIyBhcmU6CiMgICAtICdidWlsZHN0YXRzJyBj
b2xsZWN0IGJ1aWxkIHN0YXRpc3RpY3MKIyAgIC0gJ2ltYWdlLW1rbGlicycgdG8gcmVkdWNlIHNo
YXJlZCBsaWJyYXJ5IGZpbGVzIHNpemUgZm9yIGFuIGltYWdlCiMgICAtICdpbWFnZS1wcmVsaW5r
JyBpbiBvcmRlciB0byBwcmVsaW5rIHRoZSBmaWxlc3lzdGVtIGltYWdlCiMgICAtICdpbWFnZS1z
d2FiJyB0byBwZXJmb3JtIGhvc3Qgc3lzdGVtIGludHJ1c2lvbiBkZXRlY3Rpb24KIyBOT1RFOiBp
ZiBsaXN0aW5nIG1rbGlicyAmIHByZWxpbmsgYm90aCwgdGhlbiBtYWtlIHN1cmUgbWtsaWJzIGlz
IGJlZm9yZSBwcmVsaW5rCiMgTk9URTogbWtsaWJzIGFsc28gbmVlZHMgdG8gYmUgZXhwbGljaXRs
eSBlbmFibGVkIGZvciBhIGdpdmVuIGltYWdlLCBzZWUgbG9jYWwuY29uZi5leHRlbmRlZApVU0VS
X0NMQVNTRVMgPz0gImJ1aWxkc3RhdHMgaW1hZ2UtbWtsaWJzIGltYWdlLXByZWxpbmsiCgojCiMg
UnVudGltZSB0ZXN0aW5nIG9mIGltYWdlcwojCiMgVGhlIGJ1aWxkIHN5c3RlbSBjYW4gdGVzdCBi
b290aW5nIHZpcnR1YWwgbWFjaGluZSBpbWFnZXMgdW5kZXIgcWVtdSAoYW4gZW11bGF0b3IpCiMg
YWZ0ZXIgYW55IHJvb3QgZmlsZXN5c3RlbXMgYXJlIGNyZWF0ZWQgYW5kIHJ1biB0ZXN0cyBhZ2Fp
bnN0IHRob3NlIGltYWdlcy4gVG8KIyBlbmFibGUgdGhpcyB1bmNvbW1lbnQgdGhpcyBsaW5lLiBT
ZWUgY2xhc3Nlcy90ZXN0aW1hZ2UoLWF1dG8pLmJiY2xhc3MgZm9yCiMgZnVydGhlciBkZXRhaWxz
LgojVEVTVF9JTUFHRSA9ICIxIgoKIwojIEludGVyYWN0aXZlIHNoZWxsIGNvbmZpZ3VyYXRpb24K
IwojIFVuZGVyIGNlcnRhaW4gY2lyY3Vtc3RhbmNlcyB0aGUgc3lzdGVtIG1heSBuZWVkIGlucHV0
IGZyb20geW91IGFuZCB0byBkbyB0aGlzIGl0IAojIGNhbiBsYXVuY2ggYW4gaW50ZXJhY3RpdmUg
c2hlbGwuIEl0IG5lZWRzIHRvIGRvIHRoaXMgc2luY2UgdGhlIGJ1aWxkIGlzIAojIG11bHRpdGhy
ZWFkZWQgYW5kIG5lZWRzIHRvIGJlIGFibGUgdG8gaGFuZGxlIHRoZSBjYXNlIHdoZXJlIG1vcmUg
dGhhbiBvbmUgcGFyYWxsZWwKIyBwcm9jZXNzIG1heSByZXF1aXJlIHRoZSB1c2VyJ3MgYXR0ZW50
aW9uLiBUaGUgZGVmYXVsdCBpcyBpdGVyYXRlIG92ZXIgdGhlIGF2YWlsYWJsZQojIHRlcm1pbmFs
IHR5cGVzIHRvIGZpbmQgb25lIHRoYXQgd29ya3MuCiMKIyBFeGFtcGxlcyBvZiB0aGUgb2NjYXNp
b25zIHRoaXMgbWF5IGhhcHBlbiBhcmUgd2hlbiByZXNvbHZpbmcgcGF0Y2hlcyB3aGljaCBjYW5u
b3QKIyBiZSBhcHBsaWVkLCB0byB1c2UgdGhlIGRldnNoZWxsIG9yIHRoZSBrZXJuZWwgbWVudWNv
bmZpZwojCiMgU3VwcG9ydGVkIHZhbHVlcyBhcmUgYXV0bywgZ25vbWUsIHhmY2UsIHJ4dnQsIHNj
cmVlbiwga29uc29sZSAoS0RFIDMueCBvbmx5KSwgbm9uZQojIE5vdGU6IGN1cnJlbnRseSwgS29u
c29sZSBzdXBwb3J0IG9ubHkgd29ya3MgZm9yIEtERSAzLnggZHVlIHRvIHRoZSB3YXkKIyBuZXdl
ciBLb25zb2xlIHZlcnNpb25zIGJlaGF2ZQojT0VfVEVSTUlOQUwgPSAiYXV0byIKIyBCeSBkZWZh
dWx0IGRpc2FibGUgaW50ZXJhY3RpdmUgcGF0Y2ggcmVzb2x1dGlvbiAodGFza3Mgd2lsbCBqdXN0
IGZhaWwgaW5zdGVhZCk6ClBBVENIUkVTT0xWRSA9ICJub29wIgoKIwojIERpc2sgU3BhY2UgTW9u
aXRvcmluZyBkdXJpbmcgdGhlIGJ1aWxkCiMKIyBNb25pdG9yIHRoZSBkaXNrIHNwYWNlIGR1cmlu
ZyB0aGUgYnVpbGQuIElmIHRoZXJlIGlzIGxlc3MgdGhhdCAxR0Igb2Ygc3BhY2Ugb3IgbGVzcwoj
IHRoYW4gMTAwSyBpbm9kZXMgaW4gYW55IGtleSBidWlsZCBsb2NhdGlvbiAoVE1QRElSLCBETF9E
SVIsIFNTVEFURV9ESVIpLCBncmFjZWZ1bGx5CiMgc2h1dGRvd24gdGhlIGJ1aWxkLiBJZiB0aGVy
ZSBpcyBsZXNzIHRoYXQgMTAwTUIgb3IgMUsgaW5vZGVzLCBwZXJmb3JtIGEgaGFyZCBhYm9ydAoj
IG9mIHRoZSBidWlsZC4gVGhlIHJlYXNvbiBmb3IgdGhpcyBpcyB0aGF0IHJ1bm5pbmcgY29tcGxl
dGVseSBvdXQgb2Ygc3BhY2UgY2FuIGNvcnJ1cHQKIyBmaWxlcyBhbmQgZGFtYWdlcyB0aGUgYnVp
bGQgaW4gd2F5cyB3aGljaCBtYXkgbm90IGJlIGVhc2lseSByZWNvdmVyYWJsZS4KQkJfRElTS01P
Tl9ESVJTID0gIlwKICAgIFNUT1BUQVNLUywke1RNUERJUn0sMUcsMTAwSyBcCiAgICBTVE9QVEFT
S1MsJHtETF9ESVJ9LDFHLDEwMEsgXAogICAgU1RPUFRBU0tTLCR7U1NUQVRFX0RJUn0sMUcsMTAw
SyBcCiAgICBBQk9SVCwke1RNUERJUn0sMTAwTSwxSyBcCiAgICBBQk9SVCwke0RMX0RJUn0sMTAw
TSwxSyBcCiAgICBBQk9SVCwke1NTVEFURV9ESVJ9LDEwME0sMUsiIAoKIwojIFNoYXJlZC1zdGF0
ZSBmaWxlcyBmcm9tIG90aGVyIGxvY2F0aW9ucwojCiMgQXMgbWVudGlvbmVkIGFib3ZlLCBzaGFy
ZWQgc3RhdGUgZmlsZXMgYXJlIHByZWJ1aWx0IGNhY2hlIGRhdGEgb2JqZWN0cyB3aGljaCBjYW4g
CiMgdXNlZCB0byBhY2NlbGVyYXRlIGJ1aWxkIHRpbWUuIFRoaXMgdmFyaWFibGUgY2FuIGJlIHVz
ZWQgdG8gY29uZmlndXJlIHRoZSBzeXN0ZW0KIyB0byBzZWFyY2ggb3RoZXIgbWlycm9yIGxvY2F0
aW9ucyBmb3IgdGhlc2Ugb2JqZWN0cyBiZWZvcmUgaXQgYnVpbGRzIHRoZSBkYXRhIGl0c2VsZi4K
IwojIFRoaXMgY2FuIGJlIGEgZmlsZXN5c3RlbSBkaXJlY3RvcnksIG9yIGEgcmVtb3RlIHVybCBz
dWNoIGFzIGh0dHAgb3IgZnRwLiBUaGVzZQojIHdvdWxkIGNvbnRhaW4gdGhlIHNzdGF0ZS1jYWNo
ZSByZXN1bHRzIGZyb20gcHJldmlvdXMgYnVpbGRzIChwb3NzaWJseSBmcm9tIG90aGVyIAojIG1h
Y2hpbmVzKS4gVGhpcyB2YXJpYWJsZSB3b3JrcyBsaWtlIGZldGNoZXIgTUlSUk9SUy9QUkVNSVJS
T1JTIGFuZCBwb2ludHMgdG8gdGhlIAojIGNhY2hlIGxvY2F0aW9ucyB0byBjaGVjayBmb3IgdGhl
IHNoYXJlZCBvYmplY3RzLgojIE5PVEU6IGlmIHRoZSBtaXJyb3IgdXNlcyB0aGUgc2FtZSBzdHJ1
Y3R1cmUgYXMgU1NUQVRFX0RJUiwgeW91IG5lZWQgdG8gYWRkIFBBVEgKIyBhdCB0aGUgZW5kIGFz
IHNob3duIGluIHRoZSBleGFtcGxlcyBiZWxvdy4gVGhpcyB3aWxsIGJlIHN1YnN0aXR1dGVkIHdp
dGggdGhlCiMgY29ycmVjdCBwYXRoIHdpdGhpbiB0aGUgZGlyZWN0b3J5IHN0cnVjdHVyZS4KI1NT
VEFURV9NSVJST1JTID89ICJcCiNmaWxlOi8vLiogaHR0cDovL3NvbWVzZXJ2ZXIudGxkL3NoYXJl
L3NzdGF0ZS9QQVRIO2Rvd25sb2FkZmlsZW5hbWU9UEFUSCBcbiBcCiNmaWxlOi8vLiogZmlsZTov
Ly9zb21lL2xvY2FsL2Rpci9zc3RhdGUvUEFUSCIKCgojCiMgUWVtdSBjb25maWd1cmF0aW9uCiMK
IyBCeSBkZWZhdWx0IHFlbXUgd2lsbCBidWlsZCB3aXRoIGEgYnVpbHRpbiBWTkMgc2VydmVyIHdo
ZXJlIGdyYXBoaWNhbCBvdXRwdXQgY2FuIGJlCiMgc2Vlbi4gVGhlIHR3byBsaW5lcyBiZWxvdyBl
bmFibGUgdGhlIFNETCBiYWNrZW5kIHRvby4gVGhpcyBhc3N1bWVzIHRoZXJlIGlzIGEKIyBsaWJz
ZGwgbGlicmFyeSBhdmFpbGFibGUgb24geW91ciBidWlsZCBzeXN0ZW0uClBBQ0tBR0VDT05GSUdf
cG4tcWVtdS1uYXRpdmUgPSAic2RsIgpBU1NVTUVfUFJPVklERUQgKz0gImxpYnNkbC1uYXRpdmUi
CgoKIyBDT05GX1ZFUlNJT04gaXMgaW5jcmVhc2VkIGVhY2ggdGltZSBidWlsZC9jb25mLyBjaGFu
Z2VzIGluY29tcGF0aWJseSBhbmQgaXMgdXNlZCB0bwojIHRyYWNrIHRoZSB2ZXJzaW9uIG9mIHRo
aXMgZmlsZSB3aGVuIGl0IHdhcyBnZW5lcmF0ZWQuIFRoaXMgY2FuIHNhZmVseSBiZSBpZ25vcmVk
IGlmCiMgdGhpcyBkb2Vzbid0IG1lYW4gYW55dGhpbmcgdG8geW91LgpDT05GX1ZFUlNJT04gPSAi
MSIKCiMgRGVsZXRlIHRoZSB0aGUgc291cmNlL29iamVjdC9iaW5hcnkgZmlsZXMgb25jZSBhIHBh
Y2thZ2UgaXMgYnVpbHQgdG8gcHJlc2VydmUgZGlzayBzcGFjZQpJTkhFUklUICs9ICJybV93b3Jr
IgoKIyBBZGQgVG9yYWRleCBzb3VyY2UgbWlycm9yCklOSEVSSVQgKz0gInRvcmFkZXgtbWlycm9y
cyIKCiMgVXNlIHRoaXMgZGlzdHJvIChmaWxlbmFtZSBmcm9tIG1ldGEtYW5nc3Ryb20vY29uZi9k
aXN0cm8veHguY29uZikKRElTVFJPID0gImFuZ3N0cm9tIgoKIyBXaGF0IGltYWdlIHR5cGUocykg
YXJlIHRvIGJlIGJ1aWx0PwpJTUFHRV9GU1RZUEVTICs9ICJ0YXIuYnoyIgoKIyBEb24ndCBnZW5l
cmF0ZSB0aGUgbWlycm9yIHRhcmJhbGwgZm9yIFNDTSByZXBvcywgdGhlIHNuYXBzaG90IGlzIGVu
b3VnaAojIEJCX0dFTkVSQVRFX01JUlJPUl9UQVJCQUxMUyA9ICIwIgoKUFJFRkVSUkVEX1BST1ZJ
REVSX3BzcGxhc2gtc3VwcG9ydCA9ICJwc3BsYXNoLWFuZ3N0cm9tIgoKQUNDRVBUX0ZTTF9FVUxB
ID0gIjEiCg==

--001a1146134c8c163e055fe44d9c--
