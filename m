Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F162E002AB
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2013 04:42:04 -0800 (PST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3YwS5Q6Spqz3hhqL
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2013 13:42:02 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3YwS5Q2fY4zbbhP
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2013 13:42:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024) with ESMTP id Rwr_Rf6r2PLu for <yocto@yoctoproject.org>;
	Tue, 29 Jan 2013 13:41:12 +0100 (CET)
X-Auth-Info: LmJ/UiznUOnPJG9UTvDai+Bl+0SN4zdh4YL+zAPtYUo=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2013 13:42:01 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 0274A1A14E5
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2013 13:42:00 +0100 (CET)
Received: by gemini.denx.de (Postfix, from userid 500)
	id 17CBC2A064F; Tue, 29 Jan 2013 13:42:00 +0100 (CET)
From: Wolfgang Denk <wd@denx.de>
To: yocto@yoctoproject.org
Date: Tue, 29 Jan 2013 13:41:56 +0100
Message-Id: <1359463316-21376-1-git-send-email-wd@denx.de>
X-Mailer: git-send-email 1.7.11.7
Subject: [PATCH] Add sbindir_nativesdk to environment setup
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 29 Jan 2013 12:42:05 -0000

When adding for example file system generating tools like
"mkfs.cramfs" or "mkfs.ubifs" to the SDK, these will be installed into
the "${prefix_nativesdk}/sbin" directory, but the generated
environment-setup script sets a PATH that includes /bin only.
Add a new definition of "sbindir_nativesdk" and include this into the
PATH setting.

Signed-off-by: Wolfgang Denk <wd@denx.de>
---
 meta/classes/toolchain-scripts.bbclass | 2 +-
 meta/conf/bitbake.conf                 | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta/classes/toolchain-scripts.bbclass b/meta/classes/toolchain-scripts.bbclass
index 6d8623c..86581cb 100644
--- a/meta/classes/toolchain-scripts.bbclass
+++ b/meta/classes/toolchain-scripts.bbclass
@@ -10,7 +10,7 @@ toolchain_create_sdk_env_script () {
 	script=${1:-${SDK_OUTPUT}/${SDKPATH}/environment-setup-${REAL_MULTIMACH_TARGET_SYS}}
 	rm -f $script
 	touch $script
-	echo 'export PATH=${SDKPATHNATIVE}${bindir_nativesdk}:${SDKPATHNATIVE}${bindir_nativesdk}/${REAL_MULTIMACH_TARGET_SYS}:$PATH' >> $script
+	echo 'export PATH=${SDKPATHNATIVE}${bindir_nativesdk}:${SDKPATHNATIVE}${bindir_nativesdk}/${REAL_MULTIMACH_TARGET_SYS}:${SDKPATHNATIVE}${sbindir_nativesdk}:${SDKPATHNATIVE}${sbindir_nativesdk}/${REAL_MULTIMACH_TARGET_SYS}:$PATH' >> $script
 	echo 'export PKG_CONFIG_SYSROOT_DIR=${SDKTARGETSYSROOT}' >> $script
 	echo 'export PKG_CONFIG_PATH=${SDKTARGETSYSROOT}${libdir}/pkgconfig' >> $script
 	echo 'export CONFIG_SITE=${SDKPATH}/site-config-${REAL_MULTIMACH_TARGET_SYS}' >> $script
diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index 2dc50ca..62cf439 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -59,6 +59,7 @@ bindir_cross = "/bin"
 bindir_crossscripts = "${bindir}/crossscripts"
 prefix_nativesdk = "/usr"
 bindir_nativesdk = "${prefix_nativesdk}/bin"
+sbindir_nativesdk = "${prefix_nativesdk}/sbin"
 includedir_nativesdk = "${prefix_nativesdk}/include"
 libdir_nativesdk = "${prefix_nativesdk}/lib"
 base_libdir_nativesdk = "/lib"
-- 
1.7.11.7


