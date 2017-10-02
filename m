Return-Path: <aaron.schwartz@logicsupply.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AC25E00B1B; Mon,  2 Oct 2017 11:01:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7ABCDE007EF
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 11:01:22 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id 125so10386956oie.5
	for <yocto@yoctoproject.org>; Mon, 02 Oct 2017 11:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=logicsupply.com; s=google-lscom;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pXDWwMkj075D7BCzC4pN+Ei6pLFaEEYGou7ZfFlUP64=;
	b=d+I7wTYxH7zZ39ZDIkzNuDw9WtPmRcQ4d5dIrULDTx16I2DTan44HG4p8CBC4YiN6g
	isEC4TgaZqRFyc7voY1irv3a+NcqxwhL7agbDFXOFmiyzzFFcmwya3c2AfilyvQbjKgo
	rmjqLhDk0tyqlYT6mKunUslS2rKOtJzxzBZi0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pXDWwMkj075D7BCzC4pN+Ei6pLFaEEYGou7ZfFlUP64=;
	b=gSwrJnwbPhxD3R/+Bu6kJn8n1cTwtiVCfj6CL4wb2ufb4UEyxHsntKGm3NoUBzUxtl
	8Pv3801QYXi+WnL5mIW2cHhXVdzmM4OeQ6bOp031MFxEjCuZL92avnLMoNRf+QxmIMYS
	PEfXZpUyd2GuMLBpSpXKji/jBdxi68VHhJTxlnxneD4xUyRTVyzhqkw36Ip55reNTRj9
	4qF6bjfmCl8WEfDUNOQ3IQdANZ9BjxMlFXPpfFAy54gLvCZO+Ngqk63CeI/rhVhIvKgm
	eeIyL4kbZv+kyQivfzeJEJQ9GvnOwxy50hIzMO3XCzBn1Ppq+lXZ8pi78QmDesf5aWl2
	XaPg==
X-Gm-Message-State: AMCzsaVuoZef0hoUMjIOIp+WbbzmaznjK6u04Ne1khE0uUZvLMvyaBKd
	5xa3eRqmi5gqDyDfQ4uL6GTMXuXtGH/ObQBl8DZ0/H/hdWE=
X-Google-Smtp-Source: AOwi7QAw7KkNBC3NfrW4XdUJSSAmCO4bsEGH07k92yTkgxeuun3nQ+pb5fEMNQq4VP9sCfZyh2HHHNLE24Pms/zpBMI=
X-Received: by 10.157.91.61 with SMTP id x58mr2564118oth.89.1506967281434;
	Mon, 02 Oct 2017 11:01:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.39.94 with HTTP; Mon, 2 Oct 2017 11:01:20 -0700 (PDT)
In-Reply-To: <4a9df97c-fa72-82a3-b8be-60b8f537e458@emagii.com>
References: <4a9df97c-fa72-82a3-b8be-60b8f537e458@emagii.com>
From: Aaron Schwartz <aaron.schwartz@logicsupply.com>
Date: Mon, 2 Oct 2017 14:01:20 -0400
Message-ID: <CAP3gWc9shs38YqyP9WFN6g62MtWUOBVvpvgOqb9oHchEE0mx+Q@mail.gmail.com>
To: Ulf Samuelsson <yocto@emagii.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RFC: autotooler: generation of "configure.ac" and "Makefile.am" using Kconfig
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
X-List-Received-Date: Mon, 02 Oct 2017 18:01:27 -0000
Content-Type: multipart/alternative; boundary="94eb2c1c18527fd43c055a942989"

--94eb2c1c18527fd43c055a942989
Content-Type: text/plain; charset="UTF-8"

Are you looking to use menuconfig to configure your packages?  BusyBox does
this [0] pretty well in my experience, you might take a look at how they've
put that together.

0) https://busybox.net/FAQ.html#configure

On Sat, Sep 30, 2017 at 10:49 AM, Ulf Samuelsson <yocto@emagii.com> wrote:

