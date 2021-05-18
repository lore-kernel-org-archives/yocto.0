Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web12.10075.1621351024973496649
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 May 2021 08:17:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=DnEiNooj;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.171, mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f171.google.com with SMTP id y12so7653877qtx.11
        for <yocto@lists.yoctoproject.org>; Tue, 18 May 2021 08:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mNLs9J6Pi+kym6+j6VzQbVLcsv7d4LRKOvs0LfoSbb0=;
        b=DnEiNooj9GTvsMY31JWS8hbRXVjdsxA/2/DTyz5OSLKyAiDZj+/rN5bw19XsxK5Au1
         x6Iu36xord23CYMW+wfJNtXjiqS9Dt5pQTZvZ+pdJmixcBmg5o3ibGcE22Fm0jGNwnXw
         f19PB9Sysfph4WsRSf3fRvgO2s1K8L4T28Er7ZSezdO1MOlbsF5PhgOoV4BDocBvkmtm
         Z/6EF2It46N8Js4ikHdzw/UZRNOKqyYLwalxrYHjHhc8aWt4aRp7XnbqnVhv9ZTZuWWt
         nm2MF6KvVWzXKP/jkrWDAJ7xOfYZO3uUa24uO9vaJRono9gM2Cg+ILnLSTLlFU82LOi1
         t5Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mNLs9J6Pi+kym6+j6VzQbVLcsv7d4LRKOvs0LfoSbb0=;
        b=f/BeaH0A1Ddt9xgSPmehmiKGuSAcnQCa5EsiTHtuXukywEMJEB3ARgzyhiD5tob9Lf
         fvq+4WgCsTMynLHq1zGmP6Btbje84KG26ur68lXnO15l/NYzKeaKNZ72c0MzXeTGzh5T
         81ZAprKN6Xe45TuAGvD1Mz1kXcdqs8gYmbquniibFW5hFZNnGM5A2dgH+TVF3hz2RQck
         aG/qky5OuraCp0xLFrq2fGo7jOMrbtyyzxU4W2CdattyK4bDSS3Q7+mro2qdwzbCeVym
         oh+pz0CMKvkOEbpJwH1/GHfkDs87obOP+KZBYh6ekCAzXWo71resrnWYyDi9Nof6N9yM
         IYTA==
X-Gm-Message-State: AOAM532+YrVK0LaXWECaNgbPsnHz0APnolPhAGKLjOOX8jHC6+t/q1O2
	pqZBuujCQT67fbuF+sGJxknmJfuRmCnCSGctoONpvQ==
X-Google-Smtp-Source: ABdhPJwb0IHmURkKosuRDzAErGwl/4Lbvcbb8MKkn0q0+M3nOJqFnBfxpYPsOdj1n8NwmZKrgaBOEN0U+TTIxhCvcHs=
X-Received: by 2002:a05:622a:1212:: with SMTP id y18mr5227379qtx.15.1621351024061;
 Tue, 18 May 2021 08:17:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210518122927.2554655-1-zmuda.w@gmail.com> <20210518122927.2554655-3-zmuda.w@gmail.com>
In-Reply-To: <20210518122927.2554655-3-zmuda.w@gmail.com>
From: "Jon Mason" <jdmason@kudzu.us>
Date: Tue, 18 May 2021 11:16:52 -0400
Message-ID: <CAPoiz9wP6+k5BOiuqhZ5UjKC+ZAFuqgFj7beGzPXRvLch=oW_A@mail.gmail.com>
Subject: Re: [yocto] [meta-zephyr][PATCH 2/2] zephyr-kernel-src.inc: set default preferred version to 2.6.0-rc1
To: Wojciech Zmuda <zmuda.w@gmail.com>
Cc: yocto@lists.yoctoproject.org, Zbigniew Bodek <zbigniew.bodek@huawei.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, May 18, 2021 at 8:30 AM Wojciech Zmuda <zmuda.w@gmail.com> wrote:
>
> From: Zbigniew Bodek <zbigniew.bodek@huawei.com>
>
> Signed-off-by: Zbigniew Bodek <zbigniew.bodek@huawei.com>

Do we really want to have Zephyr on a release candidate?  IMHO, we
should never be doing this, as we should want the kernel in
meta-zephyr to be as stable as possible.  If this is really desired,
perhaps a master-next branch for things like this.

Thanks,
Jon

> ---
>  recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> index 5ee40d4..9fc08ba 100644
> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> @@ -2,7 +2,7 @@ LICENSE = "Apache-2.0"
>  LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
>
>  # Default to a stable version
> -PREFERRED_VERSION_zephyr-kernel ??= "2.5.0"
> +PREFERRED_VERSION_zephyr-kernel ??= "2.6.0-rc1"
>  include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-kernel}.inc
>
>  inherit cmake
> --
> 2.25.1
>
>
> 
>
