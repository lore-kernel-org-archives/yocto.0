Return-Path: <leon.anavi@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59399C47258
	for <webhook@archiver.kernel.org>; Wed, 31 Jan 2024 14:29:08 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web10.15209.1706711345525653329
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jan 2024 06:29:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=bn3vxRl8;
 spf=pass (domain: konsulko.com, ip: 209.85.208.178, mailfrom: leon.anavi@konsulko.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2cf595d5b4aso46136721fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 31 Jan 2024 06:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1706711343; x=1707316143; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DDR/LmfkMQkowO7JvCbJvT+NE1yGrHDpOF3HAVs0rEg=;
        b=bn3vxRl8tGMJeJiVhNNeA4SkWqfeTxJUoVDEbOwbul1/twxSPIJjH/8qCxCz0Nqgqk
         BBuQyyIj+UKtwQEe8Lq2xxjugRv75VqpKCIAw4oeR0CGdD0vJnYNSNQZKZhS7yrYNJNb
         hR8+NcfeFOmhyRV009QA6jDzAFq3CLprGQkx8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706711343; x=1707316143;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DDR/LmfkMQkowO7JvCbJvT+NE1yGrHDpOF3HAVs0rEg=;
        b=lBKvHmUKD0+0wAujN6fFGUu1UZOsZj3FMWKV6fYVzHuqzOIX+lrxbKqVJypl1m5wVD
         KqF/lEI8AGQF5ha0BfyxTkQLG0IxW8fHBo7N/cQyE2CuSa7nbg01u+qwx/VZbeBYs3j9
         sAUWZAfcFWRdTN3epWdaY4H44sL9JxnOw0RlXPmXkXnFAwZU6HgNhVVZJEmCwfxjhdgy
         s+5hLbTxbbB/VhRfIURMSDSMml37z5co/FgqUibi314tpZfaXv+Klnp78jTrv7jbOef1
         NGvQ5gbhJmoumUDjeQOesZy+JGX8M9YbQswloFnTJrfu3dCxUtRo3DGRTsOLxykKi5cL
         MpeA==
X-Gm-Message-State: AOJu0YyAA7tz7AE7CvdLiyaEijEnjhnM/tn5DSvUu0Jwvo7soNXVK9Lt
	A02duo12lg4/5wNhNisjjVwWZkN53LSniyy3l9kwEaxDeLTkvhx325kjsz092F2vt1eQ+Z45tkf
	B
X-Google-Smtp-Source: AGHT+IFl/qSTR3UQjlZ65Oy5rAglqt4IhKYQiyt21RnYkxtnzHkoMhs3H2GVH/2sqhmgMtV0nG7WsA==
X-Received: by 2002:a2e:9f57:0:b0:2cf:4fbd:82b4 with SMTP id v23-20020a2e9f57000000b002cf4fbd82b4mr1270906ljk.22.1706711343119;
        Wed, 31 Jan 2024 06:29:03 -0800 (PST)
Received: from leon-desktop.. ([46.55.231.62])
        by smtp.gmail.com with ESMTPSA id e8-20020a056402104800b0055ef2c893b3sm3595864edu.52.2024.01.31.06.29.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 06:29:02 -0800 (PST)
From: Leon Anavi <leon.anavi@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com,
	leon.anavi@konsulko.com
Subject: [meta-integrity][PATCH 1/2] linux-yocto%.bbappend: Add audit.cfg
Date: Wed, 31 Jan 2024 16:28:57 +0200
Message-Id: <20240131142858.2666224-1-leon.anavi@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jan 2024 14:29:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62350

Add audit.cfg configuration fragment. By default it is not appended
to SRC_URI. It allows enabling the audit kernel subsystem which may
help to debug appraisal issues. Boot with "integrity_audit=1" to
capture a more complete set of events in /var/log/audit/.

Previously the same configuration fragment was provided by layer
meta-security-framework but it is no longer maintained therefore it
makes sense to have audit.cfg in layer meta-integrity.

Signed-off-by: Leon Anavi <leon.anavi@konsulko.com>
---
 meta-integrity/README.md                                  | 8 ++++++--
 meta-integrity/recipes-kernel/linux/linux-yocto%.bbappend | 2 ++
 meta-integrity/recipes-kernel/linux/linux/audit.cfg       | 2 ++
 3 files changed, 10 insertions(+), 2 deletions(-)
 create mode 100644 meta-integrity/recipes-kernel/linux/linux/audit.cfg

diff --git a/meta-integrity/README.md b/meta-integrity/README.md
index 1a37280..2f30e78 100644
--- a/meta-integrity/README.md
+++ b/meta-integrity/README.md
@@ -219,12 +219,16 @@ executing the file is no longer allowed:
     -sh: /usr/bin/rpm: Permission denied
 
 Enabling the audit kernel subsystem may help to debug appraisal
-issues. Enable it by adding the meta-security-framework layer and
+issues. Enable it by adding a kernel configuration fragment and
 changing your local.conf:
     SRC_URI:append:pn-linux-yocto = " file://audit.cfg"
     CORE_IMAGE_EXTRA_INSTALL += "auditd"
 
-Then boot with "ima_appraise=log ima_appraise_tcb".
+Then boot with "ima_appraise=log ima_appraise_tcb integrity_audit=1".
+For example, for QEMU by changing variable QB_KERNEL_CMDLINE_APPEND
+in your local.conf:
+    QB_KERNEL_CMDLINE_APPEND:remove:pn-integrity-image-minimal = "ima_policy=tcb ima_appraise=fix"
+    QB_KERNEL_CMDLINE_APPEND:append:pn-integrity-image-minimal = " ima_appraise=log ima_appraise_tcb integrity_audit=1"
 
 Adding auditd is not strictly necessary but helps to capture a
 more complete set of events in /var/log/audit/ and search in
diff --git a/meta-integrity/recipes-kernel/linux/linux-yocto%.bbappend b/meta-integrity/recipes-kernel/linux/linux-yocto%.bbappend
index be60bfe..9c599aa 100644
--- a/meta-integrity/recipes-kernel/linux/linux-yocto%.bbappend
+++ b/meta-integrity/recipes-kernel/linux/linux-yocto%.bbappend
@@ -1 +1,3 @@
+FILESEXTRAPATHS:prepend := "${THISDIR}/linux:"
+
 require ${@bb.utils.contains_any('DISTRO_FEATURES', 'integrity ', 'linux_ima.inc', '', d)}
diff --git a/meta-integrity/recipes-kernel/linux/linux/audit.cfg b/meta-integrity/recipes-kernel/linux/linux/audit.cfg
new file mode 100644
index 0000000..214dbe3
--- /dev/null
+++ b/meta-integrity/recipes-kernel/linux/linux/audit.cfg
@@ -0,0 +1,2 @@
+CONFIG_AUDIT=y
+CONFIG_AUDITSYSCALL=y
-- 
2.34.1


