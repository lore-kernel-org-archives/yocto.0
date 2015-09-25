Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77387E00D03; Fri, 25 Sep 2015 01:55:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 637 seconds by postgrey-1.32 at yocto-www;
	Fri, 25 Sep 2015 01:55:29 PDT
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31017E00A3B
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 01:55:29 -0700 (PDT)
Received: from localhost.localdomain (unknown [31.182.60.238])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id E5B6F235871;
	Fri, 25 Sep 2015 10:44:48 +0200 (CEST)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: Scott@yoctoproject.org, "Rifenbark <scott.m.rifenbark"@intel.com,
	yocto@yoctoproject.org
Date: Fri, 25 Sep 2015 10:44:41 +0200
Message-Id: <1443170681-31019-1-git-send-email-maciej.borzecki@open-rnd.pl>
X-Mailer: git-send-email 1.9.3
Cc: Maciek Borzecki <maciek.borzecki@gmail.com>
Subject: [PATCH] dev-manual: Fix devtool build help note
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
X-List-Received-Date: Fri, 25 Sep 2015 08:55:37 -0000

An annotation for devtool build command incorrectly referenced devtool
update-recipe.

Signed-off-by: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
---
 documentation/dev-manual/dev-manual-model.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/dev-manual/dev-manual-model.xml b/documentation/dev-manual/dev-manual-model.xml
index 6e0ded2f174fa0727d9222f3dc72458c1254ffdb..5379602a2bd49f667a8847aea13dc4df3534f05f 100644
--- a/documentation/dev-manual/dev-manual-model.xml
+++ b/documentation/dev-manual/dev-manual-model.xml
@@ -2183,7 +2183,7 @@
                 </literallayout>
                 <note>
                     For complete syntax, use the
-                    <filename>devtool update-recipe --help</filename> command.
+                    <filename>devtool build --help</filename> command.
                 </note>
                 Building your software using <filename>devtool build</filename>
                 is identical to using BitBake to build the software.
-- 
1.9.3


