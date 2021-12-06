Return-Path: <henrik.riomar@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63323C433EF
	for <webhook@archiver.kernel.org>; Mon,  6 Dec 2021 16:40:30 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
 [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web12.54092.1638808829675733566
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Dec 2021 08:40:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NW+NcS3D;
 spf=pass (domain: gmail.com, ip: 209.85.210.171,
 mailfrom: henrik.riomar@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id g19so10674088pfb.8
        for <yocto@lists.yoctoproject.org>;
 Mon, 06 Dec 2021 08:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=47g5s9JJPf42H//M30BkgOOvnOaUajq4LcqzdZjZdMM=;
        b=NW+NcS3DLj9k9E1eqXWnM3Ofrx20ETIKpTdXvE58D0GVqp4HRu+kPZUcIAs5Poajhs
         6IoLrjsO/8xG6+Z5cIhR0H3ZI96kYEY6A+RuerLki3GO30pqXn0gBJMVb96C8YMM1Xxr
         3newTDRd5Sr17V+NLWLEuSw6CB7M3/d3pM/sQUuCtWOkgqof8izg3q6CTYiRkjDIfaKG
         9/alideTq3xU7U/366YSIeLqC/nJaDILCViWnmwRfKC1TlKgtzJitZt+g33D9xamHkgL
         tXdzmFLYV5h0XOTyuaDL2Rj5tMdEmbE91co68ZrAm0Zvi5qvS6ggsY2M6xVsnT6ElL8z
         ZbfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=47g5s9JJPf42H//M30BkgOOvnOaUajq4LcqzdZjZdMM=;
        b=oOork1Rxb1mHNcXjHK94QuBSVRuBS06wI8ijGxbZO3QP6Jf+CpXaeIneebj0FG+N5u
         FvbG5B/nyvZpWNMOHEAMS835dEBwXEdQDiF+iGCJkgbf0arT4ngPFefPZHtQsUQhKkaI
         7+yukoUG6TvScxsLBPbC6ZyuZqaGciULRliOMzi2asUgctYiVpQo7VUXjV5leYngSc0X
         9aLeBbLPVEQ1NvUTcyxx+6Mk0GjV5wGyFE7PPLg7l1teqKLA0ABEAgDP+w9bz53HdxNx
         U+v1tMEgMMCNKcbUFVCgwriaPo01RODSB2Z1sEi24hmxHLV7bMr1uUbhaUUDjTACsQ0T
         zA3A==
X-Gm-Message-State: AOAM5322UbzgkVcPfuHeHqu9Cx28OiVTRuTbkPpvjlrid2lYWkvfuFa+
	WJXGVO/0W7vmKZarM79swfpaIqvYAw631zzgne025/iAxPI=
X-Google-Smtp-Source: 
 ABdhPJwu2tpRzFPPIUqBjHgZhQHY6rVPCFzFP7M+NmAuyZoLgs3vYEHVBVfBGsCgyL96mjEm05W6S/zE1Y2tgqdPK4s=
X-Received: by 2002:aa7:84d7:0:b0:49f:aa6d:8745 with SMTP id
 x23-20020aa784d7000000b0049faa6d8745mr38035102pfn.50.1638808828838; Mon, 06
 Dec 2021 08:40:28 -0800 (PST)
MIME-Version: 1.0
From: Henrik Riomar <henrik.riomar@gmail.com>
Date: Mon, 6 Dec 2021 17:40:17 +0100
Message-ID: 
 <CAF1P4FEULketOK1DizcW5hmutF2HZdVyPZLhD4gh3cuiP31GAg@mail.gmail.com>
Subject: Setting BUILDNAME to a string broke in 3.1.12
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Dec 2021 16:40:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55484

Hi,

We set the BUILDNAME (via local.conf) variable to the output of "git
describe --long --always" so this info ends up in /etc/version instead
of a date. (i.e to know the exact source version of the code
deployed on a target)

This has worked fine for us up until 3.1.12, but now we just get a
date (201803...) in /etc/version.

Note that since switching to Dunfell we were forced to set
BUILD_REPRODUCIBLE_BINARIES to 0, so the build system would not "mess
up" /etc/version, but not even that helps now.

What's the official way to get something more useful than a date (in
the long past) in /etc/version?

Thanks,
 Henrik

