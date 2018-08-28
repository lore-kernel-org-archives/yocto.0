Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EF73E00953; Tue, 28 Aug 2018 02:22:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDD2EE00942
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 02:22:20 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w7S9M7pF007582
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 28 Aug 2018 02:22:07 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.408.0; Tue, 28 Aug 2018 02:22:04 -0700
From: <mingli.yu@windriver.com>
To: <Adrian.Dudau@enea.com>, <yocto@yoctoproject.org>
Date: Tue, 28 Aug 2018 17:22:03 +0800
Message-ID: <1535448123-365001-1-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] ocfs2-tools: fix usrmerge install path
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
X-List-Received-Date: Tue, 28 Aug 2018 09:22:22 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

Set prefix to fix below issue when usrmerge
enabled in DISTRO_FEATURES

| WARNING: ocfs2-tools-1.8.5-r0 do_package: QA Issue: ocfs2-tools: Files/directories were installed but not shipped in any package:
  /sbin/mount.ocfs2
  /sbin/o2cb
  /sbin/o2cluster
  /sbin/mkfs.ocfs2
  /sbin/tunefs.ocfs2
  /sbin/fsck.ocfs2
  /sbin/debugfs.ocfs2
  /sbin/o2cb_ctl
  /sbin/ocfs2_hb_ctl
  /sbin/mounted.ocfs2
  /sbin/o2image
| ERROR: QA Issue: ocfs2-tools-dbg package is not obeying usrmerge distro feature. /sbin should be relocated to /usr. [usrmerge]

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
index 8cf82a8..a0376ec 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
@@ -48,6 +48,7 @@ EXTRA_OECONF = " \
     --enable-ocfs2console=no \
     --enable-dynamic-fsck=yes \
     --enable-dynamic-ctl=yes \
+    --with-root-prefix=${root_prefix} \
 "
 
 do_configure_prepend () {
-- 
2.7.4


