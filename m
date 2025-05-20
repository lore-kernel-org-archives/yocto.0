Return-Path: <mohammad.rasim96@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E2C3C54756
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 17:29:34 +0000 (UTC)
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
 by mx.groups.io with SMTP id smtpd.web10.26860.1747762170074763287
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 May 2025 10:29:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z4Rp417s;
 spf=pass (domain: gmail.com, ip: 209.85.160.49, mailfrom: mohammad.rasim96@gmail.com)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-2cc82edcf49so1222256fac.1
        for <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 10:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747762169; x=1748366969; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FB0hpCHMZM6X6pC7ILEfUfjRpAyMWdF18U1/Rk+MDjA=;
        b=Z4Rp417sx7/i08iED424xJiG0nOvgVgiMJUJc8OS9yX/wYv65Z+yTqEpfD5SAhbmO1
         D4Zp8vV8keKNCbIvf298zpbSil1lCwTc7fDHRr6sRR4zWCVcPxMJ51fEDyh6uB1Ug3BV
         oOwiA6Q9DVkieWmCjv3YyOnOr0C4PXELndd0YpNCVFyf7jrBX0aOjY0OJPOHy6R8fCsG
         cHBmmwUqYQspMz1qjJ40D/zboV3c2J0YwOCHRkcmDI6bLRalZp4j48cieqztr7UK3szp
         CAudNezXqwaX+nu4BaO7CicQdqtUx+ASKFnGISDx5ztK3ACPsJDmEsC7VVhL5UreJfRO
         DS9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747762169; x=1748366969;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FB0hpCHMZM6X6pC7ILEfUfjRpAyMWdF18U1/Rk+MDjA=;
        b=suxOZTBNxd7vkJ38RnKktaAa4MCdk98hlZYNJtBPuuUL7yfsL29DP6JD8Qyg0eukJI
         zRqpw4CdLSQRc4XnkDecwHwBWu95dRL9EY8p3jdbg8sMosxGdaFbZ09Mke32/q3Xvk7T
         Ec7AB2G1iCJwem2E8oEvqltyRoz6hqKb7xqMyGkApOzivERz4UDBzFk+pIJlEpu1F5n2
         JY9CjIT4NcrTiOzRXo6IkLiMt/k2h9ttqkevLhmXi0ts4JVl7GoPK92FkGfltsGOmnnd
         utoqjrpiNqmxF/HMI4e2Bru1EgyZONtr7lZ6xEhS0bKvtOK40fBxU/11mdYU1nC9VtLz
         F5Fw==
X-Gm-Message-State: AOJu0Yyt3c+dXMA0DUeV1TCSIbbfji//rtKINRXy2wtAfuAT2Bq9HvlA
	zvFdETGwjMsEc0hR/jinABC0fA2i2Y6bYAD556B8VXQmQKdWJquCSWvIti2y2JvVMIewXOIu2//
	7Ez7Oc73aE16EbUkkBK1oxlOzKoLaZjw=
X-Gm-Gg: ASbGncvFpF2VThQaZ/LDUbAbSu9HZ2RJHzjZexCfsA3VyTLTAbAx6e/NuquQ66czna3
	LSlywqK2gjMDvDOncrBnjX2rC7OgbQ5j80hONOOrOYBtUyG5x7xl5WxisPRtoekgHDh1XvfPZro
	OrRFFTV4VHFgYjX/fZ3Rvqdov91FZ2VAJV
X-Google-Smtp-Source: AGHT+IF1wUplRZy3Xyk3EygBXKSPBQG2WQH+DwNTtbzXhVKmRl2e19M+Bfx7CW1TRykWdpuTewVNJoueKfVJ4P/L1QM=
X-Received: by 2002:a05:6870:9629:b0:2c1:bc87:9bc0 with SMTP id
 586e51a60fabf-2e3c8202d6fmr9180646fac.15.1747762169264; Tue, 20 May 2025
 10:29:29 -0700 (PDT)
MIME-Version: 1.0
References: <CACq04CGjYASSJR6ie3FFGs-BgJLZipzrX8ozBmzrBSrAb+ODyA@mail.gmail.com>
 <CANNYZj_B9XVH1xwUY=4fn7c8B961rVgSqsZGhp-MNixZZUGOxQ@mail.gmail.com>
