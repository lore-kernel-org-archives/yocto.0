Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DF8FE00D28; Fri, 22 Mar 2019 14:13:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66870E00D14
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2019 14:13:41 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id d24so3144595otl.11
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2019 14:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=gZkrmjGk257l/IG9df5L6hN+7ys1Qdvt9OXVu/XHOlo=;
	b=iIvtvNytyHBoSXBDbcZ4xPaFhFyu565Xl+Cn7yo44VrS+ExzR7vNlGZtS8wuuYtn4W
	wSIyhxW+YpGAhUXUwaxp1aikcdHpT6raTgTBRmGQ35Xm91YLdqnfVUYbWbw+3UKdgYbT
	VlfqaosgDp0Ut2zgn6b6SjBRiEf1xwpZYjELnV3/Ix7lFtrffab9zrcDg/kUXYk+61qv
	CMEpNUORTQ0lmWiMvGynZrHDfH+zAFvG0rSK6PLNtu+PurvmRuBpqIVYCFMHFWh4Ydd8
	7WnLykK+OEDqwSEVOfnTKCdPLDotM3se7svvoU73/YzIn8TD9p8cKgc5vTjITHKk1xUy
	L1HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=gZkrmjGk257l/IG9df5L6hN+7ys1Qdvt9OXVu/XHOlo=;
	b=HxKHEnj01+Ei4s1oQm+1J3Fg3GtTpmzYDVjwT2Sf5wEkY0nwmUnSjqUBVECqvmegmq
	r/lzElV6Z6VVX2AHNbTFBsr+n8JeMFkJlpVcel70e/gLFC/xzMOHIhOH+cI8qRhHeUP1
	Pija8jVeF7vrQEE8H+2PaR3MsnTd6qCQQKM24pCobk4kpHHfdj6Kl1d/WsaiU2iGiiYg
	IybqifoAz+iGqlM+/uyip7O3Q86oQhlDtWTWQxWYhkIpstAFa5agV+F9Qa0enzP9DDvs
	w9eKNiVGpWvr7rwae6U8NnfeXHyQK9HEysk1X+9MaJt4Ak3bxR1A8JGyzSw7RfyD/Io8
	wUoA==
X-Gm-Message-State: APjAAAUFLaK2IuL/RM8i/t9BqSkvus+W21ysSBks7S6ujpjjraTCqZQd
	1j7YJRr/c2T0L7+wMGQxOI0oMhbvXOtVX4kOZ0GBK7Rq
X-Google-Smtp-Source: APXvYqyCetOItyJALzBsHA8Tb/ETnb7SNE6wD9IVpdpo2NQfF75dgdRknWth0isgExi+HuzRzhpv2X/YBRo4OTXUYAI=
X-Received: by 2002:a05:6830:12d1:: with SMTP id
	a17mr8552922otq.123.1553289220544; 
	Fri, 22 Mar 2019 14:13:40 -0700 (PDT)
MIME-Version: 1.0
References: <b6e5f140-38c9-07e1-a136-76b5f42f411c@mindchasers.com>
In-Reply-To: <b6e5f140-38c9-07e1-a136-76b5f42f411c@mindchasers.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Fri, 22 Mar 2019 22:13:29 +0100
Message-ID: <CACKFPN2sEJRRiq4Bd8hX44AVGP4r=j80SLouaofGvm+MfopLBA@mail.gmail.com>
To: Bob Cochran <yocto@mindchasers.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Seeking recommendation for low cost dev board with Gigabit Ethernet that as a Yocto BSP
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
X-List-Received-Date: Fri, 22 Mar 2019 21:13:42 -0000
Content-Type: multipart/alternative; boundary="000000000000395d970584b554ed"

--000000000000395d970584b554ed
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bob,

for low cost BSPs you can have a look at some allwinner boards from
FriendlyElec and OrangePi.

I've created meta layer to support most of the H2, H3 and H5 arm cores here=
:
https://layers.openembedded.org/layerindex/branch/master/layer/meta-allwinn=
er-hx/

So you can grab any of those boards that has a GbE. Now, regarding the need
of binary firmwares
for the NICs I can't tell you which of the boards the do fill your needs,
but I guess you can have
a look.

