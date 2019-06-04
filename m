Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B2E2E00D44; Tue,  4 Jun 2019 00:54:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 991DDE00D36
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2019 00:54:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x547sHrq009103
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 4 Jun 2019 00:54:37 -0700
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.439.0; Tue, 4 Jun 2019 00:54:07 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 4 Jun 2019 15:54:06 +0800
Message-ID: <1559634846-13094-1-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] resource-agents: improve reproducibility
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
X-List-Received-Date: Tue, 04 Jun 2019 07:54:50 -0000
Content-Type: text/plain

Script ocf-binaries contains build path
$ grep tmp-glibc -rn image/
|image/usr/lib64/ocf/lib/heartbeat/ocf-binaries:11:: ${EGREP:="/buildarea1/hjia/
wrlinux-1019/build_master-wr_qemux86-64_2019053109/build/tmp-glibc/hosttools/grep -E"}
|image/usr/lib64/ocf/lib/heartbeat/ocf-binaries:16:: ${TEST:=/buildarea1/hjia/
wrlinux-1019/build_master-wr_qemux86-64_2019053109/build/tmp-glibc/hosttools/test}

Set grep/test path rather than using hosttools which refers
commit in oe-core [f6e7a3b libtool: Don't hardcode grep paths]

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../recipes-cgl/cluster-resource-agents/resource-agents_4.0.1.bb     | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.0.1.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.0.1.bb
index 8b2b8e1..ba00a80 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.0.1.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.0.1.bb
@@ -44,6 +44,11 @@ RDEPENDS_${PN} += "bash perl lvm2 \
 
 inherit autotools systemd pkgconfig
 
+CACHED_CONFIGUREVARS += " \
+    ac_cv_path_GREP=grep \
+    ac_cv_path_TEST=test \
+"
+
 EXTRA_OECONF += "--disable-fatal-warnings \
                  --with-rsctmpdir=/var/run/heartbeat/rsctmp"
 
-- 
2.7.4


