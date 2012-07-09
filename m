Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08228E013D4
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 07:37:48 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so8932724wgb.11
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2012 07:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=a9Ary8BDy3nJVBLCp1dKy+7/W+kfNpKhM5bHosDeOeE=;
	b=wcSwK3eIZRCCYDaJ61Nasw6vd33w5dFbZ46rlbtnd+g7tCRMK2vMfzPKi9oaZ24w6l
	9NcfSj9av2A6ThX4SSsvsy5xHWmgqy0ccyDxpo8nn40TXG2axzDZb7HCYGM0YngRMq9C
	2ZzX2D30Pf7rEstXYYvbHqXX4mnNaT5V+axBjmBZD3CWSxtntii/sQC8rgTMXJzhozpn
	VfFix/59R0nNNnyxu3wVdGa8ZC1NPQrgLJVVPQbHRJT27mTPDTgN75IHi+lS4EnNfnwC
	eFmX3kRpJY54jhJ/Fll+36fed/QTqebP+K+voYurlNQ5npnZiGorP01YKvFtefvso5p9
	52ng==
Received: by 10.216.2.132 with SMTP id 4mr4061213wef.208.1341844664579;
	Mon, 09 Jul 2012 07:37:44 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id b7sm10275833wiz.9.2012.07.09.07.37.39
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 09 Jul 2012 07:37:41 -0700 (PDT)
Date: Mon, 9 Jul 2012 16:37:36 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Message-ID: <20120709143736.GE6308@jama.jama.net>
References: <4FFAEBFC.2090603@communistcode.co.uk>
MIME-Version: 1.0
In-Reply-To: <4FFAEBFC.2090603@communistcode.co.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: m4 build failure - master && denzil branch
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
X-List-Received-Date: Mon, 09 Jul 2012 14:37:49 -0000
X-Groupsio-MsgNum: 7772
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="JBi0ZxuS5uaEhkUZ"
Content-Disposition: inline

--JBi0ZxuS5uaEhkUZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 09, 2012 at 03:34:36PM +0100, Jack Mitchell wrote:
> So, I'm fairly sure this is a real build failure this time, again on the=
=20
> poky master and denzil branch.
>=20
> Please see attached file as the log is too big to paste.

does your host use (e)glibc-2.16?

if it's so, then you need this patch for m4
http://patchwork.openembedded.org/patch/31377/

Cheers,

>=20
> Regards,
>=20
> --=20
>=20
>    Jack Mitchell (jack@embed.me.uk)
>    Embedded Systems Engineer
>    http://www.embed.me.uk
>=20
> --
>=20