> Have a need to convert a large number of libraries to use autotools.
>
> I came up with the following idea:
>
> I create an Kconfig based configuration system, where you define a number
> of configuration items needed by configure.ac and Makefile.am
>
> You choose if you want to build an application, a shared library or a
> static library.
>
> The build normally depends on other libraries, and you checkmarks
> which library you are interested in from a (small) number of supported
> libraries.
> You can likewise select to support options like "--enable-openssl",
> again from a (small) number of supported options.
>
> If you have stuff not supported, the autotooler will include Config.in
> files allowing you to add your own items.
>
> Once the configuration is complete, you will compile an application
> which will generate "configure.ac" from the configuration file.
>
> Again, if you have stuff not supported in the code, you can add it
> in a user include file.
>
> The generator will read a user-headers.inc file and
> generate an AC_CHECK_HEADERS entry.
>
>
> The autotooler is available on
>         https://www.github.com/emagii/autotooler.git
>
> ===================================================================
> Currently, it does not generate any Makefile.am files, but
> the idea is to separate the source files into
> * C source
> * Public Headers
> * Local Headers
>
> A tool would then scan the directories and classify them accordingly,
> so Makefile.am files should be possible to generate fairly easy.
>
> ===================================================================
> A final step would clone a empty git tree, and populate it
> with all the files needed for a complete package.
> ===================================================================
>
> Comments appreciated.
>
> Best Regards
> Ulf Samuelsson
> ===================================================================
> Here is a typical "autoconh.h" generated by Kconfig.
>
> /*
>  * Automatically generated C config: don't edit
>  * Sat Sep 30 16:27:24 2017
>  */
> #define CONFIG_SHARED_LIB 1
> #define CONFIG_PTHREAD 1
> #define CONFIG_LIBRARY 1
> #define CONFIG_PROJECT "myproject"
> #define CONFIG_WORKDIR "${HOME}/projects/autotooler"
> #define CONFIG_OPENSSL 1
> #define CONFIG_CURL 1
> #define CONFIG_COPYRIGHT_DATE "2017"
> #define CONFIG_HOMEPAGE "http://www.emagii.com/"
> #define CONFIG_EXAMPLES 1
> #define CONFIG_DEBUG 1
> #define HAVE_DOT_CONFIG 1
> #define CONFIG_AC_PRERQ "2.59"
> #define CONFIG_BOOST 1
> #define CONFIG_OS_LINUX 1
> #define CONFIG_LIBRARY_NAME "libyocto"
> #define CONFIG_AUTHOR_EMAIL "ulf@emagii.com"
> #define CONFIG_LIBRARY_VERSION "1.0"
> #define CONFIG_AC_CONFIG_HEADER "src/include/config.h"
> #define CONFIG_OS "Linux"
> #define CONFIG_EXAMPLES_VAR "examples"
> #define CONFIG_AC_CONFIG_MACRO_DIR "m4"
> #define CONFIG_DEBUG_VAR "debug"
> #define CONFIG_PROJECT_TYPE "library"
> #define CONFIG_SRCDIR "src"
> #define CONFIG_SRC_URI_REPO ""
> #define CONFIG_AUTHOR "Ulf Samuelsson"
> #define CONFIG_SRC_URI_HOST "https://www.github.com/emagii"
> #define CONFIG_CURLPP 1
> #define CONFIG_AM_INIT_AUTOMAKE "1.10 -Wall no-define"
>
> The application will from this information generate:
>
> AC_INIT([libyocto],
>         [1.0],
>         [Ulf Samuelsson],
>         [libyocto-1.0],
>         [http://www.emagii.com/])
>
> AC_PRERQ([2.59])
>
> AC_CONFIG_HEADER([src/include/config.h])
>
> AC_CONFIG_SRCDIR([src])
>
> AC_PROG_CPP
> AC_PROG_CC
> AC_INIT_AUTOMAKE([1.10 -Wall no-define])
>
> AC_PROG_MAKE_SET
> AM_MAINTAINER_MODE
> AC_HEADER_STDC
> AC_ENABLE_SHARED
> AC_DISABLE_STATIC
> AC_PROG_LIBTOOL
> AC_HEADER_STDC
>
> AC_CHECK_HEADERS( \
>         ctype.h \
>         errno.h \
>         fcntl.h \
>         openssl/bio.h \
>         openssl/err.h \
>         openssl/opensslconf.h \
>         openssl/rand.h \
>         openssl/ssl.h \
>         pthread.h \
>         stdio.h \
>         stdlib.h \
>         stdarg.h \
>         stdint.h \
>         string.h \
>         signal.h \
>         sys/ioctl.h \
>         sys/socket.h \
>         sys/time.h \
>         sys/types.h \
>         time.h \
>         unistd.h \
>          \
>         ,
> dnl to do if not found
>         [],
> dnl to do if not found
>         [],
> dnl default includes
>         [
> #ifdef HAVE_SYS_TYPES_H
> #include <sys/types.h>
> #endif
> #ifdef HAVE_SYS_TIME_H
> #include <sys/time.h>
> #endif
> dnl We do this default-include simply to make sure that the
> nameser_compat.h
> dnl header *REALLY* can be include after the new nameser.h. It seems AIX
> 5.1
> dnl (and others?) is not designed to allow this.
> #ifdef HAVE_ARPA_NAMESER_H
> #include <arpa/nameser.h>
> #endif
>
> dnl *Sigh* these are needed in order for net/if.h to get properly detected.
> #ifdef HAVE_SYS_SOCKET_H
> #include <sys/socket.h>
> #endif
> #ifdef HAVE_NETINET_IN_H
> #include <netinet/in.h>
> #endif
> ]
> )
>
> # ==== Boost Libraries
> AC_ARG_WITH([boost-include-path],
>         [AS_HELP_STRING([--with-boost-include-path],[location of the
> Boost headers, defaults to /usr/include/boost])],
>         [CXXFLAGS_BOOST="-I$withval"],
>         [CXXFLAGS_BOOST="-I/usr/include/boost"])
> AC_SUBST([BOOST_CFLAGS])
>
> AC_ARG_WITH([boost-lib-path],
>         [AS_HELP_STRING([--with-boost-lib-path],[location of the Boost
> libraries, defaults to /usr/lib])],
>         [BOOST_LIBS="-L$withval" -lboost_system -lboost_filesystem
> -lboost_program_options -lboost_thread -lpthread],
>         [BOOST_LIBS="-L/usr/lib -lboost_system -lboost_filesystem
> -lboost_program_options -lboost_thread -lpthread"])
> AC_SUBST([BOOST_LIBS])
>
> AC_ARG_ENABLE(boost,
>         [--enable-boost Include Boost Libraries],
>         [case "${enableval}" in
>                 yes)    use_boost=true  ;;
>                 no)     use_boost=false ;;
>                 *) AC_MSG_ERROR(bad value ${enableval} for --enable-boost)
> ;;
>          esac
>         ],
>         [use_boost=false])
> AM_CONDITIONAL(CONFIG_BOOST, test x$boost = xtrue)
>
> # ==== cURL Libraries
> AC_ARG_WITH([curl-include-path],
>         [AS_HELP_STRING([--with-curl-include-path],[location of the cURL
> headers, defaults to /usr/include])],
>         [CXXFLAGS_CURL="-I$withval"],
>         [CXXFLAGS_CURL="-I/usr/include"])
> AC_SUBST([CURL_CFLAGS])
>
> AC_ARG_WITH([curl-lib-path],
>         [AS_HELP_STRING([--with-curl-lib-path],[location of the cURL
> libraries, defaults to /usr/lib])],
>         [CURL_LIBS="-L$withval" -lcurl],
>         [CURL_LIBS="-L/usr/lib -lcurl"])
> AC_SUBST([CURL_LIBS])
>
> AC_ARG_ENABLE(curl,
>         [--enable-curl  Include cURL],
>         [case "${enableval}" in
>                 yes)    use_curl=true  ;;
>                 no)     use_curl=false ;;
>                 *) AC_MSG_ERROR(bad value ${enableval} for --enable-curl)
> ;;
>          esac
>         ],
>         [use_curl=false])
> AM_CONDITIONAL(CONFIG_CURL, test x$curl = xtrue)
>
> # ==== cURLPP Libraries
> AC_ARG_WITH([curlpp-include-path],
>         [AS_HELP_STRING([--with-curlpp-include-path],[location of the
> cURLPP headers, defaults to /usr/include])],
>         [CXXFLAGS_CURLPP="-I$withval"],
>         [CXXFLAGS_CURLPP="-I/usr/include"])
> AC_SUBST([CURLPP_CFLAGS])
>
> AC_ARG_WITH([curlpp-lib-path],
>         [AS_HELP_STRING([--with-curlpp-lib-path],[location of the cURLPP
> libraries, defaults to /usr/lib])],
>         [CURLPP_LIBS="-L$withval" -lcurlpp -lutilspp],
>         [CURLPP_LIBS="-L/usr/lib -lcurlpp -lutilspp"])
> AC_SUBST([CURLPP_LIBS])
>
> AC_ARG_ENABLE(curlpp,
>         [--enable-curlpp        Include cURLPP],
>         [case "${enableval}" in
>                 yes)    use_curlpp=true  ;;
>                 no)     use_curlpp=false ;;
>                 *) AC_MSG_ERROR(bad value ${enableval} for
> --enable-curlpp) ;;
>          esac
>         ],
>         [use_curlpp=false])
> AM_CONDITIONAL(CONFIG_CURLPP, test x$curlpp = xtrue)
>
> # ==== OpenSSL Libraries
> AC_ARG_WITH([openssl-include-path],
>         [AS_HELP_STRING([--with-openssl-include-path],[location of the
> OpenSSL headers, defaults to /usr/include])],
>         [CFLAGS_OPENSSL="-I$withval"],
>         [CFLAGS_OPENSSL="-I/usr/include"])
> AC_SUBST([OPENSSL_CFLAGS])
>
> AC_ARG_WITH([openssl-lib-path],
>         [AS_HELP_STRING([--with-openssl-lib-path],[location of the
> OpenSSL libraries, defaults to /usr/lib])],
>         [OPENSSL_LIBS="-L$withval" -lssl],
>         [OPENSSL_LIBS="-L/usr/lib -lssl"])
> AC_SUBST([OPENSSL_LIBS])
>
> AC_ARG_ENABLE(openssl,
>         [--enable-openssl       Include OpenSSL],
>         [case "${enableval}" in
>                 yes)    use_openssl=true  ;;
>                 no)     use_openssl=false ;;
>                 *) AC_MSG_ERROR(bad value ${enableval} for
> --enable-openssl) ;;
>          esac
>         ],
>         [use_openssl=false])
> AM_CONDITIONAL(CONFIG_OPENSSL, test x$openssl = xtrue)
>
> # ==== Pthread Libraries
> AC_ARG_WITH([pthread-include-path],
>         [AS_HELP_STRING([--with-pthread-include-path],[location of the
> PThread headers, defaults to /usr/include])],
>         [CFLAGS_PTHREAD="-I$withval"],
>         [CFLAGS_PTHREAD="-I/usr/include"])
> AC_SUBST([PTHREAD_CFLAGS])
>
> AC_ARG_WITH([pthread-lib-path],
>         [AS_HELP_STRING([--with-pthread-lib-path],[location of the
> PThread libraries, defaults to /usr/include])],
>         [PTHREAD_LIBS="-L$withval" -lpthread],
>         [PTHREAD_LIBS="-L/usr/include -lpthread"])
> AC_SUBST([PTHREAD_LIBS])
>
> AC_ARG_ENABLE(pthread,
>         [--enable-pthread       Include PThreads],
>         [case "${enableval}" in
>                 yes)    use_pthread=true  ;;
>                 no)     use_pthread=false ;;
>                 *) AC_MSG_ERROR(bad value ${enableval} for
> --enable-pthread) ;;
>          esac
>         ],
>         [use_pthread=false])
> AM_CONDITIONAL(CONFIG_PTHREAD, test x$pthread = xtrue)
>
> # ==== Debug
> AC_ARG_ENABLE(debug,
>         [--enable-debug Build with DEBUG enabled],
>         [case "${enableval}" in
>                 yes)    debug=true  ;;
>                 no)     debug=false ;;
>                 *) AC_MSG_ERROR(bad value ${enableval} for --enable-debug)
> ;;
>          esac
>         ],
>         [debug=false])
> AM_CONDITIONAL(CONFIG_DEBUG, test x$debug = xtrue)
>
> AC_ARG_ENABLE(examples,
>         [--enable-examples      Build examples],
>         [case "${enableval}" in
>                 yes)    examples=true  ;;
>                 no)     examples=false ;;
>                 *) AC_MSG_ERROR(bad value ${enableval} for
> --enable-examples) ;;
>          esac
>         ],
>         [examples=false])
> AM_CONDITIONAL(CONFIG_EXAMPLES, test x$examples = xtrue)
>
> AC_SUBST([CFLAGS])
> AC_CONFIG_FILES([Makefile  libyocto.pc])
> AC_OUTPUT
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 

