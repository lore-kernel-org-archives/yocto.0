Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web08.4384.1603333761539432179
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Oct 2020 19:29:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MU3JZALj;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id bl9so178844qvb.10
        for <yocto@lists.yoctoproject.org>; Wed, 21 Oct 2020 19:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=akSXdY+UKREpF+SdDwBmqr8MQFT2qhA9dOwMBUgKbMs=;
        b=MU3JZALj1Vywmqb9C5zd8P7urwwcxWWnFpF6HYg+xcRpw3HF7O7KOD1Ic1fJCV/xK4
         nrjqJZNTMcgeIpdNYSPXXRx4dThCHV3KeZhQ22C0cRyPQ92kOl+UDSYQI2bba8L22hGF
         8+u4qDIIm8ZSg13AuvO4+5dgncY3AFufydfcl/01nTSizQ22NpuOozRakJYXGJaReW1+
         2WRORfXf7LS++CqOsbXXzMlG9v4GOmAuQuSf40KPpJi6zP3Tyl61eeASoq/Fz3cKQHw9
         GNK7fuKjr0TXg7u6W2uLVRjynCTTdLO2vdWQV4aJVcPJNBxYEU10TqiK1o3p0a2OLDpW
         y5KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=akSXdY+UKREpF+SdDwBmqr8MQFT2qhA9dOwMBUgKbMs=;
        b=SJ2p85w8PEH4VVkC+QWxhc0SwDks165S8pUvW0gxvnWO0CmKVE6m9Qp4RCVl+MmgrU
         LGqIVABFB8q8HOpLZTkyePSdIb/N1u4xVXQN2ZB3Zlq4FTQqMHdY74rjwWBTeye6VW6p
         bwDxplET+sZLLt00eeLoS6gdnaTraLIr7ZGqcP9Z3HcvNHR7VbyfKeYMjXOvEaGjpJic
         JZifrptWuaiLR+eirb3OGc7id/p3Ce6Ijx6+BqQtjzDLI/408wtew+vp49we8GYgXJgr
         CjxlO03xx52h+pOAkaZ73n5cEqpKBq7VOz6anMXzivIgFpeypLLCmay5OMjpjo/PXYcl
         h+9w==
X-Gm-Message-State: AOAM530npedssq9PA5Jz+zrNK8FYFdHiCOBbWo9ryGaNg8tEmbCGuJ2O
	wB22fjWG18I3Aa5N3emtnb33XLIcn+RmACQUPjs=
X-Google-Smtp-Source: ABdhPJx+QWHln5spNqW0AaAJ1EX0EAVvwoGsoYV/ycggcdKmBvhbD7dhs1ehn0qJ46VjHG9gSqws2X8l0QcHz0FstZQ=
X-Received: by 2002:ad4:58f2:: with SMTP id di18mr403783qvb.19.1603333760646;
 Wed, 21 Oct 2020 19:29:20 -0700 (PDT)
MIME-Version: 1.0
References: <20201021072126.8790-1-naveen.kumar.saini@intel.com>
In-Reply-To: <20201021072126.8790-1-naveen.kumar.saini@intel.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 21 Oct 2020 19:28:54 -0700
Message-ID: <CAMKF1sqd==Q2w938evTwJ+bo9N3S8rm3dzoT8bgiAGP=uUGcvg@mail.gmail.com>
Subject: Re: [yocto] [meta-zephyr][PATCH] qemu-cortex-m3.conf: Disable RNG passthrough
To: Naveen Saini <naveen.kumar.saini@intel.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 21, 2020 at 12:13 AM Naveen Saini
<naveen.kumar.saini@intel.com> wrote:
>
> Qemu system does not passthroth RNG on x86 host.
>
> Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
> ---
>  conf/machine/qemu-cortex-m3.conf | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/conf/machine/qemu-cortex-m3.conf b/conf/machine/qemu-cortex-m3.conf
> index dd1ce56..3a50796 100644
> --- a/conf/machine/qemu-cortex-m3.conf
> +++ b/conf/machine/qemu-cortex-m3.conf
> @@ -12,5 +12,6 @@ QB_SYSTEM_NAME = "qemu-system-arm"
>  QB_MACHINE = "-machine lm3s6965evb"
>  QB_OPT_APPEND = "-nographic -vga none"
>  QB_CPU = "-cpu cortex-m3"
> +QB_RNG = ""
>

this looks fine.

>  ARCH_qemu-cortex-m3 = "arm"
> --
> 2.17.1
>
>
> 
>
