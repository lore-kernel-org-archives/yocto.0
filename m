Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79222E00A39; Mon, 23 Apr 2018 07:28:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26311E00948
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 07:28:49 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 2A2E318432
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:48 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id IjOTANlDSpOX for <yocto@yoctoproject.org>;
	Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id 50D6818431
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3EE911A06D
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 333431A07C
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder02.se.axis.com (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by thoth.se.axis.com (Postfix) with ESMTP id 26E4317C8
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id w3NEScLc012237
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:38 +0200
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id w3NEScZP012236
	for yocto@yoctoproject.org; Mon, 23 Apr 2018 16:28:38 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Apr 2018 16:28:33 +0200
Message-Id: <20180423142835.12183-2-pkj@axis.com>
X-Mailer: git-send-email 2.12.0
In-Reply-To: <20180423142835.12183-1-pkj@axis.com>
References: <20180423142835.12183-1-pkj@axis.com>
X-TM-AS-GCONF: 00
Subject: [meta-gplv2][sumo][rocko][pyro][PATCH 2/4] dosfstools: Update a patch to avoid fuzz
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
X-List-Received-Date: Mon, 23 Apr 2018 14:28:50 -0000

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 .../dosfstools/dosfstools/dosfstools-msdos_fs-types.patch           | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-devtools/dosfstools/dosfstools/dosfstools-msdos_fs-types.patch b/recipes-devtools/dosfstools/dosfstools/dosfstools-msdos_fs-types.patch
index 35abd1a..c04280e 100644
--- a/recipes-devtools/dosfstools/dosfstools/dosfstools-msdos_fs-types.patch
+++ b/recipes-devtools/dosfstools/dosfstools/dosfstools-msdos_fs-types.patch
@@ -8,7 +8,7 @@ Signed-off-by: Scott Garman <scott.a.garman@intel.com>
 --- dosfstools-2.10/dosfsck/dosfsck.h.org	2006-02-21 08:36:14.000000000 -0700
 +++ dosfstools-2.10/dosfsck/dosfsck.h	2006-02-21 08:40:12.000000000 -0700
 @@ -22,6 +22,14 @@
-        #undef __KERNEL__
+ # undef __KERNEL__
  #endif
  
 +#ifndef __s8
@@ -21,11 +21,11 @@ Signed-off-by: Scott Garman <scott.a.garman@intel.com>
 +
  #include <linux/msdos_fs.h>
  
- /* 2.1 kernels use le16_to_cpu() type functions for CF_LE_W & Co., but don't
+ #undef CF_LE_W
 --- dosfstools-2.10/dosfsck/file.c.org	2006-02-21 08:37:36.000000000 -0700
 +++ dosfstools-2.10/dosfsck/file.c	2006-02-21 08:37:47.000000000 -0700
 @@ -23,6 +23,10 @@
-        #undef __KERNEL__
+ # undef __KERNEL__
  #endif
  
 +#ifndef __s8
-- 
2.12.0


