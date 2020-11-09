Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web10.8648.1604910747697150154
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 00:32:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bABZqQ0x;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id i19so10983455ejx.9
        for <yocto@lists.yoctoproject.org>; Mon, 09 Nov 2020 00:32:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=i4pb33aykyQxLNP8NaaFnf49YJP38o9/jxlgdBQd8a8=;
        b=bABZqQ0xp5HZ5IzGhx3Excy5VXeIPS9KLZbAAGlLv/iRo+xqOdRNKof05vhizwk/KS
         U1rZ3UBwxRcH/wanBQqfeUoaqHpddrTaBHTVrqkE7+spNP1Amm0XMfihXi7pyjji/bnx
         M50pRmTVe7NLz6pWjmyIPWkqaXy2bqSaCZhhjsipbElluIJAwpFss9lJYsmXZqRO1z38
         uY4Hy/btUTnI8t4nGwyO89qd/DebNJ3IQ6pVcsi66oYBZW9xS96mW8L3HDCHjJnu0Kny
         Gz/p2oQxmAAmizge46liVtqEp8aXCem5Erk+/kCsgROQtxygjr3WIXh6zpKVYQ4rqKuH
         u2Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i4pb33aykyQxLNP8NaaFnf49YJP38o9/jxlgdBQd8a8=;
        b=qlSSVEKf7Gd2v25mLowHC1t/ddwyNfLNB0fCNyBruWUowADpTloZ1zoRr8zWcTHgtL
         64HLiV+h4m+PYgGgyWYHuvjqbVdrQrf8Oe0KiOovSAp47/nUK/RhUIKy20uJciPd438T
         UagANMQGYiHw90/hizY4Zmx4SQTtSbam35lFw2vil/yhHzoel37/Rt8+FKrddEzYg7q+
         TRAuNxHnBZpsZfF1F/fC8zzRXCu/yN6x5KKI+rC72uA2snu2eBX+mr3Co+taKRiOBjGn
         aHanAGJQDnxd4Bpb0Fy935NuujZ9h3V5Gp91btezaDKdkcNrC5L6edw5w/lTJEJBECE4
         EwOA==
X-Gm-Message-State: AOAM5327cwsO0gMTelUoCEwsVBvsOpQgZ/EUkRityGjEnucF51ncIePB
	nu+WXReGFTy08uKGnRdZyY/62SGaUfQpaQ==
X-Google-Smtp-Source: ABdhPJybV7QGaDsPVvKtuwpk6/Cu8oV8us7nhNVFZfCX2iuQtmMBULAln2+33/7lxPWZqZ05nwsjiA==
X-Received: by 2002:a17:906:b292:: with SMTP id q18mr13664064ejz.93.1604910746021;
        Mon, 09 Nov 2020 00:32:26 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.fritz.box ([2a02:2450:1011:4f7:596d:bf31:3950:5bda])
        by smtp.gmail.com with ESMTPSA id d23sm8191927edp.36.2020.11.09.00.32.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 00:32:25 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [RFC PATCH 2/5] config.json: transition ptests to weston-based images
Date: Mon,  9 Nov 2020 09:32:03 +0100
Message-Id: <20201109083206.16832-2-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.1
In-Reply-To: <20201109083206.16832-1-alex.kanavin@gmail.com>
References: <20201109083206.16832-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/config.json b/config.json
index 6d50a36..3e60d15 100644
--- a/config.json
+++ b/config.json
@@ -87,16 +87,16 @@
         },
         "ptest-qemu" : {
             "BUILDINFO" : true,
-            "BBTARGETS" : "core-image-sato-ptest",
-            "SANITYTARGETS" : "core-image-sato-ptest:do_testimage",
+            "BBTARGETS" : "core-image-weston-ptest-all",
+            "SANITYTARGETS" : "core-image-weston-ptest-all:do_testimage",
             "extravars" : [
                 "TEST_SUITES = 'ping ssh ptest'"
             ]
         },
         "ptest-qemu-fast" : {
             "BUILDINFO" : true,
-            "BBTARGETS" : "core-image-sato-ptest-fast",
-            "SANITYTARGETS" : "core-image-sato-ptest-fast:do_testimage",
+            "BBTARGETS" : "core-image-weston-ptest-fast",
+            "SANITYTARGETS" : "core-image-weston-ptest-fast:do_testimage",
             "extravars" : [
                 "TEST_SUITES = 'ping ssh ptest'"
             ]
@@ -116,7 +116,7 @@
         "arch-hw" : {
             "BUILDINFO" : true,
             "step1" : {
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-ptest core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-weston-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
         },
@@ -303,7 +303,7 @@
              },
             "step2" : {
                 "MACHINE" : "qemux86-64",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-sdk-ptest core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-weston-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
 
             },
-- 
2.29.1

