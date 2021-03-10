Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web10.2637.1615339533473511846
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 17:25:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LIk1ZtJD;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id h26so7495629qtm.5
        for <yocto@lists.yoctoproject.org>; Tue, 09 Mar 2021 17:25:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lqCCzzfRu6g/HDIlIqKDtth1v/eoc2UvT4V2I/g7jjI=;
        b=LIk1ZtJDgQgAJuCJAQl3iV2ZIoloeegGC+B3nm7OzcSvBaVcj5Z9Y0O9ypw+5RWO9i
         wW//W8gsOAhFba0TTI9GzjrUPBsSfi7T3wYHfRu0xLiSJs9Qxzf+higvmmExXQ4DPF8B
         N1lmuHsubPE3/uMuTIKrnRPXOsCN2vH7EtGAN2xlF/2B6/uS/8mFFcP8GvNaz6OhkY6E
         WyFSd065yinnE8KkIR23uPVw5LlU09SUdkiNYB5wFHrbzmSQXq90r17VQbqv+Hi6ud1d
         +3qo/PU/g9VM6y8qzFBkp5WevU37mR5O0jfm1ftOu6NxYpopzsc+MjmFL6e7BKlnTdOS
         mBYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lqCCzzfRu6g/HDIlIqKDtth1v/eoc2UvT4V2I/g7jjI=;
        b=MqVhHTQFlNLuc0hhhzg73UzLa0yhjez9vn7MzZXpg9nibrqXi5hiRmX3M3uKUql8vP
         XBp+sbvIAWiQJNjMK5Pg0JMRsm5xDdiNmAOWO2fG00MMWhAAt1M3ADu4NzmbJ7vGLW/R
         t+3tkpF3/THmWF24qrIM/PSkHZ6aBCIaAoaUHAy+a2IDH8V4Q1Hxh1ahvX7RsR7IVqcH
         bMwBdGwVj6wTtStCJoZKiC8PfLOxe49PXb2r4JGod7JqmZxy9vB3xT6Njigb8KJ89w9d
         iHIHirCPRO/jxpa59wivFT0fqVYwxINYF8QvdJLQf4AJzfInvDB/hr1lMPxc4/vVSryT
         bXNQ==
X-Gm-Message-State: AOAM533HT49ThYJ1EO+seH8s9sQK+2S4ztB9YB+1n/K0G0oh+ZSRqvM5
	jtPP8W0zOm7L5mLPNBgTitc=
X-Google-Smtp-Source: ABdhPJz1NANMi++NZVvKZ6v/ItiRH1g8b5sIdsSxQ5e8CYfT/VfADzGwt65AmUlgm6u+8aVcLpk5IA==
X-Received: by 2002:a05:622a:306:: with SMTP id q6mr786742qtw.15.1615339532353;
        Tue, 09 Mar 2021 17:25:32 -0800 (PST)
Return-Path: <bruce.ashfield@gmail.com>
Received: from build.lan (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.159.151])
        by smtp.gmail.com with ESMTPSA id m3sm2054787qkk.15.2021.03.09.17.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 17:25:31 -0800 (PST)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH v2] yocto-bsp: update reference platforms to latest 5.10
Date: Tue,  9 Mar 2021 20:25:29 -0500
Message-Id: <20210310012529.14728-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Bumping our reference boards to match the latest in OE-core.  Not only
do we get the latest, we fix a configuration warning with genericx86.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---

The edgerouter had a compilation issue due to a dropped #ifdef
during merge.

This fixes up the build.

Bruce

 .../linux/linux-yocto_5.10.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 87e47352a6..bc2b3bf576 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,17 +7,17 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "cdca78778415b4b3bd64e8390ee8adf04bf7e17a"
-SRCREV_machine_genericx86-64 ?= "cdca78778415b4b3bd64e8390ee8adf04bf7e17a"
-SRCREV_machine_edgerouter ?= "2e1fb8f84f09ca768eb531f33a126a40bb90e791"
-SRCREV_machine_beaglebone-yocto ?= "cdca78778415b4b3bd64e8390ee8adf04bf7e17a"
+SRCREV_machine_genericx86 ?= "8c516ced69f41563404ada0bea315a55bcf1df6f"
+SRCREV_machine_genericx86-64 ?= "8c516ced69f41563404ada0bea315a55bcf1df6f"
+SRCREV_machine_edgerouter ?= "965ab3ab746ae8a1158617b6302d9c218ffbbb66"
+SRCREV_machine_beaglebone-yocto ?= "8c516ced69f41563404ada0bea315a55bcf1df6f"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.10.12"
-LINUX_VERSION_genericx86-64 = "5.10.12"
-LINUX_VERSION_edgerouter = "5.10.12"
-LINUX_VERSION_beaglebone-yocto = "5.10.12"
+LINUX_VERSION_genericx86 = "5.10.21"
+LINUX_VERSION_genericx86-64 = "5.10.21"
+LINUX_VERSION_edgerouter = "5.10.21"
+LINUX_VERSION_beaglebone-yocto = "5.10.21"
-- 
2.19.1

