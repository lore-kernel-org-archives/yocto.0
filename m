Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3766EB64D8
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 19:12:51 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.web10.34.1686683570425475776
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jun 2023 12:12:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=rPcd4v3M;
 spf=pass (domain: gmail.com, ip: 209.85.128.175, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-56d4f50427cso21252757b3.3
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 12:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686683569; x=1689275569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rFNE5TIfqKKCcJFXSOcKdIAv85liq4Eq4oPjM/+udI8=;
        b=rPcd4v3M9+aPSqvdeOiNaTUMWipYLO/ADxo51cRrE4wSBcqnwbxRxHO4v7sraT/l7q
         DaTiQz1kvB9ULtPjXew+HxXCl9p+wc2ucZAkHCaBYV0gwq7oPlwB69NcoFMutjBfKIZp
         U7qMnpi0TfK/y9KQpyWDxa18nPwmZOmJx4aEOjaYv7Vbt6Wm57o56PdsN4J/f3N4eC5I
         BEJysYaQEBvePSfB+PalEU7kyuX0AmiTxhrRXyXppHhiRuoFIHNqqtaES0CVJSZeUXPo
         omOvE6SV04wRj+3RFBmOJadyoaTV9xRCTsnNLvRhtjwzqrtnoSnXR2whYqumU/x3a64v
         aWEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686683569; x=1689275569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rFNE5TIfqKKCcJFXSOcKdIAv85liq4Eq4oPjM/+udI8=;
        b=ZFHJx6OMHcB1AIb0E7Pb3gDqOkKqfNstfpeMcjZ2qViww8LKgZF/W1ZXAOHR+rnfz0
         ro2+E4U733/4bSSx+zQglgWOCwQ6GhvdqIMGcvfuRak0pZIfxTPytCmXRFthUenW0Gvn
         M3vjTXfpWJyaFxyyURABK8G6eyYEWeteey1PnI/nbqddcW+N8BhqtNxEI0u7aGFP6ye2
         mQmLZkttuPFZx6RutV0RWRB+llWqIARuDvhX5hr3W3LkQUCPM19uXE/u/C7iHtEz/1WP
         HVsiIFiKjOOMT3Msd7MpLUfiQbI9W+0S7wFave1gNeqIO72cTjmxo1QWziao9pR6HXwP
         8GrA==
X-Gm-Message-State: AC+VfDzbsl3pGrmCUYzbgse1JzoKRD3EptG4fpCL9aXoXE6Ud1cqg4N/
	usg9wPYMjKTn4yTUrsC7CCTlxJYVqSs=
X-Google-Smtp-Source: ACHHUZ6ulcC7kpBSw0Z7yagCij+V8ZB26f+NJOWiq/iCpR1IO/Y6OIr4W5x6wHQHXI4QXG7kUI1PZQ==
X-Received: by 2002:a0d:ca88:0:b0:56d:2d67:cb38 with SMTP id m130-20020a0dca88000000b0056d2d67cb38mr2596628ywd.34.1686683569331;
        Tue, 13 Jun 2023 12:12:49 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:be62:56a:860e:4129])
        by smtp.gmail.com with ESMTPSA id q133-20020a815c8b000000b005569567aac1sm1971786ywb.106.2023.06.13.12.12.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 12:12:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/7] openscap: Fix native build missing depends
Date: Tue, 13 Jun 2023 15:12:43 -0400
Message-Id: <20230613191247.18732-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613191247.18732-1-akuster808@gmail.com>
References: <20230613191247.18732-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 19:12:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60276

Include .inc for pending change
New host OS required an addition to the depends file

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../openscap/openscap_1.3.7.bb                | 60 +++++++++++++++++--
 1 file changed, 54 insertions(+), 6 deletions(-)

diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb
index cfe93f0..a422f9c 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb
@@ -1,19 +1,67 @@
-SUMARRY = "NIST Certified SCAP 1.2 toolkit"
+# Copyright (C) 2017  - 2023 Armin Kuster  <akuster808@gmail.com>
+# Released under the MIT license (see COPYING.MIT for the terms)
 
