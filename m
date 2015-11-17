Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94E11E00AE6; Tue, 17 Nov 2015 05:52:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96CB2E009C3
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 05:52:17 -0800 (PST)
Received: by ioir85 with SMTP id r85so18770007ioi.1
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 05:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=BKoHy35yZqrfOoe2663cS6FccseOIAlYwUNisui2gQY=;
	b=EIS3+CEduPWNAJtQEQopL9MwD92rYswB4TjmDuZRd4esvicyKsmvQKpgvgHLzYjZu5
	cdF5sLYixTcGa07y0fauvODGVgD/rIV+nI70qEHMF7qMBpbSHZO8UQIeYlObzmMqJEFI
	67oLWfRfZhOIBMGC4+t2mOMbg+ZZExMu8/O0mBDI9Sa5Y0/VhY/BXPCvBDFswvIddUhi
	TJJT+tv01pVhUukP99rMvoNuIjgdYpxz0Ka1FSv6/F13W8l73IhkGCMYhEfZMb98aWVl
	YZb4ajXSpn77o9Clr5Qi9wVeQRsMLyUQ760sZrbRSY+vqYq91n/gNuTwx5wNqJXPf3Jo
	/wXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=BKoHy35yZqrfOoe2663cS6FccseOIAlYwUNisui2gQY=;
	b=z8O9+Q0cLQtWRmMJgH64qARMhCDOmP5Akfp2I7BWD0ETiiQVxIsZhciYklxCpH3MgO
	zmPy8QWlAj15zA6KEf4QrOxYg/VoRSo8v67eAnCMSKNm77KJwMQHuQ0MzSb40s9WGYyv
	ixqHSLFLRflzPHlEPjoDZv2MJp6MzI9Rq7LZmD/j6komlkDc61GxxACae/NMoqezSdYD
	KD2e5vg1mIhr40FKdmRnLccMflrppUjdBnx7DjYdf1AOs4vFWKWPea7dx/hCECFL2NSt
	XLLbDBQLSVfDtORxXnvTN0cg7ucT4gAtgHoQ68FFXSMWofl7b3eLY1Q++VRyKEQNtNCK
	8JcA==
X-Received: by 10.107.38.83 with SMTP id m80mr11949071iom.98.1447768336649;
	Tue, 17 Nov 2015 05:52:16 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.93.7 with HTTP; Tue, 17 Nov 2015 05:51:57 -0800 (PST)
In-Reply-To: <30C2D590D16A5C46ADFE65219103779853A7778E@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE65219103779853A7778E@AZ-US1EXMB03.global.avaya.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 17 Nov 2015 06:51:57 -0700
X-Google-Sender-Auth: JFiIs8LIDwbvHsOW0L6STg_vr58
Message-ID: <CABcZANmpZ3EFS2xQAnympbFuZWm5w--CpVK0GquEtf=wPwdbjA@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sharing .inc recipe across layers
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
X-List-Received-Date: Tue, 17 Nov 2015 13:52:19 -0000
Content-Type: multipart/alternative; boundary=001a1140ca026c74c60524bcd5a3

--001a1140ca026c74c60524bcd5a3
Content-Type: text/plain; charset=UTF-8

On Tue, Nov 17, 2015 at 6:26 AM, Vuille, Martin (Martin) <vmartin@avaya.com>
wrote:

> What is the best way to refer to (require) a .inc recipe
>
> in one layer from another layer?
>

Use the relative path from the top of the layer. I.e. require
recipes-foo/bar/baz.inc, and bitbake will search BBPATH (the layer paths)
to find it.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1140ca026c74c60524bcd5a3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Nov 17, 2015 at 6:26 AM, Vuille, Martin (Martin) <span dir=3D"ltr">=
&lt;<a href=3D"mailto:vmartin@avaya.com" target=3D"_blank">vmartin@avaya.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">What is the best way to refer to (require) a .in=
c recipe<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">in one layer from another layer=
?</span></p></blockquote></div><br>Use the relative path from the top of th=
e layer. I.e. require recipes-foo/bar/baz.inc, and bitbake will search BBPA=
TH (the layer paths) to find it.<br>-- <br><div class=3D"gmail_signature">C=
hristopher Larson<br>clarson at kergoth dot com<br>Founder - BitBake, OpenE=
mbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer, Ment=
or Graphics</div>
</div></div>

--001a1140ca026c74c60524bcd5a3--