Aaron Schwartz
Production
Logic Supply
Direct: +1 802 861 2300 Ext. 530
Main: +1 802 861 2300
www.logicsupply.com

Google+ <https://plus.google.com/+Logicsupply/posts> | Twitter
<https://twitter.com/logicsupply> | LinkedIn
<https://www.linkedin.com/company/logic-supply> | YouTube
<https://www.youtube.com/user/logicsupply>

--94eb2c1c18527fd43c055a942989
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Are you looking to use menuconfig to configure your packag=
es?=C2=A0 BusyBox does this [0] pretty well in my experience, you might tak=
e a look at how they&#39;ve put that together.<div><div><br></div><div>0)=
=C2=A0<a href=3D"https://busybox.net/FAQ.html#configure">https://busybox.ne=
t/FAQ.html#configure</a></div></div></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">On Sat, Sep 30, 2017 at 10:49 AM, Ulf Samuelsson <=
span dir=3D"ltr">&lt;<a href=3D"mailto:yocto@emagii.com" target=3D"_blank">=
yocto@emagii.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Ha=
ve a need to convert a large number of libraries to use autotools.<br>
<br>
I came up with the following idea:<br>
<br>
I create an Kconfig based configuration system, where you define a number o=
f configuration items needed by <a href=3D"http://configure.ac" rel=3D"nore=
ferrer" target=3D"_blank">configure.ac</a> and Makefile.am<br>
<br>
You choose if you want to build an application, a shared library or a stati=
c library.<br>
<br>
The build normally depends on other libraries, and you checkmarks<br>
which library you are interested in from a (small) number of supported libr=
aries.<br>
You can likewise select to support options like &quot;--enable-openssl&quot=
;,<br>
again from a (small) number of supported options.<br>
<br>
If you have stuff not supported, the autotooler will include Config.in<br>
files allowing you to add your own items.<br>
<br>
Once the configuration is complete, you will compile an application<br>
which will generate &quot;<a href=3D"http://configure.ac" rel=3D"noreferrer=
" target=3D"_blank">configure.ac</a>&quot; from the configuration file.<br>
<br>
Again, if you have stuff not supported in the code, you can add it<br>
in a user include file.<br>
<br>
The generator will read a user-headers.inc file and<br>
generate an AC_CHECK_HEADERS entry.<br>
<br>
<br>
The autotooler is available on<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://www.github.com/emagii/autoto=
oler.git" rel=3D"noreferrer" target=3D"_blank">https://www.github.com/emagi=
i/<wbr>autotooler.git</a><br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D<br>
Currently, it does not generate any Makefile.am files, but<br>
the idea is to separate the source files into<br>
* C source<br>
* Public Headers<br>
* Local Headers<br>
<br>
A tool would then scan the directories and classify them accordingly,<br>
so Makefile.am files should be possible to generate fairly easy.<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D<br>
A final step would clone a empty git tree, and populate it<br>
with all the files needed for a complete package.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D<br>
<br>
Comments appreciated.<br>
<br>
Best Regards<br>
Ulf Samuelsson<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D<br>
Here is a typical &quot;autoconh.h&quot; generated by Kconfig.<br>
<br>
/*<br>
=C2=A0* Automatically generated C config: don&#39;t edit<br>
=C2=A0* Sat Sep 30 16:27:24 2017<br>
=C2=A0*/<br>
#define CONFIG_SHARED_LIB 1<br>
#define CONFIG_PTHREAD 1<br>
#define CONFIG_LIBRARY 1<br>
#define CONFIG_PROJECT &quot;myproject&quot;<br>
#define CONFIG_WORKDIR &quot;${HOME}/projects/autotooler&quot;<br>
#define CONFIG_OPENSSL 1<br>
#define CONFIG_CURL 1<br>
#define CONFIG_COPYRIGHT_DATE &quot;2017&quot;<br>
#define CONFIG_HOMEPAGE &quot;<a href=3D"http://www.emagii.com/" rel=3D"nor=
eferrer" target=3D"_blank">http://www.emagii.com/</a>&quot;<br>
#define CONFIG_EXAMPLES 1<br>
#define CONFIG_DEBUG 1<br>
#define HAVE_DOT_CONFIG 1<br>
#define CONFIG_AC_PRERQ &quot;2.59&quot;<br>
#define CONFIG_BOOST 1<br>
#define CONFIG_OS_LINUX 1<br>
#define CONFIG_LIBRARY_NAME &quot;libyocto&quot;<br>
#define CONFIG_AUTHOR_EMAIL &quot;<a href=3D"mailto:ulf@emagii.com" target=
=3D"_blank">ulf@emagii.com</a>&quot;<br>
#define CONFIG_LIBRARY_VERSION &quot;1.0&quot;<br>
#define CONFIG_AC_CONFIG_HEADER &quot;src/include/config.h&quot;<br>
#define CONFIG_OS &quot;Linux&quot;<br>
#define CONFIG_EXAMPLES_VAR &quot;examples&quot;<br>
#define CONFIG_AC_CONFIG_MACRO_DIR &quot;m4&quot;<br>
#define CONFIG_DEBUG_VAR &quot;debug&quot;<br>
#define CONFIG_PROJECT_TYPE &quot;library&quot;<br>
#define CONFIG_SRCDIR &quot;src&quot;<br>
#define CONFIG_SRC_URI_REPO &quot;&quot;<br>
#define CONFIG_AUTHOR &quot;Ulf Samuelsson&quot;<br>
#define CONFIG_SRC_URI_HOST &quot;<a href=3D"https://www.github.com/emagii"=
 rel=3D"noreferrer" target=3D"_blank">https://www.github.com/emagii</a><wbr=
