Return-Path: <zach@aquabyte.ai>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69623C761AF
	for <webhook@archiver.kernel.org>; Tue,  4 Apr 2023 00:58:58 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web10.89984.1680569933060235749
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Apr 2023 17:58:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aquabyte-ai.20210112.gappssmtp.com header.s=20210112 header.b=Ol3UNrND;
 spf=pass (domain: aquabyte.ai, ip: 209.85.216.53, mailfrom: zach@aquabyte.ai)
Received: by mail-pj1-f53.google.com with SMTP id gp15-20020a17090adf0f00b0023d1bbd9f9eso34509798pjb.0
        for <yocto@lists.yoctoproject.org>; Mon, 03 Apr 2023 17:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=aquabyte-ai.20210112.gappssmtp.com; s=20210112; t=1680569932;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OZm/lA4NY7U+l73aloGToKFHK/J16PdFf1Nm/RVUeYE=;
        b=Ol3UNrNDgw6jHaKziNSpXb7w+i2K3qLvCOC71xk/bGlU/c+qE2YVhkdO5MRnOQKoaq
         JlObI6EZfpA5WmmUltq6+b4Rk3t5EhKtsAxSaQJSAU+UBxNK+vWi8WUT9Aiic0KoWvzV
         H9/tGT5CR1ir3NPS8mPcuLDD9qHFAF5zHFU+PvFwJNR5xcmlJzN6PTtHkRfxNtuCrWqJ
         hf0Y8hoyn4GADUv3Rk/vpWsIeZwbgPrMRq9+Im0Nb6mcsn+szCdSph5cC1/Re/jXvbzn
         nvVVUgZLxHX7Q8LnoMk+WVdAgiSgvv0nY+MiuF4cfiM9qeGvQ7JrIBwiHtx5KZGhaX8I
         diZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680569932;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OZm/lA4NY7U+l73aloGToKFHK/J16PdFf1Nm/RVUeYE=;
        b=o13Z+IWDNbXGR4h/oVPL270Au9Hcj1aiGlno9eskfVpIXldGw8GyGcF0pQLQgALvf1
         fqIQNHo4PKC3CqcL+DLxsnTJn2czqkBVsIWSD+vmdajpb5L/jEoGw2u2p5/fRjjpdITw
         bNkss6YtaEJ5csrJYLgQyz6wypSUaiYQrIN9H4eGC264LlVZ9R8vn0yrG8GjqRxMoFr5
         K7Ha09CqYPpsp5rm8THaULUJIFZ4PXXJB3SI7B1WLEu5RRXZLHa2/hap2cLElPap+x6Q
         bMMZVL/C6HUTqSYoe1/i7IiulmUU64/CU1sWCNz7U/cpDZ5g9eJmhftOCiszQ5mjz/0I
         RnxQ==
X-Gm-Message-State: AAQBX9dbFYEMIE9C2V9T7Nfs9FvtgeAxmu0B9U7VYReRNDLTmCgqjXpY
	lwPQrn6h5d+YH2/7yIP63L0yjg==
X-Google-Smtp-Source: AKy350ZHL4I3rNk1VW090gKvMN4/RUOw/hvjeiEK7AWRmZlx1WlCQ1UQJA7azIB9RNkxw6tfW08XPA==
X-Received: by 2002:a17:90b:4b47:b0:23d:4a40:e794 with SMTP id mi7-20020a17090b4b4700b0023d4a40e794mr809048pjb.10.1680569932429;
        Mon, 03 Apr 2023 17:58:52 -0700 (PDT)
Received: from aquabyte.at.mandolincreekfarm.com (fluffy.mandolincreekfarm.com. [192.173.156.26])
        by smtp.gmail.com with ESMTPSA id d4-20020a17090ac24400b002407750c3c3sm6661236pjx.37.2023.04.03.17.58.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Apr 2023 17:58:51 -0700 (PDT)
Received: by aquabyte.at.mandolincreekfarm.com (Postfix, from userid 1000)
	id CA3CC25200F3; Mon,  3 Apr 2023 17:58:50 -0700 (PDT)
From: Zachary T Welch <zach@aquabyte.ai>
To: yocto@lists.yoctoproject.org
Cc: Zachary T Welch <zach@aquabyte.ai>
Subject: [meta-raspberrypi][PATCH] machines: simplify MACHINEOVERRIDES definitions
Date: Mon,  3 Apr 2023 17:58:43 -0700
Message-Id: <20230404005843.181204-1-zach@aquabyte.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Apr 2023 00:58:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59607

Prepending new definitions should be preferred to assignment, as it is
simpler and more conducive to defining new machine configurations that
reuse these configurations.
---
 conf/machine/raspberrypi-cm.conf     | 2 +-
 conf/machine/raspberrypi0-2w-64.conf | 4 ++--
 conf/machine/raspberrypi0-2w.conf    | 4 ++--
 conf/machine/raspberrypi0.conf       | 2 +-
 conf/machine/raspberrypi3-64.conf    | 2 +-
 conf/machine/raspberrypi4-64.conf    | 2 +-
 6 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/conf/machine/raspberrypi-cm.conf b/conf/machine/raspberrypi-cm.conf
