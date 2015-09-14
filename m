Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24C35E00C76; Mon, 14 Sep 2015 01:45:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E952BE00821
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2015 01:45:09 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t8E8j8Zw011855
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2015 01:45:08 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.235.1;
	Mon, 14 Sep 2015 01:45:08 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 14 Sep 2015 04:45:06 -0400
Message-ID: <1442220306-100666-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH v2][meta-selinux] audit/auvirt: get inline functions work with both gnu89 & gnu11
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
X-List-Received-Date: Mon, 14 Sep 2015 08:45:14 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

After gcc upgraded to gcc5, and if the codes are compiled without
optimization (-O0), and the below error will happen:

  auvirt.c:484: undefined reference to `copy_str'
  auvirt.c:667: undefined reference to `is_resource'
  collect2: error: ld returned 1 exit status

gcc5 defaults to -std=gnu11 instead of -std=gnu89, and it requires that
exactly one C source file has the callable copy of the inline function.
Consider the following program:

  inline int
  foo (void)
  {
    return 42;
  }

  int
  main (void)
  {
    return foo ();
  }

The program above will not link with the C99 inline semantics, because
no out-of-line function foo is generated. To fix this, either mark the
function foo as static, or add the following declaration:

  static inline int foo (void);

More information refer to: https://gcc.gnu.org/gcc-5/porting_to.html

Note: using "extern inline" will fail to build with gcc4.x, so replace
inline with "static inline".

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 ...et-inline-functions-work-with-gnu89-gnu11.patch | 71 ++++++++++++++++++++++
 recipes-security/audit/audit_2.4.3.bb              |  1 +
 2 files changed, 72 insertions(+)
 create mode 100644 recipes-security/audit/audit/audit-auvirt-get-inline-functions-work-with-gnu89-gnu11.patch

diff --git a/recipes-security/audit/audit/audit-auvirt-get-inline-functions-work-with-gnu89-gnu11.patch b/recipes-security/audit/audit/audit-auvirt-get-inline-functions-work-with-gnu89-gnu11.patch
new file mode 100644
index 0000000..dfda1a8
--- /dev/null
+++ b/recipes-security/audit/audit/audit-auvirt-get-inline-functions-work-with-gnu89-gnu11.patch
@@ -0,0 +1,71 @@
+From 15036dd4fa9eb209f5e148c6f7ee081f5ca78fa4 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Fri, 11 Sep 2015 03:37:13 -0400
+Subject: [PATCH] audit/auvirt: get inline functions work with both gnu89 & gnu11
+
+After gcc upgraded to gcc5, and if the codes are compiled without
+optimization (-O0), and the below error will happen:
+
+  auvirt.c:484: undefined reference to `copy_str'
+  auvirt.c:667: undefined reference to `is_resource'
+  collect2: error: ld returned 1 exit status
+
+gcc5 defaults to -std=gnu11 instead of -std=gnu89, and it requires that
+exactly one C source file has the callable copy of the inline function.
+Consider the following program:
+
+  inline int
+  foo (void)
+  {
+    return 42;
+  }
+
+  int
+  main (void)
+  {
+    return foo ();
+  }
+
+The program above will not link with the C99 inline semantics, because
+no out-of-line function foo is generated. To fix this, either mark the
+function foo as static, or add the following declaration:
+
+  static inline int foo (void);
+
+More information refer to: https://gcc.gnu.org/gcc-5/porting_to.html
+
+Note: using "extern inline" will fail to build with gcc4.x, so replace
+inline with "static inline".
+
+Upstream Status: pending
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ tools/auvirt/auvirt.c | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/tools/auvirt/auvirt.c b/tools/auvirt/auvirt.c
+index 655c454..b16d718 100644
+--- a/tools/auvirt/auvirt.c
++++ b/tools/auvirt/auvirt.c
+@@ -138,7 +138,7 @@ void event_free(struct event *event)
+ 	}
+ }
+ 
+-inline char *copy_str(const char *str)
++static inline char *copy_str(const char *str)
+ {
+ 	return (str) ? strdup(str) : NULL;
+ }
+@@ -650,7 +650,7 @@ int process_control_event(auparse_state_t *au)
+ 	return 0;
+ }
+ 
+-inline int is_resource(const char *res)
++static inline int is_resource(const char *res)
+ {
+ 	if (res == NULL ||
+ 	    res[0] == '\0' ||
+-- 
+1.9.1
+
diff --git a/recipes-security/audit/audit_2.4.3.bb b/recipes-security/audit/audit_2.4.3.bb
index 0fcf145..f0fa949 100644
--- a/recipes-security/audit/audit_2.4.3.bb
+++ b/recipes-security/audit/audit_2.4.3.bb
@@ -15,6 +15,7 @@ SRC_URI = "http://people.redhat.com/sgrubb/audit/audit-${PV}.tar.gz \
            file://auditd \
            file://auditd.service \
            file://audit-volatile.conf \
+           file://audit-auvirt-get-inline-functions-work-with-gnu89-gnu11.patch \
 "
 SRC_URI[md5sum] = "544d863af2016b76afd8d1691b251164"
 SRC_URI[sha256sum] = "9c914704fecc602e143e37152f3efbab2469692684c1a8cc1b801c1b49c7abc6"
-- 
1.9.1


