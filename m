Return-Path: <sujith.h@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02CEEE013A2
	for <yocto@yoctoproject.org>; Mon, 27 May 2013 00:56:18 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id md12so6461091pbc.7
	for <yocto@yoctoproject.org>; Mon, 27 May 2013 00:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=XRYwwPs+NCyhAdaHlV7pE7zPVuDJr3M17kWx3LuewGA=;
	b=Tam8S9Pl0vkBVPIdw0uPAtvQrOkpdEr/wEsgXWw9h07kDTvFOvO863coJA5Xq0qGXw
	qCBbtJg7d4JPm6dGzYE5/7lcl8JXLLKtxsRa6rtOQfcLXLLKvCATGM4dJxKO/wQU1MKC
	WA0EL9EPIvAs1vzJlWNsSJxb70Bqr5UuS3CQFqDOdrQsPF7U/9aSbpZANtBg+GBpWzcj
	VtwWaDuZm5zBC7Dk11KIBUDpzbR0cFPtVrZzShSBsPYBIxOtDQFS5VlDqteAvh7GNwH0
	O0Zm3m2kBu6MliyTgH5qfmO5tcmTqk/s6AG2Xj5YMHSAYndbt/Ze8qf7isIR5Y1m0nfz
	MVQA==
X-Received: by 10.68.132.101 with SMTP id ot5mr28322081pbb.11.1369641378781;
	Mon, 27 May 2013 00:56:18 -0700 (PDT)
Received: from linux-z8xt.site ([115.119.134.194])
	by mx.google.com with ESMTPSA id
	ag4sm27609918pbc.20.2013.05.27.00.56.15 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 27 May 2013 00:56:17 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: holger.behrens@windriver.com,
	florin.sarbu@windriver.com
Date: Mon, 27 May 2013 13:23:50 +0530
Message-Id: <1369641230-8016-1-git-send-email-sujith.h@gmail.com>
X-Mailer: git-send-email 1.8.1.4
Cc: yocto@yoctoproject.org
Subject: [meta-ivi] [PATCH] pulseaudio: Fixing the configure_append.
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
X-List-Received-Date: Mon, 27 May 2013 07:56:19 -0000

Providing absolute path to avoid breakage during configure.
This patch has to be applied on branch 4.0

Signed-off-by: Sujith H <sujith.h@gmail.com>
---
 recipes-multimedia/pulseaudio/pulseaudio_3.0.bbappend | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/recipes-multimedia/pulseaudio/pulseaudio_3.0.bbappend b/recipes-multimedia/pulseaudio/pulseaudio_3.0.bbappend
index 1239f5c..849aeb0 100644
--- a/recipes-multimedia/pulseaudio/pulseaudio_3.0.bbappend
+++ b/recipes-multimedia/pulseaudio/pulseaudio_3.0.bbappend
@@ -1,4 +1,4 @@
-PRINC := "${@int(PRINC) + 4}"
+PRINC := "${@int(PRINC) + 5}"
 
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
@@ -26,9 +26,9 @@ do_configure_append () {
 	# udev_get_dev_path(), udev_get_sys_path(), udev_get_run_path()
 	# systemd does not allow to configure any of these filesystem paths
 	# udev is included in systemd
-	sed -i 's:udev_get_sys_path(udev):"/sys":' src/modules/module-udev-detect.c
-	sed -i 's:udev_get_sys_path(udev):"/sys":' src/modules/udev-util.c
-	sed -i 's:udev_get_dev_path(u->udev):"/dev":' src/modules/module-udev-detect.c
+	sed -i 's:udev_get_sys_path(udev):"/sys":' ${S}/src/modules/module-udev-detect.c
+	sed -i 's:udev_get_sys_path(udev):"/sys":' ${S}/src/modules/udev-util.c
+	sed -i 's:udev_get_dev_path(u->udev):"/dev":' ${S}/src/modules/module-udev-detect.c
 }
 
 do_install_append() {
@@ -36,4 +36,4 @@ do_install_append() {
         install -d ${D}${systemd_unitdir}/system/
         install -m 0644 ${WORKDIR}/pulseaudio.service ${D}${systemd_unitdir}/system
     fi
-}
\ No newline at end of file
+}
-- 
1.8.1.4


