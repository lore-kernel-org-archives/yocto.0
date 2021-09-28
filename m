Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFCB3C433F5
	for <webhook@archiver.kernel.org>; Tue, 28 Sep 2021 23:39:12 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web08.2075.1632872352123722035
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 16:39:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=efb9jxAS;
 spf=pass (domain: gmail.com, ip: 209.85.216.41,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id h12so252116pjj.1;
        Tue, 28 Sep 2021 16:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f85UWkP5FZG5R2FvGA8ZfZ+5Q4Xwv5ee8qVka8Yl82g=;
        b=efb9jxASC1Asl3A+VXMBol+l3EcUiKUJIJJkRbea5824OuLQsaCyxmiOTQu05/LqM8
         GrMN7pYpLtMK45SKYo4z3O9LMmao62wq6GoZnYuxu49vz0k7mGOl1Aqx0JN2iHSav0mJ
         sOeiKi/a906SIliIfPyAiaPvnn7cB3SVlRqD2tYkMGgtaCfTtxTOxsAGv5EjC7Ijso1j
         2lGSMScfuD3bQkqFeM6zYlWT3QHi8KODDEnL/dk6i3E2B+oIlzQj0wwDyDtbIozANPBQ
         MAjUcozb5x9I1dngoSWkeiYKA5Q0U5dEzI5iYn2dYsMHiNIDPQ3st2wrZrtpuPs5/KyP
         Bg+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f85UWkP5FZG5R2FvGA8ZfZ+5Q4Xwv5ee8qVka8Yl82g=;
        b=TYT1OyhX6/wJNPoxQ07ypp+RMiAnRBKCgp3VnABixqHXnUd3LuCr1bF/oGMk2aytfk
         BUG2iIaO5bZn9+uQOHn456WG0Kj8cq+A3LDValVbZQapKZQmmZU1o5zqUh5e+4ppnqcW
         lUnN+UBafs2PPLIBRW4ekBp1ZyeBAb75M22WTVQ+owtUukpPtdN7aSWd6sU4/W/AmewJ
         uhL/waejlkOevD4CEf4+7TcEXrax3/0O3NEWSyY0Ixv1hjW/tdkQwuK+m5GEOAPIJjoO
         PqTsnYf6jXKlWdOaiE5hly+epAyuhyMgzoX0NIGni6B1q9anp1S7lYJ35NsoPST3WTF3
         MalQ==
X-Gm-Message-State: AOAM533YPTbPUd4GblBoz9SoOa3lNQu0ol947S8EzU7uhS5TjX3wnhCN
	AWJ2Bli7vLeMQzZXASuTUyx0N1IlPZ0=
X-Google-Smtp-Source: 
 ABdhPJwLy7+IxCNROuXvXAPZgD3Q5a7eTE6AVCb4utl250tDXswAU9qQUOjA/6EI1d7CvlHbOAiVyQ==
X-Received: by 2002:a17:90a:4f49:: with SMTP id
 w9mr2851834pjl.84.1632872351145;
        Tue, 28 Sep 2021 16:39:11 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:b669:1b22:84ea:4511])
        by smtp.gmail.com with ESMTPSA id
 fh3sm3595052pjb.8.2021.09.28.16.39.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 16:39:10 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: "Kristian Klausen via lists.yoctoproject.org"
 <kristian=klausen.dk@lists.yoctoproject.org>,
	Kristian Klausen <kristian@klausen.dk>
Subject: [meta-security][PATCH 1/2] swtpm: update to 0.6.1
Date: Tue, 28 Sep 2021 16:39:08 -0700
Message-Id: <20210928233909.3574965-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Sep 2021 23:39:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54898

From: "Kristian Klausen via lists.yoctoproject.org" <kristian=klausen.dk@lists.yoctoproject.org>

swtpm no longer depends on Python[1] so the dependencies have been
removed.

"inherit perlnative" has been added due to (in oe-core):
deda455b3c ("bitbake.conf: drop pod2man from hosttools")

Some leftover dependencies have also been removed, ex: tpm-tools
required in the past by swtpm_setup.sh (<0.4.0)[2].

[1] https://github.com/stefanberger/swtpm/issues/437
[2] https://github.com/stefanberger/swtpm/commit/eee8cb5dfb13f87140dddda38f65bf61aff19508

Signed-off-by: Kristian Klausen <kristian@klausen.dk>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../swtpm/swtpm-wrappers-native.bb            | 12 ++++------
 .../swtpm/{swtpm_0.5.2.bb => swtpm_0.6.1.bb}  | 23 ++++++++-----------
 2 files changed, 14 insertions(+), 21 deletions(-)
 rename meta-tpm/recipes-tpm/swtpm/{swtpm_0.5.2.bb => swtpm_0.6.1.bb} (72%)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb b/meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb
