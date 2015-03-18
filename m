Return-Path: <eballetbo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4191BE00828; Wed, 18 Mar 2015 07:23:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eballetbo[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f182.google.com (mail-we0-f182.google.com
	[74.125.82.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA1AEE0034E
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2015 07:23:13 -0700 (PDT)
Received: by weop45 with SMTP id p45so33664348weo.0
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2015 07:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=8ma0WVFh/Ic/K/vE0E+xYlYSvXicm4bjsBtT2Jlm4hk=;
	b=lOyi6FSjqN2LF913TH3tDUDLybTwdGXk2GHnYfR9XBsyk03F9g4mk24NiKSlCd/FvU
	tTFXzczfyd5dApnvy4CGoEZDsLnck58r0jgvhJrjbT7M3wdanmnm3RnSIEGcqiBYeyCZ
	CijrZmshV1FbYyqDkvoDoqQcydcd2nqsjlUmYXyXKTh4+Tg3AkLIF7aFyv2kpmu3L7Q0
	d+MLiYAicHuzFOcy21hjSpM0g0Zkq9Y/rAHzDBq8A0pkc1Z/gbisDHMmJhBxm8M1SRAs
	hsYjqjS2/Td6C8e6Zu1xfkm8f/hLL7jfXzyVXzoUuYt32+RSHlUjc7mJj0AEMvnjI2ET
	aNnA==
X-Received: by 10.194.86.135 with SMTP id p7mr144977211wjz.89.1426688592048;
	Wed, 18 Mar 2015 07:23:12 -0700 (PDT)
Received: from localhost.localdomain ([89.128.229.22])
	by mx.google.com with ESMTPSA id
	ev7sm24705384wjb.47.2015.03.18.07.23.10
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 18 Mar 2015 07:23:11 -0700 (PDT)
From: Enric Balletbo i Serra <eballetbo@gmail.com>
X-Google-Original-From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk,
	autif.mlist@gmail.com
Date: Wed, 18 Mar 2015 15:23:02 +0100
Message-Id: <1426688582-8302-1-git-send-email-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.1.0
Subject: [meta-mono][PATCH] mono: Support to build mono without X support.
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
X-List-Received-Date: Wed, 18 Mar 2015 14:23:17 -0000

Use PACKAGECONFIG to build a version of mono with or without X support in
function of x11 DISTRO_FEATURES.

Tested on qemux86 (mono using X) and imx6 board (mono without X)

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 recipes-mono/mono/mono-native_3.12.1.bb |  8 ++++++--
 recipes-mono/mono/mono_3.12.1.bb        | 12 +++++++++---
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/recipes-mono/mono/mono-native_3.12.1.bb b/recipes-mono/mono/mono-native_3.12.1.bb
index b575224..3afae4b 100644
--- a/recipes-mono/mono/mono-native_3.12.1.bb
+++ b/recipes-mono/mono/mono-native_3.12.1.bb
@@ -5,10 +5,14 @@ inherit native
 SRC_URI[md5sum] = "ccab015f0c54ffeccd2924b44885809c"
 SRC_URI[sha256sum] = "5d8cf153af2948c06bc9fbf5088f6834868e4db8e5f41c7cff76da173732b60d"
 
-DEPENDS =+ "libgdiplus-native"
-
 EXTRA_OECONF += "mono_cv_uscore=no --with-sigaltstack=no --with-mcs-docs=no "
 
+EDEPENDS_X11 =+ "libgdiplus-native"
+PACKAGECONFIG[x11] = ",,${EDEPENDS_X11}"
+
+# Default configuration, distros might want to override
+PACKAGECONFIG ??= "${@base_contains('DISTRO_FEATURES', 'x11', 'x11', '', d)}"
+
 SRC_URI += "file://fix-basic-mscorlib-dep.patch"
 
 do_compile() {
diff --git a/recipes-mono/mono/mono_3.12.1.bb b/recipes-mono/mono/mono_3.12.1.bb
index c22c1d5..e8a8da0 100644
--- a/recipes-mono/mono/mono_3.12.1.bb
+++ b/recipes-mono/mono/mono_3.12.1.bb
@@ -2,13 +2,21 @@ require mono-3.12.inc
 
 inherit pkgconfig
 
-DEPENDS =+ "mono-native libgdiplus"
+DEPENDS =+ "mono-native"
 
 SRC_URI[md5sum] = "ccab015f0c54ffeccd2924b44885809c"
 SRC_URI[sha256sum] = "5d8cf153af2948c06bc9fbf5088f6834868e4db8e5f41c7cff76da173732b60d"
 
 EXTRA_OECONF += "--disable-mcs-build mono_cv_clang=no mono_cv_uscore=no --with-sigaltstack=no --with-mcs-docs=no"
 
+EDEPENDS_X11 = "libgdiplus"
+ERDEPENDS_X11 = "libgdiplus"
+
+PACKAGECONFIG[x11] = ",,${EDEPENDS_X11},${ERDEPENDS_X11}"
+
+# Default configuration, distros might want to override
+PACKAGECONFIG ??= "${@base_contains('DISTRO_FEATURES', 'x11', 'x11', '', d)}"
+
 do_install_append() {
 	cp -af ${STAGING_DIR_NATIVE}${sysconfdir}/${PN} ${D}${sysconfdir}
 	cp -af ${STAGING_DIR_NATIVE}${libdir}/${PN}  ${D}${libdir}/${PN}
@@ -23,5 +31,3 @@ FILES_${PN}-doc += " ${datadir}/libgc-mono/*"
 FILES_${PN}-dbg += " ${datadir}/mono-2.0/mono/cil/cil-opcodes.xml"
 
 PACKAGES = "${PN} ${PN}-dbg ${PN}-doc ${PN}-dev ${PN}-staticdev ${PN}-locale"
-
-RDEPENDS_${PN} += "libgdiplus"
-- 
2.1.0


