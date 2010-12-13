Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6CDBE4C811AF
	for <yocto@yoctoproject.org>; Mon, 13 Dec 2010 06:05:05 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Dec 2010 04:05:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,335,1288594800"; d="scan'208";a="635781568"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2010 04:05:04 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PS7FF-00034l-SL; Mon, 13 Dec 2010 20:11:09 +0800
Message-Id: <c11924451455e5ca9cf7420d5411a82e9d5b37d0.1292242072.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1292242072.git.lianhao.lu@intel.com>
References: <cover.1292242072.git.lianhao.lu@intel.com>
From: Lianhao Lu <lianhao.lu@intel.com>
Date: Mon, 13 Dec 2010 18:47:11 +0800
To: yocto@yoctoproject.org
Subject: [PATCH 1/1] Fix bug #565.
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
X-List-Received-Date: Mon, 13 Dec 2010 12:05:05 -0000

Added package of meta-environment-${TARGET_ARCH} for environment
files.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/toolchain-scripts.bbclass         |   32 ++++++++++
 meta/recipes-core/meta/meta-environment.bb     |   74 ++++++++++++++++++++++++
 meta/recipes-core/tasks/task-cross-canadian.bb |    1 +
 3 files changed, 107 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-core/meta/meta-environment.bb

diff --git a/meta/classes/toolchain-scripts.bbclass b/meta/classes/toolchain-scripts.bbclass
index c393d99..4093635 100644
--- a/meta/classes/toolchain-scripts.bbclass
+++ b/meta/classes/toolchain-scripts.bbclass
@@ -60,3 +60,35 @@ toolchain_create_tree_env_script () {
 	echo 'export POKY_NATIVE_SYSROOT="${STAGING_DIR_NATIVE}"' >> $script
 	echo 'export POKY_TARGET_SYSROOT="${STAGING_DIR_TARGET}"' >> $script
 }
