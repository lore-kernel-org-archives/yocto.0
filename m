Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7632FE0082A; Sun, 19 Feb 2017 18:04:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B633BE00480
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 18:04:53 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id t17so7758330uae.1
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 18:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=p/lHopFAKUbJMe4UneSXagTE4+syYb/xkR6qxJwEzqE=;
	b=RfIAi6rq/gy6YSQsj0RPGpMBzRKWE3q+MTHzILfWt343SPo93WxVMNGv2lg68jA5gc
	9IFxmqSAlDVZeM9v6HAy7EKRSLdf6KyhJ5QF+gY/XoU8870bvwXdz8uQgQoCX+bpZ/zj
	T5Vj51VK3Dqj/44/h54TeuslfUu0jsIZIczajW3jn6/c4yoOczPYkoU7UG3ucQYTw7Xn
	eEqXpt1GawA7oU1oNHDCN1A7ON08Lwo4A6+snfw/PWAqvRGj04BUPMo1j4JR3FSv8X5r
	DMWjFx52jPEdFGO8g00ioxrOEJMkgUVqPq6wu3Kn4h3OSv+ST596XFjWCvuIOIGXaE/j
	pmrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=p/lHopFAKUbJMe4UneSXagTE4+syYb/xkR6qxJwEzqE=;
	b=lUveOQ67OsW0S9eAloZlRcz+/UwDt/Y03GbNEFVkWZy9NdxMpBIA9yrCwjjFz5WEH1
	G1wAK43uqJ5YWZELyIJn9gJCtp8dp9sRxx4yQkfxAoSqT10+js7p62hwfH1TpJMc8I4D
	t+IbzY2tIhKJrC2wQTpEZyZN/HSVWpCdXz08jL+HKMpTpv7BDcAAhMMQKmWw0eiyNoJh
	LdIWwKoZU0tZpfnq1IDQvhwJMWtsixOyh9QkKBK4g1tWlrK+mm88XIpXPczGTJKlYinM
	IoDswjxxKsFOjOW5nCLAuig8LBfOgEJPqDWB870zPdPPBQBsivgUbymvWDYGzc6s0sz+
	eIvA==
X-Gm-Message-State: AMke39mVuulkuOIOTaEu8eDWI+Eb3veeeyf0ZOJC8T+uCU9sA8MLPWpXVJrQ7X2Yerd+KLIkTZUxY7A0gJnl0A==
X-Received: by 10.176.71.234 with SMTP id w42mr1261522uac.141.1487556292777;
	Sun, 19 Feb 2017 18:04:52 -0800 (PST)
MIME-Version: 1.0
References: <20170219111804.20566-1-paul@paulbarker.me.uk>
In-Reply-To: <20170219111804.20566-1-paul@paulbarker.me.uk>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 20 Feb 2017 02:04:41 +0000
Message-ID: <CAMKF1srXgR_uLBujxiy-Lywu4xSE28Nx6PhGDze_C871Nm0TtA@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>, yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][morty][PATCH 0/2] Stable branch kernel upgrades
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
X-List-Received-Date: Mon, 20 Feb 2017 02:04:55 -0000
Content-Type: multipart/alternative; boundary=f40304378a786a1bc40548ecb01e

--f40304378a786a1bc40548ecb01e
Content-Type: text/plain; charset=UTF-8

Kernel upgrades for kernels are probably fine it's just incompatible
metadata changes that we have to be careful about

On Sun, Feb 19, 2017 at 3:20 AM Paul Barker <paul@paulbarker.me.uk> wrote:

> I'm not 100% sure what the current policy is for upgrading the kernel in
> meta-raspberrypi on a stable branch. I think it's a good idea to pull in
> upgrades from the stable kernel series when available though so that we can
> incorporate any upstream bugfixes. I'm also only considering backporting
> upgrades we've already made on master.
>
> I've also picked up the upgrade to the 4.9 kernel recipe as the old git
> hash
> no longer exists upstream.
>
> I've built & boot tested both 4.4 and 4.9 kernels on a rpi3 using morty
> plus
> these patches.
>
> Let me know if this is wanted for stable branches or not. If it is wanted,
> I'll
> try to do this once a month or so for morty (and pyro when it's released)
> until
> the end of the 12-month support period for each release.
>
> Khem Raj (1):
>   linux-raspberrypi_4.9.bb: Upgrade to 4.9.10
>
> Paul Barker (1):
>   linux-raspberrypi_4.4: Update to 4.4.48
>
>  ...-Add-rules-for-.dtbo-files-for-dts-overla.patch | 29
> ++++++++++++++++++++++
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  4 +--
>  recipes-kernel/linux/linux-raspberrypi_4.9.bb      |  5 ++--
>  3 files changed, 34 insertions(+), 4 deletions(-)
>  create mode 100644
> recipes-kernel/linux/linux-raspberrypi-4.9/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
>
> --
> 2.11.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f40304378a786a1bc40548ecb01e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div>Kernel upgrades for kernels are probably fine it&#39;s just incompatib=
le metadata changes that we have to be careful about</div><div><br><div cla=
ss=3D"gmail_quote"><div>On Sun, Feb 19, 2017 at 3:20 AM Paul Barker &lt;<a =
href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">I&#39;m not 100% sure what the curr=
ent policy is for upgrading the kernel in<br class=3D"gmail_msg">
meta-raspberrypi on a stable branch. I think it&#39;s a good idea to pull i=
n<br class=3D"gmail_msg">
upgrades from the stable kernel series when available though so that we can=
<br class=3D"gmail_msg">
incorporate any upstream bugfixes. I&#39;m also only considering backportin=
g<br class=3D"gmail_msg">
upgrades we&#39;ve already made on master.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
I&#39;ve also picked up the upgrade to the 4.9 kernel recipe as the old git=
 hash<br class=3D"gmail_msg">
no longer exists upstream.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
I&#39;ve built &amp; boot tested both 4.4 and 4.9 kernels on a rpi3 using m=
orty plus<br class=3D"gmail_msg">
these patches.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
Let me know if this is wanted for stable branches or not. If it is wanted, =
I&#39;ll<br class=3D"gmail_msg">
try to do this once a month or so for morty (and pyro when it&#39;s release=
d) until<br class=3D"gmail_msg">
the end of the 12-month support period for each release.<br class=3D"gmail_=
msg">
<br class=3D"gmail_msg">
Khem Raj (1):<br class=3D"gmail_msg">
=C2=A0 <a href=3D"http://linux-raspberrypi_4.9.bb" rel=3D"noreferrer" class=
=3D"gmail_msg" target=3D"_blank">linux-raspberrypi_4.9.bb</a>: Upgrade to 4=
.9.10<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
Paul Barker (1):<br class=3D"gmail_msg">
=C2=A0 linux-raspberrypi_4.4: Update to 4.4.48<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
=C2=A0...-Add-rules-for-.dtbo-files-for-dts-overla.patch | 29 +++++++++++++=
+++++++++<br class=3D"gmail_msg">
=C2=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.4.bb" rel=
=3D"noreferrer" class=3D"gmail_msg" target=3D"_blank">linux-raspberrypi_4.4=
.bb</a>=C2=A0 =C2=A0 =C2=A0 |=C2=A0 4 +--<br class=3D"gmail_msg">
=C2=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.9.bb" rel=
=3D"noreferrer" class=3D"gmail_msg" target=3D"_blank">linux-raspberrypi_4.9=
.bb</a>=C2=A0 =C2=A0 =C2=A0 |=C2=A0 5 ++--<br class=3D"gmail_msg">
=C2=A03 files changed, 34 insertions(+), 4 deletions(-)<br class=3D"gmail_m=
sg">
=C2=A0create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.9/0001-bu=
ild-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch<br class=3D"gmail_=
msg">
<br class=3D"gmail_msg">
--<br class=3D"gmail_msg">
2.11.0<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
--<br class=3D"gmail_msg">
_______________________________________________<br class=3D"gmail_msg">
yocto mailing list<br class=3D"gmail_msg">
<a href=3D"mailto:yocto@yoctoproject.org" class=3D"gmail_msg" target=3D"_bl=
ank">yocto@yoctoproject.org</a><br class=3D"gmail_msg">
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" class=3D"gmail_msg" target=3D"_blank">https://lists.yoctoproject.org/list=
info/yocto</a><br class=3D"gmail_msg">
</blockquote></div></div>

--f40304378a786a1bc40548ecb01e--
