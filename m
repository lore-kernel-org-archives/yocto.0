Return-Path: <tim.bird@am.sony.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe002.messaging.microsoft.com [65.55.88.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38CAAE0142C
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2012 17:10:45 -0800 (PST)
Received: from mail243-tx2-R.bigfish.com (10.9.14.247) by
	TX2EHSOBE007.bigfish.com (10.9.40.27) with Microsoft SMTP Server id
	14.1.225.23; Wed, 14 Nov 2012 01:10:43 +0000
Received: from mail243-tx2 (localhost [127.0.0.1])	by
	mail243-tx2-R.bigfish.com (Postfix) with ESMTP id 855328001CF;
	Wed, 14 Nov 2012 01:10:43 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.228; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail01v.am.sony.com; RD:mail01.sonyusa.com;
	EFVD:NLI
X-SpamScore: -2
X-BigFish: VPS-2(zzc85dhc857h4015I14ffIzz1de0h1202h1d1ah1d2ahzzz2fh2a8h668h839hd25hf0ah1288h12a5h12bdh137ah1441h1504h1537h153bh34h1155h)
Received-SPF: pass (mail243-tx2: domain of am.sony.com designates
	160.33.194.228 as permitted sender) client-ip=160.33.194.228;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail01v.am.sony.com ; .am.sony.com ; 
Received: from mail243-tx2 (localhost.localdomain [127.0.0.1]) by mail243-tx2
	(MessageSwitch) id 1352855441239181_7581;
	Wed, 14 Nov 2012 01:10:41 +0000 (UTC)
Received: from TX2EHSMHS026.bigfish.com (unknown [10.9.14.240])	by
	mail243-tx2.bigfish.com (Postfix) with ESMTP id 373291840048;
	Wed, 14 Nov 2012 01:10:41 +0000 (UTC)
Received: from usculsndmail01v.am.sony.com (160.33.194.228) by
	TX2EHSMHS026.bigfish.com (10.9.99.126) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Wed, 14 Nov 2012 01:10:40 +0000
Received: from usculsndmail14v.am.sony.com (usculsndmail14v.am.sony.com
	[146.215.230.105])	by usculsndmail01v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qAE1AdQh017180;
	Wed, 14 Nov 2012 01:10:39 GMT
Received: from mail1x.sgo.in.sel.sony.com (mail2.sjc.in.sel.sony.com
	[43.130.1.112])	by usculsndmail14v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qAE1Ab76010267
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Wed, 14 Nov 2012 01:10:38 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	qAE1Abxl027162;	Wed, 14 Nov 2012 01:10:37 GMT
Message-ID: <50A2EFC0.3090908@am.sony.com>
Date: Tue, 13 Nov 2012 17:11:28 -0800
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, Darren Hart
	<dvhart@linux.intel.com>
X-OriginatorOrg: am.sony.com
Subject: Problem compiling diffutils on poky-tiny in danny
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
X-List-Received-Date: Wed, 14 Nov 2012 01:10:45 -0000
X-Groupsio-MsgNum: 10523
Content-Type: multipart/mixed; boundary="------------030106020103040804070301"

--------------030106020103040804070301
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

Hi all,

I'm using DISTRO=poky-tiny and trying to build:
 $ bitbake core-image-minimal-initramfs

I get the following error trying to compile diffutils:

...
i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/a/home/tbird/work/yocto/danny-test1/tmp/sysroots/qemux86 -std=gnu99  -I.      -O2 -pipe -g -feliminate-unused-debug-types -c -o wcwidth.o wcwidth.c
In file included from wcwidth.c:23:0:
./wctype.h:448:1: error: static declaration of 'iswalnum' follows non-static declaration
./wctype.h:460:1: error: static declaration of 'iswalpha' follows non-static declaration
...

See the attached compile log for details.

Has anyone done this recently?  Is this one of the supported images for
this distro (poky-tiny)?

Has anyone seen this type of error before, or can provide some
hints of what to check or adjust to fix this?

Thanks,
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================

--------------030106020103040804070301
Content-Type: text/plain; charset="UTF-8"; name="log.do_compile.19548"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="log.do_compile.19548"

DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common', 'common-linux', 'common-glibc', 'i586-linux', 'common']
DEBUG: Executing shell function do_compile
NOTE: make -j 10
Making all in lib
make[1]: Entering directory `/a/home/tbird/work/yocto/danny-test1/tmp/work/i586-poky-linux/diffutils-3.2-r7.0/diffutils-3.2/lib'
rm -f alloca.h-t alloca.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  cat ./alloca.in.h; \
	} > alloca.h-t && \
	mv -f alloca.h-t alloca.h
rm -f configmake.h-t && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  echo '#define PREFIX "/usr"'; \
	  echo '#define EXEC_PREFIX "/usr"'; \
	  echo '#define BINDIR "/usr/bin"'; \
	  echo '#define SBINDIR "/usr/sbin"'; \
	  echo '#define LIBEXECDIR "/usr/lib/diffutils"'; \
	  echo '#define DATAROOTDIR "/usr/share"'; \
	  echo '#define DATADIR "/usr/share"'; \
	  echo '#define SYSCONFDIR "/etc"'; \
	  echo '#define SHAREDSTATEDIR "/com"'; \
	  echo '#define LOCALSTATEDIR "/var"'; \
	  echo '#define INCLUDEDIR "/usr/include"'; \
	  echo '#define OLDINCLUDEDIR "/usr/include"'; \
	  echo '#define DOCDIR "/usr/share/doc/diffutils"'; \
	  echo '#define INFODIR "/usr/share/info"'; \
	  echo '#define HTMLDIR "/usr/share/doc/diffutils"'; \
	  echo '#define DVIDIR "/usr/share/doc/diffutils"'; \
	  echo '#define PDFDIR "/usr/share/doc/diffutils"'; \
	  echo '#define PSDIR "/usr/share/doc/diffutils"'; \
	  echo '#define LIBDIR "/usr/lib"'; \
	  echo '#define LISPDIR "/usr/share/emacs/site-lisp"'; \
	  echo '#define LOCALEDIR "/usr/share/locale"'; \
	  echo '#define MANDIR "/usr/share/man"'; \
	  echo '#define MANEXT ""'; \
	  echo '#define PKGDATADIR "/usr/share/diffutils"'; \
	  echo '#define PKGINCLUDEDIR "/usr/include/diffutils"'; \
	  echo '#define PKGLIBDIR "/usr/lib/diffutils"'; \
	  echo '#define PKGLIBEXECDIR "/usr/lib/diffutils/diffutils"'; \
	} | sed '/""/d' > configmake.h-t
rm -f fcntl.h-t fcntl.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_FCNTL_H''@|<fcntl.h>|g' \
	      -e 's/@''GNULIB_FCNTL''@/1/g' \
	      -e 's/@''GNULIB_NONBLOCKING''@/0/g' \
	      -e 's/@''GNULIB_OPEN''@/1/g' \
	      -e 's/@''GNULIB_OPENAT''@/0/g' \
	      -e 's|@''HAVE_FCNTL''@|1|g' \
	      -e 's|@''HAVE_OPENAT''@|1|g' \
	      -e 's|@''REPLACE_FCNTL''@|1|g' \
	      -e 's|@''REPLACE_OPEN''@|0|g' \
	      -e 's|@''REPLACE_OPENAT''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./fcntl.in.h; \
	} > fcntl.h-t && \
	mv fcntl.h-t fcntl.h
rm -f fnmatch.h-t fnmatch.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      < ./fnmatch.in.h; \
	} > fnmatch.h-t && \
	mv -f fnmatch.h-t fnmatch.h
mv -f configmake.h-t configmake.h
rm -f getopt.h-t getopt.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''HAVE_GETOPT_H''@|1|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_GETOPT_H''@|<getopt.h>|g' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      < ./getopt.in.h; \
	} > getopt.h-t && \
	mv -f getopt.h-t getopt.h
rm -f iconv.h-t iconv.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_ICONV_H''@|<iconv.h>|g' \
	      -e 's/@''GNULIB_ICONV''@/1/g' \
	      -e 's|@''ICONV_CONST''@||g' \
	      -e 's|@''REPLACE_ICONV''@|0|g' \
	      -e 's|@''REPLACE_ICONV_OPEN''@|0|g' \
	      -e 's|@''REPLACE_ICONV_UTF''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./iconv.in.h; \
	} > iconv.h-t && \
	mv iconv.h-t iconv.h
rm -f inttypes.h-t inttypes.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's/@''HAVE_INTTYPES_H''@/1/g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_INTTYPES_H''@|<inttypes.h>|g' \
	      -e 's/@''PRI_MACROS_BROKEN''@/0/g' \
	      -e 's/@''APPLE_UNIVERSAL_BUILD''@/0/g' \
	      -e 's/@''HAVE_LONG_LONG_INT''@/1/g' \
	      -e 's/@''HAVE_UNSIGNED_LONG_LONG_INT''@/1/g' \
	      -e 's/@''PRIPTR_PREFIX''@/""/g' \
	      -e 's/@''GNULIB_IMAXABS''@/0/g' \
	      -e 's/@''GNULIB_IMAXDIV''@/0/g' \
	      -e 's/@''GNULIB_STRTOIMAX''@/0/g' \
	      -e 's/@''GNULIB_STRTOUMAX''@/1/g' \
	      -e 's/@''HAVE_DECL_IMAXABS''@/1/g' \
	      -e 's/@''HAVE_DECL_IMAXDIV''@/1/g' \
	      -e 's/@''HAVE_DECL_STRTOIMAX''@/1/g' \
	      -e 's/@''HAVE_DECL_STRTOUMAX''@/1/g' \
	      -e 's/@''INT32_MAX_LT_INTMAX_MAX''@/1/g' \
	      -e 's/@''INT64_MAX_EQ_LONG_MAX''@/0/g' \
	      -e 's/@''UINT32_MAX_LT_UINTMAX_MAX''@/1/g' \
	      -e 's/@''UINT64_MAX_EQ_ULONG_MAX''@/0/g' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./inttypes.in.h; \
	} > inttypes.h-t && \
	mv inttypes.h-t inttypes.h
rm -f langinfo.h-t langinfo.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''HAVE_LANGINFO_H''@|1|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_LANGINFO_H''@|<langinfo.h>|g' \
	      -e 's/@''GNULIB_NL_LANGINFO''@/1/g' \
	      -e 's|@''HAVE_LANGINFO_CODESET''@|1|g' \
	      -e 's|@''HAVE_LANGINFO_T_FMT_AMPM''@|1|g' \
	      -e 's|@''HAVE_LANGINFO_ERA''@|1|g' \
	      -e 's|@''HAVE_LANGINFO_YESEXPR''@|1|g' \
	      -e 's|@''HAVE_NL_LANGINFO''@|0|g' \
	      -e 's|@''REPLACE_NL_LANGINFO''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./langinfo.in.h; \
	} > langinfo.h-t && \
	mv langinfo.h-t langinfo.h
rm -f signal.h-t signal.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_SIGNAL_H''@|<signal.h>|g' \
	      -e 's|@''GNULIB_PTHREAD_SIGMASK''@|0|g' \
	      -e 's/@''GNULIB_SIGNAL_H_SIGPIPE''@/0/g' \
	      -e 's/@''GNULIB_SIGPROCMASK''@/1/g' \
	      -e 's/@''GNULIB_SIGACTION''@/1/g' \
	      -e 's|@''HAVE_POSIX_SIGNALBLOCKING''@|1|g' \
	      -e 's|@''HAVE_PTHREAD_SIGMASK''@|1|g' \
	      -e 's|@''HAVE_SIGSET_T''@|1|g' \
	      -e 's|@''HAVE_SIGINFO_T''@|1|g' \
	      -e 's|@''HAVE_SIGACTION''@|1|g' \
	      -e 's|@''HAVE_STRUCT_SIGACTION_SA_SIGACTION''@|1|g' \
	      -e 's|@''HAVE_TYPE_VOLATILE_SIG_ATOMIC_T''@|1|g' \
	      -e 's|@''HAVE_SIGHANDLER_T''@|1|g' \
	      -e 's|@''REPLACE_PTHREAD_SIGMASK''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./signal.in.h; \
	} > signal.h-t && \
	mv signal.h-t signal.h
rm -f stdio.h-t stdio.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_STDIO_H''@|<stdio.h>|g' \
	      -e 's/@''GNULIB_DPRINTF''@/0/g' \
	      -e 's/@''GNULIB_FCLOSE''@/0/g' \
	      -e 's/@''GNULIB_FFLUSH''@/0/g' \
	      -e 's/@''GNULIB_FGETC''@/1/g' \
	      -e 's/@''GNULIB_FGETS''@/1/g' \
	      -e 's/@''GNULIB_FOPEN''@/0/g' \
	      -e 's/@''GNULIB_FPRINTF''@/1/g' \
	      -e 's/@''GNULIB_FPRINTF_POSIX''@/0/g' \
	      -e 's/@''GNULIB_FPURGE''@/0/g' \
	      -e 's/@''GNULIB_FPUTC''@/1/g' \
	      -e 's/@''GNULIB_FPUTS''@/1/g' \
	      -e 's/@''GNULIB_FREAD''@/1/g' \
	      -e 's/@''GNULIB_FREOPEN''@/1/g' \
	      -e 's/@''GNULIB_FSCANF''@/1/g' \
	      -e 's/@''GNULIB_FSEEK''@/0/g' \
	      -e 's/@''GNULIB_FSEEKO''@/0/g' \
	      -e 's/@''GNULIB_FTELL''@/0/g' \
	      -e 's/@''GNULIB_FTELLO''@/0/g' \
	      -e 's/@''GNULIB_FWRITE''@/1/g' \
	      -e 's/@''GNULIB_GETC''@/1/g' \
	      -e 's/@''GNULIB_GETCHAR''@/1/g' \
	      -e 's/@''GNULIB_GETDELIM''@/0/g' \
	      -e 's/@''GNULIB_GETLINE''@/0/g' \
	      -e 's/@''GNULIB_GETS''@/1/g' \
	      -e 's/@''GNULIB_OBSTACK_PRINTF''@/0/g' \
	      -e 's/@''GNULIB_OBSTACK_PRINTF_POSIX''@/0/g' \
	      -e 's/@''GNULIB_PERROR''@/0/g' \
	      -e 's/@''GNULIB_POPEN''@/0/g' \
	      -e 's/@''GNULIB_PRINTF''@/1/g' \
	      -e 's/@''GNULIB_PRINTF_POSIX''@/0/g' \
	      -e 's/@''GNULIB_PUTC''@/1/g' \
	      -e 's/@''GNULIB_PUTCHAR''@/1/g' \
	      -e 's/@''GNULIB_PUTS''@/1/g' \
	      -e 's/@''GNULIB_REMOVE''@/0/g' \
	      -e 's/@''GNULIB_RENAME''@/0/g' \
	      -e 's/@''GNULIB_RENAMEAT''@/0/g' \
	      -e 's/@''GNULIB_SCANF''@/1/g' \
	      -e 's/@''GNULIB_SNPRINTF''@/IN_DIFFUTILS_GNULIB_TESTS/g' \
	      -e 's/@''GNULIB_SPRINTF_POSIX''@/0/g' \
	      -e 's/@''GNULIB_STDIO_H_NONBLOCKING''@/0/g' \
	      -e 's/@''GNULIB_STDIO_H_SIGPIPE''@/0/g' \
	      -e 's/@''GNULIB_TMPFILE''@/0/g' \
	      -e 's/@''GNULIB_VASPRINTF''@/0/g' \
	      -e 's/@''GNULIB_VDPRINTF''@/0/g' \
	      -e 's/@''GNULIB_VFPRINTF''@/1/g' \
	      -e 's/@''GNULIB_VFPRINTF_POSIX''@/0/g' \
	      -e 's/@''GNULIB_VFSCANF''@/0/g' \
	      -e 's/@''GNULIB_VSCANF''@/0/g' \
	      -e 's/@''GNULIB_VPRINTF''@/1/g' \
	      -e 's/@''GNULIB_VPRINTF_POSIX''@/0/g' \
	      -e 's/@''GNULIB_VSNPRINTF''@/0/g' \
	      -e 's/@''GNULIB_VSPRINTF_POSIX''@/0/g' \
	      < ./stdio.in.h | \
	  sed -e 's|@''HAVE_DECL_FPURGE''@|1|g' \
	      -e 's|@''HAVE_DECL_FSEEKO''@|1|g' \
	      -e 's|@''HAVE_DECL_FTELLO''@|1|g' \
	      -e 's|@''HAVE_DECL_GETDELIM''@|1|g' \
	      -e 's|@''HAVE_DECL_GETLINE''@|1|g' \
	      -e 's|@''HAVE_DECL_OBSTACK_PRINTF''@|1|g' \
	      -e 's|@''HAVE_DECL_SNPRINTF''@|1|g' \
	      -e 's|@''HAVE_DECL_VSNPRINTF''@|1|g' \
	      -e 's|@''HAVE_DPRINTF''@|1|g' \
	      -e 's|@''HAVE_FSEEKO''@|1|g' \
	      -e 's|@''HAVE_FTELLO''@|1|g' \
	      -e 's|@''HAVE_RENAMEAT''@|1|g' \
	      -e 's|@''HAVE_VASPRINTF''@|1|g' \
	      -e 's|@''HAVE_VDPRINTF''@|1|g' \
	      -e 's|@''REPLACE_DPRINTF''@|0|g' \
	      -e 's|@''REPLACE_FCLOSE''@|0|g' \
	      -e 's|@''REPLACE_FFLUSH''@|0|g' \
	      -e 's|@''REPLACE_FOPEN''@|0|g' \
	      -e 's|@''REPLACE_FPRINTF''@|0|g' \
	      -e 's|@''REPLACE_FPURGE''@|0|g' \
	      -e 's|@''REPLACE_FREOPEN''@|0|g' \
	      -e 's|@''REPLACE_FSEEK''@|0|g' \
	      -e 's|@''REPLACE_FSEEKO''@|0|g' \
	      -e 's|@''REPLACE_FTELL''@|0|g' \
	      -e 's|@''REPLACE_FTELLO''@|0|g' \
	      -e 's|@''REPLACE_GETDELIM''@|0|g' \
	      -e 's|@''REPLACE_GETLINE''@|0|g' \
	      -e 's|@''REPLACE_OBSTACK_PRINTF''@|0|g' \
	      -e 's|@''REPLACE_PERROR''@|0|g' \
	      -e 's|@''REPLACE_POPEN''@|0|g' \
	      -e 's|@''REPLACE_PRINTF''@|0|g' \
	      -e 's|@''REPLACE_REMOVE''@|0|g' \
	      -e 's|@''REPLACE_RENAME''@|0|g' \
	      -e 's|@''REPLACE_RENAMEAT''@|0|g' \
	      -e 's|@''REPLACE_SNPRINTF''@|0|g' \
	      -e 's|@''REPLACE_SPRINTF''@|0|g' \
	      -e 's|@''REPLACE_STDIO_READ_FUNCS''@|0|g' \
	      -e 's|@''REPLACE_STDIO_WRITE_FUNCS''@|0|g' \
	      -e 's|@''REPLACE_TMPFILE''@|0|g' \
	      -e 's|@''REPLACE_VASPRINTF''@|0|g' \
	      -e 's|@''REPLACE_VDPRINTF''@|0|g' \
	      -e 's|@''REPLACE_VFPRINTF''@|0|g' \
	      -e 's|@''REPLACE_VPRINTF''@|0|g' \
	      -e 's|@''REPLACE_VSNPRINTF''@|0|g' \
	      -e 's|@''REPLACE_VSPRINTF''@|0|g' \
	      -e 's|@''ASM_SYMBOL_PREFIX''@||g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h'; \
	} > stdio.h-t && \
	mv stdio.h-t stdio.h
rm -f stdlib.h-t stdlib.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_STDLIB_H''@|<stdlib.h>|g' \
	      -e 's/@''GNULIB__EXIT''@/0/g' \
	      -e 's/@''GNULIB_ATOLL''@/0/g' \
	      -e 's/@''GNULIB_CALLOC_POSIX''@/0/g' \
	      -e 's/@''GNULIB_CANONICALIZE_FILE_NAME''@/0/g' \
	      -e 's/@''GNULIB_GETLOADAVG''@/0/g' \
	      -e 's/@''GNULIB_GETSUBOPT''@/0/g' \
	      -e 's/@''GNULIB_GRANTPT''@/0/g' \
	      -e 's/@''GNULIB_MALLOC_POSIX''@/1/g' \
	      -e 's/@''GNULIB_MBTOWC''@/1/g' \
	      -e 's/@''GNULIB_MKDTEMP''@/0/g' \
	      -e 's/@''GNULIB_MKOSTEMP''@/0/g' \
	      -e 's/@''GNULIB_MKOSTEMPS''@/0/g' \
	      -e 's/@''GNULIB_MKSTEMP''@/1/g' \
	      -e 's/@''GNULIB_MKSTEMPS''@/0/g' \
	      -e 's/@''GNULIB_PTSNAME''@/0/g' \
	      -e 's/@''GNULIB_PUTENV''@/IN_DIFFUTILS_GNULIB_TESTS/g' \
	      -e 's/@''GNULIB_RANDOM_R''@/0/g' \
	      -e 's/@''GNULIB_REALLOC_POSIX''@/0/g' \
	      -e 's/@''GNULIB_REALPATH''@/0/g' \
	      -e 's/@''GNULIB_RPMATCH''@/0/g' \
	      -e 's/@''GNULIB_SETENV''@/IN_DIFFUTILS_GNULIB_TESTS/g' \
	      -e 's/@''GNULIB_STRTOD''@/0/g' \
	      -e 's/@''GNULIB_STRTOLL''@/0/g' \
	      -e 's/@''GNULIB_STRTOULL''@/1/g' \
	      -e 's/@''GNULIB_SYSTEM_POSIX''@/0/g' \
	      -e 's/@''GNULIB_UNLOCKPT''@/0/g' \
	      -e 's/@''GNULIB_UNSETENV''@/IN_DIFFUTILS_GNULIB_TESTS/g' \
	      -e 's/@''GNULIB_WCTOMB''@/IN_DIFFUTILS_GNULIB_TESTS/g' \
	      < ./stdlib.in.h | \
	  sed -e 's|@''HAVE__EXIT''@|1|g' \
	      -e 's|@''HAVE_ATOLL''@|1|g' \
	      -e 's|@''HAVE_CANONICALIZE_FILE_NAME''@|1|g' \
	      -e 's|@''HAVE_DECL_GETLOADAVG''@|1|g' \
	      -e 's|@''HAVE_GETSUBOPT''@|1|g' \
	      -e 's|@''HAVE_GRANTPT''@|1|g' \
	      -e 's|@''HAVE_MKDTEMP''@|1|g' \
	      -e 's|@''HAVE_MKOSTEMP''@|1|g' \
	      -e 's|@''HAVE_MKOSTEMPS''@|1|g' \
	      -e 's|@''HAVE_MKSTEMP''@|1|g' \
	      -e 's|@''HAVE_MKSTEMPS''@|1|g' \
	      -e 's|@''HAVE_PTSNAME''@|1|g' \
	      -e 's|@''HAVE_RANDOM_H''@|1|g' \
	      -e 's|@''HAVE_RANDOM_R''@|1|g' \
	      -e 's|@''HAVE_REALPATH''@|1|g' \
	      -e 's|@''HAVE_RPMATCH''@|1|g' \
	      -e 's|@''HAVE_DECL_SETENV''@|1|g' \
	      -e 's|@''HAVE_STRTOD''@|1|g' \
	      -e 's|@''HAVE_STRTOLL''@|1|g' \
	      -e 's|@''HAVE_STRTOULL''@|1|g' \
	      -e 's|@''HAVE_STRUCT_RANDOM_DATA''@|1|g' \
	      -e 's|@''HAVE_SYS_LOADAVG_H''@|0|g' \
	      -e 's|@''HAVE_UNLOCKPT''@|1|g' \
	      -e 's|@''HAVE_DECL_UNSETENV''@|1|g' \
	      -e 's|@''REPLACE_CALLOC''@|0|g' \
	      -e 's|@''REPLACE_CANONICALIZE_FILE_NAME''@|0|g' \
	      -e 's|@''REPLACE_MALLOC''@|0|g' \
	      -e 's|@''REPLACE_MBTOWC''@|0|g' \
	      -e 's|@''REPLACE_MKSTEMP''@|1|g' \
	      -e 's|@''REPLACE_PUTENV''@|1|g' \
	      -e 's|@''REPLACE_REALLOC''@|0|g' \
	      -e 's|@''REPLACE_REALPATH''@|0|g' \
	      -e 's|@''REPLACE_SETENV''@|1|g' \
	      -e 's|@''REPLACE_STRTOD''@|0|g' \
	      -e 's|@''REPLACE_UNSETENV''@|1|g' \
	      -e 's|@''REPLACE_WCTOMB''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _Noreturn/r ../build-aux/snippet/_Noreturn.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h'; \
	} > stdlib.h-t && \
	mv stdlib.h-t stdlib.h
rm -f string.h-t string.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_STRING_H''@|<string.h>|g' \
	      -e 's/@''GNULIB_FFSL''@/0/g' \
	      -e 's/@''GNULIB_FFSLL''@/0/g' \
	      -e 's/@''GNULIB_MBSLEN''@/1/g' \
	      -e 's/@''GNULIB_MBSNLEN''@/0/g' \
	      -e 's/@''GNULIB_MBSCHR''@/0/g' \
	      -e 's/@''GNULIB_MBSRCHR''@/0/g' \
	      -e 's/@''GNULIB_MBSSTR''@/1/g' \
	      -e 's/@''GNULIB_MBSCASECMP''@/1/g' \
	      -e 's/@''GNULIB_MBSNCASECMP''@/0/g' \
	      -e 's/@''GNULIB_MBSPCASECMP''@/0/g' \
	      -e 's/@''GNULIB_MBSCASESTR''@/0/g' \
	      -e 's/@''GNULIB_MBSCSPN''@/0/g' \
	      -e 's/@''GNULIB_MBSPBRK''@/0/g' \
	      -e 's/@''GNULIB_MBSSPN''@/0/g' \
	      -e 's/@''GNULIB_MBSSEP''@/0/g' \
	      -e 's/@''GNULIB_MBSTOK_R''@/0/g' \
	      -e 's/@''GNULIB_MEMCHR''@/1/g' \
	      -e 's/@''GNULIB_MEMMEM''@/0/g' \
	      -e 's/@''GNULIB_MEMPCPY''@/0/g' \
	      -e 's/@''GNULIB_MEMRCHR''@/0/g' \
	      -e 's/@''GNULIB_RAWMEMCHR''@/0/g' \
	      -e 's/@''GNULIB_STPCPY''@/0/g' \
	      -e 's/@''GNULIB_STPNCPY''@/0/g' \
	      -e 's/@''GNULIB_STRCHRNUL''@/0/g' \
	      -e 's/@''GNULIB_STRDUP''@/0/g' \
	      -e 's/@''GNULIB_STRNCAT''@/0/g' \
	      -e 's/@''GNULIB_STRNDUP''@/1/g' \
	      -e 's/@''GNULIB_STRNLEN''@/1/g' \
	      -e 's/@''GNULIB_STRPBRK''@/0/g' \
	      -e 's/@''GNULIB_STRSEP''@/0/g' \
	      -e 's/@''GNULIB_STRSTR''@/0/g' \
	      -e 's/@''GNULIB_STRCASESTR''@/0/g' \
	      -e 's/@''GNULIB_STRTOK_R''@/0/g' \
	      -e 's/@''GNULIB_STRERROR''@/1/g' \
	      -e 's/@''GNULIB_STRERROR_R''@/0/g' \
	      -e 's/@''GNULIB_STRSIGNAL''@/0/g' \
	      -e 's/@''GNULIB_STRVERSCMP''@/0/g' \
	      < ./string.in.h | \
	  sed -e 's|@''HAVE_FFSL''@|1|g' \
	      -e 's|@''HAVE_FFSLL''@|1|g' \
	      -e 's|@''HAVE_MBSLEN''@|0|g' \
	      -e 's|@''HAVE_MEMCHR''@|1|g' \
	      -e 's|@''HAVE_DECL_MEMMEM''@|1|g' \
	      -e 's|@''HAVE_MEMPCPY''@|1|g' \
	      -e 's|@''HAVE_DECL_MEMRCHR''@|1|g' \
	      -e 's|@''HAVE_RAWMEMCHR''@|1|g' \
	      -e 's|@''HAVE_STPCPY''@|1|g' \
	      -e 's|@''HAVE_STPNCPY''@|1|g' \
	      -e 's|@''HAVE_STRCHRNUL''@|1|g' \
	      -e 's|@''HAVE_DECL_STRDUP''@|1|g' \
	      -e 's|@''HAVE_DECL_STRNDUP''@|1|g' \
	      -e 's|@''HAVE_DECL_STRNLEN''@|1|g' \
	      -e 's|@''HAVE_STRPBRK''@|1|g' \
	      -e 's|@''HAVE_STRSEP''@|1|g' \
	      -e 's|@''HAVE_STRCASESTR''@|1|g' \
	      -e 's|@''HAVE_DECL_STRTOK_R''@|1|g' \
	      -e 's|@''HAVE_DECL_STRERROR_R''@|1|g' \
	      -e 's|@''HAVE_DECL_STRSIGNAL''@|1|g' \
	      -e 's|@''HAVE_STRVERSCMP''@|1|g' \
	      -e 's|@''REPLACE_STPNCPY''@|0|g' \
	      -e 's|@''REPLACE_MEMCHR''@|1|g' \
	      -e 's|@''REPLACE_MEMMEM''@|0|g' \
	      -e 's|@''REPLACE_STRCASESTR''@|0|g' \
	      -e 's|@''REPLACE_STRCHRNUL''@|0|g' \
	      -e 's|@''REPLACE_STRDUP''@|0|g' \
	      -e 's|@''REPLACE_STRSTR''@|0|g' \
	      -e 's|@''REPLACE_STRERROR''@|1|g' \
	      -e 's|@''REPLACE_STRERROR_R''@|0|g' \
	      -e 's|@''REPLACE_STRNCAT''@|0|g' \
	      -e 's|@''REPLACE_STRNDUP''@|0|g' \
	      -e 's|@''REPLACE_STRNLEN''@|0|g' \
	      -e 's|@''REPLACE_STRSIGNAL''@|0|g' \
	      -e 's|@''REPLACE_STRTOK_R''@|0|g' \
	      -e 's|@''UNDEFINE_STRTOK_R''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h'; \
	      < ./string.in.h; \
	} > string.h-t && \
	mv string.h-t string.h
rm -f strings.h-t strings.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_STRINGS_H''@|<strings.h>|g' \
	      -e 's|@''GNULIB_FFS''@|0|g' \
	      -e 's|@''HAVE_FFS''@|1|g' \
	      -e 's|@''HAVE_STRCASECMP''@|1|g' \
	      -e 's|@''HAVE_DECL_STRNCASECMP''@|1|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./strings.in.h; \
	} > strings.h-t && \
	mv strings.h-t strings.h
/bin/mkdir -p sys
rm -f sys/stat.h-t sys/stat.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_SYS_STAT_H''@|<sys/stat.h>|g' \
	      -e 's/@''GNULIB_FCHMODAT''@/0/g' \
	      -e 's/@''GNULIB_FSTATAT''@/0/g' \
	      -e 's/@''GNULIB_FUTIMENS''@/0/g' \
	      -e 's/@''GNULIB_LCHMOD''@/0/g' \
	      -e 's/@''GNULIB_LSTAT''@/1/g' \
	      -e 's/@''GNULIB_MKDIRAT''@/0/g' \
	      -e 's/@''GNULIB_MKFIFO''@/0/g' \
	      -e 's/@''GNULIB_MKFIFOAT''@/0/g' \
	      -e 's/@''GNULIB_MKNOD''@/0/g' \
	      -e 's/@''GNULIB_MKNODAT''@/0/g' \
	      -e 's/@''GNULIB_STAT''@/1/g' \
	      -e 's/@''GNULIB_UTIMENSAT''@/0/g' \
	      -e 's|@''HAVE_FCHMODAT''@|1|g' \
	      -e 's|@''HAVE_FSTATAT''@|1|g' \
	      -e 's|@''HAVE_FUTIMENS''@|1|g' \
	      -e 's|@''HAVE_LCHMOD''@|1|g' \
	      -e 's|@''HAVE_LSTAT''@|1|g' \
	      -e 's|@''HAVE_MKDIRAT''@|1|g' \
	      -e 's|@''HAVE_MKFIFO''@|1|g' \
	      -e 's|@''HAVE_MKFIFOAT''@|1|g' \
	      -e 's|@''HAVE_MKNOD''@|1|g' \
	      -e 's|@''HAVE_MKNODAT''@|1|g' \
	      -e 's|@''HAVE_UTIMENSAT''@|1|g' \
	      -e 's|@''REPLACE_FSTAT''@|0|g' \
	      -e 's|@''REPLACE_FSTATAT''@|0|g' \
	      -e 's|@''REPLACE_FUTIMENS''@|0|g' \
	      -e 's|@''REPLACE_LSTAT''@|1|g' \
	      -e 's|@''REPLACE_MKDIR''@|0|g' \
	      -e 's|@''REPLACE_MKFIFO''@|0|g' \
	      -e 's|@''REPLACE_MKNOD''@|0|g' \
	      -e 's|@''REPLACE_STAT''@|1|g' \
	      -e 's|@''REPLACE_UTIMENSAT''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./sys_stat.in.h; \
	} > sys/stat.h-t && \
	mv sys/stat.h-t sys/stat.h
/bin/mkdir -p sys
/bin/mkdir -p sys
rm -f time.h-t time.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_TIME_H''@|<time.h>|g' \
	      -e 's/@''GNULIB_MKTIME''@/1/g' \
	      -e 's/@''GNULIB_NANOSLEEP''@/0/g' \
	      -e 's/@''GNULIB_STRPTIME''@/1/g' \
	      -e 's/@''GNULIB_TIMEGM''@/0/g' \
	      -e 's/@''GNULIB_TIME_R''@/1/g' \
	      -e 's|@''HAVE_DECL_LOCALTIME_R''@|0|g' \
	      -e 's|@''HAVE_NANOSLEEP''@|1|g' \
	      -e 's|@''HAVE_STRPTIME''@|1|g' \
	      -e 's|@''HAVE_TIMEGM''@|1|g' \
	      -e 's|@''REPLACE_LOCALTIME_R''@|0|g' \
	      -e 's|@''REPLACE_MKTIME''@|1|g' \
	      -e 's|@''REPLACE_NANOSLEEP''@|GNULIB_PORTCHECK|g' \
	      -e 's|@''REPLACE_TIMEGM''@|GNULIB_PORTCHECK|g' \
	      -e 's|@''PTHREAD_H_DEFINES_STRUCT_TIMESPEC''@|0|g' \
	      -e 's|@''SYS_TIME_H_DEFINES_STRUCT_TIMESPEC''@|0|g' \
	      -e 's|@''TIME_H_DEFINES_STRUCT_TIMESPEC''@|1|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./time.in.h; \
	} > time.h-t && \
	mv time.h-t time.h
rm -f sys/time.h-t sys/time.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's/@''HAVE_SYS_TIME_H''@/1/g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_SYS_TIME_H''@|<sys/time.h>|g' \
	      -e 's/@''GNULIB_GETTIMEOFDAY''@/1/g' \
	      -e 's/@''HAVE_GETTIMEOFDAY''@/1/g' \
	      -e 's/@''HAVE_STRUCT_TIMEVAL''@/1/g' \
	      -e 's/@''REPLACE_GETTIMEOFDAY''@/1/g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./sys_time.in.h; \
	} > sys/time.h-t && \
	mv sys/time.h-t sys/time.h
rm -f sys/wait.h-t sys/wait.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_SYS_WAIT_H''@|<sys/wait.h>|g' \
	      -e 's/@''GNULIB_WAITPID''@/0/g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./sys_wait.in.h; \
	} > sys/wait.h-t && \
	mv sys/wait.h-t sys/wait.h
rm -f unistd.h-t unistd.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''HAVE_UNISTD_H''@|1|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_UNISTD_H''@|<unistd.h>|g' \
	      -e 's/@''GNULIB_CHOWN''@/0/g' \
	      -e 's/@''GNULIB_CLOSE''@/0/g' \
	      -e 's/@''GNULIB_DUP2''@/1/g' \
	      -e 's/@''GNULIB_DUP3''@/0/g' \
	      -e 's/@''GNULIB_ENVIRON''@/IN_DIFFUTILS_GNULIB_TESTS/g' \
	      -e 's/@''GNULIB_EUIDACCESS''@/0/g' \
	      -e 's/@''GNULIB_FACCESSAT''@/0/g' \
	      -e 's/@''GNULIB_FCHDIR''@/0/g' \
	      -e 's/@''GNULIB_FCHOWNAT''@/0/g' \
	      -e 's/@''GNULIB_FSYNC''@/0/g' \
	      -e 's/@''GNULIB_FTRUNCATE''@/0/g' \
	      -e 's/@''GNULIB_GETCWD''@/IN_DIFFUTILS_GNULIB_TESTS/g' \
	      -e 's/@''GNULIB_GETDOMAINNAME''@/0/g' \
	      -e 's/@''GNULIB_GETDTABLESIZE''@/1/g' \
	      -e 's/@''GNULIB_GETGROUPS''@/0/g' \
	      -e 's/@''GNULIB_GETHOSTNAME''@/0/g' \
	      -e 's/@''GNULIB_GETLOGIN''@/0/g' \
	      -e 's/@''GNULIB_GETLOGIN_R''@/0/g' \
	      -e 's/@''GNULIB_GETPAGESIZE''@/IN_DIFFUTILS_GNULIB_TESTS/g' \
	      -e 's/@''GNULIB_GETUSERSHELL''@/0/g' \
	      -e 's/@''GNULIB_GROUP_MEMBER''@/0/g' \
	      -e 's/@''GNULIB_LCHOWN''@/0/g' \
	      -e 's/@''GNULIB_LINK''@/0/g' \
	      -e 's/@''GNULIB_LINKAT''@/0/g' \
	      -e 's/@''GNULIB_LSEEK''@/0/g' \
	      -e 's/@''GNULIB_PIPE''@/0/g' \
	      -e 's/@''GNULIB_PIPE2''@/0/g' \
	      -e 's/@''GNULIB_PREAD''@/0/g' \
	      -e 's/@''GNULIB_PWRITE''@/0/g' \
	      -e 's/@''GNULIB_READ''@/0/g' \
	      -e 's/@''GNULIB_READLINK''@/0/g' \
	      -e 's/@''GNULIB_READLINKAT''@/0/g' \
	      -e 's/@''GNULIB_RMDIR''@/0/g' \
	      -e 's/@''GNULIB_SLEEP''@/IN_DIFFUTILS_GNULIB_TESTS/g' \
	      -e 's/@''GNULIB_SYMLINK''@/IN_DIFFUTILS_GNULIB_TESTS/g' \
	      -e 's/@''GNULIB_SYMLINKAT''@/0/g' \
	      -e 's/@''GNULIB_TTYNAME_R''@/0/g' \
	      -e 's/@''GNULIB_UNISTD_H_GETOPT''@/1/g' \
	      -e 's/@''GNULIB_UNISTD_H_NONBLOCKING''@/0/g' \
	      -e 's/@''GNULIB_UNISTD_H_SIGPIPE''@/0/g' \
	      -e 's/@''GNULIB_UNLINK''@/0/g' \
	      -e 's/@''GNULIB_UNLINKAT''@/0/g' \
	      -e 's/@''GNULIB_USLEEP''@/IN_DIFFUTILS_GNULIB_TESTS/g' \
	      -e 's/@''GNULIB_WRITE''@/0/g' \
	      < ./unistd.in.h | \
	  sed -e 's|@''HAVE_CHOWN''@|1|g' \
	      -e 's|@''HAVE_DUP2''@|1|g' \
	      -e 's|@''HAVE_DUP3''@|1|g' \
	      -e 's|@''HAVE_EUIDACCESS''@|1|g' \
	      -e 's|@''HAVE_FACCESSAT''@|1|g' \
	      -e 's|@''HAVE_FCHDIR''@|1|g' \
	      -e 's|@''HAVE_FCHOWNAT''@|1|g' \
	      -e 's|@''HAVE_FSYNC''@|1|g' \
	      -e 's|@''HAVE_FTRUNCATE''@|1|g' \
	      -e 's|@''HAVE_GETDTABLESIZE''@|1|g' \
	      -e 's|@''HAVE_GETGROUPS''@|1|g' \
	      -e 's|@''HAVE_GETHOSTNAME''@|1|g' \
	      -e 's|@''HAVE_GETLOGIN''@|1|g' \
	      -e 's|@''HAVE_GETPAGESIZE''@|1|g' \
	      -e 's|@''HAVE_GROUP_MEMBER''@|1|g' \
	      -e 's|@''HAVE_LCHOWN''@|1|g' \
	      -e 's|@''HAVE_LINK''@|1|g' \
	      -e 's|@''HAVE_LINKAT''@|1|g' \
	      -e 's|@''HAVE_PIPE''@|1|g' \
	      -e 's|@''HAVE_PIPE2''@|1|g' \
	      -e 's|@''HAVE_PREAD''@|1|g' \
	      -e 's|@''HAVE_PWRITE''@|1|g' \
	      -e 's|@''HAVE_READLINK''@|1|g' \
	      -e 's|@''HAVE_READLINKAT''@|1|g' \
	      -e 's|@''HAVE_SLEEP''@|1|g' \
	      -e 's|@''HAVE_SYMLINK''@|1|g' \
	      -e 's|@''HAVE_SYMLINKAT''@|1|g' \
	      -e 's|@''HAVE_UNLINKAT''@|1|g' \
	      -e 's|@''HAVE_USLEEP''@|1|g' \
	      -e 's|@''HAVE_DECL_ENVIRON''@|1|g' \
	      -e 's|@''HAVE_DECL_FCHDIR''@|1|g' \
	      -e 's|@''HAVE_DECL_GETDOMAINNAME''@|1|g' \
	      -e 's|@''HAVE_DECL_GETLOGIN_R''@|1|g' \
	      -e 's|@''HAVE_DECL_GETPAGESIZE''@|1|g' \
	      -e 's|@''HAVE_DECL_GETUSERSHELL''@|1|g' \
	      -e 's|@''HAVE_DECL_TTYNAME_R''@|1|g' \
	      -e 's|@''HAVE_OS_H''@|0|g' \
	      -e 's|@''HAVE_SYS_PARAM_H''@|0|g' \
	  | \
	  sed -e 's|@''REPLACE_CHOWN''@|0|g' \
	      -e 's|@''REPLACE_CLOSE''@|0|g' \
	      -e 's|@''REPLACE_DUP''@|0|g' \
	      -e 's|@''REPLACE_DUP2''@|1|g' \
	      -e 's|@''REPLACE_FCHOWNAT''@|0|g' \
	      -e 's|@''REPLACE_GETCWD''@|0|g' \
	      -e 's|@''REPLACE_GETDOMAINNAME''@|0|g' \
	      -e 's|@''REPLACE_GETLOGIN_R''@|0|g' \
	      -e 's|@''REPLACE_GETGROUPS''@|0|g' \
	      -e 's|@''REPLACE_GETPAGESIZE''@|0|g' \
	      -e 's|@''REPLACE_LCHOWN''@|0|g' \
	      -e 's|@''REPLACE_LINK''@|0|g' \
	      -e 's|@''REPLACE_LINKAT''@|0|g' \
	      -e 's|@''REPLACE_LSEEK''@|0|g' \
	      -e 's|@''REPLACE_PREAD''@|0|g' \
	      -e 's|@''REPLACE_PWRITE''@|0|g' \
	      -e 's|@''REPLACE_READ''@|0|g' \
	      -e 's|@''REPLACE_READLINK''@|0|g' \
	      -e 's|@''REPLACE_RMDIR''@|0|g' \
	      -e 's|@''REPLACE_SLEEP''@|1|g' \
	      -e 's|@''REPLACE_SYMLINK''@|1|g' \
	      -e 's|@''REPLACE_TTYNAME_R''@|0|g' \
	      -e 's|@''REPLACE_UNLINK''@|0|g' \
	      -e 's|@''REPLACE_UNLINKAT''@|0|g' \
	      -e 's|@''REPLACE_USLEEP''@|1|g' \
	      -e 's|@''REPLACE_WRITE''@|0|g' \
	      -e 's|@''UNISTD_H_HAVE_WINSOCK2_H''@|0|g' \
	      -e 's|@''UNISTD_H_HAVE_WINSOCK2_H_AND_USE_SOCKETS''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h'; \
	} > unistd.h-t && \
	mv unistd.h-t unistd.h
rm -f wchar.h-t wchar.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''HAVE_FEATURES_H''@|1|g' \
	      -e 's|@''NEXT_WCHAR_H''@|<wchar.h>|g' \
	      -e 's|@''HAVE_WCHAR_H''@|1|g' \
	      -e 's/@''GNULIB_BTOWC''@/1/g' \
	      -e 's/@''GNULIB_WCTOB''@/IN_DIFFUTILS_GNULIB_TESTS/g' \
	      -e 's/@''GNULIB_MBSINIT''@/1/g' \
	      -e 's/@''GNULIB_MBRTOWC''@/1/g' \
	      -e 's/@''GNULIB_MBRLEN''@/0/g' \
	      -e 's/@''GNULIB_MBSRTOWCS''@/1/g' \
	      -e 's/@''GNULIB_MBSNRTOWCS''@/0/g' \
	      -e 's/@''GNULIB_WCRTOMB''@/1/g' \
	      -e 's/@''GNULIB_WCSRTOMBS''@/0/g' \
	      -e 's/@''GNULIB_WCSNRTOMBS''@/0/g' \
	      -e 's/@''GNULIB_WCWIDTH''@/1/g' \
	      -e 's/@''GNULIB_WMEMCHR''@/0/g' \
	      -e 's/@''GNULIB_WMEMCMP''@/0/g' \
	      -e 's/@''GNULIB_WMEMCPY''@/0/g' \
	      -e 's/@''GNULIB_WMEMMOVE''@/0/g' \
	      -e 's/@''GNULIB_WMEMSET''@/0/g' \
	      -e 's/@''GNULIB_WCSLEN''@/0/g' \
	      -e 's/@''GNULIB_WCSNLEN''@/0/g' \
	      -e 's/@''GNULIB_WCSCPY''@/0/g' \
	      -e 's/@''GNULIB_WCPCPY''@/0/g' \
	      -e 's/@''GNULIB_WCSNCPY''@/0/g' \
	      -e 's/@''GNULIB_WCPNCPY''@/0/g' \
	      -e 's/@''GNULIB_WCSCAT''@/0/g' \
	      -e 's/@''GNULIB_WCSNCAT''@/0/g' \
	      -e 's/@''GNULIB_WCSCMP''@/0/g' \
	      -e 's/@''GNULIB_WCSNCMP''@/0/g' \
	      -e 's/@''GNULIB_WCSCASECMP''@/0/g' \
	      -e 's/@''GNULIB_WCSNCASECMP''@/0/g' \
	      -e 's/@''GNULIB_WCSCOLL''@/0/g' \
	      -e 's/@''GNULIB_WCSXFRM''@/0/g' \
	      -e 's/@''GNULIB_WCSDUP''@/0/g' \
	      -e 's/@''GNULIB_WCSCHR''@/0/g' \
	      -e 's/@''GNULIB_WCSRCHR''@/0/g' \
	      -e 's/@''GNULIB_WCSCSPN''@/0/g' \
	      -e 's/@''GNULIB_WCSSPN''@/0/g' \
	      -e 's/@''GNULIB_WCSPBRK''@/0/g' \
	      -e 's/@''GNULIB_WCSSTR''@/0/g' \
	      -e 's/@''GNULIB_WCSTOK''@/0/g' \
	      -e 's/@''GNULIB_WCSWIDTH''@/0/g' \
	      < ./wchar.in.h | \
	  sed -e 's|@''HAVE_WINT_T''@|1|g' \
	      -e 's|@''HAVE_BTOWC''@|0|g' \
	      -e 's|@''HAVE_MBSINIT''@|0|g' \
	      -e 's|@''HAVE_MBRTOWC''@|0|g' \
	      -e 's|@''HAVE_MBRLEN''@|1|g' \
	      -e 's|@''HAVE_MBSRTOWCS''@|0|g' \
	      -e 's|@''HAVE_MBSNRTOWCS''@|1|g' \
	      -e 's|@''HAVE_WCRTOMB''@|0|g' \
	      -e 's|@''HAVE_WCSRTOMBS''@|1|g' \
	      -e 's|@''HAVE_WCSNRTOMBS''@|1|g' \
	      -e 's|@''HAVE_WMEMCHR''@|1|g' \
	      -e 's|@''HAVE_WMEMCMP''@|1|g' \
	      -e 's|@''HAVE_WMEMCPY''@|1|g' \
	      -e 's|@''HAVE_WMEMMOVE''@|1|g' \
	      -e 's|@''HAVE_WMEMSET''@|1|g' \
	      -e 's|@''HAVE_WCSLEN''@|1|g' \
	      -e 's|@''HAVE_WCSNLEN''@|1|g' \
	      -e 's|@''HAVE_WCSCPY''@|1|g' \
	      -e 's|@''HAVE_WCPCPY''@|1|g' \
	      -e 's|@''HAVE_WCSNCPY''@|1|g' \
	      -e 's|@''HAVE_WCPNCPY''@|1|g' \
	      -e 's|@''HAVE_WCSCAT''@|1|g' \
	      -e 's|@''HAVE_WCSNCAT''@|1|g' \
	      -e 's|@''HAVE_WCSCMP''@|1|g' \
	      -e 's|@''HAVE_WCSNCMP''@|1|g' \
	      -e 's|@''HAVE_WCSCASECMP''@|1|g' \
	      -e 's|@''HAVE_WCSNCASECMP''@|1|g' \
	      -e 's|@''HAVE_WCSCOLL''@|1|g' \
	      -e 's|@''HAVE_WCSXFRM''@|1|g' \
	      -e 's|@''HAVE_WCSDUP''@|1|g' \
	      -e 's|@''HAVE_WCSCHR''@|1|g' \
	      -e 's|@''HAVE_WCSRCHR''@|1|g' \
	      -e 's|@''HAVE_WCSCSPN''@|1|g' \
	      -e 's|@''HAVE_WCSSPN''@|1|g' \
	      -e 's|@''HAVE_WCSPBRK''@|1|g' \
	      -e 's|@''HAVE_WCSSTR''@|1|g' \
	      -e 's|@''HAVE_WCSTOK''@|1|g' \
	      -e 's|@''HAVE_WCSWIDTH''@|1|g' \
	      -e 's|@''HAVE_DECL_WCTOB''@|0|g' \
	      -e 's|@''HAVE_DECL_WCWIDTH''@|1|g' \
	  | \
	  sed -e 's|@''REPLACE_MBSTATE_T''@|1|g' \
	      -e 's|@''REPLACE_BTOWC''@|0|g' \
	      -e 's|@''REPLACE_WCTOB''@|0|g' \
	      -e 's|@''REPLACE_MBSINIT''@|1|g' \
	      -e 's|@''REPLACE_MBRTOWC''@|1|g' \
	      -e 's|@''REPLACE_MBRLEN''@|0|g' \
	      -e 's|@''REPLACE_MBSRTOWCS''@|1|g' \
	      -e 's|@''REPLACE_MBSNRTOWCS''@|0|g' \
	      -e 's|@''REPLACE_WCRTOMB''@|1|g' \
	      -e 's|@''REPLACE_WCSRTOMBS''@|0|g' \
	      -e 's|@''REPLACE_WCSNRTOMBS''@|0|g' \
	      -e 's|@''REPLACE_WCWIDTH''@|0|g' \
	      -e 's|@''REPLACE_WCSWIDTH''@|0|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_ARG_NONNULL/r arg-nonnull.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h'; \
	} > wchar.h-t && \
	mv wchar.h-t wchar.h
rm -f wctype.h-t wctype.h && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's/@''HAVE_WCTYPE_H''@/1/g' \
	      -e 's|@''INCLUDE_NEXT''@|include_next|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|#pragma GCC system_header|g' \
	      -e 's|@''PRAGMA_COLUMNS''@||g' \
	      -e 's|@''NEXT_WCTYPE_H''@|<wctype.h>|g' \
	      -e 's/@''GNULIB_ISWBLANK''@/1/g' \
	      -e 's/@''GNULIB_WCTYPE''@/0/g' \
	      -e 's/@''GNULIB_ISWCTYPE''@/0/g' \
	      -e 's/@''GNULIB_WCTRANS''@/0/g' \
	      -e 's/@''GNULIB_TOWCTRANS''@/0/g' \
	      -e 's/@''HAVE_ISWBLANK''@/0/g' \
	      -e 's/@''HAVE_ISWCNTRL''@/0/g' \
	      -e 's/@''HAVE_WCTYPE_T''@/1/g' \
	      -e 's/@''HAVE_WCTRANS_T''@/1/g' \
	      -e 's/@''HAVE_WINT_T''@/1/g' \
	      -e 's/@''REPLACE_ISWBLANK''@/1/g' \
	      -e 's/@''REPLACE_ISWCNTRL''@/0/g' \
	      -e 's/@''REPLACE_TOWLOWER''@/1/g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r c++defs.h' \
	      -e '/definition of _GL_WARN_ON_USE/r warn-on-use.h' \
	      < ./wctype.in.h; \
	} > wctype.h-t && \
	mv wctype.h-t wctype.h
make  all-recursive
make[2]: Entering directory `/a/home/tbird/work/yocto/danny-test1/tmp/work/i586-poky-linux/diffutils-3.2-r7.0/diffutils-3.2/lib'
make[3]: Entering directory `/a/home/tbird/work/yocto/danny-test1/tmp/work/i586-poky-linux/diffutils-3.2-r7.0/diffutils-3.2/lib'
i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/a/home/tbird/work/yocto/danny-test1/tmp/sysroots/qemux86 -std=gnu99  -I.      -O2 -pipe -g -feliminate-unused-debug-types -c -o btowc.o btowc.c
i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/a/home/tbird/work/yocto/danny-test1/tmp/sysroots/qemux86 -std=gnu99  -I.      -O2 -pipe -g -feliminate-unused-debug-types -c -o mbrtowc.o mbrtowc.c
i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/a/home/tbird/work/yocto/danny-test1/tmp/sysroots/qemux86 -std=gnu99  -I.      -O2 -pipe -g -feliminate-unused-debug-types -c -o mbsinit.o mbsinit.c
i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/a/home/tbird/work/yocto/danny-test1/tmp/sysroots/qemux86 -std=gnu99  -I.      -O2 -pipe -g -feliminate-unused-debug-types -c -o mbsrtowcs.o mbsrtowcs.c
i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/a/home/tbird/work/yocto/danny-test1/tmp/sysroots/qemux86 -std=gnu99  -I.      -O2 -pipe -g -feliminate-unused-debug-types -c -o mbsrtowcs-state.o mbsrtowcs-state.c
i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/a/home/tbird/work/yocto/danny-test1/tmp/sysroots/qemux86 -std=gnu99  -I.      -O2 -pipe -g -feliminate-unused-debug-types -c -o nl_langinfo.o nl_langinfo.c
i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/a/home/tbird/work/yocto/danny-test1/tmp/sysroots/qemux86 -std=gnu99  -I.      -O2 -pipe -g -feliminate-unused-debug-types -c -o wcrtomb.o wcrtomb.c
i586-poky-linux-gcc  -m32   -march=i586 --sysroot=/a/home/tbird/work/yocto/danny-test1/tmp/sysroots/qemux86 -std=gnu99  -I.      -O2 -pipe -g -feliminate-unused-debug-types -c -o wcwidth.o wcwidth.c
In file included from wcwidth.c:23:0:
./wctype.h:448:1: error: static declaration of 'iswalnum' follows non-static declaration
./wctype.h:460:1: error: static declaration of 'iswalpha' follows non-static declaration
./wctype.h:471:1: error: static declaration of 'iswblank' follows non-static declaration
./wctype.h:482:1: error: static declaration of 'iswcntrl' follows non-static declaration
./wctype.h:493:1: error: static declaration of 'iswdigit' follows non-static declaration
./wctype.h:504:1: error: static declaration of 'iswgraph' follows non-static declaration
./wctype.h:515:1: error: static declaration of 'iswlower' follows non-static declaration
./wctype.h:526:1: error: static declaration of 'iswprint' follows non-static declaration
./wctype.h:537:1: error: static declaration of 'iswpunct' follows non-static declaration
./wctype.h:550:1: error: static declaration of 'iswspace' follows non-static declaration
./wctype.h:562:1: error: static declaration of 'iswupper' follows non-static declaration
./wctype.h:573:1: error: static declaration of 'iswxdigit' follows non-static declaration
make[3]: *** [wcwidth.o] Error 1
make[3]: *** Waiting for unfinished jobs....
make[3]: Leaving directory `/a/home/tbird/work/yocto/danny-test1/tmp/work/i586-poky-linux/diffutils-3.2-r7.0/diffutils-3.2/lib'
make[2]: *** [all-recursive] Error 1
make[2]: Leaving directory `/a/home/tbird/work/yocto/danny-test1/tmp/work/i586-poky-linux/diffutils-3.2-r7.0/diffutils-3.2/lib'
make[1]: *** [all] Error 2
make[1]: Leaving directory `/a/home/tbird/work/yocto/danny-test1/tmp/work/i586-poky-linux/diffutils-3.2-r7.0/diffutils-3.2/lib'
make: *** [all-recursive] Error 1
ERROR: oe_runmake failed
ERROR: Function failed: do_compile (see /a/home/tbird/work/yocto/danny-test1/tmp/work/i586-poky-linux/diffutils-3.2-r7.0/temp/log.do_compile.19548 for further information)

--------------030106020103040804070301--
