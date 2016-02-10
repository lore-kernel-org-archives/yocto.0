Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BD16E00DB9; Tue,  9 Feb 2016 18:40:11 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1B98E00CC8
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 18:40:06 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u1A2e5TI028768
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 9 Feb 2016 18:40:05 -0800 (PST)
Received: from msp-dhcp15.wrs.com (172.25.34.15) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 9 Feb 2016 18:40:04 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 9 Feb 2016 20:39:53 -0600
Message-ID: <1455072000-156056-3-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <1455072000-156056-1-git-send-email-mark.hatle@windriver.com>
References: <1455072000-156056-1-git-send-email-mark.hatle@windriver.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH 2/9][master][jethro] meta-environment: Update environment files to batch files
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
X-List-Received-Date: Wed, 10 Feb 2016 02:40:11 -0000
Content-Type: text/plain

Since the environment .sh files can't be used on a normal windows machine,
change to providing .bat files instead.  The same mechanisms normally used
can be used on the Windows command line. i.e.

Unix way:
$ source environment-setup-armv5te-wrs-linux-gnueabi.sh
$ $CC hello.c

Win32 way:
C:\Users\mhatle\win-sdk>environment-setup-armv5te-wrs-linux-gnueabi.bat

C:\Users\mhatle\win-sdk>%CC% hello.c

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 classes/toolchain-scripts-mingw32.bbclass   | 87 +++++++++++++++++++++++++++++
 recipes-core/meta/meta-environment.bbappend |  4 ++
 2 files changed, 91 insertions(+)
 create mode 100644 classes/toolchain-scripts-mingw32.bbclass
 create mode 100644 recipes-core/meta/meta-environment.bbappend

