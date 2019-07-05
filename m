Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3DFCE00D8A; Fri,  5 Jul 2019 00:53:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D36DE009CF
	for <yocto@yoctoproject.org>; Fri,  5 Jul 2019 00:53:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x657r7I4029019
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 5 Jul 2019 00:53:17 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.439.0; Fri, 5 Jul 2019 00:52:56 -0700
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 5 Jul 2019 15:52:55 +0800
Message-ID: <1562313175-118336-1-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] cluster-glue: use git fetcher instead of the tarball source
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
X-List-Received-Date: Fri, 05 Jul 2019 07:53:29 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

Per http://hg.linux-ha.org/, the repo moves to
https://github.com/ClusterLabs/cluster-glue and since
commit [21f84fc insane: add sanity checks to SRC_URI]
applied in oe-core, do not use unstable github archive
tarballs, so use git instead.

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
index 0673482..e0aa2b1 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
@@ -11,7 +11,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
 DEPENDS = "libxml2 libtool glib-2.0 bzip2 util-linux net-snmp openhpi"
 
 SRC_URI = " \
-    http://hg.linux-ha.org/glue/archive/glue-${PV}.tar.bz2 \
+    git://github.com/ClusterLabs/${BPN}.git \
     file://0001-don-t-compile-doc-and-Error-Fix.patch \
     file://0001-ribcl.py.in-Warning-Fix.patch \
     file://volatiles \
@@ -19,8 +19,7 @@ SRC_URI = " \
 "
 SRC_URI_append_libc-uclibc = " file://kill-stack-protector.patch"
 
-SRC_URI[md5sum] = "ec620466d6f23affa3b074b72bca7870"
-SRC_URI[sha256sum] = "feba102fa1e24b6be2005089ebe362b82d6567af60005cf371679b1b44ec503f"
+SRCREV = "1bc77825c0cfb0c80f9c82a061af7ede68676cb4"
 
 inherit autotools useradd pkgconfig systemd
 
@@ -30,7 +29,7 @@ SYSTEMD_AUTO_ENABLE = "disable"
 HA_USER = "hacluster"
 HA_GROUP = "haclient"
 
-S = "${WORKDIR}/Reusable-Cluster-Components-glue--glue-${PV}"
+S = "${WORKDIR}/git"
 
 PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'systemd', d)}"
 PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_system_unitdir},--without-systemdsystemunitdir,systemd"
-- 
2.7.4


