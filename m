Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web12.7454.1584498617089751717
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 19:30:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HPAiRBpf;
 spf=pass (domain: gmail.com, ip: 209.85.215.178, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f178.google.com with SMTP id m5so12822744pgg.0
        for <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2020 19:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=yiVhQkVjTlvZMVwnLqxj51+waJgkzelq8pkCVUnWmBM=;
        b=HPAiRBpff9fCRI9Nwme8125A0Xp6fZBPD24SEpeThi+rv5DwKQAp0GTfXSR3bBEs9w
         4JQZ+nsezMcfuoDYmCDITLWv2fs54Z0bvQZ0TclXaQVUUt7NN7RjkHJoKhMA254q7cBR
         A0HCiGjd8afhGIi289C7WYss6Y9x6UnX3CrRkmdyKXGBWLoalgqDtRRjEAufA+CQhyN3
         IXZtnAo4j3Tun6T8XNF4lyoklE4M9VFZ+eloA3VFcOtX1oCMTNUkCan6XmYSowFaLEXZ
         GD6CxV9vX5/V4ANn2GMyzVyXMdmb8r5/u/FJ1PbSiLdrJghOsE/MplO9LPVHPFv4wAyk
         kPYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=yiVhQkVjTlvZMVwnLqxj51+waJgkzelq8pkCVUnWmBM=;
        b=bB+guTZZTZ6Rj2NK2rM/nStEXnWLljfWnNSAD3DTN2ITD2VPmsbQMM2bLXextQwM9Z
         /mWR8TtQ+fOFWDmyv43AHcxiFW2F81LGFQAYNTajOwcKZCRgXNrq3l37iH0N5IF02UZj
         MvWL96hsjn5YhWLRHRfPilXab+JehnjZiNCyiW0X+QfTa3Iu5BtOshWaOTVI4OwuR2CQ
         uEPQ8UILxcQdNRscT9HlWlFZV9H3q7c3nv7+gbSLAPPOE20eHWUNhcj4Rqx1ekiB8U6e
         TI8dqX9jxfUUiaNbxaTAxazHaVsb45t6SlxyavYhLeWsNWd2YlwfSeXMZjUymWQbgfYf
         CR0A==
X-Gm-Message-State: ANhLgQ3Tr9iPFZiVuNJER4bfPgko81kM6uxkU32uTp0Vp4Mca116GNtR
	zFnzZW75ZMnoLeNZH1s9TocDrhxs
X-Google-Smtp-Source: ADFU+vvaUmav2VZeoRBtXsyNKXuYwdm9tUq8G0ObIjGwiGBLnyPIPSXbgka0He19LNE3+ES9RRr8gQ==
X-Received: by 2002:aa7:8dcc:: with SMTP id j12mr1904443pfr.57.1584498616100;
        Tue, 17 Mar 2020 19:30:16 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id z3sm4340083pfz.155.2020.03.17.19.30.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 19:30:15 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/7] lynis: add missing rdepends
Date: Wed, 18 Mar 2020 02:30:08 +0000
Message-Id: <20200318023014.31723-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

add findutils

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-security-compliance/recipes-auditors/lynis/lynis_2.7.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-security-compliance/recipes-auditors/lynis/lynis_2.7.5.bb b/meta-security-compliance/recipes-auditors/lynis/lynis_2.7.5.bb
index 21e4517..245761c 100644
--- a/meta-security-compliance/recipes-auditors/lynis/lynis_2.7.5.bb
+++ b/meta-security-compliance/recipes-auditors/lynis/lynis_2.7.5.bb
@@ -38,4 +38,4 @@ do_install () {
 FILES_${PN} += "${sysconfdir}/developer.prf ${sysconfdir}/default.prf"
 FILES_${PN}-doc += "lynis.8 FAQ README CHANGELOG.md CONTRIBUTIONS.md CONTRIBUTORS.md" 
 
-RDEPENDS_${PN} += "procps"
+RDEPENDS_${PN} += "procps findutils"
-- 
2.17.1

