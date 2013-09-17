Return-Path: <jc@vtkloud.com>
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 808C7E015C1
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 12:24:07 -0700 (PDT)
Received: by mail-vc0-f169.google.com with SMTP id ib11so4620833vcb.28
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 12:24:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type;
	bh=gx6Y9kWAvw2p9GNw6EwFInM3YqQtCoxtxjT6v+jvpsY=;
	b=esrRJMPQyHjadjSyQtI4bs0233KPk6jSOA4WbSsYmAomoqCeAv8on5LkJZg9K2TnnR
	xh63pmMb4XMHbm6fyRR0m3XAuhYWm6GwIBq1wpXwDcHCg5VOdBsI9zMq6YQuiBj1F77P
	OVA7hB6MWrQqSGRcGf3RzerlH+McxC52GuqgOcid43I5SjItAcuhj2mSd3A53pYATNOr
	gJqP6kAcdeLgaLFSf5BnhSHx/rIKxCTHdE50X+P7JMLCtA8Ea7Yfg4yGF96nKrSSKydI
	DOo3YJw83vX1UKK7GE8vFqu3gewhpjScpXg60CJjRvUFXTebJooEO3HDh5P+12lmYJwx
	Yazw==
X-Gm-Message-State: ALoCoQmFIUPva0i8OyksuU+IvZM+1jJI1kY3vo/xKKtuJk6h+ZBKQV5QMu7wUqPCDLgk/woDSLkL
X-Received: by 10.52.23.113 with SMTP id l17mr10612976vdf.23.1379445846332;
	Tue, 17 Sep 2013 12:24:06 -0700 (PDT)
Received: from [128.31.34.121] (31-34-121.wireless.csail.mit.edu.
	[128.31.34.121])
	by mx.google.com with ESMTPSA id eu2sm20250105vdc.2.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 17 Sep 2013 12:23:54 -0700 (PDT)
Message-ID: <5238AC48.9070500@vtkloud.com>
Date: Tue, 17 Sep 2013 15:23:52 -0400
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: configure issue with mpc (mediaplayer client)
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
X-List-Received-Date: Tue, 17 Sep 2013 19:24:08 -0000
X-Groupsio-MsgNum: 16104
Content-Type: multipart/mixed; boundary="------------010505080803070704030907"

--------------010505080803070704030907
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

(not sure it's a yocto or an OE-core issue... I still have the same 
personal dilemma of where to send such questions)


I'm trying to add a recipe for MPC, the console MPD client. The first 
step was to add libmpdclient which is required by MPC. I simply create 
this recipe which worked (attached, to avoid too much noise in the mail 
body)

Then I created the following recipe for mpc (attached too)


When I run bitbake mpc (or simply bitbake mpc -c configure), I get the 
error attached in the logs (too big to paste in the email). It seems 
that at some point bitbake is changing the provided configure file but 
it fails to do it properly.

I am lost about what I can do from there...


Jay


--------------010505080803070704030907
Content-Type: text/plain; charset=UTF-8;
 name="log.do_configure.11276"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="log.do_configure.11276"

DEBUG: Executing python function sysroot_cleansstate
DEBUG: Python function sysroot_cleansstate finished
DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'common-linux',=
 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
DEBUG: Executing shell function autotools_preconfigure
DEBUG: Shell function autotools_preconfigure finished
DEBUG: Executing shell function do_configure
automake (GNU automake) 1.12.6
Copyright (C) 2012 Free Software Foundation, Inc.
License GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl-2.0=
.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Tom Tromey <tromey@redhat.com>
       and Alexandre Duret-Lutz <adl@gnu.org>.
AUTOV is 1.12
NOTE: Executing ACLOCAL=3D"aclocal --system-acdir=3D/media/yocto/var_yocto/=
var_yocto/rpi-build/tmp/work/armv6-vfp-poky-linux-gnueabi/mpc/0.23-r0/mpc-0=
.23/aclocal-copy/ --automake-acdir=3D/media/yocto/var_yocto/var_yocto/rpi-b=
uild/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.12" autoreconf --verbose=
 --install --force --exclude=3Dautopoint -I /media/yocto/var_yocto/var_yoct=
o/rpi-build/tmp/work/armv6-vfp-poky-linux-gnueabi/mpc/0.23-r0/mpc-0.23/m4/
autoreconf: Entering directory `.'
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal --system-acdir=3D/media/yocto/var_yocto/var_yo=
cto/rpi-build/tmp/work/armv6-vfp-poky-linux-gnueabi/mpc/0.23-r0/mpc-0.23/ac=
local-copy/ --automake-acdir=3D/media/yocto/var_yocto/var_yocto/rpi-build/t=
mp/sysroots/x86_64-linux/usr/share/aclocal-1.12 -I /media/yocto/var_yocto/v=
ar_yocto/rpi-build/tmp/work/armv6-vfp-poky-linux-gnueabi/mpc/0.23-r0/mpc-0.=
23/m4/ -I /media/yocto/var_yocto/var_yocto/rpi-build/tmp/work/armv6-vfp-pok=
y-linux-gnueabi/mpc/0.23-r0/mpc-0.23/m4/ --force -I m4
autoreconf: configure.ac: tracing
autoreconf: configure.ac: not using Libtool
autoreconf: running: /media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroot=
s/x86_64-linux/usr/bin/autoconf --include=3D/media/yocto/var_yocto/var_yoct=
o/rpi-build/tmp/work/armv6-vfp-poky-linux-gnueabi/mpc/0.23-r0/mpc-0.23/m4/ =
--force
autoreconf: running: /media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroot=
s/x86_64-linux/usr/bin/autoheader --include=3D/media/yocto/var_yocto/var_yo=
cto/rpi-build/tmp/work/armv6-vfp-poky-linux-gnueabi/mpc/0.23-r0/mpc-0.23/m4=
/ --force
autoreconf: running: automake --foreign --add-missing --copy --force-missin=
g
autoreconf: running: gnu-configize
autoreconf: Leaving directory `.'
NOTE: Running /media/yocto/var_yocto/var_yocto/rpi-build/tmp/work/armv6-vfp=
-poky-linux-gnueabi/mpc/0.23-r0/mpc-0.23/configure  --build=3Dx86_64-linux =
		  --host=3Darm-poky-linux-gnueabi 		  --target=3Darm-poky-linux-gnueabi 	=
	  --prefix=3D/usr 		  --exec_prefix=3D/usr 		  --bindir=3D/usr/bin 		  --s=
bindir=3D/usr/sbin 		  --libexecdir=3D/usr/lib/mpc 		  --datadir=3D/usr/sha=
re 		  --sysconfdir=3D/etc 		  --sharedstatedir=3D/com 		  --localstatedir=
=3D/var 		  --libdir=3D/usr/lib 		  --includedir=3D/usr/include 		  --oldin=
cludedir=3D/usr/include 		  --infodir=3D/usr/share/info 		  --mandir=3D/usr=
/share/man 		  --disable-silent-rules 		  --disable-dependency-tracking 		 =
 --with-libtool-sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sy=
sroots/raspberrypi =20
configure: WARNING: unrecognized options: --disable-silent-rules, --with-li=
btool-sysroot
configure: loading site script /media/yocto/var_yocto/var_yocto/sources/pok=
y/meta/site/endian-little
configure: loading site script /media/yocto/var_yocto/var_yocto/sources/pok=
y/meta/site/arm-common
configure: loading site script /media/yocto/var_yocto/var_yocto/sources/pok=
y/meta/site/common-linux
configure: loading site script /media/yocto/var_yocto/var_yocto/sources/pok=
y/meta/site/common-glibc
configure: loading site script /media/yocto/var_yocto/var_yocto/sources/pok=
y/meta/site/arm-linux
configure: loading site script /media/yocto/var_yocto/var_yocto/sources/pok=
y/meta/site/common
configure: loading site script /media/yocto/var_yocto/var_yocto/sources/met=
a-openembedded/meta-oe/site/endian-little
configure: loading site script /media/yocto/var_yocto/var_yocto/rpi-build/t=
mp/sysroots/raspberrypi/usr/share/arm-poky-linux-gnueabi_config_site.d/ncur=
ses_config
configure: loading site script /media/yocto/var_yocto/var_yocto/rpi-build/t=
mp/sysroots/raspberrypi/usr/share/arm-poky-linux-gnueabi_config_site.d/egli=
bc_config
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for arm-poky-linux-gnueabi-strip... arm-poky-linux-gnueabi-strip
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking for style of include used by make... GNU
checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc  -mar=
ch=3Darmv6 -mthumb-interwork -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto=
/var_yocto/var_yocto/rpi-build/tmp/sysroots/raspberrypi
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...=20
checking whether we are cross compiling... yes
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwo=
rk -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-b=
uild/tmp/sysroots/raspberrypi accepts -g... yes
checking for arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwork -=
mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-build=
/tmp/sysroots/raspberrypi option to accept ISO C89... none needed
checking dependency style of arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mt=
humb-interwork -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var=
_yocto/rpi-build/tmp/sysroots/raspberrypi... none
checking for arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwork -=
mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-build=
/tmp/sysroots/raspberrypi option to accept ISO C99... -std=3Dgnu99
checking whether make sets $(MAKE)... (cached) yes
checking for arm-poky-linux-gnueabi-pkg-config... no
checking for pkg-config... /media/yocto/var_yocto/var_yocto/rpi-build/tmp/s=
ysroots/x86_64-linux/usr/bin/pkg-config
configure: WARNING: using cross tools not prefixed with host triplet
checking pkg-config is at least version 0.9.0... yes
checking for socket in -lsocket... no
checking for gethostbyname in -lnsl... yes
checking for LIBMPDCLIENT... yes
checking for iconv... (cached) yes
checking for nl_langinfo and CODESET... yes
checking how to run the C preprocessor... arm-poky-linux-gnueabi-gcc -E --s=
ysroot=3D/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/raspberryp=
i  -march=3Darmv6 -mthumb-interwork -mfloat-abi=3Dsoftfp
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
checking for locale.h... (cached) yes
checking whether C compiler accepts -Wall... yes
checking whether C compiler accepts -Wextra... yes
checking whether C compiler accepts -Wno-deprecated-declarations... yes
checking whether C compiler accepts -Wmissing-prototypes... yes
checking whether C compiler accepts -Wshadow... yes
checking whether C compiler accepts -Wpointer-arith... yes
checking whether C compiler accepts -Wstrict-prototypes... yes
checking whether C compiler accepts -Wcast-qual... yes
checking whether C compiler accepts -Wwrite-strings... yes
/media/yocto/var_yocto/var_yocto/rpi-build/tmp/work/armv6-vfp-poky-linux-gn=
ueabi/mpc/0.23-r0/mpc-0.23/configure: line 5506: syntax error near unexpect=
ed token `-Wl,--gc-sections'
/media/yocto/var_yocto/var_yocto/rpi-build/tmp/work/armv6-vfp-poky-linux-gn=
ueabi/mpc/0.23-r0/mpc-0.23/configure: line 5506: `	AX_APPEND_LINK_FLAGS(-Wl=
,--gc-sections)'
Configure failed. The contents of all config.log files follows to aid debug=
ging
/media/yocto/var_yocto/var_yocto/rpi-build/tmp/work/armv6-vfp-poky-linux-gn=
ueabi/mpc/0.23-r0/mpc-0.23/config.log
This file contains any messages produced by compilers while
running configure, to aid debugging if configure makes a mistake.

It was created by mpc configure 0.23, which was
generated by GNU Autoconf 2.69.  Invocation command line was

  $ /media/yocto/var_yocto/var_yocto/rpi-build/tmp/work/armv6-vfp-poky-linu=
x-gnueabi/mpc/0.23-r0/mpc-0.23/configure --build=3Dx86_64-linux --host=3Dar=
m-poky-linux-gnueabi --target=3Darm-poky-linux-gnueabi --prefix=3D/usr --ex=
ec_prefix=3D/usr --bindir=3D/usr/bin --sbindir=3D/usr/sbin --libexecdir=3D/=
usr/lib/mpc --datadir=3D/usr/share --sysconfdir=3D/etc --sharedstatedir=3D/=
com --localstatedir=3D/var --libdir=3D/usr/lib --includedir=3D/usr/include =
--oldincludedir=3D/usr/include --infodir=3D/usr/share/info --mandir=3D/usr/=
share/man --disable-silent-rules --disable-dependency-tracking --with-libto=
ol-sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/raspbe=
rrypi

## --------- ##
## Platform. ##
## --------- ##

hostname =3D mba
uname -m =3D x86_64
uname -r =3D 3.8.0-30-generic
uname -s =3D Linux
uname -v =3D #44-Ubuntu SMP Thu Aug 22 20:52:24 UTC 2013

/usr/bin/uname -p =3D unknown
/bin/uname -X     =3D unknown

/bin/arch              =3D unknown
/usr/bin/arch -k       =3D unknown
/usr/convex/getsysinfo =3D unknown
/usr/bin/hostinfo      =3D unknown
/bin/machine           =3D unknown
/usr/bin/oslevel       =3D unknown
/bin/universe          =3D unknown

PATH: /media/yocto/var_yocto/var_yocto/sources/poky/scripts
PATH: /media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/=
usr/bin/armv6-vfp-poky-linux-gnueabi
PATH: /media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/raspberrypi/u=
sr/bin/crossscripts
PATH: /media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/=
usr/sbin
PATH: /media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/=
usr/bin
PATH: /media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/=
sbin
PATH: /media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/=
/bin
PATH: /media/yocto/var_yocto/var_yocto/sources/poky/scripts
PATH: /media/yocto/var_yocto/var_yocto/sources/poky/bitbake/bin
PATH: /usr/local/rvm/gems/ruby-1.9.3-p448@voxtok/bin
PATH: /usr/local/rvm/gems/ruby-1.9.3-p448@global/bin
PATH: /usr/local/rvm/rubies/ruby-1.9.3-p448/bin
PATH: /usr/local/rvm/bin
PATH: /sbin
PATH: /usr/lib/lightdm/lightdm
PATH: /usr/local/sbin
PATH: /usr/local/bin
PATH: /usr/sbin
PATH: /usr/bin
PATH: /sbin
PATH: /bin
PATH: /usr/games
PATH: /usr/local/games


## ----------- ##
## Core tests. ##
## ----------- ##

