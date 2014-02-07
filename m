Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AA24E006E9
	for <yocto@yoctoproject.org>; Thu,  6 Feb 2014 19:07:37 -0800 (PST)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=localhost)
	by smtp.twobit.us with esmtpsa (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1WBbkm-0008Mr-Or; Fri, 07 Feb 2014 03:05:38 +0000
Received: from flihp by localhost with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1WBboX-00080d-In; Fri, 07 Feb 2014 03:09:13 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Fri,  7 Feb 2014 03:09:12 +0000
Message-Id: <1391742553-30745-4-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1391742553-30745-1-git-send-email-flihp@twobit.us>
References: <1391742553-30745-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 3/4] sudo: Use wildcard for version number in sudo bbappend.
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
X-List-Received-Date: Fri, 07 Feb 2014 03:07:37 -0000


Signed-off-by: Philip Tricca <flihp@twobit.us>

 create mode 100644 recipes-extended/sudo/sudo_%.bbappend
 delete mode 100644 recipes-extended/sudo/sudo_1.8.8.bbappend

diff --git a/recipes-extended/sudo/sudo_%.bbappend b/recipes-extended/sudo/sudo_%.bbappend
new file mode 100644
index 0000000..5ad8973
--- /dev/null
+++ b/recipes-extended/sudo/sudo_%.bbappend
@@ -0,0 +1,3 @@
+PR .= ".2"
+
+inherit with-selinux
diff --git a/recipes-extended/sudo/sudo_1.8.8.bbappend b/recipes-extended/sudo/sudo_1.8.8.bbappend
deleted file mode 100644
index 5ad8973..0000000
--- a/recipes-extended/sudo/sudo_1.8.8.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-PR .= ".2"
-
-inherit with-selinux
-- 
1.7.10.4


