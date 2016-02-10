Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CA3EE007DC; Wed, 10 Feb 2016 08:25:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95FC6E00444
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 08:25:21 -0800 (PST)
Received: by mail-ig0-f177.google.com with SMTP id hb3so17243997igb.0
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 08:25:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-type; bh=unY4msT5BIiL+Gslu19xQKZToefQTbHpMNC0pgEBJ9s=;
	b=Xrwu/2jR/ZXF/LPbpxYzHJvoGmSZyydk3s4VaATz8mkqz8kVx/WJhNXfke2aaysctf
	3Flwb+P2IoTzqYgdXsfrQjxHaIFm2v9KCRkR0WNEQ3iVEaXyxO+e9VHxRwrHSa8rQ+Su
	9YpaBZE/YM/soE9asPYBMMIdt2t5Y44IRCh+fVsIlano4Mkp4n5j9XQ8NubDS7e8l+3B
	P1t60T+BT5bwz6IHYkTSxAtFZAFz7Mv/bTbEKiORd74EHdVEsFJIahOmQm6q8DisCxef
	Kyeus+JUDbujwlEVSjYVeFUaW94OeuNvkgzm1m3M5cf7Qc7AGx8dnkDFF004t/cwzs48
	rYdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-type;
	bh=unY4msT5BIiL+Gslu19xQKZToefQTbHpMNC0pgEBJ9s=;
	b=lywzb/upaWiVqPjsvSI0fONPtMP8Pxwxm8aniD6FBbEg+s1T3nXBX2lE9P9OjnFt+8
	aEpmfIZz5xWANZ/tWKW5Nv5ruNv7Z3Lz3OpFhwkzI/zoLQbQT2h1l1l+lpRYhiCr5f1z
	jNiXOA73zj3SuDxBGezrPDwbZunX0U69Nx7mKN5yNqJb+9Cw1YCYpEVqCr0ntggM+dbd
	Keulzt9CB37yBTxhS60pMc5H+uxhchKzmI1PE9zprNBH2T82S3wznDZooJ9ogowuVXwQ
	x82zNunSksMv7vaBLdW28s6+XbkwR/KQFG7OMc/YVGb7RNG61lA8p1UeQ0mxHFHo93UP
	Chtg==
X-Gm-Message-State: AG10YOT1uSX6jUqnxgT1Wq+ZnqzJ6fNRir09WaQlFDs5tUSytMpdjMSkFYB6RTBewikO7p8CMr5uh+zHoqPrXA==
X-Received: by 10.50.79.130 with SMTP id j2mr10674811igx.25.1455121519959;
	Wed, 10 Feb 2016 08:25:19 -0800 (PST)
MIME-Version: 1.0
References: <c0fe5ddbf4bb4b3491dcc6e92bb88602@chdua14.duagon.ads>
In-Reply-To: <c0fe5ddbf4bb4b3491dcc6e92bb88602@chdua14.duagon.ads>
From: Christopher Larson <clarson@kergoth.com>
Date: Wed, 10 Feb 2016 16:25:10 +0000
Message-ID: <CABcZANkkZ5gsXSHP3iqxA+5Z6vP-Z2aUKM8DiJhG45z1Q2Nz9Q@mail.gmail.com>
To: Thomas Kaufmann <Thomas.Kaufmann@duagon.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto/Poky with external linaro toolchain
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
X-List-Received-Date: Wed, 10 Feb 2016 16:25:23 -0000
Content-Type: multipart/alternative; boundary=089e0112d0744d64f5052b6ce166

--089e0112d0744d64f5052b6ce166
Content-Type: text/plain; charset=UTF-8

https://github.com/MentorEmbedded/meta-mentor/blob/master/meta-mel/conf/include/drop-toolchain-from-sdk.inc
may
be of interest to you.

On Wed, Feb 10, 2016 at 9:01 AM Thomas Kaufmann <Thomas.Kaufmann@duagon.com>
wrote:

> Hi
>
>
>
> I started porting an existing linux system to the latest yocto base. The
> hardware TI am 335x based.
>
> I want to use the external linaro toolchains. Since I use an existing 3.2
> linux kernel as well as an older u-boot, I created a own machine and distro
> configuration. I succeed to build and run the target, so far so good.
>
>
>
> To incorporate the external toolchains I added
>
>
>
> TCMODE = "external-linaro"
>
> EXTERNAL_TOOLCHAIN =
> "/<homedir>/gcc-linaro-5.1-2015.08-x86_64_arm-linux-gnueabihf"
>
>
>
> to the local.conf file and
>
>
>
> meta-linaro/meta-linaro-toolchain
>
>
>
> to the BBLAYERS in bblayers.conf. meta-linaro was cloned using git.
>
> For my "legacy" packages I adjust "EXTERNAL_TOOLCHAIN" to a gcc-4.9
> version, this seems to work and everything compiles.
>
>
>
> Now my next step is to create an SDK distribution.
>
> When I do do_populate_sdk with bitbake for my image, however the process
> seems to compile a new cross compiler for the target as well as various
> qemu things and also newer kernel releases.
>
>
>
> Is this the preferred way to integrate the linaro toolchain into poky? Can
> anybody share their experience? I find various presentations and snippets
> about this topic, but nothing is complete.
>
> How do I create a SDK distribution which does not feature any QEMU (I want
> to deploy to target hardware) and uses the existing prebuilt toolchain?
> Build host and target sdk host would be x86_64.
>
>
>
> Any recommendations are welcome.
>
>
>
> regards Thomas Kaufmann
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e0112d0744d64f5052b6ce166
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a href=3D"https://github.com/MentorEmbedded/meta-mentor/b=
lob/master/meta-mel/conf/include/drop-toolchain-from-sdk.inc">https://githu=
b.com/MentorEmbedded/meta-mentor/blob/master/meta-mel/conf/include/drop-too=
lchain-from-sdk.inc</a>=C2=A0may be of interest to you.<br></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr">On Wed, Feb 10, 2016 at 9:01 AM Thoma=
s Kaufmann &lt;<a href=3D"mailto:Thomas.Kaufmann@duagon.com">Thomas.Kaufman=
n@duagon.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal">Hi<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I started porting an existing linux system to the la=
test yocto base. The hardware TI am 335x based.<u></u><u></u></p>
<p class=3D"MsoNormal">I want to use the external linaro toolchains. Since =
I use an existing 3.2 linux kernel as well as an older u-boot, I created a =
own machine and distro configuration. I succeed to build and run the target=
, so far so good.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">To incorporate the external toolchains I added<u></u=
><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">TCMODE =3D &quot;external-linaro&quot;<u></u><u></u>=
</p>
<p class=3D"MsoNormal">EXTERNAL_TOOLCHAIN =3D &quot;/&lt;homedir&gt;/gcc-li=
naro-5.1-2015.08-x86_64_arm-linux-gnueabihf&quot;<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">to the local.conf file and <u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">meta-linaro/meta-linaro-toolchain<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">to the BBLAYERS in bblayers.conf. meta-linaro was cl=
oned using git.<u></u><u></u></p>
<p class=3D"MsoNormal">For my &quot;legacy&quot; packages I adjust &quot;EX=
TERNAL_TOOLCHAIN&quot; to a gcc-4.9 version, this seems to work and everyth=
ing compiles.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Now my next step is to create an SDK distribution.<u=
></u><u></u></p>
<p class=3D"MsoNormal">When I do do_populate_sdk with bitbake for my image,=
 however the process seems to compile a new cross compiler for the target a=
s well as various qemu things and also newer kernel releases.<u></u><u></u>=
</p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is this the preferred way to integrate the linaro to=
olchain into poky? Can anybody share their experience? I find various prese=
ntations and snippets about this topic, but nothing is complete.<u></u><u><=
/u></p>
<p class=3D"MsoNormal">How do I create a SDK distribution which does not fe=
ature any QEMU (I want to deploy to target hardware) and uses the existing =
prebuilt toolchain? Build host and target sdk host would be x86_64.<u></u><=
u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Any recommendations are welcome.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">regards Thomas Kaufmann<u></u><u></u></p>
</div>
</div>

--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--089e0112d0744d64f5052b6ce166--
