Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE5CCCA47A
	for <webhook@archiver.kernel.org>; Thu,  2 Jun 2022 15:45:53 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web12.683.1654184747617583651
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jun 2022 08:45:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jX7JjH22;
 spf=pass (domain: gmail.com, ip: 209.85.216.48,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id
 n13-20020a17090a394d00b001e30a60f82dso9752219pjf.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jun 2022 08:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LpWb7I5Yzp6U6yuf6SvYMLlvqlShr2QgUVUa2bLa100=;
        b=jX7JjH22SKWthNK7fdlkCO0bVbooIinlGA1lPryFLo6705BfH8Bjr2kxuJopK7EYf+
         bFV+6dPw3+JLX7RBdRdTq4+KHy1p5GOH4SpQvYnrgLXHYlAfcY8FSsfhXd4daUWvHwIT
         0YjVjfsstL3uTEvxxkuGg7QO0HZxeTvhYA8WA2S2MkPz8fzEShTgDDEw/skXGnlUdCdM
         5ue3AUt1NON7w3D4vYVxwydb7zEtv8VJYCDZmzcQwNITGskm61yjzCC3fDg7rdmtn0yn
         CmlAMPP8X/D7R3zz6OyFEznMVdbIT2MMFYPFPJxwhEozNIKSYuWpdtRwVsc0c6HviVVg
         JHXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LpWb7I5Yzp6U6yuf6SvYMLlvqlShr2QgUVUa2bLa100=;
        b=2MiQ/N0931WkdTpFf2eAHQUR+OSBLxLyIB2GIhdZ2pfPtSkLXiJR6oZwBxUFP8c2af
         s50JG4GLnjzFNRCt5LLA1bX4O3WZRAvicsWoBt48KBlUaIGrIzcF0tuyQo3uZyjPFdZe
         lxObNqJQvuJYKiuDrXWfCE7vFddn8ATAx+1qBi3aNGOpgWYSiGUaF2eDx8ztRd/sB1g7
         xSgDZSO8sc5RRRsF+v/VUy6eNsq2Go7867C1R2XJdRRyArU+2B8ctlgVK5efI3CrkY6u
         aD/AGonHmYB1o0GPlHaVKFfte2jUMEr9G354pa5yTdzNz1IyueboVsZqMnlL2i17pOai
         y3oQ==
X-Gm-Message-State: AOAM533Z+Z90KGCk7GIqLiMQnmnvNSByzYL993lW4f4bxU3l0d08nFjq
	Ynh5zf4kLFxRuR2YaLONFIHDSSqypNo=
X-Google-Smtp-Source: 
 ABdhPJzVgiZoYxJN4mjTSHCa5SXtcvLMVDu5OsJml/0Mauze/A8oa1efwGnfWup5I6dd80T1jOgCyQ==
X-Received: by 2002:a17:903:240b:b0:14b:1100:aebc with SMTP id
 e11-20020a170903240b00b0014b1100aebcmr5640182plo.133.1654184746522;
        Thu, 02 Jun 2022 08:45:46 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:e8e8:b71d:2c05:ffc8])
        by smtp.gmail.com with ESMTPSA id
 jh22-20020a170903329600b0015e8d4eb25bsm3705154plb.165.2022.06.02.08.45.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 08:45:45 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] checksec: update 2.6.0
Date: Thu,  2 Jun 2022 08:45:42 -0700
Message-Id: <20220602154544.245869-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Jun 2022 15:45:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57248

LIC_FILES_CHKSUM changed do to yr update

add native support

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../checksec/{checksec_2.4.0.bb => checksec_2.6.0.bb}     | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)
 rename recipes-scanners/checksec/{checksec_2.4.0.bb => checksec_2.6.0.bb} (64%)

diff --git a/recipes-scanners/checksec/checksec_2.4.0.bb b/recipes-scanners/checksec/checksec_2.6.0.bb
similarity index 64%
rename from recipes-scanners/checksec/checksec_2.4.0.bb
rename to recipes-scanners/checksec/checksec_2.6.0.bb
index 9a6e44a..f4a014e 100644
--- a/recipes-scanners/checksec/checksec_2.4.0.bb
+++ b/recipes-scanners/checksec/checksec_2.6.0.bb
@@ -4,10 +4,10 @@ SECTION = "security"
 LICENSE = "BSD-3-Clause"
 HOMEPAGE="https://github.com/slimm609/checksec.sh"
 
-LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=8d90285f711cf1f378e2c024457066d8"
+LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=879b2147c754bc040c29e9c3b84da836"
 
-SRCREV = "c3754e45e04f9104db93b2048afd094427102d48"
-SRC_URI = "git://github.com/slimm609/checksec.sh;branch=master;protocol=https"
+SRCREV = "2753ebb89fcdc96433ae8a4c4e5a49214a845be2"
+SRC_URI = "git://github.com/slimm609/checksec.sh;branch=main;protocol=https"
 
 S = "${WORKDIR}/git"
 
@@ -17,3 +17,5 @@ do_install() {
 }
 
 RDEPENDS:${PN} = "bash openssl-bin binutils"
+
+BBCLASSEXTEND = "native"
-- 
2.25.1


