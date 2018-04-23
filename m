Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFF9CE00B01; Mon, 23 Apr 2018 07:28:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2BA4E00CD5
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 07:28:47 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 04AC218435
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:45 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id vuEsT_7MO5gV for <yocto@yoctoproject.org>;
	Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id 4561418430
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 2CB4D1A06F
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 213D61A06D
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder02.se.axis.com (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by seth.se.axis.com (Postfix) with ESMTP id 14DBB1BC4
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:44 +0200 (CEST)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id w3NESclZ012233
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:28:38 +0200
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id w3NESbuB012232
	for yocto@yoctoproject.org; Mon, 23 Apr 2018 16:28:37 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Apr 2018 16:28:32 +0200
Message-Id: <20180423142835.12183-1-pkj@axis.com>
X-Mailer: git-send-email 2.12.0
X-TM-AS-GCONF: 00
Subject: [meta-gplv2][sumo][rocko][pyro][PATCH 1/4] sed: Update a patch to avoid fuzz
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
 .../sed/sed-4.1.2/sed-4.1.2_fix_for_automake-1.12.patch           | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-extended/sed/sed-4.1.2/sed-4.1.2_fix_for_automake-1.12.patch b/recipes-extended/sed/sed-4.1.2/sed-4.1.2_fix_for_automake-1.12.patch
index c7c0aa0..86b64a1 100644
--- a/recipes-extended/sed/sed-4.1.2/sed-4.1.2_fix_for_automake-1.12.patch
+++ b/recipes-extended/sed/sed-4.1.2/sed-4.1.2_fix_for_automake-1.12.patch
@@ -27,11 +27,11 @@ Index: sed-4.1.2/po/Makefile.in.in
 --- sed-4.1.2.orig/po/Makefile.in.in
 +++ sed-4.1.2/po/Makefile.in.in
 @@ -29,7 +29,7 @@ gettextsrcdir = $(datadir)/gettext/po
- INSTALL = /srv/home/nitin/builds2/build0/tmp/sysroots/x86_64-linux/usr/bin/install -c
- INSTALL_DATA = ${INSTALL} -m 644
+ INSTALL = @INSTALL@
+ INSTALL_DATA = @INSTALL_DATA@
  mkinstalldirs = $(mkdir_p)
 -mkdir_p = @mkdir_p@
 +mkdir_p = @MKDIR_P@
  
- CC = i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/srv/home/nitin/builds2/build0/tmp/sysroots/qemux86
- GMSGFMT = /srv/home/nitin/builds2/build0/tmp/sysroots/x86_64-linux/usr/bin/msgfmt
+ CC = @CC@
+ GMSGFMT = @GMSGFMT@
-- 
2.12.0