configure:2065: loading site script /media/yocto/var_yocto/var_yocto/source=
s/poky/meta/site/endian-little
| ac_cv_c_littleendian=3D${ac_cv_c_littleendian=3Dyes}
| ac_cv_c_bigendian=3D${ac_cv_c_bigendian=3Dno}
|=20
| # libnet
| ac_cv_libnet_endianess=3D${ac_cv_libnet_endianess=3Dlil}
|=20
| # libmemcached
| ac_cv_c_endian=3Dlittle
configure:2065: loading site script /media/yocto/var_yocto/var_yocto/source=
s/poky/meta/site/arm-common
| # general
| ac_cv_va_val_copy=3D${ac_cv_va_val_copy=3Dyes}
| ac_cv_func_lstat_dereferences_slashed_symlink=3D${ac_cv_func_lstat_derefe=
rences_slashed_symlink=3Dyes}
| ac_cv_func_lstat_empty_string_bug=3D${ac_cv_func_lstat_empty_string_bug=
=3Dno}
| ac_cv_func_stat_empty_string_bug=3D${ac_cv_func_stat_empty_string_bug=3Dn=
o}
| ac_cv_func_stat_ignores_trailing_slash=3D${ac_cv_func_stat_ignores_traili=
ng_slash=3Dno}
| ac_cv_header_netinet_sctp_h=3D${ac_cv_header_netinet_sctp_h=3Dno}
| ac_cv_header_netinet_sctp_uio_h=3D${ac_cv_header_netinet_sctp_uio_h=3Dno}
| ac_cv_sctp=3D${ac_cv_sctp=3Dno}
|=20
| # apache
| ac_cv_func_pthread_key_delete=3D${ac_cv_func_pthread_key_delete=3Dyes}
| apr_cv_process_shared_works=3D${apr_cv_process_shared_works=3Dno}
| ac_cv_sizeof_ssize_t=3D${ac_cv_sizeof_ssize_t=3D4}
| apr_cv_tcp_nodelay_with_cork=3D${apr_cv_tcp_nodelay_with_cork=3Dyes}
|=20
| # bash
| ac_cv_c_long_double=3D${ac_cv_c_long_double=3Dyes}
| bash_cv_func_sigsetjmp=3D${bash_cv_func_sigsetjmp=3Dmissing}
|=20
| # coreutils
| utils_cv_sys_open_max=3D${utils_cv_sys_open_max=3D1019}
|=20
| # cvs
| cvs_cv_func_printf_ptr=3D${cvs_cv_func_printf_ptr=3Dyes}
|=20
| # db (sleepycat)
| db_cv_fcntl_f_setfd=3D${db_cv_fcntl_f_setfd=3Dyes}
| db_cv_sprintf_count=3D${db_cv_sprintf_count=3Dyes}
| db_cv_align_t=3D${db_cv_align_t=3D'unsigned long long'}
| db_cv_alignp_t=3D${db_cv_alignp_t=3D'unsigned long'}
|=20
| # D-BUS
| ac_cv_func_posix_getpwnam_r=3D${ac_cv_func_posix_getpwnam_r=3Dyes}
|=20
| # edb
| db_cv_spinlocks=3D${db_cv_spinlocks=3Dno}
|=20
| # ettercap
| ettercap_cv_type_socklen_t=3D${ettercap_cv_type_socklen_t=3Dyes}
|=20
| # fget
| compat_cv_func_snprintf_works=3D${compat_cv_func_snprintf_works=3Dyes}
| compat_cv_func_basename_works=3D${compat_cv_func_basename_works=3Dno}
| compat_cv_func_dirname_works=3D${compat_cv_func_dirname_works=3Dno}
|=20
| # fnmatch
| ac_cv_func_fnmatch_works=3D${ac_cv_func_fnmatch_works=3Dyes}
|=20
| # gettext
| am_cv_func_working_getline=3D${am_cv_func_working_getline=3Dyes}
|=20
| # glib
| glib_cv_sizeof_gmutex=3D${glib_cv_sizeof_gmutex=3D24}
| glib_cv_sizeof_system_thread=3D${glib_cv_sizeof_system_thread=3D4}
| glib_cv_stack_grows=3D${glib_cv_stack_grows=3Dno}
| glib_cv_uscore=3D${glib_cv_uscore=3Dno}
| glib_cv_use_pid_surrogate=3D${glib_cv_use_pid_surrogate=3Dyes}
| glib_cv_has__inline=3D${glib_cv_has__inline=3Dyes}
| glib_cv_has__inline__=3D${glib_cv_has__inline__=3Dyes}
| glib_cv_hasinline=3D${glib_cv_hasinline=3Dyes}
| glib_cv_sane_realloc=3D${glib_cv_sane_realloc=3Dyes}
| glib_cv_sizeof_gmutex=3D${glib_cv_sizeof_gmutex=3D24}
| glib_cv_uscore=3D${glib_cv_uscore=3Dno}
| glib_cv_va_val_copy=3D${glib_cv_va_val_copy=3Dyes}
| glib_cv_rtldglobal_broken=3D${glib_cv_rtldglobal_broken=3Dno}
| glib_cv_sys_pthread_mutex_trylock_posix=3D${glib_cv_sys_pthread_mutex_try=
lock_posix=3Dyes}
| glib_cv_sys_pthread_getspecific_posix=3D${glib_cv_sys_pthread_getspecific=
_posix=3Dyes}
| glib_cv_sys_pthread_cond_timedwait_posix=3D${glib_cv_sys_pthread_cond_tim=
edwait_posix=3Dyes}
|=20
| # glib-2.0
| glib_cv_long_long_format=3D${glib_cv_long_long_format=3Dll}
| glib_cv_sizeof_gmutex=3D${glib_cv_sizeof_gmutex=3D24}
| glib_cv_sizeof_intmax_t=3D${glib_cv_sizeof_intmax_t=3D8}
| glib_cv_sizeof_ptrdiff_t=3D${glib_cv_sizeof_ptrdiff_t=3D4}
| glib_cv_sizeof_size_t=3D${glib_cv_sizeof_size_t=3D4}
| glib_cv_sizeof_system_thread=3D${glib_cv_sizeof_system_thread=3D4}
| glib_cv_sys_use_pid_niceness_surrogate=3D${glib_cv_sys_use_pid_niceness_s=
urrogate=3Dyes}
| ac_cv_alignof_guint32=3D4
| ac_cv_alignof_guint64=3D8
| ac_cv_alignof_unsigned_long=3D4
|=20
| #gstreamer
| as_cv_unaligned_access=3D${as_cv_unaligned_access=3Dno}
|=20
| # httppc
| ac_cv_strerror_r_SUSv3=3D${ac_cv_strerror_r_SUSv3=3Dno}
|=20
| # jikes
| ac_cv_sizeof_wchar_t=3D4
|=20
| # lftp
| ac_cv_need_trio=3D${ac_cv_need_trio=3Dno}
| lftp_cv_va_val_copy=3D${lftp_cv_va_val_copy=3Dyes}
|=20
| # libesmtp
| acx_working_snprintf=3D${acx_working_snprintf=3Dyes}
|=20
| # libidl
| libIDL_cv_long_long_format=3D${libIDL_cv_long_long_format=3Dll}
|=20
| # libnet=20
| ac_libnet_have_packet_socket=3D${ac_libnet_have_packet_socket=3Dyes}
|=20
| # libpcap
| ac_cv_linux_vers=3D${ac_cv_linux_vers=3D2}
|=20
| # libxfce4util
| with_broken_putenv=3D${with_broken_putenv=3Dno}
|=20
| # links
| ac_cv_lib_png_png_create_info_struct=3D${ac_cv_lib_png_png_create_info_st=
ruct=3Dyes}
|=20
| # mysql
| mysql_cv_func_atomic_sub=3D${mysql_cv_func_atomic_sub=3Dno}
| mysql_cv_func_atomic_add=3D${mysql_cv_func_atomic_add=3Dno}
|=20
| # nano
| ac_cv_regexec_segfault_emptystr=3D${ac_cv_regexec_segfault_emptystr=3Dno}
| nano_cv_func_regexec_segv_emptystr=3D${nano_cv_func_regexec_segv_emptystr=
=3Dno}
|=20
| # ORBit2
| ac_cv_alignof_CORBA_boolean=3D1
| ac_cv_alignof_CORBA_char=3D1
| ac_cv_alignof_CORBA_double=3D8
| ac_cv_alignof_CORBA_float=3D4
| ac_cv_alignof_CORBA_long=3D4
| ac_cv_alignof_CORBA_long_double=3D8
| ac_cv_alignof_CORBA_long_long=3D8
| ac_cv_alignof_CORBA_octet=3D1
| ac_cv_alignof_CORBA_pointer=3D4
| ac_cv_alignof_CORBA_short=3D2
| ac_cv_alignof_CORBA_struct=3D1
| ac_cv_alignof_CORBA_wchar=3D2
|=20
| # php
| ac_cv_pread=3D${ac_cv_pread=3Dno}
| ac_cv_pwrite=3D${ac_cv_pwrite=3Dno}
| php_cv_lib_cookie_io_functions_use_off64_t=3D${php_cv_lib_cookie_io_funct=
ions_use_off64_t=3Dyes}
|=20
| # rsync
| rsync_cv_HAVE_BROKEN_LARGEFILE=3D${rsync_cv_HAVE_BROKEN_LARGEFILE=3Dno}
| rsync_cv_HAVE_SOCKETPAIR=3D${rsync_cv_HAVE_SOCKETPAIR=3Dyes}
| rsync_cv_HAVE_LONGLONG=3D${rsync_cv_HAVE_LONGLONG=3Dyes}
| rsync_cv_HAVE_OFF64_T=3D${rsync_cv_HAVE_OFF64_T=3Dno}
| rsync_cv_HAVE_SHORT_INO_T=3D${rsync_cv_HAVE_SHORT_INO_T=3Dno}
| rsync_cv_HAVE_UNSIGNED_CHAR=3D${rsync_cv_HAVE_UNSIGNED_CHAR=3Dno}
| rsync_cv_HAVE_BROKEN_READDIR=3D${rsync_cv_HAVE_BROKEN_READDIR=3Dno}
| rsync_cv_HAVE_GETTIMEOFDAY_TZ=3D${rsync_cv_HAVE_GETTIMEOFDAY_TZ=3Dyes}
| rsync_cv_HAVE_C99_VSNPRINTF=3D${rsync_cv_HAVE_C99_VSNPRINTF=3Dyes}
| rsync_cv_HAVE_SECURE_MKSTEMP=3D${rsync_cv_HAVE_SECURE_MKSTEMP=3Dyes}
| rsync_cv_REPLACE_INET_NTOA=3D${rsync_cv_REPLACE_INET_NTOA=3Dno}
| rsync_cv_REPLACE_INET_ATON=3D${rsync_cv_REPLACE_INET_ATON=3Dno}
|=20
| # screen
| screen_cv_sys_bcopy_overlap=3D${screen_cv_sys_bcopy_overlap=3Dno}
| screen_cv_sys_memcpy_overlap=3D${screen_cv_sys_memcpy_overlap=3Dno}
| screen_cv_sys_memmove_overlap=3D${screen_cv_sys_memmove_overlap=3Dno}
| screen_cv_sys_fifo_broken_impl=3D${screen_cv_sys_fifo_broken_impl=3Dyes}
| screen_cv_sys_fifo_usable=3D${screen_cv_sys_fifo_usable=3Dyes}
| screen_cv_sys_select_broken_retval=3D${screen_cv_sys_select_broken_retval=
=3Dno}
| screen_cv_sys_sockets_nofs=3D${screen_cv_sys_sockets_nofs=3Dno}
| screen_cv_sys_sockets_usable=3D${screen_cv_sys_sockets_usable=3Dyes}
| screen_cv_sys_terminfo_used=3D${screen_cv_sys_terminfo_used=3Dyes}
|=20
| # slrn
| slrn_cv_va_val_copy=3D${slrn_cv_va_val_copy=3Dyes}
|=20
| # socat
| ac_cv_ispeed_offset=3D${ac_cv_ispeed_offset=3D13}
| sc_cv_termios_ispeed=3D${sc_cv_termios_ispeed=3Dyes}
|=20
| # ssh
| ac_cv_have_space_d_name_in_struct_dirent=3D${ac_cv_dirent_have_space_d_na=
me=3Dyes}
| ac_cv_have_broken_snprintf=3D${ac_cv_have_broken_snprintf=3Dno}
| ac_cv_have_accrights_in_msghdr=3D${ac_cv_have_accrights_in_msghdr=3Dno}
| ac_cv_have_control_in_msghdr=3D${ac_cv_have_control_in_msghdr=3Dyes}
| ac_cv_have_openpty_ctty_bug=3D${ac_cv_have_openpty_ctty_bug=3Dyes}
|=20
| # startup-notification
| lf_cv_sane_realloc=3Dyes
|=20
| # xffm
| jm_cv_func_working_readdir=3Dyes
|=20
| # evolution-data-server
| ac_cv_libiconv_utf8=3D${ac_cv_libiconv_utf8=3Dyes}
configure:2065: loading site script /media/yocto/var_yocto/var_yocto/source=
s/poky/meta/site/common-linux
| # apr
| ac_cv_file__dev_zero=3D${ac_cv_file__dev_zero=3Dyes}
| ac_cv_sizeof_pid_t=3D${ac_cv_sizeof_pid_t=3D4}
|=20
| # samba
| samba_cv_HAVE_IFACE_AIX=3D${samba_cv_HAVE_IFACE_AIX=3Dno}
| samba_cv_HAVE_IFACE_IFCONF=3D${samba_cv_HAVE_IFACE_IFCONF=3Dyes}
| samba_cv_HAVE_IFACE_IFREQ=3D${samba_cv_HAVE_IFACE_IFREQ=3Dyes}
| samba_cv_HAVE_IRIX_SPECIFIC_CAPABILITIES=3D${samba_cv_HAVE_IRIX_SPECIFIC_=
CAPABILITIES=3Dno}
|=20
| # db
| db_cv_path_ar=3D${db_cv_path_ar=3D/usr/bin/ar}
| db_cv_path_chmod=3D${db_cv_path_chmod=3D/bin/chmod}
| db_cv_path_cp=3D${db_cv_path_cp=3D/bin/cp}
| db_cv_path_ln=3D${db_cv_path_ln=3D/bin/ln}
| db_cv_path_mkdir=3D${db_cv_path_mkdir=3D/bin/mkdir}
| db_cv_path_ranlib=3D${db_cv_path_ranlib=3D/usr/bin/ranlib}
| db_cv_path_rm=3D${db_cv_path_rm=3D/bin/rm}
| db_cv_path_sh=3D${db_cv_path_sh=3D/bin/sh}
| db_cv_path_strip=3D${db_cv_path_strip=3D/usr/bin/strip}
|=20
| # bash
| bash_cv_have_mbstate_t=3D${bash_cv_have_mbstate_t=3Dyes}
| bash_cv_must_reinstall_sighandlers=3D${bash_cv_must_reinstall_sighandlers=
=3Dno}
| bash_cv_func_strcoll_broken=3D${bash_cv_func_strcoll_broken=3Dno}
| bash_cv_dup2_broken=3D${bash_cv_dup2_broken=3Dno}
| bash_cv_opendir_not_robust=3D${bash_cv_opendir_not_robust=3Dno}
| bash_cv_type_rlimit=3D${bash_cv_type_rlimit=3Drlim_t}
| bash_cv_getenv_redef=3D${bash_cv_getenv_redef=3Dyes}
| bash_cv_ulimit_maxfds=3D${bash_cv_ulimit_maxfds=3Dyes}
| bash_cv_getcwd_calls_popen=3D${bash_cv_getcwd_calls_popen=3Dno}
| bash_cv_printf_a_format=3D${bash_cv_printf_a_format=3Dyes}
| bash_cv_pgrp_pipe=3D${bash_cv_pgrp_pipe=3Dno}
| bash_cv_job_control_missing=3D${bash_cv_job_control_missing=3Dpresent}
| bash_cv_sys_named_pipes=3D${bash_cv_sys_named_pipes=3Dpresent}
| bash_cv_unusable_rtsigs=3D${bash_cv_unusable_rtsigs=3Dno}
|=20
| # coreutils
| gl_cv_func_fstatat_zero_flag=3D${gl_cv_func_fstatat_zero_flag=3Dyes}
|=20
| # mysql
| ac_cv_sys_restartable_syscalls=3D${ac_cv_sys_restartable_syscalls=3Dyes}
| ac_cv_conv_longlong_to_float=3D${ac_cv_conv_longlong_to_float=3Dyes}
|=20
| # TCL
| tcl_cv_api_serial=3D${tcl_cv_api_serial=3Dtermios}
|=20
| # python
| ac_cv_have_long_long_format=3Dyes
|=20
| # apache
| ac_cv_o_nonblock_inherited=3D${ac_cv_o_nonblock_inherited=3Dno}
configure:2065: loading site script /media/yocto/var_yocto/var_yocto/source=
s/poky/meta/site/common-glibc
| # general
| ac_cv_have_decl_sys_siglist=3D${ac_cv_have_decl_sys_siglist=3Dyes}
| ac_cv_func_realloc_works=3D${ac_cv_func_realloc_works=3Dyes}
| ac_cv_func_realloc_0_nonnull=3D${ac_cv_func_realloc_0_nonnull=3Dyes}
| ac_cv_func_malloc_works=3D${ac_cv_func_malloc_works=3Dyes}
| ac_cv_func_malloc_0_nonnull=3D${ac_cv_func_malloc_0_nonnull=3Dyes}
| ac_cv_func_memcmp_working=3D${ac_cv_func_memcmp_working=3Dyes}
| ac_cv_func_getpgrp_void=3Dyes
| ac_cv_func_setpgrp_void=3Dyes
| ac_cv_func_setgrent_void=3Dyes
| ac_cv_func_getgrgid_r=3D${ac_cv_func_getgrgid_r=3Dyes}
| ac_cv_func_getpwuid_r=3D${ac_cv_func_getpwuid_r=3Dyes}
| ac_cv_func_posix_getpwuid_r=3D${ac_cv_func_posix_getpwuid_r=3Dyes}
| ac_cv_func_posix_getgrgid_r=3D${ac_cv_func_posix_getgrgid_r=3Dyes}
| ac_cv_type_uid_t=3D{ac_cv_type_uid_t=3Dyes}
| ac_cv_func_getaddrinfo=3D${ac_cv_func_getaddrinfo=3Dyes}
|=20
| # bash
| bash_cv_under_sys_siglist=3D${bash_cv_under_sys_siglist=3Dyes}
| bash_cv_sys_siglist=3D${bash_cv_sys_siglist=3Dyes}
|=20
| # clamav
| clamav_av_func_working_snprintf_long=3D${clamav_av_func_working_snprintf_=
long=3Dyes}
| clamav_av_have_in_port_t=3D${clamav_av_have_in_port_t=3Dyes}
| clamav_av_have_in_addr_t=3D${clamav_av_have_in_addr_t=3Dyes}
| ac_cv_func_mmap_fixed_mapped=3D${ac_cv_func_mmap_fixed_mapped=3Dyes}
|=20
| # coreutils
| fu_cv_sys_stat_statfs2_bsize=3D${fu_cv_sys_stat_statfs2_bsize=3Dyes}
|=20
| # glib
| glib_cv_strlcpy=3D${glib_cv_strlcpy=3Dno}
| ac_cv_func_printf_unix98=3D${ac_cv_func_printf_unix98=3Dyes}
| ac_cv_func_snprintf_c99=3D${ac_cv_func_snprintf_c99=3Dyes}
| ac_cv_func_vsnprintf_c99=3D${ac_cv_func_vsnprintf_c99=3Dyes}
| glib_cv_compliant_posix_memalign=3D${glib_cv_compliant_posix_memalign=3D1=
}
| glib_cv_long_long_format=3D${glib_cv_long_long_format=3Dll}
| # glib-1.x requires this and pkgconfig-native / pkgconfig-nativesdk use
| # that to avoid a dependency loop.
| glib_cv___va_copy=3D${glib_cv___va_copy=3Dyes}
| glib_cv_va_copy=3D${glib_cv_va_copy=3Dyes}
| glib_cv_have_qsort_r=3D${glib_cv_have_qsort_r=3Dyes}
|=20
| #dbus-glib
| ac_cv_have_abstract_sockets=3D${ac_cv_have_abstract_sockets=3Dyes}
|=20
| # gnucash
| am_cv_scanf_lld=3D${am_cv_scanf_lld=3Dyes}
|=20
| # guile
| ac_cv_func_pthread_attr_getstack=3D${ac_cv_func_pthread_attr_getstack=3Dy=
es}
|=20
| #gcc-zlib
| ac_cv_func_getpagesize=3D${ac_cv_func_getpagesize=3Dyes}
| ac_cv_func_memcpy=3D${ac_cv_func_memcpy=3Dyes}
| ac_cv_func_strerror=3D${ac_cv_func_strerror=3Dyes}
|=20
| # squid
| ac_cv_af_unix_large_dgram=3D${ac_cv_af_unix_large_dgram=3Dyes}
| ac_cv_func_setresuid=3D${ac_cv_func_setresuid=3Dyes}
| ac_cv_func_va_copy=3D${ac_cv_func_va_copy=3Dyes}
| ac_cv_func___va_copy=3D${ac_cv_func___va_copy=3Dyes}
| ac_cv_epoll_works=3D${ac_cv_epoll_works=3Dyes}
|=20
| ac_cv_check_sjlj=3Dssjlj
|=20
| # m4
| gt_cv_locale_fr=3D${gt_cv_locale_fr=3Dfr_FR}
| gl_cv_func_btowc_eof=3D${gl_cv_func_btowc_eof=3Dyes}
| gl_cv_func_wcrtomb_retval=3D${gl_cv_func_wcrtomb_retval=3Dyes}
| gl_cv_func_wctob_works=3D${gl_cv_func_wctob_works=3Dyes}
| gl_cv_func_mbrtowc_incomplete_state=3D${gl_cv_func_mbrtowc_incomplete_sta=
te=3Dyes}
| gl_cv_func_mbrtowc_sanitycheck=3D${gl_cv_func_mbrtowc_sanitycheck=3Dyes}
| gl_cv_func_mbrtowc_null_arg=3D${gl_cv_func_mbrtowc_null_arg=3Dyes}
| gl_cv_func_mbrtowc_retval=3D${gl_cv_func_mbrtowc_retval=3Dyes}
| gl_cv_func_mbrtowc_nul_retval=3D${gl_cv_func_mbrtowc_nul_retval=3Dyes}
|=20
| # va_copy and _va_copy
| ac_cv_va_copy=3D${ac_cv_va_copy=3Dyes}
| ac_cv___va_copy=3D${ac_cv___va_copy=3Dyes}
| ac_cv_func_va_copy=3D${ac_cv_func_va_copy=3Dyes}
| ac_cv_func___va_copy=3D${ac_cv_func___va_copy=3Dyes}
configure:2065: loading site script /media/yocto/var_yocto/var_yocto/source=
s/poky/meta/site/arm-linux
| ac_cv_func_setvbuf_reversed=3Dno
| ac_cv_sizeof___int64=3D${ac_cv_sizeof___int64=3D0}
| ac_cv_sizeof_char=3D${ac_cv_sizeof_char=3D1}
| ac_cv_sizeof_wchar_t=3D${ac_cv_sizeof_wchar_t=3D1}
| ac_cv_sizeof_unsigned_char=3D${ac_cv_sizeof_unsigned_char=3D1}
| ac_cv_sizeof_bool=3D${ac_cv_sizeof_bool=3D1}
| ac_cv_sizeof_char_p=3D${ac_cv_sizeof_int_p=3D4}
| ac_cv_sizeof_int=3D${ac_cv_sizeof_int=3D4}
| ac_cv_sizeof_int_p=3D${ac_cv_sizeof_int_p=3D4}
| ac_cv_sizeof_long=3D${ac_cv_sizeof_long=3D4}
| ac_cv_sizeof_long_int=3D${ac_cv_sizeof_long_int=3D4}
| ac_cv_sizeof_long_long=3D${ac_cv_sizeof_long_long=3D8}
| ac_cv_sizeof_off_t=3D${ac_cv_sizeof_off_t=3D4}
| ac_cv_sizeof_short=3D${ac_cv_sizeof_short=3D2}
| ac_cv_sizeof_short_int=3D${ac_cv_sizeof_short_int=3D2}
| ac_cv_sizeof_size_t=3D${ac_cv_sizeof_size_t=3D4}
| ac_cv_sizeof_void_p=3D${ac_cv_sizeof_void_p=3D4}
| ac_cv_sizeof_long_p=3D${ac_cv_sizeof_long_p=3D4}
| ac_cv_sizeof_float=3D${ac_cv_sizeof_float=3D4}
| ac_cv_sizeof_double=3D${ac_cv_sizeof_double=3D8}
| ac_cv_sizeof_long_double=3D${ac_cv_sizeof_long_double=3D8}
| ac_cv_sizeof_ptrdiff_t=3D${glib_cv_sizeof_ptrdiff_t=3D4}
| ac_cv_sizeof_unsigned_short=3D${ac_cv_sizeof_unsigned_short=3D2}
| ac_cv_sizeof_unsigned=3D${ac_cv_sizeof_unsigned=3D4}
| ac_cv_sizeof_unsigned_int=3D${ac_cv_sizeof_unsigned_int=3D4}
| ac_cv_sizeof_unsigned_long=3D${ac_cv_sizeof_unsigned_long=3D4}
| ac_cv_sizeof_unsigned_long_long=3D${ac_cv_sizeof_unsigned_long_long=3D8}
| ac_cv_sizeof_signed_char=3D${ac_cv_sizeof_signed_char=3D1}
|=20
| ac_cv_uchar=3D${ac_cv_uchar=3Dno}
| ac_cv_uint=3D${ac_cv_uint=3Dyes}
| ac_cv_ulong=3D${ac_cv_ulong=3Dyes}
| ac_cv_ushort=3D${ac_cv_ushort=3Dyes}
| ac_cv_time_r_type=3D${ac_cv_time_r_type=3DPOSIX}
|=20
| # samba
| samba_cv_BROKEN_NISPLUS_INCLUDE_FILES=3D${samba_cv_BROKEN_NISPLUS_INCLUDE=
_FILES=3Dyes}
| samba_cv_BROKEN_REDHAT_7_SYSTEM_HEADERS=3D${samba_cv_BROKEN_REDHAT_7_SYST=
EM_HEADERS=3Dno}
| samba_cv_HAVE_BROKEN_FCNTL64_LOCKS=3D${samba_cv_HAVE_BROKEN_FCNTL64_LOCKS=
=3Dno}
| samba_cv_HAVE_BROKEN_GETGROUPS=3D${samba_cv_HAVE_BROKEN_GETGROUPS=3Dno}
| samba_cv_HAVE_BROKEN_LINUX_SENDFILE=3D${samba_cv_HAVE_BROKEN_LINUX_SENDFI=
LE=3Dyes}
| samba_cv_HAVE_BROKEN_READDIR=3D${samba_cv_HAVE_BROKEN_READDIR=3Dyes}
| samba_cv_HAVE_BROKEN_READDIR_NAME=3D${samba_cv_HAVE_BROKEN_READDIR_NAME=
=3Dno}
| samba_cv_HAVE_C99_VSNPRINTF=3D${samba_cv_HAVE_C99_VSNPRINTF=3Dyes}
| samba_cv_HAVE_DEV64_T=3D${samba_cv_HAVE_DEV64_T=3Dno}
| samba_cv_HAVE_DEVICE_MAJOR_FN=3D${samba_cv_HAVE_DEVICE_MAJOR_FN=3Dyes}
| samba_cv_HAVE_DEVICE_MINOR_FN=3D${samba_cv_HAVE_DEVICE_MINOR_FN=3Dyes}
| samba_cv_HAVE_DQB_FSOFTLIMIT=3D${samba_cv_HAVE_DQB_FSOFTLIMIT=3Dno}
| samba_cv_HAVE_EXPLICIT_LARGEFILE_SUPPORT=3D${samba_cv_HAVE_EXPLICIT_LARGE=
FILE_SUPPORT=3Dyes}
| samba_cv_HAVE_FAM_H=3D${samba_cv_HAVE_FAM_H=3Dno}
| samba_cv_HAVE_FCNTL_LOCK=3D${samba_cv_HAVE_FCNTL_LOCK=3Dyes}
| samba_cv_HAVE_FTRUNCATE_EXTEND=3D${samba_cv_HAVE_FTRUNCATE_EXTEND=3Dyes}
| samba_cv_HAVE_FUNCTION_MACRO=3D${samba_cv_HAVE_FUNCTION_MACRO=3Dyes}
| samba_cv_HAVE_GETTIMEOFDAY_TZ=3D${samba_cv_HAVE_GETTIMEOFDAY_TZ=3Dyes}
| samba_cv_HAVE_INO64_T=3D${samba_cv_HAVE_INO64_T=3Dno}
| samba_cv_HAVE_INT16_FROM_RPC_RPC_H=3D${samba_cv_HAVE_INT16_FROM_RPC_RPC_H=
=3Dno}
| samba_cv_HAVE_INT32_FROM_RPC_RPC_H=3D${samba_cv_HAVE_INT32_FROM_RPC_RPC_H=
=3Dno}
| samba_cv_HAVE_KERNEL_CHANGE_NOTIFY=3D${samba_cv_HAVE_KERNEL_CHANGE_NOTIFY=
=3Dyes}
| samba_cv_HAVE_KERNEL_OPLOCKS_LINUX=3D${samba_cv_HAVE_KERNEL_OPLOCKS_LINUX=
=3Dyes}
| samba_cv_HAVE_KERNEL_SHARE_MODES=3D${samba_cv_HAVE_KERNEL_SHARE_MODES=3Dy=
es}
| samba_cv_HAVE_MAKEDEV=3D${samba_cv_HAVE_MAKEDEV=3Dyes}
| samba_cv_HAVE_MMAP=3D${samba_cv_HAVE_MMAP=3Dyes}
| samba_cv_HAVE_NATIVE_ICONV=3D${samba_cv_HAVE_NATIVE_ICONV=3Dyes}
| samba_cv_HAVE_OFF64_T=3D${samba_cv_HAVE_OFF64_T=3Dno}
| samba_cv_HAVE_ROOT=3D${samba_cv_HAVE_ROOT=3Dyes}
| samba_cv_HAVE_RPC_AUTH_ERROR_CONFLICT=3D${samba_cv_HAVE_RPC_AUTH_ERROR_CO=
NFLICT=3Dno}
| samba_cv_HAVE_SECURE_MKSTEMP=3D${samba_cv_HAVE_SECURE_MKSTEMP=3Dyes}
| samba_cv_HAVE_SENDFILE=3D${samba_cv_HAVE_SENDFILE=3Dyes}
| samba_cv_HAVE_SENDFILE64=3D${samba_cv_HAVE_SENDFILE64=3Dyes}
| samba_cv_HAVE_SOCK_SIN_LEN=3D${samba_cv_HAVE_SOCK_SIN_LEN=3Dno}
| samba_cv_HAVE_STAT_ST_BLKSIZE=3D${samba_cv_HAVE_STAT_ST_BLKSIZE=3Dyes}
| samba_cv_HAVE_STAT_ST_BLOCKS=3D${samba_cv_HAVE_STAT_ST_BLOCKS=3Dyes}
| samba_cv_HAVE_STRUCT_DIR64=3D${samba_cv_HAVE_STRUCT_DIR64=3Dno}
| samba_cv_HAVE_STRUCT_DIRENT64=3D${samba_cv_HAVE_STRUCT_DIRENT64=3Dyes}
| samba_cv_HAVE_STRUCT_FLOCK64=3D${samba_cv_HAVE_STRUCT_FLOCK64=3Dyes}
| samba_cv_HAVE_TRUNCATED_SALT=3D${samba_cv_HAVE_TRUNCATED_SALT=3Dno}
| samba_cv_HAVE_UINT16_FROM_RPC_RPC_H=3D${samba_cv_HAVE_UINT16_FROM_RPC_RPC=
_H=3Dno}
| samba_cv_HAVE_UINT32_FROM_RPC_RPC_H=3D${samba_cv_HAVE_UINT32_FROM_RPC_RPC=
_H=3Dno}
| samba_cv_HAVE_UNSIGNED_CHAR=3D${samba_cv_HAVE_UNSIGNED_CHAR=3Dyes}
| samba_cv_HAVE_UTIMBUF=3D${samba_cv_HAVE_UTIMBUF=3Dyes}
| samba_cv_HAVE_UT_UT_ADDR=3D${samba_cv_HAVE_UT_UT_ADDR=3Dyes}
| samba_cv_HAVE_UT_UT_EXIT=3D${samba_cv_HAVE_UT_UT_EXIT=3Dyes}
| samba_cv_HAVE_UT_UT_HOST=3D${samba_cv_HAVE_UT_UT_HOST=3Dyes}
| samba_cv_HAVE_UT_UT_ID=3D${samba_cv_HAVE_UT_UT_ID=3Dyes}
| samba_cv_HAVE_UT_UT_NAME=3D${samba_cv_HAVE_UT_UT_NAME=3Dyes}
| samba_cv_HAVE_UT_UT_PID=3D${samba_cv_HAVE_UT_UT_PID=3Dyes}
| samba_cv_HAVE_UT_UT_TIME=3D${samba_cv_HAVE_UT_UT_TIME=3Dyes}
| samba_cv_HAVE_UT_UT_TV=3D${samba_cv_HAVE_UT_UT_TV=3Dyes}
| samba_cv_HAVE_UT_UT_TYPE=3D${samba_cv_HAVE_UT_UT_TYPE=3Dyes}
| samba_cv_HAVE_UT_UT_USER=3D${samba_cv_HAVE_UT_UT_USER=3Dyes}
| samba_cv_HAVE_UX_UT_SYSLEN=3D${samba_cv_HAVE_UX_UT_SYSLEN=3Dno}
| samba_cv_HAVE_VA_COPY=3D${samba_cv_HAVE_VA_COPY=3Dyes}
| samba_cv_HAVE_WORKING_AF_LOCAL=3D${samba_cv_HAVE_WORKING_AF_LOCAL=3Dyes}
| samba_cv_HAVE_Werror=3D${samba_cv_HAVE_Werror=3Dyes}
| samba_cv_PUTUTLINE_RETURNS_UTMP=3D${samba_cv_PUTUTLINE_RETURNS_UTMP=3Dyes=
}
| samba_cv_QUOTA_WORKS=3D${samba_cv_QUOTA_WORKS=3Dyes}
| samba_cv_REALPATH_TAKES_NULL=3D${samba_cv_REALPATH_TAKES_NULL=3Dyes}
| samba_cv_REPLACE_GETPASS=3D${samba_cv_REPLACE_GETPASS=3Dyes}
| samba_cv_REPLACE_INET_NTOA=3D${samba_cv_REPLACE_INET_NTOA=3Dno}
| samba_cv_REPLACE_READDIR=3D${samba_cv_REPLACE_READDIR=3Dno}
| samba_cv_RUN_QUOTA_TESTS=3D${samba_cv_RUN_QUOTA_TESTS=3Dyes}
| samba_cv_SEEKDIR_RETURNS_VOID=3D${samba_cv_SEEKDIR_RETURNS_VOID=3Dyes}
| samba_cv_SIZEOF_DEV_T=3D${samba_cv_SIZEOF_DEV_T=3Dyes}
| samba_cv_SIZEOF_INO_T=3D${samba_cv_SIZEOF_INO_T=3Dyes}
| samba_cv_SIZEOF_OFF_T=3D${samba_cv_SIZEOF_OFF_T=3Dyes}
| samba_cv_SYSCONF_SC_NGROUPS_MAX=3D${samba_cv_SYSCONF_SC_NGROUPS_MAX=3Dyes=
}
| samba_cv_SYSCONF_SC_NPROCESSORS_ONLN=3D${samba_cv_SYSCONF_SC_NPROCESSORS_=
ONLN=3Dyes}
| samba_cv_SYSCONF_SC_NPROC_ONLN=3D${samba_cv_SYSCONF_SC_NPROC_ONLN=3Dno}
| samba_cv_SYSCONF_SC_PAGESIZE=3D${samba_cv_SYSCONF_SC_PAGESIZE=3Dyes}
| samba_cv_SYSQUOTA_FOUND=3D${samba_cv_SYSQUOTA_FOUND=3Dyes}
| samba_cv_SYSQUOTA_WORKS=3D${samba_cv_SYSQUOTA_WORKS=3Dyes}
| samba_cv_SYSQUOTA_WORKS_XFS=3D${samba_cv_SYSQUOTA_WORKS_XFS=3Dyes}
| samba_cv_TRY_QUOTAS=3D${samba_cv_TRY_QUOTAS=3Dno}
| samba_cv_TRY_SYS_QUOTAS=3D${samba_cv_TRY_SYS_QUOTAS=3Dyes}
| samba_cv_USE_SETRESUID=3D${samba_cv_USE_SETRESUID=3Dyes}
| samba_cv_WE_USE_SYS_QUOTAS=3D${samba_cv_WE_USE_SYS_QUOTAS=3Dyes}
| samba_cv_WITH_AFS=3D${samba_cv_WITH_AFS=3Dno}
| samba_cv_WITH_FAKE_KASERVER=3D${samba_cv_WITH_FAKE_KASERVER=3Dno}
| samba_cv_WITH_QUOTAS=3D${samba_cv_WITH_QUOTAS=3Dauto}
| samba_cv_WITH_SYS_QUOTAS=3D${samba_cv_WITH_SYS_QUOTAS=3Dauto}
| samba_cv_WITH_VFS_AFSACL=3D${samba_cv_WITH_VFS_AFSACL=3Dno}
| samba_cv_compiler_supports_ll=3D${samba_cv_compiler_supports_ll=3Dyes}
| samba_cv_found_xfs_header=3D${samba_cv_found_xfs_header=3Dyes}
| samba_cv_have_longlong=3D${samba_cv_have_longlong=3Dyes}
| samba_cv_have_setresgid=3D${samba_cv_have_setresgid=3Dyes}
| samba_cv_have_setresuid=3D${samba_cv_have_setresuid=3Dyes}
| samba_cv_immediate_structures=3D${samba_cv_immediate_structures=3Dyes}
| samba_cv_optimize_out_funcation_calls=3D${samba_cv_optimize_out_funcation=
_calls=3Dyes}
| samba_cv_sig_atomic_t=3D${samba_cv_sig_atomic_t=3Dyes}
| samba_cv_socklen_t=3D${samba_cv_socklen_t=3Dyes}
| samba_cv_struct_timespec=3D${samba_cv_struct_timespec=3Dyes}
| samba_cv_sysquotas_file=3D${samba_cv_sysquotas_file=3Dlib/sysquotas_linux=
.c}
| samba_cv_unixsocket=3D${samba_cv_unixsocket=3Dyes}
| samba_cv_volatile=3D${samba_cv_volatile=3Dyes}
|=20
| #older sambe defines
| samba_cv_USE_SETEUID=3D${samba_cv_USE_SETEUID=3Dyes}
| samba_cv_USE_SETREUID=3D${samba_cv_USE_SETREUID=3Dyes}
| samba_cv_USE_SETUIDX=3D${samba_cv_USE_SETUIDX=3Dyes}
| samba_cv_LINUX_LFS_SUPPORT=3D${samba_cv_LINUX_LFS_SUPPORT=3Dyes}
|=20
| # clamav
| clamav_av_func_working_snprintf_long=3D${clamav_av_func_working_snprintf_=
long=3Dyes}
| clamav_av_have_in_port_t=3D${clamav_av_have_in_port_t=3Dyes}
| clamav_av_have_in_addr_t=3D${clamav_av_have_in_addr_t=3Dyes}
| ac_cv_func_mmap_fixed_mapped=3D${ac_cv_func_mmap_fixed_mapped=3Dyes}
|=20
| #dbus
| ac_cv_have_abstract_sockets=3D${ac_cv_have_abstract_sockets=3Dyes}
|=20
| # lftp
| ac_cv_file___dev_ptc_=3Dyes
|=20
| # guile
| ac_cv_func_pthread_attr_getstack=3D${ac_cv_func_pthread_attr_getstack=3Dy=
es}
|=20
| # gnet
| ac_cv_member_struct_sockaddr_sa_len=3D${ac_cv_member_struct_sockaddr_sa_l=
en=3Dno}
| ac_cv_gnet_have_abstract_sockets=3D${ac_cv_gnet_have_abstract_sockets=3Dn=
o}
| gnet_sockaddr_family_field_name=3D${gnet_sockaddr_family_field_name=3Dss_=
family}
configure:2065: loading site script /media/yocto/var_yocto/var_yocto/source=
s/poky/meta/site/common
| # libelf
| mr_cv_target_elf=3D${mr_cv_target_elf=3Dyes}
|=20
| # Normally kernels have /dev/random enabled
| ac_cv_file__dev_random=3D${ac_cv_file__dev_random=3Dyes}
|=20
| # Avoid sudo to assume void for unsetenv in cross environment, or else it=
 conflicts with