In-Reply-To: <CANNYZj_B9XVH1xwUY=4fn7c8B961rVgSqsZGhp-MNixZZUGOxQ@mail.gmail.com>
From: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Date: Tue, 20 May 2025 20:29:16 +0300
X-Gm-Features: AX0GCFtfj7nW-20GtU-pYOQ-isSLCmghFlHIiF-whNgSZl17KbnWmmNxc5G31sw
Message-ID: <CACq04CH1gLdyeFdGmf6btfVYeXky6Ygi7bpUNvJyVdmR9XaLHQ@mail.gmail.com>
Subject: Re: [yocto] Only build the packages that needs rebuilding
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004040e70635949788"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 17:29:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65377

--0000000000004040e70635949788
Content-Type: text/plain; charset="UTF-8"

On Tue, May 20, 2025, 8:16 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> On Tue, 20 May 2025 at 19:11, Mohammad Rasim via
> lists.yoctoproject.org
> <mohammad.rasim96=gmail.com@lists.yoctoproject.org> wrote:
> > Is there a way to make yocto/bitbake download prebuilt packages from a
> repo and only build packages that has a modified recipe or the user request
> to forcibly build?
> > In alpine linux for example when you build an image you can make the
> build system download the packages from the alpine project repo (or another
> repo if the package is hosted elsewhere)
> > And only build the package that doesn't have a prebuilt version or whose
> recipe (called APKBUILD in alpine world)
> >
> > This makes building a customizable image very fast and also reproducible.
>
> Yes, the mechanism for that is called sstate cache. If you build
> everything, then publish the cache on the internet, and someone else
> configures their yocto build exactly as you have, and uses the cache
> you published, they will not see any compilation, and yocto will
> proceed directly to making an image after downloading the packages
> from sstate server.
>
So i still need to build the image first to have the cache, which takes
time if i have a modest machine specs.

> Are there any public sstate caches that someone can use?

We don't yet have the top level tool for doing this in a single step,
> but I'm working on it, and the code is ready:
> https://pretalx.com/yocto-workshop-at-embedded-recipes-2025/talk/QJTEQN/
>
> Alex
>

--0000000000004040e70635949788
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote gmail_quote_contai=
ner"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 20, 2025, 8:16 PM Al=
exander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Tue, =
20 May 2025 at 19:11, Mohammad Rasim via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer noreferrer" tar=
get=3D"_blank">lists.yoctoproject.org</a><br>
&lt;mohammad.rasim96=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" =
target=3D"_blank" rel=3D"noreferrer">gmail.com@lists.yoctoproject.org</a>&g=
t; wrote:<br>
&gt; Is there a way to make yocto/bitbake download prebuilt packages from a=
 repo and only build packages that has a modified recipe or the user reques=
t to forcibly build?<br>
&gt; In alpine linux for example when you build an image you can make the b=
uild system download the packages from the alpine project repo (or another =
repo if the package is hosted elsewhere)<br>
&gt; And only build the package that doesn&#39;t have a prebuilt version or=
 whose recipe (called APKBUILD in alpine world)<br>
&gt;<br>
&gt; This makes building a customizable image very fast and also reproducib=
le.<br>
<br>
Yes, the mechanism for that is called sstate cache. If you build<br>
everything, then publish the cache on the internet, and someone else<br>
configures their yocto build exactly as you have, and uses the cache<br>
you published, they will not see any compilation, and yocto will<br>
proceed directly to making an image after downloading the packages<br>
from sstate server.<br></blockquote></div></div><div dir=3D"auto">So i stil=
l need to build the image first to have the cache, which takes time if i ha=
ve a modest machine specs.</div><div dir=3D"auto"><div class=3D"gmail_quote=
 gmail_quote_container"><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"></blockquote></div><=
/div><div dir=3D"auto">Are there any public sstate caches that someone can =
use?</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail=
_quote gmail_quote_container"><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
We don&#39;t yet have the top level tool for doing this in a single step,<b=
r>
but I&#39;m working on it, and the code is ready:<br>
<a href=3D"https://pretalx.com/yocto-workshop-at-embedded-recipes-2025/talk=
/QJTEQN/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://pretalx.c=
om/yocto-workshop-at-embedded-recipes-2025/talk/QJTEQN/</a><br>
<br>
Alex<br>
</blockquote></div></div></div>

--0000000000004040e70635949788--

