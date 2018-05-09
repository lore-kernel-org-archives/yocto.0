Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9B8AE00D57; Wed,  9 May 2018 11:13:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ED1FE00A28
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 11:13:12 -0700 (PDT)
Received: by mail-ua0-f195.google.com with SMTP id f22so23584345uam.1
	for <yocto@yoctoproject.org>; Wed, 09 May 2018 11:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4ev41Uf+ZQbU5B1SNTt8gNw0xKz4/omCv2uYUqbwlCQ=;
	b=iaUKvL4D/Rd8Adb2zuPYLCF1O3oi9OuY2mgIomYDKTbnl8ZSONEVcHDMOgWVq2u1Ox
	0OYP1Rj3ya/p2BtzYiGzoAIA5BXuPIkvy2RsKye34b+tusGdMs7/Ft+GijQEwRAVu8R4
	WHm3KposyrRtbVhpzb5icdF6Q2EuzwB6sd/hreXjFf8RshiDWGE/YEQINczb5r4D0tpN
	SUfSHEObtsxnkvTu3QTMa7R5v2RI4v3QZQMcyxQxG4kX7EDVPtrw4nfrG7zYHOKoEKu8
	TpQBjhbCM9iGY7sOrX/OyIquebtPemq3ns+C3/QIuhF30FkOqYbw5r4I43XNA4e3Haxr
	iAeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4ev41Uf+ZQbU5B1SNTt8gNw0xKz4/omCv2uYUqbwlCQ=;
	b=H3AxHbawKoBhLr28P/eNHSiULz8fbzT/CXvPmjycC9FzQXjVmaDhXkasVBLAKOSuMt
	MAr6K1pz24Pvid86XpaVpGcsiX6hd/zB7pneVcfeq18HvK92swa3+Mop2ACwleIM/e1m
	EMkAWcDt+HOIhougcntAvmzmnScG15ACtewQmIuSz9oF1vO0PrDMhm8sN9xnlkXLBBpl
	7wxJqrLTn/5mg+sQ+bXyUa4BXFtgk+LRUNSkV3FCJq/h++FE1kLC4KjXgnHS6MzAw5P9
	EwjpwRYeiqhjcLpSd5k1MKV7moRmpB9Zjm7QFYijZDb/hyFWJ2iX3lv/fxZoguMEqUmV
	k0cw==
X-Gm-Message-State: ALQs6tDFs7ZOo1gfP0dEWGhWnkOur8uTYQuUg/T0+lrQbgEM1y6+7hiY
	XzFAnDD/J/+R43vPIw90Xb79AUoiSlbKMHtMjmqZaQ==
X-Google-Smtp-Source: AB8JxZr203zX2kfCwQ/ky96nxwwmlf+O+N6ZKIdq0nn0pz/MTqBGJ15PKWi3gNjdlZpYqFXYs13pkHcNTjo7sbs3tOI=
X-Received: by 10.176.90.48 with SMTP id l45mr38870397uad.79.1525889591588;
	Wed, 09 May 2018 11:13:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.4.108 with HTTP; Wed, 9 May 2018 11:12:31 -0700 (PDT)
X-Originating-IP: [90.152.4.98]
In-Reply-To: <CAD0U-hJ12QE=yN8Tt8FdfB-M475OZpazyOmRm9b+OG9kE5L2jA@mail.gmail.com>
References: <1525889262-14990-1-git-send-email-ryan.harkin@linaro.org>
	<CAD0U-hJ12QE=yN8Tt8FdfB-M475OZpazyOmRm9b+OG9kE5L2jA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 9 May 2018 19:12:31 +0100
Message-ID: <CAK18fxHUgY_GH-T9MSiu3jDRs0WHLuzFx-5DN=4FedAo_FnoHw@mail.gmail.com>
To: Ryan Harkin <ryan.harkin@linaro.org>
Cc: yocto@yoctoproject.org, drew.moseley@northern.tech, mirza.krak@endian.se
Subject: Re: [PATCH] Revert "u-boot: Update RPi Zero W defconfig to support DTB."
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
X-List-Received-Date: Wed, 09 May 2018 18:13:13 -0000
Content-Type: multipart/alternative; boundary="001a1145356012d414056bc9db9b"

--001a1145356012d414056bc9db9b
Content-Type: text/plain; charset="UTF-8"

On Wed, May 9, 2018 at 7:10 PM, Ryan Harkin <ryan.harkin@linaro.org> wrote:

> Apologies all,
>
> I forgot to add [meta-raspberrypi] to the subject line.
>
> Andrei,
>
> Please let me know if you'd like me to resend. Assuming you don't have a
> fix for this in flight already.
>
> Regards,
> Ryan.
>
>
I was just going to point that out. Anyway, the patch/fix is already in
master.

--
Andrei Gherzan

--001a1145356012d414056bc9db9b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, May 9, 2018 at 7:10 PM, Ryan Harkin <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:ryan.harkin@linaro.org" target=3D"_blank">ryan.harkin@linaro.org</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Apologi=
es all,<div><br></div><div>I forgot to add [meta-raspberrypi] to the subjec=
t line.<div><br></div><div>Andrei,</div><div><br></div><div>Please let me k=
now if you&#39;d like me to resend. Assuming you don&#39;t have a fix for t=
his in flight already.</div><div><br></div><div>Regards,</div><div>Ryan.</d=
iv><div><br></div></div></div></blockquote><div><br></div><div>I was just g=
oing to point that out. Anyway, the patch/fix is already in master.=C2=A0</=
div><div><br></div><div><div style=3D"color:rgb(34,34,34);font-family:arial=
,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial">--</div><span style=3D"color:rgb(34,34,34);font-fami=
ly:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial;float:none;display:inline">Andrei Gherzan</sp=
an>=C2=A0</div></div></div></div>

--001a1145356012d414056bc9db9b--
