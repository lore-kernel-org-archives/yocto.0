Received: from mail-il1-f194.google.com (mail-il1-f194.google.com [209.85.166.194])
 by mx.groups.io with SMTP id smtpd.web10.305.1580332984118301917
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 13:23:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gyzAt/vA;
 spf=pass (domain: gmail.com, ip: 209.85.166.194, mailfrom: jpewhacker@gmail.com)
Received: by mail-il1-f194.google.com with SMTP id l4so1221548ilj.1
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jan 2020 13:23:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f5FjyUb56ayYUTWeTjYOdfnvYmbv+HeN+VmcRp+XSGQ=;
        b=gyzAt/vAai7LeNDEVLs+jfcq6l4CyuZL6/YDLAsfHRSACCzwVIv4WYxdxaTYznnVAY
         7apNtREOva+Tm7o7htPNZgxvxh1nu5K0HsuvSTvOGyRRGwb1MnTfHM67H8d/YPk0PvR0
         H+U5Ky7A/eG1wLRnTaORjx+/kEVv3V6RvM93waC9UmvawU0YnVhTO47T3ngE8VSo+XIx
         8HJS88BdXbXBscxZxt2cL1djPI0+aZVz+qlJqSfT0y5Je8unxBGB82kB8tF4BDF32AP7
         dZwjotOoaqwqCEoxeSpfONUrF76ZYDN63o2pEWC2APk0cC66pr19wxNiVoy6Goh6rIHE
         M/JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f5FjyUb56ayYUTWeTjYOdfnvYmbv+HeN+VmcRp+XSGQ=;
        b=AN1G8BGNy9cHbCodYONNTyzXgVSkvpe9NEqmJxuIF+z0nyM8JgQXAajqGtskl1bnK4
         ZnuK94FMRQ5xmHwnzrb2+5jA5MTJTuPDHqQJVwrxZ5GJhnnExSFxL30y+VlOwaTg7MV9
         qqUX6j3Nh4HBSjvfA2Cb+P8icZQWR9XI2FinMSnOsaT+00AWmMq99zy/GjCyCJKs2la0
         5rq/XBtIPKSux3+AhlwqjBNGLFzt95bK80xD32bCkqts7m/doNYOzBJ2X9f6poozwZbS
         BCL42r6zFjs4OVOLOD2jLe5bwQTCd0NaP5tgKVH1Rd94+aA1a144uCwmHWoSXBJokTnY
         skBA==
X-Gm-Message-State: APjAAAW53fbJhK1b8stCSL8BarVBOkH2hynthBggLNhJPqgiUc27Aah9
	7Hpg2Qg5Vsc+g2GWIkU0wORRRmGTeSw=
X-Google-Smtp-Source: APXvYqxzmO5vlxyEyi6QE5sEw+OcBphPgQOLm8YJupdGUlUpBCTOdN82tKRhHhwz4sLyAxAW929h2A==
X-Received: by 2002:a92:8656:: with SMTP id g83mr1300224ild.9.1580332983327;
        Wed, 29 Jan 2020 13:23:03 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id c19sm836138iob.70.2020.01.29.13.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2020 13:23:02 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-gplv2][PATCH] shared-mime-info: Add inherit mime
Date: Wed, 29 Jan 2020 15:22:57 -0600
Message-Id: <20200129212257.769039-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Inherits mime.bbclass to fixe the QA issue: "do_package_qa: QA Issue:
package contains mime types but does not inherit mime"

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 recipes-support/shared-mime-info/shared-mime-info.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-support/shared-mime-info/shared-mime-info.inc b/recipes-support/shared-mime-info/shared-mime-info.inc
index 3fe1a44..2614d3a 100644
--- a/recipes-support/shared-mime-info/shared-mime-info.inc
+++ b/recipes-support/shared-mime-info/shared-mime-info.inc
@@ -9,7 +9,7 @@ DEPENDS = "libxml2 intltool-native glib-2.0 shared-mime-info-native"
 
 SRC_URI = "http://freedesktop.org/~hadess/shared-mime-info-${PV}.tar.xz"
 
-inherit autotools pkgconfig gettext
+inherit autotools pkgconfig gettext mime
 
 EXTRA_OECONF = "--disable-update-mimedb"
 
-- 
2.24.1

