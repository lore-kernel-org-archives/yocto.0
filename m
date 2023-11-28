Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B8EDC4167B
	for <webhook@archiver.kernel.org>; Tue, 28 Nov 2023 18:38:16 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web10.95.1701196694073197641
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Nov 2023 10:38:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jjEUndF6;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6cd97c135e8so1902408b3a.0
        for <yocto@lists.yoctoproject.org>; Tue, 28 Nov 2023 10:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701196693; x=1701801493; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fil46Td61rmZ/DsGLtvl/x0VNj60TgOc73/7U+ydFBw=;
        b=jjEUndF6Phh6KtVsyxuTGx/H9e5+ieCoFpvsEEtAgODHWEuGVzjMSVsnir8mex+MFI
         s9rQhzLsONltCTBbjrp8dJfMicfV+V62qSPzHK+7/p2tEGZDCliPtYp4FZp0vHcVVigU
         8Ro9Zl1LG9nJBod2B/fHa8+zGLi2DtELtE8FkJJehaV1eMxUI+lxxivEetuxO2Pru+Ul
         Y10OgP9QezdAy8sp0QYo4j8cUGhQAd/9kdiQ0aswhcB/0I8SWkYdfL/am8PZsJr8xEpF
         rTNQaCZ3VNZe5jeHY4kAGEU//7/zCBFZeBCYlvCNT6gHbfizjTe4m39oLc+dynITYiU+
         3t/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701196693; x=1701801493;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fil46Td61rmZ/DsGLtvl/x0VNj60TgOc73/7U+ydFBw=;
        b=SpnzNtbGqmPzIMil2pE20jQBUvrwb4uAMwLqhPojWz+IyM+ksOY9NNcRMW4TQs5B5j
         CKDTi5/YwtfXkO3IxhXXl31BHPL2gNvJIqciUZXeFivfw9kug9QMmv56UPfqCMkAihP4
         yV/N0FP7FJ24o7x8LMPG2rcJx5VAaHMS1zXYXyMFNv0Z6F+sX303mhSJSrFGfcMvgTfy
         zZ9fXQyDiFDAML2t03Q3/3lOMMIKQC8+w1HxT3CjJXlg6bJg8S+G9p5o0ywFQZbM0OiC
         TcXv55tOFeGytOx7Qcsuq+hn/FW1OPdcHGcSz4VO3jHsy1mAd+PIDu3EAD8hBLkxSVi/
         R5Qg==
X-Gm-Message-State: AOJu0YyU0VmNGQx6Zn4Rz7ExJUWNihc9JOUl2skJznr9FzHNoRPh+2nV
	iLkcxp0rrxK9qi5dSO7/V23MDsq2l9myMg==
X-Google-Smtp-Source: AGHT+IF5LcM78aefV+GQHwEmASMLyAYPzDD3JZmOGvwlCqiK4zd8fO9n4H0t8NBxUXM2UzLF07u33g==
X-Received: by 2002:a05:6a20:430f:b0:187:6dab:578 with SMTP id h15-20020a056a20430f00b001876dab0578mr17631169pzk.40.1701196693152;
        Tue, 28 Nov 2023 10:38:13 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9100:2cb0::2c3f])
        by smtp.gmail.com with ESMTPSA id o1-20020a056a00214100b006cb6ba5fe72sm9368431pfk.122.2023.11.28.10.38.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 10:38:12 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: Match the machine spec to task for rv32 qemu jobs
Date: Tue, 28 Nov 2023 10:38:09 -0800
Message-ID: <20231128183809.1480960-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Nov 2023 18:38:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61769

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index e95a292..c4b31e3 100644
--- a/config.json
+++ b/config.json
@@ -589,7 +589,7 @@
             "TEMPLATE" : "ltp-qemu"
         },
         "qemuriscv32" : {
-            "MACHINE" : "qemuriscv64",
+            "MACHINE" : "qemuriscv32",
             "TEMPLATE" : "arch-qemu"
         },
         "qemuriscv64" : {
@@ -597,7 +597,7 @@
             "TEMPLATE" : "arch-qemu"
         },
         "qemuriscv32-tc" : {
-            "MACHINE" : "qemuriscv64",
+            "MACHINE" : "qemuriscv32",
             "TEMPLATE" : "toolchain-qemu"
         },
         "qemuriscv64-tc" : {
-- 
2.43.0


