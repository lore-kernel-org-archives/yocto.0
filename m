Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
 by mx.groups.io with SMTP id smtpd.web11.9614.1579794759508424407
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 07:52:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=f9y9X7xE;
 spf=pass (domain: gmail.com, ip: 209.85.166.41, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f41.google.com with SMTP id t26so3372386ioi.13
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 07:52:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7TTR3DNPYumyf/JW//566fR7a6ss+xI9DRjGLG+w1Co=;
        b=f9y9X7xEZ1Qly1/mhJ4B7k7PVaxYFp2cOC5hshJRQiyqztgj1dsdk7FVFLGXwYwta4
         7B4VG+pyx3MIQQBwWxBg2b+L8hcYlSrjNimDVUbapVQlPYAfEcRs4RQFcG2krUYN+SWI
         wjw6dnk+tns9c6Kc2n/JVumV4EaXJzksubLAzhaTHdwOrQQjGdSui5HtwrnCOaz15olL
         zSAbhHnF+xMs89iM1ajo/++cLD8dc/otDKbttD1CRvxLMQVHBkwscItKDo2LWIbHCrqo
         jm+2RZgzu43TGV5Z5t+9W4yeKX/JhIktNPpotXvQ8l89dhxI94DU91TY4Xy0URvfntKk
         zGWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7TTR3DNPYumyf/JW//566fR7a6ss+xI9DRjGLG+w1Co=;
        b=BWKvESxZn52j7dN56ukwXqBQ1G1t5E40ih/fBML0MWZ6Z+zT1VXQFC5l70YDAnM462
         CqkG404ugUH+EEb3d8WUBts/bsI/pf40t6aYDJePOjok3TzJ/VBhqJ+woJ/ilO6icX5A
         xp6jyR1AxEJrlBZz05984T3XiMhTF1zOjEQ2dD17+X1P6Wb2FUX+lYHgZT+dcuVCToms
         7n9OIhbN5hxL9AMiQp7nwiGgcmgeUFhdI5qeQNQNZ/6t+kY/kosUZwBN/Zm7+fPcA6+K
         g15/8A5Ra+PLFoprwPMGcNscsNwixboa5pcxOFF71bjYsyWaRl2QXoZDagUoMbjNsiur
         buAw==
X-Gm-Message-State: APjAAAVH/N4AK3qmfVcOGPRm94HZGmwjz9OvAmHf2UVh7UdwTY+YODEL
	ZGOpSSWwxidIo8xtj4RBTP2nz7ifM5E=
X-Google-Smtp-Source: APXvYqws+XeUSubek1aJdS9IX9MF5vHDlQvn3NYD3ZRdd6NgO3JYEHPCCTdxiXgB35lmsDLQxdNyOA==
X-Received: by 2002:a6b:6f01:: with SMTP id k1mr11751811ioc.28.1579794758674;
        Thu, 23 Jan 2020 07:52:38 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id 68sm730878ilc.85.2020.01.23.07.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 07:52:38 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH] rk3288: Add wic.bmap images
Date: Thu, 23 Jan 2020 09:52:34 -0600
Message-Id: <20200123155234.778235-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds the wic bitmap images to IMAGE_FSTYPES. bmaptool can use these
files to efficiently copy sparse images to media

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 conf/machine/firefly-rk3288.conf | 2 +-
 conf/machine/tinker-rk3288.conf  | 2 +-
 conf/machine/vyasa-rk3288.conf   | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/conf/machine/firefly-rk3288.conf b/conf/machine/firefly-rk3288.conf
index 71e0bc3..0a9eab6 100644
--- a/conf/machine/firefly-rk3288.conf
+++ b/conf/machine/firefly-rk3288.conf
@@ -12,7 +12,7 @@ KERNEL_DEVICETREE = "rk3288-firefly.dtb"
 UBOOT_MACHINE = "firefly-rk3288_defconfig"
 
 WKS_FILE = "firefly-rk3288.wks"
-IMAGE_FSTYPES += "wic"
+IMAGE_FSTYPES += "wic wic.bmap"
 
 WKS_FILE_DEPENDS ?= " \
     mtools-native \
diff --git a/conf/machine/tinker-rk3288.conf b/conf/machine/tinker-rk3288.conf
index e460d43..aeee472 100644
--- a/conf/machine/tinker-rk3288.conf
+++ b/conf/machine/tinker-rk3288.conf
@@ -11,7 +11,7 @@ KERNEL_DEVICETREE = "rk3288-tinker.dtb"
 UBOOT_MACHINE = "tinker-rk3288_defconfig"
 
 WKS_FILE = "tinker-rk3288.wks"
-IMAGE_FSTYPES += "wic"
+IMAGE_FSTYPES += "wic wic.bmap"
 
 WKS_FILE_DEPENDS ?= " \
     mtools-native \
diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
index 03a436a..d8a6af6 100644
--- a/conf/machine/vyasa-rk3288.conf
+++ b/conf/machine/vyasa-rk3288.conf
@@ -14,7 +14,7 @@ KERNEL_EXTRA_ARGS += "LOADADDR=0x02000000"
 UBOOT_MACHINE = "vyasa-rk3288_defconfig"
 
 WKS_FILE = "vyasa-rk3288.wks"
-IMAGE_FSTYPES += "wic"
+IMAGE_FSTYPES += "wic wic.bmap"
 
 WKS_FILE_DEPENDS ?= " \
     mtools-native \
-- 
2.24.1

