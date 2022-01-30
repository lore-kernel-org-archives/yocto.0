Return-Path: <ivriabtsov@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A061C433EF
	for <webhook@archiver.kernel.org>; Sun, 30 Jan 2022 03:48:07 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web09.15165.1643514485654677354
 for <yocto@lists.yoctoproject.org>;
 Sat, 29 Jan 2022 19:48:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DdEGiYEY;
 spf=pass (domain: gmail.com, ip: 209.85.218.50,
 mailfrom: ivriabtsov@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id k25so30920800ejp.5
        for <yocto@lists.yoctoproject.org>;
 Sat, 29 Jan 2022 19:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=pwTQRicGlgHR/v9WuZsfb9ugx9+FTeJI+IW6KClCH5k=;
        b=DdEGiYEYR7L3Qsy/yFqLYTvzYhCtiTFuBh1/RGI8vkT9zJkRK6F/9l/zr6Sy5WeVtq
         A0X9UBFjMTDjkbEZjDGqRGNUwI1mX4ZbJU+WmRpahhA3PvA5nyKy4DBt4gc/qGx68coO
         1iTej5Npj3gatR2CLzB/XMPvNJEiE40Vx+jq/0AQu9pWHqT1InXvFpYeRQ79kSC3OdUD
         gvNp9Kuw2u50bjIJir9SI6Gb/eZ2An/eNl6nf1F6v1oDhuJH1cWk/6ZZCyS6SuaHtnOI
         9NSxQsAxE2fjxUVzoS46LIjIrkIG/7DRe94p2zPydwebd6YKNhPCyxAtQNVegMClr65v
         IXpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=pwTQRicGlgHR/v9WuZsfb9ugx9+FTeJI+IW6KClCH5k=;
        b=T4KrABP6J85rHgfPPbu1ud3ydjpfGJjyudutExh+m7iFegPp0d/PkEv9z8/F7Ntaor
         sls4mOTD4NYGDwG2zvVAT2Q1pjA/3gNXnxrCixt2SbvvJlhJPgFhPw8zUFJyqRv6VO6d
         9XGgskV3T21+JiqtxZp69sWc52X8z4+DArYtcj1abhm/InB6LnAX8Hv82amYfTMxTyB6
         WaAQWQiHN+qxqxRRpCHa0xc9cw0Jzu9bM3Gr/0rR0KH4FXhQ82bA20osYC+XlGO2L9QA
         kqUcKfQIFOBeL8W4u/tsOJSnLO47G/GFpzjuVwtJvTScRIVCI2NUqq2eqPKPxql4/NDf
         T5Rg==
X-Gm-Message-State: AOAM5311DcdEVXjgP9c1qu1EDEkNhI3AITZFtH9XG1OLdwgMFddUeApx
	2PwlIPm9yRnQMMEL/O/osxzc4Z/gAXxTIhYx12+V9GEGM3qh2Q==
X-Google-Smtp-Source: 
 ABdhPJznEWQlqb3PQ+6orn1ytoEDJjFVUrYInitGB8zsdYFNftBPy/G11rKAUGKF9So8kDpM2liiOMh4Oq3ngeJqjfI=
X-Received: by 2002:a17:907:1c01:: with SMTP id
 nc1mr12761014ejc.659.1643514483669;
 Sat, 29 Jan 2022 19:48:03 -0800 (PST)
MIME-Version: 1.0
From: Ivan Riabtsov <ivriabtsov@gmail.com>
Date: Sun, 30 Jan 2022 06:47:00 +0300
Message-ID: 
 <CAKAnv4Ej0MW6-tMKZgfxN7TESCQPzPTPTqJNCSeCWSpB+cMaxg@mail.gmail.com>
Subject: boot script for barebox in build/deploy/images/$IMAGE_NAME/ directory
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 30 Jan 2022 03:48:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56021

Hello everyone, I need to put the boot.sh file in the
build/deploy/images/$IMAGE_NAME/ directory during the build, how can I
do this using the yocto build system?

