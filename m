Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.19620.1598734406454492041
 for <yocto@lists.yoctoproject.org>;
 Sat, 29 Aug 2020 13:53:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ueemeMRj;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9BC4E020CF; Sat, 29 Aug 2020 13:53:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	URIBL_RED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.174 listed in list.dnswl.org]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.8 NICE_REPLY_A Looks like a legit reply (A)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B236AE020CD
	for <yocto@yoctoproject.org>; Sat, 29 Aug 2020 13:53:22 -0700 (PDT)
Received: by mail-pg1-f174.google.com with SMTP id 67so2152193pgd.12
        for <yocto@yoctoproject.org>; Sat, 29 Aug 2020 13:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=wWyKLLK/lZjhrZPUDlJ5IMOeZVv/SAFbrdvpBlgd9rw=;
        b=ueemeMRjidSouHz4MPWYFPCabPdpulidGx/et39MvETQAcCIS8iS8Am8A5mblcN1L6
         2B1L2TuC3d4tq/B7q4YJRctUm5NnXCnFkZGfQhXW14d8G+BNp3WJlw4C3VXq42AosGik
         W0uk76ezwjyqOOoJvZNNVdDhib+IDSdfIYwdiviw+grNVv+njJ6G4hTyfJGTe1SmgZGX
         W6YOC4KxkEqGmUuV+5WfKymCPZs/hc8aFKnbabpjrpGcunfsdzp6cioqZeQgWJCOdvbL
         XEfXX25nYhXx15qz6jj6PLzbiNBQ0tdVwDvp0L6dLVio+sX5YESxeOA0B7tre02SmGSi
         slvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=wWyKLLK/lZjhrZPUDlJ5IMOeZVv/SAFbrdvpBlgd9rw=;
        b=OI6+7sFyRBi7IoRClNyg7PfMicJUlXKJRejuyeyEu8Jpy4/f2Qf21/9HPvGIgSVl8Y
         vAQmbvLihrt0G6bFW9pQvc3y3zo5hG7ws/3SoMwH1T0Sv6OYW4llJIF4JJguyQCDKyWr
         QHs8dpZyx+kiyNkHnKiIMFaV1IHI5eQEaONhIJdYK3TCTQr0gJQ2lyInT3gvyUf8ZuIF
         9nH0E1AeQuT1LY5g4g51+n3eaJ7ctRK6Tof5cqYs9KavGSDkeKQpVDHLSsfnx+e1JnD3
         1f5HgEMCXNY7EEdgvsAjG62Cv3WtXYlH3/O2qC843ixGIkErqCmPfMgfVqJ/vc6gg7Iq
         kI0A==
X-Gm-Message-State: AOAM530aZeBt8djlfnR03nc1Afg/8r6nrvt4ZRdSacMQVMqz4ef7C6Zu
	Bi2iJLHJ60pAPldaSgASm8ad/ATPYos=
X-Google-Smtp-Source: ABdhPJzNf/8vlTq28jwyflwD0j8UYDdenm88PNchZKufCpqPyy9MRcosIaxR+oOlLM4fcf8f8mKoRA==
X-Received: by 2002:a62:5e04:: with SMTP id s4mr3947574pfb.67.1598734401900;
        Sat, 29 Aug 2020 13:53:21 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:58c0:b92f:294c:a6e0? ([2601:202:4180:a5c0:58c0:b92f:294c:a6e0])
        by smtp.gmail.com with ESMTPSA id v7sm3353059pfe.96.2020.08.29.13.53.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Aug 2020 13:53:21 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] libseccomp: fix cross compile error for mips
To: kai <kai.kang@windriver.com>, yocto@yoctoproject.org
References: <20200803062102.6034-1-kai.kang@windriver.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <ed77e969-3a2b-0508-e210-ea74d04fcbaf@gmail.com>
Date: Sat, 29 Aug 2020 13:53:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200803062102.6034-1-kai.kang@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 8/2/20 11:21 PM, kai wrote:
> From: Kai Kang <kai.kang@windriver.com>
>
> Backport patch to fix cross compile error for mips:
>
> | syscalls.h:44:6: error: expected identifier or '(' before numeric constant
> |    44 |  int mips;
> |       |      ^~~~

