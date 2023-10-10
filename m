Return-Path: <fabien.thomas@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A42DE95A8F
	for <webhook@archiver.kernel.org>; Tue, 10 Oct 2023 10:07:17 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web10.87822.1696932430873619400
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Oct 2023 03:07:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=nfpOT5m6;
 spf=pass (domain: smile.fr, ip: 209.85.128.42, mailfrom: fabien.thomas@smile.fr)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-405361bba99so50585335e9.2
        for <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 03:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1696932429; x=1697537229; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2BjxZKORvUPHgdH1SH34RfBL+Cd5eUTYNSj9k11Rz1Y=;
        b=nfpOT5m6P3SIWPjO16Ep50qluZMJeAvfU0SHfIk1oBWAOVsniZrdFUF9IHOdT26PRM
         I8BlHzNRP9ZQ/+w9g3+nV5VetfUP4kl4XXBEmlfGrKx0AmkCC+1jEKT0olJ2PqzhJ2pz
         wOJhlkUuFpyFESxPNNFiy70LDwdbdchPBgvdpjDwYMZpUP1baYA4ZZFHL4fpVfhOSX76
         dG6wyU6IMt1M3GRa3SHslCXNqZjK15g6Ty5VsN50+mHeZFdWkFvDrPg4Nu9E3e2r1VCR
         E6yCB+H2Of52JgnnVHK6sFja2FKe3H/92sVk1WhQhNxE0dLhf35tKSGunk8xtoxG5fKM
         mtHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696932429; x=1697537229;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2BjxZKORvUPHgdH1SH34RfBL+Cd5eUTYNSj9k11Rz1Y=;
        b=QDcwI4c4cCKZJ5MDJp4bpNeAS/LxayAtLmTogG0yUYzVcsRODjSK4mZq2Cmm4/rs0j
         +j5VKUWBzWtLmfYrm4hGtztEK0LPlxYYIj0Px08sOpcxdVHiCAlrjqGh095e+fV2L+LU
         Eou3kePLIzPOwzLIMvbyt1PomyWgdG5jGTlu7UfpYByVOWh0YjgsbI1E7Z5zFklu/99S
         PX49qOTMvM/sfobVgO30R0GteARKoA+cnECTxK3hj2i+NXYJhiYHkxiBCM5AZ8PO4HSa
         JaedtqmhkU6rgYrHwc726cDhbtsy5G3eHM/6in2HEIWp97AYqs7PAT/AYe6JS38yjUOo
         6rVQ==
X-Gm-Message-State: AOJu0YwFVbNXlyyqurpA64JPTpZ+zvuJNwq2HUvodFs9xzPgYyipr880
	Rs7pllARIN52efGFgO1/FAqtY+t+HG+Z6vBNarY=
X-Google-Smtp-Source: AGHT+IHdwitETvYJQSQwOe2ioE/+KOPgP16FV2h/NEz0CpdAyHDrWfTIjbs+jTNwLWoU5utzqTh1qg==
X-Received: by 2002:a05:600c:255:b0:405:3d83:2b76 with SMTP id 21-20020a05600c025500b004053d832b76mr15585262wmj.13.1696932429003;
        Tue, 10 Oct 2023 03:07:09 -0700 (PDT)
Received: from p-nan-fatho.home (2a01cb0584747e00ad7461ecf2f04d44.ipv6.abo.wanadoo.fr. [2a01:cb05:8474:7e00:ad74:61ec:f2f0:4d44])
        by smtp.gmail.com with ESMTPSA id k22-20020a7bc416000000b00404719b05b5sm13687748wmi.27.2023.10.10.03.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 03:07:08 -0700 (PDT)
From: Fabien Thomas <fabien.thomas@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Fabien Thomas <fabien.thomas@smile.fr>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH] config.json : reproducible-meta-oe build fixes
Date: Tue, 10 Oct 2023 12:07:01 +0200
Message-Id: <20231010100701.83119-1-fabien.thomas@smile.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 10:07:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61300

- Distro has been changed to Poky so exclude Poky's layers from world to
limit reproducibility tests to the targeted layer only.
- Execution on autobuilder shows that addlayer steps often fail :
reorder layer in ADDLAYER list regarding their dependencies.
- Fix shortid building issues by setting USERADD_U(G)ID_TABLES to
passwd and group files. These files must exist in meta-openmbedded.
- Shorten the steps shortnames to improve readability on UI.
- Add a directory level for output reports, for convenience.

Signed-off-by: Fabien Thomas <fabien.thomas@smile.fr>
Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 107 ++++++++++++++++++++++++++++++++++------------------
 1 file changed, 70 insertions(+), 37 deletions(-)

