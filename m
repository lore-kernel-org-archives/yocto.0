Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web12.1038.1593534664279463199
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 09:31:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=RP6rET0q;
 spf=pass (domain: burtonini.com, ip: 209.85.128.68, mailfrom: ross@burtonini.com)
Received: by mail-wm1-f68.google.com with SMTP id 17so20205629wmo.1
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jun 2020 09:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PpS1upmtH8AkBRO8NgJGhVXzxznb4fN8n/brV3cr00s=;
        b=RP6rET0qlXACZkn8y7SkWwN9e+Y86O6Kh7EaGC4OTgQar/O05OSvf0J/RES5Qd2p8b
         qxUEo+fD8B7loThmOycfOicAW5FTp4U/ypJlGLC7UFP73Xby7Ox/QTkLQO2ztBOcZtdB
         r4pXCpEN91bKXiN94kcgcupltGKy6++tz9ROZlqtsAwML9hCuYMf2nWuPlf8Lc3yx7KL
         oM2OXi6IZiX81/KhPNIJRkS9ER92fMKkYEoeupRrvNCo1eghW/qogN7ovrr8m9DpXOTm
         lTNqWY8aulHUE/wEmrV8jbp42wHyQd0sohEm1JLzNMYetcFVm21D2c4sZpg0AnMoOFHQ
         tNjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PpS1upmtH8AkBRO8NgJGhVXzxznb4fN8n/brV3cr00s=;
        b=Oz2hdW2BBhHhPVJy5T/nYQZ/bopwmDHKKa92GIptzqXJkSWZgDY+TRP2YcKwRwspur
         fPTtGHZTD/oHPzxNK+N5DGc0oxPpcu43LCerLMC1RbcF2c+4xzxkJrLAKhtEKHvGl1Qg
         aOQ8KODy0HmWGOFGFmlJt3uGXdJyMHUf15RqOUI70znyYX13GNBXU2To7JJa9jZ6nXET
         /ba73gb125qe+wcSe2Krk20eE5h/RBu2HWg4h3761ZGF2KGvtX6p90bvrnpbXmtudiE6
         GDagCv0qInnraHZteuem6hY50G0YpVYfHVkCbxtJLkxjgP/UxhVRs+Ib8jxxps4ojENh
         42nw==
X-Gm-Message-State: AOAM533byRQZ05sElk7isadzW6qDDs2a/tTFdmp3mUaPEvVQeCFJjn2w
	WyGCJCUtWTJeh+DETOnKDTOnqddjKahK7A==
X-Google-Smtp-Source: ABdhPJyHHsOoZEDK7g+g/rab8Td8txjoEKlLiTye4+4Sd6L6oMOF1NjUIWkLvz42qQR0uUv+5vkjIw==
X-Received: by 2002:a1c:5418:: with SMTP id i24mr21464890wmb.47.1593534662378;
        Tue, 30 Jun 2020 09:31:02 -0700 (PDT)
Return-Path: <ross@burtonini.com>
Received: from localhost.localdomain (35.106.2.81.in-addr.arpa. [81.2.106.35])
        by smtp.gmail.com with ESMTPSA id z25sm3849475wmk.28.2020.06.30.09.31.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 09:31:01 -0700 (PDT)
From: "Ross Burton" <ross@burtonini.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] config.json: add meta-arm
Date: Tue, 30 Jun 2020 17:30:57 +0100
Message-Id: <20200630163057.29948-1-ross@burtonini.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ross Burton <ross.burton@arm.com>

This builds a small number of images for the N1 SDP and Juno boards.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/config.json b/config.json
index b810373..8823c32 100644
--- a/config.json
+++ b/config.json
@@ -273,6 +273,24 @@
             "MACHINE" : "qemuarm64",
             "TEMPLATE" : "ltp-qemu"
         },
+        "meta-arm" : {
+            "NEEDREPOS" : ["poky", "meta-arm"],
+            "ADDLAYER" : [
+                "${BUILDDIR}/../meta-arm/meta-arm",
+                "${BUILDDIR}/../meta-arm/meta-arm-bsp",
+                "${BUILDDIR}/../meta-arm/meta-arm-toolchain"
+            ],
+            "step1": {
+                "MACHINE": "n1sdp",
+                "BBTARGETS": "core-image-minimal core-image-sato core-image-sato:do_populate_sdk",
+                "SANITYTARGETS" : "core-image-sato:do_testsdk"
+                },
+            "step2": {
+                "MACHINE": "juno",
+                "BBTARGETS": "core-image-minimal core-image-sato core-image-sato:do_populate_sdk",
+                "SANITYTARGETS" : "core-image-sato:do_testsdk"
+            }
+        },
        "bringup" : {
             "BUILDINFO" : true,
             "SSTATEDIR" : ["SSTATE_DIR ?= '${HELPERBUILDDIR}/sstate'"],
@@ -964,6 +982,12 @@
             "branch" : "master",
             "revision" : "HEAD",
             "no-layer-add" : true
+        },
+        "meta-arm" : {
+            "url" : "git://git.yoctoproject.org/meta-arm",
+            "branch" : "master",
+            "revision" : "HEAD",
+            "no-layer-add" : true
         }
 
     },
-- 
2.24.3 (Apple Git-128)

