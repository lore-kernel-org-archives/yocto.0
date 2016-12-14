Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D7A2E00E1F; Wed, 14 Dec 2016 10:49:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 264AEE00E12
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 10:49:48 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by osg.samsung.com (Postfix) with ESMTP id 8B65FA12FC;
	Wed, 14 Dec 2016 18:50:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osg.samsung.com
Received: from osg.samsung.com ([127.0.0.1])
	by localhost (s-opensource.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8uXMVjmPitZP; Wed, 14 Dec 2016 18:49:52 +0000 (UTC)
Received: from WSF-1127.8.8.8.8 (unknown [82.236.136.171])
	by osg.samsung.com (Postfix) with ESMTPSA id 5B3E1A0E75;
	Wed, 14 Dec 2016 18:49:50 +0000 (UTC)
From: Philippe Coval <philippe.coval@osg.samsung.com>
To: kishen.maloor@intel.com
Date: Wed, 14 Dec 2016 19:49:32 +0100
Message-Id: <1481741372-24611-1-git-send-email-philippe.coval@osg.samsung.com>
X-Mailer: git-send-email 1.9.1
Cc: iotivity-dev@lists.iotivity.org, yocto@yoctoproject.org,
	Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH v3] Update for IoTivity 1.2.0
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
X-List-Received-Date: Wed, 14 Dec 2016 18:49:52 -0000

Note: build parameters are now aligned to upstream default.

Compared to earlier recipe, configuration changes are:

 - Previous WITH_RD parameter is now replaced by RD_MODE
   (set to CLIENT by default)
 - ROOTING was previously set to gateway (GW)
   while default use EP, which is also used in this version.

For more details please check:
https://wiki.iotivity.org/yocto

Note a workaround was needed to install tinycbor headers
 needed by iotivity headers (this has been fixed later in 1.2-rel),
 problem was observed while building iotivity-node.

Change-Id: I3296c94baab43ec442994379b2ffaaf9a0146228
Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
---
 README                                  |   2 +-
 recipes-core/iotivity/iotivity_1.2.0.bb | 521 ++++++++++++++++++++++++++++++++
 2 files changed, 522 insertions(+), 1 deletion(-)
 create mode 100644 recipes-core/iotivity/iotivity_1.2.0.bb

diff --git a/README b/README
index d076963..c6cf1a7 100644
--- a/README
+++ b/README
@@ -1,6 +1,6 @@
 meta-oic
 ========
-This layer contains recipes for the IoTivity Project (v1.1.1)
+This layer contains recipes for the IoTivity Project (v1.2.0)
 , sample applications and related components for any Yocto target.
 
 Contents
