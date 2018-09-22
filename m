Return-Path: <philippe.coval.pro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A2AAE00AC8; Sat, 22 Sep 2018 03:53:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.221.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (philippe.coval.pro[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAA31E00AAA
	for <yocto@yoctoproject.org>; Sat, 22 Sep 2018 03:53:27 -0700 (PDT)
Received: by mail-wr1-f66.google.com with SMTP id z3-v6so3313274wrr.13
	for <yocto@yoctoproject.org>; Sat, 22 Sep 2018 03:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=QXVKbLkDBwqErIqIsQBISusPQigEf2bDLIz4KNeVr6w=;
	b=oecB3VEuSaQ+ExD41dyKkeqR74M5z7XSlXWWDAUonxjvtLNI+a+JulLN5su5HjEjGH
	KCamc6YajOYlCUIPbfqvtvoN0MqRQthaM//89czSNokcDKvoPpNO3iaPYD6yLBlq6MB0
	s54ApFJz4K/hmw49yKKpbYPF6Djrp1a8LPXcuOIlNslNclW+rYZtyu8sE+3UF+F87lt0
	iivwA+vFn4C7yOsjx/jRpeA8pidY9VOKNe8ZKb6G1ldiup1zON0YsLQelTLoFNP5p821
	+dWu2vOYLITtI/1uNBq3OAm/XhQ0YIViMXr/ErpqBtfMVHkA2XkKxM0n6jsArEtrsbgK
	iFig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=QXVKbLkDBwqErIqIsQBISusPQigEf2bDLIz4KNeVr6w=;
	b=rgsMPQ5bBG1ruI9hgKAm7hSK/c/7UtqHYCFgUYb7pPlFs0ZKf1KEPOYOsIjWIuIoXN
	9QxVdFoGFmpIbVUS2VrLI3HfNtlMimob7cu2dhxg6vd3sEEAOmUghdl53dM7JOjYtw6H
	mnchDeS+I9QNtdtTfyUsYNXYv0wwLLYGTyZLpy2Uw+aOZkGTsl49tp5vAPcPuH7NTr6n
	twerVY0/lazBlRPSdTPeqoE7jT0MliU3l9Cdn1G/+0eZCixXf70DWfl0jzpBUzXnhV4Q
	GAw7I2qCRc+1X576tV7pHXIeaMDbF1vGwpwvETpX4TAe8Lewo+UFtdp0AFo9hyHHdJLe
	hQIQ==
X-Gm-Message-State: ABuFfog1eEhEiPbiMXkO0uceBTXxEZTUty0EitIdkRId9MirL5zo/wHb
	A4fPD4UXnH+1Walhjn9e89vwjRQF
X-Google-Smtp-Source: ACcGV62gaRQu6Or8t7k3h0W32SOg4fbXj08XYVD0Y5fuPfun34A9wPEozmahO3s5om+g3L0+JJOQAg==
X-Received: by 2002:adf:9227:: with SMTP id
	36-v6mr1606093wrj.275.1537613606319; 
	Sat, 22 Sep 2018 03:53:26 -0700 (PDT)
Received: from wsf1127 (lav35-1-82-236-136-106.fbx.proxad.net.
	[82.236.136.106]) by smtp.gmail.com with ESMTPSA id
	75-v6sm12817195wml.21.2018.09.22.03.53.25
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sat, 22 Sep 2018 03:53:25 -0700 (PDT)
Received: from ip6-localhost ([::1] helo=localhost.localdomain)
	by wsf1127 with esmtp (Exim 4.90_1)
	(envelope-from <philippe.coval.pro@gmail.com>)
	id 1g3fXQ-0000Di-PP; Sat, 22 Sep 2018 12:53:24 +0200
From: Philippe Coval <philippe.coval.pro@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 22 Sep 2018 12:53:17 +0200
Message-Id: <20180922105317.750-1-philippe.coval.pro@gmail.com>
X-Mailer: git-send-email 2.17.1
Cc: Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH] Add recipe for IoTivity 2.0.0
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
X-List-Received-Date: Sat, 22 Sep 2018 10:53:29 -0000

From: Philippe Coval <philippe.coval@osg.samsung.com>

Lot of simplification since "scons install"
is supported by upstream.

Note that 2.0.0 is in 1.4-rel branch

IoTivity extra files are now in /usr/lib*/iotivity/

Bug: https://jira.iotivity.org/browse/IOT-2998
Cc: yocto@yoctoproject.org
Origin: https://lists.iotivity.org/g/iotivity-dev/message/9943
Forwarded: https://lists.yoctoproject.org/pipermail/yocto/2018-September
Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
Signed-off-by: Philippe Coval <philippe.coval.pro@gmail.com>
---
 README                                  |   5 +-
 recipes-core/iotivity/iotivity_2.0.0.bb | 238 ++++++++++++++++++++++++
 2 files changed, 241 insertions(+), 2 deletions(-)
 create mode 100644 recipes-core/iotivity/iotivity_2.0.0.bb

diff --git a/README b/README
index ca0c7624..1b34cbd4 100644
--- a/README
+++ b/README
@@ -1,6 +1,6 @@
 meta-oic
 ========
-This layer contains recipes for the IoTivity Project (v1.3.1)
+This layer contains recipes for the IoTivity Project (v2.0.0)
 , sample applications and related components for any Yocto target.
 
 Contents
@@ -141,7 +141,8 @@ IoTivity service headers are placed in /usr/include/iotivity/service.
 IoTivity resource and service applications are placed in
 /opt/iotivity/examples.
 
-IoTivity tests are placed in /opt/iotivity/tests.
+IoTivity extra files (tools, examples, tests...) are placed in 
+/usr/lib*/iotivity/.
 
 Building IoTivity applications for a Yocto target
 =================================================
diff --git a/recipes-core/iotivity/iotivity_2.0.0.bb b/recipes-core/iotivity/iotivity_2.0.0.bb
new file mode 100644
index 00000000..f0a95d8a
--- /dev/null
+++ b/recipes-core/iotivity/iotivity_2.0.0.bb
@@ -0,0 +1,238 @@
+PR = 'r1'
+SUMMARY = "IoTivity framework and SDK sponsored by the Open Connectivity Foundation."
+DESCRIPTION = "IoTivity is an open source software framework enabling seamless device-to-device connectivity to address the emerging needs of the Internet of Things."
+HOMEPAGE = "https://www.iotivity.org/"
+DEPENDS = "boost virtual/gettext chrpath-replacement-native expat openssl util-linux curl glib-2.0 glib-2.0-native"
+DEPENDS += "sqlite3"
+
+EXTRANATIVEPATH += "chrpath-native"
+SECTION = "libs"
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE.md;md5=86d3f3a95c324c9479bd8986968f4327"
+
+branch_iotivity ?= "1.4-rel"
+baseurl_iotivity ?= "git://github.com/iotivity/iotivity.git"
+SRCREV_iotivity ?= "d0427f56eeb6fe51ed4bd1e2a379396e0ac0acc0"
+SRCREV = "${SRCREV_iotivity}"
+url_iotivity ?= "${baseurl_iotivity};destsuffix=${S};branch=${branch_iotivity};protocol=http"
+SRC_URI = "${url_iotivity}"
+
+url_tinycbor = "git://github.com/intel/tinycbor.git"
+SRCREV_tinycbor = "ae64a3d9da39f3bf310b9a7b38427c096d8bcd43"
+SRC_URI += "${url_tinycbor};name=tinycbor;destsuffix=${S}/extlibs/tinycbor/tinycbor;protocol=http"
+
+url_gtest = "https://github.com/google/googletest/archive/release-1.7.0.zip"
+SRC_URI[gtest.md5sum] = "ef5e700c8a0f3ee123e2e0209b8b4961"
+SRC_URI[gtest.sha256sum] = "b58cb7547a28b2c718d1e38aee18a3659c9e3ff52440297e965f5edffe34b6d0"
+SRC_URI += "${url_gtest};name=gtest;subdir=${BP}/extlibs/gtest"
+
+url_hippomocks = "git://github.com/dascandy/hippomocks.git"
+SRCREV_hippomocks = "dca4725496abb0e41f8b582dec21d124f830a8e5"
+SRC_URI += "${url_hippomocks};name=hippomocks;destsuffix=${S}/extlibs/hippomocks/hippomocks;protocol=http"
+SRC_URI += "file://hippomocks_mips_patch"
+
+SRCREV_mbedtls = "59ae96f167a19f4d04dc6db61f6587b37ccd429f"
+url_mbedtls="git://github.com/ARMmbed/mbedtls.git"
+SRC_URI += "${url_mbedtls};name=mbedtls;nobranch=1;destsuffix=${S}/extlibs/mbedtls/mbedtls;protocol=http"
+
+url_rapidjson = "git://github.com/miloyip/rapidjson.git"
+SRCREV_rapidjson = "9dfc437477e2b9a351634e8249a9c18bfc81f136"
+SRC_URI += "${url_rapidjson};name=rapidjson;nobranch=1;destsuffix=${S}/extlibs/rapidjson/rapidjson;protocol=http"
+
+branch_libcoap = "IoTivity-1.4"
+SRCREV_libcoap = "${branch_libcoap}"
+url_libcoap = "git://github.com/dthaler/libcoap.git"
+SRC_URI += "${url_libcoap};name=libcoap;destsuffix=${S}/extlibs/libcoap/libcoap;protocol=http;nobranch=1"
+
+inherit pkgconfig scons
+
+
+python () {
+    IOTIVITY_TARGET_ARCH = d.getVar("TARGET_ARCH", True)
+    d.setVar("IOTIVITY_TARGET_ARCH", IOTIVITY_TARGET_ARCH)
+    EXTRA_OESCONS = d.getVar("EXTRA_OESCONS", True)
+    EXTRA_OESCONS += " --prefix=${prefix}"
+    EXTRA_OESCONS += " TARGET_OS=yocto TARGET_ARCH=" + IOTIVITY_TARGET_ARCH + " RELEASE=1"
+    EXTRA_OESCONS += " VERBOSE=1"
+    EXTRA_OESCONS += " ERROR_ON_WARN=False"
+    # Aligned to default configuration, but features can be changed here (at your own risk):
+    # EXTRA_OESCONS += " -j1"
+    # EXTRA_OESCONS += " ROUTING=GW"
+    # EXTRA_OESCONS += " SECURED=0"
+    # EXTRA_OESCONS += " TCP=1"
+    # EXTRA_OESCONS += " TARGET_TRANSPORT=IP"
+    # EXTRA_OESCONS += " WITH_CLOUD=True"
+    # EXTRA_OESCONS += " WITH_TCP=True"
+    # EXTRA_OESCONS += " WITH_MQ=PUB,SUB"
+    d.setVar("EXTRA_OESCONS", EXTRA_OESCONS)
+}
+
+
+IOTIVITY_BIN_DIR = "${libdir}/${PN}"
+IOTIVITY_BIN_DIR_D = "${D}${IOTIVITY_BIN_DIR}"
+
+
+do_compile_prepend() {
+    export PKG_CONFIG_PATH="${PKG_CONFIG_PATH}"
+    export PKG_CONFIG="PKG_CONFIG_SYSROOT_DIR=\"${PKG_CONFIG_SYSROOT_DIR}\" pkg-config"
+    export LD_FLAGS="${LD_FLAGS}"
+}
+
+scon_do_install() {
+    ${STAGING_BINDIR_NATIVE}/scons --install-sandbox=${D} ${EXTRA_OESCONS} install
+}
+
+do_install() {
+    scon_do_install
+
+    # TODO: Support legacy path (transitional, use pkg-config)
+    ln -s iotivity/resource ${D}${includedir}/resource
+    ln -s iotivity/service ${D}${includedir}/service
+    ln -s iotivity/c_common ${D}${includedir}/c_common
+
+    find "${D}" -type f -perm /u+x -exec chrpath -d "{}" \;
+}
+
+#IOTIVITY packages:
+#Resource: iotivity-resource, iotivity-resource-dev, iotivity-resource-thin-staticdev, iotivity-resource-dbg
+#Resource Samples: iotivity-resource-samples, iotivity-resource-samples-dbg
+#Service: iotivity-service, iotivity-service-dev, iotivity-service-staticdev, iotivity-service-dbg
+#Service Samples: iotivity-service-samples, iotivity-service-samples-dbg
+#Tests: iotivity-tests, iotivity-tests-dbg
+#Misc: iotivity-tools
+
+FILES_${PN}-tools = "\
+        ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=0', '', '${IOTIVITY_BIN_DIR}/resource/csdk/security/tool/**', d)}"
+
+FILES_${PN}-tests-dbg = "\
+        ${IOTIVITY_BIN_DIR}/tests/**/.debug \
+        ${libdir}/.debug/libgtest.so \
+        ${libdir}/.debug/libgtest_main.so"
+
+FILES_${PN}-tests = "\
+        ${IOTIVITY_BIN_DIR}/tests/** \
+        ${libdir}/liboctbstack_test.so"
+
+FILES_${PN}-resource-dev = "\
+        ${includedir}/iotivity/resource \
+        ${includedir}/iotivity/c_common \
+        ${includedir}/resource \
+        ${includedir}/c_common \
+        ${libdir}/pkgconfig/iotivity.pc"
+
+FILES_${PN}-resource-thin-staticdev = "\
+        ${libdir}/libocsrm.a \
+        ${libdir}/libconnectivity_abstraction*.a \
+        ${libdir}/liboctbstack*.a \
+        ${libdir}/libcoap.a \
+        ${libdir}/libc_common.a \
+        ${libdir}/libipca*.a \
+        ${libdir}/libroutingmanager.a \
+        ${libdir}/libtimer.a \
+        ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=0', '', '${libdir}/libocpmapi.a', d)}"
+
+FILES_${PN}-plugins-samples = "\
+        ${IOTIVITY_BIN_DIR}/plugins/**"
+
+FILES_${PN}-plugins-staticdev = "\
+        ${includedir}/iotivity/plugins \
+        ${libdir}/libplugin_interface.a \
+        ${libdir}/libzigbee_wrapper.a \
+        ${libdir}/libtelegesis_wrapper.a"
+
+FILES_${PN}-plugins-dbg = "\
+        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/plugins \
+        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/bridging"
+
+FILES_${PN}-resource = "\
+        ${libdir}/libconnectivity_abstraction.so \
+        ${libdir}/liboc.so \
+        ${libdir}/liboctbstack.so \
+        ${libdir}/liboc_logger.so \
+        ${libdir}/liboc_logger_core.so \
+        ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=0', '', '${libdir}/libocprovision.so', d)} \
+        ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=0', '', '${libdir}/libocpmapi.so', d)} \
+        ${libdir}/libresource_directory.so"
+
+FILES_${PN}-resource-dbg = "\
+        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/resource \
+        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/extlibs \
+        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/out \
+        ${libdir}/.debug/liboc.so \
+        ${libdir}/.debug/liboctbstack.so \
+        ${libdir}/.debug/liboc_logger.so \
+        ${libdir}/.debug/liboc_logger_core.so \
+        ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=0', '', '${libdir}/.debug/libocprovision.so', d)} \
+        ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=0', '', '${libdir}/.debug/libocpmapi.so', d)}"
+
+FILES_${PN}-resource-samples = "\
+        ${IOTIVITY_BIN_DIR}/resource/**/samples/** \
+        ${IOTIVITY_BIN_DIR}/resource/*/*/samples/** \
+        ${IOTIVITY_BIN_DIR}/resource/*/*/*/sample/** \
+        ${IOTIVITY_BIN_DIR}/resource/examples/** \
+        ${IOTIVITY_BIN_DIR}/resource/**/examples/** \
+        ${IOTIVITY_BIN_DIR}/examples/**"
+
+FILES_${PN}-resource-samples-dbg = "\
+        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/examples \
+        ${IOTIVITY_BIN_DIR}/resource/**/samples/**/.debug \
+        ${IOTIVITY_BIN_DIR}/resource/*/*/samples/*/.debug \
+        ${IOTIVITY_BIN_DIR}/resource/*/*/*/sample/*/.debug \
+        ${IOTIVITY_BIN_DIR}/resource/examples/**/.debug \
+        ${IOTIVITY_BIN_DIR}/resource/**/examples/**/.debug \
+        ${IOTIVITY_BIN_DIR}/examples/**/.debug"
+
+FILES_${PN}-service-dbg = "\
+        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/service \
+        ${libdir}/.debug"
+
+FILES_${PN}-service-dev = "\
+        ${includedir}/iotivity/service \
+        ${includedir}/service"
+
+FILES_${PN}-service = "\
+        ${libdir}/lib*plugin.so \
+        ${libdir}/libBMISensorBundle.so \
+        ${libdir}/libDISensorBundle.so \
+        ${libdir}/libESEnrolleeSDK.so \
+        ${libdir}/libESMediatorRich.so \
+        ${libdir}/libHueBundle.so \
+        ${libdir}/libipca.so \
+        ${libdir}/libnotification_*.so \
+        ${libdir}/librcs_client.so \
+        ${libdir}/librcs_common.so \
+        ${libdir}/librcs_container.so \
+        ${libdir}/librcs_server.so \
+        ${libdir}/lib*.so "
+
+FILES_${PN}-service-staticdev = "\
+        ${libdir}/librcs_client.a \
+        ${libdir}/librcs_server.a \
+        ${libdir}/librcs_common.a \
+        ${libdir}/librcs_container.a \
+        ${libdir}/libresource_directory.a \
+        ${libdir}/libscene_manager.a\
+        ${libdir}/lib*.a "
+
+FILES_${PN}-service-samples-dbg = "\
+        ${IOTIVITY_BIN_DIR}/service/**.debug"
+
+FILES_${PN}-service-samples = "\
+        ${IOTIVITY_BIN_DIR}/service/**"
+
+PACKAGES = "${PN}-tests-dbg ${PN}-tests ${PN}-plugins-dbg ${PN}-plugins-staticdev ${PN}-plugins-samples-dbg ${PN}-plugins-samples ${PN}-resource-dbg ${PN}-resource ${PN}-resource-dev ${PN}-resource-thin-staticdev ${PN}-resource-samples-dbg ${PN}-resource-samples ${PN}-service-dbg ${PN}-service ${PN}-service-dev ${PN}-service-staticdev ${PN}-service-samples-dbg ${PN}-service-samples ${PN}-tools ${PN}-dev ${PN}"
+ALLOW_EMPTY_${PN} = "1"
+RDEPENDS_${PN} += "boost"
+RRECOMMENDS_${PN} += "${PN}-resource ${PN}-service"
+RRECOMMENDS_${PN}-dev += "${PN}-resource-dev ${PN}-resource-thin-staticdev ${PN}-plugins-staticdev ${PN}-service-dev ${PN}-service-staticdev"
+RDEPENDS_${PN}-resource += "glib-2.0"
+RRECOMMENDS_${PN}-plugins-staticdev += "${PN}-resource-dev ${PN}-resource-thin-staticdev ${PN}-resource"
+RRECOMMENDS_${PN}-resource-thin-staticdev += "${PN}-resource-dev"
+RRECOMMENDS_${PN}-service-dev += "${PN}-service ${PN}-service-staticdev ${PN}-resource"
+RDEPENDS_${PN}-plugins-samples += "${PN}-resource glib-2.0"
+RDEPENDS_${PN}-resource-samples += "${PN}-resource glib-2.0"
+RDEPENDS_${PN}-tests += "${PN}-resource ${PN}-service glib-2.0"
+RDEPENDS_${PN}-service-samples += "${PN}-service ${PN}-resource glib-2.0"
+RDEPENDS_${PN}-service += "${PN}-resource glib-2.0"
+RDEPENDS_${PN}-tools += "${PN}-resource"
+BBCLASSEXTEND = "native nativesdk"
-- 
2.17.1


