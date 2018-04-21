Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 255DEE00A1E; Fri, 20 Apr 2018 18:30:51 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25137E0086B
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 18:30:48 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 7C2891860E
	for <yocto@yoctoproject.org>; Sat, 21 Apr 2018 03:30:46 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id OdQkbf9WmWPy for <yocto@yoctoproject.org>;
	Sat, 21 Apr 2018 03:30:45 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id E30A3185FC
	for <yocto@yoctoproject.org>; Sat, 21 Apr 2018 03:30:45 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id CC53B1A073
	for <yocto@yoctoproject.org>; Sat, 21 Apr 2018 03:30:45 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C0A7E1A06F
	for <yocto@yoctoproject.org>; Sat, 21 Apr 2018 03:30:45 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder02.se.axis.com (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Sat, 21 Apr 2018 03:30:45 +0200 (CEST)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by seth.se.axis.com (Postfix) with ESMTP id B42A918DD
	for <yocto@yoctoproject.org>; Sat, 21 Apr 2018 03:30:45 +0200 (CEST)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id w3L1UdND003470
	for <yocto@yoctoproject.org>; Sat, 21 Apr 2018 03:30:39 +0200
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id w3L1Udsc003469
	for yocto@yoctoproject.org; Sat, 21 Apr 2018 03:30:39 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: yocto@yoctoproject.org
Date: Sat, 21 Apr 2018 03:30:36 +0200
Message-Id: <20180421013036.3425-1-pkj@axis.com>
X-Mailer: git-send-email 2.12.0
X-TM-AS-GCONF: 00
Subject: [meta-gplv2][sumo][rocko][PATCH] bash: Provide /bin/{sh, bash} when usrmerge is used
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
X-List-Received-Date: Sat, 21 Apr 2018 01:30:51 -0000

Most shell scripts have '#!/bin/{sh,bash}' on the first line of the
script, which triggers RPM to automatically add a runtime dependency
on that path for any package that contains shell scripts.  However,
when the usrmerge feature is enabled, the path will actually be
/usr/bin/{sh,bash}.

So, to satisfy the runtime dependencies, add '/bin/{sh,bash}' to what
the bash package provides.

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 recipes-extended/bash/bash.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-extended/bash/bash.inc b/recipes-extended/bash/bash.inc
index a05b987..0f0d679 100644
--- a/recipes-extended/bash/bash.inc
+++ b/recipes-extended/bash/bash.inc
@@ -65,3 +65,5 @@ pkg_postinst_${PN} () {
 pkg_postrm_${PN} () {
 	printf "$(grep -v "^${base_bindir}/bash$" $D${sysconfdir}/shells)\n" > $D${sysconfdir}/shells
 }
+
+RPROVIDES_${PN} += "${@bb.utils.contains('DISTRO_FEATURES', 'usrmerge', '/bin/sh /bin/bash', '', d)}"
-- 
2.12.0


