Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65045E0049B
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2012 09:08:18 -0700 (PDT)
Received: by eekd41 with SMTP id d41so1638767eek.35
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2012 09:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Sy9FM3c8oWORJHP2telbN9KqukGSlqa54Aey28FKkVY=;
	b=b59JG+zYY3k7YIjnaXKEE4DaVzRt9YlESDTNyPSIgeRaCz4rRKBnFdbuSD7ZL91oLL
	SAWMv4D2sScHs+YnRftt2oeWdQgphA6uQPEL+Jekqc/Wcl0me7JZlxpgIrE2wJSV63AN
	1Rw4rFBg/bYGJ01N3AdIqCVGxjQfZsOc0WCmVvTmfePJI+seqg3/ofgJSIEfjKrd7+ZP
	UtVPIClJadVxaLXOnlKbvgzr0wqH9AizfhxNr5MMAG23KOWmJcwpOWx/he7oTXkHFk3S
	a/Oso3tLMW/mk/eucge7oZzheeLMcTleVYhmEBu+fDg0E4S2UjXA/bHDvhIGvM7xvLjk
	11yg==
Received: by 10.14.5.67 with SMTP id 43mr4974770eek.15.1345392496521; Sun, 19
	Aug 2012 09:08:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Sun, 19 Aug 2012 09:07:45 -0700 (PDT)
In-Reply-To: <11205BCA-6B8D-41EC-AFE1-E61864B15277@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
	<ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
	<AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
	<E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
	<D5CC2FFB-E56B-41B1-BC70-9DFC41F54988@gmail.com>
	<CAMKF1soVRDxAQ86HPpPMEB9WL142HCWkOHVqXhGQSN9b4290UQ@mail.gmail.com>
	<651EC518-2C02-4A13-8AE7-0D118BCB3719@gmail.com>
	<CAMKF1sp5hQKC3fEd4TnXHnPMjPyEsCmWHOUuHdd4RLMZMZZb0w@mail.gmail.com>
	<50739671-4885-4C82-9360-C3376960B165@gmail.com>
	<3E8B6BA0-C1A9-4861-B1A1-F15BAAB7B3ED@gmail.com>
	<CAMKF1soQ3o7E6h86xbD9Wh8jCGzHEKmvzpwpYXKjePGcQe-+Yg@mail.gmail.com>
	<6047F1EE-6246-490D-BEC3-EE93F40439FE@gmail.com>
	<4A5B27D0-AF2F-4FBE-B1DC-FEB002F80B76@gmail.com>
	<B3DEA1FA-A170-46D6-9BCA-82555C89523C@gmail.com>
	<4855B040-2194-4E0F-8B88-6C10385DBE8F@gmail.com>
	<CAMKF1sp19QKejvTx-qGQ0XpWomS67p-6D2ZS5NGe_L1hJ8Mz+w@mail.gmail.com>
	<AF18A8EF-44E8-4C11-B52B-D5C7E7B7FD85@gmail.com>
	<E089A60B-5047-407B-9CD2-8764C5416DF0@gmail.com>
	<11205BCA-6B8D-41EC-AFE1-E61864B15277@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 19 Aug 2012 09:07:45 -0700
Message-ID: <CAMKF1so1bqxc+Ns1K+QO9A+TEcCE+Cn8Tie56zvYTmp3i_uTVg@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 19 Aug 2012 16:08:18 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Aug 18, 2012 at 11:36 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Hi Khem,
>                   What should I do to enable multilib in gcc-4.7?
>
> I think at the moment, in gcc-configure-common.inc, it is disabled.
>
> If I were to re-enable it as follows, based on what I've diff'd from the
> Denx ELDK repo, what how does the GCCMULTILIB variable evaluate?

just for tests. append --enable-multilib to EXTRA_OECONF in
gcc-cross_4.7.bb something like EXTRA_OECONF_append  = " xxx "

>
> -GCCMULTILIB = "--disable-multilib"
> +GCCMULTILIB = '${@base_contains("MULTILIB_ARCH_LIST", "${TARGET_ARCH}",
> "--enable-multilib", "--disable-multilib",d)}'
>
> I think multilib has to be enabled, no?
>
> In file gcc/config/rs6000/t-ppcos.c
>
> # Multilibs for a powerpc hosted ELF target (linux, SVR4)
>
> MULTILIB_OPTIONS = msoft-float
> MULTILIB_DIRNAMES = nof
> MULTILIB_EXTRA_OPTS = fPIC mstrict-align
> MULTILIB_EXCEPTIONS =
>
> MULTILIB_MATCHES = ${MULTILIB_MATCHES_FLOAT}
>
>
> Here is the full patch, which I am assuming enables multilib, and get libgcc
> to generate the nof libraries to the target:
>
> diff --git a/meta/recipes-devtools/gcc/gcc-configure-common.inc
> b/meta/recipes-devtools/gcc/gcc-configure-common.inc
> index 908ad3e..a3fa294 100644
> --- a/meta/recipes-devtools/gcc/gcc-configure-common.inc
> +++ b/meta/recipes-devtools/gcc/gcc-configure-common.inc
> @@ -25,7 +25,7 @@ EXTRA_OECONF_PATHS ?= ""
>  EXTRA_OECONF_INITIAL ?= ""
>  EXTRA_OECONF_INTERMEDIATE ?= ""
>
> -GCCMULTILIB = "--disable-multilib"
> +GCCMULTILIB = '${@base_contains("MULTILIB_ARCH_LIST", "${TARGET_ARCH}",
> "--enable-multilib", "--disable-multilib",d)}'
>
>  EXTRA_OECONF = "${@['--enable-clocale=generic', ''][d.getVar('USE_NLS',
> True) != 'no']} \
>                  --with-gnu-ld \
> diff --git a/meta/recipes-devtools/gcc/libgcc_4.7.bb
> b/meta/recipes-devtools/gcc/libgcc_4.7.bb
> index c796253..aac81f6 100644
> --- a/meta/recipes-devtools/gcc/libgcc_4.7.bb
> +++ b/meta/recipes-devtools/gcc/libgcc_4.7.bb
> @@ -18,7 +18,9 @@ FILES_${PN} = "${base_libdir}/libgcc*.so.*"
>  FILES_${PN}-dev = " \
>    ${base_libdir}/libgcc*.so \
>    ${libdir}/${TARGET_SYS}/${BINV}/*crt* \
> -  ${libdir}/${TARGET_SYS}/${BINV}/libgcc*"
> +  ${libdir}/${TARGET_SYS}/${BINV}/libgcc* \
> +  ${libdir}/${TARGET_SYS}/${BINV}/nof/crt* \
> +  ${libdir}/${TARGET_SYS}/${BINV}/nof/libgcc*"
>  FILES_libgcov${PKGSUFFIX}-dev = " \
>    ${libdir}/${TARGET_SYS}/${BINV}/libgcov.a \
>    "
>
> Best regards,
>
> Elvis Dowson

