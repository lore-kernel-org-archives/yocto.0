Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3950DE00A3B; Wed,  5 Aug 2015 15:55:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26A30E00A73
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 15:55:19 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 05 Aug 2015 15:55:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,620,1432623600"; d="scan'208";a="778632445"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.145])
	by orsmga002.jf.intel.com with ESMTP; 05 Aug 2015 15:55:18 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Aug 2015 15:51:22 -0700
Message-Id: <1438815082-32286-7-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1438815082-32286-1-git-send-email-juro.bystricky@intel.com>
References: <1438815082-32286-1-git-send-email-juro.bystricky@intel.com>
Subject: [meta-mingw][PATCH 6/6] gettext_0.19.4.bbappend: support for mingw
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
X-List-Received-Date: Wed, 05 Aug 2015 22:55:20 -0000

This patch solves various unresolved references:

 .libs/fstrcmp.o:fstrcmp.c:(.text+0x4b6): undefined reference to `_imp__pthread_key_create'
 .libs/fstrcmp.o:fstrcmp.c:(.text+0x5b2): undefined reference to `_imp__pthread_once'
 .libs/fstrcmp.o:fstrcmp.c:(.text+0x5c4): undefined reference to `_imp__pthread_getspecific'
 .libs/fstrcmp.o:fstrcmp.c:(.text+0x617): undefined reference to `_imp__pthread_setspecific'
 .libs/localename.o:localename.c:(.text+0x14f6): undefined reference to `_imp__pthread_mutex_lock'
 .libs/localename.o:localename.c:(.text+0x1576): undefined reference to `_imp__pthread_mutex_unlock'
 .libs/localename.o:localename.c:(.text+0x15c9): undefined reference to `_imp__pthread_mutex_unlock'
 glthread/.libs/lock.o:lock.c:(.text+0xe): undefined reference to `_imp__pthread_mutexattr_init'
 glthread/.libs/lock.o:lock.c:(.text+0x2d): undefined reference to `_imp__pthread_mutexattr_settype'
 glthread/.libs/lock.o:lock.c:(.text+0x44): undefined reference to `_imp__pthread_mutex_init'
 glthread/.libs/lock.o:lock.c:(.text+0x53): undefined reference to `_imp__pthread_mutexattr_destroy'
 glthread/.libs/lock.o:lock.c:(.text+0x62): undefined reference to `_imp__pthread_mutexattr_destroy'
 glthread/.libs/lock.o:lock.c:(.text+0x75): undefined reference to `_imp__pthread_mutexattr_dest

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-core/gettext/gettext_0.19.4.bbappend | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 recipes-core/gettext/gettext_0.19.4.bbappend

diff --git a/recipes-core/gettext/gettext_0.19.4.bbappend b/recipes-core/gettext/gettext_0.19.4.bbappend
new file mode 100644
index 0000000..ac76feb
--- /dev/null
+++ b/recipes-core/gettext/gettext_0.19.4.bbappend
@@ -0,0 +1,2 @@
+DEPENDS_append_mingw32 = " pthreads-win32"
+LDFLAGS_prepend_mingw32 = " -lpthread "
-- 
1.9.1


