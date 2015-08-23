Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA92FE00B9E; Sun, 23 Aug 2015 15:35:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5792E00B97
	for <yocto@yoctoproject.org>; Sun, 23 Aug 2015 15:35:41 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZTdqR-0002ci-95; Sun, 23 Aug 2015 22:34:32 +0000
From: Philip Tricca <flihp@twobit.us>
To: Joe_MacDonald@mentor.com
Date: Sun, 23 Aug 2015 22:35:21 +0000
Message-Id: <1440369322-35077-2-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1440369322-35077-1-git-send-email-flihp@twobit.us>
References: <1440369322-35077-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: [meta-selinux][PATCH 1/2] linux-libc-headers: Make headers available to native packages via BBCLASSEXTEND.
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
X-List-Received-Date: Sun, 23 Aug 2015 22:35:45 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-kernel/linux-libc-headers/linux-libc-headers_%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-kernel/linux-libc-headers/linux-libc-headers_%.bbappend

diff --git a/recipes-kernel/linux-libc-headers/linux-libc-headers_%.bbappend b/recipes-kernel/linux-libc-headers/linux-libc-headers_%.bbappend
new file mode 100644
index 0000000..d6f5869
--- /dev/null
+++ b/recipes-kernel/linux-libc-headers/linux-libc-headers_%.bbappend
@@ -0,0 +1 @@
+BBCLASSEXTEND += "native"
-- 
2.1.4