Some boards the support GbE are:
FriendlyElec:
- NanoPi-Neo2 ~20USD (http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO=
2
)
- NanoPi-K1 Plus ~35USD (
http://wiki.friendlyarm.com/wiki/index.php/NanoPi_K1_Plus)
- NanoPi Neo Plus2 ~35USD (
http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO_Plus2)

OrangePi:
- Orange Pi Zero Plus ~15EUR (
https://www.aliexpress.com/store/product/Orange-Pi-Zero-Plus-H5-Chip-Quad-C=
ore-Open-source-Cortex-A53-512MB-development-board-beyond/1553371_328283474=
76.html
)
- Orange Pi PC2 ~20USD (
https://www.aliexpress.com/store/product/New-Orange-Pi-PC-2-H5-64bit-Suppor=
t-the-Lubuntu-linux-and-android-mini-PC-Beyond/1553371_32761481418.html
)
- Orange Pi Zero Plus2 ~24USD (
https://www.aliexpress.com/store/product/Orange-Pi-Zero-Plus-2-H5-Quad-core=
-Bluetooth-mini-PC-Beyond-Raspberry-Pi-2-Wholesale/1553371_32801249806.html
)
- Orange Pi Prime ~41USD (
https://www.aliexpress.com/store/product/Orange-Pi-Prime-Development-Board-=
H5-Quad-core-Support-linux-and-android-Beyond-Raspberry-Pi-2/1553371_328030=
48527.html
)

Soon (probably this weekend), I'll release a new meta layer that supports
the NanoPi-Neo4 board,
which has an RK3399 + GbE. If you're interested I'll send you the link for
the repo. That costs ~50USD
(http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO4)

Now, regarding the H2, H3 and H5 I do also support RT kernels for the 4.14
and the 4.19.
So these are your options:
- 4.14.78 SMP
- 4.19.21 SMP
- 4.14.78 PREEMPT-RT
- 4.19.15 PREEMPT-RT

I do updates from time to time on the layer, but not that often.

Hope that helps a bit.

Dimitris


Bob Cochran <yocto@mindchasers.com> schrieb am Fr., 22. M=C3=A4rz 2019, 18:=
12:

> Hello All,
>
> Can anyone recommend a ~$50 dev board that runs Yocto and has a single
> Gigabit Ethernet port?
>
> The boards we are aware of either have 100Mbit Ethernet, don't meet the
> price target, or has a Gigabit Ethernet port that has reduced
> capabilities via firmware (Ethernet driver isn't open source).
>
> Thank you,
>
> Bob
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000395d970584b554ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"auto">Hi =
Bob,<div dir=3D"auto"><br></div><div dir=3D"auto">for low cost BSPs you can=
 have a look at some allwinner boards from FriendlyElec and OrangePi.</div>=
<div dir=3D"auto"><br></div><div>I&#39;ve created meta layer to support mos=
t of the H2, H3 and H5 arm cores here:</div><div><a href=3D"https://layers.=
openembedded.org/layerindex/branch/master/layer/meta-allwinner-hx/">https:/=
/layers.openembedded.org/layerindex/branch/master/layer/meta-allwinner-hx/<=
/a><br></div><div><br></div><div>So you can grab any of those boards that h=
as a GbE. Now, regarding the need of binary firmwares</div><div>for the NIC=
s I can&#39;t tell you which of the boards the do fill your needs, but I gu=
ess you can have</div><div>a look.</div><div><br></div><div>Some boards the=
 support GbE are:</div><div>FriendlyElec:</div><div>- NanoPi-Neo2 ~20USD (<=
a href=3D"http://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO2">http://wi=
ki.friendlyarm.com/wiki/index.php/NanoPi_NEO2</a>)</div><div>- NanoPi-K1 Pl=
us ~35USD (<a href=3D"http://wiki.friendlyarm.com/wiki/index.php/NanoPi_K1_=
Plus">http://wiki.friendlyarm.com/wiki/index.php/NanoPi_K1_Plus</a>)</div><=
div>-=C2=A0NanoPi Neo Plus2 ~35USD (<a href=3D"http://wiki.friendlyarm.com/=
wiki/index.php/NanoPi_NEO_Plus2">http://wiki.friendlyarm.com/wiki/index.php=
/NanoPi_NEO_Plus2</a>)</div><div><br></div><div>OrangePi:</div><div>-=C2=A0=
Orange Pi Zero Plus ~15EUR (<a href=3D"https://www.aliexpress.com/store/pro=
duct/Orange-Pi-Zero-Plus-H5-Chip-Quad-Core-Open-source-Cortex-A53-512MB-dev=
elopment-board-beyond/1553371_32828347476.html">https://www.aliexpress.com/=
store/product/Orange-Pi-Zero-Plus-H5-Chip-Quad-Core-Open-source-Cortex-A53-=
512MB-development-board-beyond/1553371_32828347476.html</a>)</div><div>-=C2=
=A0Orange Pi PC2 ~20USD (<a href=3D"https://www.aliexpress.com/store/produc=
t/New-Orange-Pi-PC-2-H5-64bit-Support-the-Lubuntu-linux-and-android-mini-PC=
-Beyond/1553371_32761481418.html">https://www.aliexpress.com/store/product/=
New-Orange-Pi-PC-2-H5-64bit-Support-the-Lubuntu-linux-and-android-mini-PC-B=
eyond/1553371_32761481418.html</a>)</div><div>-=C2=A0Orange Pi Zero Plus2 ~=
24USD (<a href=3D"https://www.aliexpress.com/store/product/Orange-Pi-Zero-P=
lus-2-H5-Quad-core-Bluetooth-mini-PC-Beyond-Raspberry-Pi-2-Wholesale/155337=
1_32801249806.html">https://www.aliexpress.com/store/product/Orange-Pi-Zero=
-Plus-2-H5-Quad-core-Bluetooth-mini-PC-Beyond-Raspberry-Pi-2-Wholesale/1553=
371_32801249806.html</a>)</div><div>-=C2=A0Orange Pi Prime ~41USD (<a href=
=3D"https://www.aliexpress.com/store/product/Orange-Pi-Prime-Development-Bo=
ard-H5-Quad-core-Support-linux-and-android-Beyond-Raspberry-Pi-2/1553371_32=
803048527.html">https://www.aliexpress.com/store/product/Orange-Pi-Prime-De=
velopment-Board-H5-Quad-core-Support-linux-and-android-Beyond-Raspberry-Pi-=
2/1553371_32803048527.html</a>)</div><div><br></div><div>Soon (probably thi=
s weekend), I&#39;ll release a new meta layer that supports the NanoPi-Neo4=
 board,<br>which has an RK3399=C2=A0+ GbE. If you&#39;re interested I&#39;l=
l send you the link for the repo. That costs ~50USD</div><div>(<a href=3D"h=
ttp://wiki.friendlyarm.com/wiki/index.php/NanoPi_NEO4">http://wiki.friendly=
arm.com/wiki/index.php/NanoPi_NEO4</a>)</div><div><br></div><div>Now, regar=
ding the H2, H3 and H5 I do also support RT kernels for the 4.14 and the 4.=
19.<br>So these are your options:</div><div>- 4.14.78 SMP</div><div>- 4.19.=
21 SMP</div><div>- 4.14.78 PREEMPT-RT</div><div>- 4.19.15 PREEMPT-RT</div><=
div><br></div><div>I do updates from time to time on the layer, but not tha=
t often.</div><div><br></div><div>Hope that helps a bit.</div><div><br>Dimi=
tris</div><div><br></div></div></div></div></div></div></div></div></div></=
div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">Bob Cochran &lt;<a href=3D"mailto:yocto@mindchasers.c=
om" target=3D"_blank">yocto@mindchasers.com</a>&gt; schrieb am Fr., 22. M=
=C3=A4rz 2019, 18:12:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">Hello All,<br>
<br>
Can anyone recommend a ~$50 dev board that runs Yocto and has a single <br>
Gigabit Ethernet port?<br>
<br>
The boards we are aware of either have 100Mbit Ethernet, don&#39;t meet the=
 <br>
price target, or has a Gigabit Ethernet port that has reduced <br>
capabilities via firmware (Ethernet driver isn&#39;t open source).<br>
<br>
Thank you,<br>
<br>
Bob<br>
<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
</blockquote></div>

--000000000000395d970584b554ed--
