Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ABF4E009CF; Mon, 23 Apr 2018 03:23:40 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC8FBE009CF
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 03:23:38 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 8AF0B183FA
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 12:23:37 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 8GfQR6yb8OFT for <yocto@yoctoproject.org>;
	Mon, 23 Apr 2018 12:23:36 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 16CC6180A2
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 12:23:36 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id F20831E078
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 12:23:35 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E63431E077
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 12:23:35 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder03.se.axis.com (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 12:23:35 +0200 (CEST)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by thoth.se.axis.com (Postfix) with ESMTP id D9BAE1C61
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 12:23:35 +0200 (CEST)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id w3NANTZA018101
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 12:23:29 +0200
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id w3NANTJV018100
	for yocto@yoctoproject.org; Mon, 23 Apr 2018 12:23:29 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Apr 2018 12:23:28 +0200
Message-Id: <20180423102328.18058-1-pkj@axis.com>
X-Mailer: git-send-email 2.12.0
X-TM-AS-GCONF: 00
Subject: [meta-gplv2][sumo][rocko][pyro][PATCH] coreutils: Avoid warnings due to update-alternatives for man pages
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
X-List-Received-Date: Mon, 23 Apr 2018 10:23:40 -0000

The man pages for this package was disabled in 46349e1a with the result
that the following warnings appeared:

  WARNING: coreutils-6.9-r0 do_package: coreutils: alternative target
  (/usr/share/man/man1/su.1 or /usr/share/man/man1/su.1.coreutils) does
  not exist, skipping...
  WARNING: coreutils-6.9-r0 do_package: coreutils: alternative target
  (/usr/share/man/man1/hostname.1 or
  /usr/share/man/man1/hostname.1.coreutils) does not exist, skipping...
  WARNING: coreutils-6.9-r0 do_package: coreutils: NOT adding
  alternative provide /usr/share/man/man1/su.1:
  /usr/share/man/man1/su.1.coreutils does not exist
  WARNING: coreutils-6.9-r0 do_package: coreutils: NOT adding
  alternative provide /usr/share/man/man1/hostname.1:
  /usr/share/man/man1/hostname.1.coreutils does not exist
  WARNING: coreutils-6.9-r0 do_package: coreutils: alt_link ==
  alt_target: /usr/share/man/man1/su.1 == /usr/share/man/man1/su.1
  WARNING: coreutils-6.9-r0 do_package: coreutils: alt_link ==
  alt_target: /usr/share/man/man1/hostname.1 ==
  /usr/share/man/man1/hostname.1

This change removes the update-alternatives for the man pages that no
longer exists.

Change-Id: If79bb634e05db48462265c6e65291db27169fa51
Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 recipes-core/coreutils/coreutils_6.9.bb | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/recipes-core/coreutils/coreutils_6.9.bb b/recipes-core/coreutils/coreutils_6.9.bb
index 31e5c7e..0d236b2 100644
--- a/recipes-core/coreutils/coreutils_6.9.bb
+++ b/recipes-core/coreutils/coreutils_6.9.bb
@@ -90,10 +90,6 @@ ALTERNATIVE_PRIORITY = "100"
 
 ALTERNATIVE_${PN} = "lbracket ${bindir_progs} ${base_bindir_progs} ${sbindir_progs}"
 
-ALTERNATIVE_${PN}-doc = "su.1 hostname.1"
-ALTERNATIVE_LINK_NAME[su.1] = "${mandir}/man1/su.1"
-ALTERNATIVE_LINK_NAME[hostname.1] = "${mandir}/man1/hostname.1"
-
 ALTERNATIVE_PRIORITY[uptime] = "10"
 ALTERNATIVE_PRIORITY[hostname] = "10"
 
-- 
2.12.0


