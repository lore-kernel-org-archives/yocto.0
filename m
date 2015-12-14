Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D05A7E0088B; Mon, 14 Dec 2015 01:05:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BCFEE0088B
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 01:05:55 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.20,346,1444665600"; 
   d="scan'208";a="1549267"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 14 Dec 2015 17:05:45 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (unknown [10.167.33.85])
	by cn.fujitsu.com (Postfix) with ESMTP id 6AF414092579
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 17:05:33 +0800 (CST)
Received: from localhost.localdomain (10.167.226.98) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Mon, 14 Dec 2015 17:08:44 +0800
From: Li Xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 14 Dec 2015 12:05:24 +0300
Message-ID: <1450083924-1727-3-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1450083924-1727-1-git-send-email-lixin.fnst@cn.fujitsu.com>
References: <1450083924-1727-1-git-send-email-lixin.fnst@cn.fujitsu.com>
MIME-Version: 1.0
X-Originating-IP: [10.167.226.98]
X-yoursite-MailScanner-Information: Please contact the ISP for more information
X-yoursite-MailScanner-ID: 6AF414092579.AE1AC
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: lixin.fnst@cn.fujitsu.com
Subject: [meta-cgl][PATCH 3/3] pacemaker: WARNING Fix
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
X-List-Received-Date: Mon, 14 Dec 2015 09:05:59 -0000
Content-Type: text/plain

* WARNING: QA Issue: pacemaker: Files/directories were installed but not shipped in any package:
  /lib/systemd/system/crm_mon.service
  Please set FILES such that these items are packaged.

* WARNING: QA Issue: pacemaker-libs rdepends on dbus-lib, but it isn't a build dependency? [build-deps]

* Also Modify SRC_URI,since original one is always do_fetch failed.

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.13.bb | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.13.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.13.bb
index 1806fe1..d2e2395 100755
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.13.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.13.bb
@@ -14,7 +14,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=6adca3b36477cc77e04376f9a40df32c \
                    "
 DEPENDS = "corosync libxslt openais libxml2 gnutls resource-agents libqb python-native"
 
-SRC_URI = "git://github.com/ClusterLabs/pacemaker.git \
+SRC_URI = "https://github.com/ClusterLabs/${PN}/archive/Pacemaker-${PV}.zip \
            file://0001-pacemaker-fix-xml-config.patch \
            file://0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch \
            file://0003-pacemaker-fix-header-defs-lookup.patch \
@@ -23,11 +23,12 @@ SRC_URI = "git://github.com/ClusterLabs/pacemaker.git \
            file://volatiles \
            file://tmpfiles \
           "
-SRCREV = "6052cd16c2f455809f8088af76ce86483bf98353"
+SRC_URI[md5sum] = "d84a5173306727a981a4f87e36007595"
+SRC_URI[sha256sum] = "e963bc59a5d98a3e3441ea5cccb42aa67f9d7934b80c8818e19ae91c5da48331"
 
 inherit autotools-brokensep pkgconfig systemd python-dir useradd
 
-S="${WORKDIR}/git"
+S="${WORKDIR}/pacemaker-Pacemaker-${PV}"
 
 EXTRA_OECONF += "STAGING_INCDIR=${STAGING_INCDIR} \
                  --disable-fatal-warnings \
@@ -65,7 +66,7 @@ FILES_${PN}-libs = "${libdir}/libcib.so.* \
                     ${libdir}/libstonithd.so.* \
                     ${libdir}/libtransitioner.so.* \
                    "
-RDEPENDS_${PN}-libs += "libqb"
+RDEPENDS_${PN}-libs += "libqb dbus-lib"
 FILES_${PN}-cluster-libs = "${libdir}/libcrmcluster.so.*"
 RDEPENDS_${PN}-cluster-libs += "libqb"
 FILES_${PN}-remote = "${sysconfdir}/init.d/pacemaker_remote \
@@ -83,7 +84,7 @@ FILES_${PN}-dbg += "${libdir}/corosync/lcrso/.debug"
 RDEPENDS_${PN} = "bash python libqb"
 
 SYSTEMD_PACKAGES += "${PN}-remote"
-SYSTEMD_SERVICE_${PN} += "pacemaker.service"
+SYSTEMD_SERVICE_${PN} += "pacemaker.service crm_mon.service"
 SYSTEMD_SERVICE_${PN}-remote += "pacemaker_remote.service"
 
 USERADD_PACKAGES = "${PN}"
-- 
1.8.4.2