> [build@yoctoBuilder build]$ cat /mnt/storage/yoctoBuilds/poky-denzil.git/=
build/tmp/work/x86_64-linux/m4-native-1.4.16-r2/tep/log.do_compile.15996
> ERROR: Function failed: do_compile (see /mnt/storage/yoctoBuilds/poky-den=
zil.git/build/tmp/work/x86_64-linux/m4-native-1.4.16-r2/temp/log.do_compile=
=2E15996 for further information)
> NOTE: make -j 4 infodir=3D/mnt/storage/yoctoBuilds/poky-denzil.git/build/=
tmp/sysroots/x86_64-linux/usr/share/info
> make  all-recursive
> make[1]: Entering directory `/mnt/storage/yoctoBuilds/poky-denzil.git/bui=
ld/tmp/work/x86_64-linux/m4-native-1.4.16-r2/m4-1.4.16'
> Making all in .
> make[2]: Entering directory `/mnt/storage/yoctoBuilds/poky-denzil.git/bui=
ld/tmp/work/x86_64-linux/m4-native-1.4.16-r2/m4-1.4.16'
> make[2]: Nothing to be done for `all-am'.
> make[2]: Leaving directory `/mnt/storage/yoctoBuilds/poky-denzil.git/buil=
d/tmp/work/x86_64-linux/m4-native-1.4.16-r2/m4-1.4.16'
> Making all in examples
> make[2]: Entering directory `/mnt/storage/yoctoBuilds/poky-denzil.git/bui=
ld/tmp/work/x86_64-linux/m4-native-1.4.16-r2/m4-1.4.16/examples'
> make[2]: Nothing to be done for `all'.
> make[2]: Leaving directory `/mnt/storage/yoctoBuilds/poky-denzil.git/buil=
d/tmp/work/x86_64-linux/m4-native-1.4.16-r2/m4-1.4.16/examples'
> Making all in lib
> make[2]: Entering directory `/mnt/storage/yoctoBuilds/poky-denzil.git/bui=
ld/tmp/work/x86_64-linux/m4-native-1.4.16-r2/m4-1.4.16/lib'
> rm -f alloca.h-t alloca.h && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
>   cat ./alloca.in.h; \
> } > alloca.h-t && \
> mv -f alloca.h-t alloca.h
> rm -f arg-nonnull.h-t arg-nonnull.h && \
> sed -n -e '/GL_ARG_NONNULL/,$p' \
>   < ../build-aux/arg-nonnull.h \
>   > arg-nonnull.h-t && \
> mv arg-nonnull.h-t arg-nonnull.h
> rm -f c++defs.h-t c++defs.h && \
> sed -n -e '/_GL_CXXDEFS/,$p' \
>   < ../build-aux/c++defs.h \
>   > c++defs.h-t && \
> mv c++defs.h-t c++defs.h
> rm -f configmake.h-t && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
>   echo '#define PREFIX "/mnt/storage/yoctoBuilds/poky-denzil.git/build/tm=
p/sysroots/x86_64-linux/usr"'; \
>   echo '#define EXEC_PREFIX "/mnt/storage/yoctoBuilds/poky-denzil.git/bui=
ld/tmp/sysroots/x86_64-linux/usr"'; \
>   echo '#define BINDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/build/tm=
p/sysroots/x86_64-linux/usr/bin"'; \
>   echo '#define SBINDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/build/t=
mp/sysroots/x86_64-linux/usr/sbin"'; \
>   echo '#define LIBEXECDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/buil=
d/tmp/sysroots/x86_64-linux/usr/libexec"'; \
>   echo '#define DATAROOTDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/bui=
ld/tmp/sysroots/x86_64-linux/usr/share"'; \
>   echo '#define DATADIR "/mnt/storage/yoctoBuilds/poky-denzil.git/build/t=
mp/sysroots/x86_64-linux/usr/share"'; \
>   echo '#define SYSCONFDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/buil=
d/tmp/sysroots/x86_64-linux/etc"'; \
>   echo '#define SHAREDSTATEDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/=
build/tmp/sysroots/x86_64-linux/com"'; \
>   echo '#define LOCALSTATEDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/b=
uild/tmp/sysroots/x86_64-linux/var"'; \
>   echo '#define INCLUDEDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/buil=
d/tmp/sysroots/x86_64-linux/usr/include"'; \
>   echo '#define OLDINCLUDEDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/b=
uild/tmp/sysroots/x86_64-linux/usr/include"'; \
>   echo '#define DOCDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/build/tm=
p/sysroots/x86_64-linux/usr/share/doc/m4"'; \
>   echo '#define INFODIR "/mnt/storage/yoctoBuilds/poky-denzil.git/build/t=
mp/sysroots/x86_64-linux/usr/share/info"'; \
>   echo '#define HTMLDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/build/t=
mp/sysroots/x86_64-linux/usr/share/doc/m4"'; \
>   echo '#define DVIDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/build/tm=
p/sysroots/x86_64-linux/usr/share/doc/m4"'; \
>   echo '#define PDFDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/build/tm=
p/sysroots/x86_64-linux/usr/share/doc/m4"'; \
>   echo '#define PSDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/build/tmp=
/sysroots/x86_64-linux/usr/share/doc/m4"'; \
>   echo '#define LIBDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/build/tm=
p/sysroots/x86_64-linux/usr/lib"'; \
>   echo '#define LISPDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/build/t=
mp/sysroots/x86_64-linux/usr/share/emacs/site-lisp"'; \
>   echo '#define LOCALEDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/build=
/tmp/sysroots/x86_64-linux/usr/share/locale"'; \
>   echo '#define MANDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/build/tm=
p/sysroots/x86_64-linux/usr/share/man"'; \
>   echo '#define MANEXT ""'; \
>   echo '#define PKGDATADIR "/mnt/storage/yoctoBuilds/poky-denzil.git/buil=
d/tmp/sysroots/x86_64-linux/usr/share/m4"'; \
>   echo '#define PKGINCLUDEDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/b=
uild/tmp/sysroots/x86_64-linux/usr/include/m4"'; \
>   echo '#define PKGLIBDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/build=
/tmp/sysroots/x86_64-linux/usr/lib/m4"'; \
>   echo '#define PKGLIBEXECDIR "/mnt/storage/yoctoBuilds/poky-denzil.git/b=
uild/tmp/sysroots/x86_64-linux/usr/libexec/m4"'; \
> } | sed '/""/d' > configmake.h-t && \
> if test -f configmake.h && cmp configmake.h-t configmake.h > /dev/null; t=
hen \
>   rm -f configmake.h-t; \
> else \
>   rm -f configmake.h; mv configmake.h-t configmake.h; \
> fi
> rm -f warn-on-use.h-t warn-on-use.h && \
> sed -n -e '/^.ifndef/,$p' \
>   < ../build-aux/warn-on-use.h \
>   > warn-on-use.h-t && \
> mv warn-on-use.h-t warn-on-use.h
> rm -f fcntl.h-t fcntl.h && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
>   sed -e 's|@''INCLUDE_NEXT''@|include_next|g' \
>       -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
>       -e 's|@''PRAGMA_COLUMNS''@||g' \
>       -e 's|@''NEXT_FCNTL_H''@|<fcntl.h>|g' \
>       -e 's|@''GNULIB_FCNTL''@|1|g' \
>       -e 's|@''GNULIB_OPEN''@|1|g' \
>       -e 's|@''GNULIB_OPENAT''@|0|g' \
>       -e 's|@''HAVE_FCNTL''@|1|g' \
>       -e 's|@''HAVE_OPENAT''@|1|g' \
>       -e 's|@''REPLACE_FCNTL''@|1|g' \
>       -e 's|@''REPLACE_OPEN''@|0|g' \
>       -e 's|@''REPLACE_OPENAT''@|0|g' \
>       -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
>       -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
>       -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
>       < ./fcntl.in.h; \
> } > fcntl.h-t && \
> mv fcntl.h-t fcntl.h
> rm -f langinfo.h-t langinfo.h && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
>   sed -e 's|@''HAVE_LANGINFO_H''@|1|g' \
>       -e 's|@''INCLUDE_NEXT''@|include_next|g' \
>       -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
>       -e 's|@''PRAGMA_COLUMNS''@||g' \
>       -e 's|@''NEXT_LANGINFO_H''@|<langinfo.h>|g' \
>       -e 's|@''GNULIB_NL_LANGINFO''@|1|g' \
>       -e 's|@''HAVE_LANGINFO_CODESET''@|1|g' \
>       -e 's|@''HAVE_LANGINFO_T_FMT_AMPM''@|1|g' \
>       -e 's|@''HAVE_LANGINFO_ERA''@|1|g' \
>       -e 's|@''HAVE_LANGINFO_YESEXPR''@|1|g' \
>       -e 's|@''HAVE_NL_LANGINFO''@|1|g' \
>       -e 's|@''REPLACE_NL_LANGINFO''@|0|g' \
>       -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
>       -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
>       < ./langinfo.in.h; \
> } > langinfo.h-t && \
> mv langinfo.h-t langinfo.h
> rm -f math.h-t math.h && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
>   sed -e 's|@''INCLUDE_NEXT_AS_FIRST_DIRECTIVE''@|include_next|g' \
>       -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
>       -e 's|@''PRAGMA_COLUMNS''@||g' \
>       -e 's|@''NEXT_AS_FIRST_DIRECTIVE_MATH_H''@|<math.h>|g' \
>       -e 's|@''GNULIB_ACOSL''@|0|g' \
>       -e 's|@''GNULIB_ASINL''@|0|g' \
>       -e 's|@''GNULIB_ATANL''@|0|g' \
>       -e 's|@''GNULIB_CEIL''@|0|g' \
>       -e 's|@''GNULIB_CEILF''@|0|g' \
>       -e 's|@''GNULIB_CEILL''@|0|g' \
>       -e 's|@''GNULIB_COSL''@|0|g' \
>       -e 's|@''GNULIB_EXPL''@|0|g' \
>       -e 's|@''GNULIB_FLOOR''@|0|g' \
>       -e 's|@''GNULIB_FLOORF''@|0|g' \
>       -e 's|@''GNULIB_FLOORL''@|0|g' \
>       -e 's|@''GNULIB_FREXP''@|1|g' \
>       -e 's|@''GNULIB_FREXPL''@|1|g' \
>       -e 's|@''GNULIB_ISFINITE''@|0|g' \
>       -e 's|@''GNULIB_ISINF''@|0|g' \
>       -e 's|@''GNULIB_ISNAN''@|0|g' \
>       -e 's|@''GNULIB_ISNANF''@|0|g' \
>       -e 's|@''GNULIB_ISNAND''@|0|g' \
>       -e 's|@''GNULIB_ISNANL''@|0|g' \
>       -e 's|@''GNULIB_LDEXPL''@|0|g' \
>       -e 's|@''GNULIB_LOGB''@|0|g' \
>       -e 's|@''GNULIB_LOGL''@|0|g' \
>       -e 's|@''GNULIB_ROUND''@|0|g' \
>       -e 's|@''GNULIB_ROUNDF''@|0|g' \
>       -e 's|@''GNULIB_ROUNDL''@|0|g' \
>       -e 's|@''GNULIB_SIGNBIT''@|1|g' \
>       -e 's|@''GNULIB_SINL''@|0|g' \
>       -e 's|@''GNULIB_SQRTL''@|0|g' \
>       -e 's|@''GNULIB_TANL''@|0|g' \
>       -e 's|@''GNULIB_TRUNC''@|0|g' \
>       -e 's|@''GNULIB_TRUNCF''@|0|g' \
>       -e 's|@''GNULIB_TRUNCL''@|0|g' \
>       < ./math.in.h | \
>   sed -e 's|@''HAVE_ACOSL''@|1|g' \
>       -e 's|@''HAVE_ASINL''@|1|g' \
>       -e 's|@''HAVE_ATANL''@|1|g' \
>       -e 's|@''HAVE_COSL''@|1|g' \
>       -e 's|@''HAVE_EXPL''@|1|g' \
>       -e 's|@''HAVE_ISNANF''@|1|g' \
>       -e 's|@''HAVE_ISNAND''@|1|g' \
>       -e 's|@''HAVE_ISNANL''@|1|g' \
>       -e 's|@''HAVE_LOGL''@|1|g' \
>       -e 's|@''HAVE_SINL''@|1|g' \
>       -e 's|@''HAVE_SQRTL''@|1|g' \
>       -e 's|@''HAVE_TANL''@|1|g' \
>       -e 's|@''HAVE_DECL_ACOSL''@|1|g' \
>       -e 's|@''HAVE_DECL_ASINL''@|1|g' \
>       -e 's|@''HAVE_DECL_ATANL''@|1|g' \
>       -e 's|@''HAVE_DECL_CEILF''@|1|g' \
>       -e 's|@''HAVE_DECL_CEILL''@|1|g' \
>       -e 's|@''HAVE_DECL_COSL''@|1|g' \
>       -e 's|@''HAVE_DECL_EXPL''@|1|g' \
>       -e 's|@''HAVE_DECL_FLOORF''@|1|g' \
>       -e 's|@''HAVE_DECL_FLOORL''@|1|g' \
>       -e 's|@''HAVE_DECL_FREXPL''@|1|g' \
>       -e 's|@''HAVE_DECL_LDEXPL''@|1|g' \
>       -e 's|@''HAVE_DECL_LOGB''@|1|g' \
>       -e 's|@''HAVE_DECL_LOGL''@|1|g' \
>       -e 's|@''HAVE_DECL_ROUND''@|1|g' \
>       -e 's|@''HAVE_DECL_ROUNDF''@|1|g' \
>       -e 's|@''HAVE_DECL_ROUNDL''@|1|g' \
>       -e 's|@''HAVE_DECL_SINL''@|1|g' \
>       -e 's|@''HAVE_DECL_SQRTL''@|1|g' \
>       -e 's|@''HAVE_DECL_TANL''@|1|g' \
>       -e 's|@''HAVE_DECL_TRUNC''@|1|g' \
>       -e 's|@''HAVE_DECL_TRUNCF''@|1|g' \
>       -e 's|@''HAVE_DECL_TRUNCL''@|1|g' \
>   | \
>   sed -e 's|@''REPLACE_CEIL''@|0|g' \
>       -e 's|@''REPLACE_CEILF''@|0|g' \
>       -e 's|@''REPLACE_CEILL''@|0|g' \
>       -e 's|@''REPLACE_FLOOR''@|0|g' \
>       -e 's|@''REPLACE_FLOORF''@|0|g' \
>       -e 's|@''REPLACE_FLOORL''@|0|g' \
>       -e 's|@''REPLACE_FREXP''@|0|g' \
>       -e 's|@''REPLACE_FREXPL''@|0|g' \
>       -e 's|@''REPLACE_HUGE_VAL''@|0|g' \
>       -e 's|@''REPLACE_ISFINITE''@|0|g' \
>       -e 's|@''REPLACE_ISINF''@|0|g' \
>       -e 's|@''REPLACE_ISNAN''@|0|g' \
>       -e 's|@''REPLACE_LDEXPL''@|0|g' \
>       -e 's|@''REPLACE_NAN''@|0|g' \
>       -e 's|@''REPLACE_ROUND''@|0|g' \
>       -e 's|@''REPLACE_ROUNDF''@|0|g' \
>       -e 's|@''REPLACE_ROUNDL''@|0|g' \
>       -e 's|@''REPLACE_SIGNBIT''@|0|g' \
>       -e 's|@''REPLACE_SIGNBIT_USING_GCC''@|1|g' \
>       -e 's|@''REPLACE_TRUNC''@|0|g' \
>       -e 's|@''REPLACE_TRUNCF''@|0|g' \
>       -e 's|@''REPLACE_TRUNCL''@|0|g' \
>       -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
>       -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
>       -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h'; \
> } > math.h-t && \
> mv math.h-t math.h
> rm -f signal.h-t signal.h && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
>   sed -e 's|@''INCLUDE_NEXT''@|include_next|g' \
>       -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
>       -e 's|@''PRAGMA_COLUMNS''@||g' \
>       -e 's|@''NEXT_SIGNAL_H''@|<signal.h>|g' \
>       -e 's|@''GNULIB_SIGNAL_H_SIGPIPE''@|0|g' \
>       -e 's|@''GNULIB_SIGPROCMASK''@|1|g' \
>       -e 's|@''GNULIB_SIGACTION''@|1|g' \
>       -e 's|@''HAVE_POSIX_SIGNALBLOCKING''@|1|g' \
>       -e 's|@''HAVE_SIGSET_T''@|1|g' \
>       -e 's|@''HAVE_SIGINFO_T''@|1|g' \
>       -e 's|@''HAVE_SIGACTION''@|1|g' \
>       -e 's|@''HAVE_STRUCT_SIGACTION_SA_SIGACTION''@|1|g' \
>       -e 's|@''HAVE_TYPE_VOLATILE_SIG_ATOMIC_T''@|1|g' \
>       -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
>       -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
>       -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
>       < ./signal.in.h; \
> } > signal.h-t && \
> mv signal.h-t signal.h
> rm -f spawn.h-t spawn.h && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
>   sed -e 's|@''HAVE_SPAWN_H''@|1|g' \
>       -e 's|@''INCLUDE_NEXT''@|include_next|g' \
>       -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
>       -e 's|@''PRAGMA_COLUMNS''@||g' \
>       -e 's|@''NEXT_SPAWN_H''@|<spawn.h>|g' \
>       -e 's|@''GNULIB_POSIX_SPAWN''@|0|g' \
>       -e 's|@''GNULIB_POSIX_SPAWNP''@|1|g' \
>       -e 's|@''GNULIB_POSIX_SPAWN_FILE_ACTIONS_INIT''@|1|g' \
>       -e 's|@''GNULIB_POSIX_SPAWN_FILE_ACTIONS_ADDCLOSE''@|1|g' \
>       -e 's|@''GNULIB_POSIX_SPAWN_FILE_ACTIONS_ADDDUP2''@|1|g' \
>       -e 's|@''GNULIB_POSIX_SPAWN_FILE_ACTIONS_ADDOPEN''@|1|g' \
>       -e 's|@''GNULIB_POSIX_SPAWN_FILE_ACTIONS_DESTROY''@|1|g' \
>       -e 's|@''GNULIB_POSIX_SPAWNATTR_INIT''@|1|g' \
>       -e 's|@''GNULIB_POSIX_SPAWNATTR_GETFLAGS''@|0|g' \
>       -e 's|@''GNULIB_POSIX_SPAWNATTR_SETFLAGS''@|1|g' \
>       -e 's|@''GNULIB_POSIX_SPAWNATTR_GETPGROUP''@|0|g' \
>       -e 's|@''GNULIB_POSIX_SPAWNATTR_SETPGROUP''@|0|g' \
>       -e 's|@''GNULIB_POSIX_SPAWNATTR_GETSCHEDPARAM''@|0|g' \
>       -e 's|@''GNULIB_POSIX_SPAWNATTR_SETSCHEDPARAM''@|0|g' \
>       -e 's|@''GNULIB_POSIX_SPAWNATTR_GETSCHEDPOLICY''@|0|g' \
>       -e 's|@''GNULIB_POSIX_SPAWNATTR_SETSCHEDPOLICY''@|0|g' \
>       -e 's|@''GNULIB_POSIX_SPAWNATTR_GETSIGDEFAULT''@|0|g' \
>       -e 's|@''GNULIB_POSIX_SPAWNATTR_SETSIGDEFAULT''@|0|g' \
>       -e 's|@''GNULIB_POSIX_SPAWNATTR_GETSIGMASK''@|0|g' \
>       -e 's|@''GNULIB_POSIX_SPAWNATTR_SETSIGMASK''@|1|g' \
>       -e 's|@''GNULIB_POSIX_SPAWNATTR_DESTROY''@|1|g' \
>       -e 's|@''HAVE_POSIX_SPAWN''@|1|g' \
>       -e 's|@''HAVE_POSIX_SPAWNATTR_T''@|1|g' \
>       -e 's|@''HAVE_POSIX_SPAWN_FILE_ACTIONS_T''@|1|g' \
>       -e 's|@''REPLACE_POSIX_SPAWN''@|0|g' \
>       -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
>       -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
>       -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
>       < ./spawn.in.h; \
> } > spawn.h-t && \
> mv spawn.h-t spawn.h
> rm -f stdio.h-t stdio.h && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
>   sed -e 's|@''INCLUDE_NEXT''@|include_next|g' \
>       -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
>       -e 's|@''PRAGMA_COLUMNS''@||g' \
>       -e 's|@''NEXT_STDIO_H''@|<stdio.h>|g' \
>       -e 's|@''GNULIB_DPRINTF''@|0|g' \
>       -e 's|@''GNULIB_FCLOSE''@|1|g' \
>       -e 's|@''GNULIB_FFLUSH''@|1|g' \
>       -e 's|@''GNULIB_FOPEN''@|1|g' \
>       -e 's|@''GNULIB_FPRINTF''@|1|g' \
>       -e 's|@''GNULIB_FPRINTF_POSIX''@|0|g' \
>       -e 's|@''GNULIB_FPURGE''@|1|g' \
>       -e 's|@''GNULIB_FPUTC''@|1|g' \
>       -e 's|@''GNULIB_FPUTS''@|1|g' \
>       -e 's|@''GNULIB_FREOPEN''@|0|g' \
>       -e 's|@''GNULIB_FSEEK''@|0|g' \
>       -e 's|@''GNULIB_FSEEKO''@|1|g' \
>       -e 's|@''GNULIB_FTELL''@|IN_M4_GNULIB_TESTS|g' \
>       -e 's|@''GNULIB_FTELLO''@|1|g' \
>       -e 's|@''GNULIB_FWRITE''@|1|g' \
>       -e 's|@''GNULIB_GETDELIM''@|0|g' \
>       -e 's|@''GNULIB_GETLINE''@|0|g' \
>       -e 's|@''GNULIB_OBSTACK_PRINTF''@|0|g' \
>       -e 's|@''GNULIB_OBSTACK_PRINTF_POSIX''@|0|g' \
>       -e 's|@''GNULIB_PERROR''@|0|g' \
>       -e 's|@''GNULIB_POPEN''@|0|g' \
>       -e 's|@''GNULIB_PRINTF''@|1|g' \
>       -e 's|@''GNULIB_PRINTF_POSIX''@|0|g' \
>       -e 's|@''GNULIB_PUTC''@|1|g' \
>       -e 's|@''GNULIB_PUTCHAR''@|1|g' \
>       -e 's|@''GNULIB_PUTS''@|1|g' \
>       -e 's|@''GNULIB_REMOVE''@|0|g' \
>       -e 's|@''GNULIB_RENAME''@|1|g' \
>       -e 's|@''GNULIB_RENAMEAT''@|0|g' \
>       -e 's|@''GNULIB_SNPRINTF''@|1|g' \
>       -e 's|@''GNULIB_SPRINTF_POSIX''@|0|g' \
>       -e 's|@''GNULIB_STDIO_H_SIGPIPE''@|0|g' \
>       -e 's|@''GNULIB_TMPFILE''@|0|g' \
>       -e 's|@''GNULIB_VASPRINTF''@|1|g' \
>       -e 's|@''GNULIB_VDPRINTF''@|0|g' \
>       -e 's|@''GNULIB_VFPRINTF''@|1|g' \
>       -e 's|@''GNULIB_VFPRINTF_POSIX''@|0|g' \
>       -e 's|@''GNULIB_VPRINTF''@|1|g' \
>       -e 's|@''GNULIB_VPRINTF_POSIX''@|0|g' \
>       -e 's|@''GNULIB_VSNPRINTF''@|0|g' \
>       -e 's|@''GNULIB_VSPRINTF_POSIX''@|0|g' \
>       < ./stdio.in.h | \
>   sed -e 's|@''HAVE_DECL_FPURGE''@|0|g' \
>       -e 's|@''HAVE_DECL_FSEEKO''@|1|g' \
>       -e 's|@''HAVE_DECL_FTELLO''@|1|g' \
>       -e 's|@''HAVE_DECL_GETDELIM''@|1|g' \
>       -e 's|@''HAVE_DECL_GETLINE''@|1|g' \
>       -e 's|@''HAVE_DECL_OBSTACK_PRINTF''@|1|g' \
>       -e 's|@''HAVE_DECL_SNPRINTF''@|1|g' \
>       -e 's|@''HAVE_DECL_VSNPRINTF''@|1|g' \
>       -e 's|@''HAVE_DPRINTF''@|1|g' \
>       -e 's|@''HAVE_FSEEKO''@|1|g' \
>       -e 's|@''HAVE_FTELLO''@|1|g' \
>       -e 's|@''HAVE_RENAMEAT''@|1|g' \
>       -e 's|@''HAVE_VASPRINTF''@|1|g' \
>       -e 's|@''HAVE_VDPRINTF''@|1|g' \
>       -e 's|@''REPLACE_DPRINTF''@|0|g' \
>       -e 's|@''REPLACE_FCLOSE''@|0|g' \
>       -e 's|@''REPLACE_FFLUSH''@|1|g' \
>       -e 's|@''REPLACE_FOPEN''@|0|g' \
>       -e 's|@''REPLACE_FPRINTF''@|0|g' \
>       -e 's|@''REPLACE_FPURGE''@|0|g' \
>       -e 's|@''REPLACE_FREOPEN''@|0|g' \
>       -e 's|@''REPLACE_FSEEK''@|0|g' \
>       -e 's|@''REPLACE_FSEEKO''@|1|g' \
>       -e 's|@''REPLACE_FTELL''@|0|g' \
>       -e 's|@''REPLACE_FTELLO''@|0|g' \
>       -e 's|@''REPLACE_GETDELIM''@|0|g' \
>       -e 's|@''REPLACE_GETLINE''@|0|g' \
>       -e 's|@''REPLACE_OBSTACK_PRINTF''@|0|g' \
>       -e 's|@''REPLACE_PERROR''@|0|g' \
>       -e 's|@''REPLACE_POPEN''@|0|g' \
>       -e 's|@''REPLACE_PRINTF''@|0|g' \
>       -e 's|@''REPLACE_REMOVE''@|0|g' \
>       -e 's|@''REPLACE_RENAME''@|0|g' \
>       -e 's|@''REPLACE_RENAMEAT''@|0|g' \
>       -e 's|@''REPLACE_SNPRINTF''@|0|g' \
>       -e 's|@''REPLACE_SPRINTF''@|0|g' \
>       -e 's|@''REPLACE_STDIO_WRITE_FUNCS''@|0|g' \
>       -e 's|@''REPLACE_TMPFILE''@|0|g' \
>       -e 's|@''REPLACE_VASPRINTF''@|1|g' \
>       -e 's|@''REPLACE_VDPRINTF''@|0|g' \
>       -e 's|@''REPLACE_VFPRINTF''@|0|g' \
>       -e 's|@''REPLACE_VPRINTF''@|0|g' \
>       -e 's|@''REPLACE_VSNPRINTF''@|0|g' \
>       -e 's|@''REPLACE_VSPRINTF''@|0|g' \
>       -e 's|@''ASM_SYMBOL_PREFIX''@||g' \
>       -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
>       -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
>       -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h'; \
> } > stdio.h-t && \
> mv stdio.h-t stdio.h
> rm -f stdlib.h-t stdlib.h && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
>   sed -e 's|@''INCLUDE_NEXT''@|include_next|g' \
>       -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
>       -e 's|@''PRAGMA_COLUMNS''@||g' \
>       -e 's|@''NEXT_STDLIB_H''@|<stdlib.h>|g' \
>       -e 's|@''GNULIB__EXIT''@|0|g' \
>       -e 's|@''GNULIB_ATOLL''@|0|g' \
>       -e 's|@''GNULIB_CALLOC_POSIX''@|0|g' \
>       -e 's|@''GNULIB_CANONICALIZE_FILE_NAME''@|1|g' \
>       -e 's|@''GNULIB_GETLOADAVG''@|0|g' \
>       -e 's|@''GNULIB_GETSUBOPT''@|0|g' \
>       -e 's|@''GNULIB_GRANTPT''@|0|g' \
>       -e 's|@''GNULIB_MALLOC_POSIX''@|1|g' \
>       -e 's|@''GNULIB_MBTOWC''@|1|g' \
>       -e 's|@''GNULIB_MKDTEMP''@|1|g' \
>       -e 's|@''GNULIB_MKOSTEMP''@|0|g' \
>       -e 's|@''GNULIB_MKOSTEMPS''@|0|g' \
>       -e 's|@''GNULIB_MKSTEMP''@|1|g' \
>       -e 's|@''GNULIB_MKSTEMPS''@|0|g' \
>       -e 's|@''GNULIB_PTSNAME''@|0|g' \
>       -e 's|@''GNULIB_PUTENV''@|IN_M4_GNULIB_TESTS|g' \
>       -e 's|@''GNULIB_RANDOM_R''@|0|g' \
>       -e 's|@''GNULIB_REALLOC_POSIX''@|0|g' \
>       -e 's|@''GNULIB_REALPATH''@|1|g' \
>       -e 's|@''GNULIB_RPMATCH''@|0|g' \
>       -e 's|@''GNULIB_SETENV''@|IN_M4_GNULIB_TESTS|g' \
>       -e 's|@''GNULIB_STRTOD''@|1|g' \
>       -e 's|@''GNULIB_STRTOLL''@|0|g' \
>       -e 's|@''GNULIB_STRTOULL''@|0|g' \
>       -e 's|@''GNULIB_SYSTEM_POSIX''@|0|g' \
>       -e 's|@''GNULIB_UNLOCKPT''@|0|g' \
>       -e 's|@''GNULIB_UNSETENV''@|IN_M4_GNULIB_TESTS|g' \
>       -e 's|@''GNULIB_WCTOMB''@|IN_M4_GNULIB_TESTS|g' \
>       < ./stdlib.in.h | \
>   sed -e 's|@''HAVE__EXIT''@|1|g' \
>       -e 's|@''HAVE_ATOLL''@|1|g' \
>       -e 's|@''HAVE_CANONICALIZE_FILE_NAME''@|1|g' \
>       -e 's|@''HAVE_DECL_GETLOADAVG''@|1|g' \
>       -e 's|@''HAVE_GETSUBOPT''@|1|g' \
>       -e 's|@''HAVE_GRANTPT''@|1|g' \
>       -e 's|@''HAVE_MKDTEMP''@|1|g' \
>       -e 's|@''HAVE_MKOSTEMP''@|1|g' \
>       -e 's|@''HAVE_MKOSTEMPS''@|1|g' \
>       -e 's|@''HAVE_MKSTEMP''@|1|g' \
>       -e 's|@''HAVE_MKSTEMPS''@|1|g' \
>       -e 's|@''HAVE_PTSNAME''@|1|g' \
>       -e 's|@''HAVE_RANDOM_H''@|1|g' \
>       -e 's|@''HAVE_RANDOM_R''@|1|g' \
>       -e 's|@''HAVE_REALPATH''@|1|g' \
>       -e 's|@''HAVE_RPMATCH''@|1|g' \
>       -e 's|@''HAVE_DECL_SETENV''@|1|g' \
>       -e 's|@''HAVE_STRTOD''@|1|g' \
>       -e 's|@''HAVE_STRTOLL''@|1|g' \
>       -e 's|@''HAVE_STRTOULL''@|1|g' \
>       -e 's|@''HAVE_STRUCT_RANDOM_DATA''@|1|g' \
>       -e 's|@''HAVE_SYS_LOADAVG_H''@|0|g' \
>       -e 's|@''HAVE_UNLOCKPT''@|1|g' \
>       -e 's|@''HAVE_DECL_UNSETENV''@|1|g' \
>       -e 's|@''REPLACE_CALLOC''@|0|g' \
>       -e 's|@''REPLACE_CANONICALIZE_FILE_NAME''@|0|g' \
>       -e 's|@''REPLACE_MALLOC''@|0|g' \
>       -e 's|@''REPLACE_MBTOWC''@|0|g' \
>       -e 's|@''REPLACE_MKSTEMP''@|0|g' \
>       -e 's|@''REPLACE_PUTENV''@|0|g' \
>       -e 's|@''REPLACE_REALLOC''@|0|g' \
>       -e 's|@''REPLACE_REALPATH''@|0|g' \
>       -e 's|@''REPLACE_SETENV''@|0|g' \
>       -e 's|@''REPLACE_STRTOD''@|0|g' \
>       -e 's|@''REPLACE_UNSETENV''@|0|g' \
>       -e 's|@''REPLACE_WCTOMB''@|0|g' \
>       -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
>       -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
>       -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h'; \
> } > stdlib.h-t && \
> mv stdlib.h-t stdlib.h
> rm -f string.h-t string.h && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
>   sed -e 's|@''INCLUDE_NEXT''@|include_next|g' \
>       -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
>       -e 's|@''PRAGMA_COLUMNS''@||g' \
>       -e 's|@''NEXT_STRING_H''@|<string.h>|g' \
>       -e 's|@''GNULIB_MBSLEN''@|0|g' \
>       -e 's|@''GNULIB_MBSNLEN''@|0|g' \
>       -e 's|@''GNULIB_MBSCHR''@|0|g' \
>       -e 's|@''GNULIB_MBSRCHR''@|0|g' \
>       -e 's|@''GNULIB_MBSSTR''@|0|g' \
>       -e 's|@''GNULIB_MBSCASECMP''@|0|g' \
>       -e 's|@''GNULIB_MBSNCASECMP''@|0|g' \
>       -e 's|@''GNULIB_MBSPCASECMP''@|0|g' \
>       -e 's|@''GNULIB_MBSCASESTR''@|0|g' \
>       -e 's|@''GNULIB_MBSCSPN''@|0|g' \
>       -e 's|@''GNULIB_MBSPBRK''@|0|g' \
>       -e 's|@''GNULIB_MBSSPN''@|0|g' \
>       -e 's|@''GNULIB_MBSSEP''@|0|g' \
>       -e 's|@''GNULIB_MBSTOK_R''@|0|g' \
>       -e 's|@''GNULIB_MEMCHR''@|1|g' \
>       -e 's|@''GNULIB_MEMMEM''@|0|g' \
>       -e 's|@''GNULIB_MEMPCPY''@|0|g' \
>       -e 's|@''GNULIB_MEMRCHR''@|0|g' \
>       -e 's|@''GNULIB_RAWMEMCHR''@|1|g' \
>       -e 's|@''GNULIB_STPCPY''@|0|g' \
>       -e 's|@''GNULIB_STPNCPY''@|0|g' \
>       -e 's|@''GNULIB_STRCHRNUL''@|1|g' \
>       -e 's|@''GNULIB_STRDUP''@|IN_M4_GNULIB_TESTS|g' \
>       -e 's|@''GNULIB_STRNCAT''@|0|g' \
>       -e 's|@''GNULIB_STRNDUP''@|1|g' \
>       -e 's|@''GNULIB_STRNLEN''@|1|g' \
>       -e 's|@''GNULIB_STRPBRK''@|0|g' \
>       -e 's|@''GNULIB_STRSEP''@|0|g' \
>       -e 's|@''GNULIB_STRSTR''@|1|g' \
>       -e 's|@''GNULIB_STRCASESTR''@|0|g' \
>       -e 's|@''GNULIB_STRTOK_R''@|0|g' \
>       -e 's|@''GNULIB_STRERROR''@|1|g' \
>       -e 's|@''GNULIB_STRERROR_R''@|0|g' \
>       -e 's|@''GNULIB_STRSIGNAL''@|1|g' \
>       -e 's|@''GNULIB_STRVERSCMP''@|0|g' \
>       < ./string.in.h | \
>   sed -e 's|@''HAVE_MBSLEN''@|0|g' \
>       -e 's|@''HAVE_MEMCHR''@|1|g' \
>       -e 's|@''HAVE_DECL_MEMMEM''@|1|g' \
>       -e 's|@''HAVE_MEMPCPY''@|1|g' \
>       -e 's|@''HAVE_DECL_MEMRCHR''@|1|g' \
>       -e 's|@''HAVE_RAWMEMCHR''@|1|g' \
>       -e 's|@''HAVE_STPCPY''@|1|g' \
>       -e 's|@''HAVE_STPNCPY''@|1|g' \
>       -e 's|@''HAVE_STRCHRNUL''@|1|g' \
>       -e 's|@''HAVE_DECL_STRDUP''@|1|g' \
>       -e 's|@''HAVE_DECL_STRNDUP''@|1|g' \
>       -e 's|@''HAVE_DECL_STRNLEN''@|1|g' \
>       -e 's|@''HAVE_STRPBRK''@|1|g' \
>       -e 's|@''HAVE_STRSEP''@|1|g' \
>       -e 's|@''HAVE_STRCASESTR''@|1|g' \
>       -e 's|@''HAVE_DECL_STRTOK_R''@|1|g' \
>       -e 's|@''HAVE_DECL_STRERROR_R''@|1|g' \
>       -e 's|@''HAVE_DECL_STRSIGNAL''@|1|g' \
>       -e 's|@''HAVE_STRVERSCMP''@|1|g' \
>       -e 's|@''REPLACE_STPNCPY''@|0|g' \
>       -e 's|@''REPLACE_MEMCHR''@|0|g' \
>       -e 's|@''REPLACE_MEMMEM''@|0|g' \
>       -e 's|@''REPLACE_STRCASESTR''@|0|g' \
>       -e 's|@''REPLACE_STRDUP''@|0|g' \
>       -e 's|@''REPLACE_STRSTR''@|0|g' \
>       -e 's|@''REPLACE_STRERROR''@|0|g' \
>       -e 's|@''REPLACE_STRERROR_R''@|0|g' \
>       -e 's|@''REPLACE_STRNCAT''@|0|g' \
>       -e 's|@''REPLACE_STRNDUP''@|0|g' \
>       -e 's|@''REPLACE_STRNLEN''@|0|g' \
>       -e 's|@''REPLACE_STRSIGNAL''@|0|g' \
>       -e 's|@''REPLACE_STRTOK_R''@|0|g' \
>       -e 's|@''UNDEFINE_STRTOK_R''@|0|g' \
>       -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
>       -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
>       -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h'; \
>       < ./string.in.h; \
> } > string.h-t && \
> mv string.h-t string.h
> /bin/mkdir -p sys
> /bin/mkdir -p sys
> /bin/mkdir -p sys
> rm -f sys/stat.h-t sys/stat.h && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
>   sed -e 's|@''INCLUDE_NEXT''@|include_next|g' \
>       -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
>       -e 's|@''PRAGMA_COLUMNS''@||g' \
>       -e 's|@''NEXT_SYS_STAT_H''@|<sys/stat.h>|g' \
>       -e 's|@''GNULIB_FCHMODAT''@|0|g' \
>       -e 's|@''GNULIB_FSTATAT''@|0|g' \
>       -e 's|@''GNULIB_FUTIMENS''@|0|g' \
>       -e 's|@''GNULIB_LCHMOD''@|0|g' \
>       -e 's|@''GNULIB_LSTAT''@|1|g' \
>       -e 's|@''GNULIB_MKDIRAT''@|0|g' \
>       -e 's|@''GNULIB_MKFIFO''@|0|g' \
>       -e 's|@''GNULIB_MKFIFOAT''@|0|g' \
>       -e 's|@''GNULIB_MKNOD''@|0|g' \
>       -e 's|@''GNULIB_MKNODAT''@|0|g' \
>       -e 's|@''GNULIB_STAT''@|1|g' \
>       -e 's|@''GNULIB_UTIMENSAT''@|0|g' \
>       -e 's|@''HAVE_FCHMODAT''@|1|g' \
>       -e 's|@''HAVE_FSTATAT''@|1|g' \
>       -e 's|@''HAVE_FUTIMENS''@|1|g' \
>       -e 's|@''HAVE_LCHMOD''@|1|g' \
>       -e 's|@''HAVE_LSTAT''@|1|g' \
>       -e 's|@''HAVE_MKDIRAT''@|1|g' \
>       -e 's|@''HAVE_MKFIFO''@|1|g' \
>       -e 's|@''HAVE_MKFIFOAT''@|1|g' \
>       -e 's|@''HAVE_MKNOD''@|1|g' \
>       -e 's|@''HAVE_MKNODAT''@|1|g' \
>       -e 's|@''HAVE_UTIMENSAT''@|1|g' \
>       -e 's|@''REPLACE_FSTAT''@|0|g' \
>       -e 's|@''REPLACE_FSTATAT''@|0|g' \
>       -e 's|@''REPLACE_FUTIMENS''@|0|g' \
>       -e 's|@''REPLACE_LSTAT''@|0|g' \
>       -e 's|@''REPLACE_MKDIR''@|0|g' \
>       -e 's|@''REPLACE_MKFIFO''@|0|g' \
>       -e 's|@''REPLACE_MKNOD''@|0|g' \
>       -e 's|@''REPLACE_STAT''@|0|g' \
>       -e 's|@''REPLACE_UTIMENSAT''@|0|g' \
>       -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
>       -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
>       -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
>       < ./sys_stat.in.h; \
> } > sys/stat.h-t && \
> mv sys/stat.h-t sys/stat.h
> rm -f time.h-t time.h && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
>   sed -e 's|@''INCLUDE_NEXT''@|include_next|g' \
>       -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
>       -e 's|@''PRAGMA_COLUMNS''@||g' \
>       -e 's|@''NEXT_TIME_H''@|<time.h>|g' \
>       -e 's|@''GNULIB_MKTIME''@|0|g' \
>       -e 's|@''GNULIB_NANOSLEEP''@|0|g' \
>       -e 's|@''GNULIB_STRPTIME''@|0|g' \
>       -e 's|@''GNULIB_TIMEGM''@|0|g' \
>       -e 's|@''GNULIB_TIME_R''@|0|g' \
>       -e 's|@''HAVE_DECL_LOCALTIME_R''@|1|g' \
>       -e 's|@''HAVE_NANOSLEEP''@|1|g' \
>       -e 's|@''HAVE_STRPTIME''@|1|g' \
>       -e 's|@''HAVE_TIMEGM''@|1|g' \
>       -e 's|@''REPLACE_LOCALTIME_R''@|GNULIB_PORTCHECK|g' \
>       -e 's|@''REPLACE_MKTIME''@|GNULIB_PORTCHECK|g' \
>       -e 's|@''REPLACE_NANOSLEEP''@|GNULIB_PORTCHECK|g' \
>       -e 's|@''REPLACE_TIMEGM''@|GNULIB_PORTCHECK|g' \
>       -e 's|@''PTHREAD_H_DEFINES_STRUCT_TIMESPEC''@|0|g' \
>       -e 's|@''SYS_TIME_H_DEFINES_STRUCT_TIMESPEC''@|0|g' \
>       -e 's|@''TIME_H_DEFINES_STRUCT_TIMESPEC''@|1|g' \
>       -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
>       -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
>       -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
>       < ./time.in.h; \
> } > time.h-t && \
> mv time.h-t time.h
> rm -f sys/wait.h-t sys/wait.h && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
>   sed -e 's|@''INCLUDE_NEXT''@|include_next|g' \
>       -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
>       -e 's|@''PRAGMA_COLUMNS''@||g' \
>       -e 's|@''NEXT_SYS_WAIT_H''@|<sys/wait.h>|g' \
>       -e 's|@''GNULIB_WAITPID''@|1|g' \
>       -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
>       -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
>       < ./sys_wait.in.h; \
> } > sys/wait.h-t && \
> mv sys/wait.h-t sys/wait.h
> rm -f sys/time.h-t sys/time.h && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
>   sed -e 's/@''HAVE_SYS_TIME_H''@/1/g' \
>       -e 's|@''INCLUDE_NEXT''@|include_next|g' \
>       -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
>       -e 's|@''PRAGMA_COLUMNS''@||g' \
>       -e 's|@''NEXT_SYS_TIME_H''@|<sys/time.h>|g' \
>       -e 's/@''GNULIB_GETTIMEOFDAY''@/1/g' \
>       -e 's/@''HAVE_GETTIMEOFDAY''@/1/g' \
>       -e 's/@''HAVE_STRUCT_TIMEVAL''@/1/g' \
>       -e 's/@''REPLACE_GETTIMEOFDAY''@/0/g' \
>       -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
>       -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
>       -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
>       < ./sys_time.in.h; \
> } > sys/time.h-t && \
> mv sys/time.h-t sys/time.h
> rm -f unistd.h-t unistd.h && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
>   sed -e 's|@''HAVE_UNISTD_H''@|1|g' \
>       -e 's|@''INCLUDE_NEXT''@|include_next|g' \
>       -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
>       -e 's|@''PRAGMA_COLUMNS''@||g' \
>       -e 's|@''NEXT_UNISTD_H''@|<unistd.h>|g' \
>       -e 's|@''GNULIB_CHOWN''@|0|g' \
>       -e 's|@''GNULIB_CLOSE''@|1|g' \
>       -e 's|@''GNULIB_DUP2''@|1|g' \
>       -e 's|@''GNULIB_DUP3''@|0|g' \
>       -e 's|@''GNULIB_ENVIRON''@|1|g' \
>       -e 's|@''GNULIB_EUIDACCESS''@|0|g' \
>       -e 's|@''GNULIB_FACCESSAT''@|0|g' \
>       -e 's|@''GNULIB_FCHDIR''@|0|g' \
>       -e 's|@''GNULIB_FCHOWNAT''@|0|g' \
>       -e 's|@''GNULIB_FSYNC''@|0|g' \
>       -e 's|@''GNULIB_FTRUNCATE''@|0|g' \
>       -e 's|@''GNULIB_GETCWD''@|0|g' \
>       -e 's|@''GNULIB_GETDOMAINNAME''@|0|g' \
>       -e 's|@''GNULIB_GETDTABLESIZE''@|1|g' \
>       -e 's|@''GNULIB_GETGROUPS''@|0|g' \
>       -e 's|@''GNULIB_GETHOSTNAME''@|0|g' \
>       -e 's|@''GNULIB_GETLOGIN''@|0|g' \
>       -e 's|@''GNULIB_GETLOGIN_R''@|0|g' \
>       -e 's|@''GNULIB_GETPAGESIZE''@|IN_M4_GNULIB_TESTS|g' \
>       -e 's|@''GNULIB_GETUSERSHELL''@|0|g' \
>       -e 's|@''GNULIB_LCHOWN''@|0|g' \
>       -e 's|@''GNULIB_LINK''@|IN_M4_GNULIB_TESTS|g' \
>       -e 's|@''GNULIB_LINKAT''@|0|g' \
>       -e 's|@''GNULIB_LSEEK''@|1|g' \
>       -e 's|@''GNULIB_PIPE''@|0|g' \
>       -e 's|@''GNULIB_PIPE2''@|1|g' \
>       -e 's|@''GNULIB_PREAD''@|0|g' \
>       -e 's|@''GNULIB_PWRITE''@|0|g' \
>       -e 's|@''GNULIB_READLINK''@|1|g' \
>       -e 's|@''GNULIB_READLINKAT''@|0|g' \
>       -e 's|@''GNULIB_RMDIR''@|1|g' \
>       -e 's|@''GNULIB_SLEEP''@|0|g' \
>       -e 's|@''GNULIB_SYMLINK''@|IN_M4_GNULIB_TESTS|g' \
>       -e 's|@''GNULIB_SYMLINKAT''@|0|g' \
>       -e 's|@''GNULIB_TTYNAME_R''@|0|g' \
>       -e 's|@''GNULIB_UNISTD_H_GETOPT''@|0|g' \
>       -e 's|@''GNULIB_UNISTD_H_SIGPIPE''@|0|g' \
>       -e 's|@''GNULIB_UNLINK''@|0|g' \
>       -e 's|@''GNULIB_UNLINKAT''@|0|g' \
>       -e 's|@''GNULIB_USLEEP''@|0|g' \
>       -e 's|@''GNULIB_WRITE''@|0|g' \
>       < ./unistd.in.h | \
>   sed -e 's|@''HAVE_CHOWN''@|1|g' \
>       -e 's|@''HAVE_DUP2''@|1|g' \
>       -e 's|@''HAVE_DUP3''@|1|g' \
>       -e 's|@''HAVE_EUIDACCESS''@|1|g' \
>       -e 's|@''HAVE_FACCESSAT''@|1|g' \
>       -e 's|@''HAVE_FCHDIR''@|1|g' \
>       -e 's|@''HAVE_FCHOWNAT''@|1|g' \
>       -e 's|@''HAVE_FSYNC''@|1|g' \
>       -e 's|@''HAVE_FTRUNCATE''@|1|g' \
>       -e 's|@''HAVE_GETDTABLESIZE''@|1|g' \
>       -e 's|@''HAVE_GETGROUPS''@|1|g' \
>       -e 's|@''HAVE_GETHOSTNAME''@|1|g' \
>       -e 's|@''HAVE_GETLOGIN''@|1|g' \
>       -e 's|@''HAVE_GETPAGESIZE''@|1|g' \
>       -e 's|@''HAVE_LCHOWN''@|1|g' \
>       -e 's|@''HAVE_LINK''@|1|g' \
>       -e 's|@''HAVE_LINKAT''@|1|g' \
>       -e 's|@''HAVE_PIPE''@|1|g' \
>       -e 's|@''HAVE_PIPE2''@|1|g' \
>       -e 's|@''HAVE_PREAD''@|1|g' \
>       -e 's|@''HAVE_PWRITE''@|1|g' \
>       -e 's|@''HAVE_READLINK''@|1|g' \
>       -e 's|@''HAVE_READLINKAT''@|1|g' \
>       -e 's|@''HAVE_SLEEP''@|1|g' \
>       -e 's|@''HAVE_SYMLINK''@|1|g' \
>       -e 's|@''HAVE_SYMLINKAT''@|1|g' \
>       -e 's|@''HAVE_UNLINKAT''@|1|g' \
>       -e 's|@''HAVE_USLEEP''@|1|g' \
>       -e 's|@''HAVE_DECL_ENVIRON''@|1|g' \
>       -e 's|@''HAVE_DECL_FCHDIR''@|1|g' \
>       -e 's|@''HAVE_DECL_GETDOMAINNAME''@|1|g' \
>       -e 's|@''HAVE_DECL_GETLOGIN_R''@|1|g' \
>       -e 's|@''HAVE_DECL_GETPAGESIZE''@|1|g' \
>       -e 's|@''HAVE_DECL_GETUSERSHELL''@|1|g' \
>       -e 's|@''HAVE_DECL_TTYNAME_R''@|1|g' \
>       -e 's|@''HAVE_OS_H''@|0|g' \
>       -e 's|@''HAVE_SYS_PARAM_H''@|0|g' \
>   | \
>   sed -e 's|@''REPLACE_CHOWN''@|0|g' \
>       -e 's|@''REPLACE_CLOSE''@|0|g' \
>       -e 's|@''REPLACE_DUP''@|0|g' \
>       -e 's|@''REPLACE_DUP2''@|0|g' \
>       -e 's|@''REPLACE_FCHOWNAT''@|0|g' \
>       -e 's|@''REPLACE_GETCWD''@|0|g' \
>       -e 's|@''REPLACE_GETDOMAINNAME''@|0|g' \
>       -e 's|@''REPLACE_GETLOGIN_R''@|0|g' \
>       -e 's|@''REPLACE_GETGROUPS''@|0|g' \
>       -e 's|@''REPLACE_GETPAGESIZE''@|0|g' \
>       -e 's|@''REPLACE_LCHOWN''@|0|g' \
>       -e 's|@''REPLACE_LINK''@|0|g' \
>       -e 's|@''REPLACE_LINKAT''@|0|g' \
>       -e 's|@''REPLACE_LSEEK''@|0|g' \
>       -e 's|@''REPLACE_PREAD''@|0|g' \
>       -e 's|@''REPLACE_PWRITE''@|0|g' \
>       -e 's|@''REPLACE_READLINK''@|0|g' \
>       -e 's|@''REPLACE_RMDIR''@|0|g' \
>       -e 's|@''REPLACE_SLEEP''@|0|g' \
>       -e 's|@''REPLACE_SYMLINK''@|0|g' \
>       -e 's|@''REPLACE_TTYNAME_R''@|0|g' \
>       -e 's|@''REPLACE_UNLINK''@|0|g' \
>       -e 's|@''REPLACE_UNLINKAT''@|0|g' \
>       -e 's|@''REPLACE_USLEEP''@|0|g' \
>       -e 's|@''REPLACE_WRITE''@|0|g' \
>       -e 's|@''UNISTD_H_HAVE_WINSOCK2_H''@|0|g' \
>       -e 's|@''UNISTD_H_HAVE_WINSOCK2_H_AND_USE_SOCKETS''@|0|g' \
>       -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
>       -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
>       -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h'; \
> } > unistd.h-t && \
> mv unistd.h-t unistd.h
> rm -f wchar.h-t wchar.h && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
>   sed -e 's|@''INCLUDE_NEXT''@|include_next|g' \
>       -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
>       -e 's|@''PRAGMA_COLUMNS''@||g' \
>       -e 's|@''HAVE_FEATURES_H''@|1|g' \
>       -e 's|@''NEXT_WCHAR_H''@|<wchar.h>|g' \
>       -e 's|@''HAVE_WCHAR_H''@|1|g' \
>       -e 's|@''GNULIB_BTOWC''@|1|g' \
>       -e 's|@''GNULIB_WCTOB''@|IN_M4_GNULIB_TESTS|g' \
>       -e 's|@''GNULIB_MBSINIT''@|1|g' \
>       -e 's|@''GNULIB_MBRTOWC''@|1|g' \
>       -e 's|@''GNULIB_MBRLEN''@|0|g' \
>       -e 's|@''GNULIB_MBSRTOWCS''@|0|g' \
>       -e 's|@''GNULIB_MBSNRTOWCS''@|0|g' \
>       -e 's|@''GNULIB_WCRTOMB''@|1|g' \
>       -e 's|@''GNULIB_WCSRTOMBS''@|0|g' \
>       -e 's|@''GNULIB_WCSNRTOMBS''@|0|g' \
>       -e 's|@''GNULIB_WCWIDTH''@|0|g' \
>       -e 's|@''GNULIB_WMEMCHR''@|0|g' \
>       -e 's|@''GNULIB_WMEMCMP''@|0|g' \
>       -e 's|@''GNULIB_WMEMCPY''@|0|g' \
>       -e 's|@''GNULIB_WMEMMOVE''@|0|g' \
>       -e 's|@''GNULIB_WMEMSET''@|0|g' \
>       -e 's|@''GNULIB_WCSLEN''@|0|g' \
>       -e 's|@''GNULIB_WCSNLEN''@|0|g' \
>       -e 's|@''GNULIB_WCSCPY''@|0|g' \
>       -e 's|@''GNULIB_WCPCPY''@|0|g' \
>       -e 's|@''GNULIB_WCSNCPY''@|0|g' \
>       -e 's|@''GNULIB_WCPNCPY''@|0|g' \
>       -e 's|@''GNULIB_WCSCAT''@|0|g' \
>       -e 's|@''GNULIB_WCSNCAT''@|0|g' \
>       -e 's|@''GNULIB_WCSCMP''@|0|g' \
>       -e 's|@''GNULIB_WCSNCMP''@|0|g' \
>       -e 's|@''GNULIB_WCSCASECMP''@|0|g' \
>       -e 's|@''GNULIB_WCSNCASECMP''@|0|g' \
>       -e 's|@''GNULIB_WCSCOLL''@|0|g' \
>       -e 's|@''GNULIB_WCSXFRM''@|0|g' \
>       -e 's|@''GNULIB_WCSDUP''@|0|g' \
>       -e 's|@''GNULIB_WCSCHR''@|0|g' \
>       -e 's|@''GNULIB_WCSRCHR''@|0|g' \
>       -e 's|@''GNULIB_WCSCSPN''@|0|g' \
>       -e 's|@''GNULIB_WCSSPN''@|0|g' \
>       -e 's|@''GNULIB_WCSPBRK''@|0|g' \
>       -e 's|@''GNULIB_WCSSTR''@|0|g' \
>       -e 's|@''GNULIB_WCSTOK''@|0|g' \
>       -e 's|@''GNULIB_WCSWIDTH''@|0|g' \
>       < ./wchar.in.h | \
>   sed -e 's|@''HAVE_WINT_T''@|1|g' \
>       -e 's|@''HAVE_BTOWC''@|1|g' \
>       -e 's|@''HAVE_MBSINIT''@|1|g' \
>       -e 's|@''HAVE_MBRTOWC''@|1|g' \
>       -e 's|@''HAVE_MBRLEN''@|1|g' \
>       -e 's|@''HAVE_MBSRTOWCS''@|1|g' \
>       -e 's|@''HAVE_MBSNRTOWCS''@|1|g' \
>       -e 's|@''HAVE_WCRTOMB''@|1|g' \
>       -e 's|@''HAVE_WCSRTOMBS''@|1|g' \
>       -e 's|@''HAVE_WCSNRTOMBS''@|1|g' \
>       -e 's|@''HAVE_WMEMCHR''@|1|g' \
>       -e 's|@''HAVE_WMEMCMP''@|1|g' \
>       -e 's|@''HAVE_WMEMCPY''@|1|g' \
>       -e 's|@''HAVE_WMEMMOVE''@|1|g' \
>       -e 's|@''HAVE_WMEMSET''@|1|g' \
>       -e 's|@''HAVE_WCSLEN''@|1|g' \
>       -e 's|@''HAVE_WCSNLEN''@|1|g' \
>       -e 's|@''HAVE_WCSCPY''@|1|g' \
>       -e 's|@''HAVE_WCPCPY''@|1|g' \
>       -e 's|@''HAVE_WCSNCPY''@|1|g' \
>       -e 's|@''HAVE_WCPNCPY''@|1|g' \
>       -e 's|@''HAVE_WCSCAT''@|1|g' \
>       -e 's|@''HAVE_WCSNCAT''@|1|g' \
>       -e 's|@''HAVE_WCSCMP''@|1|g' \
>       -e 's|@''HAVE_WCSNCMP''@|1|g' \
>       -e 's|@''HAVE_WCSCASECMP''@|1|g' \
>       -e 's|@''HAVE_WCSNCASECMP''@|1|g' \
>       -e 's|@''HAVE_WCSCOLL''@|1|g' \
>       -e 's|@''HAVE_WCSXFRM''@|1|g' \
>       -e 's|@''HAVE_WCSDUP''@|1|g' \
>       -e 's|@''HAVE_WCSCHR''@|1|g' \
>       -e 's|@''HAVE_WCSRCHR''@|1|g' \
>       -e 's|@''HAVE_WCSCSPN''@|1|g' \
>       -e 's|@''HAVE_WCSSPN''@|1|g' \
>       -e 's|@''HAVE_WCSPBRK''@|1|g' \
>       -e 's|@''HAVE_WCSSTR''@|1|g' \
>       -e 's|@''HAVE_WCSTOK''@|1|g' \
>       -e 's|@''HAVE_WCSWIDTH''@|1|g' \
>       -e 's|@''HAVE_DECL_WCTOB''@|1|g' \
>       -e 's|@''HAVE_DECL_WCWIDTH''@|1|g' \
>   | \
>   sed -e 's|@''REPLACE_MBSTATE_T''@|0|g' \
>       -e 's|@''REPLACE_BTOWC''@|0|g' \
>       -e 's|@''REPLACE_WCTOB''@|0|g' \
>       -e 's|@''REPLACE_MBSINIT''@|0|g' \
>       -e 's|@''REPLACE_MBRTOWC''@|0|g' \
>       -e 's|@''REPLACE_MBRLEN''@|0|g' \
>       -e 's|@''REPLACE_MBSRTOWCS''@|0|g' \
>       -e 's|@''REPLACE_MBSNRTOWCS''@|0|g' \
>       -e 's|@''REPLACE_WCRTOMB''@|0|g' \
>       -e 's|@''REPLACE_WCSRTOMBS''@|0|g' \
>       -e 's|@''REPLACE_WCSNRTOMBS''@|0|g' \
>       -e 's|@''REPLACE_WCWIDTH''@|0|g' \
>       -e 's|@''REPLACE_WCSWIDTH''@|0|g' \
>       -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
>       -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
>       -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h'; \
> } > wchar.h-t && \
> mv wchar.h-t wchar.h
> rm -f wctype.h-t wctype.h && \
> { echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
>   sed -e 's/@''HAVE_WCTYPE_H''@/1/g' \
>       -e 's|@''INCLUDE_NEXT''@|include_next|g' \
>       -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
>       -e 's|@''PRAGMA_COLUMNS''@||g' \
>       -e 's|@''NEXT_WCTYPE_H''@|<wctype.h>|g' \
>       -e 's/@''GNULIB_ISWBLANK''@/0/g' \
>       -e 's/@''GNULIB_WCTYPE''@/0/g' \
>       -e 's/@''GNULIB_ISWCTYPE''@/0/g' \
>       -e 's/@''GNULIB_WCTRANS''@/0/g' \
>       -e 's/@''GNULIB_TOWCTRANS''@/0/g' \
>       -e 's/@''HAVE_ISWBLANK''@/1/g' \
>       -e 's/@''HAVE_ISWCNTRL''@/1/g' \
>       -e 's/@''HAVE_WCTYPE_T''@/1/g' \
>       -e 's/@''HAVE_WCTRANS_T''@/1/g' \
>       -e 's/@''HAVE_WINT_T''@/1/g' \
>       -e 's/@''REPLACE_ISWBLANK''@/0/g' \
>       -e 's/@''REPLACE_ISWCNTRL''@/0/g' \
>       -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
>       -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
>       < ./wctype.in.h; \
> } > wctype.h-t && \
> mv wctype.h-t wctype.h
> make  all-am
> make[3]: Entering directory `/mnt/storage/yoctoBuilds/poky-denzil.git/bui=
ld/tmp/work/x86_64-linux/m4-native-1.4.16-r2/m4-1.4.16/lib'
> \
> #	source=3D'gl_avltree_oset.c' object=3D'gl_avltree_oset.o' libtool=3Dno=
=20
> \
> #	source=3D'c-ctype.c' object=3D'c-ctype.o' libtool=3Dno=20
> \
> #	source=3D'c-stack.c' object=3D'c-stack.o' libtool=3Dno=20
> \
> #	source=3D'clean-temp.c' object=3D'clean-temp.o' libtool=3Dno=20
> gcc -std=3Dgnu99  -I.   -isystem/mnt/storage/yoctoBuilds/poky-denzil.git/=
build/tmp/sysroots/x86_64-linux/usr/include  -isystem/mnt/storage/yoctoBuil=
ds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/include -O2 -pipe -c=
 gl_avltree_oset.c
> gcc -std=3Dgnu99  -I.   -isystem/mnt/storage/yoctoBuilds/poky-denzil.git/=
build/tmp/sysroots/x86_64-linux/usr/include  -isystem/mnt/storage/yoctoBuil=
ds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/include -O2 -pipe -c=
 c-ctype.c
> gcc -std=3Dgnu99  -I.   -isystem/mnt/storage/yoctoBuilds/poky-denzil.git/=
build/tmp/sysroots/x86_64-linux/usr/include  -isystem/mnt/storage/yoctoBuil=
ds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/include -O2 -pipe -c=
 c-stack.c
> gcc -std=3Dgnu99  -I.   -isystem/mnt/storage/yoctoBuilds/poky-denzil.git/=
build/tmp/sysroots/x86_64-linux/usr/include  -isystem/mnt/storage/yoctoBuil=
ds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/include -O2 -pipe -c=
 clean-temp.c
> In file included from clean-temp.h:22:0,
>                  from clean-temp.c:23:
> ./stdio.h:477:1: error: 'gets' undeclared here (not in a function)
> \
> #	source=3D'close-hook.c' object=3D'close-hook.o' libtool=3Dno=20
> \
> #	source=3D'execute.c' object=3D'execute.o' libtool=3Dno=20
> gcc -std=3Dgnu99  -I.   -isystem/mnt/storage/yoctoBuilds/poky-denzil.git/=
build/tmp/sysroots/x86_64-linux/usr/include  -isystem/mnt/storage/yoctoBuil=
ds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/include -O2 -pipe -c=
 close-hook.c
> gcc -std=3Dgnu99  -I.   -isystem/mnt/storage/yoctoBuilds/poky-denzil.git/=
build/tmp/sysroots/x86_64-linux/usr/include  -isystem/mnt/storage/yoctoBuil=
ds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/include -O2 -pipe -c=
 execute.c
> make[3]: *** [clean-temp.o] Error 1
> make[3]: *** Waiting for unfinished jobs....
> make[3]: Leaving directory `/mnt/storage/yoctoBuilds/poky-denzil.git/buil=
d/tmp/work/x86_64-linux/m4-native-1.4.16-r2/m4-1.4.16/lib'
> make[2]: *** [all] Error 2
> make[2]: Leaving directory `/mnt/storage/yoctoBuilds/poky-denzil.git/buil=
d/tmp/work/x86_64-linux/m4-native-1.4.16-r2/m4-1.4.16/lib'
> make[1]: *** [all-recursive] Error 1
> make[1]: Leaving directory `/mnt/storage/yoctoBuilds/poky-denzil.git/buil=
d/tmp/work/x86_64-linux/m4-native-1.4.16-r2/m4-1.4.16'
> make: *** [all] Error 2
> ERROR: oe_runmake failed

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--JBi0ZxuS5uaEhkUZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk/67LAACgkQN1Ujt2V2gBzcsgCgnEUA0jKKcdFq+AdvnEvLv0XI
6DEAn19o+LUaacKGOBeRB1V0unPNItzI
=9Kd1
-----END PGP SIGNATURE-----

--JBi0ZxuS5uaEhkUZ--