| # target stdlib.h prototype which follows POSIX compiliance. Mark for ups=
tream.
| sudo_cv_func_unsetenv_void=3Dno
|=20
| # shadow dir info, to avoid searching build system
| shadow_cv_maildir=3D${localstatedir}/spool/mail
| shadow_cv_mailfile=3DMailbox
| shadow_cv_utmpdir=3D${localstatedir}/run
| shadow_cv_logdir=3D${localstatedir}/log
| shadow_cv_passwd_dir=3D${bindir}
|=20
| # python: deactivate a runtime check for ipv6-support in python >=3D2.7.1=
 that fails when cross-compiling
| ac_cv_buggy_getaddrinfo=3Dno
configure:2065: loading site script /media/yocto/var_yocto/var_yocto/source=
s/meta-openembedded/meta-oe/site/endian-little
| # rp-pppoe
| rpppoe_cv_pack_bitfields=3D${rpppoe_cv_pack_bitfields=3Drev}
configure:2065: loading site script /media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi/usr/share/arm-poky-linux-gnueabi_config_site.d=
/ncurses_config
| ac_cv_header_X=3D${ac_cv_header_X=3Dno}
| ac_cv_header__CC=3D${ac_cv_header__CC=3Dno}
| ac_cv_header__CFLAGS=3D${ac_cv_header__CFLAGS=3Dno}
| ac_cv_header__CPPFLAGS=3D${ac_cv_header__CPPFLAGS=3Dno}
| ac_cv_header___5=3D${ac_cv_header___5=3Dno}
| ac_cv_header__c=3D${ac_cv_header__c=3Dno}
| ac_cv_header_conftest__ac_ext=3D${ac_cv_header_conftest__ac_ext=3Dno}
| ac_cv_header_curses_h=3D${ac_cv_header_curses_h=3Dyes}
| ac_cv_header_inttypes_h=3D${ac_cv_header_inttypes_h=3Dyes}
| ac_cv_header_memory_h=3D${ac_cv_header_memory_h=3Dyes}
| ac_cv_header_ncurses_curses_h=3D${ac_cv_header_ncurses_curses_h=3Dno}
| ac_cv_header_ncurses_h=3D${ac_cv_header_ncurses_h=3Dyes}
| ac_cv_header_ncurses_termcap_h=3D${ac_cv_header_ncurses_termcap_h=3Dno}
| ac_cv_header_stdc=3D${ac_cv_header_stdc=3Dyes}
| ac_cv_header_stdint_h=3D${ac_cv_header_stdint_h=3Dyes}
| ac_cv_header_stdlib_h=3D${ac_cv_header_stdlib_h=3Dyes}
| ac_cv_header_string_h=3D${ac_cv_header_string_h=3Dyes}
| ac_cv_header_strings_h=3D${ac_cv_header_strings_h=3Dyes}
| ac_cv_header_sys_stat_h=3D${ac_cv_header_sys_stat_h=3Dyes}
| ac_cv_header_sys_types_h=3D${ac_cv_header_sys_types_h=3Dyes}
| ac_cv_header_unistd_h=3D${ac_cv_header_unistd_h=3Dyes}
configure:2065: loading site script /media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi/usr/share/arm-poky-linux-gnueabi_config_site.d=
/eglibc_config
| ac_cv_func___adjtimex=3D${ac_cv_func___adjtimex=3Dyes}
| ac_cv_func___argz_count=3D${ac_cv_func___argz_count=3Dyes}
| ac_cv_func___argz_next=3D${ac_cv_func___argz_next=3Dyes}
| ac_cv_func___argz_stringify=3D${ac_cv_func___argz_stringify=3Dyes}
| ac_cv_func___fpending=3D${ac_cv_func___fpending=3Dyes}
| ac_cv_func___fsetlocking=3D${ac_cv_func___fsetlocking=3Dyes}
| ac_cv_func___progname=3D${ac_cv_func___progname=3Dyes}
| ac_cv_func___secure_getenv=3D${ac_cv_func___secure_getenv=3Dno}
| ac_cv_func__obstack_free=3D${ac_cv_func__obstack_free=3Dyes}
| ac_cv_func__setjmp=3D${ac_cv_func__setjmp=3Dyes}
| ac_cv_func__sys_siglist=3D${ac_cv_func__sys_siglist=3Dyes}
| ac_cv_func_a64l=3D${ac_cv_func_a64l=3Dyes}
| ac_cv_func_abs=3D${ac_cv_func_abs=3Dyes}
| ac_cv_func_access=3D${ac_cv_func_access=3Dyes}
| ac_cv_func_alarm=3D${ac_cv_func_alarm=3Dyes}
| ac_cv_func_alphasort=3D${ac_cv_func_alphasort=3Dyes}
| ac_cv_func_argz_append=3D${ac_cv_func_argz_append=3Dyes}
| ac_cv_func_argz_create_sep=3D${ac_cv_func_argz_create_sep=3Dyes}
| ac_cv_func_argz_insert=3D${ac_cv_func_argz_insert=3Dyes}
| ac_cv_func_argz_next=3D${ac_cv_func_argz_next=3Dyes}
| ac_cv_func_argz_stringify=3D${ac_cv_func_argz_stringify=3Dyes}
| ac_cv_func_asprintf=3D${ac_cv_func_asprintf=3Dyes}
| ac_cv_func_atexit=3D${ac_cv_func_atexit=3Dyes}
| ac_cv_func_atof=3D${ac_cv_func_atof=3Dyes}
| ac_cv_func_atoi=3D${ac_cv_func_atoi=3Dyes}
| ac_cv_func_bcmp=3D${ac_cv_func_bcmp=3Dyes}
| ac_cv_func_bcopy=3D${ac_cv_func_bcopy=3Dyes}
| ac_cv_func_bind_textdomain_codeset=3D${ac_cv_func_bind_textdomain_codeset=
=3Dyes}
| ac_cv_func_bindresvport=3D${ac_cv_func_bindresvport=3Dyes}
| ac_cv_func_btowc=3D${ac_cv_func_btowc=3Dyes}
| ac_cv_func_bzero=3D${ac_cv_func_bzero=3Dyes}
| ac_cv_func_calloc=3D${ac_cv_func_calloc=3Dyes}
| ac_cv_func_canonicalize_file_name=3D${ac_cv_func_canonicalize_file_name=
=3Dyes}
| ac_cv_func_catgets=3D${ac_cv_func_catgets=3Dyes}
| ac_cv_func_cfgetospeed=3D${ac_cv_func_cfgetospeed=3Dyes}
| ac_cv_func_cfsetispeed=3D${ac_cv_func_cfsetispeed=3Dyes}
| ac_cv_func_cfsetspeed=3D${ac_cv_func_cfsetspeed=3Dyes}
| ac_cv_func_chmod=3D${ac_cv_func_chmod=3Dyes}
| ac_cv_func_chown=3D${ac_cv_func_chown=3Dyes}
| ac_cv_func_chroot=3D${ac_cv_func_chroot=3Dyes}
| ac_cv_func_clock=3D${ac_cv_func_clock=3Dyes}
| ac_cv_func_close=3D${ac_cv_func_close=3Dyes}
| ac_cv_func_closedir=3D${ac_cv_func_closedir=3Dyes}
| ac_cv_func_closelog=3D${ac_cv_func_closelog=3Dyes}
| ac_cv_func_confstr=3D${ac_cv_func_confstr=3Dyes}
| ac_cv_func_connect=3D${ac_cv_func_connect=3Dyes}
| ac_cv_func_daemon=3D${ac_cv_func_daemon=3Dyes}
| ac_cv_func_dcgettext=3D${ac_cv_func_dcgettext=3Dyes}
| ac_cv_func_difftime=3D${ac_cv_func_difftime=3Dyes}
| ac_cv_func_dirfd=3D${ac_cv_func_dirfd=3Dyes}
| ac_cv_func_dirname=3D${ac_cv_func_dirname=3Dyes}
| ac_cv_func_dngettext=3D${ac_cv_func_dngettext=3Dyes}
| ac_cv_func_dup2=3D${ac_cv_func_dup2=3Dyes}
| ac_cv_func_ecvt=3D${ac_cv_func_ecvt=3Dyes}
| ac_cv_func_endgrent=3D${ac_cv_func_endgrent=3Dyes}
| ac_cv_func_endmntent=3D${ac_cv_func_endmntent=3Dyes}
| ac_cv_func_endpwent=3D${ac_cv_func_endpwent=3Dyes}
| ac_cv_func_endutent=3D${ac_cv_func_endutent=3Dyes}
| ac_cv_func_endutxent=3D${ac_cv_func_endutxent=3Dyes}
| ac_cv_func_epoll_ctl=3D${ac_cv_func_epoll_ctl=3Dyes}
| ac_cv_func_err=3D${ac_cv_func_err=3Dyes}
| ac_cv_func_ether_hostton=3D${ac_cv_func_ether_hostton=3Dyes}
| ac_cv_func_ether_ntohost=3D${ac_cv_func_ether_ntohost=3Dyes}
| ac_cv_func_euidaccess=3D${ac_cv_func_euidaccess=3Dyes}
| ac_cv_func_execv=3D${ac_cv_func_execv=3Dyes}
| ac_cv_func_fchdir=3D${ac_cv_func_fchdir=3Dyes}
| ac_cv_func_fchmod=3D${ac_cv_func_fchmod=3Dyes}
| ac_cv_func_fchmodat=3D${ac_cv_func_fchmodat=3Dyes}
| ac_cv_func_fchown=3D${ac_cv_func_fchown=3Dyes}
| ac_cv_func_fchownat=3D${ac_cv_func_fchownat=3Dyes}
| ac_cv_func_fcntl=3D${ac_cv_func_fcntl=3Dyes}
| ac_cv_func_fcvt=3D${ac_cv_func_fcvt=3Dyes}
| ac_cv_func_fdatasync=3D${ac_cv_func_fdatasync=3Dyes}
| ac_cv_func_fdopendir=3D${ac_cv_func_fdopendir=3Dyes}
| ac_cv_func_feof_unlocked=3D${ac_cv_func_feof_unlocked=3Dyes}
| ac_cv_func_fgets_unlocked=3D${ac_cv_func_fgets_unlocked=3Dyes}
| ac_cv_func_fgetxattr=3D${ac_cv_func_fgetxattr=3Dyes}
| ac_cv_func_finite=3D${ac_cv_func_finite=3Dyes}
| ac_cv_func_flistxattr=3D${ac_cv_func_flistxattr=3Dyes}
| ac_cv_func_flock=3D${ac_cv_func_flock=3Dyes}
| ac_cv_func_flockfile=3D${ac_cv_func_flockfile=3Dyes}
| ac_cv_func_fnmatch=3D${ac_cv_func_fnmatch=3Dyes}
| ac_cv_func_fork=3D${ac_cv_func_fork=3Dyes}
| ac_cv_func_fpathconf=3D${ac_cv_func_fpathconf=3Dyes}
| ac_cv_func_fprintf=3D${ac_cv_func_fprintf=3Dyes}
| ac_cv_func_free=3D${ac_cv_func_free=3Dyes}
| ac_cv_func_freeaddrinfo=3D${ac_cv_func_freeaddrinfo=3Dyes}
| ac_cv_func_freeifaddrs=3D${ac_cv_func_freeifaddrs=3Dyes}
| ac_cv_func_fseeko=3D${ac_cv_func_fseeko=3Dyes}
| ac_cv_func_fsetxattr=3D${ac_cv_func_fsetxattr=3Dyes}
| ac_cv_func_fstat64=3D${ac_cv_func_fstat64=3Dyes}
| ac_cv_func_fstat=3D${ac_cv_func_fstat=3Dyes}
| ac_cv_func_fstatfs=3D${ac_cv_func_fstatfs=3Dyes}
| ac_cv_func_fsync=3D${ac_cv_func_fsync=3Dyes}
| ac_cv_func_ftello=3D${ac_cv_func_ftello=3Dyes}
| ac_cv_func_ftime=3D${ac_cv_func_ftime=3Dyes}
| ac_cv_func_ftruncate=3D${ac_cv_func_ftruncate=3Dyes}
| ac_cv_func_funlockfile=3D${ac_cv_func_funlockfile=3Dyes}
| ac_cv_func_futimes=3D${ac_cv_func_futimes=3Dyes}
| ac_cv_func_futimesat=3D${ac_cv_func_futimesat=3Dyes}
| ac_cv_func_gai_strerror=3D${ac_cv_func_gai_strerror=3Dyes}
| ac_cv_func_gcvt=3D${ac_cv_func_gcvt=3Dyes}
| ac_cv_func_getaddrinfo=3D${ac_cv_func_getaddrinfo=3Dyes}
| ac_cv_func_getc_unlocked=3D${ac_cv_func_getc_unlocked=3Dyes}
| ac_cv_func_getcwd=3D${ac_cv_func_getcwd=3Dyes}
| ac_cv_func_getdelim=3D${ac_cv_func_getdelim=3Dyes}
| ac_cv_func_getdomainname=3D${ac_cv_func_getdomainname=3Dyes}
| ac_cv_func_getdtablesize=3D${ac_cv_func_getdtablesize=3Dyes}
| ac_cv_func_getegid=3D${ac_cv_func_getegid=3Dyes}
| ac_cv_func_getenv=3D${ac_cv_func_getenv=3Dyes}
| ac_cv_func_geteuid=3D${ac_cv_func_geteuid=3Dyes}
| ac_cv_func_getgid=3D${ac_cv_func_getgid=3Dyes}
| ac_cv_func_getgrent=3D${ac_cv_func_getgrent=3Dyes}
| ac_cv_func_getgrent_r=3D${ac_cv_func_getgrent_r=3Dyes}
| ac_cv_func_getgrgid_r=3D${ac_cv_func_getgrgid_r=3Dyes}
| ac_cv_func_getgrnam=3D${ac_cv_func_getgrnam=3Dyes}
| ac_cv_func_getgrnam_r=3D${ac_cv_func_getgrnam_r=3Dyes}
| ac_cv_func_getgrouplist=3D${ac_cv_func_getgrouplist=3Dyes}
| ac_cv_func_getgroups=3D${ac_cv_func_getgroups=3Dyes}
| ac_cv_func_gethostbyaddr_r=3D${ac_cv_func_gethostbyaddr_r=3Dyes}
| ac_cv_func_gethostbyname2=3D${ac_cv_func_gethostbyname2=3Dyes}
| ac_cv_func_gethostbyname=3D${ac_cv_func_gethostbyname=3Dyes}
| ac_cv_func_gethostbyname_r=3D${ac_cv_func_gethostbyname_r=3Dyes}
| ac_cv_func_gethostent=3D${ac_cv_func_gethostent=3Dyes}
| ac_cv_func_gethostid=3D${ac_cv_func_gethostid=3Dyes}
| ac_cv_func_gethostname=3D${ac_cv_func_gethostname=3Dyes}
| ac_cv_func_getifaddrs=3D${ac_cv_func_getifaddrs=3Dyes}
| ac_cv_func_getline=3D${ac_cv_func_getline=3Dyes}
| ac_cv_func_getloadavg=3D${ac_cv_func_getloadavg=3Dyes}
| ac_cv_func_getmntent=3D${ac_cv_func_getmntent=3Dyes}
| ac_cv_func_getmsg=3D${ac_cv_func_getmsg=3Dno}
| ac_cv_func_getnameinfo=3D${ac_cv_func_getnameinfo=3Dyes}
| ac_cv_func_getnetbyaddr_r=3D${ac_cv_func_getnetbyaddr_r=3Dyes}
| ac_cv_func_getnetgrent_r=3D${ac_cv_func_getnetgrent_r=3Dyes}
| ac_cv_func_getopt=3D${ac_cv_func_getopt=3Dyes}
| ac_cv_func_getopt_long=3D${ac_cv_func_getopt_long=3Dyes}
| ac_cv_func_getopt_long_only=3D${ac_cv_func_getopt_long_only=3Dyes}
| ac_cv_func_getpagesize=3D${ac_cv_func_getpagesize=3Dyes}
| ac_cv_func_getpass=3D${ac_cv_func_getpass=3Dyes}
| ac_cv_func_getpeername=3D${ac_cv_func_getpeername=3Dyes}
| ac_cv_func_getpgrp=3D${ac_cv_func_getpgrp=3Dyes}
| ac_cv_func_getpid=3D${ac_cv_func_getpid=3Dyes}
| ac_cv_func_getppid=3D${ac_cv_func_getppid=3Dyes}
| ac_cv_func_getprotoent_r=3D${ac_cv_func_getprotoent_r=3Dyes}
| ac_cv_func_getpwent=3D${ac_cv_func_getpwent=3Dyes}
| ac_cv_func_getpwent_r=3D${ac_cv_func_getpwent_r=3Dyes}
| ac_cv_func_getpwnam=3D${ac_cv_func_getpwnam=3Dyes}
| ac_cv_func_getpwnam_r=3D${ac_cv_func_getpwnam_r=3Dyes}
| ac_cv_func_getpwuid=3D${ac_cv_func_getpwuid=3Dyes}
| ac_cv_func_getpwuid_r=3D${ac_cv_func_getpwuid_r=3Dyes}
| ac_cv_func_getresuid=3D${ac_cv_func_getresuid=3Dyes}
| ac_cv_func_getrlimit=3D${ac_cv_func_getrlimit=3Dyes}
| ac_cv_func_getrusage=3D${ac_cv_func_getrusage=3Dyes}
| ac_cv_func_getservbyname=3D${ac_cv_func_getservbyname=3Dyes}
| ac_cv_func_getservbyname_r=3D${ac_cv_func_getservbyname_r=3Dyes}
| ac_cv_func_getservbyport_r=3D${ac_cv_func_getservbyport_r=3Dyes}
| ac_cv_func_getservent=3D${ac_cv_func_getservent=3Dyes}
| ac_cv_func_getservent_r=3D${ac_cv_func_getservent_r=3Dyes}
| ac_cv_func_getspnam=3D${ac_cv_func_getspnam=3Dyes}
| ac_cv_func_getspnam_r=3D${ac_cv_func_getspnam_r=3Dyes}
| ac_cv_func_gettimeofday=3D${ac_cv_func_gettimeofday=3Dyes}
| ac_cv_func_getttyent=3D${ac_cv_func_getttyent=3Dyes}
| ac_cv_func_getttynam=3D${ac_cv_func_getttynam=3Dyes}
| ac_cv_func_getuid=3D${ac_cv_func_getuid=3Dyes}
| ac_cv_func_getusershell=3D${ac_cv_func_getusershell=3Dyes}
| ac_cv_func_getutent=3D${ac_cv_func_getutent=3Dyes}
| ac_cv_func_getutid=3D${ac_cv_func_getutid=3Dyes}
| ac_cv_func_getutline=3D${ac_cv_func_getutline=3Dyes}
| ac_cv_func_getutmp=3D${ac_cv_func_getutmp=3Dyes}
| ac_cv_func_getutmpx=3D${ac_cv_func_getutmpx=3Dyes}
| ac_cv_func_getutxent=3D${ac_cv_func_getutxent=3Dyes}
| ac_cv_func_getutxid=3D${ac_cv_func_getutxid=3Dyes}
| ac_cv_func_getutxline=3D${ac_cv_func_getutxline=3Dyes}
| ac_cv_func_getwd=3D${ac_cv_func_getwd=3Dyes}
| ac_cv_func_getxattr=3D${ac_cv_func_getxattr=3Dyes}
| ac_cv_func_glob=3D${ac_cv_func_glob=3Dyes}
| ac_cv_func_gmtime=3D${ac_cv_func_gmtime=3Dyes}
| ac_cv_func_gmtime_r=3D${ac_cv_func_gmtime_r=3Dyes}
| ac_cv_func_grantpt=3D${ac_cv_func_grantpt=3Dyes}
| ac_cv_func_group_member=3D${ac_cv_func_group_member=3Dyes}
| ac_cv_func_herror=3D${ac_cv_func_herror=3Dyes}
| ac_cv_func_hstrerror=3D${ac_cv_func_hstrerror=3Dyes}
| ac_cv_func_iconv=3D${ac_cv_func_iconv=3Dyes}
| ac_cv_func_iconv_open=3D${ac_cv_func_iconv_open=3Dyes}
| ac_cv_func_if_freenameindex=3D${ac_cv_func_if_freenameindex=3Dyes}
| ac_cv_func_if_indextoname=3D${ac_cv_func_if_indextoname=3Dyes}
| ac_cv_func_if_nameindex=3D${ac_cv_func_if_nameindex=3Dyes}
| ac_cv_func_if_nametoindex=3D${ac_cv_func_if_nametoindex=3Dyes}
| ac_cv_func_index=3D${ac_cv_func_index=3Dyes}
| ac_cv_func_inet_addr=3D${ac_cv_func_inet_addr=3Dyes}
| ac_cv_func_inet_aton=3D${ac_cv_func_inet_aton=3Dyes}
| ac_cv_func_inet_ntoa=3D${ac_cv_func_inet_ntoa=3Dyes}
| ac_cv_func_inet_ntop=3D${ac_cv_func_inet_ntop=3Dyes}
| ac_cv_func_inet_pton=3D${ac_cv_func_inet_pton=3Dyes}
| ac_cv_func_initgroups=3D${ac_cv_func_initgroups=3Dyes}
| ac_cv_func_innetgr=3D${ac_cv_func_innetgr=3Dyes}
| ac_cv_func_iruserok=3D${ac_cv_func_iruserok=3Dyes}
| ac_cv_func_isascii=3D${ac_cv_func_isascii=3Dyes}
| ac_cv_func_isatty=3D${ac_cv_func_isatty=3Dyes}
| ac_cv_func_isblank=3D${ac_cv_func_isblank=3Dyes}
| ac_cv_func_isgraph=3D${ac_cv_func_isgraph=3Dyes}
| ac_cv_func_isinf=3D${ac_cv_func_isinf=3Dyes}
| ac_cv_func_isnan=3D${ac_cv_func_isnan=3Dyes}
| ac_cv_func_isprint=3D${ac_cv_func_isprint=3Dyes}
| ac_cv_func_isspace=3D${ac_cv_func_isspace=3Dyes}
| ac_cv_func_iswalnum=3D${ac_cv_func_iswalnum=3Dyes}
| ac_cv_func_iswcntrl=3D${ac_cv_func_iswcntrl=3Dyes}
| ac_cv_func_iswctype=3D${ac_cv_func_iswctype=3Dyes}
| ac_cv_func_iswprint=3D${ac_cv_func_iswprint=3Dyes}
| ac_cv_func_iswspace=3D${ac_cv_func_iswspace=3Dyes}
| ac_cv_func_iswupper=3D${ac_cv_func_iswupper=3Dyes}
| ac_cv_func_isxdigit=3D${ac_cv_func_isxdigit=3Dyes}
| ac_cv_func_kill=3D${ac_cv_func_kill=3Dyes}
| ac_cv_func_killpg=3D${ac_cv_func_killpg=3Dyes}
| ac_cv_func_lchown=3D${ac_cv_func_lchown=3Dyes}
| ac_cv_func_lckpwdf=3D${ac_cv_func_lckpwdf=3Dyes}
| ac_cv_func_lgetxattr=3D${ac_cv_func_lgetxattr=3Dyes}
| ac_cv_func_link=3D${ac_cv_func_link=3Dyes}
| ac_cv_func_listxattr=3D${ac_cv_func_listxattr=3Dyes}
| ac_cv_func_llistxattr=3D${ac_cv_func_llistxattr=3Dyes}
| ac_cv_func_localtime=3D${ac_cv_func_localtime=3Dyes}
| ac_cv_func_localtime_r=3D${ac_cv_func_localtime_r=3Dyes}
| ac_cv_func_lockf=3D${ac_cv_func_lockf=3Dyes}
| ac_cv_func_lrand48=3D${ac_cv_func_lrand48=3Dyes}
| ac_cv_func_lsearch=3D${ac_cv_func_lsearch=3Dyes}
| ac_cv_func_lseek64=3D${ac_cv_func_lseek64=3Dyes}
| ac_cv_func_lsetxattr=3D${ac_cv_func_lsetxattr=3Dyes}
| ac_cv_func_lstat=3D${ac_cv_func_lstat=3Dyes}
| ac_cv_func_mallinfo=3D${ac_cv_func_mallinfo=3Dyes}
| ac_cv_func_malloc=3D${ac_cv_func_malloc=3Dyes}
| ac_cv_func_mblen=3D${ac_cv_func_mblen=3Dyes}
| ac_cv_func_mbrlen=3D${ac_cv_func_mbrlen=3Dyes}
| ac_cv_func_mbrtowc=3D${ac_cv_func_mbrtowc=3Dyes}
| ac_cv_func_mbsinit=3D${ac_cv_func_mbsinit=3Dyes}
| ac_cv_func_mbsrtowcs=3D${ac_cv_func_mbsrtowcs=3Dyes}
| ac_cv_func_mbtowc=3D${ac_cv_func_mbtowc=3Dyes}
| ac_cv_func_memalign=3D${ac_cv_func_memalign=3Dyes}
| ac_cv_func_memchr=3D${ac_cv_func_memchr=3Dyes}
| ac_cv_func_memcmp=3D${ac_cv_func_memcmp=3Dyes}
| ac_cv_func_memcpy=3D${ac_cv_func_memcpy=3Dyes}
| ac_cv_func_memmove=3D${ac_cv_func_memmove=3Dyes}
| ac_cv_func_mempcpy=3D${ac_cv_func_mempcpy=3Dyes}
| ac_cv_func_memrchr=3D${ac_cv_func_memrchr=3Dyes}
| ac_cv_func_memset=3D${ac_cv_func_memset=3Dyes}
| ac_cv_func_mkdir=3D${ac_cv_func_mkdir=3Dyes}
| ac_cv_func_mkdirat=3D${ac_cv_func_mkdirat=3Dyes}
| ac_cv_func_mkdtemp=3D${ac_cv_func_mkdtemp=3Dyes}
| ac_cv_func_mkfifo=3D${ac_cv_func_mkfifo=3Dyes}
| ac_cv_func_mknod=3D${ac_cv_func_mknod=3Dyes}
| ac_cv_func_mkstemp64=3D${ac_cv_func_mkstemp64=3Dyes}
| ac_cv_func_mkstemp=3D${ac_cv_func_mkstemp=3Dyes}
| ac_cv_func_mktime=3D${ac_cv_func_mktime=3Dyes}
| ac_cv_func_mlock=3D${ac_cv_func_mlock=3Dyes}
| ac_cv_func_mmap=3D${ac_cv_func_mmap=3Dyes}
| ac_cv_func_mtrace=3D${ac_cv_func_mtrace=3Dyes}
| ac_cv_func_munlock=3D${ac_cv_func_munlock=3Dyes}
| ac_cv_func_munmap=3D${ac_cv_func_munmap=3Dyes}
| ac_cv_func_nanosleep=3D${ac_cv_func_nanosleep=3Dyes}
| ac_cv_func_nice=3D${ac_cv_func_nice=3Dyes}
| ac_cv_func_nl_langinfo=3D${ac_cv_func_nl_langinfo=3Dyes}
| ac_cv_func_ntp_adjtime=3D${ac_cv_func_ntp_adjtime=3Dyes}
| ac_cv_func_ntp_gettime=3D${ac_cv_func_ntp_gettime=3Dyes}
| ac_cv_func_on_exit=3D${ac_cv_func_on_exit=3Dyes}
| ac_cv_func_open64=3D${ac_cv_func_open64=3Dyes}
| ac_cv_func_open=3D${ac_cv_func_open=3Dyes}
| ac_cv_func_openat=3D${ac_cv_func_openat=3Dyes}
| ac_cv_func_opendir=3D${ac_cv_func_opendir=3Dyes}
| ac_cv_func_openlog=3D${ac_cv_func_openlog=3Dyes}
| ac_cv_func_pathconf=3D${ac_cv_func_pathconf=3Dyes}
| ac_cv_func_pipe=3D${ac_cv_func_pipe=3Dyes}
| ac_cv_func_poll=3D${ac_cv_func_poll=3Dyes}
| ac_cv_func_popen=3D${ac_cv_func_popen=3Dyes}
| ac_cv_func_posix_memalign=3D${ac_cv_func_posix_memalign=3Dyes}
| ac_cv_func_prctl=3D${ac_cv_func_prctl=3Dyes}
| ac_cv_func_pread=3D${ac_cv_func_pread=3Dyes}
| ac_cv_func_printf=3D${ac_cv_func_printf=3Dyes}
| ac_cv_func_pselect=3D${ac_cv_func_pselect=3Dyes}
| ac_cv_func_pthread_mutex_lock=3D${ac_cv_func_pthread_mutex_lock=3Dyes}
| ac_cv_func_ptsname=3D${ac_cv_func_ptsname=3Dyes}
| ac_cv_func_putenv=3D${ac_cv_func_putenv=3Dyes}
| ac_cv_func_putgrent=3D${ac_cv_func_putgrent=3Dyes}
| ac_cv_func_putpwent=3D${ac_cv_func_putpwent=3Dyes}
| ac_cv_func_putspent=3D${ac_cv_func_putspent=3Dyes}
| ac_cv_func_pututline=3D${ac_cv_func_pututline=3Dyes}
| ac_cv_func_pututxline=3D${ac_cv_func_pututxline=3Dyes}
| ac_cv_func_putwc=3D${ac_cv_func_putwc=3Dyes}
| ac_cv_func_pwrite=3D${ac_cv_func_pwrite=3Dyes}
| ac_cv_func_qsort=3D${ac_cv_func_qsort=3Dyes}
| ac_cv_func_raise=3D${ac_cv_func_raise=3Dyes}
| ac_cv_func_rand=3D${ac_cv_func_rand=3Dyes}
| ac_cv_func_rand_r=3D${ac_cv_func_rand_r=3Dyes}
| ac_cv_func_random=3D${ac_cv_func_random=3Dyes}
| ac_cv_func_re_comp=3D${ac_cv_func_re_comp=3Dyes}
| ac_cv_func_re_exec=3D${ac_cv_func_re_exec=3Dyes}
| ac_cv_func_re_search=3D${ac_cv_func_re_search=3Dyes}
| ac_cv_func_read=3D${ac_cv_func_read=3Dyes}
| ac_cv_func_readdir=3D${ac_cv_func_readdir=3Dyes}
| ac_cv_func_readdir_r=3D${ac_cv_func_readdir_r=3Dyes}
| ac_cv_func_readlink=3D${ac_cv_func_readlink=3Dyes}
| ac_cv_func_realloc=3D${ac_cv_func_realloc=3Dyes}
| ac_cv_func_realpath=3D${ac_cv_func_realpath=3Dyes}
| ac_cv_func_recvmsg=3D${ac_cv_func_recvmsg=3Dyes}
| ac_cv_func_regcomp=3D${ac_cv_func_regcomp=3Dyes}
| ac_cv_func_regexec=3D${ac_cv_func_regexec=3Dyes}
| ac_cv_func_remove=3D${ac_cv_func_remove=3Dyes}
| ac_cv_func_rename=3D${ac_cv_func_rename=3Dyes}
| ac_cv_func_rmdir=3D${ac_cv_func_rmdir=3Dyes}
| ac_cv_func_rpmatch=3D${ac_cv_func_rpmatch=3Dyes}
| ac_cv_func_rresvport_af=3D${ac_cv_func_rresvport_af=3Dyes}
| ac_cv_func_ruserok=3D${ac_cv_func_ruserok=3Dyes}
| ac_cv_func_ruserok_af=3D${ac_cv_func_ruserok_af=3Dyes}
| ac_cv_func_sbrk=3D${ac_cv_func_sbrk=3Dyes}
| ac_cv_func_scandir=3D${ac_cv_func_scandir=3Dyes}
| ac_cv_func_sched_setscheduler=3D${ac_cv_func_sched_setscheduler=3Dyes}
| ac_cv_func_sched_yield=3D${ac_cv_func_sched_yield=3Dyes}
| ac_cv_func_select=3D${ac_cv_func_select=3Dyes}
| ac_cv_func_semctl=3D${ac_cv_func_semctl=3Dyes}
| ac_cv_func_semget=3D${ac_cv_func_semget=3Dyes}
| ac_cv_func_sendmsg=3D${ac_cv_func_sendmsg=3Dyes}
| ac_cv_func_setbuf=3D${ac_cv_func_setbuf=3Dyes}
| ac_cv_func_setbuffer=3D${ac_cv_func_setbuffer=3Dyes}
| ac_cv_func_setegid=3D${ac_cv_func_setegid=3Dyes}
| ac_cv_func_setenv=3D${ac_cv_func_setenv=3Dyes}
| ac_cv_func_seteuid=3D${ac_cv_func_seteuid=3Dyes}
| ac_cv_func_setgid=3D${ac_cv_func_setgid=3Dyes}
| ac_cv_func_setgroups=3D${ac_cv_func_setgroups=3Dyes}
| ac_cv_func_sethostname=3D${ac_cv_func_sethostname=3Dyes}
| ac_cv_func_setitimer=3D${ac_cv_func_setitimer=3Dyes}
| ac_cv_func_setjmp=3D${ac_cv_func_setjmp=3Dyes}
| ac_cv_func_setlinebuf=3D${ac_cv_func_setlinebuf=3Dyes}
| ac_cv_func_setlocale=3D${ac_cv_func_setlocale=3Dyes}
| ac_cv_func_setmntent=3D${ac_cv_func_setmntent=3Dyes}
| ac_cv_func_setpgid=3D${ac_cv_func_setpgid=3Dyes}
| ac_cv_func_setpgrp=3D${ac_cv_func_setpgrp=3Dyes}
| ac_cv_func_setpriority=3D${ac_cv_func_setpriority=3Dyes}
| ac_cv_func_setregid=3D${ac_cv_func_setregid=3Dyes}
| ac_cv_func_setresgid=3D${ac_cv_func_setresgid=3Dyes}
| ac_cv_func_setresuid=3D${ac_cv_func_setresuid=3Dyes}
| ac_cv_func_setreuid=3D${ac_cv_func_setreuid=3Dyes}
| ac_cv_func_setrlimit=3D${ac_cv_func_setrlimit=3Dyes}
| ac_cv_func_setsid=3D${ac_cv_func_setsid=3Dyes}
| ac_cv_func_setsockopt=3D${ac_cv_func_setsockopt=3Dyes}
| ac_cv_func_settimeofday=3D${ac_cv_func_settimeofday=3Dyes}
| ac_cv_func_setuid=3D${ac_cv_func_setuid=3Dyes}
| ac_cv_func_setutent=3D${ac_cv_func_setutent=3Dyes}
| ac_cv_func_setutxent=3D${ac_cv_func_setutxent=3Dyes}
| ac_cv_func_setvbuf=3D${ac_cv_func_setvbuf=3Dyes}
| ac_cv_func_setxattr=3D${ac_cv_func_setxattr=3Dyes}
| ac_cv_func_sgetspent=3D${ac_cv_func_sgetspent=3Dyes}
| ac_cv_func_shmat=3D${ac_cv_func_shmat=3Dyes}
| ac_cv_func_shmctl=3D${ac_cv_func_shmctl=3Dyes}
| ac_cv_func_shmdt=3D${ac_cv_func_shmdt=3Dyes}
| ac_cv_func_shmget=3D${ac_cv_func_shmget=3Dyes}
| ac_cv_func_shutdown=3D${ac_cv_func_shutdown=3Dyes}
| ac_cv_func_sigaction=3D${ac_cv_func_sigaction=3Dyes}
| ac_cv_func_sigaddset=3D${ac_cv_func_sigaddset=3Dyes}
| ac_cv_func_sigaltstack=3D${ac_cv_func_sigaltstack=3Dyes}
| ac_cv_func_sigblock=3D${ac_cv_func_sigblock=3Dyes}
| ac_cv_func_sigemptyset=3D${ac_cv_func_sigemptyset=3Dyes}
| ac_cv_func_sighold=3D${ac_cv_func_sighold=3Dyes}
| ac_cv_func_siginterrupt=3D${ac_cv_func_siginterrupt=3Dyes}
| ac_cv_func_signal=3D${ac_cv_func_signal=3Dyes}
| ac_cv_func_sigprocmask=3D${ac_cv_func_sigprocmask=3Dyes}
| ac_cv_func_sigset=3D${ac_cv_func_sigset=3Dyes}
| ac_cv_func_sigsetmask=3D${ac_cv_func_sigsetmask=3Dyes}
| ac_cv_func_sigstack=3D${ac_cv_func_sigstack=3Dyes}
| ac_cv_func_sigsuspend=3D${ac_cv_func_sigsuspend=3Dyes}
| ac_cv_func_sigvec=3D${ac_cv_func_sigvec=3Dyes}
| ac_cv_func_snprintf=3D${ac_cv_func_snprintf=3Dyes}
| ac_cv_func_socket=3D${ac_cv_func_socket=3Dyes}
| ac_cv_func_socketpair=3D${ac_cv_func_socketpair=3Dyes}
| ac_cv_func_sprintf=3D${ac_cv_func_sprintf=3Dyes}
| ac_cv_func_srand48=3D${ac_cv_func_srand48=3Dyes}
| ac_cv_func_srand=3D${ac_cv_func_srand=3Dyes}
| ac_cv_func_srandom=3D${ac_cv_func_srandom=3Dyes}
| ac_cv_func_sscanf=3D${ac_cv_func_sscanf=3Dyes}
| ac_cv_func_stat=3D${ac_cv_func_stat=3Dyes}
| ac_cv_func_statfs=3D${ac_cv_func_statfs=3Dyes}
| ac_cv_func_statvfs=3D${ac_cv_func_statvfs=3Dyes}
| ac_cv_func_stime=3D${ac_cv_func_stime=3Dyes}
| ac_cv_func_stpcpy=3D${ac_cv_func_stpcpy=3Dyes}
| ac_cv_func_strcasecmp=3D${ac_cv_func_strcasecmp=3Dyes}
| ac_cv_func_strcasestr=3D${ac_cv_func_strcasestr=3Dyes}
| ac_cv_func_strchr=3D${ac_cv_func_strchr=3Dyes}
| ac_cv_func_strchrnul=3D${ac_cv_func_strchrnul=3Dyes}
| ac_cv_func_strcmp=3D${ac_cv_func_strcmp=3Dyes}
| ac_cv_func_strcspn=3D${ac_cv_func_strcspn=3Dyes}
| ac_cv_func_strdup=3D${ac_cv_func_strdup=3Dyes}
| ac_cv_func_strerror=3D${ac_cv_func_strerror=3Dyes}
| ac_cv_func_strerror_r=3D${ac_cv_func_strerror_r=3Dyes}
| ac_cv_func_strftime=3D${ac_cv_func_strftime=3Dyes}
| ac_cv_func_strlen=3D${ac_cv_func_strlen=3Dyes}
| ac_cv_func_strncasecmp=3D${ac_cv_func_strncasecmp=3Dyes}
| ac_cv_func_strncmp=3D${ac_cv_func_strncmp=3Dyes}
| ac_cv_func_strndup=3D${ac_cv_func_strndup=3Dyes}
| ac_cv_func_strnlen=3D${ac_cv_func_strnlen=3Dyes}
| ac_cv_func_strpbrk=3D${ac_cv_func_strpbrk=3Dyes}
| ac_cv_func_strptime=3D${ac_cv_func_strptime=3Dyes}
| ac_cv_func_strrchr=3D${ac_cv_func_strrchr=3Dyes}
| ac_cv_func_strsep=3D${ac_cv_func_strsep=3Dyes}
| ac_cv_func_strsignal=3D${ac_cv_func_strsignal=3Dyes}
| ac_cv_func_strspn=3D${ac_cv_func_strspn=3Dyes}
| ac_cv_func_strstr=3D${ac_cv_func_strstr=3Dyes}
| ac_cv_func_strtod=3D${ac_cv_func_strtod=3Dyes}
| ac_cv_func_strtoimax=3D${ac_cv_func_strtoimax=3Dyes}
| ac_cv_func_strtok_r=3D${ac_cv_func_strtok_r=3Dyes}
| ac_cv_func_strtol=3D${ac_cv_func_strtol=3Dyes}
| ac_cv_func_strtoll=3D${ac_cv_func_strtoll=3Dyes}
| ac_cv_func_strtoul=3D${ac_cv_func_strtoul=3Dyes}
| ac_cv_func_strtoull=3D${ac_cv_func_strtoull=3Dyes}
| ac_cv_func_strtoumax=3D${ac_cv_func_strtoumax=3Dyes}
| ac_cv_func_strverscmp=3D${ac_cv_func_strverscmp=3Dyes}
| ac_cv_func_strxfrm=3D${ac_cv_func_strxfrm=3Dyes}
| ac_cv_func_symlink=3D${ac_cv_func_symlink=3Dyes}
| ac_cv_func_sync=3D${ac_cv_func_sync=3Dyes}
| ac_cv_func_sys_siglist=3D${ac_cv_func_sys_siglist=3Dyes}
| ac_cv_func_sysconf=3D${ac_cv_func_sysconf=3Dyes}
| ac_cv_func_sysctl=3D${ac_cv_func_sysctl=3Dyes}
| ac_cv_func_sysinfo=3D${ac_cv_func_sysinfo=3Dyes}
| ac_cv_func_syslog=3D${ac_cv_func_syslog=3Dyes}
| ac_cv_func_system=3D${ac_cv_func_system=3Dyes}
| ac_cv_func_tcgetattr=3D${ac_cv_func_tcgetattr=3Dyes}
| ac_cv_func_tcgetpgrp=3D${ac_cv_func_tcgetpgrp=3Dyes}
| ac_cv_func_tcsetattr=3D${ac_cv_func_tcsetattr=3Dyes}
| ac_cv_func_tcsetpgrp=3D${ac_cv_func_tcsetpgrp=3Dyes}
| ac_cv_func_time=3D${ac_cv_func_time=3Dyes}
| ac_cv_func_timegm=3D${ac_cv_func_timegm=3Dyes}
| ac_cv_func_times=3D${ac_cv_func_times=3Dyes}
| ac_cv_func_timezone=3D${ac_cv_func_timezone=3Dyes}
| ac_cv_func_tmpnam=3D${ac_cv_func_tmpnam=3Dyes}
| ac_cv_func_towlower=3D${ac_cv_func_towlower=3Dyes}
| ac_cv_func_towupper=3D${ac_cv_func_towupper=3Dyes}
| ac_cv_func_truncate=3D${ac_cv_func_truncate=3Dyes}
| ac_cv_func_tsearch=3D${ac_cv_func_tsearch=3Dyes}
| ac_cv_func_ttyname=3D${ac_cv_func_ttyname=3Dyes}
| ac_cv_func_tzset=3D${ac_cv_func_tzset=3Dyes}
| ac_cv_func_ulimit=3D${ac_cv_func_ulimit=3Dyes}
| ac_cv_func_umask=3D${ac_cv_func_umask=3Dyes}
| ac_cv_func_uname=3D${ac_cv_func_uname=3Dyes}
| ac_cv_func_unlink=3D${ac_cv_func_unlink=3Dyes}
| ac_cv_func_unsetenv=3D${ac_cv_func_unsetenv=3Dyes}
| ac_cv_func_unshare=3D${ac_cv_func_unshare=3Dyes}
| ac_cv_func_updwtmp=3D${ac_cv_func_updwtmp=3Dyes}
| ac_cv_func_updwtmpx=3D${ac_cv_func_updwtmpx=3Dyes}
| ac_cv_func_usleep=3D${ac_cv_func_usleep=3Dyes}
| ac_cv_func_ustat=3D${ac_cv_func_ustat=3Dyes}
| ac_cv_func_utime=3D${ac_cv_func_utime=3Dyes}
| ac_cv_func_utimes=3D${ac_cv_func_utimes=3Dyes}
| ac_cv_func_utmpname=3D${ac_cv_func_utmpname=3Dyes}
| ac_cv_func_utmpxname=3D${ac_cv_func_utmpxname=3Dyes}
| ac_cv_func_valloc=3D${ac_cv_func_valloc=3Dyes}
| ac_cv_func_vasprintf=3D${ac_cv_func_vasprintf=3Dyes}
| ac_cv_func_verrx=3D${ac_cv_func_verrx=3Dyes}
| ac_cv_func_vfork=3D${ac_cv_func_vfork=3Dyes}
| ac_cv_func_vfprintf=3D${ac_cv_func_vfprintf=3Dyes}
| ac_cv_func_vfscanf=3D${ac_cv_func_vfscanf=3Dyes}
| ac_cv_func_vhangup=3D${ac_cv_func_vhangup=3Dyes}
| ac_cv_func_vprintf=3D${ac_cv_func_vprintf=3Dyes}
| ac_cv_func_vsnprintf=3D${ac_cv_func_vsnprintf=3Dyes}
| ac_cv_func_vsprintf=3D${ac_cv_func_vsprintf=3Dyes}
| ac_cv_func_wait3=3D${ac_cv_func_wait3=3Dyes}
| ac_cv_func_wait4=3D${ac_cv_func_wait4=3Dyes}
| ac_cv_func_waitpid=3D${ac_cv_func_waitpid=3Dyes}
| ac_cv_func_wcrtomb=3D${ac_cv_func_wcrtomb=3Dyes}
| ac_cv_func_wcscoll=3D${ac_cv_func_wcscoll=3Dyes}
| ac_cv_func_wcsdup=3D${ac_cv_func_wcsdup=3Dyes}
| ac_cv_func_wcslen=3D${ac_cv_func_wcslen=3Dyes}
| ac_cv_func_wctob=3D${ac_cv_func_wctob=3Dyes}
| ac_cv_func_wctomb=3D${ac_cv_func_wctomb=3Dyes}
| ac_cv_func_wctype=3D${ac_cv_func_wctype=3Dyes}
| ac_cv_func_wcwidth=3D${ac_cv_func_wcwidth=3Dyes}
| ac_cv_func_wmemchr=3D${ac_cv_func_wmemchr=3Dyes}
| ac_cv_func_wmemcpy=3D${ac_cv_func_wmemcpy=3Dyes}
| ac_cv_func_wmempcpy=3D${ac_cv_func_wmempcpy=3Dyes}
| ac_cv_header_aio_h=3D${ac_cv_header_aio_h=3Dyes}
| ac_cv_header_alloca_h=3D${ac_cv_header_alloca_h=3Dyes}
| ac_cv_header_argz_h=3D${ac_cv_header_argz_h=3Dyes}
| ac_cv_header_arpa_inet_h=3D${ac_cv_header_arpa_inet_h=3Dyes}
| ac_cv_header_arpa_nameser_h=3D${ac_cv_header_arpa_nameser_h=3Dyes}
| ac_cv_header_asm_byteorder_h=3D${ac_cv_header_asm_byteorder_h=3Dyes}
| ac_cv_header_asm_ioctls_h=3D${ac_cv_header_asm_ioctls_h=3Dyes}
| ac_cv_header_asm_page_h=3D${ac_cv_header_asm_page_h=3Dno}
| ac_cv_header_asm_types_h=3D${ac_cv_header_asm_types_h=3Dyes}
| ac_cv_header_assert_h=3D${ac_cv_header_assert_h=3Dyes}
| ac_cv_header_byteswap_h=3D${ac_cv_header_byteswap_h=3Dyes}
| ac_cv_header_crypt_h=3D${ac_cv_header_crypt_h=3Dyes}
| ac_cv_header_ctype_h=3D${ac_cv_header_ctype_h=3Dyes}
| ac_cv_header_dirent_h=3D${ac_cv_header_dirent_h=3Dyes}
| ac_cv_header_dlfcn_h=3D${ac_cv_header_dlfcn_h=3Dyes}
| ac_cv_header_elf_h=3D${ac_cv_header_elf_h=3Dyes}
| ac_cv_header_endian_h=3D${ac_cv_header_endian_h=3Dyes}
| ac_cv_header_err_h=3D${ac_cv_header_err_h=3Dyes}
| ac_cv_header_errno_h=3D${ac_cv_header_errno_h=3Dyes}
| ac_cv_header_execinfo_h=3D${ac_cv_header_execinfo_h=3Dyes}
| ac_cv_header_fcntl_h=3D${ac_cv_header_fcntl_h=3Dyes}
| ac_cv_header_features_h=3D${ac_cv_header_features_h=3Dyes}
| ac_cv_header_float_h=3D${ac_cv_header_float_h=3Dyes}
| ac_cv_header_fstab_h=3D${ac_cv_header_fstab_h=3Dyes}
| ac_cv_header_ftw_h=3D${ac_cv_header_ftw_h=3Dyes}
| ac_cv_header_getopt_h=3D${ac_cv_header_getopt_h=3Dyes}
| ac_cv_header_glob_h=3D${ac_cv_header_glob_h=3Dyes}
| ac_cv_header_grp_h=3D${ac_cv_header_grp_h=3Dyes}
| ac_cv_header_iconv_h=3D${ac_cv_header_iconv_h=3Dyes}
| ac_cv_header_ifaddrs_h=3D${ac_cv_header_ifaddrs_h=3Dyes}
| ac_cv_header_inttypes_h=3D${ac_cv_header_inttypes_h=3Dyes}
| ac_cv_header_langinfo_h=3D${ac_cv_header_langinfo_h=3Dyes}
| ac_cv_header_lastlog_h=3D${ac_cv_header_lastlog_h=3Dyes}
| ac_cv_header_libgen_h=3D${ac_cv_header_libgen_h=3Dyes}
| ac_cv_header_libintl_h=3D${ac_cv_header_libintl_h=3Dyes}
| ac_cv_header_limits_h=3D${ac_cv_header_limits_h=3Dyes}
| ac_cv_header_linux_capability_h=3D${ac_cv_header_linux_capability_h=3Dyes=
}
| ac_cv_header_linux_fd_h=3D${ac_cv_header_linux_fd_h=3Dyes}
| ac_cv_header_linux_fs_h=3D${ac_cv_header_linux_fs_h=3Dyes}
| ac_cv_header_linux_hayesesp_h=3D${ac_cv_header_linux_hayesesp_h=3Dno}
| ac_cv_header_linux_hdreg_h=3D${ac_cv_header_linux_hdreg_h=3Dyes}
| ac_cv_header_linux_icmp_h=3D${ac_cv_header_linux_icmp_h=3Dyes}
| ac_cv_header_linux_in6_h=3D${ac_cv_header_linux_in6_h=3Dyes}
| ac_cv_header_linux_joystick_h=3D${ac_cv_header_linux_joystick_h=3Dyes}
| ac_cv_header_linux_ptrace_h=3D${ac_cv_header_linux_ptrace_h=3Dyes}
| ac_cv_header_linux_serial_h=3D${ac_cv_header_linux_serial_h=3Dyes}
| ac_cv_header_linux_sonypi_h=3D${ac_cv_header_linux_sonypi_h=3Dyes}
| ac_cv_header_linux_unistd_h=3D${ac_cv_header_linux_unistd_h=3Dyes}
| ac_cv_header_linux_utsname_h=3D${ac_cv_header_linux_utsname_h=3Dyes}
| ac_cv_header_linux_version_h=3D${ac_cv_header_linux_version_h=3Dyes}
| ac_cv_header_locale_h=3D${ac_cv_header_locale_h=3Dyes}
| ac_cv_header_malloc_h=3D${ac_cv_header_malloc_h=3Dyes}
| ac_cv_header_math_h=3D${ac_cv_header_math_h=3Dyes}
| ac_cv_header_mcheck_h=3D${ac_cv_header_mcheck_h=3Dyes}
| ac_cv_header_memory_h=3D${ac_cv_header_memory_h=3Dyes}
| ac_cv_header_mntent_h=3D${ac_cv_header_mntent_h=3Dyes}
| ac_cv_header_mqueue_h=3D${ac_cv_header_mqueue_h=3Dyes}
| ac_cv_header_net_if_h=3D${ac_cv_header_net_if_h=3Dyes}
| ac_cv_header_net_route_h=3D${ac_cv_header_net_route_h=3Dyes}
| ac_cv_header_netdb_h=3D${ac_cv_header_netdb_h=3Dyes}
| ac_cv_header_netinet_ether_h=3D${ac_cv_header_netinet_ether_h=3Dyes}
| ac_cv_header_netinet_in_h=3D${ac_cv_header_netinet_in_h=3Dyes}
| ac_cv_header_netinet_ip6_h=3D${ac_cv_header_netinet_ip6_h=3Dyes}
| ac_cv_header_netinet_ip_h=3D${ac_cv_header_netinet_ip_h=3Dyes}
| ac_cv_header_netinet_tcp_h=3D${ac_cv_header_netinet_tcp_h=3Dyes}
| ac_cv_header_netinet_udp_h=3D${ac_cv_header_netinet_udp_h=3Dyes}
| ac_cv_header_netipx_ipx_h=3D${ac_cv_header_netipx_ipx_h=3Dyes}
| ac_cv_header_paths_h=3D${ac_cv_header_paths_h=3Dyes}
| ac_cv_header_poll_h=3D${ac_cv_header_poll_h=3Dyes}
| ac_cv_header_pthread_h=3D${ac_cv_header_pthread_h=3Dyes}
| ac_cv_header_pty_h=3D${ac_cv_header_pty_h=3Dyes}
| ac_cv_header_pwd_h=3D${ac_cv_header_pwd_h=3Dyes}
| ac_cv_header_regex_h=3D${ac_cv_header_regex_h=3Dyes}
| ac_cv_header_resolv_h=3D${ac_cv_header_resolv_h=3Dyes}
| ac_cv_header_rpc_rpc_h=3D${ac_cv_header_rpc_rpc_h=3Dyes}
| ac_cv_header_rpc_types_h=3D${ac_cv_header_rpc_types_h=3Dyes}
| ac_cv_header_sched_h=3D${ac_cv_header_sched_h=3Dyes}
| ac_cv_header_scsi_scsi_h=3D${ac_cv_header_scsi_scsi_h=3Dyes}
| ac_cv_header_search_h=3D${ac_cv_header_search_h=3Dyes}
| ac_cv_header_semaphore_h=3D${ac_cv_header_semaphore_h=3Dyes}
| ac_cv_header_setjmp_h=3D${ac_cv_header_setjmp_h=3Dyes}
| ac_cv_header_sgtty_h=3D${ac_cv_header_sgtty_h=3Dyes}
| ac_cv_header_shadow_h=3D${ac_cv_header_shadow_h=3Dyes}
| ac_cv_header_signal_h=3D${ac_cv_header_signal_h=3Dyes}
| ac_cv_header_stdarg_h=3D${ac_cv_header_stdarg_h=3Dyes}
| ac_cv_header_stdbool_h=3D${ac_cv_header_stdbool_h=3Dyes}
| ac_cv_header_stdc=3D${ac_cv_header_stdc=3Dyes}
| ac_cv_header_stddef_h=3D${ac_cv_header_stddef_h=3Dyes}
| ac_cv_header_stdint_h=3D${ac_cv_header_stdint_h=3Dyes}
| ac_cv_header_stdio_h=3D${ac_cv_header_stdio_h=3Dyes}
| ac_cv_header_stdlib_h=3D${ac_cv_header_stdlib_h=3Dyes}
| ac_cv_header_string_h=3D${ac_cv_header_string_h=3Dyes}
| ac_cv_header_strings_h=3D${ac_cv_header_strings_h=3Dyes}
| ac_cv_header_stropts_h=3D${ac_cv_header_stropts_h=3Dyes}
| ac_cv_header_sys_bitypes_h=3D${ac_cv_header_sys_bitypes_h=3Dyes}
| ac_cv_header_sys_cdefs_h=3D${ac_cv_header_sys_cdefs_h=3Dyes}
| ac_cv_header_sys_dir_h=3D${ac_cv_header_sys_dir_h=3Dyes}
| ac_cv_header_sys_epoll_h=3D${ac_cv_header_sys_epoll_h=3Dyes}
| ac_cv_header_sys_fcntl_h=3D${ac_cv_header_sys_fcntl_h=3Dyes}
| ac_cv_header_sys_file_h=3D${ac_cv_header_sys_file_h=3Dyes}
| ac_cv_header_sys_fsuid_h=3D${ac_cv_header_sys_fsuid_h=3Dyes}
| ac_cv_header_sys_ioctl_h=3D${ac_cv_header_sys_ioctl_h=3Dyes}
| ac_cv_header_sys_ipc_h=3D${ac_cv_header_sys_ipc_h=3Dyes}
| ac_cv_header_sys_mman_h=3D${ac_cv_header_sys_mman_h=3Dyes}
| ac_cv_header_sys_mount_h=3D${ac_cv_header_sys_mount_h=3Dyes}
| ac_cv_header_sys_mtio_h=3D${ac_cv_header_sys_mtio_h=3Dyes}
| ac_cv_header_sys_param_h=3D${ac_cv_header_sys_param_h=3Dyes}
| ac_cv_header_sys_poll_h=3D${ac_cv_header_sys_poll_h=3Dyes}
| ac_cv_header_sys_prctl_h=3D${ac_cv_header_sys_prctl_h=3Dyes}
| ac_cv_header_sys_ptrace_h=3D${ac_cv_header_sys_ptrace_h=3Dyes}
| ac_cv_header_sys_queue_h=3D${ac_cv_header_sys_queue_h=3Dyes}
| ac_cv_header_sys_reg_h=3D${ac_cv_header_sys_reg_h=3Dno}
| ac_cv_header_sys_resource_h=3D${ac_cv_header_sys_resource_h=3Dyes}
| ac_cv_header_sys_select_h=3D${ac_cv_header_sys_select_h=3Dyes}
| ac_cv_header_sys_sem_h=3D${ac_cv_header_sys_sem_h=3Dyes}
| ac_cv_header_sys_shm_h=3D${ac_cv_header_sys_shm_h=3Dyes}
| ac_cv_header_sys_signal_h=3D${ac_cv_header_sys_signal_h=3Dyes}
| ac_cv_header_sys_socket_h=3D${ac_cv_header_sys_socket_h=3Dyes}
| ac_cv_header_sys_socketvar_h=3D${ac_cv_header_sys_socketvar_h=3Dyes}
| ac_cv_header_sys_soundcard_h=3D${ac_cv_header_sys_soundcard_h=3Dyes}
| ac_cv_header_sys_stat_h=3D${ac_cv_header_sys_stat_h=3Dyes}
| ac_cv_header_sys_statfs_h=3D${ac_cv_header_sys_statfs_h=3Dyes}
| ac_cv_header_sys_statvfs_h=3D${ac_cv_header_sys_statvfs_h=3Dyes}
| ac_cv_header_sys_stropts_h=3D${ac_cv_header_sys_stropts_h=3Dyes}
| ac_cv_header_sys_swap_h=3D${ac_cv_header_sys_swap_h=3Dyes}
| ac_cv_header_sys_sysctl_h=3D${ac_cv_header_sys_sysctl_h=3Dyes}
| ac_cv_header_sys_sysinfo_h=3D${ac_cv_header_sys_sysinfo_h=3Dyes}
| ac_cv_header_sys_sysmacros_h=3D${ac_cv_header_sys_sysmacros_h=3Dyes}
| ac_cv_header_sys_termios_h=3D${ac_cv_header_sys_termios_h=3Dyes}
| ac_cv_header_sys_time_h=3D${ac_cv_header_sys_time_h=3Dyes}
| ac_cv_header_sys_timeb_h=3D${ac_cv_header_sys_timeb_h=3Dyes}
| ac_cv_header_sys_times_h=3D${ac_cv_header_sys_times_h=3Dyes}
| ac_cv_header_sys_timex_h=3D${ac_cv_header_sys_timex_h=3Dyes}
| ac_cv_header_sys_types_h=3D${ac_cv_header_sys_types_h=3Dyes}
| ac_cv_header_sys_uio_h=3D${ac_cv_header_sys_uio_h=3Dyes}
| ac_cv_header_sys_un_h=3D${ac_cv_header_sys_un_h=3Dyes}
| ac_cv_header_sys_unistd_h=3D${ac_cv_header_sys_unistd_h=3Dyes}
| ac_cv_header_sys_user_h=3D${ac_cv_header_sys_user_h=3Dyes}
| ac_cv_header_sys_utsname_h=3D${ac_cv_header_sys_utsname_h=3Dyes}
| ac_cv_header_sys_vfs_h=3D${ac_cv_header_sys_vfs_h=3Dyes}
| ac_cv_header_sys_wait_h=3D${ac_cv_header_sys_wait_h=3Dyes}
| ac_cv_header_sysexits_h=3D${ac_cv_header_sysexits_h=3Dyes}
| ac_cv_header_syslog_h=3D${ac_cv_header_syslog_h=3Dyes}
| ac_cv_header_termio_h=3D${ac_cv_header_termio_h=3Dyes}
| ac_cv_header_termios_h=3D${ac_cv_header_termios_h=3Dyes}
| ac_cv_header_time_h=3D${ac_cv_header_time_h=3Dyes}
| ac_cv_header_ttyent_h=3D${ac_cv_header_ttyent_h=3Dyes}
| ac_cv_header_ulimit_h=3D${ac_cv_header_ulimit_h=3Dyes}
| ac_cv_header_unistd_h=3D${ac_cv_header_unistd_h=3Dyes}
| ac_cv_header_ustat_h=3D${ac_cv_header_ustat_h=3Dyes}
| ac_cv_header_utime_h=3D${ac_cv_header_utime_h=3Dyes}
| ac_cv_header_utmp_h=3D${ac_cv_header_utmp_h=3Dyes}
| ac_cv_header_utmpx_h=3D${ac_cv_header_utmpx_h=3Dyes}
| ac_cv_header_values_h=3D${ac_cv_header_values_h=3Dyes}
| ac_cv_header_wchar_h=3D${ac_cv_header_wchar_h=3Dyes}
| ac_cv_header_wctype_h=3D${ac_cv_header_wctype_h=3Dyes}
| ac_cv_sizeof_char=3D${ac_cv_sizeof_char=3D1}
| ac_cv_sizeof_char_p=3D${ac_cv_sizeof_char_p=3D4}
| ac_cv_sizeof_double=3D${ac_cv_sizeof_double=3D8}
| ac_cv_sizeof_float=3D${ac_cv_sizeof_float=3D4}
| ac_cv_sizeof_int=3D${ac_cv_sizeof_int=3D4}
| ac_cv_sizeof_long=3D${ac_cv_sizeof_long=3D4}
| ac_cv_sizeof_long_double=3D${ac_cv_sizeof_long_double=3D8}
| ac_cv_sizeof_long_int=3D${ac_cv_sizeof_long_int=3D4}
| ac_cv_sizeof_long_long=3D${ac_cv_sizeof_long_long=3D8}
| ac_cv_sizeof_long_long_int=3D${ac_cv_sizeof_long_long_int=3D8}
| ac_cv_sizeof_short=3D${ac_cv_sizeof_short=3D2}
| ac_cv_sizeof_short_int=3D${ac_cv_sizeof_short_int=3D2}
| ac_cv_sizeof_signed_char=3D${ac_cv_sizeof_signed_char=3D1}
| ac_cv_sizeof_unsigned_char=3D${ac_cv_sizeof_unsigned_char=3D1}
| ac_cv_sizeof_unsigned_int=3D${ac_cv_sizeof_unsigned_int=3D4}
| ac_cv_sizeof_unsigned_long=3D${ac_cv_sizeof_unsigned_long=3D4}
| ac_cv_sizeof_unsigned_long_int=3D${ac_cv_sizeof_unsigned_long_int=3D4}
| ac_cv_sizeof_unsigned_long_long_int=3D${ac_cv_sizeof_unsigned_long_long_i=
nt=3D8}
| ac_cv_sizeof_unsigned_short=3D${ac_cv_sizeof_unsigned_short=3D2}
| ac_cv_sizeof_unsigned_short_int=3D${ac_cv_sizeof_unsigned_short_int=3D2}
| ac_cv_sizeof_void_p=3D${ac_cv_sizeof_void_p=3D4}
configure:2208: checking for a BSD-compatible install
configure:2276: result: /usr/bin/install -c
configure:2287: checking whether build environment is sane
configure:2342: result: yes
configure:2401: checking for arm-poky-linux-gnueabi-strip
configure:2428: result: arm-poky-linux-gnueabi-strip
configure:2493: checking for a thread-safe mkdir -p
configure:2532: result: /bin/mkdir -p
configure:2539: checking for gawk
configure:2555: found /usr/bin/gawk
configure:2566: result: gawk
configure:2577: checking whether make sets $(MAKE)
configure:2599: result: yes
configure:2702: checking for style of include used by make
configure:2730: result: GNU
configure:2761: checking for arm-poky-linux-gnueabi-gcc
configure:2788: result: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-=
interwork -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yoct=
o/rpi-build/tmp/sysroots/raspberrypi
configure:3057: checking for C compiler version
configure:3066: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi --version >&5
arm-poky-linux-gnueabi-gcc (GCC) 4.7.2
Copyright (C) 2012 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

