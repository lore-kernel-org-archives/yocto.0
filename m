Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web12.6122.1601503015515157341
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2020 14:56:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nI3GWPH1;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id y11so2619951qtn.9
        for <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2020 14:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HFKYgqmq+CH69G1bMPLVIHCUnclu5k0vtjQLaeOrSdk=;
        b=nI3GWPH11CxiJCseZSl6Y7GN7f6upl0ATATsBkdCtJlu2SxxchIX65AHWfsvy9ENky
         KldOXVHHyDUvYzKOiUZRKKUeur+5RUcq0OtcS0vIihxUE6i4GlP/66Arg5LxuqjE1S02
         V1A2NLFAde7FwWoL1OxIIsyg281vBJozyZgKZvKLIiVSSGguRpp8EeVirc6AllLQbmG9
         lK8jdLxE2Ot7IRjTQOu84wzsjGS3c37+vJWD7LS8hd6i80LM7Q4m0FrXZAyZqYg7PzXy
         JLGKh8RrgbFFtRMG0Fbf+Z/ZNNiP28AQvLCFiUMms2w1xYnQrLyuVKpk9020nenIjjIc
         PR2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HFKYgqmq+CH69G1bMPLVIHCUnclu5k0vtjQLaeOrSdk=;
        b=AiU3K5OCsLbN07EDTRWofgBFd0pUXwm7TaYlfbaPFVe9W3NbGPwsiE/eecOQfunxjQ
         fd0OHBVsqnAK6AsZhxJfccmewofyTepepe66IMpVkzCuTqJZ/GuXGsNKo1TT+EQT30Eb
         kKf2oKqvlvGrcVISuAiDhqVBpj0Umff9hQu2jmHkP0O0Gee8zjFdke85W5K7CnDpAzZB
         iZKcZvuthiMQhmpVYP11iJ/U36+30EXjoLNuvbMKu6a5lPJE18oNM7I54P4hfe04cisC
         wvspzPjLFsTcYR5AN93ksNIz8VU8Q1/Ev604YUdw2zwLBakW2W2F1XF0dV7KozPelvMt
         U4Yg==
X-Gm-Message-State: AOAM530THQbDs+uS5dOQC+W6MOe+ZUI3dtBrt6l0uJ3yUkIQitG05692
	E+FMPBOlybW6UgsKrOhHh9F+RSM7N5vSVeUyQEM=
X-Google-Smtp-Source: ABdhPJx06UkMvKKJA8htff5iv4bv3QQH53bUrQ022SwQXWeaRfkt2P6TvpVfIWRluJhUpqkPZXxf9U5MSGh6AtrmI+U=
X-Received: by 2002:ac8:3417:: with SMTP id u23mr4410562qtb.80.1601503014558;
 Wed, 30 Sep 2020 14:56:54 -0700 (PDT)
MIME-Version: 1.0
References: <MKuL.1601449233670704784.ogc9@lists.yoctoproject.org>
In-Reply-To: <MKuL.1601449233670704784.ogc9@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 30 Sep 2020 14:56:28 -0700
Message-ID: <CAMKF1son5dsNM4RX4MWvMxByAfkFx749+mcsJj+0WU6ik2j1gg@mail.gmail.com>
Subject: Re: [yocto] Kernel panic after failing to load libssl.so.1.0.0 #kernel
To: aravind.chittapur@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

you need to add openssl to RDEPENDS for busybox.

On Wed, Sep 30, 2020 at 12:00 AM <aravind.chittapur@gmail.com> wrote:
>
> I have patched busybox httpd with open ssl APIs to support https. I have patched Makefile.flags to include opessl library as below.
> -------------------------------------
> --- busybox-1.23.2/Makefile.flags 2020-05-25 13:52:54.424147022 +0200
> +++ busybox-1.23.2/Makefile_edit.flags 2020-05-25 14:18:23.328520511 +0200
> @@ -126,6 +126,10 @@
>  LDLIBS += m
>  endif
>
> +# Openssl Library
> +#LDLIBS += openssl
> +LDLIBS += m ssl
> +
>  ifeq ($(CONFIG_PAM),y)
>  # libpam uses libpthread, so for static builds busybox must be linked to
>  # libpthread. On some platforms that requires an explicit -lpthread, so
> --------------------------------------------------------
> I am able to rebake busybox without any errors. I tested the https functionality by pushing the busybox binary using adb to the /data/ folder.
> When I flash the firmware image to the board, while booting the kernel I get the following error.
> "/bin/sh: error while loading shared libraries: libssl.so.1.0.0: cannot open shared object file: No such file or directory"
> After this Kernel panic happens.
> libssl.so.1.0.0 is present in /usr/lib. I don't why it fails to load. I need help in resolving this problem.
>
> Thanks,
> Aravind
>
>
>
> 
>