+
+# This function creates an environment-setup-script for use by the ADT installer
+toolchain_create_sdk_env_script_for_installer () {
+	# Create environment setup script
+	script=${SDK_OUTPUT}/${SDKPATH}/environment-setup-${OLD_MULTIMACH_TARGET_SYS}
+	rm -f $script
+	touch $script
+	echo 'export PATH=${SDKPATHNATIVE}${bindir_nativesdk}:${SDKPATHNATIVE}${bindir_nativesdk}/${OLD_MULTIMACH_TARGET_SYS}:$PATH' >> $script
+	echo 'export PKG_CONFIG_SYSROOT_DIR=##SDKTARGETSYSROOT##' >> $script
+	echo 'export PKG_CONFIG_PATH=##SDKTARGETSYSROOT##${libdir}/pkgconfig' >> $script
+	echo 'export CONFIG_SITE=${SDKPATH}/site-config-${OLD_MULTIMACH_TARGET_SYS}' >> $script
+	echo 'export CC=${TARGET_PREFIX}gcc' >> $script
+	echo 'export CXX=${TARGET_PREFIX}g++' >> $script
+	echo 'export GDB=${TARGET_PREFIX}gdb' >> $script
+	echo 'export TARGET_PREFIX=${TARGET_PREFIX}' >> $script
+	echo 'export CONFIGURE_FLAGS="--target=${TARGET_SYS} --host=${TARGET_SYS} --build=${SDK_ARCH}-linux"' >> $script
+	if [ "${TARGET_OS}" = "darwin8" ]; then
+		echo 'export TARGET_CFLAGS="-I##SDKTARGETSYSROOT##${includedir}"' >> $script
+		echo 'export TARGET_LDFLAGS="-L##SDKTARGETSYSROOT##{libdir}"' >> $script
+		# Workaround darwin toolchain sysroot path problems
+		cd ${SDK_OUTPUT}${SDKTARGETSYSROOT}/usr
+		ln -s /usr/local local
+	fi
+	echo 'export CFLAGS="${TARGET_CC_ARCH} --sysroot=##SDKTARGETSYSROOT##"' >> $script
+	echo 'export CXXFLAGS="${TARGET_CC_ARCH} --sysroot=##SDKTARGETSYSROOT## -I##SDKTARGETSYSROOT##${GXX_INCLUDEDIR}"' >> $script
+	echo "# alias opkg='LD_LIBRARY_PATH=${SDKPATHNATIVE}${libdir_nativesdk} ${SDKPATHNATIVE}${bindir_nativesdk}/opkg-cl -f ${SDKPATHNATIVE}/${sysconfdir}/opkg-sdk.conf -o ${SDKPATHNATIVE}'" >> $script
+	echo "# alias opkg-target='LD_LIBRARY_PATH=${SDKPATHNATIVE}${libdir_nativesdk} ${SDKPATHNATIVE}${bindir_nativesdk}/opkg-cl -f ##SDKTARGETSYSROOT##${sysconfdir}/opkg.conf -o ##SDKTARGETSYSROOT##'" >> $script
+	echo 'export POKY_NATIVE_SYSROOT="${SDKPATHNATIVE}"' >> $script
+	echo 'export POKY_TARGET_SYSROOT="##SDKTARGETSYSROOT##"' >> $script
+	echo 'export POKY_DISTRO_VERSION="${DISTRO_VERSION}"' >> $script
+	echo 'export POKY_SDK_VERSION="${SDK_VERSION}"' >> $script
+}
diff --git a/meta/recipes-core/meta/meta-environment.bb b/meta/recipes-core/meta/meta-environment.bb
new file mode 100644
index 0000000..e8d4a80
--- /dev/null
+++ b/meta/recipes-core/meta/meta-environment.bb
@@ -0,0 +1,74 @@
+DESCRIPTION = "Packge of environment files for SDK"
+LICENSE = "MIT"
+PR = "r0"
+
+inherit meta toolchain-scripts
+
+TRANSLATED_TARGET_ARCH ?= "${TARGET_ARCH}"
+
+EXCLUDE_FROM_WORLD = "1"
+
+SDK_DIR = "${WORKDIR}/sdk"
+SDK_OUTPUT = "${SDK_DIR}/image"
+SDK_DEPLOY = "${TMPDIR}/deploy/sdk"
+
+SDKTARGETSYSROOT = "${SDKPATH}/sysroots/${TARGET_SYS}"
+
+# Save MULTIMACH_TARGET_SYS
+OLD_MULTIMACH_TARGET_SYS := "${MULTIMACH_TARGET_SYS}"
+MULTIMACH_TARGET_SYS = "${MULTIMACH_ARCH}${SDK_VENDOR}-${SDK_OS}"
+
+# Save PACKAGE_ARCH
+OLD_PACKAGE_ARCH := ${BASE_PACKAGE_ARCH}
+BASE_PACKAGE_ARCH = "${SDK_ARCH}-nativesdk"
+
+#change SSTATE_PKGARCH due to the PACKAGE_ARCH change
+SSTATE_PKGARCH = "${SDK_ARCH}"
+
+CONFIG_SITE = "${@siteinfo_get_files(d)}"
+GXX_INCLUDEDIR := "${includedir}/c++"
+
+do_generate_content[nostamp] = "1"
+do_generate_content() {
+
+    rm -rf ${SDK_OUTPUT}
+    mkdir -p ${SDK_OUTPUT}/${SDKPATH}
+
+    siteconfig=${SDK_OUTPUT}/${SDKPATH}/site-config-${OLD_MULTIMACH_TARGET_SYS}
+    
+    touch $siteconfig
+    for sitefile in ${CONFIG_SITE} ; do
+	cat $sitefile >> $siteconfig
+    done
+
+    toolchain_create_sdk_env_script_for_installer
+
+    # Add version information
+    versionfile=${SDK_OUTPUT}/${SDKPATH}/version-${OLD_MULTIMACH_TARGET_SYS}
+    touch $versionfile
+    echo 'Distro: ${DISTRO}' >> $versionfile
+    echo 'Distro Version: ${DISTRO_VERSION}' >> $versionfile
+    echo 'Metadata Revision: ${METADATA_REVISION}' >> $versionfile
+    echo 'Timestamp: ${DATETIME}' >> $versionfile
+}
+do_generate_content[recrdeptask] = "do_compile"
+addtask generate_content before do_install after do_compile
+
+do_install[nostamp] = "1"
+do_install() {
+    install -d ${D}/${SDKPATH}
+    install -m 0644 -t ${D}/${SDKPATH} ${SDK_OUTPUT}/${SDKPATH}/*
+}
+
+PN = "meta-environment-${TRANSLATED_TARGET_ARCH}"
+PACKAGES = "${PN}"
+FILES_${PN}= " \
+    ${SDKPATH}/* \
+    "
+
+do_fetch[noexec] = "1"
+do_unpack[noexec] = "1"
+do_patch[noexec] = "1"
+do_configure[noexec] = "1"
+do_compile[noexec] = "1"
+do_populage_sysroot[noexec] = "1"
diff --git a/meta/recipes-core/tasks/task-cross-canadian.bb b/meta/recipes-core/tasks/task-cross-canadian.bb
index 7170faa..64e53fe 100644
--- a/meta/recipes-core/tasks/task-cross-canadian.bb
+++ b/meta/recipes-core/tasks/task-cross-canadian.bb
@@ -12,5 +12,6 @@ RDEPENDS_${PN} = "\
     binutils-cross-canadian-${TRANSLATED_TARGET_ARCH} \
     gdb-cross-canadian-${TRANSLATED_TARGET_ARCH} \
     gcc-cross-canadian-${TRANSLATED_TARGET_ARCH} \
+    meta-environment-${TRANSLATED_TARGET_ARCH} \
     "
 
-- 
1.7.0.4


