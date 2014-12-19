Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ACBFE00BF5; Fri, 19 Dec 2014 16:31:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2696 seconds by postgrey-1.32 at yocto-www;
	Fri, 19 Dec 2014 16:31:46 PST
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DFCCE0082F
	for <yocto@yoctoproject.org>; Fri, 19 Dec 2014 16:31:46 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=scrapper.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Y27En-0002dB-5K; Fri, 19 Dec 2014 23:45:45 +0000
From: flihp@twobit.us
To: yocto@yoctoproject.org
Date: Fri, 19 Dec 2014 23:46:49 +0000
Message-Id: <1419032809-29879-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [PATCH][meta-selinux] parted: Use wildcard for version number in bbappend.
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
X-List-Received-Date: Sat, 20 Dec 2014 00:31:49 -0000

From: Philip Tricca <flihp@twobit.us>

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-extended/parted/parted_%.bbappend   |    3 +++
 recipes-extended/parted/parted_3.1.bbappend |    3 ---
 2 files changed, 3 insertions(+), 3 deletions(-)
 create mode 100644 recipes-extended/parted/parted_%.bbappend
 delete mode 100644 recipes-extended/parted/parted_3.1.bbappend

diff --git a/recipes-extended/parted/parted_%.bbappend b/recipes-extended/parted/parted_%.bbappend
new file mode 100644
index 0000000..366fdf5
--- /dev/null
+++ b/recipes-extended/parted/parted_%.bbappend
@@ -0,0 +1,3 @@
+PR .= ".2"
+
+inherit enable-selinux
diff --git a/recipes-extended/parted/parted_3.1.bbappend b/recipes-extended/parted/parted_3.1.bbappend
deleted file mode 100644
index 366fdf5..0000000
--- a/recipes-extended/parted/parted_3.1.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-PR .= ".2"
-
-inherit enable-selinux
-- 
1.7.10.4


