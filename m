Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 39D684C81001
	for <yocto@yoctoproject.org>; Fri, 10 Dec 2010 10:25:45 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oBAGPgmg027932;
	Fri, 10 Dec 2010 16:25:42 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 27321-10; Fri, 10 Dec 2010 16:25:38 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oBAGPZnC027926
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 10 Dec 2010 16:25:35 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Lianhao Lu <lianhao.lu@intel.com>
In-Reply-To: <cover.1291174318.git.lianhao.lu@intel.com>
References: <cover.1291174318.git.lianhao.lu@intel.com>
Date: Fri, 10 Dec 2010 16:25:21 +0000
Message-ID: <1291998321.14420.59.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] Bug #528 fixing
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
X-List-Received-Date: Fri, 10 Dec 2010 16:25:45 -0000
X-Groupsio-MsgNum: 536
Content-Type: multipart/mixed; boundary="=-Ye45cA/yzfzrdr2IHV1x"

--=-Ye45cA/yzfzrdr2IHV1x
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Lianhao,

On Wed, 2010-12-01 at 11:31 +0800, Lianhao Lu wrote:
> Since this my very first time trying to contribute to distro, so let me 
> put some fixing details here and warmly welcome the reivew/comment.
> 
> The purpose of this fixing is to add target name in the package name of
> gcc(gdb/binutils)-cross-canadian so multiple cross-canadian toolchains 
> can be installed into the same SDK sysroot.
> 
> We choose the PN instead of the PACKAGE(or PKG_pn) to change the package 
> name because the -locale package is named by the PN. By changing PN, we 
> have different -locale and -doc packages for different target.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: llu/fix
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/fix

These patches are just what we need, thanks. 

We do however need to go one step further and complete the change which
is to remove the idea of "cross-canadian" packages from the packaging
backend and make all these "nativesdk", now there is no naming conflict.

