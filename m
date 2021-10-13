Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA95C433F5
	for <webhook@archiver.kernel.org>; Wed, 13 Oct 2021 16:18:54 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.10538.1634141933011822368
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 09:18:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jvsk0G3V;
 spf=pass (domain: gmail.com, ip: 209.85.221.51,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f51.google.com with SMTP id r18so10217784wrg.6
        for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 09:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oZrNSfSckHzs9zdKxEJ6RtTbMcHpMT7qbC4wZ83n5bo=;
        b=jvsk0G3VOf+f4dfq24iBePqPPxoa2YeehzdeZZIJstvg6H2KmEiuJPoebGuduvGNB6
         vArgASQp9CKneo9LiHulyCZT8FsOdnvRtDrWapTSgd2k6a73DFbRpY2aVxfTO+OxT+lZ
         2XHKXJhqyfisR94nliQVRtJwE6b/oPwcTOPFq7XDQExW94eRIEkkhD9agr7AUT/ZG/MC
         qdFa10Dq1BFLjd37H7RKMJ4s3kYAt90OyKZ5D+ik6ewS+RsjZ300mgnfMvOS2Ovlqw8V
         ecM0yK1uZ4IyKMC2SenrbepzYZGsXkz/zraPEN7JMQ+9sLMPV0ILMNcKrj/iq2xlK1AO
         U6Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oZrNSfSckHzs9zdKxEJ6RtTbMcHpMT7qbC4wZ83n5bo=;
        b=OovSMq4j4bn3KU82SHq30XU+L1GmpOYnIC1W5sSk5hBQ9YtXSy3nqS/a4Z7DVMbHBd
         JZO7ymR4XvacL0pfZoI0OcdR6y7a19XbdQrM4F/zdxkqr9OtBrrGzVH0pwT+mH9hRfgC
         PLtXuxd2S6ew6idQevQ+ejvKxLrqQ+BuGYfhIVf4iKW/novto12+wjFkwUbJu+a/Ojh9
         lM1zyFG4Mdmxz5NRmbMqIWdP+xKTE+quVl5Ybr1hWIokEK9K6BHYU1bRa6NFRJHnksf5
         fTXlp0BMEkoDOgspW0Zg01nj1eHegtz1/24N0K0gwIKJ8H6YaTlsPZrpRP7lLMD+TwKL
         zMow==
X-Gm-Message-State: AOAM5327CEo2PrcQ7XDkSTwelTSMeI4mooVSGcDei+EiId7Qt5vcIOUC
	YTeDRLPqHyWFhrkc7gclx8WdQvnLpXw=
X-Google-Smtp-Source: 
 ABdhPJytCYuh3NwAG1n2sGcniqAKF2zVDtFeDi/OooXPHBhqPhx5xh2np3zhcJsYv/hbnkwJ0toqcg==
X-Received: by 2002:a1c:1f86:: with SMTP id
 f128mr13729109wmf.124.1634141931437;
        Wed, 13 Oct 2021 09:18:51 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id
 c77sm5718421wme.48.2021.10.13.09.18.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Oct 2021 09:18:51 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH yocto-autobuilder-helper] scripts/collect-results: publish
 everything in tmp/log/oeqa/
Date: Wed, 13 Oct 2021 18:18:39 +0200
Message-Id: <20211013161839.90894-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Oct 2021 16:18:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55052

From: Alexander Kanavin <alex@linutronix.de>

In addition to the testresult json, testimage class now also
provides the testimage task log and qemu console output log
which can be useful for debugging test failures or
even checking qemu test runs when failures did not happen.

Rather than duplicate specific file/folder names, let's copy all
that is available, and define what is published in the testimage
class itself (with appropriate folder structure if/when needed).
At the moment there's just three files, and they are copied into
folders named after image names, so there's no clutter or risk
of mixing them up with unrelated logs.

[YOCTO #14518]

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 scripts/collect-results | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/scripts/collect-results b/scripts/collect-results
index 93834d6..3663330 100755
--- a/scripts/collect-results
+++ b/scripts/collect-results
@@ -3,11 +3,9 @@ WORKDIR=$1
 DEST=$2
 target=$3
 
-RESFILE=$WORKDIR/tmp/log/oeqa/testresults.json 
-
-if [ -e $RESFILE ]; then
-    mkdir -p $DEST/$target
-    cp $WORKDIR/tmp/log/oeqa/testresults.json  $DEST/$target/
+mkdir -p $DEST
+if [ -e $WORKDIR/tmp/log/oeqa/ ]; then
+    cp -rf $WORKDIR/tmp/log/oeqa/ $DEST/$target
 fi
 
 if [ -e $WORKDIR/buildhistory ]; then
-- 
2.31.1


