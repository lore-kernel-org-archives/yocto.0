Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AE8DE00D6B; Wed,  5 Jun 2019 09:01:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5400E00D48
	for <yocto@lists.yoctoproject.org>;
	Wed,  5 Jun 2019 09:01:47 -0700 (PDT)
Received: by mail-it1-f196.google.com with SMTP id j204so4321567ite.4
	for <yocto@lists.yoctoproject.org>;
	Wed, 05 Jun 2019 09:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=K4ZOnJuL1oL90NeSluQGjZCMErU1UP5t627pUPjCCsI=;
	b=pyFmVOmly53jnkKwcB7EAWH4sxsLyqOGkMWK3EbzIGUoH6W3Lx2PlmLKMGztRnmRG4
	4tshSV1pfpV0+BQJiDi/sX6QZc7MQCP9tolwvIWO6KxM2fJhNErjAs1BO3c6qvsVahzz
	OofJpC7pPA8mHSW9JyHRjbGuC4wZKpysGkc4ddetAB77iH1uCxshsE9NwrnD+rqO0dE7
	MxVerrUqQD9jjQtSlqULDRRRaPAmZ8HVHqrO23yu8WsajnDxCHcpaF6iO9rwdA2rDSDq
	/q0CRYarwfu1g4gsV5IJn61ma7mKIaTV2kjT4Ls9CHZbZgk8jWaAP5dM07o9w7GGwgLH
	6+AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=K4ZOnJuL1oL90NeSluQGjZCMErU1UP5t627pUPjCCsI=;
	b=SE98yxCaA/aKqOX2yDjEj+LneP5612G+9BIUhvZHENu6mSx+5oS9JtLJ269Rc6h5KZ
	nsEPJYndKkN1dXh5WFWycOV71nI+J7dK0t+XJpm4D9/z/0frGN/83xw2RjA6K0oATLOe
	owjz8xaRI8KEWp/jb1xKPElJJt9JKQwAWysc80f/b4eZhmp3kwM/OrK/9JhfTuwQnoOA
	nYgAoKC3ozAP4N1NLkjVnw5z34ZXWsmUkp4lYY9JtS5ED6FzItV3uvP/NbmJRjJminLy
	Hyn/dg6KWIhxWEGlIKnWfhSgoYThVclgJuCWanM1ugJlBxua08vnHaLSB4HUrT5Bxi7g
	H3wg==
X-Gm-Message-State: APjAAAVgSYKpYACYcLwsuVStvVH30ENvisAh7IxZRmG7kuCn5Ifq7jxN
	sWk3IICjssNUB7P1WhNQVe0142LvyvDOuX47eExRjw==
X-Google-Smtp-Source: APXvYqwNdGNmz/hOCmxdJ/v+rlAemUDzitP8jLiym1QHtcalcK35jEHbpv9lNtOCoSAbE/P1h/ogmPaHKvI9OYYCzyE=
X-Received: by 2002:a24:64c5:: with SMTP id t188mr26300056itc.83.1559750507133;
	Wed, 05 Jun 2019 09:01:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190605075602.599-1-Martin.Jansa@gmail.com>
In-Reply-To: <20190605075602.599-1-Martin.Jansa@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 5 Jun 2019 17:01:34 +0100
Message-ID: <CAJTo0Lb0M+xcNjjsjfaNK5q7dKAnj+QEw-Vb5joY8OuRz_RhvQ@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-gplv2][PATCH] elfutils: ignore new error from gcc-9
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
X-List-Received-Date: Wed, 05 Jun 2019 16:01:48 -0000
Content-Type: text/plain; charset="UTF-8"

Pushed, thanks.

Ross

On Wed, 5 Jun 2019 at 08:56, Martin Jansa <martin.jansa@gmail.com> wrote:
>
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  recipes-devtools/elfutils/elfutils_0.148.bb | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/recipes-devtools/elfutils/elfutils_0.148.bb b/recipes-devtools/elfutils/elfutils_0.148.bb
> index a03b74e..1f07a28 100644
> --- a/recipes-devtools/elfutils/elfutils_0.148.bb
> +++ b/recipes-devtools/elfutils/elfutils_0.148.bb
> @@ -57,6 +57,10 @@ SRC_URI += "\
>  "
>  inherit autotools gettext
>
> +# There is a fix in 0.175 version (https://sourceware.org/bugzilla/show_bug.cgi?id=23884)
> +# but 0.175 has different license, so to be safe don't backport the fix, just ignore the issue
> +CFLAGS += "-Wno-error=missing-attributes"
> +
>  EXTRA_OECONF = "--program-prefix=eu- --without-lzma"
>  EXTRA_OECONF_append_class-native = " --without-bzlib"
>  EXTRA_OECONF_append_libc-uclibc = " --enable-uclibc"
> --
> 2.17.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

