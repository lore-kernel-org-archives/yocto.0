Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF158E00D31; Sun, 26 May 2019 23:50:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54D02E00CF4
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 23:50:33 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x4R6oWFC004400
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 23:50:32 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.439.0; Sun, 26 May 2019 23:50:20 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 27 May 2019 14:49:57 +0800
Message-ID: <1558939797-1027-2-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558939797-1027-1-git-send-email-hongxu.jia@windriver.com>
References: <1558939797-1027-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 2/2] pacemaker: do not use unstable github archive tarballs
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
X-List-Received-Date: Mon, 27 May 2019 06:50:33 -0000
Content-Type: text/plain

Since commit [21f84fc insane: add sanity checks to SRC_URI] applied
in oe-core, do not use unstable github archive tarballs

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.19.bb | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.19.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.19.bb
index 00893d1..a7c38df 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.19.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.19.bb
@@ -13,7 +13,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=19a64afd3a35d044a80579d7aafc30ff"
 
 DEPENDS = "corosync libxslt libxml2 gnutls resource-agents libqb python-native"
 
-SRC_URI = "https://github.com/ClusterLabs/${BPN}/archive/Pacemaker-${PV}.zip \
+SRC_URI = "git://github.com/ClusterLabs/${BPN}.git;branch=1.1 \
            file://0001-pacemaker-fix-xml-config.patch \
            file://0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch \
            file://0003-pacemaker-fix-header-defs-lookup.patch \
@@ -28,12 +28,11 @@ SRC_URI = "https://github.com/ClusterLabs/${BPN}/archive/Pacemaker-${PV}.zip \
 
 SRC_URI_append_libc-musl = "file://0001-pacemaker-fix-compile-error-of-musl-libc.patch"
 
-SRC_URI[md5sum] = "deb7017c5a9d3f39895d9ea2c34bc8eb"
-SRC_URI[sha256sum] = "6e222046487c2dc6ae61d49089ecbf6a0bcb495e8cdcb76d115fd987d0df8f7f"
+SRCREV = "c3c624ea3d98a74a8a287671a156db126c99a7bb"
 
 inherit autotools-brokensep pkgconfig systemd python-dir useradd
 
-S="${WORKDIR}/pacemaker-Pacemaker-${PV}"
+S = "${WORKDIR}/git"
 
 CLEANBROKEN = "1"
 
-- 
2.7.4


