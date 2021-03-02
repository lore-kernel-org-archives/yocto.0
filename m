Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web12.447.1614718127413033228
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 12:48:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PD34zWz5;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id l132so20558723qke.7
        for <yocto@lists.yoctoproject.org>; Tue, 02 Mar 2021 12:48:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=c8LU2BPWpcV0N61Eobb945QUwh5WGp2ssr5No/jgVao=;
        b=PD34zWz5wXlniv3AEpBgeKPaVdH/cQD9s+RE7KxFEM//u6Bxg5GpXrzWzFmdaL2AxN
         4lqcN7QKjuxp/gwGWdMj1F8c/6gLnemNIXyr7jFRYiCg4x2zoRf6fhEjW0nmcezWAJ8E
         FKkdq552xB+MBIjZjF5taG6M/KkppBKfvrXhENSOk8RhTGhL/dhN9UY7wPJj6RR45IRe
         BIcEB4Dwk+Jh0UZhnVNEmUNK9cW5mwBsLvz7+6r8524opulD2u9RBrPs/3HAy84v21bA
         eXz6Nrp+H+CMbK0FDxVLlY0bXtK7O8wonnmk0v8q0V4SXmFh8vkG2LLjgQcBiUYBQ0FW
         S3bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=c8LU2BPWpcV0N61Eobb945QUwh5WGp2ssr5No/jgVao=;
        b=P1I2unSHbv2apJIefDMaCRJQfLDw7EsKnE2jMy4xPPVUrxoflKwk28SHZ1wU2Lz8C6
         tscULAL4FXvMPyzpz8vVNBJ2Hjw9s0lrZpf2iGol5/4VnjyGL1Yw4oxKgAG+6d5zv+z5
         tZo57Bf+sf/drjZ3rgvr/1m2aWyvqJ5fMbgLhoH5PEZNmLysF6RmpJFi6pbpHZLOs50P
         cyPa7DzPYAt4NwouDCWJO6NLq83vCRQUk1X1rT9JW5JmJ8poYPJQEGxOHYDHr4Oc64Bu
         YUo6EqQsDGT6SY6MBtV1aN8HE13ir5SOZ4uCHJw0Xipj9BtWETXyOgWSnb3t0t03LxD1
         oF2g==
X-Gm-Message-State: AOAM532wsxxaaSGGmV2C/xFks8J+kryDNBK9iX6u0rLIbRMcVyTdQULp
	FRmdzAgCSVVKqGpCqi2GqG2oPGmUkfQ=
X-Google-Smtp-Source: ABdhPJyu1k2DnCLiCzMXGe+05r6vkqDpQ5abkJoybzuerThus98HXgnDWpvL0L6pptXFJCfZPlTepQ==
X-Received: by 2002:a37:584:: with SMTP id 126mr20571001qkf.274.1614718126022;
        Tue, 02 Mar 2021 12:48:46 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost.nautel.com (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id d24sm4663038qko.54.2021.03.02.12.48.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 12:48:45 -0800 (PST)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] COMPATIBLE_MACHINE cleanup
Date: Tue,  2 Mar 2021 15:48:32 -0500
Message-Id: <20210302204832.28770-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The COMPATIBLE_MACHINE strings were getting unwieldy, so switch to the
MACHINEOVERRIDE notation so they're neater.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-kernel/linux/linux-stable-bleeding_5.11.bb |  2 +-
 recipes-kernel/linux/linux-yocto-dev.bbappend      |  9 ++++++++-
 recipes-kernel/linux/linux-yocto-rt_%.bbappend     |  9 ++++++++-
 recipes-kernel/linux/linux-yocto-tiny_%.bbappend   |  9 ++++++++-
 recipes-kernel/linux/linux-yocto_%.bbappend        | 10 ++++++++--
 5 files changed, 33 insertions(+), 6 deletions(-)

diff --git a/recipes-kernel/linux/linux-stable-bleeding_5.11.bb b/recipes-kernel/linux/linux-stable-bleeding_5.11.bb
index dce537d..508ddae 100644
--- a/recipes-kernel/linux/linux-stable-bleeding_5.11.bb
+++ b/recipes-kernel/linux/linux-stable-bleeding_5.11.bb
@@ -15,4 +15,4 @@ LINUX_VERSION = "5.11"
 LINUX_VERSION_EXTENSION = ""
 PV = "${LINUX_VERSION}"
 
