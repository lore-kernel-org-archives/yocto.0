Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D171E00BB3; Thu, 15 May 2014 18:32:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pb0-f50.google.com (unknown [209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22C15E00BAF
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:32:20 -0700 (PDT)
Received: by mail-pb0-f50.google.com with SMTP id ma3so1839860pbc.37
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=otSZRUW4IGi6qwyF3VKkwbEciwhnvq4beW3iiie6pz0=;
	b=p/tZUlRqQ5GhVcR/23XbAZ+p5SsGj6Qv4JgFxiat8vU1Fjotmw7goimq30py72hxWT
	OF1PJPeLVOGswa4lFunOgL8c3mfGF55lFvNUJWJxzwmPqNg4O/sNZ4eH7Rooc5c9Gp9J
	zzuhCSpcFNuR/wf7o7mCsAatt5JW6RUDIZSrBVmAYDAXZGQJtsnnfiWmXBAzGzwSnGau
	c8IgvV9hG7E1JKaH+xY38aS0hzT3u4oggdAyElHINKvxMV+iGAzVg83g7DKQRa1IvKDw
	jPLrNxN/ZIG/gG0sjD3iHxf6GBEixJkZB8onBtC+Y5fnGYHgZJ+VqxAt5D0axYM9MH8L
	MviA==
X-Received: by 10.68.106.36 with SMTP id gr4mr16636627pbb.64.1400203940348;
	Thu, 15 May 2014 18:32:20 -0700 (PDT)
Received: from Pahoa2.mvista.com (64.2.3.195.ptr.us.xo.net. [64.2.3.195])
	by mx.google.com with ESMTPSA id
	ph1sm27579744pac.14.2014.05.15.18.32.18 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 15 May 2014 18:32:19 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Thu, 15 May 2014 18:31:30 -0700
Message-Id: <1400203891-30912-9-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
References: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [PATCH 8/9] update psmics 22.21 and remove unneeded patch
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
X-List-Received-Date: Fri, 16 May 2014 01:32:22 -0000

psmics: Update to match version in Poky and remove patch.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../psmisc/pstree-compiles-with-SE-Linux.patch     | 265 ---------------------
 recipes-extended/psmisc/psmisc_22.20.bbappend      |   7 -
 recipes-extended/psmisc/psmisc_22.21.bbappend      |   3 +
 3 files changed, 3 insertions(+), 272 deletions(-)
 delete mode 100644 recipes-extended/psmisc/psmisc/pstree-compiles-with-SE-Linux.patch
 delete mode 100644 recipes-extended/psmisc/psmisc_22.20.bbappend
 create mode 100644 recipes-extended/psmisc/psmisc_22.21.bbappend

diff --git a/recipes-extended/psmisc/psmisc/pstree-compiles-with-SE-Linux.patch b/recipes-extended/psmisc/psmisc/pstree-compiles-with-SE-Linux.patch
deleted file mode 100644
index 8d58a0c..0000000
--- a/recipes-extended/psmisc/psmisc/pstree-compiles-with-SE-Linux.patch
+++ /dev/null
@@ -1,265 +0,0 @@
-From 89fa40f0a55096a62809e852244d7db3f445b0cd Mon Sep 17 00:00:00 2001
-From: Craig Small <csmall@enc.com.au>
-Date: Sun, 7 Oct 2012 10:52:46 +1100
-Subject: [PATCH] pstree compiles with SE Linux
-
-Upstream-Status: Backport
-
-pstree failed to compile with SE Linux enabled because one of the
-scontext was missed and without it enabled the bug doesn't appear.
-
-pstree is now re-worked so scontext is defined as a dummy meaning
-most of the code except the reall SE Linux specific stuff is compilied
-meaning this sort of thing shouldn't happen too much again.
-
-Bug-Gentoo: https://bugs.gentoo.org/show_bug.cgi?id=437332
-Bug-Sourceforge: https://sourceforge.net/p/psmisc/bugs/54/
----
- src/pstree.c |   69 +++++-----------------------------------------------------
- 1 file changed, 6 insertions(+), 63 deletions(-)
-
-diff --git a/src/pstree.c b/src/pstree.c
-index db57244..b9a01cf 100644
---- a/src/pstree.c
-+++ b/src/pstree.c
-@@ -47,6 +47,8 @@
- 
- #ifdef WITH_SELINUX
- #include <selinux/selinux.h>
-+#else
-+typedef void* security_context_t; /* DUMMY to remove most ifdefs */
- #endif                                /*WITH_SELINUX */
- 
- extern const char *__progname;
-@@ -81,9 +83,7 @@ typedef struct _proc {
-     pid_t pid;
-     pid_t pgid;
-     uid_t uid;
--#ifdef WITH_SELINUX
-     security_context_t scontext;
--#endif                                /*WITH_SELINUX */
-     char flags;
-     struct _child *children;
-     struct _proc *parent;
-@@ -131,16 +131,14 @@ static int *more = NULL;
- 
- static int print_args = 0, compact = 1, user_change = 0, pids = 0, pgids = 0,
-     show_parents = 0, by_pid = 0, trunc = 1, wait_end = 0;
--#ifdef WITH_SELINUX
- static int show_scontext = 0;
--#endif                                /*WITH_SELINUX */
- static int output_width = 132;
- static int cur_x = 1;
- static char last_char = 0;
- static int dumped = 0;                /* used by dump_by_user */
- static int charlen = 0;                /* length of character */
- 
--static void fix_orphans(void);
-+static void fix_orphans(security_context_t scontext);
- /*
-  * Allocates additional buffer space for width and more as needed.
-  * The first call will allocate the first buffer.
-@@ -229,15 +227,12 @@ static int out_int(int x)
-     return digits;
- }
- 
--#ifdef WITH_SELINUX
- static void out_scontext(security_context_t scontext)
- {
-     out_string("`");
-     out_string(scontext);
-     out_string("'");
- }
--#endif                                /*WITH_SELINUX */
--
- 
- static void out_newline(void)
- {
-@@ -259,12 +254,8 @@ static PROC *find_proc(pid_t pid)
- 	return NULL;
- }
- 
--#ifdef WITH_SELINUX
- static PROC *new_proc(const char *comm, pid_t pid, uid_t uid,
-                       security_context_t scontext)
--#else                                /*WITH_SELINUX */
--static PROC *new_proc(const char *comm, pid_t pid, uid_t uid)
--#endif                                /*WITH_SELINUX */
- {
-     PROC *new;
- 
-@@ -279,9 +270,7 @@ static PROC *new_proc(const char *comm, pid_t pid, uid_t uid)
-     new->flags = 0;
-     new->argc = 0;
-     new->argv = NULL;
--#ifdef WITH_SELINUX
-     new->scontext = scontext;
--#endif                                /*WITH_SELINUX */
-     new->children = NULL;
-     new->parent = NULL;
-     new->next = list;
-@@ -364,24 +353,14 @@ rename_proc(PROC *this, const char *comm, uid_t uid)
- 		}
- 	}
- }
--#ifdef WITH_SELINUX
- static void
- add_proc(const char *comm, pid_t pid, pid_t ppid, pid_t pgid, uid_t uid,
-          const char *args, int size, char isthread, security_context_t scontext)
--#else                                /*WITH_SELINUX */
--static void
--add_proc(const char *comm, pid_t pid, pid_t ppid, pid_t pgid, uid_t uid,
--         const char *args, int size, char isthread)
--#endif                                /*WITH_SELINUX */
- {
-     PROC *this, *parent;
- 
-     if (!(this = find_proc(pid)))
--#ifdef WITH_SELINUX
-         this = new_proc(comm, pid, uid, scontext);
--#else                                /*WITH_SELINUX */
--        this = new_proc(comm, pid, uid);
--#endif                                /*WITH_SELINUX */
-     else {
- 	    rename_proc(this, comm, uid);
-     }
-@@ -393,11 +372,7 @@ add_proc(const char *comm, pid_t pid, pid_t ppid, pid_t pgid, uid_t uid,
-     if (isthread)
-       this->flags |= PFLAG_THREAD;
-     if (!(parent = find_proc(ppid))) {
--#ifdef WITH_SELINUX
-         parent = new_proc("?", ppid, 0, scontext);
--#else                                /*WITH_SELINUX */
--        parent = new_proc("?", ppid, 0);
--#endif
-     }
-     if (pid != 0) {
-       add_child(parent, this);
-@@ -494,12 +469,10 @@ dump_tree(PROC * current, int level, int rep, int leaf, int last,
-         else
-             (void) out_int(current->uid);
-     }
--#ifdef WITH_SELINUX
-     if (show_scontext) {
-         out_char(info++ ? ',' : '(');
-         out_scontext(current->scontext);
-     }
--#endif                                /*WITH_SELINUX */
-     if ((swapped && print_args && current->argc < 0) || (!swapped && info))
-         out_char(')');
-     if ((current->flags & PFLAG_HILIGHT) && (tmp = tgetstr("me", NULL)))
-@@ -520,11 +493,7 @@ dump_tree(PROC * current, int level, int rep, int leaf, int last,
-             }
-         }
-     }
--#ifdef WITH_SELINUX
-     if (show_scontext || print_args || !current->children)
--#else                                /*WITH_SELINUX */
--    if (print_args || !current->children)
--#endif                                /*WITH_SELINUX */
-     {
-         while (closing--)
-             out_char(']');
-@@ -533,11 +502,7 @@ dump_tree(PROC * current, int level, int rep, int leaf, int last,
-     ensure_buffer_capacity(level);
-     more[level] = !last;
- 
--#ifdef WITH_SELINUX
-     if (show_scontext || print_args)
--#else                                /*WITH_SELINUX */
--    if (print_args)
--#endif                                /*WITH_SELINUX */
-     {
-         width[level] = swapped + (comm_len > 1 ? 0 : -1);
-         count=0;
-@@ -653,8 +618,8 @@ static void read_proc(void)
-   pid_t pid, ppid, pgid;
-   int fd, size;
-   int empty;
--#ifdef WITH_SELINUX
-   security_context_t scontext = NULL;
-+#ifdef WITH_SELINUX
-   int selinux_enabled = is_selinux_enabled() > 0;
- #endif                /*WITH_SELINUX */
- 
-@@ -726,21 +691,12 @@ static void read_proc(void)
-                 while ((dt = readdir(taskdir)) != NULL) {
-                   if ((thread = atoi(dt->d_name)) != 0) {
-                     if (thread != pid) {
--#ifdef WITH_SELINUX
-                       if (print_args)
-                         add_proc(threadname, thread, pid, pgid, st.st_uid, 
-                             threadname, strlen (threadname) + 1, 1,scontext);
-                       else
-                         add_proc(threadname, thread, pid, pgid, st.st_uid, 
-                             NULL, 0, 1, scontext);
--#else                /*WITH_SELINUX */
--                      if (print_args)
--                        add_proc(threadname, thread, pid, pgid, st.st_uid,
--                            threadname, strlen (threadname) + 1, 1);
--                      else
--                        add_proc(threadname, thread, pid, pgid, st.st_uid,
--                            NULL, 0, 1);
--#endif                /*WITH_SELINUX */
-                       }
-                     }
-                   }
-@@ -749,11 +705,7 @@ static void read_proc(void)
-                 }
-               free(taskpath);
-               if (!print_args)
--#ifdef WITH_SELINUX
-                 add_proc(comm, pid, ppid, pgid, st.st_uid, NULL, 0, 0, scontext);
--#else                /*WITH_SELINUX */
--                add_proc(comm, pid, ppid, pgid, st.st_uid, NULL, 0, 0);
--#endif                /*WITH_SELINUX */
-               else {
-                 sprintf(path, "%s/%d/cmdline", PROC_BASE, pid);
-                 if ((fd = open(path, O_RDONLY)) < 0) {
-@@ -770,13 +722,8 @@ static void read_proc(void)
-                   size--;
-                 if (size)
-                   buffer[size++] = 0;
--#ifdef WITH_SELINUX
-                 add_proc(comm, pid, ppid, pgid, st.st_uid,
-                      buffer, size, 0, scontext);
--#else                /*WITH_SELINUX */
--                add_proc(comm, pid, ppid, pgid, st.st_uid,
--                     buffer, size, 0);
--#endif                /*WITH_SELINUX */
-               }
-             }
-           }
-@@ -787,7 +734,7 @@ static void read_proc(void)
-     }
-   }
-   (void) closedir(dir);
--  fix_orphans();
-+  fix_orphans(scontext);
-   if (print_args)
-     free(buffer);
-   if (empty) {
-@@ -796,7 +743,7 @@ static void read_proc(void)
-   }
- }
- 
--static void fix_orphans(void)
-+static void fix_orphans(security_context_t scontext)
- {
-   /* When using kernel 3.3 with hidepid feature enabled on /proc
-    * then we need fake root pid and gather all the orphan processes
-@@ -807,11 +754,7 @@ static void fix_orphans(void)
-   PROC *root, *walk;
- 
-   if (!(root = find_proc(ROOT_PID))) {
--#ifdef WITH_SELINUX
-     root = new_proc("?", ROOT_PID, 0, scontext);
--#else                                /*WITH_SELINUX */
--    root = new_proc("?", ROOT_PID, 0);
--#endif
-   }
-   for (walk = list; walk; walk = walk->next) {
- 	if (walk->pid == 1 || walk->pid == 0)
--- 
-1.7.9.5
-
diff --git a/recipes-extended/psmisc/psmisc_22.20.bbappend b/recipes-extended/psmisc/psmisc_22.20.bbappend
deleted file mode 100644
index d25468e..0000000
--- a/recipes-extended/psmisc/psmisc_22.20.bbappend
+++ /dev/null
@@ -1,7 +0,0 @@
-PR .= ".2"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI += "file://pstree-compiles-with-SE-Linux.patch"
-
-inherit enable-selinux
diff --git a/recipes-extended/psmisc/psmisc_22.21.bbappend b/recipes-extended/psmisc/psmisc_22.21.bbappend
new file mode 100644
index 0000000..e1e7cd1
--- /dev/null
+++ b/recipes-extended/psmisc/psmisc_22.21.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+inherit enable-selinux
-- 
1.9.1


