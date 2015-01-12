Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CDC9E00906; Sun, 11 Jan 2015 20:06:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C5DFE008CF
	for <yocto@yoctoproject.org>; Sun, 11 Jan 2015 20:06:49 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="55896242"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 12 Jan 2015 12:03:17 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t0C469hu032495
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 12:06:09 +0800
Received: from localhost.localdomain (10.167.226.48) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Mon, 12 Jan 2015 12:06:44 +0800
From: Lei Maohui <leimaohui@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 12 Jan 2015 12:05:58 +0800
Message-ID: <1421035558-50846-1-git-send-email-leimaohui@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.48]
Subject: [meta-cgl][PATCH] cluster: add new recipe
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
X-List-Received-Date: Mon, 12 Jan 2015 04:06:55 -0000
Content-Type: text/plain

This is the development site for several related linux clustering components.

Signed-off-by: Lei Maohui <leimaohui@cn.fujitsu.com>
---
 .../recipes-cgl/cluster/cluster_3.2.0.bb           | 63 ++++++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb

diff --git a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
new file mode 100644
index 0000000..2d6b49c
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
@@ -0,0 +1,63 @@
+Summanry = "Red Hat Cluster"
+DESCRIPTION = "Red Hat Cluster"
+SECTION = "libs"
+HOMEPAGE = "https://fedorahosted.org/cluster/wiki/HomePage"
+
+SRC_URI = "https://fedorahosted.org/releases/c/l/cluster/${BP}.tar.xz"
+
+SRC_URI[md5sum] = "3f496dbecaea367af5a5e81d2e8dcab8"
+
+LICENSE = "GPL-2.0 LGPL-2.0" 
+LIC_FILES_CHKSUM = "file://doc/README.licence;md5=ee8ae43af5ea09f12ca7f7a649764cb0" 
+
+PR = "r1" 
+
+DEPENDS = "corosync dbus openldap openais libxml2 ncurses perl zlib"
+
+FILES_${PN} += "/lib/udev/rules.d/51-dlm.rules \
+    ${localstatedir}/run "
+FILES_${PN}-doc += "/usr/share/man3/* /usr/share/man8/*"
+
+do_configure () {
+    CFLAGS="${TARGET_CFLAGS}"       \
+    CCFLAGS="${TARGET_CFLAGS}"      \
+    CXXFLAGS="${TARGET_CFLAGS}"     \
+    ./configure \
+        --without_rgmanager \
+        --disable_kernel_check \
+        --without_cman \
+        --without_fence \
+        --without_bindings \
+        --without_group \
+        --without_config \
+        2>&1
+}
+
+do_compile () {
+    pwd
+    CFLAGS="${TARGET_CFLAGS}" \
+    make libdir=${STAGING_LIBDIR} incdir=${STAGING_INCDIR}          \
+    CC=${TARGET_SYS}-gcc
+}
+do_install () {
+    rm -rf ${D}
+    make install DESTDIR=${D} libdir=${D}/usr/lib sbindir=${D}/usr/sbin \
+                 mandir=${D}/usr/share docdir=${D}/usr/share/doc
+
+    ## tree fix up
+    # /etc/sysconfig/cman
+    mkdir -p ${D}/etc/sysconfig
+
+    # logrotate name
+    mv ${D}/etc/logrotate.d/cluster ${D}/etc/logrotate.d/cman
+    # fix library permissions or strip helpers won't work.
+    find ${D} -name "lib*.so.*" -exec chmod 0755 {} \;
+    # fix lcrso permissions or strip helpers won't work.
+    find ${D} -name "*.lcrso" -exec chmod 0755 {} \;
+    # remove docs
+    rm -rf ${D}${datadir}/doc/cluster
+    rm -rf ${D}${localstatedir}/run
+    rm -rf ${D}${localstatedir}/lib
+    rm -rf ${D}${localstatedir}/log
+    rmdir --ignore-fail-on-non-empty ${D}${localstatedir}
+}
-- 
1.8.4.2