>&quot;<br>
#define CONFIG_CURLPP 1<br>
#define CONFIG_AM_INIT_AUTOMAKE &quot;1.10 -Wall no-define&quot;<br>
<br>
The application will from this information generate:<br>
<br>
AC_INIT([libyocto],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [1.0],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [Ulf Samuelsson],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [libyocto-1.0],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [<a href=3D"http://www.emagii.com/" rel=3D"nore=
ferrer" target=3D"_blank">http://www.emagii.com/</a>])<br>
<br>
AC_PRERQ([2.59])<br>
<br>
AC_CONFIG_HEADER([src/include/<wbr>config.h])<br>
<br>
AC_CONFIG_SRCDIR([src])<br>
<br>
AC_PROG_CPP<br>
AC_PROG_CC<br>
AC_INIT_AUTOMAKE([1.10 -Wall no-define])<br>
<br>
AC_PROG_MAKE_SET<br>
AM_MAINTAINER_MODE<br>
AC_HEADER_STDC<br>
AC_ENABLE_SHARED<br>
AC_DISABLE_STATIC<br>
AC_PROG_LIBTOOL<br>
AC_HEADER_STDC<br>
<br>
AC_CHECK_HEADERS( \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ctype.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 errno.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fcntl.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 openssl/bio.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 openssl/err.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 openssl/opensslconf.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 openssl/rand.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 openssl/ssl.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 pthread.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 stdio.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 stdlib.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 stdarg.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 stdint.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 string.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 signal.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sys/ioctl.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sys/socket.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sys/time.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sys/types.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 time.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unistd.h \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ,<br>
dnl to do if not found<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [],<br>
dnl to do if not found<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [],<br>
dnl default includes<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [<br>
#ifdef HAVE_SYS_TYPES_H<br>
#include &lt;sys/types.h&gt;<br>
#endif<br>
#ifdef HAVE_SYS_TIME_H<br>
#include &lt;sys/time.h&gt;<br>
#endif<br>
dnl We do this default-include simply to make sure that the nameser_compat.=
h<br>
dnl header *REALLY* can be include after the new nameser.h. It seems AIX 5.=
1<br>
dnl (and others?) is not designed to allow this.<br>
#ifdef HAVE_ARPA_NAMESER_H<br>
#include &lt;arpa/nameser.h&gt;<br>
#endif<br>
<br>
dnl *Sigh* these are needed in order for net/if.h to get properly detected.=
<br>
#ifdef HAVE_SYS_SOCKET_H<br>
#include &lt;sys/socket.h&gt;<br>
#endif<br>
#ifdef HAVE_NETINET_IN_H<br>
#include &lt;netinet/in.h&gt;<br>
#endif<br>
]<br>
)<br>
<br>
# =3D=3D=3D=3D Boost Libraries<br>
AC_ARG_WITH([boost-include-pat<wbr>h],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [AS_HELP_STRING([--with-boost-<wbr>include-path=
],[location of the Boost headers, defaults to /usr/include/boost])],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [CXXFLAGS_BOOST=3D&quot;-I$withval&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [CXXFLAGS_BOOST=3D&quot;-I/usr/includ<wbr>e/boo=
st&quot;])<br>
AC_SUBST([BOOST_CFLAGS])<br>
<br>
AC_ARG_WITH([boost-lib-path],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [AS_HELP_STRING([--with-boost-<wbr>lib-path],[l=
ocation of the Boost libraries, defaults to /usr/lib])],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [BOOST_LIBS=3D&quot;-L$withval&quot; -lboost_sy=
stem -lboost_filesystem -lboost_program_options -lboost_thread -lpthread],<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [BOOST_LIBS=3D&quot;-L/usr/lib -lboost_system -=
lboost_filesystem -lboost_program_options -lboost_thread -lpthread&quot;])<=
br>
AC_SUBST([BOOST_LIBS])<br>
<br>
AC_ARG_ENABLE(boost,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [--enable-boost Include Boost Libraries],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [case &quot;${enableval}&quot; in<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 yes)=C2=A0 =C2=A0 u=
se_boost=3Dtrue=C2=A0 ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 no)=C2=A0 =C2=A0 =
=C2=A0use_boost=3Dfalse ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *) AC_MSG_ERROR(bad=
 value ${enableval} for --enable-boost) ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0esac<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [use_boost=3Dfalse])<br>
AM_CONDITIONAL(CONFIG_BOOST, test x$boost =3D xtrue)<br>
<br>
# =3D=3D=3D=3D cURL Libraries<br>
AC_ARG_WITH([curl-include-path<wbr>],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [AS_HELP_STRING([--with-curl-i<wbr>nclude-path]=
,[location of the cURL headers, defaults to /usr/include])],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [CXXFLAGS_CURL=3D&quot;-I$withval&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [CXXFLAGS_CURL=3D&quot;-I/usr/include<wbr>&quot=
;])<br>
AC_SUBST([CURL_CFLAGS])<br>
<br>
AC_ARG_WITH([curl-lib-path],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [AS_HELP_STRING([--with-curl-l<wbr>ib-path],[lo=
cation of the cURL libraries, defaults to /usr/lib])],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [CURL_LIBS=3D&quot;-L$withval&quot; -lcurl],<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [CURL_LIBS=3D&quot;-L/usr/lib -lcurl&quot;])<br=
>
AC_SUBST([CURL_LIBS])<br>
<br>
AC_ARG_ENABLE(curl,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [--enable-curl=C2=A0 Include cURL],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [case &quot;${enableval}&quot; in<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 yes)=C2=A0 =C2=A0 u=
se_curl=3Dtrue=C2=A0 ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 no)=C2=A0 =C2=A0 =
=C2=A0use_curl=3Dfalse ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *) AC_MSG_ERROR(bad=
 value ${enableval} for --enable-curl) ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0esac<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [use_curl=3Dfalse])<br>
