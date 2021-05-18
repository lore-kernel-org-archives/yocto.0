Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web11.205.1621353627432092382
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 May 2021 09:00:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=zwW+5Y+L;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.219.53, mailfrom: jdmason@kudzu.us)
Received: by mail-qv1-f53.google.com with SMTP id u33so5169352qvf.9
        for <yocto@lists.yoctoproject.org>; Tue, 18 May 2021 09:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=G1yuTsP5hU4f8yhxwk63qffnKCa7xIBN0jiiWjKFI40=;
        b=zwW+5Y+LB3KR6J8pRxdaPGbJ9YTpiFCKELFIODeH0qrWCZtj2m+JlXLQmwsERINf8z
         De2vYRAyibrbv4FycmSUw+4ssfmmK6sEn/Rn/x4v1z7HwtPYVWPW6EcNjWf/L+8+61eT
         17lv/xcLk0Bp0sDpxbsLqMFuE8y7nTsJgkwLQBHZHNKybIqWUFLxwDWqMMb1xqZN1zCi
         lH468r11umCEcTgMFpjEnL2MA/F8JdREJPDJi75BIBZM6Hm3xGd0eDb6rpskPPtuykV5
         IrY3x8p2SP8RgDOIqV7fq+cXCkeweubjGA/B20AnDnEnJiHuzTCYbWnfaIQjigih02dN
         Pg7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=G1yuTsP5hU4f8yhxwk63qffnKCa7xIBN0jiiWjKFI40=;
        b=BKQ9VGrPL5z/3eaWEWAEffEMyFga0hcmb+YjWGintBHx84dAY+0pCLk4QzT6rYFYhA
         Gj5D0xo1bQezaA2YLeQ6zB/wY2p5k1eJv9rVFKhPDQZ3if6zacrM98Sq9bhQ9qAklqRz
         0LdOeUs83bhaO1Ls2wv5WEiBsYmRrpH55j3dWc+g2ZSOxu8zHMgnovTQd1LFtDgXFYiI
         BciPlipo5VN+rZWgLEObsA7/67DP1jrbkMpiKZFUgaxx5p6YFJgh1c0/wd1mGy0EU+IA
         Ia8z+vWihkTLj7edfJXy+yCXQ52jnGNPjeQGItjFx1U8qXuMs99mRhaG4sBqGWiH3W0g
         9DWg==
X-Gm-Message-State: AOAM531+zkoYJ6fSqkL+lGn8SCifyAfCH7Q8Ubai6XEhJ6Mw6MSZ8GYe
	rUvkwPqMyoIGrPW7Oc7YUUTaA0yOG3+cHKAphOzBhA==
X-Google-Smtp-Source: ABdhPJw25LFzpBCKwr/RhxpIcn9Nuy0f1+uJB/T9zo2By9OCaIbMbmfY6Lfi20Sh5fxBnrj6Gm0YmX7p14bLM05gRIQ=
X-Received: by 2002:a0c:e601:: with SMTP id z1mr6739844qvm.62.1621353626213;
 Tue, 18 May 2021 09:00:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210518122927.2554655-1-zmuda.w@gmail.com> <20210518122927.2554655-3-zmuda.w@gmail.com>
 <CAPoiz9wP6+k5BOiuqhZ5UjKC+ZAFuqgFj7beGzPXRvLch=oW_A@mail.gmail.com> <916c2b8e69224dba9179edff271c659d@huawei.com>
In-Reply-To: <916c2b8e69224dba9179edff271c659d@huawei.com>
From: "Jon Mason" <jdmason@kudzu.us>
Date: Tue, 18 May 2021 12:00:12 -0400
Message-ID: <CAPoiz9w0hm_L_KZH+eM4bnPDdJzkt+ETwuteCPyfW4PAmoChsg@mail.gmail.com>
Subject: Re: [yocto] [meta-zephyr][PATCH 2/2] zephyr-kernel-src.inc: set default preferred version to 2.6.0-rc1
To: Zbigniew Bodek <zbigniew.bodek@huawei.com>
Cc: Wojciech Zmuda <zmuda.w@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, May 18, 2021 at 11:24 AM Zbigniew Bodek
<zbigniew.bodek@huawei.com> wrote:
>
> Hello Jon,
>
> Thanks for your comment. I will try to answer.
> This change is to include following bug fix: https://github.com/zephyrproject-rtos/zephyr/pull/33251
> I can also see we've had multiple RC versions in the past but in principle, I'm not against your suggestion to have master-next, etc. So where should we go from here?

My recommendation would be to pull that patch out and apply it
directly on top of v2.5.0 (assuming that is feasible).  Maybe even
asking the upstream zephyr project to port this to v2.5.0 and make it
v2.5.1 would be the optimal solution.

As far as a master-next branch, that would be up to Naveen.

>
> Kind regards
> Zbigniew
>
> -----Original Message-----
> From: Jon Mason [mailto:jdmason@kudzu.us]
> Sent: 18 May, 2021 17:17
> To: Wojciech Zmuda <zmuda.w@gmail.com>
> Cc: yocto@lists.yoctoproject.org; Zbigniew Bodek <zbigniew.bodek@huawei.com>
> Subject: Re: [yocto] [meta-zephyr][PATCH 2/2] zephyr-kernel-src.inc: set default preferred version to 2.6.0-rc1
>
> On Tue, May 18, 2021 at 8:30 AM Wojciech Zmuda <zmuda.w@gmail.com> wrote:
> >
> > From: Zbigniew Bodek <zbigniew.bodek@huawei.com>
> >
> > Signed-off-by: Zbigniew Bodek <zbigniew.bodek@huawei.com>
>
> Do we really want to have Zephyr on a release candidate?  IMHO, we should never be doing this, as we should want the kernel in meta-zephyr to be as stable as possible.  If this is really desired, perhaps a master-next branch for things like this.
>
> Thanks,
> Jon
>
> > ---
> >  recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > index 5ee40d4..9fc08ba 100644
> > --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
> > @@ -2,7 +2,7 @@ LICENSE = "Apache-2.0"
> >  LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
> >
> >  # Default to a stable version
> > -PREFERRED_VERSION_zephyr-kernel ??= "2.5.0"
> > +PREFERRED_VERSION_zephyr-kernel ??= "2.6.0-rc1"
> >  include zephyr-kernel-src-${PREFERRED_VERSION_zephyr-kernel}.inc
> >
> >  inherit cmake
> > --
> > 2.25.1
> >
> >
> > 
> >
