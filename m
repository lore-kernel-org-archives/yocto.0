Return-Path: <sds@tycho.nsa.gov>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 098C2E00C92; Mon,  7 Mar 2016 12:54:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [63.239.67.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from emvm-gh1-uea09.nsa.gov (emvm-gh1-uea09.nsa.gov [63.239.67.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6DDAE00B70
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 12:54:15 -0800 (PST)
X-TM-IMSS-Message-ID: <5220e4a300020aad@nsa.gov>
Received: from tarius.tycho.ncsc.mil ([144.51.242.1]) by nsa.gov
	([10.208.42.194]) with ESMTP (TREND IMSS SMTP Service 7.1) id
	5220e4a300020aad ; Mon, 7 Mar 2016 15:57:15 -0500
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
	by tarius.tycho.ncsc.mil (8.14.4/8.14.4) with ESMTP id
	u27KrMGQ003618; Mon, 7 Mar 2016 15:54:03 -0500
From: Stephen Smalley <sds@tycho.nsa.gov>
To: flihp@twobit.us
Date: Mon,  7 Mar 2016 15:52:52 -0500
Message-Id: <1457383972-6283-13-git-send-email-sds@tycho.nsa.gov>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
References: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
X-TM-AS-MML: disable
Cc: yocto@yoctoproject.org
Subject: [PATCH 13/13] libselinux: procattr fixes
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
X-List-Received-Date: Mon, 07 Mar 2016 20:54:27 -0000

selinux upstream commits c7cf5d8aa061b9616bf9d5e91139ce4fb40f532c
and f77021d720f12767576c25d751c75cacd7478614

Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
---
 ...bselinux-procattr-return-einval-for-0-pid.patch | 47 ++++++++++++++++++++++
 ...inux-procattr-return-error-on-invalid-pid.patch | 40 ++++++++++++++++++
 recipes-security/selinux/libselinux_2.5.bb         |  2 +
 3 files changed, 89 insertions(+)
 create mode 100644 recipes-security/selinux/libselinux/libselinux-procattr-return-einval-for-0-pid.patch
 create mode 100644 recipes-security/selinux/libselinux/libselinux-procattr-return-error-on-invalid-pid.patch

diff --git a/recipes-security/selinux/libselinux/libselinux-procattr-return-einval-for-0-pid.patch b/recipes-security/selinux/libselinux/libselinux-procattr-return-einval-for-0-pid.patch
new file mode 100644
index 0000000..cfac80e
--- /dev/null
+++ b/recipes-security/selinux/libselinux/libselinux-procattr-return-einval-for-0-pid.patch
@@ -0,0 +1,47 @@
+From c7cf5d8aa061b9616bf9d5e91139ce4fb40f532c Mon Sep 17 00:00:00 2001
+From: dcashman <dcashman@android.com>
+Date: Tue, 23 Feb 2016 12:24:00 -0800
+Subject: libselinux: procattr: return einval for <= 0 pid args.
+
+getpidcon documentation does not specify that a pid of 0 refers to the
+current process, and getcon exists specifically to provide this
+functionality, and getpidcon(getpid()) would provide it as well.
+Disallow pid values <= 0 that may lead to unintended behavior in
+userspace object managers.
+
+Signed-off-by: Daniel Cashman <dcashman@android.com>
+---
+ src/procattr.c | 14 ++++++++++++--
+ 1 file changed, 12 insertions(+), 2 deletions(-)
+
+diff --git a/src/procattr.c b/src/procattr.c
+index c20f003..eee4612 100644
+--- a/src/procattr.c
++++ b/src/procattr.c
+@@ -306,11 +306,21 @@ static int setprocattrcon(const char * context,
+ #define getpidattr_def(fn, attr) \
+ 	int get##fn##_raw(pid_t pid, char **c)	\
+ 	{ \
+-		return getprocattrcon_raw(c, pid, #attr); \
++		if (pid <= 0) { \
++			errno = EINVAL; \
++			return -1; \
++		} else { \
++			return getprocattrcon_raw(c, pid, #attr); \
++		} \
+ 	} \
+ 	int get##fn(pid_t pid, char **c)	\
+ 	{ \
+-		return getprocattrcon(c, pid, #attr); \
++		if (pid <= 0) { \
++			errno = EINVAL; \
++			return -1; \
++		} else { \
++			return getprocattrcon(c, pid, #attr); \
++		} \
+ 	}
+ 
+ all_selfattr_def(con, current)
+-- 
+2.4.3
+
diff --git a/recipes-security/selinux/libselinux/libselinux-procattr-return-error-on-invalid-pid.patch b/recipes-security/selinux/libselinux/libselinux-procattr-return-error-on-invalid-pid.patch
new file mode 100644
index 0000000..0717d67
--- /dev/null
+++ b/recipes-security/selinux/libselinux/libselinux-procattr-return-error-on-invalid-pid.patch
@@ -0,0 +1,40 @@
+From f77021d720f12767576c25d751c75cacd7478614 Mon Sep 17 00:00:00 2001
+From: dcashman <dcashman@android.com>
+Date: Tue, 23 Feb 2016 12:23:59 -0800
+Subject: libselinux: procattr: return error on invalid pid_t
+ input.
+
+Signed-off-by: Daniel Cashman <dcashman@android.com>
+---
+ src/procattr.c | 7 +++++--
+ 1 file changed, 5 insertions(+), 2 deletions(-)
+
+diff --git a/src/procattr.c b/src/procattr.c
+index 527a0a5..c20f003 100644
+--- a/src/procattr.c
++++ b/src/procattr.c
+@@ -70,9 +70,9 @@ static int openattr(pid_t pid, const char *attr, int flags)
+ 	char *path;
+ 	pid_t tid;
+ 
+-	if (pid > 0)
++	if (pid > 0) {
+ 		rc = asprintf(&path, "/proc/%d/attr/%s", pid, attr);
+-	else {
++	} else if (pid == 0) {
+ 		rc = asprintf(&path, "/proc/thread-self/attr/%s", attr);
+ 		if (rc < 0)
+ 			return -1;
+@@ -82,6 +82,9 @@ static int openattr(pid_t pid, const char *attr, int flags)
+ 		free(path);
+ 		tid = gettid();
+ 		rc = asprintf(&path, "/proc/self/task/%d/attr/%s", tid, attr);
++	} else {
++		errno = EINVAL;
++		return -1;
+ 	}
+ 	if (rc < 0)
+ 		return -1;
+-- 
+2.4.3
+
diff --git a/recipes-security/selinux/libselinux_2.5.bb b/recipes-security/selinux/libselinux_2.5.bb
index 0e2d864..0284494 100644
--- a/recipes-security/selinux/libselinux_2.5.bb
+++ b/recipes-security/selinux/libselinux_2.5.bb
@@ -11,6 +11,8 @@ SRC_URI += "\
         file://libselinux-make-O_CLOEXEC-optional.patch \
         file://libselinux-make-SOCK_CLOEXEC-optional.patch \
         file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
+        file://libselinux-procattr-return-einval-for-0-pid.patch \
+        file://libselinux-procattr-return-error-on-invalid-pid.patch \
         file://libselinux-only-mount-proc-if-necessary.patch \
         file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
         "
-- 
2.4.3


