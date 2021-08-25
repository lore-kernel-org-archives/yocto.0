Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web12.17512.1629908340056947041
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Aug 2021 09:19:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SvOFLYq5;
 spf=pass (domain: gmail.com, ip: 209.85.222.181, mailfrom: marek.belisko@gmail.com)
Received: by mail-qk1-f181.google.com with SMTP id 14so28185177qkc.4
        for <yocto@lists.yoctoproject.org>; Wed, 25 Aug 2021 09:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=FfvihJ8HSOKXHQKuxMLHxW1mRcDUEb17tQgmFWxB8Ls=;
        b=SvOFLYq5E8QSeriuSH1kniKoPy0qePEsrczH01t4yfWiqhW3D03TuEoxkcHLzN0589
         GxphiRW9NidKX47fo3hKviWfNEuOs6Y5tGanE60iawLjm+/rvgjvwgbOF8uBk1Fz+4Js
         ep1GK4n2L/pKhxgA9DG0hqYKw51N1nfOuwD+8oUIphqjqPf+lQBA7UB3foOrKDI5aruJ
         IiIM0rP8mvRDztOclSBNF3eLyX1P42dGnw1UsIo9uhu22mGy7F1UCPAWIqKtrwRqBoYG
         7lzhlQi0C2Lr0Fdk/xLOJslZ9SQrPztilKPIHlLeBeqqPKsKWXeAxxqcV0tKsHWXIJj2
         Zf0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=FfvihJ8HSOKXHQKuxMLHxW1mRcDUEb17tQgmFWxB8Ls=;
        b=mElD/BRDV0u2lZzjX1ZBJK3e4oJdavH3tgF82HZuPQJs1AwwKK4CjhIQNX6MQSbMtp
         K8zbr1du4dH3ciXv/m2IqJ7uKK3g7tnEpVRhZZowUFTBYIGY2oX8NNT7yEFGOrCwf3qS
         KqwmXVpMJn4JYyXTgekUcUGemoQ4GoCY3asUutk4FwTd8lnZv8lgHx7TDZU950mw8hFg
         0q+onZD4fWdT3vwYUK/jlKGOzcR5SQnxCUn6eLpWo798gj8n4dSPBkNP/wBBmAvyVkg6
         yyUaTfqNCiurrcrv9wh28fhKNPdK2uxC2bgpMpw6LrxclwX3YSLmalynYafjoUBCQHj/
         s6Zw==
X-Gm-Message-State: AOAM530oCl/Hmjp28T14sRFtKTwukk/O4uKJGYu/GFccZfAwLkFM5v9o
	ECkZm2Yt+7jJQBpRhiqaHm1zvCwYGKwupb0P8sk2p9tFFvA=
X-Google-Smtp-Source: ABdhPJxWqX8O+FXaS4XcnjSUoV4SKlYEvCuxUV7tt18mwhT/BClzbvvT1a1kFnBsX6GObiMa7iyZhAZSCKq2hqC/noY=
X-Received: by 2002:a25:b845:: with SMTP id b5mr58682491ybm.343.1629908337531;
 Wed, 25 Aug 2021 09:18:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv34Mh9L+_3Nz-b-udW47XRKONMU3UrMVjszg=E9U9kkbcQ@mail.gmail.com>
In-Reply-To: <CAAfyv34Mh9L+_3Nz-b-udW47XRKONMU3UrMVjszg=E9U9kkbcQ@mail.gmail.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Wed, 25 Aug 2021 18:18:46 +0200
Message-ID: <CAAfyv344=gs6=orVgvBOQDBhJb03TLr7uLK9KoPGJc2k3Hgi7w@mail.gmail.com>
Subject: using STAGING_KERNEL_DIR for compiling userspace program
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to add a recipe for:
https://github.com/bootlin/libva-v4l2-request package. This library
heavily depends on actual kernel headers (see
PR.https://github.com/bootlin/libva-v4l2-request). I've bumped kernel
to 5.14-rc7 nad in recipe I'm trying to use what is suggested:

# This is how linux-libc-headers says to include custom uapi headers
CFLAGS_append += " -I ${STAGING_KERNEL_DIR}/include/uapi -I
${STAGING_KERNEL_DIR}/include "
do_configure[depends] += "virtual/kernel:do_shared_workdir"

Problem is that I see a lot of errors like:
kernel-source/include/linux/cache.h:6:10: fatal error: asm/cache.h: No
such file or directory
|     6 | #include <asm/cache.h>

or
recipe-sysroot/usr/include/bits/stdint-intn.h:27:19: note: previous
declaration of 'int64_t' was here
|    27 | typedef __int64_t int64_t;

I tried to compile this package manually on the host only difference
is that I used headers from 5.14 by make headers_install and
everything compiled fine. Any ideas on how to fix this issue?

Thanks and BR,

marek


--
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
