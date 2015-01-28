Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C070CE008CF; Wed, 28 Jan 2015 07:36:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4589E00858
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 07:36:23 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=scrapper.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1YGUdT-0006AH-Id; Wed, 28 Jan 2015 15:34:32 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Wed, 28 Jan 2015 15:36:03 +0000
Message-Id: <1422459365-22900-3-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1422459365-22900-1-git-send-email-flihp@twobit.us>
References: <1422459365-22900-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][ 2/4] dhcp: Use wildcard for version number.
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
X-List-Received-Date: Wed, 28 Jan 2015 15:36:30 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-connectivity/dhcp/dhcp_%.bbappend     |    3 +++
 recipes-connectivity/dhcp/dhcp_4.3.0.bbappend |    3 ---
 2 files changed, 3 insertions(+), 3 deletions(-)
 create mode 100644 recipes-connectivity/dhcp/dhcp_%.bbappend
 delete mode 100644 recipes-connectivity/dhcp/dhcp_4.3.0.bbappend

diff --git a/recipes-connectivity/dhcp/dhcp_%.bbappend b/recipes-connectivity/dhcp/dhcp_%.bbappend
new file mode 100644
index 0000000..2d2232c
--- /dev/null
+++ b/recipes-connectivity/dhcp/dhcp_%.bbappend
@@ -0,0 +1,3 @@
+inherit selinux
+
+FILESEXTRAPATHS_prepend := "${@target_selinux(d, '${THISDIR}/files:')}"
diff --git a/recipes-connectivity/dhcp/dhcp_4.3.0.bbappend b/recipes-connectivity/dhcp/dhcp_4.3.0.bbappend
deleted file mode 100644
index 2d2232c..0000000
--- a/recipes-connectivity/dhcp/dhcp_4.3.0.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-inherit selinux
-
-FILESEXTRAPATHS_prepend := "${@target_selinux(d, '${THISDIR}/files:')}"
-- 
1.7.10.4


