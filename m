Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21EDEE006B5
	for <yocto@yoctoproject.org>; Thu,  6 Feb 2014 19:07:26 -0800 (PST)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=localhost)
	by smtp.twobit.us with esmtpsa (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1WBbkr-0008Mo-6P; Fri, 07 Feb 2014 03:05:25 +0000
Received: from flihp by localhost with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1WBboX-00080P-D6; Fri, 07 Feb 2014 03:09:13 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Fri,  7 Feb 2014 03:09:09 +0000
Message-Id: <1391742553-30745-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 0/4] Begin mingrating bbappends to use wildcards in place of version numbers.
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
X-List-Received-Date: Fri, 07 Feb 2014 03:07:27 -0000

The current trend in OE recipes seems to use a wildcard in place of version numbers for bbappends. AFAIK this is a relatively new feature but a welcome one. This is a sort of RFC in that I think it's probably best for meta-selinux to use this mechanism to keep from having to rename bbappends everytime something in oe-core changes. I guess the right way to implement this is to change the bbappends in meta-selinux when the version numbers change upstream.

Philip Tricca (4):
  busybox: Use wildcard for version number in busybox bbappend.
  libcgroup: Use wildcard for version number in libcgroup bbappend.
  sudo: Use wildcard for version number in sudo bbappend.
  libxcb: Use wildcard for version number in libxcb bbappend.

 recipes-core/busybox/busybox_%.bbappend        |   87 ++++++++++++++++++++++++
 recipes-core/busybox/busybox_1.21.1.bbappend   |   87 ------------------------
 recipes-core/libcgroup/libcgroup_%.bbappend    |   12 ++++
 recipes-core/libcgroup/libcgroup_0.38.bbappend |   12 ----
 recipes-extended/sudo/sudo_%.bbappend          |    3 +
 recipes-extended/sudo/sudo_1.8.8.bbappend      |    3 -
 recipes-graphics/xcb/libxcb_%.bbappend         |    8 +++
 recipes-graphics/xcb/libxcb_1.9.3.bbappend     |    8 ---
 8 files changed, 110 insertions(+), 110 deletions(-)
 create mode 100644 recipes-core/busybox/busybox_%.bbappend
 delete mode 100644 recipes-core/busybox/busybox_1.21.1.bbappend
 create mode 100644 recipes-core/libcgroup/libcgroup_%.bbappend
 delete mode 100644 recipes-core/libcgroup/libcgroup_0.38.bbappend
 create mode 100644 recipes-extended/sudo/sudo_%.bbappend
 delete mode 100644 recipes-extended/sudo/sudo_1.8.8.bbappend
 create mode 100644 recipes-graphics/xcb/libxcb_%.bbappend
 delete mode 100644 recipes-graphics/xcb/libxcb_1.9.3.bbappend

-- 
1.7.10.4


