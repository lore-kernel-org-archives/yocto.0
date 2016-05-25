Return-Path: <vomegaz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2A0FE00CE1; Wed, 25 May 2016 01:24:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92DF9E00CD0
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 01:24:43 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id q62so13048117wmg.3
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 01:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=x9s5tkll6P9qxZ576HipB3+CAjZWeTG+y7HPHzpxSSg=;
	b=UdVY1sOIOUpZ56x1HwqIsLnFqDXHburgLYgTU56KWXU+W7yBMdqoahxV0YVD4jtP/J
	XZ04XJbpXiyvl6br+PzXRqNfG02sHkwpGfFuLZg/phUwxEnNWTEozBwKtriE4joPWp5G
	EyIZLPaWQtlsxQ3rbF7M5ls/kIFV2oOZMS3tyGKogO/Z5E7AAGrQm9FrtmzotaLp8U/Q
	Er1x595rGuS+VfMktgbJ4bNjky61QB17iZ5koU1GKo2uIHOInI/Q/9l9Celxf2Rk5noJ
	XloaloNU2UoACXog8Ang20J7LoOEX/GuXgKMXsjn509yVQ+jr9jwWxHkbASDRbIlqIqW
	5RzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=x9s5tkll6P9qxZ576HipB3+CAjZWeTG+y7HPHzpxSSg=;
	b=e1/sNppS49ZcULJctUHR9jQGigHv0Ynlou4b+6razLA44LbstT2BnlID3z5Ip/4otF
	wx5YaCHEAi0uj/SLvWF+8eBFFV+exx5hjK91l12VhqEwi+670nLKzq6M/u0ZReencqxW
	4VVmbLkDjn6jLJfISd7AMkmukP00MOREr+VQS7hHksCrADS8a6cEwkO67WzKcLBGBNXY
	JmFvFCASAZn0ICZRY3UsbK46TruKirJRy39WRHxe3OjUJq8n07GYwnjqEot8iPXEufKn
	lMmm4BTtCM0IPzKNLOb3zH3oX/QxN45y3bqpcsZ1VTbTQrOUPocaPWIYF6rmqTiZKsgr
	nOqw==
X-Gm-Message-State: ALyK8tIGYyyHlt6r7Tl/49CYU/XXlXrt5VUuaNXqws8KTXRBzXuYf+1amuorS6r95tMF7A==
X-Received: by 10.194.115.39 with SMTP id jl7mr2676667wjb.81.1464164681930;
	Wed, 25 May 2016 01:24:41 -0700 (PDT)
Received: from sgxcmp131.sigfox.io ([217.114.201.133])
	by smtp.gmail.com with ESMTPSA id
	w123sm22670782wmw.0.2016.05.25.01.24.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 25 May 2016 01:24:40 -0700 (PDT)
Sender: Thomas PERROT <vomegaz@gmail.com>
From: Thomas Perrot <thomas.perrot@tupi.fr>
To: yocto@yoctoproject.org
Date: Wed, 25 May 2016 10:24:38 +0200
Message-Id: <1464164678-30438-1-git-send-email-thomas.perrot@tupi.fr>
X-Mailer: git-send-email 2.1.4
Subject: [meta-security][PATCH] Use bb.utils.contains instead of base_contains because it is deprecated
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 25 May 2016 08:24:47 -0000

Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
---
 recipes-kernel/linux/linux-yocto_4.1.bbappend | 8 ++++----
 recipes-security/clamav/clamav_0.99.1.bb      | 2 +-
 recipes-security/sssd/sssd_1.13.3.bb          | 2 +-
 recipes-tpm/trousers/trousers_0.3.13.bb       | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/recipes-kernel/linux/linux-yocto_4.1.bbappend b/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 1043d5c..dc90e31 100644
