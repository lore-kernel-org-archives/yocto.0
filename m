Return-Path: <nodeax@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4226FC433F5
	for <webhook@archiver.kernel.org>; Mon, 14 Feb 2022 19:11:32 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
 [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web10.38798.1644865890902360403
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 11:11:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=h+4fTuUX;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: nodeax@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id c14so15602613qvl.12
        for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 11:11:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5gzx8tnLIzUddRQ66gEJxOj8LPTTPuuGNL2I81mHqw8=;
        b=h+4fTuUXWBEZdKMgvTVi9Jl1SmiBdTiT+mI2zX3bT416Tg2tE5EM23kpBbZWy92kzi
         FhLmWj9ezeNNjoRr5POcidxuTTym2YoGXmBo3IA0prxXwAKR9aXWNsoPh+dIBizr9C8h
         qSUcixxiCK6KUzK7BmqhYwNYrhXTkwA9vr+vh8lx44CAv5KyDTT6KJUwfl5/glCcyffl
         1tgvkhjgVgfThk240ElvkVmH1PnTt0C6xghnOi3Rq6mDHEj+U7QYgyi2SGtF+47LAvTn
         B5WLfPzrYa5Rasv80tHBXBryywwZ+FeMDkEmgY4fSSoHkXS7a77wbHDvepbQEhw/W6LR
         /QLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5gzx8tnLIzUddRQ66gEJxOj8LPTTPuuGNL2I81mHqw8=;
        b=qPW2A9X3S2RcUCfwVCawsuKZtPUgVXj0CT1UQwUiYdC6V8Dr/zyDvz8WL/wWdzxAP5
         qHjMuuNOz3XHev6Fk4YP8ToObpikDh8xoFbAgIVGmJVpyJaIR7Jn3ZFIFAfnrENXO9PO
         7et9u/GsCPPzGLuqtIvwlxpoNnoAJ/8ORRDB6sLO5lqrlxToVOYBUW8wfv6Coc7/xn0F
         fC8NiCnw05/gdU+CJ+T0B7Gb8gNVI53Wl+sH6DJ2Wyz/apQAQAgJMGvFW/CAFhrJ8WT5
         QQBKRxBL0HR7/4ttbfDlTnZi5I8qQUtCtrtyCrop6VPUTvNrUdYUSQv0FOU2zdx38KD8
         fATA==
X-Gm-Message-State: AOAM532u1chOdKJYf9jWK2mZb7LjqpZnKWacZbn0OJC93YBFU1qajKE4
	7LPsrqnMV1PPwUQ9Ugi0QXSyz7tJTkVX4g==
X-Google-Smtp-Source: 
 ABdhPJyT0HsC5xByPq4iHA6sk2dRJOHlrCqEX7+rrPIk9U1zb3u4V3mUZv/qPuSWhsOhbcRrDudt7w==
X-Received: by 2002:a05:6214:cab:: with SMTP id
 s11mr100532qvs.86.1644865889627;
        Mon, 14 Feb 2022 11:11:29 -0800 (PST)
Received: from ax.fios-router.home
 (pool-74-111-105-118.pitbpa.fios.verizon.net. [74.111.105.118])
        by smtp.gmail.com with ESMTPSA id
 j11sm18523754qtj.74.2022.02.14.11.11.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 11:11:29 -0800 (PST)
From: Akshay Bhat <nodeax@gmail.com>
X-Google-Original-From: Akshay Bhat <akshay.bhat@timesys.com>
To: yocto@lists.yoctoproject.org,
	akuster808@gmail.com
Cc: Akshay Bhat <akshay.bhat@timesys.com>
Subject: [meta-security-compliance][PATCH] scap-security-guide: Fix
 openembedded platform tests
Date: Mon, 14 Feb 2022 14:08:38 -0500
Message-Id: <20220214190838.2170306-1-akshay.bhat@timesys.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Feb 2022 19:11:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56189

Update the installed_OS_is_openembedded check to drop the quotes
in the VERSION_ID string to match f451c68667cca of openembedded-core.
Without this fix, all tests are reported as "notapplicable".

Signed-off-by: Akshay Bhat <akshay.bhat@timesys.com>
---
 ...is_openembedded-Update-pattern-match.patch | 30 +++++++++++++++++++
 .../scap-security-guide_git.bb                |  1 +
 2 files changed, 31 insertions(+)
 create mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-installed_OS_is_openembedded-Update-pattern-match.patch

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-installed_OS_is_openembedded-Update-pattern-match.patch b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-installed_OS_is_openembedded-Update-pattern-match.patch
new file mode 100644
index 0000000..61d9206
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/files/0001-installed_OS_is_openembedded-Update-pattern-match.patch
@@ -0,0 +1,30 @@
+From d943e41d64da6af89a6b8224110299ad88747497 Mon Sep 17 00:00:00 2001
+From: Akshay Bhat <akshay.bhat@timesys.com>
+Date: Mon, 14 Feb 2022 13:00:31 -0500
+Subject: [PATCH] installed_OS_is_openembedded: Update pattern match
+
+The VERSION_ID string is no longer quoted with f451c68667cca of
+openembedded-core. Update the pattern match check in
+installed_OS_is_openembedded to match the same.
+
+Signed-off-by: Akshay Bhat <akshay.bhat@timesys.com>
+---
+ shared/checks/oval/installed_OS_is_openembedded.xml | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/shared/checks/oval/installed_OS_is_openembedded.xml b/shared/checks/oval/installed_OS_is_openembedded.xml
+index 01df16b43..eaf9f2b10 100644
+--- a/shared/checks/oval/installed_OS_is_openembedded.xml
++++ b/shared/checks/oval/installed_OS_is_openembedded.xml
+@@ -23,7 +23,7 @@
+   </ind:textfilecontent54_test>
+   <ind:textfilecontent54_object id="obj_openembedded" version="1" comment="Check OpenEmbedded version">
+     <ind:filepath>/etc/os-release</ind:filepath>
+-    <ind:pattern operation="pattern match">^VERSION_ID=\"nodistro\.[0-9].$</ind:pattern>
++    <ind:pattern operation="pattern match">^VERSION_ID=nodistro\.[0-9]$</ind:pattern>
+     <ind:instance datatype="int">1</ind:instance>
+   </ind:textfilecontent54_object>
+ 
+-- 
+2.25.1
+
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
index ddde5cc..f493ea8 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_git.bb
@@ -9,6 +9,7 @@ SRC_URI = "git://github.com/akuster/scap-security-guide.git;branch=oe-0.1.44;;pr
            file://0003-fix-remaining-getchildren-and-getiterator-functions.patch \
            file://0001-Fix-platform-spec-file-check-tests-in-installed-OS-d.patch \
            file://0002-Fix-missing-openembedded-from-ssg-constants.py.patch \
+           file://0001-installed_OS_is_openembedded-Update-pattern-match.patch \
           "
 PV = "0.1.44+git${SRCPV}"
 
-- 
2.25.1


