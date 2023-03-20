Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35B35C7618D
	for <webhook@archiver.kernel.org>; Mon, 20 Mar 2023 11:49:54 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web11.11768.1679312988335241826
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Mar 2023 04:49:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=c4u85qLB;
 spf=pass (domain: gmail.com, ip: 209.85.160.182, mailfrom: akuster808@gmail.com)
Received: by mail-qt1-f182.google.com with SMTP id hf2so8449274qtb.3
        for <yocto@lists.yoctoproject.org>; Mon, 20 Mar 2023 04:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679312987;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=g4+ofswlO4HZcadK0W1KSzRrzMYhPriqspWITV5WQl4=;
        b=c4u85qLBn00YihaeGdPkCRLzd4We/1oA9lJiAxGY2nFDcZ3HUNbZmiMvaJzpzyfD6l
         vvZn87sxAYOyl1cfHq2qGxe/S31BmI5vMLvfSSapvu0yWRZJaUCoYWN5bRQ6qVFWh9we
         2H1V0wkWxAYg8aWA/KvD09U7OwpNFrzu7O4DiV3U3MKCLRmekTjOkXwCr3YJDCa3arja
         751DNC9cEHR3yWMx+7Urqj3RxK4cWhAN86nt5Rzc4pnbTTqP/TGihw2Ipr6G5kWMBV8s
         ebqIRV54ofRSeED4smcbrSqwCh7H5SkEqc4C2kLXEdNDsy6srni2moNdmLDoz4WNXSRX
         l/hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679312987;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g4+ofswlO4HZcadK0W1KSzRrzMYhPriqspWITV5WQl4=;
        b=M2ouo2qYQ3H2EwL/6RxNCVhfnCi9K95tlhZe0Le/3bYsrvTI+Xcobd6VlRWNTAJR8b
         EKaL6yxXHusN0GmXKscZ4MEGmjcADh3i31xoy0GhN/s4RY9HfemNp9yJTLC4JXIzwG5g
         HwC7lHezZiQwnP50UN6LSeRCahTfZXOdEt9aw755/Tds7GlQ/K/1TmfXwyO3sX3nYisn
         5rv4bXv9U7IWyQR3UPZkIJ+5rN9xszPXG7xYm/D7pnCzc86WI6kZNwkviwxwFJYP+GRa
         roHA6OwqRIfM7s8k/GIZ/C8e7scTVpSeZxJKSAA7jYouqyA85oxFa984l27mG3/KiA/8
         +6LQ==
X-Gm-Message-State: AO0yUKUwEndsvndm6WoU8H+hPz1+EgNsagce2gJsSSvxuJGwz8iQyscA
	4Fr3BIzobKUY0EbrtrDDjTvdiThtFOA=
X-Google-Smtp-Source: AK7set80N8G2nnkuSTaKFieU5rwMfbONF4jBpephbyur/u1YOSyK4LXEmrr178YUhYokOLJsZXlrpQ==
X-Received: by 2002:a05:622a:20e:b0:3d4:17dc:3fcf with SMTP id b14-20020a05622a020e00b003d417dc3fcfmr18866065qtx.5.1679312987078;
        Mon, 20 Mar 2023 04:49:47 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:c26c:1827:ca90:3476])
        by smtp.gmail.com with ESMTPSA id d20-20020ac85354000000b003b323387c1asm6471238qto.18.2023.03.20.04.49.46
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 04:49:46 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-parsec][PATCH 1/2] tpm2-tss: restore version 3.2.x to meta-parsec
Date: Mon, 20 Mar 2023 07:49:45 -0400
Message-Id: <20230320114946.1519177-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Mar 2023 11:49:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59470

parsec-service does not support 4.x so keep older version for now too

This fixes parsec-service build
Error:
thread 'main' panicked at 'Unsupported TSS version: 4',

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-tss-3.2.0/fixup_hosttools.patch      | 29 ++++++
 .../recipes-tpm2/tpm2-tss/tpm2-tss_3.2.0.bb   | 97 +++++++++++++++++++
 2 files changed, 126 insertions(+)
 create mode 100644 meta-parsec/recipes-tpm2/tpm2-tss/tpm2-tss-3.2.0/fixup_hosttools.patch
 create mode 100644 meta-parsec/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.0.bb

