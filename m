Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0AAFE00A86; Tue, 21 Aug 2018 02:27:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BB7BE009D4
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 02:27:30 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w7L9RUvN009067
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 02:27:30 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.399.0; Tue, 21 Aug 2018 02:27:29 -0700
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 21 Aug 2018 17:27:28 +0800
Message-ID: <1534843648-283185-1-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] ocfs2-tools: Fix build with glibc 2.28
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
X-List-Received-Date: Tue, 21 Aug 2018 09:27:33 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

Backport two patches to fix below compile failures:
1,
In file included from o2cb_abi.c:52:
../include/ocfs2/ocfs2.h:222:2: error: unknown type name 'loff_t'
  loff_t d_off; /* Offset of structure in the file */
  ^~~~~~
2,
/usr/src/debug/ocfs2-tools/1.8.5-r0/git/mounted.ocfs2/mounted.c:354: undefined reference to `makedev'
collect2: error: ld returned 1 exit status
Makefile:36: recipe for target 'mounted.ocfs2' failed
make[1]: *** [mounted.ocfs2] Error 1

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 .../0001-Fix-build-with-glibc-2.28.patch           | 576 +++++++++++++++++++++
 ...s2-use-sys-sysmacros.h-include-for-makede.patch |  47 ++
 .../recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb   |   2 +
 3 files changed, 625 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-Fix-build-with-glibc-2.28.patch
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-mounted.ocfs2-use-sys-sysmacros.h-include-for-makede.patch

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-Fix-build-with-glibc-2.28.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-Fix-build-with-glibc-2.28.patch
new file mode 100644
index 0000000..7ce8405
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-Fix-build-with-glibc-2.28.patch
@@ -0,0 +1,576 @@
+From fa150e35931123fc630125ebef1901ffb30d421f Mon Sep 17 00:00:00 2001
+From: Robin Lee <cheeselee@fedoraproject.org>
+Date: Tue, 13 Mar 2018 16:39:43 +0800
+Subject: [PATCH] Fix build with glibc 2.28
+
+Since glibc git 663e7d78 (to be 2.28), type loff_t will be only defined
+when _DEFAULT_SOURCE defined. And with _XOPEN_SOURCE defined, _DEFAULT_SOURCE
+will not be defined by default.
+
+Without this fix, build failed with
+
+make[1]: Entering directory '/builddir/build/BUILD/ocfs2-tools-ocfs2-tools-1.8.5/libo2cb'
+gcc -O2 -g -pipe -Wall -Werror=format-security -Wp,-D_FORTIFY_SOURCE=2 -Wp,-D_GLIBCXX_ASSERTIONS -fexceptions -fstack-protector-strong -grecord-gcc-switches -specs=/usr/lib/rpm/redhat/redhat-hardened-cc1 -specs=/usr/lib/rpm/redhat/redhat-annobin-cc1 -m64 -mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection -mcet -fcf-protection -Wall -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -pipe -fPIC    -I../include -I.  -DHAVE_CMAP -DHAVE_FSDLM  -MD -MP -MF ./.o2cb_abi.d -o o2cb_abi.o -c o2cb_abi.c
+In file included from o2cb_abi.c:52:
+../include/ocfs2/ocfs2.h:222:2: error: unknown type name 'loff_t'
+  loff_t d_off; /* Offset of structure in the file */
+  ^~~~~~
+
+Upstream-Status: Backport[https://github.com/cheese/ocfs2-tools/commit/fa150e35931123fc630125ebef1901ffb30d421f]
+
+Signed-off-by: Robin Lee <cheeselee@fedoraproject.org>
+Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
+---
+ debugfs.ocfs2/dump_fs_locks.c      | 1 +
+ extras/check_metaecc.c             | 1 +
+ extras/find_allocation_fragments.c | 1 +
+ extras/find_dup_extents.c          | 1 +
+ extras/find_hardlinks.c            | 1 +
+ extras/find_inode_paths.c          | 1 +
+ extras/mark_journal_dirty.c        | 1 +
+ extras/resize_slotmap.c            | 1 +
+ extras/set_random_bits.c           | 1 +
+ fsck.ocfs2/dirblocks.c             | 1 +
+ include/ocfs2/ocfs2.h              | 3 +++
+ libo2cb/o2cb_abi.c                 | 1 +
+ libocfs2/alloc.c                   | 1 +
+ libocfs2/bitmap.c                  | 1 +
+ libocfs2/blockcheck.c              | 1 +
+ libocfs2/blocktype.c               | 1 +
+ libocfs2/cached_inode.c            | 1 +
+ libocfs2/chain.c                   | 1 +
+ libocfs2/chainalloc.c              | 1 +
+ libocfs2/dir_iterate.c             | 1 +
+ libocfs2/dirblock.c                | 1 +
+ libocfs2/expanddir.c               | 1 +
+ libocfs2/extend_file.c             | 1 +
+ libocfs2/extent_map.c              | 1 +
+ libocfs2/extents.c                 | 1 +
+ libocfs2/fileio.c                  | 1 +
+ libocfs2/freefs.c                  | 1 +
+ libocfs2/image.c                   | 1 +
+ libocfs2/inode.c                   | 1 +
+ libocfs2/inode_scan.c              | 1 +
+ libocfs2/link.c                    | 1 +
+ libocfs2/lookup.c                  | 1 +
+ libocfs2/memory.c                  | 1 +
+ libocfs2/mkjournal.c               | 1 +
+ libocfs2/namei.c                   | 1 +
+ libocfs2/openfs.c                  | 1 +
+ libocfs2/refcount.c                | 1 +
+ libocfs2/slot_map.c                | 1 +
+ libocfs2/sysfile.c                 | 1 +
+ libocfs2/truncate.c                | 1 +
+ libocfs2/unlink.c                  | 1 +
+ o2image/o2image.c                  | 1 +
+ 42 files changed, 44 insertions(+)
+
+diff --git a/debugfs.ocfs2/dump_fs_locks.c b/debugfs.ocfs2/dump_fs_locks.c
+index 05f52274..1c673e74 100644
+--- a/debugfs.ocfs2/dump_fs_locks.c
++++ b/debugfs.ocfs2/dump_fs_locks.c
+@@ -24,6 +24,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <sys/types.h>
+diff --git a/extras/check_metaecc.c b/extras/check_metaecc.c
+index 0bf2f3df..bf44c3fe 100644
+--- a/extras/check_metaecc.c
++++ b/extras/check_metaecc.c
+@@ -21,6 +21,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <stdlib.h>
+diff --git a/extras/find_allocation_fragments.c b/extras/find_allocation_fragments.c
+index 990c0906..d767b2a8 100644
+--- a/extras/find_allocation_fragments.c
++++ b/extras/find_allocation_fragments.c
+@@ -25,6 +25,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <unistd.h>
+diff --git a/extras/find_dup_extents.c b/extras/find_dup_extents.c
+index e8961a9c..f811eafc 100644
+--- a/extras/find_dup_extents.c
++++ b/extras/find_dup_extents.c
+@@ -28,6 +28,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <stdlib.h>
+diff --git a/extras/find_hardlinks.c b/extras/find_hardlinks.c
+index 9c9cbeb8..9c7a820e 100644
+--- a/extras/find_hardlinks.c
++++ b/extras/find_hardlinks.c
+@@ -28,6 +28,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <stdlib.h>
+diff --git a/extras/find_inode_paths.c b/extras/find_inode_paths.c
+index f6bb4b94..09dc3240 100644
+--- a/extras/find_inode_paths.c
++++ b/extras/find_inode_paths.c
+@@ -29,6 +29,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <stdlib.h>
+diff --git a/extras/mark_journal_dirty.c b/extras/mark_journal_dirty.c
+index aa36a70e..fccc5a5b 100644
+--- a/extras/mark_journal_dirty.c
++++ b/extras/mark_journal_dirty.c
+@@ -25,6 +25,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <stdlib.h>
+diff --git a/extras/resize_slotmap.c b/extras/resize_slotmap.c
+index 082f544c..485bf282 100644
+--- a/extras/resize_slotmap.c
++++ b/extras/resize_slotmap.c
+@@ -21,6 +21,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <stdlib.h>
+diff --git a/extras/set_random_bits.c b/extras/set_random_bits.c
+index 6bbc7e93..0d627eca 100644
+--- a/extras/set_random_bits.c
++++ b/extras/set_random_bits.c
+@@ -27,6 +27,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <stdlib.h>
+diff --git a/fsck.ocfs2/dirblocks.c b/fsck.ocfs2/dirblocks.c
+index b4b5c059..ba91c013 100644
+--- a/fsck.ocfs2/dirblocks.c
++++ b/fsck.ocfs2/dirblocks.c
+@@ -22,6 +22,7 @@
+  * Just a simple rbtree wrapper to record directory blocks and the inodes
+  * that own them.
+  */
++#define _DEFAULT_SOURCE
+ #include <unistd.h>
+ #include <stdlib.h>
+ #include <string.h>
+diff --git a/include/ocfs2/ocfs2.h b/include/ocfs2/ocfs2.h
+index b937ca31..4cbc8ad6 100644
+--- a/include/ocfs2/ocfs2.h
++++ b/include/ocfs2/ocfs2.h
+@@ -30,6 +30,9 @@
+ #ifndef _XOPEN_SOURCE
+ # define _XOPEN_SOURCE 600
+ #endif
++#ifndef _DEFAULT_SOURCE
++# define _DEFAULT_SOURCE // for loff_t, needed for glibc >= 2.28
++#endif
+ #ifndef _LARGEFILE64_SOURCE
+ # define _LARGEFILE64_SOURCE
+ #endif
+diff --git a/libo2cb/o2cb_abi.c b/libo2cb/o2cb_abi.c
+index 65ca7934..5c6f4b4b 100644
+--- a/libo2cb/o2cb_abi.c
++++ b/libo2cb/o2cb_abi.c
+@@ -18,6 +18,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <inttypes.h>
+diff --git a/libocfs2/alloc.c b/libocfs2/alloc.c
+index df228532..989901fc 100644
+--- a/libocfs2/alloc.c
++++ b/libocfs2/alloc.c
+@@ -24,6 +24,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/bitmap.c b/libocfs2/bitmap.c
+index 72c77e39..3583d9c0 100644
+--- a/libocfs2/bitmap.c
++++ b/libocfs2/bitmap.c
+@@ -23,6 +23,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/blockcheck.c b/libocfs2/blockcheck.c
+index 716253a6..9adec584 100644
+--- a/libocfs2/blockcheck.c
++++ b/libocfs2/blockcheck.c
+@@ -22,6 +22,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #ifdef DEBUG_EXE
+diff --git a/libocfs2/blocktype.c b/libocfs2/blocktype.c
+index 76484f07..82132ba0 100644
+--- a/libocfs2/blocktype.c
++++ b/libocfs2/blocktype.c
+@@ -19,6 +19,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/cached_inode.c b/libocfs2/cached_inode.c
+index 47788b25..4d6efff5 100644
+--- a/libocfs2/cached_inode.c
++++ b/libocfs2/cached_inode.c
+@@ -23,6 +23,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/chain.c b/libocfs2/chain.c
+index cd48845d..2bbc001f 100644
+--- a/libocfs2/chain.c
++++ b/libocfs2/chain.c
+@@ -23,6 +23,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/chainalloc.c b/libocfs2/chainalloc.c
+index 5c603015..cdf629c8 100644
+--- a/libocfs2/chainalloc.c
++++ b/libocfs2/chainalloc.c
+@@ -24,6 +24,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/dir_iterate.c b/libocfs2/dir_iterate.c
+index 9dc1c4b6..bac18ab8 100644
+--- a/libocfs2/dir_iterate.c
++++ b/libocfs2/dir_iterate.c
+@@ -26,6 +26,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <inttypes.h>
+diff --git a/libocfs2/dirblock.c b/libocfs2/dirblock.c
+index dc9418fc..a90081f7 100644
+--- a/libocfs2/dirblock.c
++++ b/libocfs2/dirblock.c
+@@ -26,6 +26,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/expanddir.c b/libocfs2/expanddir.c
+index 11775b57..20d7ef9f 100644
+--- a/libocfs2/expanddir.c
++++ b/libocfs2/expanddir.c
+@@ -26,6 +26,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <stdio.h>
+diff --git a/libocfs2/extend_file.c b/libocfs2/extend_file.c
+index 3c8f41b7..7619cb0a 100644
+--- a/libocfs2/extend_file.c
++++ b/libocfs2/extend_file.c
+@@ -23,6 +23,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/extent_map.c b/libocfs2/extent_map.c
+index ce84d7ec..06bde172 100644
+--- a/libocfs2/extent_map.c
++++ b/libocfs2/extent_map.c
+@@ -23,6 +23,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/extents.c b/libocfs2/extents.c
+index bf49e690..ac377021 100644
+--- a/libocfs2/extents.c
++++ b/libocfs2/extents.c
+@@ -27,6 +27,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/fileio.c b/libocfs2/fileio.c
+index a14a3edb..61673102 100644
+--- a/libocfs2/fileio.c
++++ b/libocfs2/fileio.c
+@@ -26,6 +26,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/freefs.c b/libocfs2/freefs.c
+index e36d8b3d..4213ef8a 100644
+--- a/libocfs2/freefs.c
++++ b/libocfs2/freefs.c
+@@ -26,6 +26,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <stdlib.h>
+diff --git a/libocfs2/image.c b/libocfs2/image.c
+index 4ceab676..24939d10 100644
+--- a/libocfs2/image.c
++++ b/libocfs2/image.c
+@@ -23,6 +23,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <stdio.h>
+diff --git a/libocfs2/inode.c b/libocfs2/inode.c
+index 2f7d570b..c514e6ab 100644
+--- a/libocfs2/inode.c
++++ b/libocfs2/inode.c
+@@ -26,6 +26,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/inode_scan.c b/libocfs2/inode_scan.c
+index 317fc644..b7020d59 100644
+--- a/libocfs2/inode_scan.c
++++ b/libocfs2/inode_scan.c
+@@ -22,6 +22,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/link.c b/libocfs2/link.c
+index 8f389b53..08a5bb21 100644
+--- a/libocfs2/link.c
++++ b/libocfs2/link.c
+@@ -26,6 +26,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/lookup.c b/libocfs2/lookup.c
+index a8d0f3c7..44ac392f 100644
+--- a/libocfs2/lookup.c
++++ b/libocfs2/lookup.c
+@@ -26,6 +26,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/memory.c b/libocfs2/memory.c
+index ecdccc5c..40dc5ae4 100644
+--- a/libocfs2/memory.c
++++ b/libocfs2/memory.c
+@@ -27,6 +27,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/mkjournal.c b/libocfs2/mkjournal.c
+index 6c425626..22b76a14 100644
+--- a/libocfs2/mkjournal.c
++++ b/libocfs2/mkjournal.c
+@@ -26,6 +26,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/namei.c b/libocfs2/namei.c
+index 20c70f02..7159101a 100644
+--- a/libocfs2/namei.c
++++ b/libocfs2/namei.c
+@@ -26,6 +26,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <stdio.h>
+diff --git a/libocfs2/openfs.c b/libocfs2/openfs.c
+index 21a78c1d..2a758bb1 100644
+--- a/libocfs2/openfs.c
++++ b/libocfs2/openfs.c
+@@ -26,6 +26,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/refcount.c b/libocfs2/refcount.c
+index 5756844a..bcf2cdfb 100644
+--- a/libocfs2/refcount.c
++++ b/libocfs2/refcount.c
+@@ -19,6 +19,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/slot_map.c b/libocfs2/slot_map.c
+index 66f35418..923468ce 100644
+--- a/libocfs2/slot_map.c
++++ b/libocfs2/slot_map.c
+@@ -19,6 +19,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include "ocfs2/byteorder.h"
+diff --git a/libocfs2/sysfile.c b/libocfs2/sysfile.c
+index b574dcd0..35c620ad 100644
+--- a/libocfs2/sysfile.c
++++ b/libocfs2/sysfile.c
+@@ -23,6 +23,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600  /* Triggers XOPEN2K in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/truncate.c b/libocfs2/truncate.c
+index fcfd9521..6cdc5646 100644
+--- a/libocfs2/truncate.c
++++ b/libocfs2/truncate.c
+@@ -23,6 +23,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/libocfs2/unlink.c b/libocfs2/unlink.c
+index 1f45f540..425788ad 100644
+--- a/libocfs2/unlink.c
++++ b/libocfs2/unlink.c
+@@ -27,6 +27,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <string.h>
+diff --git a/o2image/o2image.c b/o2image/o2image.c
+index 1dd16ed5..1a1b4970 100644
+--- a/o2image/o2image.c
++++ b/o2image/o2image.c
+@@ -23,6 +23,7 @@
+  */
+ 
+ #define _XOPEN_SOURCE 600 /* Triggers magic in features.h */
++#define _DEFAULT_SOURCE
+ #define _LARGEFILE64_SOURCE
+ 
+ #include <stdio.h>
+-- 
+2.17.1
+
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-mounted.ocfs2-use-sys-sysmacros.h-include-for-makede.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-mounted.ocfs2-use-sys-sysmacros.h-include-for-makede.patch
new file mode 100644
index 0000000..ddc43aa
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-mounted.ocfs2-use-sys-sysmacros.h-include-for-makede.patch
@@ -0,0 +1,47 @@
+From 03be837c7d0b9be393ffb555879c49e6212fbd0f Mon Sep 17 00:00:00 2001
+From: Valentin Vidic <Valentin.Vidic@CARNet.hr>
+Date: Thu, 25 Jan 2018 13:05:27 +0100
+Subject: [PATCH] mounted.ocfs2: use <sys/sysmacros.h> include for makedev
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+ mounted.c: In function "build_partition_list":
+ mounted.c:354:13: warning: In the GNU C Library, "makedev" is defined
+  by <sys/sysmacros.h>. For historical compatibility, it is
+  currently defined by <sys/types.h> as well, but we plan to
+  remove this soon. To use "makedev", include <sys/sysmacros.h>
+  directly. If you did not intend to use a system-defined macro
+  "makedev", you should undefine it after including <sys/types.h>.
+        makedev(major, minor), &devname);
+              ^~~~~~~~~~~~~~~~~~~~~~~~~~~
+
+Fix the below error:
+/usr/src/debug/ocfs2-tools/1.8.5-r0/git/mounted.ocfs2/mounted.c:354: undefined reference to `makedev'
+collect2: error: ld returned 1 exit status
+Makefile:36: recipe for target 'mounted.ocfs2' failed
+make[1]: *** [mounted.ocfs2] Error 1
+
+Upstream-Status: Backport[https://github.com/markfasheh/ocfs2-tools/commit/03be837c7d0b9be393ffb555879c49e6212fbd0f]
+
+Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
+---
+ mounted.ocfs2/mounted.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/mounted.ocfs2/mounted.c b/mounted.ocfs2/mounted.c
+index 1576f902..090ab4ed 100644
+--- a/mounted.ocfs2/mounted.c
++++ b/mounted.ocfs2/mounted.c
+@@ -25,7 +25,7 @@
+ #define _LARGEFILE64_SOURCE
+ #define _GNU_SOURCE /* Because libc really doesn't want us using O_DIRECT? */
+ 
+-#include <sys/types.h>
++#include <sys/sysmacros.h>
+ #include <stdio.h>
+ #include <unistd.h>
+ #include <errno.h>
+-- 
+2.17.1
+
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
index 5aeb053..8cf82a8 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
@@ -19,6 +19,8 @@ SRC_URI = "git://github.com/markfasheh/ocfs2-tools \
     file://no-redhat.patch \
     file://o2cb.service \
     file://ocfs2.service \
+    file://0001-Fix-build-with-glibc-2.28.patch \
+    file://0001-mounted.ocfs2-use-sys-sysmacros.h-include-for-makede.patch \
 "
 SRCREV = "f1b4d073f08679f97b64b3eb88e586032f92a701"
 S = "${WORKDIR}/git"
-- 
2.7.4


