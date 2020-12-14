Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com [209.85.167.65])
 by mx.groups.io with SMTP id smtpd.web10.35757.1607958903216601997
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Dec 2020 07:15:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ewbSpopk;
 spf=pass (domain: gmail.com, ip: 209.85.167.65, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f65.google.com with SMTP id o19so5327150lfo.1
        for <yocto@lists.yoctoproject.org>; Mon, 14 Dec 2020 07:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yXSMadlawdnuck7ATYRQz+Fcu7NMEKFGPPYNQy1Me/g=;
        b=ewbSpopkwHbokKwtq8EajaJfuWOrGo/UWuig9Nb7cYHRqTF6s5SbPyUiEuIpNz6yrj
         27IPV7eJ7uQTyseEstqqUguIUC3OpOMyiQbLaW+xdsalpGJMqSsoGmYOA5ygIKhW6Oc0
         7nv4h0ZGyENZHvjTVEWEcR80QmlZiXFkdRb964Wwv/JNVHUdKkHOF36rU9b6wVhlXzaE
         ENH3iDReWiprDCWdovfOgGIlGk+mKctk7u61UyRp128XpizFTdbJq6XqsfX0vWEyBXu6
         igFiZWbjffjOJIGz/Ex0jZhOKai6a1Lccm2mmd+XJRdIZdr0+fLNG8xkTyX0iMBoZ8D6
         GKfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yXSMadlawdnuck7ATYRQz+Fcu7NMEKFGPPYNQy1Me/g=;
        b=kXLILPc72U7vczHIrjRClGk/P3uS1Dw2oJi5FEpiJSfGKxwcFI/sDfF1q2hdNMIH0+
         GKtfbFB7oNJ1jbc3YYtL0Z20AfF0cWp54pqPXI9lxNrZMFvOIKk+dFt37pb+dtvhJ0ia
         Ugq2Ha7bhJ1rfihn3XEX2prnhhsAa3oVrT6yNdIYdDQcpgdLxm1qImQ9ws0xTHDegAmq
         KV0G7AupWoR+pRyqOWWCJR8q4nUTpioWDka5G3yVCnpE/fnHNVuA84tDDJeLd7sN/kWq
         2dVvCtzTYPxiLl6s8/HZGHvFNwE0Ru3MyY8bE8TGW9inFdhBkHb4WUtKxzjd+HwqLK4I
         tuqA==
X-Gm-Message-State: AOAM5315zEeIeWxFMVi7TJZHPKB1INMUDJZGGOr7lqUez/wuBQ4z7vBW
	SUikSTrhp0568cXGoVAT1yZYTheuaueEmg==
X-Google-Smtp-Source: ABdhPJyFVMfa0Sj5Jia23oOj+Y31B8ukshIfcziSy0opxm6sWchujFXIGANnL5k5P2TdGr/XL38pfg==
X-Received: by 2002:a2e:b055:: with SMTP id d21mr4017795ljl.68.1607958901046;
        Mon, 14 Dec 2020 07:15:01 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id d23sm1885286ljj.24.2020.12.14.07.14.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Dec 2020 07:15:00 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	davide.ricci@huawei.com,
	jaroslaw.marek@huawei.com,
	zbigniew.bodek@huawei.com,
	robert.drab@huawei.com,
	amit.kucheria.ext@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 3/3] conf: machine: add 96boards Avenger96 support
Date: Mon, 14 Dec 2020 15:14:42 +0000
Message-Id: <20201214151442.4592-4-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201214151442.4592-1-zmuda.w@gmail.com>
References: <20201214151442.4592-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

The board is based on STMicro STM32MP157AAC 2xCortex-A7+2xCortex-M4
system-on-chip.

Add STM32MP1 family machine config. STM32MP1 support depends on
STM32 HAL and OpenAMP for inter-core communication.

This change has been verified with zephyr-philosophers
and zephyr-shell sample applications on by loading Zephyr image
to Cortex-M4 core from Linux using remoteproc framework.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 conf/machine/96b-avenger96.conf             |  8 ++++++++
 conf/machine/include/stm32mp1-cortex-m4.inc | 11 +++++++++++
 2 files changed, 19 insertions(+)
 create mode 100644 conf/machine/96b-avenger96.conf
 create mode 100644 conf/machine/include/stm32mp1-cortex-m4.inc

diff --git a/conf/machine/96b-avenger96.conf b/conf/machine/96b-avenger96.conf
new file mode 100644
index 0000000..7bcfb4a
--- /dev/null
+++ b/conf/machine/96b-avenger96.conf
@@ -0,0 +1,8 @@
+#@TYPE: Machine
+#@NAME: 96b_avenger96
+
+#@DESCRIPTION: Machine configuration for 96Boards Avenger96 Board.
+
+require conf/machine/include/stm32mp1-cortex-m4.inc
+
+ARCH_96b-avenger96 = "arm"
diff --git a/conf/machine/include/stm32mp1-cortex-m4.inc b/conf/machine/include/stm32mp1-cortex-m4.inc
new file mode 100644
index 0000000..b82b02d
--- /dev/null
+++ b/conf/machine/include/stm32mp1-cortex-m4.inc
@@ -0,0 +1,11 @@
+#@TYPE: Machine
+#@NAME: stm32mp1-cortex-m4
+
+#@DESCRIPTION: Machine configuration for Cortex-M4 core of STMicroelectronics STM32MP1 SoC.
+
+require conf/machine/include/tune-cortexm4.inc
+
+# Include OpenAMP for communication with Cortex-A7 core of the SoC
+MACHINEOVERRIDES =. "stm32:openamp:"
+
+TUNE_FEATURES = "armv7m cortexm4"
-- 
2.25.1

