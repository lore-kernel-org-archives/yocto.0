Return-Path: <zhang.lin16@zte.com.cn>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEC22E00C81; Mon,  8 Jul 2019 20:52:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [202.103.147.172 listed in list.dnswl.org]
X-Greylist: delayed 954 seconds by postgrey-1.32 at yocto-www;
	Mon, 08 Jul 2019 20:52:17 PDT
Received: from mxct.zte.com.cn (out1.zte.com.cn [202.103.147.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B978E00C09
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2019 20:52:17 -0700 (PDT)
Received: from mse-fl2.zte.com.cn (unknown [10.30.14.239])
	by Forcepoint Email with ESMTPS id D5A32E096A12DBFCEC6F;
	Tue,  9 Jul 2019 11:36:20 +0800 (CST)
Received: from notes_smtp.zte.com.cn ([10.30.1.239])
	by mse-fl2.zte.com.cn with ESMTP id x693ZsuA002528;
	Tue, 9 Jul 2019 11:35:54 +0800 (GMT-8)
	(envelope-from zhang.lin16@zte.com.cn)
Received: from fox-host8.localdomain ([10.74.120.8])
	by szsmtp06.zte.com.cn (Lotus Domino Release 8.5.3FP6)
	with ESMTP id 2019070911360578-2189933 ;
	Tue, 9 Jul 2019 11:36:05 +0800 
From: zhanglin <zhang.lin16@zte.com.cn>
To: joe_macdonald@mentor.com
Date: Tue, 9 Jul 2019 11:32:50 +0800
Message-Id: <1562643170-45518-1-git-send-email-zhang.lin16@zte.com.cn>
X-Mailer: git-send-email 1.8.3.1
X-MIMETrack: Itemize by SMTP Server on SZSMTP06/server/zte_ltd(Release
	8.5.3FP6|November 21, 2013) at 2019-07-09 11:36:05,
	Serialize by Router on notes_smtp/zte_ltd(Release 9.0.1FP7|August  17,
	2016) at 2019-07-09 11:35:57,
	Serialize complete at 2019-07-09 11:35:57
X-MAIL: mse-fl2.zte.com.cn x693ZsuA002528
X-Mailman-Approved-At: Fri, 12 Jul 2019 08:13:13 -0700
Cc: wang.yi59@zte.com.cn, xue.zhihong@zte.com.cn, yocto@yoctoproject.org,
	jiang.xuexin@zte.com.cn, zhanglin <zhang.lin16@zte.com.cn>
Subject: [PATCH] meta-selinux: fix parsing error while selinux not configured
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
X-List-Received-Date: Tue, 09 Jul 2019 03:52:18 -0000

Following parsing error will occure while "selinux" not configured
in DISTRO_FEATURES:
ERROR: ParseError in /workspace/zhanglin/CGEL/CGEL6X.new2/CGEL/cge-
l6x_yocto/sources/meta-selinux/recipes-devtools/python/: not a Bit-
Bake file
to fix this, including a empty file: python_default.inc in python_-
%bbappend will work.

Signed-off-by: zhanglin <zhang.lin16@zte.com.cn>
---
 recipes-devtools/python/python_%.bbappend  | 2 +-
 recipes-devtools/python/python_default.inc | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 create mode 100644 recipes-devtools/python/python_default.inc

diff --git a/recipes-devtools/python/python_%.bbappend b/recipes-devtools/python/python_%.bbappend
index 7719d3b..4e69c49 100644
--- a/recipes-devtools/python/python_%.bbappend
+++ b/recipes-devtools/python/python_%.bbappend
@@ -1 +1 @@
-require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}
+require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '${BPN}_default.inc', d)}
diff --git a/recipes-devtools/python/python_default.inc b/recipes-devtools/python/python_default.inc
new file mode 100644
index 0000000..e69de29
-- 
2.15.2


