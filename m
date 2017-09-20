Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42D79E00CD0; Wed, 20 Sep 2017 02:16:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9126DE00C2B
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 02:16:18 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8K9GHLf025967
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 02:16:17 -0700
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.361.1;
	Wed, 20 Sep 2017 02:16:15 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>
Date: Wed, 20 Sep 2017 02:16:15 -0700
Message-ID: <20170920091615.65178-1-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] selinux-python: fix installed-vs-shipped warnings
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
X-List-Received-Date: Wed, 20 Sep 2017 09:16:19 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Fix the warnings if ${libdir} = '/usr/lib64':
  WARNING: selinux-python-2.7-r0 do_package: QA Issue: selinux-python: \
    Files/directories were installed but not shipped in any package:
    /usr/lib/python2.7/site-packages/sepolicy-1.1.egg-info
    /usr/lib/python2.7/site-packages/sepolicy/__init__.py

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/selinux-python.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/selinux/selinux-python.inc b/recipes-security/selinux/selinux-python.inc
index 55060e3..4bc5cb5 100644
--- a/recipes-security/selinux/selinux-python.inc
+++ b/recipes-security/selinux/selinux-python.inc
@@ -102,6 +102,7 @@ FILES_${PN} += "\
 EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
 do_install() {
         oe_runmake DESTDIR=${D} \
+                LIBDIR='${D}${libdir}' \
                 PYTHONLIBDIR='${libdir}/python${PYTHON_BASEVERSION}/site-packages' \
                 install
 }
-- 
2.13.0


