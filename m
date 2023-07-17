Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AC83EB64DC
	for <webhook@archiver.kernel.org>; Mon, 17 Jul 2023 14:28:37 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
 by mx.groups.io with SMTP id smtpd.web10.9655.1689604116702264635
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jul 2023 07:28:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=sl8Ijr9W;
 spf=pass (domain: gmail.com, ip: 209.85.160.45, mailfrom: jpewhacker@gmail.com)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-1b0138963ffso3585578fac.0
        for <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 07:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689604115; x=1692196115;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SD42IOAAuPpCx7/WS3V5GgfhA/aMQl7gF7RYpUuHXU0=;
        b=sl8Ijr9WXRVrg4XpL54/yOHR3MaeoqvsdSBb5rtNRPUxS8+E8XGv5grcPMm1DZWgwR
         SkgVV86a3glhaq6bUFj+6GJsHHjmDDIk0C5/YmwURMNCLoH9H3fT/+AxuYq4Ln468JJx
         Z1AsBBKMb5wpeBzZfAPbYuAmGmpKZscDLpFGPOIZ7gIlLZNqlmCx0eqE4Ee+v7vRKFI6
         rkNf63kaSZqEg7LDrW6SWQq5K+oUEw58x1580LIQ18Cf5PM/557Gz+bVYzdBryPCJHTM
         6VpPKnKLHL/0Bjgdd+YrfihBaFOluhvyPOU/ENavehTkMCi0dphx8Fdzs7dgufWU+dAh
         Vdiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689604115; x=1692196115;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SD42IOAAuPpCx7/WS3V5GgfhA/aMQl7gF7RYpUuHXU0=;
        b=I6Uiiv+V1BBwUulG0rkrVZesJMn2dHngT5zr0Hoc/DlyXrvXxaXON+mk8KEL6W3K7F
         txoS5RUzr2Yb7Wb/j/+grE7yR5eGbrNoc/TYq5qbQPt7acaDpkaCuGFgWcTPiUeZKW0P
         yEAD/m99d4iMnD83FzG+H3cij+JKJ7O15kPOTyEG2blRxNBa8bk3HwYSfY31kKZp+n2c
         osuSj1i5TCS6AfxguxQMSVHb5uCbGNxAauAiRnIWqXNuPblQB2moLWZWYbNbtS9qa5v+
         /I/r4QLoDTROHQwc7HVDVOXrigwc4yJ3kMSCi+Kttg4AJA8sgknSjFy7Jn/fiCsiFe1e
         FHjg==
X-Gm-Message-State: ABy/qLbDcjA2f1dRmnrNI/ZEuLbgk0lo1Vvw/aistXAfnIFAYoPUA4yC
	yrhlY+OEUHUQlUTsDfkIcDA0LOG7sTw=
X-Google-Smtp-Source: APBJJlFXqpj2l1all0v2dAIQNJNmUxfPnP4v9CQ0oXLl62jcaEgo8kiYMY4CTJfe1Q23r8dhkyGb4w==
X-Received: by 2002:a05:6870:9a02:b0:1a9:8bce:9c59 with SMTP id fo2-20020a0568709a0200b001a98bce9c59mr13104681oab.13.1689604115275;
        Mon, 17 Jul 2023 07:28:35 -0700 (PDT)
Received: from localhost.localdomain ([2601:282:4300:19e0::ad83])
        by smtp.gmail.com with ESMTPSA id x6-20020a056870740600b001b04434d934sm7205967oam.34.2023.07.17.07.28.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 07:28:34 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [ptest-runner][PATCH 0/4] Stop running ptests in parallel
Date: Mon, 17 Jul 2023 08:28:27 -0600
Message-Id: <20230717142831.1634172-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 14:28:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60588

07d8a67 ("runner: Correctly handle running parallel tests") made an
incorrect assumption that it was OK to run ptests in parallel and
interleave the output. This is not correct since OE selftest expects all
text between a BEGIN and END block to be for a single ptest. Revert the
commit to run in parallel and add the correct fix for the bug with
running multiple ptests in a single invocation, as well as a few other
fixes

Joshua Watt (4):
  Revert "runner: Correctly handle running parallel tests"
  Recreate pipe for each test
  Report if child dies from a signal
  Change test timeout to be total elapsed time

 tests/data/hang/ptest/run-ptest   |   1 +
 tests/data/signal/ptest/run-ptest |  10 ++
 tests/utils.c                     |   4 +-
 utils.c                           | 290 +++++++++++++-----------------
 4 files changed, 140 insertions(+), 165 deletions(-)
 create mode 100755 tests/data/signal/ptest/run-ptest

-- 
2.33.0


