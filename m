Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A97EE00CF9; Thu, 27 Jul 2017 19:01:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48904E00CD0
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 19:01:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v6S21MaC004041
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 19:01:22 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Thu, 27 Jul 2017 19:01:21 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 28 Jul 2017 10:00:56 +0800
Message-ID: <f1301dbd6b32f2cf5b46cd0d4d52d0dc531c1e39.1501207115.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1501207115.git.jackie.huang@windriver.com>
References: <cover.1501207115.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-security][PATCH 1/2] libgssglue: add new recipe
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
X-List-Received-Date: Fri, 28 Jul 2017 02:01:24 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

libgssglue exports a gssapi interface which calls
other gssapi libraries.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../libgssglue/files/libgssglue-canon-name.patch   | 60 ++++++++++++++++++++++
 .../files/libgssglue-fix-CVE-2011-2709.patch       | 43 ++++++++++++++++
 .../libgssglue/files/libgssglue-g-initialize.patch | 21 ++++++++
 .../libgssglue/files/libgssglue-gss-inq-cred.patch | 27 ++++++++++
 .../libgssglue/files/libgssglue-mglueP.patch       | 21 ++++++++
 recipes-security/libgssglue/libgssglue_0.4.bb      | 51 ++++++++++++++++++
 6 files changed, 223 insertions(+)
 create mode 100644 recipes-security/libgssglue/files/libgssglue-canon-name.patch
 create mode 100644 recipes-security/libgssglue/files/libgssglue-fix-CVE-2011-2709.patch
 create mode 100644 recipes-security/libgssglue/files/libgssglue-g-initialize.patch
 create mode 100644 recipes-security/libgssglue/files/libgssglue-gss-inq-cred.patch
 create mode 100644 recipes-security/libgssglue/files/libgssglue-mglueP.patch
 create mode 100644 recipes-security/libgssglue/libgssglue_0.4.bb

