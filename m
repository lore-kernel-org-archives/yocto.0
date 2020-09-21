Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
 by mx.groups.io with SMTP id smtpd.web12.41233.1600692834116961877
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Sep 2020 05:53:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hlXBVIRL;
 spf=pass (domain: gmail.com, ip: 209.85.221.66, mailfrom: jpewhacker@gmail.com)
Received: by mail-wr1-f66.google.com with SMTP id k15so12620968wrn.10
        for <yocto@lists.yoctoproject.org>; Mon, 21 Sep 2020 05:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tfgZme2r6saRg4fLTU87hHKgyY6jd9fSjsMiYsEuKeY=;
        b=hlXBVIRLtal1//i0lkoOotYGZX43j4QXZ8RBkbK5M59uDnrXScBIjhm7/8QBuHcV/v
         5VHUgLNZ2GgMrl2AE9DBtWjk/6ioDWYfwGHuTOIvAlWQ+eD3zlHUi4JmVJp38MhaWAJT
         hubh2fZf2GU/e7n71rLCqmNIm3NfrmkPv58qhsMd5MUzi4vs5I818wiq4Q3zZbXDG9HY
         wLTnAChhHC6ZCBDfeDS72P17FQOA82c79QRmp6MpdFQ+jKbI5GpBgaaDICMYpXYKZMyP
         5YeO+YnKUWsujG4P7waBIMkS3CkPL/xI9osFryDeecU+XhPFeIv9JiCGSKWAEjLUoFVx
         ZztA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tfgZme2r6saRg4fLTU87hHKgyY6jd9fSjsMiYsEuKeY=;
        b=BA6lURci6zML68SLq4OK9MiI96MwzDLsuJvijcnrcN1Nzpn2LP2xTyNQaHDxPfNIS1
         2hvO5lyu0ibW0j1znBjhyNqR6OuoLRsfntNPXw647kiDWU0FWvF/at7gExjqTTKNoRq3
         eC0obGE3IFiciOGT49g/Y1McYOPuQJQJ/3itCy0uNbv2dr1PF5CUitcRPDkdGDf4TSZA
         tDUqhT0QgY592Ahtj725F51WyklUVgU/2T7CD90yp0WQ4oomHtpHbXMANRV53Cw53Dsj
         UbiNkh9wBDlA1U9HYP3zpnVwYHGKjMggNv+Zprs+JpxH+iZLsq1FnYjZ4TliMzP5rrLJ
         XlIg==
X-Gm-Message-State: AOAM530ViKGiMRHSJtIjNi3zjwPjauxhkPQPmzOamtGojyOXwTTCd37d
	wC+dVW9iHfBevDQC4ACd9ImuI/AFP5M+tiGE9dI=
X-Google-Smtp-Source: ABdhPJy2mx7lVhbBEiWC/l0gAZN8az7rEMW5k2a7R5q6lLE2Egy4PH3OI6bAP6tXxGukC5rjOlfOeDl8TFPXTs3pHwo=
X-Received: by 2002:adf:9d44:: with SMTP id o4mr53137336wre.361.1600692832364;
 Mon, 21 Sep 2020 05:53:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200918122951.23340-1-samuli.piippo@qt.io>
In-Reply-To: <20200918122951.23340-1-samuli.piippo@qt.io>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Mon, 21 Sep 2020 07:53:41 -0500
Message-ID: <CAJdd5GYfG-_fMFepyL4V1PFcdcvHsQbODaa1bTii-QTaJx6b0Q@mail.gmail.com>
Subject: Re: [meta-mingw][PATCH] Override SDK_VENDOR
To: Samuli Piippo <samuli.piippo@qt.io>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 18, 2020 at 7:30 AM Samuli Piippo <samuli.piippo@qt.io> wrote:
>
> Set SDK_VENDOR to '-w64', which makes the host triplet match what GCC
> expect to find when using mingw32-w64. This enables features that are
> not functional in the classic mingw32, but have been implemented in the
> mingw32-w64.

Does this enable it for the i686 toolchain also? Does that make sense?

>
> Disable 32bit libs from the runtime component when compiling for 64bit,
> which were enabled as a side effect of the GCC config change.
>
> Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
> ---
>  conf/machine-sdk/include/mingw32-common.inc                    | 3 +++
>  .../mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb             | 2 ++
>  2 files changed, 5 insertions(+)
>
> diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk/include/mingw32-common.inc
> index 9011ded..bc6c91e 100644
> --- a/conf/machine-sdk/include/mingw32-common.inc
> +++ b/conf/machine-sdk/include/mingw32-common.inc
> @@ -1,4 +1,7 @@
>  SDK_OS = "mingw32"
> +SDK_VENDOR_mingw32 = "-w64"
> +SDK_VENDOR_sdkmingw32 = "-w64"
> +
>  NATIVESDKLIBC = "libc-mingw"
>
>  PREFERRED_PROVIDER_virtual/nativesdk-${SDK_PREFIX}libc-for-gcc_mingw32 = "nativesdk-mingw-w64-runtime"
> diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
> index cf39c6a..9f79ffe 100644
> --- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
> +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
> @@ -19,6 +19,8 @@ PROVIDES += "virtual/nativesdk-libintl"
>
>  TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_TARGET}"
>
> +EXTRA_OECONF_x86-64 = "--disable-lib32"
> +
>  do_configure() {
>      oe_runconf
>  }
> --
> 2.17.1
>
