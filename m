Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com [209.85.167.65])
 by mx.groups.io with SMTP id smtpd.web08.2295.1607285740014101359
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Dec 2020 12:15:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hB4R2jwr;
 spf=pass (domain: gmail.com, ip: 209.85.167.65, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f65.google.com with SMTP id l11so15093839lfg.0
        for <yocto@lists.yoctoproject.org>; Sun, 06 Dec 2020 12:15:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MO50uLfP1gCKG7+Eww9JDpXfduh6HDRKDuX1VUZrFEc=;
        b=hB4R2jwrhJk3aF9wy7MvfNiSm+PrD12fUotXa6JihJFfarbqYEs1REitdF5oRcSCp7
         0vY5uZ0QNv0Ss+fdztY5m87/9VygLUaTmV/ZR9LS10TfYBY5K3VBUHMI14Uy7AbvdIer
         G1fPc7yYPZHxFb/LO6FY90GIpUSiH0E/SzYYjXpQg3Q1JXT+jyfbfKLxAbJ5lIgBmQQW
         srDSVSdaL45EgJaDQdhrdqqyaiPRwHM1ZqgyvmrQlHg/3vy8p/0O0T1kTckaUo0n+GkT
         TmB8JCH3rAIe8XJemQ+R1lWwP3GTB/F8iEmA22QY+eIyWb11SekjObeadRujCkiLadk3
         k35A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MO50uLfP1gCKG7+Eww9JDpXfduh6HDRKDuX1VUZrFEc=;
        b=KFNYbTDhuQopt3W0eDaOHt4iFnk/Hev2v2b24lpTr0uhkvbLy9jKQjmxCk4W3AK4OV
         YNNXrdotk9BONv3yvsgBWIF3MfU7Wh4KPUPlJml9CNq1qqd5a0YW9jAI/7QiH6gxvc38
         WyKL59/3HhM0MMYhwfPPT3opfilZoK32mJjR3tPERyaHsJeKC7WqyPQcpN9fZAjTVxYP
         lU2n8hojXkgmBtHlC1eimei5ZjNzb1rXF19ZsVw1V2ugcjgS/zrXiiSMSqX+6NBsC9qZ
         0PkyEa+MxWftFGXoclQl4PUFK+isxTTByY7E+LFh56SEhLQBsMPglMVtXmq/+fG406by
         akcg==
X-Gm-Message-State: AOAM5302bM9ALGi2i0nipn7UwpHyGKPaDpls+nMEuB9ECUzmkVY+9czm
	niy19GMnkyaU/QkZmLv00f/tAjwkpkRcMA==
X-Google-Smtp-Source: ABdhPJwq8SoZV+GLVDxG/3Z6Xh3g9sXcv8uGsx//6KMzXefc53+VdrDze37gpiDxI00qxLVAXIGXyQ==
X-Received: by 2002:ac2:599c:: with SMTP id w28mr395107lfn.374.1607285738174;
        Sun, 06 Dec 2020 12:15:38 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id 16sm530682ljr.11.2020.12.06.12.15.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Dec 2020 12:15:37 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
X-Google-Original-From: Wojciech Zmuda <wojciech.zmuda@huawei.com>
To: yocto@lists.yoctoproject.org
Cc: davide.ricci@huawei.com,
	zbigniew.bodek@huawei.com,
	jaroslaw.marek@huawei.com,
	robert.drab@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 2/5] conf: machine: add support for Nordic nRF52832 Cortex-M4 chip
Date: Sun,  6 Dec 2020 20:15:18 +0000
Message-Id: <20201206201521.3377-3-wojciech.zmuda@huawei.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201206201521.3377-1-wojciech.zmuda@huawei.com>
References: <20201206201521.3377-1-wojciech.zmuda@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

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