configure:3077: $? =3D 0
configure:3066: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -v >&5
Using built-in specs.
COLLECT_GCC=3Darm-poky-linux-gnueabi-gcc
COLLECT_LTO_WRAPPER=3D/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroo=
ts/x86_64-linux/usr/libexec/armv6-vfp-poky-linux-gnueabi/gcc/arm-poky-linux=
-gnueabi/4.7.2/lto-wrapper
Target: arm-poky-linux-gnueabi
Configured with: /media/yocto/var_yocto/var_yocto/rpi-build/tmp/work-shared=
/gcc-4.7.2-r20/gcc-4.7.2/configure --build=3Dx86_64-linux --host=3Dx86_64-l=
inux --target=3Darm-poky-linux-gnueabi --prefix=3D/media/yocto/var_yocto/va=
r_yocto/rpi-build/tmp/sysroots/x86_64-linux/usr --exec_prefix=3D/media/yoct=
o/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/usr --bindir=3D/m=
edia/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/usr/bin/=
armv6-vfp-poky-linux-gnueabi --sbindir=3D/media/yocto/var_yocto/var_yocto/r=
pi-build/tmp/sysroots/x86_64-linux/usr/bin/armv6-vfp-poky-linux-gnueabi --l=
ibexecdir=3D/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-=
linux/usr/libexec/armv6-vfp-poky-linux-gnueabi --datadir=3D/media/yocto/var=
_yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/usr/share --sysconfdir=
=3D/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/etc=
 --sharedstatedir=3D/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots=
