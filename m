Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.427.1617731835540275527
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 10:57:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gKg0qPJm;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id u10so17513253lju.7
        for <yocto@lists.yoctoproject.org>; Tue, 06 Apr 2021 10:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=F1qlPVhSuG4FX7LWUEBCmzdHceH5hIvFw/waf+zNZF0=;
        b=gKg0qPJmZowjKcELjJWvCqVxyjpNiUx8ZY5A+Bov2AV34rUNZOSWoWuusMOFI5ObzH
         DxYCeCHc3OkvPB0hhNGK/W8fVVYmPaHNgUltHaoCLenycBuL6HQweoU7m4xrqLDwqlYe
         QIKZ0ETw0l3h93EZbe5QqDmdfbRZiO5ZytImyMhqMPMAVkWcDh7A7Arg39Rs/XELiIOj
         87RnrqgTTBvAY4mTFLOhRH/yHwYtgy4TgIjzU17Wp3xiKwrJMEN48HP9KuYTDn+AzxoG
         HPXIen+4eb2EtneB08G3Zo86PS5vmdYiXpv4yLPgo9sqO7hKKfSULBAB0sUNtCbI52zV
         2S6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=F1qlPVhSuG4FX7LWUEBCmzdHceH5hIvFw/waf+zNZF0=;
        b=N9Et/x3X2ieR3r2DSE+wf0K4OfToks/Qogt7HKqRFEriGefadki6LiJyGhmOiunshG
         a6WTIQMaEdGz7L/dNYDA9BnE09yttyjJ8KYySrHU7kBDtc6kPSNsmEVyGR5isb6K35Tx
         So/jqTKhC7rmCXNytcbPeR/M30BhW76CQs9wMvRYoHG8FteJD7WGwHku1PGL74X3SNT6
         FbPpU5DXSy7wa2wKGMXSrS4KGF7Dv0YqZ73NeyE6fSvMqROTxqeGAvVjp5t51nqcmEyB
         kV5va0vewh4uplcTMrpiQJGyLlrnYSg76+jbh30laWPakUuZlxjcbm2OAS/llqMMmHbN
         4aGQ==
X-Gm-Message-State: AOAM531cSI3MlCW+EFpCBwi0+phUVDkZAVHUeSmXn5SSB1V5oRpJPy1E
	pkBNGxmVQqXtYnplM3LRE1LM3fH5YKGSV0lR
X-Google-Smtp-Source: ABdhPJwQVLpqxcV98h9mxBQMI8JWlj2jNdEEqYSF4tTCPOCFvbq+kP8BJnw2P4JoK1BkKg2GLj8+JQ==
X-Received: by 2002:a2e:bc0c:: with SMTP id b12mr20097991ljf.502.1617731833408;
        Tue, 06 Apr 2021 10:57:13 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from p1.lab ([2a02:a319:8239:4400:d916:28c0:7dfe:8a6f])
        by smtp.gmail.com with ESMTPSA id w26sm2280697ljm.38.2021.04.06.10.57.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 10:57:12 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: wojciech.zmuda@huawei.com,
	amit.kucheria.ext@huawei.com,
	andrei.gherzan@huawei.com,
	Zbigniew Bodek <zbigniew.bodek@huawei.com>
Subject: [meta-zephyr][PATCH 1/1] zephyr-flash-pyocd.bbclass: Fix problems with flashing particular boards
Date: Tue,  6 Apr 2021 19:56:59 +0200
Message-Id: <20210406175659.34019-2-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210406175659.34019-1-zmuda.w@gmail.com>
References: <20210406175659.34019-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Zbigniew Bodek <zbigniew.bodek@huawei.com>

By default, pyocd uses generic target type called "cortex_m" which
should be able to connect and debug but not flash the memory.
Normally pyocd would warn us of using default target instead
of proper one but this message wasn't displayed.

Despite not providing target type, flashing process succeeded
but results were undefined. On Nitrogen, sometimes it worked
(especially for small images) and sometimes the programmed
device crashed miserably.

Fix flashing operation by providing pyocd target type acquired from
the conditional PYOCD_TARGET variable declared for each machine
(chip family).

Signed-off-by: Zbigniew Bodek <zbigniew.bodek@huawei.com>
---
 classes/zephyr-flash-pyocd.bbclass | 10 +++++++++-
 conf/machine/include/nrf52832.inc  |  3 +++
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/classes/zephyr-flash-pyocd.bbclass b/classes/zephyr-flash-pyocd.bbclass
index a873be4..6517945 100644
--- a/classes/zephyr-flash-pyocd.bbclass
+++ b/classes/zephyr-flash-pyocd.bbclass
@@ -27,6 +27,9 @@ python do_flash_usb() {
         if not ids:
             bb.fatal("No probe requested for programming. Make sure PYOCD_FLASH_IDS is set.")
 
+    # Fetch target type to pass to the ConnectHelper
+    target = d.getVar('PYOCD_TARGET')
+
     # Program each ID
     for id in ids:
         bb.plain(f"Attempting to flash {os.path.basename(image)} to board {d.getVar('BOARD')} [{id}]")
@@ -35,7 +38,12 @@ python do_flash_usb() {
         now = 0
         step = 3
         while True:
-            session = ConnectHelper.session_with_chosen_probe(blocking=False, return_first=True, unique_id=id)
+            if target is not None:
+                session = ConnectHelper.session_with_chosen_probe(blocking=False, return_first=True, unique_id=id, target_override=target)
+            else:
+                bb.warn(f"Target type not provided. Flashing may fail or result in an undefined behavior.")
+                session = ConnectHelper.session_with_chosen_probe(blocking=False, return_first=True, unique_id=id)
+
             if session:
                 break
             if now >= timeout:
diff --git a/conf/machine/include/nrf52832.inc b/conf/machine/include/nrf52832.inc
index 73e628a..e938aa6 100644
--- a/conf/machine/include/nrf52832.inc
+++ b/conf/machine/include/nrf52832.inc
@@ -8,3 +8,6 @@ require conf/machine/include/tune-cortexm4.inc
 MACHINEOVERRIDES =. "nordic:"
 
 TUNE_FEATURES = "armv7m cortexm4"
+
+# Target type for this machine used by Pyocd
+PYOCD_TARGET = "nrf52"
-- 
2.25.1