diff --git a/recipes-core/iotivity/iotivity_1.2.0.bb b/recipes-core/iotivity/iotivity_1.2.0.bb
new file mode 100644
index 0000000..dfae54b
--- /dev/null
+++ b/recipes-core/iotivity/iotivity_1.2.0.bb
@@ -0,0 +1,521 @@
+SUMMARY = "IoTivity framework and SDK sponsored by the Open Connectivity Foundation."
+DESCRIPTION = "IoTivity is an open source software framework enabling seamless device-to-device connectivity to address the emerging needs of the Internet of Things."
+HOMEPAGE = "https://www.iotivity.org/"
+DEPENDS = "boost virtual/gettext chrpath-replacement-native expat openssl util-linux curl glib-2.0"
+EXTRANATIVEPATH += "chrpath-native"
+SECTION = "libs"
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE.md;md5=22bf216f3077c279aed7b36b1fa9e6d1"
+
+branch_iotivity = "1.2-rel"
+SRCREV = "1a2e71f9c470c7cc17157f83deb4488ee83050a4"
+SRC_URI = "git://github.com/iotivity/iotivity.git;destsuffix=${S};branch=${branch_iotivity};protocol=http;"
+
+url_tinycbor = "git://github.com/01org/tinycbor.git"
+SRCREV_tinycbor = "31c7f81d45d115d2007b1c881cbbd3a19618465c"
+SRC_URI += "${url_tinycbor};name=tinycbor;destsuffix=${S}/extlibs/tinycbor/tinycbor;protocol=http"
+
+url_gtest = "http://pkgs.fedoraproject.org/repo/pkgs/gtest/gtest-1.7.0.zip/2d6ec8ccdf5c46b05ba54a9fd1d130d7/gtest-1.7.0.zip"
+SRC_URI[gtest.md5sum] = "2d6ec8ccdf5c46b05ba54a9fd1d130d7"
+SRC_URI[gtest.sha256sum] = "247ca18dd83f53deb1328be17e4b1be31514cedfc1e3424f672bf11fd7e0d60d"
+SRC_URI += "${url_gtest};name=gtest;subdir=${BP}/extlibs/gtest"
+
+url_hippomocks = "git://github.com/dascandy/hippomocks.git"
+SRCREV_hippomocks = "dca4725496abb0e41f8b582dec21d124f830a8e5"
+SRC_URI += "${url_hippomocks};name=hippomocks;destsuffix=${S}/extlibs/hippomocks-master;protocol=http"
+SRC_URI += "file://hippomocks_mips_patch"
+
+url_sqlite = "http://www.sqlite.org/2015/sqlite-amalgamation-3081101.zip"
+SRC_URI[sqlite3.md5sum] = "94907e831502e2080b76e281cfa24dde"
+SRC_URI[sqlite3.sha256sum] = "a3b0c07d1398d60ae9d21c2cc7f9be6b1bc5b0168cd94c321ede9a0fce2b3cd7"
+SRC_URI += "${url_sqlite};name=sqlite3;subdir=${BP}/extlibs/sqlite3;unpack=false"
+
+SRCREV_mbedtls = "85c2a928ed352845793db000e78e2b42c8dcf055"
+url_mbedtls="git://github.com/ARMmbed/mbedtls.git"
+SRC_URI += "${url_mbedtls};name=mbedtls;destsuffix=${S}/extlibs/mbedtls/mbedtls;protocol=http"
+
+inherit pkgconfig scons
+
+
+python () {
+    IOTIVITY_TARGET_ARCH = d.getVar("TARGET_ARCH", True)
+    d.setVar("IOTIVITY_TARGET_ARCH", IOTIVITY_TARGET_ARCH)
+    EXTRA_OESCONS = d.getVar("EXTRA_OESCONS", True)
+    EXTRA_OESCONS += " TARGET_OS=yocto TARGET_ARCH=" + IOTIVITY_TARGET_ARCH + " RELEASE=1"
+    EXTRA_OESCONS += " VERBOSE=1"
+    # Aligned to default configuration, but features can be changed here (at your own risk):
+    # EXTRA_OESCONS += " ROUTING=GW"
+    # EXTRA_OESCONS += " SECURED=1"
+    # EXTRA_OESCONS += " TCP=1"
+    d.setVar("EXTRA_OESCONS", EXTRA_OESCONS)
+}
+
+
+IOTIVITY_BIN_DIR = "/opt/${PN}"
+IOTIVITY_BIN_DIR_D = "${D}${IOTIVITY_BIN_DIR}"
+
+do_compile_prepend() {
+    export PKG_CONFIG_PATH="${PKG_CONFIG_PATH}"
+    export PKG_CONFIG="PKG_CONFIG_SYSROOT_DIR=\"${PKG_CONFIG_SYSROOT_DIR}\" pkg-config"
+    export LD_FLAGS="${LD_FLAGS}"
+}
+
+make_dir() {
+    install -d $1
+}
+
+copy_file() {
+    install -c -m 444 $1 $2
+}
+
+copy_exec() {
+    install -c -m 555 $1 $2
+}
+
+copy_file_recursive() {
+    cd $1 && find . -type d -exec install -d $2/"{}" \;
+    cd $1 && find . -type f -exec install -c -m 444 "{}" $2/"{}" \;
+}
+
+copy_exec_recursive() {
+    cd $1 && find . -executable -exec install -c -m 555 "{}" $2/"{}" \;
+}
+
+do_install() {
+    make_dir ${D}${libdir}
+    #Resource
+    #C++ APIs
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/liboc.so ${D}${libdir}
+    if ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=1', 'true', 'false', d)}; then
+        copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/provisioning/libocprovision.so ${D}${libdir}
+    fi
+
+    #Logger
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/liboc_logger.so ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/liboc_logger_core.so ${D}${libdir}
+
+    #CSDK Shared
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libconnectivity_abstraction.so ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/liboctbstack.so ${D}${libdir}
+
+    #CSDK Static
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libconnectivity_abstraction.a ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libcoap.a ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/liboctbstack.a ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libc_common.a ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libocsrm.a ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libroutingmanager.a ${D}${libdir}
+
+    #Resource C++ Apps
+    make_dir ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    find ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/ \
+      -iname "*.dat"\
+      -exec install -c -m 444 "{}"  ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp/ \;
+
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/presenceclient ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/presenceserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/groupclient ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/groupserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/roomclient ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/roomserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/simpleclient ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/simpleclientserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/simpleserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/fridgeclient ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/fridgeserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/garageclient ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/garageserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/simpleclientHQ ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/simpleserverHQ ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/devicediscoveryserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/devicediscoveryclient ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/threadingsample ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/examples/lightserver ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/examples/OICMiddle/OICMiddle ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp
+    chrpath -d `find ${IOTIVITY_BIN_DIR_D}/examples/resource/cpp/ -type f -perm /u+x`
+
+    #Resource CSDK Apps
+    make_dir ${IOTIVITY_BIN_DIR_D}/examples/resource/c/SimpleClientServer
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csdk/stack/samples/linux/SimpleClientServer/occlientcoll ${IOTIVITY_BIN_DIR_D}/examples/resource/c/SimpleClientServer
+    if ${@bb.utils.contains('EXTRA_OESCONS', 'ROUTING=GW', 'true', 'false', d)}; then
+        copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csdk/stack/samples/linux/SimpleClientServer/ocrouting ${IOTIVITY_BIN_DIR_D}/examples/resource/c/SimpleClientServer
+    fi
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csdk/stack/samples/linux/SimpleClientServer/ocserver ${IOTIVITY_BIN_DIR_D}/examples/resource/c/SimpleClientServer
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csdk/stack/samples/linux/SimpleClientServer/ocserverbasicops ${IOTIVITY_BIN_DIR_D}/examples/resource/c/SimpleClientServer
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csdk/stack/samples/linux/SimpleClientServer/occlientslow ${IOTIVITY_BIN_DIR_D}/examples/resource/c/SimpleClientServer
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csdk/stack/samples/linux/SimpleClientServer/ocserverslow ${IOTIVITY_BIN_DIR_D}/examples/resource/c/SimpleClientServer
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csdk/stack/samples/linux/SimpleClientServer/occlientbasicops ${IOTIVITY_BIN_DIR_D}/examples/resource/c/SimpleClientServer
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csdk/stack/samples/linux/SimpleClientServer/ocservercoll ${IOTIVITY_BIN_DIR_D}/examples/resource/c/SimpleClientServer
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csdk/stack/samples/linux/SimpleClientServer/occlient ${IOTIVITY_BIN_DIR_D}/examples/resource/c/SimpleClientServer
+    chrpath -d ${IOTIVITY_BIN_DIR_D}/examples/resource/c/SimpleClientServer/*
+
+    if ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=1', 'true', 'false', d)}; then
+        make_dir ${IOTIVITY_BIN_DIR_D}/examples/resource/c/secure
+        copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csdk/stack/samples/linux/secure/ocamsservice ${IOTIVITY_BIN_DIR_D}/examples/resource/c/secure
+        copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csdk/stack/samples/linux/secure/ocserverbasicops ${IOTIVITY_BIN_DIR_D}/examples/resource/c/secure
+        copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csdk/stack/samples/linux/secure/occlientbasicops ${IOTIVITY_BIN_DIR_D}/examples/resource/c/secure
+
+        find ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csdk/stack/samples/linux \
+          -iname "*.dat"\
+          -exec install -c -m 444 {} ${IOTIVITY_BIN_DIR_D}/examples/resource/c/secure/ \;
+    fi
+
+    #Resource Tests
+    make_dir ${IOTIVITY_BIN_DIR_D}/tests/resource
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/c_common/ocrandom/test/randomtests ${IOTIVITY_BIN_DIR_D}/tests/resource/ocrandom_tests
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/unittests/unittests ${IOTIVITY_BIN_DIR_D}/tests/resource/oc_unittests
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/unittests/oic_svr_db_client.dat ${IOTIVITY_BIN_DIR_D}/tests/resource
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csdk/stack/test/stacktests ${IOTIVITY_BIN_DIR_D}/tests/resource/octbstack_tests
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csdk/connectivity/test/catests ${IOTIVITY_BIN_DIR_D}/tests/resource/ca_tests
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/oc_logger/examples/examples_cpp ${IOTIVITY_BIN_DIR_D}/tests/resource/logger_test_cpp
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/oc_logger/examples/examples_c ${IOTIVITY_BIN_DIR_D}/tests/resource/logger_test_c
+    if ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=1', 'true', 'false', d)}; then
+        copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/resource/csdk/security/unittest/unittest ${IOTIVITY_BIN_DIR_D}/tests/resource/security_tests
+    fi
+    #Resource headers
+    make_dir ${D}${includedir}/iotivity/resource/stack/
+    make_dir ${D}${includedir}/iotivity/resource/logger/
+    make_dir ${D}${includedir}/iotivity/resource/connectivity/api
+    make_dir ${D}${includedir}/iotivity/resource/connectivity/external
+    make_dir ${D}${includedir}/iotivity/resource/connectivity/common
+    make_dir ${D}${includedir}/iotivity/resource/security/
+    make_dir ${D}${includedir}/iotivity/resource/ocrandom/
+    make_dir ${D}${includedir}/iotivity/resource/oc_logger/
+
+    copy_file_recursive ${S}/resource/include ${D}${includedir}/iotivity/resource
+    copy_file_recursive ${S}/resource/csdk/stack/include ${D}${includedir}/iotivity/resource/stack
+    copy_file_recursive ${S}/resource/csdk/logger/include  ${D}${includedir}/iotivity/resource/logger
+    copy_file_recursive ${S}/resource/csdk/connectivity/inc  ${D}${includedir}/iotivity/resource/connectivity
+    copy_file_recursive ${S}/resource/csdk/connectivity/api ${D}${includedir}/iotivity/resource/connectivity/api
+    copy_file_recursive ${S}/resource/csdk/connectivity/common/inc ${D}${includedir}/iotivity/resource/connectivity/common
+    copy_file_recursive ${S}/resource/csdk/security/include  ${D}${includedir}/iotivity/resource/security
+    copy_file_recursive ${S}/resource/c_common/ocrandom/include ${D}${includedir}/iotivity/resource/ocrandom
+    copy_file_recursive ${S}/resource/oc_logger/include ${D}${includedir}/iotivity/resource/oc_logger
+    copy_file ${S}/resource/c_common/oic_string/include/oic_string.h ${D}${includedir}/iotivity/resource
+    copy_file ${S}/resource/c_common/oic_malloc/include/oic_malloc.h ${D}${includedir}/iotivity/resource
+
+    #ZigBee Plugin
+    #Libraries
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libzigbee_wrapper.a ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libtelegesis_wrapper.a ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libplugin_interface.a ${D}${libdir}
+
+    #Headers
+    make_dir ${D}${includedir}/iotivity/plugins
+    copy_file_recursive ${S}/plugins/include ${D}${includedir}/iotivity/plugins
+
+    #Samples
+    make_dir ${IOTIVITY_BIN_DIR_D}/examples/plugins/zigbee/
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/plugins/samples/linux/iotivityandzigbeeserver ${IOTIVITY_BIN_DIR_D}/examples/plugins/zigbee
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/plugins/samples/linux/iotivityandzigbeeclient ${IOTIVITY_BIN_DIR_D}/examples/plugins/zigbee
+    chrpath -d ${IOTIVITY_BIN_DIR_D}/examples/plugins/zigbee/*
+
+    #Tests
+    make_dir ${IOTIVITY_BIN_DIR_D}/tests/plugins/zigbee/
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/plugins/unittests/piunittests ${IOTIVITY_BIN_DIR_D}/tests/plugins/zigbee
+    chrpath -d ${IOTIVITY_BIN_DIR_D}/tests/plugins/zigbee/*
+
+    #Service Components
+    #Resource container
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/librcs_container.so ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/librcs_container.a ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libBMISensorBundle.so ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libDISensorBundle.so ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libHueBundle.so ${D}${libdir}
+
+    #Resource container sample apps
+    make_dir ${IOTIVITY_BIN_DIR_D}/examples/service/resource-container/
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-container/HeightSensorApp ${IOTIVITY_BIN_DIR_D}/examples/service/resource-container/
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-container/THSensorApp ${IOTIVITY_BIN_DIR_D}/examples/service/resource-container/
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-container/THSensorApp1 ${IOTIVITY_BIN_DIR_D}/examples/service/resource-container/
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-container/WeightSensorApp ${IOTIVITY_BIN_DIR_D}/examples/service/resource-container/
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-container/ContainerSample ${IOTIVITY_BIN_DIR_D}/examples/service/resource-container/
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-container/ContainerSampleClient ${IOTIVITY_BIN_DIR_D}/examples/service/resource-container/
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-container/examples/ResourceContainerConfig.xml ${IOTIVITY_BIN_DIR_D}/examples/service/resource-container/
+
+    #Resource container tests
+    make_dir ${IOTIVITY_BIN_DIR_D}/tests/service/resource-container
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-container/unittests/container_test ${IOTIVITY_BIN_DIR_D}/tests/service/resource-container
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-container/unittests/libTestBundle.so ${IOTIVITY_BIN_DIR_D}/tests/service/resource-container
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-container/unittests/ResourceContainerInvalidConfig.xml ${IOTIVITY_BIN_DIR_D}/tests/service/resource-container
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-container/unittests/ResourceContainerTestConfig.xml ${IOTIVITY_BIN_DIR_D}/tests/service/resource-container
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-container/unittests/libTestBundle.so ${D}${libdir}
+
+    #Resource encapsulation
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/librcs_client.so ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/librcs_client.a ${D}${libdir}
+
+    #Resource encapsulation common
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/librcs_common.so ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/librcs_common.a ${D}${libdir}
+
+    #Resource encapsulation server builder
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/librcs_server.so ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/librcs_server.a ${D}${libdir}
+
+    #Resource encapsulation sample apps
+    make_dir ${IOTIVITY_BIN_DIR_D}/examples/service/resource-encapsulation
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-encapsulation/examples/linux/sampleResourceClient ${IOTIVITY_BIN_DIR_D}/examples/service/resource-encapsulation
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-encapsulation/examples/linux/sampleResourceServer ${IOTIVITY_BIN_DIR_D}/examples/service/resource-encapsulation
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-encapsulation/examples/linux/nestedAttributesClient ${IOTIVITY_BIN_DIR_D}/examples/service/resource-encapsulation
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-encapsulation/examples/linux/nestedAttributesServer ${IOTIVITY_BIN_DIR_D}/examples/service/resource-encapsulation
+
+    #Resource encapsulation test
+    make_dir ${IOTIVITY_BIN_DIR_D}/tests/service/resource-encapsulation/resource-broker
+    make_dir ${IOTIVITY_BIN_DIR_D}/tests/service/resource-encapsulation/resource-cache
+    make_dir ${IOTIVITY_BIN_DIR_D}/tests/service/resource-encapsulation/common
+    make_dir ${IOTIVITY_BIN_DIR_D}/tests/service/resource-encapsulation/server-builder
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-encapsulation/unittests/rcs_client_test ${IOTIVITY_BIN_DIR_D}/tests/service/resource-encapsulation
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-encapsulation/src/resourceBroker/unittest/broker_test ${IOTIVITY_BIN_DIR_D}/examples/service/resource-encapsulation/resource-broker
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-encapsulation/src/resourceCache/unittests/cache_test ${IOTIVITY_BIN_DIR_D}/examples/service/resource-encapsulation/resource-cache
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-encapsulation/src/common/rcs_common_test ${IOTIVITY_BIN_DIR_D}/examples/service/resource-encapsulation/common
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-encapsulation/src/serverBuilder/rcs_server_test ${IOTIVITY_BIN_DIR_D}/examples/service/resource-encapsulation/server-builder
+
+    #Resource hosting
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libresource_hosting.a ${D}${libdir}
+
+    #Resource hosting sample app
+    make_dir ${IOTIVITY_BIN_DIR_D}/examples/service/resource-hosting
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-hosting/SampleApp/linux/sampleconsumer ${IOTIVITY_BIN_DIR_D}/examples/service/resource-hosting
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-hosting/SampleApp/linux/sampleprovider ${IOTIVITY_BIN_DIR_D}/examples/service/resource-hosting
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/resource-hosting/SampleApp/linux/sampleresourcehosting ${IOTIVITY_BIN_DIR_D}/examples/service/resource-hosting
+
+    #Things manager
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libTGMSDKLibrary.so ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libTGMSDKLibrary.a ${D}${libdir}
+
+    #Things manager apps
+    make_dir ${IOTIVITY_BIN_DIR_D}/examples/service/things-manager/configuration
+    copy_exec_recursive ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/things-manager/sampleapp/linux/configuration ${IOTIVITY_BIN_DIR_D}/examples/service/things-manager/configuration
+
+    #Things manager test
+    make_dir ${IOTIVITY_BIN_DIR_D}/tests/service/things-manager
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/things-manager/unittests/ThingsManagerTest ${IOTIVITY_BIN_DIR_D}/tests/service/things-manager
+
+    #Resource directory
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libresource_directory.a ${D}${libdir}
+
+    #Easy setup
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libESEnrolleeSDK.so ${D}${libdir}
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libESMediatorRich.so ${D}${libdir}
+
+    #Easy setup app
+    make_dir ${IOTIVITY_BIN_DIR_D}/examples/service/easy-setup
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/easy-setup/sampleapp/mediator/linux/richsdk_sample/mediator_rich ${IOTIVITY_BIN_DIR_D}/examples/service/easy-setup
+
+    #Easy setup tests
+    if ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=1', 'false', 'true', d)}; then
+        make_dir ${IOTIVITY_BIN_DIR_D}/tests/service/easy-setup
+        copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/easy-setup/mediator/richsdk/unittests/easysetup_mediator_test ${IOTIVITY_BIN_DIR_D}/tests/service/easy-setup
+    fi
+
+    #Scene manager
+    copy_file ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/libscene_manager.a ${D}${libdir}
+
+    #Scene manager apps
+    make_dir ${IOTIVITY_BIN_DIR_D}/examples/service/scene-manager
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/scene-manager/sampleapp/linux/fanserver ${IOTIVITY_BIN_DIR_D}/examples/service/scene-manager
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/scene-manager/sampleapp/linux/lightserver ${IOTIVITY_BIN_DIR_D}/examples/service/scene-manager
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/scene-manager/sampleapp/linux/sceneclient ${IOTIVITY_BIN_DIR_D}/examples/service/scene-manager
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/service/scene-manager/sampleapp/linux/sceneserver ${IOTIVITY_BIN_DIR_D}/examples/service/scene-manager
+
+    #Scene manager tests
+    make_dir ${IOTIVITY_BIN_DIR_D}/tests/service/scene-manager
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/scene_action_test ${IOTIVITY_BIN_DIR_D}/tests/service/scene-manager
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/scene_collection_test ${IOTIVITY_BIN_DIR_D}/tests/service/scene-manager
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/scene_list_test ${IOTIVITY_BIN_DIR_D}/tests/service/scene-manager
+    copy_exec ${S}/out/yocto/${IOTIVITY_TARGET_ARCH}/release/scene_test ${IOTIVITY_BIN_DIR_D}/tests/service/scene-manager
+
+    #Service Headers
+    make_dir ${D}${includedir}/iotivity/service/resource-container/
+    make_dir ${D}${includedir}/iotivity/service/resource-encapsulation/
+    make_dir ${D}${includedir}/iotivity/service/resource-hosting/
+    make_dir ${D}${includedir}/iotivity/service/resource-directory/
+    make_dir ${D}${includedir}/iotivity/service/things-manager/
+    make_dir ${D}${includedir}/iotivity/service/easy-setup/enrollee/
+    make_dir ${D}${includedir}/iotivity/service/easy-setup/mediator/csdk/
+    make_dir ${D}${includedir}/iotivity/service/easy-setup/mediator/richsdk/
+    make_dir ${D}${includedir}/iotivity/service/scene-manager/
+
+    #Resource container
+    copy_file_recursive ${S}/service/resource-container/include ${D}${includedir}/iotivity/service/resource-container
+
+    #Resource Encapsulation
+    copy_file_recursive ${S}/service/resource-encapsulation/include ${D}${includedir}/iotivity/service/resource-encapsulation
+    copy_file_recursive ${S}/service/resource-encapsulation/src/common/expiryTimer/include ${D}${includedir}/iotivity/service/resource-encapsulation
+    copy_file_recursive ${S}/service/resource-encapsulation/src/common/primitiveResource/include ${D}${includedir}/iotivity/service/resource-encapsulation
+    copy_file_recursive ${S}/service/resource-encapsulation/src/common/utils/include ${D}${includedir}/iotivity/service/resource-encapsulation
+    copy_file_recursive ${S}/service/resource-encapsulation/src/resourceBroker/include ${D}${includedir}/iotivity/service/resource-encapsulation
+    copy_file_recursive ${S}/service/resource-encapsulation/src/resourceCache/include ${D}${includedir}/iotivity/service/resource-encapsulation
+    copy_file_recursive ${S}/service/resource-encapsulation/src/serverBuilder/include ${D}${includedir}/iotivity/service/resource-encapsulation
+
+    #Resource hosting
+    copy_file_recursive ${S}/service/resource-hosting/include ${D}${includedir}/iotivity/service/resource-hosting
+
+    #Things manager
+    copy_file_recursive ${S}/service/things-manager/sdk/inc ${D}${includedir}/iotivity/service/things-manager
+
+    #Easy setup
+    copy_file_recursive ${S}/service/easy-setup/inc ${D}${includedir}/iotivity/service/easy-setup
+    copy_file_recursive ${S}/service/easy-setup/mediator/richsdk/inc/ ${D}${includedir}/iotivity/service/easy-setup/mediator/richsdk/
+
+    #Scene manager
+    copy_file_recursive ${S}/service/scene-manager/include ${D}${includedir}/iotivity/service/scene-manager/
+
+    #Misc headers
+    make_dir ${D}${includedir}/iotivity/extlibs/cjson
+    make_dir ${D}${includedir}/iotivity/extlibs/timer
+    copy_file ${S}/extlibs/cjson/cJSON.h ${D}${includedir}/iotivity/extlibs/cjson
+    copy_file ${S}/extlibs/timer/timer.h ${D}${includedir}/iotivity/extlibs/timer
+    copy_file ${S}/resource/c_common/platform_features.h ${D}${includedir}/iotivity/resource
+    copy_file ${S}/resource/c_common/platform_features.h ${D}${includedir}/iotivity/resource/stack
+    copy_file ${S}/resource/c_common/iotivity_config.h ${D}${includedir}/iotivity/resource
+    #TODO: Workaround for introduced dependency ( https://jira.iotivity.org/browse/IOT-1460 )
+    install -c -m 444  ${S}/extlibs/tinycbor/tinycbor/src/*.h   ${D}${includedir}
+
+    #Adapt unaligned pkconfig (transitionnal)
+    sed -e 's|^prefix=.*|prefix=/usr|g' -i ${S}/iotivity.pc
+    make_dir ${D}${libdir}/pkgconfig/
+    copy_file ${S}/iotivity.pc ${D}${libdir}/pkgconfig/
+    ln -s iotivity/resource ${D}${includedir}/resource
+    ln -s iotivity/service ${D}${includedir}/service
+    ln -s ../iotivity/resource/oc_logger/targets ${D}${includedir}/resource/
+
+    chrpath -d ${D}${libdir}/*.so
+}
+
+#IOTIVITY packages:
+#Resource: iotivity-resource, iotivity-resource-dev, iotivity-resource-thin-staticdev, iotivity-resource-dbg
+#Resource Samples: iotivity-resource-samples, iotivity-resource-samples-dbg
+#Service: iotivity-service, iotivity-service-dev, iotivity-service-staticdev, iotivity-service-dbg
+#Service Samples: iotivity-service-samples, iotivity-service-samples-dbg
+#Tests: iotivity-tests, iotivity-tests-dbg
+
+FILES_${PN}-resource-dev = "\
+        ${includedir}/iotivity/resource \
+        ${includedir}/iotivity/extlibs \
+        ${libdir}/pkgconfig/iotivity.pc"
+
+FILES_${PN}-resource-thin-staticdev = "\
+        ${libdir}/libocsrm.a \
+        ${libdir}/libconnectivity_abstraction.a \
+        ${libdir}/liboctbstack.a \
+        ${libdir}/libcoap.a \
+        ${libdir}/libc_common.a \
+        ${libdir}/libroutingmanager.a \
+        ${libdir}/libtimer.a"
+
+FILES_${PN}-plugins-staticdev = "\
+        ${includedir}/iotivity/plugins \
+        ${libdir}/libplugin_interface.a \
+        ${libdir}/libzigbee_wrapper.a \
+        ${libdir}/libtelegesis_wrapper.a"
+
+FILES_${PN}-plugins-dbg = "\
+        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/plugins"
+
+FILES_${PN}-resource = "\
+        ${libdir}/libconnectivity_abstraction.so \
+        ${libdir}/liboc.so \
+        ${libdir}/liboctbstack.so \
+        ${libdir}/liboc_logger.so \
+        ${libdir}/liboc_logger_core.so \
+        ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=1', '${libdir}/libocprovision.so', '', d)}"
+
+FILES_${PN}-resource-dbg = "\
+        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/resource \
+        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/extlibs \
+        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/examples \
+        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/out \
+        ${libdir}/.debug/liboc.so \
+        ${libdir}/.debug/liboctbstack.so \
+        ${libdir}/.debug/liboc_logger.so \
+        ${libdir}/.debug/liboc_logger_core.so \
+        ${@bb.utils.contains('EXTRA_OESCONS', 'SECURED=1', '${libdir}/.debug/libocprovision.so', '', d)}"
+
+FILES_${PN}-resource-samples-dbg = "\
+        ${IOTIVITY_BIN_DIR}/examples/resource/cpp/.debug \
+        ${IOTIVITY_BIN_DIR}/examples/resource/c/SimpleClientServer/.debug \
+        ${IOTIVITY_BIN_DIR}/examples/resource/c/secure/.debug"
+
+FILES_${PN}-resource-samples = "\
+        ${IOTIVITY_BIN_DIR}/examples/resource"
+
+FILES_${PN}-plugins-samples = "\
+        ${IOTIVITY_BIN_DIR}/examples/plugins"
+
+FILES_${PN}-plugins-samples-dbg = "\
+        ${IOTIVITY_BIN_DIR}/examples/plugins/zigbee/.debug"
+
+FILES_${PN}-service-dbg = "\
+        ${prefix}/src/debug/${PN}/${EXTENDPE}${PV}-${PR}/${PN}-${PV}/service \
+        ${libdir}/.debug"
+
+FILES_${PN}-service-dev = "\
+        ${includedir}/iotivity/service"
+
+FILES_${PN}-service = "\
+        ${libdir}/libBMISensorBundle.so \
+        ${libdir}/libDISensorBundle.so \
+        ${libdir}/librcs_server.so \
+        ${libdir}/librcs_common.so \
+        ${libdir}/librcs_container.so \
+        ${libdir}/libHueBundle.so \
+        ${libdir}/libTGMSDKLibrary.so \
+        ${libdir}/libESEnrolleeSDK.so \
+        ${libdir}/libESMediatorRich.so \
+        ${libdir}/librcs_client.so \
+        ${libdir}/libTestBundle.so"
+
+FILES_${PN}-service-staticdev = "\
+        ${libdir}/librcs_client.a \
+        ${libdir}/librcs_server.a \
+        ${libdir}/librcs_common.a \
+        ${libdir}/librcs_container.a \
+        ${libdir}/libTGMSDKLibrary.a \
+        ${libdir}/libresource_hosting.a \
+        ${libdir}/libresource_directory.a \
+        ${libdir}/libscene_manager.a"
+
+FILES_${PN}-service-samples-dbg = "\
+        ${IOTIVITY_BIN_DIR}/examples/service/things-manager/groupaction/.debug \
+        ${IOTIVITY_BIN_DIR}/examples/service/resource-encapsulation/.debug \
+        ${IOTIVITY_BIN_DIR}/examples/service/resource-container/.debug \
+        ${IOTIVITY_BIN_DIR}/examples/service/resource-hosting/.debug \
+        ${IOTIVITY_BIN_DIR}/examples/service/resource-directory/.debug \
+        ${IOTIVITY_BIN_DIR}/examples/service/easy-setup/.debug \
+        ${IOTIVITY_BIN_DIR}/examples/service/things-manager/configuration/.debug \
+        ${IOTIVITY_BIN_DIR}/examples/service/scene-manager/.debug"
+
+FILES_${PN}-service-samples = "\
+        ${IOTIVITY_BIN_DIR}/examples/service"
+
+FILES_${PN}-tests-dbg = "\
+        ${libdir}/.debug/libgtest.so \
+        ${libdir}/.debug/libgtest_main.so \
+        ${IOTIVITY_BIN_DIR}/tests/service/easy-setup/.debug \
+        ${IOTIVITY_BIN_DIR}/tests/resource/.debug \
+        ${IOTIVITY_BIN_DIR}/tests/service/things-manager/.debug \
+        ${IOTIVITY_BIN_DIR}/tests/service/resource-container/.debug \
+        ${IOTIVITY_BIN_DIR}/tests/service/resource-encapsulation/.debug \
+        ${IOTIVITY_BIN_DIR}/tests/service/scene-manager/.debug \
+        ${IOTIVITY_BIN_DIR}/tests/plugins/zigbee/.debug"
+
+FILES_${PN}-tests = "\
+        ${IOTIVITY_BIN_DIR}/tests"
+
+PACKAGES = "${PN}-tests-dbg ${PN}-tests ${PN}-plugins-dbg ${PN}-plugins-staticdev ${PN}-plugins-samples-dbg ${PN}-plugins-samples ${PN}-resource-dbg ${PN}-resource ${PN}-resource-dev ${PN}-resource-thin-staticdev ${PN}-resource-samples-dbg ${PN}-resource-samples ${PN}-service-dbg ${PN}-service ${PN}-service-dev ${PN}-service-staticdev ${PN}-service-samples-dbg ${PN}-service-samples ${PN}-dev ${PN}"
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
+BBCLASSEXTEND = "native nativesdk"
-- 
1.9.1


