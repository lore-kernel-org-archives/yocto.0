Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
 by mx.groups.io with SMTP id smtpd.web11.8153.1579510965063185998
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 01:02:45 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.221.65, mailfrom: andre.draszik@gmail.com)
Received: by mail-wr1-f65.google.com with SMTP id j42so28568268wrj.12
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jan 2020 01:02:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=2xWE1R21kiz9RZJGZfvXqv/Gq9YDyfKljunVAiTDIM0=;
        b=cuus8KFmtcuzoKNY+tLkK+wA8jiSTqF9nxfMzYSrfNj3CgOfLhluB5es1kVVJCozL2
         OkZdMCS0C57Q97WayKS2IwdgMIzZVudkmI5/sBfwdZR7gIaX1koZ88yMmc2NL9GkRgK0
         uhTC0GTB+swoTXrt8snOrI7E/SOCUkdV67tFYJCdMqyR3FdoFOvDxnqHao4dnP8X1hT5
         jdnVoiGE5mC45GU/yReYHlQcNPGkuZNAC16F2zTeYZu23jh0sxFvC9EUKnyccIInzwpv
         4eA9PF6b3x8C1gtbPI7ZKZ84Bg0ikbJow1UxVDi+KAiM/VTrBMDKH2ZM7GjfmP6FSKM5
         cIgw==
X-Gm-Message-State: APjAAAUjbrbVLW/iGz2lxTobXiIiMANGzU+qO0SY1vxxqEyzNzK7ZNHy
	+sEWZUPE8ty30LeGv1rnwxr/XRky
X-Google-Smtp-Source: APXvYqzq52iKE7eRYD5QDojrw1tyS+1Vzbx0uqHGrInF9HJ/rX1VEkTMuDF0v4DDsA99fXeUNkl49w==
X-Received: by 2002:a5d:4602:: with SMTP id t2mr16354104wrq.37.1579510963256;
        Mon, 20 Jan 2020 01:02:43 -0800 (PST)
Return-Path: <andre.draszik@gmail.com>
Received: from tfsielt31850 ([77.107.218.170])
        by smtp.gmail.com with ESMTPSA id q15sm46693144wrr.11.2020.01.20.01.02.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 01:02:42 -0800 (PST)
Message-ID: <c0e112051a4cb014bc0bb97e08e208e8f349b205.camel@andred.net>
Subject: Re: [yocto][meta-gplv2][PATCH 1/2] coreutils: fix build with 64bit time_t on 32bit arches
From: =?UTF-8?B?QW5kcsOpIERyYXN6aWs=?= <git@andred.net>
To: yocto@lists.yoctoproject.org
Date: Mon, 20 Jan 2020 09:02:42 +0000
In-Reply-To: <15E895F47D5A4AF2.20149@lists.yoctoproject.org>
References: <15E895F47D5A4AF2.20149@lists.yoctoproject.org>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

ping

On Fri, 2020-01-10 at 17:15 +0000, Andr? Draszik wrote:
> From: André Draszik <git@andred.net>
> 
> > ../../coreutils-6.9/lib/mktime.c: In function 'ydhms_diff':
> > ../../coreutils-6.9/lib/mktime.c:105:52: error: size of array 'a' is negative
> >   105 | #define verify(name, assertion) struct name { char a[(assertion) ? 1 : -1]; }
> >       |                                                    ^
> > ../../coreutils-6.9/lib/mktime.c:168:3: note: in expansion of macro 'verify'
> >   168 |   verify (long_int_year_and_yday_are_wide_enough,
> >       |   ^~~~~~
> 
> coreutils tries to determine of mktime() from the c-library
> works fine, but when cross-compiling, it unconditionally
> assumes buggy behaviour, in which case it will use its own
> replacement implementation. These basically are tests for
> (g)libc implementation bugs that have existed in ancient
> times but aren't relevant anymore.
> 
> The alternative implementation makes various assumptions which
> don't hold true (and doesn't compile anymore). While more recent
> versions of coreutils have fixed those assumptions, it's quite
> hard to update the code here without potential licensing issues.
> 
> Given mktime() works fine in musl and glibc these days, we can
> work-around the issues by simply relying on the c-libraries
> mktime() implementation, avoiding all problems with coreutils'
> alternative implementation.
> 
> I've veryfied this by running the tests both on my musl target,
> and my glibc (v2.29) host.
> 
> This also reduces code-size slightly.
> 
> The ac_cv_func_working_mktime variable here corresponds to the
> gl_cv_func_working_mktime variable in more recent versions of
> coreutils (gnulib), which is being set in oe-core in meta/site.
> 
> Signed-off-by: André Draszik <git@andred.net>
> ---
>  recipes-core/coreutils/coreutils_6.9.bb | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/recipes-core/coreutils/coreutils_6.9.bb b/recipes-core/coreutils/coreutils_6.9.bb
> index 080100d..f6017ec 100644
> --- a/recipes-core/coreutils/coreutils_6.9.bb
> +++ b/recipes-core/coreutils/coreutils_6.9.bb
> @@ -33,7 +33,9 @@ SRC_URI[md5sum] = "c9607d8495f16e98906e7ed2d9751a06"
>  SRC_URI[sha256sum] = "89c2895ad157de50e53298b22d91db116ee4e1dd3fdf4019260254e2e31497b0"
>  
>  EXTRA_OECONF += "ac_cv_func_getgroups_works=yes \
> -                 ac_cv_func_strcoll_works=yes"
> +                 ac_cv_func_strcoll_works=yes \
> +                 ac_cv_func_working_mktime=yes \
> +                 "
>  
>  # acl is not a default feature
>  #
> 

