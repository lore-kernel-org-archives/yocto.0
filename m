Return-Path: <freddy.boman@bastec.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B9F4D5CC8D
	for <webhook@archiver.kernel.org>; Wed, 30 Oct 2024 10:49:32 +0000 (UTC)
Subject: Re: [yocto] Building SDK fails after update to scarthgap
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: freddy.boman@bastec.se
X-Originating-Location: Stockholm, Stockholm County, SE (195.178.171.130)
X-Originating-Platform: Windows Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 30 Oct 2024 03:49:22 -0700
References: <CANNYZj_Au_rJn9rvTJit984CvYtRzOmY38P=JJ_E-fiEJi1jjA@mail.gmail.com>
In-Reply-To: <CANNYZj_Au_rJn9rvTJit984CvYtRzOmY38P=JJ_E-fiEJi1jjA@mail.gmail.com>
Message-ID: <21197.1730285362777128927@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wapvX6n7CbSu5tWSe1qC"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 10:49:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64177

--wapvX6n7CbSu5tWSe1qC
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello.
I've found where the config option comes from (it's in qemu.inc).
But I can't seem to find a way to add a :remove for the option that works.
I created a normal .bbappend for qemu but this does not seem to be applied =
when making nativesdk-qemu.
Is the only option to clone the full qemu-recipe into our own distro and ma=
ke the changes there or is there some magic that can be done elsewehere?

/Freddy

On Tue, Oct 29, 2024 at 12:53 PM, Alexander Kanavin wrote:

>=20
> You first need to find out why it is enabled in qemu build config, as
> it's an option that can be switched on or off.

--wapvX6n7CbSu5tWSe1qC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello.</div>
<div>I've found where the config option comes from (it's in qemu.inc).</div=
>
<div>But I can't seem to find a way to add a :remove for the option that wo=
rks.</div>
<div>I created a normal .bbappend for qemu but this does not seem to be app=
lied when making nativesdk-qemu.</div>
<div>Is the only option to clone the full qemu-recipe into our own distro a=
nd make the changes there or is there some magic that can be done elseweher=
e?</div>
<div>&nbsp;</div>
<div>/Freddy</div>
<div>&nbsp;</div>
<div>On Tue, Oct 29, 2024 at 12:53 PM, Alexander Kanavin wrote:</div>
<div>
<blockquote>You first need to find out why it is enabled in qemu build conf=
ig, as<br />it's an option that can be switched on or off.</blockquote>
</div>

--wapvX6n7CbSu5tWSe1qC--

