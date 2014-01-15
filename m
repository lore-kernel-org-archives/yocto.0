Return-Path: <lizhijian@cn.fujitsu.com>
Received: from song.cn.fujitsu.com (unknown [222.73.24.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DD16E0084B
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2014 01:21:29 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.95,661,1384272000"; 
   d="scan'208";a="9419183"
Received: from unknown (HELO tang.cn.fujitsu.com) ([10.167.250.3])
	by song.cn.fujitsu.com with ESMTP; 15 Jan 2014 17:17:45 +0800
Received: from fnstmail02.fnst.cn.fujitsu.com (tang.cn.fujitsu.com [127.0.0.1])
	by tang.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s0F9LNmv028072
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2014 17:21:24 +0800
Received: from G08FNSTD110722 ([10.167.226.56])
	by fnstmail02.fnst.cn.fujitsu.com (Lotus Domino Release 8.5.3)
	with ESMTP id 2014011517201112-1100322 ;
	Wed, 15 Jan 2014 17:20:11 +0800 
From: "Li Zhijian" <lizhijian@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Wed, 15 Jan 2014 17:21:22 +0800
Message-ID: <00db01cf11d3$2948c400$7bda4c00$@cn.fujitsu.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: Ac8Rz24v+mri3q/xSsGP528TtO0YrQ==
X-MIMETrack: Itemize by SMTP Server on mailserver/fnst(Release 8.5.3|September
	15, 2011) at 2014/01/15 17:20:11,
	Serialize by Router on mailserver/fnst(Release 8.5.3|September 15,
	2011) at 2014/01/15 17:20:11,
	Serialize complete at 2014/01/15 17:20:11
Subject: gcc: issue in make a src.rpm
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
X-List-Received-Date: Wed, 15 Jan 2014 09:21:41 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset="us-ascii"
Content-Language: zh-cn

Hi, 

I found that Poky can not create gcc/gcc-runtime/libgcc src.rpm package correctly while other middles are OK.

In my case:
[lizj@suika build-poky-1.5]$cat << EOF >> local/local.conf
> INHERIT += "archive-patched-source"
> SOURCE_ARCHIVE_PACKAGE_TYPE = "srpm"
> EOF
[lizj@suika build-poky-1.5]$ bitbake gcc gcc-runtime libgcc
WARNING: Host distribution "CentOS-6.3" has not been validated with this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested distribution.
Loading cache: 100% |############################################################################################| ETA:  00:00:00
Loaded 1187 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.20.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "CentOS-6.3"
TARGET_SYS        = "x86_64-poky-linux"
MACHINE           = "qemux86-64"
DISTRO            = "poky"
DISTRO_VERSION    = "1.5"
TUNE_FEATURES     = "m64"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "(detachedfromyocto-1.5):102bf5e0f640fe85068452a42b85077f1c81e0c9"
...
[lizj@suika build-poky-1.5]$ ls -sh tmp/deploy/sources/deploy-srpm/x86_64/GPL-3.0-with-GCC-exceptionGPL-3.0/
total 32K
 12K gcc-4.8.1-r0.src.rpm   12K gcc-runtime-4.8.1-r0.src.rpm  8.0K libgcc-4.8.1-r0.src.rpm

In these src.rpm packages, they don't contain any source code, only one spec file
in bb file of gcc, it set S to a work-shard directory so that when doing archive_patched_sources and package_write_rpm, no
any source code is found at WORK_DIR.

Any help or ideas?

-- 
Best regards.
Li Zhijian

------------
gcc.spec file don't contain line of "Source" 
[lizj@suika build-poky-1.5]$ cat tmp/work/x86_64-poky-linux/gcc/4.8.1-r0/gcc.spec
Summary: gcc version 4.8.1-r0
Name: gcc
Version: 4.8.1
Release: r0
License: GPL-3.0-with-GCC-exception & GPLv3
Group: devel
Packager: Poky <poky@yoctoproject.org>
URL: http://www.gnu.org/software/gcc/
BuildRequires: libtool-cross
BuildRequires: autoconf-native
BuildRequires: libtool-native
BuildRequires: libmpc
BuildRequires: virtual/gettext
BuildRequires: zlib
BuildRequires: gettext-native
BuildRequires: gnu-config-native
BuildRequires: virtual/libc
BuildRequires: virtual/x86_64-poky-linux-compilerlibs
BuildRequires: gmp
BuildRequires: virtual/x86_64-poky-linux-gcc
BuildRequires: automake-native
BuildRequires: mpfr
Requires: rtld(GNU_HASH)
Requires: libc.so.6(GLIBC_2.3)(64bit)
Requires: libc.so.6(GLIBC_2.14)(64bit)
Requires: libc.so.6(GLIBC_2.11)(64bit)
Requires: libmpfr.so.4()(64bit)
Requires: libmpfr4 >= 3.1.2
Requires: libdl.so.2(GLIBC_2.2.5)(64bit)
Requires: ld-linux-x86-64.so.2(GLIBC_2.3)(64bit)
Requires: libdl.so.2()(64bit)
Requires: libz1 >= 1.2.8
Requires: libgmp10 >= 5.1.1
Requires: libc.so.6()(64bit)
Requires: libc.so.6(GLIBC_2.2.5)(64bit)
Requires: libgmp.so.10()(64bit)
Requires: libmpc.so.3()(64bit)
Requires: ld-linux-x86-64.so.2()(64bit)
Requires: libc6 >= 2.18
Requires: libmpc3 >= 1.0.1
Requires: libz.so.1()(64bit)
Requires: libc.so.6(GLIBC_2.7)(64bit)
Provides: liblto_plugin.so.0()(64bit)
Provides: elf(buildid) = a346e9df7f420d6155dfa7e7215bf2e372410fe9
Provides: elf(buildid) = 4225e548430e0f28257607257c816df8225fdef5
Provides: elf(buildid) = f5bb275a50a33985fceeb7e80b7ff61c7a0e05e4
Provides: elf(buildid) = 16e2894befe569c06528ce518e83cf0630960d5b
Provides: elf(buildid) = 714d3a4ab86a9b71533cd7cd045e14a1e50faf81
Provides: elf(buildid) = d1d156cfcefe49da86f3dd9a7e24127531abe0a0
Provides: elf(buildid) = 74a8dedc49fcc62fb4d57ba1c3ff8b7959ae6c3a
Provides: elf(buildid) = 066a7eea7b44fe55d6e22c5003ddf0966e6176e2
Provides: elf(buildid) = c8b459e71bca7d0c835cbf6a8743505ddc80d44c
Provides: elf(buildid) = 23f5e0a856a11eb409f006f4f3a314e462ac1b9b

%description
The GNU cc and gcc C compilers.

%package -n gcc-plugins
Summary: gcc version 4.8.1-r0
Group: devel

%description -n gcc-plugins
The GNU cc and gcc C compilers.

%package -n gcc-symlinks
Summary: gcc version 4.8.1-r0
Group: devel
Requires: gcc

%description -n gcc-symlinks
The GNU cc and gcc C compilers.

%package -n g++
Summary: gcc version 4.8.1-r0
Group: devel
Requires: rtld(GNU_HASH)
Requires: libc.so.6(GLIBC_2.3)(64bit)
Requires: libc.so.6(GLIBC_2.14)(64bit)
Requires: libc6 >= 2.18
Requires: ld-linux-x86-64.so.2(GLIBC_2.3)(64bit)
Requires: libc.so.6(GLIBC_2.11)(64bit)
Requires: libc.so.6(GLIBC_2.2.5)(64bit)
Requires: ld-linux-x86-64.so.2()(64bit)
Requires: libc.so.6()(64bit)
Provides: elf(buildid) = 62b3649b33ea4c096abbf228942f3d4ff0590937

%description -n g++
The GNU cc and gcc C compilers.

%package -n g++-symlinks
Summary: gcc version 4.8.1-r0
Group: devel
Requires: g++

%description -n g++-symlinks
The GNU cc and gcc C compilers.

%package -n cpp
Summary: gcc version 4.8.1-r0
Group: devel
Requires: rtld(GNU_HASH)
Requires: libc.so.6(GLIBC_2.3)(64bit)
Requires: libc.so.6(GLIBC_2.14)(64bit)
Requires: libc6 >= 2.18
Requires: ld-linux-x86-64.so.2(GLIBC_2.3)(64bit)
Requires: libc.so.6(GLIBC_2.11)(64bit)
Requires: libc.so.6(GLIBC_2.2.5)(64bit)
Requires: ld-linux-x86-64.so.2()(64bit)
Requires: libc.so.6()(64bit)
Provides: elf(buildid) = 8c397cde56482d938cdb05efb7687ea848041e53

%description -n cpp
The GNU cc and gcc C compilers.

%package -n cpp-symlinks
Summary: gcc version 4.8.1-r0
Group: devel
Requires: cpp

%description -n cpp-symlinks
The GNU cc and gcc C compilers.

%package -n g77
Summary: gcc version 4.8.1-r0
Group: devel

%description -n g77
The GNU cc and gcc C compilers.

%package -n g77-symlinks
Summary: gcc version 4.8.1-r0
Group: devel

%description -n g77-symlinks
The GNU cc and gcc C compilers.

%package -n gfortran
Summary: gcc version 4.8.1-r0
Group: devel

%description -n gfortran
The GNU cc and gcc C compilers.

%package -n gfortran-symlinks
Summary: gcc version 4.8.1-r0
Group: devel

%description -n gfortran-symlinks
The GNU cc and gcc C compilers.

%package -n gcov
Summary: gcc version 4.8.1-r0
Group: devel
Requires: rtld(GNU_HASH)
Requires: libc.so.6(GLIBC_2.3)(64bit)
Requires: libc.so.6(GLIBC_2.14)(64bit)
Requires: libc.so.6()(64bit)
Requires: libc.so.6(GLIBC_2.2.5)(64bit)
Requires: libc6 >= 2.18
Provides: elf(buildid) = c5122286200945e178bf597722719f3e5cbaff06

%description -n gcov
The GNU cc and gcc C compilers.

%package -n gcov-symlinks
Summary: gcc version 4.8.1-r0
Group: devel

%description -n gcov-symlinks
The GNU cc and gcc C compilers.

%package -n gcc-plugin-dev
Summary: gcc version 4.8.1-r0
Group: devel
Requires: rtld(GNU_HASH)
Requires: libc.so.6(GLIBC_2.3)(64bit)
Requires: libc.so.6(GLIBC_2.14)(64bit)
Requires: libc.so.6()(64bit)
Requires: libc.so.6(GLIBC_2.2.5)(64bit)
Requires: libc6 >= 2.18
Suggests: libz-dev
Suggests: libmpc-dev
Suggests: libmpfr-dev
Suggests: libgmp-dev
Provides: elf(buildid) = 0736868cf8b5fcf23041856f473620aace42d4f8

%description -n gcc-plugin-dev
The GNU cc and gcc C compilers.

%package -n gcc-doc
Summary: gcc version 4.8.1-r0 - Documentation files
Group: doc

%description -n gcc-doc
The GNU cc and gcc C compilers.  This package contains documentation.

%package -n gcc-dev
Summary: gcc version 4.8.1-r0 - Development files
Group: devel
Requires: gcc = 4.8.1-r0
Suggests: libc6-dev
Suggests: libgmp-dev
Suggests: libmpfr-dev
Suggests: libmpc-dev
Suggests: libz-dev

%description -n gcc-dev
The GNU cc and gcc C compilers.  This package contains symbolic links,
header files, and related items necessary for software development.

%package -n gcc-dbg
Summary: gcc version 4.8.1-r0 - Debugging files
Group: devel
Suggests: libgmp-dbg
Suggests: libc6-dbg
Suggests: libz-dbg
Suggests: libmpc-dbg
Suggests: libmpfr-dbg

%description -n gcc-dbg
The GNU cc and gcc C compilers.  This package contains ELF symbols and
related sources for debugging purposes.

%package -n gcc-locale-be
Summary: gcc version 4.8.1-r0 - be translations
Group: devel
Suggests: virtual-locale-be
Provides: be-translation
Provides: gcc-locale

%description -n gcc-locale-be
The GNU cc and gcc C compilers.  This package contains language translation
files for the be locale.

%package -n gcc-locale-ca
Summary: gcc version 4.8.1-r0 - ca translations
Group: devel
Suggests: virtual-locale-ca
Provides: ca-translation
Provides: gcc-locale

%description -n gcc-locale-ca
The GNU cc and gcc C compilers.  This package contains language translation
files for the ca locale.

%package -n gcc-locale-da
Summary: gcc version 4.8.1-r0 - da translations
Group: devel
Suggests: virtual-locale-da
Provides: da-translation
Provides: gcc-locale

%description -n gcc-locale-da
The GNU cc and gcc C compilers.  This package contains language translation
files for the da locale.

%package -n gcc-locale-de
Summary: gcc version 4.8.1-r0 - de translations
Group: devel
Suggests: virtual-locale-de
Provides: de-translation
Provides: gcc-locale

%description -n gcc-locale-de
The GNU cc and gcc C compilers.  This package contains language translation
files for the de locale.

%package -n gcc-locale-el
Summary: gcc version 4.8.1-r0 - el translations
Group: devel
Suggests: virtual-locale-el
Provides: el-translation
Provides: gcc-locale

%description -n gcc-locale-el
The GNU cc and gcc C compilers.  This package contains language translation
files for the el locale.

%package -n gcc-locale-eo
Summary: gcc version 4.8.1-r0 - eo translations
Group: devel
Suggests: virtual-locale-eo
Provides: eo-translation
Provides: gcc-locale

%description -n gcc-locale-eo
The GNU cc and gcc C compilers.  This package contains language translation
files for the eo locale.

%package -n gcc-locale-es
Summary: gcc version 4.8.1-r0 - es translations
Group: devel
Suggests: virtual-locale-es
Provides: es-translation
Provides: gcc-locale

%description -n gcc-locale-es
The GNU cc and gcc C compilers.  This package contains language translation
files for the es locale.

%package -n gcc-locale-fi
Summary: gcc version 4.8.1-r0 - fi translations
Group: devel
Suggests: virtual-locale-fi
Provides: fi-translation
Provides: gcc-locale

%description -n gcc-locale-fi
The GNU cc and gcc C compilers.  This package contains language translation
files for the fi locale.

%package -n gcc-locale-fr
Summary: gcc version 4.8.1-r0 - fr translations
Group: devel
Suggests: virtual-locale-fr
Provides: fr-translation
Provides: gcc-locale

%description -n gcc-locale-fr
The GNU cc and gcc C compilers.  This package contains language translation
files for the fr locale.

%package -n gcc-locale-hr
Summary: gcc version 4.8.1-r0 - hr translations
Group: devel
Suggests: virtual-locale-hr
Provides: gcc-locale
Provides: hr-translation

%description -n gcc-locale-hr
The GNU cc and gcc C compilers.  This package contains language translation
files for the hr locale.

%package -n gcc-locale-id
Summary: gcc version 4.8.1-r0 - id translations
Group: devel
Suggests: virtual-locale-id
Provides: gcc-locale
Provides: id-translation

%description -n gcc-locale-id
The GNU cc and gcc C compilers.  This package contains language translation
files for the id locale.

%package -n gcc-locale-ja
Summary: gcc version 4.8.1-r0 - ja translations
Group: devel
Suggests: virtual-locale-ja
Provides: gcc-locale
Provides: ja-translation

%description -n gcc-locale-ja
The GNU cc and gcc C compilers.  This package contains language translation
files for the ja locale.

%package -n gcc-locale-nl
Summary: gcc version 4.8.1-r0 - nl translations
Group: devel
Suggests: virtual-locale-nl
Provides: nl-translation
Provides: gcc-locale

%description -n gcc-locale-nl
The GNU cc and gcc C compilers.  This package contains language translation
files for the nl locale.

%package -n gcc-locale-ru
Summary: gcc version 4.8.1-r0 - ru translations
Group: devel
Suggests: virtual-locale-ru
Provides: ru-translation
Provides: gcc-locale

%description -n gcc-locale-ru
The GNU cc and gcc C compilers.  This package contains language translation
files for the ru locale.

%package -n gcc-locale-sr
Summary: gcc version 4.8.1-r0 - sr translations
Group: devel
Suggests: virtual-locale-sr
Provides: sr-translation
Provides: gcc-locale

%description -n gcc-locale-sr
The GNU cc and gcc C compilers.  This package contains language translation
files for the sr locale.

%package -n gcc-locale-sv
Summary: gcc version 4.8.1-r0 - sv translations
Group: devel
Suggests: virtual-locale-sv
Provides: gcc-locale
Provides: sv-translation

%description -n gcc-locale-sv
The GNU cc and gcc C compilers.  This package contains language translation
files for the sv locale.

%package -n gcc-locale-tr
Summary: gcc version 4.8.1-r0 - tr translations
Group: devel
Suggests: virtual-locale-tr
Provides: tr-translation
Provides: gcc-locale

%description -n gcc-locale-tr
The GNU cc and gcc C compilers.  This package contains language translation
files for the tr locale.

%package -n gcc-locale-uk
Summary: gcc version 4.8.1-r0 - uk translations
Group: devel
Suggests: virtual-locale-uk
Provides: uk-translation
Provides: gcc-locale

%description -n gcc-locale-uk
The GNU cc and gcc C compilers.  This package contains language translation
files for the uk locale.

%package -n gcc-locale-vi
Summary: gcc version 4.8.1-r0 - vi translations
Group: devel
Suggests: virtual-locale-vi
Provides: vi-translation
Provides: gcc-locale

%description -n gcc-locale-vi
The GNU cc and gcc C compilers.  This package contains language translation
files for the vi locale.

%package -n gcc-locale-zh-cn
Summary: gcc version 4.8.1-r0 - zh_CN translations
Group: devel
Suggests: virtual-locale-zh-cn
Provides: gcc-locale
Provides: zh-cn-translation

%description -n gcc-locale-zh-cn
The GNU cc and gcc C compilers.  This package contains language translation
files for the zh_CN locale.

%package -n gcc-locale-zh-tw
Summary: gcc version 4.8.1-r0 - zh_TW translations
Group: devel
Suggests: virtual-locale-zh-tw
Provides: gcc-locale
Provides: zh-tw-translation

%description -n gcc-locale-zh-tw
The GNU cc and gcc C compilers.  This package contains language translation
files for the zh_TW locale.

%files
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/bin"
%dir "/usr/lib"
"/usr/bin/x86_64-poky-linux-gcc"
"/usr/bin/x86_64-poky-linux-gcc-ranlib"
"/usr/bin/x86_64-poky-linux-gcc-ar"
"/usr/bin/x86_64-poky-linux-gcc-nm"
%dir "/usr/lib/gcc"
%dir "/usr/lib/gcc/gcc"
%dir "/usr/lib/gcc/x86_64-poky-linux"
%dir "/usr/lib/gcc/gcc/x86_64-poky-linux"
%dir "/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1"
"/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/liblto_plugin.so.0"
"/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/cc1plus"
"/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/liblto_plugin.so.0.0.0"
"/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/collect2"
"/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/lto-wrapper"
"/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/cc1"
"/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/liblto_plugin.so"
"/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/lto1"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1/include"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1/include-fixed"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/bmiintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/stdbool.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/xsaveintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/rdseedintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/stddef.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/xmmintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/fmaintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/tmmintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/fxsrintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/mmintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/stdnoreturn.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/unwind.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/stdarg.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/emmintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/nmmintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/avxintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/stdfix.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/ia32intrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/prfchwintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/float.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/stdint-gcc.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/xsaveoptintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/smmintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/tbmintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/fma4intrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/rtmintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/mm3dnow.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/adxintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/cpuid.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/mm_malloc.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/iso646.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/xopintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/wmmintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/f16cintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/ammintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/immintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/stdint.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/avx2intrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/stdalign.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/cross-stdarg.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/xtestintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/bmi2intrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/popcntintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/bmmintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/lwpintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/pmmintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/varargs.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/lzcntintrin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include/x86intrin.h"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1/include-fixed/linux"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1/include-fixed/X11"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1/include-fixed/openssl"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include-fixed/limits.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include-fixed/README"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include-fixed/syslimits.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include-fixed/linux/a.out.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include-fixed/X11/Xw32defs.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/include-fixed/openssl/bn.h"

%files -n gcc-plugins
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/lib"
%dir "/usr/lib/gcc"
%dir "/usr/lib/gcc/x86_64-poky-linux"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/gtype.state"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/ada"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/c-family"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/objc"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/cp"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/java"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/intl.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/ipa-reference.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/tree.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/hwint.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/ipa-prop.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/configargs.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/plugin-version.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/sync-builtins.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/function.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/diagnostic.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/version.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/insn-constants.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/treestruct.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/double-int.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/tree-dump.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/mode-classes.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/pretty-print.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/gcc-plugin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/alloc-pool.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/ipa-ref.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/is-a.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/target.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/emit-rtl.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/defaults.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/target-hooks-macros.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/diagnostic-core.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/output.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/gsstruct.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/target.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/sbitmap.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/tree-flow-inline.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/cgraph.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/params.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/internal-fn.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/sanitizer.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/hashtab.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/realmpfr.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/tree-pass.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/timevar.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/rtl.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/bitmap.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/prefix.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/plugin.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/opts.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/reg-notes.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/cpplib.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/predict.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/gimple.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/tree-iterator.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/cfghooks.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/highlev-plugin-common.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/tm.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/hard-reg-set.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/options.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/toplev.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/obstack.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/fixed-value.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/statistics.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/gimple-pretty-print.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/cfg-flags.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/ipa-utils.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/cif-code.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/machmode.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/insn-modes.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/flag-types.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/auto-host.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/alias.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/line-map.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/debug.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/gtype-desc.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/vec.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/cppdefault.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/safe-ctype.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/genrtl.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/diagnostic.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/plugin-api.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/tree-pretty-print.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/ggc.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/splay-tree.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/predict.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/pointer-set.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/linux64.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/filenames.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/tree-check.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/cfgloop.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/rtl.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/input.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/tm_p.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/except.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/internal-fn.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/system.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/gtm-builtins.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/incpath.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/builtins.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/symtab.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/tree-ssa-alias.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/tree-inline.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/plugin.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/b-header-vars"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/bversion.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/ansidecl.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/coretypes.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/flags.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/params.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/real.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/tm-preds.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/tree.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/ipa-ref-inline.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/timevar.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/omp-builtins.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/langhooks.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/tree-ssa-sccvn.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/all-tree.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/md5.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/tree-ssa-operands.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/tree-flow.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/c-tree.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/gimple.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/dumpfile.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/basic-block.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/insn-flags.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/insn-notes.def"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/ada/gcc-interface"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/ada/gcc-interface/ada-tree.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/c-family/c-pretty-print.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/c-family/c-common.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/c-family/c-common.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/c-family/c-pragma.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/c-family/c-objc.h"
%dir "/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/i386"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/linux-android.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/vxworks-dummy.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/initfini-array.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/gnu-user.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/glibc-stdint.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/elfos.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/linux.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/dbxelf.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/i386/i386-protos.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/i386/i386-opts.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/i386/biarch64.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/i386/i386.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/i386/att.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/i386/unix.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/i386/gnu-user64.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/i386/x86-64.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/i386/gnu-user-common.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/config/i386/linux-common.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/objc/objc-tree.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/cp/cp-tree.def"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/cp/name-lookup.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/cp/cxx-pretty-print.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/cp/cp-tree.h"
"/usr/lib/gcc/x86_64-poky-linux/4.8.1/plugin/include/java/java-tree.def"

%files -n gcc-symlinks
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/bin"
"/usr/bin/gcc"
"/usr/bin/cc"

%files -n g++
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/bin"
"/usr/bin/x86_64-poky-linux-g++"

%files -n g++-symlinks
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/bin"
"/usr/bin/g++"
"/usr/bin/c++"

%files -n cpp
%defattr(-,-,-,-)
%dir "/usr"
%dir "/lib"
%dir "/usr/bin"
"/usr/bin/x86_64-poky-linux-cpp"
"/lib/cpp"

%files -n cpp-symlinks
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/bin"
"/usr/bin/cpp"

%files -n gcov
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/bin"
"/usr/bin/x86_64-poky-linux-gcov"

%files -n gcc-plugin-dev
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/lib"
%dir "/usr/lib/gcc"
%dir "/usr/lib/gcc/gcc"
%dir "/usr/lib/gcc/gcc/x86_64-poky-linux"
%dir "/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1"
%dir "/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/plugin"
"/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/plugin/gengtype"

%files -n gcc-doc
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/info"
%dir "/usr/share/man"
%dir "/usr/share/man/man1"
"/usr/share/man/man1/x86_64-poky-linux-g++.1"
"/usr/share/man/man1/x86_64-poky-linux-cpp.1"
"/usr/share/man/man1/x86_64-poky-linux-gcc.1"
"/usr/share/man/man1/x86_64-poky-linux-gcov.1"

%files -n gcc-dev
%defattr(-,-,-,-)

%files -n gcc-dbg
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/bin"
%dir "/usr/src"
%dir "/usr/lib"
%dir "/usr/bin/.debug"
"/usr/bin/.debug/x86_64-poky-linux-gcc"
"/usr/bin/.debug/x86_64-poky-linux-gcc-ranlib"
"/usr/bin/.debug/x86_64-poky-linux-cpp"
"/usr/bin/.debug/x86_64-poky-linux-g++"
"/usr/bin/.debug/x86_64-poky-linux-gcc-ar"
"/usr/bin/.debug/x86_64-poky-linux-gcov"
"/usr/bin/.debug/x86_64-poky-linux-gcc-nm"
%dir "/usr/src/debug"
%dir "/usr/src/debug/gcc"
%dir "/usr/src/debug/gcc/4.8.1-r0"
%dir "/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1"
%dir "/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux"
%dir "/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-tree.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/configargs.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-tree-parloops.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-tree.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/plugin-version.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-c-family-c-pragma.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-constants.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-emit.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-function.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-cp-lang.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-gcse.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-emit-rtl.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cgraphunit.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-dbxout.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-dwarf2asm.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-attr.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-codes.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-asan.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-c-family-c-common.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-mangle.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-repo.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-stringpool.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-omp-low.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-tree-ssa-address.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/i386-builtin-types.inc"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-tree-iterator.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-sdbout.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-preds.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-attrtab.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-lto-lto.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gtype-lto.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cgraph.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-class.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-attr-common.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-trans-mem.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gtype-desc.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gtype-c.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-enums.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/tm-constrs.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-tree-ssa-propagate.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-typeck2.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-extract.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-dwarf2cfi.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-modes.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-rtti.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-tree-profile.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-symtab.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/options.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-tree-mudflap.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cgraphclones.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-varasm.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-call.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gtype-cp.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/options.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-tree-phinodes.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-opinit.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-decl2.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-modes.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-dojump.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-lists.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-dfatab.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gtype-desc.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-coverage.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-method.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-pt.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-godump.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/genrtl.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-explow.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-except.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cfgrtl.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-alias.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-recog.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/cc1-checksum.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-targhooks.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-tree-vect-generic.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-output.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-caller-save.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/multilib.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-c-c-parser.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gcc-nm.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-gimplify.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/options-save.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-name-lookup.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-opinit.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-c-family-c-cppbuiltin.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-gimple.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/cc1plus-checksum.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-cp-objcp-common.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-dwarf2out.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-automata.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-semantics.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-c-c-decl.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-passes.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-lto-lto-lang.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/tm-preds.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-except.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-tree-scalar-evolution.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-i386.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-parser.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-stor-layout.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cselib.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-latencytab.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-cp-decl.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gcc-ranlib.c"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-optabs.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-bitmap.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-tree-nested.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/insn-flags.h"
"/usr/src/debug/gcc/4.8.1-r0/gcc-4.8.1/build.x86_64-poky-linux.x86_64-poky-linux/gcc/gt-expr.h"
%dir "/usr/lib/gcc"
%dir "/usr/lib/gcc/gcc"
%dir "/usr/lib/gcc/gcc/x86_64-poky-linux"
%dir "/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1"
%dir "/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/plugin"
%dir "/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/.debug"
%dir "/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/plugin/.debug"
"/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/plugin/.debug/gengtype"
"/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/.debug/cc1plus"
"/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/.debug/liblto_plugin.so.0.0.0"
"/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/.debug/collect2"
"/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/.debug/lto-wrapper"
"/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/.debug/cc1"
"/usr/lib/gcc/gcc/x86_64-poky-linux/4.8.1/.debug/lto1"

%files -n gcc-locale-be
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/be"
%dir "/usr/share/locale/be/LC_MESSAGES"
"/usr/share/locale/be/LC_MESSAGES/gcc.mo"
"/usr/share/locale/be/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-ca
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/ca"
%dir "/usr/share/locale/ca/LC_MESSAGES"
"/usr/share/locale/ca/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-da
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/da"
%dir "/usr/share/locale/da/LC_MESSAGES"
"/usr/share/locale/da/LC_MESSAGES/gcc.mo"
"/usr/share/locale/da/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-de
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/de"
%dir "/usr/share/locale/de/LC_MESSAGES"
"/usr/share/locale/de/LC_MESSAGES/gcc.mo"
"/usr/share/locale/de/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-el
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/el"
%dir "/usr/share/locale/el/LC_MESSAGES"
"/usr/share/locale/el/LC_MESSAGES/gcc.mo"
"/usr/share/locale/el/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-eo
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/eo"
%dir "/usr/share/locale/eo/LC_MESSAGES"
"/usr/share/locale/eo/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-es
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/es"
%dir "/usr/share/locale/es/LC_MESSAGES"
"/usr/share/locale/es/LC_MESSAGES/gcc.mo"
"/usr/share/locale/es/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-fi
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/fi"
%dir "/usr/share/locale/fi/LC_MESSAGES"
"/usr/share/locale/fi/LC_MESSAGES/gcc.mo"
"/usr/share/locale/fi/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-fr
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/fr"
%dir "/usr/share/locale/fr/LC_MESSAGES"
"/usr/share/locale/fr/LC_MESSAGES/gcc.mo"
"/usr/share/locale/fr/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-hr
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/hr"
%dir "/usr/share/locale/hr/LC_MESSAGES"
"/usr/share/locale/hr/LC_MESSAGES/gcc.mo"

%files -n gcc-locale-id
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/id"
%dir "/usr/share/locale/id/LC_MESSAGES"
"/usr/share/locale/id/LC_MESSAGES/gcc.mo"
"/usr/share/locale/id/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-ja
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/ja"
%dir "/usr/share/locale/ja/LC_MESSAGES"
"/usr/share/locale/ja/LC_MESSAGES/gcc.mo"
"/usr/share/locale/ja/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-nl
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/nl"
%dir "/usr/share/locale/nl/LC_MESSAGES"
"/usr/share/locale/nl/LC_MESSAGES/gcc.mo"
"/usr/share/locale/nl/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-ru
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/ru"
%dir "/usr/share/locale/ru/LC_MESSAGES"
"/usr/share/locale/ru/LC_MESSAGES/gcc.mo"
"/usr/share/locale/ru/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-sr
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/sr"
%dir "/usr/share/locale/sr/LC_MESSAGES"
"/usr/share/locale/sr/LC_MESSAGES/gcc.mo"
"/usr/share/locale/sr/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-sv
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/sv"
%dir "/usr/share/locale/sv/LC_MESSAGES"
"/usr/share/locale/sv/LC_MESSAGES/gcc.mo"
"/usr/share/locale/sv/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-tr
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/tr"
%dir "/usr/share/locale/tr/LC_MESSAGES"
"/usr/share/locale/tr/LC_MESSAGES/gcc.mo"
"/usr/share/locale/tr/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-uk
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/uk"
%dir "/usr/share/locale/uk/LC_MESSAGES"
"/usr/share/locale/uk/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-vi
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/vi"
%dir "/usr/share/locale/vi/LC_MESSAGES"
"/usr/share/locale/vi/LC_MESSAGES/gcc.mo"
"/usr/share/locale/vi/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-zh-cn
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/zh_CN"
%dir "/usr/share/locale/zh_CN/LC_MESSAGES"
"/usr/share/locale/zh_CN/LC_MESSAGES/gcc.mo"
"/usr/share/locale/zh_CN/LC_MESSAGES/cpplib.mo"

%files -n gcc-locale-zh-tw
%defattr(-,-,-,-)
%dir "/usr"
%dir "/usr/share"
%dir "/usr/share/locale"
%dir "/usr/share/locale/zh_TW"
%dir "/usr/share/locale/zh_TW/LC_MESSAGES"
"/usr/share/locale/zh_TW/LC_MESSAGES/gcc.mo"
"/usr/share/locale/zh_TW/LC_MESSAGES/cpplib.mo"

%prep -n gcc
echo "include logs and patches, Please check them in SOURCES"





