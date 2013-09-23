Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id C9556E0161A
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 06:04:23 -0700 (PDT)
Received: from [172.16.141.168] (172.16.141.168) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.2.318.1;
	Mon, 23 Sep 2013 15:04:20 +0200
Message-ID: <52403C3A.2010605@enea.com>
Date: Mon, 23 Sep 2013 15:03:54 +0200
From: =?ISO-8859-1?Q?David_Nystr=F6m?= <david.nystrom@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-Originating-IP: [172.16.141.168]
Subject: libpam libprelude issues.
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
X-List-Received-Date: Mon, 23 Sep 2013 13:04:29 -0000
X-Groupsio-MsgNum: 16176
Content-Type: multipart/mixed; boundary="------------000306020105050404020803"

--------------000306020105050404020803
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm on:

Build Configuration:
BB_VERSION        = "1.19.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-13.10"
TARGET_SYS        = "x86_64-poky-linux"
MACHINE           = "qemux86-64"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4+snapshot-20130923"
TUNE_FEATURES     = "m64"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "master:bf6b0d95db3863a2cfbccb154c0c7ad5b3bbf0b0"

Have had these problems for a while, but noone else seems to notice it.
See attachment for compiler error and configure mistakenly detecting 
libprelude, its installed on my build machine.

Works fine if I EXTRA_OECONF += "--without-libprelude".

What do you think ?, should I send that patch ?
I guess the real bug lies somewhere in the autodetection of libprelude 
from my build machine, right ?

Br,
David

--------------000306020105050404020803
Content-Type: text/plain; charset="UTF-8"; name="log.do_configure"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="log.do_configure"

DEBUG: Executing python function sysroot_cleansstate
DEBUG: Python function sysroot_cleansstate finished
DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bit-64', 'x86_64-linux', 'common']
DEBUG: Executing shell function autotools_preconfigure
DEBUG: Shell function autotools_preconfigure finished
DEBUG: Executing shell function do_configure
automake (GNU automake) 1.12.6
Copyright (C) 2012 Free Software Foundation, Inc.
License GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl-2.0.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Tom Tromey <tromey@redhat.com>
       and Alexandre Duret-Lutz <adl@gnu.org>.
