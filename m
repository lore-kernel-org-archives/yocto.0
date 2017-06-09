Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D37A1E00B57; Thu,  8 Jun 2017 18:10:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 916A2E00B57
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 18:10:08 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v591A7aR007535
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 8 Jun 2017 18:10:08 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Thu, 8 Jun 2017 18:10:07 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 9 Jun 2017 09:10:01 +0800
Message-ID: <0b3ed8caaebdb5b2eec02b450228fd0d95dc37ed.1496970398.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1496970398.git.jackie.huang@windriver.com>
References: <cover.1496970398.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 1/4 v2] resource-agents: fix dependencies
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
X-List-Received-Date: Fri, 09 Jun 2017 01:10:10 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

* Add missing runtime dependencies for:
  - many tools and scripts need bash and perl.
  - lvm.sh requires: lvm2
  - ip.sh requires: ethtool iproute2 iputils-arping
  - fs.sh requires: e2fsprogs-e2fsck util-linux quota
  - netfs.sh requires: procps util-linux nfs-utils

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../cluster-resource-agents/resource-agents_3.9.7.bb         | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
index e6f127b..2e8b8f1 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
@@ -28,7 +28,17 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
                     file://COPYING.GPLv3;md5=d32239bcb673463ab874e80d47fae504"
 
 DEPENDS = "cluster-glue"
-RDEPENDS_${PN} += "bash"
+
+# There are many tools and scripts that need bash and perl.
+# lvm.sh requires: lvm2
+# ip.sh requires: ethtool iproute2 iputils-arping
+# fs.sh requires: e2fsprogs-e2fsck util-linux quota
+# netfs.sh requires: procps util-linux nfs-utils
+RDEPENDS_${PN} += "bash perl lvm2 \
+    ethtool iproute2 iputils-arping \
+    e2fsprogs-e2fsck util-linux quota \
+    procps nfs-utils \
+"
 
 inherit autotools systemd pkgconfig
 
-- 
2.11.0


