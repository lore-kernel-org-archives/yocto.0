Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D637EE008EA; Thu, 27 Nov 2014 10:48:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7E45E006EF
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 10:48:49 -0800 (PST)
Received: by mail-ie0-f182.google.com with SMTP id x19so5016893ier.13
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 10:48:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:subject:date:message-id;
	bh=B1yOHWn3Y/Xz8slcg/GGBXnaV2uTe6QJOzkxjeifbjM=;
	b=YuHJ0dxOH8qZ0ZyeOyX6zX8IIvyematnwqN2VvwuXwBJfh9xyFS2N42R4ntCsWO6jd
	UB0/WMhJivQsZxLf3O84760AZ8/7gCMp4u4blMs7BGhpschA3sxcoDL6yFERLEwISeS9
	xPWGtdXgr6lKaXDLztqjuppOhd7b+dWWE5zH5fedST8o0acEqCDuoINQszCIPhOJfT0B
	uwWYdBijrXK8KrIL7rMEEXnL9mmGbRMXxv7L4qO9rjzjw/rFHIb4iKOgXv0Usuv51M6X
	m63CTQuM6+7s0HaqyIXgGr4EFky6TgkpXvyZBuir891nYDkpH7EAA9aIWHH/IDSEZLAy
	Mbug==
X-Gm-Message-State: ALoCoQlxHhvkMLStLTCVTnBOLLbHyGtailVhfKS2+n9r5e9Vzk/Pt/1/lIkxaYzvhJPEmJT0lKLx
X-Received: by 10.107.10.93 with SMTP id u90mr36262490ioi.13.1417114129225;
	Thu, 27 Nov 2014 10:48:49 -0800 (PST)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250])
	by mx.google.com with ESMTPSA id c17sm3889652ioc.9.2014.11.27.10.48.48
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 27 Nov 2014 10:48:48 -0800 (PST)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Thu, 27 Nov 2014 13:49:10 -0500
Message-Id: <1417114150-12085-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] libcap-ng: port CVE-2014-3215 patch
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
X-List-Received-Date: Thu, 27 Nov 2014 18:48:56 -0000

Importing the patch from meta-selinux, which itself was a backport from
the upstream source tree.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---

I mentioned a while back that I had at least one patch in meta-selinux that may
apply to meta-security as well.  I don't know if you guys are interested in this
or not since the primary tool to demonstrate the exploit is seunshare, but it is
a problem in libcap-ng itself and it is exploitable outside of the selinux
framework.

-J.

 .../libcap-ng/libcap-ng/CVE-2014-3215.patch        | 91 ++++++++++++++++++++++
 recipes-security/libcap-ng/libcap-ng_0.7.3.bb      |  4 +-
 2 files changed, 94 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch

diff --git a/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch b/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch
new file mode 100644
index 0000000..e9164d4
--- /dev/null
+++ b/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch
@@ -0,0 +1,91 @@
+libcap-ng: local privilege escalation due to capng_lock
+
+Following the discussion here:
+
+   http://openwall.com/lists/oss-security/2014/04/29/7
+
+This is known to impact SELinux tools, however the issue could be exploited by
+any application using the relevant functions in libcap-ng provided it is suid
+root.
+
+Upstream-Status: Backport
+
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+
+diff --git a/docs/capng_lock.3 b/docs/capng_lock.3
+index 7683119..a070c1e 100644
+--- a/docs/capng_lock.3
++++ b/docs/capng_lock.3
+@@ -8,12 +8,13 @@ int capng_lock(void);
+ 
+ .SH "DESCRIPTION"
+ 
+-capng_lock will take steps to prevent children of the current process to regain full privileges if the uid is 0. This should be called while possessing the CAP_SETPCAP capability in the kernel. This function will do the following if permitted by the kernel: Set the NOROOT option on for PR_SET_SECUREBITS, set the NOROOT_LOCKED option to on for PR_SET_SECUREBITS, set the PR_NO_SETUID_FIXUP option on for PR_SET_SECUREBITS, and set the PR_NO_SETUID_FIXUP_LOCKED option on for PR_SET_SECUREBITS.
++capng_lock will take steps to prevent children of the current process from gaining privileges by executing setuid programs.  This should be called while possessing the CAP_SETPCAP capability in the kernel.
+ 
++This function will do the following if permitted by the kernel:  If the kernel supports PR_SET_NO_NEW_PRIVS, it will use it.  Otherwise it will set the NOROOT option on for PR_SET_SECUREBITS, set the NOROOT_LOCKED option to on for PR_SET_SECUREBITS, set the PR_NO_SETUID_FIXUP option on for PR_SET_SECUREBITS, and set the PR_NO_SETUID_FIXUP_LOCKED option on for PR_SET_SECUREBITS.  If both fail, it will return an error.
+ 
+ .SH "RETURN VALUE"
+ 
+-This returns 0 on success and a negative number on failure. -1 means a failure setting any of the PR_SET_SECUREBITS options.
++This returns 0 on success and a negative number on failure. -1 means a failure to use PR_SET_NO_NEW_PRIVS and a failure setting any of the PR_SET_SECUREBITS options.
+ 
+ .SH "SEE ALSO"
+ 
+diff --git a/src/cap-ng.c b/src/cap-ng.c
+index bd105ba..422f2bc 100644
+--- a/src/cap-ng.c
++++ b/src/cap-ng.c
+@@ -45,6 +45,7 @@
+  * 2.6.24 kernel	XATTR_NAME_CAPS
+  * 2.6.25 kernel	PR_CAPBSET_DROP, CAPABILITY_VERSION_2
+  * 2.6.26 kernel	PR_SET_SECUREBITS, SECURE_*_LOCKED, VERSION_3
++ * 3.5    kernel	PR_SET_NO_NEW_PRIVS
+  */
+ 
+ /* External syscall prototypes */
+@@ -122,6 +123,14 @@ extern int capget(cap_user_header_t header, const cap_user_data_t data);
+ #define SECURE_NO_SETUID_FIXUP_LOCKED   3  /* make bit-2 immutable */
+ #endif
+ 
++/* prctl values that we use */
++#ifndef PR_SET_SECUREBITS
++#define PR_SET_SECUREBITS		28
++#endif
++#ifndef PR_SET_NO_NEW_PRIVS
++#define PR_SET_NO_NEW_PRIVS		38
++#endif
++
+ // States: new, allocated, initted, updated, applied
+ typedef enum { CAPNG_NEW, CAPNG_ERROR, CAPNG_ALLOCATED, CAPNG_INIT,
+ 	CAPNG_UPDATED, CAPNG_APPLIED } capng_states_t;
+@@ -663,15 +672,22 @@ int capng_change_id(int uid, int gid, capng_flags_t flag)
+ 
+ int capng_lock(void)
+ {
+-#ifdef PR_SET_SECUREBITS
+-	int rc = prctl(PR_SET_SECUREBITS,
+-			1 << SECURE_NOROOT |
+-			1 << SECURE_NOROOT_LOCKED |
+-			1 << SECURE_NO_SETUID_FIXUP |
+-			1 << SECURE_NO_SETUID_FIXUP_LOCKED, 0, 0, 0);
++	int rc;
++
++	// On Linux 3.5 and up, we can directly prevent ourselves and
++	// our descendents from gaining privileges.
++	if (prctl(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0) == 0)
++		return 0;
++
++	// This kernel is too old or otherwise doesn't support
++	// PR_SET_NO_NEW_PRIVS.  Fall back to using securebits.
++	rc = prctl(PR_SET_SECUREBITS,
++		   1 << SECURE_NOROOT |
++		   1 << SECURE_NOROOT_LOCKED |
++		   1 << SECURE_NO_SETUID_FIXUP |
++		   1 << SECURE_NO_SETUID_FIXUP_LOCKED, 0, 0, 0);
+ 	if (rc)
+ 		return -1;
+-#endif
+ 
+ 	return 0;
+ }
diff --git a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb b/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
index 3f225ba..1acf554 100644
--- a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
+++ b/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
@@ -8,7 +8,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 		    file://COPYING.LIB;md5=e3eda01d9815f8d24aae2dbd89b68b06"
 
 SRC_URI = "http://people.redhat.com/sgrubb/libcap-ng/libcap-ng-${PV}.tar.gz \
-	   file://python.patch"
+	   file://python.patch \
+	   file://CVE-2014-3215.patch \
+	   "
 
 inherit lib_package autotools pythonnative
 
-- 
1.9.1


