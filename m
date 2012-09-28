Return-Path: <martin.donnelly@ge.com>
Received: from exprod5og102.obsmtp.com (exprod5og102.obsmtp.com [64.18.0.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AC1BE0049B
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 03:34:56 -0700 (PDT)
Received: from cinmlip10.e2k.ad.ge.com ([165.156.4.1]) (using TLSv1) by
	exprod5ob102.postini.com ([64.18.4.12]) with SMTP
	ID DSNKUGV9SwpzhcbIEHN1oU0If9/rK19M/HZV@postini.com;
	Fri, 28 Sep 2012 03:34:56 PDT
Received: from unknown (HELO alpmlip01.e2k.ad.ge.com) ([3.159.17.48])
	by cinmlip10.e2k.ad.ge.com with ESMTP; 28 Sep 2012 06:34:50 -0400
Received: from selma.edi.geip.ge.com ([3.26.68.70])
	by alpmlip01.e2k.ad.ge.com with ESMTP; 28 Sep 2012 06:34:50 -0400
Received: from fyvie.edi.geip.ge.com (fyvie.edi.geip.ge.com [3.26.68.199])
	by selma.edi.geip.ge.com (Postfix) with ESMTP id 7902DE12FE;
	Fri, 28 Sep 2012 11:34:48 +0100 (BST)
From: Martin Donnelly <martin.donnelly@ge.com>
To: yocto@yoctoproject.org
Date: Fri, 28 Sep 2012 11:34:04 +0100
Message-Id: <1348828444-31626-1-git-send-email-martin.donnelly@ge.com>
X-Mailer: git-send-email 1.7.11.4
Cc: Martin Donnelly <martin.donnelly@ge.com>
Subject: [PATCH] mtd-utils: update SRC_URI to support BB_NO_NETWORK
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
X-List-Received-Date: Fri, 28 Sep 2012 10:34:56 -0000

Move the tag from the SRC_URI to SRCREV to enable builds
using BB_NO_NETWORK

Signed-off-by: Martin Donnelly <martin.donnelly@ge.com>
---
 meta/recipes-devtools/mtd/mtd-utils_1.5.0.bb | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-devtools/mtd/mtd-utils_1.5.0.bb b/meta/recipes-devtools/mtd/mtd-utils_1.5.0.bb
index 1a9d4d3..f371739 100644
--- a/meta/recipes-devtools/mtd/mtd-utils_1.5.0.bb
+++ b/meta/recipes-devtools/mtd/mtd-utils_1.5.0.bb
@@ -6,8 +6,9 @@ LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
                     file://include/common.h;beginline=1;endline=17;md5=ba05b07912a44ea2bf81ce409380049c"
 
-SRC_URI = "git://git.infradead.org/mtd-utils.git;protocol=git;tag=ca39eb1d98e736109c64ff9c1aa2a6ecca222d8f \
-		file://add-exclusion-to-mkfs-jffs2-git-2.patch"
+SRC_URI = "git://git.infradead.org/mtd-utils.git;protocol=git \
+	file://add-exclusion-to-mkfs-jffs2-git-2.patch"
+SRCREV = "ca39eb1d98e736109c64ff9c1aa2a6ecca222d8f"
 
 S = "${WORKDIR}/git/"
 
-- 
1.7.11.4