diff --git a/config.json b/config.json
index df3493b..af4ab39 100644
--- a/config.json
+++ b/config.json
@@ -296,116 +296,149 @@
             ],
             "extravars" : [
                 "EXCLUDE_FROM_WORLD:layer-core = '1'",
+                "EXCLUDE_FROM_WORLD:layer-yocto = '1'",
+                "EXCLUDE_FROM_WORLD:layer-yoctobsp = '1'",
                 "EXCLUDE_FROM_WORLD:layer-selftest = '1'",
                 "OEQA_REPRODUCIBLE_TEST_TARGET = 'world'"
             ],
             "step1" : {
-                "shortname" : "Reproducible Selftest for openembedded meta-filesystems layer",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-filesystems/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "shortname" : "Repro test OE meta-filesystems",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-filesystems/ DISPLAY=:1 oe-selftest -r reproducible"],
                 "ADDLAYER" : [
-                    "${BUILDDIR}/../meta-openembedded/meta-filesystems",
                     "${BUILDDIR}/../meta-openembedded/meta-oe"
+                    "${BUILDDIR}/../meta-openembedded/meta-networking",
+                    "${BUILDDIR}/../meta-openembedded/meta-filesystems",
                 ],
                 "extravars" : [
-                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'"
+                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'",
+                    "EXCLUDE_FROM_WORLD:layer-networking-layer = '1'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-filesystems'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-networking'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-networking'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'"
                 ]
             },
             "step2" : {
-                "shortname" : "Reproducible Selftest for openembedded meta-gnome layer",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-gnome/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "shortname" : "Repro test OE meta-gnome",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-gnome/ DISPLAY=:1 oe-selftest -r reproducible"],
                 "ADDLAYER" : [
-                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
-                    "${BUILDDIR}/../meta-openembedded/meta-networking",
                     "${BUILDDIR}/../meta-openembedded/meta-python"
+                    "${BUILDDIR}/../meta-openembedded/meta-networking",
+                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
                 ],
                 "extravars" : [
                     "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'",
                     "EXCLUDE_FROM_WORLD:layer-networking-layer = '1'",
-                    "EXCLUDE_FROM_WORLD:layer-meta-python = '1'"
+                    "EXCLUDE_FROM_WORLD:layer-meta-python = '1'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-gnome'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-networking'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-networking'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'"
                 ]
             },
             "step3" : {
-                "shortname" : "Reproducible Selftest for openembedded meta-initramfs layer",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-initramfs/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "shortname" : "Repro test OE meta-initramfs",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-initramfs/ DISPLAY=:1 oe-selftest -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-initramfs"
                 ]
             },
             "step4" : {
-                "shortname" : "Reproducible Selftest for openembedded meta-multimedia layer",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-multimedia/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "shortname" : "Repro test OE meta-multimedia",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-multimedia/ DISPLAY=:1 oe-selftest -r reproducible"],
                 "ADDLAYER" : [
-                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
                     "${BUILDDIR}/../meta-openembedded/meta-python"
+                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
                 ],
                 "extravars" : [
                     "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'",
-                    "EXCLUDE_FROM_WORLD:layer-meta-python = '1'"
+                    "EXCLUDE_FROM_WORLD:layer-meta-python = '1'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-multimedia'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-multimedia'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'"
                 ]
             },
             "step5" : {
-                "shortname" : "Reproducible Selftest for openembedded meta-networking layer",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-networking/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "shortname" : "Repro test OE meta-networking",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-networking/ DISPLAY=:1 oe-selftest -r reproducible"],
                 "ADDLAYER" : [
-                    "${BUILDDIR}/../meta-openembedded/meta-networking",
                     "${BUILDDIR}/../meta-openembedded/meta-oe"
+                    "${BUILDDIR}/../meta-openembedded/meta-networking",
                 ],
                 "extravars" : [
-                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'"
+                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-networking'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-networking'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'"
                 ]
             },
             "step6" : {
-                "shortname" : "Reproducible Selftest for openembedded meta-oe layer",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-oe/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "shortname" : "Repro test OE meta-oe",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-oe/ DISPLAY=:1 oe-selftest -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-oe"
+                ],
+                "extravars" : [
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'"
                 ]
             },
             "step7" : {
-                "shortname" : "Reproducible Selftest for openembedded meta-perl layer",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-perl/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "shortname" : "Repro test OE meta-perl",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-perl/ DISPLAY=:1 oe-selftest -r reproducible"],
                 "ADDLAYER" : [
-                    "${BUILDDIR}/../meta-openembedded/meta-perl",
                     "${BUILDDIR}/../meta-openembedded/meta-oe"
+                    "${BUILDDIR}/../meta-openembedded/meta-perl",
                 ],
                 "extravars" : [
-                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'"
+                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-perl'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-perl'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'"
                 ]
             },
             "step8" : {
-                "shortname" : "Reproducible Selftest for openembedded meta-python layer",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-python/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "shortname" : "Repro test OE meta-python",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-python/ DISPLAY=:1 oe-selftest -r reproducible"],
                 "ADDLAYER" : [
-                    "${BUILDDIR}/../meta-openembedded/meta-python",
                     "${BUILDDIR}/../meta-openembedded/meta-oe"
+                    "${BUILDDIR}/../meta-openembedded/meta-python",
                 ],
                 "extravars" : [
                     "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'"
                 ]
             },
             "step9" : {
-                "shortname" : "Reproducible Selftest for openembedded meta-webserver layer",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-webserver/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "shortname" : "Repro test OE meta-webserver",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-webserver/ DISPLAY=:1 oe-selftest -r reproducible"],
                 "ADDLAYER" : [
-                    "${BUILDDIR}/../meta-openembedded/meta-webserver",
                     "${BUILDDIR}/../meta-openembedded/meta-oe"
+                    "${BUILDDIR}/../meta-openembedded/meta-webserver",
                 ],
                 "extravars" : [
-                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'"
+                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-webserver'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'"
                 ]
             },
             "step10" : {
-                "shortname" : "Reproducible Selftest for openembedded meta-xfce layer",
-                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded-meta-xfce/ DISPLAY=:1 oe-selftest -r reproducible"],
+                "shortname" : "Repro test OE meta-xfce",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-xfce/ DISPLAY=:1 oe-selftest -r reproducible"],
                 "ADDLAYER" : [
-                    "${BUILDDIR}/../meta-openembedded/meta-xfce",
                     "${BUILDDIR}/../meta-openembedded/meta-oe",
-                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
-                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
                     "${BUILDDIR}/../meta-openembedded/meta-python",
                     "${BUILDDIR}/../meta-openembedded/meta-networking"
+                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
+                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
+                    "${BUILDDIR}/../meta-openembedded/meta-xfce",
                 ],
                 "extravars" : [
                     "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'",
-- 
2.34.1


