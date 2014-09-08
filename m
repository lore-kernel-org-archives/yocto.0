Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 251CEE0084F; Mon,  8 Sep 2014 05:39:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2145 seconds by postgrey-1.32 at yocto-www;
	Mon, 08 Sep 2014 05:39:32 PDT
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 697E5E0056A
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 05:39:32 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=scrapper.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1XQxaD-0000L8-92; Mon, 08 Sep 2014 11:58:09 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Mon,  8 Sep 2014 12:03:35 +0000
Message-Id: <1410177817-19839-2-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1410177817-19839-1-git-send-email-flihp@twobit.us>
References: <1410177817-19839-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 1/3] shadow: Use wildcard for version number in bbappend.
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
X-List-Received-Date: Mon, 08 Sep 2014 12:39:38 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-extended/shadow/shadow_%.bbappend       |    5 +++++
 recipes-extended/shadow/shadow_4.1.4.3.bbappend |    5 -----
 2 files changed, 5 insertions(+), 5 deletions(-)
 create mode 100644 recipes-extended/shadow/shadow_%.bbappend
 delete mode 100644 recipes-extended/shadow/shadow_4.1.4.3.bbappend

diff --git a/recipes-extended/shadow/shadow_%.bbappend b/recipes-extended/shadow/shadow_%.bbappend
new file mode 100644
index 0000000..befe620
--- /dev/null
+++ b/recipes-extended/shadow/shadow_%.bbappend
@@ -0,0 +1,5 @@
+PR .= ".6"
+
+inherit with-selinux with-audit
+
+FILESEXTRAPATHS_prepend := "${@target_selinux(d, '${THISDIR}/files:')}"
diff --git a/recipes-extended/shadow/shadow_4.1.4.3.bbappend b/recipes-extended/shadow/shadow_4.1.4.3.bbappend
deleted file mode 100644
index befe620..0000000
--- a/recipes-extended/shadow/shadow_4.1.4.3.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-PR .= ".6"
-
-inherit with-selinux with-audit
-
-FILESEXTRAPATHS_prepend := "${@target_selinux(d, '${THISDIR}/files:')}"
-- 
1.7.10.4


