Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.10256.1600928025856686061
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 23:13:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LZsYaWZ7;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com [209.85.222.193])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0A5E938C123F
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 23:13:45 -0700 (PDT)
Received: by mail-qk1-f193.google.com with SMTP id t138so2340730qka.0
        for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 23:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=s+T6vMNz2+YY05yVW6S36FkmOXC/o1O++inJ+sMIMys=;
        b=LZsYaWZ75M+reeG5GeBDXE7nFKViDs2wOOu3vymwvnvMARbD9L+Yu2rCxvpruIePHi
         QWHOMLRxn0TUBb5pFPoGft08nuKOuf2XoAk1VoxjgfFrlMVdgCIjA8dSB1+1EQC91TAe
         0Qhddli5lphhXTqb28IuU8/q1GL54xpIN9C7IqvGKoB+BD7IV4lHyHFyIWtsqHSDTwZL
         Mehf6JS0EFfW+JCw6k00p3FfcmBF8vLjphz3Lkqwg3W9Ad67utW4pyqPrEj8/1ayzdZR
         7o7/9ghViGSxrTNdkU/grSdhLEf+JogdAb4eYitkQITEBTG2WIsZRkdavDGHWXF3CrId
         QYyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=s+T6vMNz2+YY05yVW6S36FkmOXC/o1O++inJ+sMIMys=;
        b=rHN3X6wgmm2mM3sVfpr9NhX4PLxFPMsu10auvcXQ0xjk1mrRK9K9swNO75kMqzedHs
         KPBzsJvsoYO2YC0qerEM+gJYCZAuNH0adtzN7bq6/5uOUJQUGzALOHHorRZJlA7PsqVu
         hzZX+ogG7adBXdJt8vfc3gEHjkmCmi03d8zH7LmDf47Su8R+pHLKMgKkwfMXZz04IG0+
         dGlxzJhaMxmIR+PSMucW2S7T/fa/pgy0t48WDrCNzwKjpLJ1Dxa7s8TctMu1yvK+biPs
         tHL5qMdABdS5KMFqgt+JmXuNBYHV++R3tKiLU6Bi943OciZ5E0UXsKCLpzZZb2E54pQc
         D9dw==
X-Gm-Message-State: AOAM532SWJhBvbpgYnfN++rwnV70EFqh20dKPouM9Co0IU7GtwShz4Ul
	VCadW7uGS+ZUGsXp9nGzvPuDwsTC3xsQvesJtYQ=
X-Google-Smtp-Source: ABdhPJwoHyHdxMMRoxcH4IoE6nIIU9ZSnNt5zMgCc8tFAmD5VxlJEgtRI1CsJIMks+y4kTzSk1qMqhzGxLf9tBLyI9M=
X-Received: by 2002:a05:620a:7f6:: with SMTP id k22mr3348911qkk.337.1600928023946;
 Wed, 23 Sep 2020 23:13:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200924033819.22451-1-Qi.Chen@windriver.com> <CAMKF1sr-zgPOX3_n4m-6p5qMxYtrCA9pGA9x8HEBkrYr2Z0oRg@mail.gmail.com>
 <77006c9b-af47-b882-50c4-163706d651e5@windriver.com>
In-Reply-To: <77006c9b-af47-b882-50c4-163706d651e5@windriver.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 23 Sep 2020 23:13:18 -0700
Message-ID: <CAMKF1sqtu=UO9AY_n2hiCgO+a5yPndhE6wi5N2zf_25Wqn=EXA@mail.gmail.com>
Subject: Re: [yocto] [meta-cgl][PATCH V2] ucarp: fix build error with gcc-10
To: ChenQi <Qi.Chen@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 23, 2020 at 11:08 PM ChenQi <Qi.Chen@windriver.com> wrote:
>
> On 09/24/2020 01:43 PM, Khem Raj wrote:
> > On Wed, Sep 23, 2020 at 8:38 PM Chen Qi <Qi.Chen@windriver.com> wrote:
> >> Add a patch to remove the useless '__packed' variable to avoid
> >> multiple definition error with gcc10.
> >>
> > I wonder if the intention is to mark this structure as packed struct
> > then it should be replaced with __attribute__((packed))
>
> It's possible, but I didn't look at the logic and I don't want to.
> Anyway, the variable never had any effect. So I figure it's safe to
> remove it, and this will not change any behavior.
>

certain compilers do allow __packed keyword and it might be
intentional too. If its removed then
the bug will become even more subtler, therefore. if we want to change
the code then its perhaps
better to confirm it with upstream before applying patch. Otherwise
apply usual -fcommon workaround.

> Unfortunately, the codes are really old, and I cannot find a place to
> send the patch, not to mention to confirm this with its author :(
>
> Regards,
> Chen Qi
>
> >> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> >> ---
> >>   ...001-ip_carp.h-remove-unused-__packed.patch | 31 +++++++++++++++++++
> >>   .../recipes-cgl/ucarp/ucarp_1.5.2.bb          |  1 +
> >>   2 files changed, 32 insertions(+)
> >>   create mode 100644 meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch
> >>
> >> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch b/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch
> >> new file mode 100644
> >> index 0000000..496c20d
> >> --- /dev/null
> >> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch
> >> @@ -0,0 +1,31 @@
> >> +From ad33498ac86fe2df0a100d17aa54ca8c30920d8b Mon Sep 17 00:00:00 2001
> >> +From: Chen Qi <Qi.Chen@windriver.com>
> >> +Date: Thu, 24 Sep 2020 11:30:08 +0800
> >> +Subject: [PATCH] ip_carp.h: remove unused __packed
> >> +
> >> +This variable is useless and it's causing multiple definition
> >> +error with gcc10, thus removing it.
> >> +
> >> +Upstream-Status: Pending
> >> +
> >> +Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> >> +---
> >> + src/ip_carp.h | 2 +-
> >> + 1 file changed, 1 insertion(+), 1 deletion(-)
> >> +
> >> +diff --git a/src/ip_carp.h b/src/ip_carp.h
> >> +index 9504a8e..9dcf8cc 100644
> >> +--- a/src/ip_carp.h
> >> ++++ b/src/ip_carp.h
> >> +@@ -70,7 +70,7 @@ struct carp_header {
> >> +         u_int16_t       carp_cksum;
> >> +         u_int32_t       carp_counter[2];
> >> +         unsigned char   carp_md[20];    /* SHA1 HMAC */
> >> +-} __packed;
> >> ++};
> >> +
> >> + #define CARP_DFLTTL             255
> >> +
> >> +--
> >> +2.17.1
> >> +
> >> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
> >> index d17baa0..c6fa901 100644
> >> --- a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
> >> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
> >> @@ -17,6 +17,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=278a886e91f2f6c983ffdf040130cdc6"
> >>   SRC_URI = "http://download.pureftpd.org/pub/ucarp/${BPN}-${PV}.tar.gz \
> >>              file://ucarp-configure-sha1.patch \
> >>              file://ucarp-configure-snprintf.patch \
> >> +           file://0001-ip_carp.h-remove-unused-__packed.patch \
> >>              file://ucarp.init \
> >>              file://vip-001.conf.example \
> >>              file://vip-common.conf \
> >> --
> >> 2.17.1
> >>
> >>
> >> 
> >>
>
