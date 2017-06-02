Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 167BAE00B7A; Fri,  2 Jun 2017 01:21:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA41AE00B63
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 01:21:43 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v528Lgl3001548
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Fri, 2 Jun 2017 01:21:42 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Fri, 2 Jun 2017 01:21:40 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 2 Jun 2017 16:21:35 +0800
Message-ID: <a334699a13a9d017c774212aa03f6f2c28cf86e3.1496391537.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1496391537.git.jackie.huang@windriver.com>
References: <cover.1496391537.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 1/4] resource-agents: fix dependencies
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
X-List-Received-Date: Fri, 02 Jun 2017 08:21:45 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

* inherit pkgconfig or configure fails with:
  | checking for pkg-config... no
  | configure: error: You need pkgconfig installed in order to build

* Add missing runtime dependencies for:
  - many tools and scripts need bash and perl.
  - lvm.sh requires: lvm2
  - ip.sh requires: ethtool iproute2 iputils-arping
  - fs.sh requires: e2fsprogs-e2fsck util-linux quota
  - netfs.sh requires: procps util-linux nfs-utils

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../cluster-resource-agents/resource-agents_3.9.7.bb       | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
index a0d4e1f..2e8b8f1 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
@@ -28,9 +28,19 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
                     file://COPYING.GPLv3;md5=d32239bcb673463ab874e80d47fae504"
 
 DEPENDS = "cluster-glue"
-RDEPENDS_${PN} += "bash"
 
-inherit autotools systemd
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
+
+inherit autotools systemd pkgconfig
 
 EXTRA_OECONF += "--disable-fatal-warnings \
                  --with-rsctmpdir=/var/run/heartbeat/rsctmp"
-- 
2.11.0


