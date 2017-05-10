Return-Path: <Dengke.Du@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 917E6E00B51; Wed, 10 May 2017 00:03:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F353E00B49
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 00:03:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v4A73XoB016680
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 00:03:33 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 10 May 2017 00:03:32 -0700
From: Dengke Du <dengke.du@windriver.com>
To: <mark.hatle@windriver.com>
Date: Wed, 10 May 2017 03:03:30 -0400
Message-ID: <20170510070330.43118-1-dengke.du@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [meta-selinux][PATCH V3] rpm: modify the rpm bbappend file to suitable for rpm4
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
X-List-Received-Date: Wed, 10 May 2017 07:03:35 -0000
Content-Type: text/plain

Changed in V3:
	rebase the patch on the latest master branch.

1. change the rpm_5.4.16.bbappend to rpm_git.bbappend, this is
   because the rpm in oe-core has become rpm4 from rpm5.

2. drop the patch for rpm5.

3. delete the does not exist files when run task do_package.

Signed-off-by: Dengke Du <dengke.du@windriver.com>
---
 recipes-devtools/rpm/{rpm_%.bbappend => rpm_git.bbappend} | 4 ----
 1 file changed, 4 deletions(-)
 rename recipes-devtools/rpm/{rpm_%.bbappend => rpm_git.bbappend} (56%)

diff --git a/recipes-devtools/rpm/rpm_%.bbappend b/recipes-devtools/rpm/rpm_git.bbappend
similarity index 56%
rename from recipes-devtools/rpm/rpm_%.bbappend
rename to recipes-devtools/rpm/rpm_git.bbappend
index 199a7e4..9f3ec90 100644
--- a/recipes-devtools/rpm/rpm_%.bbappend
+++ b/recipes-devtools/rpm/rpm_git.bbappend
@@ -1,8 +1,4 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
-FILES_${PN} += "${libdir}/rpm/bin/spooktool \
-                ${libdir}/rpm/bin/semodule \
-               "
-
 inherit with-selinux
 PACKAGECONFIG[selinux] = "${WITH_SELINUX},${WITHOUT_SELINUX},libsemanage,"
-- 
2.11.0