--- a/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -2,8 +2,8 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.1:"
 
 # Tomoyo kernel support
 SRC_URI += "\
-	${@base_contains('DISTRO_FEATURES', 'tomoyo', ' file://ccs-tools-yocto.4.1.patch', '', d)} \
-	${@base_contains('DISTRO_FEATURES', 'tomoyo', ' file://ccs-tools-yocto_security.patch', '', d)} \
-	${@base_contains('DISTRO_FEATURES', 'tomoyo', ' file://tomoyo.cfg', '', d)} \
-	${@base_contains('DISTRO_FEATURES', 'tomoyo', ' file://tomoyo.scc', '', d)} \
+	${@bb.utils.contains('DISTRO_FEATURES', 'tomoyo', ' file://ccs-tools-yocto.4.1.patch', '', d)} \
+	${@bb.utils.contains('DISTRO_FEATURES', 'tomoyo', ' file://ccs-tools-yocto_security.patch', '', d)} \
+	${@bb.utils.contains('DISTRO_FEATURES', 'tomoyo', ' file://tomoyo.cfg', '', d)} \
+	${@bb.utils.contains('DISTRO_FEATURES', 'tomoyo', ' file://tomoyo.scc', '', d)} \
 	"
diff --git a/recipes-security/clamav/clamav_0.99.1.bb b/recipes-security/clamav/clamav_0.99.1.bb
index edccc78..461015f 100644
--- a/recipes-security/clamav/clamav_0.99.1.bb
+++ b/recipes-security/clamav/clamav_0.99.1.bb
@@ -30,7 +30,7 @@ GID = "clamav"
 
 PACKAGECONFIG ?= "ncurses openssl bz2 zlib "
 PACKAGECONFIG += " ${@bb.utils.contains("DISTRO_FEATURES", "ipv6", "ipv6", "", d)}"
-PACKAGECONFIG += "${@base_contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
 PACKAGECONFIG[pcre] = "--with-pcre=${STAGING_LIBDIR},  --without-pcre, libpcre"
 PACKAGECONFIG[xml] = "--with-xml=${STAGING_LIBDIR}/.., --with-xml=no, libxml2,"
 PACKAGECONFIG[json] = "--with-libjson=${STAGING_LIBDIR}, --without-libjson, json,"
diff --git a/recipes-security/sssd/sssd_1.13.3.bb b/recipes-security/sssd/sssd_1.13.3.bb
index d538af3..fd4f2a2 100644
--- a/recipes-security/sssd/sssd_1.13.3.bb
+++ b/recipes-security/sssd/sssd_1.13.3.bb
@@ -24,7 +24,7 @@ CACHED_CONFIGUREVARS = "ac_cv_member_struct_ldap_conncb_lc_arg=no \
     "
 
 PACKAGECONFIG ?="nss"
-PACKAGECONFIG += "${@base_contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
 
 PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
 PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
diff --git a/recipes-tpm/trousers/trousers_0.3.13.bb b/recipes-tpm/trousers/trousers_0.3.13.bb
index 7001788..e274972 100644
--- a/recipes-tpm/trousers/trousers_0.3.13.bb
+++ b/recipes-tpm/trousers/trousers_0.3.13.bb
@@ -17,7 +17,7 @@ SRC_URI[md5sum] = "ad508f97b406f6e48cd90e85d78e7ca8"
 SRC_URI[sha256sum] = "bb908e4a3c88a17b247a4fc8e0fff3419d8a13170fe7bdfbe0e2c5c082a276d3"
 
 inherit autotools pkgconfig useradd update-rc.d
-inherit ${@base_contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
+inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
 
 PACKAGECONFIG ?= "gmp "
 PACKAGECONFIG[gmp] = "--with-gmp, --with-gmp=no, gmp"
@@ -33,7 +33,7 @@ do_install_append() {
     install -d ${D}${sysconfdir}/udev/rules.d
     install -m 0644 ${WORKDIR}/trousers-udev.rules ${D}${sysconfdir}/udev/rules.d/45-trousers.rules
 
-    if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
         install -d ${D}${systemd_unitdir}/system
         install -m 0644 ${WORKDIR}/tcsd.service ${D}${systemd_unitdir}/system/
         sed -i -e 's#@SBINDIR@#${sbindir}#g' ${D}${systemd_unitdir}/system/tcsd.service
-- 
2.1.4


