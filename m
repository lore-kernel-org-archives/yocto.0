Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DACB2C4332F
	for <webhook@archiver.kernel.org>; Mon, 21 Nov 2022 14:38:47 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.40045.1669041518874612545
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Nov 2022 06:38:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cGEMws14;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id d3so14754627ljl.1
        for <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 06:38:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=D/R03N9L5T70T492CLHjE9Ewg+a5O59Jz+8n4ybV7t4=;
        b=cGEMws143oimU4kweB3DOgzyVgru1Zs5deyqogcQHJYLPX1P454VotnRAwZiE+D2Zk
         WPZVe4v5rGFU3UmC99tElU7JXdAsecyXCmHS1iH1PtVNIDtoTe+L7J/1Yq3XuvM4YBlw
         6AACreMteIncNXqkKahxMoDETzY56XucG10Ui61BoPkMNoG55lewTlJaaeeFnJQPDtQF
         OsZrJ1dIYaZr8OX4YM3t3Rtbz7CBoKaq9Ry5NIqR83UiugwV4IvF9wu5dsbDHOO47lmz
         GUbJ2V+DHQM0TF0gd4MO0B8cnwf3q9Yk6APw/4IlVy6zAv28PELL0qgfgaiZT0rjI698
         SX3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D/R03N9L5T70T492CLHjE9Ewg+a5O59Jz+8n4ybV7t4=;
        b=Ie36I5HyzxQLpWBt/X/Nt+KvMG5rCGrqKmSMWFDzMFU+5IemhyfckJnYfMnkr+kksz
         q7uHpcH5nz5Pp4a72VvqhbvibKlx1XPXYC+voyaXPGFk8VSjv72fgY9oL6Rds5FNONg2
         wsDrS6CjeFXdw+yt2YZBGfYkDfGpRNDPZCxC8vA1LzAG90ml01Z5ddNncCHV5Jz0+DPd
         RyrsVE0kvgfhQQrenCs1AXJCM6Lt4us94BOkgru5tnA3pw34uAWDzEEGYh6PbCGW3/ju
         /dRj6JIMBTv/ZrKEfbh9jSVpkV400OBNGkQoZd20HqHTqwc7OOfLaxvw2Kshm8101FYu
         u0tQ==
X-Gm-Message-State: ANoB5pk51T8k6+01E0bVzKRENB4hsmk9HAJbq3pFQuKHmzKWShrZ04Gd
	u3yMamKLSPWYRIY8Ve2+8LTGKcpucM7GFN6Um4Y=
X-Google-Smtp-Source: AA0mqf5ql+JTrXcxHPpEbyF1VA/ibMhUoFG4UmJdbdBmGPxnFZX/c5mLWoSP6U/r25s/UHz0zprsCbhWS+CYK8ESkOg=
X-Received: by 2002:a05:651c:1145:b0:277:8759:bf65 with SMTP id
 h5-20020a05651c114500b002778759bf65mr5523460ljo.108.1669041516640; Mon, 21
 Nov 2022 06:38:36 -0800 (PST)
MIME-Version: 1.0
References: <d1OW.1669041113310591951.07DB@lists.yoctoproject.org>
In-Reply-To: <d1OW.1669041113310591951.07DB@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 21 Nov 2022 15:38:24 +0100
Message-ID: <CANNYZj-_O+aHq1O0hFFJRJ49OzcXX=DME_wKSOqamwAe6CY+zA@mail.gmail.com>
Subject: Re: [yocto] Reproducible builds not working with musl?
To: Kenth Eriksson <kenth.eriksson@infinera.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 14:38:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58601

On Mon, 21 Nov 2022 at 15:31, Kenth Eriksson
<kenth.eriksson@infinera.com> wrote:
>
> Having trouble with reproducible builds in yocto on dunfell release with musl as libc. E.g. I can see that the build path for musl crti assembler file is leaking through and becomes visible when I do strings on libraries and binaries.
>
> $ strings /opt/infn-xr/1.0/sysroots/aarch64-xr-linux-musl/usr/lib64/.debug/libcrypto.so.1.1 | grep crt[a-z]\.o
> /data/jenkins/workspace/XR_yocto-xr_master/build/build/infn-xr/gmcu/tmp/work/aarch64-xr-linux-musl/openssl/1.1.1l-r0/recipe-sysroot/usr/lib64/crti.o
> /data/jenkins/workspace/XR_yocto-xr_master/build/build/infn-xr/gmcu/tmp/work/aarch64-xr-linux-musl/openssl/1.1.1l-r0/recipe-sysroot/usr/lib64/crtn.o
> $
>
> Is this a known issue? Yocto passes -fmacro-prefix-map and -fdebug-prefix-map as part of DEBUG_PREFIX_MAP to eliminate paths to WORKDIR. But it looks as that fails for the musl assembler file?

Testing reproducibility properly is a heavy exercise (you need to
build everything from scratch, then compare), and so we do it only for
glibc.

There have been recent fixes and tests to check that host paths do not
leak into target files, but dunfell probably has neither the fix nor
the test.

Alex

