Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1941E00905; Sun, 29 Jan 2017 09:12:40 -0800 (PST)
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
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0D7AE00724
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 09:12:37 -0800 (PST)
Received: by mail-pf0-f193.google.com with SMTP id 19so21753408pfo.3
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 09:12:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=lCdVkgTNL8qHN20YUYknkY5Pi1NsQ8yaidHfWsEDwRE=;
	b=VbXS7Iz/S6ou0BsZWRv6fg6XQoCnC3+/SPK5wQs9A3Fj9jagAnpQBrqcz7bdHI9PM/
	bmIET4x2q7ons9S4WdeM3zwO/3Rc2y4PaBm+VjRQtyEZD3ZSNBjY8krZo5fOCID0LPFU
	yw/YajQmtlOnj/91oCNfEu+r9X2u5PdudzRuSL19dcEUE9mJtjh8rtDk5vaKE6jx0c2d
	TpoZLD+NNcnEcizJWI6FBHrhv85Lw0ieqzf4YzS/5vMrtE7atxQ5R4xjgnsZywoUzckE
	u+lKTLtVMquqRFkMe1o3YlwanPlPILRpLXvUxK+Kjuf6Z1YbMdlN272zL8xxmHXm7tDR
	ex6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=lCdVkgTNL8qHN20YUYknkY5Pi1NsQ8yaidHfWsEDwRE=;
	b=VV4uSvzyeacDXI0ktKzKsNcL53tORP4XVZoxsXHHppLw0qc4LcCpX8J+Gs/wnnRbAD
	9uYl7ybfJ+wRiBJXdcSwEWWhaduKvV84ZLOWZV0Cab4hwXF5Xl4M1GJ4SILC6SWqA74B
	DA4lqB5DRs9vzBOPvwBH99EG1eygfk8DqFfLnZGEc6cZXgMRfS5gltW5KeMxiQFbRkj2
	p+xjjGMp7PV75tBvOXwHq7EgVhT+UK5PRn3I0i41XyPLlUsil1rMtpOVkKGUjTFoXqqx
	qt3IQ2MyEK/oknFTy3vAPt3o9Qtz8LovG472P6NlUGBumjY/6dcb1WfBv80IHHo4mED+
	YVqQ==
X-Gm-Message-State: AIkVDXJvfZVo6XU2HP3EHQXMvT6V1KlnBVMzXfj/ayfAHqM8M8ArpClqYCafb2CIIa30nw==
X-Received: by 10.84.253.23 with SMTP id z23mr26554573pll.0.1485709957249;
	Sun, 29 Jan 2017 09:12:37 -0800 (PST)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:d8f8:ce4a:79c4:7a9d])
	by smtp.gmail.com with ESMTPSA id
	g70sm25877403pfb.50.2017.01.29.09.12.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 29 Jan 2017 09:12:36 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster@mvista.com
Date: Sun, 29 Jan 2017 09:12:29 -0800
Message-Id: <1485709952-13916-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1485709952-13916-1-git-send-email-akuster808@gmail.com>
References: <1485709952-13916-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/6] tpm-tools: update to 1.3.9
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
X-List-Received-Date: Sun, 29 Jan 2017 17:12:40 -0000

remove incorperated patches.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm-tools-extendpcr.patch                      |  0
 .../03-fix-bool-error-parseStringWithValues.patch  | 30 ----------------------
 .../gcc6_missleading_indent_fix.patch              | 24 -----------------
 .../{tpm-tools_1.3.8.bb => tpm-tools_git.bb}       | 27 ++++++++++++-------
 4 files changed, 18 insertions(+), 63 deletions(-)
 rename recipes-tpm/tpm-tools/{tpm-tools-1.3.8 => files}/tpm-tools-extendpcr.patch (100%)
 delete mode 100644 recipes-tpm/tpm-tools/tpm-tools-1.3.8/03-fix-bool-error-parseStringWithValues.patch
 delete mode 100644 recipes-tpm/tpm-tools/tpm-tools-1.3.8/gcc6_missleading_indent_fix.patch
 rename recipes-tpm/tpm-tools/{tpm-tools_1.3.8.bb => tpm-tools_git.bb} (62%)

