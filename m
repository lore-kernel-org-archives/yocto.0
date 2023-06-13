Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F4A1EB64D0
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 19:13:01 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
 by mx.groups.io with SMTP id smtpd.web11.29.1686683571263541643
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jun 2023 12:12:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=qMM5JUoV;
 spf=pass (domain: gmail.com, ip: 209.85.128.180, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-56ce53c0040so44023227b3.2
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 12:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686683570; x=1689275570;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xdXKOkQ/zQ9fzA9OvM9ROjslrdJI2mW6eQ1IL6mpDkA=;
        b=qMM5JUoVPX3Zq32957RW2jtP5ZQu1TtWVG0+59WozoLeNZAMWrdfGPOgIvjz0lRqND
         1jHnOMf1zrgI7aezMd7PREz9ASdz/vlkH/2AuhZWxBSnETpk+BB+kCKpYoeluPyRCHdG
         RYspa4WnNxVzF6tDaZJ+i1+V7ajzQS3bsYff0pkg037ZPO2luSpxvyGEAJ1hhNpM24CV
         buigNFf56hXSinUJwG3692UYZ9TphfHBtHFxdOwD0BIikgLdwRaUBad7IRWC91Va8Z9E
         yjGkXdg7o+74MLUoGPJkGHob3hfUpxfSazzcam+4nX99ir1Psm/ertsxN7K1+5IObx4e
         N24A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686683570; x=1689275570;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xdXKOkQ/zQ9fzA9OvM9ROjslrdJI2mW6eQ1IL6mpDkA=;
        b=Q8FTT7Rs7eh07TZqRF1shd/rR0BKF3G9t1a7YVwewq/ogcctL6mM8ZZlrbRcU/5Xc4
         FHXVR90Czc7vTGq58m/jEV+/7eIkf+Hn6hVu2x3wpQ6/hEIR0P5h66k4sKgTkkyQ0bo2
         2w2TVTL6mIntLwsNO6/QWmY9dV9obaKHBRNb3Awsf52YHs+vEfE+PIG3qySR6uOrBcDu
         TKqAwgzJQk0pSNCC2bo7QviwHANxO9utjeapTwzFsW6KQZAINZAhO1koyF8N2NRHAZbW
         nR/LIaWlQyk3jP9SSDYxl1/dUyXDGYNH6phbNxvoNP43+uYjFBO/Nz+9hSQh8NDWnO75
         JXSg==
X-Gm-Message-State: AC+VfDwkjp4YvqV4nkShhCjphWe+ziTptcJ693AKRR6jhA+egoMUfcbI
	j/NyaO30tEop0uZLlnR7KwwC8Y8/a/I=
X-Google-Smtp-Source: ACHHUZ71MU6UbBQ/0zDEqNDYpFBZlGL08hXnrcsAM/zPbCdOD6f7BRz377ZLejFsU5ZiM/zcTbUHjQ==
X-Received: by 2002:a0d:eb4b:0:b0:56d:7c4:8be8 with SMTP id u72-20020a0deb4b000000b0056d07c48be8mr2796677ywe.16.1686683570202;
        Tue, 13 Jun 2023 12:12:50 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:be62:56a:860e:4129])
        by smtp.gmail.com with ESMTPSA id q133-20020a815c8b000000b005569567aac1sm1971786ywb.106.2023.06.13.12.12.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 12:12:49 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/7] openscap: Drop OE specific recipe
Date: Tue, 13 Jun 2023 15:12:44 -0400
Message-Id: <20230613191247.18732-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613191247.18732-1-akuster808@gmail.com>
References: <20230613191247.18732-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 19:13:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60277

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-openscap/openscap/openscap.inc    | 55 -------------------
 .../recipes-openscap/openscap/openscap_git.bb | 14 -----
 2 files changed, 69 deletions(-)
 delete mode 100644 meta-security-compliance/recipes-openscap/openscap/openscap.inc
 delete mode 100644 meta-security-compliance/recipes-openscap/openscap/openscap_git.bb

diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap.inc b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
deleted file mode 100644
index e875227..0000000
--- a/meta-security-compliance/recipes-openscap/openscap/openscap.inc
+++ /dev/null
@@ -1,55 +0,0 @@
-# Copyright (C) 2017 Armin Kuster  <akuster808@gmail.com>
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-SUMARRY = "NIST Certified SCAP 1.2 toolkit"
-HOME_URL = "https://www.open-scap.org/tools/openscap-base/"
-LIC_FILES_CHKSUM = "file://COPYING;md5=fbc093901857fcd118f065f900982c24"
-LICENSE = "LGPL-2.1-only"
-
-DEPENDS = "dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt libcap swig libpcre"
-DEPENDS:class-native = "pkgconfig-native swig-native curl-native libxml2-native libxslt-native libcap-native libpcre-native"
-
-S = "${WORKDIR}/git"
-
-inherit cmake pkgconfig python3native python3targetconfig perlnative
-
-PACKAGECONFIG ?= "python3 rpm perl gcrypt ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
-PACKAGECONFIG[python3] = "-DENABLE_PYTHON3=ON, ,python3, python3"
-PACKAGECONFIG[perl] = "-DENABLE_PERL=ON, ,perl, perl"
-PACKAGECONFIG[rpm] = "-DENABLE_OSCAP_UTIL_AS_RPM=ON, ,rpm, rpm"
-PACKAGECONFIG[gcrypt] = "-DWITH_CRYPTO=gcrypt, ,libgcrypt"
-PACKAGECONFIG[nss3] = "-DWITH_CRYPTO=nss3, ,nss"
-PACKAGECONFIG[selinux] = ", ,libselinux"
-
-EXTRA_OECMAKE += "-DENABLE_PROBES_LINUX=ON -DENABLE_PROBES_UNIX=ON \
-                  -DENABLE_PROBES_SOLARIS=OFF -DENABLE_PROBES_INDEPENDENT=ON \
-                  -DENABLE_OSCAP_UTIL=ON -DENABLE_OSCAP_UTIL_SSH=ON \
-                  -DENABLE_OSCAP_UTIL_DOCKER=OFF -DENABLE_OSCAP_UTIL_CHROOT=OFF \
-                  -DENABLE_OSCAP_UTIL_PODMAN=OFF -DENABLE_OSCAP_UTIL_VM=OFF \
-                  -DENABLE_PROBES_WINDOWS=OFF -DENABLE_VALGRIND=OFF \
-                  -DENABLE_SCE=ON -DENABLE_MITRE=OFF -DENABLE_TESTS=OFF \
-                  -DCMAKE_SKIP_INSTALL_RPATH=ON -DCMAKE_SKIP_RPATH=ON \
-                 "
-
-STAGING_OSCAP_DIR = "${TMPDIR}/work-shared/${MACHINE}/oscap-source"
-STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
-
-do_configure:append:class-native () {
-    sed -i 's:OSCAP_DEFAULT_CPE_PATH.*$:OSCAP_DEFAULT_CPE_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe":' ${B}/config.h
-    sed -i 's:OSCAP_DEFAULT_SCHEMA_PATH.*$:OSCAP_DEFAULT_SCHEMA_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas":' ${B}/config.h
-    sed -i 's:OSCAP_DEFAULT_XSLT_PATH.*$:OSCAP_DEFAULT_XSLT_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl":' ${B}/config.h
-}
-
-do_install:class-native[cleandirs] += " ${STAGING_OSCAP_BUILDDIR}"
-do_install:append:class-native () {
-    oscapdir=${STAGING_OSCAP_BUILDDIR}/${datadir_native}
-    install -d $oscapdir
-    cp -a ${D}/${STAGING_DATADIR_NATIVE}/openscap $oscapdir
-}
-
-
-FILES:${PN} += "${PYTHON_SITEPACKAGES_DIR}"
-
-RDEPENDS:${PN} += "libxml2 python3-core libgcc bash"
-
-BBCLASSEXTEND = "native"
diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
deleted file mode 100644
index 3543e11..0000000
--- a/meta-security-compliance/recipes-openscap/openscap/openscap_git.bb
+++ /dev/null
@@ -1,14 +0,0 @@
-# Copyright (C) 2017 Armin Kuster  <akuster808@gmail.com>
-# Released under the MIT license (see COPYING.MIT for the terms)
-
-SUMARRY = "NIST Certified SCAP 1.2 toolkit with OE changes"
-
-include openscap.inc
-
-SRCREV = "a85943eee400fdbe59234d1c4a02d8cf710c4625"
-SRC_URI = "git://github.com/akuster/openscap.git;branch=oe-1.3;protocol=https \
-"
-
-PV = "1.3.3+git${SRCPV}"
-
-DEFAULT_PREFERENCE = "-1"
-- 
2.34.1


