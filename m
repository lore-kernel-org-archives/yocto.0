Received: from mail-oo1-f66.google.com (mail-oo1-f66.google.com [209.85.161.66])
 by mx.groups.io with SMTP id smtpd.web08.7601.1607698081652580137
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Dec 2020 06:48:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AcxUvtvS;
 spf=pass (domain: gmail.com, ip: 209.85.161.66, mailfrom: jpewhacker@gmail.com)
Received: by mail-oo1-f66.google.com with SMTP id k9so2181291oop.6
        for <yocto@lists.yoctoproject.org>; Fri, 11 Dec 2020 06:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3mRd4o4R0RgPM+dSZHRPW/ZQme91nklUbMTlwD9m0Ek=;
        b=AcxUvtvSREPbG41vV03e0kUMx/CN52rf6M31cSo3Mg770lzXC/dmF6YUY5LIdF/4dq
         mnAddZBaFJxngR6K8Xt3ZHj6V6GyDz2O/Dk30xSxk8g47xp6irAniGASXWb4PbKkkF1m
         LPq22ia7LDR1FtNfxp0ECpFGpQU3FvU7hQIHhZEx3pw2+lbodL/eek8AM8zwWkoc8Iap
         d6r8YjEZYzGCQR8TBH3j/XeeHk0FuZJzJsmXGikPsX7C74f+Fxq0RwQYa7tKj74S99Tq
         OSX5U9mA/bHOoPgzA6H1SF6Z1d3iOTm2Rw7pVEh2OGAdr3Yx+6WBv8D4mCexdYkAWDCx
         ohnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3mRd4o4R0RgPM+dSZHRPW/ZQme91nklUbMTlwD9m0Ek=;
        b=SQy9dtCC6nC4kgTtZ2kgHMkb2z/1wAzsOZkfsNi7YamyY+5Kr0AkPssoHNmHOfoHyz
         TvUm5sHno0cjvDQ5fShfLEEXAVFRbRJETLjF5E5Tz+glrr+mrNMRoE4iddzI89SiMXFh
         fE7m7qtEZk9JuDQNWgZlygtpqBmFwytO1yW7dSMVhs+5I4Bcfmag/zhxaM5n8aIEjOy3
         ybvukQMnhL3eOru8W54iHox6/erGN9FUH70KVnyoW1PZvfkl5RO2kd9y0ZLzPsVUdp/Q
         sTXUtWx2BemM/S5s6dvBccXxr+4uuFk09TrPHhILUXpgndY3zFjub6WD0a+D+RHCZ0/m
         HYzw==
X-Gm-Message-State: AOAM531K8RQ9vDf7VHbgbxHRprplmsA/tI+5RALATVrJhn8E00DaGt3o
	BkX7wAdJh8i706AzPCFIrjZG1pyDCyf3SA==
X-Google-Smtp-Source: ABdhPJz8IQhk7kjHheOddAybdFycDDTaQhxO/2cJZyiYC4ecKN4l96cSQ6L1cSM94fbjjuc34gOMyQ==
X-Received: by 2002:a4a:9c5:: with SMTP id 188mr1411897ooa.77.1607698080511;
        Fri, 11 Dec 2020 06:48:00 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from localhost.localdomain ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id h2sm1866342otn.15.2020.12.11.06.47.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 06:47:59 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [meta-rockchip][PATCH] Fix Rock Pi 4 serial port
Date: Fri, 11 Dec 2020 08:47:52 -0600
Message-Id: <20201211144752.13869-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixes the serial port output stopping mid way through the boot process
by reverting the kernel commit that caused it.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 ...-resolve-supply-after-creating-regul.patch | 53 +++++++++++++++++++
 recipes-kernel/linux/linux-yocto_5.8.bbappend |  4 ++
 2 files changed, 57 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch
 create mode 100644 recipes-kernel/linux/linux-yocto_5.8.bbappend

diff --git a/recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch b/recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch
new file mode 100644
index 0000000..3dd336b
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch
@@ -0,0 +1,53 @@
+From a414d39b848002e15531f2538d2b6427ce51d07d Mon Sep 17 00:00:00 2001
+From: Joshua Watt <JPEWhacker@gmail.com>
+Date: Thu, 10 Dec 2020 15:59:47 -0600
+Subject: [PATCH] Revert "regulator: resolve supply after creating regulator"
+
+This commit prevents the serial console from working on the Rock Pi 4
+for some reason. It *appears* to possibly be fixed by some other commit
+upstream, but after a lot of head scratching and bisecting, I was unable
+to find which one, so just revert it for now and we can deal with it
+later.
+
+This reverts commit 96c6b5d5775637b3095ef934f871044811fd4db7.
+
+---
+ drivers/regulator/core.c | 21 ++++++++-------------
+ 1 file changed, 8 insertions(+), 13 deletions(-)
+
+diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
+index 25e601bf9383..be8c709a7488 100644
+--- a/drivers/regulator/core.c
++++ b/drivers/regulator/core.c
+@@ -5187,20 +5187,15 @@ regulator_register(const struct regulator_desc *regulator_desc,
+ 	else if (regulator_desc->supply_name)
+ 		rdev->supply_name = regulator_desc->supply_name;
+ 
++	/*
++	 * Attempt to resolve the regulator supply, if specified,
++	 * but don't return an error if we fail because we will try
++	 * to resolve it again later as more regulators are added.
++	 */
++	if (regulator_resolve_supply(rdev))
++		rdev_dbg(rdev, "unable to resolve supply\n");
++
+ 	ret = set_machine_constraints(rdev, constraints);
+-	if (ret == -EPROBE_DEFER) {
+-		/* Regulator might be in bypass mode and so needs its supply
+-		 * to set the constraints */
+-		/* FIXME: this currently triggers a chicken-and-egg problem
+-		 * when creating -SUPPLY symlink in sysfs to a regulator
+-		 * that is just being created */
+-		ret = regulator_resolve_supply(rdev);
+-		if (!ret)
+-			ret = set_machine_constraints(rdev, constraints);
+-		else
+-			rdev_dbg(rdev, "unable to resolve supply early: %pe\n",
+-				 ERR_PTR(ret));
+-	}
+ 	if (ret < 0)
+ 		goto wash;
+ 
+-- 
+2.29.2
+
diff --git a/recipes-kernel/linux/linux-yocto_5.8.bbappend b/recipes-kernel/linux/linux-yocto_5.8.bbappend
new file mode 100644
index 0000000..5a31842
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto_5.8.bbappend
@@ -0,0 +1,4 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI_append_rock-pi-4 = " file://0001-Revert-regulator-resolve-supply-after-creating-regul.patch"
+
-- 
2.29.2