diff --git a/recipes-tpm/tpm-tools/tpm-tools-1.3.8/tpm-tools-extendpcr.patch b/recipes-tpm/tpm-tools/files/tpm-tools-extendpcr.patch
similarity index 100%
rename from recipes-tpm/tpm-tools/tpm-tools-1.3.8/tpm-tools-extendpcr.patch
rename to recipes-tpm/tpm-tools/files/tpm-tools-extendpcr.patch
diff --git a/recipes-tpm/tpm-tools/tpm-tools-1.3.8/03-fix-bool-error-parseStringWithValues.patch b/recipes-tpm/tpm-tools/tpm-tools-1.3.8/03-fix-bool-error-parseStringWithValues.patch
deleted file mode 100644
index 9497e89..0000000
--- a/recipes-tpm/tpm-tools/tpm-tools-1.3.8/03-fix-bool-error-parseStringWithValues.patch
+++ /dev/null
@@ -1,30 +0,0 @@
-Title: Fix boolean comparison error (and FTBFS with gcc-5)
-Date: 2015-06-28
-Author: Pierre Chifflier <pollux@debian.org>
-Bug-Debian: http://bugs.debian.org/778147
-Index: tpm-tools/src/tpm_mgmt/tpm_nvcommon.c
-===================================================================
---- tpm-tools.orig/src/tpm_mgmt/tpm_nvcommon.c
-+++ tpm-tools/src/tpm_mgmt/tpm_nvcommon.c
-@@ -140,8 +140,8 @@ int parseStringWithValues(const char *aA
- 						 aArg);
- 					return -1;
- 				}
--				if (!aArg[offset+numbytes] == '|' &&
--				    !aArg[offset+numbytes] == 0) {
-+				if (!(aArg[offset+numbytes] == '|' ||
-+				      aArg[offset+numbytes] == 0)) {
- 					logError(_("Illegal character following "
-                                                    "hexadecimal number in %s\n"),
- 						 aArg + offset);
-@@ -164,8 +164,8 @@ int parseStringWithValues(const char *aA
- 				return -1;
- 			}
- 
--			if (!aArg[offset+numbytes] == '|' &&
--			    !aArg[offset+numbytes] == 0) {
-+			if (!(aArg[offset+numbytes] == '|' ||
-+			      aArg[offset+numbytes] == 0)) {
- 				logError(_("Illegal character following decimal "
- 				           "number in %s\n"),
- 					 aArg + offset);
diff --git a/recipes-tpm/tpm-tools/tpm-tools-1.3.8/gcc6_missleading_indent_fix.patch b/recipes-tpm/tpm-tools/tpm-tools-1.3.8/gcc6_missleading_indent_fix.patch
deleted file mode 100644
index aec5e7a..0000000
--- a/recipes-tpm/tpm-tools/tpm-tools-1.3.8/gcc6_missleading_indent_fix.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-Index: tpm-tools-1.3.8/src/tpm_mgmt/tpm_present.c
-===================================================================
---- tpm-tools-1.3.8.orig/src/tpm_mgmt/tpm_present.c
-+++ tpm-tools-1.3.8/src/tpm_mgmt/tpm_present.c
-@@ -349,13 +349,13 @@ int main(int argc, char **argv)
- 		}
- 	} while (flags[++i].name);
- 
--      out_success:
-+out_success:
- 	logSuccess(argv[0]);
- 	iRc = 0;
--      out_close:
-+out_close:
- 	contextClose(hContext);
--      out:
--    if (szTpmPasswd && !isWellKnown)
--	shredPasswd( szTpmPasswd );
--	return iRc;
-+out:
-+	if (szTpmPasswd && !isWellKnown)
-+		shredPasswd( szTpmPasswd );
-+return iRc;
- }
diff --git a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb b/recipes-tpm/tpm-tools/tpm-tools_git.bb
similarity index 62%
rename from recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
rename to recipes-tpm/tpm-tools/tpm-tools_git.bb
index 790894a..83f1091 100644
--- a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
+++ b/recipes-tpm/tpm-tools/tpm-tools_git.bb
@@ -8,19 +8,28 @@ DESCRIPTION = " \
 SECTION = "tpm"
 LICENSE = "CPL-1.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=059e8cd6165cb4c31e351f2b69388fd9"
+
 DEPENDS = "libtspi openssl"
 DEPENDS_class-native = "trousers-native"
 
-SRC_URI += " \
-    http://downloads.sourceforge.net/project/trousers/${BPN}/${PV}/${BP}.tar.gz \
-    file://tpm-tools-extendpcr.patch \
-    file://03-fix-bool-error-parseStringWithValues.patch \
-    file://gcc6_missleading_indent_fix.patch \
-"
+SRCREV = "80954ab83be8d091c6e3112514945556aaa09d39"
+SRC_URI = " \
+	git://git.code.sf.net/p/trousers/tpm-tools \
+	file://tpm-tools-extendpcr.patch \
+	"
+
+PV = "1.3.9+git${SRCPV}"
+
+inherit autotools-brokensep gettext
 
-SRC_URI[md5sum] = "85a978c4e03fefd4b73cbeadde7c4d0b"
-SRC_URI[sha256sum] = "66eb4ff095542403db6b4bd4b574e8a5c08084fe4e9e5aa9a829ee84e20bea83"
+S = "${WORKDIR}/git"
 
-inherit autotools gettext
+do_configure_prepend () {
+	mkdir -p po
+	mkdir -p m4
+	cp -R po_/* po/
+	touch po/Makefile.in.in
+	touch m4/Makefile.am
+}
 
 BBCLASSEXTEND = "native"
-- 
2.7.4


