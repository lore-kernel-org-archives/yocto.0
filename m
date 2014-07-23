Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A4A8E0078F; Tue, 22 Jul 2014 23:56:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D02DE00576
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 23:56:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s6N6ucFA007936
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 23:56:40 -0700 (PDT)
Received: from pek-hostel-vm11.wrs.com (128.224.153.181) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Tue, 22 Jul 2014 23:56:38 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 23 Jul 2014 02:56:36 -0400
Message-ID: <1406098596-27254-1-git-send-email-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.0.0
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] libcap-ng: CVE-2014-3215
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
X-List-Received-Date: Wed, 23 Jul 2014 06:56:52 -0000
Content-Type: text/plain

From: Shan Hai <shan.hai@windriver.com>

seunshare in policycoreutils 2.2.5 is owned by root with 4755 permissions,
and executes programs in a way that changes the relationship between the
setuid system call and the getresuid saved set-user-ID value, which makes
it easier for local users to gain privileges by leveraging a program that
mistakenly expected that it could permanently drop privileges.

Pick a patch from below link to address the CVE-2014-3215.
https://bugzilla.redhat.com/attachment.cgi?id=829864

Signed-off-by: Shan Hai <shan.hai@windriver.com>
Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../libcap-ng/libcap-ng/CVE-2014-3215.patch        | 79 ++++++++++++++++++++++
 recipes-security/libcap-ng/libcap-ng_0.7.3.bb      |  4 +-
 2 files changed, 82 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch

diff --git a/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch b/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch
new file mode 100644
index 0000000..d7a868d
--- /dev/null
+++ b/recipes-security/libcap-ng/libcap-ng/CVE-2014-3215.patch
@@ -0,0 +1,79 @@
+Upstream-Status: Pending
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
index 3f225ba..e729518 100644
--- a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
+++ b/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
@@ -8,7 +8,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 		    file://COPYING.LIB;md5=e3eda01d9815f8d24aae2dbd89b68b06"
 
 SRC_URI = "http://people.redhat.com/sgrubb/libcap-ng/libcap-ng-${PV}.tar.gz \
-	   file://python.patch"
+           file://python.patch \
+           file://CVE-2014-3215.patch \
+          "
 
 inherit lib_package autotools pythonnative
 
-- 
2.0.0


