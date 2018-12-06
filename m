Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61DB1E00C91; Wed,  5 Dec 2018 18:13:58 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B242E00C77
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2018 18:13:55 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id wB62Dnia001277
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 5 Dec 2018 18:13:49 -0800 (PST)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Wed, 5 Dec 2018 18:13:48 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <ross.burton@intel.com>
Date: Wed, 5 Dec 2018 18:13:48 -0800
Message-ID: <20181206021348.16182-1-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [meta-gplv2][PATCH] coreutils: Remove tab indentations in python code
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
X-List-Received-Date: Thu, 06 Dec 2018 02:13:58 -0000
Content-Type: text/plain

Use 4 spaces to replace a tab.

Fixed:
python should use 4 spaces indentation, but found tabs in coreutils_6.9.bb, line 95

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 recipes-core/coreutils/coreutils_6.9.bb | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-core/coreutils/coreutils_6.9.bb b/recipes-core/coreutils/coreutils_6.9.bb
index 906bc4a..080100d 100644
--- a/recipes-core/coreutils/coreutils_6.9.bb
+++ b/recipes-core/coreutils/coreutils_6.9.bb
@@ -92,9 +92,9 @@ ALTERNATIVE_LINK_NAME[lbracket] = "${bindir}/["
 ALTERNATIVE_TARGET[lbracket] = "${bindir}/lbracket.${BPN}"
 
 python __anonymous() {
-	for prog in d.getVar('base_bindir_progs').split():
-		d.setVarFlag('ALTERNATIVE_LINK_NAME', prog, '%s/%s' % (d.getVar('base_bindir'), prog))
+    for prog in d.getVar('base_bindir_progs').split():
+        d.setVarFlag('ALTERNATIVE_LINK_NAME', prog, '%s/%s' % (d.getVar('base_bindir'), prog))
 
-	for prog in d.getVar('sbindir_progs').split():
-		d.setVarFlag('ALTERNATIVE_LINK_NAME', prog, '%s/%s' % (d.getVar('sbindir'), prog))
+    for prog in d.getVar('sbindir_progs').split():
+        d.setVarFlag('ALTERNATIVE_LINK_NAME', prog, '%s/%s' % (d.getVar('sbindir'), prog))
 }
-- 
2.10.2