I've attached a patch which starts to do this, I'm running some builds
to test this out a bit but the builds are not completing at the
moment :(. 

Also note that I had to make the task-cross-canadian contain the
TARGET_ARCH in the PN which meant moving the TRANSLATED_TARGET_ARCH into
the more global namespace which I'm not too keen on.

Cheers,

Richard

(For reference, patches to Poky should go to the Poky list)


--=-Ye45cA/yzfzrdr2IHV1x
Content-Disposition: attachment; filename="canadianupdate.patch"
Content-Type: text/x-patch; name="canadianupdate.patch"; charset="UTF-8"
Content-Transfer-Encoding: 7bit

diff --git a/meta/classes/cross-canadian.bbclass b/meta/classes/cross-canadian.bbclass
index 7971147..7360e1c 100644
--- a/meta/classes/cross-canadian.bbclass
+++ b/meta/classes/cross-canadian.bbclass
@@ -1,18 +1,30 @@
+#
+# NOTE - When using this class the user is repsonsible for ensuring that
+# TRANSLATED_TARGET_ARCH is added into PN. This ensures that if the TARGET_ARCH
+# is changed, another nativesdk xxx-canadian-cross can be installed
+#
+
+
 # SDK packages are built either explicitly by the user,
 # or indirectly via dependency.  No need to be in 'world'.
 EXCLUDE_FROM_WORLD = "1"
 
 STAGING_BINDIR_TOOLCHAIN = "${STAGING_DIR_NATIVE}${bindir_native}/${SDK_ARCH}${SDK_VENDOR}-${SDK_OS}:${STAGING_DIR_NATIVE}${bindir_native}/${BASE_PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}"
 
-# Save MULTIMACH_ARCH
+#
+# Update BASE_PACKAGE_ARCH and PACKAGE_ARCHS
+#
 OLD_MULTIMACH_ARCH := "${MULTIMACH_ARCH}"
-# Save PACKAGE_ARCH
-OLD_PACKAGE_ARCH := ${PACKAGE_ARCH}
-PACKAGE_ARCH = "${SDK_ARCH}-${TARGET_ARCH}-canadian"
-PACKAGE_ARCHS = "${PACKAGE_ARCH}"
-# Also save BASE_PACKAGE_ARCH since HOST_ARCH can influence it
-OLD_BASE_PACKAGE_ARCH := "${BASE_PACKAGE_ARCH}"
-BASE_PACKAGE_ARCH = "${OLD_BASE_PACKAGE_ARCH}"
+OLD_PACKAGE_ARCH := ${BASE_PACKAGE_ARCH}
+BASE_PACKAGE_ARCH = "${SDK_ARCH}-nativesdk"
+python () {
+    archs = bb.data.getVar('PACKAGE_ARCHS', d, True).split()
+    sdkarchs = []
+    for arch in archs:
+        sdkarchs.append(arch + '-nativesdk')
+    bb.data.setVar('PACKAGE_ARCHS', " ".join(sdkarchs), d)
+}
+MULTIMACH_TARGET_SYS = "${MULTIMACH_ARCH}${HOST_VENDOR}-${HOST_OS}"
 
 INHIBIT_DEFAULT_DEPS = "1"
 
@@ -69,5 +81,3 @@ export PKG_CONFIG_SYSROOT_DIR = "${STAGING_DIR_HOST}"
 # Cross-canadian packages need to pull in nativesdk dynamic libs
 SHLIBSDIR = "${STAGING_DIR}/${SDK_ARCH}-nativesdk${SDK_VENDOR}-${BUILD_OS}/shlibs"
 
-# handle x86_64 TARGET_ARCH name
-TRANSLATED_TARGET_ARCH ?= ${TARGET_ARCH}
diff --git a/meta/classes/package_ipk.bbclass b/meta/classes/package_ipk.bbclass
index c1393fa..5ddd6c6 100644
--- a/meta/classes/package_ipk.bbclass
+++ b/meta/classes/package_ipk.bbclass
@@ -79,8 +79,6 @@ package_update_index_ipk () {
 		packagedirs="$packagedirs ${DEPLOY_DIR_IPK}/$arch ${DEPLOY_DIR_IPK}/$sdkarch-nativesdk"
 	done
 
-	packagedirs="$packagedirs ${DEPLOY_DIR_IPK}/${SDK_ARCH}-${TARGET_ARCH}-canadian"
-
 	for pkgdir in $packagedirs; do
 		if [ -e $pkgdir/ ]; then
 			touch $pkgdir/Packages
@@ -112,9 +110,6 @@ package_generate_ipkg_conf () {
 		        echo "src oe-$sdkarch$extension file:${DEPLOY_DIR_IPK}/$sdkarch$extension" >> ${IPKGCONF_SDK}
 		fi
 	done
-	if [ -e ${DEPLOY_DIR_IPK}/${SDK_ARCH}-${TARGET_ARCH}-canadian/Packages ] ; then
-	        echo "src oe-${SDK_ARCH}-${TARGET_ARCH}-canadian file:${DEPLOY_DIR_IPK}/${SDK_ARCH}-${TARGET_ARCH}-canadian" >> ${IPKGCONF_SDK}
-	fi
 }
 
 package_generate_archlist () {
@@ -130,7 +125,6 @@ package_generate_archlist () {
 		echo "arch $sdkarch$extension $priority" >> ${IPKGCONF_SDK}
 		priority=$(expr $priority + 5)
 	done
-	echo "arch ${SDK_ARCH}-${TARGET_ARCH}-canadian $priority" >> ${IPKGCONF_SDK}
 }
 
 python do_package_ipk () {
diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index abd2bb5..d3fd26d 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -726,3 +726,5 @@ TARGET_ARCH[unexport] = "1"
 # (breaks sysvinit at least)
 DISTRO[unexport] = "1"
 
+# Used by canadian-cross to handle string conversions on TARGET_ARCH where needed
+TRANSLATED_TARGET_ARCH ??= ${TARGET_ARCH}
diff --git a/meta/recipes-core/meta/meta-toolchain.bb b/meta/recipes-core/meta/meta-toolchain.bb
index 8b62fab..40f8d7e 100644
--- a/meta/recipes-core/meta/meta-toolchain.bb
+++ b/meta/recipes-core/meta/meta-toolchain.bb
@@ -13,7 +13,7 @@ SDKTARGETSYSROOT = "${SDKPATH}/sysroots/${TARGET_SYS}"
 IPKG_HOST = "opkg-cl -f ${IPKGCONF_SDK} -o ${SDK_OUTPUT}"
 IPKG_TARGET = "opkg-cl -f ${IPKGCONF_TARGET} -o ${SDK_OUTPUT}/${SDKTARGETSYSROOT}"
 
-TOOLCHAIN_HOST_TASK ?= "task-sdk-host task-cross-canadian"
+TOOLCHAIN_HOST_TASK ?= "task-sdk-host task-cross-canadian-${TRANSLATED_TARGET_ARCH}"
 TOOLCHAIN_TARGET_TASK ?= "task-poky-standalone-sdk-target task-poky-standalone-sdk-target-dbg"
 TOOLCHAIN_OUTPUTNAME ?= "${SDK_NAME}-toolchain-${DISTRO_VERSION}"
 
diff --git a/meta/recipes-core/tasks/task-cross-canadian.bb b/meta/recipes-core/tasks/task-cross-canadian.bb
index c32afdc..7170faa 100644
--- a/meta/recipes-core/tasks/task-cross-canadian.bb
+++ b/meta/recipes-core/tasks/task-cross-canadian.bb
@@ -1,4 +1,5 @@
 DESCRIPTION = "Host SDK package for cross canadian toolchain" 
+PN = "task-cross-canadian-${TRANSLATED_TARGET_ARCH}"
 PR = "r0"
 LICENSE = "MIT"
 ALLOW_EMPTY = "1"

--=-Ye45cA/yzfzrdr2IHV1x--