/x86_64-linux/com --localstatedir=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/x86_64-linux/var --libdir=3D/media/yocto/var_yocto/var_yoc=
to/rpi-build/tmp/sysroots/x86_64-linux/usr/lib/armv6-vfp-poky-linux-gnueabi=
 --includedir=3D/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86=
_64-linux/usr/include --oldincludedir=3D/media/yocto/var_yocto/var_yocto/rp=
i-build/tmp/sysroots/x86_64-linux/usr/include --infodir=3D/media/yocto/var_=
yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/usr/share/info --mandir=
=3D/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/usr=
/share/man --disable-silent-rules --disable-dependency-tracking --with-libt=
ool-sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_6=
4-linux --with-gnu-ld --enable-shared --enable-languages=3Dc,c++ --enable-t=
hreads=3Dposix --disable-multilib --enable-c99 --enable-long-long --enable-=
symvers=3Dgnu --enable-libstdcxx-pch --program-prefix=3Darm-poky-linux-gnue=
abi- --without-local-prefix --enable-target-optspace --enable-lto --enable-=
libssp --disable-bootstrap --disable-libmudflap --with-system-zlib --with-l=
inker-hash-style=3Dgnu --enable-linker-build-id --with-ppl=3Dno --with-cloo=
g=3Dno --enable-checking=3Drelease --enable-cheaders=3Dc_global --with-gxx-=
include-dir=3D/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/raspb=
errypi/usr/include/c++ --with-sysroot=3D/media/yocto/var_yocto/var_yocto/rp=
i-build/tmp/sysroots/raspberrypi --with-build-sysroot=3D/media/yocto/var_yo=
cto/var_yocto/rpi-build/tmp/sysroots/raspberrypi --enable-poison-system-dir=
ectories --disable-libunwind-exceptions --with-mpfr=3D/media/yocto/var_yoct=
o/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/usr --with-system-zlib --di=
sable-nls
Thread model: posix
gcc version 4.7.2 (GCC)=20
configure:3077: $? =3D 0
configure:3066: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -V >&5
arm-poky-linux-gnueabi-gcc: error: unrecognized command line option '-V'
arm-poky-linux-gnueabi-gcc: fatal error: no input files
compilation terminated.
configure:3077: $? =3D 1
configure:3066: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -qversion >&5
arm-poky-linux-gnueabi-gcc: error: unrecognized command line option '-qvers=
ion'
arm-poky-linux-gnueabi-gcc: fatal error: no input files
compilation terminated.
configure:3077: $? =3D 1
configure:3097: checking whether the C compiler works
configure:3119: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -O2 -pipe -g -feliminate-unused-debug-types  -=
Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed conftest.c  >&5
configure:3123: $? =3D 0
configure:3171: result: yes
configure:3174: checking for C compiler default output file name
configure:3176: result: a.out
configure:3182: checking for suffix of executables
configure:3189: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -o conftest -O2 -pipe -g -feliminate-unused-de=
bug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed conftest.c  >&5
configure:3193: $? =3D 0
configure:3215: result:=20
configure:3237: checking whether we are cross compiling
configure:3275: result: yes
configure:3280: checking for suffix of object files
configure:3302: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -c -O2 -pipe -g -feliminate-unused-debug-types=
  conftest.c >&5
configure:3306: $? =3D 0
configure:3327: result: o
configure:3331: checking whether we are using the GNU C compiler
configure:3350: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -c -O2 -pipe -g -feliminate-unused-debug-types=
  conftest.c >&5
configure:3350: $? =3D 0
configure:3359: result: yes
configure:3368: checking whether arm-poky-linux-gnueabi-gcc  -march=3Darmv6=
 -mthumb-interwork -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto=
