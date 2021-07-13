Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web09.84.1626219141965953036
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jul 2021 16:32:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z07bh1sS;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id c5so124942qvu.11
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jul 2021 16:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=nNNTD9CW5t1x/xEGnbMkE0X0NsX8vqn3Fjl/jO/Erh8=;
        b=Z07bh1sSaZwg22BEMlEMRXSLrS64UKnh9BCbglOdhteQBMGjL/96jUP7LuRnXJIrjD
         JjfHCweTMWdLpa2OdQd4/HKbL979pnrChpEnpPftUXw+EiDmSX+UVOzjVX06cKFdHk5A
         Q46sFcy7fpFQKUaXpPDWSHxzCszq/zXozepW8VBDci+vIn5RJwLo5syIVS1y8VyMJWX6
         rhUKBYBq4hesdpoAbSMjmsHEdQ9nvKaBdko6J69ipbwwsUsmbBo6ysm8q8Tya6EKQ0Rc
         z99zl4UJraS5AvmCRLeZOp9COEJq67+AQYUpZXU2hJqm9sQ8bvOjGwxGHUEWo1kbESTJ
         7LQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nNNTD9CW5t1x/xEGnbMkE0X0NsX8vqn3Fjl/jO/Erh8=;
        b=LnNyARMOTCMwoO09lCBxvbMTsEn5MCUhOsc01EZRxPjANmUPuTzP7HDzu8u49nk6zR
         A+oDoUWMpRzRlzPd5WnSx5dbm21uzI7HgpoAlZjLymAtVrrPMqQGQF6Ob0aHdheYQDqo
         bOGVRE6tLVXnWVtWcrfBmbuxO1rlhjw7/taBZjJQhX+LxK4yZYUAHsgpBr0Nf56UZXgb
         1pkC7VTF1Ws5jemaW58qx8+oGswXOOtwmIjzdvLbIkr2HZn8Ab07rPyRpIAHJjimBYJQ
         +Vxf4pLZbGyO0QX3djBS0vk/eK02k5yRi3P3IKQdm8m8lyRbB2RW7gxaWHiXFvAn/2hQ
         XHdw==
X-Gm-Message-State: AOAM531A8hCdUV9QNlnrJ1Nklhb38QA+OAh6G4WZjXL+/93AGZk+YVX5
	n+YLRPoE8DDSqDaQdyEebifeS51Srf5vVQ==
X-Google-Smtp-Source: ABdhPJwl6DmdlOoyjeedRMMBMqoXUsAg8TZcgAnKegr3KaXX+Rn3XFF7/vJdoAYV8boX9kMM39SF0A==
X-Received: by 2002:a05:6214:1941:: with SMTP id q1mr7375276qvk.35.1626219140865;
        Tue, 13 Jul 2021 16:32:20 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id x5sm194060qke.92.2021.07.13.16.32.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 16:32:20 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] rock-pi-e: update preferred kernel
Date: Tue, 13 Jul 2021 19:32:04 -0400
Message-Id: <20210713233204.11476-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
In-Reply-To: <20210713233204.11476-1-twoerner@gmail.com>
References: <20210713233204.11476-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The latest updates to linux-yocto-dev now include support for the rock-pi-e so
do away with our custom recipe and use the one from oe-core.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/rock-pi-e.conf                    |  2 +-
 .../linux/linux-stable-bleeding_5.11.bb        | 18 ------------------
 recipes-kernel/linux/linux-yocto%.bbappend     |  1 +
 3 files changed, 2 insertions(+), 19 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-stable-bleeding_5.11.bb

diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
index 7afe143..9cd3ed4 100644
--- a/conf/machine/rock-pi-e.conf
+++ b/conf/machine/rock-pi-e.conf
@@ -7,7 +7,7 @@ require conf/machine/include/rk3328.inc
 
 MACHINEOVERRIDES =. "rock-pi-e:"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-stable-bleeding"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
 KERNEL_DEVICETREE = "rockchip/rk3328-rock-pi-e.dtb"
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 
diff --git a/recipes-kernel/linux/linux-stable-bleeding_5.11.bb b/recipes-kernel/linux/linux-stable-bleeding_5.11.bb
deleted file mode 100644
index 508ddae..0000000
--- a/recipes-kernel/linux/linux-stable-bleeding_5.11.bb
+++ /dev/null
@@ -1,18 +0,0 @@
-# the rock-pi-e is very new
-# it's exciting that support has already been added upstream
-# but it's so new that even linux-yocto-dev doesn't have it yet
-#
-# in time we should see the need for this recipe going away
-
-inherit kernel
-require recipes-kernel/linux/linux-yocto.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"
-
-SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git"
-SRCREV = "c03c21ba6f4e95e406a1a7b4c34ef334b977c194"
-LINUX_VERSION = "5.11"
-LINUX_VERSION_EXTENSION = ""
-PV = "${LINUX_VERSION}"
-
-COMPATIBLE_MACHINE_rock-pi-e = "rock-pi-e"
diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel/linux/linux-yocto%.bbappend
index 3789c72..c2fe9ad 100644
--- a/recipes-kernel/linux/linux-yocto%.bbappend
+++ b/recipes-kernel/linux/linux-yocto%.bbappend
@@ -9,6 +9,7 @@ COMPATIBLE_MACHINE_rock-pi-4 = "rock-pi-4"
 COMPATIBLE_MACHINE_nanopi-m4 = "nanopi-m4"
 COMPATIBLE_MACHINE_nanopi-m4-2gb = "nanopi-m4-2gb"
 COMPATIBLE_MACHINE_rock64 = "rock64"
+COMPATIBLE_MACHINE_rock-pi-e = "rock-pi-e"
 
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
-- 
2.30.0.rc0

