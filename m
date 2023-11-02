Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E68C4332F
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 03:04:54 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web10.23335.1698894291527537573
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 20:04:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20230601.gappssmtp.com header.s=20230601 header.b=Z1G9xDeh;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.179, mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-41cb615c6fbso2116561cf.1
        for <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 20:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20230601.gappssmtp.com; s=20230601; t=1698894290; x=1699499090; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=77eynuOvX8DVKP3iDrdadBZo6NKkyqz7+Jpp6gSUoAw=;
        b=Z1G9xDeh4DZk/cno20bceqaii9/NdNfGd7Efndo2dP4J2WLGhjuxMGNEG4c+hJfszr
         6TBAKroVrYCVkhW66y0bIYeYcOJmtxEZbvZdrarFPEgfLOwaTGQDwHUeQRfaDTAABZov
         bWgzKqW1YzQ9LMN2+2KWusACPWCZtyJchtdgAEemvG1lWld86TLvIThq3E2ca1biU357
         eXo5yXQxP4MN0d8egaYeNhJz0Qbf34PRMt4R0EbTILeDzfCIDuoNoFZZS1MK2QiiJMng
         2+Od4zn7pfJEdu829v6jac9Gz17nvj4jm44XOVGIYBoY/KcfnqEf+FLnO6N3pugotglq
         iEgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698894290; x=1699499090;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=77eynuOvX8DVKP3iDrdadBZo6NKkyqz7+Jpp6gSUoAw=;
        b=saDxMfmeCqEqy2bKzeEhwFeR4HEfmHREBGnb/nPBYftNEDxIRShapRVEgfmeDIhUAY
         oT+sW6wMZJGEt3xktS3qeMQ7vidUPFlkGi4Tr4q1u9wbGgncY3MWdXAErk9lS0vnt5/M
         rsxCtWSc2T+iqmQudtKS9uDF15LhTdcgJ8r8ncpoXQs1Ph9Mu5g8O17Qm1lODwfZusyJ
         wDzdz5OXOY4WODBqv/DI69P28ILoxbCsdAqrRZQQ/eX5tsxqNA6U8c0KBhhhRsbyjCRV
         WDwHNp961WhbMGsXNuOJmPiy9ntlLuL1mFDB41DHiBlvYgV4tbPW87zFEQWvwOfTosnV
         9V0A==
X-Gm-Message-State: AOJu0YwApmUWbptnSSf1UieJd+yriY2W0++95iJB+r94MQ2/HcQ1mKpv
	2x+pLbpImlZGUxdXeMC/hd27kPYH3vj/Kglpjrg=
X-Google-Smtp-Source: AGHT+IEQTSxgNvabxKTA+e+7C9I5+eoHVwiQUSLyQZO5RBDpwMCU7/NuBUovOuQWzNHvpiIMQp1NcQ==
X-Received: by 2002:ac8:5f4d:0:b0:410:90c7:5185 with SMTP id y13-20020ac85f4d000000b0041090c75185mr20364484qta.54.1698894289794;
        Wed, 01 Nov 2023 20:04:49 -0700 (PDT)
Received: from localhost ([2605:a601:a684:4100:8ac9:b3ff:febf:a2f8])
        by smtp.gmail.com with ESMTPSA id h4-20020ac85144000000b004108d49f391sm1942436qtn.48.2023.11.01.20.04.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 20:04:49 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Naveen Saini <naveen.kumar.saini@intel.com>
Subject: [meta-zephyr][PATCH 2/2] zephyr-core/zephyr-kernel-tests: remove now passing tests from exclude list
Date: Wed,  1 Nov 2023 23:04:37 -0400
Message-Id: <20231102030437.3857166-2-jon.mason@arm.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231102030437.3857166-1-jon.mason@arm.com>
References: <20231102030437.3857166-1-jon.mason@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 03:04:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61567

