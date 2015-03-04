Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D333E00853; Tue,  3 Mar 2015 23:28:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C1E7E0076F
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2015 23:28:51 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=scrapper.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1YT3hB-0000Um-OF; Wed, 04 Mar 2015 07:26:18 +0000
From: flihp@twobit.us
To: yocto@yoctoproject.org
Date: Wed,  4 Mar 2015 07:28:28 +0000
Message-Id: <1425454108-13549-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [][meta-selinux][PATCH] Fix bad path in d382d5
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
X-List-Received-Date: Wed, 04 Mar 2015 07:28:57 -0000

From: Philip Tricca <flihp@twobit.us>

BBFILE_COLLECTIONS for meta-virtualization is 'virtualization-layer'.
This is required to get lxc bbappend working when meta-virtualization is
added to bblayers.conf.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 meta-virtualization/recipes-containers/lxc/lxc_%.bbappend  |    1 -
 virtualization-layer/recipes-containers/lxc/lxc_%.bbappend |    1 +
 2 files changed, 1 insertion(+), 1 deletion(-)
 delete mode 100644 meta-virtualization/recipes-containers/lxc/lxc_%.bbappend
 create mode 100644 virtualization-layer/recipes-containers/lxc/lxc_%.bbappend

diff --git a/meta-virtualization/recipes-containers/lxc/lxc_%.bbappend b/meta-virtualization/recipes-containers/lxc/lxc_%.bbappend
deleted file mode 100644
index 8c11cac..0000000
--- a/meta-virtualization/recipes-containers/lxc/lxc_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-inherit enable-selinux
diff --git a/virtualization-layer/recipes-containers/lxc/lxc_%.bbappend b/virtualization-layer/recipes-containers/lxc/lxc_%.bbappend
new file mode 100644
index 0000000..8c11cac
--- /dev/null
+++ b/virtualization-layer/recipes-containers/lxc/lxc_%.bbappend
@@ -0,0 +1 @@
+inherit enable-selinux
-- 
1.7.10.4


