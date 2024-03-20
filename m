Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA16CCD11BF
	for <webhook@archiver.kernel.org>; Wed, 20 Mar 2024 18:53:54 +0000 (UTC)
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com [209.85.216.65])
 by mx.groups.io with SMTP id smtpd.web10.53879.1710960825891806517
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Mar 2024 11:53:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=Q9KVXl+Y;
 spf=pass (domain: konsulko.com, ip: 209.85.216.65, mailfrom: tim.orling@konsulko.com)
Received: by mail-pj1-f65.google.com with SMTP id 98e67ed59e1d1-29f9af2e0b7so199442a91.1
        for <yocto@lists.yoctoproject.org>; Wed, 20 Mar 2024 11:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1710960824; x=1711565624; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xfHY2ngMQ4/JaHsBJIoFcVL+EpL0UzPNFo3cwl41yWk=;
        b=Q9KVXl+Yg2RpqDQ01FzCwY60KTr5UEr8SHsi7WjFn/CSxlTq0SvFJ5DcBhhI5i9fkW
         /q//kJRXWgMVvLDSl7cJRhu3wVWyZcpLfi2AavosPvHqd5wtmVIGzAEaIdKjji2YuLJa
         pVetWLmr/M/ijH53S+spFivuWj6x+qHojqSxg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710960824; x=1711565624;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xfHY2ngMQ4/JaHsBJIoFcVL+EpL0UzPNFo3cwl41yWk=;
        b=Vn+hhXjWrWxXk4VkstBewQbNRtTaVYOEpJ13I6cu4AZ7y3g2c0TMgK0aqXPnuRZssW
         VlzbpaJxqpDbkkrw54kWgI/+X5Roc5YpoleCh+la5DAjyXdOWeEJudifuz7yjDorzvL5
         XW3tnpr5gkvsFFZQ14GEq6LBgGFQBorg5GSA6Ddtd+wWxts7oV43ceEoKsh093BRhd2j
         F+NJOTAxWp/NKdAciuEGV60lPBC2lRYxbboSZgsmNIuT+QE1UY7+qqJvA2nLtGL9zdj8
         iymv+Mew8pYaGSeWGGi099nvYuT9qKFHFJr9ZxjAFawc99d0Y7YCMISSuwuIDFEjXo/f
         trWA==
X-Gm-Message-State: AOJu0Ywd0d/krKTO7LUw8WIodjm0V2LA1CSPGHRmaVDHixbo2EtCodzC
	6WrhQEDUMtgLxhJpxUVwiBmM4kX7+hupKkeOAq/18tEwQ5CvujFWTd839+ewHnpVMRV8ug2ju0U
	PBaWFbgHA
X-Google-Smtp-Source: AGHT+IFekKMkBl/2oDUHKja4fpfCY0cyU9dR67C2hGKG59EpV8sPMS/5bJLYz7jyAlmq+CuRQlMtEw==
X-Received: by 2002:a17:90a:6f01:b0:29c:7769:419b with SMTP id d1-20020a17090a6f0100b0029c7769419bmr6606574pjk.9.1710960824096;
        Wed, 20 Mar 2024 11:53:44 -0700 (PDT)
Received: from localhost ([2601:1c0:ca00:bd60:fa32:ee43:a809:30af])
        by smtp.gmail.com with ESMTPSA id x20-20020a17090abc9400b00298e11b600dsm1965162pjr.27.2024.03.20.11.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Mar 2024 11:53:43 -0700 (PDT)
From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [meta-lts-mixins][scarthgap/u-boot][RFC PATCH 1/2] Initial commit: u-boot 2024.04-rc3
Date: Wed, 20 Mar 2024 11:53:16 -0700
Message-Id: <20240320185317.2173087-2-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240320185317.2173087-1-tim.orling@konsulko.com>
References: <20240320185317.2173087-1-tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Mar 2024 18:53:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62807

At the time this was written, neither scarthgap nor u-boot had been
released at the target April 2024 releases.

Release announcement:
https://lists.denx.de/pipermail/u-boot/2024-February/546867.html

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 LICENSE.MIT                                   |  25 ++
 README.md                                     |  13 +
 SECURITY.md                                   |  22 ++
 conf/layer.conf                               |  14 +
 recipes-bsp/u-boot/u-boot-common.inc          |  24 ++
 recipes-bsp/u-boot/u-boot-configure.inc       |  38 ++
 recipes-bsp/u-boot/u-boot-tools.inc           |  85 +++++
 .../u-boot/u-boot-tools_2024.04-rc3.bb        |   2 +
 recipes-bsp/u-boot/u-boot.inc                 | 345 ++++++++++++++++++
 recipes-bsp/u-boot/u-boot_2024.04-rc3.bb      |   5 +
 10 files changed, 573 insertions(+)
 create mode 100644 LICENSE.MIT
 create mode 100644 README.md
 create mode 100644 SECURITY.md
 create mode 100644 conf/layer.conf
 create mode 100644 recipes-bsp/u-boot/u-boot-common.inc
 create mode 100644 recipes-bsp/u-boot/u-boot-configure.inc
 create mode 100644 recipes-bsp/u-boot/u-boot-tools.inc
 create mode 100644 recipes-bsp/u-boot/u-boot-tools_2024.04-rc3.bb
 create mode 100644 recipes-bsp/u-boot/u-boot.inc
 create mode 100644 recipes-bsp/u-boot/u-boot_2024.04-rc3.bb

