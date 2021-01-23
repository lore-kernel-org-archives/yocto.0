Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
 by mx.groups.io with SMTP id smtpd.web12.12778.1611435929369284544
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Jan 2021 13:05:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gR84PI/v;
 spf=pass (domain: gmail.com, ip: 209.85.210.52, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f52.google.com with SMTP id v1so8837636ott.10
        for <yocto@lists.yoctoproject.org>; Sat, 23 Jan 2021 13:05:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Qkh58mCKHnsWvgYcfmsuZauH9WbWpLGJy1GeBdmstd0=;
        b=gR84PI/vStcSslxW4JZX1MolRX2rBfYa9zR189i333K5TDe/F4N/jg0+T/5WgzRv3g
         r7ZAyAOdLj78Wv4KCCVy4tO4wA9h8ds4tv2+Gf0bzHcxvWHOx5n+4lJjbY+kKHhV1ZoV
         S3rfOaGBeIW3OpoFWHwwI+0yvNlfby/TIZwjZHSrmDWFCApPtNnnLiMZLO9whKou7jBH
         pFwzmVVtMDGSBMsrW2Am3HOLF2hRds2wlF0x4mERM/QvyZQRcJtNZ7rg0R/rqtEOdIdg
         LwV12G5fgEfA5eRukQxkyfRI55IrlXffBSmEe5rcSx+LBN7VaPqz/LY3Hw0agvOkL/+5
         y3JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Qkh58mCKHnsWvgYcfmsuZauH9WbWpLGJy1GeBdmstd0=;
        b=hcYwbrqz7sJYz6MTDGk4Pq+lrcE7XvHD9YeBfU4PyxG+2G89LWpD/Ql0Oozo/WePwo
         zySKsFKmVeZaAFOMd8VuMlLc0LEjyrWdOsq8d+1pR7JnQ13gp6f9OhqGQJKmsYxa/jHf
         CaY14AcAXiEktBejr/WPhlBIlLKDL5KYiIxcRWO4Qg0DPcb6L8+AsV53k6Fc/yc8vcW8
         Z4vSXCYsfMtCcapJxzAe9erSzLRYdr6LwHFzhU9mkbPjWtkkmJyPtYve5wxpd983O6Xt
         By3oJMcKy/vtArWsBJHiOeIHIukvOV5gz2zoGLlgBdJ7nQYeWcNucP8dkyT787tCtGsq
         XGjg==
X-Gm-Message-State: AOAM5301BCqasX4FkFaHQtz9lJiv0PIRyCuoEeR8feMT3fpPLo5qjQTk
	Bw5+hm5uyzNg9piEXXMYvi0qOm6w9ME=
X-Google-Smtp-Source: ABdhPJzkOrbgW0pEDfPkZrCCZr9lApJXAPdia4tylqcnAMvJ6T8W5SmadX/9uBArcuri7lvpoBSn+g==
X-Received: by 2002:a9d:6659:: with SMTP id q25mr7484879otm.235.1611435928531;
        Sat, 23 Jan 2021 13:05:28 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from localhost.localdomain ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id w11sm2520737otl.13.2021.01.23.13.05.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jan 2021 13:05:28 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [meta-rockchip][PATCH] linux-yocto: Remove Rock Pi 4 patch for serial
Date: Sat, 23 Jan 2021 15:05:25 -0600
Message-Id: <20210123210525.20237-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Upstream OE Core has moved to Kernel 5.10 which fixed this problem, so
remove the patch for 5.8

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 ...-resolve-supply-after-creating-regul.patch | 53 -------------------
 recipes-kernel/linux/linux-yocto_5.8.bbappend |  4 --
 2 files changed, 57 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch
 delete mode 100644 recipes-kernel/linux/linux-yocto_5.8.bbappend

diff --git a/recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch b/recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch
deleted file mode 100644
index 3dd336b..0000000
--- a/recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch
+++ /dev/null
@@ -1,53 +0,0 @@
-From a414d39b848002e15531f2538d2b6427ce51d07d Mon Sep 17 00:00:00 2001
-From: Joshua Watt <JPEWhacker@gmail.com>
-Date: Thu, 10 Dec 2020 15:59:47 -0600
-Subject: [PATCH] Revert "regulator: resolve supply after creating regulator"
-
-This commit prevents the serial console from working on the Rock Pi 4
-for some reason. It *appears* to possibly be fixed by some other commit
-upstream, but after a lot of head scratching and bisecting, I was unable
-to find which one, so just revert it for now and we can deal with it
-later.
-
-This reverts commit 96c6b5d5775637b3095ef934f871044811fd4db7.
-
----
- drivers/regulator/core.c | 21 ++++++++-------------
- 1 file changed, 8 insertions(+), 13 deletions(-)
-
-diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
-index 25e601bf9383..be8c709a7488 100644
---- a/drivers/regulator/core.c
-+++ b/drivers/regulator/core.c
-@@ -5187,20 +5187,15 @@ regulator_register(const struct regulator_desc *regulator_desc,
- 	else if (regulator_desc->supply_name)
- 		rdev->supply_name = regulator_desc->supply_name;
- 
-+	/*
-+	 * Attempt to resolve the regulator supply, if specified,
-+	 * but don't return an error if we fail because we will try
-+	 * to resolve it again later as more regulators are added.
-+	 */
-+	if (regulator_resolve_supply(rdev))
-+		rdev_dbg(rdev, "unable to resolve supply\n");
-+
- 	ret = set_machine_constraints(rdev, constraints);
--	if (ret == -EPROBE_DEFER) {
--		/* Regulator might be in bypass mode and so needs its supply
--		 * to set the constraints */
--		/* FIXME: this currently triggers a chicken-and-egg problem
--		 * when creating -SUPPLY symlink in sysfs to a regulator
--		 * that is just being created */
--		ret = regulator_resolve_supply(rdev);
--		if (!ret)
--			ret = set_machine_constraints(rdev, constraints);
--		else
--			rdev_dbg(rdev, "unable to resolve supply early: %pe\n",
--				 ERR_PTR(ret));
--	}
- 	if (ret < 0)
- 		goto wash;
- 
--- 
-2.29.2
-
diff --git a/recipes-kernel/linux/linux-yocto_5.8.bbappend b/recipes-kernel/linux/linux-yocto_5.8.bbappend
deleted file mode 100644
index 5a31842..0000000
--- a/recipes-kernel/linux/linux-yocto_5.8.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI_append_rock-pi-4 = " file://0001-Revert-regulator-resolve-supply-after-creating-regul.patch"
-
-- 
2.30.0