Retested the zephyr kernel tests to verify which ones are now building
and which ones are now passing CI on qemu machines.  They are organized
as follows:
* Any test that fails to be configured is added to a list in
  zephyr-kernel-test.inc
* Any test that fails to compile for all machines is added to a list in
  zephyr-kernel-test.inc
* Any test that fails to compile for a specific machine is added to a
  machine specific list in zephyr-kernel-test.inc
* Any test that fails CI is added to a list in the relevant machine yml
  file

Hopefully by making this way of doing things uniform, it will enable
better testing and CI.

It is worth noting that with this version of zephyr, gen_isr_table and
other tests are now working for a number of machines.

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 ci/intel-x86-64.yml                                    |  4 ++++
 ci/mps2-an385.yml                                      |  4 ++++
 ci/qemu-cortex-a53.yml                                 |  2 +-
 ci/qemu-cortex-a9.yml                                  |  2 +-
 ci/qemu-cortex-r5.yml                                  |  4 ----
 ci/qemu-nios2.yml                                      |  3 ---
 ci/qemu-x86.yml                                        |  2 +-
 ci/v2m-beetle.yml                                      |  4 ++++
 ci/v2m-musca-b1.yml                                    |  4 ----
 ci/v2m-musca-s1.yml                                    |  4 ----
 .../zephyr-kernel/zephyr-kernel-test.inc               | 10 +++-------
 11 files changed, 18 insertions(+), 25 deletions(-)

diff --git a/ci/intel-x86-64.yml b/ci/intel-x86-64.yml
index 23e711ceac91..2eda5a43e92d 100644
--- a/ci/intel-x86-64.yml
+++ b/ci/intel-x86-64.yml
@@ -3,4 +3,8 @@ header:
   includes:
     - ci/base.yml
 
+local_conf_header:
+  failing_tests: |
+    ZEPHYRTESTS:remove = "gen_isr_table"
+
 machine: intel-x86-64
diff --git a/ci/mps2-an385.yml b/ci/mps2-an385.yml
index e536118c6832..caa685eb5f14 100644
--- a/ci/mps2-an385.yml
+++ b/ci/mps2-an385.yml
@@ -3,4 +3,8 @@ header:
   includes:
     - ci/base.yml
 
+local_conf_header:
+  failing_tests: |
+    ZEPHYRTESTS:remove = "gen_isr_table"
+
 machine: mps2-an385
diff --git a/ci/qemu-cortex-a53.yml b/ci/qemu-cortex-a53.yml
index ca8b6495fef0..d959075cd528 100644
--- a/ci/qemu-cortex-a53.yml
+++ b/ci/qemu-cortex-a53.yml
@@ -5,6 +5,6 @@ header:
 
 local_conf_header:
   failing_tests: |
-    ZEPHYRTESTS:remove = "interrupt"
+    ZEPHYRTESTS:remove = "gen_isr_table"
 
 machine: qemu-cortex-a53
diff --git a/ci/qemu-cortex-a9.yml b/ci/qemu-cortex-a9.yml
index cc4473004775..d75ea4d496ce 100644
--- a/ci/qemu-cortex-a9.yml
+++ b/ci/qemu-cortex-a9.yml
@@ -5,6 +5,6 @@ header:
 
 local_conf_header:
   failing_tests: |
-    ZEPHYRTESTS:remove = "common queue"
+    ZEPHYRTESTS:remove = "common gen_isr_table poll queue"
 
 machine: qemu-cortex-a9
diff --git a/ci/qemu-cortex-r5.yml b/ci/qemu-cortex-r5.yml
index e595bceb059e..6e5ca8173647 100644
--- a/ci/qemu-cortex-r5.yml
+++ b/ci/qemu-cortex-r5.yml
@@ -3,8 +3,4 @@ header:
   includes:
     - ci/base.yml
 
-local_conf_header:
-  nonbuilding_tests: |
-    ZEPHYRTESTS:remove = "common poll sleep queue device"
-
 machine: qemu-cortex-r5
