Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A75DAE00CD0; Thu, 27 Jul 2017 19:32:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20C8BE00CD0
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 19:32:42 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v6S2WgTD017016
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 19:32:42 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Thu, 27 Jul 2017 19:32:41 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 28 Jul 2017 10:32:15 +0800
Message-ID: <6060e02258f3133204ad83c4991215df38e89cfb.1501209083.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1501209083.git.jackie.huang@windriver.com>
References: <cover.1501209083.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 1/3] ocfs2-tools: fix dependencies
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
X-List-Received-Date: Fri, 28 Jul 2017 02:32:43 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

* Remove the duplicated RDEPENDS_${PN}
* Add dependency on e2fsprogs-native to fix:
  | compile_et o2dlm_err.et
  | /bin/bash: compile_et: command not found

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
index d6a24e5..3074525 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
@@ -23,8 +23,11 @@ S = "${WORKDIR}/git"
 
 inherit autotools-brokensep pkgconfig systemd
 
-DEPENDS = "corosync openais cluster-glue pacemaker libxml2 linux-libc-headers e2fsprogs libaio"
-RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs chkconfig glib-2.0"
+DEPENDS = "corosync cluster-glue openais pacemaker \
+    libxml2 linux-libc-headers libaio \
+    e2fsprogs e2fsprogs-native \
+"
+
 ASNEEDED_pn-${PN} = ""
 PARALLEL_MAKE = ""
 INSANE_SKIP_${PN} = "unsafe-references-in-binaries"
@@ -88,4 +91,4 @@ do_install() {
     fi
 }
 
-RDEPENDS_${PN} = "bash"
+RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs chkconfig glib-2.0"
-- 
2.11.0


