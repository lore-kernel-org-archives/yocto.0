Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04E88E00AE0; Tue, 18 Aug 2015 22:22:16 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44D51E00ADB
	for <yocto@yoctoproject.org>; Tue, 18 Aug 2015 22:22:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t7J5M7G0009737
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 18 Aug 2015 22:22:07 -0700 (PDT)
Received: from pek-kkang-d2.wrs.com (128.224.163.135) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.235.1; Tue, 18 Aug 2015 22:22:06 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 19 Aug 2015 13:22:10 +0800
Message-ID: <1439961730-5486-1-git-send-email-jackie.huang@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] e2fsprogs: now depend on attr
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
X-List-Received-Date: Wed, 19 Aug 2015 05:22:16 -0000
Content-Type: text/plain

From: Joe Slater <jslater@windriver.com>

Patches added by this bbappend make us depend on the attr
package.

Signed-off-by: Joe Slater <jslater@windriver.com>
Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
index d8de9da..e65df12 100644
--- a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
+++ b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
@@ -1,5 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
+# These patches make us depend on attr.
+DEPENDS += "attr"
+
 SRC_URI += " \
     file://misc-xattr-add-xattr-module-stub.patch \
     file://mke2fs.c-create_inode.c-copy-xattrs.patch \
-- 
1.9.1