AM_CONDITIONAL(CONFIG_CURL, test x$curl =3D xtrue)<br>
<br>
# =3D=3D=3D=3D cURLPP Libraries<br>
AC_ARG_WITH([curlpp-include-pa<wbr>th],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [AS_HELP_STRING([--with-curlpp<wbr>-include-pat=
h],[location of the cURLPP headers, defaults to /usr/include])],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [CXXFLAGS_CURLPP=3D&quot;-I$withval&quot;]<wbr>=
,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [CXXFLAGS_CURLPP=3D&quot;-I/usr/inclu<wbr>de&qu=
ot;])<br>
AC_SUBST([CURLPP_CFLAGS])<br>
<br>
AC_ARG_WITH([curlpp-lib-path],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [AS_HELP_STRING([--with-curlpp<wbr>-lib-path],[=
location of the cURLPP libraries, defaults to /usr/lib])],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [CURLPP_LIBS=3D&quot;-L$withval&quot; -lcurlpp =
-lutilspp],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [CURLPP_LIBS=3D&quot;-L/usr/lib -lcurlpp -lutil=
spp&quot;])<br>
AC_SUBST([CURLPP_LIBS])<br>
<br>
AC_ARG_ENABLE(curlpp,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [--enable-curlpp=C2=A0 =C2=A0 =C2=A0 =C2=A0 Inc=
lude cURLPP],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [case &quot;${enableval}&quot; in<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 yes)=C2=A0 =C2=A0 u=
se_curlpp=3Dtrue=C2=A0 ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 no)=C2=A0 =C2=A0 =
=C2=A0use_curlpp=3Dfalse ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *) AC_MSG_ERROR(bad=
 value ${enableval} for --enable-curlpp) ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0esac<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [use_curlpp=3Dfalse])<br>