/var_yocto/rpi-build/tmp/sysroots/raspberrypi accepts -g
configure:3388: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -c -g  conftest.c >&5
configure:3388: $? =3D 0
configure:3429: result: yes
configure:3446: checking for arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mt=
humb-interwork -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var=
_yocto/rpi-build/tmp/sysroots/raspberrypi option to accept ISO C89
configure:3509: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi  -c -O2 -pipe -g -feliminate-unused-debug-type=
s  conftest.c >&5
configure:3509: $? =3D 0
configure:3522: result: none needed
configure:3544: checking dependency style of arm-poky-linux-gnueabi-gcc  -m=
arch=3Darmv6 -mthumb-interwork -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yoc=
to/var_yocto/var_yocto/rpi-build/tmp/sysroots/raspberrypi
configure:3655: result: none
configure:3670: checking for arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mt=
humb-interwork -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var=
_yocto/rpi-build/tmp/sysroots/raspberrypi option to accept ISO C99
configure:3819: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi  -c -O2 -pipe -g -feliminate-unused-debug-type=
s  conftest.c >&5
conftest.c:61:29: error: expected ';', ',' or ')' before 'text'
conftest.c: In function 'main':
conftest.c:115:18: error: expected '=3D', ',', ';', 'asm' or '__attribute__=
' before 'newvar'
conftest.c:115:18: error: 'newvar' undeclared (first use in this function)
conftest.c:115:18: note: each undeclared identifier is reported only once f=
or each function it appears in
conftest.c:125:3: error: 'for' loop initial declarations are only allowed i=
n C99 mode
conftest.c:125:3: note: use option -std=3Dc99 or -std=3Dgnu99 to compile yo=
ur code
configure:3819: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "mpc"
| #define PACKAGE_TARNAME "mpc"
| #define PACKAGE_VERSION "0.23"
| #define PACKAGE_STRING "mpc 0.23"
| #define PACKAGE_BUGREPORT "musicpd-dev-team@lists.sourceforge.net"
| #define PACKAGE_URL ""
| #define PACKAGE "mpc"
| #define VERSION "0.23"
| /* end confdefs.h.  */
| #include <stdarg.h>
| #include <stdbool.h>
| #include <stdlib.h>
| #include <wchar.h>
| #include <stdio.h>
|=20
| // Check varargs macros.  These examples are taken from C99 6.10.3.5.
| #define debug(...) fprintf (stderr, __VA_ARGS__)
| #define showlist(...) puts (#__VA_ARGS__)
| #define report(test,...) ((test) ? puts (#test) : printf (__VA_ARGS__))
| static void
| test_varargs_macros (void)
| {
|   int x =3D 1234;
|   int y =3D 5678;
|   debug ("Flag");
|   debug ("X =3D %d\n", x);
|   showlist (The first, second, and third items.);
|   report (x>y, "x is %d but y is %d", x, y);
| }
|=20
| // Check long long types.
| #define BIG64 18446744073709551615ull
| #define BIG32 4294967295ul
| #define BIG_OK (BIG64 / BIG32 =3D=3D 4294967297ull && BIG64 % BIG32 =3D=
=3D 0)
| #if !BIG_OK
|   your preprocessor is broken;
| #endif
| #if BIG_OK
| #else
|   your preprocessor is broken;
| #endif
| static long long int bignum =3D -9223372036854775807LL;
| static unsigned long long int ubignum =3D BIG64;
|=20
| struct incomplete_array
| {
|   int datasize;
|   double data[];
| };
|=20
| struct named_init {
|   int number;
|   const wchar_t *name;
|   double average;
| };
|=20
| typedef const char *ccp;
|=20
| static inline int
| test_restrict (ccp restrict text)
| {
|   // See if C++-style comments work.
|   // Iterate through items via the restricted pointer.
|   // Also check for declarations in for loops.
|   for (unsigned int i =3D 0; *(text+i) !=3D '\0'; ++i)
|     continue;
|   return 0;
| }
|=20
| // Check varargs and va_copy.
| static void
| test_varargs (const char *format, ...)
| {
|   va_list args;
|   va_start (args, format);
|   va_list args_copy;
|   va_copy (args_copy, args);
|=20
|   const char *str;
|   int number;
|   float fnumber;
|=20
|   while (*format)
|     {
|       switch (*format++)
| 	{
| 	case 's': // string
| 	  str =3D va_arg (args_copy, const char *);
| 	  break;
| 	case 'd': // int
| 	  number =3D va_arg (args_copy, int);
| 	  break;
| 	case 'f': // float
| 	  fnumber =3D va_arg (args_copy, double);
| 	  break;
| 	default:
| 	  break;
| 	}
|     }
|   va_end (args_copy);
|   va_end (args);
| }
|=20
| int
| main ()
| {
|=20
|   // Check bool.
|   _Bool success =3D false;
|=20
|   // Check restrict.
|   if (test_restrict ("String literal") =3D=3D 0)
|     success =3D true;
|   char *restrict newvar =3D "Another string";
|=20
|   // Check varargs.
|   test_varargs ("s, d' f .", "string", 65, 34.234);
|   test_varargs_macros ();
|=20
|   // Check flexible array members.
|   struct incomplete_array *ia =3D
|     malloc (sizeof (struct incomplete_array) + (sizeof (double) * 10));
|   ia->datasize =3D 10;
|   for (int i =3D 0; i < ia->datasize; ++i)
|     ia->data[i] =3D i * 1.234;
|=20
|   // Check named initializers.
|   struct named_init ni =3D {
|     .number =3D 34,
|     .name =3D L"Test wide string",
|     .average =3D 543.34343,
|   };
|=20
|   ni.number =3D 58;
|=20
|   int dynamic_array[ni.number];
|   dynamic_array[ni.number - 1] =3D 543;
|=20
|   // work around unused variable warnings
|   return (!success || bignum =3D=3D 0LL || ubignum =3D=3D 0uLL || newvar[=
0] =3D=3D 'x'
| 	  || dynamic_array[ni.number - 1] !=3D 543);
|=20
|   ;
|   return 0;
| }
configure:3819: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -std=3Dgnu99 -c -O2 -pipe -g -feliminate-unuse=
d-debug-types  conftest.c >&5
configure:3819: $? =3D 0
configure:3839: result: -std=3Dgnu99
configure:3848: checking whether make sets $(MAKE)
configure:3870: result: yes
configure:3889: checking for arm-poky-linux-gnueabi-pkg-config
configure:3922: result: no
configure:3932: checking for pkg-config
configure:3950: found /media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroo=
ts/x86_64-linux/usr/bin/pkg-config
configure:3962: result: /media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysr=
oots/x86_64-linux/usr/bin/pkg-config
configure:3974: WARNING: using cross tools not prefixed with host triplet
configure:3987: checking pkg-config is at least version 0.9.0
configure:3990: result: yes
configure:4058: checking for socket in -lsocket
configure:4083: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -std=3Dgnu99 -o conftest -O2 -pipe -g -felimin=
ate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed conf=
test.c -lsocket   >&5
/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/usr/li=
bexec/armv6-vfp-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: can=
not find -lsocket
collect2: error: ld returned 1 exit status
configure:4083: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "mpc"
| #define PACKAGE_TARNAME "mpc"
| #define PACKAGE_VERSION "0.23"
| #define PACKAGE_STRING "mpc 0.23"
| #define PACKAGE_BUGREPORT "musicpd-dev-team@lists.sourceforge.net"
| #define PACKAGE_URL ""
| #define PACKAGE "mpc"
| #define VERSION "0.23"
| /* end confdefs.h.  */
|=20
| /* Override any GCC internal prototype to avoid an error.
|    Use char because int might match the return type of a GCC
|    builtin and then its argument prototype would still apply.  */
| #ifdef __cplusplus
| extern "C"
| #endif
| char socket ();
| int
| main ()
| {
| return socket ();
|   ;
|   return 0;
| }
configure:4092: result: no
configure:4098: checking for gethostbyname in -lnsl
configure:4123: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -std=3Dgnu99 -o conftest -O2 -pipe -g -felimin=
ate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed conf=
test.c -lnsl   >&5
configure:4123: $? =3D 0
configure:4132: result: yes
configure:4141: checking for LIBMPDCLIENT
configure:4148: $PKG_CONFIG --exists --print-errors "libmpdclient >=3D 2.2"
configure:4151: $? =3D 0
configure:4164: $PKG_CONFIG --exists --print-errors "libmpdclient >=3D 2.2"
configure:4167: $? =3D 0
configure:4204: result: yes
configure:4220: checking for iconv
configure:4220: result: yes
configure:4272: checking for nl_langinfo and CODESET
configure:4288: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -std=3Dgnu99 -o conftest -O2 -pipe -g -felimin=
ate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed conf=
test.c  >&5
configure:4288: $? =3D 0
configure:4297: result: yes
configure:4318: checking how to run the C preprocessor
configure:4388: result: arm-poky-linux-gnueabi-gcc -E --sysroot=3D/media/yo=
cto/var_yocto/var_yocto/rpi-build/tmp/sysroots/raspberrypi  -march=3Darmv6 =
-mthumb-interwork -mfloat-abi=3Dsoftfp
configure:4408: arm-poky-linux-gnueabi-gcc -E --sysroot=3D/media/yocto/var_=
yocto/var_yocto/rpi-build/tmp/sysroots/raspberrypi  -march=3Darmv6 -mthumb-=
interwork -mfloat-abi=3Dsoftfp  conftest.c
configure:4408: $? =3D 0
configure:4422: arm-poky-linux-gnueabi-gcc -E --sysroot=3D/media/yocto/var_=
yocto/var_yocto/rpi-build/tmp/sysroots/raspberrypi  -march=3Darmv6 -mthumb-=
interwork -mfloat-abi=3Dsoftfp  conftest.c
conftest.c:12:28: fatal error: ac_nonexistent.h: No such file or directory
compilation terminated.
configure:4422: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "mpc"
| #define PACKAGE_TARNAME "mpc"
| #define PACKAGE_VERSION "0.23"
| #define PACKAGE_STRING "mpc 0.23"
| #define PACKAGE_BUGREPORT "musicpd-dev-team@lists.sourceforge.net"
| #define PACKAGE_URL ""
| #define PACKAGE "mpc"
| #define VERSION "0.23"
| #define HAVE_LANGINFO_CODESET 1
| /* end confdefs.h.  */
| #include <ac_nonexistent.h>
configure:4451: checking for grep that handles long lines and -e
configure:4509: result: /bin/grep
configure:4514: checking for egrep
configure:4576: result: /bin/grep -E
configure:4581: checking for ANSI C header files
configure:4685: result: yes
configure:4698: checking for sys/types.h
configure:4698: result: yes
configure:4698: checking for sys/stat.h
configure:4698: result: yes
configure:4698: checking for stdlib.h
configure:4698: result: yes
configure:4698: checking for string.h
configure:4698: result: yes
configure:4698: checking for memory.h
configure:4698: result: yes
configure:4698: checking for strings.h
configure:4698: result: yes
configure:4698: checking for inttypes.h
configure:4698: result: yes
configure:4698: checking for stdint.h
configure:4698: result: yes
configure:4698: checking for unistd.h
configure:4698: result: yes
configure:4710: checking for locale.h
configure:4710: result: yes
configure:4749: checking whether C compiler accepts -Wall
configure:4768: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -std=3Dgnu99 -c -O2 -pipe -g -feliminate-unuse=
d-debug-types  -Wall  conftest.c >&5
configure:4768: $? =3D 0
configure:4777: result: yes
configure:4790: : CFLAGS=3D"$CFLAGS $flag"
configure:4793: $? =3D 0
configure:4810: checking whether C compiler accepts -Wextra
configure:4829: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -std=3Dgnu99 -c -O2 -pipe -g -feliminate-unuse=
d-debug-types -Wall  -Wextra  conftest.c >&5
configure:4829: $? =3D 0
configure:4838: result: yes
configure:4851: : CFLAGS=3D"$CFLAGS $flag"
configure:4854: $? =3D 0
configure:4871: checking whether C compiler accepts -Wno-deprecated-declara=
tions
configure:4890: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -std=3Dgnu99 -c -O2 -pipe -g -feliminate-unuse=
d-debug-types -Wall -Wextra  -Wno-deprecated-declarations  conftest.c >&5
configure:4890: $? =3D 0
configure:4899: result: yes
configure:4912: : CFLAGS=3D"$CFLAGS $flag"
configure:4915: $? =3D 0
configure:4932: checking whether C compiler accepts -Wmissing-prototypes
configure:4951: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -std=3Dgnu99 -c -O2 -pipe -g -feliminate-unuse=
d-debug-types -Wall -Wextra -Wno-deprecated-declarations  -Wmissing-prototy=
pes  conftest.c >&5
configure:4951: $? =3D 0
configure:4960: result: yes
configure:4973: : CFLAGS=3D"$CFLAGS $flag"
configure:4976: $? =3D 0
configure:4993: checking whether C compiler accepts -Wshadow
configure:5012: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -std=3Dgnu99 -c -O2 -pipe -g -feliminate-unuse=
d-debug-types -Wall -Wextra -Wno-deprecated-declarations -Wmissing-prototyp=
es  -Wshadow  conftest.c >&5
configure:5012: $? =3D 0
configure:5021: result: yes
configure:5034: : CFLAGS=3D"$CFLAGS $flag"
configure:5037: $? =3D 0
configure:5054: checking whether C compiler accepts -Wpointer-arith
configure:5073: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -std=3Dgnu99 -c -O2 -pipe -g -feliminate-unuse=
d-debug-types -Wall -Wextra -Wno-deprecated-declarations -Wmissing-prototyp=
es -Wshadow  -Wpointer-arith  conftest.c >&5
configure:5073: $? =3D 0
configure:5082: result: yes
configure:5095: : CFLAGS=3D"$CFLAGS $flag"
configure:5098: $? =3D 0
configure:5115: checking whether C compiler accepts -Wstrict-prototypes
configure:5134: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -std=3Dgnu99 -c -O2 -pipe -g -feliminate-unuse=
d-debug-types -Wall -Wextra -Wno-deprecated-declarations -Wmissing-prototyp=
es -Wshadow -Wpointer-arith  -Wstrict-prototypes  conftest.c >&5
conftest.c:25:1: warning: function declaration isn't a prototype [-Wstrict-=
prototypes]
configure:5134: $? =3D 0
configure:5143: result: yes
configure:5156: : CFLAGS=3D"$CFLAGS $flag"
configure:5159: $? =3D 0
configure:5176: checking whether C compiler accepts -Wcast-qual
configure:5195: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -std=3Dgnu99 -c -O2 -pipe -g -feliminate-unuse=
d-debug-types -Wall -Wextra -Wno-deprecated-declarations -Wmissing-prototyp=
es -Wshadow -Wpointer-arith -Wstrict-prototypes  -Wcast-qual  conftest.c >&=
5
conftest.c:25:1: warning: function declaration isn't a prototype [-Wstrict-=
prototypes]
configure:5195: $? =3D 0
configure:5204: result: yes
configure:5217: : CFLAGS=3D"$CFLAGS $flag"
configure:5220: $? =3D 0
configure:5237: checking whether C compiler accepts -Wwrite-strings
configure:5256: arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwor=
k -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi -std=3Dgnu99 -c -O2 -pipe -g -feliminate-unuse=
d-debug-types -Wall -Wextra -Wno-deprecated-declarations -Wmissing-prototyp=
es -Wshadow -Wpointer-arith -Wstrict-prototypes -Wcast-qual  -Wwrite-string=
s  conftest.c >&5
conftest.c:25:1: warning: function declaration isn't a prototype [-Wstrict-=
prototypes]
configure:5256: $? =3D 0
configure:5265: result: yes
configure:5278: : CFLAGS=3D"$CFLAGS $flag"
configure:5281: $? =3D 0

## ---------------- ##
## Cache variables. ##
## ---------------- ##

