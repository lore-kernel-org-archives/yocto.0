Return-Path: <sprhawk@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA165C05027
	for <webhook@archiver.kernel.org>; Mon, 20 Feb 2023 15:41:00 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
 by mx.groups.io with SMTP id smtpd.web10.16108.1676907651354034640
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Feb 2023 07:40:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WqL5r1OC;
 spf=pass (domain: gmail.com, ip: 209.85.167.180, mailfrom: sprhawk@gmail.com)
Received: by mail-oi1-f180.google.com with SMTP id bg11so1445466oib.5
        for <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 07:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9r4ujYpDSaMbnwhMt6CN3b/gSjU+gPpW/8scW0G80wQ=;
        b=WqL5r1OCgy2E0vEVCTL2nMxuqwSoRn8RWCFKRYNd+ooC/N2wahsF9sRA+o6wPqvbbP
         yd2YKoHt0RXCIGsLy3+kYTtiDy4iH5tbUCxU6ZF0aGfiYnWJVv+KJbQEalGCe5UwYPWY
         uBKndCH2gcRLymv5QmZRx6YhN5BABfd/bNkj0PsOGLE0yQo3yMa5rOWeooJ4r5/8OfBJ
         bSMVvABWWjcLc+OgQqJq70QMtleRsQd5xEbwi/+ICzQpUwotYTVzkb+6q1aWh4MjO+pC
         uUZXUozyXYP1TW8hHeOpG3XYAAtolMpzzrWfuy/mH0zSlPvkM9HQ1/fmDRYwXq9K/FY8
         jWUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9r4ujYpDSaMbnwhMt6CN3b/gSjU+gPpW/8scW0G80wQ=;
        b=6zw9JPgqXWcj4Td4quyK/EPYCgIqviwEbjt1PZAjfnc9dus9zNay4YahkyVoZLwTz6
         T7tsoPUbaoA8s27lu18mdjOl+J+uvOEOehl32Pf3Bb0pHTkKuNWu7UfThizPReYsXN/C
         mLudjaW/xv/uajF46s6o4XJPV16e3swaMkhFogAVdePvIL3/2nk/2Cq5/9gzpJavqxyq
         apA7cxs7A2itJQae5Ecx74T64o/mk/HX5yEYp/jlZP5o2V2tHvCrNh4XGLnzt30L/fIF
         MEaK2CP21Qxpga3YXy35bnaaLXVsku+AbkVyfBqJ+jAOzEGIWKza1d9w0WG2+E3NophX
         7krw==
X-Gm-Message-State: AO0yUKUcT/EOIWknfHOJxazsfpu8wiFsRM85iNV8OWsBMmRXr5y1fAW0
	yp6GgpDSp4ZJy9/IptpeqfLQE8OxbXGs34cPuQ1RsHXl
X-Google-Smtp-Source: AK7set8LPlzGm3OwwxRi0e3sVRyOXBOKopzjneqQmxEOuyjdxEcPj332YE0RTSl/wo/TNMwoP8hc7npRQzArk17Tyt4=
X-Received: by 2002:a05:6808:1153:b0:378:5175:aa31 with SMTP id
 u19-20020a056808115300b003785175aa31mr370287oiu.157.1676907650367; Mon, 20
 Feb 2023 07:40:50 -0800 (PST)
MIME-Version: 1.0
From: "Y. HB" <sprhawk@gmail.com>
Date: Mon, 20 Feb 2023 23:40:39 +0800
Message-ID: <CADBJ=yGzAccChDkYKvf7191p=FT71NwVHQ8y0pqV43mqh1DCEw@mail.gmail.com>
Subject: Can I specify a prebuilt version of toolchain only for kernel building?
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 15:41:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59255

Hello

I got a board (Rockchip RV1126), whose NPU driver  kernel module is
distributed in binary form, which requires specific kernel version
(4.19.111) and toolchain version (gcc 10.3)

( I built the yocto with the specified kernel version, but using yocto
shipped gcc 11, when I insmod, the driver reported invalid module
format, and modprobe reported invalid exec format, I guess that is due
to gcc version is incompatible )

I'm building the system with yocto kirkstone, which ships gcc 11. Can
I have some way to just specify using external toolchain with prebuilt
gcc 10.3 while other system still be built with default yocto shipped
toolchain?

I have seen meta-external-toolchain and meta-soucery, but it seems it
will replace whole toolchain with this external version. Can I find a
mean to just specify for building  kernel ?

Thanks

