Return-Path: <mans.zigher@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F04CC4167D
	for <webhook@archiver.kernel.org>; Wed,  6 Apr 2022 16:33:18 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
 [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web09.6535.1649237515018849313
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Apr 2022 02:31:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ap8L+u9N;
 spf=pass (domain: gmail.com, ip: 209.85.210.169,
 mailfrom: mans.zigher@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id 7so1931694pfu.13
        for <yocto@lists.yoctoproject.org>;
 Wed, 06 Apr 2022 02:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8djdLjroKPtJDbPWmSfes7xrLUvBy8wtflEYmfjc3ys=;
        b=ap8L+u9NnIgaEeCDNGnNVt6XM7A4fGx550t0obM1zX2SyUo5Srgdwtc914pX9WvwpR
         GQQNP/Q3Chw7ajns+aaxup6jHwAn9ZWukwsNCl5nm9ZCYUAGpB2N7eh33WzrwU+VA4N0
         sBN0gTQlX3H9LjfsOcPwawzuFZR8uLnZoF/maVCcsWx+quKn951lpF0Lytym3kyT0LGC
         Z7rznl9OzJocPP0AJXGgmnW2oFE6Lql3fd3vO66TwVInroh+OG9i+HLOXTwjGthtjGJ1
         YbgiJ9vmsjX/2wkV9+Gd7Sp5KGqHSa2WeXYpTnfwikf/QCxglT93Yz5ffyR5YH9NsO/m
         z4UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8djdLjroKPtJDbPWmSfes7xrLUvBy8wtflEYmfjc3ys=;
        b=UhxY8kXjsF3USwvk9AfhtPu+Sy6Pl3hwxYddLLmLxi4V9pOjAhNEIK3Nvn3yWPq0xR
         +4T+sGH09CdOLNVo2fceRZ/6n0gqc47APpq++/5IfuV/b9sZDs2SmL7kQsAuHH9gKo48
         cEi2WHjziVLuX+MlVSZEQMROWUE6QrIRka0RGClTlxpbya+xpRcRlQF5h2p2pxTaoRGW
         ieGLsCckwBvK4TsWC9byt5OJAkr6YqKbBjZV+nfzNJV2ygH3kDl2bmwi7R0bllJ1cak2
         66z/wOQXQqwnqzbt2vqMCrqyKdV45BQ/3+acKNQjG+FnD34CTr9AbHJbk/ZKlQLqH4tH
         rR0g==
X-Gm-Message-State: AOAM530InRnoMoOejaPmtT7/i3xrusG0LeL1eYUmiVY2KQkndbkGuzWy
	wV6jW66eSgmO0CMysLrOkV0bGDV1Liv3TxT7oFI=
X-Google-Smtp-Source: 
 ABdhPJzinckjq9TfxRX2H/KBX+gEDYwHPAD7+43I5TvP6vAFKZNAcDZLZbP0iiO767RFU/cnCTklCVyXd0Ai4qng+4s=
X-Received: by 2002:a05:6a00:2887:b0:4fa:e10c:7ca with SMTP id
 ch7-20020a056a00288700b004fae10c07camr8015942pfb.9.1649237513356; Wed, 06 Apr
 2022 02:31:53 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
 <Yk1cHGAei1P6fB4w@korppu>
In-Reply-To: <Yk1cHGAei1P6fB4w@korppu>
From: =?UTF-8?B?TcOlbnM=?= <mans.zigher@gmail.com>
Date: Wed, 6 Apr 2022 11:31:42 +0200
Message-ID: 
 <CAEhQi8=kKfvn1HNnny3MU-b_QJEduXQHW1JarKHA20O33n_1JA@mail.gmail.com>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
To: Mikko Rapeli <Mikko.Rapeli@bmw.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Apr 2022 16:33:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56676

Thanks all for your quick response. You have given me something to
think of so I will look into it to see if some of my issues are
related to the way we have set things up. I will post my findings once
I have gone through your comments to see if we could use it in our
build.

Thanks

Den ons 6 apr. 2022 kl 11:23 skrev <Mikko.Rapeli@bmw.de>:
>
> Hi
>
> I set INCOMPATIBLE_LICENSE_append = " GPLv3 GPLv3+ LGPLv3 LGPLv3+"
> but then allow compiling several recipes with those licenses as long
> as they don't end up on images and in the product. For example:
>
> ...
> WHITELIST_GPL-3.0+ += "cairo"
> PACKAGE_EXCLUDE += "cairo-src cairo-dbg cairo-perf-utils cairo-staticdev cairo-locale"
>
> WHITELIST_GPL-3.0 += "binutils"
> PACKAGE_EXCLUDE += "binutils-dbg binutils-staticdev binutils-dev binutils-doc binutils-locale libbfd binutils"
>
> WHITELIST_GPL-3.0 += "gdb"
> PACKAGE_EXCLUDE += "gdb-sdktests-dbg gdb-sdktests gdbserver gdb-dbg gdb-staticdev gdb-dev gdb-doc gdb-locale gdb"
> ...
>
> I do this in the distro config.
>
> Results works but you may need to revisit several recipes and detect where exactly
> the GPLv3 license is being used.
>
> bash dependency is annoying but products can be made without. Same for GNU readline
> support.
>
> These are much work and better then using meta-gplv2 with its unmaintained SW
> versions.
>
> Would be nice to collaborate in yocto upstream on a build config which disables most
> GPLv3 packages from rootfs but keeps the development tools etc working in
> the SDK.
>
> Cheers,
>
> -Mikko