ac_cv___va_copy=3Dyes
ac_cv_af_unix_large_dgram=3Dyes
ac_cv_alignof_CORBA_boolean=3D1
ac_cv_alignof_CORBA_char=3D1
ac_cv_alignof_CORBA_double=3D8
ac_cv_alignof_CORBA_float=3D4
ac_cv_alignof_CORBA_long=3D4
ac_cv_alignof_CORBA_long_double=3D8
ac_cv_alignof_CORBA_long_long=3D8
ac_cv_alignof_CORBA_octet=3D1
ac_cv_alignof_CORBA_pointer=3D4
ac_cv_alignof_CORBA_short=3D2
ac_cv_alignof_CORBA_struct=3D1
ac_cv_alignof_CORBA_wchar=3D2
ac_cv_alignof_guint32=3D4
ac_cv_alignof_guint64=3D8
ac_cv_alignof_unsigned_long=3D4
ac_cv_buggy_getaddrinfo=3Dno
ac_cv_c_bigendian=3Dno
ac_cv_c_compiler_gnu=3Dyes
ac_cv_c_endian=3Dlittle
ac_cv_c_littleendian=3Dyes
ac_cv_c_long_double=3Dyes
ac_cv_check_sjlj=3Dssjlj
ac_cv_conv_longlong_to_float=3Dyes
ac_cv_dirent_have_space_d_name=3Dyes
ac_cv_env_CC_set=3Dset
ac_cv_env_CC_value=3D'arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-in=
terwork -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/=
rpi-build/tmp/sysroots/raspberrypi'
ac_cv_env_CFLAGS_set=3Dset
ac_cv_env_CFLAGS_value=3D'-O2 -pipe -g -feliminate-unused-debug-types'
ac_cv_env_CPPFLAGS_set=3Dset
ac_cv_env_CPPFLAGS_value=3D
ac_cv_env_CPP_set=3Dset
ac_cv_env_CPP_value=3D'arm-poky-linux-gnueabi-gcc -E --sysroot=3D/media/yoc=
to/var_yocto/var_yocto/rpi-build/tmp/sysroots/raspberrypi  -march=3Darmv6 -=
mthumb-interwork -mfloat-abi=3Dsoftfp'
ac_cv_env_LDFLAGS_set=3Dset
ac_cv_env_LDFLAGS_value=3D'-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed'
ac_cv_env_LIBMPDCLIENT_CFLAGS_set=3D
ac_cv_env_LIBMPDCLIENT_CFLAGS_value=3D
ac_cv_env_LIBMPDCLIENT_LIBS_set=3D
ac_cv_env_LIBMPDCLIENT_LIBS_value=3D
ac_cv_env_LIBS_set=3D
ac_cv_env_LIBS_value=3D
ac_cv_env_PKG_CONFIG_LIBDIR_set=3Dset
ac_cv_env_PKG_CONFIG_LIBDIR_value=3D/media/yocto/var_yocto/var_yocto/rpi-bu=
ild/tmp/sysroots/raspberrypi//usr/lib/pkgconfig
ac_cv_env_PKG_CONFIG_PATH_set=3Dset
ac_cv_env_PKG_CONFIG_PATH_value=3D/media/yocto/var_yocto/var_yocto/rpi-buil=
d/tmp/sysroots/raspberrypi//usr/lib/pkgconfig:/media/yocto/var_yocto/var_yo=
cto/rpi-build/tmp/sysroots/raspberrypi/usr/share/pkgconfig
ac_cv_env_PKG_CONFIG_set=3D
ac_cv_env_PKG_CONFIG_value=3D
ac_cv_env_build_alias_set=3Dset
ac_cv_env_build_alias_value=3Dx86_64-linux
ac_cv_env_host_alias_set=3Dset
ac_cv_env_host_alias_value=3Darm-poky-linux-gnueabi
ac_cv_env_target_alias_set=3Dset
ac_cv_env_target_alias_value=3Darm-poky-linux-gnueabi
ac_cv_epoll_works=3Dyes
ac_cv_file___dev_ptc_=3Dyes
ac_cv_file__dev_random=3Dyes
ac_cv_file__dev_zero=3Dyes
ac_cv_func___adjtimex=3Dyes
ac_cv_func___argz_count=3Dyes
ac_cv_func___argz_next=3Dyes
ac_cv_func___argz_stringify=3Dyes
ac_cv_func___fpending=3Dyes
ac_cv_func___fsetlocking=3Dyes
ac_cv_func___progname=3Dyes
ac_cv_func___secure_getenv=3Dno
ac_cv_func___va_copy=3Dyes
ac_cv_func__obstack_free=3Dyes
ac_cv_func__setjmp=3Dyes
ac_cv_func__sys_siglist=3Dyes
ac_cv_func_a64l=3Dyes
ac_cv_func_abs=3Dyes
ac_cv_func_access=3Dyes
ac_cv_func_alarm=3Dyes
ac_cv_func_alphasort=3Dyes
ac_cv_func_argz_append=3Dyes
ac_cv_func_argz_create_sep=3Dyes
ac_cv_func_argz_insert=3Dyes
ac_cv_func_argz_next=3Dyes
ac_cv_func_argz_stringify=3Dyes
ac_cv_func_asprintf=3Dyes
ac_cv_func_atexit=3Dyes
ac_cv_func_atof=3Dyes
ac_cv_func_atoi=3Dyes
ac_cv_func_bcmp=3Dyes
ac_cv_func_bcopy=3Dyes
ac_cv_func_bind_textdomain_codeset=3Dyes
ac_cv_func_bindresvport=3Dyes
ac_cv_func_btowc=3Dyes
ac_cv_func_bzero=3Dyes
ac_cv_func_calloc=3Dyes
ac_cv_func_canonicalize_file_name=3Dyes
ac_cv_func_catgets=3Dyes
ac_cv_func_cfgetospeed=3Dyes
ac_cv_func_cfsetispeed=3Dyes
ac_cv_func_cfsetspeed=3Dyes
ac_cv_func_chmod=3Dyes
ac_cv_func_chown=3Dyes
ac_cv_func_chroot=3Dyes
ac_cv_func_clock=3Dyes
ac_cv_func_close=3Dyes
ac_cv_func_closedir=3Dyes
ac_cv_func_closelog=3Dyes
ac_cv_func_confstr=3Dyes
ac_cv_func_connect=3Dyes
ac_cv_func_daemon=3Dyes
ac_cv_func_dcgettext=3Dyes
ac_cv_func_difftime=3Dyes
ac_cv_func_dirfd=3Dyes
ac_cv_func_dirname=3Dyes
ac_cv_func_dngettext=3Dyes
ac_cv_func_dup2=3Dyes
ac_cv_func_ecvt=3Dyes
ac_cv_func_endgrent=3Dyes
ac_cv_func_endmntent=3Dyes
ac_cv_func_endpwent=3Dyes
ac_cv_func_endutent=3Dyes
ac_cv_func_endutxent=3Dyes
ac_cv_func_epoll_ctl=3Dyes
ac_cv_func_err=3Dyes
ac_cv_func_ether_hostton=3Dyes
ac_cv_func_ether_ntohost=3Dyes
ac_cv_func_euidaccess=3Dyes
ac_cv_func_execv=3Dyes
ac_cv_func_fchdir=3Dyes
ac_cv_func_fchmod=3Dyes
ac_cv_func_fchmodat=3Dyes
ac_cv_func_fchown=3Dyes
ac_cv_func_fchownat=3Dyes
ac_cv_func_fcntl=3Dyes
ac_cv_func_fcvt=3Dyes
ac_cv_func_fdatasync=3Dyes
ac_cv_func_fdopendir=3Dyes
ac_cv_func_feof_unlocked=3Dyes
ac_cv_func_fgets_unlocked=3Dyes
ac_cv_func_fgetxattr=3Dyes
ac_cv_func_finite=3Dyes
ac_cv_func_flistxattr=3Dyes
ac_cv_func_flock=3Dyes
ac_cv_func_flockfile=3Dyes
ac_cv_func_fnmatch=3Dyes
ac_cv_func_fnmatch_works=3Dyes
ac_cv_func_fork=3Dyes
ac_cv_func_fpathconf=3Dyes
ac_cv_func_fprintf=3Dyes
ac_cv_func_free=3Dyes
ac_cv_func_freeaddrinfo=3Dyes
ac_cv_func_freeifaddrs=3Dyes
ac_cv_func_fseeko=3Dyes
ac_cv_func_fsetxattr=3Dyes
ac_cv_func_fstat64=3Dyes
ac_cv_func_fstat=3Dyes
ac_cv_func_fstatfs=3Dyes
ac_cv_func_fsync=3Dyes
ac_cv_func_ftello=3Dyes
ac_cv_func_ftime=3Dyes
ac_cv_func_ftruncate=3Dyes
ac_cv_func_funlockfile=3Dyes
ac_cv_func_futimes=3Dyes
ac_cv_func_futimesat=3Dyes
ac_cv_func_gai_strerror=3Dyes
ac_cv_func_gcvt=3Dyes
ac_cv_func_getaddrinfo=3Dyes
ac_cv_func_getc_unlocked=3Dyes
ac_cv_func_getcwd=3Dyes
ac_cv_func_getdelim=3Dyes
ac_cv_func_getdomainname=3Dyes
ac_cv_func_getdtablesize=3Dyes
ac_cv_func_getegid=3Dyes
ac_cv_func_getenv=3Dyes
ac_cv_func_geteuid=3Dyes
ac_cv_func_getgid=3Dyes
ac_cv_func_getgrent=3Dyes
ac_cv_func_getgrent_r=3Dyes
ac_cv_func_getgrgid_r=3Dyes
ac_cv_func_getgrnam=3Dyes
ac_cv_func_getgrnam_r=3Dyes
ac_cv_func_getgrouplist=3Dyes
ac_cv_func_getgroups=3Dyes
ac_cv_func_gethostbyaddr_r=3Dyes
ac_cv_func_gethostbyname2=3Dyes
ac_cv_func_gethostbyname=3Dyes
ac_cv_func_gethostbyname_r=3Dyes
ac_cv_func_gethostent=3Dyes
ac_cv_func_gethostid=3Dyes
ac_cv_func_gethostname=3Dyes
ac_cv_func_getifaddrs=3Dyes
ac_cv_func_getline=3Dyes
ac_cv_func_getloadavg=3Dyes
ac_cv_func_getmntent=3Dyes
ac_cv_func_getmsg=3Dno
ac_cv_func_getnameinfo=3Dyes
ac_cv_func_getnetbyaddr_r=3Dyes
ac_cv_func_getnetgrent_r=3Dyes
ac_cv_func_getopt=3Dyes
ac_cv_func_getopt_long=3Dyes
ac_cv_func_getopt_long_only=3Dyes
ac_cv_func_getpagesize=3Dyes
ac_cv_func_getpass=3Dyes
ac_cv_func_getpeername=3Dyes
ac_cv_func_getpgrp=3Dyes
ac_cv_func_getpgrp_void=3Dyes
ac_cv_func_getpid=3Dyes
ac_cv_func_getppid=3Dyes
ac_cv_func_getprotoent_r=3Dyes
ac_cv_func_getpwent=3Dyes
ac_cv_func_getpwent_r=3Dyes
ac_cv_func_getpwnam=3Dyes
ac_cv_func_getpwnam_r=3Dyes
ac_cv_func_getpwuid=3Dyes
ac_cv_func_getpwuid_r=3Dyes
ac_cv_func_getresuid=3Dyes
ac_cv_func_getrlimit=3Dyes
ac_cv_func_getrusage=3Dyes
ac_cv_func_getservbyname=3Dyes
ac_cv_func_getservbyname_r=3Dyes
ac_cv_func_getservbyport_r=3Dyes
ac_cv_func_getservent=3Dyes
ac_cv_func_getservent_r=3Dyes
ac_cv_func_getspnam=3Dyes
ac_cv_func_getspnam_r=3Dyes
ac_cv_func_gettimeofday=3Dyes
ac_cv_func_getttyent=3Dyes
ac_cv_func_getttynam=3Dyes
ac_cv_func_getuid=3Dyes
ac_cv_func_getusershell=3Dyes
ac_cv_func_getutent=3Dyes
ac_cv_func_getutid=3Dyes
ac_cv_func_getutline=3Dyes
ac_cv_func_getutmp=3Dyes
ac_cv_func_getutmpx=3Dyes
ac_cv_func_getutxent=3Dyes
ac_cv_func_getutxid=3Dyes
ac_cv_func_getutxline=3Dyes
ac_cv_func_getwd=3Dyes
ac_cv_func_getxattr=3Dyes
ac_cv_func_glob=3Dyes
ac_cv_func_gmtime=3Dyes
ac_cv_func_gmtime_r=3Dyes
ac_cv_func_grantpt=3Dyes
ac_cv_func_group_member=3Dyes
ac_cv_func_herror=3Dyes
ac_cv_func_hstrerror=3Dyes
ac_cv_func_iconv=3Dyes
ac_cv_func_iconv_open=3Dyes
ac_cv_func_if_freenameindex=3Dyes
ac_cv_func_if_indextoname=3Dyes
ac_cv_func_if_nameindex=3Dyes
ac_cv_func_if_nametoindex=3Dyes
ac_cv_func_index=3Dyes
ac_cv_func_inet_addr=3Dyes
ac_cv_func_inet_aton=3Dyes
ac_cv_func_inet_ntoa=3Dyes
ac_cv_func_inet_ntop=3Dyes
ac_cv_func_inet_pton=3Dyes
ac_cv_func_initgroups=3Dyes
ac_cv_func_innetgr=3Dyes
ac_cv_func_iruserok=3Dyes
ac_cv_func_isascii=3Dyes
ac_cv_func_isatty=3Dyes
ac_cv_func_isblank=3Dyes
ac_cv_func_isgraph=3Dyes
ac_cv_func_isinf=3Dyes
ac_cv_func_isnan=3Dyes
ac_cv_func_isprint=3Dyes
ac_cv_func_isspace=3Dyes
ac_cv_func_iswalnum=3Dyes
ac_cv_func_iswcntrl=3Dyes
ac_cv_func_iswctype=3Dyes
ac_cv_func_iswprint=3Dyes
ac_cv_func_iswspace=3Dyes
ac_cv_func_iswupper=3Dyes
ac_cv_func_isxdigit=3Dyes
ac_cv_func_kill=3Dyes
ac_cv_func_killpg=3Dyes
ac_cv_func_lchown=3Dyes
ac_cv_func_lckpwdf=3Dyes
ac_cv_func_lgetxattr=3Dyes
ac_cv_func_link=3Dyes
ac_cv_func_listxattr=3Dyes
ac_cv_func_llistxattr=3Dyes
ac_cv_func_localtime=3Dyes
ac_cv_func_localtime_r=3Dyes
ac_cv_func_lockf=3Dyes
ac_cv_func_lrand48=3Dyes
ac_cv_func_lsearch=3Dyes
ac_cv_func_lseek64=3Dyes
ac_cv_func_lsetxattr=3Dyes
ac_cv_func_lstat=3Dyes
ac_cv_func_lstat_dereferences_slashed_symlink=3Dyes
ac_cv_func_lstat_empty_string_bug=3Dno
ac_cv_func_mallinfo=3Dyes
ac_cv_func_malloc=3Dyes
ac_cv_func_malloc_0_nonnull=3Dyes
ac_cv_func_malloc_works=3Dyes
ac_cv_func_mblen=3Dyes
ac_cv_func_mbrlen=3Dyes
ac_cv_func_mbrtowc=3Dyes
ac_cv_func_mbsinit=3Dyes
ac_cv_func_mbsrtowcs=3Dyes
ac_cv_func_mbtowc=3Dyes
ac_cv_func_memalign=3Dyes
ac_cv_func_memchr=3Dyes
ac_cv_func_memcmp=3Dyes
ac_cv_func_memcmp_working=3Dyes
ac_cv_func_memcpy=3Dyes
ac_cv_func_memmove=3Dyes
ac_cv_func_mempcpy=3Dyes
ac_cv_func_memrchr=3Dyes
ac_cv_func_memset=3Dyes
ac_cv_func_mkdir=3Dyes
ac_cv_func_mkdirat=3Dyes
ac_cv_func_mkdtemp=3Dyes
ac_cv_func_mkfifo=3Dyes
ac_cv_func_mknod=3Dyes
ac_cv_func_mkstemp64=3Dyes
ac_cv_func_mkstemp=3Dyes
ac_cv_func_mktime=3Dyes
ac_cv_func_mlock=3Dyes
ac_cv_func_mmap=3Dyes
ac_cv_func_mmap_fixed_mapped=3Dyes
ac_cv_func_mtrace=3Dyes
ac_cv_func_munlock=3Dyes
ac_cv_func_munmap=3Dyes
ac_cv_func_nanosleep=3Dyes
ac_cv_func_nice=3Dyes
ac_cv_func_nl_langinfo=3Dyes
ac_cv_func_ntp_adjtime=3Dyes
ac_cv_func_ntp_gettime=3Dyes
ac_cv_func_on_exit=3Dyes
ac_cv_func_open64=3Dyes
ac_cv_func_open=3Dyes
ac_cv_func_openat=3Dyes
ac_cv_func_opendir=3Dyes
ac_cv_func_openlog=3Dyes
ac_cv_func_pathconf=3Dyes
ac_cv_func_pipe=3Dyes
ac_cv_func_poll=3Dyes
ac_cv_func_popen=3Dyes
ac_cv_func_posix_getgrgid_r=3Dyes
ac_cv_func_posix_getpwnam_r=3Dyes
ac_cv_func_posix_getpwuid_r=3Dyes
ac_cv_func_posix_memalign=3Dyes
ac_cv_func_prctl=3Dyes
ac_cv_func_pread=3Dyes
ac_cv_func_printf=3Dyes
ac_cv_func_printf_unix98=3Dyes
ac_cv_func_pselect=3Dyes
ac_cv_func_pthread_attr_getstack=3Dyes
ac_cv_func_pthread_key_delete=3Dyes
ac_cv_func_pthread_mutex_lock=3Dyes
ac_cv_func_ptsname=3Dyes
ac_cv_func_putenv=3Dyes
ac_cv_func_putgrent=3Dyes
ac_cv_func_putpwent=3Dyes
ac_cv_func_putspent=3Dyes
ac_cv_func_pututline=3Dyes
ac_cv_func_pututxline=3Dyes
ac_cv_func_putwc=3Dyes
ac_cv_func_pwrite=3Dyes
ac_cv_func_qsort=3Dyes
ac_cv_func_raise=3Dyes
ac_cv_func_rand=3Dyes
ac_cv_func_rand_r=3Dyes
ac_cv_func_random=3Dyes
ac_cv_func_re_comp=3Dyes
ac_cv_func_re_exec=3Dyes
ac_cv_func_re_search=3Dyes
ac_cv_func_read=3Dyes
ac_cv_func_readdir=3Dyes
ac_cv_func_readdir_r=3Dyes
ac_cv_func_readlink=3Dyes
ac_cv_func_realloc=3Dyes
ac_cv_func_realloc_0_nonnull=3Dyes
ac_cv_func_realloc_works=3Dyes
ac_cv_func_realpath=3Dyes
ac_cv_func_recvmsg=3Dyes
ac_cv_func_regcomp=3Dyes
ac_cv_func_regexec=3Dyes
ac_cv_func_remove=3Dyes
ac_cv_func_rename=3Dyes
ac_cv_func_rmdir=3Dyes
ac_cv_func_rpmatch=3Dyes
ac_cv_func_rresvport_af=3Dyes
ac_cv_func_ruserok=3Dyes
ac_cv_func_ruserok_af=3Dyes
ac_cv_func_sbrk=3Dyes
ac_cv_func_scandir=3Dyes
ac_cv_func_sched_setscheduler=3Dyes
ac_cv_func_sched_yield=3Dyes
ac_cv_func_select=3Dyes
ac_cv_func_semctl=3Dyes
ac_cv_func_semget=3Dyes
ac_cv_func_sendmsg=3Dyes
ac_cv_func_setbuf=3Dyes
ac_cv_func_setbuffer=3Dyes
ac_cv_func_setegid=3Dyes
ac_cv_func_setenv=3Dyes
ac_cv_func_seteuid=3Dyes
ac_cv_func_setgid=3Dyes
ac_cv_func_setgrent_void=3Dyes
ac_cv_func_setgroups=3Dyes
ac_cv_func_sethostname=3Dyes
ac_cv_func_setitimer=3Dyes
ac_cv_func_setjmp=3Dyes
ac_cv_func_setlinebuf=3Dyes
ac_cv_func_setlocale=3Dyes
ac_cv_func_setmntent=3Dyes
ac_cv_func_setpgid=3Dyes
ac_cv_func_setpgrp=3Dyes
ac_cv_func_setpgrp_void=3Dyes
ac_cv_func_setpriority=3Dyes
ac_cv_func_setregid=3Dyes
ac_cv_func_setresgid=3Dyes
ac_cv_func_setresuid=3Dyes
ac_cv_func_setreuid=3Dyes
ac_cv_func_setrlimit=3Dyes
ac_cv_func_setsid=3Dyes
ac_cv_func_setsockopt=3Dyes
ac_cv_func_settimeofday=3Dyes
ac_cv_func_setuid=3Dyes
ac_cv_func_setutent=3Dyes
ac_cv_func_setutxent=3Dyes
ac_cv_func_setvbuf=3Dyes
ac_cv_func_setvbuf_reversed=3Dno
ac_cv_func_setxattr=3Dyes
ac_cv_func_sgetspent=3Dyes
ac_cv_func_shmat=3Dyes
ac_cv_func_shmctl=3Dyes
ac_cv_func_shmdt=3Dyes
ac_cv_func_shmget=3Dyes
ac_cv_func_shutdown=3Dyes
ac_cv_func_sigaction=3Dyes
ac_cv_func_sigaddset=3Dyes
ac_cv_func_sigaltstack=3Dyes
ac_cv_func_sigblock=3Dyes
ac_cv_func_sigemptyset=3Dyes
ac_cv_func_sighold=3Dyes
ac_cv_func_siginterrupt=3Dyes
ac_cv_func_signal=3Dyes
ac_cv_func_sigprocmask=3Dyes
ac_cv_func_sigset=3Dyes
ac_cv_func_sigsetmask=3Dyes
ac_cv_func_sigstack=3Dyes
ac_cv_func_sigsuspend=3Dyes
ac_cv_func_sigvec=3Dyes
ac_cv_func_snprintf=3Dyes
ac_cv_func_snprintf_c99=3Dyes
ac_cv_func_socket=3Dyes
ac_cv_func_socketpair=3Dyes
ac_cv_func_sprintf=3Dyes
ac_cv_func_srand48=3Dyes
ac_cv_func_srand=3Dyes
ac_cv_func_srandom=3Dyes
ac_cv_func_sscanf=3Dyes
ac_cv_func_stat=3Dyes
ac_cv_func_stat_empty_string_bug=3Dno
ac_cv_func_stat_ignores_trailing_slash=3Dno
ac_cv_func_statfs=3Dyes
ac_cv_func_statvfs=3Dyes
ac_cv_func_stime=3Dyes
ac_cv_func_stpcpy=3Dyes
ac_cv_func_strcasecmp=3Dyes
ac_cv_func_strcasestr=3Dyes
ac_cv_func_strchr=3Dyes
ac_cv_func_strchrnul=3Dyes
ac_cv_func_strcmp=3Dyes
ac_cv_func_strcspn=3Dyes
ac_cv_func_strdup=3Dyes
ac_cv_func_strerror=3Dyes
ac_cv_func_strerror_r=3Dyes
ac_cv_func_strftime=3Dyes
ac_cv_func_strlen=3Dyes
ac_cv_func_strncasecmp=3Dyes
ac_cv_func_strncmp=3Dyes
ac_cv_func_strndup=3Dyes
ac_cv_func_strnlen=3Dyes
ac_cv_func_strpbrk=3Dyes
ac_cv_func_strptime=3Dyes
ac_cv_func_strrchr=3Dyes
ac_cv_func_strsep=3Dyes
ac_cv_func_strsignal=3Dyes
ac_cv_func_strspn=3Dyes
ac_cv_func_strstr=3Dyes
ac_cv_func_strtod=3Dyes
ac_cv_func_strtoimax=3Dyes
ac_cv_func_strtok_r=3Dyes
ac_cv_func_strtol=3Dyes
ac_cv_func_strtoll=3Dyes
ac_cv_func_strtoul=3Dyes
ac_cv_func_strtoull=3Dyes
ac_cv_func_strtoumax=3Dyes
ac_cv_func_strverscmp=3Dyes
ac_cv_func_strxfrm=3Dyes
ac_cv_func_symlink=3Dyes
ac_cv_func_sync=3Dyes
ac_cv_func_sys_siglist=3Dyes
ac_cv_func_sysconf=3Dyes
ac_cv_func_sysctl=3Dyes
ac_cv_func_sysinfo=3Dyes
ac_cv_func_syslog=3Dyes
ac_cv_func_system=3Dyes
ac_cv_func_tcgetattr=3Dyes
ac_cv_func_tcgetpgrp=3Dyes
ac_cv_func_tcsetattr=3Dyes
ac_cv_func_tcsetpgrp=3Dyes
ac_cv_func_time=3Dyes
ac_cv_func_timegm=3Dyes
ac_cv_func_times=3Dyes
ac_cv_func_timezone=3Dyes
ac_cv_func_tmpnam=3Dyes
ac_cv_func_towlower=3Dyes
ac_cv_func_towupper=3Dyes
ac_cv_func_truncate=3Dyes
ac_cv_func_tsearch=3Dyes
ac_cv_func_ttyname=3Dyes
ac_cv_func_tzset=3Dyes
ac_cv_func_ulimit=3Dyes
ac_cv_func_umask=3Dyes
ac_cv_func_uname=3Dyes
ac_cv_func_unlink=3Dyes
ac_cv_func_unsetenv=3Dyes
ac_cv_func_unshare=3Dyes
ac_cv_func_updwtmp=3Dyes
ac_cv_func_updwtmpx=3Dyes
ac_cv_func_usleep=3Dyes
ac_cv_func_ustat=3Dyes
ac_cv_func_utime=3Dyes
ac_cv_func_utimes=3Dyes
ac_cv_func_utmpname=3Dyes
ac_cv_func_utmpxname=3Dyes
ac_cv_func_va_copy=3Dyes
ac_cv_func_valloc=3Dyes
ac_cv_func_vasprintf=3Dyes
ac_cv_func_verrx=3Dyes
ac_cv_func_vfork=3Dyes
ac_cv_func_vfprintf=3Dyes
ac_cv_func_vfscanf=3Dyes
ac_cv_func_vhangup=3Dyes
ac_cv_func_vprintf=3Dyes
ac_cv_func_vsnprintf=3Dyes
ac_cv_func_vsnprintf_c99=3Dyes
ac_cv_func_vsprintf=3Dyes
ac_cv_func_wait3=3Dyes
ac_cv_func_wait4=3Dyes
ac_cv_func_waitpid=3Dyes
ac_cv_func_wcrtomb=3Dyes
ac_cv_func_wcscoll=3Dyes
ac_cv_func_wcsdup=3Dyes
ac_cv_func_wcslen=3Dyes
ac_cv_func_wctob=3Dyes
ac_cv_func_wctomb=3Dyes
ac_cv_func_wctype=3Dyes
ac_cv_func_wcwidth=3Dyes
ac_cv_func_wmemchr=3Dyes
ac_cv_func_wmemcpy=3Dyes
ac_cv_func_wmempcpy=3Dyes
ac_cv_gnet_have_abstract_sockets=3Dno
ac_cv_have_abstract_sockets=3Dyes
ac_cv_have_accrights_in_msghdr=3Dno
ac_cv_have_broken_snprintf=3Dno
ac_cv_have_control_in_msghdr=3Dyes
ac_cv_have_decl_sys_siglist=3Dyes
ac_cv_have_long_long_format=3Dyes
ac_cv_have_openpty_ctty_bug=3Dyes
ac_cv_have_space_d_name_in_struct_dirent=3Dyes
ac_cv_header_X=3Dno
ac_cv_header__CC=3Dno
ac_cv_header__CFLAGS=3Dno
ac_cv_header__CPPFLAGS=3Dno
ac_cv_header___5=3Dno
ac_cv_header__c=3Dno
ac_cv_header_aio_h=3Dyes
ac_cv_header_alloca_h=3Dyes
ac_cv_header_argz_h=3Dyes
ac_cv_header_arpa_inet_h=3Dyes
ac_cv_header_arpa_nameser_h=3Dyes
ac_cv_header_asm_byteorder_h=3Dyes
ac_cv_header_asm_ioctls_h=3Dyes
ac_cv_header_asm_page_h=3Dno
ac_cv_header_asm_types_h=3Dyes
ac_cv_header_assert_h=3Dyes
ac_cv_header_byteswap_h=3Dyes
ac_cv_header_conftest__ac_ext=3Dno
ac_cv_header_crypt_h=3Dyes
ac_cv_header_ctype_h=3Dyes
ac_cv_header_curses_h=3Dyes
ac_cv_header_dirent_h=3Dyes
ac_cv_header_dlfcn_h=3Dyes
ac_cv_header_elf_h=3Dyes
ac_cv_header_endian_h=3Dyes
ac_cv_header_err_h=3Dyes
ac_cv_header_errno_h=3Dyes
ac_cv_header_execinfo_h=3Dyes
ac_cv_header_fcntl_h=3Dyes
ac_cv_header_features_h=3Dyes
ac_cv_header_float_h=3Dyes
ac_cv_header_fstab_h=3Dyes
ac_cv_header_ftw_h=3Dyes
ac_cv_header_getopt_h=3Dyes
ac_cv_header_glob_h=3Dyes
ac_cv_header_grp_h=3Dyes
ac_cv_header_iconv_h=3Dyes
ac_cv_header_ifaddrs_h=3Dyes
ac_cv_header_inttypes_h=3Dyes
ac_cv_header_langinfo_h=3Dyes
ac_cv_header_lastlog_h=3Dyes
ac_cv_header_libgen_h=3Dyes
ac_cv_header_libintl_h=3Dyes
ac_cv_header_limits_h=3Dyes
ac_cv_header_linux_capability_h=3Dyes
ac_cv_header_linux_fd_h=3Dyes
ac_cv_header_linux_fs_h=3Dyes
ac_cv_header_linux_hayesesp_h=3Dno
ac_cv_header_linux_hdreg_h=3Dyes
ac_cv_header_linux_icmp_h=3Dyes
ac_cv_header_linux_in6_h=3Dyes
ac_cv_header_linux_joystick_h=3Dyes
ac_cv_header_linux_ptrace_h=3Dyes
ac_cv_header_linux_serial_h=3Dyes
ac_cv_header_linux_sonypi_h=3Dyes
ac_cv_header_linux_unistd_h=3Dyes
ac_cv_header_linux_utsname_h=3Dyes
ac_cv_header_linux_version_h=3Dyes
ac_cv_header_locale_h=3Dyes
ac_cv_header_malloc_h=3Dyes
ac_cv_header_math_h=3Dyes
ac_cv_header_mcheck_h=3Dyes
ac_cv_header_memory_h=3Dyes
ac_cv_header_mntent_h=3Dyes
ac_cv_header_mqueue_h=3Dyes
ac_cv_header_ncurses_curses_h=3Dno
ac_cv_header_ncurses_h=3Dyes
ac_cv_header_ncurses_termcap_h=3Dno
ac_cv_header_net_if_h=3Dyes
ac_cv_header_net_route_h=3Dyes
ac_cv_header_netdb_h=3Dyes
ac_cv_header_netinet_ether_h=3Dyes
ac_cv_header_netinet_in_h=3Dyes
ac_cv_header_netinet_ip6_h=3Dyes
ac_cv_header_netinet_ip_h=3Dyes
ac_cv_header_netinet_sctp_h=3Dno
ac_cv_header_netinet_sctp_uio_h=3Dno
ac_cv_header_netinet_tcp_h=3Dyes
ac_cv_header_netinet_udp_h=3Dyes
ac_cv_header_netipx_ipx_h=3Dyes
ac_cv_header_paths_h=3Dyes
ac_cv_header_poll_h=3Dyes
ac_cv_header_pthread_h=3Dyes
ac_cv_header_pty_h=3Dyes
ac_cv_header_pwd_h=3Dyes
ac_cv_header_regex_h=3Dyes
ac_cv_header_resolv_h=3Dyes
ac_cv_header_rpc_rpc_h=3Dyes
ac_cv_header_rpc_types_h=3Dyes
ac_cv_header_sched_h=3Dyes
ac_cv_header_scsi_scsi_h=3Dyes
ac_cv_header_search_h=3Dyes
ac_cv_header_semaphore_h=3Dyes
ac_cv_header_setjmp_h=3Dyes
ac_cv_header_sgtty_h=3Dyes
ac_cv_header_shadow_h=3Dyes
ac_cv_header_signal_h=3Dyes
ac_cv_header_stdarg_h=3Dyes
ac_cv_header_stdbool_h=3Dyes
ac_cv_header_stdc=3Dyes
ac_cv_header_stddef_h=3Dyes
ac_cv_header_stdint_h=3Dyes
ac_cv_header_stdio_h=3Dyes
ac_cv_header_stdlib_h=3Dyes
ac_cv_header_string_h=3Dyes
ac_cv_header_strings_h=3Dyes
ac_cv_header_stropts_h=3Dyes
ac_cv_header_sys_bitypes_h=3Dyes
ac_cv_header_sys_cdefs_h=3Dyes
ac_cv_header_sys_dir_h=3Dyes
ac_cv_header_sys_epoll_h=3Dyes
ac_cv_header_sys_fcntl_h=3Dyes
ac_cv_header_sys_file_h=3Dyes
ac_cv_header_sys_fsuid_h=3Dyes
ac_cv_header_sys_ioctl_h=3Dyes
ac_cv_header_sys_ipc_h=3Dyes
ac_cv_header_sys_mman_h=3Dyes
ac_cv_header_sys_mount_h=3Dyes
ac_cv_header_sys_mtio_h=3Dyes
ac_cv_header_sys_param_h=3Dyes
ac_cv_header_sys_poll_h=3Dyes
ac_cv_header_sys_prctl_h=3Dyes
ac_cv_header_sys_ptrace_h=3Dyes
ac_cv_header_sys_queue_h=3Dyes
ac_cv_header_sys_reg_h=3Dno
ac_cv_header_sys_resource_h=3Dyes
ac_cv_header_sys_select_h=3Dyes
ac_cv_header_sys_sem_h=3Dyes
ac_cv_header_sys_shm_h=3Dyes
ac_cv_header_sys_signal_h=3Dyes
ac_cv_header_sys_socket_h=3Dyes
ac_cv_header_sys_socketvar_h=3Dyes
ac_cv_header_sys_soundcard_h=3Dyes
ac_cv_header_sys_stat_h=3Dyes
ac_cv_header_sys_statfs_h=3Dyes
ac_cv_header_sys_statvfs_h=3Dyes
ac_cv_header_sys_stropts_h=3Dyes
ac_cv_header_sys_swap_h=3Dyes
ac_cv_header_sys_sysctl_h=3Dyes
ac_cv_header_sys_sysinfo_h=3Dyes
ac_cv_header_sys_sysmacros_h=3Dyes
ac_cv_header_sys_termios_h=3Dyes
ac_cv_header_sys_time_h=3Dyes
ac_cv_header_sys_timeb_h=3Dyes
ac_cv_header_sys_times_h=3Dyes
ac_cv_header_sys_timex_h=3Dyes
ac_cv_header_sys_types_h=3Dyes
ac_cv_header_sys_uio_h=3Dyes
ac_cv_header_sys_un_h=3Dyes
ac_cv_header_sys_unistd_h=3Dyes
ac_cv_header_sys_user_h=3Dyes
ac_cv_header_sys_utsname_h=3Dyes
ac_cv_header_sys_vfs_h=3Dyes
ac_cv_header_sys_wait_h=3Dyes
ac_cv_header_sysexits_h=3Dyes
ac_cv_header_syslog_h=3Dyes
ac_cv_header_termio_h=3Dyes
ac_cv_header_termios_h=3Dyes
ac_cv_header_time_h=3Dyes
ac_cv_header_ttyent_h=3Dyes
ac_cv_header_ulimit_h=3Dyes
ac_cv_header_unistd_h=3Dyes
ac_cv_header_ustat_h=3Dyes
ac_cv_header_utime_h=3Dyes
ac_cv_header_utmp_h=3Dyes
ac_cv_header_utmpx_h=3Dyes
ac_cv_header_values_h=3Dyes
ac_cv_header_wchar_h=3Dyes
ac_cv_header_wctype_h=3Dyes
ac_cv_ispeed_offset=3D13
ac_cv_lib_nsl_gethostbyname=3Dyes
ac_cv_lib_png_png_create_info_struct=3Dyes
ac_cv_lib_socket_socket=3Dno
ac_cv_libiconv_utf8=3Dyes
ac_cv_libnet_endianess=3Dlil
ac_cv_linux_vers=3D2
ac_cv_member_struct_sockaddr_sa_len=3Dno
ac_cv_need_trio=3Dno
ac_cv_o_nonblock_inherited=3Dno
ac_cv_objext=3Do
ac_cv_path_EGREP=3D'/bin/grep -E'
ac_cv_path_GREP=3D/bin/grep
ac_cv_path_ac_pt_PKG_CONFIG=3D/media/yocto/var_yocto/var_yocto/rpi-build/tm=
p/sysroots/x86_64-linux/usr/bin/pkg-config
ac_cv_path_install=3D'/usr/bin/install -c'
ac_cv_path_mkdir=3D/bin/mkdir
ac_cv_pread=3Dno
ac_cv_prog_AWK=3Dgawk
ac_cv_prog_CC=3D'arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwo=
rk -mfloat-abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-b=
uild/tmp/sysroots/raspberrypi'
ac_cv_prog_CPP=3D'arm-poky-linux-gnueabi-gcc -E --sysroot=3D/media/yocto/va=
r_yocto/var_yocto/rpi-build/tmp/sysroots/raspberrypi  -march=3Darmv6 -mthum=
b-interwork -mfloat-abi=3Dsoftfp'
ac_cv_prog_STRIP=3Darm-poky-linux-gnueabi-strip
ac_cv_prog_cc_c89=3D
ac_cv_prog_cc_c99=3D-std=3Dgnu99
ac_cv_prog_cc_g=3Dyes
ac_cv_prog_make_make_set=3Dyes
ac_cv_pwrite=3Dno
ac_cv_regexec_segfault_emptystr=3Dno
ac_cv_sctp=3Dno
ac_cv_sizeof___int64=3D0
ac_cv_sizeof_bool=3D1
ac_cv_sizeof_char=3D1
ac_cv_sizeof_char_p=3D4
ac_cv_sizeof_double=3D8
ac_cv_sizeof_float=3D4
ac_cv_sizeof_int=3D4
ac_cv_sizeof_int_p=3D4
ac_cv_sizeof_long=3D4
ac_cv_sizeof_long_double=3D8
ac_cv_sizeof_long_int=3D4
ac_cv_sizeof_long_long=3D8
ac_cv_sizeof_long_long_int=3D8
ac_cv_sizeof_long_p=3D4
ac_cv_sizeof_off_t=3D4
ac_cv_sizeof_pid_t=3D4
ac_cv_sizeof_ptrdiff_t=3D4
ac_cv_sizeof_short=3D2
ac_cv_sizeof_short_int=3D2
ac_cv_sizeof_signed_char=3D1
ac_cv_sizeof_size_t=3D4
ac_cv_sizeof_ssize_t=3D4
ac_cv_sizeof_unsigned=3D4
ac_cv_sizeof_unsigned_char=3D1
ac_cv_sizeof_unsigned_int=3D4
ac_cv_sizeof_unsigned_long=3D4
ac_cv_sizeof_unsigned_long_int=3D4
ac_cv_sizeof_unsigned_long_long=3D8
ac_cv_sizeof_unsigned_long_long_int=3D8
ac_cv_sizeof_unsigned_short=3D2
ac_cv_sizeof_unsigned_short_int=3D2
ac_cv_sizeof_void_p=3D4
ac_cv_sizeof_wchar_t=3D4
ac_cv_strerror_r_SUSv3=3Dno
ac_cv_sys_restartable_syscalls=3Dyes
ac_cv_time_r_type=3DPOSIX
ac_cv_type_uid_t=3D'{ac_cv_type_uid_t=3Dyes}'
ac_cv_uchar=3Dno
ac_cv_uint=3Dyes
ac_cv_ulong=3Dyes
ac_cv_ushort=3Dyes
ac_cv_va_copy=3Dyes
ac_cv_va_val_copy=3Dyes
am_cv_CC_dependencies_compiler_type=3Dnone
am_cv_func_working_getline=3Dyes
am_cv_langinfo_codeset=3Dyes
am_cv_scanf_lld=3Dyes
apr_cv_process_shared_works=3Dno
apr_cv_tcp_nodelay_with_cork=3Dyes
as_cv_unaligned_access=3Dno
ax_cv_check_cflags___Wall=3Dyes
ax_cv_check_cflags___Wcast_qual=3Dyes
ax_cv_check_cflags___Wextra=3Dyes
ax_cv_check_cflags___Wmissing_prototypes=3Dyes
ax_cv_check_cflags___Wno_deprecated_declarations=3Dyes
ax_cv_check_cflags___Wpointer_arith=3Dyes
ax_cv_check_cflags___Wshadow=3Dyes
ax_cv_check_cflags___Wstrict_prototypes=3Dyes
ax_cv_check_cflags___Wwrite_strings=3Dyes
bash_cv_dup2_broken=3Dno
bash_cv_func_sigsetjmp=3Dmissing
bash_cv_func_strcoll_broken=3Dno
bash_cv_getcwd_calls_popen=3Dno
bash_cv_getenv_redef=3Dyes
bash_cv_have_mbstate_t=3Dyes
bash_cv_job_control_missing=3Dpresent
bash_cv_must_reinstall_sighandlers=3Dno
bash_cv_opendir_not_robust=3Dno
bash_cv_pgrp_pipe=3Dno
bash_cv_printf_a_format=3Dyes
bash_cv_sys_named_pipes=3Dpresent
bash_cv_sys_siglist=3Dyes
bash_cv_type_rlimit=3Drlim_t
bash_cv_ulimit_maxfds=3Dyes
bash_cv_under_sys_siglist=3Dyes
bash_cv_unusable_rtsigs=3Dno
compat_cv_func_basename_works=3Dno
compat_cv_func_dirname_works=3Dno
compat_cv_func_snprintf_works=3Dyes
cvs_cv_func_printf_ptr=3Dyes
db_cv_align_t=3D'unsigned long long'
db_cv_alignp_t=3D'unsigned long'
db_cv_fcntl_f_setfd=3Dyes
db_cv_path_ar=3D/usr/bin/ar
db_cv_path_chmod=3D/bin/chmod
db_cv_path_cp=3D/bin/cp
db_cv_path_ln=3D/bin/ln
db_cv_path_mkdir=3D/bin/mkdir
db_cv_path_ranlib=3D/usr/bin/ranlib
db_cv_path_rm=3D/bin/rm
db_cv_path_sh=3D/bin/sh
db_cv_path_strip=3D/usr/bin/strip
db_cv_spinlocks=3Dno
db_cv_sprintf_count=3Dyes
ettercap_cv_type_socklen_t=3Dyes
fu_cv_sys_stat_statfs2_bsize=3Dyes
gl_cv_func_btowc_eof=3Dyes
gl_cv_func_fstatat_zero_flag=3Dyes
gl_cv_func_mbrtowc_incomplete_state=3Dyes
gl_cv_func_mbrtowc_nul_retval=3Dyes
gl_cv_func_mbrtowc_null_arg=3Dyes
gl_cv_func_mbrtowc_retval=3Dyes
gl_cv_func_mbrtowc_sanitycheck=3Dyes
gl_cv_func_wcrtomb_retval=3Dyes
gl_cv_func_wctob_works=3Dyes
glib_cv___va_copy=3Dyes
glib_cv_compliant_posix_memalign=3D1
glib_cv_has__inline=3Dyes
glib_cv_has__inline__=3Dyes
glib_cv_hasinline=3Dyes
glib_cv_have_qsort_r=3Dyes
glib_cv_long_long_format=3Dll
glib_cv_rtldglobal_broken=3Dno
glib_cv_sane_realloc=3Dyes
glib_cv_sizeof_gmutex=3D24
glib_cv_sizeof_intmax_t=3D8
glib_cv_sizeof_ptrdiff_t=3D4
glib_cv_sizeof_size_t=3D4
glib_cv_sizeof_system_thread=3D4
glib_cv_stack_grows=3Dno
glib_cv_strlcpy=3Dno
glib_cv_sys_pthread_cond_timedwait_posix=3Dyes
glib_cv_sys_pthread_getspecific_posix=3Dyes
glib_cv_sys_pthread_mutex_trylock_posix=3Dyes
glib_cv_sys_use_pid_niceness_surrogate=3Dyes
glib_cv_uscore=3Dno
glib_cv_use_pid_surrogate=3Dyes
glib_cv_va_copy=3Dyes
glib_cv_va_val_copy=3Dyes
gt_cv_locale_fr=3Dfr_FR
jm_cv_func_working_readdir=3Dyes
lf_cv_sane_realloc=3Dyes
lftp_cv_va_val_copy=3Dyes
libIDL_cv_long_long_format=3Dll
lt_cv_sys_lib_dlsearch_path_spec=3D'/usr/lib /lib'
mr_cv_target_elf=3Dyes
mysql_cv_func_atomic_add=3Dno
mysql_cv_func_atomic_sub=3Dno
nano_cv_func_regexec_segv_emptystr=3Dno
php_cv_lib_cookie_io_functions_use_off64_t=3Dyes
pkg_cv_LIBMPDCLIENT_CFLAGS=3D' '
pkg_cv_LIBMPDCLIENT_LIBS=3D'-lmpdclient  '
rpppoe_cv_pack_bitfields=3Drev
rsync_cv_HAVE_BROKEN_LARGEFILE=3Dno
rsync_cv_HAVE_BROKEN_READDIR=3Dno
rsync_cv_HAVE_C99_VSNPRINTF=3Dyes
rsync_cv_HAVE_GETTIMEOFDAY_TZ=3Dyes
rsync_cv_HAVE_LONGLONG=3Dyes
rsync_cv_HAVE_OFF64_T=3Dno
rsync_cv_HAVE_SECURE_MKSTEMP=3Dyes
rsync_cv_HAVE_SHORT_INO_T=3Dno
rsync_cv_HAVE_SOCKETPAIR=3Dyes
rsync_cv_HAVE_UNSIGNED_CHAR=3Dno
rsync_cv_REPLACE_INET_ATON=3Dno
rsync_cv_REPLACE_INET_NTOA=3Dno
samba_cv_BROKEN_NISPLUS_INCLUDE_FILES=3Dyes
samba_cv_BROKEN_REDHAT_7_SYSTEM_HEADERS=3Dno
samba_cv_HAVE_BROKEN_FCNTL64_LOCKS=3Dno
samba_cv_HAVE_BROKEN_GETGROUPS=3Dno
samba_cv_HAVE_BROKEN_LINUX_SENDFILE=3Dyes
samba_cv_HAVE_BROKEN_READDIR=3Dyes
samba_cv_HAVE_BROKEN_READDIR_NAME=3Dno
samba_cv_HAVE_C99_VSNPRINTF=3Dyes
samba_cv_HAVE_DEV64_T=3Dno
samba_cv_HAVE_DEVICE_MAJOR_FN=3Dyes
samba_cv_HAVE_DEVICE_MINOR_FN=3Dyes
samba_cv_HAVE_DQB_FSOFTLIMIT=3Dno
samba_cv_HAVE_EXPLICIT_LARGEFILE_SUPPORT=3Dyes
samba_cv_HAVE_FAM_H=3Dno
samba_cv_HAVE_FCNTL_LOCK=3Dyes
samba_cv_HAVE_FTRUNCATE_EXTEND=3Dyes
samba_cv_HAVE_FUNCTION_MACRO=3Dyes
samba_cv_HAVE_GETTIMEOFDAY_TZ=3Dyes
samba_cv_HAVE_IFACE_AIX=3Dno
samba_cv_HAVE_IFACE_IFCONF=3Dyes
samba_cv_HAVE_IFACE_IFREQ=3Dyes
samba_cv_HAVE_INO64_T=3Dno
samba_cv_HAVE_INT16_FROM_RPC_RPC_H=3Dno
samba_cv_HAVE_INT32_FROM_RPC_RPC_H=3Dno
samba_cv_HAVE_IRIX_SPECIFIC_CAPABILITIES=3Dno
samba_cv_HAVE_KERNEL_CHANGE_NOTIFY=3Dyes
samba_cv_HAVE_KERNEL_OPLOCKS_LINUX=3Dyes
samba_cv_HAVE_KERNEL_SHARE_MODES=3Dyes
samba_cv_HAVE_MAKEDEV=3Dyes
samba_cv_HAVE_MMAP=3Dyes
samba_cv_HAVE_NATIVE_ICONV=3Dyes
samba_cv_HAVE_OFF64_T=3Dno
samba_cv_HAVE_ROOT=3Dyes
samba_cv_HAVE_RPC_AUTH_ERROR_CONFLICT=3Dno
samba_cv_HAVE_SECURE_MKSTEMP=3Dyes
samba_cv_HAVE_SENDFILE64=3Dyes
samba_cv_HAVE_SENDFILE=3Dyes
samba_cv_HAVE_SOCK_SIN_LEN=3Dno
samba_cv_HAVE_STAT_ST_BLKSIZE=3Dyes
samba_cv_HAVE_STAT_ST_BLOCKS=3Dyes
samba_cv_HAVE_STRUCT_DIR64=3Dno
samba_cv_HAVE_STRUCT_DIRENT64=3Dyes
samba_cv_HAVE_STRUCT_FLOCK64=3Dyes
samba_cv_HAVE_TRUNCATED_SALT=3Dno
samba_cv_HAVE_UINT16_FROM_RPC_RPC_H=3Dno
samba_cv_HAVE_UINT32_FROM_RPC_RPC_H=3Dno
samba_cv_HAVE_UNSIGNED_CHAR=3Dyes
samba_cv_HAVE_UTIMBUF=3Dyes
samba_cv_HAVE_UT_UT_ADDR=3Dyes
samba_cv_HAVE_UT_UT_EXIT=3Dyes
samba_cv_HAVE_UT_UT_HOST=3Dyes
samba_cv_HAVE_UT_UT_ID=3Dyes
samba_cv_HAVE_UT_UT_NAME=3Dyes
samba_cv_HAVE_UT_UT_PID=3Dyes
samba_cv_HAVE_UT_UT_TIME=3Dyes
samba_cv_HAVE_UT_UT_TV=3Dyes
samba_cv_HAVE_UT_UT_TYPE=3Dyes
samba_cv_HAVE_UT_UT_USER=3Dyes
samba_cv_HAVE_UX_UT_SYSLEN=3Dno
samba_cv_HAVE_VA_COPY=3Dyes
samba_cv_HAVE_WORKING_AF_LOCAL=3Dyes
samba_cv_HAVE_Werror=3Dyes
samba_cv_LINUX_LFS_SUPPORT=3Dyes
samba_cv_PUTUTLINE_RETURNS_UTMP=3Dyes
samba_cv_QUOTA_WORKS=3Dyes
samba_cv_REALPATH_TAKES_NULL=3Dyes
samba_cv_REPLACE_GETPASS=3Dyes
samba_cv_REPLACE_INET_NTOA=3Dno
samba_cv_REPLACE_READDIR=3Dno
samba_cv_RUN_QUOTA_TESTS=3Dyes
samba_cv_SEEKDIR_RETURNS_VOID=3Dyes
samba_cv_SIZEOF_DEV_T=3Dyes
samba_cv_SIZEOF_INO_T=3Dyes
samba_cv_SIZEOF_OFF_T=3Dyes
samba_cv_SYSCONF_SC_NGROUPS_MAX=3Dyes
samba_cv_SYSCONF_SC_NPROCESSORS_ONLN=3Dyes
samba_cv_SYSCONF_SC_NPROC_ONLN=3Dno
samba_cv_SYSCONF_SC_PAGESIZE=3Dyes
samba_cv_SYSQUOTA_FOUND=3Dyes
samba_cv_SYSQUOTA_WORKS=3Dyes
samba_cv_SYSQUOTA_WORKS_XFS=3Dyes
samba_cv_TRY_QUOTAS=3Dno
samba_cv_TRY_SYS_QUOTAS=3Dyes
samba_cv_USE_SETEUID=3Dyes
samba_cv_USE_SETRESUID=3Dyes
samba_cv_USE_SETREUID=3Dyes
samba_cv_USE_SETUIDX=3Dyes
samba_cv_WE_USE_SYS_QUOTAS=3Dyes
samba_cv_WITH_AFS=3Dno
samba_cv_WITH_FAKE_KASERVER=3Dno
samba_cv_WITH_QUOTAS=3Dauto
samba_cv_WITH_SYS_QUOTAS=3Dauto
samba_cv_WITH_VFS_AFSACL=3Dno
samba_cv_compiler_supports_ll=3Dyes
samba_cv_found_xfs_header=3Dyes
samba_cv_have_longlong=3Dyes
samba_cv_have_setresgid=3Dyes
samba_cv_have_setresuid=3Dyes
samba_cv_immediate_structures=3Dyes
samba_cv_optimize_out_funcation_calls=3Dyes
samba_cv_sig_atomic_t=3Dyes
samba_cv_socklen_t=3Dyes
samba_cv_struct_timespec=3Dyes
samba_cv_sysquotas_file=3Dlib/sysquotas_linux.c
samba_cv_unixsocket=3Dyes
samba_cv_volatile=3Dyes
sc_cv_termios_ispeed=3Dyes
screen_cv_sys_bcopy_overlap=3Dno
screen_cv_sys_fifo_broken_impl=3Dyes
screen_cv_sys_fifo_usable=3Dyes
screen_cv_sys_memcpy_overlap=3Dno
screen_cv_sys_memmove_overlap=3Dno
screen_cv_sys_select_broken_retval=3Dno
screen_cv_sys_sockets_nofs=3Dno
screen_cv_sys_sockets_usable=3Dyes
screen_cv_sys_terminfo_used=3Dyes
shadow_cv_logdir=3D/var/log
shadow_cv_maildir=3D/var/spool/mail
shadow_cv_mailfile=3DMailbox
shadow_cv_passwd_dir=3D/usr/bin
shadow_cv_utmpdir=3D/var/run
slrn_cv_va_val_copy=3Dyes
sudo_cv_func_unsetenv_void=3Dno
tcl_cv_api_serial=3Dtermios
utils_cv_sys_open_max=3D1019

