Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 487F3E00C58; Mon, 23 Apr 2018 07:28:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE95CE00C54
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 07:28:47 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id DF2F81843B
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:45 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 6FDXphaCFzey for <yocto@yoctoproject.org>;
	Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id 5DEFC18432
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4BE1B1A07C
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3F14A1A07D
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder02.se.axis.com (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by seth.se.axis.com (Postfix) with ESMTP id 3385E1BC4
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id w3NEScCJ012241
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:38 +0200
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id w3NESc5Z012240
	for yocto@yoctoproject.org; Mon, 23 Apr 2018 16:28:38 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Apr 2018 16:28:34 +0200
Message-Id: <20180423142835.12183-3-pkj@axis.com>
X-Mailer: git-send-email 2.12.0
In-Reply-To: <20180423142835.12183-1-pkj@axis.com>
References: <20180423142835.12183-1-pkj@axis.com>
X-TM-AS-GCONF: 00
Subject: [meta-gplv2][sumo][rocko][pyro][PATCH 3/4] gnupg: Update a patch to avoid fuzz
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
X-List-Received-Date: Mon, 23 Apr 2018 14:28:49 -0000

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 recipes-support/gnupg/gnupg-1.4.7/long-long-thumb.patch | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/recipes-support/gnupg/gnupg-1.4.7/long-long-thumb.patch b/recipes-support/gnupg/gnupg-1.4.7/long-long-thumb.patch
index 2855cab..c3c361d 100644
--- a/recipes-support/gnupg/gnupg-1.4.7/long-long-thumb.patch
+++ b/recipes-support/gnupg/gnupg-1.4.7/long-long-thumb.patch
@@ -15,5 +15,4 @@ Upstream-Status: Inappropriate [configuration]
 +#if defined (__arm__) && W_TYPE_SIZE == 32 && !defined(__thumb__)
  #define add_ssaaaa(sh, sl, ah, al, bh, bl) \
    __asm__ ("adds %1, %4, %5\n"                                          \
-          "adc  %0, %2, %3"                                            \
-
+ 	   "adc  %0, %2, %3"                                            \
-- 
2.12.0


