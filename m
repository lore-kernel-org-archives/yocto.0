Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BD21E00D62; Thu, 22 Sep 2016 00:46:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16FB5E0083E
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 00:46:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u8M7kNxL011798
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 00:46:23 -0700
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Thu, 22 Sep 2016 00:46:22 -0700
From: <kai.kang@windriver.com>
To: <bruce.ashfield@windriver.com>
Date: Thu, 22 Sep 2016 15:42:50 +0800
Message-ID: <20160922074250.1202-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [meta-virtualization][PATCH] libvirt: remove .o files for ptest
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
X-List-Received-Date: Thu, 22 Sep 2016 07:46:28 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

When do split_and_strip_files, it may calls debugedit to deal elf files.
For ptest sub-package, it fails to run debugedit with .o files. So remove
the .o files which are redundant to run ptest cases.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 recipes-extended/libvirt/libvirt_1.3.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-extended/libvirt/libvirt_1.3.5.bb b/recipes-extended/libvirt/libvirt_1.3.5.bb
index 3eff58d..fad5632 100644
--- a/recipes-extended/libvirt/libvirt_1.3.5.bb
+++ b/recipes-extended/libvirt/libvirt_1.3.5.bb
@@ -275,7 +275,7 @@ do_install_ptest() {
 	find ${S}/tests -maxdepth 1 -type d -exec cp -r {} ${D}${PTEST_PATH}/tests/ \;
 
 	# remove .la files for ptest, they aren't required and can trigger QA errors
-	for i in `find ${D}${PTEST_PATH} -type f -name *.la`; do
+	for i in `find ${D}${PTEST_PATH} -type f \( -name *.la -o -name *.o \)`; do
                 rm -f $i
 	done
 }
-- 
2.9.3