diff --git a/recipes-security/libgssglue/files/libgssglue-canon-name.patch b/recipes-security/libgssglue/files/libgssglue-canon-name.patch
new file mode 100644
index 0000000..cb7c47b
--- /dev/null
+++ b/recipes-security/libgssglue/files/libgssglue-canon-name.patch
@@ -0,0 +1,60 @@
+fix the bug:
+g_canon_name.c:125:5: warning: passing argument 2 of '__gss_copy_namebuf' from incompatible pointer type [enabled by default]
+
+the 2nd argument of __gss_copy_namebuf should be address of *gss_buffer_t, \
+but a *gss_buffer_t is assigned.
+
+what __gss_copy_namebuf does is to alloc memory for a gss_buffer_desc and \
+copy from src and return its address.
+
+if following code failed, gss_release_name will free \
+union_canon_name->external_name.value if it is not NULL.
+
+OM_uint32 __gss_copy_namebuf(src, dest)
+    gss_buffer_t   src;
+    gss_buffer_t   *dest;
+
+typedef struct gss_union_name_t {
+	gss_mechanism		gss_mech;
+	gss_OID			name_type;
+	gss_buffer_desc		external_name;
+	/*
+	 * These last two fields are only filled in for mechanism
+	 * names.
+	 */
+	gss_OID			mech_type;
+	gss_name_t		mech_name;
+} gss_union_name_desc, *gss_union_name_t;
+
+typedef struct gss_buffer_desc_struct {
+      size_t length;
+      void FAR *value;
+} gss_buffer_desc, FAR *gss_buffer_t;
+
+Upstream-Status: Pending
+Signed-off-by: Yao Zhao <yao.zhao@windriver.com>
+
+--- a/src/g_canon_name.c
++++ b/src/g_canon_name.c
+@@ -121,11 +121,17 @@ gss_canonicalize_name (OM_uint32 *minor_
+ 
+     union_canon_name->mech_name = mech_name;
+ 
+-    status = __gss_copy_namebuf(&union_input_name->external_name,
+-				&union_canon_name->external_name);
+-    if (status != GSS_S_COMPLETE)
+-	goto failure;
++    union_canon_name->external_name.value = (void*) malloc(
++                      union_input_name->external_name.length + 1);
++    if (!union_canon_name->external_name.value)
++        goto failure;
+ 
++    memcpy(union_canon_name->external_name.value, 
++           union_input_name->external_name.value, 
++           union_input_name->external_name.length);
++    union_canon_name->external_name.length = 
++                      union_input_name->external_name.length; 
++   
+     if (union_input_name->name_type != GSS_C_NO_OID) {
+ 	status = generic_gss_copy_oid(minor_status,
+ 				      union_input_name->name_type,
diff --git a/recipes-security/libgssglue/files/libgssglue-fix-CVE-2011-2709.patch b/recipes-security/libgssglue/files/libgssglue-fix-CVE-2011-2709.patch
new file mode 100644
index 0000000..6aa1a65
--- /dev/null
+++ b/recipes-security/libgssglue/files/libgssglue-fix-CVE-2011-2709.patch
@@ -0,0 +1,43 @@
+Use secure_getenv instead of getenv for setuid programs
+
+(bnc#694598 CVE-2011-2709 bnc#831805)
+
+import from:
+https://build.opensuse.org/package/view_file/openSUSE:Factory/libgssglue/secure-getenv.patch
+
+Upstream-Status: Pending
+
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+
+diff --git a/src/g_initialize.c b/src/g_initialize.c
+index 200f173..935a9fa 100644
+--- a/src/g_initialize.c
++++ b/src/g_initialize.c
+@@ -26,6 +26,7 @@
+  * This function will initialize the gssapi mechglue library
+  */
+ 
++#define _GNU_SOURCE
+ #include "mglueP.h"
+ #include <stdlib.h>
+ 
+@@ -197,8 +198,7 @@ static void solaris_initialize ()
+     void *dl;
+     gss_mechanism (*sym)(void), mech;
+ 
+-    if ((getuid() != geteuid()) ||
+-        ((filename = getenv("GSSAPI_MECH_CONF")) == NULL))
++    if ((filename = secure_getenv("GSSAPI_MECH_CONF")) == NULL)
+ 	filename = MECH_CONF;
+ 
+     if ((conffile = fopen(filename, "r")) == NULL) {
+@@ -274,8 +274,7 @@ static void linux_initialize ()
+     void *dl;
+     gss_mechanism (*sym)(void), mech;
+ 
+-    if ((getuid() != geteuid()) ||
+-        ((filename = getenv("GSSAPI_MECH_CONF")) == NULL))
++    if ((filename = secure_getenv("GSSAPI_MECH_CONF")) == NULL)
+ 	filename = MECH_CONF;
+ 
+     if ((conffile = fopen(filename, "r")) == NULL) {
diff --git a/recipes-security/libgssglue/files/libgssglue-g-initialize.patch b/recipes-security/libgssglue/files/libgssglue-g-initialize.patch
new file mode 100644
index 0000000..4a9ba33
--- /dev/null
+++ b/recipes-security/libgssglue/files/libgssglue-g-initialize.patch
@@ -0,0 +1,21 @@
+Fix the warning for getuid, geteuid
+g_initialize.c: In function 'linux_initialize':
+g_initialize.c:275:5: warning: implicit declaration of function 'getuid' [-Wimplicit-function-declaration]
+g_initialize.c:275:5: warning: implicit declaration of function 'geteuid' [-Wimplicit-function-declaration]
+
+Upstream-Status: Pending
+Signed-off-by: Yao Zhao <yao.zhao@windriver.com>
+
+diff --git a/src/g_initialize.c b/src1/g_initialize.c
+index 82fcce1..200f173 100644
+--- a/src/g_initialize.c
++++ b/src/g_initialize.c
+@@ -29,6 +29,8 @@
+ #include "mglueP.h"
+ #include <stdlib.h>
+ 
++#include <unistd.h>   /*getuid, geteuid */
++#include <sys/types.h>
+ #include <stdio.h>
+ #include <string.h>
+ #include <ctype.h>
diff --git a/recipes-security/libgssglue/files/libgssglue-gss-inq-cred.patch b/recipes-security/libgssglue/files/libgssglue-gss-inq-cred.patch
new file mode 100644
index 0000000..6dce3e7
--- /dev/null
+++ b/recipes-security/libgssglue/files/libgssglue-gss-inq-cred.patch
@@ -0,0 +1,27 @@
+1) add free if malloc failed for (*mechanisms)->elements
+2) g_inq_cred.c: In function 'gss_inquire_cred':
+g_inq_cred.c:161:8: warning: passing argument 3 of 'generic_gss_copy_oid' from incompatible pointer type [enabled by default]
+
+Upstream-Status: Pending
+Signed-off-by: Yao Zhao <yao.zhao@windriver.com>
+
+--- a/src/g_inq_cred.c
++++ b/src/g_inq_cred.c
+@@ -152,13 +152,15 @@ gss_OID_set *		mechanisms;
+ 			     union_cred->count);
+ 	if ((*mechanisms)->elements == NULL) {
+ 	    *minor_status = ENOMEM;
++	    free(*mechanisms);
++	    *mechanisms = GSS_C_NO_OID_SET;
+ 	    return (GSS_S_FAILURE);
+ 	}
+ 
+ 	for (i=0; i < union_cred->count; i++) {
+-	    status = generic_gss_copy_oid(minor_status,
++	    status = generic_gss_add_oid_set_member(minor_status,
+ 	    				  &union_cred->mechs_array[i],
+-					  &((*mechanisms)->elements[i]));
++					  mechanisms);
+ 	    if (status != GSS_S_COMPLETE)
+ 	        break;
+ 	}
diff --git a/recipes-security/libgssglue/files/libgssglue-mglueP.patch b/recipes-security/libgssglue/files/libgssglue-mglueP.patch
new file mode 100644
index 0000000..6c9ebf0
--- /dev/null
+++ b/recipes-security/libgssglue/files/libgssglue-mglueP.patch
@@ -0,0 +1,21 @@
+fix the warning:
+warning: implicit declaration of function 'generic_gss_copy_oid_set' [-Wimplicit-function-declaration]
+
+Upstream-Status: Pending
+Signed-off-by: Yao Zhao <yao.zhao@windriver.com>
+
+--- a/src/mglueP.h
++++ b/src/mglueP.h
+@@ -447,6 +447,12 @@ OM_uint32 generic_gss_copy_oid
+ 	    gss_OID *		/* new_oid */
+ 	    );
+ 
++OM_uint32 generic_gss_copy_oid_set
++	   (OM_uint32 *minor_status,	/* minor_status */
++	    const gss_OID_set_desc * const oidset,	/* oid */
++	    gss_OID_set *new_oidset			/* new_oid */
++	   );
++
+ OM_uint32 generic_gss_create_empty_oid_set
+ 	   (OM_uint32 *,	/* minor_status */
+ 	    gss_OID_set *	/* oid_set */
diff --git a/recipes-security/libgssglue/libgssglue_0.4.bb b/recipes-security/libgssglue/libgssglue_0.4.bb
new file mode 100644
index 0000000..f7859a7
--- /dev/null
+++ b/recipes-security/libgssglue/libgssglue_0.4.bb
@@ -0,0 +1,51 @@
+SUMMARY = "Exports a gssapi interface which calls other gssapi libraries"
+DESCRIPTION = "\
+This library exports a gssapi interface, but does not implement any gssapi \
+mechanisms itself; instead it calls gssapi routines in other libraries, \
+depending on the mechanism. \
+"
+
+HOMEPAGE = "http://www.citi.umich.edu/projects/nfsv4/linux/"
+SECTION = "libs"
+
+LICENSE = "BSD-3-Clause | HPND"
+
+#Copyright (c) 1996, by Sun Microsystems, Inc.                   HPND
+#Copyright (c) 2007 The Regents of the University of Michigan. BSD-3-Clause
+#Copyright 1995 by the Massachusetts Institute of Technology.  HPND without Disclaimer
+#Copyright 1993 by OpenVision Technologies, Inc.               HPND
+LIC_FILES_CHKSUM = "file://COPYING;md5=56871e72a5c475289c0d5e4ba3f2ee3a \
+                    file://src/g_accept_sec_context.c;beginline=3;endline=23;md5=8a7f4017cb7f4be49f8981cb8c472690 \
+                    file://src/g_ccache_name.c;beginline=1;endline=32;md5=208d4de05d5c8273963a8332f084faa7 \
+                    file://src/oid_ops.c;beginline=1;endline=26;md5=1f194d148b396972da26759a8ec399f0 \
+                    file://src/oid_ops.c;beginline=378;endline=398;md5=e02c165cb8383e950214baca2fbd664b \
+"
+
+SRC_URI = "http://www.citi.umich.edu/projects/nfsv4/linux/${BPN}/${BP}.tar.gz \
+           file://libgssglue-canon-name.patch  \
+           file://libgssglue-gss-inq-cred.patch  \
+           file://libgssglue-mglueP.patch \
+           file://libgssglue-g-initialize.patch \
+           file://libgssglue-fix-CVE-2011-2709.patch \
+"
+
+SRC_URI[md5sum] = "088797f3180702fa54e786496b32e750"
+SRC_URI[sha256sum] = "3f791a75502ba723e5e85e41e5e0c711bb89e2716b7c0ec6e74bd1df6739043a"
+
+# gssglue can use krb5, spkm3... as gssapi library, configurable
+RRECOMMENDS_${PN} += "krb5"
+
+inherit autotools
+
+do_install_append() {
+    # install some docs
+    install -d -m 0755 ${D}${docdir}/${BPN}
+    install -m 0644 ${S}/AUTHORS ${S}/ChangeLog ${S}/NEWS ${S}/README ${D}${docdir}/${BPN}
+
+    # install the gssapi_mech.conf
+    install -d -m 0755 ${D}${sysconfdir}
+    install -m 0644 ${S}/doc/gssapi_mech.conf ${D}${sysconfdir}
+    
+    # change the libgssapi_krb5.so path and name(it is .so.2)
+    sed -i -e "s:/usr/lib/libgssapi_krb5.so:libgssapi_krb5.so.2:" ${D}${sysconfdir}/gssapi_mech.conf
+}
-- 
2.11.0