-DEPENDS:append = " xmlsec1"
+SUMARRY = "NIST Certified SCAP 1.2 toolkit"
+HOME_URL = "https://www.open-scap.org/tools/openscap-base/"
+LIC_FILES_CHKSUM = "file://COPYING;md5=fbc093901857fcd118f065f900982c24"
+LICENSE = "LGPL-2.1-only"
 
-require openscap.inc
+DEPENDS = "dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt libcap swig libpcre  xmlsec1"
+DEPENDS:class-native = "pkgconfig-native swig-native curl-native libxml2-native libxslt-native libcap-native libpcre-native xmlsec1-native"
 
-inherit systemd
 
 SRCREV = "55efbfda0f617e05862ab6ed4862e10dbee52b03"
 SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https"
 
-SYSTEMD_PACKAGES = "${PN}"
-SYSTEMD_SERVICE:${PN} = "oscap-remediate.service"
+S = "${WORKDIR}/git"
+
+inherit cmake pkgconfig python3native python3targetconfig perlnative systemd
+
+PACKAGECONFIG ?= "python3 rpm perl gcrypt ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
+PACKAGECONFIG[python3] = "-DENABLE_PYTHON3=ON, ,python3, python3"
+PACKAGECONFIG[perl] = "-DENABLE_PERL=ON, ,perl, perl"
+PACKAGECONFIG[rpm] = "-DENABLE_OSCAP_UTIL_AS_RPM=ON, ,rpm, rpm"
+PACKAGECONFIG[gcrypt] = "-DWITH_CRYPTO=gcrypt, ,libgcrypt"
+PACKAGECONFIG[nss3] = "-DWITH_CRYPTO=nss3, ,nss"
+PACKAGECONFIG[selinux] = ", ,libselinux"
+
+EXTRA_OECMAKE += "-DENABLE_PROBES_LINUX=ON -DENABLE_PROBES_UNIX=ON \
+                  -DENABLE_PROBES_SOLARIS=OFF -DENABLE_PROBES_INDEPENDENT=ON \
+                  -DENABLE_OSCAP_UTIL=ON -DENABLE_OSCAP_UTIL_SSH=ON \
+                  -DENABLE_OSCAP_UTIL_DOCKER=OFF -DENABLE_OSCAP_UTIL_CHROOT=OFF \
+                  -DENABLE_OSCAP_UTIL_PODMAN=OFF -DENABLE_OSCAP_UTIL_VM=OFF \
+                  -DENABLE_PROBES_WINDOWS=OFF -DENABLE_VALGRIND=OFF \
+                  -DENABLE_SCE=ON -DENABLE_MITRE=OFF -DENABLE_TESTS=OFF \
+                  -DCMAKE_SKIP_INSTALL_RPATH=ON -DCMAKE_SKIP_RPATH=ON \
+                 "
+
+STAGING_OSCAP_DIR = "${TMPDIR}/work-shared/${MACHINE}/oscap-source"
+STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
+
+do_configure:append:class-native () {
+    sed -i 's:OSCAP_DEFAULT_CPE_PATH.*$:OSCAP_DEFAULT_CPE_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe":' ${B}/config.h
+    sed -i 's:OSCAP_DEFAULT_SCHEMA_PATH.*$:OSCAP_DEFAULT_SCHEMA_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas":' ${B}/config.h
+    sed -i 's:OSCAP_DEFAULT_XSLT_PATH.*$:OSCAP_DEFAULT_XSLT_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl":' ${B}/config.h
+}
 
 do_install:append () {
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
         install -D -m 0644 ${B}/oscap-remediate.service ${D}${systemd_system_unitdir}/oscap-remediate.service
     fi
 }
+
+do_install:class-native[cleandirs] += " ${STAGING_OSCAP_BUILDDIR}"
+do_install:append:class-native () {
+    oscapdir=${STAGING_OSCAP_BUILDDIR}/${datadir_native}
+    install -d $oscapdir
+    cp -a ${D}/${STAGING_DATADIR_NATIVE}/openscap $oscapdir
+}
+
+
+SYSTEMD_PACKAGES = "${PN}"
+SYSTEMD_SERVICE:${PN} = "oscap-remediate.service"
+
+FILES:${PN} += "${PYTHON_SITEPACKAGES_DIR}"
+
+RDEPENDS:${PN} += "libxml2 python3-core libgcc bash"
+BBCLASSEXTEND = "native"
-- 
2.34.1


