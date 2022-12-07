Return-Path: <pintu.ping@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2FCAC352A1
	for <webhook@archiver.kernel.org>; Wed,  7 Dec 2022 17:44:02 +0000 (UTC)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
 by mx.groups.io with SMTP id smtpd.web11.22450.1670435035534644177
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Dec 2022 09:43:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=I/4V4aPL;
 spf=pass (domain: gmail.com, ip: 209.85.217.41, mailfrom: pintu.ping@gmail.com)
Received: by mail-vs1-f41.google.com with SMTP id k185so17961705vsc.2;
        Wed, 07 Dec 2022 09:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ag2kEWaQ1zaFpUUbRz0bOgmrNcdztlgDjtnASarBn3w=;
        b=I/4V4aPLGIsbIzEZZxdDxgzjLJnN1wHLACJBJwAZJKrvENkoeVybrRCwMaOjis1+J+
         3URW7U3F6dXxTypKcOPar2kWFgsFMlUgtuDOrLe5ZI/aKEo+APSevTlyvhLYk7HJT0vq
         ldgpFUmkrRQ9IFfJi+nqefov0gbY6WHHCxI1Xjne/OeDsijp94f/hCHsMoqjqujtYtY0
         PUmfXqlzd6To9e0iTW9vs7J2QPvbN40O7Ght9h9FKyUBo4unf/VwC1QuRih8Ab9FAFth
         piq5bgYEcSlNuWAyfc2oTHdVfWZ5fqGFrNWz0KbTSpxCNk5+OY/V3lyJ6CCOegLSWAuS
         /54w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ag2kEWaQ1zaFpUUbRz0bOgmrNcdztlgDjtnASarBn3w=;
        b=tNGioQ96zhW6oSHDl1cY8YxGYETmUlAxMS153kaFK//fBp5xUmvnHvi8Feuk1wHR2Q
         caI12wldsDCI+QeXeU0W6RL7cYp+YzsAarbIH9koYPHvHgmkEAqOZ56IpFaNq2uTFmWk
         SFtWCmcSQkePhw6rs49wWOb6sFibh0jvTj7C82EZEympJA+IDWISQHiqk3rTl4FT3jgz
         WMpYOR7W9jOPK/I3GI3Qt076A46LXvBJYFAr5OTZtXlBijfSm+j5VIvZFreR97BtUsxc
         FoNn4gCH9mfkDmDHt1kac1eKkcgabLxlIgiM5IKUeUJZZL/Q86daspfq9Fwv1ut5n/sD
         dhzA==
X-Gm-Message-State: ANoB5pmN3tEdTZQ/REgtDrbVul/j18Z8H7+56i+GA8BXdDqktF9SK1TF
	Y9fjsIbrpOpeeil/21Yg5/tEkVID2/C+o+jxmADuIeLo+Go=
X-Google-Smtp-Source: AA0mqf7zMYbveCobs0Rg1e5up2dH+8H+W5T3MIiWqMbuG9/n6rD53B0kMo2q7E4XaVnsmeI7xOpWAJWlBgytIHtAJdQ=
X-Received: by 2002:a05:6102:4188:b0:3aa:505a:9522 with SMTP id
 cd8-20020a056102418800b003aa505a9522mr38228062vsb.56.1670435034196; Wed, 07
 Dec 2022 09:43:54 -0800 (PST)
MIME-Version: 1.0
References: <CAOuPNLh1+LhxH8yuQprUntwjibAP_iuwF7tXnHjfhAZhLCCG-A@mail.gmail.com>
 <CAOuPNLgEs7Obni8kOqgznv_mLW8JQ4cF0CUS8jaV6AXEhw6aOg@mail.gmail.com> <CANPvuR=RT3YBSBmRHNtoeCMST2DJ3Wqq7fzh6jj2C1oxUxR0EA@mail.gmail.com>
In-Reply-To: <CANPvuR=RT3YBSBmRHNtoeCMST2DJ3Wqq7fzh6jj2C1oxUxR0EA@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Wed, 7 Dec 2022 23:13:42 +0530
Message-ID: <CAOuPNLjEUivqk27DhrHHmjnHE6MU79K57ahbFjVGR2KUyuCFWQ@mail.gmail.com>
Subject: [linux-yocto] Building Linux perf tool using bitbake
To: yocto@lists.yoctoproject.org, linux-yocto@lists.yoctoproject.org, 
	main@lists.yoctoproject.org
Cc: poky@lists.yoctoproject.org, bitbake-devel@lists.openembedded.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Dec 2022 17:44:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58748

Hi,

I have a Linux distribution using Yocto thud (and Yocto dunfell later project).
Kernel: 4.14 ; ARCH: arm32

I wanted to enable Linux perf tool building as part of our Yocto image creation.
I see that the perf recipe is already present in:
poky/meta/recipes-kernel/perf/perf.bb
https://git.yoctoproject.org/poky/plain/meta/recipes-kernel/perf/perf.bb

But when I build it using:
$ bitbake -v perf

I get below build errors:
{{{
ERROR: Nothing PROVIDES 'binutils' (but
/local/mnt/workspace/project/poky/meta/recipes-kernel/perf/perf.bb
DEPENDS on or otherwise requires it)
binutils was skipped: it has an incompatible license: GPLv3
ERROR: Required build target 'perf' has no buildable providers.
Missing or unbuildable dependency chain was: ['perf', 'binutils']
}}}

Now, I am not sure what is the issue here and how to resolve it.
Regarding binutils I checked and it seems to be present elsewhere.
I am not sure what needs to be done for binutils, or there is
something else in my repo ?

Can someone please help me to give some pointers on this ?

Thanks,
Pintu

