Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web12.14548.1615317906343963968
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 11:25:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=u9jH4Sgs;
 spf=pass (domain: gmail.com, ip: 209.85.222.172, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id f124so14259099qkj.5
        for <yocto@lists.yoctoproject.org>; Tue, 09 Mar 2021 11:25:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VM+WHGV2lrDlg+Cn3PUsCGO28frYP7AUEgCPaErETtk=;
        b=u9jH4SgsXdM2r/Gf+fz1vkNmimY+E2UlIPd8qKBxT+koC3GqsxsZG9NK0yhn3almqf
         b3i0JWX5kZApLvP2ZJAseb2qkFRBNLh//V3FlY/fw+r2j9MR3/sWrMNUj23i10r4Zr+I
         6etaMXJStMrWMk+TWQW8YaWFJ2YbRPRHIlUtvB8G3CMM1WZWN2cx/rd1ovmNlPNzIVYl
         6/1LMcOIBvF2Khohpfn1ei/xzd/1nd3el4EExjiSOyR36A7Q3+I6FvtxEkZoRAyIXKEY
         AearFLj8hcPlaV8ErE8PwXeimtSf0iirWtP7tGIqaL4/QvT4+gTKd8aZAGJnwlpPKovT
         O5Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VM+WHGV2lrDlg+Cn3PUsCGO28frYP7AUEgCPaErETtk=;
        b=aZeyFjZoHxhwbPfoWUxYgGJBFATE3ZeEZRa66Gf3jPAlcaruCunOPAtz2oOEEtD35+
         NBEcCuIEPhFVv0Dc0p+1yp9wfmL1ICuOERpcICvfB51qbGBZ5mNznvKpNDoyEZ2GwiQZ
         7w2QUU8bc4Elc915HaDtAPIx45NRGGGvq7z77ARi+5SsMQk/+3sKeF9jqZF14JoEGzc1
         r6f7PJs+b9Sn98CcMLkiNgCvlxhLMM7fRJVFGFb5M1/wLhR0g54Sn4NeaZgbz3OnDYKa
         ZZgmkNVuv3MhyRbnB0kBinU2cPpWXx5pK9ye4hCFoWPL/DTCgkrhYY5yuAKBLaZcSpcj
         qfMQ==
X-Gm-Message-State: AOAM531n3mOlBn5fBvCRbI+f4mU+SYta9/NfhoRAq2vzaY3zTxn0fLWW
	lHgnyF3GksNWMJdfIqp7iew=
X-Google-Smtp-Source: ABdhPJzwuyTQwm4ZFW/8/7qq88mEjodDjvKpAT9VoGM5NPvCw1DiLgFR7N3y8JVdq/z+Wim/VHoLEQ==
X-Received: by 2002:a05:620a:2455:: with SMTP id h21mr6683614qkn.447.1615317905413;
        Tue, 09 Mar 2021 11:25:05 -0800 (PST)
Return-Path: <bruce.ashfield@gmail.com>
Received: from build.lan (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.159.151])
        by smtp.gmail.com with ESMTPSA id 6sm1281462qth.82.2021.03.09.11.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 11:25:05 -0800 (PST)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH] yocto-bsp: update reference platforms to latest 5.10
Date: Tue,  9 Mar 2021 14:25:03 -0500
Message-Id: <20210309192503.54107-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Bumping our reference boards to match the latest in OE-core.  Not only
do we get the latest, we fix a configuration warning with genericx86.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_5.10.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 87e47352a6..aa2c3dd1c1 100644
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
+SRCREV_machine_edgerouter ?= "9c8757a2d62bd748f52a4973bd421d4dd8ebe216"
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

