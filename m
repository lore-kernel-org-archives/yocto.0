Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14625E00D16; Fri,  1 Feb 2019 04:17:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53C0FE00CB0
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2019 04:17:54 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id f7so6932190wrp.1
	for <yocto@yoctoproject.org>; Fri, 01 Feb 2019 04:17:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=3e9hbbGn5MKrHqhcegH4simLLeUbvuvY1zOsqLHhy40=;
	b=CUnpR1hSF5sG2bdJLKLpdkoHIBJGPGu1GarJdr0lLu7UgmeuXJVGeYw9LiXxk3hhvV
	5L26HHEnrdyuu8u1nqlSLFhtFGDwrw0s8auYuyQ/6QZLCxr5F9haRD/MEHrQTa+9S8oM
	cYQZ2pNVb8PGQ0vxP6J8VXsu34yXGnFFRKL9nwErjBBlhDuI1VqLrmlcoMp25SN04Bc3
	8YQuBEjRz38qOTjBdghkjT7e2Sn65mrJUKj7bD68Z1QNirEQ7h6EX9E7Qxe1SeV5m2D5
	GH2CKpLFHzYGAXpyAmFzzi0Y6PuImKKjqODMWfBmzWP4aHRtrU0YhksQiM8+sgfv1j2W
	8z5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3e9hbbGn5MKrHqhcegH4simLLeUbvuvY1zOsqLHhy40=;
	b=t3YvtunDJHKyL4BveSwqdBWQrnxVgDFM0b1lAvKMYVc2TAAyNISzmIWruzMGF9qaha
	WdY8WA+ji0NpEIKhrulyy1Q3UJ2R/jGUj09xZybGiaeIEUTWX1d+hfceynwXCppEsDqJ
	iVGKBAJw47371aTEOLNG8TgZuhMWfEb3mAZ02k1JZdnP6L7W3SLAdUrF4HwW+hoG0QnC
	aPDGgkX0UoOT469shAPVBvP2BBpnuVxDtWatCc6QwWrtYEzUEfWFahQucL09O1QVCT4+
	XOOza4DpMzoQsp0NOz2lByNVp1Lqwmwq80FdSMh+GaUSmShQxR8OSo0736iNly3LoQVU
	qXrQ==
X-Gm-Message-State: AJcUukcJ8LrDbQy02y6paYpkNbJ2ajLSlfNayiBKHYAdeIB1Jt3mBUIF
	IQ5CTot0vxKX2ZvXbqEfa9a1H7kQ3wqgRtzXey8=
X-Google-Smtp-Source: ALg8bN5xiuAcEzfZpoLlUTFUXIbHmHpVdX6xMfdupRCHXIBlw/E8EO5BGa/Lovtq0TjxIseVd2kuLHq4jkxjauY7ypU=
X-Received: by 2002:adf:900f:: with SMTP id h15mr38272996wrh.18.1549023473309; 
	Fri, 01 Feb 2019 04:17:53 -0800 (PST)
MIME-Version: 1.0
References: <CAFd=ocgxmwYraW5JjjrP8WOzyMrF7A=tj8Y8ksaY6tP0H3i=Nw@mail.gmail.com>
In-Reply-To: <CAFd=ocgxmwYraW5JjjrP8WOzyMrF7A=tj8Y8ksaY6tP0H3i=Nw@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 1 Feb 2019 13:17:41 +0100
Message-ID: <CAAfyv37uEZ3N7Wno_Dg6jpQ4-SrYQC75Xxjf9tNC+d+L=sG+gw@mail.gmail.com>
To: Markus W <markus4dev@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Rainbow screen with Raspberry Pi 3 A+ but not on B+
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
X-List-Received-Date: Fri, 01 Feb 2019 12:17:55 -0000
Content-Type: multipart/alternative; boundary="000000000000e01fc20580d421f0"

--000000000000e01fc20580d421f0
Content-Type: text/plain; charset="UTF-8"

On Fri, Feb 1, 2019 at 1:11 PM Markus W <markus4dev@gmail.com> wrote:

> Hi!
>
> I have been running a yocto image (sumo) on a raspberry 3 B+ without any
> problems, but wanted to test the new raspberry Pi 3 A+ board with it but I
> just get the Rainbow screen on boot. I have updated meta-openembedded to
> the latest sumo and meta-raspberry was still up to date with the latest
> (sumo) and still the same result.
>

> My question: Has anybody been running sumo on a raspberrypi 3 a+
> successfully? I have been googling around for issues but can't find
> anything on the new board and yocto. Seems that I am missing something.
>
Can you connect serial console and add enable_uart=1 to config.txt and
verify? This looks like it doesn't boot. You can also ask on [1]

>
> Regards,
> Markus
>
-- 
>

[1] -  https://github.com/agherzan/meta-raspberrypi/issues

BR,

marek

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--000000000000e01fc20580d421f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">On Fri, Feb 1, 2019 at 1=
:11 PM Markus W &lt;<a href=3D"mailto:markus4dev@gmail.com">markus4dev@gmai=
l.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi!<div><br></div><div>I =
have been running a yocto image (sumo) on a raspberry 3 B+ without any prob=
lems, but wanted to test the new raspberry Pi 3 A+ board with it but I just=
 get the Rainbow screen on boot. I have updated meta-openembedded to the la=
test sumo and meta-raspberry was still up to date with the latest (sumo) an=
d still the same result.=C2=A0=C2=A0</div></div></blockquote><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>My=
 question: Has anybody been running sumo on a raspberrypi 3 a+ successfully=
? I have been googling around for issues but can&#39;t find anything on the=
 new board and yocto. Seems that I am missing something.</div></div></block=
quote><div>Can you connect serial console and add enable_uart=3D1 to config=
.txt and verify? This looks like it doesn&#39;t boot. You can also ask on [=
1]</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div><br></div><div>Regards,</div><div>Markus=C2=A0=C2=A0=C2=A0 =C2=A0</div=
></div></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">-- <b=
r></blockquote><div><br></div><div>[1] -=C2=A0=C2=A0<a href=3D"https://gith=
ub.com/agherzan/meta-raspberrypi/issues">https://github.com/agherzan/meta-r=
aspberrypi/issues</a></div><div><br></div><div>BR,</div><div><br></div><div=
>marek</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">as simple and primitive as possible<br>---------=
----------------------------------------<br>Marek Belisko - OPEN-NANDRA<br>=
Freelance Developer<br><br>Ruska Nova Ves 219 | Presov, 08005 Slovak Republ=
ic<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitter: #opennandra<br=
>web: <a href=3D"http://open-nandra.com" target=3D"_blank">http://open-nand=
ra.com</a></div></div></div>

--000000000000e01fc20580d421f0--
