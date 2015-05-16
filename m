Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59F04E00961; Sat, 16 May 2015 20:33:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DATE_IN_PAST_06_12
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before
	Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 818E3E008E2
	for <yocto@yoctoproject.org>; Sat, 16 May 2015 20:32:59 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Ytoim-0006Qd-6O; Sun, 17 May 2015 02:54:32 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Sat, 16 May 2015 18:57:30 +0000
Message-Id: <1431802650-1340-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH] oe-selinux.conf: set preferred kernel version to 3.14
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
X-List-Received-Date: Sun, 17 May 2015 03:33:02 -0000

Upstream 3.19 isn't supported by meta-selinux yet. Set PREFERRED_VERSION
to 3.14 as a work-around to keep the reference images bootable.
---
 conf/distro/oe-selinux.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/distro/oe-selinux.conf b/conf/distro/oe-selinux.conf
index 6e55a32..ea3adbf 100644
--- a/conf/distro/oe-selinux.conf
+++ b/conf/distro/oe-selinux.conf
@@ -1,4 +1,6 @@
 DISTRO = "oe-selinux"
 DISTROOVERRIDES .= ":selinux"
 
+PREFERRED_VERSION_linux-yocto = "3.14%"
+
 DISTRO_FEATURES_append = " acl xattr pam selinux"
-- 
2.1.4


