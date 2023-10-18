Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5826CDB483
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 22:28:55 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web10.14597.1697668125519386141
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 15:28:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=21xFJqlt;
 spf=pass (domain: smile.fr, ip: 209.85.128.45, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-407da05f05aso17421245e9.3
        for <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 15:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1697668123; x=1698272923; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=agvoASTU3WfNlkQclA233Wogl3P85JhpfBZIkdTcJu0=;
        b=21xFJqlt6cs0sIURC985nBXys7z9smCZP3saSSoZSzYNl17nWcymiI5UD+tnqkBTPC
         C/wa04JqaOF9LR9v4134OvwRiPSoe7cTAFPbgVHiM0MztjBNuM1tBKvfw4UXUBwcNC39
         EuV1tw78Ax+GVqgTrqjYk9LHUBAyNxf0pX9TldClyVtJkLSXmZYoNlY0XqFij3af6nBA
         N6/6hXb6vOYd5annBXpUcoy6vbb/L/+7k8g0osanAZ4ZcHZcFZ8KDkZTKUs0EuVru+1V
         ThWktPz5/JNcJOW01QkVMixOIiASYUigQ9MUbBNZepwh4pjDFm0buUAB3QT8uZhV0y1w
         mK4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697668123; x=1698272923;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=agvoASTU3WfNlkQclA233Wogl3P85JhpfBZIkdTcJu0=;
        b=fvQgmtaQ3EuEoENgzNfpvaEak/6FsiM8DI5tsvn5fa/hUhVyO/LZQQnqhDlkxLuABM
         5/F5dQowAoAMm5e9fpPVCvtgVa/D7/Fy8RkxBQmBory71bWf2iqXy7JUmg/uYXx6HbGI
         FqzPgY5iWuFs0eAk3a5oJeqxcJ67uv0CUKurdJUojiyiXPWP1mh3Ps681gHE88Ep7wLX
         r2Himw+SN5cddLFaRwQ1DHiC746UGJc/weIJSMe6kw/V6ohDITgKaYHvUjVwaXaPXFcf
         iuCoRyUUZHaa4V3oIxQfAPGqfVjnWC82SjdFRRJ/7EaNH4DH4Md/3iUgpcharMfeG6i8
         abmQ==
X-Gm-Message-State: AOJu0YxZTeQlvyxupw3Tqlfinpac/0JWZEYZkkZ6IR/rcE/W+Dcazax0
	jkMhEO6w8yPDWe6xXNGs9UstAV+E+bpj3xgxsdY=
X-Google-Smtp-Source: AGHT+IHBC0OTVtJRlL5qFPBdVNGiwJX5IkhAmmfZybWe4HRb/Ud1mmcObHxNNq6CbT5pBUk61bWuOQ==
X-Received: by 2002:a05:600c:4595:b0:408:2686:e1ba with SMTP id r21-20020a05600c459500b004082686e1bamr465317wmo.20.1697668123152;
        Wed, 18 Oct 2023 15:28:43 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id t16-20020a05600c199000b004068e09a70bsm2806752wmq.31.2023.10.18.15.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 15:28:42 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH] config.json: add a workaround for the "autobuilderlog.json" error
Date: Thu, 19 Oct 2023 00:28:18 +0200
Message-Id: <20231018222818.550730-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 22:28:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61405

For the reproducible-meta-oe builder, workaround the bug #15241 [1], by
passing BB_LOGCONFIG through "readlink -f" to avoid relative reference
to the main build dir.

Also, switch from BBPATH to BUILDDIR to reference the main build dir.

[1]: https://bugzilla.yoctoproject.org/show_bug.cgi?id=15241

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/config.json b/config.json
index c01a453..84da67b 100644
--- a/config.json
+++ b/config.json
@@ -303,7 +303,7 @@
             ],
             "step1" : {
                 "shortname" : "Repro meta-oe/meta-filesystems",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-filesystems/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-filesystems -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-filesystems/ DISPLAY=:1 BB_LOGCONFIG=$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-st-meta-filesystems -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-python",
@@ -323,7 +323,7 @@
             },
             "step2" : {
                 "shortname" : "Repro meta-oe/meta-gnome",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-gnome/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-gnome -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-gnome/ DISPLAY=:1 BB_LOGCONFIG=$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-st-meta-gnome -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-python",
@@ -343,14 +343,14 @@
             },
             "step3" : {
                 "shortname" : "Repro meta-oe/meta-initramfs",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-initramfs/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-initramfs -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-initramfs/ DISPLAY=:1 BB_LOGCONFIG=$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-st-meta-initramfs -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-initramfs"
                 ]
             },
             "step4" : {
                 "shortname" : "Repro meta-oe/meta-multimedia",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-multimedia/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-multimedia -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-multimedia/ DISPLAY=:1 BB_LOGCONFIG=$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-st-meta-multimedia -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-python",
@@ -367,7 +367,7 @@
             },
             "step5" : {
                 "shortname" : "Repro meta-oe/meta-networking",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-networking/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-networking -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-networking/ DISPLAY=:1 BB_LOGCONFIG=$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-st-meta-networking -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-networking"
@@ -382,7 +382,7 @@
             },
             "step6" : {
                 "shortname" : "Repro meta-oe/meta-oe",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-oe/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-oe -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-oe/ DISPLAY=:1 BB_LOGCONFIG=$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-st-meta-oe -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe"
                 ],
@@ -393,7 +393,7 @@
             },
             "step7" : {
                 "shortname" : "Repro meta-oe/meta-perl",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-perl/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-perl -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-perl/ DISPLAY=:1 BB_LOGCONFIG=$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-st-meta-perl -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-perl"
@@ -408,7 +408,7 @@
             },
             "step8" : {
                 "shortname" : "Repro meta-oe/meta-python",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-python/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-python -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-python/ DISPLAY=:1 BB_LOGCONFIG=$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-st-meta-python -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-python"
@@ -419,7 +419,7 @@
             },
             "step9" : {
                 "shortname" : "Repro meta-oe/meta-webserver",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-webserver/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-webserver -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-webserver/ DISPLAY=:1 BB_LOGCONFIG=$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-st-meta-webserver -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-webserver"
@@ -433,7 +433,7 @@
             },
             "step10" : {
                 "shortname" : "Repro meta-oe/meta-xfce",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-xfce/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-xfce -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-xfce/ DISPLAY=:1 BB_LOGCONFIG=$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-st-meta-xfce -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-python",
-- 
2.30.2


