Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE55DE00C7D; Sun, 26 May 2019 23:52:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74360E0043B
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 23:52:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x4R6qNCh022278
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 26 May 2019 23:52:23 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.439.0; Sun, 26 May 2019 23:52:22 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <Joe_MacDonald@mentor.com>
Date: Mon, 27 May 2019 14:52:21 +0800
Message-ID: <1558939941-23132-1-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] setools: do not use unstable github archive tarballs
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
X-List-Received-Date: Mon, 27 May 2019 06:52:25 -0000
Content-Type: text/plain

Since commit [21f84fc insane: add sanity checks to SRC_URI] applied
in oe-core, do not use unstable github archive tarballs

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-security/setools/setools_4.1.1.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-security/setools/setools_4.1.1.bb b/recipes-security/setools/setools_4.1.1.bb
index c5a2d34..8bdbfba 100644
--- a/recipes-security/setools/setools_4.1.1.bb
+++ b/recipes-security/setools/setools_4.1.1.bb
@@ -8,14 +8,14 @@ SETools."
 SECTION = "base"
 LICENSE = "GPLv2 & LGPLv2.1"
 
-SRC_URI = "https://github.com/TresysTechnology/setools/archive/${PV}.tar.gz;downloadfilename=setools-${PV}.tar.gz \
+S = "${WORKDIR}/git"
+SRC_URI = "git://github.com/TresysTechnology/${BPN}.git;branch=4.1 \
            file://setools4-fixes-for-cross-compiling.patch \
            file://setools4-fix-cross-compiling-errors-for-powerpc-mips.patch \
            file://Fix-build-failure-with-GCC-7-due-to-possible-truncat.patch \
 "
 
-SRC_URI[md5sum] = "54cf5c0ca2aa4ef7c6ac153981af34cd"
-SRC_URI[sha256sum] = "46a927ea2b163cbe1d35cc35da43e45853e13720c7e02d4cf75a498783c19610"
+SRCREV = "e03617eb7ab5a035633bff66500b95d25232e331"
 
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=83a5eb6974c11f30785e90d0eeccf40c \
                     file://${S}/COPYING.GPL;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
-- 
2.7.4


