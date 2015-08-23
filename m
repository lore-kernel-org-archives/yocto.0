Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E99DE00B9F; Sun, 23 Aug 2015 15:35:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0F3AE00B79
	for <yocto@yoctoproject.org>; Sun, 23 Aug 2015 15:35:40 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZTdqO-0002ci-Vt; Sun, 23 Aug 2015 22:34:30 +0000
From: Philip Tricca <flihp@twobit.us>
To: Joe_MacDonald@mentor.com
Date: Sun, 23 Aug 2015 22:35:20 +0000
Message-Id: <1440369322-35077-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: [meta-selinux][PATCH 0/2] Fix broken dependency in e2fsprogs.
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
X-List-Received-Date: Sun, 23 Aug 2015 22:35:44 -0000

As pointed out by Jackie on the Yocto list: e2fsprogs currently has a
broken dependency on linux-libc-headers. Further we need these headers
in the native environment / sysroot. This patch set creates the native
package we need for the linux-libc-headers and adds the dependency to
e2fsprogs.

Best,
Philip

Philip Tricca (2):
  linux-libc-headers: Make headers available to native packages via
    BBCLASSEXTEND.
  e2fsprogs: Add dependency on linux-libc-headers.

 recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend            | 2 ++
 recipes-kernel/linux-libc-headers/linux-libc-headers_%.bbappend | 1 +
 2 files changed, 3 insertions(+)
 create mode 100644 recipes-kernel/linux-libc-headers/linux-libc-headers_%.bbappend

-- 
2.1.4


