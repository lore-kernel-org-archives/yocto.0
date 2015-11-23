Return-Path: <r.meier@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80E16E00AD9; Mon, 23 Nov 2015 00:31:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.35.17.28 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 323 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 Nov 2015 00:31:12 PST
Received: from goliath.siemens.de (goliath.siemens.de [192.35.17.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FAA9E00AB7
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 00:31:12 -0800 (PST)
Received: from mail2.siemens.de (mail2.siemens.de [139.25.208.11])
	by goliath.siemens.de (8.15.2/8.15.2) with ESMTPS id tAN8Pi8k004182
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK); 
	Mon, 23 Nov 2015 09:25:44 +0100
Received: from dev.sbt.siemens.com (MD15B1GC.ww002.siemens.net [139.16.79.77])
	by mail2.siemens.de (8.15.1/8.15.1) with ESMTP id tAN8Pig7010886;
	Mon, 23 Nov 2015 09:25:44 +0100
Received: from dev.sbt.siemens.com (localhost [127.0.0.1])
	by dev.sbt.siemens.com (Postfix) with ESMTP id 056B62FBF0A3;
	Mon, 23 Nov 2015 09:25:30 +0100 (CET)
From: Roger Meier <r.meier@siemens.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Mon, 23 Nov 2015 09:25:19 +0100
Message-Id: <1448267119-24035-1-git-send-email-r.meier@siemens.com>
X-Mailer: git-send-email 2.1.4
Subject: [meta-mono][PATCH] README.md: fix mailto links
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
X-List-Received-Date: Mon, 23 Nov 2015 08:31:16 -0000

Signed-off-by: Roger Meier <r.meier@siemens.com>
---
 README.md | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/README.md b/README.md
index 223a6f0..e362469 100644
--- a/README.md
+++ b/README.md
@@ -89,7 +89,7 @@ For a walkthrough on building Mono for Raspberry Pi see:
 
 ## Maintainer(s) & Patch policy
 
-* [Alex J Lennon](mailto://ajlennon@dynamicdevices.co.uk)
+* [Alex J Lennon](mailto:ajlennon@dynamicdevices.co.uk)
 
 Follow Yocto change submission policy, detailed here:
 
@@ -97,7 +97,7 @@ Follow Yocto change submission policy, detailed here:
 
 Use the create-pull-request and send-pull-request scripts details in 3.9.1. 
 
-Send to the maintainer and to [Yocto mailing list](mailto://yocto@yoctoproject.org)
+Send to the maintainer and to [Yocto mailing list](mailto:yocto@yoctoproject.org)
 
 ## Copyright
 
-- 
2.1.4


