Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web11.17152.1622930585101154551
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Jun 2021 15:03:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z71qGjka;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id f3so900264plg.2
        for <yocto@lists.yoctoproject.org>; Sat, 05 Jun 2021 15:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=7wUI4lxtsiobU2mdD4q2fYf2+z9bAng2R5GGvNBHrHQ=;
        b=Z71qGjkaClkIw9q/NkT3tZg9Qon5joAUrs4cvUFcqQHDYUBh3P445QtcsHIGXpx4Un
         aggm/sThKaV5KyjCHkufLBtrIhIs7i6rHQBuPi6fhVSuCgl8AGn0dVy+UpVN37wfuwSZ
         gsIpx3/zJjgI88pZvrwtCKyegThKFkzqLBzNSuGk1hOVbSe8cadPRZu/rtMHU97mQsyo
         336O6yLrH7axUhjsGuyOrIJXYW2nZ5UpjpecKFXD40T6gGw9ISJphMpP2fy0TKISIa29
         kpzNL2GfBUUl9yLp2j1L9uWxjVgumY/HFMOw+uv5UhQetIFWDhogONVAV5nS+qHrtMYg
         bJQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7wUI4lxtsiobU2mdD4q2fYf2+z9bAng2R5GGvNBHrHQ=;
        b=RcGxmkPlTmF4GvbIqHtzJBh1iBeHjSJPiDH1h+CTl8yNcqp3S3k+4cx9g9+xmtVGF5
         tX0oB2b4R4HUpSp45FX+sEjSCFwY61v/Zpbdpr8KPQxpPVAn/HrRk7TDrsWaEzI/ThSG
         ENAlCfThDFsqV5O+pCY65m4O5k60bmkk2npEs3Sdr3PCNPQUnzWsstr8+JI7lvsulV11
         ngjuba1+XKXJMLbNXfZ0xnTP4eFRBB9zd91eOAriLbeE5ReVoNBsdRWiWZLXoNe+m7WB
         x2HEYUgzLIn6mEkLe5q0inMg+RF+zrDOy67Imqqd1aXHwndgRDJJRIdqKxCeBazNbNMJ
         pxXg==
X-Gm-Message-State: AOAM53226T4SvQTTwuN7WyiA3j4efoDuDASO9DwhhYmcO+e5X5uc6Btw
	fbCGQCnpgUcvNc0XmOTgNbLtfz6mkFhrxA==
X-Google-Smtp-Source: ABdhPJzh/ykBoIbOkGCQV+ACexw6aTpjs0ZbD3mYMUUY4NReIBFbXyIn+5fNE8x+j54N5K6dtqZx6w==
X-Received: by 2002:a17:90a:a395:: with SMTP id x21mr12184545pjp.63.1622930584565;
        Sat, 05 Jun 2021 15:03:04 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from kona.dnls.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id t23sm5264678pgj.9.2021.06.05.15.03.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 15:03:04 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/7] meta-tpm/linux-yocto: use sanity support
Date: Sat,  5 Jun 2021 22:02:56 +0000
Message-Id: <20210605220258.414233-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210605220258.414233-1-akuster808@gmail.com>
References: <20210605220258.414233-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../linux/linux-yocto_5.%.bbappend             | 18 +-----------------
 .../recipes-kernel/linux/linux-yocto_tpm.inc   | 17 +++++++++++++++++
 2 files changed, 18 insertions(+), 17 deletions(-)
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto_tpm.inc

diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend b/meta-tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend
index cea8b1b..2cf1453 100644
--- a/meta-tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend
@@ -1,17 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto:"
-
-# Enable tpm in kernel 
-SRC_URI_append_x86 = " \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.scc', '', d)} \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'file://tpm2.scc', '', d)} \
-    "
-
-SRC_URI_append_x86-64 = " \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.scc', '', d)} \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'file://tpm2.scc', '', d)} \
-    "
-
-SRC_URI += " \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm_i2c', 'file://tpm_i2c.scc', '', d)} \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'vtpm', 'file://vtpm.scc', '', d)} \
-    "
+require ${@bb.utils.contains_any('DISTRO_FEATURES', 'tpm', 'linux-yocto_tpm.inc', '', d)}
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto_tpm.inc b/meta-tpm/recipes-kernel/linux/linux-yocto_tpm.inc
new file mode 100644
index 0000000..cea8b1b
--- /dev/null
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto_tpm.inc
@@ -0,0 +1,17 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto:"
+
+# Enable tpm in kernel 
+SRC_URI_append_x86 = " \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.scc', '', d)} \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'file://tpm2.scc', '', d)} \
+    "
+
+SRC_URI_append_x86-64 = " \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.scc', '', d)} \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'file://tpm2.scc', '', d)} \
+    "
+
+SRC_URI += " \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm_i2c', 'file://tpm_i2c.scc', '', d)} \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'vtpm', 'file://vtpm.scc', '', d)} \
+    "
-- 
2.25.1

