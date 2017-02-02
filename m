Return-Path: <cardoe@cardoe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E4FAE009AA; Thu,  2 Feb 2017 07:47:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f196.google.com (mail-yb0-f196.google.com
	[209.85.213.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72ADAE00995
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 07:47:50 -0800 (PST)
Received: by mail-yb0-f196.google.com with SMTP id w194so804814ybe.1
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2017 07:47:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cardoe.com; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=oZrw6jE+cSWMJwyKKsV+VQfzHw+8MStnaLYk6UNXX/M=;
	b=DtPU9beTBuBS4OQ7fcGmoqwLZ0zLfkrCY+sDRu8zNrZccdL9a7bwuFquNL+IAQtzXm
	zyAU2kYCn8Y66f9UdPZF+wnA1u89mmtiqJkzkFi1O2g6OibTeWtxMRaiwrX3yMxBXXI6
	l4usfky5IucH9O4GO2r0cqlyvowYP1I0d3qto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=oZrw6jE+cSWMJwyKKsV+VQfzHw+8MStnaLYk6UNXX/M=;
	b=Sf5kpHr24R+mp2vFDwRGwKraQ3gluGq+0JQGbfWq3+ysPHmhejijoH3KIx2/nW47+K
	BdXewRNChDkofnj24b/j8VT3EcoH7id3NhAFjRR+GjruG2JJGpM7lNHTX8nE8AHidx9U
	66x98cA8LTOJ7OKxYhdxFYFk+W6RZE45Bv5N+2/B7hQWetotHxN31W/IasN10qVS1nNT
	h/PePbtZILEsuBsOinYjNVf34/Na2UlF/vWnVn51MNBETbgZElImwFb91Q+s/kERPZlY
	7PSCq09/545uYjIpIZmUn1eZRhe3Gx5wCHNLi9eueJUFk/NR3TEHiFq7wiakOW1ca8IF
	eiHg==
X-Gm-Message-State: AIkVDXLnsB77cqcqga4WYo6HzOHI9BXrGruHcuWlpLlTvuLL17n7ovmX0LlnsE8e317scw==
X-Received: by 10.37.170.19 with SMTP id s19mr3019234ybi.53.1486050469093;
	Thu, 02 Feb 2017 07:47:49 -0800 (PST)
Received: from swanson.attlocal.net
	(104-179-196-18.lightspeed.brhmal.sbcglobal.net. [104.179.196.18])
	by smtp.gmail.com with ESMTPSA id
	d5sm12995376ywe.48.2017.02.02.07.47.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 02 Feb 2017 07:47:48 -0800 (PST)
From: Doug Goldstein <cardoe@cardoe.com>
To: yocto@yoctoproject.org
Date: Thu,  2 Feb 2017 09:47:35 -0600
Message-Id: <20170202154737.4461-1-cardoe@cardoe.com>
X-Mailer: git-send-email 2.10.2
X-Mailman-Approved-At: Fri, 03 Feb 2017 06:58:08 -0800
Cc: Doug Goldstein <cardoe@cardoe.com>
Subject: [meta-selinux][PATCH 1/3] libsemanage: remove dependency on ustr
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
X-List-Received-Date: Thu, 02 Feb 2017 15:47:54 -0000

Use the upstream patches to remove the dependency on ustr which no
longer builds with new versions of GCC and the author is unresponsive
and the site hosting the code is down.

Signed-off-by: Doug Goldstein <cardoe@cardoe.com>
---
 recipes-security/selinux/libsemanage.inc           |   2 +-
 ...anage-simplify-string-utilities-functions.patch | 115 ++++++++
 ...-add-semanage_str_replace-utility-functio.patch | 164 +++++++++++
 ...manage-genhomedircon-drop-ustr-dependency.patch | 323 +++++++++++++++++++++
 ...-remove-ustr-library-from-Makefiles-READM.patch |  61 ++++
 recipes-security/selinux/libsemanage_2.6.bb        |   4 +
 6 files changed, 668 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/selinux/libsemanage/0001-libsemanage-simplify-string-utilities-functions.patch
 create mode 100644 recipes-security/selinux/libsemanage/0002-libsemanage-add-semanage_str_replace-utility-functio.patch
 create mode 100644 recipes-security/selinux/libsemanage/0003-libsemanage-genhomedircon-drop-ustr-dependency.patch
 create mode 100644 recipes-security/selinux/libsemanage/0004-libsemanage-remove-ustr-library-from-Makefiles-READM.patch

diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/selinux/libsemanage.inc
index 41fd3f5..fe5dad5 100644
--- a/recipes-security/selinux/libsemanage.inc
+++ b/recipes-security/selinux/libsemanage.inc
@@ -8,7 +8,7 @@ LICENSE = "LGPLv2.1+"
 
 inherit lib_package python-dir
 
-DEPENDS += "libsepol libselinux ustr bzip2 python bison-native flex-native"
+DEPENDS += "libsepol libselinux bzip2 python bison-native flex-native"
 DEPENDS_append_class-target += "audit"
 
 # For /usr/libexec/selinux/semanage_migrate_store
diff --git a/recipes-security/selinux/libsemanage/0001-libsemanage-simplify-string-utilities-functions.patch b/recipes-security/selinux/libsemanage/0001-libsemanage-simplify-string-utilities-functions.patch
new file mode 100644
index 0000000..fd478d0
--- /dev/null
+++ b/recipes-security/selinux/libsemanage/0001-libsemanage-simplify-string-utilities-functions.patch
@@ -0,0 +1,115 @@
+From 514a5df959ea0e13db4e87f73c2ac5edcceebd52 Mon Sep 17 00:00:00 2001
+From: Nicolas Iooss <nicolas.iooss@m4x.org>
+Date: Wed, 21 Dec 2016 19:21:01 +0100
+Subject: [PATCH 1/4] libsemanage: simplify string utilities functions
+
+Use string functions from C standard library instead of ustr. This makes
+the code simpler and make utilities.c no longer depend on ustr library.
+
+This changes how semanage_split() behaves when delim is not empty (NULL
+or "") and the input string contains several successive delimiters:
+semanage_split("foo::::bar", ":") returned "bar" and now returns ":bar".
+This would not have any impact in the current code as semanage_split()
+is only called with delim="=" (through semanage_findval(), in
+libsemanage/src/genhomedircon.c), in order to split a "key=value"
+statement.
+
+Signed-off-by: Nicolas Iooss <nicolas.iooss@m4x.org>
+(cherry picked from commit a228bb3736c5957d41ad9e01eb1283fc6883a6e5)
+---
+ libsemanage/src/utilities.c | 59 ++++++++++-----------------------------------
+ 1 file changed, 13 insertions(+), 46 deletions(-)
+
+diff --git a/libsemanage/src/utilities.c b/libsemanage/src/utilities.c
+index f48ffa4..fa86cc7 100644
+--- a/libsemanage/src/utilities.c
++++ b/libsemanage/src/utilities.c
+@@ -26,7 +26,6 @@
+ #include <string.h>
+ #include <sys/types.h>
+ #include <assert.h>
+-#include <ustr.h>
+ 
+ #define TRUE 1
+ #define FALSE 0
+@@ -74,64 +73,32 @@ char *semanage_split_on_space(const char *str)
+ {
+ 	/* as per the man page, these are the isspace() chars */
+ 	const char *seps = "\f\n\r\t\v ";
+-	size_t slen = strlen(seps);
+-	size_t off = 0, rside_len = 0;
+-	char *retval = NULL;
+-	Ustr *ustr = USTR_NULL, *temp = USTR_NULL;
++	size_t off = 0;
+ 
+ 	if (!str)
+-		goto done;
+-	if (!(ustr = ustr_dup_cstr(str)))
+-		goto done;
+-	temp =
+-	    ustr_split_spn_chrs(ustr, &off, seps, slen, USTR_NULL,
+-				USTR_FLAG_SPLIT_DEF);
+-	if (!temp)
+-		goto done;
+-	/* throw away the left hand side */
+-	ustr_sc_free(&temp);
+-
+-	rside_len = ustr_len(ustr) - off;
+-	temp = ustr_dup_subustr(ustr, off + 1, rside_len);
+-	if (!temp)
+-		goto done;
+-	retval = strdup(ustr_cstr(temp));
+-	ustr_sc_free(&temp);
++		return NULL;
+ 
+-      done:
+-	ustr_sc_free(&ustr);
+-	return retval;
++	/* skip one token and the spaces before and after it */
++	off = strspn(str, seps);
++	off += strcspn(str + off, seps);
++	off += strspn(str + off, seps);
++	return strdup(str + off);
+ }
+ 
+ char *semanage_split(const char *str, const char *delim)
+ {
+-	Ustr *ustr = USTR_NULL, *temp = USTR_NULL;
+-	size_t off = 0, rside_len = 0;
+-	char *retval = NULL;
++	char *retval;
+ 
+ 	if (!str)
+-		goto done;
++		return NULL;
+ 	if (!delim || !(*delim))
+ 		return semanage_split_on_space(str);
+-	ustr = ustr_dup_cstr(str);
+-	temp =
+-	    ustr_split_cstr(ustr, &off, delim, USTR_NULL, USTR_FLAG_SPLIT_DEF);
+-	if (!temp)
+-		goto done;
+-	/* throw away the left hand side */
+-	ustr_sc_free(&temp);
+-
+-	rside_len = ustr_len(ustr) - off;
+ 
+-	temp = ustr_dup_subustr(ustr, off + 1, rside_len);
+-	if (!temp)
+-		goto done;
+-	retval = strdup(ustr_cstr(temp));
+-	ustr_sc_free(&temp);
++	retval = strstr(str, delim);
++	if (retval == NULL)
++		return NULL;
+ 
+-      done:
+-	ustr_sc_free(&ustr);
+-	return retval;
++	return strdup(retval + strlen(delim));
+ }
+ 
+ int semanage_list_push(semanage_list_t ** list, const char *data)
+-- 
+2.10.2
+
diff --git a/recipes-security/selinux/libsemanage/0002-libsemanage-add-semanage_str_replace-utility-functio.patch b/recipes-security/selinux/libsemanage/0002-libsemanage-add-semanage_str_replace-utility-functio.patch
new file mode 100644
index 0000000..ed32785
--- /dev/null
+++ b/recipes-security/selinux/libsemanage/0002-libsemanage-add-semanage_str_replace-utility-functio.patch
@@ -0,0 +1,164 @@
+From de8b13baf3773b41367f265e7dd06c013816ba0a Mon Sep 17 00:00:00 2001
+From: Nicolas Iooss <nicolas.iooss@m4x.org>
+Date: Wed, 21 Dec 2016 19:21:02 +0100
+Subject: [PATCH 2/4] libsemanage: add semanage_str_replace() utility function
+
+This function will be used in the next commit.
+
+Signed-off-by: Nicolas Iooss <nicolas.iooss@m4x.org>
+(cherry picked from commit 57a3b1b4b0a50a1d14f825d2933339063ced4fec)
+---
+ libsemanage/src/utilities.c        | 55 ++++++++++++++++++++++++++++++++++++++
+ libsemanage/src/utilities.h        | 10 +++++++
+ libsemanage/tests/test_utilities.c | 34 +++++++++++++++++++++++
+ 3 files changed, 99 insertions(+)
+
+diff --git a/libsemanage/src/utilities.c b/libsemanage/src/utilities.c
+index fa86cc7..0d50d99 100644
+--- a/libsemanage/src/utilities.c
++++ b/libsemanage/src/utilities.c
+@@ -230,6 +230,61 @@ void semanage_rtrim(char *str, char trim_to)
+ 	}
+ }
+ 
++char *semanage_str_replace(const char *search, const char *replace,
++			   const char *src, size_t lim)
++{
++	size_t count = 0, slen, rlen, newsize;
++	char *p, *pres, *result;
++	const char *psrc;
++
++	slen = strlen(search);
++	rlen = strlen(replace);
++
++	/* Do not support empty search strings */
++	if (slen == 0)
++		return NULL;
++
++	/* Count the occurences of search in src and compute the new size */
++	for (p = strstr(src, search); p != NULL; p = strstr(p + slen, search)) {
++		count++;
++		if (lim && count >= lim)
++			break;
++	}
++	if (!count)
++		return strdup(src);
++
++	/* Allocate the result string */
++	newsize = strlen(src) + 1 + count * (rlen - slen);
++	result = malloc(newsize);
++	if (!result)
++		return NULL;
++
++	/* Fill the result */
++	psrc = src;
++	pres = result;
++	for (p = strstr(src, search); p != NULL; p = strstr(psrc, search)) {
++		/* Copy the part which has not been modified */
++		if (p != psrc) {
++			size_t length = (size_t)(p - psrc);
++			memcpy(pres, psrc, length);
++			pres += length;
++		}
++		/* Copy the replacement part */
++		if (rlen != 0) {
++			memcpy(pres, replace, rlen);
++			pres += rlen;
++		}
++		psrc = p + slen;
++		count--;
++		if (!count)
++			break;
++	}
++	/* Copy the last part, after doing a sanity check */
++	assert(pres + strlen(psrc) + 1 == result + newsize);
++	strcpy(pres, psrc);
++	return result;
++}
++
+ /* list_addafter_controlmem does *NOT* duplicate the data argument
+  * use at your own risk, I am building a list out of malloc'd memory and
+  * it is only going to get stored into this list, thus when I destroy it
+diff --git a/libsemanage/src/utilities.h b/libsemanage/src/utilities.h
+index 5fa15ef..f2ff31f 100644
+--- a/libsemanage/src/utilities.h
++++ b/libsemanage/src/utilities.h
+@@ -116,6 +116,16 @@ int semanage_str_count(char *data, char what);
+ void semanage_rtrim(char *str, char trim_to);
+ 
+ /**
++ * @param      value being searched for
++ * @param      replacement value that replaces found search values
++ * @param      string being searched and replaced on
++ * @param      maximum number of value occurences (zero for unlimited)
++ * @return     newly-allocated string with the replaced values
++ */
++char *semanage_str_replace(const char *search, const char *replace,
++			   const char *src, size_t lim);
++
++/**
+  * @param data    some string
+  * @return  modifies the string such that the first whitespace char becomes
+  *	    '\0', ending the string.
+diff --git a/libsemanage/tests/test_utilities.c b/libsemanage/tests/test_utilities.c
+index 32cc33c..cdfed0c 100644
+--- a/libsemanage/tests/test_utilities.c
++++ b/libsemanage/tests/test_utilities.c
+@@ -40,6 +40,7 @@ void test_semanage_split(void);
+ void test_semanage_list(void);
+ void test_semanage_str_count(void);
+ void test_semanage_rtrim(void);
++void test_semanage_str_replace(void);
+ void test_semanage_findval(void);
+ void test_slurp_file_filter(void);
+ 
+@@ -101,6 +102,10 @@ int semanage_utilities_add_tests(CU_pSuite suite)
+ 	if (NULL == CU_add_test(suite, "semanage_rtrim", test_semanage_rtrim)) {
+ 		goto err;
+ 	}
++	if (NULL == CU_add_test(suite, "semanage_str_replace",
++				test_semanage_str_replace)) {
++		goto err;
++	}
+ 	if (NULL == CU_add_test(suite, "semanage_findval",
+ 				test_semanage_findval)) {
+ 		goto err;
+@@ -244,6 +249,35 @@ void test_semanage_rtrim(void)
+ 	CU_ASSERT_STRING_EQUAL(str, "/blah/foo/bar");
+ }
+ 
++void test_semanage_str_replace(void)
++{
++	const char *test_str = "Hello, I am %{USERNAME} and my id is %{USERID}";
++	char *str1, *str2;
++
++	str1 = semanage_str_replace("%{USERNAME}", "root", test_str, 0);
++	CU_ASSERT_STRING_EQUAL(str1, "Hello, I am root and my id is %{USERID}");
++
++	str2 = semanage_str_replace("%{USERID}", "0", str1, 1);
++	CU_ASSERT_STRING_EQUAL(str2, "Hello, I am root and my id is 0");
++	free(str1);
++	free(str2);
++
++	str1 = semanage_str_replace(":(", ";)", "Test :( :) ! :(:(:))(:(", 0);
++	CU_ASSERT_STRING_EQUAL(str1, "Test ;) :) ! ;);):))(;)");
++	free(str1);
++
++	str1 = semanage_str_replace(":(", ";)", "Test :( :) ! :(:(:))(:(", 3);
++	CU_ASSERT_STRING_EQUAL(str1, "Test ;) :) ! ;);):))(:(");
++	free(str1);
++
++	str1 = semanage_str_replace("", "empty search string", "test", 0);
++	CU_ASSERT_EQUAL(str1, NULL);
++
++	str1 = semanage_str_replace("a", "", "abracadabra", 0);
++	CU_ASSERT_STRING_EQUAL(str1, "brcdbr");
++	free(str1);
++}
++
+ void test_semanage_findval(void)
+ {
+ 	char *tok;
+-- 
+2.10.2
+
diff --git a/recipes-security/selinux/libsemanage/0003-libsemanage-genhomedircon-drop-ustr-dependency.patch b/recipes-security/selinux/libsemanage/0003-libsemanage-genhomedircon-drop-ustr-dependency.patch
new file mode 100644
index 0000000..fde2349
--- /dev/null
+++ b/recipes-security/selinux/libsemanage/0003-libsemanage-genhomedircon-drop-ustr-dependency.patch
@@ -0,0 +1,323 @@
+From e8dd31df2268013afb1e8dbe5e617b9c4e9e388e Mon Sep 17 00:00:00 2001
+From: Nicolas Iooss <nicolas.iooss@m4x.org>
+Date: Wed, 21 Dec 2016 19:21:03 +0100
+Subject: [PATCH 3/4] libsemanage: genhomedircon: drop ustr dependency
+
+ustr library uses old (pre-C99) "extern inline" semantic. This makes it
+incompatible with recent versions of gcc and clang, which default to
+C99 standard. Distributions have shipped patched versions of this
+library to fix issues (e.g. Gentoo package uses this patch:
+https://gitweb.gentoo.org/repo/gentoo.git/tree/dev-libs/ustr/files/ustr-1.0.4-gcc_5-check.patch?id=7dea6f8820f36bf389e6315044bea7507553bed0
+) but there is no upstream solution to make ustr compatible with C99
+standard.
+
+The git tree of ustr (http://www.and.org/ustr/ustr.git) has not been
+updated since 2008 and the developer of this project did not reply to
+emails.
+
+Therefore update genhomedircon implementation in order to no longer
+rely on ustr library.
+
+Signed-off-by: Nicolas Iooss <nicolas.iooss@m4x.org>
+(cherry picked from commit 300b8ad4235688171f2a91e7aeb14d0ee3561c13)
+---
+ libsemanage/src/genhomedircon.c | 154 ++++++++++++++++++++--------------------
+ 1 file changed, 77 insertions(+), 77 deletions(-)
+
+diff --git a/libsemanage/src/genhomedircon.c b/libsemanage/src/genhomedircon.c
+index 6991fff..0f84aa3 100644
+--- a/libsemanage/src/genhomedircon.c
++++ b/libsemanage/src/genhomedircon.c
+@@ -34,9 +34,9 @@
+ 
+ #include "utilities.h"
+ #include "genhomedircon.h"
+-#include <ustr.h>
+ 
+ #include <assert.h>
++#include <ctype.h>
+ #include <limits.h>
+ #include <stdio.h>
+ #include <stdlib.h>
+@@ -239,46 +239,39 @@ static int fcontext_matches(const semanage_fcontext_t *fcontext, void *varg)
+ {
+ 	const char *oexpr = semanage_fcontext_get_expr(fcontext);
+ 	fc_match_handle_t *handp = varg;
+-	struct Ustr *expr;
++	char *expr = NULL;
+ 	regex_t re;
+ 	int type, retval = -1;
++	size_t len;
+ 
+ 	/* Only match ALL or DIR */
+ 	type = semanage_fcontext_get_type(fcontext);
+ 	if (type != SEMANAGE_FCONTEXT_ALL && type != SEMANAGE_FCONTEXT_ALL)
+ 		return 0;
+ 
+-	/* Convert oexpr into a Ustr and anchor it at the beginning */
+-	expr = ustr_dup_cstr("^");
+-	if (expr == USTR_NULL)
+-		goto done;
+-	if (!ustr_add_cstr(&expr, oexpr))
+-		goto done;
+-
+-	/* Strip off trailing ".+" or ".*" */
+-	if (ustr_cmp_suffix_cstr_eq(expr, ".+") ||
+-	    ustr_cmp_suffix_cstr_eq(expr, ".*")) {
+-		if (!ustr_del(&expr, 2))
+-			goto done;
+-	}
+-
+-	/* Strip off trailing "(/.*)?" */
+-	if (ustr_cmp_suffix_cstr_eq(expr, "(/.*)?")) {
+-		if (!ustr_del(&expr, 6))
+-			goto done;
+-	}
+-
+-	if (ustr_cmp_suffix_cstr_eq(expr, "/")) {
+-		if (!ustr_del(&expr, 1))
+-			goto done;
+-	}
+-
+-	/* Append pattern to eat up trailing slashes */
+-	if (!ustr_add_cstr(&expr, "/*$"))
+-		goto done;
++	len = strlen(oexpr);
++	/* Define a macro to strip a literal string from the end of oexpr */
++#define rstrip_oexpr_len(cstr, cstrlen) \
++	do { \
++		if (len >= (cstrlen) && !strncmp(oexpr + len - (cstrlen), (cstr), (cstrlen))) \
++			len -= (cstrlen); \
++	} while (0)
++#define rstrip_oexpr(cstr) rstrip_oexpr_len(cstr, sizeof(cstr) - 1)
++
++	rstrip_oexpr(".+");
++	rstrip_oexpr(".*");
++	rstrip_oexpr("(/.*)?");
++	rstrip_oexpr("/");
++
++#undef rstrip_oexpr_len
++#undef rstrip_oexpr
++
++	/* Anchor oexpr at the beginning and append pattern to eat up trailing slashes */
++	if (asprintf(&expr, "^%.*s/*$", (int)len, oexpr) < 0)
++		return -1;
+ 
+ 	/* Check dir against expr */
+-	if (regcomp(&re, ustr_cstr(expr), REG_EXTENDED) != 0)
++	if (regcomp(&re, expr, REG_EXTENDED) != 0)
+ 		goto done;
+ 	if (regexec(&re, handp->dir, 0, NULL, 0) == 0)
+ 		handp->matched = 1;
+@@ -287,7 +280,7 @@ static int fcontext_matches(const semanage_fcontext_t *fcontext, void *varg)
+ 	retval = 0;
+ 
+ done:
+-	ustr_free(expr);
++	free(expr);
+ 
+ 	return retval;
+ }
+@@ -523,44 +516,50 @@ static semanage_list_t *make_template(genhomedircon_settings_t * s,
+ 	return template_data;
+ }
+ 
+-static Ustr *replace_all(const char *str, const replacement_pair_t * repl)
++static char *replace_all(const char *str, const replacement_pair_t * repl)
+ {
+-	Ustr *retval = USTR_NULL;
++	char *retval, *retval2;
+ 	int i;
+ 
+ 	if (!str || !repl)
+-		goto done;
+-	if (!(retval = ustr_dup_cstr(str)))
+-		goto done;
++		return NULL;
+ 
+-	for (i = 0; repl[i].search_for; i++) {
+-		ustr_replace_cstr(&retval, repl[i].search_for,
+-				  repl[i].replace_with, 0);
++	retval = strdup(str);
++	for (i = 0; retval != NULL && repl[i].search_for; i++) {
++		retval2 = semanage_str_replace(repl[i].search_for,
++					       repl[i].replace_with, retval, 0);
++		free(retval);
++		retval = retval2;
+ 	}
+-	if (ustr_enomem(retval))
+-		ustr_sc_free(&retval);
+-
+-      done:
+ 	return retval;
+ }
+ 
+-static const char * extract_context(Ustr *line)
++static const char *extract_context(const char *line)
+ {
+-	const char whitespace[] = " \t\n";
+-	size_t off, len;
+-
+-	/* check for trailing whitespace */
+-	off = ustr_spn_chrs_rev(line, 0, whitespace, strlen(whitespace));
+-
+-	/* find the length of the last field in line */
+-	len = ustr_cspn_chrs_rev(line, off, whitespace, strlen(whitespace));
+-
+-	if (len == 0)
++	const char *p = line;
++	size_t off;
++
++	off = strlen(p);
++	p += off;
++	/* consider trailing whitespaces */
++	while (off > 0) {
++		p--;
++		off--;
++		if (!isspace(*p))
++			break;
++	}
++	if (off == 0)
+ 		return NULL;
+-	return ustr_cstr(line) + ustr_len(line) - (len + off);
++
++	/* find the last field in line */
++	while (off > 0 && !isspace(*(p - 1))) {
++		p--;
++		off--;
++	}
++	return p;
+ }
+ 
+-static int check_line(genhomedircon_settings_t * s, Ustr *line)
++static int check_line(genhomedircon_settings_t * s, const char *line)
+ {
+ 	sepol_context_t *ctx_record = NULL;
+ 	const char *ctx_str;
+@@ -584,22 +583,22 @@ static int write_replacements(genhomedircon_settings_t * s, FILE * out,
+ 			      const semanage_list_t * tpl,
+ 			      const replacement_pair_t *repl)
+ {
+-	Ustr *line = USTR_NULL;
++	char *line;
+ 
+ 	for (; tpl; tpl = tpl->next) {
+ 		line = replace_all(tpl->data, repl);
+ 		if (!line)
+ 			goto fail;
+ 		if (check_line(s, line) == STATUS_SUCCESS) {
+-			if (!ustr_io_putfileline(&line, out))
++			if (fprintf(out, "%s\n", line) < 0)
+ 				goto fail;
+ 		}
+-		ustr_sc_free(&line);
++		free(line);
+ 	}
+ 	return STATUS_SUCCESS;
+ 
+       fail:
+-	ustr_sc_free(&line);
++	free(line);
+ 	return STATUS_ERR;
+ }
+ 
+@@ -607,7 +606,7 @@ static int write_contexts(genhomedircon_settings_t *s, FILE *out,
+ 			  semanage_list_t *tpl, const replacement_pair_t *repl,
+ 			  const genhomedircon_user_entry_t *user)
+ {
+-	Ustr *line = USTR_NULL;
++	char *line, *temp;
+ 	sepol_context_t *context = NULL;
+ 	char *new_context_str = NULL;
+ 
+@@ -624,10 +623,10 @@ static int write_contexts(genhomedircon_settings_t *s, FILE *out,
+ 
+ 		if (strcmp(old_context_str, CONTEXT_NONE) == 0) {
+ 			if (check_line(s, line) == STATUS_SUCCESS &&
+-			    !ustr_io_putfileline(&line, out)) {
++			    fprintf(out, "%s\n", line) < 0) {
+ 				goto fail;
+ 			}
+-
++			free(line);
+ 			continue;
+ 		}
+ 
+@@ -653,25 +652,27 @@ static int write_contexts(genhomedircon_settings_t *s, FILE *out,
+ 			goto fail;
+ 		}
+ 
+-		if (!ustr_replace_cstr(&line, old_context_str,
+-				       new_context_str, 1)) {
++		temp = semanage_str_replace(old_context_str, new_context_str,
++					    line, 1);
++		if (!temp) {
+ 			goto fail;
+ 		}
++		free(line);
++		line = temp;
+ 
+ 		if (check_line(s, line) == STATUS_SUCCESS) {
+-			if (!ustr_io_putfileline(&line, out)) {
++			if (fprintf(out, "%s\n", line) < 0)
+ 				goto fail;
+-			}
+ 		}
+ 
+-		ustr_sc_free(&line);
++		free(line);
+ 		sepol_context_free(context);
+ 		free(new_context_str);
+ 	}
+ 
+ 	return STATUS_SUCCESS;
+ fail:
+-	ustr_sc_free(&line);
++	free(line);
+ 	sepol_context_free(context);
+ 	free(new_context_str);
+ 	return STATUS_ERR;
+@@ -1284,20 +1285,19 @@ static int write_context_file(genhomedircon_settings_t * s, FILE * out)
+ 		}
+ 
+ 		for (h = homedirs; h; h = h->next) {
+-			Ustr *temp = ustr_dup_cstr(h->data);
++			char *temp = NULL;
+ 
+-			if (!temp || !ustr_add_cstr(&temp, "/" FALLBACK_NAME)) {
+-				ustr_sc_free(&temp);
++			if (asprintf(&temp, "%s/%s", h->data, FALLBACK_NAME) < 0) {
+ 				retval = STATUS_ERR;
+ 				goto done;
+ 			}
+ 
+ 			free(s->fallback->home);
+-			s->fallback->home = (char*) ustr_cstr(temp);
++			s->fallback->home = temp;
+ 
+ 			if (write_home_dir_context(s, out, homedir_context_tpl,
+ 						   s->fallback) != STATUS_SUCCESS) {
+-				ustr_sc_free(&temp);
++				free(temp);
+ 				s->fallback->home = NULL;
+ 				retval = STATUS_ERR;
+ 				goto done;
+@@ -1305,13 +1305,13 @@ static int write_context_file(genhomedircon_settings_t * s, FILE * out)
+ 			if (write_home_root_context(s, out,
+ 						    homeroot_context_tpl,
+ 						    h->data) != STATUS_SUCCESS) {
+-				ustr_sc_free(&temp);
++				free(temp);
+ 				s->fallback->home = NULL;
+ 				retval = STATUS_ERR;
+ 				goto done;
+ 			}
+ 
+-			ustr_sc_free(&temp);
++			free(temp);
+ 			s->fallback->home = NULL;
+ 		}
+ 	}
+-- 
+2.10.2
+
diff --git a/recipes-security/selinux/libsemanage/0004-libsemanage-remove-ustr-library-from-Makefiles-READM.patch b/recipes-security/selinux/libsemanage/0004-libsemanage-remove-ustr-library-from-Makefiles-READM.patch
new file mode 100644
index 0000000..1800493
--- /dev/null
+++ b/recipes-security/selinux/libsemanage/0004-libsemanage-remove-ustr-library-from-Makefiles-READM.patch
@@ -0,0 +1,61 @@
+From c7e55daa20f5659799aed47b819ad73e03d11e8f Mon Sep 17 00:00:00 2001
+From: Nicolas Iooss <nicolas.iooss@m4x.org>
+Date: Wed, 21 Dec 2016 19:21:04 +0100
+Subject: [PATCH 4/4] libsemanage: remove ustr library from Makefiles, README
+ and pkg-config
+
+This library is no longer used by libsemanage.
+
+Signed-off-by: Nicolas Iooss <nicolas.iooss@m4x.org>
+(cherry picked from commit 920ee9ee18024c7714f1121e91854f38fa1eef73)
+
+Tweaked due to conditional audit patch and no README.
+---
+ README                            | 2 +-
+ libsemanage/src/Makefile          | 2 +-
+ libsemanage/src/libsemanage.pc.in | 2 +-
+ libsemanage/tests/Makefile        | 2 +-
+ 4 files changed, 4 insertions(+), 4 deletions(-)
+
+diff --git a/libsemanage/src/Makefile b/libsemanage/src/Makefile
+index 68aab72..83daf0f 100644
+--- a/libsemanage/src/Makefile
++++ b/libsemanage/src/Makefile
+@@ -91,7 +91,7 @@ $(LIBA): $(OBJS)
+ 	$(RANLIB) $@
+ 
+ $(LIBSO): $(LOBJS)
+-	$(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol $(LIBAUDIT) -lselinux -lbz2 -lustr -L$(LIBDIR) -Wl,-soname,$(LIBSO),--version-script=libsemanage.map,-z,defs
++	$(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol $(LIBAUDIT) -lselinux -lbz2 -L$(LIBDIR) -Wl,-soname,$(LIBSO),--version-script=libsemanage.map,-z,defs
+ 	ln -sf $@ $(TARGET)
+ 
+ $(LIBPC): $(LIBPC).in ../VERSION
+diff --git a/libsemanage/src/libsemanage.pc.in b/libsemanage/src/libsemanage.pc.in
+index 81e1805..d3eaa06 100644
+--- a/libsemanage/src/libsemanage.pc.in
++++ b/libsemanage/src/libsemanage.pc.in
+@@ -7,7 +7,7 @@ Name: libsemanage
+ Description: SELinux management library
+ Version: @VERSION@
+ URL: http://userspace.selinuxproject.org/
+-Requires.private: libselinux libsepol ustr
++Requires.private: libselinux libsepol
+ Libs: -L${libdir} -lsemanage
+ Libs.private: -lbz2
+ Cflags: -I${includedir}
+diff --git a/libsemanage/tests/Makefile b/libsemanage/tests/Makefile
+index 4b81fed..56285b3 100644
+--- a/libsemanage/tests/Makefile
++++ b/libsemanage/tests/Makefile
+@@ -12,7 +12,7 @@ LIBS = ../src/libsemanage.a ../../libselinux/src/libselinux.a ../../libsepol/src
+ 	LIBAUDIT = -laudit
+ endif
+
+-LDFLAGS += -lcunit -lustr -lbz2 $(LIBAUDIT)
++LDFLAGS += -lcunit -lbz2 $(LIBAUDIT)
+ OBJECTS = $(SOURCES:.c=.o) 
+ 
+ all: $(EXECUTABLE) 
+-- 
+2.10.2
+
diff --git a/recipes-security/selinux/libsemanage_2.6.bb b/recipes-security/selinux/libsemanage_2.6.bb
index 6361181..5e24c9d 100644
--- a/recipes-security/selinux/libsemanage_2.6.bb
+++ b/recipes-security/selinux/libsemanage_2.6.bb
@@ -15,5 +15,9 @@ SRC_URI += "\
 	file://libsemanage-allow-to-disable-audit-support.patch \
 	file://libsemanage-disable-expand-check-on-policy-load.patch \
 	file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
+	file://0001-libsemanage-simplify-string-utilities-functions.patch;striplevel=2 \
+	file://0002-libsemanage-add-semanage_str_replace-utility-functio.patch;striplevel=2 \
+	file://0003-libsemanage-genhomedircon-drop-ustr-dependency.patch;striplevel=2 \
+	file://0004-libsemanage-remove-ustr-library-from-Makefiles-READM.patch;striplevel=2 \
 	"
 FILES_${PN} += "/usr/libexec"
-- 
2.10.2


