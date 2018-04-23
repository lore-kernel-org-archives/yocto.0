Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A22AEE00B28; Mon, 23 Apr 2018 03:57:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F7A6E009CF
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 03:57:07 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id C76A7183EA
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 12:57:05 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id RDGSo6ftuaMw for <yocto@yoctoproject.org>;
	Mon, 23 Apr 2018 12:57:03 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id 1430D18407
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 12:57:03 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id EFE801A070
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 12:57:02 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E49481A06F
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 12:57:02 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder02.se.axis.com (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 12:57:02 +0200 (CEST)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by seth.se.axis.com (Postfix) with ESMTP id D89881BA1
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 12:57:02 +0200 (CEST)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id w3NAuuYx032143
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 12:56:56 +0200
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id w3NAuuMO032142
	for yocto@yoctoproject.org; Mon, 23 Apr 2018 12:56:56 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Apr 2018 12:56:56 +0200
Message-Id: <20180423105656.32099-1-pkj@axis.com>
X-Mailer: git-send-email 2.12.0
X-TM-AS-GCONF: 00
Subject: [meta-gplv2][sumo][rocko][pyro][PATCH] coreutils: Update a patch to avoid fuzz
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
X-List-Received-Date: Mon, 23 Apr 2018 10:57:09 -0000

Change-Id: I86ca76ca762da515fb6dfc95e2afd14cfe802fff
Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 recipes-core/coreutils/coreutils-6.9/coreutils-overflow.patch | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-core/coreutils/coreutils-6.9/coreutils-overflow.patch b/recipes-core/coreutils/coreutils-6.9/coreutils-overflow.patch
index 58074c0..b9cd52e 100644
--- a/recipes-core/coreutils/coreutils-6.9/coreutils-overflow.patch
+++ b/recipes-core/coreutils/coreutils-6.9/coreutils-overflow.patch
@@ -8,8 +8,8 @@ Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
 
 --- coreutils-5.2.1/src/who.c.overflow	2005-05-25 09:59:06.000000000 +0100
 +++ coreutils-5.2.1/src/who.c	2005-05-25 10:00:31.000000000 +0100
-@@ -75,7 +75,7 @@
- # define NEW_TIME 0
+@@ -78,7 +78,7 @@
+ # define UT_TYPE_NEW_TIME(U) false
  #endif
  
 -#define IDLESTR_LEN 6
-- 
2.12.0


