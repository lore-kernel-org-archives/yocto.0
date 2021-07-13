Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web08.90.1626219141182299893
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jul 2021 16:32:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=R2or+EoZ;
 spf=pass (domain: gmail.com, ip: 209.85.222.171, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id s193so2717595qke.4
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jul 2021 16:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GlmtxughOuJyTaKWSoNmKXl/wFmhm4Amhkj7AmADIrA=;
        b=R2or+EoZzDLG6t2rF333Vr4XnN8HcotKLx21p5vaLeyXZJz0eeuE2OG46b8BGhK9ET
         2TUqSNchS4GvVCt0uX454RQ8UsfWJsziSLFrI2e5OH2QypPnUtw7fLvFjINbor9OTBuB
         9j0LW1HTkedEKxJp4FHxo6KiJbqkWZMSc/T8zB5IApFNsypco6BrYOS0agUcgKybIuZA
         3/YOUyRnHaTZZdayXDvDS0qjufL4Ai17VJdpFFF/Cu7oj/hxtxQDvTSSnbdjLvlyD03q
         MfEp/Gg1brQmmEqS4kohcnOzYq+0Oj1OncN6aKzVQFcVnG4fMynO/kagX00yLuu8UzhV
         h3nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GlmtxughOuJyTaKWSoNmKXl/wFmhm4Amhkj7AmADIrA=;
        b=DSPobDXdWnfJ/QA2AkR9c+CnSEIo/zpnszltETbOjcnBuBnhOXt4F0W8O92jAKncmN
         5wy8xqZ5ZwHLnL2rtUUEfgyaMyLumH+gMMIf/76t41vPDai2sK1Fmfaz7WjocMr6KR8o
         RBth4NwTTcO6CX7IVA04+LXjxm7fwEZpZrK3gHnVBv4K8Hxmkv2gFEyl8/k14wf9QmtC
         t/o4Wqeyixld5wl/izHBdmrBb+EpBw3jtmfrmFVR/XVyqEmXu4S2uhtvmhb/BhubRPzt
         eNiQLPOySD/IAIq2Uc5qFq0aO+4jZZyFyuQBw8P8NzenfutuUPg0Mtcikd3qqtrhxO8y
         t4cQ==
X-Gm-Message-State: AOAM531SFE4Hu3WhkWFaHTNRCTt0SWYQBZsKkdUmNgcrkTAibXXVnegc
	m4qLQ77CEhMUkgaQ6y5T4CnEHDB+his/9Q==
X-Google-Smtp-Source: ABdhPJzTSLC47+CyM7FctaUPyHItv/EapgTM0t9iRokVLdnnwidpMg6wwEv6C4twVV0Nhwb6pwY9rQ==
X-Received: by 2002:ae9:f00c:: with SMTP id l12mr7066572qkg.141.1626219139967;
        Tue, 13 Jul 2021 16:32:19 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id x5sm194060qke.92.2021.07.13.16.32.19
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 16:32:19 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] remove LINUX_VERSION_EXTENSION
Date: Tue, 13 Jul 2021 19:32:03 -0400
Message-Id: <20210713233204.11476-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adding "-rockchip" to the Linux kernel name implies, to me anyway, that this
is a vendor kernel. The PREFERRED_PROVIDERs of all kernels specified in this
BSP are upstream linux-yocto kernels, not vendor kernels. Therefore remove the
version name extension to avoid confusion.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/rockchip-defaults.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
index 0666119..905b2a6 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -3,7 +3,6 @@
 # kernel
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 KCONFIG_MODE ?= "alldefconfig"
-LINUX_VERSION_EXTENSION ?= "-rockchip"
 
 # xserver
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
-- 
2.30.0.rc0

