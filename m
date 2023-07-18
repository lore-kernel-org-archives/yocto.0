Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43BFFEB64DC
	for <webhook@archiver.kernel.org>; Tue, 18 Jul 2023 17:26:25 +0000 (UTC)
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
 by mx.groups.io with SMTP id smtpd.web10.1920.1689701180644875105
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jul 2023 10:26:20 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=R2uPY6dv;
 spf=pass (domain: gmail.com, ip: 209.85.161.43, mailfrom: jpewhacker@gmail.com)
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-56368c40e8eso3348703eaf.0
        for <yocto@lists.yoctoproject.org>; Tue, 18 Jul 2023 10:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689701179; x=1692293179;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZSjgIUBJAu3fKrnh8sEudOrXBrKt3UHGdt/JWcY61xI=;
        b=R2uPY6dvjg25X/Q6NIEDh+JWs0QYj1WMS3SGC5Si/TwG4hHzCEGk0zgYFom59x8d/z
         mKxbDLC7X+nzsGCEY/mhyN9dlfwAs4YK5pD5ZmVHhya+QwI8bGpJsMdGzMT6/DznKB6M
         2AwEe47TBbBQqrSUfEPiiYS1DbseKCUmJGp/Nmwb8Sw6MzJ+t0gg92Dm6fqbgc4PI+as
         FeLBJp7dzLdihndVl6jPJSSSEqAbkerd4BgtG7EaqhifYux/GMNuNpS0ySf3tRNXI5EW
         t6Uhn++aQn4WQ0qQBod6tFt0CsVSvrWHCOx4+1hoAeP3jywO9nqzA7N9Av+Qk4JI84z0
         TR7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689701179; x=1692293179;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZSjgIUBJAu3fKrnh8sEudOrXBrKt3UHGdt/JWcY61xI=;
        b=P+rtD/J2ANd8GvLWvIv4KSzJvHc5PsMG6edpE+I8U6Zq6hq5lnDMxZA0RlXuHAZ5gW
         gyOcsuKus8NAlMdbaULc2SJnzG16xfemxuj2DdcRg0O2ccE5HlTGo1zaUE8ZOIMLouzn
         TLZQbqMBwtMdM0VP7hWyAP0ttDrXLWgNFtJXIlh2ej/vWtAWEqGjLz1/OiY4WzHGHPhS
         gWve4EIQHd0GwoU1p8vByazmEPbXXyuB+cmoD7tUsIq2lL/aGAR79FMlyW/wkpP+vXRS
         n+FuNiBP1HNDX255BbInuyvX9354WAjVw7qbZokUUPu/iapBgF/MMPghsu+mECGnbZ2k
         /esQ==
X-Gm-Message-State: ABy/qLaqcIG8llVxaUaRf6tJGxgnrLzRjoz2QEF4f/9lmGWhRJPFMW32
	rV5WSrogMPBVypCY2RCyIWia7v7L3S4=
X-Google-Smtp-Source: APBJJlG6Ph4k1Nb/+F/Qlr7Zs3ykZRjjEe0n5TPSFrm5iYQkponqFc6KEoOPHM9bbJni8JbR6Z+ZUA==
X-Received: by 2002:a4a:e83d:0:b0:566:f6a0:87e4 with SMTP id d29-20020a4ae83d000000b00566f6a087e4mr21754ood.0.1689701179186;
        Tue, 18 Jul 2023 10:26:19 -0700 (PDT)
Received: from localhost.localdomain ([2601:282:4300:19e0::65c])
        by smtp.gmail.com with ESMTPSA id 129-20020a4a0687000000b00565ebacf9cfsm1005120ooj.33.2023.07.18.10.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jul 2023 10:26:18 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [ptest-runner][PATCH 0/5] Fix ptest timeout errors
Date: Tue, 18 Jul 2023 11:26:09 -0600
Message-Id: <20230718172614.469304-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jul 2023 17:26:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60605

e50f217 ("Change test timeout to be total elapsed time") was misguided
in that the timeout is actually the timeout between receiving output
from the process and not the total test timeout. Fix this and also a few
other bugs that were noticed as being different between the old
ptest-runner and the new one.

Joshua Watt (5):
  Revert "Change test timeout to be total elapsed time"
  Only collect system state on timeout
  Report test failure on timeout
  Remove _child_reader singleton
  Flush stdout and stderr after test

 tests/data/hang/ptest/run-ptest |   1 -
 tests/utils.c                   |   2 +-
 utils.c                         | 179 +++++++++++++++-----------------
 3 files changed, 84 insertions(+), 98 deletions(-)

-- 
2.33.0


