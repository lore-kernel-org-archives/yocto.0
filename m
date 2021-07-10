Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web08.23666.1625919270485824373
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Jul 2021 05:14:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JfOqwVGw;
 spf=pass (domain: gmail.com, ip: 209.85.210.181, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f181.google.com with SMTP id 17so11392569pfz.4
        for <yocto@lists.yoctoproject.org>; Sat, 10 Jul 2021 05:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dsdpjBd3UnkW9qu/HaMAbkltGkzKuomSlq/ET7HAnwI=;
        b=JfOqwVGwmIcqDvtIReFJ158i0CjuEYDdp+m/phd0kgfKvHiPj23F1EeDgMEz/1mlN8
         X5ObDyekCUtjkBKeIVlelQN43dgMDvLzGeX+lOJMpnbo25txeO+miUi3nEtBNeO2k475
         61rKO71b7uTfohvOBE+XtFj0V81JXhSwUITgy7J/JCu79fTwWgyYOzWGb1C1RLWm7hwI
         NJTxGN4Sp7CygD8Gt5EwJQIvQcYTOz6ux5RirRSsjmuF/zbDdhSqPVpcDYl5ZSk8yfxZ
         xoN5nyXb/Lnh2V2rAp04P7LaVYtjFvyQZ49KJaYR+3TBqdBMxkqB0rkbs0ysRgd/f8Eg
         iU3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dsdpjBd3UnkW9qu/HaMAbkltGkzKuomSlq/ET7HAnwI=;
        b=bXo6MaxirUz/urlBLWGpf1+fttrL6xsH9v7TcVR6vvm0mjcJSNpDQrF1TuC/ydUunv
         WL4nQQrNQmw+wtbGSnWrHvHDtyQnjqJ9JYq2RAwkNs4JMty+UEs0I1MewmcYOPtk9sZA
         ly2PO4qdL1lxnsE0CHHtOEv0vtYVEEysXHBE5l36L2Srk5OxVYOSF+2dqoD/9mN1KlZY
         D/G37fJEq1gVCrnZ1GkondAPvvH7acW0Y5or+14gWlzhtaf9ds/Ht/jggqYCnS61H1e5
         cpEeYa3A5nhqHDAp7Jnph3N/ONlugAjDX6KEtG6IpHl34+QJ/ZOIJ8P+o2/gffWkUmL8
         EOmA==
X-Gm-Message-State: AOAM531Q8Q2lw080YjD5/p8xqXOC2bOYwx8RerYP+2bT6ic3xqgcq4iP
	/6GAhpnw8rxs+EVS3htgFIxTHbJ2bBd/cA==
X-Google-Smtp-Source: ABdhPJwWW9wgM5igjV61QjS1STeOKu14vCBUPW1usXsT2k1byO1rp1u4f93qPgfnT4LDvVxDvB9OQA==
X-Received: by 2002:a63:4b23:: with SMTP id y35mr43541215pga.179.1625919269881;
        Sat, 10 Jul 2021 05:14:29 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-X13-Gen-1.hsd1.ca.comcast.net ([2601:202:4180:a5c0:bb2:312:eca2:b50d])
        by smtp.gmail.com with ESMTPSA id q3sm10076621pfb.184.2021.07.10.05.14.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jul 2021 05:14:29 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Ben <koncept1@gmail.com>
Subject: [meta-security][PATCH] tpm-tools: fix build issue
Date: Sat, 10 Jul 2021 05:14:27 -0700
Message-Id: <20210710121427.908257-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This error occurs randomly.
/bin/bash: pod2man: command not found

[Yocto #14304]

minor space/tab cleanup

Signed-off-by: Armin Kuster <akuster808@gmail.com>
Cc: Ben <koncept1@gmail.com>
---
 meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.2.bb | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.2.bb b/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.2.bb
index 8aeb8ac..9e0a686 100644
--- a/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.2.bb
+++ b/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.2.bb
@@ -9,16 +9,16 @@ SECTION = "tpm"
 LICENSE = "CPL-1.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=059e8cd6165cb4c31e351f2b69388fd9"
 
-DEPENDS = "libtspi openssl"
+DEPENDS = "libtspi openssl perl"
 DEPENDS_class-native = "trousers-native"
 
 SRCREV = "bf43837575c5f7d31865562dce7778eae970052e"
 SRC_URI = " \
-	git://git.code.sf.net/p/trousers/tpm-tools \
-	file://tpm-tools-extendpcr.patch \
-	file://04-fix-FTBFS-clang.patch \
-        file://openssl1.1_fix.patch \
-	"
+    git://git.code.sf.net/p/trousers/tpm-tools \
+    file://tpm-tools-extendpcr.patch \
+    file://04-fix-FTBFS-clang.patch \
+    file://openssl1.1_fix.patch \
+    "
 
 inherit autotools-brokensep gettext
 
-- 
2.25.1

