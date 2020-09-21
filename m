Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com [209.85.219.65])
 by mx.groups.io with SMTP id smtpd.web11.1437.1600731258277870538
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Sep 2020 16:34:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=hCRUs+7y;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.219.65, mailfrom: jdmason@kudzu.us)
Received: by mail-qv1-f65.google.com with SMTP id cr8so8506332qvb.10
        for <yocto@lists.yoctoproject.org>; Mon, 21 Sep 2020 16:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MOrUO1SKYDhsyT3zkS3d8doF81cyA5RxMAXXNExmqpY=;
        b=hCRUs+7yTSrkJI2jrcRDwMiXoKxX0+1PLgvRmvxp08e72MYwIN+FHX8iJ+wtYHuq2g
         OB74qaJ79/6rWwQlSG46fqMxwpZg9wo3O1cH5md+iKo7zE+CLIY5Qc9cyzg0CQGsCr9E
         RcT1Wjwd7veIVmmYgjIWj+COYL6EcPGmb6ut3zVCm6Ew4sXQTi+613M/M4yYhC++vtj1
         jJe2R2gh3CqNh1FXyzjlXgpV9RgYVMFBExks4fTckbLUYTEohgdPvfegceKNy02SBPst
         5XXl4QrIThgu8ZDS/7IyfYaWBOyPhLnt4TAkLodG/Jkr66W3EwwZ6PoPDPHyn9boRs6v
         j33A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MOrUO1SKYDhsyT3zkS3d8doF81cyA5RxMAXXNExmqpY=;
        b=h4lr8kf5WE04VVUsNGCtCZ6OdIoIylRvF9HPP1lvqHIxwXlxpW73w4JH1+fTd0qMRs
         I//GVCuocfTevy6pZN9l2HSNh+Kn+DkyFdrqUYIFpCYqJF82kqahl5KGalRj4bT5CthO
         llr/yMdvVhZbPgAzykHtvNk5UD/K//B/6zw9EGrBU20gh96CT4Ilwd9Lvv7XA+i5guD0
         f/n7MiUW42m5XKKHNtBSsVyIYTwsEftSLS88uZ82m3wrW031scJRMnjBWJJc5Iu1HZ7D
         nR6e5DzStfZYqLqgZececFRTOJ26Tm3z5hQ29FTSs0hRMSBloM2Am5NeN94DUxeCU45w
         cBjg==
X-Gm-Message-State: AOAM5336dr91H+kp9JZnz7uBnDpiXRF/0I0Q476lX7IumT8zuo6vBNnS
	H87YFJBWTKeUJelxWOIzdDxLD2Jh1TbcZywR
X-Google-Smtp-Source: ABdhPJwWvMmD9hn/fzoru7Ob9l2n1JWqVxsCe+lO/+fWrHlIFsBG8s2Fj6hqqWehmKnNNJ/f5xX/Kw==
X-Received: by 2002:a0c:b343:: with SMTP id a3mr2839362qvf.41.1600731257274;
        Mon, 21 Sep 2020 16:34:17 -0700 (PDT)
Return-Path: <jdmason@kudzu.us>
Received: from localhost ([136.56.1.171])
        by smtp.gmail.com with ESMTPSA id q3sm10365303qkq.132.2020.09.21.16.34.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2020 16:34:16 -0700 (PDT)
From: "Jon Mason" <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][morty PATCH] zephyr-kernel: update URLs
Date: Mon, 21 Sep 2020 19:33:57 -0400
Message-Id: <20200921233357.25245-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

URLs no longer point to a valid location.  Update to the current
location.

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 classes/zephyr-kernel-src.bbclass                     | 2 +-
 recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.6.bb | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/classes/zephyr-kernel-src.bbclass b/classes/zephyr-kernel-src.bbclass
index d7aa81bfaa62..cd1503dc1299 100644
--- a/classes/zephyr-kernel-src.bbclass
+++ b/classes/zephyr-kernel-src.bbclass
@@ -3,7 +3,7 @@
 PREFERRED_VERSION_zephyr-kernel ??= "1.6.0"
 
 SRCREV = "d4e799d77a36eaf6d678b357c207411ec32b2d62"
-SRC_URI = "git://gerrit.zephyrproject.org/r/zephyr.git;protocol=https;branch=v1.6.0-branch \
+SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v1.6-branch \
           file://Makefile.toolchain.yocto "
 PV = "1.6.0"
 
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.6.bb b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.6.bb
index df373e850c94..b47e8ac1b7d0 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.6.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src_1.6.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=fa818a259cbed7ce8bc2a22d35a464fc"
 
 # tag v1.6.0
 SRCREV="d4e799d77a36eaf6d678b357c207411ec32b2d62"
-SRC_URI = "git://gerrit.zephyrproject.org/r/zephyr.git;protocol=https;branch=v1.6.0-branch"
+SRC_URI = "git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=v1.6-branch"
 SRC_URI += "file://Makefile.toolchain.yocto"
 
 PV = "1.6.0"
-- 
2.20.1

