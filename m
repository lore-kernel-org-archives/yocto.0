Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AA09E00E0E; Thu, 29 Aug 2019 23:10:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55A24E00E07
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 23:10:36 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x7U6AFCA001336
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 23:10:25 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Thu, 29 Aug 2019 23:10:04 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 30 Aug 2019 14:10:03 +0800
Message-ID: <1567145403-30425-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-cloud-services][PATCH] glusterfs: support usrmerge
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
X-List-Received-Date: Fri, 30 Aug 2019 06:10:38 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 recipes-extended/glusterfs/glusterfs.inc | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/recipes-extended/glusterfs/glusterfs.inc b/recipes-extended/glusterfs/glusterfs.inc
index 40a3922..66e2bf1 100644
--- a/recipes-extended/glusterfs/glusterfs.inc
+++ b/recipes-extended/glusterfs/glusterfs.inc
@@ -64,9 +64,11 @@ do_install_append() {
     install -m 0755 ${WORKDIR}/glusterd.init \
         ${D}${sysconfdir}/init.d/glusterd
 
-    # Mount looks for mount.* plug-ins in /sbin; fix it with a symlink.
-    mkdir -p ${D}${base_sbindir}
-    (cd ${D}${base_sbindir}; ln -s ..${sbindir}/mount.glusterfs .)
+    if ! ${@bb.utils.contains('DISTRO_FEATURES','usrmerge','true','false',d)}; then
+        # Mount looks for mount.* plug-ins in /sbin; fix it with a symlink.
+        mkdir -p ${D}${base_sbindir}
+        (cd ${D}${base_sbindir}; ln -s ..${sbindir}/mount.glusterfs .)
+    fi
 
     # These are plug-ins, so they don't need libtool configs.
     find ${D}${libdir}/glusterfs/${PV} -name '*.la' -exec rm -f '{}' ';'
-- 
2.7.4