## ----------------- ##
## Output variables. ##
## ----------------- ##

ACLOCAL=3D'${SHELL} /media/yocto/var_yocto/var_yocto/rpi-build/tmp/work/arm=
v6-vfp-poky-linux-gnueabi/mpc/0.23-r0/mpc-0.23/missing --run aclocal-1.12'
AMDEPBACKSLASH=3D''
AMDEP_FALSE=3D''
AMDEP_TRUE=3D'#'
AMTAR=3D'$${TAR-tar}'
AM_CFLAGS=3D''
AM_CPPFLAGS=3D''
AUTOCONF=3D'${SHELL} /media/yocto/var_yocto/var_yocto/rpi-build/tmp/work/ar=
mv6-vfp-poky-linux-gnueabi/mpc/0.23-r0/mpc-0.23/missing --run autoconf'
AUTOHEADER=3D'${SHELL} /media/yocto/var_yocto/var_yocto/rpi-build/tmp/work/=
armv6-vfp-poky-linux-gnueabi/mpc/0.23-r0/mpc-0.23/missing --run autoheader'
AUTOMAKE=3D'${SHELL} /media/yocto/var_yocto/var_yocto/rpi-build/tmp/work/ar=
mv6-vfp-poky-linux-gnueabi/mpc/0.23-r0/mpc-0.23/missing --run automake-1.12=
'
AWK=3D'gawk'
CC=3D'arm-poky-linux-gnueabi-gcc  -march=3Darmv6 -mthumb-interwork -mfloat-=
abi=3Dsoftfp  --sysroot=3D/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sy=
sroots/raspberrypi -std=3Dgnu99'
CCDEPMODE=3D'depmode=3Dnone'
CFLAGS=3D'-O2 -pipe -g -feliminate-unused-debug-types -Wall -Wextra -Wno-de=
precated-declarations -Wmissing-prototypes -Wshadow -Wpointer-arith -Wstric=
t-prototypes -Wcast-qual -Wwrite-strings'
CPP=3D'arm-poky-linux-gnueabi-gcc -E --sysroot=3D/media/yocto/var_yocto/var=
_yocto/rpi-build/tmp/sysroots/raspberrypi  -march=3Darmv6 -mthumb-interwork=
 -mfloat-abi=3Dsoftfp'
CPPFLAGS=3D''
CYGPATH_W=3D'echo'
DEFS=3D''
DEPDIR=3D'.deps'
ECHO_C=3D''
ECHO_N=3D'-n'
ECHO_T=3D''
EGREP=3D'/bin/grep -E'
EXEEXT=3D''
GREP=3D'/bin/grep'
HAVE_ICONV_FALSE=3D'#'
HAVE_ICONV_TRUE=3D''
ICONV_CPPFLAGS=3D''
ICONV_LIBS=3D''
INSTALL_DATA=3D'${INSTALL} -m 644'
INSTALL_PROGRAM=3D'${INSTALL}'
INSTALL_SCRIPT=3D'${INSTALL}'
INSTALL_STRIP_PROGRAM=3D'$(install_sh) -c -s'
LDFLAGS=3D'-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed'
LIBMPDCLIENT_CFLAGS=3D' '
LIBMPDCLIENT_LIBS=3D'-lmpdclient  '
LIBOBJS=3D''
LIBS=3D''
LTLIBOBJS=3D''
MAKEINFO=3D'${SHELL} /media/yocto/var_yocto/var_yocto/rpi-build/tmp/work/ar=
mv6-vfp-poky-linux-gnueabi/mpc/0.23-r0/mpc-0.23/missing --run makeinfo'
MKDIR_P=3D'/bin/mkdir -p'
MPC_LIBS=3D' -lnsl'
OBJEXT=3D'o'
PACKAGE=3D'mpc'
PACKAGE_BUGREPORT=3D'musicpd-dev-team@lists.sourceforge.net'
PACKAGE_NAME=3D'mpc'
PACKAGE_STRING=3D'mpc 0.23'
PACKAGE_TARNAME=3D'mpc'
PACKAGE_URL=3D''
PACKAGE_VERSION=3D'0.23'
PATH_SEPARATOR=3D':'
PKG_CONFIG=3D'/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_6=
4-linux/usr/bin/pkg-config'
PKG_CONFIG_LIBDIR=3D'/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroot=
s/raspberrypi//usr/lib/pkgconfig'
PKG_CONFIG_PATH=3D'/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/=
raspberrypi//usr/lib/pkgconfig:/media/yocto/var_yocto/var_yocto/rpi-build/t=
mp/sysroots/raspberrypi/usr/share/pkgconfig'
SET_MAKE=3D''
SHELL=3D'/bin/sh'
STRIP=3D'arm-poky-linux-gnueabi-strip'
VERSION=3D'0.23'
ac_ct_CC=3D''
am__EXEEXT_FALSE=3D''
am__EXEEXT_TRUE=3D''
am__fastdepCC_FALSE=3D''
am__fastdepCC_TRUE=3D'#'
am__include=3D'include'
am__isrc=3D''
am__leading_dot=3D'.'
am__nodep=3D''
am__quote=3D''
am__tar=3D'$${TAR-tar} chof - "$$tardir"'
am__untar=3D'$${TAR-tar} xf -'
bindir=3D'/usr/bin'
build_alias=3D'x86_64-linux'
datadir=3D'/usr/share'
datarootdir=3D'${prefix}/share'
docdir=3D'${datarootdir}/doc/${PACKAGE_TARNAME}'
dvidir=3D'${docdir}'
exec_prefix=3D'/usr'
host_alias=3D'arm-poky-linux-gnueabi'
htmldir=3D'${docdir}'
includedir=3D'/usr/include'
infodir=3D'/usr/share/info'
install_sh=3D'${SHELL} /media/yocto/var_yocto/var_yocto/rpi-build/tmp/work/=
armv6-vfp-poky-linux-gnueabi/mpc/0.23-r0/mpc-0.23/install-sh'
libdir=3D'/usr/lib'
libexecdir=3D'/usr/lib/mpc'
localedir=3D'${datarootdir}/locale'
localstatedir=3D'/var'
mandir=3D'/usr/share/man'
mkdir_p=3D'$(MKDIR_P)'
oldincludedir=3D'/usr/include'
pdfdir=3D'${docdir}'
prefix=3D'/usr'
program_transform_name=3D's,x,x,'
psdir=3D'${docdir}'
sbindir=3D'/usr/sbin'
sharedstatedir=3D'/com'
sysconfdir=3D'/etc'
target_alias=3D'arm-poky-linux-gnueabi'

## ----------- ##
## confdefs.h. ##
## ----------- ##

/* confdefs.h */
#define PACKAGE_NAME "mpc"
#define PACKAGE_TARNAME "mpc"
#define PACKAGE_VERSION "0.23"
#define PACKAGE_STRING "mpc 0.23"
#define PACKAGE_BUGREPORT "musicpd-dev-team@lists.sourceforge.net"
#define PACKAGE_URL ""
#define PACKAGE "mpc"
#define VERSION "0.23"
#define HAVE_LANGINFO_CODESET 1
#define STDC_HEADERS 1
#define HAVE_SYS_TYPES_H 1
#define HAVE_SYS_STAT_H 1
#define HAVE_STDLIB_H 1
#define HAVE_STRING_H 1
#define HAVE_MEMORY_H 1
#define HAVE_STRINGS_H 1
#define HAVE_INTTYPES_H 1
#define HAVE_STDINT_H 1
#define HAVE_UNISTD_H 1
#define HAVE_ICONV 1

configure: exit 2
ERROR: oe_runconf failed
ERROR: Function failed: do_configure (see /media/yocto/var_yocto/var_yocto/=
rpi-build/tmp/work/armv6-vfp-poky-linux-gnueabi/mpc/0.23-r0/temp/log.do_con=
figure.11276 for further information)

--------------010505080803070704030907
Content-Type: text/plain; charset=UTF-8;
 name="libmpdclient_2.8.bb"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="libmpdclient_2.8.bb"

SECTION = "multimedia"
SUMMARY = "A stable, documented, asynchronous API library for interfacing MPD in the C, C++ & Objective C languages"
HOMEPAGE = "http://www.musicpd.org/libs/libmpdclient/"


LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=06b9dfd2f197dc514d8ef06549684b77"

SRC_URI="http://www.musicpd.org/download/libmpdclient/2/${BP}.tar.gz"
SRC_URI[md5sum] = "a161972c3f4f8241a68a14cd8a42fb82"
SRC_URI[sha256sum] = "0d4c2b362426d876b3fee2b3775f22d8e65205c349ece4767208f816fb46f05c"

EXTRA_OECONF="--disable-documentation"

inherit autotools

do_install_append () {
    find "${D}" -name 'vala' -exec rm -fr {} +
}


--------------010505080803070704030907
Content-Type: text/plain; charset=UTF-8;
 name="mpc_0.23.bb"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="mpc_0.23.bb"

SECTION = "console/multimedia"
SUMMARY = "MPC is a MusicPD commande-line client"
HOMEPAGE = "http://www.musicpd.org/clients/mpc/"

DEPENDS = "libmpdclient"
RRECOMMENDS_${PN} = "mpd"

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"

SRC_URI="http://www.musicpd.org/download/mpc/0/${BP}.tar.bz2"
SRC_URI[md5sum] = "2b2c093e80b37fc5717caf319986c52b"
SRC_URI[sha256sum] = "29bab8f3018507c761eabcd9bb86856b3c3436f3ee1ba0456b0e17fc1c3729c7"

inherit autotools pkgconfig



--------------010505080803070704030907--
