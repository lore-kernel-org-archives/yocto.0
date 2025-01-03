Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F203BE77188
	for <webhook@archiver.kernel.org>; Fri,  3 Jan 2025 11:28:55 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web10.28748.1735903734613631502
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jan 2025 03:28:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aSV9Bf42;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6d918f066c1so61291116d6.2
        for <yocto@lists.yoctoproject.org>; Fri, 03 Jan 2025 03:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735903733; x=1736508533; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vF/lbJbrI+15VGnVODAe2Ns9sXLd6WPGAZay9/qK54s=;
        b=aSV9Bf42bV+EMXS7mjLt0R8sJ0iAO4t7D4Ai0HFMTe3DbmLDYQ5DqOaExBOiC8At/E
         bjOqu+LYagB3Bbq/eXKUpWDRfF941lGAuYAp94eIu9L1Oyzzg6dwDX72KXCBt6hlFcA5
         vkaz7mp9KhWGrorohIEP0Mhu00dhw9/ka3j2MPp3KtSCKItiNKmsAZ2Q3d7qB/LGQeOt
         8if8FS02S/2q/+lmOliS58QTyOll5/2m78HjjzgExgZ9RegsPA4FyZ15Uyf34PQ7gU9e
         JDyq/m+aTyZdrd5vYBhQJ6qHw9HXetZcCbCA4SV/A6e7Vq6oSAWoWlBEjZlyzYqGWRD4
         wj2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735903733; x=1736508533;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vF/lbJbrI+15VGnVODAe2Ns9sXLd6WPGAZay9/qK54s=;
        b=lwWPRPcmCUYPd9k9YntQJW1D6R/2aVDEBnpJz5GsVpCHMztXg42cAzk0cCWKgA5WtM
         TFOjbekBm3zCuUX51Oq4tl5rt8e3fdWYDluTC0YC9HA0JSttoU4IktzQFZORT4QHWAyU
         l7mIFZ2zxxWPPoxlYjWM7Xsuv3UBNAxduFDhLsl/2f45J/aiu1wbZXEVcSrLYTETjnuN
         xv1SkDoV4Wck4PD+Gb0AUV5E+4AnKq0RvBu/7Vxlbbh2cOHwRI/vrLhndF/lW8vgbe8O
         ny3kPMJOGPzFBi4hQxc5c5yqYHkg4ueYbSkp0djkAjwIYd9L2Yuw5c2WgdIaG1rnm7p7
         V+Vw==
X-Gm-Message-State: AOJu0YwPMTu6oEmIXHCEx42619uRBtfC7RjTCKuUdWG6P2pb5ysxCJOx
	N8DuDkr7fcRbRLOjoVGRRn/fTImAOvhAcx0cPLJrY5KN+KjHC1um7yQlPJdCCdaUtIRQzslGwIM
	GY7xPLQGK/EsoMLY59JG+yhFHLKdA6A==
X-Gm-Gg: ASbGncvkCjrCrqg5W/P3nDwBR07jR5Xt9bwvxEGj5awuoMhSJPYVBg6DNI4/jDmCOO1
	Gi8NpGaPHhQiVg6KPXUEl86pG40rGGWQLj4mN9pXEwd22dGV1l+LMqzx3scWULI5ZrpM7RWs+
X-Google-Smtp-Source: AGHT+IFw+Uazoyyv6Qh97Q039ytTh5Rw/icJ81o3xA3kGZUtJw8WBrHkMnPIhB2YxX68fPip2GchcCT5R7QjbuMuNUc=
X-Received: by 2002:ad4:5aad:0:b0:6d8:d5f6:8c72 with SMTP id
 6a1803df08f44-6dd2332e380mr846132276d6.19.1735903732118; Fri, 03 Jan 2025
 03:28:52 -0800 (PST)
MIME-Version: 1.0
References: <gCbn.1735885592927614865.X1IH@lists.yoctoproject.org>
In-Reply-To: <gCbn.1735885592927614865.X1IH@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 3 Jan 2025 12:28:40 +0100
Message-ID: <CANNYZj-hLXPNWe0-uJd-vsV9_GCRvZ8-5UMwDpJ+wh+yzVo=Dw@mail.gmail.com>
Subject: Re: [yocto] do_package_qa error regarding libGL.so.1()(64bit)
 dependency #kirkstone #sdk #yocto
To: yocto@lists.yoctoproject.org, thejas.raj@mindteck.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Jan 2025 11:28:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64494

It's hard to give specific advice without being able to replicate and
see your build. You need to find out what recipe provides libGL.so.1
in your build, and add RDEPENDS on the package containing that
library.

Alex

On Fri, 3 Jan 2025 at 07:26, thejas.raj via lists.yoctoproject.org
<thejas.raj=mindteck.com@lists.yoctoproject.org> wrote:
>
> Hey,
>
> I'm trying to build a package incorporating a custom meta layer for incorporating pylon5 package containing the bin, lib, include files.
> During the build's do_package_qa, this error pops up :
>
> ERROR: pylon-trial-1.0-r0 do_package_qa: QA Issue: /opt/pylon5/bin/platforms/libqxcb.so contained in package pylon-trial requires libGL.so.1()(64bit), but no providers found in RDEPENDS:pylon-trial? [file-rdeps]
> ERROR: pylon-trial-1.0-r0 do_package_qa: Fatal QA errors were found, failing task.
>
> FYI, I'm using the kirkstone version and I've attached the recipe for your reference
>
> Thanks in advance
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64493): https://lists.yoctoproject.org/g/yocto/message/64493
> Mute This Topic: https://lists.yoctoproject.org/mt/110402750/1686489
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkstone
> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