diff --git a/LICENSE.MIT b/LICENSE.MIT
new file mode 100644
index 0000000..a6919eb
--- /dev/null
+++ b/LICENSE.MIT
@@ -0,0 +1,25 @@
+Permission is hereby granted, free of charge, to any person obtaining a copy
+of this software and associated documentation files (the "Software"), to deal
+in the Software without restriction, including without limitation the rights
+to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+copies of the Software, and to permit persons to whom the Software is
+furnished to do so, subject to the following conditions:
+
+The above copyright notice and this permission notice shall be included in
+all copies or substantial portions of the Software.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
+SOFTWARE.
+
+Note:
+Individual files contain the following tag instead of the full license text.
+
+    SPDX-License-Identifier: MIT
+
+This enables machine processing of license information based on the SPDX
+License Identifiers that are here available: http://spdx.org/licenses/
diff --git a/README.md b/README.md
new file mode 100644
index 0000000..5eb92c4
--- /dev/null
+++ b/README.md
@@ -0,0 +1,13 @@
+# meta-lts-mixin scarthgap/u-boot
+
+"Mixin" layer for adding current u-boot into the Yocto Project LTS.
+
+At the time Scarthgap was released in April 2024 it included u-boot 2024.01,
+and officially Scarthgap supports only that. This thin special-purpose
+mixin layer is meant to provide a current u-boot for Scarthgap
+by extending or backporting the appropriate recipes from the master branch of
+openembedded-core.
+
+Maintainers:
+- Tim Orling <tim.orling AT konsulko DOT com>
+- Tom Rini <tom.rini AT konsulko DOT com>
diff --git a/SECURITY.md b/SECURITY.md
new file mode 100644
index 0000000..8d3ebc6
--- /dev/null
+++ b/SECURITY.md
@@ -0,0 +1,22 @@
+How to Report a Potential Vulnerability?
+========================================
+
+If you would like to report a public issue (for example, one with a released
+CVE number), please report it using the
+[Security Bugzilla](https://bugzilla.yoctoproject.org/enter_bug.cgi?product=Security)
+
+If you are dealing with a not-yet released or urgent issue, please send a
+message to security AT yoctoproject DOT org, including as many details as
+possible: the layer or software module affected, the recipe and its version,
+and any example code, if available.
+
+Branches maintained with security fixes
+---------------------------------------
+
+See [Stable release and LTS](https://wiki.yoctoproject.org/wiki/Stable_Release_and_LTS)
+for detailed info regarding the policies and maintenance of Stable branches.
+
+The [Release page](https://wiki.yoctoproject.org/wiki/Releases) contains a list of all
+releases of the Yocto Project. Versions in grey are no longer actively maintained with
+security patches, but well-tested patches may still be accepted for them for
+significant issues.
diff --git a/conf/layer.conf b/conf/layer.conf
new file mode 100644
index 0000000..426f7f8
--- /dev/null
+++ b/conf/layer.conf
@@ -0,0 +1,14 @@
+# We have a conf and classes directory, but we have classes that should
+# override those in oe-core, so prepend to BBPATH
+BBPATH =. "${LAYERDIR}:"
+
+# We have a recipes directory, add to BBFILES
+BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "lts-u-boot-mixin"
+BBFILE_PATTERN_lts-u-boot-mixin := "^${LAYERDIR}/"
+BBFILE_PRIORITY_lts-u-boot-mixin = "6"
+
+LAYERSERIES_COMPAT_lts-u-boot-mixin = "scarthgap"
+
+LAYERDEPENDS_lts-u-boot-mixin = "core"
diff --git a/recipes-bsp/u-boot/u-boot-common.inc b/recipes-bsp/u-boot/u-boot-common.inc
new file mode 100644
index 0000000..3f29f23
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot-common.inc
@@ -0,0 +1,24 @@
+HOMEPAGE = "http://www.denx.de/wiki/U-Boot/WebHome"
+DESCRIPTION = "U-Boot, a boot loader for Embedded boards based on PowerPC, \
+ARM, MIPS and several other processors, which can be installed in a boot \
+ROM and used to initialize and test the hardware or to download and run \
+application code."
+SECTION = "bootloaders"
+DEPENDS += "flex-native bison-native python3-setuptools-native"
+
+LICENSE = "GPL-2.0-or-later"
+LIC_FILES_CHKSUM = "file://Licenses/README;md5=2ca5f2c35c8cc335f0a19756634782f1"
+PE = "1"
+
+# We use the revision in order to avoid having to fetch it from the
+# repo during parse
+SRCREV = "d49fa3defa50c6d3f04acbb52fd486c13c14ab6a"
+
+SRC_URI = "git://source.denx.de/u-boot/u-boot.git;protocol=https;branch=master"
+
+S = "${WORKDIR}/git"
+B = "${WORKDIR}/build"
+
+inherit pkgconfig
+
+do_configure[cleandirs] = "${B}"
diff --git a/recipes-bsp/u-boot/u-boot-configure.inc b/recipes-bsp/u-boot/u-boot-configure.inc
new file mode 100644
index 0000000..235623d
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot-configure.inc
@@ -0,0 +1,38 @@
+# This provides the logic for creating the desired u-boot config,
+# accounting for any *.cfg files added to SRC_URI.  It's separated
+# from u-boot.inc for use by recipes that need u-boot properly
+# configured but aren't doing a full build of u-boot itself (such as
+# its companion tools).
+
+inherit uboot-config cml1
+
+DEPENDS += "kern-tools-native"
+
+do_configure () {
+    if [ -n "${UBOOT_CONFIG}" ]; then
+        unset i j
+        for config in ${UBOOT_MACHINE}; do
+            i=$(expr $i + 1);
+            for type in ${UBOOT_CONFIG}; do
+                j=$(expr $j + 1);
+                if [ $j -eq $i ]; then
+                    oe_runmake -C ${S} O=${B}/${config} ${config}
+                    if [ -n "${@' '.join(find_cfgs(d))}" ]; then
+                        merge_config.sh -m -O ${B}/${config} ${B}/${config}/.config ${@" ".join(find_cfgs(d))}
+                        oe_runmake -C ${S} O=${B}/${config} oldconfig
+                    fi
+                fi
+            done
+            unset j
+        done
+        unset i
+    else
+        if [ -n "${UBOOT_MACHINE}" ]; then
+            oe_runmake -C ${S} O=${B} ${UBOOT_MACHINE}
+        else
+            oe_runmake -C ${S} O=${B} oldconfig
+        fi
+        merge_config.sh -m .config ${@" ".join(find_cfgs(d))}
+        cml1_do_configure
+    fi
+}
diff --git a/recipes-bsp/u-boot/u-boot-tools.inc b/recipes-bsp/u-boot/u-boot-tools.inc
new file mode 100644
index 0000000..09b3c3f
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot-tools.inc
@@ -0,0 +1,85 @@
+SUMMARY = "U-Boot bootloader tools"
+DEPENDS += "gnutls openssl util-linux swig-native"
+
+inherit python3native
+export STAGING_INCDIR="${STAGING_INCDIR_NATIVE}"
+
+PROVIDES = "${MLPREFIX}u-boot-mkimage ${MLPREFIX}u-boot-mkenvimage"
+PROVIDES:class-native = "u-boot-mkimage-native u-boot-mkenvimage-native"
+
+PACKAGES += "${PN}-mkimage ${PN}-mkenvimage"
+
+# Required for backward compatibility with "u-boot-mkimage-xxx.bb"
+RPROVIDES:${PN}-mkimage = "u-boot-mkimage"
+RREPLACES:${PN}-mkimage = "u-boot-mkimage"
+RCONFLICTS:${PN}-mkimage = "u-boot-mkimage"
+
+EXTRA_OEMAKE:class-target = 'CROSS_COMPILE="${TARGET_PREFIX}" CC="${CC} ${CFLAGS} ${LDFLAGS}" HOSTCC="${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}" STRIP=true V=1'
+EXTRA_OEMAKE:class-native = 'CC="${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}" HOSTCC="${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}" STRIP=true V=1'
+EXTRA_OEMAKE:class-nativesdk = 'CROSS_COMPILE="${HOST_PREFIX}" CC="${CC} ${CFLAGS} ${LDFLAGS}" HOSTCC="${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}" STRIP=true V=1'
+
+SED_CONFIG_EFI = '-e "s/CONFIG_EFI_LOADER=.*/# CONFIG_EFI_LOADER is not set/"'
+SED_CONFIG_EFI:x86 = ''
+SED_CONFIG_EFI:x86-64 = ''
+SED_CONFIG_EFI:arm = ''
+SED_CONFIG_EFI:armeb = ''
+SED_CONFIG_EFI:aarch64 = ''
+SED_CONFIG_EFI:loongarch64 = ''
+
+do_compile () {
+	# Yes, this is crazy. If you build on a system with git < 2.14 from scratch, the tree will
+	# be marked as "dirty" and the version will include "-dirty", leading to a reproducibility problem.
+	# The issue is the inode count for Licnses/README changing due to do_populate_lic hardlinking a
+	# copy of the file. We avoid this by ensuring the index is updated with a "git diff" before the
+	# u-boot machinery tries to determine the version.
+	#
+	# build$ ../git/scripts/setlocalversion ../git
+	# ""
+	# build$ ln ../git/
+	# build$ ln ../git/README ../foo
+	# build$ ../git/scripts/setlocalversion ../git
+	# ""-dirty
+	# (i.e. creating a hardlink dirties the index)
+	cd ${S}; git diff; cd ${B}
+
+	oe_runmake -C ${S} tools-only_defconfig O=${B}
+
+	# Disable CONFIG_CMD_LICENSE, license.h is not used by tools and
+	# generating it requires bin2header tool, which for target build
+	# is built with target tools and thus cannot be executed on host.
+	sed -i -e "s/CONFIG_CMD_LICENSE=.*/# CONFIG_CMD_LICENSE is not set/" ${SED_CONFIG_EFI} ${B}/.config
+
+	oe_runmake -C ${S} cross_tools NO_SDL=1 O=${B}
+}
+
+do_install () {
+	install -d ${D}${bindir}
+
+	# mkimage
+	install -m 0755 tools/mkimage ${D}${bindir}/uboot-mkimage
+	ln -sf uboot-mkimage ${D}${bindir}/mkimage
+
+	# mkenvimage
+	install -m 0755 tools/mkenvimage ${D}${bindir}/uboot-mkenvimage
+	ln -sf uboot-mkenvimage ${D}${bindir}/mkenvimage
+
+	# dumpimage
+	install -m 0755 tools/dumpimage ${D}${bindir}/uboot-dumpimage
+	ln -sf uboot-dumpimage ${D}${bindir}/dumpimage
+
+	# fit_check_sign
+	install -m 0755 tools/fit_check_sign ${D}${bindir}/uboot-fit_check_sign
+	ln -sf uboot-fit_check_sign ${D}${bindir}/fit_check_sign
+}
+
+ALLOW_EMPTY:${PN} = "1"
+FILES:${PN} = ""
+FILES:${PN}-mkimage = "${bindir}/uboot-mkimage ${bindir}/mkimage ${bindir}/uboot-dumpimage ${bindir}/dumpimage ${bindir}/uboot-fit_check_sign ${bindir}/fit_check_sign"
+FILES:${PN}-mkenvimage = "${bindir}/uboot-mkenvimage ${bindir}/mkenvimage"
+
+RDEPENDS:${PN}-mkimage += "dtc"
+RDEPENDS:${PN} += "${PN}-mkimage ${PN}-mkenvimage"
+RDEPENDS:${PN}:class-native = ""
+
+BBCLASSEXTEND = "native nativesdk"
+
diff --git a/recipes-bsp/u-boot/u-boot-tools_2024.04-rc3.bb b/recipes-bsp/u-boot/u-boot-tools_2024.04-rc3.bb
new file mode 100644
index 0000000..7eaf721
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot-tools_2024.04-rc3.bb
@@ -0,0 +1,2 @@
+require u-boot-common.inc
+require u-boot-tools.inc
diff --git a/recipes-bsp/u-boot/u-boot.inc b/recipes-bsp/u-boot/u-boot.inc
new file mode 100644
index 0000000..f5b43f6
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot.inc
@@ -0,0 +1,345 @@
+SUMMARY = "Universal Boot Loader for embedded devices"
+PROVIDES = "virtual/bootloader"
+
+PACKAGE_ARCH = "${MACHINE_ARCH}"
+
+DEPENDS += "${@bb.utils.contains('UBOOT_ENV_SUFFIX', 'scr', 'u-boot-mkimage-native', '', d)}"
+
+inherit uboot-config uboot-extlinux-config uboot-sign deploy python3native kernel-arch
+
+DEPENDS += "swig-native"
+
+EXTRA_OEMAKE = 'CROSS_COMPILE=${TARGET_PREFIX} CC="${TARGET_PREFIX}gcc ${TOOLCHAIN_OPTIONS} ${DEBUG_PREFIX_MAP}" V=1'
+EXTRA_OEMAKE += 'HOSTCC="${BUILD_CC} ${BUILD_CFLAGS} ${BUILD_LDFLAGS}"'
+EXTRA_OEMAKE += 'STAGING_INCDIR=${STAGING_INCDIR_NATIVE} STAGING_LIBDIR=${STAGING_LIBDIR_NATIVE}'
+
+PACKAGECONFIG ??= "openssl"
+# u-boot will compile its own tools during the build, with specific
+# configurations (aka when CONFIG_FIT_SIGNATURE is enabled) openssl is needed as
+# a host build dependency.
+PACKAGECONFIG[openssl] = ",,openssl-native"
+
+# Allow setting an additional version string that will be picked up by the
+# u-boot build system and appended to the u-boot version.  If the .scmversion
+# file already exists it will not be overwritten.
+UBOOT_LOCALVERSION ?= ""
+
+# Default name of u-boot initial env, but enable individual recipes to change
+# this value.
+UBOOT_INITIAL_ENV ?= "${PN}-initial-env"
+
+require u-boot-configure.inc
+
+do_savedefconfig() {
+	bbplain "Saving defconfig to:\n${B}/defconfig"
+	oe_runmake -C ${B} savedefconfig
+}
+do_savedefconfig[nostamp] = "1"
+addtask savedefconfig after do_configure
+UBOOT_ARCH_DIR = "${@'arm' if d.getVar('UBOOT_ARCH').startswith('arm') else d.getVar('UBOOT_ARCH')}"
+do_compile () {
+    if [ "${@bb.utils.filter('DISTRO_FEATURES', 'ld-is-gold', d)}" ]; then
+        sed -i 's/$(CROSS_COMPILE)ld$/$(CROSS_COMPILE)ld.bfd/g' ${S}/config.mk
+    fi
+
+    unset LDFLAGS
+    unset CFLAGS
+    unset CPPFLAGS
+
+    if [ ! -e ${B}/.scmversion -a ! -e ${S}/.scmversion ]
+    then
+        echo ${UBOOT_LOCALVERSION} > ${B}/.scmversion
+        echo ${UBOOT_LOCALVERSION} > ${S}/.scmversion
+    fi
+
+    if [ -n "${UBOOT_CONFIG}" -o -n "${UBOOT_DELTA_CONFIG}" ]
+    then
+        unset i j k
+        for config in ${UBOOT_MACHINE}; do
+            i=$(expr $i + 1);
+            for type in ${UBOOT_CONFIG}; do
+                j=$(expr $j + 1);
+                if [ $j -eq $i ]
+                then
+                    oe_runmake -C ${S} O=${B}/${config} ${UBOOT_MAKE_TARGET}
+                    for binary in ${UBOOT_BINARIES}; do
+                        k=$(expr $k + 1);
+                        if [ $k -eq $i ]; then
+                            cp ${B}/${config}/${binary} ${B}/${config}/${UBOOT_BINARYNAME}-${type}.${UBOOT_SUFFIX}
+                        fi
+                    done
+
+                    # Generate the uboot-initial-env
+                    if [ -n "${UBOOT_INITIAL_ENV}" ]; then
+                        oe_runmake -C ${S} O=${B}/${config} u-boot-initial-env
+                        cp ${B}/${config}/u-boot-initial-env ${B}/${config}/u-boot-initial-env-${type}
+                    fi
+
+                    unset k
+                fi
+            done
+            unset j
+        done
+        unset i
+    else
+        oe_runmake -C ${S} O=${B} ${UBOOT_MAKE_TARGET}
+
+        # Generate the uboot-initial-env
+        if [ -n "${UBOOT_INITIAL_ENV}" ]; then
+            oe_runmake -C ${S} O=${B} u-boot-initial-env
+        fi
+    fi
+
+    if [ -n "${UBOOT_ENV}" ] && [ "${UBOOT_ENV_SUFFIX}" = "scr" ]
+    then
+        ${UBOOT_MKIMAGE} -C none -A ${UBOOT_ARCH} -T script -d ${WORKDIR}/${UBOOT_ENV_SRC} ${WORKDIR}/${UBOOT_ENV_BINARY}
+    fi
+}
+
+do_install () {
+    if [ -n "${UBOOT_CONFIG}" ]
+    then
+        for config in ${UBOOT_MACHINE}; do
+            i=$(expr $i + 1);
+            for type in ${UBOOT_CONFIG}; do
+                j=$(expr $j + 1);
+                if [ $j -eq $i ]
+                then
+                    install -D -m 644 ${B}/${config}/${UBOOT_BINARYNAME}-${type}.${UBOOT_SUFFIX} ${D}/boot/${UBOOT_BINARYNAME}-${type}-${PV}-${PR}.${UBOOT_SUFFIX}
+                    ln -sf ${UBOOT_BINARYNAME}-${type}-${PV}-${PR}.${UBOOT_SUFFIX} ${D}/boot/${UBOOT_BINARY}-${type}
+                    ln -sf ${UBOOT_BINARYNAME}-${type}-${PV}-${PR}.${UBOOT_SUFFIX} ${D}/boot/${UBOOT_BINARY}
+
+                    # Install the uboot-initial-env
+                    if [ -n "${UBOOT_INITIAL_ENV}" ]; then
+                        install -D -m 644 ${B}/${config}/u-boot-initial-env-${type} ${D}/${sysconfdir}/${UBOOT_INITIAL_ENV}-${MACHINE}-${type}-${PV}-${PR}
+                        ln -sf ${UBOOT_INITIAL_ENV}-${MACHINE}-${type}-${PV}-${PR} ${D}/${sysconfdir}/${UBOOT_INITIAL_ENV}-${MACHINE}-${type}
+                        ln -sf ${UBOOT_INITIAL_ENV}-${MACHINE}-${type}-${PV}-${PR} ${D}/${sysconfdir}/${UBOOT_INITIAL_ENV}-${type}
+                        ln -sf ${UBOOT_INITIAL_ENV}-${MACHINE}-${type}-${PV}-${PR} ${D}/${sysconfdir}/${UBOOT_INITIAL_ENV}
+                    fi
+                fi
+            done
+            unset j
+        done
+        unset i
+    else
+        install -D -m 644 ${B}/${UBOOT_BINARY} ${D}/boot/${UBOOT_IMAGE}
+        ln -sf ${UBOOT_IMAGE} ${D}/boot/${UBOOT_BINARY}
+
+        # Install the uboot-initial-env
+        if [ -n "${UBOOT_INITIAL_ENV}" ]; then
+            install -D -m 644 ${B}/u-boot-initial-env ${D}/${sysconfdir}/${UBOOT_INITIAL_ENV}-${MACHINE}-${PV}-${PR}
+            ln -sf ${UBOOT_INITIAL_ENV}-${MACHINE}-${PV}-${PR} ${D}/${sysconfdir}/${UBOOT_INITIAL_ENV}-${MACHINE}
+            ln -sf ${UBOOT_INITIAL_ENV}-${MACHINE}-${PV}-${PR} ${D}/${sysconfdir}/${UBOOT_INITIAL_ENV}
+        fi
+    fi
+
+    if [ -n "${UBOOT_ELF}" ]
+    then
+        if [ -n "${UBOOT_CONFIG}" ]
+        then
+            for config in ${UBOOT_MACHINE}; do
+                i=$(expr $i + 1);
+                for type in ${UBOOT_CONFIG}; do
+                    j=$(expr $j + 1);
+                    if [ $j -eq $i ]
+                    then
+                        install -m 644 ${B}/${config}/${UBOOT_ELF} ${D}/boot/u-boot-${type}-${PV}-${PR}.${UBOOT_ELF_SUFFIX}
+                        ln -sf u-boot-${type}-${PV}-${PR}.${UBOOT_ELF_SUFFIX} ${D}/boot/${UBOOT_BINARY}-${type}
+                        ln -sf u-boot-${type}-${PV}-${PR}.${UBOOT_ELF_SUFFIX} ${D}/boot/${UBOOT_BINARY}
+                    fi
+                done
+                unset j
+            done
+            unset i
+        else
+            install -m 644 ${B}/${UBOOT_ELF} ${D}/boot/${UBOOT_ELF_IMAGE}
+            ln -sf ${UBOOT_ELF_IMAGE} ${D}/boot/${UBOOT_ELF_BINARY}
+        fi
+    fi
+
+    if [ -e ${WORKDIR}/fw_env.config ] ; then
+        install -d ${D}${sysconfdir}
+        install -m 644 ${WORKDIR}/fw_env.config ${D}${sysconfdir}/fw_env.config
+    fi
+
+    if [ -n "${SPL_BINARY}" ]
+    then
+        if [ -n "${UBOOT_CONFIG}" ]
+        then
+            for config in ${UBOOT_MACHINE}; do
+                i=$(expr $i + 1);
+                for type in ${UBOOT_CONFIG}; do
+                    j=$(expr $j + 1);
+                    if [ $j -eq $i ]
+                    then
+                         install -m 644 ${B}/${config}/${SPL_BINARY} ${D}/boot/${SPL_BINARYNAME}-${type}-${PV}-${PR}${SPL_DELIMITER}${SPL_SUFFIX}
+                         ln -sf ${SPL_BINARYNAME}-${type}-${PV}-${PR}${SPL_DELIMITER}${SPL_SUFFIX} ${D}/boot/${SPL_BINARYFILE}-${type}
+                         ln -sf ${SPL_BINARYNAME}-${type}-${PV}-${PR}${SPL_DELIMITER}${SPL_SUFFIX} ${D}/boot/${SPL_BINARYFILE}
+                    fi
+                done
+                unset j
+            done
+            unset i
+        else
+            install -m 644 ${B}/${SPL_BINARY} ${D}/boot/${SPL_IMAGE}
+            ln -sf ${SPL_IMAGE} ${D}/boot/${SPL_BINARYFILE}
+        fi
+    fi
+
+    if [ -n "${UBOOT_ENV}" ]
+    then
+        install -m 644 ${WORKDIR}/${UBOOT_ENV_BINARY} ${D}/boot/${UBOOT_ENV_IMAGE}
+        ln -sf ${UBOOT_ENV_IMAGE} ${D}/boot/${UBOOT_ENV_BINARY}
+    fi
+
+    if [ "${UBOOT_EXTLINUX}" = "1" ]
+    then
+        install -Dm 0644 ${UBOOT_EXTLINUX_CONFIG} ${D}/${UBOOT_EXTLINUX_INSTALL_DIR}/${UBOOT_EXTLINUX_CONF_NAME}
+    fi
+}
+
+PACKAGE_BEFORE_PN += "${PN}-env ${PN}-extlinux"
+
+RPROVIDES:${PN}-env += "u-boot-default-env"
+ALLOW_EMPTY:${PN}-env = "1"
+FILES:${PN}-env = " \
+    ${@ '${sysconfdir}/${UBOOT_INITIAL_ENV}*' if d.getVar('UBOOT_INITIAL_ENV') else ''} \
+    ${sysconfdir}/fw_env.config \
+"
+
+FILES:${PN}-extlinux = "${UBOOT_EXTLINUX_INSTALL_DIR}/${UBOOT_EXTLINUX_CONF_NAME}"
+RDEPENDS:${PN} += "${@bb.utils.contains('UBOOT_EXTLINUX', '1', '${PN}-extlinux', '', d)}"
+
+SYSROOT_DIRS += "/boot"
+FILES:${PN} = "/boot ${datadir}"
+RDEPENDS:${PN} += "${PN}-env"
+
+do_deploy () {
+    if [ -n "${UBOOT_CONFIG}" ]
+    then
+        for config in ${UBOOT_MACHINE}; do
+            i=$(expr $i + 1);
+            for type in ${UBOOT_CONFIG}; do
+                j=$(expr $j + 1);
+                if [ $j -eq $i ]
+                then
+                    install -D -m 644 ${B}/${config}/${UBOOT_BINARYNAME}-${type}.${UBOOT_SUFFIX} ${DEPLOYDIR}/${UBOOT_BINARYNAME}-${type}-${PV}-${PR}.${UBOOT_SUFFIX}
+                    cd ${DEPLOYDIR}
+                    ln -sf ${UBOOT_BINARYNAME}-${type}-${PV}-${PR}.${UBOOT_SUFFIX} ${UBOOT_SYMLINK}-${type}
+                    ln -sf ${UBOOT_BINARYNAME}-${type}-${PV}-${PR}.${UBOOT_SUFFIX} ${UBOOT_SYMLINK}
+                    ln -sf ${UBOOT_BINARYNAME}-${type}-${PV}-${PR}.${UBOOT_SUFFIX} ${UBOOT_BINARY}-${type}
+                    ln -sf ${UBOOT_BINARYNAME}-${type}-${PV}-${PR}.${UBOOT_SUFFIX} ${UBOOT_BINARY}
+
+                    # Deploy the uboot-initial-env
+                    if [ -n "${UBOOT_INITIAL_ENV}" ]; then
+                        install -D -m 644 ${B}/${config}/u-boot-initial-env-${type} ${DEPLOYDIR}/${UBOOT_INITIAL_ENV}-${MACHINE}-${type}-${PV}-${PR}
+                        cd ${DEPLOYDIR}
+                        ln -sf ${UBOOT_INITIAL_ENV}-${MACHINE}-${type}-${PV}-${PR} ${UBOOT_INITIAL_ENV}-${MACHINE}-${type}
+                        ln -sf ${UBOOT_INITIAL_ENV}-${MACHINE}-${type}-${PV}-${PR} ${UBOOT_INITIAL_ENV}-${type}
+                    fi
+                fi
+            done
+            unset j
+        done
+        unset i
+    else
+        install -D -m 644 ${B}/${UBOOT_BINARY} ${DEPLOYDIR}/${UBOOT_IMAGE}
+
+        cd ${DEPLOYDIR}
+        rm -f ${UBOOT_BINARY} ${UBOOT_SYMLINK}
+        ln -sf ${UBOOT_IMAGE} ${UBOOT_SYMLINK}
+        ln -sf ${UBOOT_IMAGE} ${UBOOT_BINARY}
+
+        # Deploy the uboot-initial-env
+        if [ -n "${UBOOT_INITIAL_ENV}" ]; then
+            install -D -m 644 ${B}/u-boot-initial-env ${DEPLOYDIR}/${UBOOT_INITIAL_ENV}-${MACHINE}-${PV}-${PR}
+            cd ${DEPLOYDIR}
+            ln -sf ${UBOOT_INITIAL_ENV}-${MACHINE}-${PV}-${PR} ${UBOOT_INITIAL_ENV}-${MACHINE}
+            ln -sf ${UBOOT_INITIAL_ENV}-${MACHINE}-${PV}-${PR} ${UBOOT_INITIAL_ENV}
+        fi
+    fi
+
+    if [ -e ${WORKDIR}/fw_env.config ] ; then
+        install -D -m 644 ${WORKDIR}/fw_env.config ${DEPLOYDIR}/fw_env.config-${MACHINE}-${PV}-${PR}
+        cd ${DEPLOYDIR}
+        ln -sf fw_env.config-${MACHINE}-${PV}-${PR} fw_env.config-${MACHINE}
+        ln -sf fw_env.config-${MACHINE}-${PV}-${PR} fw_env.config
+    fi
+
+    if [ -n "${UBOOT_ELF}" ]
+    then
+        if [ -n "${UBOOT_CONFIG}" ]
+        then
+            for config in ${UBOOT_MACHINE}; do
+                i=$(expr $i + 1);
+                for type in ${UBOOT_CONFIG}; do
+                    j=$(expr $j + 1);
+                    if [ $j -eq $i ]
+                    then
+                        install -m 644 ${B}/${config}/${UBOOT_ELF} ${DEPLOYDIR}/u-boot-${type}-${PV}-${PR}.${UBOOT_ELF_SUFFIX}
+                        ln -sf u-boot-${type}-${PV}-${PR}.${UBOOT_ELF_SUFFIX} ${DEPLOYDIR}/${UBOOT_ELF_BINARY}-${type}
+                        ln -sf u-boot-${type}-${PV}-${PR}.${UBOOT_ELF_SUFFIX} ${DEPLOYDIR}/${UBOOT_ELF_BINARY}
+                        ln -sf u-boot-${type}-${PV}-${PR}.${UBOOT_ELF_SUFFIX} ${DEPLOYDIR}/${UBOOT_ELF_SYMLINK}-${type}
+                        ln -sf u-boot-${type}-${PV}-${PR}.${UBOOT_ELF_SUFFIX} ${DEPLOYDIR}/${UBOOT_ELF_SYMLINK}
+                    fi
+                done
+                unset j
+            done
+            unset i
+        else
+            install -m 644 ${B}/${UBOOT_ELF} ${DEPLOYDIR}/${UBOOT_ELF_IMAGE}
+            ln -sf ${UBOOT_ELF_IMAGE} ${DEPLOYDIR}/${UBOOT_ELF_BINARY}
+            ln -sf ${UBOOT_ELF_IMAGE} ${DEPLOYDIR}/${UBOOT_ELF_SYMLINK}
+        fi
+    fi
+
+
+     if [ -n "${SPL_BINARY}" ]
+     then
+        if [ -n "${UBOOT_CONFIG}" ]
+        then
+            for config in ${UBOOT_MACHINE}; do
+                i=$(expr $i + 1);
+                for type in ${UBOOT_CONFIG}; do
+                    j=$(expr $j + 1);
+                    if [ $j -eq $i ]
+                    then
+                        install -m 644 ${B}/${config}/${SPL_BINARY} ${DEPLOYDIR}/${SPL_BINARYNAME}-${type}-${PV}-${PR}${SPL_DELIMITER}${SPL_SUFFIX}
+                        rm -f ${DEPLOYDIR}/${SPL_BINARYFILE} ${DEPLOYDIR}/${SPL_SYMLINK}
+                        ln -sf ${SPL_BINARYNAME}-${type}-${PV}-${PR}${SPL_DELIMITER}${SPL_SUFFIX} ${DEPLOYDIR}/${SPL_BINARYFILE}-${type}
+                        ln -sf ${SPL_BINARYNAME}-${type}-${PV}-${PR}${SPL_DELIMITER}${SPL_SUFFIX} ${DEPLOYDIR}/${SPL_BINARYFILE}
+                        ln -sf ${SPL_BINARYNAME}-${type}-${PV}-${PR}${SPL_DELIMITER}${SPL_SUFFIX} ${DEPLOYDIR}/${SPL_SYMLINK}-${type}
+                        ln -sf ${SPL_BINARYNAME}-${type}-${PV}-${PR}${SPL_DELIMITER}${SPL_SUFFIX} ${DEPLOYDIR}/${SPL_SYMLINK}
+                    fi
+                done
+                unset j
+            done
+            unset i
+        else
+            install -m 644 ${B}/${SPL_BINARY} ${DEPLOYDIR}/${SPL_IMAGE}
+            ln -sf ${SPL_IMAGE} ${DEPLOYDIR}/${SPL_BINARYNAME}
+            ln -sf ${SPL_IMAGE} ${DEPLOYDIR}/${SPL_SYMLINK}
+        fi
+    fi
+
+    if [ -n "${UBOOT_ENV}" ]
+    then
+        install -m 644 ${WORKDIR}/${UBOOT_ENV_BINARY} ${DEPLOYDIR}/${UBOOT_ENV_IMAGE}
+        ln -sf ${UBOOT_ENV_IMAGE} ${DEPLOYDIR}/${UBOOT_ENV_BINARY}
+        ln -sf ${UBOOT_ENV_IMAGE} ${DEPLOYDIR}/${UBOOT_ENV_SYMLINK}
+    fi
+
+    if [ "${UBOOT_EXTLINUX}" = "1" ]
+    then
+        install -m 644 ${UBOOT_EXTLINUX_CONFIG} ${DEPLOYDIR}/${UBOOT_EXTLINUX_SYMLINK}
+        ln -sf ${UBOOT_EXTLINUX_SYMLINK} ${DEPLOYDIR}/${UBOOT_EXTLINUX_CONF_NAME}-${MACHINE}
+        ln -sf ${UBOOT_EXTLINUX_SYMLINK} ${DEPLOYDIR}/${UBOOT_EXTLINUX_CONF_NAME}
+    fi
+
+    if [ -n "${UBOOT_DTB}" ]
+    then
+        install -m 644 ${B}/arch/${UBOOT_ARCH_DIR}/dts/${UBOOT_DTB_BINARY} ${DEPLOYDIR}/
+    fi
+}
+
+addtask deploy before do_build after do_compile
diff --git a/recipes-bsp/u-boot/u-boot_2024.04-rc3.bb b/recipes-bsp/u-boot/u-boot_2024.04-rc3.bb
new file mode 100644
index 0000000..b15bcaa
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot_2024.04-rc3.bb
@@ -0,0 +1,5 @@
+require u-boot-common.inc
+require u-boot.inc
+
+DEPENDS += "bc-native dtc-native python3-pyelftools-native"
+
-- 
2.34.1


