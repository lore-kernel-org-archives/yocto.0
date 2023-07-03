Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98DDEB64DC
	for <webhook@archiver.kernel.org>; Mon,  3 Jul 2023 04:40:19 +0000 (UTC)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
 by mx.groups.io with SMTP id smtpd.web10.20691.1688359217739191104
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jul 2023 21:40:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=iwA52IWA;
 spf=pass (domain: gmail.com, ip: 209.85.160.47, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-1b38121a011so1144603fac.2
        for <yocto@lists.yoctoproject.org>; Sun, 02 Jul 2023 21:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688359217; x=1690951217;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kKkdgBIYxUMpM1Y0oLRCZ/hXlj5ufF6q80TutEOd/AM=;
        b=iwA52IWAlBcPBmizPDhUXRuq0FNEUdJntInu44xwix2KdTkautDFKHmwa/XVxb1Bor
         3R9ZXSVyklqoR46/O+cwp+OZrI3LkvG/MgMBkY4mVlkKH5Z7to7SasRH5EIFHGQPx8iF
         RNUK+D7U4SKmfj4oMtekKAvINZUXW0J7MM/0GfVu6siA7MDYPNdJ/CSePic7KfpLXA0v
         dTGhmrqfCrHvBpoiK+QnpfSp2YKiJLRj/JErQ0AwsTl3zlM50hSoQhGjKpL3QDvtTPx/
         Ig8VWNArc9wOm0jvUhRdyK842Q4eRmx3L63g2AOoiosDD+5n5oCqf6Q1VGPBklZLsyyX
         LYpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688359217; x=1690951217;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kKkdgBIYxUMpM1Y0oLRCZ/hXlj5ufF6q80TutEOd/AM=;
        b=N0UjN1Yv6PN4L8bjWSO5TRE3ZcanbZypA22V/Cakw8vo7WRoK6A3iMKzwip3aI9uGX
         3ZEREsJtnc6PZilNpYOjboNjBgpgfz1I6wl/S8ZKDnuWGJ5lB1NdObZJ9CvoK8I9vYor
         sJ3xtRrqRssx4HmkkVrugXdGk4xOq9U66QRU7N8BjbFOAJ0ivRyb5ERQw/UKs8jW/YV2
         7qeecuToNStHYftFOfyWJFAsv56ENNU+U6QayI3oqzYMO6mA1Crm6EuSQb2E++/8TkNr
         bdlY9QqCXATWEPzGQONN5WMqVEOkfQ3YCIAYROFB8r3Bt8TIoEKchOdeVCvv1LGI+08G
         d2vw==
X-Gm-Message-State: ABy/qLZ1lYNv6Jpd5ywK6rPbaVYNaSYhNZi+5tKuJ95GTv4vXrXfGFVC
	FaEOvvh1nsvuN+BECa8uPxQkT+36KRJL6/x74PA=
X-Google-Smtp-Source: ACHHUZ7Hl0TKsw7U7QJuSBu8TpERl5wmSN3mRY6RSpFIZ+3r9BRwkgPPoPJKq2fL9MYhjJ1Y0RtTe2eHygLrN/e3PjI=
X-Received: by 2002:a05:6871:6b03:b0:19f:5958:3b01 with SMTP id
 zg3-20020a0568716b0300b0019f59583b01mr6130751oab.16.1688359216475; Sun, 02
 Jul 2023 21:40:16 -0700 (PDT)
MIME-Version: 1.0
References: <20230626190720.2565542-1-Martin.Jansa@gmail.com>
In-Reply-To: <20230626190720.2565542-1-Martin.Jansa@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 2 Jul 2023 21:39:50 -0700
Message-ID: <CAMKF1srH_AjqP0KYLFeDDSyQz0LFaSJ0amBviu0cwCOTGuEVSw@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip] [PATCH] trusted-firmware-a: add
 Upstream-Status to .patch file
To: Martin Jansa <Martin.Jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org, twoerner@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 04:40:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60493

I sent a similar fix few weeks ago

https://lists.yoctoproject.org/g/yocto/topic/meta_rockchip_patch/99688580?p=
=3D,,,100,0,0,0::recentpostdate/sticky,,,100,2,0,99688580,previd%3D16883298=
45307017082,nextid%3D1686842669287400371&previd=3D1688329845307017082&nexti=
d=3D1686842669287400371

On Mon, Jun 26, 2023 at 12:07=E2=80=AFPM Martin Jansa <Martin.Jansa@gmail.c=
om> wrote:
>
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  .../files/0001-dram-Fix-build-with-gcc-11.patch                  | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-wit=
h-gcc-11.patch b/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-w=
ith-gcc-11.patch
> index 14defed..94ca8e2 100644
> --- a/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-1=
1.patch
> +++ b/recipes-bsp/trusted-firmware-a/files/0001-dram-Fix-build-with-gcc-1=
1.patch
> @@ -12,6 +12,7 @@ plat/rockchip/rk3399/drivers/dram/dram_spec_timing.c:78=
1:11: error: explicitly a
>                  ~~~~~~~ ^ ~~~~~~~
>
>  Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +Upstream-Status: Pending
>  ---
>   plat/rockchip/rk3399/drivers/dram/dram_spec_timing.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> --
> 2.41.0
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60451): https://lists.yoctoproject.org/g/yocto/messag=
e/60451
> Mute This Topic: https://lists.yoctoproject.org/mt/99795035/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

