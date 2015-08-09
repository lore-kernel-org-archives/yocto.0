Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC76AE008EC; Sun,  9 Aug 2015 09:05:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50397E00306
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 09:05:24 -0700 (PDT)
Received: by ioeg141 with SMTP id g141so149963411ioe.3
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 09:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=KZr9YCNIhU7DoqqWsqA7+nCpxHhb61PglpamPUp/kyg=;
	b=q7sVL8H1BdoXcYGUICHvoqaQV/IhkG6AsKJ44YJP4QvuHO5nvmVo0sUnQtF0pb4Ql+
	7k8jPBvIKpJiBKrAeCaUjUnaeBfYiyvJWpvR+JrcQmM4/J7rLKlTVH+q7wQiEtik4mo/
	SPKeChPEPNHoXuLv2Q3fce7kRsQ5wPDv2UcVInAtQcBDAFsugGSIuqfZmVP7zW59YUL4
	5H9hXFi8c8NSDQpjZZqwexNelPwzDHrbCdkmu4ucf362NTU5RM2WrcDjeLhBr9sFnAv7
	VOyHGk9su9Cy8XKH0w3kYcEQTHL375TasZnCXaynWyJJbQuUti7n6QxLvKNs6QhRGgMO
	oj5w==
X-Received: by 10.107.14.10 with SMTP id 10mr16177140ioo.45.1439136323806;
	Sun, 09 Aug 2015 09:05:23 -0700 (PDT)
Received: from dvm-ch2e-038.sys.comcast.net (a-96-119-89-79.sys.comcast.net.
	[96.119.89.79]) by smtp.gmail.com with ESMTPSA id
	g123sm11308942iog.31.2015.08.09.09.05.22
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 09 Aug 2015 09:05:22 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  9 Aug 2015 09:05:17 -0700
Message-Id: <1439136317-7047-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] userland: Fix POSIX compliance expectation
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
X-List-Received-Date: Sun, 09 Aug 2015 16:05:27 -0000

We have errors like below with glibc 2.22+

net_sockets_common.c:139:20: error: storage size of 'hints' isn't known
    struct addrinfo hints, *info, *p;
                        ^

newer glibc has now fixed the definitions of getaddrinfo and ilk to be
enabled with correct posix version.

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../userland/0001-Use-newer-POSIX-macro.patch      | 35 ++++++++++++++++++++++
 recipes-graphics/userland/userland_git.bb          |  1 +
 2 files changed, 36 insertions(+)
 create mode 100644 recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch

diff --git a/recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch b/recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch
new file mode 100644
index 0000000..2a092c2
--- /dev/null
+++ b/recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch
@@ -0,0 +1,35 @@
+From 12f7718bb0e08e2c06825c7ab7541b3c5bfe74c1 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sun, 9 Aug 2015 08:55:05 -0700
+Subject: [PATCH] Use newer POSIX macro
+
+Define _POSIX_C_SOURCE such that it demands correct
+posix interfaces, netdb.h declares interfaces such as
+getaddrinfo if __USE_POSIX, i.e. POSIX.1:1990 or later.
+However, these interfaces were new in the 2001 edition of POSIX
+therefore ask for Extension from POSIX.1:2001 since we use addrinfo
+structure here.
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+Upstream-Status: Submitted
+
+ containers/CMakeLists.txt | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/containers/CMakeLists.txt b/containers/CMakeLists.txt
+index a29a885..5570038 100644
+--- a/containers/CMakeLists.txt
++++ b/containers/CMakeLists.txt
+@@ -13,7 +13,7 @@ add_definitions(-DDL_PATH_PREFIX="${VMCS_PLUGIN_DIR}/")
+ 
+ SET( GCC_COMPILER_FLAGS -Wall -g -O2 -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wcast-qual -Wwrite-strings -Wundef )
+ SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -Wextra )#-Wno-missing-field-initializers )
+-SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -std=c99 -D_POSIX_C_SOURCE=199309L )
++SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -std=c99 -D_POSIX_C_SOURCE=200112L )
+ SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -Wno-missing-field-initializers )
+ SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -Wno-unused-value )
+ 
+-- 
+2.1.4
+
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index dfb6701..2b3286a 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,6 +16,7 @@ SRCFORK = "raspberrypi"
 SRCREV = "c2f27fb8e581f8e5af83bf28422553ade8f7a7c8"
 
 SRC_URI = "git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
+           file://0001-Use-newer-POSIX-macro.patch \
           "
 S = "${WORKDIR}/git"
 
-- 
2.1.4


