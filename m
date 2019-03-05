Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63C32E00D1B; Tue,  5 Mar 2019 01:59:49 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2D24E00D11
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2019 01:59:48 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x259xmIq029813
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 5 Mar 2019 01:59:48 -0800 (PST)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.439.0; Tue, 5 Mar 2019 01:59:47 -0800
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 5 Mar 2019 17:59:46 +0800
Message-ID: <1551779986-178606-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [patchtest][PATCH] core-image-patchtest: avoid skip parse recipe
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
X-List-Received-Date: Tue, 05 Mar 2019 09:59:49 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

patchtest [1] failed since the recipe is skipparsed since it defines
REQUIRED_DISTRO_FEATURES.  patchtest don't really need
DISTRO_FEATURES, so fix the problem by set REQUIRED_DISTRO_FEATURES/
COMPATIBLE_MACHINE/COMPATIBLE_HOST to "" to avoid skip parse

[Yocto #13005]

[1] https://patchwork.openembedded.org/series/9949/

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 meta-patchtest/recipes-core/images/core-image-patchtest.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-patchtest/recipes-core/images/core-image-patchtest.bb b/meta-patchtest/recipes-core/images/core-image-patchtest.bb
index 47e4041..95279d2 100644
--- a/meta-patchtest/recipes-core/images/core-image-patchtest.bb
+++ b/meta-patchtest/recipes-core/images/core-image-patchtest.bb
@@ -30,6 +30,9 @@ TMPBUILD="\$(mktemp -d)"
 BRANCH="\$(get-target-branch \$REPO \$MBOX | awk '{print \$NF}')"
 cd \$REPO
 source ./oe-init-build-env \$TMPBUILD
+echo "COMPATIBLE_MACHINE_qemuall = \\"\\"" >> \$TMPBUILD/conf/local.conf
+echo "COMPATIBLE_HOST_qemuall = \\"\\"" >> \$TMPBUILD/conf/local.conf
+echo "REQUIRED_DISTRO_FEATURES_qemuall = \\"\\"" >> \$TMPBUILD/conf/local.conf
 test-mboxes -r \$REPO -s \$SUITESTART -m \$MBOX -o \$RESULTS -- --base-branch \$BRANCH
 rm -rf \$TMPBUILD
  }
-- 
2.7.4


