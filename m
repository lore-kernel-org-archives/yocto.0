Return-Path: <vvavrychuk@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE69FC47258
	for <webhook@archiver.kernel.org>; Wed, 31 Jan 2024 17:15:12 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.670.1706721306971528680
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jan 2024 09:15:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dlz1jYCg;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: vvavrychuk@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2cf588c4dbcso739531fa.1
        for <yocto@lists.yoctoproject.org>; Wed, 31 Jan 2024 09:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706721305; x=1707326105; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vk7ldK6aIM1vnaQAckhgXkXHwGSyHEZy/56z/RixnmQ=;
        b=dlz1jYCga3/XkwtQ2EDDrS/d7k8Kodrw32eu6QN81HsW20ODo9+8F3/Ref5VnxGO4P
         HKAi4SzzdtG/GBvwZzMQGCR2cqbPtwZUcQ956wdVuPmeD3nXhdaQTMAYIPutZf1+2LvY
         gLimWAe4TzTqoRyN8KWb4sz6xSRiYy/0Lc1oMT4Rkp5il/rkc6rLXQBVMcPMO5qpVZVf
         opmWNH9pZb0mQGu3tOggVuKfHh2VKDEvvsIQ0Wl8KwFJb4ysBn6nkwGx6QouLPsSLKSE
         SE/f5BnHFYLjJNBcnW1r5p85JPsWZWesqAULtdSEO0vDoP2TSsdJ2BBLdWNKeb6p5gng
         maNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706721305; x=1707326105;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vk7ldK6aIM1vnaQAckhgXkXHwGSyHEZy/56z/RixnmQ=;
        b=GtMNEOa8W3Vxqv+QCaaVwTXebNR7eFBbGcWRPCGqSqnlw27xdO6MYC0DIOyUQvALxA
         RfMoTcbM1tvdk5Sy85tjmpUMq6dOunSu68XUeLavyWJ90EvzzFluzA979aG4Ib+YKtyu
         qTtvEnpQQKBQZ+OTn0NzuRydkcZKmnLA+aH/rrymJyDHSy+mE4n5U0FHk49g+3ViDEKx
         0k2DqLatuWzwxIGUjKSN1Cw4hrJ+W+D5t54zeqDECu0ofFIxqS7UdljL0X0+xU+C6v15
         xBqAXBRe/hK+B3e48FDkfBxESLMwAXzYNecidFCxHaULxF2jcod4dXVb/3Os1/DIKF5x
         3oaQ==
X-Gm-Message-State: AOJu0Ywf4NSaMnp34OLK27h4solVNTf3iWi5qoN0YIZv1YS1mIDT0f/g
	DL4DAeeZsiIAmwtz9GUpPl6q1e4s2pucxQ8RxNhuJOciV9CBj6MjxAKrkj5lEw7MJUJbLvoSwx0
	BpeVDbUmX9VvDqThVz9ZHhJop1jY=
X-Google-Smtp-Source: AGHT+IEEXHn7Sb83jhQ+HByEJmVnc/txSnJ9gTdE0BnC+cu+0+Ild9p+N3f1Lr0QUMeRFoNRl1z73vXIVq9I1/FaBlM=
X-Received: by 2002:a05:651c:b1e:b0:2d0:6c48:8777 with SMTP id
 b30-20020a05651c0b1e00b002d06c488777mr1529053ljr.27.1706721304861; Wed, 31
 Jan 2024 09:15:04 -0800 (PST)
MIME-Version: 1.0
From: Vasyl Vavrychuk <vvavrychuk@gmail.com>
Date: Wed, 31 Jan 2024 19:14:53 +0200
Message-ID: <CAGj4m+4fhwYfb0buAHD9WpgEgLa_yFrcNoujNL8qPsOKe1-Ufw@mail.gmail.com>
Subject: [meta-external-toolchain] compatibility with nanbield and extensible SDK
To: Christopher Larson <chris_larson@mentor.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jan 2024 17:15:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62352

Hi, Christopher,

I wanted to check meta-external-toolchain compatibility with nanbield
and extensible SDK. I used
poky-glibc-x86_64-core-image-minimal-core2-32-qemux86-toolchain-ext-4.3.2.sh.

So far, I noticed following issues:

1. environment-setup-core2-32-poky-linux, contains code

SAVED="$OECORE_NATIVE_SYSROOT"
...
OECORE_NATIVE_SYSROOT="$SAVED"

As result, setup_external_vars reads native_sysroot as "$SAVED".

I guess we have to add to parse_setup_script reading back value from
values map if value starts with $.

2. get_external_libc_version could not identify libc version since
extensible SDK contains neither ldd nor 'libc-*.so'.

I guess in case of extensible SDK we can get version from subdirectory
name of tmp/work/core2-32-poky-linux/glibc

3. glibc-external do_stash_locale task fails for me due to missing
build/tmp/work/core2-32-poky-linux/glibc-external/UNKNOWN/image/usr/share/*

I don't have any ideas regarding this problem.

Would appreciate any suggestions.

Thanks,
Vasyl