index 644f3ac..bb93374 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb
@@ -1,6 +1,6 @@
 SUMMARY = "SWTPM - OpenEmbedded wrapper scripts for native swtpm tools"
 LICENSE = "MIT"
-DEPENDS = "swtpm-native tpm-tools-native net-tools-native"
+DEPENDS = "swtpm-native"
 
 inherit native
 
@@ -14,23 +14,19 @@ do_create_wrapper () {
     for i in `find ${bindir} ${base_bindir} ${sbindir} ${base_sbindir} -name 'swtpm*' -perm /+x -type f`; do
         exe=`basename $i`
         case $exe in
-            swtpm_setup.sh)
+            swtpm_setup)
                 cat >${WORKDIR}/swtpm_setup_oe.sh <<EOF
 #! /bin/sh
 #
-# Wrapper around swtpm_setup.sh which adds parameters required to
+# Wrapper around swtpm_setup which adds parameters required to
 # run the setup as non-root directly from the native sysroot.
 
 PATH="${bindir}:${base_bindir}:${sbindir}:${base_sbindir}:\$PATH"
 export PATH
 
-# tcsd only allows to be run as root or tss. Pretend to be root...
-exec env ${FAKEROOTENV} ${FAKEROOTCMD} swtpm_setup.sh --config ${STAGING_DIR_NATIVE}/etc/swtpm_setup.conf "\$@"
+exec swtpm_setup --config ${STAGING_DIR_NATIVE}/etc/swtpm_setup.conf "\$@"
 EOF
                 ;;
-            swtpm_setup)
-                true
-                ;;
             *)
                 cat >${WORKDIR}/${exe}_oe.sh <<EOF
 #! /bin/sh
diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
similarity index 72%
rename from meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
rename to meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
index 912e939..807c02b 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
@@ -3,14 +3,11 @@ LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=fe8092c832b71ef20dfe4c6d3decb3a8"
 SECTION = "apps"
 
-DEPENDS = "libtasn1 coreutils-native expect socat glib-2.0 net-tools-native libtpm libtpm-native"
+# coreutils-native and net-tools-native are reportedly only required for the tests
+DEPENDS = "libtasn1 coreutils-native expect socat glib-2.0 net-tools-native libtpm json-glib"
 
-# configure checks for the tools already during compilation and
-# then swtpm_setup needs them at runtime
-DEPENDS:append = " tpm-tools-native expect-native socat-native python3-pip-native python3-cryptography-native"
-
-SRCREV = "e59c0c1a7b4c8d652dbb280fd6126895a7057464"
-SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.5 \
+SRCREV = "98187d24fe14851653a7c46eb16e9c5f0b9beaa1"
+SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.6 \
            file://ioctl_h.patch \
            file://oe_configure.patch \
            "
@@ -19,7 +16,7 @@ PE = "1"
 S = "${WORKDIR}/git"
 
 PARALLEL_MAKE = ""
-inherit autotools pkgconfig python3native
+inherit autotools pkgconfig perlnative
 
 TSS_USER="tss"
 TSS_GROUP="tss"
@@ -28,7 +25,10 @@ PACKAGECONFIG ?= "openssl"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
 PACKAGECONFIG += "${@bb.utils.contains('BBFILE_COLLECTIONS', 'filesystems-layer', 'cuse', '', d)}"
 PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
-PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls"
+# expect, bash, tpm2-pkcs11-tools (tpm2_ptool), tpmtool and certtool is
+# used by swtpm-create-tpmca (the last two is provided by gnutls)
+# gnutls is required by: swtpm-create-tpmca, swtpm-localca and swtpm_cert
+PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls, gnutls, expect bash tpm2-pkcs11-tools"
 PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux"
 PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse, fuse"
 PACKAGECONFIG[seccomp] = "--with-seccomp, --without-seccomp, libseccomp"
@@ -41,14 +41,11 @@ USERADD_PARAM:${PN} = "--system -g ${TSS_GROUP} --home-dir  \
     --no-create-home  --shell /bin/false ${BPN}"
 
 
-PACKAGES =+ "${PN}-python"
-FILES:${PN}-python = "${PYTHON_SITEPACKAGES_DIR}"
-
 PACKAGE_BEFORE_PN = "${PN}-cuse"
 FILES:${PN}-cuse = "${bindir}/swtpm_cuse"
 
 INSANE_SKIP:${PN}   += "dev-so"
 
-RDEPENDS:${PN} = "libtpm expect socat bash tpm-tools python3 python3-cryptography python3-twisted"
+RDEPENDS:${PN} = "libtpm"
 
 BBCLASSEXTEND = "native nativesdk"
-- 
2.25.1