diff --git a/ci/qemu-nios2.yml b/ci/qemu-nios2.yml
index b818371c8be0..30a560a79c5f 100644
--- a/ci/qemu-nios2.yml
+++ b/ci/qemu-nios2.yml
@@ -3,8 +3,5 @@ header:
   includes:
     - ci/base.yml
 
-local_conf_header:
-  nonbuilding_tests: |
-    ZEPHYRTESTS:remove = "interrupt"
 
 machine: qemu-nios2
diff --git a/ci/qemu-x86.yml b/ci/qemu-x86.yml
index df744a1206fa..ab929171ccc8 100644
--- a/ci/qemu-x86.yml
+++ b/ci/qemu-x86.yml
@@ -5,6 +5,6 @@ header:
 
 local_conf_header:
   failing_tests: |
-    ZEPHYRTESTS:remove = "pending"
+    ZEPHYRTESTS:remove = "gen_isr_table pending"
 
 machine: qemu-x86
diff --git a/ci/v2m-beetle.yml b/ci/v2m-beetle.yml
index df62469d9c52..51a4225f3361 100644
--- a/ci/v2m-beetle.yml
+++ b/ci/v2m-beetle.yml
@@ -3,4 +3,8 @@ header:
   includes:
     - ci/base.yml
 
+local_conf_header:
+  failing_tests: |
+    ZEPHYRTESTS:remove = "gen_isr_table"
+
 machine: v2m-beetle
diff --git a/ci/v2m-musca-b1.yml b/ci/v2m-musca-b1.yml
index a867c4ccd6d6..490f29549c94 100644
--- a/ci/v2m-musca-b1.yml
+++ b/ci/v2m-musca-b1.yml
@@ -3,8 +3,4 @@ header:
   includes:
     - ci/base.yml
 
-local_conf_header:
-  nonbuilding_tests: |
-    ZEPHYRTESTS:remove = "common sleep poll device queue"
-
 machine: v2m-musca-b1
diff --git a/ci/v2m-musca-s1.yml b/ci/v2m-musca-s1.yml
index 01480e2e26e8..4451ff0460eb 100644
--- a/ci/v2m-musca-s1.yml
+++ b/ci/v2m-musca-s1.yml
@@ -3,8 +3,4 @@ header:
   includes:
     - ci/base.yml
 
-local_conf_header:
-  nonbuilding_tests: |
-    ZEPHYRTESTS:remove = "common sleep poll device queue"
-
 machine: v2m-musca-s1
diff --git a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
index 77f45a737407..f8ba1ff6c557 100644
--- a/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
+++ b/meta-zephyr-core/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
@@ -1,16 +1,12 @@
+# Exclude tests that fail to configure
 ZEPHYRTESTS:remove = "fifo fpu_sharing lifo mbox mem_heap mem_pool \
     mem_protect mem_slab msgq mutex pipe profiling sched semaphore \
     stack threads tickless timer workq"
 
-# Exclude tests which does not build for various reasons
-ZEPHYRTESTS:remove = "gen_isr_table spinlock smp mp"
-
 # Exclude tests that are not currently compiling
+ZEPHYRTESTS:remove = "mp smp spinlock"
 ZEPHYRTESTS:remove:96b-avenger96 = "common device poll queue sleep"
-ZEPHYRTESTS:remove:96b-nitrogen = "common device poll queue sleep"
-ZEPHYRTESTS:remove:arduino-nano-33-ble = "common device poll queue sleep"
-ZEPHYRTESTS:remove:nrf52840dk-nrf52840 = "common device poll queue sleep"
-ZEPHYRTESTS:remove:qemu-x86 = "common device interrupt poll queue sleep"
+ZEPHYRTESTS:remove:qemu-nios2 = "interrupt"
 ZEPHYRTESTS:remove:stm32mp157c-dk2 = "common device poll queue sleep"
 
 # test_context will fail because QEMU for ARM does not emulate CortexM3 BASEPRI register
-- 
2.30.2


