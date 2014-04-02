Return-Path: <joe.slater@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4B40E00C32
	for <yocto@yoctoproject.org>; Wed,  2 Apr 2014 14:20:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s32LJxwX025114
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 2 Apr 2014 14:19:59 -0700 (PDT)
Received: from ala-jslater-lx3.wrs.com (147.11.152.42) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Wed, 2 Apr 2014 14:19:59 -0700
From: Joe Slater <jslater@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 2 Apr 2014 14:19:58 -0700
Message-ID: <1396473598-28636-1-git-send-email-jslater@windriver.com>
X-Mailer: git-send-email 1.7.3.4
MIME-Version: 1.0
Cc: joe.slater@windriver.com, joe.macdonald@windriver.com
Subject: [meta-selinux][PATCH 1/1] mesa: add dependency on libselinux-native
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
X-List-Received-Date: Wed, 02 Apr 2014 21:20:04 -0000
Content-Type: text/plain

mesa builds a host utility named builtin_compiler,
and that needs selinux, too, if --enable-selinux is
specfied to configure.

Signed-off-by: Joe Slater <jslater@windriver.com>
---
 recipes-graphics/mesa/mesa_9.1.6.bbappend |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-graphics/mesa/mesa_9.1.6.bbappend b/recipes-graphics/mesa/mesa_9.1.6.bbappend
index 8c11cac..0004f71 100644
--- a/recipes-graphics/mesa/mesa_9.1.6.bbappend
+++ b/recipes-graphics/mesa/mesa_9.1.6.bbappend
@@ -1 +1,6 @@
 inherit enable-selinux
+
+# But wait!  There's more!  mesa builds a host program named builtin_compiler
+# and it needs selinux, too.  We replace the PACKAGECONFIG[] in the bbclass.
+#
+PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux libselinux-native,"
-- 
1.7.9.5