AM_CONDITIONAL(CONFIG_CURLPP, test x$curlpp =3D xtrue)<br>
<br>
# =3D=3D=3D=3D OpenSSL Libraries<br>
AC_ARG_WITH([openssl-include-p<wbr>ath],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [AS_HELP_STRING([--with-openss<wbr>l-include-pa=
th],[location of the OpenSSL headers, defaults to /usr/include])],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [CFLAGS_OPENSSL=3D&quot;-I$withval&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [CFLAGS_OPENSSL=3D&quot;-I/usr/includ<wbr>e&quo=
t;])<br>
AC_SUBST([OPENSSL_CFLAGS])<br>
<br>
AC_ARG_WITH([openssl-lib-path]<wbr>,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [AS_HELP_STRING([--with-openss<wbr>l-lib-path],=
[location of the OpenSSL libraries, defaults to /usr/lib])],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [OPENSSL_LIBS=3D&quot;-L$withval&quot; -lssl],<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [OPENSSL_LIBS=3D&quot;-L/usr/lib -lssl&quot;])<=
br>
AC_SUBST([OPENSSL_LIBS])<br>
<br>
AC_ARG_ENABLE(openssl,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [--enable-openssl=C2=A0 =C2=A0 =C2=A0 =C2=A0Inc=
lude OpenSSL],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [case &quot;${enableval}&quot; in<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 yes)=C2=A0 =C2=A0 u=
se_openssl=3Dtrue=C2=A0 ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 no)=C2=A0 =C2=A0 =
=C2=A0use_openssl=3Dfalse ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *) AC_MSG_ERROR(bad=
 value ${enableval} for --enable-openssl) ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0esac<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [use_openssl=3Dfalse])<br>