Merged.

thanks
>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>  .../files/fix-mips-build-failure.patch        | 49 +++++++++++++++++++
>  .../libseccomp/libseccomp_2.5.0.bb            |  1 +
>  2 files changed, 50 insertions(+)
>  create mode 100644 recipes-security/libseccomp/files/fix-mips-build-failure.patch
>
> diff --git a/recipes-security/libseccomp/files/fix-mips-build-failure.patch b/recipes-security/libseccomp/files/fix-mips-build-failure.patch
> new file mode 100644
> index 0000000..7d17a03
> --- /dev/null
> +++ b/recipes-security/libseccomp/files/fix-mips-build-failure.patch
> @@ -0,0 +1,49 @@
> +Backport patch to fix cross compile error for mips:
> +
> +| syscalls.h:44:6: error: expected identifier or '(' before numeric constant
> +|    44 |  int mips;
> +|       |      ^~~~
> +
> +Upstream-Status: Submitted [https://github.com/seccomp/libseccomp/pull/279/commits/04c519e5]
> +
> +Signed-off-by: Kai Kang <kai.kang@windriver.com>
> +
> +From 04c519e5b1de53592e98307813e5c6db7418f91b Mon Sep 17 00:00:00 2001
> +From: Paul Moore <paul@paul-moore.com>
> +Date: Sun, 2 Aug 2020 09:57:39 -0400
> +Subject: [PATCH] build: undefine "mips" to prevent build problems for MIPS
> + targets
> +
> +It turns out that the MIPS GCC compiler defines a "mips" cpp macro
> +which was resulting in build failures on MIPS so we need to
> +undefine the "mips" macro during build.  As this should be safe
> +to do in all architectures, just add it to the compiler flags by
> +default.
> +
> +This was reported in the following GH issue:
> +* https://github.com/seccomp/libseccomp/issues/274
> +
> +Reported-by: Rongwei Zhang <pudh4418@gmail.com>
> +Suggested-by: Rongwei Zhang <pudh4418@gmail.com>
> +Signed-off-by: Paul Moore <paul@paul-moore.com>
> +---
> + configure.ac | 4 +++-
> + 1 file changed, 3 insertions(+), 1 deletion(-)
> +
> +diff --git a/configure.ac b/configure.ac
> +index 40d9dcbb..3e877348 100644
> +--- a/configure.ac
> ++++ b/configure.ac
> +@@ -65,9 +65,11 @@ m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])
> + 
> + dnl ####
> + dnl build flags
> ++dnl NOTE: the '-Umips' is here because MIPS GCC compilers "helpfully" define it
> ++dnl       for us which wreaks havoc on the build
> + dnl ####
> + AM_CPPFLAGS="-I\${top_srcdir}/include -I\${top_builddir}/include"
> +-AM_CFLAGS="-Wall"
> ++AM_CFLAGS="-Wall -Umips"
> + AM_LDFLAGS="-Wl,-z -Wl,relro"
> + AC_SUBST([AM_CPPFLAGS])
> + AC_SUBST([AM_CFLAGS])
> diff --git a/recipes-security/libseccomp/libseccomp_2.5.0.bb b/recipes-security/libseccomp/libseccomp_2.5.0.bb
> index 7a6b483..35365d5 100644
> --- a/recipes-security/libseccomp/libseccomp_2.5.0.bb
> +++ b/recipes-security/libseccomp/libseccomp_2.5.0.bb
> @@ -10,6 +10,7 @@ SRCREV = "f13f58efc690493fe7aa69f54cb52a118f3769c1"
>  
>  SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.5 \
>             file://run-ptest \
> +           file://fix-mips-build-failure.patch \
>  "
>  
>  COMPATIBLE_HOST_riscv32 = "null"
>
> 

