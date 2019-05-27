Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 607BEE00CF4; Sun, 26 May 2019 23:50:31 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40DDCE00C43
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 23:50:30 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x4R6o9SL022467
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 23:50:19 -0700
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.439.0; Sun, 26 May 2019 23:49:58 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 27 May 2019 14:49:56 +0800
Message-ID: <1558939797-1027-1-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 1/2] crmsh: do not use unstable github archive tarballs
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
X-List-Received-Date: Mon, 27 May 2019 06:50:31 -0000
Content-Type: text/plain

Since commit [21f84fc insane: add sanity checks to SRC_URI] applied
in oe-core, do not use unstable github archive tarballs

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb b/meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb
index b28a826..7563c99 100644
--- a/meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb
+++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb
@@ -13,12 +13,12 @@ DEPENDS = "asciidoc-native \
            "
 RDEPENDS_${PN} = "pacemaker python-lxml gawk"
 
-SRC_URI = "https://github.com/ClusterLabs/crmsh/archive/${PV}.tar.gz;downloadfilename=${BP}.tar.gz \
+S = "${WORKDIR}/git"
+SRC_URI = "git://github.com/ClusterLabs/${BPN}.git;branch=crmsh-3.0 \
            file://tweaks_for_build.patch \
           "
 
-SRC_URI[md5sum] = "563b463155a652820c8d1319418e88b7"
-SRC_URI[sha256sum] = "364fadb0d0c9619676e10bb75f4ea833a49019aa77ddb26229bc9d1c435585c0"
+SRCREV = "41845ca5511b844593cf25ae4eb7f307aa78c5be"
 
 inherit autotools-brokensep distutils-base
 
-- 
2.7.4


