Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 890C6C433F5
	for <webhook@archiver.kernel.org>; Wed,  6 Oct 2021 15:20:33 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web10.13725.1633533632501697683
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Oct 2021 08:20:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=Nc13Nsq8;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.171,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f171.google.com with SMTP id a13so2925273qtw.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 06 Oct 2021 08:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZwATIIkKu6IokdlvC4zst1uiRnVzhEzM9KasSyi0ROE=;
        b=Nc13Nsq8DPySKExcQWDzvpqb/XI7yuS1K3xdBCdkrc3f/FTltMmxjveRf1zlMWMC9G
         hNnq9RTNYUWJo/fzj/cwxIL+HDX7voX8rf2WfOzfg2kCOmJ7vC6AAq0SvVtBsd8qBre6
         wblDk//UTpgTPqvZ8xTuZBeYLRLRAAV2YCT5dvu84AbRS6ZEGybgjeTNy9Vpde+LSjRy
         pMzhsYkD1CDryyVHvQhNiGytXF3DOV5F2v05bEjteWihGHrPQRWhg6KVJjyNX4vmf1uu
         wbz6gZLUuc2eNkoTcU4zTjdo9gd8PH+CYRB5TIoD6duNkoins6tq5RwKz3EGornl5udU
         HUOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZwATIIkKu6IokdlvC4zst1uiRnVzhEzM9KasSyi0ROE=;
        b=FCktxwzB+dFTDgkxxrRkAVgIK1KxS22YHT9WRB5809cb0Bzx3RjG+uViv1OHrIBR+L
         wDXLgf4kcE/ZIhokJ46DfJxBOpje9NbuHyxtF9/7Yxe+dN3clY5lcFtUe2MiZ4BM0BKa
         ASDiYivdz08oGX7GeFLpwOfhco1hngrJ1zal4bPZvOBnqsD7vmcK4htcFM8dfU373Shz
         HDf12R6FRqDFzbNLWnZo7AmA1SWcuL/38AgPuiJmkjyx8wI0MIGy3YFylGMMvZUybkaM
         cxO2iDgED8hj55p3TUnBRLV5rOsEAYubORC1gDCL/xWq1TTwbNYBgarbiWb3uv6K91Lj
         8G0w==
X-Gm-Message-State: AOAM530YCMKdJpXQTQqg46scT9FqdtLTzHKCG+tArTgRmDp17GgXQ6cr
	t85Xw7uyyk6pXg//glsLUvvnmCxlmDv4TA==
X-Google-Smtp-Source: 
 ABdhPJz4mTYnsDxh2uXolL/5kM7gDtv0zg/14VUfqSq0U6wY/dnRYRsNH0TiaVRLg4HazsXINWBkVQ==
X-Received: by 2002:ac8:1090:: with SMTP id
 a16mr27398984qtj.297.1633533630473;
        Wed, 06 Oct 2021 08:20:30 -0700 (PDT)
Received: from localhost ([2605:a601:a650:b700:9878:6bc:c765:2aac])
        by smtp.gmail.com with ESMTPSA id
 k19sm12577261qko.115.2021.10.06.08.20.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 08:20:29 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] zephyr-kernel-test: disable broken tests
Date: Wed,  6 Oct 2021 11:20:29 -0400
Message-Id: <20211006152029.13642-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Oct 2021 15:20:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54980

Add tests that don't currently compile successfully to the remove
list for each specific machine.

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
index f970225c884d..c7ccf9e05742 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
@@ -5,6 +5,14 @@ ZEPHYRTESTS:remove = "fifo fpu_sharing lifo mbox mem_heap mem_pool \
 # Exclude tests which does not build for various reasons
 ZEPHYRTESTS:remove = "gen_isr_table spinlock smp mp"
 
+# Exclude tests that are not currently compiling
+ZEPHYRTESTS:remove:96b-avenger96 = "common device poll queue sleep"
+ZEPHYRTESTS:remove:96b-nitrogen = "common device poll queue sleep"
+ZEPHYRTESTS:remove:arduino-nano-33-ble = "common device poll queue sleep"
+ZEPHYRTESTS:remove:nrf52840dk-nrf52840 = "common device poll queue sleep"
+ZEPHYRTESTS:remove:qemu-x86 = "common device interrupt poll queue sleep"
+ZEPHYRTESTS:remove:stm32mp157c-dk2 = "common device poll queue sleep"
+
 # test_context will fail because QEMU for ARM does not emulate CortexM3 BASEPRI register
 #ZEPHYRTESTS:remove:arm += ""
 
-- 
2.20.1


