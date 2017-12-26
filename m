Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8053FE00D97; Mon, 25 Dec 2017 17:21:56 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63815E00D7E
	for <yocto@yoctoproject.org>; Mon, 25 Dec 2017 17:21:54 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vBQ1Lsh9001105
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 25 Dec 2017 17:21:54 -0800 (PST)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Mon, 25 Dec 2017 17:21:53 -0800
From: Chen Qi <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 26 Dec 2017 09:19:44 +0800
Message-ID: <20171226011946.23545-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-dpdk][PATCH 1/3] dpdk-dev-libibverbs: fix do_fetch failure in case of multilib
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
X-List-Received-Date: Tue, 26 Dec 2017 01:21:56 -0000
Content-Type: text/plain

Fix to correctly set SRC_URI and S to avoid do_fetch failure in case of multilib.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 .../dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb  | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb b/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb
index e40c63b..9118494 100644
--- a/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb
+++ b/recipes-extended/dpdk-dev-libibverbs/dpdk-dev-libibverbs_1.2.1-3.4-2.0.0.0.bb
@@ -3,7 +3,7 @@ HOMEPAGE = "https://github.com/Mellanox/dpdk-dev-libibverbs"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM =  "file://COPYING;md5=7c557f27dd795ba77cc419dddc656b51"
 
-SRC_URI = "https://github.com/Mellanox/dpdk-dev-libibverbs/archive/libibverbs-${PV}.tar.gz;name=${PN} \
+SRC_URI = "https://github.com/Mellanox/dpdk-dev-libibverbs/archive/libibverbs-${PV}.tar.gz \
            file://init_c.patch \
            file://0001-Fix-build-with-clang.patch \
            file://0002-typecast-enum-to-int-before-comparison.patch \
@@ -11,8 +11,8 @@ SRC_URI = "https://github.com/Mellanox/dpdk-dev-libibverbs/archive/libibverbs-${
            file://0004-Fix-clang-warnings.patch \
            "
 
-SRC_URI[dpdk-dev-libibverbs.md5sum] = "65234ee278eb437a7069326f37cd4d86"
-SRC_URI[dpdk-dev-libibverbs.sha256sum] = "a6471515556cb8d10ad471bb7efb8cf760b248a28aceb57d4534d50d572f56cd"
+SRC_URI[md5sum] = "65234ee278eb437a7069326f37cd4d86"
+SRC_URI[sha256sum] = "a6471515556cb8d10ad471bb7efb8cf760b248a28aceb57d4534d50d572f56cd"
 
 # A machine needs to enable this using:
 # COMPATIBLE_MACHINE_pn-dpdk-dev-libibverbs = "<machine name>"
@@ -20,7 +20,7 @@ SRC_URI[dpdk-dev-libibverbs.sha256sum] = "a6471515556cb8d10ad471bb7efb8cf760b248
 COMPATIBLE_MACHINE = "null"
 COMPATIBLE_HOST_libc-musl_class-target = "null"
 
-S = "${WORKDIR}/${PN}-libibverbs-${PV}"
+S = "${WORKDIR}/dpdk-dev-libibverbs-libibverbs-${PV}"
 COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
 DEPENDS = "libnl"
 
-- 
2.11.0


