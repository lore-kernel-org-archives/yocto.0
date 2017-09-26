Return-Path: <maxin.john@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F2CDE00D11; Tue, 26 Sep 2017 01:19:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maxin.john[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40E0FE00C89
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 01:19:23 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id j16so6368912pga.2
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 01:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hUp50KcTWMbM6FHzwE6lhckXFIlk6kJ40z3ULBF636I=;
	b=s6oKxxJM/4dZF9PA8mg3KK16nZKvKmCohcgwpBi6MG6PQh8LphnO7mkamwIL8Pz0Y0
	6C9707Du2lJvLM1qC/wMoUNFY+/BnBbG9nlhIKpgXURp2JRXMKx9ue2x8pki3BOOBxhp
	NaQugYkn7yJGwyZAI5cepfESQ5opimhYIGd9gCPtRqidYAhJUGzsuuHhEw5EiTArLpPX
	0oaoM8gAKVL+VN2euaPQ86dDkji85st/cLp1qwg3rT7/4Qd1+4Zm0taKLv4sPQwGNf2H
	RYpt+RB+JP96fblUJvMivmyT9l2TImBblNHHi5lsZa3RyGifV95W2sq896AH4cadJmET
	WCnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hUp50KcTWMbM6FHzwE6lhckXFIlk6kJ40z3ULBF636I=;
	b=Zs4ImNuV0sW0WZz22TG0hbxZcLVCccDZs9pIuugelP62Diku4g0p1DEQORA4c2apxX
	ygT8DoPVWCysB1CLaVsIg/py/QjHmVYcq8tx4ThegbSYB7O/GmE/xawv+63st9Gqzv7V
	AsKl7/ZK9Igb1LASTWxymMLaseORtvp8yJsgcnP3J2w5KpNsbBwGq7tHCCK748T2F2GP
	Q9GSoPdL4Hu0gn7hQFYYr3J6cWg4VI/bkMgsy91+SvfEZWsAAAys/u7j9ZZQxXhYMvxV
	iBUCpf+sxOByv0M4IvkKJjNZ1xAYuaDW7h2PhmJzvjlu3TnjfXtkbef37+XboYWiH6aY
	GuZQ==
X-Gm-Message-State: AHPjjUgky4AwSqlyiHSH1RIuw7PBP1oPl0YZfQKK5b1MceUbQxRz9VdA
	hffgyUGGPkMUTiXUqVvFPfXDpght/v2t/XIqG3w=
X-Google-Smtp-Source: AOwi7QCCDkqKQqtiqHh0od4Q/1lpnneD5EkJ+l40uW5AYEQEdfneptYlzZ2Dos1GM9DgapxN2fAlub/pylZJCrUsMN0=
X-Received: by 10.98.13.209 with SMTP id 78mr10019773pfn.45.1506413962722;
	Tue, 26 Sep 2017 01:19:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.169.73 with HTTP; Tue, 26 Sep 2017 01:19:22 -0700 (PDT)
In-Reply-To: <1dfa5df9-190b-6566-1bda-7148ab6990f9@balister.org>
References: <1506287141-3998-1-git-send-email-maxin.john@intel.com>
	<1506287141-3998-5-git-send-email-maxin.john@intel.com>
	<1dfa5df9-190b-6566-1bda-7148ab6990f9@balister.org>
From: "Maxin B. John" <maxin.john@gmail.com>
Date: Tue, 26 Sep 2017 11:19:22 +0300
Message-ID: <CAMhs6Yzx+emQw40AvbrHRA2_MmOXiods5=B+2V-sYSW5nxyg_g@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java][PATCH 5/6] bdwgc: import from meta-oe
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
X-List-Received-Date: Tue, 26 Sep 2017 08:19:28 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Philip,

