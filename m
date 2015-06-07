Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 092C8E00A1A; Sat,  6 Jun 2015 17:38:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EF6FE00A08
	for <yocto@yoctoproject.org>; Sat,  6 Jun 2015 17:38:01 -0700 (PDT)
Received: from [172.56.38.137] (helo=lappy2.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Z1OWn-0000Nq-W0; Sun, 07 Jun 2015 00:33:31 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Sat,  6 Jun 2015 17:37:02 -0700
Message-Id: <1433637428-21242-5-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1433637428-21242-1-git-send-email-flihp@twobit.us>
References: <1433637428-21242-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 172.56.38.137
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][RFC 04/10] e2fsprogs: Add patch to build xattr code.
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
X-List-Received-Date: Sun, 07 Jun 2015 00:38:03 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../e2fsprogs/Makefile.in-build-xattr.o.patch      | 96 ++++++++++++++++++++++
 .../e2fsprogs/e2fsprogs_1.42.9.bbappend            |  1 +
 2 files changed, 97 insertions(+)
 create mode 100644 recipes-devtools/e2fsprogs/e2fsprogs/Makefile.in-build-xattr.o.patch

diff --git a/recipes-devtools/e2fsprogs/e2fsprogs/Makefile.in-build-xattr.o.patch b/recipes-devtools/e2fsprogs/e2fsprogs/Makefile.in-build-xattr.o.patch
new file mode 100644
index 0000000..ae976ea
--- /dev/null
+++ b/recipes-devtools/e2fsprogs/e2fsprogs/Makefile.in-build-xattr.o.patch
@@ -0,0 +1,96 @@
+Add rules to Makefile.in in both misc/ and debugfs/ to build xattr.o.
+
+Signed-off-by: Philip Tricca <flihp@twobit.us>
+
+Index: e2fsprogs-1.42.9/misc/Makefile.in
+===================================================================
+--- e2fsprogs-1.42.9.orig/misc/Makefile.in
++++ e2fsprogs-1.42.9/misc/Makefile.in
+@@ -43,7 +43,7 @@ LPROGS=		@E2INITRD_PROG@
+ TUNE2FS_OBJS=	tune2fs.o util.o
+ MKLPF_OBJS=	mklost+found.o
+ MKE2FS_OBJS=	mke2fs.o util.o profile.o prof_err.o default_profile.o \
+-			create_inode.o
++			create_inode.o xattr.o
+ CHATTR_OBJS=	chattr.o
+ LSATTR_OBJS=	lsattr.o
+ UUIDGEN_OBJS=	uuidgen.o
+@@ -62,7 +62,7 @@ PROFILED_TUNE2FS_OBJS=	profiled/tune2fs.
+ PROFILED_MKLPF_OBJS=	profiled/mklost+found.o
+ PROFILED_MKE2FS_OBJS=	profiled/mke2fs.o profiled/util.o profiled/profile.o \
+ 			profiled/prof_err.o profiled/default_profile.o \
+-			profiled/create_inode.o
++			profiled/create_inode.o profiled/xattr.o
+ PROFILED_CHATTR_OBJS=	profiled/chattr.o
+ PROFILED_LSATTR_OBJS=	profiled/lsattr.o
+ PROFILED_UUIDGEN_OBJS=	profiled/uuidgen.o
+@@ -84,7 +84,8 @@ SRCS=	$(srcdir)/tune2fs.c $(srcdir)/mklo
+ 		$(srcdir)/uuidgen.c $(srcdir)/blkid.c $(srcdir)/logsave.c \
+ 		$(srcdir)/filefrag.c $(srcdir)/base_device.c \
+ 		$(srcdir)/ismounted.c $(srcdir)/../e2fsck/profile.c \
+-		$(srcdir)/e2undo.c $(srcdir)/e2freefrag.c $(srcdir)/create_inode.c
++		$(srcdir)/e2undo.c $(srcdir)/e2freefrag.c $(srcdir)/create_inode.c \
++		$(srcdir)/xattr.c
+ 
+ LIBS= $(LIBEXT2FS) $(LIBCOM_ERR) 
+ DEPLIBS= $(LIBEXT2FS) $(DEPLIBCOM_ERR)
+@@ -634,7 +635,8 @@ mke2fs.o: $(srcdir)/mke2fs.c $(top_build
+  $(srcdir)/util.h profile.h prof_err.h $(top_srcdir)/version.h \
+  $(srcdir)/nls-enable.h $(top_srcdir)/lib/quota/mkquota.h $(srcdir)/create_inode.h\
+  $(top_srcdir)/lib/quota/quotaio.h $(top_srcdir)/lib/quota/dqblk_v2.h \
+- $(top_srcdir)/lib/quota/quotaio_tree.h $(top_srcdir)/lib/../e2fsck/dict.h
++ $(top_srcdir)/lib/quota/quotaio_tree.h $(top_srcdir)/lib/../e2fsck/dict.h \
++ $(srcdir)/xattr.h
+ chattr.o: $(srcdir)/chattr.c $(top_builddir)/lib/config.h \
+  $(top_builddir)/lib/dirpaths.h $(top_srcdir)/lib/ext2fs/ext2_fs.h \
+  $(top_builddir)/lib/ext2fs/ext2_types.h $(top_srcdir)/lib/et/com_err.h \
+@@ -716,3 +718,5 @@ create_inode.o: $(srcdir)/create_inode.h
+  $(top_builddir)/lib/config.h $(top_srcdir)/lib/ext2fs/ext2fs.h \
+  $(top_srcdir)/lib/et/com_err.h $(top_srcdir)/lib/e2p/e2p.h \
+  $(srcdir)/nls-enable.h
++xattr.o: $(srcdir)/xattr.h $(srcdir)/xattr.c \
++ $(top_builddir)/lib/et/com_err.h $(top_srcdir)/lib/ext2fs/ext2fs.h
+Index: e2fsprogs-1.42.9/debugfs/Makefile.in
+===================================================================
+--- e2fsprogs-1.42.9.orig/debugfs/Makefile.in
++++ e2fsprogs-1.42.9/debugfs/Makefile.in
+@@ -18,7 +18,7 @@ MK_CMDS=	_SS_DIR_OVERRIDE=../lib/ss ../l
+ 
+ DEBUG_OBJS= debug_cmds.o debugfs.o util.o ncheck.o icheck.o ls.o \
+ 	lsdel.o dump.o set_fields.o logdump.o htree.o unused.o e2freefrag.o \
+-	filefrag.o extent_cmds.o extent_inode.o zap.o create_inode.o
++	filefrag.o extent_cmds.o extent_inode.o zap.o create_inode.o xattr.o
+ 
+ RO_DEBUG_OBJS= ro_debug_cmds.o ro_debugfs.o util.o ncheck.o icheck.o ls.o \
+ 	lsdel.o logdump.o htree.o e2freefrag.o filefrag.o extent_cmds.o \
+@@ -29,12 +29,16 @@ SRCS= debug_cmds.c $(srcdir)/debugfs.c $
+ 	$(srcdir)/dump.c $(srcdir)/set_fields.c ${srcdir}/logdump.c \
+ 	$(srcdir)/htree.c $(srcdir)/unused.c ${srcdir}/../misc/e2freefrag.c \
+ 	$(srcdir)/filefrag.c $(srcdir)/extent_inode.c $(srcdir)/zap.c \
+-	$(srcdir)/../misc/create_inode.c
++	$(srcdir)/../misc/create_inode.c $(srcdir)/../misc/xattr.c
+ 
+ CREATE_INODE_DEPS= $(srcdir)/../misc/create_inode.h \
+ 	$(srcdir)/../misc/create_inode.c $(top_builddir)/lib/config.h \
+ 	$(srcdir)/../lib/ext2fs/ext2fs.h $(srcdir)/../lib/et/com_err.h \
+-	$(srcdir)/../lib/e2p/e2p.h $(srcdir)/../misc/nls-enable.h
++	$(srcdir)/../lib/e2p/e2p.h $(srcdir)/../misc/nls-enable.h \
++	$(srcdir)/../misc/xattr.h
++
++XATTR_DEPS= $(srcdir)/../misc/xattr.h $(srcdir)/../misc/xattr.h \
++    $(srcdir)/../lib/et/com_err.h $(srcdir)/../lib/ext2fs/ext2fs.h
+ 
+ LIBS= $(LIBEXT2FS) $(LIBE2P) $(LIBSS) $(LIBCOM_ERR) $(LIBBLKID) \
+ 	$(LIBUUID)
+@@ -92,6 +96,11 @@ create_inode.o: $(CREATE_INODE_DEPS)
+ 	$(Q) $(CC) -c $(ALL_CFLAGS) -I$(srcdir) \
+ 		 $(srcdir)/../misc/create_inode.c -DDEBUGFS -o $@
+ 
++xattr.o: $(XATTR_DEPS)
++	$(E) "  CC $@"
++	$(Q) $(CC) -c $(ALL_CFLAGS) -I$(srcdir) \
++		$(srcdir)/../misc/xattr.c -o $@
++
+ debugfs.8: $(DEP_SUBSTITUTE) $(srcdir)/debugfs.8.in
+ 	$(E) "	SUBST $@"
+ 	$(Q) $(SUBSTITUTE_UPTIME) $(srcdir)/debugfs.8.in debugfs.8
diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
index 7f0198e..35bdcb7 100644
--- a/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
+++ b/recipes-devtools/e2fsprogs/e2fsprogs_1.42.9.bbappend
@@ -2,4 +2,5 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 SRC_URI += " \
     file://misc-xattr-copy-xattrs.patch \
+    file://Makefile.in-build-xattr.o.patch \
 "
-- 
2.1.4


