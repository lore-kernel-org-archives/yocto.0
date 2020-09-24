Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.9893.1600926214603776791
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 22:43:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uZ5eS9rA;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com [209.85.160.196])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8B06038C11CE
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 22:43:33 -0700 (PDT)
Received: by mail-qt1-f196.google.com with SMTP id 19so2103703qtp.1
        for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 22:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=erJ1cNQqjNQQ4Mxi47UNbODKrjccUww1u7aL+pT0CFs=;
        b=uZ5eS9rA2nIwr7aX6GorsGBAS5PwR5FO6nw/99x2zjLPj/9Y9+DnjqpLpw78b8OBKG
         b/6wfTgquKhsRcyC6PprIx+Vyhzd/PTwEdNNrNB2hJHxq1ORWkfW/Oexa7QTJxep78yg
         RxPE6yhERurceAv/5NURlu75NbPcCs4Yf0GiEtzGFG/XaPZ4CrHbDRpsuKSPMSfYZjca
         pVU5t7hWF9dj6d2pCEK1oCL/UUmth/GpZZbpTCeGgj6LsjHSYcl57WzGR5Ei0qILlTvR
         wEsSeHyZmj67oaDiHwdTUK3V7RLSeftULClahp6+1vq8xPw/fyoeGVROrTjtk6DxqvWF
         EdTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=erJ1cNQqjNQQ4Mxi47UNbODKrjccUww1u7aL+pT0CFs=;
        b=Dm+6q0K9PW3C4gdl41E17re2XFyJGiIc3E122WdyJ+IFcHlVWsgMvi5AGmv3IKeF5t
         nKbytO/LeGTQJyvZuV7fpLAOtN5QYdyCXxQc2UVXqgtTtAHB0A8pvVjhJ01yDU5bMH/L
         Ir6X1UMCy1wU/YB2izCHtlfHJN4MHZC9ycXMHXphsD31rSttjcGGimWpbzq6rQy4Ou3g
         zeSNO8/Sw57EvlxYv5D87W2B++fslDQ3FMuLz/c2rKVxxSv9K4XOcq+h43uzcXPXtHHg
         PuPhE50Do2sEEvrk/cstUVeJzjMzQ61qQbG5giRwNPtAlxttYDWQZErtJaA3C7HFdvSt
         HWdQ==
X-Gm-Message-State: AOAM531cMhi55YIwcj7lAYADrjbY2iY0EzY7TjtXWdI8XeD5xI4wQQSC
	xdYtndiKSEpUV1U5H4qzUy69sWj0O040YMUQ89s0C1+44tIwxg==
X-Google-Smtp-Source: ABdhPJxEwJTiAZ13rdlJiq1ef4jS2Wj2X3OMN6BNSSEac5C9Ec9yMwBmdHTkka9mq2B139X5M+xaE3WqECqERNIE3xQ=
X-Received: by 2002:ac8:3f3d:: with SMTP id c58mr3818598qtk.53.1600926212285;
 Wed, 23 Sep 2020 22:43:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200924033819.22451-1-Qi.Chen@windriver.com>
In-Reply-To: <20200924033819.22451-1-Qi.Chen@windriver.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 23 Sep 2020 22:43:06 -0700
Message-ID: <CAMKF1sr-zgPOX3_n4m-6p5qMxYtrCA9pGA9x8HEBkrYr2Z0oRg@mail.gmail.com>
Subject: Re: [yocto] [meta-cgl][PATCH V2] ucarp: fix build error with gcc-10
To: Chen Qi <Qi.Chen@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 23, 2020 at 8:38 PM Chen Qi <Qi.Chen@windriver.com> wrote:
>
> Add a patch to remove the useless '__packed' variable to avoid
> multiple definition error with gcc10.
>

I wonder if the intention is to mark this structure as packed struct
then it should be replaced with __attribute__((packed))

> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> ---
>  ...001-ip_carp.h-remove-unused-__packed.patch | 31 +++++++++++++++++++
>  .../recipes-cgl/ucarp/ucarp_1.5.2.bb          |  1 +
>  2 files changed, 32 insertions(+)
>  create mode 100644 meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch
>
> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch b/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch
> new file mode 100644
> index 0000000..496c20d
> --- /dev/null
> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/0001-ip_carp.h-remove-unused-__packed.patch
> @@ -0,0 +1,31 @@
> +From ad33498ac86fe2df0a100d17aa54ca8c30920d8b Mon Sep 17 00:00:00 2001
> +From: Chen Qi <Qi.Chen@windriver.com>
> +Date: Thu, 24 Sep 2020 11:30:08 +0800
> +Subject: [PATCH] ip_carp.h: remove unused __packed
> +
> +This variable is useless and it's causing multiple definition
> +error with gcc10, thus removing it.
> +
> +Upstream-Status: Pending
> +
> +Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> +---
> + src/ip_carp.h | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/src/ip_carp.h b/src/ip_carp.h
> +index 9504a8e..9dcf8cc 100644
> +--- a/src/ip_carp.h
> ++++ b/src/ip_carp.h
> +@@ -70,7 +70,7 @@ struct carp_header {
> +         u_int16_t       carp_cksum;
> +         u_int32_t       carp_counter[2];
> +         unsigned char   carp_md[20];    /* SHA1 HMAC */
> +-} __packed;
> ++};
> +
> + #define CARP_DFLTTL             255
> +
> +--
> +2.17.1
> +
> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
> index d17baa0..c6fa901 100644
> --- a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
> @@ -17,6 +17,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=278a886e91f2f6c983ffdf040130cdc6"
>  SRC_URI = "http://download.pureftpd.org/pub/ucarp/${BPN}-${PV}.tar.gz \
>             file://ucarp-configure-sha1.patch \
>             file://ucarp-configure-snprintf.patch \
> +           file://0001-ip_carp.h-remove-unused-__packed.patch \
>             file://ucarp.init \
>             file://vip-001.conf.example \
>             file://vip-common.conf \
> --
> 2.17.1
>
>
> 
>
