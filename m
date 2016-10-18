Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39863E00C6A; Mon, 17 Oct 2016 17:02:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1BC8E00C1D
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:49 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id fn2so8805993pad.1
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=u+z04ABA0fdAC/xqUiDP/sDO7Rkfq/gbRZsD6b4V/3A=;
	b=DxJ9DIWLMXWJUUcKRltzkJkVHYqEpdwpZLG0CiVZGMJ/IiJKE29RI1At/k9lttr0ko
	vqusKUpWcirOJvvqnpzLrAC+KYgaL4zPf+Jy3g9S0Pfo1ZD++1QZWtkrUq5NoQQWaPR0
	niO1vcql3aCTPezI9gHQBeMgZ8k11T5HhcRz9oGOqPI/AizMwgum9fn2YaiCB3FHEKDo
	fgyUGIfh5l9wTnn6ATY5sbmKlRW098yeIQu8B7dD6h7YWXD+PmtmNTnshw9sMy6ee0aZ
	0OzMKS5sW5RRBGpEik03EOxGRMClNLEVrXUIPMn4+P4KB0hePxBc0wuPDEjClXe8spOC
	Wq2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=u+z04ABA0fdAC/xqUiDP/sDO7Rkfq/gbRZsD6b4V/3A=;
	b=I52KySspwKqHKmBRZCjRqF9QD4+njdA+ewm4k+nEaOQ16x6Xh7tbPpo4PduqHO58uE
	QaA/YzkQ879k1br76vLm5i6Oux+fjQCwPBvAMw+C6T3KWg0cd8ixk6hSi7mKmezklLHb
	nSdci30ZLH5eM87i91Sm69JcbEmInfENvsL2aRZrTktHCvKme/fQFPUvlusuYbWroPRi
	tpd9ya45kBe4zxrTpZG9n9DQ4XOYFu7aLr7ez+tE6OX3sqdSC16RKARstdM0xgnBzLXw
	RoYGDOA56BIc3m0hCWa6HlUGL4LRRLKaOXoGD2i1ohedo4fIM/UErqnQ6URNZuxMUtGg
	p76A==
X-Gm-Message-State: AA6/9RkVfpE5istdOYPIwMx3b3icUL+mX+SYTyNR165vHEkh0Z2URrPzLGUvV0bTfVc5mA==
X-Received: by 10.66.72.225 with SMTP id g1mr147695pav.166.1476748968851;
	Mon, 17 Oct 2016 17:02:48 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	s6sm50597160pfg.46.2016.10.17.17.02.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:02:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Mon, 17 Oct 2016 17:02:28 -0700
Message-Id: <1476748950-21342-15-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 15/17] samhain: recipe cleanup
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
X-List-Received-Date: Tue, 18 Oct 2016 00:02:53 -0000

add a few distro feature checks.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/samhain/samhain-client_4.1.5.bb |  7 ----
 recipes-security/samhain/samhain-server_4.1.5.bb | 16 ++++----
 recipes-security/samhain/samhain.inc             | 52 ++++++++++++++----------
 3 files changed, 38 insertions(+), 37 deletions(-)

diff --git a/recipes-security/samhain/samhain-client_4.1.5.bb b/recipes-security/samhain/samhain-client_4.1.5.bb
index bb47449..4b04326 100644
--- a/recipes-security/samhain/samhain-client_4.1.5.bb
+++ b/recipes-security/samhain/samhain-client_4.1.5.bb
@@ -12,11 +12,4 @@ EXTRA_OECONF += " \
         --with-pid-file=/var/samhain/samhain.pid \
         "
 
-
-INSANE_SKIP_${PN} = "already-stripped"
-
-FILES_${PN} += "\
-    /run \
-    "
-
 RDEPENDS_${PN} = "acl zlib attr bash"
diff --git a/recipes-security/samhain/samhain-server_4.1.5.bb b/recipes-security/samhain/samhain-server_4.1.5.bb
index 0d76b9a..35f8775 100644
--- a/recipes-security/samhain/samhain-server_4.1.5.bb
+++ b/recipes-security/samhain/samhain-server_4.1.5.bb
@@ -3,13 +3,17 @@ INITSCRIPT_PARAMS = "defaults 14 86"
 
 require samhain.inc
 
