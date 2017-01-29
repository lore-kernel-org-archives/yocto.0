Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BB4FE0053B; Sun, 29 Jan 2017 09:12:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98EE3E0053B
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 09:12:39 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id 3so11746513pgj.1
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 09:12:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=bs9hSlYj4fD8yWzNuN8TF5ReT4ubUYE5KGycQbbvXz8=;
	b=ZcEWdThKP69MgVBcYJYHpdsaXrwYz/h9oO+h/UZAPosO9i2gxXh7tXOAoVzPxycxWv
	IEIgaJoOQa4eKN8+yG17PRSWcu5gzgRJDGRzHac1r3oYy3SQmCS2ocXZ8a8M3dQGrNvu
	7l1AbWO10TvKH3kkth3/CeV7H/i4w21GhODsK1yY2PxN/QnTzVbxqMf0YpympP+7KoQo
	+mi8JQtnLh2O/pK1+cEhBQ2bGOLlDK6m/42cokX2/rfWi+IY13jubR7HhUOsiXBEzODX
	2lxIYQftaXlQBG1l0q1Cc57pFqjOyW9NWVLVZnbDMPYsbaHACiToJ4Igji6scyg8DsMD
	Qk+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=bs9hSlYj4fD8yWzNuN8TF5ReT4ubUYE5KGycQbbvXz8=;
	b=kYJiH4bgLXt5WgCPGAQBX+gaUB6XlW0ZMCCoe1e1PXbzRrQrplvQfAjsZ5Z7/vUab1
	GisgQwZBuoQvBZLgSsIihrIaI7Yd6Szp0/X2GBjbS9E7Igr5zM0EqF7V+7XNQi5mUMG0
	L/QigCtN0iLmo/AVKc4pZue5RnTJA1I3IxuaExMsurh2fAXC9QtlmNHTVVzMfiHQyZ4T
	aCRuQ4HQW2GQjoGA9uttz1sRdGBusg3DLCW1GQIeURHNOhnaqtA9K/AHbC4NNtvfRMJn
	z1/fdG8tlupO6/ZxOTlNqH6fQRW2mxN+R91WuC44sJ+ALF2q91E4IyqqU/NJBTwGPuP8
	/pqQ==
X-Gm-Message-State: AIkVDXKis0jyWOdArnAkaFCYIihV2miGGrrDCBOuDNEw9hidLh50W5Qg9QDWwhaRLjbwfg==
X-Received: by 10.84.213.151 with SMTP id g23mr26133530pli.43.1485709958735;
	Sun, 29 Jan 2017 09:12:38 -0800 (PST)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:d8f8:ce4a:79c4:7a9d])
	by smtp.gmail.com with ESMTPSA id
	g70sm25877403pfb.50.2017.01.29.09.12.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 29 Jan 2017 09:12:38 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster@mvista.com
Date: Sun, 29 Jan 2017 09:12:31 -0800
Message-Id: <1485709952-13916-5-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1485709952-13916-1-git-send-email-akuster808@gmail.com>
References: <1485709952-13916-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 5/6] libtpm: update to tip.
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
X-List-Received-Date: Sun, 29 Jan 2017 17:12:41 -0000

fix several build issues

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-tpm/libtpm/files/fix_dprintf_issue.patch | 18 +++++++++
 recipes-tpm/libtpm/files/fix_signed_issue.patch  | 48 ++++++++++++++++++++++++
 recipes-tpm/libtpm/libtpm_1.0.bb                 |  8 +++-
 3 files changed, 72 insertions(+), 2 deletions(-)
 create mode 100644 recipes-tpm/libtpm/files/fix_dprintf_issue.patch
 create mode 100644 recipes-tpm/libtpm/files/fix_signed_issue.patch

diff --git a/recipes-tpm/libtpm/files/fix_dprintf_issue.patch b/recipes-tpm/libtpm/files/fix_dprintf_issue.patch
new file mode 100644
index 0000000..25760bb
--- /dev/null
+++ b/recipes-tpm/libtpm/files/fix_dprintf_issue.patch
@@ -0,0 +1,18 @@
+Upstream-Status: Pending
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: src/tpm_library.c
+===================================================================
+--- git.orig/src/tpm_library.c
++++ git/src/tpm_library.c
+@@ -405,8 +405,8 @@ int TPMLIB_LogPrintf(const char *format,
+     }
+ 
+     if (debug_prefix)
+-        dprintf(debug_fd, debug_prefix);
+-    dprintf(debug_fd, buffer);
++        dprintf(debug_fd, "%s" , debug_prefix);
++    dprintf(debug_fd, "%s" , buffer);
+ 
+     return i;
+ }
diff --git a/recipes-tpm/libtpm/files/fix_signed_issue.patch b/recipes-tpm/libtpm/files/fix_signed_issue.patch
new file mode 100644
index 0000000..fc13aa5
--- /dev/null
+++ b/recipes-tpm/libtpm/files/fix_signed_issue.patch
@@ -0,0 +1,48 @@
+Upstream-Status: Pending
+Signed-off-by: Armin kuster <akuster808@gmail.com>
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
diff --git a/recipes-tpm/libtpm/libtpm_1.0.bb b/recipes-tpm/libtpm/libtpm_1.0.bb
index 83b78a0..449e8c1 100644
--- a/recipes-tpm/libtpm/libtpm_1.0.bb
+++ b/recipes-tpm/libtpm/libtpm_1.0.bb
@@ -1,8 +1,12 @@
 SUMMARY = "LIBPM - Software TPM Library"
 LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=97e5eea8d700d76b3ddfd35c4c96485f"
-SRCREV = "e5dc628043e981c9f8d7711ddfe5812c8f4e38cc"
-SRC_URI = "git://github.com/stefanberger/libtpms.git"
+
+SRCREV = "ad44846dda5a96e269ad2f78a532e01e9a2f02a1"
+SRC_URI = " \
+	git://github.com/stefanberger/libtpms.git \
+	file://fix_dprintf_issue.patch \
+	"
 
 S = "${WORKDIR}/git"
 inherit autotools-brokensep pkgconfig
-- 
2.7.4


