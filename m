Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAEB0E0092C; Sun, 29 Jan 2017 09:12:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C76DE008F2
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 09:12:40 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 194so29507227pgd.0
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 09:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=enGoF+pnW+a57urbWZ1tJimToj7YCQZiWxc4E9XHcQM=;
	b=LGM18bvtVIEXAOUegofGLZQH2MA/+LaADTe0jzwck7ZsMPfgtRghhEXy5p6cA27P2/
	l73PSPWYnx17YxXiAZOfNopuJDc+LI4hh1lB3u1a97eYRdqDLW+9rGqohp9VZ9yQ/2d5
	/znH1nY9//tOKXh9WHcaSQU6jBWqwPyFKiwHDteYP86W6Ln4WYV6MSC9Olmkq9nv4Vsu
	HdZ2U5ALBw8S2UmMpIS9hXDPx8BChuP7GVUCCBZ/qqdmMfUWWr0+8R7ESzjFtO2N5k3e
	uWE5dk1dfOcn11P0tAgEJXSLL+KtrXzW56dNG3yBFUHEkEoXm1iIt7KHbwyyjWdwuHUQ
	jHGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=enGoF+pnW+a57urbWZ1tJimToj7YCQZiWxc4E9XHcQM=;
	b=c3+5oOh4jBF6RP61UNxU2J3ncLWFLFvV8LcGhdWogCmIFrz8gFwju9Qx5edFYjO7F9
	yjlQREVwaRhQBgjf/UKQajG/HnFc+XyJTJZgmQrlFQPlptdTwZnQNiAC1DYc9yRlbQEZ
	jGa9KlHpeAeGww0RQa+IlFZ1o5/Ho4Sb43BtiIgiPs3N0wk2hNmgSdnXclJpa1cvWCyp
	OHmWTfUYREvDu+cpR1v1nhjFiGzYE/VGihPHp1To5p3acdUgUfjGdn/0hwwLvIjOc0Se
	D7un5ssJjwTFRKbZHKJ0iVDbNImmlQK49CVGddhJO8ZQFKGQcRWBWzOcNEamQ0tK7Ewk
	yuiA==
X-Gm-Message-State: AIkVDXInne/uZ+WqVxuiTmVTsi7daapQoL73f4FY9x82jzLBgTWRO6dPnFUcKO8KwNN47A==
X-Received: by 10.84.133.1 with SMTP id 1mr26333434plf.151.1485709959542;
	Sun, 29 Jan 2017 09:12:39 -0800 (PST)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:d8f8:ce4a:79c4:7a9d])
	by smtp.gmail.com with ESMTPSA id
	g70sm25877403pfb.50.2017.01.29.09.12.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 29 Jan 2017 09:12:39 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster@mvista.com
Date: Sun, 29 Jan 2017 09:12:32 -0800
Message-Id: <1485709952-13916-6-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1485709952-13916-1-git-send-email-akuster808@gmail.com>
References: <1485709952-13916-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 6/6] swtpm: update to tip
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
X-List-Received-Date: Sun, 29 Jan 2017 17:12:43 -0000

fix signed build issues

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-tpm/swtpm/files/fix_lib_search_path.patch | 41 -------------------
 recipes-tpm/swtpm/files/fix_signed_issue.patch    | 48 +++++++++++++++++++++++
 recipes-tpm/swtpm/swtpm_1.0.bb                    | 18 +++++++--
 3 files changed, 63 insertions(+), 44 deletions(-)
 delete mode 100644 recipes-tpm/swtpm/files/fix_lib_search_path.patch
 create mode 100644 recipes-tpm/swtpm/files/fix_signed_issue.patch