diff --git a/classes/toolchain-scripts-mingw32.bbclass b/classes/toolchain-scripts-mingw32.bbclass
new file mode 100644
index 0000000..5ac69a1
--- /dev/null
+++ b/classes/toolchain-scripts-mingw32.bbclass
@@ -0,0 +1,87 @@
+# Based off of the oe-core meta/classes/toolchain-scripts.bbclass version
+toolchain_create_sdk_env_script_sdkmingw32 () {
+	# Create environment setup script
+	libdir=${4:-${libdir}}
+	sysroot=${3:-${SDKTARGETSYSROOT}}
+	sysroot=${sysroot##${SDKPATH}}
+	pathnative=${SDKPATHNATIVE}
+	pathnative=${pathnative##${SDKPATH}}
+	multimach_target_sys=${2:-${REAL_MULTIMACH_TARGET_SYS}}
+	script=${1:-${SDK_OUTPUT}/${SDKPATH}/environment-setup-$multimach_target_sys}.bat
+	rm -f $script
+	touch $script
+	echo 'set SDKROOT=%~dp0%' >> $script
+	echo 'set SDKTARGETSYSROOT=%SDKROOT%'"$sysroot" >> $script
+	EXTRAPATH=""
+	for i in ${CANADIANEXTRAOS}; do
+		EXTRAPATH="$EXTRAPATH;%~\$PATH:0%$pathnative${bindir_nativesdk}/${TARGET_ARCH}${TARGET_VENDOR}-$i"
+	done
+	echo 'set PATH=%SDKROOT%'"$pathnative"'${bindir_nativesdk};%SDKROOT%'"$pathnative"'${bindir_nativesdk}/${TARGET_SYS}'"$EXTRAPATH"';%PATH%' >> $script
+	echo 'set PKG_CONFIG_SYSROOT_DIR=%SDKTARGETSYSROOT%' >> $script
+	echo 'set PKG_CONFIG_PATH=%SDKTARGETSYSROOT%'"$libdir"'/pkgconfig' >> $script
+	echo 'set CONFIG_SITE=%SDKROOT%/site-config-'"${multimach_target_sys}" >> $script
+	echo 'set OECORE_NATIVE_SYSROOT=%SDKROOT%'"$pathnative" >> $script
+	echo 'set OECORE_TARGET_SYSROOT=%SDKTARGETSYSROOT%' >> $script
+	echo 'set OECORE_ACLOCAL_OPTS=-I %SDKROOT%'"$pathnative"'/usr/share/aclocal' >> $script
+	echo 'set PYTHONHOME=%SDKROOT%'"$pathnative"'${prefix_nativesdk}' >> $script
+
+	toolchain_shared_env_script
+
+	# Change unix '/' to Win32 '\'
+	sed -e 's,/,\\,g' -i $script
+
+	# Make the file windows friendly...
+	awk 'sub("$", "\r")' $script > $script.new
+	mv $script.new $script
+}
+
+toolchain_shared_env_script_sdkmingw32 () {
+	echo 'set CC=${TARGET_PREFIX}gcc ${TARGET_CC_ARCH} --sysroot=%SDKTARGETSYSROOT%' >> $script
+	echo 'set CXX=${TARGET_PREFIX}g++ ${TARGET_CC_ARCH} --sysroot=%SDKTARGETSYSROOT%' >> $script
+	echo 'set CPP=${TARGET_PREFIX}gcc -E ${TARGET_CC_ARCH} --sysroot=%SDKTARGETSYSROOT%' >> $script
+	echo 'set AS=${TARGET_PREFIX}as ${TARGET_AS_ARCH}' >> $script
+	echo 'set LD=${TARGET_PREFIX}ld ${TARGET_LD_ARCH} --sysroot=%SDKTARGETSYSROOT%' >> $script
+	echo 'set GDB=${TARGET_PREFIX}gdb' >> $script
+	echo 'set STRIP=${TARGET_PREFIX}strip' >> $script
+	echo 'set RANLIB=${TARGET_PREFIX}ranlib' >> $script
+	echo 'set OBJCOPY=${TARGET_PREFIX}objcopy' >> $script
+	echo 'set OBJDUMP=${TARGET_PREFIX}objdump' >> $script
+	echo 'set AR=${TARGET_PREFIX}ar' >> $script
+	echo 'set NM=${TARGET_PREFIX}nm' >> $script
+	echo 'set M4=m4' >> $script
+	echo 'set TARGET_PREFIX=${TARGET_PREFIX}' >> $script
+	echo 'set CONFIGURE_FLAGS=--target=${TARGET_SYS} --host=${TARGET_SYS} --build=${SDK_ARCH}-linux --with-libtool-sysroot=%SDKTARGETSYSROOT%' >> $script
+	echo 'set CFLAGS=${TARGET_CFLAGS}' >> $script
+	echo 'set CXXFLAGS=${TARGET_CXXFLAGS}' >> $script
+	echo 'set LDFLAGS=${TARGET_LDFLAGS}' >> $script
+	echo 'set CPPFLAGS=${TARGET_CPPFLAGS}' >> $script
+	echo 'set OECORE_DISTRO_VERSION=${DISTRO_VERSION}' >> $script
+	echo 'set OECORE_SDK_VERSION=${SDK_VERSION}' >> $script
+	echo 'set ARCH=${ARCH}' >> $script
+	echo 'set CROSS_COMPILE=${TARGET_PREFIX}' >> $script
+
+	cat >> $script <<EOF
+
+@REM Append environment subscripts
+
+@IF EXIST %OECORE_TARGET_SYSROOT%\\environment-setup.d (
+   FOR %%x IN (%OECORE_TARGET_SYSROOT%\\environment-setup.d\\*.bat) DO call "%%x"
+)
+
+@IF EXIST %OECORE_NATIVE_SYSROOT%\\environment-setup.d (
+   FOR %%x IN (%OECORE_NATIVE_SYSROOT%\\environment-setup.d\\*.bat) DO call "%%x"
+)
+EOF
+}
+
+toolchain_create_sdk_siteconfig_append_sdkmingw32 () {
+        # Make the file windows friendly...
+        awk 'sub("$", "\r")' $siteconfig > $siteconfig.new
+        mv $siteconfig.new $siteconfig
+}
+
+toolchain_create_sdk_version_append_sdkmingw32 () {
+        # Make the file windows friendly...
+        awk 'sub("$", "\r")' $versionfile > $versionfile.new
+        mv $versionfile.new $versionfile
+}
diff --git a/recipes-core/meta/meta-environment.bbappend b/recipes-core/meta/meta-environment.bbappend
new file mode 100644
index 0000000..0846042
--- /dev/null
+++ b/recipes-core/meta/meta-environment.bbappend
@@ -0,0 +1,4 @@
+TCSCRIPTS ?= ""
+TCSCRIPTS_sdkmingw32 = "toolchain-scripts-mingw32"
+
+inherit ${TCSCRIPTS}
-- 
2.5.0