index f9371df..365d030 100644
--- a/conf/machine/raspberrypi-cm.conf
+++ b/conf/machine/raspberrypi-cm.conf
@@ -2,7 +2,7 @@
 #@NAME: RaspberryPi Compute Module (CM1)
 #@DESCRIPTION: Machine configuration for the RaspberryPi Compute Module (CM1)
 
-MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
+MACHINEOVERRIDES =. "raspberrypi:"
 include conf/machine/raspberrypi.conf
 
 ARMSTUB ?= "armstub.bin"
diff --git a/conf/machine/raspberrypi0-2w-64.conf b/conf/machine/raspberrypi0-2w-64.conf
index 8e4729a..0264107 100644
--- a/conf/machine/raspberrypi0-2w-64.conf
+++ b/conf/machine/raspberrypi0-2w-64.conf
@@ -2,9 +2,9 @@
 #@NAME: RaspberryPi0 2 Wifi Development Board
 #@DESCRIPTION: Machine configuration for the RaspberryPi0 2 Wifi in 64 bits mode
 
-include conf/machine/raspberrypi3-64.conf
+MACHINEOVERRIDES =. "raspberrypi3-64:"
 
-MACHINEOVERRIDES := "${@'${MACHINEOVERRIDES}'.replace(':${MACHINE}',':raspberrypi3-64:${MACHINE}')}"
+include conf/machine/raspberrypi3-64.conf
 
 MACHINE_EXTRA_RRECOMMENDS += "\
     linux-firmware-rpidistro-bcm43436 \
diff --git a/conf/machine/raspberrypi0-2w.conf b/conf/machine/raspberrypi0-2w.conf
index c360d90..cc11b9d 100644
--- a/conf/machine/raspberrypi0-2w.conf
+++ b/conf/machine/raspberrypi0-2w.conf
@@ -2,9 +2,9 @@
 #@NAME: RaspberryPi0 2 Wifi Development Board
 #@DESCRIPTION: Machine configuration for the RaspberryPi0 2 Wifi in 32 bits mode
 
-include conf/machine/raspberrypi3.conf
+MACHINEOVERRIDES =. "raspberrypi3:"
 
-MACHINEOVERRIDES := "${@'${MACHINEOVERRIDES}'.replace(':${MACHINE}',':raspberrypi3:${MACHINE}')}"
+include conf/machine/raspberrypi3.conf
 
 MACHINE_EXTRA_RRECOMMENDS += "\
     linux-firmware-rpidistro-bcm43436 \
diff --git a/conf/machine/raspberrypi0.conf b/conf/machine/raspberrypi0.conf
index 80297b5..597918a 100644
--- a/conf/machine/raspberrypi0.conf
+++ b/conf/machine/raspberrypi0.conf
@@ -2,7 +2,7 @@
 #@NAME: RaspberryPi Zero Development Board
 #@DESCRIPTION: Machine configuration for the RaspberryPi Zero board (https://www.raspberrypi.org/blog/raspberry-pi-zero)
 
-MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
+MACHINEOVERRIDES =. "raspberrypi:"
 include conf/machine/raspberrypi.conf
 
 SERIAL_CONSOLES ?= "115200;ttyAMA0"
diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
index 95475f3..ff22f48 100644
--- a/conf/machine/raspberrypi3-64.conf
+++ b/conf/machine/raspberrypi3-64.conf
@@ -2,7 +2,7 @@
 #@NAME: RaspberryPi 3 Development Board
 #@DESCRIPTION: Machine configuration for the RaspberryPi 3 in 64 bits mode
 
-MACHINEOVERRIDES = "raspberrypi3:${MACHINE}"
+MACHINEOVERRIDES =. "raspberrypi3:"
 
 MACHINE_EXTRA_RRECOMMENDS += "\
     linux-firmware-rpidistro-bcm43430 \
diff --git a/conf/machine/raspberrypi4-64.conf b/conf/machine/raspberrypi4-64.conf
index 0cf7d51..a6e2073 100644
--- a/conf/machine/raspberrypi4-64.conf
+++ b/conf/machine/raspberrypi4-64.conf
@@ -2,7 +2,7 @@
 #@NAME: RaspberryPi 4 Development Board (64bit)
 #@DESCRIPTION: Machine configuration for the RaspberryPi 4 in 64 bits mode
 
-MACHINEOVERRIDES = "raspberrypi4:${MACHINE}"
+MACHINEOVERRIDES =. "raspberrypi4:"
 
 MACHINE_FEATURES += "pci"
 MACHINE_EXTRA_RRECOMMENDS += "\
-- 
2.25.1


