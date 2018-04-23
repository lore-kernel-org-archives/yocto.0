Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6799BE00C54; Mon, 23 Apr 2018 07:28:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9FD9E00CC9
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 07:28:47 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 8459F18430
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:46 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 7NEkrSw2td6a for <yocto@yoctoproject.org>;
	Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 6F0A718434
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5A2161E07B
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4DF401E07A
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder03.se.axis.com (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by thoth.se.axis.com (Postfix) with ESMTP id 4177F17C8
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id w3NESc9W012245
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:38 +0200
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id w3NEScNo012244
	for yocto@yoctoproject.org; Mon, 23 Apr 2018 16:28:38 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Apr 2018 16:28:35 +0200
Message-Id: <20180423142835.12183-4-pkj@axis.com>
X-Mailer: git-send-email 2.12.0
In-Reply-To: <20180423142835.12183-1-pkj@axis.com>
References: <20180423142835.12183-1-pkj@axis.com>
X-TM-AS-GCONF: 00
Subject: [meta-gplv2][sumo][rocko][pyro][PATCH 4/4] texinfo: Update a patch to avoid fuzz
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
 recipes-extended/texinfo/texinfo-4.8/use_host_makedoc.patch | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-extended/texinfo/texinfo-4.8/use_host_makedoc.patch b/recipes-extended/texinfo/texinfo-4.8/use_host_makedoc.patch
index 5b7f32d..11e21aa 100644
--- a/recipes-extended/texinfo/texinfo-4.8/use_host_makedoc.patch
+++ b/recipes-extended/texinfo/texinfo-4.8/use_host_makedoc.patch
@@ -6,9 +6,9 @@ Index: texinfo-5.1/info/Makefile.am
 ===================================================================
 --- texinfo-5.1.orig/info/Makefile.am
 +++ texinfo-5.1/info/Makefile.am
-@@ -76,7 +76,7 @@ cmd_sources = $(srcdir)/session.c $(srcd
- # more than once.
- funs.h: makedoc$(EXEEXT) $(cmd_sources)
+@@ -67,7 +67,7 @@ cmd_sources = $(srcdir)/session.c $(srcdir)/echo-area.c $(srcdir)/infodoc.c \
+ # The $(EXEEXT) should be added by Automake, but isn't. Fine.
+ $(generated_sources): makedoc$(EXEEXT) $(cmd_sources)
  	rm -f $(generated_sources)
 -	$(top_builddir)/$(native_tools)/info/makedoc $(cmd_sources)
 +	makedoc $(cmd_sources)
-- 
2.12.0


