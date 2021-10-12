Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24129C433F5
	for <webhook@archiver.kernel.org>; Tue, 12 Oct 2021 00:46:18 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web11.7197.1633999577174539416
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Oct 2021 17:46:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dJP8IY+R;
 spf=pass (domain: gmail.com, ip: 209.85.208.53,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id a25so58351765edx.8
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Oct 2021 17:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4l2EbTZrgJEUWi2l+a1XfBzc9pskBmkrofDqTtK08I8=;
        b=dJP8IY+RUDwsFmlFPUN1K3Q8/qwQDtLMhAZgJT4TkYMy/EoK/WJIV8LxauBvJmtXto
         RJ+BhD/69L+GpuS6P+X6Pgbsb+ggJhESS1m3n1f1k/FOIg+hXKhNgmCcJTTADDqYQj2B
         bXa6ifiZLIyHTou8Tydc3FW1TLe5+t+LuoMPEMYIkCeDS3QHOLBoURqAmpTZBJ79dS+I
         hUuzULHJ9PToq4tmYpO5tcM5jecz8TNl/c5wef89XgWmSWpjvOCa6Djxf6K9A8cOz6h+
         DsAFUMaBsQjmm4ylgFWhb5dYiv5VwztsNFgGuG17fek1qWYUIlW7ah/hg6Xa0jMeAkVD
         Xa1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4l2EbTZrgJEUWi2l+a1XfBzc9pskBmkrofDqTtK08I8=;
        b=NOIt+8rvNMT68MHBFw4RJgESOMwYPjs1Dr6pNv0Zobfxf4RK9GcB45lt1rQkom7B1Y
         3DaEwrMXXLk+0ZfBVVE9IhEHGaQCeoTnJahmPYaBLb8W6Z5+5qCIz5vVYch/Sdsl2LsW
         ba07oNcVVv1sFHczvbYYCWeYwZFWaKQS2YN5R7aCRSM4/I9TemDigHShFUpG9/gIu/C+
         wHMcdvVs4+CAb8TTUyF2raLN9cNLN+pqmHypVIeDm+KKVp8l5ROoefiBahUd1KcMA+03
         eJY3UFVV0XfOTeCt2Bmd+Cwt3idR8402h3RjZII7VqvMyXXePztwWlFhBMlleB0AQp3U
         lJ8Q==
X-Gm-Message-State: AOAM53280ccYTnGDbd5le4YEAo+c++oGZnP2anoRuhDZytfBE1r8dxYc
	Kbxu4X7UBwTLybpi1RYgt8msPRlR2lQkeeJ0U7o=
X-Google-Smtp-Source: 
 ABdhPJzcCGC/Gdv+z77z8qBUGQcVaRZVk74KR1kAydGNzH3Q0UpBAGbQHdxjH0q78AnTE2Ijp/qSJ28lfBezu145dtg=
X-Received: by 2002:a17:906:fca5:: with SMTP id
 qw5mr29292103ejb.315.1633999575643;
 Mon, 11 Oct 2021 17:46:15 -0700 (PDT)
MIME-Version: 1.0
References: <71f6581d-6d01-51a8-7c58-3582d57509f9.ref@yahoo.com>
 <71f6581d-6d01-51a8-7c58-3582d57509f9@yahoo.com>
In-Reply-To: <71f6581d-6d01-51a8-7c58-3582d57509f9@yahoo.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 11 Oct 2021 20:46:04 -0400
Message-ID: 
 <CADkTA4OiV40NZNYiUggSGjRQL62qW6gLbp8979ZfwY=8iR9RAg@mail.gmail.com>
Subject: Re: [yocto] building the kernel's usbipd daemon
To: chuckkamas@yahoo.com
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Oct 2021 00:46:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55024

On Mon, Oct 11, 2021 at 6:16 PM chuck kamas via lists.yoctoproject.org
<chuckkamas=yahoo.com@lists.yoctoproject.org> wrote:
>
> Hi all,
>
>
> I've googled most of the day, but to no avail. How does one compile and
> add to the image the daemon usbipd? Is there a bitbake file already for
> this? The code is part of the kernel found in the kernel tree:
>
> KERNEL_SRC_PATH/tools/usb/usbip/src
>
> and is invoked from the KERNEL_SRC_PATH/tools directory by calling
>
> make usb
>
>
> from:
> https://wiki.st.com/stm32mpu/wiki/How_to_build_Linux_kernel_user_space_tools
>
> PC $> cd <Linux_kernel_source_path>/tools
> PC $> make <tool>
>
>
> I would think that there is a preexisting recipe.

There isn't one that I've ever heard of, and the layerindex
(http://layers.openembedded.org/) confirms that nothing registered
with it provides that recipe.

So if you need it, you'd have to create a recipe .. and submit it to
somewhere like meta-openembedded if appropriate.

Have a look at the perf recipe for one of the ways we build tools out
of the kernel source. Something similar will work in this case.

Bruce

>
> thanks,
>
> Chuck
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55020): https://lists.yoctoproject.org/g/yocto/message/55020
> Mute This Topic: https://lists.yoctoproject.org/mt/86249103/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