-COMPATIBLE_MACHINE = "(rock-pi-e)"
+COMPATIBLE_MACHINE_rock-pi-e = "rock-pi-e"
diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel/linux/linux-yocto-dev.bbappend
index a85b85e..e5ea197 100644
--- a/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -1 +1,8 @@
-COMPATIBLE_MACHINE .= "|firefly-rk3288|marsboard-rk3066|radxarock|rock-pi-4|rock2-square|tinker-board-s|tinker-board|vyasa-rk3288|rock-pi-e"
+COMPATIBLE_MACHINE_marsboard-rk3066 = "marsboard-rk3066"
+COMPATIBLE_MACHINE_rock2-square = "rock2-square"
+COMPATIBLE_MACHINE_radxarock = "radxarock"
+COMPATIBLE_MACHINE_firefly-rk3288 = "firefly-rk3288"
+COMPATIBLE_MACHINE_vyasa-rk3288 = "vyasa-rk3288"
+COMPATIBLE_MACHINE_tinker-board = "tinker-board"
+COMPATIBLE_MACHINE_tinker-board-s = "tinker-board-s"
+COMPATIBLE_MACHINE_rock-pi-4 = "rock-pi-4"
diff --git a/recipes-kernel/linux/linux-yocto-rt_%.bbappend b/recipes-kernel/linux/linux-yocto-rt_%.bbappend
index 2f498d9..e5ea197 100644
--- a/recipes-kernel/linux/linux-yocto-rt_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto-rt_%.bbappend
@@ -1 +1,8 @@
-COMPATIBLE_MACHINE .= "|firefly-rk3288|marsboard-rk3066|radxarock|rock-pi-4|rock2-square|tinker-board-s|tinker-board|vyasa-rk3288"
+COMPATIBLE_MACHINE_marsboard-rk3066 = "marsboard-rk3066"
+COMPATIBLE_MACHINE_rock2-square = "rock2-square"
+COMPATIBLE_MACHINE_radxarock = "radxarock"
+COMPATIBLE_MACHINE_firefly-rk3288 = "firefly-rk3288"
+COMPATIBLE_MACHINE_vyasa-rk3288 = "vyasa-rk3288"
+COMPATIBLE_MACHINE_tinker-board = "tinker-board"
+COMPATIBLE_MACHINE_tinker-board-s = "tinker-board-s"
+COMPATIBLE_MACHINE_rock-pi-4 = "rock-pi-4"
diff --git a/recipes-kernel/linux/linux-yocto-tiny_%.bbappend b/recipes-kernel/linux/linux-yocto-tiny_%.bbappend
index 2f498d9..e5ea197 100644
--- a/recipes-kernel/linux/linux-yocto-tiny_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto-tiny_%.bbappend
@@ -1 +1,8 @@
-COMPATIBLE_MACHINE .= "|firefly-rk3288|marsboard-rk3066|radxarock|rock-pi-4|rock2-square|tinker-board-s|tinker-board|vyasa-rk3288"
+COMPATIBLE_MACHINE_marsboard-rk3066 = "marsboard-rk3066"
+COMPATIBLE_MACHINE_rock2-square = "rock2-square"
+COMPATIBLE_MACHINE_radxarock = "radxarock"
+COMPATIBLE_MACHINE_firefly-rk3288 = "firefly-rk3288"
+COMPATIBLE_MACHINE_vyasa-rk3288 = "vyasa-rk3288"
+COMPATIBLE_MACHINE_tinker-board = "tinker-board"
+COMPATIBLE_MACHINE_tinker-board-s = "tinker-board-s"
+COMPATIBLE_MACHINE_rock-pi-4 = "rock-pi-4"
diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
index 97b8cda..e5ea197 100644
--- a/recipes-kernel/linux/linux-yocto_%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_%.bbappend
@@ -1,2 +1,8 @@
-COMPATIBLE_MACHINE .= "|firefly-rk3288|marsboard-rk3066|radxarock|rock-pi-4|rock2-square|tinker-board-s|tinker-board|vyasa-rk3288"
-
+COMPATIBLE_MACHINE_marsboard-rk3066 = "marsboard-rk3066"
+COMPATIBLE_MACHINE_rock2-square = "rock2-square"
+COMPATIBLE_MACHINE_radxarock = "radxarock"
+COMPATIBLE_MACHINE_firefly-rk3288 = "firefly-rk3288"
+COMPATIBLE_MACHINE_vyasa-rk3288 = "vyasa-rk3288"
+COMPATIBLE_MACHINE_tinker-board = "tinker-board"
+COMPATIBLE_MACHINE_tinker-board-s = "tinker-board-s"
+COMPATIBLE_MACHINE_rock-pi-4 = "rock-pi-4"
-- 
2.30.0.rc0

