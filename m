Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDE88E00AA8; Mon, 30 Nov 2015 07:31:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3116CE00457
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 07:31:32 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id tAUFVVjH024792
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 07:31:31 -0800 (PST)
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 30 Nov 2015 07:31:30 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 30 Nov 2015 09:31:27 -0600
Message-ID: <1448897488-118603-2-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1448897488-118603-1-git-send-email-mark.hatle@windriver.com>
References: <1448897488-118603-1-git-send-email-mark.hatle@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 7/8] [meta-mingw] [jethro/master] toolchain-scripts-mingw32.bbclass: Update to match YP 2.0 release
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
X-List-Received-Date: Mon, 30 Nov 2015 15:31:37 -0000
Content-Type: text/plain

The environment script generatation is updated to match YP 2.0 version.

In addition, there was an error in the way the EXTRAPATH component was being
generated.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 classes/toolchain-scripts-mingw32.bbclass | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/classes/toolchain-scripts-mingw32.bbclass b/classes/toolchain-scripts-mingw32.bbclass
index 0353875..b996a3e 100644
--- a/classes/toolchain-scripts-mingw32.bbclass
+++ b/classes/toolchain-scripts-mingw32.bbclass
@@ -1,30 +1,35 @@
 # Based off of the oe-core meta/classes/toolchain-scripts.bbclass version
 toolchain_create_sdk_env_script_sdkmingw32 () {
 	# Create environment setup script
+	sdkpathnative=${7:-${SDKPATHNATIVE}}
+	prefix=${6:-${prefix_nativesdk}}
+	bindir=${5:-${bindir_nativesdk}}
 	libdir=${4:-${libdir}}
 	sysroot=${3:-${SDKTARGETSYSROOT}}
-	sysroot=${sysroot##${SDKPATH}}
-	pathnative=${SDKPATHNATIVE}
-	pathnative=${pathnative##${SDKPATH}}
 	multimach_target_sys=${2:-${REAL_MULTIMACH_TARGET_SYS}}
 	script=${1:-${SDK_OUTPUT}/${SDKPATH}/environment-setup-$multimach_target_sys}.bat
 	rm -f $script
 	touch $script
 	# Be sure to use the 'short' path, so we can have deeper directories.
 	echo 'set SDKROOT=%~sdp0%' >> $script
-	echo 'set SDKTARGETSYSROOT=%SDKROOT%'"$sysroot" >> $script
+
+	# Convert to mingw32 subpaths
+	sysroot='%SDKROOT%'${sysroot##${SDKPATH}}
+	sdkpathnative='%SDKROOT%'${sdkpathnative##${SDKPATH}}
+
+	echo 'set SDKTARGETSYSROOT='"$sysroot" >> $script
 	EXTRAPATH=""
 	for i in ${CANADIANEXTRAOS}; do
-		EXTRAPATH="$EXTRAPATH;%~\$PATH:0%$pathnative${bindir_nativesdk}/${TARGET_ARCH}${TARGET_VENDOR}-$i"
+		EXTRAPATH="$EXTRAPATH;$sdkpathnative$bindir/${TARGET_ARCH}${TARGET_VENDOR}-$i"
 	done
-	echo 'set PATH=%SDKROOT%'"$pathnative"'${bindir_nativesdk};%SDKROOT%'"$pathnative"'${bindir_nativesdk}/${TARGET_SYS}'"$EXTRAPATH"';%PATH%' >> $script
+	echo "set PATH=$sdkpathnative$bindir;$sdkpathnative$bindir/../${HOST_SYS}/bin;$sdkpathnative$bindir/${TARGET_SYS}"$EXTRAPATH';%PATH%' >> $script
 	echo 'set PKG_CONFIG_SYSROOT_DIR=%SDKTARGETSYSROOT%' >> $script
 	echo 'set PKG_CONFIG_PATH=%SDKTARGETSYSROOT%'"$libdir"'/pkgconfig' >> $script
 	echo 'set CONFIG_SITE=%SDKROOT%/site-config-'"${multimach_target_sys}" >> $script
-	echo 'set OECORE_NATIVE_SYSROOT=%SDKROOT%'"$pathnative" >> $script
+	echo "set OECORE_NATIVE_SYSROOT=$sdkpathnative" >> $script
 	echo 'set OECORE_TARGET_SYSROOT=%SDKTARGETSYSROOT%' >> $script
-	echo 'set OECORE_ACLOCAL_OPTS=-I %SDKROOT%'"$pathnative"'/usr/share/aclocal' >> $script
-	echo 'set PYTHONHOME=%SDKROOT%'"$pathnative"'${prefix_nativesdk}' >> $script
+	echo "set OECORE_ACLOCAL_OPTS=-I $sdkpathnative/usr/share/aclocal" >> $script
+	echo "set PYTHONHOME=$sdkpathnative$prefix" >> $script
 
 	toolchain_shared_env_script
 
@@ -56,6 +61,7 @@ toolchain_shared_env_script_sdkmingw32 () {
 	echo 'set CXXFLAGS=${TARGET_CXXFLAGS}' >> $script
 	echo 'set LDFLAGS=${TARGET_LDFLAGS}' >> $script
 	echo 'set CPPFLAGS=${TARGET_CPPFLAGS}' >> $script
+	echo 'set KCFLAGS=--sysroot=%SDKTARGETSYSROOT%' >> $script
 	echo 'set OECORE_DISTRO_VERSION=${DISTRO_VERSION}' >> $script
 	echo 'set OECORE_SDK_VERSION=${SDK_VERSION}' >> $script
 	echo 'set ARCH=${ARCH}' >> $script
-- 
1.9.3


