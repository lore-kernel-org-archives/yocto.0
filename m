Return-Path: <alan@alanstice.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00A8CE00A30; Tue,  2 May 2017 13:39:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.44 listed in dnsbl.sorbs.net]
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [136.166.156.64 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9FCEE009A0
	for <yocto@yoctoproject.org>; Tue,  2 May 2017 13:39:19 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id o5so22357005ith.1
	for <yocto@yoctoproject.org>; Tue, 02 May 2017 13:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=alanstice-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QcnuLtdF+vR30v113W/pXG31F8VJUfCm0+8enOdTJ7Q=;
	b=J4bgq+ptX/k5ZUPmAP2QeZXv+JIniPqvie7HvHyF/SLSwOA9Krhst0LhL3TFfhyd9I
	7pfW7gKkzysprIk0KsXX8/7v4Fzmx7nxoWUpi91RjtOkYbYVEbsBiei9D+TxDI9lErG5
	heevCqMKT8zwvE3I1wUSF8/gVb6rLBv3QvQx3HagE3rYhz4tm/29KSuQcVyguiv74Muj
	P5NXiXPmYrR4D5qUQ9geoSwsFIReKVyxULPgan+4qbalp1bQtIDBl2ITOE7imuzfAP/1
	4TqLC0IdrteAExEJgFYkRAdN6XCkl97JLOpCs9HP91XunwiQPynweZWCg2JQg3987NW+
	wvYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QcnuLtdF+vR30v113W/pXG31F8VJUfCm0+8enOdTJ7Q=;
	b=pPsuKT+3X7KTox7wmb9vC1MBXwtTvJ2Loa4u5lF2DmgPmc53jXcaDMXP8527S9ExOY
	fDAThMjYXU8Ya3Cax4w4Qj/j+fJ1OLYnGxIkok0RFbZdTNduNwhosVZdKOKyKg7YwThE
	NZeI0pau+BKXSDiyCNTBGxSm3bqd2/vgTAkeMXaf0XcKzO3vfG2pHa30P0S+juQGNwW9
	4ngXnjkaEBQy7WVq91W3OFDkoZQAnFwAXQLJNJbuMMSzWlgfv2wz5iA43MlVD0B0pBJv
	sL3f4/092bA2hxeXDMMxljUOGyY/aze76zPFKzMyutSL6ssnf5Is/w4WZV5unRtQHTGe
	hBhA==
X-Gm-Message-State: AN3rC/7Bppo0PsKfsRAvLQXA0N2sx1/ulq8g0CZ7CC0/AzR7+NNCJliT
	54aHhkD5kXmUIJYXm0gOxw3O9HXd/WuF
X-Received: by 10.36.178.88 with SMTP id h24mr279034iti.31.1493757558422; Tue,
	02 May 2017 13:39:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.138.104 with HTTP; Tue, 2 May 2017 13:39:18 -0700 (PDT)
X-Originating-IP: [136.166.156.64]
In-Reply-To: <CAHUNapSSakLfCEm9YmE7XS+Ndkb2ZZZ0kwOJCkZsexqTBsYyNQ@mail.gmail.com>
References: <CAPyrkgzWJ0fQ_zTJwtKcjJLKmwkL4FfyFxSUGXnb6=_Jx8S_rQ@mail.gmail.com>
	<CAHUNapSSakLfCEm9YmE7XS+Ndkb2ZZZ0kwOJCkZsexqTBsYyNQ@mail.gmail.com>
From: Alan Stice <alan@alanstice.com>
Date: Tue, 2 May 2017 13:39:18 -0700
Message-ID: <CAPn_zGtm=csBeDyB4kYcsXPEgEzuw7kQrVbVBbyKHZ6ddx=TjA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Stable branch plans
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
X-List-Received-Date: Tue, 02 May 2017 20:39:24 -0000
Content-Type: multipart/alternative; boundary=f403045d96f2a6b97a054e9088e6

--f403045d96f2a6b97a054e9088e6
Content-Type: text/plain; charset=UTF-8

I could also benefit from a quicker stable branch creation and more
stable-branch kernel updates, so +1 from me as a user

On Tue, May 2, 2017 at 11:48 AM, Trevor Woerner <twoerner@gmail.com> wrote:

> It is very likely that I too will be trying to base an rpi-based
> "product" off of pyro and hope that it will be as pain-free as
> possible :-)
>
> I don't have any past experience with this, so I can't speak to any past
> issues.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f403045d96f2a6b97a054e9088e6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I could also benefit from a quicker stable branch creation=
 and more stable-branch kernel updates, so +1 from me as a user</div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, May 2, 2017 at =
11:48 AM, Trevor Woerner <span dir=3D"ltr">&lt;<a href=3D"mailto:twoerner@g=
mail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">It is very likely that I too will be trying to =
base an rpi-based<br>
&quot;product&quot; off of pyro and hope that it will be as pain-free as<br=
>
possible :-)<br>
<br>
I don&#39;t have any past experience with this, so I can&#39;t speak to any=
 past issues.<br>
<div class=3D"HOEnZb"><div class=3D"h5">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--f403045d96f2a6b97a054e9088e6--
