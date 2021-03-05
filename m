Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web11.13946.1614959500740354216
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Mar 2021 07:51:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hLb0nXdg;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id a9so2348307qkn.13
        for <yocto@lists.yoctoproject.org>; Fri, 05 Mar 2021 07:51:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=R+Bnc4vLZj3EpqlP2wO5Qh9CoZZeMLwqicJzBX8X1hw=;
        b=hLb0nXdgcYOeL7GZncASxuS4GBWA4j32MLDNQvfZc6bqeClcciYgMlzN8hwi6VUX3x
         F4k7FkKAU72OutXdjxG3VTaEL3ZfJjvlsLXq4N+2Uk9DdEbSy1rjEf7iJe1pCD8JkAnc
         /lCmMY2titEk53ozleRnPI9NCpTJqUv+7kIm1j7pyXNYbSADo+LOOdjxwE2Cm57wFAsp
         8gF7tmNQ6fEtzNc8vqIh/BReuKlQ90TfkSNc6stCoCwetQP4XP/G0zYno/BX/MWJkDGN
         EC7qd1qUpd6/1zp0Xp9KLga2dQZB7iTLjcitYeTJ07NCSiwEFmtC1jTbsMqCFm+/exbQ
         xARQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=R+Bnc4vLZj3EpqlP2wO5Qh9CoZZeMLwqicJzBX8X1hw=;
        b=DEFz9hDjQ+3cvGLiIudGaQvH64s5lihRexxZl0oqsRjrtimMs9BmZXeyqxhWe4f2bU
         5XelczGv04LzdBJV+n0F/VLwzeYCgNUcdpAd5+zocs0qgaqnmWe5X84kl2oT5aHx6tl+
         sqnp9Ze0KgEeWEbWAN1+6+BgU/HsIt706NMnjfoLoDNpvUit9h0FdTC3w0o/Pw5sV7YY
         q+E5WgSn8M83DhgUq5jQF1Ez9aTKClOzhppPimSW/yRCul13lT6+NEBO6Y6vaK7QRZGA
         fFqT/BberpA0yJL/RkvTNyIvccRaomLEW/e3vxAsBtIuXZYyt8RC1k+AkgxeKgNqdYT0
         uaVA==
X-Gm-Message-State: AOAM530KEBoQN+Y6cxRwQm5TIRN4b08EvqK04+f0RtZk//ilW1A6Wvx0
	Fu0Q8+MTTnEA/3TszYhPJ7Y/ziWOc2OSO24yM08=
X-Google-Smtp-Source: ABdhPJz7x6h+NxvEbmXuE7q6qmvYQa4w9SKQlkGT0GWVdZEyTIqFZwAGu3UBrWGX85cBm5Un8RpLyH6QEixwP0CSLg8=
X-Received: by 2002:a05:620a:a12:: with SMTP id i18mr9754647qka.119.1614959499710;
 Fri, 05 Mar 2021 07:51:39 -0800 (PST)
MIME-Version: 1.0
References: <DX8u.1614945646527170477.i4ls@lists.yoctoproject.org>
In-Reply-To: <DX8u.1614945646527170477.i4ls@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 5 Mar 2021 07:51:13 -0800
Message-ID: <CAMKF1sqsMX1-TAX_m7HvPotwQs98yDE-HXfYe1upeCMNSMbT7g@mail.gmail.com>
Subject: Re: [yocto] meta-toolchain, gdb-cross-canadian_9.2 fails due to "no usable python" #toolchain
To: mmiguelhorta@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 5, 2021 at 4:01 AM <mmiguelhorta@gmail.com> wrote:
>
> Hi,
> I have been trying to build meta-toolchain however it fails to compile during gdb-cross-canadian. Follows the relevant output:
>
> | checking for libmpfr... no
> | configure: WARNING: MPFR is missing or unusable; some features may be unavailable.
> | checking whether to use python... /home/.../workspace/gatesgarth/build/tmp/work/x86_64-nativesdk-pokysdk-linux/gdb-cross-canadian-arm/9.2-r0/python
> | checking for python... no
> | configure: error: no usable python found at /home/.../workspace/gatesgarth/build/tmp/work/x86_64-nativesdk-pokysdk-linux/gdb-cross-canadian-arm/9.2-r0/python
> | make[1]: *** [Makefile:8866: configure-gdb] Error 1
>

there will be a file called config.log created in gdb build dir which
will have further information as to why it thing python interpreter is
not usable

> My host is Ubuntu 20.04, and I'm using yocto/poky gatesgarth as base. Target core-image-minimal builds without issue, only meta-toolchain fails.
> Normally I can get a good idea why something is failing from the logs, but this time I'm really left clueless. Any help would be appreciated.
>
> BR,
> Miguel
> 
>
