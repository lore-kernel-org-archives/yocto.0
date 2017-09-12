Return-Path: <parkch98@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6F8BE00B01; Tue, 12 Sep 2017 03:59:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.181 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (parkch98[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f181.google.com (mail-wr0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A57AEE0090A
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 03:59:27 -0700 (PDT)
Received: by mail-wr0-f181.google.com with SMTP id v109so20669866wrc.1
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 03:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=lhZ7k1GUtGqN8k/0lhPpeaNMTy3MTAzJOM1gnqICSHM=;
	b=mxpe+c8cuklw5dNoGbhbKsGHxUsTyVSZRRIsuResJkGbvt4ZaLBnzZcidbnJztcmc6
	bH60kW9yyJYMAYRowSjHemTaVFDvPqZkjALA2nC55BlGYCy07+mOwm8sQ9PpBybwPz/u
	W0E3DrmlPkPjTycOeG5L1EC1y6XT4E3mniRluqXvUrHYFtvsv4A83lsGGUsILBsUcViK
	T8iIwiXPUvTOhw7AcDPXDRhWK2I7a/lFb9xUvoeCXP8l1SHAVapIVVtK4VY6LqYk1c/k
	eyLmQSVxMxeBktkiJJ10OF5kNoz0S53ICj7JTg3rn2joqryAUBUOR7wQAC6mJDomzt5I
	NNSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=lhZ7k1GUtGqN8k/0lhPpeaNMTy3MTAzJOM1gnqICSHM=;
	b=X5obov8TeGqz+19t2f6x7NXEGF775Q18Nl56yrRVBOvxGA8LYoNrckQmVr1criFf8K
	+clnV4agpUjloDoxS6f7AhCSeP+4FiIPnfZyAeRizCbkUjs7EHLrhWJhzhIdGtVhNHaS
	fG6JOeqMUtYdwMzfELS/GCkkT2UpMbZmVusde1cxEMsWAlXTC0DBlvf7nd7NLmZB8JHA
	ux+VJ1BG6dgMJXdRM2rX1jxGJVQUcQfBWbDzTz8kuvlktc0KyMB/DHX6KGznvYfLT1fe
	xlv0okAkApUIN0pqF3YVXxu1MVAIm0cQJXEg0KtT9s2oN3Q45kKKLuyxQG6+tBgg5bg7
	T9ow==
X-Gm-Message-State: AHPjjUgzKWWlUlLQ5JsgG7GKTZp4lzBOe+MJklcAk3IX2KRxFmkcD/Xl
	Hrr7f4t5g8cj5nS6Tb7JuLDuN4nh5w==
X-Google-Smtp-Source: ADKCNb6IJv6bUQf2O9W15u33yUZY5mp7Lujcbl1XPV9kqQh0rw8W79vb/1xSFwpRAgWFalc9Ac3wbUjlmFnXzrD8qUo=
X-Received: by 10.223.180.82 with SMTP id v18mr12991843wrd.61.1505213966271;
	Tue, 12 Sep 2017 03:59:26 -0700 (PDT)
MIME-Version: 1.0
References: <20170905055958.54697-1-wenzong.fan@windriver.com>
	<20170905055958.54697-4-wenzong.fan@windriver.com>
In-Reply-To: <20170905055958.54697-4-wenzong.fan@windriver.com>
From: Chanho Park <parkch98@gmail.com>
Date: Tue, 12 Sep 2017 10:59:15 +0000
Message-ID: <CAPTzV14TtSer1QRZ+5fEiSCUjXiqb4VF9pSuCmNQ5-HUC1Adag@mail.gmail.com>
To: wenzong.fan@windriver.com, yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 04/21] libsemanage: uprev to 2.7 (20170804)
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
X-List-Received-Date: Tue, 12 Sep 2017 10:59:32 -0000
Content-Type: multipart/alternative; boundary="f4030435b5b0c56a390558fbef90"

--f4030435b5b0c56a390558fbef90
Content-Type: text/plain; charset="UTF-8"

Hi,

I can't apply this patch on top of the master branch. Which revision did
you make the patches?

Best Regards,
Chanho Park

On Tue, 5 Sep 2017 at 3:05 PM <wenzong.fan@windriver.com> wrote:

> From: Wenzong Fan <wenzong.fan@windriver.com>
>
> Remove patches that included by new version:
>   - 0001-libsemanage-simplify-string-utilities-functions.patch
>   - 0002-libsemanage-add-semanage_str_replace-utility-functio.patch
>   - 0003-libsemanage-genhomedircon-drop-ustr-dependency.patch
>   - 0004-libsemanage-remove-ustr-library-from-Makefiles-READM.patch
>   - libsemanage-fix-path-len-limit.patch
>
> Rebase patch:
>   - libsemanage-allow-to-disable-audit-support.patch
>
> Set PYCEXT and PYSITEDIR to generate the _semanage.so and install it
> to ${libdir}/python${PYTHON_BASEVERSION}/site-packages.
>
> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> ---
>  recipes-security/selinux/libsemanage.inc           |   2 +
>  ...anage-simplify-string-utilities-functions.patch | 115 --------
>  ...-add-semanage_str_replace-utility-functio.patch | 164 -----------
>  ...manage-genhomedircon-drop-ustr-dependency.patch | 323
> ---------------------
>  ...-remove-ustr-library-from-Makefiles-READM.patch |  61 ----
>  ...ibsemanage-allow-to-disable-audit-support.patch |  68 +++--
>  .../libsemanage-fix-path-len-limit.patch           |  28 --
>  .../{libsemanage_2.6.bb => libsemanage_2.7.bb}     |  11 +-
>  8 files changed, 42 insertions(+), 730 deletions(-)
>  delete mode 100644
> recipes-security/selinux/libsemanage/0001-libsemanage-simplify-string-utilities-functions.patch
>  delete mode 100644
> recipes-security/selinux/libsemanage/0002-libsemanage-add-semanage_str_replace-utility-functio.patch
>  delete mode 100644
> recipes-security/selinux/libsemanage/0003-libsemanage-genhomedircon-drop-ustr-dependency.patch
>  delete mode 100644
> recipes-security/selinux/libsemanage/0004-libsemanage-remove-ustr-library-from-Makefiles-READM.patch
>  delete mode 100644
> recipes-security/selinux/libsemanage/libsemanage-fix-path-len-limit.patch
>  rename recipes-security/selinux/{libsemanage_2.6.bb => libsemanage_2.7.bb}
> (50%)
>
> diff --git a/recipes-security/selinux/libsemanage.inc
> b/recipes-security/selinux/libsemanage.inc
> index 504101d..9b238c8 100644
> --- a/recipes-security/selinux/libsemanage.inc
> +++ b/recipes-security/selinux/libsemanage.inc
> @@ -40,6 +40,8 @@ do_install() {
>
>      oe_runmake install-pywrap swigify \
>              DESTDIR=${D} \
> +            PYCEXT='.so' \
> +
> PYSITEDIR='${D}${libdir}/python${PYTHON_BASEVERSION}/site-packages' \
>              PYLIBVER='python${PYTHON_BASEVERSION}' \
>              PYLIBDIR='${D}/${libdir}/$(PYLIBVER)'
>
> diff --git
> a/recipes-security/selinux/libsemanage/0001-libsemanage-simplify-string-utilities-functions.patch
> b/recipes-security/selinux/libsemanage/0001-libsemanage-simplify-string-utilities-functions.patch
> deleted file mode 100644
> index fd478d0..0000000
> ---
> a/recipes-security/selinux/libsemanage/0001-libsemanage-simplify-string-utilities-functions.patch
> +++ /dev/null
> @@ -1,115 +0,0 @@
> -From 514a5df959ea0e13db4e87f73c2ac5edcceebd52 Mon Sep 17 00:00:00 2001
> -From: Nicolas Iooss <nicolas.iooss@m4x.org>
> -Date: Wed, 21 Dec 2016 19:21:01 +0100
> -Subject: [meta-selinux][PATCH 1/4] libsemanage: simplify string utilities
> functions
> -
> -Use string functions from C standard library instead of ustr. This makes
> -the code simpler and make utilities.c no longer depend on ustr library.
> -
> -This changes how semanage_split() behaves when delim is not empty (NULL
> -or "") and the input string contains several successive delimiters:
> -semanage_split("foo::::bar", ":") returned "bar" and now returns ":bar".
> -This would not have any impact in the current code as semanage_split()
> -is only called with delim="=" (through semanage_findval(), in
> -libsemanage/src/genhomedircon.c), in order to split a "key=value"
> -statement.
> -
> -Signed-off-by: Nicolas Iooss <nicolas.iooss@m4x.org>
> -(cherry picked from commit a228bb3736c5957d41ad9e01eb1283fc6883a6e5)
> ----
> - libsemanage/src/utilities.c | 59
> ++++++++++-----------------------------------
> - 1 file changed, 13 insertions(+), 46 deletions(-)
> -
> -diff --git a/libsemanage/src/utilities.c b/libsemanage/src/utilities.c
> -index f48ffa4..fa86cc7 100644
> ---- a/libsemanage/src/utilities.c
> -+++ b/libsemanage/src/utilities.c
> -@@ -26,7 +26,6 @@
> - #include <string.h>
> - #include <sys/types.h>
> - #include <assert.h>
> --#include <ustr.h>
> -
> - #define TRUE 1
> - #define FALSE 0
> -@@ -74,64 +73,32 @@ char *semanage_split_on_space(const char *str)
> - {
> -       /* as per the man page, these are the isspace() chars */
> -       const char *seps = "\f\n\r\t\v ";
> --      size_t slen = strlen(seps);
> --      size_t off = 0, rside_len = 0;
> --      char *retval = NULL;
> --      Ustr *ustr = USTR_NULL, *temp = USTR_NULL;
> -+      size_t off = 0;
> -
> -       if (!str)
> --              goto done;
> --      if (!(ustr = ustr_dup_cstr(str)))
> --              goto done;
> --      temp =
> --          ustr_split_spn_chrs(ustr, &off, seps, slen, USTR_NULL,
> --                              USTR_FLAG_SPLIT_DEF);
> --      if (!temp)
> --              goto done;
> --      /* throw away the left hand side */
> --      ustr_sc_free(&temp);
> --
> --      rside_len = ustr_len(ustr) - off;
> --      temp = ustr_dup_subustr(ustr, off + 1, rside_len);
> --      if (!temp)
> --              goto done;
> --      retval = strdup(ustr_cstr(temp));
> --      ustr_sc_free(&temp);
> -+              return NULL;
> -
> --      done:
> --      ustr_sc_free(&ustr);
> --      return retval;
> -+      /* skip one token and the spaces before and after it */
> -+      off = strspn(str, seps);
> -+      off += strcspn(str + off, seps);
> -+      off += strspn(str + off, seps);
> -+      return strdup(str + off);
> - }
> -
> - char *semanage_split(const char *str, const char *delim)
> - {
> --      Ustr *ustr = USTR_NULL, *temp = USTR_NULL;
> --      size_t off = 0, rside_len = 0;
> --      char *retval = NULL;
> -+      char *retval;
> -
> -       if (!str)
> --              goto done;
> -+              return NULL;
> -       if (!delim || !(*delim))
> -               return semanage_split_on_space(str);
> --      ustr = ustr_dup_cstr(str);
> --      temp =
> --          ustr_split_cstr(ustr, &off, delim, USTR_NULL,
> USTR_FLAG_SPLIT_DEF);
> --      if (!temp)
> --              goto done;
> --      /* throw away the left hand side */
> --      ustr_sc_free(&temp);
> --
> --      rside_len = ustr_len(ustr) - off;
> -
> --      temp = ustr_dup_subustr(ustr, off + 1, rside_len);
> --      if (!temp)
> --              goto done;
> --      retval = strdup(ustr_cstr(temp));
> --      ustr_sc_free(&temp);
> -+      retval = strstr(str, delim);
> -+      if (retval == NULL)
> -+              return NULL;
> -
> --      done:
> --      ustr_sc_free(&ustr);
> --      return retval;
> -+      return strdup(retval + strlen(delim));
> - }
> -
> - int semanage_list_push(semanage_list_t ** list, const char *data)
> ---
> -2.10.2
> -
> diff --git
> a/recipes-security/selinux/libsemanage/0002-libsemanage-add-semanage_str_replace-utility-functio.patch
> b/recipes-security/selinux/libsemanage/0002-libsemanage-add-semanage_str_replace-utility-functio.patch
> deleted file mode 100644
> index ed32785..0000000
> ---
> a/recipes-security/selinux/libsemanage/0002-libsemanage-add-semanage_str_replace-utility-functio.patch
> +++ /dev/null
> @@ -1,164 +0,0 @@
> -From de8b13baf3773b41367f265e7dd06c013816ba0a Mon Sep 17 00:00:00 2001
> -From: Nicolas Iooss <nicolas.iooss@m4x.org>
> -Date: Wed, 21 Dec 2016 19:21:02 +0100
> -Subject: [meta-selinux][PATCH 2/4] libsemanage: add
> semanage_str_replace() utility function
> -
> -This function will be used in the next commit.
> -
> -Signed-off-by: Nicolas Iooss <nicolas.iooss@m4x.org>
> -(cherry picked from commit 57a3b1b4b0a50a1d14f825d2933339063ced4fec)
> ----
> - libsemanage/src/utilities.c        | 55
> ++++++++++++++++++++++++++++++++++++++
> - libsemanage/src/utilities.h        | 10 +++++++
> - libsemanage/tests/test_utilities.c | 34 +++++++++++++++++++++++
> - 3 files changed, 99 insertions(+)
> -
> -diff --git a/libsemanage/src/utilities.c b/libsemanage/src/utilities.c
> -index fa86cc7..0d50d99 100644
> ---- a/libsemanage/src/utilities.c
> -+++ b/libsemanage/src/utilities.c
> -@@ -230,6 +230,61 @@ void semanage_rtrim(char *str, char trim_to)
> -       }
> - }
> -
> -+char *semanage_str_replace(const char *search, const char *replace,
> -+                         const char *src, size_t lim)
> -+{
> -+      size_t count = 0, slen, rlen, newsize;
> -+      char *p, *pres, *result;
> -+      const char *psrc;
> -+
> -+      slen = strlen(search);
> -+      rlen = strlen(replace);
> -+
> -+      /* Do not support empty search strings */
> -+      if (slen == 0)
> -+              return NULL;
> -+
> -+      /* Count the occurences of search in src and compute the new size
> */
> -+      for (p = strstr(src, search); p != NULL; p = strstr(p + slen,
> search)) {
> -+              count++;
> -+              if (lim && count >= lim)
> -+                      break;
> -+      }
> -+      if (!count)
> -+              return strdup(src);
> -+
> -+      /* Allocate the result string */
> -+      newsize = strlen(src) + 1 + count * (rlen - slen);
> -+      result = malloc(newsize);
> -+      if (!result)
> -+              return NULL;
> -+
> -+      /* Fill the result */
> -+      psrc = src;
> -+      pres = result;
> -+      for (p = strstr(src, search); p != NULL; p = strstr(psrc, search))
> {
> -+              /* Copy the part which has not been modified */
> -+              if (p != psrc) {
> -+                      size_t length = (size_t)(p - psrc);
> -+                      memcpy(pres, psrc, length);
> -+                      pres += length;
> -+              }
> -+              /* Copy the replacement part */
> -+              if (rlen != 0) {
> -+                      memcpy(pres, replace, rlen);
> -+                      pres += rlen;
> -+              }
> -+              psrc = p + slen;
> -+              count--;
> -+              if (!count)
> -+                      break;
> -+      }
> -+      /* Copy the last part, after doing a sanity check */
> -+      assert(pres + strlen(psrc) + 1 == result + newsize);
> -+      strcpy(pres, psrc);
> -+      return result;
> -+}
> -+
> - /* list_addafter_controlmem does *NOT* duplicate the data argument
> -  * use at your own risk, I am building a list out of malloc'd memory and
> -  * it is only going to get stored into this list, thus when I destroy it
> -diff --git a/libsemanage/src/utilities.h b/libsemanage/src/utilities.h
> -index 5fa15ef..f2ff31f 100644
> ---- a/libsemanage/src/utilities.h
> -+++ b/libsemanage/src/utilities.h
> -@@ -116,6 +116,16 @@ int semanage_str_count(char *data, char what);
> - void semanage_rtrim(char *str, char trim_to);
> -
> - /**
> -+ * @param      value being searched for
> -+ * @param      replacement value that replaces found search values
> -+ * @param      string being searched and replaced on
> -+ * @param      maximum number of value occurences (zero for unlimited)
> -+ * @return     newly-allocated string with the replaced values
> -+ */
> -+char *semanage_str_replace(const char *search, const char *replace,
> -+                         const char *src, size_t lim);
> -+
> -+/**
> -  * @param data    some string
> -  * @return  modifies the string such that the first whitespace char
> becomes
> -  *        '\0', ending the string.
> -diff --git a/libsemanage/tests/test_utilities.c
> b/libsemanage/tests/test_utilities.c
> -index 32cc33c..cdfed0c 100644
> ---- a/libsemanage/tests/test_utilities.c
> -+++ b/libsemanage/tests/test_utilities.c
> -@@ -40,6 +40,7 @@ void test_semanage_split(void);
> - void test_semanage_list(void);
> - void test_semanage_str_count(void);
> - void test_semanage_rtrim(void);
> -+void test_semanage_str_replace(void);
> - void test_semanage_findval(void);
> - void test_slurp_file_filter(void);
> -
> -@@ -101,6 +102,10 @@ int semanage_utilities_add_tests(CU_pSuite suite)
> -       if (NULL == CU_add_test(suite, "semanage_rtrim",
> test_semanage_rtrim)) {
> -               goto err;
> -       }
> -+      if (NULL == CU_add_test(suite, "semanage_str_replace",
> -+                              test_semanage_str_replace)) {
> -+              goto err;
> -+      }
> -       if (NULL == CU_add_test(suite, "semanage_findval",
> -                               test_semanage_findval)) {
> -               goto err;
> -@@ -244,6 +249,35 @@ void test_semanage_rtrim(void)
> -       CU_ASSERT_STRING_EQUAL(str, "/blah/foo/bar");
> - }
> -
> -+void test_semanage_str_replace(void)
> -+{
> -+      const char *test_str = "Hello, I am %{USERNAME} and my id is
> %{USERID}";
> -+      char *str1, *str2;
> -+
> -+      str1 = semanage_str_replace("%{USERNAME}", "root", test_str, 0);
> -+      CU_ASSERT_STRING_EQUAL(str1, "Hello, I am root and my id is
> %{USERID}");
> -+
> -+      str2 = semanage_str_replace("%{USERID}", "0", str1, 1);
> -+      CU_ASSERT_STRING_EQUAL(str2, "Hello, I am root and my id is 0");
> -+      free(str1);
> -+      free(str2);
> -+
> -+      str1 = semanage_str_replace(":(", ";)", "Test :( :) ! :(:(:))(:(",
> 0);
> -+      CU_ASSERT_STRING_EQUAL(str1, "Test ;) :) ! ;);):))(;)");
> -+      free(str1);
> -+
> -+      str1 = semanage_str_replace(":(", ";)", "Test :( :) ! :(:(:))(:(",
> 3);
> -+      CU_ASSERT_STRING_EQUAL(str1, "Test ;) :) ! ;);):))(:(");
> -+      free(str1);
> -+
> -+      str1 = semanage_str_replace("", "empty search string", "test", 0);
> -+      CU_ASSERT_EQUAL(str1, NULL);
> -+
> -+      str1 = semanage_str_replace("a", "", "abracadabra", 0);
> -+      CU_ASSERT_STRING_EQUAL(str1, "brcdbr");
> -+      free(str1);
> -+}
> -+
> - void test_semanage_findval(void)
> - {
> -       char *tok;
> ---
> -2.10.2
> -
> diff --git
> a/recipes-security/selinux/libsemanage/0003-libsemanage-genhomedircon-drop-ustr-dependency.patch
> b/recipes-security/selinux/libsemanage/0003-libsemanage-genhomedircon-drop-ustr-dependency.patch
> deleted file mode 100644
> index fde2349..0000000
> ---
> a/recipes-security/selinux/libsemanage/0003-libsemanage-genhomedircon-drop-ustr-dependency.patch
> +++ /dev/null
> @@ -1,323 +0,0 @@
> -From e8dd31df2268013afb1e8dbe5e617b9c4e9e388e Mon Sep 17 00:00:00 2001
> -From: Nicolas Iooss <nicolas.iooss@m4x.org>
> -Date: Wed, 21 Dec 2016 19:21:03 +0100
> -Subject: [meta-selinux][PATCH 3/4] libsemanage: genhomedircon: drop ustr
> dependency
> -
> -ustr library uses old (pre-C99) "extern inline" semantic. This makes it
> -incompatible with recent versions of gcc and clang, which default to
> -C99 standard. Distributions have shipped patched versions of this
> -library to fix issues (e.g. Gentoo package uses this patch:
> -
> https://gitweb.gentoo.org/repo/gentoo.git/tree/dev-libs/ustr/files/ustr-1.0.4-gcc_5-check.patch?id=7dea6f8820f36bf389e6315044bea7507553bed0
> -) but there is no upstream solution to make ustr compatible with C99
> -standard.
> -
> -The git tree of ustr (http://www.and.org/ustr/ustr.git) has not been
> -updated since 2008 and the developer of this project did not reply to
> -emails.
> -
> -Therefore update genhomedircon implementation in order to no longer
> -rely on ustr library.
> -
> -Signed-off-by: Nicolas Iooss <nicolas.iooss@m4x.org>
> -(cherry picked from commit 300b8ad4235688171f2a91e7aeb14d0ee3561c13)
> ----
> - libsemanage/src/genhomedircon.c | 154
> ++++++++++++++++++++--------------------
> - 1 file changed, 77 insertions(+), 77 deletions(-)
> -
> -diff --git a/libsemanage/src/genhomedircon.c
> b/libsemanage/src/genhomedircon.c
> -index 6991fff..0f84aa3 100644
> ---- a/libsemanage/src/genhomedircon.c
> -+++ b/libsemanage/src/genhomedircon.c
> -@@ -34,9 +34,9 @@
> -
> - #include "utilities.h"
> - #include "genhomedircon.h"
> --#include <ustr.h>
> -
> - #include <assert.h>
> -+#include <ctype.h>
> - #include <limits.h>
> - #include <stdio.h>
> - #include <stdlib.h>
> -@@ -239,46 +239,39 @@ static int fcontext_matches(const
> semanage_fcontext_t *fcontext, void *varg)
> - {
> -       const char *oexpr = semanage_fcontext_get_expr(fcontext);
> -       fc_match_handle_t *handp = varg;
> --      struct Ustr *expr;
> -+      char *expr = NULL;
> -       regex_t re;
> -       int type, retval = -1;
> -+      size_t len;
> -
> -       /* Only match ALL or DIR */
> -       type = semanage_fcontext_get_type(fcontext);
> -       if (type != SEMANAGE_FCONTEXT_ALL && type != SEMANAGE_FCONTEXT_ALL)
> -               return 0;
> -
> --      /* Convert oexpr into a Ustr and anchor it at the beginning */
> --      expr = ustr_dup_cstr("^");
> --      if (expr == USTR_NULL)
> --              goto done;
> --      if (!ustr_add_cstr(&expr, oexpr))
> --              goto done;
> --
> --      /* Strip off trailing ".+" or ".*" */
> --      if (ustr_cmp_suffix_cstr_eq(expr, ".+") ||
> --          ustr_cmp_suffix_cstr_eq(expr, ".*")) {
> --              if (!ustr_del(&expr, 2))
> --                      goto done;
> --      }
> --
> --      /* Strip off trailing "(/.*)?" */
> --      if (ustr_cmp_suffix_cstr_eq(expr, "(/.*)?")) {
> --              if (!ustr_del(&expr, 6))
> --                      goto done;
> --      }
> --
> --      if (ustr_cmp_suffix_cstr_eq(expr, "/")) {
> --              if (!ustr_del(&expr, 1))
> --                      goto done;
> --      }
> --
> --      /* Append pattern to eat up trailing slashes */
> --      if (!ustr_add_cstr(&expr, "/*$"))
> --              goto done;
> -+      len = strlen(oexpr);
> -+      /* Define a macro to strip a literal string from the end of oexpr
> */
> -+#define rstrip_oexpr_len(cstr, cstrlen) \
> -+      do { \
> -+              if (len >= (cstrlen) && !strncmp(oexpr + len - (cstrlen),
> (cstr), (cstrlen))) \
> -+                      len -= (cstrlen); \
> -+      } while (0)
> -+#define rstrip_oexpr(cstr) rstrip_oexpr_len(cstr, sizeof(cstr) - 1)
> -+
> -+      rstrip_oexpr(".+");
> -+      rstrip_oexpr(".*");
> -+      rstrip_oexpr("(/.*)?");
> -+      rstrip_oexpr("/");
> -+
> -+#undef rstrip_oexpr_len
> -+#undef rstrip_oexpr
> -+
> -+      /* Anchor oexpr at the beginning and append pattern to eat up
> trailing slashes */
> -+      if (asprintf(&expr, "^%.*s/*$", (int)len, oexpr) < 0)
> -+              return -1;
> -
> -       /* Check dir against expr */
> --      if (regcomp(&re, ustr_cstr(expr), REG_EXTENDED) != 0)
> -+      if (regcomp(&re, expr, REG_EXTENDED) != 0)
> -               goto done;
> -       if (regexec(&re, handp->dir, 0, NULL, 0) == 0)
> -               handp->matched = 1;
> -@@ -287,7 +280,7 @@ static int fcontext_matches(const semanage_fcontext_t
> *fcontext, void *varg)
> -       retval = 0;
> -
> - done:
> --      ustr_free(expr);
> -+      free(expr);
> -
> -       return retval;
> - }
> -@@ -523,44 +516,50 @@ static semanage_list_t
> *make_template(genhomedircon_settings_t * s,
> -       return template_data;
> - }
> -
> --static Ustr *replace_all(const char *str, const replacement_pair_t *
> repl)
> -+static char *replace_all(const char *str, const replacement_pair_t *
> repl)
> - {
> --      Ustr *retval = USTR_NULL;
> -+      char *retval, *retval2;
> -       int i;
> -
> -       if (!str || !repl)
> --              goto done;
> --      if (!(retval = ustr_dup_cstr(str)))
> --              goto done;
> -+              return NULL;
> -
> --      for (i = 0; repl[i].search_for; i++) {
> --              ustr_replace_cstr(&retval, repl[i].search_for,
> --                                repl[i].replace_with, 0);
> -+      retval = strdup(str);
> -+      for (i = 0; retval != NULL && repl[i].search_for; i++) {
> -+              retval2 = semanage_str_replace(repl[i].search_for,
> -+                                             repl[i].replace_with,
> retval, 0);
> -+              free(retval);
> -+              retval = retval2;
> -       }
> --      if (ustr_enomem(retval))
> --              ustr_sc_free(&retval);
> --
> --      done:
> -       return retval;
> - }
> -
> --static const char * extract_context(Ustr *line)
> -+static const char *extract_context(const char *line)
> - {
> --      const char whitespace[] = " \t\n";
> --      size_t off, len;
> --
> --      /* check for trailing whitespace */
> --      off = ustr_spn_chrs_rev(line, 0, whitespace, strlen(whitespace));
> --
> --      /* find the length of the last field in line */
> --      len = ustr_cspn_chrs_rev(line, off, whitespace,
> strlen(whitespace));
> --
> --      if (len == 0)
> -+      const char *p = line;
> -+      size_t off;
> -+
> -+      off = strlen(p);
> -+      p += off;
> -+      /* consider trailing whitespaces */
> -+      while (off > 0) {
> -+              p--;
> -+              off--;
> -+              if (!isspace(*p))
> -+                      break;
> -+      }
> -+      if (off == 0)
> -               return NULL;
> --      return ustr_cstr(line) + ustr_len(line) - (len + off);
> -+
> -+      /* find the last field in line */
> -+      while (off > 0 && !isspace(*(p - 1))) {
> -+              p--;
> -+              off--;
> -+      }
> -+      return p;
> - }
> -
> --static int check_line(genhomedircon_settings_t * s, Ustr *line)
> -+static int check_line(genhomedircon_settings_t * s, const char *line)
> - {
> -       sepol_context_t *ctx_record = NULL;
> -       const char *ctx_str;
> -@@ -584,22 +583,22 @@ static int
> write_replacements(genhomedircon_settings_t * s, FILE * out,
> -                             const semanage_list_t * tpl,
> -                             const replacement_pair_t *repl)
> - {
> --      Ustr *line = USTR_NULL;
> -+      char *line;
> -
> -       for (; tpl; tpl = tpl->next) {
> -               line = replace_all(tpl->data, repl);
> -               if (!line)
> -                       goto fail;
> -               if (check_line(s, line) == STATUS_SUCCESS) {
> --                      if (!ustr_io_putfileline(&line, out))
> -+                      if (fprintf(out, "%s\n", line) < 0)
> -                               goto fail;
> -               }
> --              ustr_sc_free(&line);
> -+              free(line);
> -       }
> -       return STATUS_SUCCESS;
> -
> -       fail:
> --      ustr_sc_free(&line);
> -+      free(line);
> -       return STATUS_ERR;
> - }
> -
> -@@ -607,7 +606,7 @@ static int write_contexts(genhomedircon_settings_t
> *s, FILE *out,
> -                         semanage_list_t *tpl, const replacement_pair_t
> *repl,
> -                         const genhomedircon_user_entry_t *user)
> - {
> --      Ustr *line = USTR_NULL;
> -+      char *line, *temp;
> -       sepol_context_t *context = NULL;
> -       char *new_context_str = NULL;
> -
> -@@ -624,10 +623,10 @@ static int write_contexts(genhomedircon_settings_t
> *s, FILE *out,
> -
> -               if (strcmp(old_context_str, CONTEXT_NONE) == 0) {
> -                       if (check_line(s, line) == STATUS_SUCCESS &&
> --                          !ustr_io_putfileline(&line, out)) {
> -+                          fprintf(out, "%s\n", line) < 0) {
> -                               goto fail;
> -                       }
> --
> -+                      free(line);
> -                       continue;
> -               }
> -
> -@@ -653,25 +652,27 @@ static int write_contexts(genhomedircon_settings_t
> *s, FILE *out,
> -                       goto fail;
> -               }
> -
> --              if (!ustr_replace_cstr(&line, old_context_str,
> --                                     new_context_str, 1)) {
> -+              temp = semanage_str_replace(old_context_str,
> new_context_str,
> -+                                          line, 1);
> -+              if (!temp) {
> -                       goto fail;
> -               }
> -+              free(line);
> -+              line = temp;
> -
> -               if (check_line(s, line) == STATUS_SUCCESS) {
> --                      if (!ustr_io_putfileline(&line, out)) {
> -+                      if (fprintf(out, "%s\n", line) < 0)
> -                               goto fail;
> --                      }
> -               }
> -
> --              ustr_sc_free(&line);
> -+              free(line);
> -               sepol_context_free(context);
> -               free(new_context_str);
> -       }
> -
> -       return STATUS_SUCCESS;
> - fail:
> --      ustr_sc_free(&line);
> -+      free(line);
> -       sepol_context_free(context);
> -       free(new_context_str);
> -       return STATUS_ERR;
> -@@ -1284,20 +1285,19 @@ static int
> write_context_file(genhomedircon_settings_t * s, FILE * out)
> -               }
> -
> -               for (h = homedirs; h; h = h->next) {
> --                      Ustr *temp = ustr_dup_cstr(h->data);
> -+                      char *temp = NULL;
> -
> --                      if (!temp || !ustr_add_cstr(&temp, "/"
> FALLBACK_NAME)) {
> --                              ustr_sc_free(&temp);
> -+                      if (asprintf(&temp, "%s/%s", h->data,
> FALLBACK_NAME) < 0) {
> -                               retval = STATUS_ERR;
> -                               goto done;
> -                       }
> -
> -                       free(s->fallback->home);
> --                      s->fallback->home = (char*) ustr_cstr(temp);
> -+                      s->fallback->home = temp;
> -
> -                       if (write_home_dir_context(s, out,
> homedir_context_tpl,
> -                                                  s->fallback) !=
> STATUS_SUCCESS) {
> --                              ustr_sc_free(&temp);
> -+                              free(temp);
> -                               s->fallback->home = NULL;
> -                               retval = STATUS_ERR;
> -                               goto done;
> -@@ -1305,13 +1305,13 @@ static int
> write_context_file(genhomedircon_settings_t * s, FILE * out)
> -                       if (write_home_root_context(s, out,
> -                                                   homeroot_context_tpl,
> -                                                   h->data) !=
> STATUS_SUCCESS) {
> --                              ustr_sc_free(&temp);
> -+                              free(temp);
> -                               s->fallback->home = NULL;
> -                               retval = STATUS_ERR;
> -                               goto done;
> -                       }
> -
> --                      ustr_sc_free(&temp);
> -+                      free(temp);
> -                       s->fallback->home = NULL;
> -               }
> -       }
> ---
> -2.10.2
> -
> diff --git
> a/recipes-security/selinux/libsemanage/0004-libsemanage-remove-ustr-library-from-Makefiles-READM.patch
> b/recipes-security/selinux/libsemanage/0004-libsemanage-remove-ustr-library-from-Makefiles-READM.patch
> deleted file mode 100644
> index 1800493..0000000
> ---
> a/recipes-security/selinux/libsemanage/0004-libsemanage-remove-ustr-library-from-Makefiles-READM.patch
> +++ /dev/null
> @@ -1,61 +0,0 @@
> -From c7e55daa20f5659799aed47b819ad73e03d11e8f Mon Sep 17 00:00:00 2001
> -From: Nicolas Iooss <nicolas.iooss@m4x.org>
> -Date: Wed, 21 Dec 2016 19:21:04 +0100
> -Subject: [meta-selinux][PATCH 4/4] libsemanage: remove ustr library from
> Makefiles, README
> - and pkg-config
> -
> -This library is no longer used by libsemanage.
> -
> -Signed-off-by: Nicolas Iooss <nicolas.iooss@m4x.org>
> -(cherry picked from commit 920ee9ee18024c7714f1121e91854f38fa1eef73)
> -
> -Tweaked due to conditional audit patch and no README.
> ----
> - README                            | 2 +-
> - libsemanage/src/Makefile          | 2 +-
> - libsemanage/src/libsemanage.pc.in | 2 +-
> - libsemanage/tests/Makefile        | 2 +-
> - 4 files changed, 4 insertions(+), 4 deletions(-)
> -
> -diff --git a/libsemanage/src/Makefile b/libsemanage/src/Makefile
> -index 68aab72..83daf0f 100644
> ---- a/libsemanage/src/Makefile
> -+++ b/libsemanage/src/Makefile
> -@@ -91,7 +91,7 @@ $(LIBA): $(OBJS)
> -       $(RANLIB) $@
> -
> - $(LIBSO): $(LOBJS)
> --      $(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol $(LIBAUDIT)
> -lselinux -lbz2 -lustr -L$(LIBDIR)
> -Wl,-soname,$(LIBSO),--version-script=libsemanage.map,-z,defs
> -+      $(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol $(LIBAUDIT)
> -lselinux -lbz2 -L$(LIBDIR)
> -Wl,-soname,$(LIBSO),--version-script=libsemanage.map,-z,defs
> -       ln -sf $@ $(TARGET)
> -
> - $(LIBPC): $(LIBPC).in ../VERSION
> -diff --git a/libsemanage/src/libsemanage.pc.in b/libsemanage/src/
> libsemanage.pc.in
> -index 81e1805..d3eaa06 100644
> ---- a/libsemanage/src/libsemanage.pc.in
> -+++ b/libsemanage/src/libsemanage.pc.in
> -@@ -7,7 +7,7 @@ Name: libsemanage
> - Description: SELinux management library
> - Version: @VERSION@
> - URL: http://userspace.selinuxproject.org/
> --Requires.private: libselinux libsepol ustr
> -+Requires.private: libselinux libsepol
> - Libs: -L${libdir} -lsemanage
> - Libs.private: -lbz2
> - Cflags: -I${includedir}
> -diff --git a/libsemanage/tests/Makefile b/libsemanage/tests/Makefile
> -index 4b81fed..56285b3 100644
> ---- a/libsemanage/tests/Makefile
> -+++ b/libsemanage/tests/Makefile
> -@@ -12,7 +12,7 @@ LIBS = ../src/libsemanage.a
> ../../libselinux/src/libselinux.a ../../libsepol/src
> -       LIBAUDIT = -laudit
> - endif
> -
> --LDFLAGS += -lcunit -lustr -lbz2 $(LIBAUDIT)
> -+LDFLAGS += -lcunit -lbz2 $(LIBAUDIT)
> - OBJECTS = $(SOURCES:.c=.o)
> -
> - all: $(EXECUTABLE)
> ---
> -2.10.2
> -
> diff --git
> a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
> b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
> index d727acf..91efe81 100644
> ---
> a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
> +++
> b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
> @@ -7,16 +7,16 @@ Upstream-Status: Pending
>
>  Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>  ---
> - src/Makefile        |   10 +++++++++-
> - src/seusers_local.c |   13 +++++++++++++
> - tests/Makefile      |   10 +++++++++-
> + src/Makefile        | 10 +++++++++-
> + src/seusers_local.c | 13 +++++++++++++
> + tests/Makefile      | 10 +++++++++-
>   3 files changed, 31 insertions(+), 2 deletions(-)
>
> -Index: libsemanage-2.5/src/Makefile
> -===================================================================
> ---- libsemanage-2.5.orig/src/Makefile  2016-02-25 13:20:30.867978414 -0500
> -+++ libsemanage-2.5/src/Makefile       2016-02-25 13:20:30.859978414 -0500
> -@@ -28,6 +28,14 @@
> +diff --git a/src/Makefile b/src/Makefile
> +index fdb178f..43e1266 100644
> +--- a/src/Makefile
> ++++ b/src/Makefile
> +@@ -29,6 +29,14 @@ ifeq ($(DEBUG),1)
>         export LDFLAGS = -g
>   endif
>
> @@ -31,20 +31,20 @@ Index: libsemanage-2.5/src/Makefile
>   LEX = flex
>   LFLAGS = -s
>   YACC = bison
> -@@ -92,7 +100,7 @@
> +@@ -91,7 +99,7 @@ $(LIBA): $(OBJS)
>         $(RANLIB) $@
>
>   $(LIBSO): $(LOBJS)
> --      $(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol -laudit
> -lselinux -lbz2 -lustr -L$(LIBDIR)
> -Wl,-soname,$(LIBSO),--version-script=libsemanage.map,-z,defs
> -+      $(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol $(LIBAUDIT)
> -lselinux -lbz2 -lustr -L$(LIBDIR)
> -Wl,-soname,$(LIBSO),--version-script=libsemanage.map,-z,defs
> +-      $(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol -laudit
> -lselinux -lbz2
> -Wl,-soname,$(LIBSO),--version-script=libsemanage.map,-z,defs
> ++      $(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol $(LIBAUDIT)
> -lselinux -lbz2
> -Wl,-soname,$(LIBSO),--version-script=libsemanage.map,-z,defs
>         ln -sf $@ $(TARGET)
>
>   $(LIBPC): $(LIBPC).in ../VERSION
> -Index: libsemanage-2.5/src/seusers_local.c
> -===================================================================
> ---- libsemanage-2.5.orig/src/seusers_local.c   2016-02-25
> 13:20:30.867978414 -0500
> -+++ libsemanage-2.5/src/seusers_local.c        2016-02-25
> 13:20:30.863978414 -0500
> -@@ -8,7 +8,11 @@
> +diff --git a/src/seusers_local.c b/src/seusers_local.c
> +index 42c3a8b..9ee31e2 100644
> +--- a/src/seusers_local.c
> ++++ b/src/seusers_local.c
> +@@ -8,7 +8,11 @@ typedef struct semanage_seuser record_t;
>
>   #include <sepol/policydb.h>
>   #include <sepol/context.h>
> @@ -56,7 +56,7 @@ Index: libsemanage-2.5/src/seusers_local.c
>   #include <errno.h>
>   #include "user_internal.h"
>   #include "seuser_internal.h"
> -@@ -51,6 +55,7 @@
> +@@ -51,6 +55,7 @@ static char *semanage_user_roles(semanage_handle_t *
> handle, const char *sename)
>         return roles;
>   }
>
> @@ -64,7 +64,7 @@ Index: libsemanage-2.5/src/seusers_local.c
>   static int semanage_seuser_audit(semanage_handle_t * handle,
>                           const semanage_seuser_t * seuser,
>                           const semanage_seuser_t * previous,
> -@@ -114,6 +119,7 @@
> +@@ -114,6 +119,7 @@ err:
>         free(proles);
>         return rc;
>   }
> @@ -72,7 +72,7 @@ Index: libsemanage-2.5/src/seusers_local.c
>
>   int semanage_seuser_modify_local(semanage_handle_t * handle,
>                                  const semanage_seuser_key_t * key,
> -@@ -158,8 +164,11 @@
> +@@ -158,8 +164,11 @@ int semanage_seuser_modify_local(semanage_handle_t *
> handle,
>         (void) semanage_seuser_query(handle, key, &previous);
>         handle->msg_callback = callback;
>         rc = dbase_modify(handle, dconfig, key, new);
> @@ -84,7 +84,7 @@ Index: libsemanage-2.5/src/seusers_local.c
>   err:
>         if (previous)
>                 semanage_seuser_free(previous);
> -@@ -175,8 +184,12 @@
> +@@ -175,8 +184,12 @@ int semanage_seuser_del_local(semanage_handle_t *
> handle,
>         dbase_config_t *dconfig = semanage_seuser_dbase_local(handle);
>         rc = dbase_del(handle, dconfig, key);
>         semanage_seuser_query(handle, key, &seuser);
> @@ -97,15 +97,14 @@ Index: libsemanage-2.5/src/seusers_local.c
>         if (seuser)
>                 semanage_seuser_free(seuser);
>         return rc;
> -Index: libsemanage-2.5/tests/Makefile
> -===================================================================
> ---- libsemanage-2.5.orig/tests/Makefile        2016-02-25
> 13:20:30.867978414 -0500
> -+++ libsemanage-2.5/tests/Makefile     2016-02-25 13:22:05.171978120 -0500
> -@@ -13,7 +13,15 @@
> - CC = gcc
> - CFLAGS += -g -O0 -Wall -W -Wundef -Wmissing-noreturn
> -Wmissing-format-attribute -Wno-unused-parameter
> - INCLUDE = -I$(TESTSRC) -I$(TESTSRC)/../include
> --LDFLAGS += -lcunit -lustr -lbz2 -laudit
> +diff --git a/tests/Makefile b/tests/Makefile
> +index 2ef8d30..50d582a 100644
> +--- a/tests/Makefile
> ++++ b/tests/Makefile
> +@@ -6,10 +6,18 @@ SOURCES = $(sort $(wildcard *.c))
> +
> +
> ###########################################################################
> +
>  +DISABLE_AUDIT ?= n
>  +ifeq ($(DISABLE_AUDIT),y)
>  +      LIBAUDIT =
> @@ -114,7 +113,14 @@ Index: libsemanage-2.5/tests/Makefile
>  +      LIBAUDIT = -laudit
>  +endif
>  +
> -+LDFLAGS += -lcunit -lustr -lbz2 $(LIBAUDIT)
> + EXECUTABLE = libsemanage-tests
> + CFLAGS += -g -O0 -Wall -W -Wundef -Wmissing-noreturn
> -Wmissing-format-attribute -Wno-unused-parameter
> + override CFLAGS += -I../src -I../include
> +-override LDLIBS += -lcunit -lbz2 -laudit -lselinux -lsepol
> ++override LDLIBS += -lcunit -lbz2 $(LIBAUDIT) -lselinux -lsepol
> +
>   OBJECTS = $(SOURCES:.c=.o)
>
> - all: $(EXECUTABLE)
> +--
> +2.13.0
> +
> diff --git
> a/recipes-security/selinux/libsemanage/libsemanage-fix-path-len-limit.patch
> b/recipes-security/selinux/libsemanage/libsemanage-fix-path-len-limit.patch
> deleted file mode 100644
> index c98f3fc..0000000
> ---
> a/recipes-security/selinux/libsemanage/libsemanage-fix-path-len-limit.patch
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -Subject: [meta-selinux][PATCH] libsemanage: fix path length limit
> -
> -semanage_remove_directory uses NAME_MAX(255) as the max length of
> -file pathes, this will cause failures when the path length>255.
> -
> -Upstream-Status: pending
> -
> -Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
> ----
> - src/semanage_store.c |    2 +-
> - 1 file changed, 1 insertion(+), 1 deletion(-)
> -
> -diff --git a/src/semanage_store.c b/src/semanage_store.c
> -index 3fd4996..251a2d6 100644
> ---- a/src/semanage_store.c
> -+++ b/src/semanage_store.c
> -@@ -580,7 +580,7 @@ int semanage_remove_directory(const char *path)
> -               return -1;
> -       }
> -       for (i = 0; i < num_entries; i++) {
> --              char s[NAME_MAX];
> -+              char s[PATH_MAX];
> -               struct stat buf;
> -               snprintf(s, sizeof(s), "%s/%s", path, namelist[i]->d_name);
> -               if (stat(s, &buf) == -1) {
> ---
> -1.7.9.5
> -
> diff --git a/recipes-security/selinux/libsemanage_2.6.bb
> b/recipes-security/selinux/libsemanage_2.7.bb
> similarity index 50%
> rename from recipes-security/selinux/libsemanage_2.6.bb
> rename to recipes-security/selinux/libsemanage_2.7.bb
> index 5e24c9d..d7b5312 100644
> --- a/recipes-security/selinux/libsemanage_2.6.bb
> +++ b/recipes-security/selinux/libsemanage_2.7.bb
> @@ -1,23 +1,18 @@
> -include selinux_20161014.inc
> +include selinux_20170804.inc
>  include ${BPN}.inc
>
>  LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
>
> -SRC_URI[md5sum] = "666a48c4058c07f2b07ede9eaf210c5f"
> -SRC_URI[sha256sum] =
> "4f81541047290b751f2ffb926fcd381c186f22db18d9fe671b0b4a6a54e8cfce"
> +SRC_URI[md5sum] = "a6b5c451fbe45ff9e3e0e65f2db0ae1d"
> +SRC_URI[sha256sum] =
> "07e9477714ce6a4557a1fe924ea4cb06501b62d0fa0e3c0dc32a2cf47cb8d476"
>
>  SRC_URI += "\
>         file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
> -       file://libsemanage-fix-path-len-limit.patch \
>         file://libsemanage-fix-path-nologin.patch \
>         file://libsemanage-drop-Wno-unused-but-set-variable.patch \
>
> file://libsemanage-define-FD_CLOEXEC-as-necessary.patch;striplevel=2 \
>         file://libsemanage-allow-to-disable-audit-support.patch \
>         file://libsemanage-disable-expand-check-on-policy-load.patch \
>         file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
> -
>  file://0001-libsemanage-simplify-string-utilities-functions.patch;striplevel=2
> \
> -
>  file://0002-libsemanage-add-semanage_str_replace-utility-functio.patch;striplevel=2
> \
> -
>  file://0003-libsemanage-genhomedircon-drop-ustr-dependency.patch;striplevel=2
> \
> -
>  file://0004-libsemanage-remove-ustr-library-from-Makefiles-READM.patch;striplevel=2
> \
>         "
>  FILES_${PN} += "/usr/libexec"
> --
> 2.13.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f4030435b5b0c56a390558fbef90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,<br><br><div dir=3D"auto">I can&#39;t apply this patch on top of th=
e master branch. Which revision did you make the patches?</div><div dir=3D"=
auto"><br></div><div dir=3D"auto">Best Regards,</div><div dir=3D"auto">Chan=
ho Park</div><br><div class=3D"gmail_quote"><div>On Tue, 5 Sep 2017 at 3:05=
 PM &lt;<a href=3D"mailto:wenzong.fan@windriver.com">wenzong.fan@windriver.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">From: Wenzong Fa=
n &lt;<a href=3D"mailto:wenzong.fan@windriver.com" target=3D"_blank">wenzon=
g.fan@windriver.com</a>&gt;<br>
<br>
Remove patches that included by new version:<br>
=C2=A0 - 0001-libsemanage-simplify-string-utilities-functions.patch<br>
=C2=A0 - 0002-libsemanage-add-semanage_str_replace-utility-functio.patch<br=
>
=C2=A0 - 0003-libsemanage-genhomedircon-drop-ustr-dependency.patch<br>
=C2=A0 - 0004-libsemanage-remove-ustr-library-from-Makefiles-READM.patch<br=
>
=C2=A0 - libsemanage-fix-path-len-limit.patch<br>
<br>
Rebase patch:<br>
=C2=A0 - libsemanage-allow-to-disable-audit-support.patch<br>
<br>
Set PYCEXT and PYSITEDIR to generate the _semanage.so and install it<br>
to ${libdir}/python${PYTHON_BASEVERSION}/site-packages.<br>
<br>
Signed-off-by: Wenzong Fan &lt;<a href=3D"mailto:wenzong.fan@windriver.com"=
 target=3D"_blank">wenzong.fan@windriver.com</a>&gt;<br>
---<br>
=C2=A0recipes-security/selinux/libsemanage.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0...anage-simplify-string-utilities-functions.patch | 115 --------<br>
=C2=A0...-add-semanage_str_replace-utility-functio.patch | 164 -----------<=
br>
=C2=A0...manage-genhomedircon-drop-ustr-dependency.patch | 323 ------------=
---------<br>
=C2=A0...-remove-ustr-library-from-Makefiles-READM.patch |=C2=A0 61 ----<br=
>
=C2=A0...ibsemanage-allow-to-disable-audit-support.patch |=C2=A0 68 +++--<b=
r>
=C2=A0.../libsemanage-fix-path-len-limit.patch=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 28 --<br>
=C2=A0.../{<a href=3D"http://libsemanage_2.6.bb" rel=3D"noreferrer" target=
=3D"_blank">libsemanage_2.6.bb</a> =3D&gt; <a href=3D"http://libsemanage_2.=
7.bb" rel=3D"noreferrer" target=3D"_blank">libsemanage_2.7.bb</a>}=C2=A0 =
=C2=A0 =C2=A0|=C2=A0 11 +-<br>
=C2=A08 files changed, 42 insertions(+), 730 deletions(-)<br>
=C2=A0delete mode 100644 recipes-security/selinux/libsemanage/0001-libseman=
age-simplify-string-utilities-functions.patch<br>
=C2=A0delete mode 100644 recipes-security/selinux/libsemanage/0002-libseman=
age-add-semanage_str_replace-utility-functio.patch<br>
=C2=A0delete mode 100644 recipes-security/selinux/libsemanage/0003-libseman=
age-genhomedircon-drop-ustr-dependency.patch<br>
=C2=A0delete mode 100644 recipes-security/selinux/libsemanage/0004-libseman=
age-remove-ustr-library-from-Makefiles-READM.patch<br>
=C2=A0delete mode 100644 recipes-security/selinux/libsemanage/libsemanage-f=
ix-path-len-limit.patch<br>
=C2=A0rename recipes-security/selinux/{<a href=3D"http://libsemanage_2.6.bb=
" rel=3D"noreferrer" target=3D"_blank">libsemanage_2.6.bb</a> =3D&gt; <a hr=
ef=3D"http://libsemanage_2.7.bb" rel=3D"noreferrer" target=3D"_blank">libse=
manage_2.7.bb</a>} (50%)<br>
<br>
diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/se=
linux/libsemanage.inc<br>
index 504101d..9b238c8 100644<br>
--- a/recipes-security/selinux/libsemanage.inc<br>
+++ b/recipes-security/selinux/libsemanage.inc<br>
@@ -40,6 +40,8 @@ do_install() {<br>
<br>
=C2=A0 =C2=A0 =C2=A0oe_runmake install-pywrap swigify \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DESTDIR=3D${D} \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PYCEXT=3D&#39;.so&#39; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PYSITEDIR=3D&#39;${D}${libdir}/p=
ython${PYTHON_BASEVERSION}/site-packages&#39; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PYLIBVER=3D&#39;python${PYT=
HON_BASEVERSION}&#39; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PYLIBDIR=3D&#39;${D}/${libd=
ir}/$(PYLIBVER)&#39;<br>
<br>
diff --git a/recipes-security/selinux/libsemanage/0001-libsemanage-simplify=
-string-utilities-functions.patch b/recipes-security/selinux/libsemanage/00=
01-libsemanage-simplify-string-utilities-functions.patch<br>
deleted file mode 100644<br>
index fd478d0..0000000<br>
--- a/recipes-security/selinux/libsemanage/0001-libsemanage-simplify-string=
-utilities-functions.patch<br>
+++ /dev/null<br>
@@ -1,115 +0,0 @@<br>
-From 514a5df959ea0e13db4e87f73c2ac5edcceebd52 Mon Sep 17 00:00:00 2001<br>
-From: Nicolas Iooss &lt;<a href=3D"mailto:nicolas.iooss@m4x.org" target=3D=
"_blank">nicolas.iooss@m4x.org</a>&gt;<br>
-Date: Wed, 21 Dec 2016 19:21:01 +0100<br>
-Subject: [meta-selinux][PATCH 1/4] libsemanage: simplify string utilities =
functions<br>
-<br>
-Use string functions from C standard library instead of ustr. This makes<b=
r>
-the code simpler and make utilities.c no longer depend on ustr library.<br=
>
-<br>
-This changes how semanage_split() behaves when delim is not empty (NULL<br=
>
-or &quot;&quot;) and the input string contains several successive delimite=
rs:<br>
-semanage_split(&quot;foo::::bar&quot;, &quot;:&quot;) returned &quot;bar&q=
uot; and now returns &quot;:bar&quot;.<br>
-This would not have any impact in the current code as semanage_split()<br>
-is only called with delim=3D&quot;=3D&quot; (through semanage_findval(), i=
n<br>
-libsemanage/src/genhomedircon.c), in order to split a &quot;key=3Dvalue&qu=
ot;<br>
-statement.<br>
-<br>
-Signed-off-by: Nicolas Iooss &lt;<a href=3D"mailto:nicolas.iooss@m4x.org" =
target=3D"_blank">nicolas.iooss@m4x.org</a>&gt;<br>
-(cherry picked from commit a228bb3736c5957d41ad9e01eb1283fc6883a6e5)<br>
----<br>
- libsemanage/src/utilities.c | 59 ++++++++++------------------------------=
-----<br>
- 1 file changed, 13 insertions(+), 46 deletions(-)<br>
-<br>
-diff --git a/libsemanage/src/utilities.c b/libsemanage/src/utilities.c<br>
-index f48ffa4..fa86cc7 100644<br>
---- a/libsemanage/src/utilities.c<br>
-+++ b/libsemanage/src/utilities.c<br>
-@@ -26,7 +26,6 @@<br>
- #include &lt;string.h&gt;<br>
- #include &lt;sys/types.h&gt;<br>
- #include &lt;assert.h&gt;<br>
--#include &lt;ustr.h&gt;<br>
-<br>
- #define TRUE 1<br>
- #define FALSE 0<br>
-@@ -74,64 +73,32 @@ char *semanage_split_on_space(const char *str)<br>
- {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0/* as per the man page, these are the isspace()=
 chars */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0const char *seps =3D &quot;\f\n\r\t\v &quot;;<b=
r>
--=C2=A0 =C2=A0 =C2=A0 size_t slen =3D strlen(seps);<br>
--=C2=A0 =C2=A0 =C2=A0 size_t off =3D 0, rside_len =3D 0;<br>
--=C2=A0 =C2=A0 =C2=A0 char *retval =3D NULL;<br>
--=C2=A0 =C2=A0 =C2=A0 Ustr *ustr =3D USTR_NULL, *temp =3D USTR_NULL;<br>
-+=C2=A0 =C2=A0 =C2=A0 size_t off =3D 0;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!str)<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto done;<br>
--=C2=A0 =C2=A0 =C2=A0 if (!(ustr =3D ustr_dup_cstr(str)))<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto done;<br>
--=C2=A0 =C2=A0 =C2=A0 temp =3D<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ustr_split_spn_chrs(ustr, &amp;off, se=
ps, slen, USTR_NULL,<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 USTR_FLAG_SPLIT_DEF);<br>
--=C2=A0 =C2=A0 =C2=A0 if (!temp)<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto done;<br>
--=C2=A0 =C2=A0 =C2=A0 /* throw away the left hand side */<br>
--=C2=A0 =C2=A0 =C2=A0 ustr_sc_free(&amp;temp);<br>
--<br>
--=C2=A0 =C2=A0 =C2=A0 rside_len =3D ustr_len(ustr) - off;<br>
--=C2=A0 =C2=A0 =C2=A0 temp =3D ustr_dup_subustr(ustr, off + 1, rside_len);=
<br>
--=C2=A0 =C2=A0 =C2=A0 if (!temp)<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto done;<br>
--=C2=A0 =C2=A0 =C2=A0 retval =3D strdup(ustr_cstr(temp));<br>
--=C2=A0 =C2=A0 =C2=A0 ustr_sc_free(&amp;temp);<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
-<br>
--=C2=A0 =C2=A0 =C2=A0 done:<br>
--=C2=A0 =C2=A0 =C2=A0 ustr_sc_free(&amp;ustr);<br>
--=C2=A0 =C2=A0 =C2=A0 return retval;<br>
-+=C2=A0 =C2=A0 =C2=A0 /* skip one token and the spaces before and after it=
 */<br>
-+=C2=A0 =C2=A0 =C2=A0 off =3D strspn(str, seps);<br>
-+=C2=A0 =C2=A0 =C2=A0 off +=3D strcspn(str + off, seps);<br>
-+=C2=A0 =C2=A0 =C2=A0 off +=3D strspn(str + off, seps);<br>
-+=C2=A0 =C2=A0 =C2=A0 return strdup(str + off);<br>
- }<br>
-<br>
- char *semanage_split(const char *str, const char *delim)<br>
- {<br>
--=C2=A0 =C2=A0 =C2=A0 Ustr *ustr =3D USTR_NULL, *temp =3D USTR_NULL;<br>
--=C2=A0 =C2=A0 =C2=A0 size_t off =3D 0, rside_len =3D 0;<br>
--=C2=A0 =C2=A0 =C2=A0 char *retval =3D NULL;<br>
-+=C2=A0 =C2=A0 =C2=A0 char *retval;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!str)<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto done;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!delim || !(*delim))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return semanage_spl=
it_on_space(str);<br>
--=C2=A0 =C2=A0 =C2=A0 ustr =3D ustr_dup_cstr(str);<br>
--=C2=A0 =C2=A0 =C2=A0 temp =3D<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ustr_split_cstr(ustr, &amp;off, delim,=
 USTR_NULL, USTR_FLAG_SPLIT_DEF);<br>
--=C2=A0 =C2=A0 =C2=A0 if (!temp)<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto done;<br>
--=C2=A0 =C2=A0 =C2=A0 /* throw away the left hand side */<br>
--=C2=A0 =C2=A0 =C2=A0 ustr_sc_free(&amp;temp);<br>
--<br>
--=C2=A0 =C2=A0 =C2=A0 rside_len =3D ustr_len(ustr) - off;<br>
-<br>
--=C2=A0 =C2=A0 =C2=A0 temp =3D ustr_dup_subustr(ustr, off + 1, rside_len);=
<br>
--=C2=A0 =C2=A0 =C2=A0 if (!temp)<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto done;<br>
--=C2=A0 =C2=A0 =C2=A0 retval =3D strdup(ustr_cstr(temp));<br>
--=C2=A0 =C2=A0 =C2=A0 ustr_sc_free(&amp;temp);<br>
-+=C2=A0 =C2=A0 =C2=A0 retval =3D strstr(str, delim);<br>
-+=C2=A0 =C2=A0 =C2=A0 if (retval =3D=3D NULL)<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
-<br>
--=C2=A0 =C2=A0 =C2=A0 done:<br>
--=C2=A0 =C2=A0 =C2=A0 ustr_sc_free(&amp;ustr);<br>
--=C2=A0 =C2=A0 =C2=A0 return retval;<br>
-+=C2=A0 =C2=A0 =C2=A0 return strdup(retval + strlen(delim));<br>
- }<br>
-<br>
- int semanage_list_push(semanage_list_t ** list, const char *data)<br>
---<br>
-2.10.2<br>
-<br>
diff --git a/recipes-security/selinux/libsemanage/0002-libsemanage-add-sema=
nage_str_replace-utility-functio.patch b/recipes-security/selinux/libsemana=
ge/0002-libsemanage-add-semanage_str_replace-utility-functio.patch<br>
deleted file mode 100644<br>
index ed32785..0000000<br>
--- a/recipes-security/selinux/libsemanage/0002-libsemanage-add-semanage_st=
r_replace-utility-functio.patch<br>
+++ /dev/null<br>
@@ -1,164 +0,0 @@<br>
-From de8b13baf3773b41367f265e7dd06c013816ba0a Mon Sep 17 00:00:00 2001<br>
-From: Nicolas Iooss &lt;<a href=3D"mailto:nicolas.iooss@m4x.org" target=3D=
"_blank">nicolas.iooss@m4x.org</a>&gt;<br>
-Date: Wed, 21 Dec 2016 19:21:02 +0100<br>
-Subject: [meta-selinux][PATCH 2/4] libsemanage: add semanage_str_replace()=
 utility function<br>
-<br>
-This function will be used in the next commit.<br>
-<br>
-Signed-off-by: Nicolas Iooss &lt;<a href=3D"mailto:nicolas.iooss@m4x.org" =
target=3D"_blank">nicolas.iooss@m4x.org</a>&gt;<br>
-(cherry picked from commit 57a3b1b4b0a50a1d14f825d2933339063ced4fec)<br>
----<br>
- libsemanage/src/utilities.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 55 +++++++++++++=
+++++++++++++++++++++++++<br>
- libsemanage/src/utilities.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 10 +++++++<br>
- libsemanage/tests/test_utilities.c | 34 +++++++++++++++++++++++<br>
- 3 files changed, 99 insertions(+)<br>
-<br>
-diff --git a/libsemanage/src/utilities.c b/libsemanage/src/utilities.c<br>
-index fa86cc7..0d50d99 100644<br>
---- a/libsemanage/src/utilities.c<br>
-+++ b/libsemanage/src/utilities.c<br>
-@@ -230,6 +230,61 @@ void semanage_rtrim(char *str, char trim_to)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
- }<br>
-<br>
-+char *semanage_str_replace(const char *search, const char *replace,<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0const char *src, size_t lim)<br>
-+{<br>
-+=C2=A0 =C2=A0 =C2=A0 size_t count =3D 0, slen, rlen, newsize;<br>
-+=C2=A0 =C2=A0 =C2=A0 char *p, *pres, *result;<br>
-+=C2=A0 =C2=A0 =C2=A0 const char *psrc;<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 slen =3D strlen(search);<br>
-+=C2=A0 =C2=A0 =C2=A0 rlen =3D strlen(replace);<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 /* Do not support empty search strings */<br>
-+=C2=A0 =C2=A0 =C2=A0 if (slen =3D=3D 0)<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 /* Count the occurences of search in src and compute=
 the new size */<br>
-+=C2=A0 =C2=A0 =C2=A0 for (p =3D strstr(src, search); p !=3D NULL; p =3D s=
trstr(p + slen, search)) {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 count++;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (lim &amp;&amp; count=
 &gt;=3D lim)<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 break;<br>
-+=C2=A0 =C2=A0 =C2=A0 }<br>
-+=C2=A0 =C2=A0 =C2=A0 if (!count)<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return strdup(src);<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 /* Allocate the result string */<br>
-+=C2=A0 =C2=A0 =C2=A0 newsize =3D strlen(src) + 1 + count * (rlen - slen);=
<br>
-+=C2=A0 =C2=A0 =C2=A0 result =3D malloc(newsize);<br>
-+=C2=A0 =C2=A0 =C2=A0 if (!result)<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 /* Fill the result */<br>
-+=C2=A0 =C2=A0 =C2=A0 psrc =3D src;<br>
-+=C2=A0 =C2=A0 =C2=A0 pres =3D result;<br>
-+=C2=A0 =C2=A0 =C2=A0 for (p =3D strstr(src, search); p !=3D NULL; p =3D s=
trstr(psrc, search)) {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Copy the part which h=
as not been modified */<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (p !=3D psrc) {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 size_t length =3D (size_t)(p - psrc);<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 memcpy(pres, psrc, length);<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 pres +=3D length;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Copy the replacement =
part */<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rlen !=3D 0) {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 memcpy(pres, replace, rlen);<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 pres +=3D rlen;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 psrc =3D p + slen;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 count--;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!count)<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 break;<br>
-+=C2=A0 =C2=A0 =C2=A0 }<br>
-+=C2=A0 =C2=A0 =C2=A0 /* Copy the last part, after doing a sanity check */=
<br>
-+=C2=A0 =C2=A0 =C2=A0 assert(pres + strlen(psrc) + 1 =3D=3D result + newsi=
ze);<br>
-+=C2=A0 =C2=A0 =C2=A0 strcpy(pres, psrc);<br>
-+=C2=A0 =C2=A0 =C2=A0 return result;<br>
-+}<br>
-+<br>
- /* list_addafter_controlmem does *NOT* duplicate the data argument<br>
-=C2=A0 * use at your own risk, I am building a list out of malloc&#39;d me=
mory and<br>
-=C2=A0 * it is only going to get stored into this list, thus when I destro=
y it<br>
-diff --git a/libsemanage/src/utilities.h b/libsemanage/src/utilities.h<br>
-index 5fa15ef..f2ff31f 100644<br>
---- a/libsemanage/src/utilities.h<br>
-+++ b/libsemanage/src/utilities.h<br>
-@@ -116,6 +116,16 @@ int semanage_str_count(char *data, char what);<br>
- void semanage_rtrim(char *str, char trim_to);<br>
-<br>
- /**<br>
-+ * @param=C2=A0 =C2=A0 =C2=A0 value being searched for<br>
-+ * @param=C2=A0 =C2=A0 =C2=A0 replacement value that replaces found searc=
h values<br>
-+ * @param=C2=A0 =C2=A0 =C2=A0 string being searched and replaced on<br>
-+ * @param=C2=A0 =C2=A0 =C2=A0 maximum number of value occurences (zero fo=
r unlimited)<br>
-+ * @return=C2=A0 =C2=A0 =C2=A0newly-allocated string with the replaced va=
lues<br>
-+ */<br>
-+char *semanage_str_replace(const char *search, const char *replace,<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0const char *src, size_t lim);<br>
-+<br>
-+/**<br>
-=C2=A0 * @param data=C2=A0 =C2=A0 some string<br>
-=C2=A0 * @return=C2=A0 modifies the string such that the first whitespace =
char becomes<br>
-=C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;\0&#39;, ending the string.<br>
-diff --git a/libsemanage/tests/test_utilities.c b/libsemanage/tests/test_u=
tilities.c<br>
-index 32cc33c..cdfed0c 100644<br>
---- a/libsemanage/tests/test_utilities.c<br>
-+++ b/libsemanage/tests/test_utilities.c<br>
-@@ -40,6 +40,7 @@ void test_semanage_split(void);<br>
- void test_semanage_list(void);<br>
- void test_semanage_str_count(void);<br>
- void test_semanage_rtrim(void);<br>
-+void test_semanage_str_replace(void);<br>
- void test_semanage_findval(void);<br>
- void test_slurp_file_filter(void);<br>
-<br>
-@@ -101,6 +102,10 @@ int semanage_utilities_add_tests(CU_pSuite suite)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (NULL =3D=3D CU_add_test(suite, &quot;semana=
ge_rtrim&quot;, test_semanage_rtrim)) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto err;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-+=C2=A0 =C2=A0 =C2=A0 if (NULL =3D=3D CU_add_test(suite, &quot;semanage_st=
r_replace&quot;,<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 test_semanage_str_replace)) {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto err;<br>
-+=C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (NULL =3D=3D CU_add_test(suite, &quot;semana=
ge_findval&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0test_semanage_findval)) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto err;<br>
-@@ -244,6 +249,35 @@ void test_semanage_rtrim(void)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0CU_ASSERT_STRING_EQUAL(str, &quot;/blah/foo/bar=
&quot;);<br>
- }<br>
-<br>
-+void test_semanage_str_replace(void)<br>
-+{<br>
-+=C2=A0 =C2=A0 =C2=A0 const char *test_str =3D &quot;Hello, I am %{USERNAM=
E} and my id is %{USERID}&quot;;<br>
-+=C2=A0 =C2=A0 =C2=A0 char *str1, *str2;<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 str1 =3D semanage_str_replace(&quot;%{USERNAME}&quot=
;, &quot;root&quot;, test_str, 0);<br>
-+=C2=A0 =C2=A0 =C2=A0 CU_ASSERT_STRING_EQUAL(str1, &quot;Hello, I am root =
and my id is %{USERID}&quot;);<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 str2 =3D semanage_str_replace(&quot;%{USERID}&quot;,=
 &quot;0&quot;, str1, 1);<br>
-+=C2=A0 =C2=A0 =C2=A0 CU_ASSERT_STRING_EQUAL(str2, &quot;Hello, I am root =
and my id is 0&quot;);<br>
-+=C2=A0 =C2=A0 =C2=A0 free(str1);<br>
-+=C2=A0 =C2=A0 =C2=A0 free(str2);<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 str1 =3D semanage_str_replace(&quot;:(&quot;, &quot;=
;)&quot;, &quot;Test :( :) ! :(:(:))(:(&quot;, 0);<br>
-+=C2=A0 =C2=A0 =C2=A0 CU_ASSERT_STRING_EQUAL(str1, &quot;Test ;) :) ! ;);)=
:))(;)&quot;);<br>
-+=C2=A0 =C2=A0 =C2=A0 free(str1);<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 str1 =3D semanage_str_replace(&quot;:(&quot;, &quot;=
;)&quot;, &quot;Test :( :) ! :(:(:))(:(&quot;, 3);<br>
-+=C2=A0 =C2=A0 =C2=A0 CU_ASSERT_STRING_EQUAL(str1, &quot;Test ;) :) ! ;);)=
:))(:(&quot;);<br>
-+=C2=A0 =C2=A0 =C2=A0 free(str1);<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 str1 =3D semanage_str_replace(&quot;&quot;, &quot;em=
pty search string&quot;, &quot;test&quot;, 0);<br>
-+=C2=A0 =C2=A0 =C2=A0 CU_ASSERT_EQUAL(str1, NULL);<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 str1 =3D semanage_str_replace(&quot;a&quot;, &quot;&=
quot;, &quot;abracadabra&quot;, 0);<br>
-+=C2=A0 =C2=A0 =C2=A0 CU_ASSERT_STRING_EQUAL(str1, &quot;brcdbr&quot;);<br=
>
-+=C2=A0 =C2=A0 =C2=A0 free(str1);<br>
-+}<br>
-+<br>
- void test_semanage_findval(void)<br>
- {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0char *tok;<br>
---<br>
-2.10.2<br>
-<br>
diff --git a/recipes-security/selinux/libsemanage/0003-libsemanage-genhomed=
ircon-drop-ustr-dependency.patch b/recipes-security/selinux/libsemanage/000=
3-libsemanage-genhomedircon-drop-ustr-dependency.patch<br>
deleted file mode 100644<br>
index fde2349..0000000<br>
--- a/recipes-security/selinux/libsemanage/0003-libsemanage-genhomedircon-d=
rop-ustr-dependency.patch<br>
+++ /dev/null<br>
@@ -1,323 +0,0 @@<br>
-From e8dd31df2268013afb1e8dbe5e617b9c4e9e388e Mon Sep 17 00:00:00 2001<br>
-From: Nicolas Iooss &lt;<a href=3D"mailto:nicolas.iooss@m4x.org" target=3D=
"_blank">nicolas.iooss@m4x.org</a>&gt;<br>
-Date: Wed, 21 Dec 2016 19:21:03 +0100<br>
-Subject: [meta-selinux][PATCH 3/4] libsemanage: genhomedircon: drop ustr d=
ependency<br>
-<br>
-ustr library uses old (pre-C99) &quot;extern inline&quot; semantic. This m=
akes it<br>
-incompatible with recent versions of gcc and clang, which default to<br>
-C99 standard. Distributions have shipped patched versions of this<br>
-library to fix issues (e.g. Gentoo package uses this patch:<br>
-<a href=3D"https://gitweb.gentoo.org/repo/gentoo.git/tree/dev-libs/ustr/fi=
les/ustr-1.0.4-gcc_5-check.patch?id=3D7dea6f8820f36bf389e6315044bea7507553b=
ed0" rel=3D"noreferrer" target=3D"_blank">https://gitweb.gentoo.org/repo/ge=
ntoo.git/tree/dev-libs/ustr/files/ustr-1.0.4-gcc_5-check.patch?id=3D7dea6f8=
820f36bf389e6315044bea7507553bed0</a><br>
-) but there is no upstream solution to make ustr compatible with C99<br>
-standard.<br>
-<br>
-The git tree of ustr (<a href=3D"http://www.and.org/ustr/ustr.git" rel=3D"=
noreferrer" target=3D"_blank">http://www.and.org/ustr/ustr.git</a>) has not=
 been<br>
-updated since 2008 and the developer of this project did not reply to<br>
-emails.<br>
-<br>
-Therefore update genhomedircon implementation in order to no longer<br>
-rely on ustr library.<br>
-<br>
-Signed-off-by: Nicolas Iooss &lt;<a href=3D"mailto:nicolas.iooss@m4x.org" =
target=3D"_blank">nicolas.iooss@m4x.org</a>&gt;<br>
-(cherry picked from commit 300b8ad4235688171f2a91e7aeb14d0ee3561c13)<br>
----<br>
- libsemanage/src/genhomedircon.c | 154 ++++++++++++++++++++---------------=
-----<br>
- 1 file changed, 77 insertions(+), 77 deletions(-)<br>
-<br>
-diff --git a/libsemanage/src/genhomedircon.c b/libsemanage/src/genhomedirc=
on.c<br>
-index 6991fff..0f84aa3 100644<br>
---- a/libsemanage/src/genhomedircon.c<br>
-+++ b/libsemanage/src/genhomedircon.c<br>
-@@ -34,9 +34,9 @@<br>
-<br>
- #include &quot;utilities.h&quot;<br>
- #include &quot;genhomedircon.h&quot;<br>
--#include &lt;ustr.h&gt;<br>
-<br>
- #include &lt;assert.h&gt;<br>
-+#include &lt;ctype.h&gt;<br>
- #include &lt;limits.h&gt;<br>
- #include &lt;stdio.h&gt;<br>
- #include &lt;stdlib.h&gt;<br>
-@@ -239,46 +239,39 @@ static int fcontext_matches(const semanage_fcontext_=
t *fcontext, void *varg)<br>
- {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0const char *oexpr =3D semanage_fcontext_get_exp=
r(fcontext);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0fc_match_handle_t *handp =3D varg;<br>
--=C2=A0 =C2=A0 =C2=A0 struct Ustr *expr;<br>
-+=C2=A0 =C2=A0 =C2=A0 char *expr =3D NULL;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0regex_t re;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0int type, retval =3D -1;<br>
-+=C2=A0 =C2=A0 =C2=A0 size_t len;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Only match ALL or DIR */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0type =3D semanage_fcontext_get_type(fcontext);<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (type !=3D SEMANAGE_FCONTEXT_ALL &amp;&amp; =
type !=3D SEMANAGE_FCONTEXT_ALL)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
-<br>
--=C2=A0 =C2=A0 =C2=A0 /* Convert oexpr into a Ustr and anchor it at the be=
ginning */<br>
--=C2=A0 =C2=A0 =C2=A0 expr =3D ustr_dup_cstr(&quot;^&quot;);<br>
--=C2=A0 =C2=A0 =C2=A0 if (expr =3D=3D USTR_NULL)<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto done;<br>
--=C2=A0 =C2=A0 =C2=A0 if (!ustr_add_cstr(&amp;expr, oexpr))<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto done;<br>
--<br>
--=C2=A0 =C2=A0 =C2=A0 /* Strip off trailing &quot;.+&quot; or &quot;.*&quo=
t; */<br>
--=C2=A0 =C2=A0 =C2=A0 if (ustr_cmp_suffix_cstr_eq(expr, &quot;.+&quot;) ||=
<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ustr_cmp_suffix_cstr_eq(expr, &quot;.*=
&quot;)) {<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!ustr_del(&amp;expr,=
 2))<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 goto done;<br>
--=C2=A0 =C2=A0 =C2=A0 }<br>
--<br>
--=C2=A0 =C2=A0 =C2=A0 /* Strip off trailing &quot;(/.*)?&quot; */<br>
--=C2=A0 =C2=A0 =C2=A0 if (ustr_cmp_suffix_cstr_eq(expr, &quot;(/.*)?&quot;=
)) {<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!ustr_del(&amp;expr,=
 6))<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 goto done;<br>
--=C2=A0 =C2=A0 =C2=A0 }<br>
--<br>
--=C2=A0 =C2=A0 =C2=A0 if (ustr_cmp_suffix_cstr_eq(expr, &quot;/&quot;)) {<=
br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!ustr_del(&amp;expr,=
 1))<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 goto done;<br>
--=C2=A0 =C2=A0 =C2=A0 }<br>
--<br>
--=C2=A0 =C2=A0 =C2=A0 /* Append pattern to eat up trailing slashes */<br>
--=C2=A0 =C2=A0 =C2=A0 if (!ustr_add_cstr(&amp;expr, &quot;/*$&quot;))<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto done;<br>
-+=C2=A0 =C2=A0 =C2=A0 len =3D strlen(oexpr);<br>
-+=C2=A0 =C2=A0 =C2=A0 /* Define a macro to strip a literal string from the=
 end of oexpr */<br>
-+#define rstrip_oexpr_len(cstr, cstrlen) \<br>
-+=C2=A0 =C2=A0 =C2=A0 do { \<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (len &gt;=3D (cstrlen=
) &amp;&amp; !strncmp(oexpr + len - (cstrlen), (cstr), (cstrlen))) \<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 len -=3D (cstrlen); \<br>
-+=C2=A0 =C2=A0 =C2=A0 } while (0)<br>
-+#define rstrip_oexpr(cstr) rstrip_oexpr_len(cstr, sizeof(cstr) - 1)<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 rstrip_oexpr(&quot;.+&quot;);<br>
-+=C2=A0 =C2=A0 =C2=A0 rstrip_oexpr(&quot;.*&quot;);<br>
-+=C2=A0 =C2=A0 =C2=A0 rstrip_oexpr(&quot;(/.*)?&quot;);<br>
-+=C2=A0 =C2=A0 =C2=A0 rstrip_oexpr(&quot;/&quot;);<br>
-+<br>
-+#undef rstrip_oexpr_len<br>
-+#undef rstrip_oexpr<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 /* Anchor oexpr at the beginning and append pattern =
to eat up trailing slashes */<br>
-+=C2=A0 =C2=A0 =C2=A0 if (asprintf(&amp;expr, &quot;^%.*s/*$&quot;, (int)l=
en, oexpr) &lt; 0)<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -1;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Check dir against expr */<br>
--=C2=A0 =C2=A0 =C2=A0 if (regcomp(&amp;re, ustr_cstr(expr), REG_EXTENDED) =
!=3D 0)<br>
-+=C2=A0 =C2=A0 =C2=A0 if (regcomp(&amp;re, expr, REG_EXTENDED) !=3D 0)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto done;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (regexec(&amp;re, handp-&gt;dir, 0, NULL, 0)=
 =3D=3D 0)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0handp-&gt;matched =
=3D 1;<br>
-@@ -287,7 +280,7 @@ static int fcontext_matches(const semanage_fcontext_t =
*fcontext, void *varg)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0retval =3D 0;<br>
-<br>
- done:<br>
--=C2=A0 =C2=A0 =C2=A0 ustr_free(expr);<br>
-+=C2=A0 =C2=A0 =C2=A0 free(expr);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return retval;<br>
- }<br>
-@@ -523,44 +516,50 @@ static semanage_list_t *make_template(genhomedircon_=
settings_t * s,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return template_data;<br>
- }<br>
-<br>
--static Ustr *replace_all(const char *str, const replacement_pair_t * repl=
)<br>
-+static char *replace_all(const char *str, const replacement_pair_t * repl=
)<br>
- {<br>
--=C2=A0 =C2=A0 =C2=A0 Ustr *retval =3D USTR_NULL;<br>
-+=C2=A0 =C2=A0 =C2=A0 char *retval, *retval2;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0int i;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!str || !repl)<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto done;<br>
--=C2=A0 =C2=A0 =C2=A0 if (!(retval =3D ustr_dup_cstr(str)))<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto done;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return NULL;<br>
-<br>
--=C2=A0 =C2=A0 =C2=A0 for (i =3D 0; repl[i].search_for; i++) {<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ustr_replace_cstr(&amp;r=
etval, repl[i].search_for,<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 repl[i].replace_with, 0);<br>
-+=C2=A0 =C2=A0 =C2=A0 retval =3D strdup(str);<br>
-+=C2=A0 =C2=A0 =C2=A0 for (i =3D 0; retval !=3D NULL &amp;&amp; repl[i].se=
arch_for; i++) {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 retval2 =3D semanage_str=
_replace(repl[i].search_for,<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0repl[i].replace_with, retval, 0);<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 free(retval);<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 retval =3D retval2;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
--=C2=A0 =C2=A0 =C2=A0 if (ustr_enomem(retval))<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ustr_sc_free(&amp;retval=
);<br>
--<br>
--=C2=A0 =C2=A0 =C2=A0 done:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return retval;<br>
- }<br>
-<br>
--static const char * extract_context(Ustr *line)<br>
-+static const char *extract_context(const char *line)<br>
- {<br>
--=C2=A0 =C2=A0 =C2=A0 const char whitespace[] =3D &quot; \t\n&quot;;<br>
--=C2=A0 =C2=A0 =C2=A0 size_t off, len;<br>
--<br>
--=C2=A0 =C2=A0 =C2=A0 /* check for trailing whitespace */<br>
--=C2=A0 =C2=A0 =C2=A0 off =3D ustr_spn_chrs_rev(line, 0, whitespace, strle=
n(whitespace));<br>
--<br>
--=C2=A0 =C2=A0 =C2=A0 /* find the length of the last field in line */<br>
--=C2=A0 =C2=A0 =C2=A0 len =3D ustr_cspn_chrs_rev(line, off, whitespace, st=
rlen(whitespace));<br>
--<br>
--=C2=A0 =C2=A0 =C2=A0 if (len =3D=3D 0)<br>
-+=C2=A0 =C2=A0 =C2=A0 const char *p =3D line;<br>
-+=C2=A0 =C2=A0 =C2=A0 size_t off;<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 off =3D strlen(p);<br>
-+=C2=A0 =C2=A0 =C2=A0 p +=3D off;<br>
-+=C2=A0 =C2=A0 =C2=A0 /* consider trailing whitespaces */<br>
-+=C2=A0 =C2=A0 =C2=A0 while (off &gt; 0) {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 p--;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 off--;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!isspace(*p))<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 break;<br>
-+=C2=A0 =C2=A0 =C2=A0 }<br>
-+=C2=A0 =C2=A0 =C2=A0 if (off =3D=3D 0)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return NULL;<br>
--=C2=A0 =C2=A0 =C2=A0 return ustr_cstr(line) + ustr_len(line) - (len + off=
);<br>
-+<br>
-+=C2=A0 =C2=A0 =C2=A0 /* find the last field in line */<br>
-+=C2=A0 =C2=A0 =C2=A0 while (off &gt; 0 &amp;&amp; !isspace(*(p - 1))) {<b=
r>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 p--;<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 off--;<br>
-+=C2=A0 =C2=A0 =C2=A0 }<br>
-+=C2=A0 =C2=A0 =C2=A0 return p;<br>
- }<br>
-<br>
--static int check_line(genhomedircon_settings_t * s, Ustr *line)<br>
-+static int check_line(genhomedircon_settings_t * s, const char *line)<br>
- {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0sepol_context_t *ctx_record =3D NULL;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0const char *ctx_str;<br>
-@@ -584,22 +583,22 @@ static int write_replacements(genhomedircon_settings=
_t * s, FILE * out,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const semanage_list_t * tpl,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const replacement_pair_t *repl)<br>
- {<br>
--=C2=A0 =C2=A0 =C2=A0 Ustr *line =3D USTR_NULL;<br>
-+=C2=A0 =C2=A0 =C2=A0 char *line;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0for (; tpl; tpl =3D tpl-&gt;next) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0line =3D replace_al=
l(tpl-&gt;data, repl);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!line)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0goto fail;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (check_line(s, l=
ine) =3D=3D STATUS_SUCCESS) {<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if (!ustr_io_putfileline(&amp;line, out))<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if (fprintf(out, &quot;%s\n&quot;, line) &lt; 0)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto fail;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ustr_sc_free(&amp;line);=
<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 free(line);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return STATUS_SUCCESS;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0fail:<br>
--=C2=A0 =C2=A0 =C2=A0 ustr_sc_free(&amp;line);<br>
-+=C2=A0 =C2=A0 =C2=A0 free(line);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return STATUS_ERR;<br>
- }<br>
-<br>
-@@ -607,7 +606,7 @@ static int write_contexts(genhomedircon_settings_t *s,=
 FILE *out,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0semanage_list_t *tpl, const replacement_pair_t *repl,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0const genhomedircon_user_entry_t *user)<br>
- {<br>
--=C2=A0 =C2=A0 =C2=A0 Ustr *line =3D USTR_NULL;<br>
-+=C2=A0 =C2=A0 =C2=A0 char *line, *temp;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0sepol_context_t *context =3D NULL;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0char *new_context_str =3D NULL;<br>
-<br>
-@@ -624,10 +623,10 @@ static int write_contexts(genhomedircon_settings_t *=
s, FILE *out,<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (strcmp(old_cont=
ext_str, CONTEXT_NONE) =3D=3D 0) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (check_line(s, line) =3D=3D STATUS_SUCCESS &amp;&amp;<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 !ustr_io_putfileline(&amp;line, out)) {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 fprintf(out, &quot;%s\n&quot;, line) &lt; 0) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto fail;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0}<br>
--<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 free(line);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0continue;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-<br>
-@@ -653,25 +652,27 @@ static int write_contexts(genhomedircon_settings_t *=
s, FILE *out,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0goto fail;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!ustr_replace_cstr(&=
amp;line, old_context_str,<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0new_context_str,=
 1)) {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 temp =3D semanage_str_re=
place(old_context_str, new_context_str,<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 l=
ine, 1);<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!temp) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0goto fail;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 free(line);<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 line =3D temp;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (check_line(s, l=
ine) =3D=3D STATUS_SUCCESS) {<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if (!ustr_io_putfileline(&amp;line, out)) {<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if (fprintf(out, &quot;%s\n&quot;, line) &lt; 0)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto fail;<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ustr_sc_free(&amp;line);=
<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 free(line);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sepol_context_free(=
context);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0free(new_context_st=
r);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return STATUS_SUCCESS;<br>
- fail:<br>
--=C2=A0 =C2=A0 =C2=A0 ustr_sc_free(&amp;line);<br>
-+=C2=A0 =C2=A0 =C2=A0 free(line);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0sepol_context_free(context);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0free(new_context_str);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return STATUS_ERR;<br>
-@@ -1284,20 +1285,19 @@ static int write_context_file(genhomedircon_settin=
gs_t * s, FILE * out)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for (h =3D homedirs=
; h; h =3D h-&gt;next) {<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Ustr *temp =3D ustr_dup_cstr(h-&gt;data);<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 char *temp =3D NULL;<br>
-<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if (!temp || !ustr_add_cstr(&amp;temp, &quot;/&quot; FALLBACK_NAME)) {<=
br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ustr_sc_free(&amp;temp);<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if (asprintf(&amp;temp, &quot;%s/%s&quot;, h-&gt;data, FALLBACK_NAME) &=
lt; 0) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0retval =3D STATUS_ERR;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto done;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0}<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0free(s-&gt;fallback-&gt;home);<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 s-&gt;fallback-&gt;home =3D (char*) ustr_cstr(temp);<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 s-&gt;fallback-&gt;home =3D temp;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (write_home_dir_context(s, out, homedir_context_tpl,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 s-&gt;fallback) !=3D STATUS_SUCCESS) {<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ustr_sc_free(&amp;temp);<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 free(temp);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0s-&gt;fallback-&gt;home =3D NULL;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0retval =3D STATUS_ERR;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto done;<br>
-@@ -1305,13 +1305,13 @@ static int write_context_file(genhomedircon_settin=
gs_t * s, FILE * out)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (write_home_root_context(s, out,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0homeroot_context_tpl,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0h-&gt;data) !=3D STATUS_SUCCESS) {<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ustr_sc_free(&amp;temp);<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 free(temp);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0s-&gt;fallback-&gt;home =3D NULL;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0retval =3D STATUS_ERR;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto done;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0}<br>
-<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ustr_sc_free(&amp;temp);<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 free(temp);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0s-&gt;fallback-&gt;home =3D NULL;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
---<br>
-2.10.2<br>
-<br>
diff --git a/recipes-security/selinux/libsemanage/0004-libsemanage-remove-u=
str-library-from-Makefiles-READM.patch b/recipes-security/selinux/libsemana=
ge/0004-libsemanage-remove-ustr-library-from-Makefiles-READM.patch<br>
deleted file mode 100644<br>
index 1800493..0000000<br>
--- a/recipes-security/selinux/libsemanage/0004-libsemanage-remove-ustr-lib=
rary-from-Makefiles-READM.patch<br>
+++ /dev/null<br>
@@ -1,61 +0,0 @@<br>
-From c7e55daa20f5659799aed47b819ad73e03d11e8f Mon Sep 17 00:00:00 2001<br>
-From: Nicolas Iooss &lt;<a href=3D"mailto:nicolas.iooss@m4x.org" target=3D=
"_blank">nicolas.iooss@m4x.org</a>&gt;<br>
-Date: Wed, 21 Dec 2016 19:21:04 +0100<br>
-Subject: [meta-selinux][PATCH 4/4] libsemanage: remove ustr library from M=
akefiles, README<br>
- and pkg-config<br>
-<br>
-This library is no longer used by libsemanage.<br>
-<br>
-Signed-off-by: Nicolas Iooss &lt;<a href=3D"mailto:nicolas.iooss@m4x.org" =
target=3D"_blank">nicolas.iooss@m4x.org</a>&gt;<br>
-(cherry picked from commit 920ee9ee18024c7714f1121e91854f38fa1eef73)<br>
-<br>
-Tweaked due to conditional audit patch and no README.<br>
----<br>
- README=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
- libsemanage/src/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
- libsemanage/src/<a href=3D"http://libsemanage.pc.in" rel=3D"noreferrer" t=
arget=3D"_blank">libsemanage.pc.in</a> | 2 +-<br>
- libsemanage/tests/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
- 4 files changed, 4 insertions(+), 4 deletions(-)<br>
-<br>
-diff --git a/libsemanage/src/Makefile b/libsemanage/src/Makefile<br>
-index 68aab72..83daf0f 100644<br>
---- a/libsemanage/src/Makefile<br>
-+++ b/libsemanage/src/Makefile<br>
-@@ -91,7 +91,7 @@ $(LIBA): $(OBJS)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0$(RANLIB) $@<br>
-<br>
- $(LIBSO): $(LOBJS)<br>
--=C2=A0 =C2=A0 =C2=A0 $(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol =
$(LIBAUDIT) -lselinux -lbz2 -lustr -L$(LIBDIR) -Wl,-soname,$(LIBSO),--versi=
on-script=3Dlibsemanage.map,-z,defs<br>
-+=C2=A0 =C2=A0 =C2=A0 $(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol =
$(LIBAUDIT) -lselinux -lbz2 -L$(LIBDIR) -Wl,-soname,$(LIBSO),--version-scri=
pt=3Dlibsemanage.map,-z,defs<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf $@ $(TARGET)<br>
-<br>
- $(LIBPC): $(LIBPC).in ../VERSION<br>
-diff --git a/libsemanage/src/<a href=3D"http://libsemanage.pc.in" rel=3D"n=
oreferrer" target=3D"_blank">libsemanage.pc.in</a> b/libsemanage/src/<a hre=
f=3D"http://libsemanage.pc.in" rel=3D"noreferrer" target=3D"_blank">libsema=
nage.pc.in</a><br>
-index 81e1805..d3eaa06 100644<br>
---- a/libsemanage/src/<a href=3D"http://libsemanage.pc.in" rel=3D"noreferr=
er" target=3D"_blank">libsemanage.pc.in</a><br>
-+++ b/libsemanage/src/<a href=3D"http://libsemanage.pc.in" rel=3D"noreferr=
er" target=3D"_blank">libsemanage.pc.in</a><br>
-@@ -7,7 +7,7 @@ Name: libsemanage<br>
- Description: SELinux management library<br>
- Version: @VERSION@<br>
- URL: <a href=3D"http://userspace.selinuxproject.org/" rel=3D"noreferrer" =
target=3D"_blank">http://userspace.selinuxproject.org/</a><br>
--Requires.private: libselinux libsepol ustr<br>
-+Requires.private: libselinux libsepol<br>
- Libs: -L${libdir} -lsemanage<br>
- Libs.private: -lbz2<br>
- Cflags: -I${includedir}<br>
-diff --git a/libsemanage/tests/Makefile b/libsemanage/tests/Makefile<br>
-index 4b81fed..56285b3 100644<br>
---- a/libsemanage/tests/Makefile<br>
-+++ b/libsemanage/tests/Makefile<br>
-@@ -12,7 +12,7 @@ LIBS =3D ../src/libsemanage.a ../../libselinux/src/libse=
linux.a ../../libsepol/src<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0LIBAUDIT =3D -laudit<br>
- endif<br>
-<br>
--LDFLAGS +=3D -lcunit -lustr -lbz2 $(LIBAUDIT)<br>
-+LDFLAGS +=3D -lcunit -lbz2 $(LIBAUDIT)<br>
- OBJECTS =3D $(SOURCES:.c=3D.o)<br>
-<br>
- all: $(EXECUTABLE)<br>
---<br>
-2.10.2<br>
-<br>
diff --git a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disa=
ble-audit-support.patch b/recipes-security/selinux/libsemanage/libsemanage-=
allow-to-disable-audit-support.patch<br>
index d727acf..91efe81 100644<br>
--- a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-aud=
it-support.patch<br>
+++ b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-aud=
it-support.patch<br>
@@ -7,16 +7,16 @@ Upstream-Status: Pending<br>
<br>
=C2=A0Signed-off-by: Wenzong Fan &lt;<a href=3D"mailto:wenzong.fan@windrive=
r.com" target=3D"_blank">wenzong.fan@windriver.com</a>&gt;<br>
=C2=A0---<br>
- src/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A010 +++++++++-<br>
- src/seusers_local.c |=C2=A0 =C2=A013 +++++++++++++<br>
- tests/Makefile=C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A010 +++++++++-<br>
+ src/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 10 +++++++++-<br>
+ src/seusers_local.c | 13 +++++++++++++<br>
+ tests/Makefile=C2=A0 =C2=A0 =C2=A0 | 10 +++++++++-<br>
=C2=A0 3 files changed, 31 insertions(+), 2 deletions(-)<br>
<br>
-Index: libsemanage-2.5/src/Makefile<br>
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
---- libsemanage-2.5.orig/src/Makefile=C2=A0 2016-02-25 13:20:30.867978414 =
-0500<br>
-+++ libsemanage-2.5/src/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A02016-02-25 13:2=
0:30.859978414 -0500<br>
-@@ -28,6 +28,14 @@<br>
+diff --git a/src/Makefile b/src/Makefile<br>
+index fdb178f..43e1266 100644<br>
+--- a/src/Makefile<br>
++++ b/src/Makefile<br>
+@@ -29,6 +29,14 @@ ifeq ($(DEBUG),1)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 export LDFLAGS =3D -g<br>
=C2=A0 endif<br>
<br>
@@ -31,20 +31,20 @@ Index: libsemanage-2.5/src/Makefile<br>
=C2=A0 LEX =3D flex<br>
=C2=A0 LFLAGS =3D -s<br>
=C2=A0 YACC =3D bison<br>
-@@ -92,7 +100,7 @@<br>
+@@ -91,7 +99,7 @@ $(LIBA): $(OBJS)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(RANLIB) $@<br>
<br>
=C2=A0 $(LIBSO): $(LOBJS)<br>
--=C2=A0 =C2=A0 =C2=A0 $(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol =
-laudit -lselinux -lbz2 -lustr -L$(LIBDIR) -Wl,-soname,$(LIBSO),--version-s=
cript=3Dlibsemanage.map,-z,defs<br>
-+=C2=A0 =C2=A0 =C2=A0 $(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol =
$(LIBAUDIT) -lselinux -lbz2 -lustr -L$(LIBDIR) -Wl,-soname,$(LIBSO),--versi=
on-script=3Dlibsemanage.map,-z,defs<br>
+-=C2=A0 =C2=A0 =C2=A0 $(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol =
-laudit -lselinux -lbz2 -Wl,-soname,$(LIBSO),--version-script=3Dlibsemanage=
.map,-z,defs<br>
++=C2=A0 =C2=A0 =C2=A0 $(CC) $(CFLAGS) $(LDFLAGS) -shared -o $@ $^ -lsepol =
$(LIBAUDIT) -lselinux -lbz2 -Wl,-soname,$(LIBSO),--version-script=3Dlibsema=
nage.map,-z,defs<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ln -sf $@ $(TARGET)<br>
<br>
=C2=A0 $(LIBPC): $(LIBPC).in ../VERSION<br>
-Index: libsemanage-2.5/src/seusers_local.c<br>
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
---- libsemanage-2.5.orig/src/seusers_local.c=C2=A0 =C2=A02016-02-25 13:20:=
30.867978414 -0500<br>
-+++ libsemanage-2.5/src/seusers_local.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 2016-02=
-25 13:20:30.863978414 -0500<br>
-@@ -8,7 +8,11 @@<br>
+diff --git a/src/seusers_local.c b/src/seusers_local.c<br>
+index 42c3a8b..9ee31e2 100644<br>
+--- a/src/seusers_local.c<br>
++++ b/src/seusers_local.c<br>
+@@ -8,7 +8,11 @@ typedef struct semanage_seuser record_t;<br>
<br>
=C2=A0 #include &lt;sepol/policydb.h&gt;<br>
=C2=A0 #include &lt;sepol/context.h&gt;<br>
@@ -56,7 +56,7 @@ Index: libsemanage-2.5/src/seusers_local.c<br>
=C2=A0 #include &lt;errno.h&gt;<br>
=C2=A0 #include &quot;user_internal.h&quot;<br>
=C2=A0 #include &quot;seuser_internal.h&quot;<br>
-@@ -51,6 +55,7 @@<br>
+@@ -51,6 +55,7 @@ static char *semanage_user_roles(semanage_handle_t * han=
dle, const char *sename)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return roles;<br>
=C2=A0 }<br>
<br>
@@ -64,7 +64,7 @@ Index: libsemanage-2.5/src/seusers_local.c<br>
=C2=A0 static int semanage_seuser_audit(semanage_handle_t * handle,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 const semanage_seuser_t * seuser,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 const semanage_seuser_t * previous,<br>
-@@ -114,6 +119,7 @@<br>
+@@ -114,6 +119,7 @@ err:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 free(proles);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return rc;<br>
=C2=A0 }<br>
@@ -72,7 +72,7 @@ Index: libsemanage-2.5/src/seusers_local.c<br>
<br>
=C2=A0 int semanage_seuser_modify_local(semanage_handle_t * handle,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const semanage_seuser_key_t * =
key,<br>
-@@ -158,8 +164,11 @@<br>
+@@ -158,8 +164,11 @@ int semanage_seuser_modify_local(semanage_handle_t * =
handle,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 (void) semanage_seuser_query(handle, key, &amp;=
previous);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 handle-&gt;msg_callback =3D callback;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D dbase_modify(handle, dconfig, key, new);=
<br>
@@ -84,7 +84,7 @@ Index: libsemanage-2.5/src/seusers_local.c<br>
=C2=A0 err:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (previous)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 semanage_seuser_fre=
e(previous);<br>
-@@ -175,8 +184,12 @@<br>
+@@ -175,8 +184,12 @@ int semanage_seuser_del_local(semanage_handle_t * han=
dle,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dbase_config_t *dconfig =3D semanage_seuser_dba=
se_local(handle);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D dbase_del(handle, dconfig, key);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 semanage_seuser_query(handle, key, &amp;seuser)=
;<br>
@@ -97,15 +97,14 @@ Index: libsemanage-2.5/src/seusers_local.c<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (seuser)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 semanage_seuser_fre=
e(seuser);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return rc;<br>
-Index: libsemanage-2.5/tests/Makefile<br>
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
---- libsemanage-2.5.orig/tests/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 2016-02=
-25 13:20:30.867978414 -0500<br>
-+++ libsemanage-2.5/tests/Makefile=C2=A0 =C2=A0 =C2=A02016-02-25 13:22:05.=
171978120 -0500<br>
-@@ -13,7 +13,15 @@<br>
- CC =3D gcc<br>
- CFLAGS +=3D -g -O0 -Wall -W -Wundef -Wmissing-noreturn -Wmissing-format-a=
ttribute -Wno-unused-parameter<br>
- INCLUDE =3D -I$(TESTSRC) -I$(TESTSRC)/../include<br>
--LDFLAGS +=3D -lcunit -lustr -lbz2 -laudit<br>
+diff --git a/tests/Makefile b/tests/Makefile<br>
+index 2ef8d30..50d582a 100644<br>
+--- a/tests/Makefile<br>
++++ b/tests/Makefile<br>
+@@ -6,10 +6,18 @@ SOURCES =3D $(sort $(wildcard *.c))<br>
+<br>
+ #########################################################################=
##<br>
+<br>
=C2=A0+DISABLE_AUDIT ?=3D n<br>
=C2=A0+ifeq ($(DISABLE_AUDIT),y)<br>
=C2=A0+=C2=A0 =C2=A0 =C2=A0 LIBAUDIT =3D<br>
@@ -114,7 +113,14 @@ Index: libsemanage-2.5/tests/Makefile<br>
=C2=A0+=C2=A0 =C2=A0 =C2=A0 LIBAUDIT =3D -laudit<br>
=C2=A0+endif<br>
=C2=A0+<br>
-+LDFLAGS +=3D -lcunit -lustr -lbz2 $(LIBAUDIT)<br>
+ EXECUTABLE =3D libsemanage-tests<br>
+ CFLAGS +=3D -g -O0 -Wall -W -Wundef -Wmissing-noreturn -Wmissing-format-a=
ttribute -Wno-unused-parameter<br>
+ override CFLAGS +=3D -I../src -I../include<br>
+-override LDLIBS +=3D -lcunit -lbz2 -laudit -lselinux -lsepol<br>
++override LDLIBS +=3D -lcunit -lbz2 $(LIBAUDIT) -lselinux -lsepol<br>
+<br>
=C2=A0 OBJECTS =3D $(SOURCES:.c=3D.o)<br>
<br>
- all: $(EXECUTABLE)<br>
+--<br>
+2.13.0<br>
+<br>
diff --git a/recipes-security/selinux/libsemanage/libsemanage-fix-path-len-=
limit.patch b/recipes-security/selinux/libsemanage/libsemanage-fix-path-len=
-limit.patch<br>
deleted file mode 100644<br>
index c98f3fc..0000000<br>
--- a/recipes-security/selinux/libsemanage/libsemanage-fix-path-len-limit.p=
atch<br>
+++ /dev/null<br>
@@ -1,28 +0,0 @@<br>
-Subject: [meta-selinux][PATCH] libsemanage: fix path length limit<br>
-<br>
-semanage_remove_directory uses NAME_MAX(255) as the max length of<br>
-file pathes, this will cause failures when the path length&gt;255.<br>
-<br>
-Upstream-Status: pending<br>
-<br>
-Signed-off-by: Xin Ouyang &lt;<a href=3D"mailto:Xin.Ouyang@windriver.com" =
target=3D"_blank">Xin.Ouyang@windriver.com</a>&gt;<br>
----<br>
- src/semanage_store.c |=C2=A0 =C2=A0 2 +-<br>
- 1 file changed, 1 insertion(+), 1 deletion(-)<br>
-<br>
-diff --git a/src/semanage_store.c b/src/semanage_store.c<br>
-index 3fd4996..251a2d6 100644<br>
---- a/src/semanage_store.c<br>
-+++ b/src/semanage_store.c<br>
-@@ -580,7 +580,7 @@ int semanage_remove_directory(const char *path)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -1;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; num_entries; i++) {<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 char s[NAME_MAX];<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 char s[PATH_MAX];<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct stat buf;<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0snprintf(s, sizeof(=
s), &quot;%s/%s&quot;, path, namelist[i]-&gt;d_name);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (stat(s, &amp;bu=
f) =3D=3D -1) {<br>
---<br>
-1.7.9.5<br>
-<br>
diff --git a/recipes-security/selinux/<a href=3D"http://libsemanage_2.6.bb"=
 rel=3D"noreferrer" target=3D"_blank">libsemanage_2.6.bb</a> b/recipes-secu=
rity/selinux/<a href=3D"http://libsemanage_2.7.bb" rel=3D"noreferrer" targe=
t=3D"_blank">libsemanage_2.7.bb</a><br>
similarity index 50%<br>
rename from recipes-security/selinux/<a href=3D"http://libsemanage_2.6.bb" =
rel=3D"noreferrer" target=3D"_blank">libsemanage_2.6.bb</a><br>
rename to recipes-security/selinux/<a href=3D"http://libsemanage_2.7.bb" re=
l=3D"noreferrer" target=3D"_blank">libsemanage_2.7.bb</a><br>
index 5e24c9d..d7b5312 100644<br>
--- a/recipes-security/selinux/<a href=3D"http://libsemanage_2.6.bb" rel=3D=
"noreferrer" target=3D"_blank">libsemanage_2.6.bb</a><br>
+++ b/recipes-security/selinux/<a href=3D"http://libsemanage_2.7.bb" rel=3D=
"noreferrer" target=3D"_blank">libsemanage_2.7.bb</a><br>
@@ -1,23 +1,18 @@<br>
-include selinux_20161014.inc<br>
+include selinux_20170804.inc<br>
=C2=A0include ${BPN}.inc<br>
<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Da6f89e2100d9b6cdffcea=
4f398e37343&quot;<br>
<br>
-SRC_URI[md5sum] =3D &quot;666a48c4058c07f2b07ede9eaf210c5f&quot;<br>
-SRC_URI[sha256sum] =3D &quot;4f81541047290b751f2ffb926fcd381c186f22db18d9f=
e671b0b4a6a54e8cfce&quot;<br>
+SRC_URI[md5sum] =3D &quot;a6b5c451fbe45ff9e3e0e65f2db0ae1d&quot;<br>
+SRC_URI[sha256sum] =3D &quot;07e9477714ce6a4557a1fe924ea4cb06501b62d0fa0e3=
c0dc32a2cf47cb8d476&quot;<br>
<br>
=C2=A0SRC_URI +=3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://libsemanage-Fix-execve-segfaults-on-Ubun=
tu.patch \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0file://libsemanage-fix-path-len-limit.patch \<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://libsemanage-fix-path-nologin.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://libsemanage-drop-Wno-unused-but-set-vari=
able.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://libsemanage-define-FD_CLOEXEC-as-necessa=
ry.patch;striplevel=3D2 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://libsemanage-allow-to-disable-audit-suppo=
rt.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://libsemanage-disable-expand-check-on-poli=
cy-load.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-src-Makefile-fix-includedir-in-libs=
elinux.pc.patch \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-libsemanage-simplify-string-utiliti=
es-functions.patch;striplevel=3D2 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0file://0002-libsemanage-add-semanage_str_replac=
e-utility-functio.patch;striplevel=3D2 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0file://0003-libsemanage-genhomedircon-drop-ustr=
-dependency.patch;striplevel=3D2 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0file://0004-libsemanage-remove-ustr-library-fro=
m-Makefiles-READM.patch;striplevel=3D2 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
=C2=A0FILES_${PN} +=3D &quot;/usr/libexec&quot;<br>
--<br>
2.13.0<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--f4030435b5b0c56a390558fbef90--
