Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDDABC433F5
	for <webhook@archiver.kernel.org>; Tue, 14 Dec 2021 03:41:26 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web12.21754.1639453286314514302
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 19:41:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YHAypSGV;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id kl8so16300857qvb.3
        for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 19:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=qc83ucRkjImFRXwZ0m1GXhAcVYtI4L+OschQZT//12E=;
        b=YHAypSGV/rhDfEwaDFgmKQiMIIuQOUH0dq4fZMDnjsochWFdghn9Q4c1SOgP7rh1IQ
         wruR/ZtbKxQu0SHBBbCemLAapBA6cAx6OQVUwhuvun42hTLvnaHHb7s6YfM+M/UWLSA2
         mXsBUmz9sQD5SbIHZxw7ILSZUYq9exk4Cr18p/C/ikIwVmYt91Lcav5ZgJZE+18Qk1U7
         zEJpKDS1XQtuHTcb6fUEmvYjusQZXAJleEN8ZPJ4i3Kaq+fLw8BkBBXWQDYHwfMuhs0/
         vQ+xHX4Nu5Mva0B16Aac+yLxTmR9mvICvaa66BqgTNSRoxDsAJd0A3zt9SOVZc/n5GwM
         m1Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=qc83ucRkjImFRXwZ0m1GXhAcVYtI4L+OschQZT//12E=;
        b=yQU0IP8G1MZQ7AQmvuJu/2RQWnuWD8UyBRLAzd9zEVsex4+xNCafJtNf2Iw8SFco/f
         T+pSUk5KfwRDEmHrlZ0SsC/hHBD2E6YIAZH0QwT/F/+mnnl53x/dWC7SV3QLTrvO9yqw
         xXEAS4zcw/Cafneks2O47VSLin1Amwk71jox+QXAFn/quXeaHWqaMleEoXZuhdpNc4C7
         KlFUhg/fHMNCXnalv40qTA9i/xb0F07+wgHkbFUg8Jy8U+OH/NSi768ClTfcdny0igLT
         qsqVx5wdULPjKLx7o7VtMw+jDKYEfHWowosKtfhkk9NSkJAH3DP1cPTpBk8jjpdZ/zGI
         Qs6w==
X-Gm-Message-State: AOAM5303mEnUVZYHg2NmufwBxNpnhGDp7LFZ9V5h5VpdQ2aBshL5BpN0
	FJvykUYF77kcfp2o+Gq2MglSDiZ7nu11mglDFBE=
X-Google-Smtp-Source: 
 ABdhPJzlQiUO1WjouDhpsNEj7xmlK/wklekLZIIpv1YbdeXrtk18emLW7Mkw+UFT2kc+Ir668zj2r87UyyQwTKamBvM=
X-Received: by 2002:a05:6214:2429:: with SMTP id
 gy9mr2814400qvb.36.1639453285361;
 Mon, 13 Dec 2021 19:41:25 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAE+BM3kpKNrJjPwB8ivuT4A2+WgEtOm+6XoSXtD_9Q6z08EKhA@mail.gmail.com>
In-Reply-To: 
 <CAE+BM3kpKNrJjPwB8ivuT4A2+WgEtOm+6XoSXtD_9Q6z08EKhA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 13 Dec 2021 19:40:59 -0800
Message-ID: 
 <CAMKF1soBdWiX+bL8F99OSD1nTS+T0J6Aj2nVV0qZsdq8giLLOw@mail.gmail.com>
Subject: Re: [yocto] Running unittests built by SDK
To: Rusty Howell <rustyhowell@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Dec 2021 03:41:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55572

On Mon, Dec 13, 2021 at 6:21 PM Rusty Howell <rustyhowell@gmail.com> wrote:
>
> We are building our software with a Yocto SDK we created against our imx8=
m board. We would like to be able to execute unit tests (C++ tests written =
in Google Test) quickly without having to copy our unittest binaries over t=
o an actual imx board to execute them. For sanity, we are also building our=
 linux distro for MACHINE=3Dqemux86-64 and beaglebone-yocto.  So we have SD=
Ks for imx8m, qemux86-64 and beaglebone-yocto.
>
> Is there a MACHINE type that we could build that would be suitable for ex=
ecuting compiled C++ google test binaries directly on Ubuntu 18.04 or 20.04=
?

I think using qemux86-64 might be your best bet, its fairly automated
with runqemu script
all you would need to do is package up the gtests as ptest package with a r=
unner

> Thanks
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55571): https://lists.yoctoproject.org/g/yocto/messag=
e/55571
> Mute This Topic: https://lists.yoctoproject.org/mt/87713559/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

