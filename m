Return-Path: <fabien.thomas@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DECDACDB47E
	for <webhook@archiver.kernel.org>; Fri, 13 Oct 2023 14:34:20 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web11.40003.1697207656020356979
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Oct 2023 07:34:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=YTV0DdMe;
 spf=pass (domain: smile.fr, ip: 209.85.128.41, mailfrom: fabien.thomas@smile.fr)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-405361bb9f7so22809235e9.2
        for <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 07:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1697207654; x=1697812454; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cx7Od+Rf1i/OGNkGXL5VkZ21uTnNu/VDArpBGdax7xk=;
        b=YTV0DdMevNZbdG/00Rv5I4xKrwnJU7EBYogK1N3EDsKc4qCJFcPcw8k2UF2BDmPUd/
         V0JJQ5JNmoRoTdaWFbGdsY3H/lk+MiHUt01rsM4u0NglD4AD994iMES238TRhf2HQwPI
         ubIf1V3OaZWBi1kXc4unGXXIuFcKOg93gJWfCWZnPJDrd8LU8RFZ9vBLcEjbT+Be/DT+
         IerUQ24DamMy75oaCzJKaS/5lwSRgIlfCFC6iiWYkUtE8DEC+B6R7Wi8Q/Uln1Iq0M8+
         9fU5YVxmi4r49wiX67nG2aiH3YwXwzV6igDsPvq5bDIi4Pi9J1ENhr6PNwSv823A5KOC
         oshQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697207654; x=1697812454;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cx7Od+Rf1i/OGNkGXL5VkZ21uTnNu/VDArpBGdax7xk=;
        b=v/zF6Xp8KjxsuUz9PpkBGpUgnSzIHzNzia8OIODDOB4aHyXv5MxXolDTTSl86gbV+q
         HDxbXuTSwEWBqy5CLAZP1mZP4Pui2BbMbsm0VYzr7hG40QWWZ+u05yh7NcHJUZB7ZxiG
         nKYbyhicEL6qsxmpAfrXZpWHrw51UKC5C9X20wiakqDHlX+HHmgdvo2cCdDCgLu3Z4iT
         4dBUHUdfei+EbSelXeXdkdxMC6piLmeyA3lbzFxtCs2H/dzbpHqjF12IGobxn3Glg5Ti
         B7t2y4K4NB0cS3X15/ZY8GcVyVF/y5hQXDglj/Vta42/g6YcVrU7lh/ZGlnZDqcHUwkj
         XIzg==
X-Gm-Message-State: AOJu0YxR+K8rdy5c/xX/KjUcqsfDElQPnYrrCUERuCd/V48nIalpjEU7
	2ccHXnyXhMocK9z80EmW1lzQF7o3ioy0r71h8CE=
X-Google-Smtp-Source: AGHT+IH/xFLPuaZj1Xy5p3Uv2Lyt/kwTvi83vVU7yjXIgtr9y37eiNDYu1pDeW+xf8J4L0uVmw/mFA==
X-Received: by 2002:a05:600c:600a:b0:406:eef6:3540 with SMTP id az10-20020a05600c600a00b00406eef63540mr19403017wmb.0.1697207653878;
        Fri, 13 Oct 2023 07:34:13 -0700 (PDT)
Received: from p-nan-fatho.home (2a01cb0584747e0021d4f13fbc3604e3.ipv6.abo.wanadoo.fr. [2a01:cb05:8474:7e00:21d4:f13f:bc36:4e3])
        by smtp.gmail.com with ESMTPSA id fk14-20020a05600c0cce00b004077227bcdesm284243wmb.26.2023.10.13.07.34.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 07:34:13 -0700 (PDT)
From: Fabien Thomas <fabien.thomas@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Fabien Thomas <fabien.thomas@smile.fr>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH] config.json : Fix repro-meta-oe layer dependency
Date: Fri, 13 Oct 2023 16:34:02 +0200
Message-Id: <20231013143402.2955811-1-fabien.thomas@smile.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 14:34:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61335

Fix meta-filesystem build issue due to hidden dependencies (not set by
LAYERDEPENDS) smbnetfs(meta-filesystem) depends on
samba(meta-networking) that depends on python3-dnspython (meta-python)

Create new build-st dir for each layer to avoid chain of
failure between steps

Signed-off-by: Fabien Thomas <fabien.thomas@smile.fr>
Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/config.json b/config.json
index 3acb710..c01a453 100644
--- a/config.json
+++ b/config.json
@@ -303,15 +303,17 @@
             ],
             "step1" : {
                 "shortname" : "Repro meta-oe/meta-filesystems",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-filesystems/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-filesystems/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-filesystems -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
+                    "${BUILDDIR}/../meta-openembedded/meta-python",
                     "${BUILDDIR}/../meta-openembedded/meta-networking",
                     "${BUILDDIR}/../meta-openembedded/meta-filesystems"
                 ],
                 "extravars" : [
                     "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'",
                     "EXCLUDE_FROM_WORLD:layer-networking-layer = '1'",
+                    "EXCLUDE_FROM_WORLD:layer-meta-python = '1'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-filesystems'",
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-networking'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-networking'",
@@ -321,7 +323,7 @@
             },
             "step2" : {
                 "shortname" : "Repro meta-oe/meta-gnome",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-gnome/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-gnome/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-gnome -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-python",
@@ -341,14 +343,14 @@
             },
             "step3" : {
                 "shortname" : "Repro meta-oe/meta-initramfs",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-initramfs/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-initramfs/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-initramfs -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-initramfs"
                 ]
             },
             "step4" : {
                 "shortname" : "Repro meta-oe/meta-multimedia",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-multimedia/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-multimedia/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-multimedia -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-python",
@@ -365,7 +367,7 @@
             },
             "step5" : {
                 "shortname" : "Repro meta-oe/meta-networking",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-networking/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-networking/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-networking -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-networking"
@@ -380,7 +382,7 @@
             },
             "step6" : {
                 "shortname" : "Repro meta-oe/meta-oe",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-oe/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-oe/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-oe -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe"
                 ],
@@ -391,7 +393,7 @@
             },
             "step7" : {
                 "shortname" : "Repro meta-oe/meta-perl",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-perl/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-perl/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-perl -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-perl"
@@ -406,7 +408,7 @@
             },
             "step8" : {
                 "shortname" : "Repro meta-oe/meta-python",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-python/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-python/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-python -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-python"
@@ -417,7 +419,7 @@
             },
             "step9" : {
                 "shortname" : "Repro meta-oe/meta-webserver",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-webserver/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-webserver/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-webserver -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-webserver"
@@ -431,7 +433,7 @@
             },
             "step10" : {
                 "shortname" : "Repro meta-oe/meta-xfce",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-xfce/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-xfce/ DISPLAY=:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-xfce -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-python",
-- 
2.34.1


