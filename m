Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF8C4C433F5
	for <webhook@archiver.kernel.org>; Thu, 14 Oct 2021 16:51:12 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.822.1634230271210821835
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 09:51:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dZBjnpcn;
 spf=pass (domain: gmail.com, ip: 209.85.221.45,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f45.google.com with SMTP id r7so21486244wrc.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 09:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IJHM2q+SdD5x3lYGqc/FHk7GY1gGOR3Tb3foqRhEKeA=;
        b=dZBjnpcnD7XqEAMJZiWqpici9q1e2RGdREcqxJPx9Cxyb7AZlA+KjTUVz3XRFZ3qxl
         7auTdl0Zz8B2NLuQ8baLul+qvQn2ETLTOtMEDamgfxmhEe4zB8/q0OhtUVX+U2tcOufw
         zzt+2dJjHVkM+l9+Fnfm6Mvp9ZGCSHwktO/ER84sAw/URLYf3Uhd6mJAfNTyNPjzQUNh
         mhHWhb8qcb2B3dfg5PuNzXT5zI58VjDYll5f/EqJ7lAuhEyG8cAbKSNgNmShnRUAteO3
         0ak9RYrNA6qsOoLM3y5MlT/3ZPQ1C7ODOa8Bo7Z7NWyPkaBcvC9RPzWo1AJef5yVtUSP
         JeBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IJHM2q+SdD5x3lYGqc/FHk7GY1gGOR3Tb3foqRhEKeA=;
        b=frxiNBP5h7n16TZ19kZGuc3sTM88HoWL301Pg058KXC6pqFjrCZljO7xcsVuSPoRX9
         RZwWrpaG/EStDdEkiuWBcVLicD7oRWcurIgtiyp9/k190YIYFLpEubE9zrdfxW6FLJ7R
         iHPVvId2vlo/EaKTXMCiYxpVgNLmIxSTgZDNW0ZEPsw1Q2ikUFBXGoQnDxZEYqIcq20U
         hBWMqwVYl9tTxEeOpRVSgCfSr2YWchK89B5bAVu0h4EkS1AIj/iWyg0ITex6mC3bZLEA
         TF2k76r5MbvkpSRX8KfMFkBd7HQ+glSa2/t1z5S4smw2NqY4eBRurt4BiJuFwkaVsapy
         eKfw==
X-Gm-Message-State: AOAM5332LwfJ+HRkrpnijDxTa9y+dlsEBZiqAQGHanhXqpkwRDZgMtZE
	siU+s+UxSWwUiK7X/zgv8UTaItQe344=
X-Google-Smtp-Source: 
 ABdhPJz+BhvvMp3LJDgOXLdR4l8HTRFFUhyUtcGkax2RAUnQbWXpUEYO/LfmoWFbOS0RlsxbclG/VA==
X-Received: by 2002:a05:6000:1885:: with SMTP id
 a5mr7803313wri.64.1634230269447;
        Thu, 14 Oct 2021 09:51:09 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id
 f15sm2775733wrt.38.2021.10.14.09.51.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 09:51:09 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH yocto-autobuilder-helper] scripts/collect-results: publish
 everything in tmp/log/oeqa/
Date: Thu, 14 Oct 2021 18:51:04 +0200
Message-Id: <20211014165104.124764-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Oct 2021 16:51:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55077

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
index 93834d6..7caa177 100755
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
+    cp -Lrf $WORKDIR/tmp/log/oeqa/ $DEST/$target
 fi
 
 if [ -e $WORKDIR/buildhistory ]; then
-- 
2.31.1


