Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E0CC433EF
	for <webhook@archiver.kernel.org>; Wed, 23 Feb 2022 04:15:18 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web12.3509.1645589717980797202
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 20:15:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=KX+wPXDt;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.181,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f181.google.com with SMTP id g24so3106620qkl.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 20:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TZSsz408DI1MbwsqQkHVvyNujTxAAI69h1PTAkSM3hE=;
        b=KX+wPXDtcMdKARBhYYcjgO/sJPmKkQL/NTgQbjjiMKYBPwa4mnpgjGOjFn/LbS00Sj
         drAWfAKAgEy11xZrdIZ+i///aVDJthuJ4TfUh5BgeOh9iY+qlxWLmTcPV6eax0oUStC4
         lq1Iuvs8lwIouUAdUVIfLOJXYDDd0QEf5Sr/TYTL5g3KlRJl3+dug90gbDBZ0MgKkVma
         ZU8pivToA0+L+nQEGKYlCA0QBYU1sisg/jAL/F7iEeEEBJRN30qCeDMX8O1okXomccZK
         k8gnsxsZG04fmr5kFq1BDXn3JF7bS67mJVFr8UA4wRQy1k9M8kzj3k1SlmLce5bqLj3v
         90rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TZSsz408DI1MbwsqQkHVvyNujTxAAI69h1PTAkSM3hE=;
        b=ggv0Rv8C8ql4zBG9sqbhI64AQ4fwO5Xsya/PocfdcW197qK2jT6+du9KjfZ56CvN/Z
         XpCeonoYOvfH4+7Tv7JStsT6jNIYdGbtCgxaRWvq96HDNnGYi1X9CRlVZvZv8y+sH4lK
         wzvygs4uwobOThqKX0DynmdO7r0ffSDJXLHXyob/x14YQZFDNx8XSQYDdmeHKD0tOBog
         IJFZlx+OdttaTlO5JBGWIjspIhP86phxcNmjympcefdHqUZWbgNpt6JAPasPr0No6W7B
         g440Xwib/lUblkaktecZQregN356qOQtnZKtFB/027rv7CsjB6eJPA8dC4rJdkx4CCcn
         ajyg==
X-Gm-Message-State: AOAM530yv7xgiflaZaRUk1HW863A4j6TpMPKpg/PekQXjTl5HUtXyzIF
	mRlxDpI1cuL1/p5gBInK9x6f1b3s36BugQ==
X-Google-Smtp-Source: 
 ABdhPJyNvUi/cmeIKzVRumd6qPpxDadsloDy7GzxHAeDDrpPJLuzBXY2/FF/8OuBRkh47K3BjH3ojQ==
X-Received: by 2002:a37:5345:0:b0:47b:e4b3:48ea with SMTP id
 h66-20020a375345000000b0047be4b348eamr17399408qkb.35.1645589716889;
        Tue, 22 Feb 2022 20:15:16 -0800 (PST)
Received: from localhost ([2605:a601:a665:9200:7e10:e906:9de0:2769])
        by smtp.gmail.com with ESMTPSA id
 br35sm1336016qkb.118.2022.02.22.20.15.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 20:15:16 -0800 (PST)
From: Jon Mason <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] layers: add kirkstone support
Date: Tue, 22 Feb 2022 23:15:15 -0500
Message-Id: <20220223041515.3720662-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Feb 2022 04:15:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56257

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 meta-zephyr-bsp/conf/layer.conf  | 4 ++--
 meta-zephyr-core/conf/layer.conf | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-zephyr-bsp/conf/layer.conf b/meta-zephyr-bsp/conf/layer.conf
index d5d478c442b1..507374f206b0 100644
--- a/meta-zephyr-bsp/conf/layer.conf
+++ b/meta-zephyr-bsp/conf/layer.conf
@@ -15,6 +15,6 @@ LAYERVERSION_zephyrbsp = "1"
 
 LAYERDEPENDS_zephyrbsp = "zephyrcore core meta-python"
 
-LAYERSERIES_COMPAT_zephyrbsp = "dunfell gatesgarth hardknott honister"
+LAYERSERIES_COMPAT_zephyrbsp = "dunfell gatesgarth hardknott honister kirkstone"
 
-X86_TUNE_DIR = "${@bb.utils.contains('LAYERSERIES_CORENAMES', 'honister', 'include/x86', 'include', d)}"
+X86_TUNE_DIR = "${@bb.utils.contains_any('LAYERSERIES_CORENAMES', 'honister kirkstone', 'include/x86', 'include', d)}"
diff --git a/meta-zephyr-core/conf/layer.conf b/meta-zephyr-core/conf/layer.conf
index d3ac10e2f4b6..20c8fdf93a83 100644
--- a/meta-zephyr-core/conf/layer.conf
+++ b/meta-zephyr-core/conf/layer.conf
@@ -15,8 +15,8 @@ LAYERVERSION_zephyrcore = "1"
 
 LAYERDEPENDS_zephyrcore = "core meta-python"
 
-LAYERSERIES_COMPAT_zephyrcore = "dunfell gatesgarth hardknott honister"
+LAYERSERIES_COMPAT_zephyrcore = "dunfell gatesgarth hardknott honister kirkstone"
 
-X86_TUNE_DIR = "${@bb.utils.contains('LAYERSERIES_CORENAMES', 'honister', 'include/x86', 'include', d)}"
+X86_TUNE_DIR = "${@bb.utils.contains_any('LAYERSERIES_CORENAMES', 'honister kirkstone', 'include/x86', 'include', d)}"
 
 PYTHON3_NATIVE_SITEPACKAGES_DIR = "${libdir_native}/${PYTHON3_DIR}/site-packages"
-- 
2.30.2


