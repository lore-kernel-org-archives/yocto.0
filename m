Return-Path: <landervanloock@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13585C021B8
	for <webhook@archiver.kernel.org>; Sat,  1 Mar 2025 15:56:42 +0000 (UTC)
Subject: Re: [yocto] Btrfs root filesystem permission issue
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: "Lander0606" <landervanloock@gmail.com>
X-Originating-Location: Antwerp, Flanders, BE (94.110.112.215)
X-Originating-Platform: Linux Firefox 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 01 Mar 2025 07:56:34 -0800
References: <1adcf6c5-d4be-4701-948c-3a6425f3da07@gmail.com>
In-Reply-To: <1adcf6c5-d4be-4701-948c-3a6425f3da07@gmail.com>
Message-ID: <4647.1740844594426429510@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2OZmN677EihyV9UpBsIC"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 01 Mar 2025 15:56:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64903

--2OZmN677EihyV9UpBsIC
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your response!

I did have a look at the pseudo and btrfs-progs repository and noticed that=
 the pseudo repository contains the following code in ./ports/unix/guts/ fo=
r the nftw() system call:

rc =3D real_nftw(path, fn, nopenfd, flag);

So, it seems that the wrapper for the nftw() system call just forwards it t=
o the underlying system (the host, right?). Is that the reason why the btrf=
s filesystem creation does work, but files are owned by the build host user=
?
I'm guessing there need to be some code around it to support the "fake root=
 environment" that pseudo is trying to achieve?

--2OZmN677EihyV9UpBsIC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thanks for your response!</div>
<div>&nbsp;</div>
<div>I did have a look at the pseudo and btrfs-progs repository and noticed=
 that the pseudo repository contains the following code in ./ports/unix/gut=
s/ for the nftw() system call:</div>
<div>&nbsp;</div>
<div>rc =3D real_nftw(path, fn, nopenfd, flag);</div>
<div>&nbsp;</div>
<div>So, it seems that the wrapper for the nftw() system call just forwards=
 it to the underlying system (the host, right?). Is that the reason why the=
 btrfs filesystem creation does work, but files are owned by the build host=
 user?</div>
<div>I'm guessing there need to be some code around it to support the "fake=
 root environment" that pseudo is trying to achieve?</div>

--2OZmN677EihyV9UpBsIC--

