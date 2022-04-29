Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4631DC433FE
	for <webhook@archiver.kernel.org>; Fri, 29 Apr 2022 12:49:58 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com
 [209.85.219.175])
 by mx.groups.io with SMTP id smtpd.web10.9671.1651236590701361400
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 05:49:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dqIu1oa6;
 spf=pass (domain: gmail.com, ip: 209.85.219.175,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-yb1-f175.google.com with SMTP id j2so14359626ybu.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 05:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SOt918Q5tLC9yfoSYSXVbzNfpXlEw2rjue1kgN8yipE=;
        b=dqIu1oa6ZSuIU4QMMKXrb2DaGWuOMpeiWkk6w5pofaS7Hl10xsRUUDR4gw1yRQyByW
         uZEAvGU7W8SFxz+DO8UVCm6TQP0wqNI2mtrWqn2+y/cJtZZT+C+OrzuGyp36UJoYbFUG
         nf6JS8mZ/Doin3wXKDnGkT5xmwURnuqhQzMMHYGPZMDqxx9/XHRaqjwAA7NKCYc0wzWQ
         3gzFNxVxWUVB8K1kQFrV/wwcJ8QZjvTEdmmQMFgpjWDJOXWaeN+BbV98318VK2179crF
         OIkgl3zrXd4N6tRGQUm6BjZqyre955vJv5hUGQZ7j3oFY1MKrHYPkN3OlTD68+8VziD0
         KX5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SOt918Q5tLC9yfoSYSXVbzNfpXlEw2rjue1kgN8yipE=;
        b=vc/icXXa6xzOXqUcoSfeYZ/ZqLN9aaR16vKjJGw7gNGUgQE8lIrDHwIynDkDvKtuB1
         SADVbVNDlL8Gwt/IwkWKCUUuYfyCzbv3+5TFZDdD7+yqGdD+1TCfCTLLw5UNMCm+WD+G
         v3JtBhUT6NbYfNuuza40V+pS79QuPAwT/wcYABrQy2BMbWzdIYqnTj+VlmW/nQx0FQxm
         WUPK06vT/wfDe6bPdY4qTttIYck5DA1TGXRcBOk/DamlfXckyGyZ3nnf22vgUE17ljMH
         bovADFNrcvcFhiueyZdjqedXVh4bsSKtVFMzl3X2HRm3wJIc6i0CVVbqKu27eVb0mOLT
         IHpw==
X-Gm-Message-State: AOAM530WZdCGB32BT12lko2/UY/jXGcKkhOGQvPBaNeQZ6UR6L6k0oy7
	NNR/Q9TXIHlbT6KUQreg6K9YYsDSWrB4/eOokkjdCxYesFo=
X-Google-Smtp-Source: 
 ABdhPJwPx0C2cKkni4CpRv6qiXbk8rp7QdDdJQofTrfG7ohLgRMVaFW5RqZibQIApncfIWagxpNBXzHzw3YUOrfxsaU=
X-Received: by 2002:a25:40c9:0:b0:645:71c9:b3a1 with SMTP id
 n192-20020a2540c9000000b0064571c9b3a1mr35344337yba.557.1651236589610; Fri, 29
 Apr 2022 05:49:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220429121411.2287536-1-ross.burton@arm.com>
In-Reply-To: <20220429121411.2287536-1-ross.burton@arm.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 29 Apr 2022 08:49:38 -0400
Message-ID: 
 <CADkTA4MFr22fjLAfG5CMgyogkXb_cycueuCVYAJ57=BAh3k-2Q@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder2 v2] config.py: add
 meta-virtualization to a-full
To: Ross Burton <ross.burton@arm.com>
Cc: yocto <yocto@lists.yoctoproject.org>, nd <nd@arm.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 12:49:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56957

On Fri, Apr 29, 2022 at 8:14 AM Ross Burton <ross.burton@arm.com> wrote:
>
> The meta-virtualization builder is reliable and useful now, so add it to
> a-full.

Acked-by: Bruce Ashfield <bruce.ashfield@gmail.com>

The meta-virtualization "team" will do my best to respond to breakages
in a timely manner :)

Bruce

>
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>  config.py | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/config.py b/config.py
> index 17ccd21..c1c8c7e 100644
> --- a/config.py
> +++ b/config.py
> @@ -10,7 +10,7 @@ buildertorepos = {
>      "a-quick": ["poky", "meta-intel", "oecore", "bitbake",
>                  "meta-mingw", "meta-gplv2"],
>      "a-full": ["poky", "meta-intel", "oecore", "bitbake",
> -                "meta-mingw", "meta-gplv2", "meta-arm", "meta-aws", "meta-agl", "meta-openembedded"],
> +                "meta-mingw", "meta-gplv2", "meta-arm", "meta-aws", "meta-agl", "meta-openembedded", "meta-virtualization"],
>      "non-gpl3": ["poky", "meta-gplv2"],
>      "meta-mingw": ["poky", "meta-mingw"],
>      "qa-extras": ["poky", "meta-mingw"],
> @@ -88,7 +88,7 @@ trigger_builders_wait_full = trigger_builders_wait_shared + [
>      "qemumips-alt", "edgerouter-alt", "qemuppc-alt", "qemux86-world-alt",
>      "oe-selftest-ubuntu", "oe-selftest-debian", "oe-selftest-fedora", "oe-selftest-centos",
>      "qemux86-64-ptest", "qemux86-64-ltp", "qemuarm64-ptest", "qemuarm64-ltp",
> -    "meta-intel", "meta-arm", "meta-aws", "meta-agl-core"
> +    "meta-intel", "meta-arm", "meta-aws", "meta-agl-core", "meta-virt"
>  ]
>
>  trigger_builders_wait_quick_releases = {
> --
> 2.25.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56955): https://lists.yoctoproject.org/g/yocto/message/56955
> Mute This Topic: https://lists.yoctoproject.org/mt/90774395/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