AM_CONDITIONAL(CONFIG_OPENSSL, test x$openssl =3D xtrue)<br>
<br>
# =3D=3D=3D=3D Pthread Libraries<br>
AC_ARG_WITH([pthread-include-p<wbr>ath],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [AS_HELP_STRING([--with-pthrea<wbr>d-include-pa=
th],[location of the PThread headers, defaults to /usr/include])],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [CFLAGS_PTHREAD=3D&quot;-I$withval&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [CFLAGS_PTHREAD=3D&quot;-I/usr/includ<wbr>e&quo=
t;])<br>
AC_SUBST([PTHREAD_CFLAGS])<br>
<br>
AC_ARG_WITH([pthread-lib-path]<wbr>,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [AS_HELP_STRING([--with-pthrea<wbr>d-lib-path],=
[location of the PThread libraries, defaults to /usr/include])],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [PTHREAD_LIBS=3D&quot;-L$withval&quot; -lpthrea=
d],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [PTHREAD_LIBS=3D&quot;-L/usr/include -lpthread&=
quot;])<br>
AC_SUBST([PTHREAD_LIBS])<br>
<br>
AC_ARG_ENABLE(pthread,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [--enable-pthread=C2=A0 =C2=A0 =C2=A0 =C2=A0Inc=
lude PThreads],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [case &quot;${enableval}&quot; in<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 yes)=C2=A0 =C2=A0 u=
se_pthread=3Dtrue=C2=A0 ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 no)=C2=A0 =C2=A0 =
=C2=A0use_pthread=3Dfalse ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *) AC_MSG_ERROR(bad=
 value ${enableval} for --enable-pthread) ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0esac<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [use_pthread=3Dfalse])<br>