diff --git a/meta-parsec/recipes-tpm2/tpm2-tss/tpm2-tss-3.2.0/fixup_hosttools.patch b/meta-parsec/recipes-tpm2/tpm2-tss/tpm2-tss-3.2.0/fixup_hosttools.patch
new file mode 100644
index 0000000..450698f
--- /dev/null
+++ b/meta-parsec/recipes-tpm2/tpm2-tss/tpm2-tss-3.2.0/fixup_hosttools.patch
@@ -0,0 +1,29 @@
+revert configure: add checks for all tools used by make install
+
+Not appropriate for cross build env.
+
+Upstream-Status: OE [inappropriate]
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: tpm2-tss-3.2.0/configure.ac
+===================================================================
+--- tpm2-tss-3.2.0.orig/configure.ac
++++ tpm2-tss-3.2.0/configure.ac
+@@ -488,17 +488,6 @@
+ AC_CHECK_PROG(systemd_tmpfiles, systemd-tmpfiles, yes)
+ AM_CONDITIONAL(SYSD_TMPFILES, test "x$systemd_tmpfiles" = "xyes")
+ 
+-# Check all tools used by make install
+-AS_IF([test "$HOSTOS" = "Linux"],
+-    [ AC_CHECK_PROG(useradd, useradd, yes)
+-      AC_CHECK_PROG(groupadd, groupadd, yes)
+-      AC_CHECK_PROG(adduser, adduser, yes)
+-      AC_CHECK_PROG(addgroup, addgroup, yes)
+-      AS_IF([test "x$addgroup" != "xyes" && test "x$groupadd" != "xyes" ],
+-         [AC_MSG_ERROR([addgroup or groupadd are needed.])])
+-      AS_IF([test "x$adduser" != "xyes" && test "x$useradd" != "xyes" ],
+-         [AC_MSG_ERROR([adduser or useradd are needed.])])])
+-
+ AC_SUBST([PATH])
+ 
+ dnl --------- Doxy Gen -----------------------
diff --git a/meta-parsec/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.0.bb b/meta-parsec/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.0.bb
new file mode 100644
index 0000000..1556273
--- /dev/null
+++ b/meta-parsec/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.0.bb
@@ -0,0 +1,97 @@
+SUMMARY = "Software stack for TPM2."
+DESCRIPTION = "OSS implementation of the TCG TPM2 Software Stack (TSS2) "
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
+SECTION = "tpm"
+
+DEPENDS = "autoconf-archive-native libgcrypt openssl"
+
+SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz \
+           file://fixup_hosttools.patch \
+           "
+
+SRC_URI[sha256sum] = "48305e4144dcf6d10f3b25b7bccf0189fd2d1186feafd8cd68c6b17ecf0d7912"
+
+UPSTREAM_CHECK_URI = "https://github.com/tpm2-software/${BPN}/releases"
+
+inherit autotools pkgconfig systemd useradd
+
+PACKAGECONFIG ??= ""
+PACKAGECONFIG[oxygen] = ",--disable-doxygen-doc, "
+PACKAGECONFIG[fapi] = "--enable-fapi,--disable-fapi,curl json-c "
+
+EXTRA_OECONF += "--enable-static --with-udevrulesdir=${nonarch_base_libdir}/udev/rules.d/"
+EXTRA_OECONF += "--runstatedir=/run"
+EXTRA_OECONF:remove = " --disable-static"
+
+USERADD_PACKAGES = "${PN}"
+GROUPADD_PARAM:${PN} = "--system tss"
+USERADD_PARAM:${PN} = "--system -M -d /var/lib/tpm -s /bin/false -g tss tss"
+
+do_configure:prepend() {
+    # do not extract the version number from git
+    sed -i -e 's/m4_esyscmd_s(\[git describe --tags --always --dirty\])/${PV}/' ${S}/configure.ac
+}
+
+do_install:append() {
+    # Remove /run as it is created on startup
+    rm -rf ${D}/run
+}
+
+PROVIDES = "${PACKAGES}"
+PACKAGES = " \
+    ${PN} \
+    ${PN}-dbg \
+    ${PN}-doc \
+    libtss2-mu \
+    libtss2-mu-dev \
+    libtss2-mu-staticdev \
+    libtss2-tcti-device \
+    libtss2-tcti-device-dev \
+    libtss2-tcti-device-staticdev \
+    libtss2-tcti-mssim \
+    libtss2-tcti-mssim-dev \
+    libtss2-tcti-mssim-staticdev \
+    libtss2 \
+    libtss2-dev \
+    libtss2-staticdev \
+"
+
+FILES:libtss2-tcti-device = "${libdir}/libtss2-tcti-device.so.*"
+FILES:libtss2-tcti-device-dev = " \
+    ${includedir}/tss2/tss2_tcti_device.h \
+    ${libdir}/pkgconfig/tss2-tcti-device.pc \
+    ${libdir}/libtss2-tcti-device.so"
+FILES:libtss2-tcti-device-staticdev = "${libdir}/libtss2-tcti-device.*a"
+
+FILES:libtss2-tcti-mssim = "${libdir}/libtss2-tcti-mssim.so.*"
+FILES:libtss2-tcti-mssim-dev = " \
+    ${includedir}/tss2/tss2_tcti_mssim.h \
+    ${libdir}/pkgconfig/tss2-tcti-mssim.pc \
+    ${libdir}/libtss2-tcti-mssim.so"
+FILES:libtss2-tcti-mssim-staticdev = "${libdir}/libtss2-tcti-mssim.*a"
+
+FILES:libtss2-mu = "${libdir}/libtss2-mu.so.*"
+FILES:libtss2-mu-dev = " \
+    ${includedir}/tss2/tss2_mu.h \
+    ${libdir}/pkgconfig/tss2-mu.pc \
+    ${libdir}/libtss2-mu.so"
+FILES:libtss2-mu-staticdev = "${libdir}/libtss2-mu.*a"
+
+FILES:libtss2 = "${libdir}/libtss2*so.*"
+FILES:libtss2-dev = " \
+    ${includedir} \
+    ${libdir}/pkgconfig \
+    ${libdir}/libtss2*so"
+FILES:libtss2-staticdev = "${libdir}/libtss*a"
+
+FILES:${PN} = "\
+    ${libdir}/udev \
+    /var/lib/tpm2-tss \
+    /var/run \
+    ${nonarch_base_libdir}/udev \
+    ${sysconfdir}/tmpfiles.d \
+    ${sysconfdir}/tpm2-tss \
+    ${sysconfdir}/sysusers.d"
+
+RDEPENDS:libtss2 = "libgcrypt"
-- 
2.25.1


