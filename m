Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7B2EE00D4A; Fri, 10 Aug 2018 01:10:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C952E00CA3
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 01:10:34 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w7A8A8UR004427
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 01:10:24 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.399.0; Fri, 10 Aug 2018 01:10:04 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 10 Aug 2018 16:09:57 +0800
Message-ID: <1533888603-57726-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [PATCH][meta-cgl] crmsh: 2.3.2 -> 3.0.3
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
X-List-Received-Date: Fri, 10 Aug 2018 08:10:40 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 meta-cgl-common/recipes-cgl/crmsh/{crmsh_2.3.2.bb => crmsh_3.0.3.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-cgl-common/recipes-cgl/crmsh/{crmsh_2.3.2.bb => crmsh_3.0.3.bb} (87%)

diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh_2.3.2.bb b/meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb
similarity index 87%
rename from meta-cgl-common/recipes-cgl/crmsh/crmsh_2.3.2.bb
rename to meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb
index 709fbff..b28a826 100644
--- a/meta-cgl-common/recipes-cgl/crmsh/crmsh_2.3.2.bb
+++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb
@@ -17,8 +17,8 @@ SRC_URI = "https://github.com/ClusterLabs/crmsh/archive/${PV}.tar.gz;downloadfil
            file://tweaks_for_build.patch \
           "
 
-SRC_URI[md5sum] = "0a475d3c56a158dc991de61a26450eb5"
-SRC_URI[sha256sum] = "ac78b7786f6a52cc3d86b3d80b2d8627e84873330cd4846d5ea48869189ad864"
+SRC_URI[md5sum] = "563b463155a652820c8d1319418e88b7"
+SRC_URI[sha256sum] = "364fadb0d0c9619676e10bb75f4ea833a49019aa77ddb26229bc9d1c435585c0"
 
 inherit autotools-brokensep distutils-base
 
-- 
2.7.4