-DEPENDS = "gmp"
+DEPENDS = "gmp samhain-server-native"
 
 EXTRA_OECONF += "--enable-network=${SAMHAIN_MODE} "
 
 # supports mysql|postgresql|oracle|odbc but postgresql is the only one available
 
-PACKAGECONFG ??= "postgresql"
+PACKAGECONFIG ??= "postgresql"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'ipv6', 'ipv6', '', d)}"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '', d)}"
+
 PACKAGECONFIG[postgres]  = "--with-database=postgresql --enable-xml-log, "", postgresql"
 PACKAGECONFIG[suidcheck]  = "--enable-suidcheck","" , "
 PACKAGECONFIG[logwatch]  = "--enable-login-watch,"" , "
@@ -38,17 +42,13 @@ do_install_append() {
         init/samhain.startLSB ${D}/var/lib/samhain
 }
 
-INSANE_SKIP_${PN} = "already-stripped"
-
 PACKAGES = "${PN} ${PN}-doc ${PN}-dbg"
 
-FILES_${PN} += " \
-    ${sbindir}/* \
-    /run \
-    "
+FILES_${PN} += "${sbindir}/*"
 
 FILES_${PN}-dbg += " \
     ${sbindir}/.debug/* \
     "
 
 RDEPENDS_${PN} += "gmp bash perl"
+BBCLASSEXTEND = "native"
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index 5bf2ee7..7987886 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -46,37 +46,39 @@ do_configure_prepend_aarch64() {
 # use the prefix --oldincludedir=/usr/include which is not
 # recognized by Samhain's configure script and would invariably
 # throw back the error "unrecognized option: --oldincludedir=/usr/include"
-do_configure () {
-    cat << EOF > ./config-site.${BP}
+do_configure_prepend () {
+    cat << EOF > ${S}/config-site.${BP}
 ssp_cv_lib=no
 sh_cv_va_copy=yes
 EOF
+    export CONFIG_SITE=${S}/config-site.${BP}
+}
 
-    export CONFIG_SITE=./config-site.${BP}
+do_configure () {
 	./configure \
-	    --build=${BUILD_SYS} \
-	    --host=${HOST_SYS} \
-	    --target=${TARGET_SYS} \
-	    --prefix=${prefix} \
-	    --exec_prefix=${exec_prefix} \
-	    --bindir=${bindir} \
-	    --sbindir=${sbindir} \
-	    --libexecdir=${libexecdir} \
-	    --datadir=${datadir} \
-	    --sysconfdir=${sysconfdir} \
-	    --sharedstatedir=${sharedstatedir} \
-	    --localstatedir=${localstatedir} \
-	    --libdir=${libdir} \
-	    --includedir=${includedir} \
-	    --infodir=${infodir} \
-	    --mandir=${mandir} \
-	    ${EXTRA_OECONF}
+	--build=${BUILD_SYS} \
+	--host=${HOST_SYS} \
+	--target=${TARGET_SYS} \
+	--prefix=${prefix} \
+	--exec_prefix=${exec_prefix} \
+	--bindir=${bindir} \
+	--sbindir=${sbindir} \
+	--libexecdir=${libexecdir} \
+	--datadir=${datadir} \
+	--sysconfdir=${sysconfdir} \
+	--sharedstatedir=${sharedstatedir} \
+	--localstatedir=${localstatedir} \
+	--libdir=${libdir} \
+	--includedir=${includedir} \
+	--infodir=${infodir} \
+	--mandir=${mandir} \
+	${EXTRA_OECONF}
 }
 
 # Install the init script, it's default file, and the extraneous
 # documentation.
 do_install_append () {
-    cd ${S}
+	cd ${S}
 	oe_runmake install DESTDIR='${D}' INSTALL=install-boot
 	install -d ${D}${sysconfdir}/init.d
 	install -m 755 ${WORKDIR}/${INITSCRIPT_NAME}.init \
@@ -89,5 +91,11 @@ do_install_append () {
 	install -d ${D}${docdir}/${PN}
 	cp -r docs/* ${D}${docdir}/${PN}
 	cp -r scripts ${D}${docdir}/${PN}
-    install -d -m 755 ${D}/var/samhain
+	install -d -m 755 ${D}/var/samhain
 }
+
+FILES_${PN} += "\
+    /run \
+    "
+
+INSANE_SKIP_${PN} = "already-stripped"
-- 
2.7.4