diff --git a/recipes-tpm/swtpm/files/fix_lib_search_path.patch b/recipes-tpm/swtpm/files/fix_lib_search_path.patch
deleted file mode 100644
index 015f418..0000000
--- a/recipes-tpm/swtpm/files/fix_lib_search_path.patch
+++ /dev/null
@@ -1,41 +0,0 @@
-
-Upstream-Status: Inappropriate [OE config]
-
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: configure.ac
-===================================================================
---- a/configure.ac
-+++ b/configure.ac
-@@ -349,21 +349,17 @@ CFLAGS="$CFLAGS -Wformat -Wformat-securi
- dnl We have to make sure libtpms is using the same crypto library
- dnl to avoid problems
- AC_MSG_CHECKING([the crypto library libtpms is using])
--dirs=$($CC $CFLAGS -Xlinker --verbose 2>/dev/null | \
--       sed -n '/SEARCH_DIR/p' | \
--       sed 's/SEARCH_DIR("=\?\(@<:@^"@:>@\+\)"); */\1\n/g')
--for dir in $dirs; do
--  if test -r $dir/libtpms.so; then
--    if test -n "`ldd $dir/libtpms.so | grep libcrypto.so`"; then
--      libtpms_cryptolib="openssl"
--      break
--    fi
--    if test -n "`ldd $dir/libtpms.so | grep libnss3.so`"; then
--      libtpms_cryptolib="freebl"
--      break
--    fi
-+dir="$SEARCH_DIR"
-+if test -r $dir/libtpms.so; then
-+  if test -n "`ldd $dir/libtpms.so | grep libcrypto.so`"; then
-+    libtpms_cryptolib="openssl"
-+    break
-   fi
--done
-+  if test -n "`ldd $dir/libtpms.so | grep libnss3.so`"; then
-+    libtpms_cryptolib="freebl"
-+    break
-+  fi
-+fi
- 
- if test -z "$libtpms_cryptolib"; then
-   AC_MSG_ERROR([Could not determine libtpms crypto library.])
diff --git a/recipes-tpm/swtpm/files/fix_signed_issue.patch b/recipes-tpm/swtpm/files/fix_signed_issue.patch
new file mode 100644
index 0000000..427df62
--- /dev/null
+++ b/recipes-tpm/swtpm/files/fix_signed_issue.patch
@@ -0,0 +1,48 @@
+Upstream-Status: Pending
+Signed-off-by Armin Kuster <akuster808@gmail>
+
+Index: git/src/swtpm/ctrlchannel.c
+===================================================================
+--- git.orig/src/swtpm/ctrlchannel.c
++++ git/src/swtpm/ctrlchannel.c
+@@ -152,7 +152,8 @@ static int ctrlchannel_receive_state(ptm
+     uint32_t tpm_number = 0;
+     unsigned char *blob = NULL;
+     uint32_t blob_length = be32toh(pss->u.req.length);
+-    uint32_t remain = blob_length, offset = 0;
++    ssize_t remain = (ssize_t) blob_length;
++    uint32_t offset = 0;
+     TPM_RESULT res;
+     uint32_t flags = be32toh(pss->u.req.state_flags);
+     TPM_BOOL is_encrypted = (flags & PTM_STATE_FLAG_ENCRYPTED) != 0;
+Index: git/src/swtpm_ioctl/tpm_ioctl.c
+===================================================================
+--- git.orig/src/swtpm_ioctl/tpm_ioctl.c
++++ git/src/swtpm_ioctl/tpm_ioctl.c
+@@ -303,7 +303,7 @@ static int do_save_state_blob(int fd, bo
+         numbytes = write(file_fd, pgs.u.resp.data,
+                          devtoh32(is_chardev, pgs.u.resp.length));
+ 
+-        if (numbytes != devtoh32(is_chardev, pgs.u.resp.length)) {
++        if (numbytes != (ssize_t) devtoh32(is_chardev, pgs.u.resp.length)) {
+             fprintf(stderr,
+                     "Could not write to file '%s': %s\n",
+                     filename, strerror(errno));
+@@ -420,7 +420,7 @@ static int do_load_state_blob(int fd, bo
+                had_error = true;
+                break;
+             }
+-            pss.u.req.length = htodev32(is_chardev, numbytes);
++            pss.u.req.length = htodev32(is_chardev, (uint32_t) numbytes);
+ 
+             /* the returnsize is zero on all intermediate packets */
+             returnsize = ((size_t)numbytes < sizeof(pss.u.req.data))
+@@ -863,7 +863,7 @@ int main(int argc, char *argv[])
+             return EXIT_FAILURE;
+         }
+         /* no tpm_result here */
+-        printf("ptm capability is 0x%lx\n", (uint64_t)devtoh64(is_chardev, cap));
++        printf("ptm capability is 0x%llx\n", (uint64_t)devtoh64(is_chardev, cap));
+ 
+     } else if (!strcmp(command, "-i")) {
+         init.u.req.init_flags = htodev32(is_chardev, PTM_INIT_FLAG_DELETE_VOLATILE);
diff --git a/recipes-tpm/swtpm/swtpm_1.0.bb b/recipes-tpm/swtpm/swtpm_1.0.bb
index 04777e1..27b4b8c 100644
--- a/recipes-tpm/swtpm/swtpm_1.0.bb
+++ b/recipes-tpm/swtpm/swtpm_1.0.bb
@@ -5,9 +5,11 @@ SECTION = "apps"
 
 DEPENDS = "libtasn1 fuse expect socat glib-2.0 libtpm libtpm-native"
 
-SRCREV = "2cd10cee2f74c84bda22081514b6b2cb566fa42d"
-SRC_URI = "git://github.com/stefanberger/swtpm.git \
-	   file://fix_lib_search_path.patch"
+SRCREV = "ca906a02124d0ed8b6194e845d272d23ee394a34"
+SRC_URI = " \
+	git://github.com/stefanberger/swtpm.git \
+	file://fix_signed_issue.patch \
+	"
 
 S = "${WORKDIR}/git"
 
@@ -22,11 +24,21 @@ PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux',
 PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
 PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls"
 PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux"
+PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse, libselinux"
 
 EXTRA_OECONF += "--with-tss-user=${TSS_USER} --with-tss-group=${TSS_GROUP}"
 
 export SEARCH_DIR = "${STAGING_LIBDIR_NATIVE}"
 
+# dup bootstrap 
+do_configure_prepend () {
+	libtoolize --force --copy
+	autoheader
+	aclocal
+	automake --add-missing -c
+	autoconf
+}
+
 USERADD_PACKAGES = "${PN}"
 GROUPADD_PARAM_${PN} = "--system ${TSS_USER}"
 USERADD_PARAM_${PN} = "--system -g ${TSS_GROUP} --home-dir  \
-- 
2.7.4


