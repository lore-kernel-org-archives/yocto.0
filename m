Return-Path: <felix-kuhlmann@gmx.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3E75D0E6F9
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 11:40:37 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by mx.groups.io with SMTP id smtpd.web11.43757.1729510827276940920
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 04:40:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=felix-kuhlmann@gmx.de header.s=s31663417 header.b=aCUwcjTi;
 spf=pass (domain: gmx.de, ip: 212.227.17.22, mailfrom: felix-kuhlmann@gmx.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1729510824; x=1730115624; i=felix-kuhlmann@gmx.de;
	bh=9kBQnmrEjHlIJ1GVe4lDkh9s8cbaixb6FEEhojUwTrw=;
	h=X-UI-Sender-Class:Date:From:To:Subject:Message-ID:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=aCUwcjTiu9tG8CZAb+xHivOAZ0RZNiUx7b2KCIC+5FS/ZlAWza3amVEpxpwYbpcO
	 aaDYpTfD73MpGmacryxbU6IjriWSrGyJFR2f002LAOLPTw2+FDIFalOcctkIlpsF+
	 IEstGLw40qZyeKwmPqgdMtM1LcpHhaNVbpcLe+lSYs6eI36Hfcwshrj0GDHHZueOh
	 8tOGQjGBrmSOyvKX4ciHdXshNaiCdt9LuIaO+iWuQtYLsDtj/ezf79555ZYSn4A9B
	 7QWAWjKStGIrI7InZBEaGYMrA9vcjAswDbBWdKiaog8QvDMJhzmhBpQ7WWi6r2WQ3
	 SlJ43UqRmWmu6UsDvA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from fedora ([213.172.123.58]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MA7KU-1tDG5a3R3S-00BZ3f; Mon, 21
 Oct 2024 13:40:24 +0200
Date: Mon, 21 Oct 2024 13:40:52 +0200
From: Felix Kuhlmann <felix-kuhlmann@gmx.de>
To: yocto@lists.yoctoproject.org,
	Josef Holzmayr <jester@theyoctojester.info>
Subject: Re: [yocto] Question regarding executing an install script during
 the build of an image
Message-ID: <ZxY9xINxSRyuHZdh@fedora>
References: <ZxOc_m5GBfsY2Hhk@fedora>
 <15945.1729415999980937427@lists.yoctoproject.org>
 <CAEt6NwrhEanG17jKXLR5vzL+YGeOT9zX_6aS189OV9vkcE8=6g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAEt6NwrhEanG17jKXLR5vzL+YGeOT9zX_6aS189OV9vkcE8=6g@mail.gmail.com>
X-Provags-ID: V03:K1:HGlkEpeCKPwcKplnYjM2kiychNov3CQZF3vQGJQc5aCVmEj88wy
 3YQDdvDW6AB1hwaeDiT3re+rBDsdh0ELAxQOqvtvzV4LR6GA2mLDwMx7aCGpN9GmHnkuxUY
 PL5wZlQYU4wP7XBKL9p5E4jbeih446HfMCvZ34p5822yNE2KLeFqDKGA+tN70kcPiChgKtP
 wk8LW4uzBNQwgHFHsxQQA==
UI-OutboundReport: notjunk:1;M01:P0:pS8k7ErMFO4=;2c5p2OPTbl/vER0HKGsfNCBT0sH
 cQpwwfqvAWchlVpT6QT8edwMoTJwvRewIOt1NdI15NAuxfgMg+RrwqB5GKRtgqWhTpa8YlutV
 bF4j/0ZLfTR6UaKYn1RLHRONCytYs37eOMi2/72ftq3888AoIohWuZ2H3zKiUG8bzjMl5WgXq
 xZ4pGmTBmS+QIaUrL4WOwiWzakX8Yk1+uyTJ0eHnBz5VbcjSUbw9q8kwUtAadhedoOjc6pbz9
 n+uLkPORWpmaavL5AFJimNaDoHLTy1fQDsA/c9npQXiwGJiarOGwzlOI0pD5Z4V1hpa4/hS+c
 NJqGCnSKXLlA/Ze4LU9ETQmGhd34v2tXSIB5ZgI1Zx88w75m4q+UpmGwzivMUvGkHJyrSNbh6
 3MO7q+yI/zoaFhqIOVD3+oM/cg9jPgxMAvh61mYHyEB7typVhxkL81r6vG23NLnJcGPYhOtlC
 PeJaQ3I6aMOgxjn331KaJVpZrrT6J45Ocwp0eBqsOUMSx1xL2r2+PYRTUfhVE5OriJ5FTGrQo
 JVU72fcSYpK2KeGuzkmt/Zor1REnwL91L+J26o/nuOAhhPF0Sl5bhfyvUsimJ4qw3dJrJUvDz
 lxqiqj5sSbOAX/u43egpkXgfGdZ219VTRy2vJlX3O28ZDNhEBNNMaj4JrquW8iZHzrCkLA9y2
 He+QiEh9zTnkw2V+rPRa8D0RhsN6RJSYAN6CmSX140w4mnrp/Wj7kZcEvS9x/NSINUGxFiAsv
 EzN9jYOXjB7hAmHor4l1MCBBXnBl4OrNSGd4SKpZCBbpSysPRaZNssOJD9vYn1yEij+L1oWvy
 g1ihZ//sPsX6XkGC5HXF/Pf/c5W1xD9rWS/437q4vN0gU=
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 11:40:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64067

Hi Marco, hi Josef,

thank you very much for your input.

I greatly underestimated the work needed for using the given installer scr=
ipt in the yocto context.
I'm glad that you showed me the implications of my plan beforehand, this s=
aves me a few wasted hours :D

Greetings,
Felix

Am Mon, Oct 21, 2024 at 11:39:14AM +0200 schrieb Josef Holzmayr:
> Hi Felix,
>
> I presume you are talking about
> https://github.com/thiagoralves/OpenPLC_v3/tree/master? In that case, wh=
at
> *actually* runs in that installation script is
> https://github.com/thiagoralves/OpenPLC_v3/blob/master/background_instal=
ler.sh,
> which is a highly general purpose distribution targeted approach, which
> basically relies on being able to pull in packages at random. This is
> nowhere near reproducible, and therefore will cause you a lot of pain if
> you want to put it into a recipe. So what you really need to do is:
> 1. make sure that all dependencies are already available as recipes so y=
ou
> can treat them as DEPENDS/RDEPENDS. The entry point for working through =
it
> is probably
> https://github.com/thiagoralves/OpenPLC_v3/blob/b2ef6d15d0ec92110cf44ad3=
f58e364db60dec72/background_installer.sh#L241
> 2. factor out the hidden systemd service into a proper file and use the
> systemd.bbclass mechanisms to install it:
> https://github.com/thiagoralves/OpenPLC_v3/blob/b2ef6d15d0ec92110cf44ad3=
f58e364db60dec72/background_installer.sh#L215
> 3. understand whatever magic is needed additionally, starting point
> probably is
> https://github.com/thiagoralves/OpenPLC_v3/blob/b2ef6d15d0ec92110cf44ad3=
f58e364db60dec72/background_installer.sh#L250
>
> Plus whatever goes wrong along the way. :-(
>
> Greetz,
> Josef
>
> On Sun, Oct 20, 2024 at 11:20=E2=80=AFAM Marco Cavallini via lists.yocto=
project.org
> <koansoftware=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> > Hello Felix,
> > probably I don't have enough details to give you a complete hint.
> > However, the solution usually suggested is to create your own recipe,
> > perhaps using "recipetool create" [1] and then adapt its content (this=
 is
> > what I usually explain during my Yocto training courses).
> > Then you can include in your recipe the installation and the managemen=
t of
> > a launcher script and its systemd service for example (if you are usin=
g
> > systemd) [2].
> >
> > [1]
> > https://docs.yoctoproject.org/next/dev-manual/new-recipe.html?highligh=
t=3Dsystemd
> > [2]
> > https://wiki.koansoftware.com/index.php/Add_a_systemd_service_file_int=
o_a_Yocto_image
> >
> > Marco Cavallini
> > Yocto Project ambassador
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#64055):
> > https://lists.yoctoproject.org/g/yocto/message/64055
> > Mute This Topic: https://lists.yoctoproject.org/mt/109099192/4689568
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> > jester@theyoctojester.info]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
> >

