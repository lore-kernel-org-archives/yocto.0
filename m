Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2C1AC433EF
	for <webhook@archiver.kernel.org>; Tue, 21 Jun 2022 04:19:41 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web12.39608.1655785177357825471
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jun 2022 21:19:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bHkAQuSF;
 spf=pass (domain: gmail.com, ip: 209.85.216.52,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id
 y13-20020a17090a154d00b001eaaa3b9b8dso12119022pja.2
        for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jun 2022 21:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=G03AD3ycO8DLmZ7bZmudZwyr8Uk+py192Om8DsMVPoc=;
        b=bHkAQuSFShOLj6n0Dj5rzwdTk4FTm69hZB8pOQ+xFfIZ0s8hzPR6d68aLSFfjC9OKR
         gDhVPur5drlpvmgTYz6OekUiz0OztgutxD6Qhp/PH3hQhNs/Me3E8RNYl9ymyttr0E5D
         o4H2HuhTMcjCY5cmFMat68NpeWPc94YW4whonHJrlZIChqELTKknZMW2meCOmkBWTKxA
         cY88LM3ggy61TyEVXWMnO7EPZvL3RYbV2noPvTOSGCFIS11mG11VfHisom3Vus1VHyKw
         SuZ6qS5L4E+S88SMmF3owLcCggNOB/ZLzfoSERwORSrrnUXr2JcKnZskUYYLzSEM9J/g
         7xcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=G03AD3ycO8DLmZ7bZmudZwyr8Uk+py192Om8DsMVPoc=;
        b=2zB/84nuDIxg4PCXNmG8hCwBNtL+uFp5v00JehM+gYI1Y/kNBHDyKgU/GgX4Tp8oyE
         7DG//86RH8vR0wmNQWr4Qu/G0ovHw8+QIlaWT7a2N2Ku7iqaYANJlWjZ3PDp+zwU/Ddt
         MN2U8n2L9XFe2OhaKpAFvi+oPKK4q3j5d7eO6Jrd0a2xioI74U5YH9zQ3Q4DMhhwr6Q7
         wHqY96AchA6kuUt3zgPuXYN+s3yThs1J+oXDO/trKKvP/ko+jiuMLqkmS5UQ0MUJpJyN
         vr/ZyyYY+bOC+c0x44lJYjJoYzZx/woJmQWdLQdooeJN+FuQAqOrTLz4FCBgM93Po7me
         b7Qw==
X-Gm-Message-State: AJIora88SFhzT6DAGKQpLCiJT2VedA/KbpfEHrPX22a8cRCBEgMAnHIq
	3W64n7Cch/gjLqOYjfw751zjDlVfa+M=
X-Google-Smtp-Source: 
 AGRyM1vzU+SOGf1JLpiJdSoxJw5TXtmW7Cs5WchInrqFrmJlUp1PfwEQcLc9AfbG6xadPQPXlXGtaA==
X-Received: by 2002:a17:90a:5315:b0:1ec:9f5e:1308 with SMTP id
 x21-20020a17090a531500b001ec9f5e1308mr11615949pjh.195.1655785176403;
        Mon, 20 Jun 2022 21:19:36 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 z14-20020aa7990e000000b00525184bad54sm4403421pff.126.2022.06.20.21.19.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 21:19:35 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] packagegroup-core-security: skip mips firejail
Date: Mon, 20 Jun 2022 21:17:34 -0700
Message-Id: <20220621041734.1070859-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Jun 2022 04:19:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57368

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 2 ++
 recipes-security/Firejail/firejail_0.9.70.bb            | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index ef65428..05951da 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -41,6 +41,8 @@ RDEPENDS:packagegroup-security-utils = "\
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils packctl", "",d)} \
     "
 
+RDEPENDS:packagegroup-security-utils:remove:mipsarch = "firejail"
+
 SUMMARY:packagegroup-security-scanners = "Security scanners"
 RDEPENDS:packagegroup-security-scanners = "\
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " arpwatch",d)} \
diff --git a/recipes-security/Firejail/firejail_0.9.70.bb b/recipes-security/Firejail/firejail_0.9.70.bb
index fc9066b..35f7b07 100644
--- a/recipes-security/Firejail/firejail_0.9.70.bb
+++ b/recipes-security/Firejail/firejail_0.9.70.bb
@@ -58,4 +58,6 @@ pkg_postinst_ontarget:${PN} () {
     ${libdir}/${BPN}/fseccomp memory-deny-write-execute ${libdir}/${BPN}/seccomp.mdwx
 }
 
+COMPATIBLE_MACHINE:mips64 = "(!.*mips64).*"
+
 RDEPENDS:${PN} = "bash"
-- 
2.25.1