AUTOV is 1.12
NOTE: Executing ACLOCAL="aclocal --system-acdir=/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/build/aclocal-copy/ --automake-acdir=/media/sdb5/eel/build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.12" autoreconf --verbose --install --force --exclude=autopoint -I /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/m4/
autoreconf: Entering directory `.'
autoreconf: running: aclocal --system-acdir=/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/build/aclocal-copy/ --automake-acdir=/media/sdb5/eel/build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.12 -I /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/m4/ -I /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/m4/ --force -I m4
aclocal: warning: autoconf input should be named 'configure.ac', not 'configure.in'
configure.in:85: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call detected in body
/media/sdb5/eel/build/tmp/work/x86_64-linux/autoconf-native/2.69-r11/autoconf-2.69/lib/autoconf/lang.m4:193: AC_LANG_CONFTEST is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-linux/autoconf-native/2.69-r11/autoconf-2.69/lib/autoconf/general.m4:2655: _AC_LINK_IFELSE is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-linux/autoconf-native/2.69-r11/autoconf-2.69/lib/autoconf/general.m4:2672: AC_LINK_IFELSE is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/m4/libtool.m4:1022: _LT_SYS_MODULE_PATH_AIX is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/m4/libtool.m4:4158: _LT_LINKER_SHLIBS is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/m4/libtool.m4:5233: _LT_LANG_C_CONFIG is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/m4/libtool.m4:138: _LT_SETUP is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/m4/libtool.m4:67: LT_INIT is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/m4/libtool.m4:102: AC_PROG_LIBTOOL is expanded from...
configure.in:85: the top level
configure.in:85: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call detected in body
/media/sdb5/eel/build/tmp/work/x86_64-linux/autoconf-native/2.69-r11/autoconf-2.69/lib/autoconf/lang.m4:193: AC_LANG_CONFTEST is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-linux/autoconf-native/2.69-r11/autoconf-2.69/lib/autoconf/general.m4:2655: _AC_LINK_IFELSE is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-linux/autoconf-native/2.69-r11/autoconf-2.69/lib/autoconf/general.m4:2672: AC_LINK_IFELSE is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/m4/libtool.m4:4158: _LT_LINKER_SHLIBS is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/m4/libtool.m4:5233: _LT_LANG_C_CONFIG is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/m4/libtool.m4:138: _LT_SETUP is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/m4/libtool.m4:67: LT_INIT is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/m4/libtool.m4:102: AC_PROG_LIBTOOL is expanded from...
configure.in:85: the top level
autoreconf: configure.in: tracing
configure.in:85: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call detected in body
/media/sdb5/eel/build/tmp/work/x86_64-linux/autoconf-native/2.69-r11/autoconf-2.69/lib/autoconf/lang.m4:193: AC_LANG_CONFTEST is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-linux/autoconf-native/2.69-r11/autoconf-2.69/lib/autoconf/general.m4:2655: _AC_LINK_IFELSE is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-linux/autoconf-native/2.69-r11/autoconf-2.69/lib/autoconf/general.m4:2672: AC_LINK_IFELSE is expanded from...
aclocal.m4:5109: _LT_SYS_MODULE_PATH_AIX is expanded from...
aclocal.m4:8245: _LT_LINKER_SHLIBS is expanded from...
aclocal.m4:9320: _LT_LANG_C_CONFIG is expanded from...
aclocal.m4:4231: _LT_SETUP is expanded from...
aclocal.m4:4160: LT_INIT is expanded from...
aclocal.m4:4195: AC_PROG_LIBTOOL is expanded from...
configure.in:85: the top level
configure.in:85: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call detected in body
/media/sdb5/eel/build/tmp/work/x86_64-linux/autoconf-native/2.69-r11/autoconf-2.69/lib/autoconf/lang.m4:193: AC_LANG_CONFTEST is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-linux/autoconf-native/2.69-r11/autoconf-2.69/lib/autoconf/general.m4:2655: _AC_LINK_IFELSE is expanded from...
/media/sdb5/eel/build/tmp/work/x86_64-linux/autoconf-native/2.69-r11/autoconf-2.69/lib/autoconf/general.m4:2672: AC_LINK_IFELSE is expanded from...
aclocal.m4:8245: _LT_LINKER_SHLIBS is expanded from...
aclocal.m4:9320: _LT_LANG_C_CONFIG is expanded from...
aclocal.m4:4231: _LT_SETUP is expanded from...
aclocal.m4:4160: LT_INIT is expanded from...
aclocal.m4:4195: AC_PROG_LIBTOOL is expanded from...
configure.in:85: the top level
autoreconf: running: libtoolize --copy --force
libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, `build-aux'.
libtoolize: copying file `build-aux/ltmain.sh'
libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4'.
libtoolize: copying file `m4/libtool.m4'
libtoolize: copying file `m4/ltoptions.m4'
libtoolize: copying file `m4/ltsugar.m4'
libtoolize: copying file `m4/ltversion.m4'
libtoolize: copying file `m4/lt~obsolete.m4'
aclocal: warning: autoconf input should be named 'configure.ac', not 'configure.in'
autoreconf: running: /media/sdb5/eel/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf --include=/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/m4/ --force
autoreconf: running: /media/sdb5/eel/build/tmp/sysroots/x86_64-linux/usr/bin/autoheader --include=/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/m4/ --force
autoreconf: running: automake --foreign --add-missing --copy --force-missing
automake: warning: autoconf input should be named 'configure.ac', not 'configure.in'
configure.in:5: warning: AM_INIT_AUTOMAKE: two- and three-arguments forms are deprecated.  For more info, see:
configure.in:5: http://www.gnu.org/software/automake/manual/automake.html#Modernize-AM_INIT_AUTOMAKE-invocation
automake: warning: autoconf input should be named 'configure.ac', not 'configure.in'
autoreconf: running: gnu-configize
autoreconf: Leaving directory `.'
NOTE: Running /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/configure  --build=x86_64-linux 		  --host=x86_64-poky-linux 		  --target=x86_64-poky-linux 		  --prefix=/usr 		  --exec_prefix=/usr 		  --bindir=/usr/bin 		  --sbindir=/usr/sbin 		  --libexecdir=/usr/lib/libpam 		  --datadir=/usr/share 		  --sysconfdir=/etc 		  --sharedstatedir=/com 		  --localstatedir=/var 		  --libdir=/usr/lib 		  --includedir=/usr/include 		  --oldincludedir=/usr/include 		  --infodir=/usr/share/info 		  --mandir=/usr/share/man 		  --disable-silent-rules 		  --disable-dependency-tracking 		  --with-libtool-sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 --with-db-uniquename=_pam                 --includedir=/usr/include/security                 --libdir=/lib                 --disable-nis                 --disable-regenerate-docu --enable-nls --disable-audit 
configure: WARNING: unrecognized options: --disable-silent-rules
configure: loading site script /media/sdb5/eel/poky/meta/site/endian-little
configure: loading site script /media/sdb5/eel/poky/meta/site/common-linux
configure: loading site script /media/sdb5/eel/poky/meta/site/common-glibc
configure: loading site script /media/sdb5/eel/poky/meta/site/x86_64-linux
configure: loading site script /media/sdb5/eel/poky/meta/site/common
configure: loading site script /media/sdb5/eel/build/tmp/sysroots/qemux86-64/usr/share/x86_64-poky-linux_config_site.d/eglibc_config
configure: loading site script /media/sdb5/eel/build/tmp/sysroots/qemux86-64/usr/share/x86_64-poky-linux_config_site.d/ncurses_config
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for x86_64-poky-linux-strip... x86_64-poky-linux-strip
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking build system type... x86_64-pc-linux-gnu
checking host system type... x86_64-poky-linux-gnu
checking for style of include used by make... GNU
checking for x86_64-poky-linux-gcc... x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... yes
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 accepts -g... yes
checking for x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 option to accept ISO C89... none needed
checking dependency style of x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64... none
checking how to run the C preprocessor... x86_64-poky-linux-gcc -E --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64  -m64
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for ANSI C header files... (cached) yes
checking for sys/types.h... (cached) yes
checking for sys/stat.h... (cached) yes
checking for stdlib.h... (cached) yes
checking for string.h... (cached) yes
checking for memory.h... (cached) yes
checking for strings.h... (cached) yes
checking for inttypes.h... (cached) yes
checking for stdint.h... (cached) yes
checking for unistd.h... (cached) yes
checking minix/config.h usability... no
checking minix/config.h presence... no
checking for minix/config.h... no
checking whether it is safe to define __EXTENSIONS__... yes
checking for x86_64-poky-linux-gcc... (cached) x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64
checking whether we are using the GNU C compiler... (cached) yes
checking whether x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 accepts -g... (cached) yes
checking for x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 option to accept ISO C89... (cached) none needed
checking dependency style of x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64... (cached) none
checking for bison... bison -y
checking for flex... flex
checking lex output file root... lex.yy
checking lex library... -lfl
checking whether yytext is a pointer... yes
checking whether ln -s works... yes
checking whether make sets $(MAKE)... (cached) yes
checking how to print strings... printf
checking for a sed that does not truncate output... /bin/sed
checking for fgrep... /bin/grep -F
checking for ld used by x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64... x86_64-poky-linux-ld --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64
checking if the linker (x86_64-poky-linux-ld --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64) is GNU ld... yes
checking for BSD- or MS-compatible name lister (nm)... x86_64-poky-linux-nm
checking the name lister (x86_64-poky-linux-nm) interface... BSD nm
checking the maximum length of command line arguments... 1572864
checking whether the shell understands some XSI constructs... yes
checking whether the shell understands "+="... yes
checking how to convert x86_64-pc-linux-gnu file names to x86_64-poky-linux-gnu format... func_convert_file_noop
checking how to convert x86_64-pc-linux-gnu file names to toolchain format... func_convert_file_noop
checking for x86_64-poky-linux-ld --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 option to reload object files... -r
checking for x86_64-poky-linux-objdump... x86_64-poky-linux-objdump
checking how to recognize dependent libraries... pass_all
checking for x86_64-poky-linux-dlltool... no
checking for dlltool... no
checking how to associate runtime and link libraries... printf %s\n
checking for x86_64-poky-linux-ar... x86_64-poky-linux-ar
checking for archiver @FILE support... @
checking for x86_64-poky-linux-strip... (cached) x86_64-poky-linux-strip
checking for x86_64-poky-linux-ranlib... x86_64-poky-linux-ranlib
checking command to parse x86_64-poky-linux-nm output from x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 object... ok
checking for sysroot... /media/sdb5/eel/build/tmp/sysroots/qemux86-64
checking for x86_64-poky-linux-mt... no
checking for mt... mt
configure: WARNING: using cross tools not prefixed with host triplet
checking if mt is a manifest tool... no
checking for dlfcn.h... (cached) yes
checking for objdir... .libs
checking if x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 supports -fno-rtti -fno-exceptions... no
checking for x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 option to produce PIC... -fPIC -DPIC
checking if x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 PIC flag -fPIC -DPIC works... yes
checking if x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 static flag -static works... yes
checking if x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 supports -c -o file.o... yes
checking if x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 supports -c -o file.o... (cached) yes
checking whether the x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 linker (x86_64-poky-linux-ld --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -m elf_x86_64) supports shared libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... no
checking whether x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 and cc understand -c and -o together... yes
checking whether ld supports --as-needed... yes
checking whether ld supports --no-undefined... yes
checking whether ld supports -O1... yes
checking for special C compiler options needed for large files... no
checking for _FILE_OFFSET_BITS value needed for large files... no
/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/configure: line 13057: test: too many arguments
/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/configure: line 13084: test: too many arguments
checking for CC_FOR_BUILD... gcc
checking for __attribute__... yes
checking for .symver assembler directive... yes
checking for ld --version-script... yes
checking for -fpie... yes
checking for libprelude-config... /usr/bin/libprelude-config
checking for libprelude - version >= 0.9.0... cross compiling; assumed OK... 
yes
Defining $ISA to "../../lib/security"
checking for paths.h... (cached) yes
checking for xauth... /usr/bin/xauth
checking for dlopen in -ldl... yes
checking crack.h usability... yes
checking crack.h presence... yes
checking for crack.h... yes
checking for FascistCheck in -lcrack... yes
checking xcrypt.h usability... no
checking xcrypt.h presence... no
checking for xcrypt.h... no
checking for crypt.h... (cached) yes
checking for library containing crypt... -lcrypt
checking for crypt_r... yes
checking for crypt_gensalt_r... no
checking for db_create_pam... no
checking for db_create... no
checking for dbm_store_pam... no
checking for dbm_store... no
checking for dbm_store in -lndbm... no
checking for x86_64-poky-linux-pkg-config... no
checking for pkg-config... /media/sdb5/eel/build/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking for getfilecon in -lselinux... no
checking for dirent.h that defines DIR... yes
checking for library containing opendir... none required
checking for ANSI C header files... (cached) yes
checking for sys/wait.h that is POSIX.1 compatible... (cached) yes
checking for fcntl.h... (cached) yes
checking for limits.h... (cached) yes
checking for malloc.h... (cached) yes
checking for sys/file.h... (cached) yes
checking for sys/ioctl.h... (cached) yes
checking for sys/time.h... (cached) yes
checking for syslog.h... (cached) yes
checking for net/if.h... (cached) yes
checking for termio.h... (cached) yes
checking for unistd.h... (cached) yes
checking for sys/fsuid.h... (cached) yes
checking inittypes.h usability... no
checking inittypes.h presence... no
checking for inittypes.h... no
checking for lastlog.h... (cached) yes
checking for utmp.h... (cached) yes
checking for utmpx.h... (cached) yes
checking whether byte ordering is bigendian... (cached) no
checking for an ANSI C-conforming const... yes
checking for uid_t in sys/types.h... (cached) {ac_cv_type_uid_t=yes}
checking for off_t... yes
checking for pid_t... yes
checking for size_t... yes
checking whether time.h and sys/time.h may both be included... yes
checking whether struct tm is in sys/time.h or time.h... time.h
checking type of array argument to getgroups... gid_t
checking whether x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 needs -traditional... no
checking for working memcmp... (cached) yes
checking for vprintf... (cached) yes
checking for _doprnt... no
checking for fseeko... (cached) yes
checking for getdomainname... (cached) yes
checking for gethostname... (cached) yes
checking for gettimeofday... (cached) yes
checking for lckpwdf... (cached) yes
checking for mkdir... (cached) yes
checking for select... (cached) yes
checking for strcspn... (cached) yes
checking for strdup... (cached) yes
checking for strspn... (cached) yes
checking for strstr... (cached) yes
checking for strtol... (cached) yes
checking for uname... (cached) yes
checking for getutent_r... yes
checking for getpwnam_r... (cached) yes
checking for getpwuid_r... (cached) yes
checking for getgrnam_r... (cached) yes
checking for getgrgid_r... (cached) yes
checking for getspnam_r... (cached) yes
checking for getgrouplist... (cached) yes
checking for getline... (cached) yes
checking for getdelim... (cached) yes
checking for inet_ntop... (cached) yes
checking for inet_pton... (cached) yes
checking for innetgr... (cached) yes
checking for ruserok_af... (cached) yes
checking for unshare... (cached) yes
checking for xsltproc... /media/sdb5/eel/build/tmp/sysroots/x86_64-linux/usr/bin/xsltproc
checking for xmllint... /media/sdb5/eel/build/tmp/sysroots/x86_64-linux/usr/bin/xmllint
checking for XML catalog (/etc/xml/catalog)... found
checking for xmlcatalog... /media/sdb5/eel/build/tmp/sysroots/x86_64-linux/usr/bin/xmlcatalog
checking for DocBook XML DTD V4.4 in XML catalog... found
checking for DocBook XSL Stylesheets in XML catalog... found
checking for w3m... /usr/bin/w3m
checking for fop... /usr/bin/fop
checking whether NLS is requested... yes
checking for msgfmt... /media/sdb5/eel/build/tmp/sysroots/x86_64-linux/usr/bin/msgfmt
checking for gmsgfmt... /media/sdb5/eel/build/tmp/sysroots/x86_64-linux/usr/bin/msgfmt
checking for xgettext... /media/sdb5/eel/build/tmp/sysroots/x86_64-linux/usr/bin/xgettext
checking for msgmerge... /media/sdb5/eel/build/tmp/sysroots/x86_64-linux/usr/bin/msgmerge
checking for ld used by x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64... x86_64-poky-linux-ld --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -m elf_x86_64
checking if the linker (x86_64-poky-linux-ld --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -m elf_x86_64) is GNU ld... yes
checking for shared library run path origin... done
checking for CFPreferencesCopyAppValue... no
checking for CFLocaleCopyCurrent... no
checking for GNU gettext in libc... yes
checking whether to use NLS... yes
checking where the gettext function comes from... libc
checking for dngettext... (cached) yes
checking whether __NR_keyctl is declared... yes
checking whether ENOKEY is declared... yes
checking that generated files are newer than configure... done
configure: creating ./config.status
config.status: creating Makefile
config.status: creating libpam/Makefile
config.status: creating libpamc/Makefile
config.status: creating libpamc/test/Makefile
config.status: creating libpam_misc/Makefile
config.status: creating conf/Makefile
config.status: creating conf/pam_conv1/Makefile
config.status: creating po/Makefile.in
config.status: creating modules/Makefile
config.status: creating modules/pam_access/Makefile
config.status: creating modules/pam_cracklib/Makefile
config.status: creating modules/pam_debug/Makefile
config.status: creating modules/pam_deny/Makefile
config.status: creating modules/pam_echo/Makefile
config.status: creating modules/pam_env/Makefile
config.status: creating modules/pam_faildelay/Makefile
config.status: creating modules/pam_filter/Makefile
config.status: creating modules/pam_filter/upperLOWER/Makefile
config.status: creating modules/pam_ftp/Makefile
config.status: creating modules/pam_group/Makefile
config.status: creating modules/pam_issue/Makefile
config.status: creating modules/pam_keyinit/Makefile
config.status: creating modules/pam_lastlog/Makefile
config.status: creating modules/pam_limits/Makefile
config.status: creating modules/pam_listfile/Makefile
config.status: creating modules/pam_localuser/Makefile
config.status: creating modules/pam_loginuid/Makefile
config.status: creating modules/pam_mail/Makefile
config.status: creating modules/pam_mkhomedir/Makefile
config.status: creating modules/pam_motd/Makefile
config.status: creating modules/pam_namespace/Makefile
config.status: creating modules/pam_nologin/Makefile
config.status: creating modules/pam_permit/Makefile
config.status: creating modules/pam_pwhistory/Makefile
config.status: creating modules/pam_rhosts/Makefile
config.status: creating modules/pam_rootok/Makefile
config.status: creating modules/pam_exec/Makefile
config.status: creating modules/pam_securetty/Makefile
config.status: creating modules/pam_selinux/Makefile
config.status: creating modules/pam_sepermit/Makefile
config.status: creating modules/pam_shells/Makefile
config.status: creating modules/pam_stress/Makefile
config.status: creating modules/pam_succeed_if/Makefile
config.status: creating modules/pam_tally/Makefile
config.status: creating modules/pam_tally2/Makefile
config.status: creating modules/pam_time/Makefile
config.status: creating modules/pam_timestamp/Makefile
config.status: creating modules/pam_tty_audit/Makefile
config.status: creating modules/pam_umask/Makefile
config.status: creating modules/pam_unix/Makefile
config.status: creating modules/pam_userdb/Makefile
config.status: creating modules/pam_warn/Makefile
config.status: creating modules/pam_wheel/Makefile
config.status: creating modules/pam_xauth/Makefile
config.status: creating doc/Makefile
config.status: creating doc/specs/Makefile
config.status: creating doc/man/Makefile
config.status: creating doc/sag/Makefile
config.status: creating doc/adg/Makefile
config.status: creating doc/mwg/Makefile
config.status: creating examples/Makefile
config.status: creating tests/Makefile
config.status: creating xtests/Makefile
config.status: creating config.h
config.status: executing depfiles commands
config.status: executing libtool commands
config.status: executing po-directories commands
config.status: creating po/POTFILES
config.status: creating po/Makefile
configure: WARNING: unrecognized options: --disable-silent-rules
DEBUG: Shell function do_configure finished
DEBUG: Executing python function do_qa_configure
NOTE: Checking autotools environment for common misconfiguration
NOTE: libpam: md5 checksum matched for file://COPYING;md5=7eb5c1bf854e8881005d673599ee74d3
DEBUG: Python function do_qa_configure finished
DEBUG: Executing shell function autotools_postconfigure
DEBUG: Shell function autotools_postconfigure finished

--------------000306020105050404020803
Content-Type: text/plain; charset="UTF-8"; name="log.do_compile.17102"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="log.do_compile.17102"

DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bit-64', 'x86_64-linux', 'common']
DEBUG: Executing shell function do_compile
NOTE: make -j 8
make  all-recursive
make[1]: Entering directory `/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/build'
Making all in libpam
make[2]: Entering directory `/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/build/libpam'
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_account.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_account.c
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_auth.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_auth.c
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_data.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_data.c
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_delay.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_delay.c
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_dispatch.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_dispatch.c
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_end.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_end.c
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_env.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_env.c
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_get_authtok.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_get_authtok.c
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_dispatch.c  -fPIC -DPIC -o .libs/pam_dispatch.o
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_auth.c  -fPIC -DPIC -o .libs/pam_auth.o
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_account.c  -fPIC -DPIC -o .libs/pam_account.o
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_data.c  -fPIC -DPIC -o .libs/pam_data.o
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_delay.c  -fPIC -DPIC -o .libs/pam_delay.o
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_get_authtok.c  -fPIC -DPIC -o .libs/pam_get_authtok.o
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_end.c  -fPIC -DPIC -o .libs/pam_end.o
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_env.c  -fPIC -DPIC -o .libs/pam_env.o
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_handlers.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_handlers.c
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_item.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_item.c
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_misc.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_misc.c
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_handlers.c  -fPIC -DPIC -o .libs/pam_handlers.o
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_password.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_password.c
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_misc.c  -fPIC -DPIC -o .libs/pam_misc.o
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_item.c  -fPIC -DPIC -o .libs/pam_item.o
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_prelude.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_prelude.c
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_session.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_session.c
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_start.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_start.c
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_static.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_static.c
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_password.c  -fPIC -DPIC -o .libs/pam_password.o
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_session.c  -fPIC -DPIC -o .libs/pam_session.o
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_static.c  -fPIC -DPIC -o .libs/pam_static.o
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_start.c  -fPIC -DPIC -o .libs/pam_start.o
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_prelude.c  -fPIC -DPIC -o .libs/pam_prelude.o
../x86_64-poky-linux-libtool --tag=CC   --mode=compile x86_64-poky-linux-gcc  -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I..    -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\"   -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c -o pam_strerror.lo /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_strerror.c
/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_prelude.c:13:32: fatal error: libprelude/prelude.h: No such file or directory
 #include <libprelude/prelude.h>
                                ^
compilation terminated.
make[2]: *** [pam_prelude.lo] Error 1
make[2]: *** Waiting for unfinished jobs....
x86_64-poky-linux-libtool: compile:  x86_64-poky-linux-gcc -m64 --sysroot=/media/sdb5/eel/build/tmp/sysroots/qemux86-64 -DHAVE_CONFIG_H -I. -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam -I.. -DDEFAULT_MODULE_PATH=\"/lib/security/\" -DLIBPAM_COMPILE -I/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/include -DPRELUDE=1 -DPAM_VERSION=\"1.1.6\" -O2 -pipe -g -feliminate-unused-debug-types -fPIC -c /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/Linux-PAM-1.1.6/libpam/pam_strerror.c  -fPIC -DPIC -o .libs/pam_strerror.o
make[2]: Leaving directory `/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/build/libpam'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/build'
make: *** [all] Error 2
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_compile (log file is located at /media/sdb5/eel/build/tmp/work/x86_64-poky-linux/libpam/1.1.6-r3/temp/log.do_compile.17102)

--------------000306020105050404020803--
