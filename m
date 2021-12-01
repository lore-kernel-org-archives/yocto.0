Return-Path: <schnitzeltony@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDEEEC433EF
	for <webhook@archiver.kernel.org>; Wed,  1 Dec 2021 18:45:20 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.1101.1638384320330492234
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Dec 2021 10:45:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Os2s9cHG;
 spf=pass (domain: gmail.com, ip: 209.85.216.50,
 mailfrom: schnitzeltony@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id
 cq22-20020a17090af99600b001a9550a17a5so450277pjb.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 01 Dec 2021 10:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=MaGwUBF5qZJJ+423Hvr+3jz8F0uOZI+XNtm5lRc3ulw=;
        b=Os2s9cHGwxP3dtxwixZo8sFCJHbDjmhtfv/dq/7pEpyrFNwT+pMdblV496ApuR2TIY
         LOQVGGdiufUc4PTeKYxUYwtnJeM/fOns83/rYm1+KnWlEq0D/lKqQLu+vZSEU3WCAyM3
         92tMFn5xcp4pTCbeKmIgFNZJ0swsOOurh2BbFHLD7PRunF+ksTp2+2VlnwEjxh4LD7al
         oFlIaXOA5t7Mo0ETzaPpqopTCVI9UmDSB4TKw4qj4N6cUBcmONj/TLX8LgowpavASxU8
         4cM5LRRx3OqjFRs4ak/34tuCZXeecWKWgmEPhshK3de/4UYf143S4OX3+zdNMFVe8bIV
         aE0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MaGwUBF5qZJJ+423Hvr+3jz8F0uOZI+XNtm5lRc3ulw=;
        b=oYu9FibWJ6pu6RnHvrVsOGmdF/KL4zjjzfgIlps/CuHRDz62Imbo+gYS6obqmnVvf2
         Ja4dGPTFVS7TRoW7dH67NRTOPuCZNfqvcUGZkigz3Wf4/yGkn0ExXiIAiTiNxbQ3lWab
         /AG4213k5fNAZLzRD+Itx8l2pLV+DeV883vJEZm9nbOJWg4m/FgV17R5hCQTXho6LJl/
         YBWa1Qt8vu2/zRo7u+u4bcOgWr7BjVPrRPP1ZylN5rjAvq8A1epLHyJy4TO0LcCVSOJ+
         gH0VdeOz/iorR83sGhKk3kF5pW2gAy/9ugptfjolk7j43bYVUZGkf5LgMmhyTR4ib70F
         gdJA==
X-Gm-Message-State: AOAM533G7Sp8u9hEQzSCyXkWLXXORbowhuk73Bk1zNMG7PRK8VE6Ppmd
	yZRDCHzUwosNUWJfu93XPu7fIL7F32np9zinwoT2RV53GDw=
X-Google-Smtp-Source: 
 ABdhPJyqayYuwB1pDQRNKyhW4fFUWfHMrcO/f4/D1bznPBQqPg/nOhCDXckFP4CIX80JMv19Yrv8Iuy8SrA7gsY7o8I=
X-Received: by 2002:a17:90b:4b90:: with SMTP id
 lr16mr9818904pjb.57.1638384319566;
 Wed, 01 Dec 2021 10:45:19 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Wed, 1 Dec 2021 19:45:08 +0100
Message-ID: 
 <CALbNGRSHUSdJMr3ZEVFO9NoktSspSJLdkuE3yTbr32+WErEEhQ@mail.gmail.com>
Subject: downloads.yoctoproject.org down?
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Dec 2021 18:45:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55460

Hi,

Trying to install buildtools (dunfell) I get

./sources/openembedded-core/scripts/install-buildtools
INFO: Fetching buildtools installer
ERROR: Could not download file from
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.2_M1/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1%2Bsnapshot-20200617.sh

Has anybody a chance to help me not being killed :)

Cheers,

Andreas

