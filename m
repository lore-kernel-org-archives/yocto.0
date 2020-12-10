Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com [209.85.208.195])
 by mx.groups.io with SMTP id smtpd.web08.15883.1607616170137540561
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Dec 2020 08:02:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=u7gwXAXl;
 spf=pass (domain: gmail.com, ip: 209.85.208.195, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f195.google.com with SMTP id e7so7226497ljg.10
        for <yocto@lists.yoctoproject.org>; Thu, 10 Dec 2020 08:02:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IY/8ltyg2ixlpGphkvTM9r5Zg31pai4opttAB8dnTcQ=;
        b=u7gwXAXlbX8IEl+FBgp8/kHU+1fPpQY1BbLBahbLjkMQHtDtCOoPm3ywS73Pk8m0GC
         Pl0hqxiEbz9QswqzubLY0mjFdyfT+BndAViueJ/h3937g4cJa07p1Qka+/70vhj5Gxbx
         BZTWDLpuGTMwB53WCbJ/gluuCbcXTAG4utinsRjcuFKHG2tSJzX2hdDNPvAB7HmXbjG7
         IOmmPBQKl+fZ/kqDCbQCdo6ARvgOEtgaYp14o/HOh2eMqbGWmrT7+FwPhz/n79Zv53nJ
         cea3OCuvpawWfP7Kk/4mPwnMR5ZU/sy+a5sAu/05/HZzWPTAaF/vAWVHfU3Xfjwb5u6d
         9l+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IY/8ltyg2ixlpGphkvTM9r5Zg31pai4opttAB8dnTcQ=;
        b=QxHBGcOtkqI2d+Q24CnGUsE/48q3cwny08f6ZyQMQ2WgkXJFqeeBKplKGPbJtcYvR9
         uapsjeQNnos7E60DNU+cEzfPC00fQzjapQNenz+fo4bPKftvQxl7TreN2aME2xxHCLYn
         W5noT20Mo4Pl92Srg9ACjsx0F7+jy5wxJ+cG/e90EBvhwbucAyReEuIMGMVvtRQGa5Yo
         wElZIJza4WhmN2qpcigrAx7YZEHqkjoJs2S/DiTzSp0mK8M2GAHRfaQzMcM3g6uqS/aO
         zRQ3vPKLvZ8Kbxl9oRsI1LkAfDvHvZtgl79KL3s/S+Kh10HF2z+/bzw9K59J0GA/efM9
         +FNw==
X-Gm-Message-State: AOAM532jx1S8qc5DVnQtIj1mSI/1xkhxqkM4X387cVzkEIDbzLVlDPfv
	o0G0VpIAAUVMuk2VzZrxL+B75Hsix0i+RQ==
X-Google-Smtp-Source: ABdhPJx293vp+MERp+gT0Lvy5Tb7bcvXV+aUh/u4SIWXeUcu1ePBKbpYvfPcYisUnm3EdkW1nupDnA==
X-Received: by 2002:a2e:780d:: with SMTP id t13mr3207335ljc.144.1607616167677;
        Thu, 10 Dec 2020 08:02:47 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id n10sm646744ljg.139.2020.12.10.08.02.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 08:02:47 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	davide.ricci@huawei.com,
	jaroslaw.marek@huawei.com,
	zbigniew.bodek@huawei.com,
	robert.drab@huawei.com,
	amit.kucheria.ext@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v3 2/5] conf: machine: add support for Nordic nRF52832 Cortex-M4 chip
Date: Thu, 10 Dec 2020 16:02:08 +0000
Message-Id: <20201210160211.71850-3-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201210160211.71850-1-zmuda.w@gmail.com>
References: <20201210160211.71850-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

Add include for Cortex-M4 tunes and nRF52832. The nRF config
appends 'nordic' to MACHINEOVERRIDES, so the kernel recipe
can include Nordic HAL when this override is detected.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 conf/machine/include/nrf52832.inc      | 10 ++++++++++
 conf/machine/include/tune-cortexm4.inc | 19 +++++++++++++++++++
 2 files changed, 29 insertions(+)
 create mode 100644 conf/machine/include/nrf52832.inc
 create mode 100644 conf/machine/include/tune-cortexm4.inc

diff --git a/conf/machine/include/nrf52832.inc b/conf/machine/include/nrf52832.inc
new file mode 100644
index 0000000..73e628a
--- /dev/null
+++ b/conf/machine/include/nrf52832.inc
@@ -0,0 +1,10 @@
+#@TYPE: Machine
+#@NAME: nrf52832
+
+#@DESCRIPTION: Machine configuration for Nordic Semiconductor nRF52832 (Cortex-M4) SoC.
+
+require conf/machine/include/tune-cortexm4.inc
+
+MACHINEOVERRIDES =. "nordic:"
+
+TUNE_FEATURES = "armv7m cortexm4"
diff --git a/conf/machine/include/tune-cortexm4.inc b/conf/machine/include/tune-cortexm4.inc
new file mode 100644
index 0000000..a823b6b
--- /dev/null
+++ b/conf/machine/include/tune-cortexm4.inc
@@ -0,0 +1,19 @@
+DEFAULTTUNE ?= "cortexm4"
+
+require conf/machine/include/arm/arch-armv7a.inc
+
+TUNEVALID[cortexm4] = "Enable Cortex-M4 specific processor optimizations"
+TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'cortexm4', ' -mcpu=cortex-m4', '', d)}"
+AVAILTUNES += "cortexm4"
+
+TUNEVALID[armv7m] = "Enable Cortex-M4 specific processor optimizations"
+TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'armv7m', ' -march=armv7e-m', '', d)}"
+MACHINEOVERRIDES =. "${@bb.utils.contains('TUNE_FEATURES', 'armv7m', 'armv7m:', '' ,d)}"
+
+TUNE_PKGARCH_tune-cortexm4 = "cortexm4"
+
+ARMPKGARCH_tune-cortexm4 = "armv7m"
+PACKAGE_EXTRA_ARCHS_tune-cortexm4 ="cortexm4"
+
+TUNE_FEATURES_tune-cortexm4 = "armv7m vfp cortexm4"
+PACKAGE_EXTRA_ARCHS_tune-cortexm4 = "${PACKAGE_EXTRA_ARCHS_tune-armv7at} armv7m-vfp armv7m"
-- 
2.25.1

