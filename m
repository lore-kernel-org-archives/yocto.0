Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com [209.85.208.194])
 by mx.groups.io with SMTP id smtpd.web09.15968.1607616173272198292
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Dec 2020 08:02:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DNIZJYV2;
 spf=pass (domain: gmail.com, ip: 209.85.208.194, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f194.google.com with SMTP id n11so2421984lji.5
        for <yocto@lists.yoctoproject.org>; Thu, 10 Dec 2020 08:02:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Cf/UGlum6mVK94Z20lzNK/tr825JLCAEP6LpFuW+2i4=;
        b=DNIZJYV2mRjyysP1TbZRESZ9SwBHzSKidOEkTUWbg1r2jNS2+Go91KTztg925QkOLq
         dDbAUGE9VUEYlO0olPrsvSUnDU9TOQQaTE9kxpCdBMdWQEOEyTXVNhbwgNZz1mmUfQKI
         XdydVvuqKxqgGMuNe6/OgLA9CIG9ThbU3024VESNnqoX2XnCTLid5wpvc43cVJt5EDng
         sWI4bcdDNnWqQNZkpwlqSmCxEmqhiV24nlVPXusuayTOCp5wbaEy45Gmss/4siQQcSHj
         GzAbkHivma+hSzq2BeruNe+DHPDtpDEle5neZFSQLPWxmeONAfvCvzmKcU1dJnP+VErh
         lYHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Cf/UGlum6mVK94Z20lzNK/tr825JLCAEP6LpFuW+2i4=;
        b=Q4QG8tVMJk4pxBcp6tjMvM+Bh6Y/eZ8un5haZ3COiFp3m4SogheYXa/RXcGKdSCbG7
         Q3RoA3lwImZ0Y4erk3OSxyGS0Nzx6O8AIadVa960SvDyFrzD9dgTqYUVJfw0O29uq0nT
         jemXk/0OQ1SbpmEdvLPO/P1rOFiCScBiPLqVGh3ZKmWzKxfXoQFDYssxQcUDbYchIdAf
         Ga+9dtlHxWYxkGAAKHSDOK9WDJIItPx4qUTXdDWU8Lib0l+9ZO2yIL7utTgI4a80+2O5
         6OJzvMMqsouxJOiuVCIengjn2b7sP8dpelr62/8ZLGN1UWR7hEYYLxnpFuI50WGWy0WW
         gd/A==
X-Gm-Message-State: AOAM533J65driuRYobEPNLNpDyPak2Nbr0efqnKr3N4kvOLn9jlC9Mk5
	xfrEihER0doL9e+R/MPYiDH7ptu03v+7ig==
X-Google-Smtp-Source: ABdhPJzpW9ssJvnynMI8qgb5f6bO6VPQ4+Uh5lgmheY1iW+GblI2UGEdZkHqiOyfv2U+RvEzaWz/Dg==
X-Received: by 2002:a2e:88d6:: with SMTP id a22mr3391477ljk.150.1607616170212;
        Thu, 10 Dec 2020 08:02:50 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id n10sm646744ljg.139.2020.12.10.08.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 08:02:49 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	davide.ricci@huawei.com,
	jaroslaw.marek@huawei.com,
	zbigniew.bodek@huawei.com,
	robert.drab@huawei.com,
	amit.kucheria.ext@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v3 5/5] classes: build zephyr-kernel-test-all for non-qemu boards
Date: Thu, 10 Dec 2020 16:02:11 +0000
Message-Id: <20201210160211.71850-6-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201210160211.71850-1-zmuda.w@gmail.com>
References: <20201210160211.71850-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

Machines not inheriting zephyr-qemuboot did not have
IMGDEPLOYDIR variable set, which is required for building
zephyr-kernel-test-all. The build was fine for qemu-xxx machines,
but for physical boards it failed somewhere inside python code
when .join() got an empty argument incoming from IMGDEPLOYDIR.
Move IMGDEPLOYDIR to zephyr class, so it's defined for
qemu and non-qemu machines.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 classes/zephyr-qemuboot.bbclass | 3 ---
 classes/zephyr.bbclass          | 3 +++
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/classes/zephyr-qemuboot.bbclass b/classes/zephyr-qemuboot.bbclass
index 39de3f0..5ac1c86 100644
--- a/classes/zephyr-qemuboot.bbclass
+++ b/classes/zephyr-qemuboot.bbclass
@@ -11,9 +11,6 @@ IMAGE_LINK_NAME = "${PN}-image-${MACHINE}"
 # Create a link with "-image-" in the name just to keep runqemu happy
 QEMU_IMAGE_LINK = "${DEPLOY_DIR_IMAGE}/${PN}-image-${MACHINE}.elf"
 
-# qemuboot writes into IMGDEPLOYDIR, force to write to DEPLOY_DIR_IMAGE
-IMGDEPLOYDIR = "${DEPLOY_DIR_IMAGE}"
-
 CLEANFUNCS += "bootconf_clean"
 
 python bootconf_clean() {
diff --git a/classes/zephyr.bbclass b/classes/zephyr.bbclass
index ead762a..6fceb04 100644
--- a/classes/zephyr.bbclass
+++ b/classes/zephyr.bbclass
@@ -10,6 +10,9 @@ TERMINFO = "${STAGING_DATADIR_NATIVE}/terminfo"
 KCONFIG_CONFIG_COMMAND ??= "menuconfig"
 ZEPHYR_BOARD ?= "${MACHINE}"
 
+# qemuboot writes into IMGDEPLOYDIR, force to write to DEPLOY_DIR_IMAGE
+IMGDEPLOYDIR = "${DEPLOY_DIR_IMAGE}"
+
 python () {
     # Translate MACHINE into Zephyr BOARD
     # Zephyr BOARD is basically our MACHINE, except we must use "-" instead of "_"
-- 
2.25.1