On Mon, Sep 25, 2017 at 4:05 PM, Philip Balister <philip@balister.org> wrote:
> On 09/24/2017 05:05 PM, Maxin B. John wrote:
>> keep a copy of bdwgc recipe in meta-java from meta-oe layer.
>> cacao in meta-java depends on bdwgc.
>
> Duplicating recipes in recipes is frowned upon.

Thanks for the review. Makes sense here. Will try to find a way to avoid this.

> Shouldn't we have the discussion why you are  not proposing this for
> Openembedded-core instead of duplicating the recipe? Duping a recipe
> just to drop a layer dependency isn't a long term solution.

agree.

> Philip

Best Regards,
Maxin

>>
>> Signed-off-by: Maxin B. John <maxin.john@intel.com>
>> ---
>>  ...ac-add-check-for-NO_GETCONTEXT-definition.patch | 29 +++++++++++++++
>>  recipes-extended/bdwgc/bdwgc/musl_header_fix.patch | 27 ++++++++++++++
>>  recipes-extended/bdwgc/bdwgc_7.6.0.bb              | 42 ++++++++++++++++++++++
>>  3 files changed, 98 insertions(+)
>>  create mode 100644 recipes-extended/bdwgc/bdwgc/0001-configure.ac-add-check-for-NO_GETCONTEXT-definition.patch
>>  create mode 100644 recipes-extended/bdwgc/bdwgc/musl_header_fix.patch
>>  create mode 100644 recipes-extended/bdwgc/bdwgc_7.6.0.bb
>>
>> diff --git a/recipes-extended/bdwgc/bdwgc/0001-configure.ac-add-check-for-NO_GETCONTEXT-definition.patch b/recipes-extended/bdwgc/bdwgc/0001-configure.ac-add-check-for-NO_GETCONTEXT-definition.patch
>> new file mode 100644
>> index 0000000..8ef774f
>> --- /dev/null
>> +++ b/recipes-extended/bdwgc/bdwgc/0001-configure.ac-add-check-for-NO_GETCONTEXT-definition.patch
>> @@ -0,0 +1,29 @@
>> +configure.ac: add check for NO_GETCONTEXT definition
>> +
>> +Signed-off-by: Samuel Martin <s.martin49@gmail.com>
>> +[yann.morin.1998@free.fr: add a comment, change variable name, use
>> + AS_IF, remove debug traces, use AC_CHECK_FUNCS (as suggested by
>> + Thomas)]
>> +Signed-off-by: "Yann E. MORIN" <yann.morin.1998@free.fr>
>> +Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
>> +
>> +---
>> +Upstream-Status: Pending
>> + configure.ac | 6 ++++++
>> + 1 file changed, 6 insertions(+)
>> +
>> +--- bdwgc-7.2f.orig/configure.ac     2014-06-01 19:00:47.000000000 +0200
>> ++++ bdwgc-7.2f/configure.ac  2014-12-23 14:13:11.585716713 +0100
>> +@@ -365,6 +365,12 @@
>> +   AC_MSG_RESULT($ac_cv_fno_strict_aliasing)
>> + fi
>> +
>> ++# Check for getcontext (uClibc can be configured without it, for example)
>> ++AC_CHECK_FUNCS([getcontext])
>> ++AS_IF([test "$ac_cv_func_getcontext" = "no"],
>> ++  [CFLAGS="$CFLAGS -DNO_GETCONTEXT"
>> ++   CPPFLAGS="$CPPFLAGS -DNO_GETCONTEXT"])
>> ++
>> + case "$host" in
>> + # While IRIX 6 has libdl for the O32 and N32 ABIs, it's missing for N64
>> + # and unnecessary everywhere.
>> diff --git a/recipes-extended/bdwgc/bdwgc/musl_header_fix.patch b/recipes-extended/bdwgc/bdwgc/musl_header_fix.patch
>> new file mode 100644
>> index 0000000..4a18496
>> --- /dev/null
>> +++ b/recipes-extended/bdwgc/bdwgc/musl_header_fix.patch
>> @@ -0,0 +1,27 @@
>> +Add missing header to avoid:
>> +
>> +| 1472659610.016355: ../git/pthread_stop_world.c: In function 'GC_brief_async_signal_safe_sleep':
>> +| 1472659610.0540252: ../git/pthread_stop_world.c:397:22: error: storage size of 'tv' isn't known
>> +| 1472659610.0540252:        struct timeval tv;
>> +| 1472659610.0540252:                       ^~
>> +| 1472659610.054099: ../git/pthread_stop_world.c:397:22: warning: unused variable 'tv' [-Wunused-variable]
>> +| 1472659610.054099:        struct timeval tv;
>> +| 1472659610.054099:                       ^~
>> +| 1472659610.054099: Makefile:1530: recipe for target 'pthread_stop_world.lo' failed
>> +
>> +in musl builds.
>> +
>> +Upstream-Status: Pending
>> +
>> +Index: git/pthread_stop_world.c
>> +===================================================================
>> +--- git.orig/pthread_stop_world.c
>> ++++ git/pthread_stop_world.c
>> +@@ -45,6 +45,7 @@
>> + #include <semaphore.h>
>> + #include <errno.h>
>> + #include <unistd.h>
>> ++#include <sys/time.h>
>> + #include "atomic_ops.h"
>> +
>> + /* It's safe to call original pthread_sigmask() here.   */
>> diff --git a/recipes-extended/bdwgc/bdwgc_7.6.0.bb b/recipes-extended/bdwgc/bdwgc_7.6.0.bb
>> new file mode 100644
>> index 0000000..dcb68f0
>> --- /dev/null
>> +++ b/recipes-extended/bdwgc/bdwgc_7.6.0.bb
>> @@ -0,0 +1,42 @@
>> +SUMMARY = "A garbage collector for C and C++"
>> +
>> +DESCRIPTION = "The Boehm-Demers-Weiser conservative garbage collector can be\
>> + used as a garbage collecting replacement for C malloc or C++ new. It allows\
>> + you to allocate memory basically as you normally would, without explicitly\
>> + deallocating memory that is no longer useful. The collector automatically\
>> + recycles memory when it determines that it can no longer be otherwise\
>> + accessed.\
>> +  The collector is also used by a number of programming language\
>> + implementations that either use C as intermediate code, want to facilitate\
>> + easier interoperation with C libraries, or just prefer the simple collector\
>> + interface.\
>> +  Alternatively, the garbage collector may be used as a leak detector for C\
>> + or C++ programs, though that is not its primary goal.\
>> +  Empirically, this collector works with most unmodified C programs, simply\
>> + by replacing malloc with GC_malloc calls, replacing realloc with GC_realloc\
>> + calls, and removing free calls."
>> +
>> +HOMEPAGE = "http://www.hboehm.info/gc/"
>> +SECTION = "devel"
>> +LICENSE = "MIT"
>> +LIC_FILES_CHKSUM = "file://README.QUICK;md5=4f81f24ec69726c312487c2ac740e9e3"
>> +
>> +SRCREV = "8ac1d84a40eb7a431fec1b8097e3f24b48fb23fa"
>> +SRC_URI = "git://github.com/ivmai/bdwgc.git \
>> +           file://0001-configure.ac-add-check-for-NO_GETCONTEXT-definition.patch \
>> +           file://musl_header_fix.patch \
>> +          "
>> +
>> +FILES_${PN}-doc = "${datadir}"
>> +
>> +S = "${WORKDIR}/git"
>> +
>> +ARM_INSTRUCTION_SET = "arm"
>> +
>> +inherit autotools pkgconfig
>> +
>> +# by default use external libatomic-ops
>> +PACKAGECONFIG ??= "libatomic-ops"
>> +PACKAGECONFIG[libatomic-ops] = "--with-libatomic-ops=yes,--with-libatomic-ops=no,libatomic-ops"
>> +
>> +BBCLASSEXTEND = "native nativesdk"
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