AM_CONDITIONAL(CONFIG_PTHREAD, test x$pthread =3D xtrue)<br>
<br>
# =3D=3D=3D=3D Debug<br>
AC_ARG_ENABLE(debug,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [--enable-debug Build with DEBUG enabled],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [case &quot;${enableval}&quot; in<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 yes)=C2=A0 =C2=A0 d=
ebug=3Dtrue=C2=A0 ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 no)=C2=A0 =C2=A0 =
=C2=A0debug=3Dfalse ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *) AC_MSG_ERROR(bad=
 value ${enableval} for --enable-debug) ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0esac<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [debug=3Dfalse])<br>
AM_CONDITIONAL(CONFIG_DEBUG, test x$debug =3D xtrue)<br>
<br>
AC_ARG_ENABLE(examples,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [--enable-examples=C2=A0 =C2=A0 =C2=A0 Build ex=
amples],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [case &quot;${enableval}&quot; in<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 yes)=C2=A0 =C2=A0 e=
xamples=3Dtrue=C2=A0 ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 no)=C2=A0 =C2=A0 =
=C2=A0examples=3Dfalse ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *) AC_MSG_ERROR(bad=
 value ${enableval} for --enable-examples) ;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0esac<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [examples=3Dfalse])<br>
AM_CONDITIONAL(CONFIG_EXAMPLES<wbr>, test x$examples =3D xtrue)<br>
<br>
AC_SUBST([CFLAGS])<br>
AC_CONFIG_FILES([Makefile=C2=A0 libyocto.pc])<br>
AC_OUTPUT<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><p styl=
e=3D"color:#4c4c4c;font-family:Arial;font-size:13px">Aaron Schwartz<br> Pro=
duction<br> Logic Supply<br>Direct: +1 802 861 2300 Ext. 530 <br> Main:=C2=
=A0+1 802 861 2300<br> <a href=3D"http://www.logicsupply.com" target=3D"_bl=
ank">www.logicsupply.com</a></p><p style=3D"color:#4c4c4c;font-family:Arial=
;font-size:12px"><a href=3D"https://plus.google.com/+Logicsupply/posts" tar=
get=3D"_blank">Google+</a> | <a href=3D"https://twitter.com/logicsupply" ta=
rget=3D"_blank">Twitter</a> | <a href=3D"https://www.linkedin.com/company/l=
ogic-supply" target=3D"_blank">LinkedIn</a> | <a href=3D"https://www.youtub=
e.com/user/logicsupply" target=3D"_blank">YouTube</a></p></div>
</div>

--94eb2c1c18527fd43c055a942989--
