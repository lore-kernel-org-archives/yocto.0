Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A8F0C4332F
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 01:00:44 +0000 (UTC)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web10.48322.1702602040841835455
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Dec 2023 17:00:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=k5ROhiMz;
 spf=pass (domain: gmail.com, ip: 209.85.217.48, mailfrom: raj.khem@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-4647a565b1aso63484137.2
        for <yocto@lists.yoctoproject.org>; Thu, 14 Dec 2023 17:00:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702602039; x=1703206839; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rBQRXVNPvEV1NJPHY78qxi9ecSd5iYOLOI3QWUnoSgM=;
        b=k5ROhiMzP3lbBH4qmLLiRA62mNtwbQIf9c74e509hNSGGkyOlJ1eov4EuYUnoQwKiu
         evjlr5R5kimELp18dNkGWBfVrCYDIPwE5fO6eBHzT7qfRK2snX4KfhaVB8h0grO754Ep
         3f00bg5o2wZb97Sf3NdUfVDV9vyXuGnscZQZNeR7vATwSKWkodkUdHE9K0UghJSH9QID
         M8tqz1mvXgvIUYdXs8WVDq0ehchjtAnYG+vOxygNQYI1pW345RrXC5799kXRohRC3Bqc
         TUW6IorVq73uWCrJZuv4O6RSlB9HVCQjFOH+dqAcMa4rUaV/aof9rqCfKyriKzXW32Gn
         gjIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702602039; x=1703206839;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rBQRXVNPvEV1NJPHY78qxi9ecSd5iYOLOI3QWUnoSgM=;
        b=P2uY9GvNZ/R+JIqk8DGKOnlA54w0XsanPyIJhgjJgzPcbq/JLJ3OYgkZnOfLYp0U6Y
         LWVD0JIPdhRrtb19iYhDPtRvSSqrlxRrHDlxj0EjfbtmZEAjKY/dZsgL3RWlYR5QDwPG
         lN7HBTZ9AYQWM9wxPcrPtUi95G+m6KIsv/6Xzn9z431zX6foAlGlCrWOABNSmu6CM/PZ
         b1X2U8hn6stsXImyK+T22A5pkjLSbi/Gi1vxIA5/UexeyEu2lAEPwftcPSSi0IRAtFAQ
         /DXefXTAcunxYy57HMeEjEgo0f/3vOjxZq9jzTgO8eKrPcDtJ7+UMMePSAl/s/V/qcpW
         fzqA==
X-Gm-Message-State: AOJu0Yyz94F/buunJeVU+JxcRHsTXrMipPzmbUhIMVqp1mN99GhNimhm
	QithoFUV3LMznJn/g+oaGyuPjvGVzyZWAgn+DzYo6a7g
X-Google-Smtp-Source: AGHT+IFC3L8bq6EgdjRT/+EQ3rCzMxJ0E/YUnnUJB1Nc3wdBerlyNVzW6RvQ2G91IuXuHIeNcJz8YpEV+wyqN4SKx8A=
X-Received: by 2002:a67:bd19:0:b0:466:5997:a826 with SMTP id
 y25-20020a67bd19000000b004665997a826mr2103635vsq.55.1702602039429; Thu, 14
 Dec 2023 17:00:39 -0800 (PST)
MIME-Version: 1.0
References: <53e087bd-6afc-47b7-9810-5307ae91728d@mistywest.com>
In-Reply-To: <53e087bd-6afc-47b7-9810-5307ae91728d@mistywest.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 14 Dec 2023 17:00:12 -0800
Message-ID: <CAMKF1spgfn9YXR5CZONfiD8gQgsPFaD2uMmh+X=-uSS5Y_Ce0w@mail.gmail.com>
Subject: Re: [yocto] how to create symlink in dunfell after compilation of
 library file
To: yocto@lists.yoctoproject.org, ron.eggler@mistywest.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 01:00:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61893

On Thu, Dec 14, 2023 at 4:26=E2=80=AFPM Mistyron <ron.eggler@mistywest.com>=
 wrote:
>
> Hi,
>
> I'm working with dunfell and want to create a symlink after compilation
> of the library:
>
> I added the following in aziot-keys_%.bbapend:
>
> do_install_append() {
>      install -d ${D}/usr/lib
>      lnr ${D}/usr/lib64/rust/libaziot_keys.so ${D}/usr/lib/libaziot_keys.=
so

try using ln -rs instead of lnr.

> }
>
> Yet, after building the image,
> I do not see the symlink in/usr/lib/
>
> I did find the recipe for which I created the bbappend with:
> oe-pkgdata-util find-path /usr/lib64/rust/libaziot_keys.so
>
> What is missing?
>
> Thank you,
> Ron
>
> --
> Mistyron
>
>
> --
> Mistyron
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61892): https://lists.yoctoproject.org/g/yocto/messag=
e/61892
> Mute This Topic: https://lists.yoctoproject.org/mt/103181952/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

