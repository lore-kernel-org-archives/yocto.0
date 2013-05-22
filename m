Return-Path: <precipice.development@gmail.com>
Received: from mail-pb0-f42.google.com (mail-pb0-f42.google.com
	[209.85.160.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0E8EE0129D
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 21:12:36 -0700 (PDT)
Received: by mail-pb0-f42.google.com with SMTP id uo1so1284824pbc.15
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 21:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=q+/jILlqAR47LBvApWjWOsl4fh6gw7vbc4zTJ1JfasI=;
	b=J1YpGCPE/waxzezAy1GomiV1Lxvss6L6Ki3KKNyINdhbhG54jDUWcXz2Zy0P+0dE35
	YFudREdfA4ulM+njTaZBik6UjKDCkqQ6H/VhbeM2zhbop4vUZCnvvxeUkqYHlnSqCOg2
	/ESb7CS/aZKNpCkAVh5u8guKT/G7zvFgB5hnMJB+4cswh7HWBKmW/RGFcI7ndJKEMEB2
	zc+Qrng4/Rvvzg42OOZuFf5bP70COCBm4OokTuUPSDNgLyXhCjqNJfWE2ybjpuxisyFW
	5bfJRhE2rlnPKxhbXf2Yw9yE8VyS5m7SOS8TUVArI+amo+yPftIstwc88uFH3DQ9RRer
	hUCw==
MIME-Version: 1.0
X-Received: by 10.66.121.108 with SMTP id lj12mr6501009pab.51.1369195956317;
	Tue, 21 May 2013 21:12:36 -0700 (PDT)
Received: by 10.68.208.67 with HTTP; Tue, 21 May 2013 21:12:36 -0700 (PDT)
Date: Tue, 21 May 2013 21:12:36 -0700
Message-ID: <CAN0nBNhwxY1hxj+BAyDKKkVnHSOpcxLfZB+vOq5MQqVvZQiSjA@mail.gmail.com>
From: Precipice Development <precipice.development@gmail.com>
To: yocto@yoctoproject.org
Subject: ADT Install Issues
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
X-List-Received-Date: Wed, 22 May 2013 04:12:36 -0000
Content-Type: multipart/alternative; boundary=047d7b07230c9ab84404dd46c606

--047d7b07230c9ab84404dd46c606
Content-Type: text/plain; charset=ISO-8859-1

Hello

I have been trying to get the ADT setup for Eclipse working following the
guide at
http://www.yoctoproject.org/docs/1.4/adt-manual/adt-manual.html#autotools-based-projects.
 Install went smoothly.  On the kernel and image side of things I am able
to build a kernel and rootfs, deploy it to a RouterStation Pro
successfully.  Everything else seems to work.

Eclipse gives me an error the the compiler cannot create executables.  The
relevant portion of the config.log files seems to be:

configure:3177: $? = 0
configure:3166: mips-poky-linux-gcc  -meb -mabi=32   -mhard-float
-march=mips32 --sysroot=/home/jph/test-yocto/mips -v >&5
Using built-in specs.
COLLECT_GCC=mips-poky-linux-gcc
COLLECT_LTO_WRAPPER=/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/lto-wrapper
Target: mips-poky-linux
Configured with:
/srv/home/pokybuild/yocto-autobuilder-new/yocto-slave/nightly-mips/build/build/tmp/work-shared/gcc-4.7.2-r19/gcc-4.7.2/configure
--build=x86_64-linux --host=i686-pokysdk-linux --target=mips-poky-linux
--prefix=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr
--exec_prefix=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr
--bindir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux
--sbindir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux
--libexecdir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/libexec/mips32-poky-linux
--datadir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/share
--sysconfdir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/etc
--sharedstatedir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/com
--localstatedir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/var
--libdir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/lib/mips32-poky-linux
--includedir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/include
--oldincludedir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/include
--infodir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/share/info
--mandir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/share/man
--disable-silent-rules --disable-dependency-tracking
--with-libtool-sysroot=/srv/home/pokybuild/yocto-autobuilder-new/yocto-slave/nightly-mips/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
--with-gnu-ld --enable-shared --enable-languages=c,c++
--enable-threads=posix --enable-multilib --enable-c99 --enable-long-long
--enable-symvers=gnu --enable-libstdcxx-pch
--program-prefix=mips-poky-linux- --without-local-prefix
--enable-target-optspace --enable-lto --enable-libssp --disable-bootstrap
--disable-libmudflap --with-system-zlib --with-linker-hash-style=sysv
--enable-linker-build-id --with-ppl=no --with-cloog=no
--enable-checking=release --enable-cheaders=c_global
--with-gxx-include-dir=/opt/poky/1.4/sysroots/mips32-poky-linux/usr/include/c++
--with-build-time-tools=/srv/home/pokybuild/yocto-autobuilder-new/yocto-slave/nightly-mips/build/build/tmp/sysroots/x86_64-linux/usr/mips-poky-linux/bin
--with-sysroot=/opt/poky/1.4/sysroots/mips32-poky-linux
--with-build-sysroot=/srv/home/pokybuild/yocto-autobuilder-new/yocto-slave/nightly-mips/build/build/tmp/sysroots/qemumips
--disable-libunwind-exceptions --disable-libssp --disable-libgomp
--disable-libmudflap
--with-mpfr=/srv/home/pokybuild/yocto-autobuilder-new/yocto-slave/nightly-mips/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
--with-mpc=/srv/home/pokybuild/yocto-autobuilder-new/yocto-slave/nightly-mips/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
--enable-nls --enable-__cxa_atexit
Thread model: posix
gcc version 4.7.2 (GCC)
configure:3177: $? = 0
configure:3166: mips-poky-linux-gcc  -meb -mabi=32   -mhard-float
-march=mips32 --sysroot=/home/jph/test-yocto/mips -V >&5
mips-poky-linux-gcc: error: unrecognized command line option '-V'
mips-poky-linux-gcc: fatal error: no input files
compilation terminated.
configure:3177: $? = 1
configure:3166: mips-poky-linux-gcc  -meb -mabi=32   -mhard-float
-march=mips32 --sysroot=/home/jph/test-yocto/mips -qversion >&5
mips-poky-linux-gcc: error: unrecognized command line option '-qversion'
mips-poky-linux-gcc: fatal error: no input files
compilation terminated.
configure:3177: $? = 1
configure:3197: checking whether the C compiler works
configure:3219: mips-poky-linux-gcc  -meb -mabi=32   -mhard-float
-march=mips32 --sysroot=/home/jph/test-yocto/mips  -g -O0
 --sysroot=/home/jph/adt/1.4/sysroots  --sysroot=/home/jph/adt/1.4/sysroots
 --sysroot=/home/jph/adt/1.4/sysroots conftest.c  >&5
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find crt1.o: No such file or directory
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find crti.o: No such file or directory
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find crtbegin.o: No such file or directory
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find -lgcc
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find -lgcc_s
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find -lc
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find -lgcc
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find -lgcc_s
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find crtend.o: No such file or directory
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find crtn.o: No such file or directory
collect2: error: ld returned 1 exit status
configure:3223: $? = 1
configure:3261: result: no
configure: failed program was:

Full log is below

My Eclipse version is Juno
Version: Juno Service Release 2
Build id: 20130225-0426

ADT Plugin is:
Yocto Project ADT Plug-in 1.4.0.201304182148 org.yocto.sdk.feature.group
yoctoproject.

I got the ADT installer from
http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/adt-installer/

I have also tried this from the command line as per instructions in the
link above with the same result.

I have tried a new yocto install and rebuilt from scratch.  I am stuck -
any ideas?

Regards

Jerry Henzel


________________________________________________________
*******************Config.log************************************************
--------------------------------------------------------------------------------------------------

This file contains any messages produced by compilers while
running configure, to aid debugging if configure makes a mistake.

It was created by testApp2 configure 0.1.0, which was
generated by GNU Autoconf 2.69.  Invocation command line was

  $ /home/jph/workspace/testApp2/configure
--with-libtool-sysroot=/home/jph/adt/1.4/sysroots --host=mips-poky-linux
--build=i686-linux --target=mips-poky-linux

## --------- ##
## Platform. ##
## --------- ##

hostname = paris
uname -m = i686
uname -r = 3.2.0-4-686-pae
uname -s = Linux
uname -v = #1 SMP Debian 3.2.41-2

/usr/bin/uname -p = unknown
/bin/uname -X     = unknown

/bin/arch              = unknown
/usr/bin/arch -k       = unknown
/usr/convex/getsysinfo = unknown
/usr/bin/hostinfo      = unknown
/bin/machine           = unknown
/usr/bin/oslevel       = unknown
/bin/universe          = unknown

PATH: /home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin
PATH:
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux
PATH: /home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin
PATH:
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux
PATH: /home/jph/bin
PATH: /usr/sbin
PATH: /sbin
PATH: /usr/local/bin
PATH: /usr/bin
PATH: /bin
PATH: /usr/local/games
PATH: /usr/games


## ----------- ##
## Core tests. ##
## ----------- ##

configure:2002: loading site script
/home/jph/adt/1.4/site-config-mips32-poky-linux
| ac_cv_c_littleendian=${ac_cv_c_littleendian=yes}
| ac_cv_c_bigendian=${ac_cv_c_bigendian=no}
|
| # libnet
| ac_cv_libnet_endianess=${ac_cv_libnet_endianess=lil}
|
| # libmemcached
| ac_cv_c_endian=little
| # general
| ac_cv_sizeof_char=${ac_cv_sizeof_char=1}
| ac_cv_sizeof_unsigned_char=${ac_cv_sizeof_unsigned_char=1}
| ac_cv_sizeof_char_p=${ac_cv_sizeof_char_p=4}
| ac_cv_sizeof_unsigned_char_p=${ac_cv_sizeof_unsigned_char_p=4}
| ac_cv_sizeof_int=${ac_cv_sizeof_int=4}
| ac_cv_sizeof_unsigned_int=${ac_cv_sizeof_unsigned_int=4}
| ac_cv_sizeof_int_p=${ac_cv_sizeof_int_p=4}
| ac_cv_sizeof_long=${ac_cv_sizeof_long=4}
| ac_cv_sizeof_unsigned_long=${ac_cv_sizeof_unsigned_long=4}
| ac_cv_sizeof_long_long=${ac_cv_sizeof_long_long=8}
| ac_cv_sizeof_unsigned_long_long=${ac_cv_sizeof_unsigned_long_long=8}
| ac_cv_sizeof_short=${ac_cv_sizeof_short=2}
| ac_cv_sizeof_unsigned_short=${ac_cv_sizeof_unsigned_short=2}
| ac_cv_sizeof_size_t=${ac_cv_sizeof_size_t=4}
| ac_cv_sizeof_ssize_t=${ac_cv_sizeof_ssize_t=4}
| ac_cv_sizeof_void_p=${ac_cv_sizeof_void_p=4}
| ac_cv_sizeof_long_p=${ac_cv_sizeof_long_p=4}
| ac_cv_sizeof_float=${ac_cv_sizeof_float=4}
| ac_cv_sizeof_off_t=${ac_cv_sizeof_off_t=4}
| ac_cv_sizeof_uid_t=${ac_cv_sizeof_uid_t=4}
| ac_cv_sizeof_gid_t=${ac_cv_sizeof_gid_t=4}
| ac_cv_sizeof_ino_t=${ac_cv_sizeof_ino_t=4}
| ac_cv_sizeof_dev_t=${ac_cv_sizeof_dev_t=8}
|
ac_cv_func_lstat_dereferences_slashed_symlink=${ac_cv_func_lstat_dereferences_slashed_symlink=yes}
| ac_cv_func_lstat_empty_string_bug=${ac_cv_func_lstat_empty_string_bug=no}
| ac_cv_func_pthread_key_delete=${ac_cv_func_pthread_key_delete=yes}
| ac_cv_func_setvbuf_reversed=${ac_cv_func_setvbuf_reversed=no}
| ac_cv_func_stat_empty_string_bug=${ac_cv_func_stat_empty_string_bug=no}
|
ac_cv_func_stat_ignores_trailing_slash=${ac_cv_func_stat_ignores_trailing_slash=no}
| ac_cv_va_val_copy=${ac_cv_va_val_copy=yes}
|
| ac_cv_header_netinet_sctp_h=${ac_cv_header_netinet_sctp_h=no}
| ac_cv_header_netinet_sctp_uio_h=${ac_cv_header_netinet_sctp_uio_h=no}
| ac_cv_linux_vers=${ac_cv_linux_vers=2}
| ac_cv_sctp=${ac_cv_sctp=no}
|
| apr_cv_process_shared_works=${apr_cv_process_shared_works=no}
| apr_cv_tcp_nodelay_with_cork=${apr_cv_tcp_nodelay_with_cork=yes}
|
| ac_cv_path_ESD_CONFIG=no
| lf_cv_sane_realloc=yes
| jm_cv_func_gettimeofday_clobber=no
| samba_cv_HAVE_GETTIMEOFDAY_TZ=yes
| bf_lsbf=1
| ac_cv_uchar=${ac_cv_uchar=no}
| ac_cv_uint=${ac_cv_uint=yes}
| ac_cv_ulong=${ac_cv_ulong=yes}
| ac_cv_ushort=${ac_cv_ushort=yes}
|
| # audacity
| ac_cv_file_lib_src_libmad_frame_h=${ac_cv_file_lib_src_libmad_frame_h=no}
|
| # bash
| ac_cv_c_long_double=${ac_cv_c_long_double=yes}
| bash_cv_func_sigsetjmp=${bash_cv_func_sigsetjmp=missing}
|
| # clamav
|
clamav_av_func_working_snprintf_long=${clamav_av_func_working_snprintf_long=yes}
| clamav_av_have_in_port_t=${clamav_av_have_in_port_t=yes}
| clamav_av_have_in_addr_t=${clamav_av_have_in_addr_t=yes}
| ac_cv_func_mmap_fixed_mapped=${ac_cv_func_mmap_fixed_mapped=yes}
|
| # cvs
| cvs_cv_func_printf_ptr=${cvs_cv_func_printf_ptr=yes}
|
| # db
| db_cv_alignp_t=${db_cv_alignp_t='unsigned long'}
| db_cv_align_t=${db_cv_align_t='unsigned long long'}
| db_cv_fcntl_f_setfd=${db_cv_fcntl_f_setfd=yes}
| db_cv_sprintf_count=${db_cv_sprintf_count=yes}
|
| # D-BUS
| ac_cv_func_posix_getpwnam_r=${ac_cv_func_posix_getpwnam_r=yes}
|
| # ettercap
| ettercap_cv_type_socklen_t=${ettercap_cv_type_socklen_t=yes}
|
| # gettext
| am_cv_func_working_getline=${am_cv_func_working_getline=yes}
|
| # glib
| glib_cv_sizeof_system_thread=${glib_cv_sizeof_system_thread=4}
| glib_cv_has__inline=${glib_cv_has__inline=yes}
| glib_cv_has__inline__=${glib_cv_has__inline__=yes}
| glib_cv_hasinline=${glib_cv_hasinline=yes}
| glib_cv_sane_realloc=${glib_cv_sane_realloc=yes}
| glib_cv_sizeof_gmutex=${glib_cv_sizeof_gmutex=24}
|
glib_cv_sys_pthread_cond_timedwait_posix=${glib_cv_sys_pthread_cond_timedwait_posix=yes}
|
glib_cv_sys_pthread_getspecific_posix=${glib_cv_sys_pthread_getspecific_posix=yes}
|
glib_cv_sys_pthread_mutex_trylock_posix=${glib_cv_sys_pthread_mutex_trylock_posix=yes}
| glib_cv_uscore=${glib_cv_uscore=no}
| glib_cv_va_val_copy=${glib_cv_va_val_copy=yes}
| glib_cv_rtldglobal_broken=${glib_cv_rtldglobal_broken=yes}
|
| # glib-2.0
| glib_cv_stack_grows=${glib_cv_stack_grows=no}
| utils_cv_sys_open_max=${utils_cv_sys_open_max=1015}
| glib_cv_use_pid_surrogate=${glib_cv_use_pid_surrogate=yes}
| ac_cv_alignof_guint32=4
| ac_cv_alignof_guint64=4
| ac_cv_alignof_unsigned_long=4
|
| # guile
| ac_cv_uchar=${ac_cv_uchar=no}
| ac_cv_uint=${ac_cv_uint=yes}
| ac_cv_ulong=${ac_cv_ulong=yes}
| ac_cv_ushort=${ac_cv_ushort=yes}
|
| # intercom
| ac_cv_func_fnmatch_works=${ac_cv_func_fnmatch_works=yes}
|
| # jikes-native
| ac_cv_sizeof_wchar_t=4
|
| # lftp
| ac_cv_need_trio=${ac_cv_need_trio=no}
| lftp_cv_va_val_copy=${lftp_cv_va_val_copy=yes}
|
| # libidl
| libIDL_cv_long_long_format=${libIDL_cv_long_long_format=ll}
|
| # libnet
| ac_cv_lbl_unaligned_fail=${ac_cv_lbl_unaligned_fail=no}
| ac_libnet_have_packet_socket=${ac_libnet_have_packet_socket=yes}
|
| # libxfce4util
| with_broken_putenv=${with_broken_putenv=no}
|
| # mysql
| mysql_cv_func_atomic_sub=${mysql_cv_func_atomic_sub=yes}
| mysql_cv_func_atomic_add=${mysql_cv_func_atomic_add=yes}
|
| # ORBit2
| ac_cv_alignof_CORBA_boolean=1
| ac_cv_alignof_CORBA_char=1
| ac_cv_alignof_CORBA_double=4
| ac_cv_alignof_CORBA_float=4
| ac_cv_alignof_CORBA_long=4
| ac_cv_alignof_CORBA_long_double=4
| ac_cv_alignof_CORBA_long_long=4
| ac_cv_alignof_CORBA_octet=1
| ac_cv_alignof_CORBA_pointer=4
| ac_cv_alignof_CORBA_short=2
| ac_cv_alignof_CORBA_struct=4
| ac_cv_alignof_CORBA_wchar=2
|
| # php
| ac_cv_pread=${ac_cv_pread=no}
| ac_cv_pwrite=${ac_cv_pwrite=no}
|
php_cv_lib_cookie_io_functions_use_off64_t=${php_cv_lib_cookie_io_functions_use_off64_t=yes}
|
| # rsync
| rsync_cv_HAVE_BROKEN_LARGEFILE=${rsync_cv_HAVE_BROKEN_LARGEFILE=no}
| rsync_cv_HAVE_SOCKETPAIR=${rsync_cv_HAVE_SOCKETPAIR=yes}
| rsync_cv_HAVE_LONGLONG=${rsync_cv_HAVE_LONGLONG=yes}
| rsync_cv_HAVE_OFF64_T=${rsync_cv_HAVE_OFF64_T=no}
| rsync_cv_HAVE_SHORT_INO_T=${rsync_cv_HAVE_SHORT_INO_T=no}
| rsync_cv_HAVE_UNSIGNED_CHAR=${rsync_cv_HAVE_UNSIGNED_CHAR=no}
| rsync_cv_HAVE_BROKEN_READDIR=${rsync_cv_HAVE_BROKEN_READDIR=no}
| rsync_cv_HAVE_GETTIMEOFDAY_TZ=${rsync_cv_HAVE_GETTIMEOFDAY_TZ=yes}
| rsync_cv_HAVE_C99_VSNPRINTF=${rsync_cv_HAVE_C99_VSNPRINTF=yes}
| rsync_cv_HAVE_SECURE_MKSTEMP=${rsync_cv_HAVE_SECURE_MKSTEMP=yes}
| rsync_cv_REPLACE_INET_NTOA=${rsync_cv_REPLACE_INET_NTOA=no}
| rsync_cv_REPLACE_INET_ATON=${rsync_cv_REPLACE_INET_ATON=no}
|
| # samba
| samba_cv_HAVE_GETTIMEOFDAY_TZ=${samba_cv_HAVE_GETTIMEOFDAY_TZ=yes}
|
| # screen
| screen_cv_sys_bcopy_overlap=${screen_cv_sys_bcopy_overlap=no}
| screen_cv_sys_memcpy_overlap=${screen_cv_sys_memcpy_overlap=no}
| screen_cv_sys_memmove_overlap=${screen_cv_sys_memmove_overlap=no}
| screen_cv_sys_fifo_broken_impl=${screen_cv_sys_fifo_broken_impl=yes}
| screen_cv_sys_fifo_usable=${screen_cv_sys_fifo_usable=yes}
|
screen_cv_sys_select_broken_retval=${screen_cv_sys_select_broken_retval=no}
| screen_cv_sys_sockets_nofs=${screen_cv_sys_sockets_nofs=no}
| screen_cv_sys_sockets_usable=${screen_cv_sys_sockets_usable=yes}
| screen_cv_sys_terminfo_used=${screen_cv_sys_terminfo_used=yes}
|
| # slrn
| slrn_cv_va_val_copy=${slrn_cv_va_val_copy=yes}
|
| # ssh
|
ac_cv_have_space_d_name_in_struct_dirent=${ac_cv_dirent_have_space_d_name=yes}
| ac_cv_have_broken_snprintf=${ac_cv_have_broken_snprintf=no}
| ac_cv_have_accrights_in_msghdr=${ac_cv_have_accrights_in_msghdr=no}
| ac_cv_have_control_in_msghdr=${ac_cv_have_control_in_msghdr=yes}
| ac_cv_type_struct_timespec=${ac_cv_type_struct_timespec=yes}
| ac_cv_have_openpty_ctty_bug=${ac_cv_have_openpty_ctty_bug=yes}
|
| # startup-notification
| lf_cv_sane_realloc=yes
|
| # xffm
| jm_cv_func_working_readdir=yes
|
| # xorg X11R7
| ac_cv_sys_linker_h=${ac_cv_sys_linker_h=no}
|
ac_cv_file__usr_share_X11_sgml_defs_ent=${ac_cv_file__usr_share_X11_sgml_defs_ent=no}
|
| # evolution-data-server
| ac_cv_libiconv_utf8=${ac_cv_libiconv_utf8=yes}
|
| #dbus
| ac_cv_have_abstract_sockets=${ac_cv_have_abstract_sockets=yes}
|
| #libpciaccess
| have_mtrr_h=yes
|
| #mozilla
| moz_cv_size_of_JS_BYTES_PER_WORD=4
| moz_cv_align_of_JS_ALIGN_OF_POINTER=4
| moz_cv_size_of_JS_BYTES_PER_DOUBLE=8
|
| #ofono
| ac_cv_lib_c_signalfd=${ac_cv_lib_c_signalfd=yes}
|
| #unfs-server
| nfsd_cv_broken_setfsuid=${nfsd_cv_broken_setfsuid=0}
| nfsd_cv_func_statfs=${nfsd_cv_func_statfs=statfs2_bsize}
| nfsd_cv_bsd_signals=${nfsd_cv_bsd_signals=yes}
|
| # dbind, in at-spi2-core
| ac_cv_alignof_char=1
| ac_cv_alignof_dbind_pointer=4
| ac_cv_alignof_dbind_struct=1
| ac_cv_alignof_dbus_bool_t=4
| ac_cv_alignof_dbus_int16_t=2
| ac_cv_alignof_dbus_int32_t=4
| ac_cv_alignof_dbus_int64_t=4
| ac_cv_alignof_double=4
| # apr
| ac_cv_file__dev_zero=${ac_cv_file__dev_zero=yes}
| ac_cv_sizeof_pid_t=${ac_cv_sizeof_pid_t=4}
|
| # samba
| samba_cv_HAVE_IFACE_AIX=${samba_cv_HAVE_IFACE_AIX=no}
| samba_cv_HAVE_IFACE_IFCONF=${samba_cv_HAVE_IFACE_IFCONF=yes}
| samba_cv_HAVE_IFACE_IFREQ=${samba_cv_HAVE_IFACE_IFREQ=yes}
|
samba_cv_HAVE_IRIX_SPECIFIC_CAPABILITIES=${samba_cv_HAVE_IRIX_SPECIFIC_CAPABILITIES=no}
|
| # db
| db_cv_path_ar=${db_cv_path_ar=/usr/bin/ar}
| db_cv_path_chmod=${db_cv_path_chmod=/bin/chmod}
| db_cv_path_cp=${db_cv_path_cp=/bin/cp}
| db_cv_path_ln=${db_cv_path_ln=/bin/ln}
| db_cv_path_mkdir=${db_cv_path_mkdir=/bin/mkdir}
| db_cv_path_ranlib=${db_cv_path_ranlib=/usr/bin/ranlib}
| db_cv_path_rm=${db_cv_path_rm=/bin/rm}
| db_cv_path_sh=${db_cv_path_sh=/bin/sh}
| db_cv_path_strip=${db_cv_path_strip=/usr/bin/strip}
|
| # bash
| bash_cv_have_mbstate_t=${bash_cv_have_mbstate_t=yes}
|
bash_cv_must_reinstall_sighandlers=${bash_cv_must_reinstall_sighandlers=no}
| bash_cv_func_strcoll_broken=${bash_cv_func_strcoll_broken=no}
| bash_cv_dup2_broken=${bash_cv_dup2_broken=no}
| bash_cv_opendir_not_robust=${bash_cv_opendir_not_robust=no}
| bash_cv_type_rlimit=${bash_cv_type_rlimit=rlim_t}
| bash_cv_getenv_redef=${bash_cv_getenv_redef=yes}
| bash_cv_ulimit_maxfds=${bash_cv_ulimit_maxfds=yes}
| bash_cv_getcwd_calls_popen=${bash_cv_getcwd_calls_popen=no}
| bash_cv_printf_a_format=${bash_cv_printf_a_format=yes}
| bash_cv_pgrp_pipe=${bash_cv_pgrp_pipe=no}
| bash_cv_job_control_missing=${bash_cv_job_control_missing=present}
| bash_cv_sys_named_pipes=${bash_cv_sys_named_pipes=present}
| bash_cv_unusable_rtsigs=${bash_cv_unusable_rtsigs=no}
|
| # coreutils
| gl_cv_func_fstatat_zero_flag=${gl_cv_func_fstatat_zero_flag=yes}
|
| # mysql
| ac_cv_sys_restartable_syscalls=${ac_cv_sys_restartable_syscalls=yes}
| ac_cv_conv_longlong_to_float=${ac_cv_conv_longlong_to_float=yes}
|
| # TCL
| tcl_cv_api_serial=${tcl_cv_api_serial=termios}
|
| # python
| ac_cv_have_long_long_format=yes
|
| # apache
| ac_cv_o_nonblock_inherited=${ac_cv_o_nonblock_inherited=no}
| # general
| ac_cv_have_decl_sys_siglist=${ac_cv_have_decl_sys_siglist=yes}
| ac_cv_func_realloc_works=${ac_cv_func_realloc_works=yes}
| ac_cv_func_realloc_0_nonnull=${ac_cv_func_realloc_0_nonnull=yes}
| ac_cv_func_malloc_works=${ac_cv_func_malloc_works=yes}
| ac_cv_func_malloc_0_nonnull=${ac_cv_func_malloc_0_nonnull=yes}
| ac_cv_func_memcmp_working=${ac_cv_func_memcmp_working=yes}
| ac_cv_func_getpgrp_void=yes
| ac_cv_func_setpgrp_void=yes
| ac_cv_func_setgrent_void=yes
| ac_cv_func_getgrgid_r=${ac_cv_func_getgrgid_r=yes}
| ac_cv_func_getpwuid_r=${ac_cv_func_getpwuid_r=yes}
| ac_cv_func_posix_getpwuid_r=${ac_cv_func_posix_getpwuid_r=yes}
| ac_cv_func_posix_getgrgid_r=${ac_cv_func_posix_getgrgid_r=yes}
| ac_cv_type_uid_t={ac_cv_type_uid_t=yes}
| ac_cv_func_getaddrinfo=${ac_cv_func_getaddrinfo=yes}
|
| # bash
| bash_cv_under_sys_siglist=${bash_cv_under_sys_siglist=yes}
| bash_cv_sys_siglist=${bash_cv_sys_siglist=yes}
|
| # clamav
|
clamav_av_func_working_snprintf_long=${clamav_av_func_working_snprintf_long=yes}
| clamav_av_have_in_port_t=${clamav_av_have_in_port_t=yes}
| clamav_av_have_in_addr_t=${clamav_av_have_in_addr_t=yes}
| ac_cv_func_mmap_fixed_mapped=${ac_cv_func_mmap_fixed_mapped=yes}
|
| # coreutils
| fu_cv_sys_stat_statfs2_bsize=${fu_cv_sys_stat_statfs2_bsize=yes}
|
| # glib
| glib_cv_strlcpy=${glib_cv_strlcpy=no}
| ac_cv_func_printf_unix98=${ac_cv_func_printf_unix98=yes}
| ac_cv_func_snprintf_c99=${ac_cv_func_snprintf_c99=yes}
| ac_cv_func_vsnprintf_c99=${ac_cv_func_vsnprintf_c99=yes}
| glib_cv_compliant_posix_memalign=${glib_cv_compliant_posix_memalign=1}
| glib_cv_long_long_format=${glib_cv_long_long_format=ll}
| # glib-1.x requires this and pkgconfig-native / pkgconfig-nativesdk use
| # that to avoid a dependency loop.
| glib_cv___va_copy=${glib_cv___va_copy=yes}
| glib_cv_va_copy=${glib_cv_va_copy=yes}
| glib_cv_have_qsort_r=${glib_cv_have_qsort_r=yes}
|
| #dbus-glib
| ac_cv_have_abstract_sockets=${ac_cv_have_abstract_sockets=yes}
|
| # gnucash
| am_cv_scanf_lld=${am_cv_scanf_lld=yes}
|
| # guile
| ac_cv_func_pthread_attr_getstack=${ac_cv_func_pthread_attr_getstack=yes}
|
| #gcc-zlib
| ac_cv_func_getpagesize=${ac_cv_func_getpagesize=yes}
| ac_cv_func_memcpy=${ac_cv_func_memcpy=yes}
| ac_cv_func_strerror=${ac_cv_func_strerror=yes}
|
| # squid
| ac_cv_af_unix_large_dgram=${ac_cv_af_unix_large_dgram=yes}
| ac_cv_func_setresuid=${ac_cv_func_setresuid=yes}
| ac_cv_func_va_copy=${ac_cv_func_va_copy=yes}
| ac_cv_func___va_copy=${ac_cv_func___va_copy=yes}
| ac_cv_epoll_works=${ac_cv_epoll_works=yes}
|
| ac_cv_check_sjlj=ssjlj
|
| # m4
| gt_cv_locale_fr=${gt_cv_locale_fr=fr_FR}
| gl_cv_func_btowc_eof=${gl_cv_func_btowc_eof=yes}
| gl_cv_func_wcrtomb_retval=${gl_cv_func_wcrtomb_retval=yes}
| gl_cv_func_wctob_works=${gl_cv_func_wctob_works=yes}
|
gl_cv_func_mbrtowc_incomplete_state=${gl_cv_func_mbrtowc_incomplete_state=yes}
| gl_cv_func_mbrtowc_sanitycheck=${gl_cv_func_mbrtowc_sanitycheck=yes}
| gl_cv_func_mbrtowc_null_arg=${gl_cv_func_mbrtowc_null_arg=yes}
| gl_cv_func_mbrtowc_retval=${gl_cv_func_mbrtowc_retval=yes}
| gl_cv_func_mbrtowc_nul_retval=${gl_cv_func_mbrtowc_nul_retval=yes}
|
| # va_copy and _va_copy
| ac_cv_va_copy=${ac_cv_va_copy=yes}
| ac_cv___va_copy=${ac_cv___va_copy=yes}
| ac_cv_func_va_copy=${ac_cv_func_va_copy=yes}
| ac_cv_func___va_copy=${ac_cv_func___va_copy=yes}
| # libelf
| mr_cv_target_elf=${mr_cv_target_elf=yes}
|
| # Normally kernels have /dev/random enabled
| ac_cv_file__dev_random=${ac_cv_file__dev_random=yes}
|
| # Avoid sudo to assume void for unsetenv in cross environment, or else it
conflicts with
| # target stdlib.h prototype which follows POSIX compiliance. Mark for
upstream.
| sudo_cv_func_unsetenv_void=no
|
| # shadow dir info, to avoid searching build system
| shadow_cv_maildir=${localstatedir}/spool/mail
| shadow_cv_mailfile=Mailbox
| shadow_cv_utmpdir=${localstatedir}/run
| shadow_cv_logdir=${localstatedir}/log
| shadow_cv_passwd_dir=${bindir}
|
| # python: deactivate a runtime check for ipv6-support in python >=2.7.1
that fails when cross-compiling
| ac_cv_buggy_getaddrinfo=no
configure:2143: checking for a BSD-compatible install
configure:2211: result: /usr/bin/install -c
configure:2222: checking whether build environment is sane
configure:2277: result: yes
configure:2336: checking for mips-poky-linux-strip
configure:2363: result: mips-poky-linux-strip
configure:2428: checking for a thread-safe mkdir -p
configure:2467: result: /bin/mkdir -p
configure:2474: checking for gawk
configure:2490: found /usr/bin/gawk
configure:2501: result: gawk
configure:2512: checking whether make sets $(MAKE)
configure:2534: result: yes
configure:2654: checking build system type
configure:2668: result: i686-pc-linux-gnu
configure:2688: checking host system type
configure:2701: result: mips-poky-linux-gnu
configure:2742: checking how to print strings
configure:2769: result: printf
configure:2802: checking for style of include used by make
configure:2830: result: GNU
configure:2861: checking for mips-poky-linux-gcc
configure:2888: result: mips-poky-linux-gcc  -meb -mabi=32   -mhard-float
-march=mips32 --sysroot=/home/jph/test-yocto/mips
configure:3157: checking for C compiler version
configure:3166: mips-poky-linux-gcc  -meb -mabi=32   -mhard-float
-march=mips32 --sysroot=/home/jph/test-yocto/mips --version >&5
mips-poky-linux-gcc (GCC) 4.7.2
Copyright (C) 2012 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

configure:3177: $? = 0
configure:3166: mips-poky-linux-gcc  -meb -mabi=32   -mhard-float
-march=mips32 --sysroot=/home/jph/test-yocto/mips -v >&5
Using built-in specs.
COLLECT_GCC=mips-poky-linux-gcc
COLLECT_LTO_WRAPPER=/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/lto-wrapper
Target: mips-poky-linux
Configured with:
/srv/home/pokybuild/yocto-autobuilder-new/yocto-slave/nightly-mips/build/build/tmp/work-shared/gcc-4.7.2-r19/gcc-4.7.2/configure
--build=x86_64-linux --host=i686-pokysdk-linux --target=mips-poky-linux
--prefix=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr
--exec_prefix=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr
--bindir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux
--sbindir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux
--libexecdir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/libexec/mips32-poky-linux
--datadir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/share
--sysconfdir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/etc
--sharedstatedir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/com
--localstatedir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/var
--libdir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/lib/mips32-poky-linux
--includedir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/include
--oldincludedir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/include
--infodir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/share/info
--mandir=/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/share/man
--disable-silent-rules --disable-dependency-tracking
--with-libtool-sysroot=/srv/home/pokybuild/yocto-autobuilder-new/yocto-slave/nightly-mips/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
--with-gnu-ld --enable-shared --enable-languages=c,c++
--enable-threads=posix --enable-multilib --enable-c99 --enable-long-long
--enable-symvers=gnu --enable-libstdcxx-pch
--program-prefix=mips-poky-linux- --without-local-prefix
--enable-target-optspace --enable-lto --enable-libssp --disable-bootstrap
--disable-libmudflap --with-system-zlib --with-linker-hash-style=sysv
--enable-linker-build-id --with-ppl=no --with-cloog=no
--enable-checking=release --enable-cheaders=c_global
--with-gxx-include-dir=/opt/poky/1.4/sysroots/mips32-poky-linux/usr/include/c++
--with-build-time-tools=/srv/home/pokybuild/yocto-autobuilder-new/yocto-slave/nightly-mips/build/build/tmp/sysroots/x86_64-linux/usr/mips-poky-linux/bin
--with-sysroot=/opt/poky/1.4/sysroots/mips32-poky-linux
--with-build-sysroot=/srv/home/pokybuild/yocto-autobuilder-new/yocto-slave/nightly-mips/build/build/tmp/sysroots/qemumips
--disable-libunwind-exceptions --disable-libssp --disable-libgomp
--disable-libmudflap
--with-mpfr=/srv/home/pokybuild/yocto-autobuilder-new/yocto-slave/nightly-mips/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
--with-mpc=/srv/home/pokybuild/yocto-autobuilder-new/yocto-slave/nightly-mips/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux
--enable-nls --enable-__cxa_atexit
Thread model: posix
gcc version 4.7.2 (GCC)
configure:3177: $? = 0
configure:3166: mips-poky-linux-gcc  -meb -mabi=32   -mhard-float
-march=mips32 --sysroot=/home/jph/test-yocto/mips -V >&5
mips-poky-linux-gcc: error: unrecognized command line option '-V'
mips-poky-linux-gcc: fatal error: no input files
compilation terminated.
configure:3177: $? = 1
configure:3166: mips-poky-linux-gcc  -meb -mabi=32   -mhard-float
-march=mips32 --sysroot=/home/jph/test-yocto/mips -qversion >&5
mips-poky-linux-gcc: error: unrecognized command line option '-qversion'
mips-poky-linux-gcc: fatal error: no input files
compilation terminated.
configure:3177: $? = 1
configure:3197: checking whether the C compiler works
configure:3219: mips-poky-linux-gcc  -meb -mabi=32   -mhard-float
-march=mips32 --sysroot=/home/jph/test-yocto/mips  -g -O0
 --sysroot=/home/jph/adt/1.4/sysroots  --sysroot=/home/jph/adt/1.4/sysroots
 --sysroot=/home/jph/adt/1.4/sysroots conftest.c  >&5
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find crt1.o: No such file or directory
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find crti.o: No such file or directory
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find crtbegin.o: No such file or directory
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find -lgcc
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find -lgcc_s
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find -lc
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find -lgcc
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find -lgcc_s
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find crtend.o: No such file or directory
/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:
cannot find crtn.o: No such file or directory
collect2: error: ld returned 1 exit status
configure:3223: $? = 1
configure:3261: result: no
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "testApp2"
| #define PACKAGE_TARNAME "testapp2"
| #define PACKAGE_VERSION "0.1.0"
| #define PACKAGE_STRING "testApp2 0.1.0"
| #define PACKAGE_BUGREPORT ""
| #define PACKAGE_URL ""
| #define PACKAGE "testApp2"
| #define VERSION "0.1.0"
| /* end confdefs.h.  */
|
| int
| main ()
| {
|
|   ;
|   return 0;
| }
configure:3266: error: in `/home/jph/workspace/testApp2/':
configure:3268: error: C compiler cannot create executables
See `config.log' for more details

## ---------------- ##
## Cache variables. ##
## ---------------- ##

ac_cv___va_copy=yes
ac_cv_af_unix_large_dgram=yes
ac_cv_alignof_CORBA_boolean=1
ac_cv_alignof_CORBA_char=1
ac_cv_alignof_CORBA_double=4
ac_cv_alignof_CORBA_float=4
ac_cv_alignof_CORBA_long=4
ac_cv_alignof_CORBA_long_double=4
ac_cv_alignof_CORBA_long_long=4
ac_cv_alignof_CORBA_octet=1
ac_cv_alignof_CORBA_pointer=4
ac_cv_alignof_CORBA_short=2
ac_cv_alignof_CORBA_struct=4
ac_cv_alignof_CORBA_wchar=2
ac_cv_alignof_char=1
ac_cv_alignof_dbind_pointer=4
ac_cv_alignof_dbind_struct=1
ac_cv_alignof_dbus_bool_t=4
ac_cv_alignof_dbus_int16_t=2
ac_cv_alignof_dbus_int32_t=4
ac_cv_alignof_dbus_int64_t=4
ac_cv_alignof_double=4
ac_cv_alignof_guint32=4
ac_cv_alignof_guint64=4
ac_cv_alignof_unsigned_long=4
ac_cv_buggy_getaddrinfo=no
ac_cv_build=i686-pc-linux-gnu
ac_cv_c_bigendian=no
ac_cv_c_endian=little
ac_cv_c_littleendian=yes
ac_cv_c_long_double=yes
ac_cv_check_sjlj=ssjlj
ac_cv_conv_longlong_to_float=yes
ac_cv_dirent_have_space_d_name=yes
ac_cv_env_CC_set=set
ac_cv_env_CC_value='mips-poky-linux-gcc  -meb -mabi=32   -mhard-float
-march=mips32 --sysroot=/home/jph/test-yocto/mips'
ac_cv_env_CFLAGS_set=set
ac_cv_env_CFLAGS_value=' -g -O0  --sysroot=/home/jph/adt/1.4/sysroots'
ac_cv_env_CPPFLAGS_set=set
ac_cv_env_CPPFLAGS_value=' --sysroot=/home/jph/adt/1.4/sysroots'
ac_cv_env_CPP_set=set
ac_cv_env_CPP_value='mips-poky-linux-gcc -E  -meb -mabi=32   -mhard-float
-march=mips32 --sysroot=/home/jph/test-yocto/mips'
ac_cv_env_LDFLAGS_set=set
ac_cv_env_LDFLAGS_value=' --sysroot=/home/jph/adt/1.4/sysroots'
ac_cv_env_LIBS_set=
ac_cv_env_LIBS_value=
ac_cv_env_build_alias_set=set
ac_cv_env_build_alias_value=i686-linux
ac_cv_env_host_alias_set=set
ac_cv_env_host_alias_value=mips-poky-linux
ac_cv_env_target_alias_set=set
ac_cv_env_target_alias_value=mips-poky-linux
ac_cv_epoll_works=yes
ac_cv_file__dev_random=yes
ac_cv_file__dev_zero=yes
ac_cv_file__usr_share_X11_sgml_defs_ent=no
ac_cv_file_lib_src_libmad_frame_h=no
ac_cv_func___va_copy=yes
ac_cv_func_fnmatch_works=yes
ac_cv_func_getaddrinfo=yes
ac_cv_func_getgrgid_r=yes
ac_cv_func_getpagesize=yes
ac_cv_func_getpgrp_void=yes
ac_cv_func_getpwuid_r=yes
ac_cv_func_lstat_dereferences_slashed_symlink=yes
ac_cv_func_lstat_empty_string_bug=no
ac_cv_func_malloc_0_nonnull=yes
ac_cv_func_malloc_works=yes
ac_cv_func_memcmp_working=yes
ac_cv_func_memcpy=yes
ac_cv_func_mmap_fixed_mapped=yes
ac_cv_func_posix_getgrgid_r=yes
ac_cv_func_posix_getpwnam_r=yes
ac_cv_func_posix_getpwuid_r=yes
ac_cv_func_printf_unix98=yes
ac_cv_func_pthread_attr_getstack=yes
ac_cv_func_pthread_key_delete=yes
ac_cv_func_realloc_0_nonnull=yes
ac_cv_func_realloc_works=yes
ac_cv_func_setgrent_void=yes
ac_cv_func_setpgrp_void=yes
ac_cv_func_setresuid=yes
ac_cv_func_setvbuf_reversed=no
ac_cv_func_snprintf_c99=yes
ac_cv_func_stat_empty_string_bug=no
ac_cv_func_stat_ignores_trailing_slash=no
ac_cv_func_strerror=yes
ac_cv_func_va_copy=yes
ac_cv_func_vsnprintf_c99=yes
ac_cv_have_abstract_sockets=yes
ac_cv_have_accrights_in_msghdr=no
ac_cv_have_broken_snprintf=no
ac_cv_have_control_in_msghdr=yes
ac_cv_have_decl_sys_siglist=yes
ac_cv_have_long_long_format=yes
ac_cv_have_openpty_ctty_bug=yes
ac_cv_have_space_d_name_in_struct_dirent=yes
ac_cv_header_netinet_sctp_h=no
ac_cv_header_netinet_sctp_uio_h=no
ac_cv_host=mips-poky-linux-gnu
ac_cv_lbl_unaligned_fail=no
ac_cv_lib_c_signalfd=yes
ac_cv_libiconv_utf8=yes
ac_cv_libnet_endianess=lil
ac_cv_linux_vers=2
ac_cv_need_trio=no
ac_cv_o_nonblock_inherited=no
ac_cv_path_ESD_CONFIG=no
ac_cv_path_install='/usr/bin/install -c'
ac_cv_path_mkdir=/bin/mkdir
ac_cv_pread=no
ac_cv_prog_AWK=gawk
ac_cv_prog_CC='mips-poky-linux-gcc  -meb -mabi=32   -mhard-float
-march=mips32 --sysroot=/home/jph/test-yocto/mips'
ac_cv_prog_STRIP=mips-poky-linux-strip
ac_cv_prog_make_make_set=yes
ac_cv_pwrite=no
ac_cv_sctp=no
ac_cv_sizeof_char=1
ac_cv_sizeof_char_p=4
ac_cv_sizeof_dev_t=8
ac_cv_sizeof_float=4
ac_cv_sizeof_gid_t=4
ac_cv_sizeof_ino_t=4
ac_cv_sizeof_int=4
ac_cv_sizeof_int_p=4
ac_cv_sizeof_long=4
ac_cv_sizeof_long_long=8
ac_cv_sizeof_long_p=4
ac_cv_sizeof_off_t=4
ac_cv_sizeof_pid_t=4
ac_cv_sizeof_short=2
ac_cv_sizeof_size_t=4
ac_cv_sizeof_ssize_t=4
ac_cv_sizeof_uid_t=4
ac_cv_sizeof_unsigned_char=1
ac_cv_sizeof_unsigned_char_p=4
ac_cv_sizeof_unsigned_int=4
ac_cv_sizeof_unsigned_long=4
ac_cv_sizeof_unsigned_long_long=8
ac_cv_sizeof_unsigned_short=2
ac_cv_sizeof_void_p=4
ac_cv_sizeof_wchar_t=4
ac_cv_sys_linker_h=no
ac_cv_sys_restartable_syscalls=yes
ac_cv_type_struct_timespec=yes
ac_cv_type_uid_t='{ac_cv_type_uid_t=yes}'
ac_cv_uchar=no
ac_cv_uint=yes
ac_cv_ulong=yes
ac_cv_ushort=yes
ac_cv_va_copy=yes
ac_cv_va_val_copy=yes
am_cv_func_working_getline=yes
am_cv_scanf_lld=yes
apr_cv_process_shared_works=no
apr_cv_tcp_nodelay_with_cork=yes
bash_cv_dup2_broken=no
bash_cv_func_sigsetjmp=missing
bash_cv_func_strcoll_broken=no
bash_cv_getcwd_calls_popen=no
bash_cv_getenv_redef=yes
bash_cv_have_mbstate_t=yes
bash_cv_job_control_missing=present
bash_cv_must_reinstall_sighandlers=no
bash_cv_opendir_not_robust=no
bash_cv_pgrp_pipe=no
bash_cv_printf_a_format=yes
bash_cv_sys_named_pipes=present
bash_cv_sys_siglist=yes
bash_cv_type_rlimit=rlim_t
bash_cv_ulimit_maxfds=yes
bash_cv_under_sys_siglist=yes
bash_cv_unusable_rtsigs=no
cvs_cv_func_printf_ptr=yes
db_cv_align_t='unsigned long long'
db_cv_alignp_t='unsigned long'
db_cv_fcntl_f_setfd=yes
db_cv_path_ar=/usr/bin/ar
db_cv_path_chmod=/bin/chmod
db_cv_path_cp=/bin/cp
db_cv_path_ln=/bin/ln
db_cv_path_mkdir=/bin/mkdir
db_cv_path_ranlib=/usr/bin/ranlib
db_cv_path_rm=/bin/rm
db_cv_path_sh=/bin/sh
db_cv_path_strip=/usr/bin/strip
db_cv_sprintf_count=yes
ettercap_cv_type_socklen_t=yes
fu_cv_sys_stat_statfs2_bsize=yes
gl_cv_func_btowc_eof=yes
gl_cv_func_fstatat_zero_flag=yes
gl_cv_func_mbrtowc_incomplete_state=yes
gl_cv_func_mbrtowc_nul_retval=yes
gl_cv_func_mbrtowc_null_arg=yes
gl_cv_func_mbrtowc_retval=yes
gl_cv_func_mbrtowc_sanitycheck=yes
gl_cv_func_wcrtomb_retval=yes
gl_cv_func_wctob_works=yes
glib_cv___va_copy=yes
glib_cv_compliant_posix_memalign=1
glib_cv_has__inline=yes
glib_cv_has__inline__=yes
glib_cv_hasinline=yes
glib_cv_have_qsort_r=yes
glib_cv_long_long_format=ll
glib_cv_rtldglobal_broken=yes
glib_cv_sane_realloc=yes
glib_cv_sizeof_gmutex=24
glib_cv_sizeof_system_thread=4
glib_cv_stack_grows=no
glib_cv_strlcpy=no
glib_cv_sys_pthread_cond_timedwait_posix=yes
glib_cv_sys_pthread_getspecific_posix=yes
glib_cv_sys_pthread_mutex_trylock_posix=yes
glib_cv_uscore=no
glib_cv_use_pid_surrogate=yes
glib_cv_va_copy=yes
glib_cv_va_val_copy=yes
gt_cv_locale_fr=fr_FR
jm_cv_func_gettimeofday_clobber=no
jm_cv_func_working_readdir=yes
lf_cv_sane_realloc=yes
lftp_cv_va_val_copy=yes
libIDL_cv_long_long_format=ll
moz_cv_align_of_JS_ALIGN_OF_POINTER=4
moz_cv_size_of_JS_BYTES_PER_DOUBLE=8
moz_cv_size_of_JS_BYTES_PER_WORD=4
mr_cv_target_elf=yes
mysql_cv_func_atomic_add=yes
mysql_cv_func_atomic_sub=yes
nfsd_cv_broken_setfsuid=0
nfsd_cv_bsd_signals=yes
nfsd_cv_func_statfs=statfs2_bsize
php_cv_lib_cookie_io_functions_use_off64_t=yes
rsync_cv_HAVE_BROKEN_LARGEFILE=no
rsync_cv_HAVE_BROKEN_READDIR=no
rsync_cv_HAVE_C99_VSNPRINTF=yes
rsync_cv_HAVE_GETTIMEOFDAY_TZ=yes
rsync_cv_HAVE_LONGLONG=yes
rsync_cv_HAVE_OFF64_T=no
rsync_cv_HAVE_SECURE_MKSTEMP=yes
rsync_cv_HAVE_SHORT_INO_T=no
rsync_cv_HAVE_SOCKETPAIR=yes
rsync_cv_HAVE_UNSIGNED_CHAR=no
rsync_cv_REPLACE_INET_ATON=no
rsync_cv_REPLACE_INET_NTOA=no
samba_cv_HAVE_GETTIMEOFDAY_TZ=yes
samba_cv_HAVE_IFACE_AIX=no
samba_cv_HAVE_IFACE_IFCONF=yes
samba_cv_HAVE_IFACE_IFREQ=yes
samba_cv_HAVE_IRIX_SPECIFIC_CAPABILITIES=no
screen_cv_sys_bcopy_overlap=no
screen_cv_sys_fifo_broken_impl=yes
screen_cv_sys_fifo_usable=yes
screen_cv_sys_memcpy_overlap=no
screen_cv_sys_memmove_overlap=no
screen_cv_sys_select_broken_retval=no
screen_cv_sys_sockets_nofs=no
screen_cv_sys_sockets_usable=yes
screen_cv_sys_terminfo_used=yes
shadow_cv_logdir='${prefix}/var/log'
shadow_cv_maildir='${prefix}/var/spool/mail'
shadow_cv_mailfile=Mailbox
shadow_cv_passwd_dir='${exec_prefix}/bin'
shadow_cv_utmpdir='${prefix}/var/run'
slrn_cv_va_val_copy=yes
sudo_cv_func_unsetenv_void=no
tcl_cv_api_serial=termios
utils_cv_sys_open_max=1015

## ----------------- ##
## Output variables. ##
## ----------------- ##

ACLOCAL='${SHELL} /home/jph/workspace/testApp2/missing --run aclocal-1.12'
AMDEPBACKSLASH='\'
AMDEP_FALSE='#'
AMDEP_TRUE=''
AMTAR='$${TAR-tar}'
AR='mips-poky-linux-ar'
AUTOCONF='${SHELL} /home/jph/workspace/testApp2/missing --run autoconf'
AUTOHEADER='${SHELL} /home/jph/workspace/testApp2/missing --run autoheader'
AUTOMAKE='${SHELL} /home/jph/workspace/testApp2/missing --run automake-1.12'
AWK='gawk'
CC='mips-poky-linux-gcc  -meb -mabi=32   -mhard-float -march=mips32
--sysroot=/home/jph/test-yocto/mips'
CCDEPMODE=''
CFLAGS=' -g -O0  --sysroot=/home/jph/adt/1.4/sysroots'
CPP='mips-poky-linux-gcc -E  -meb -mabi=32   -mhard-float -march=mips32
--sysroot=/home/jph/test-yocto/mips'
CPPFLAGS=' --sysroot=/home/jph/adt/1.4/sysroots'
CYGPATH_W='echo'
DEFS=''
DEPDIR='.deps'
DLLTOOL=''
DSYMUTIL=''
DUMPBIN=''
ECHO_C=''
ECHO_N='-n'
ECHO_T=''
EGREP=''
EXEEXT=''
FGREP=''
GREP=''
INSTALL_DATA='${INSTALL} -m 644'
INSTALL_PROGRAM='${INSTALL}'
INSTALL_SCRIPT='${INSTALL}'
INSTALL_STRIP_PROGRAM='$(install_sh) -c -s'
LD='mips-poky-linux-ld  --sysroot=/home/jph/test-yocto/mips'
LDFLAGS=' --sysroot=/home/jph/adt/1.4/sysroots'
LIBOBJS=''
LIBS=''
LIBTOOL=''
LIPO=''
LN_S=''
LTLIBOBJS=''
MAKEINFO='${SHELL} /home/jph/workspace/testApp2/missing --run makeinfo'
MANIFEST_TOOL=''
MKDIR_P='/bin/mkdir -p'
NM='mips-poky-linux-nm'
NMEDIT=''
OBJDUMP='mips-poky-linux-objdump'
OBJEXT=''
OTOOL64=''
OTOOL=''
PACKAGE='testApp2'
PACKAGE_BUGREPORT=''
PACKAGE_NAME='testApp2'
PACKAGE_STRING='testApp2 0.1.0'
PACKAGE_TARNAME='testapp2'
PACKAGE_URL=''
PACKAGE_VERSION='0.1.0'
PATH_SEPARATOR=':'
RANLIB='mips-poky-linux-ranlib'
SED=''
SET_MAKE=''
SHELL='/bin/bash'
STRIP='mips-poky-linux-strip'
VERSION='0.1.0'
ac_ct_AR=''
ac_ct_CC=''
ac_ct_DUMPBIN=''
am__EXEEXT_FALSE=''
am__EXEEXT_TRUE=''
am__fastdepCC_FALSE=''
am__fastdepCC_TRUE=''
am__include='include'
am__isrc=' -I$(srcdir)'
am__leading_dot='.'
am__nodep='_no'
am__quote=''
am__tar='$${TAR-tar} chof - "$$tardir"'
am__untar='$${TAR-tar} xf -'
bindir='${exec_prefix}/bin'
build='i686-pc-linux-gnu'
build_alias='i686-linux'
build_cpu='i686'
build_os='linux-gnu'
build_vendor='pc'
datadir='${datarootdir}'
datarootdir='${prefix}/share'
docdir='${datarootdir}/doc/${PACKAGE_TARNAME}'
dvidir='${docdir}'
exec_prefix='NONE'
host='mips-poky-linux-gnu'
host_alias='mips-poky-linux'
host_cpu='mips'
host_os='linux-gnu'
host_vendor='poky'
htmldir='${docdir}'
includedir='${prefix}/include'
infodir='${datarootdir}/info'
install_sh='${SHELL} /home/jph/workspace/testApp2/install-sh'
libdir='${exec_prefix}/lib'
libexecdir='${exec_prefix}/libexec'
localedir='${datarootdir}/locale'
localstatedir='${prefix}/var'
mandir='${datarootdir}/man'
mkdir_p='$(MKDIR_P)'
oldincludedir='/usr/include'
pdfdir='${docdir}'
prefix='NONE'
program_transform_name='s,x,x,'
psdir='${docdir}'
sbindir='${exec_prefix}/sbin'
sharedstatedir='${prefix}/com'
sysconfdir='${prefix}/etc'
target_alias='mips-poky-linux'
testApp2_CFLAGS=''
testApp2_LIBS=''

## ----------- ##
## confdefs.h. ##
## ----------- ##

/* confdefs.h */
#define PACKAGE_NAME "testApp2"
#define PACKAGE_TARNAME "testapp2"
#define PACKAGE_VERSION "0.1.0"
#define PACKAGE_STRING "testApp2 0.1.0"
#define PACKAGE_BUGREPORT ""
#define PACKAGE_URL ""
#define PACKAGE "testApp2"
#define VERSION "0.1.0"

configure: exit 77







-- 
Precipice Development International
http://www.precipicedevelopment.com

--047d7b07230c9ab84404dd46c606
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello<div><br></div><div>I have been trying to get the ADT=
 setup for Eclipse working following the guide at=A0<a href=3D"http://www.y=
octoproject.org/docs/1.4/adt-manual/adt-manual.html#autotools-based-project=
s">http://www.yoctoproject.org/docs/1.4/adt-manual/adt-manual.html#autotool=
s-based-projects</a>. =A0Install went smoothly. =A0On the kernel and image =
side of things I am able to build a kernel and rootfs, deploy it to a Route=
rStation Pro successfully. =A0Everything else seems to work.</div>
<div><br></div><div style>Eclipse gives me an error the the compiler cannot=
 create executables. =A0The relevant portion of the config.log files seems =
to be:</div><div style><br></div><div style><div>configure:3177: $? =3D 0</=
div>
<div>configure:3166: mips-poky-linux-gcc =A0-meb -mabi=3D32 =A0 -mhard-floa=
t -march=3Dmips32 --sysroot=3D/home/jph/test-yocto/mips -v &gt;&amp;5</div>=
<div>Using built-in specs.</div><div>COLLECT_GCC=3Dmips-poky-linux-gcc</div=
><div>COLLECT_LTO_WRAPPER=3D/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/u=
sr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linu=
x/4.7.2/lto-wrapper</div>
<div>Target: mips-poky-linux</div><div>Configured with: /srv/home/pokybuild=
/yocto-autobuilder-new/yocto-slave/nightly-mips/build/build/tmp/work-shared=
/gcc-4.7.2-r19/gcc-4.7.2/configure --build=3Dx86_64-linux --host=3Di686-pok=
ysdk-linux --target=3Dmips-poky-linux --prefix=3D/opt/poky/1.4/sysroots/i68=
6-pokysdk-linux/usr --exec_prefix=3D/opt/poky/1.4/sysroots/i686-pokysdk-lin=
ux/usr --bindir=3D/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-=
poky-linux --sbindir=3D/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/bin/mi=
ps32-poky-linux --libexecdir=3D/opt/poky/1.4/sysroots/i686-pokysdk-linux/us=
r/libexec/mips32-poky-linux --datadir=3D/opt/poky/1.4/sysroots/i686-pokysdk=
-linux/usr/share --sysconfdir=3D/opt/poky/1.4/sysroots/i686-pokysdk-linux/e=
tc --sharedstatedir=3D/opt/poky/1.4/sysroots/i686-pokysdk-linux/com --local=
statedir=3D/opt/poky/1.4/sysroots/i686-pokysdk-linux/var --libdir=3D/opt/po=
ky/1.4/sysroots/i686-pokysdk-linux/usr/lib/mips32-poky-linux --includedir=
=3D/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/include --oldincludedir=3D=
/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/include --infodir=3D/opt/poky=
/1.4/sysroots/i686-pokysdk-linux/usr/share/info --mandir=3D/opt/poky/1.4/sy=
sroots/i686-pokysdk-linux/usr/share/man --disable-silent-rules --disable-de=
pendency-tracking --with-libtool-sysroot=3D/srv/home/pokybuild/yocto-autobu=
ilder-new/yocto-slave/nightly-mips/build/build/tmp/sysroots/i686-nativesdk-=
pokysdk-linux --with-gnu-ld --enable-shared --enable-languages=3Dc,c++ --en=
able-threads=3Dposix --enable-multilib --enable-c99 --enable-long-long --en=
able-symvers=3Dgnu --enable-libstdcxx-pch --program-prefix=3Dmips-poky-linu=
x- --without-local-prefix --enable-target-optspace --enable-lto --enable-li=
bssp --disable-bootstrap --disable-libmudflap --with-system-zlib --with-lin=
ker-hash-style=3Dsysv --enable-linker-build-id --with-ppl=3Dno --with-cloog=
=3Dno --enable-checking=3Drelease --enable-cheaders=3Dc_global --with-gxx-i=
nclude-dir=3D/opt/poky/1.4/sysroots/mips32-poky-linux/usr/include/c++ --wit=
h-build-time-tools=3D/srv/home/pokybuild/yocto-autobuilder-new/yocto-slave/=
nightly-mips/build/build/tmp/sysroots/x86_64-linux/usr/mips-poky-linux/bin =
--with-sysroot=3D/opt/poky/1.4/sysroots/mips32-poky-linux --with-build-sysr=
oot=3D/srv/home/pokybuild/yocto-autobuilder-new/yocto-slave/nightly-mips/bu=
ild/build/tmp/sysroots/qemumips --disable-libunwind-exceptions --disable-li=
bssp --disable-libgomp --disable-libmudflap --with-mpfr=3D/srv/home/pokybui=
ld/yocto-autobuilder-new/yocto-slave/nightly-mips/build/build/tmp/sysroots/=
i686-nativesdk-pokysdk-linux --with-mpc=3D/srv/home/pokybuild/yocto-autobui=
lder-new/yocto-slave/nightly-mips/build/build/tmp/sysroots/i686-nativesdk-p=
okysdk-linux --enable-nls --enable-__cxa_atexit</div>
<div>Thread model: posix</div><div>gcc version 4.7.2 (GCC)=A0</div><div>con=
figure:3177: $? =3D 0</div><div>configure:3166: mips-poky-linux-gcc =A0-meb=
 -mabi=3D32 =A0 -mhard-float -march=3Dmips32 --sysroot=3D/home/jph/test-yoc=
to/mips -V &gt;&amp;5</div>
<div>mips-poky-linux-gcc: error: unrecognized command line option &#39;-V&#=
39;</div><div>mips-poky-linux-gcc: fatal error: no input files</div><div>co=
mpilation terminated.</div><div>configure:3177: $? =3D 1</div><div>configur=
e:3166: mips-poky-linux-gcc =A0-meb -mabi=3D32 =A0 -mhard-float -march=3Dmi=
ps32 --sysroot=3D/home/jph/test-yocto/mips -qversion &gt;&amp;5</div>
<div>mips-poky-linux-gcc: error: unrecognized command line option &#39;-qve=
rsion&#39;</div><div>mips-poky-linux-gcc: fatal error: no input files</div>=
<div>compilation terminated.</div><div>configure:3177: $? =3D 1</div><div>
configure:3197: checking whether the C compiler works</div><div>configure:3=
219: mips-poky-linux-gcc =A0-meb -mabi=3D32 =A0 -mhard-float -march=3Dmips3=
2 --sysroot=3D/home/jph/test-yocto/mips =A0-g -O0 =A0--sysroot=3D/home/jph/=
adt/1.4/sysroots =A0--sysroot=3D/home/jph/adt/1.4/sysroots =A0--sysroot=3D/=
home/jph/adt/1.4/sysroots conftest.c =A0&gt;&amp;5</div>
<div>/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linu=
x/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld: cannot find=
 crt1.o: No such file or directory</div><div>/home/jph/adt/1.4/sysroots/i68=
6-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/g=
cc/mips-poky-linux/4.7.2/ld: cannot find crti.o: No such file or directory<=
/div>
<div>/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linu=
x/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld: cannot find=
 crtbegin.o: No such file or directory</div><div>/home/jph/adt/1.4/sysroots=
/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-lin=
ux/gcc/mips-poky-linux/4.7.2/ld: cannot find -lgcc</div>
<div>/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linu=
x/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld: cannot find=
 -lgcc_s</div><div>/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mi=
ps32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/l=
d: cannot find -lc</div>
<div>/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linu=
x/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld: cannot find=
 -lgcc</div><div>/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips=
32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:=
 cannot find -lgcc_s</div>
<div>/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linu=
x/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld: cannot find=
 crtend.o: No such file or directory</div><div>/home/jph/adt/1.4/sysroots/i=
686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux=
/gcc/mips-poky-linux/4.7.2/ld: cannot find crtn.o: No such file or director=
y</div>
<div>collect2: error: ld returned 1 exit status</div><div>configure:3223: $=
? =3D 1</div><div>configure:3261: result: no</div><div>configure: failed pr=
ogram was:</div><div><br></div><div style>Full log is below</div><div style=
>
<br></div><div style>My Eclipse version is Juno</div><div style><div>Versio=
n: Juno Service Release 2</div><div>Build id: 20130225-0426</div><div><br><=
/div><div style>ADT Plugin is: =A0=A0</div><div style>Yocto Project ADT Plu=
g-in<span class=3D"" style=3D"white-space:pre">	</span>1.4.0.201304182148<s=
pan class=3D"" style=3D"white-space:pre">	</span>org.yocto.sdk.feature.grou=
p<span class=3D"" style=3D"white-space:pre">	</span>yoctoproject.</div>
</div></div><div><br></div><div>I got the ADT installer from=A0<a href=3D"h=
ttp://downloads.yoctoproject.org/releases/yocto/yocto-1.4/adt-installer/">h=
ttp://downloads.yoctoproject.org/releases/yocto/yocto-1.4/adt-installer/</a=
><br clear=3D"all">
<div><br></div><div style>I have also tried this from the command line as p=
er instructions in the link above with the same result.</div><div style><br=
></div><div style>I have tried a new yocto install and rebuilt from scratch=
. =A0I am stuck - any ideas?</div>
<div style><br></div><div style>Regards</div><div style><br></div><div styl=
e>Jerry Henzel</div><div style><br></div><div style><br></div><div style>__=
______________________________________________________</div><div style>
*******************Config.log**********************************************=
**</div><div style>--------------------------------------------------------=
------------------------------------------</div><div style><br></div><div s=
tyle>
<div>This file contains any messages produced by compilers while</div><div>=
running configure, to aid debugging if configure makes a mistake.</div><div=
><br></div><div>It was created by testApp2 configure 0.1.0, which was</div>
<div>generated by GNU Autoconf 2.69. =A0Invocation command line was</div><d=
iv><br></div><div>=A0 $ /home/jph/workspace/testApp2/configure --with-libto=
ol-sysroot=3D/home/jph/adt/1.4/sysroots --host=3Dmips-poky-linux --build=3D=
i686-linux --target=3Dmips-poky-linux</div>
<div><br></div><div>## --------- ##</div><div>## Platform. ##</div><div>## =
--------- ##</div><div><br></div><div>hostname =3D paris</div><div>uname -m=
 =3D i686</div><div>uname -r =3D 3.2.0-4-686-pae</div><div>uname -s =3D Lin=
ux</div>
<div>uname -v =3D #1 SMP Debian 3.2.41-2</div><div><br></div><div>/usr/bin/=
uname -p =3D unknown</div><div>/bin/uname -X =A0 =A0 =3D unknown</div><div>=
<br></div><div>/bin/arch =A0 =A0 =A0 =A0 =A0 =A0 =A0=3D unknown</div><div>/=
usr/bin/arch -k =A0 =A0 =A0 =3D unknown</div>
<div>/usr/convex/getsysinfo =3D unknown</div><div>/usr/bin/hostinfo =A0 =A0=
 =A0=3D unknown</div><div>/bin/machine =A0 =A0 =A0 =A0 =A0 =3D unknown</div=
><div>/usr/bin/oslevel =A0 =A0 =A0 =3D unknown</div><div>/bin/universe =A0 =
=A0 =A0 =A0 =A0=3D unknown</div><div><br>
</div><div>PATH: /home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin</div=
><div>PATH: /home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-po=
ky-linux</div><div>PATH: /home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/=
bin</div>
<div>PATH: /home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-pok=
y-linux</div><div>PATH: /home/jph/bin</div><div>PATH: /usr/sbin</div><div>P=
ATH: /sbin</div><div>PATH: /usr/local/bin</div><div>PATH: /usr/bin</div>
<div>PATH: /bin</div><div>PATH: /usr/local/games</div><div>PATH: /usr/games=
</div><div><br></div><div><br></div><div>## ----------- ##</div><div>## Cor=
e tests. ##</div><div>## ----------- ##</div><div><br></div><div>configure:=
2002: loading site script /home/jph/adt/1.4/site-config-mips32-poky-linux</=
div>
<div>| ac_cv_c_littleendian=3D${ac_cv_c_littleendian=3Dyes}</div><div>| ac_=
cv_c_bigendian=3D${ac_cv_c_bigendian=3Dno}</div><div>|=A0</div><div>| # lib=
net</div><div>| ac_cv_libnet_endianess=3D${ac_cv_libnet_endianess=3Dlil}</d=
iv><div>|=A0</div>
<div>| # libmemcached</div><div>| ac_cv_c_endian=3Dlittle</div><div>| # gen=
eral</div><div>| ac_cv_sizeof_char=3D${ac_cv_sizeof_char=3D1}</div><div>| a=
c_cv_sizeof_unsigned_char=3D${ac_cv_sizeof_unsigned_char=3D1}</div><div>| a=
c_cv_sizeof_char_p=3D${ac_cv_sizeof_char_p=3D4}</div>
<div>| ac_cv_sizeof_unsigned_char_p=3D${ac_cv_sizeof_unsigned_char_p=3D4}</=
div><div>| ac_cv_sizeof_int=3D${ac_cv_sizeof_int=3D4}</div><div>| ac_cv_siz=
eof_unsigned_int=3D${ac_cv_sizeof_unsigned_int=3D4}</div><div>| ac_cv_sizeo=
f_int_p=3D${ac_cv_sizeof_int_p=3D4}</div>
<div>| ac_cv_sizeof_long=3D${ac_cv_sizeof_long=3D4}</div><div>| ac_cv_sizeo=
f_unsigned_long=3D${ac_cv_sizeof_unsigned_long=3D4}</div><div>| ac_cv_sizeo=
f_long_long=3D${ac_cv_sizeof_long_long=3D8}</div><div>| ac_cv_sizeof_unsign=
ed_long_long=3D${ac_cv_sizeof_unsigned_long_long=3D8}</div>
<div>| ac_cv_sizeof_short=3D${ac_cv_sizeof_short=3D2}</div><div>| ac_cv_siz=
eof_unsigned_short=3D${ac_cv_sizeof_unsigned_short=3D2}</div><div>| ac_cv_s=
izeof_size_t=3D${ac_cv_sizeof_size_t=3D4}</div><div>| ac_cv_sizeof_ssize_t=
=3D${ac_cv_sizeof_ssize_t=3D4}</div>
<div>| ac_cv_sizeof_void_p=3D${ac_cv_sizeof_void_p=3D4}</div><div>| ac_cv_s=
izeof_long_p=3D${ac_cv_sizeof_long_p=3D4}</div><div>| ac_cv_sizeof_float=3D=
${ac_cv_sizeof_float=3D4}</div><div>| ac_cv_sizeof_off_t=3D${ac_cv_sizeof_o=
ff_t=3D4}</div>
<div>| ac_cv_sizeof_uid_t=3D${ac_cv_sizeof_uid_t=3D4}</div><div>| ac_cv_siz=
eof_gid_t=3D${ac_cv_sizeof_gid_t=3D4}</div><div>| ac_cv_sizeof_ino_t=3D${ac=
_cv_sizeof_ino_t=3D4}</div><div>| ac_cv_sizeof_dev_t=3D${ac_cv_sizeof_dev_t=
=3D8}</div><div>
| ac_cv_func_lstat_dereferences_slashed_symlink=3D${ac_cv_func_lstat_derefe=
rences_slashed_symlink=3Dyes}</div><div>| ac_cv_func_lstat_empty_string_bug=
=3D${ac_cv_func_lstat_empty_string_bug=3Dno}</div><div>| ac_cv_func_pthread=
_key_delete=3D${ac_cv_func_pthread_key_delete=3Dyes}</div>
<div>| ac_cv_func_setvbuf_reversed=3D${ac_cv_func_setvbuf_reversed=3Dno}</d=
iv><div>| ac_cv_func_stat_empty_string_bug=3D${ac_cv_func_stat_empty_string=
_bug=3Dno}</div><div>| ac_cv_func_stat_ignores_trailing_slash=3D${ac_cv_fun=
c_stat_ignores_trailing_slash=3Dno}</div>
<div>| ac_cv_va_val_copy=3D${ac_cv_va_val_copy=3Dyes}</div><div>|=A0</div><=
div>| ac_cv_header_netinet_sctp_h=3D${ac_cv_header_netinet_sctp_h=3Dno}</di=
v><div>| ac_cv_header_netinet_sctp_uio_h=3D${ac_cv_header_netinet_sctp_uio_=
h=3Dno}</div>
<div>| ac_cv_linux_vers=3D${ac_cv_linux_vers=3D2}</div><div>| ac_cv_sctp=3D=
${ac_cv_sctp=3Dno}</div><div>|=A0</div><div>| apr_cv_process_shared_works=
=3D${apr_cv_process_shared_works=3Dno}</div><div>| apr_cv_tcp_nodelay_with_=
cork=3D${apr_cv_tcp_nodelay_with_cork=3Dyes}</div>
<div>|=A0</div><div>| ac_cv_path_ESD_CONFIG=3Dno</div><div>| lf_cv_sane_rea=
lloc=3Dyes</div><div>| jm_cv_func_gettimeofday_clobber=3Dno</div><div>| sam=
ba_cv_HAVE_GETTIMEOFDAY_TZ=3Dyes</div><div>| bf_lsbf=3D1</div><div>| ac_cv_=
uchar=3D${ac_cv_uchar=3Dno}</div>
<div>| ac_cv_uint=3D${ac_cv_uint=3Dyes}</div><div>| ac_cv_ulong=3D${ac_cv_u=
long=3Dyes}</div><div>| ac_cv_ushort=3D${ac_cv_ushort=3Dyes}</div><div>|=A0=
</div><div>| # audacity</div><div>| ac_cv_file_lib_src_libmad_frame_h=3D${a=
c_cv_file_lib_src_libmad_frame_h=3Dno}</div>
<div>|=A0</div><div>| # bash</div><div>| ac_cv_c_long_double=3D${ac_cv_c_lo=
ng_double=3Dyes}</div><div>| bash_cv_func_sigsetjmp=3D${bash_cv_func_sigset=
jmp=3Dmissing}</div><div>|=A0</div><div>| # clamav</div><div>| clamav_av_fu=
nc_working_snprintf_long=3D${clamav_av_func_working_snprintf_long=3Dyes}</d=
iv>
<div>| clamav_av_have_in_port_t=3D${clamav_av_have_in_port_t=3Dyes}</div><d=
iv>| clamav_av_have_in_addr_t=3D${clamav_av_have_in_addr_t=3Dyes}</div><div=
>| ac_cv_func_mmap_fixed_mapped=3D${ac_cv_func_mmap_fixed_mapped=3Dyes}</di=
v><div>|=A0</div>
<div>| # cvs</div><div>| cvs_cv_func_printf_ptr=3D${cvs_cv_func_printf_ptr=
=3Dyes}</div><div>|=A0</div><div>| # db</div><div>| db_cv_alignp_t=3D${db_c=
v_alignp_t=3D&#39;unsigned long&#39;}</div><div>| db_cv_align_t=3D${db_cv_a=
lign_t=3D&#39;unsigned long long&#39;}</div>
<div>| db_cv_fcntl_f_setfd=3D${db_cv_fcntl_f_setfd=3Dyes}</div><div>| db_cv=
_sprintf_count=3D${db_cv_sprintf_count=3Dyes}</div><div>|=A0</div><div>| # =
D-BUS</div><div>| ac_cv_func_posix_getpwnam_r=3D${ac_cv_func_posix_getpwnam=
_r=3Dyes}</div>
<div>|=A0</div><div>| # ettercap</div><div>| ettercap_cv_type_socklen_t=3D$=
{ettercap_cv_type_socklen_t=3Dyes}</div><div>|=A0</div><div>| # gettext</di=
v><div>| am_cv_func_working_getline=3D${am_cv_func_working_getline=3Dyes}</=
div><div>
|=A0</div><div>| # glib</div><div>| glib_cv_sizeof_system_thread=3D${glib_c=
v_sizeof_system_thread=3D4}</div><div>| glib_cv_has__inline=3D${glib_cv_has=
__inline=3Dyes}</div><div>| glib_cv_has__inline__=3D${glib_cv_has__inline__=
=3Dyes}</div>
<div>| glib_cv_hasinline=3D${glib_cv_hasinline=3Dyes}</div><div>| glib_cv_s=
ane_realloc=3D${glib_cv_sane_realloc=3Dyes}</div><div>| glib_cv_sizeof_gmut=
ex=3D${glib_cv_sizeof_gmutex=3D24}</div><div>| glib_cv_sys_pthread_cond_tim=
edwait_posix=3D${glib_cv_sys_pthread_cond_timedwait_posix=3Dyes}</div>
<div>| glib_cv_sys_pthread_getspecific_posix=3D${glib_cv_sys_pthread_getspe=
cific_posix=3Dyes}</div><div>| glib_cv_sys_pthread_mutex_trylock_posix=3D${=
glib_cv_sys_pthread_mutex_trylock_posix=3Dyes}</div><div>| glib_cv_uscore=
=3D${glib_cv_uscore=3Dno}</div>
<div>| glib_cv_va_val_copy=3D${glib_cv_va_val_copy=3Dyes}</div><div>| glib_=
cv_rtldglobal_broken=3D${glib_cv_rtldglobal_broken=3Dyes}</div><div>|=A0</d=
iv><div>| # glib-2.0</div><div>| glib_cv_stack_grows=3D${glib_cv_stack_grow=
s=3Dno}</div>
<div>| utils_cv_sys_open_max=3D${utils_cv_sys_open_max=3D1015}</div><div>| =
glib_cv_use_pid_surrogate=3D${glib_cv_use_pid_surrogate=3Dyes}</div><div>| =
ac_cv_alignof_guint32=3D4</div><div>| ac_cv_alignof_guint64=3D4</div><div>|=
 ac_cv_alignof_unsigned_long=3D4</div>
<div>|=A0</div><div>| # guile</div><div>| ac_cv_uchar=3D${ac_cv_uchar=3Dno}=
</div><div>| ac_cv_uint=3D${ac_cv_uint=3Dyes}</div><div>| ac_cv_ulong=3D${a=
c_cv_ulong=3Dyes}</div><div>| ac_cv_ushort=3D${ac_cv_ushort=3Dyes}</div><di=
v>|=A0</div><div>
| # intercom</div><div>| ac_cv_func_fnmatch_works=3D${ac_cv_func_fnmatch_wo=
rks=3Dyes}</div><div>|=A0</div><div>| # jikes-native</div><div>| ac_cv_size=
of_wchar_t=3D4</div><div>|=A0</div><div>| # lftp</div><div>| ac_cv_need_tri=
o=3D${ac_cv_need_trio=3Dno}</div>
<div>| lftp_cv_va_val_copy=3D${lftp_cv_va_val_copy=3Dyes}</div><div>|=A0</d=
iv><div>| # libidl</div><div>| libIDL_cv_long_long_format=3D${libIDL_cv_lon=
g_long_format=3Dll}</div><div>|=A0</div><div>| # libnet=A0</div><div>| ac_c=
v_lbl_unaligned_fail=3D${ac_cv_lbl_unaligned_fail=3Dno}</div>
<div>| ac_libnet_have_packet_socket=3D${ac_libnet_have_packet_socket=3Dyes}=
</div><div>|=A0</div><div>| # libxfce4util</div><div>| with_broken_putenv=
=3D${with_broken_putenv=3Dno}</div><div>|=A0</div><div>| # mysql</div><div>=
| mysql_cv_func_atomic_sub=3D${mysql_cv_func_atomic_sub=3Dyes}</div>
<div>| mysql_cv_func_atomic_add=3D${mysql_cv_func_atomic_add=3Dyes}</div><d=
iv>|=A0</div><div>| # ORBit2</div><div>| ac_cv_alignof_CORBA_boolean=3D1</d=
iv><div>| ac_cv_alignof_CORBA_char=3D1</div><div>| ac_cv_alignof_CORBA_doub=
le=3D4</div>
<div>| ac_cv_alignof_CORBA_float=3D4</div><div>| ac_cv_alignof_CORBA_long=
=3D4</div><div>| ac_cv_alignof_CORBA_long_double=3D4</div><div>| ac_cv_alig=
nof_CORBA_long_long=3D4</div><div>| ac_cv_alignof_CORBA_octet=3D1</div><div=
>| ac_cv_alignof_CORBA_pointer=3D4</div>
<div>| ac_cv_alignof_CORBA_short=3D2</div><div>| ac_cv_alignof_CORBA_struct=
=3D4</div><div>| ac_cv_alignof_CORBA_wchar=3D2</div><div>|=A0</div><div>| #=
 php</div><div>| ac_cv_pread=3D${ac_cv_pread=3Dno}</div><div>| ac_cv_pwrite=
=3D${ac_cv_pwrite=3Dno}</div>
<div>| php_cv_lib_cookie_io_functions_use_off64_t=3D${php_cv_lib_cookie_io_=
functions_use_off64_t=3Dyes}</div><div>|=A0</div><div>| # rsync</div><div>|=
 rsync_cv_HAVE_BROKEN_LARGEFILE=3D${rsync_cv_HAVE_BROKEN_LARGEFILE=3Dno}</d=
iv><div>
| rsync_cv_HAVE_SOCKETPAIR=3D${rsync_cv_HAVE_SOCKETPAIR=3Dyes}</div><div>| =
rsync_cv_HAVE_LONGLONG=3D${rsync_cv_HAVE_LONGLONG=3Dyes}</div><div>| rsync_=
cv_HAVE_OFF64_T=3D${rsync_cv_HAVE_OFF64_T=3Dno}</div><div>| rsync_cv_HAVE_S=
HORT_INO_T=3D${rsync_cv_HAVE_SHORT_INO_T=3Dno}</div>
<div>| rsync_cv_HAVE_UNSIGNED_CHAR=3D${rsync_cv_HAVE_UNSIGNED_CHAR=3Dno}</d=
iv><div>| rsync_cv_HAVE_BROKEN_READDIR=3D${rsync_cv_HAVE_BROKEN_READDIR=3Dn=
o}</div><div>| rsync_cv_HAVE_GETTIMEOFDAY_TZ=3D${rsync_cv_HAVE_GETTIMEOFDAY=
_TZ=3Dyes}</div>
<div>| rsync_cv_HAVE_C99_VSNPRINTF=3D${rsync_cv_HAVE_C99_VSNPRINTF=3Dyes}</=
div><div>| rsync_cv_HAVE_SECURE_MKSTEMP=3D${rsync_cv_HAVE_SECURE_MKSTEMP=3D=
yes}</div><div>| rsync_cv_REPLACE_INET_NTOA=3D${rsync_cv_REPLACE_INET_NTOA=
=3Dno}</div>
<div>| rsync_cv_REPLACE_INET_ATON=3D${rsync_cv_REPLACE_INET_ATON=3Dno}</div=
><div>|=A0</div><div>| # samba</div><div>| samba_cv_HAVE_GETTIMEOFDAY_TZ=3D=
${samba_cv_HAVE_GETTIMEOFDAY_TZ=3Dyes}</div><div>|=A0</div><div>| # screen<=
/div><div>
| screen_cv_sys_bcopy_overlap=3D${screen_cv_sys_bcopy_overlap=3Dno}</div><d=
iv>| screen_cv_sys_memcpy_overlap=3D${screen_cv_sys_memcpy_overlap=3Dno}</d=
iv><div>| screen_cv_sys_memmove_overlap=3D${screen_cv_sys_memmove_overlap=
=3Dno}</div>
<div>| screen_cv_sys_fifo_broken_impl=3D${screen_cv_sys_fifo_broken_impl=3D=
yes}</div><div>| screen_cv_sys_fifo_usable=3D${screen_cv_sys_fifo_usable=3D=
yes}</div><div>| screen_cv_sys_select_broken_retval=3D${screen_cv_sys_selec=
t_broken_retval=3Dno}</div>
<div>| screen_cv_sys_sockets_nofs=3D${screen_cv_sys_sockets_nofs=3Dno}</div=
><div>| screen_cv_sys_sockets_usable=3D${screen_cv_sys_sockets_usable=3Dyes=
}</div><div>| screen_cv_sys_terminfo_used=3D${screen_cv_sys_terminfo_used=
=3Dyes}</div>
<div>|=A0</div><div>| # slrn</div><div>| slrn_cv_va_val_copy=3D${slrn_cv_va=
_val_copy=3Dyes}</div><div>|=A0</div><div>| # ssh</div><div>| ac_cv_have_sp=
ace_d_name_in_struct_dirent=3D${ac_cv_dirent_have_space_d_name=3Dyes}</div>=
<div>| ac_cv_have_broken_snprintf=3D${ac_cv_have_broken_snprintf=3Dno}</div=
>
<div>| ac_cv_have_accrights_in_msghdr=3D${ac_cv_have_accrights_in_msghdr=3D=
no}</div><div>| ac_cv_have_control_in_msghdr=3D${ac_cv_have_control_in_msgh=
dr=3Dyes}</div><div>| ac_cv_type_struct_timespec=3D${ac_cv_type_struct_time=
spec=3Dyes}</div>
<div>| ac_cv_have_openpty_ctty_bug=3D${ac_cv_have_openpty_ctty_bug=3Dyes}</=
div><div>|=A0</div><div>| # startup-notification</div><div>| lf_cv_sane_rea=
lloc=3Dyes</div><div>|=A0</div><div>| # xffm</div><div>| jm_cv_func_working=
_readdir=3Dyes</div>
<div>|=A0</div><div>| # xorg X11R7</div><div>| ac_cv_sys_linker_h=3D${ac_cv=
_sys_linker_h=3Dno}</div><div>| ac_cv_file__usr_share_X11_sgml_defs_ent=3D$=
{ac_cv_file__usr_share_X11_sgml_defs_ent=3Dno}</div><div>|=A0</div><div>| #=
 evolution-data-server</div>
<div>| ac_cv_libiconv_utf8=3D${ac_cv_libiconv_utf8=3Dyes}</div><div>|=A0</d=
iv><div>| #dbus</div><div>| ac_cv_have_abstract_sockets=3D${ac_cv_have_abst=
ract_sockets=3Dyes}</div><div>|=A0</div><div>| #libpciaccess</div><div>| ha=
ve_mtrr_h=3Dyes</div>
<div>|=A0</div><div>| #mozilla</div><div>| moz_cv_size_of_JS_BYTES_PER_WORD=
=3D4</div><div>| moz_cv_align_of_JS_ALIGN_OF_POINTER=3D4</div><div>| moz_cv=
_size_of_JS_BYTES_PER_DOUBLE=3D8</div><div>|=A0</div><div>| #ofono</div><di=
v>| ac_cv_lib_c_signalfd=3D${ac_cv_lib_c_signalfd=3Dyes}</div>
<div>|=A0</div><div>| #unfs-server</div><div>| nfsd_cv_broken_setfsuid=3D${=
nfsd_cv_broken_setfsuid=3D0}</div><div>| nfsd_cv_func_statfs=3D${nfsd_cv_fu=
nc_statfs=3Dstatfs2_bsize}</div><div>| nfsd_cv_bsd_signals=3D${nfsd_cv_bsd_=
signals=3Dyes}</div>
<div>|=A0</div><div>| # dbind, in at-spi2-core</div><div>| ac_cv_alignof_ch=
ar=3D1</div><div>| ac_cv_alignof_dbind_pointer=3D4</div><div>| ac_cv_aligno=
f_dbind_struct=3D1</div><div>| ac_cv_alignof_dbus_bool_t=3D4</div><div>| ac=
_cv_alignof_dbus_int16_t=3D2</div>
<div>| ac_cv_alignof_dbus_int32_t=3D4</div><div>| ac_cv_alignof_dbus_int64_=
t=3D4</div><div>| ac_cv_alignof_double=3D4</div><div>| # apr</div><div>| ac=
_cv_file__dev_zero=3D${ac_cv_file__dev_zero=3Dyes}</div><div>| ac_cv_sizeof=
_pid_t=3D${ac_cv_sizeof_pid_t=3D4}</div>
<div>|=A0</div><div>| # samba</div><div>| samba_cv_HAVE_IFACE_AIX=3D${samba=
_cv_HAVE_IFACE_AIX=3Dno}</div><div>| samba_cv_HAVE_IFACE_IFCONF=3D${samba_c=
v_HAVE_IFACE_IFCONF=3Dyes}</div><div>| samba_cv_HAVE_IFACE_IFREQ=3D${samba_=
cv_HAVE_IFACE_IFREQ=3Dyes}</div>
<div>| samba_cv_HAVE_IRIX_SPECIFIC_CAPABILITIES=3D${samba_cv_HAVE_IRIX_SPEC=
IFIC_CAPABILITIES=3Dno}</div><div>|=A0</div><div>| # db</div><div>| db_cv_p=
ath_ar=3D${db_cv_path_ar=3D/usr/bin/ar}</div><div>| db_cv_path_chmod=3D${db=
_cv_path_chmod=3D/bin/chmod}</div>
<div>| db_cv_path_cp=3D${db_cv_path_cp=3D/bin/cp}</div><div>| db_cv_path_ln=
=3D${db_cv_path_ln=3D/bin/ln}</div><div>| db_cv_path_mkdir=3D${db_cv_path_m=
kdir=3D/bin/mkdir}</div><div>| db_cv_path_ranlib=3D${db_cv_path_ranlib=3D/u=
sr/bin/ranlib}</div>
<div>| db_cv_path_rm=3D${db_cv_path_rm=3D/bin/rm}</div><div>| db_cv_path_sh=
=3D${db_cv_path_sh=3D/bin/sh}</div><div>| db_cv_path_strip=3D${db_cv_path_s=
trip=3D/usr/bin/strip}</div><div>|=A0</div><div>| # bash</div><div>| bash_c=
v_have_mbstate_t=3D${bash_cv_have_mbstate_t=3Dyes}</div>
<div>| bash_cv_must_reinstall_sighandlers=3D${bash_cv_must_reinstall_sighan=
dlers=3Dno}</div><div>| bash_cv_func_strcoll_broken=3D${bash_cv_func_strcol=
l_broken=3Dno}</div><div>| bash_cv_dup2_broken=3D${bash_cv_dup2_broken=3Dno=
}</div><div>
| bash_cv_opendir_not_robust=3D${bash_cv_opendir_not_robust=3Dno}</div><div=
>| bash_cv_type_rlimit=3D${bash_cv_type_rlimit=3Drlim_t}</div><div>| bash_c=
v_getenv_redef=3D${bash_cv_getenv_redef=3Dyes}</div><div>| bash_cv_ulimit_m=
axfds=3D${bash_cv_ulimit_maxfds=3Dyes}</div>
<div>| bash_cv_getcwd_calls_popen=3D${bash_cv_getcwd_calls_popen=3Dno}</div=
><div>| bash_cv_printf_a_format=3D${bash_cv_printf_a_format=3Dyes}</div><di=
v>| bash_cv_pgrp_pipe=3D${bash_cv_pgrp_pipe=3Dno}</div><div>| bash_cv_job_c=
ontrol_missing=3D${bash_cv_job_control_missing=3Dpresent}</div>
<div>| bash_cv_sys_named_pipes=3D${bash_cv_sys_named_pipes=3Dpresent}</div>=
<div>| bash_cv_unusable_rtsigs=3D${bash_cv_unusable_rtsigs=3Dno}</div><div>=
|=A0</div><div>| # coreutils</div><div>| gl_cv_func_fstatat_zero_flag=3D${g=
l_cv_func_fstatat_zero_flag=3Dyes}</div>
<div>|=A0</div><div>| # mysql</div><div>| ac_cv_sys_restartable_syscalls=3D=
${ac_cv_sys_restartable_syscalls=3Dyes}</div><div>| ac_cv_conv_longlong_to_=
float=3D${ac_cv_conv_longlong_to_float=3Dyes}</div><div>|=A0</div><div>| # =
TCL</div>
<div>| tcl_cv_api_serial=3D${tcl_cv_api_serial=3Dtermios}</div><div>|=A0</d=
iv><div>| # python</div><div>| ac_cv_have_long_long_format=3Dyes</div><div>=
|=A0</div><div>| # apache</div><div>| ac_cv_o_nonblock_inherited=3D${ac_cv_=
o_nonblock_inherited=3Dno}</div>
<div>| # general</div><div>| ac_cv_have_decl_sys_siglist=3D${ac_cv_have_dec=
l_sys_siglist=3Dyes}</div><div>| ac_cv_func_realloc_works=3D${ac_cv_func_re=
alloc_works=3Dyes}</div><div>| ac_cv_func_realloc_0_nonnull=3D${ac_cv_func_=
realloc_0_nonnull=3Dyes}</div>
<div>| ac_cv_func_malloc_works=3D${ac_cv_func_malloc_works=3Dyes}</div><div=
>| ac_cv_func_malloc_0_nonnull=3D${ac_cv_func_malloc_0_nonnull=3Dyes}</div>=
<div>| ac_cv_func_memcmp_working=3D${ac_cv_func_memcmp_working=3Dyes}</div>=
<div>| ac_cv_func_getpgrp_void=3Dyes</div>
<div>| ac_cv_func_setpgrp_void=3Dyes</div><div>| ac_cv_func_setgrent_void=
=3Dyes</div><div>| ac_cv_func_getgrgid_r=3D${ac_cv_func_getgrgid_r=3Dyes}</=
div><div>| ac_cv_func_getpwuid_r=3D${ac_cv_func_getpwuid_r=3Dyes}</div><div=
>| ac_cv_func_posix_getpwuid_r=3D${ac_cv_func_posix_getpwuid_r=3Dyes}</div>
<div>| ac_cv_func_posix_getgrgid_r=3D${ac_cv_func_posix_getgrgid_r=3Dyes}</=
div><div>| ac_cv_type_uid_t=3D{ac_cv_type_uid_t=3Dyes}</div><div>| ac_cv_fu=
nc_getaddrinfo=3D${ac_cv_func_getaddrinfo=3Dyes}</div><div>|=A0</div><div>|=
 # bash</div>
<div>| bash_cv_under_sys_siglist=3D${bash_cv_under_sys_siglist=3Dyes}</div>=
<div>| bash_cv_sys_siglist=3D${bash_cv_sys_siglist=3Dyes}</div><div>|=A0</d=
iv><div>| # clamav</div><div>| clamav_av_func_working_snprintf_long=3D${cla=
mav_av_func_working_snprintf_long=3Dyes}</div>
<div>| clamav_av_have_in_port_t=3D${clamav_av_have_in_port_t=3Dyes}</div><d=
iv>| clamav_av_have_in_addr_t=3D${clamav_av_have_in_addr_t=3Dyes}</div><div=
>| ac_cv_func_mmap_fixed_mapped=3D${ac_cv_func_mmap_fixed_mapped=3Dyes}</di=
v><div>|=A0</div>
<div>| # coreutils</div><div>| fu_cv_sys_stat_statfs2_bsize=3D${fu_cv_sys_s=
tat_statfs2_bsize=3Dyes}</div><div>|=A0</div><div>| # glib</div><div>| glib=
_cv_strlcpy=3D${glib_cv_strlcpy=3Dno}</div><div>| ac_cv_func_printf_unix98=
=3D${ac_cv_func_printf_unix98=3Dyes}</div>
<div>| ac_cv_func_snprintf_c99=3D${ac_cv_func_snprintf_c99=3Dyes}</div><div=
>| ac_cv_func_vsnprintf_c99=3D${ac_cv_func_vsnprintf_c99=3Dyes}</div><div>|=
 glib_cv_compliant_posix_memalign=3D${glib_cv_compliant_posix_memalign=3D1}=
</div><div>
| glib_cv_long_long_format=3D${glib_cv_long_long_format=3Dll}</div><div>| #=
 glib-1.x requires this and pkgconfig-native / pkgconfig-nativesdk use</div=
><div>| # that to avoid a dependency loop.</div><div>| glib_cv___va_copy=3D=
${glib_cv___va_copy=3Dyes}</div>
<div>| glib_cv_va_copy=3D${glib_cv_va_copy=3Dyes}</div><div>| glib_cv_have_=
qsort_r=3D${glib_cv_have_qsort_r=3Dyes}</div><div>|=A0</div><div>| #dbus-gl=
ib</div><div>| ac_cv_have_abstract_sockets=3D${ac_cv_have_abstract_sockets=
=3Dyes}</div>
<div>|=A0</div><div>| # gnucash</div><div>| am_cv_scanf_lld=3D${am_cv_scanf=
_lld=3Dyes}</div><div>|=A0</div><div>| # guile</div><div>| ac_cv_func_pthre=
ad_attr_getstack=3D${ac_cv_func_pthread_attr_getstack=3Dyes}</div><div>|=A0=
</div><div>
| #gcc-zlib</div><div>| ac_cv_func_getpagesize=3D${ac_cv_func_getpagesize=
=3Dyes}</div><div>| ac_cv_func_memcpy=3D${ac_cv_func_memcpy=3Dyes}</div><di=
v>| ac_cv_func_strerror=3D${ac_cv_func_strerror=3Dyes}</div><div>|=A0</div>=
<div>| # squid</div>
<div>| ac_cv_af_unix_large_dgram=3D${ac_cv_af_unix_large_dgram=3Dyes}</div>=
<div>| ac_cv_func_setresuid=3D${ac_cv_func_setresuid=3Dyes}</div><div>| ac_=
cv_func_va_copy=3D${ac_cv_func_va_copy=3Dyes}</div><div>| ac_cv_func___va_c=
opy=3D${ac_cv_func___va_copy=3Dyes}</div>
<div>| ac_cv_epoll_works=3D${ac_cv_epoll_works=3Dyes}</div><div>|=A0</div><=
div>| ac_cv_check_sjlj=3Dssjlj</div><div>|=A0</div><div>| # m4</div><div>| =
gt_cv_locale_fr=3D${gt_cv_locale_fr=3Dfr_FR}</div><div>| gl_cv_func_btowc_e=
of=3D${gl_cv_func_btowc_eof=3Dyes}</div>
<div>| gl_cv_func_wcrtomb_retval=3D${gl_cv_func_wcrtomb_retval=3Dyes}</div>=
<div>| gl_cv_func_wctob_works=3D${gl_cv_func_wctob_works=3Dyes}</div><div>|=
 gl_cv_func_mbrtowc_incomplete_state=3D${gl_cv_func_mbrtowc_incomplete_stat=
e=3Dyes}</div>
<div>| gl_cv_func_mbrtowc_sanitycheck=3D${gl_cv_func_mbrtowc_sanitycheck=3D=
yes}</div><div>| gl_cv_func_mbrtowc_null_arg=3D${gl_cv_func_mbrtowc_null_ar=
g=3Dyes}</div><div>| gl_cv_func_mbrtowc_retval=3D${gl_cv_func_mbrtowc_retva=
l=3Dyes}</div>
<div>| gl_cv_func_mbrtowc_nul_retval=3D${gl_cv_func_mbrtowc_nul_retval=3Dye=
s}</div><div>|=A0</div><div>| # va_copy and _va_copy</div><div>| ac_cv_va_c=
opy=3D${ac_cv_va_copy=3Dyes}</div><div>| ac_cv___va_copy=3D${ac_cv___va_cop=
y=3Dyes}</div>
<div>| ac_cv_func_va_copy=3D${ac_cv_func_va_copy=3Dyes}</div><div>| ac_cv_f=
unc___va_copy=3D${ac_cv_func___va_copy=3Dyes}</div><div>| # libelf</div><di=
v>| mr_cv_target_elf=3D${mr_cv_target_elf=3Dyes}</div><div>|=A0</div><div>|=
 # Normally kernels have /dev/random enabled</div>
<div>| ac_cv_file__dev_random=3D${ac_cv_file__dev_random=3Dyes}</div><div>|=
=A0</div><div>| # Avoid sudo to assume void for unsetenv in cross environme=
nt, or else it conflicts with</div><div>| # target stdlib.h prototype which=
 follows POSIX compiliance. Mark for upstream.</div>
<div>| sudo_cv_func_unsetenv_void=3Dno</div><div>|=A0</div><div>| # shadow =
dir info, to avoid searching build system</div><div>| shadow_cv_maildir=3D$=
{localstatedir}/spool/mail</div><div>| shadow_cv_mailfile=3DMailbox</div><d=
iv>| shadow_cv_utmpdir=3D${localstatedir}/run</div>
<div>| shadow_cv_logdir=3D${localstatedir}/log</div><div>| shadow_cv_passwd=
_dir=3D${bindir}</div><div>|=A0</div><div>| # python: deactivate a runtime =
check for ipv6-support in python &gt;=3D2.7.1 that fails when cross-compili=
ng</div>
<div>| ac_cv_buggy_getaddrinfo=3Dno</div><div>configure:2143: checking for =
a BSD-compatible install</div><div>configure:2211: result: /usr/bin/install=
 -c</div><div>configure:2222: checking whether build environment is sane</d=
iv>
<div>configure:2277: result: yes</div><div>configure:2336: checking for mip=
s-poky-linux-strip</div><div>configure:2363: result: mips-poky-linux-strip<=
/div><div>configure:2428: checking for a thread-safe mkdir -p</div><div>
configure:2467: result: /bin/mkdir -p</div><div>configure:2474: checking fo=
r gawk</div><div>configure:2490: found /usr/bin/gawk</div><div>configure:25=
01: result: gawk</div><div>configure:2512: checking whether make sets $(MAK=
E)</div>
<div>configure:2534: result: yes</div><div>configure:2654: checking build s=
ystem type</div><div>configure:2668: result: i686-pc-linux-gnu</div><div>co=
nfigure:2688: checking host system type</div><div>configure:2701: result: m=
ips-poky-linux-gnu</div>
<div>configure:2742: checking how to print strings</div><div>configure:2769=
: result: printf</div><div>configure:2802: checking for style of include us=
ed by make</div><div>configure:2830: result: GNU</div><div>configure:2861: =
checking for mips-poky-linux-gcc</div>
<div>configure:2888: result: mips-poky-linux-gcc =A0-meb -mabi=3D32 =A0 -mh=
ard-float -march=3Dmips32 --sysroot=3D/home/jph/test-yocto/mips</div><div>c=
onfigure:3157: checking for C compiler version</div><div>configure:3166: mi=
ps-poky-linux-gcc =A0-meb -mabi=3D32 =A0 -mhard-float -march=3Dmips32 --sys=
root=3D/home/jph/test-yocto/mips --version &gt;&amp;5</div>
<div>mips-poky-linux-gcc (GCC) 4.7.2</div><div>Copyright (C) 2012 Free Soft=
ware Foundation, Inc.</div><div>This is free software; see the source for c=
opying conditions. =A0There is NO</div><div>warranty; not even for MERCHANT=
ABILITY or FITNESS FOR A PARTICULAR PURPOSE.</div>
<div><br></div><div>configure:3177: $? =3D 0</div><div>configure:3166: mips=
-poky-linux-gcc =A0-meb -mabi=3D32 =A0 -mhard-float -march=3Dmips32 --sysro=
ot=3D/home/jph/test-yocto/mips -v &gt;&amp;5</div><div>Using built-in specs=
.</div><div>
COLLECT_GCC=3Dmips-poky-linux-gcc</div><div>COLLECT_LTO_WRAPPER=3D/home/jph=
/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexe=
c/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/lto-wrapper</div><div>Target:=
 mips-poky-linux</div>
<div>Configured with: /srv/home/pokybuild/yocto-autobuilder-new/yocto-slave=
/nightly-mips/build/build/tmp/work-shared/gcc-4.7.2-r19/gcc-4.7.2/configure=
 --build=3Dx86_64-linux --host=3Di686-pokysdk-linux --target=3Dmips-poky-li=
nux --prefix=3D/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr --exec_prefix=
=3D/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr --bindir=3D/opt/poky/1.4/s=
ysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux --sbindir=3D/opt/poky/=
1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linux --libexecdir=3D/o=
pt/poky/1.4/sysroots/i686-pokysdk-linux/usr/libexec/mips32-poky-linux --dat=
adir=3D/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/share --sysconfdir=3D/=
opt/poky/1.4/sysroots/i686-pokysdk-linux/etc --sharedstatedir=3D/opt/poky/1=
.4/sysroots/i686-pokysdk-linux/com --localstatedir=3D/opt/poky/1.4/sysroots=
/i686-pokysdk-linux/var --libdir=3D/opt/poky/1.4/sysroots/i686-pokysdk-linu=
x/usr/lib/mips32-poky-linux --includedir=3D/opt/poky/1.4/sysroots/i686-poky=
sdk-linux/usr/include --oldincludedir=3D/opt/poky/1.4/sysroots/i686-pokysdk=
-linux/usr/include --infodir=3D/opt/poky/1.4/sysroots/i686-pokysdk-linux/us=
r/share/info --mandir=3D/opt/poky/1.4/sysroots/i686-pokysdk-linux/usr/share=
/man --disable-silent-rules --disable-dependency-tracking --with-libtool-sy=
sroot=3D/srv/home/pokybuild/yocto-autobuilder-new/yocto-slave/nightly-mips/=
build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux --with-gnu-ld --enabl=
e-shared --enable-languages=3Dc,c++ --enable-threads=3Dposix --enable-multi=
lib --enable-c99 --enable-long-long --enable-symvers=3Dgnu --enable-libstdc=
xx-pch --program-prefix=3Dmips-poky-linux- --without-local-prefix --enable-=
target-optspace --enable-lto --enable-libssp --disable-bootstrap --disable-=
libmudflap --with-system-zlib --with-linker-hash-style=3Dsysv --enable-link=
er-build-id --with-ppl=3Dno --with-cloog=3Dno --enable-checking=3Drelease -=
-enable-cheaders=3Dc_global --with-gxx-include-dir=3D/opt/poky/1.4/sysroots=
/mips32-poky-linux/usr/include/c++ --with-build-time-tools=3D/srv/home/poky=
build/yocto-autobuilder-new/yocto-slave/nightly-mips/build/build/tmp/sysroo=
ts/x86_64-linux/usr/mips-poky-linux/bin --with-sysroot=3D/opt/poky/1.4/sysr=
oots/mips32-poky-linux --with-build-sysroot=3D/srv/home/pokybuild/yocto-aut=
obuilder-new/yocto-slave/nightly-mips/build/build/tmp/sysroots/qemumips --d=
isable-libunwind-exceptions --disable-libssp --disable-libgomp --disable-li=
bmudflap --with-mpfr=3D/srv/home/pokybuild/yocto-autobuilder-new/yocto-slav=
e/nightly-mips/build/build/tmp/sysroots/i686-nativesdk-pokysdk-linux --with=
-mpc=3D/srv/home/pokybuild/yocto-autobuilder-new/yocto-slave/nightly-mips/b=
uild/build/tmp/sysroots/i686-nativesdk-pokysdk-linux --enable-nls --enable-=
__cxa_atexit</div>
<div>Thread model: posix</div><div>gcc version 4.7.2 (GCC)=A0</div><div>con=
figure:3177: $? =3D 0</div><div>configure:3166: mips-poky-linux-gcc =A0-meb=
 -mabi=3D32 =A0 -mhard-float -march=3Dmips32 --sysroot=3D/home/jph/test-yoc=
to/mips -V &gt;&amp;5</div>
<div>mips-poky-linux-gcc: error: unrecognized command line option &#39;-V&#=
39;</div><div>mips-poky-linux-gcc: fatal error: no input files</div><div>co=
mpilation terminated.</div><div>configure:3177: $? =3D 1</div><div>configur=
e:3166: mips-poky-linux-gcc =A0-meb -mabi=3D32 =A0 -mhard-float -march=3Dmi=
ps32 --sysroot=3D/home/jph/test-yocto/mips -qversion &gt;&amp;5</div>
<div>mips-poky-linux-gcc: error: unrecognized command line option &#39;-qve=
rsion&#39;</div><div>mips-poky-linux-gcc: fatal error: no input files</div>=
<div>compilation terminated.</div><div>configure:3177: $? =3D 1</div><div>
configure:3197: checking whether the C compiler works</div><div>configure:3=
219: mips-poky-linux-gcc =A0-meb -mabi=3D32 =A0 -mhard-float -march=3Dmips3=
2 --sysroot=3D/home/jph/test-yocto/mips =A0-g -O0 =A0--sysroot=3D/home/jph/=
adt/1.4/sysroots =A0--sysroot=3D/home/jph/adt/1.4/sysroots =A0--sysroot=3D/=
home/jph/adt/1.4/sysroots conftest.c =A0&gt;&amp;5</div>
<div>/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linu=
x/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld: cannot find=
 crt1.o: No such file or directory</div><div>/home/jph/adt/1.4/sysroots/i68=
6-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux/g=
cc/mips-poky-linux/4.7.2/ld: cannot find crti.o: No such file or directory<=
/div>
<div>/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linu=
x/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld: cannot find=
 crtbegin.o: No such file or directory</div><div>/home/jph/adt/1.4/sysroots=
/i686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-lin=
ux/gcc/mips-poky-linux/4.7.2/ld: cannot find -lgcc</div>
<div>/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linu=
x/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld: cannot find=
 -lgcc_s</div><div>/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mi=
ps32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/l=
d: cannot find -lc</div>
<div>/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linu=
x/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld: cannot find=
 -lgcc</div><div>/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips=
32-poky-linux/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld:=
 cannot find -lgcc_s</div>
<div>/home/jph/adt/1.4/sysroots/i686-pokysdk-linux/usr/bin/mips32-poky-linu=
x/../../libexec/mips32-poky-linux/gcc/mips-poky-linux/4.7.2/ld: cannot find=
 crtend.o: No such file or directory</div><div>/home/jph/adt/1.4/sysroots/i=
686-pokysdk-linux/usr/bin/mips32-poky-linux/../../libexec/mips32-poky-linux=
/gcc/mips-poky-linux/4.7.2/ld: cannot find crtn.o: No such file or director=
y</div>
<div>collect2: error: ld returned 1 exit status</div><div>configure:3223: $=
? =3D 1</div><div>configure:3261: result: no</div><div>configure: failed pr=
ogram was:</div><div>| /* confdefs.h */</div><div>| #define PACKAGE_NAME &q=
uot;testApp2&quot;</div>
<div>| #define PACKAGE_TARNAME &quot;testapp2&quot;</div><div>| #define PAC=
KAGE_VERSION &quot;0.1.0&quot;</div><div>| #define PACKAGE_STRING &quot;tes=
tApp2 0.1.0&quot;</div><div>| #define PACKAGE_BUGREPORT &quot;&quot;</div>
<div>| #define PACKAGE_URL &quot;&quot;</div><div>| #define PACKAGE &quot;t=
estApp2&quot;</div><div>| #define VERSION &quot;0.1.0&quot;</div><div>| /* =
end confdefs.h. =A0*/</div><div>|=A0</div><div>| int</div><div>| main ()</d=
iv>
<div>| {</div><div>|=A0</div><div>| =A0 ;</div><div>| =A0 return 0;</div><d=
iv>| }</div><div>configure:3266: error: in `/home/jph/workspace/testApp2/&#=
39;:</div><div>configure:3268: error: C compiler cannot create executables<=
/div>
<div>See `config.log&#39; for more details</div><div><br></div><div>## ----=
------------ ##</div><div>## Cache variables. ##</div><div>## -------------=
--- ##</div><div><br></div><div>ac_cv___va_copy=3Dyes</div><div>ac_cv_af_un=
ix_large_dgram=3Dyes</div>
<div>ac_cv_alignof_CORBA_boolean=3D1</div><div>ac_cv_alignof_CORBA_char=3D1=
</div><div>ac_cv_alignof_CORBA_double=3D4</div><div>ac_cv_alignof_CORBA_flo=
at=3D4</div><div>ac_cv_alignof_CORBA_long=3D4</div><div>ac_cv_alignof_CORBA=
_long_double=3D4</div>
<div>ac_cv_alignof_CORBA_long_long=3D4</div><div>ac_cv_alignof_CORBA_octet=
=3D1</div><div>ac_cv_alignof_CORBA_pointer=3D4</div><div>ac_cv_alignof_CORB=
A_short=3D2</div><div>ac_cv_alignof_CORBA_struct=3D4</div><div>ac_cv_aligno=
f_CORBA_wchar=3D2</div>
<div>ac_cv_alignof_char=3D1</div><div>ac_cv_alignof_dbind_pointer=3D4</div>=
<div>ac_cv_alignof_dbind_struct=3D1</div><div>ac_cv_alignof_dbus_bool_t=3D4=
</div><div>ac_cv_alignof_dbus_int16_t=3D2</div><div>ac_cv_alignof_dbus_int3=
2_t=3D4</div>
<div>ac_cv_alignof_dbus_int64_t=3D4</div><div>ac_cv_alignof_double=3D4</div=
><div>ac_cv_alignof_guint32=3D4</div><div>ac_cv_alignof_guint64=3D4</div><d=
iv>ac_cv_alignof_unsigned_long=3D4</div><div>ac_cv_buggy_getaddrinfo=3Dno</=
div><div>
ac_cv_build=3Di686-pc-linux-gnu</div><div>ac_cv_c_bigendian=3Dno</div><div>=
ac_cv_c_endian=3Dlittle</div><div>ac_cv_c_littleendian=3Dyes</div><div>ac_c=
v_c_long_double=3Dyes</div><div>ac_cv_check_sjlj=3Dssjlj</div><div>ac_cv_co=
nv_longlong_to_float=3Dyes</div>
<div>ac_cv_dirent_have_space_d_name=3Dyes</div><div>ac_cv_env_CC_set=3Dset<=
/div><div>ac_cv_env_CC_value=3D&#39;mips-poky-linux-gcc =A0-meb -mabi=3D32 =
=A0 -mhard-float -march=3Dmips32 --sysroot=3D/home/jph/test-yocto/mips&#39;=
</div><div>ac_cv_env_CFLAGS_set=3Dset</div>
<div>ac_cv_env_CFLAGS_value=3D&#39; -g -O0 =A0--sysroot=3D/home/jph/adt/1.4=
/sysroots&#39;</div><div>ac_cv_env_CPPFLAGS_set=3Dset</div><div>ac_cv_env_C=
PPFLAGS_value=3D&#39; --sysroot=3D/home/jph/adt/1.4/sysroots&#39;</div><div=
>ac_cv_env_CPP_set=3Dset</div>
<div>ac_cv_env_CPP_value=3D&#39;mips-poky-linux-gcc -E =A0-meb -mabi=3D32 =
=A0 -mhard-float -march=3Dmips32 --sysroot=3D/home/jph/test-yocto/mips&#39;=
</div><div>ac_cv_env_LDFLAGS_set=3Dset</div><div>ac_cv_env_LDFLAGS_value=3D=
&#39; --sysroot=3D/home/jph/adt/1.4/sysroots&#39;</div>
<div>ac_cv_env_LIBS_set=3D</div><div>ac_cv_env_LIBS_value=3D</div><div>ac_c=
v_env_build_alias_set=3Dset</div><div>ac_cv_env_build_alias_value=3Di686-li=
nux</div><div>ac_cv_env_host_alias_set=3Dset</div><div>ac_cv_env_host_alias=
_value=3Dmips-poky-linux</div>
<div>ac_cv_env_target_alias_set=3Dset</div><div>ac_cv_env_target_alias_valu=
e=3Dmips-poky-linux</div><div>ac_cv_epoll_works=3Dyes</div><div>ac_cv_file_=
_dev_random=3Dyes</div><div>ac_cv_file__dev_zero=3Dyes</div><div>ac_cv_file=
__usr_share_X11_sgml_defs_ent=3Dno</div>
<div>ac_cv_file_lib_src_libmad_frame_h=3Dno</div><div>ac_cv_func___va_copy=
=3Dyes</div><div>ac_cv_func_fnmatch_works=3Dyes</div><div>ac_cv_func_getadd=
rinfo=3Dyes</div><div>ac_cv_func_getgrgid_r=3Dyes</div><div>ac_cv_func_getp=
agesize=3Dyes</div>
<div>ac_cv_func_getpgrp_void=3Dyes</div><div>ac_cv_func_getpwuid_r=3Dyes</d=
iv><div>ac_cv_func_lstat_dereferences_slashed_symlink=3Dyes</div><div>ac_cv=
_func_lstat_empty_string_bug=3Dno</div><div>ac_cv_func_malloc_0_nonnull=3Dy=
es</div>
<div>ac_cv_func_malloc_works=3Dyes</div><div>ac_cv_func_memcmp_working=3Dye=
s</div><div>ac_cv_func_memcpy=3Dyes</div><div>ac_cv_func_mmap_fixed_mapped=
=3Dyes</div><div>ac_cv_func_posix_getgrgid_r=3Dyes</div><div>ac_cv_func_pos=
ix_getpwnam_r=3Dyes</div>
<div>ac_cv_func_posix_getpwuid_r=3Dyes</div><div>ac_cv_func_printf_unix98=
=3Dyes</div><div>ac_cv_func_pthread_attr_getstack=3Dyes</div><div>ac_cv_fun=
c_pthread_key_delete=3Dyes</div><div>ac_cv_func_realloc_0_nonnull=3Dyes</di=
v><div>ac_cv_func_realloc_works=3Dyes</div>
<div>ac_cv_func_setgrent_void=3Dyes</div><div>ac_cv_func_setpgrp_void=3Dyes=
</div><div>ac_cv_func_setresuid=3Dyes</div><div>ac_cv_func_setvbuf_reversed=
=3Dno</div><div>ac_cv_func_snprintf_c99=3Dyes</div><div>ac_cv_func_stat_emp=
ty_string_bug=3Dno</div>
<div>ac_cv_func_stat_ignores_trailing_slash=3Dno</div><div>ac_cv_func_strer=
ror=3Dyes</div><div>ac_cv_func_va_copy=3Dyes</div><div>ac_cv_func_vsnprintf=
_c99=3Dyes</div><div>ac_cv_have_abstract_sockets=3Dyes</div><div>ac_cv_have=
_accrights_in_msghdr=3Dno</div>
<div>ac_cv_have_broken_snprintf=3Dno</div><div>ac_cv_have_control_in_msghdr=
=3Dyes</div><div>ac_cv_have_decl_sys_siglist=3Dyes</div><div>ac_cv_have_lon=
g_long_format=3Dyes</div><div>ac_cv_have_openpty_ctty_bug=3Dyes</div><div>a=
c_cv_have_space_d_name_in_struct_dirent=3Dyes</div>
<div>ac_cv_header_netinet_sctp_h=3Dno</div><div>ac_cv_header_netinet_sctp_u=
io_h=3Dno</div><div>ac_cv_host=3Dmips-poky-linux-gnu</div><div>ac_cv_lbl_un=
aligned_fail=3Dno</div><div>ac_cv_lib_c_signalfd=3Dyes</div><div>ac_cv_libi=
conv_utf8=3Dyes</div>
<div>ac_cv_libnet_endianess=3Dlil</div><div>ac_cv_linux_vers=3D2</div><div>=
ac_cv_need_trio=3Dno</div><div>ac_cv_o_nonblock_inherited=3Dno</div><div>ac=
_cv_path_ESD_CONFIG=3Dno</div><div>ac_cv_path_install=3D&#39;/usr/bin/insta=
ll -c&#39;</div>
<div>ac_cv_path_mkdir=3D/bin/mkdir</div><div>ac_cv_pread=3Dno</div><div>ac_=
cv_prog_AWK=3Dgawk</div><div>ac_cv_prog_CC=3D&#39;mips-poky-linux-gcc =A0-m=
eb -mabi=3D32 =A0 -mhard-float -march=3Dmips32 --sysroot=3D/home/jph/test-y=
octo/mips&#39;</div>
<div>ac_cv_prog_STRIP=3Dmips-poky-linux-strip</div><div>ac_cv_prog_make_mak=
e_set=3Dyes</div><div>ac_cv_pwrite=3Dno</div><div>ac_cv_sctp=3Dno</div><div=
>ac_cv_sizeof_char=3D1</div><div>ac_cv_sizeof_char_p=3D4</div><div>ac_cv_si=
zeof_dev_t=3D8</div>
<div>ac_cv_sizeof_float=3D4</div><div>ac_cv_sizeof_gid_t=3D4</div><div>ac_c=
v_sizeof_ino_t=3D4</div><div>ac_cv_sizeof_int=3D4</div><div>ac_cv_sizeof_in=
t_p=3D4</div><div>ac_cv_sizeof_long=3D4</div><div>ac_cv_sizeof_long_long=3D=
8</div><div>
ac_cv_sizeof_long_p=3D4</div><div>ac_cv_sizeof_off_t=3D4</div><div>ac_cv_si=
zeof_pid_t=3D4</div><div>ac_cv_sizeof_short=3D2</div><div>ac_cv_sizeof_size=
_t=3D4</div><div>ac_cv_sizeof_ssize_t=3D4</div><div>ac_cv_sizeof_uid_t=3D4<=
/div><div>
ac_cv_sizeof_unsigned_char=3D1</div><div>ac_cv_sizeof_unsigned_char_p=3D4</=
div><div>ac_cv_sizeof_unsigned_int=3D4</div><div>ac_cv_sizeof_unsigned_long=
=3D4</div><div>ac_cv_sizeof_unsigned_long_long=3D8</div><div>ac_cv_sizeof_u=
nsigned_short=3D2</div>
<div>ac_cv_sizeof_void_p=3D4</div><div>ac_cv_sizeof_wchar_t=3D4</div><div>a=
c_cv_sys_linker_h=3Dno</div><div>ac_cv_sys_restartable_syscalls=3Dyes</div>=
<div>ac_cv_type_struct_timespec=3Dyes</div><div>ac_cv_type_uid_t=3D&#39;{ac=
_cv_type_uid_t=3Dyes}&#39;</div>
<div>ac_cv_uchar=3Dno</div><div>ac_cv_uint=3Dyes</div><div>ac_cv_ulong=3Dye=
s</div><div>ac_cv_ushort=3Dyes</div><div>ac_cv_va_copy=3Dyes</div><div>ac_c=
v_va_val_copy=3Dyes</div><div>am_cv_func_working_getline=3Dyes</div><div>am=
_cv_scanf_lld=3Dyes</div>
<div>apr_cv_process_shared_works=3Dno</div><div>apr_cv_tcp_nodelay_with_cor=
k=3Dyes</div><div>bash_cv_dup2_broken=3Dno</div><div>bash_cv_func_sigsetjmp=
=3Dmissing</div><div>bash_cv_func_strcoll_broken=3Dno</div><div>bash_cv_get=
cwd_calls_popen=3Dno</div>
<div>bash_cv_getenv_redef=3Dyes</div><div>bash_cv_have_mbstate_t=3Dyes</div=
><div>bash_cv_job_control_missing=3Dpresent</div><div>bash_cv_must_reinstal=
l_sighandlers=3Dno</div><div>bash_cv_opendir_not_robust=3Dno</div><div>bash=
_cv_pgrp_pipe=3Dno</div>
<div>bash_cv_printf_a_format=3Dyes</div><div>bash_cv_sys_named_pipes=3Dpres=
ent</div><div>bash_cv_sys_siglist=3Dyes</div><div>bash_cv_type_rlimit=3Drli=
m_t</div><div>bash_cv_ulimit_maxfds=3Dyes</div><div>bash_cv_under_sys_sigli=
st=3Dyes</div>
<div>bash_cv_unusable_rtsigs=3Dno</div><div>cvs_cv_func_printf_ptr=3Dyes</d=
iv><div>db_cv_align_t=3D&#39;unsigned long long&#39;</div><div>db_cv_alignp=
_t=3D&#39;unsigned long&#39;</div><div>db_cv_fcntl_f_setfd=3Dyes</div><div>=
db_cv_path_ar=3D/usr/bin/ar</div>
<div>db_cv_path_chmod=3D/bin/chmod</div><div>db_cv_path_cp=3D/bin/cp</div><=
div>db_cv_path_ln=3D/bin/ln</div><div>db_cv_path_mkdir=3D/bin/mkdir</div><d=
iv>db_cv_path_ranlib=3D/usr/bin/ranlib</div><div>db_cv_path_rm=3D/bin/rm</d=
iv><div>
db_cv_path_sh=3D/bin/sh</div><div>db_cv_path_strip=3D/usr/bin/strip</div><d=
iv>db_cv_sprintf_count=3Dyes</div><div>ettercap_cv_type_socklen_t=3Dyes</di=
v><div>fu_cv_sys_stat_statfs2_bsize=3Dyes</div><div>gl_cv_func_btowc_eof=3D=
yes</div>
<div>gl_cv_func_fstatat_zero_flag=3Dyes</div><div>gl_cv_func_mbrtowc_incomp=
lete_state=3Dyes</div><div>gl_cv_func_mbrtowc_nul_retval=3Dyes</div><div>gl=
_cv_func_mbrtowc_null_arg=3Dyes</div><div>gl_cv_func_mbrtowc_retval=3Dyes</=
div><div>
gl_cv_func_mbrtowc_sanitycheck=3Dyes</div><div>gl_cv_func_wcrtomb_retval=3D=
yes</div><div>gl_cv_func_wctob_works=3Dyes</div><div>glib_cv___va_copy=3Dye=
s</div><div>glib_cv_compliant_posix_memalign=3D1</div><div>glib_cv_has__inl=
ine=3Dyes</div>
<div>glib_cv_has__inline__=3Dyes</div><div>glib_cv_hasinline=3Dyes</div><di=
v>glib_cv_have_qsort_r=3Dyes</div><div>glib_cv_long_long_format=3Dll</div><=
div>glib_cv_rtldglobal_broken=3Dyes</div><div>glib_cv_sane_realloc=3Dyes</d=
iv><div>
glib_cv_sizeof_gmutex=3D24</div><div>glib_cv_sizeof_system_thread=3D4</div>=
<div>glib_cv_stack_grows=3Dno</div><div>glib_cv_strlcpy=3Dno</div><div>glib=
_cv_sys_pthread_cond_timedwait_posix=3Dyes</div><div>glib_cv_sys_pthread_ge=
tspecific_posix=3Dyes</div>
<div>glib_cv_sys_pthread_mutex_trylock_posix=3Dyes</div><div>glib_cv_uscore=
=3Dno</div><div>glib_cv_use_pid_surrogate=3Dyes</div><div>glib_cv_va_copy=
=3Dyes</div><div>glib_cv_va_val_copy=3Dyes</div><div>gt_cv_locale_fr=3Dfr_F=
R</div><div>
jm_cv_func_gettimeofday_clobber=3Dno</div><div>jm_cv_func_working_readdir=
=3Dyes</div><div>lf_cv_sane_realloc=3Dyes</div><div>lftp_cv_va_val_copy=3Dy=
es</div><div>libIDL_cv_long_long_format=3Dll</div><div>moz_cv_align_of_JS_A=
LIGN_OF_POINTER=3D4</div>
<div>moz_cv_size_of_JS_BYTES_PER_DOUBLE=3D8</div><div>moz_cv_size_of_JS_BYT=
ES_PER_WORD=3D4</div><div>mr_cv_target_elf=3Dyes</div><div>mysql_cv_func_at=
omic_add=3Dyes</div><div>mysql_cv_func_atomic_sub=3Dyes</div><div>nfsd_cv_b=
roken_setfsuid=3D0</div>
<div>nfsd_cv_bsd_signals=3Dyes</div><div>nfsd_cv_func_statfs=3Dstatfs2_bsiz=
e</div><div>php_cv_lib_cookie_io_functions_use_off64_t=3Dyes</div><div>rsyn=
c_cv_HAVE_BROKEN_LARGEFILE=3Dno</div><div>rsync_cv_HAVE_BROKEN_READDIR=3Dno=
</div>
<div>rsync_cv_HAVE_C99_VSNPRINTF=3Dyes</div><div>rsync_cv_HAVE_GETTIMEOFDAY=
_TZ=3Dyes</div><div>rsync_cv_HAVE_LONGLONG=3Dyes</div><div>rsync_cv_HAVE_OF=
F64_T=3Dno</div><div>rsync_cv_HAVE_SECURE_MKSTEMP=3Dyes</div><div>rsync_cv_=
HAVE_SHORT_INO_T=3Dno</div>
<div>rsync_cv_HAVE_SOCKETPAIR=3Dyes</div><div>rsync_cv_HAVE_UNSIGNED_CHAR=
=3Dno</div><div>rsync_cv_REPLACE_INET_ATON=3Dno</div><div>rsync_cv_REPLACE_=
INET_NTOA=3Dno</div><div>samba_cv_HAVE_GETTIMEOFDAY_TZ=3Dyes</div><div>samb=
a_cv_HAVE_IFACE_AIX=3Dno</div>
<div>samba_cv_HAVE_IFACE_IFCONF=3Dyes</div><div>samba_cv_HAVE_IFACE_IFREQ=
=3Dyes</div><div>samba_cv_HAVE_IRIX_SPECIFIC_CAPABILITIES=3Dno</div><div>sc=
reen_cv_sys_bcopy_overlap=3Dno</div><div>screen_cv_sys_fifo_broken_impl=3Dy=
es</div>
<div>screen_cv_sys_fifo_usable=3Dyes</div><div>screen_cv_sys_memcpy_overlap=
=3Dno</div><div>screen_cv_sys_memmove_overlap=3Dno</div><div>screen_cv_sys_=
select_broken_retval=3Dno</div><div>screen_cv_sys_sockets_nofs=3Dno</div><d=
iv>screen_cv_sys_sockets_usable=3Dyes</div>
<div>screen_cv_sys_terminfo_used=3Dyes</div><div>shadow_cv_logdir=3D&#39;${=
prefix}/var/log&#39;</div><div>shadow_cv_maildir=3D&#39;${prefix}/var/spool=
/mail&#39;</div><div>shadow_cv_mailfile=3DMailbox</div><div>shadow_cv_passw=
d_dir=3D&#39;${exec_prefix}/bin&#39;</div>
<div>shadow_cv_utmpdir=3D&#39;${prefix}/var/run&#39;</div><div>slrn_cv_va_v=
al_copy=3Dyes</div><div>sudo_cv_func_unsetenv_void=3Dno</div><div>tcl_cv_ap=
i_serial=3Dtermios</div><div>utils_cv_sys_open_max=3D1015</div><div><br></d=
iv><div>
## ----------------- ##</div><div>## Output variables. ##</div><div>## ----=
------------- ##</div><div><br></div><div>ACLOCAL=3D&#39;${SHELL} /home/jph=
/workspace/testApp2/missing --run aclocal-1.12&#39;</div><div>AMDEPBACKSLAS=
H=3D&#39;\&#39;</div>
<div>AMDEP_FALSE=3D&#39;#&#39;</div><div>AMDEP_TRUE=3D&#39;&#39;</div><div>=
AMTAR=3D&#39;$${TAR-tar}&#39;</div><div>AR=3D&#39;mips-poky-linux-ar&#39;</=
div><div>AUTOCONF=3D&#39;${SHELL} /home/jph/workspace/testApp2/missing --ru=
n autoconf&#39;</div>
<div>AUTOHEADER=3D&#39;${SHELL} /home/jph/workspace/testApp2/missing --run =
autoheader&#39;</div><div>AUTOMAKE=3D&#39;${SHELL} /home/jph/workspace/test=
App2/missing --run automake-1.12&#39;</div><div>AWK=3D&#39;gawk&#39;</div><=
div>
CC=3D&#39;mips-poky-linux-gcc =A0-meb -mabi=3D32 =A0 -mhard-float -march=3D=
mips32 --sysroot=3D/home/jph/test-yocto/mips&#39;</div><div>CCDEPMODE=3D&#3=
9;&#39;</div><div>CFLAGS=3D&#39; -g -O0 =A0--sysroot=3D/home/jph/adt/1.4/sy=
sroots&#39;</div>
<div>CPP=3D&#39;mips-poky-linux-gcc -E =A0-meb -mabi=3D32 =A0 -mhard-float =
-march=3Dmips32 --sysroot=3D/home/jph/test-yocto/mips&#39;</div><div>CPPFLA=
GS=3D&#39; --sysroot=3D/home/jph/adt/1.4/sysroots&#39;</div><div>CYGPATH_W=
=3D&#39;echo&#39;</div>
<div>DEFS=3D&#39;&#39;</div><div>DEPDIR=3D&#39;.deps&#39;</div><div>DLLTOOL=
=3D&#39;&#39;</div><div>DSYMUTIL=3D&#39;&#39;</div><div>DUMPBIN=3D&#39;&#39=
;</div><div>ECHO_C=3D&#39;&#39;</div><div>ECHO_N=3D&#39;-n&#39;</div><div>E=
CHO_T=3D&#39;&#39;</div>
<div>EGREP=3D&#39;&#39;</div><div>EXEEXT=3D&#39;&#39;</div><div>FGREP=3D&#3=
9;&#39;</div><div>GREP=3D&#39;&#39;</div><div>INSTALL_DATA=3D&#39;${INSTALL=
} -m 644&#39;</div><div>INSTALL_PROGRAM=3D&#39;${INSTALL}&#39;</div><div>IN=
STALL_SCRIPT=3D&#39;${INSTALL}&#39;</div>
<div>INSTALL_STRIP_PROGRAM=3D&#39;$(install_sh) -c -s&#39;</div><div>LD=3D&=
#39;mips-poky-linux-ld =A0--sysroot=3D/home/jph/test-yocto/mips&#39;</div><=
div>LDFLAGS=3D&#39; --sysroot=3D/home/jph/adt/1.4/sysroots&#39;</div><div>L=
IBOBJS=3D&#39;&#39;</div>
<div>LIBS=3D&#39;&#39;</div><div>LIBTOOL=3D&#39;&#39;</div><div>LIPO=3D&#39=
;&#39;</div><div>LN_S=3D&#39;&#39;</div><div>LTLIBOBJS=3D&#39;&#39;</div><d=
iv>MAKEINFO=3D&#39;${SHELL} /home/jph/workspace/testApp2/missing --run make=
info&#39;</div>
<div>MANIFEST_TOOL=3D&#39;&#39;</div><div>MKDIR_P=3D&#39;/bin/mkdir -p&#39;=
</div><div>NM=3D&#39;mips-poky-linux-nm&#39;</div><div>NMEDIT=3D&#39;&#39;<=
/div><div>OBJDUMP=3D&#39;mips-poky-linux-objdump&#39;</div><div>OBJEXT=3D&#=
39;&#39;</div>
<div>OTOOL64=3D&#39;&#39;</div><div>OTOOL=3D&#39;&#39;</div><div>PACKAGE=3D=
&#39;testApp2&#39;</div><div>PACKAGE_BUGREPORT=3D&#39;&#39;</div><div>PACKA=
GE_NAME=3D&#39;testApp2&#39;</div><div>PACKAGE_STRING=3D&#39;testApp2 0.1.0=
&#39;</div>
<div>PACKAGE_TARNAME=3D&#39;testapp2&#39;</div><div>PACKAGE_URL=3D&#39;&#39=
;</div><div>PACKAGE_VERSION=3D&#39;0.1.0&#39;</div><div>PATH_SEPARATOR=3D&#=
39;:&#39;</div><div>RANLIB=3D&#39;mips-poky-linux-ranlib&#39;</div><div>SED=
=3D&#39;&#39;</div>
<div>SET_MAKE=3D&#39;&#39;</div><div>SHELL=3D&#39;/bin/bash&#39;</div><div>=
STRIP=3D&#39;mips-poky-linux-strip&#39;</div><div>VERSION=3D&#39;0.1.0&#39;=
</div><div>ac_ct_AR=3D&#39;&#39;</div><div>ac_ct_CC=3D&#39;&#39;</div><div>=
ac_ct_DUMPBIN=3D&#39;&#39;</div>
<div>am__EXEEXT_FALSE=3D&#39;&#39;</div><div>am__EXEEXT_TRUE=3D&#39;&#39;</=
div><div>am__fastdepCC_FALSE=3D&#39;&#39;</div><div>am__fastdepCC_TRUE=3D&#=
39;&#39;</div><div>am__include=3D&#39;include&#39;</div><div>am__isrc=3D&#3=
9; -I$(srcdir)&#39;</div>
<div>am__leading_dot=3D&#39;.&#39;</div><div>am__nodep=3D&#39;_no&#39;</div=
><div>am__quote=3D&#39;&#39;</div><div>am__tar=3D&#39;$${TAR-tar} chof - &q=
uot;$$tardir&quot;&#39;</div><div>am__untar=3D&#39;$${TAR-tar} xf -&#39;</d=
iv><div>
bindir=3D&#39;${exec_prefix}/bin&#39;</div><div>build=3D&#39;i686-pc-linux-=
gnu&#39;</div><div>build_alias=3D&#39;i686-linux&#39;</div><div>build_cpu=
=3D&#39;i686&#39;</div><div>build_os=3D&#39;linux-gnu&#39;</div><div>build_=
vendor=3D&#39;pc&#39;</div>
<div>datadir=3D&#39;${datarootdir}&#39;</div><div>datarootdir=3D&#39;${pref=
ix}/share&#39;</div><div>docdir=3D&#39;${datarootdir}/doc/${PACKAGE_TARNAME=
}&#39;</div><div>dvidir=3D&#39;${docdir}&#39;</div><div>exec_prefix=3D&#39;=
NONE&#39;</div>
<div>host=3D&#39;mips-poky-linux-gnu&#39;</div><div>host_alias=3D&#39;mips-=
poky-linux&#39;</div><div>host_cpu=3D&#39;mips&#39;</div><div>host_os=3D&#3=
9;linux-gnu&#39;</div><div>host_vendor=3D&#39;poky&#39;</div><div>htmldir=
=3D&#39;${docdir}&#39;</div>
<div>includedir=3D&#39;${prefix}/include&#39;</div><div>infodir=3D&#39;${da=
tarootdir}/info&#39;</div><div>install_sh=3D&#39;${SHELL} /home/jph/workspa=
ce/testApp2/install-sh&#39;</div><div>libdir=3D&#39;${exec_prefix}/lib&#39;=
</div>
<div>libexecdir=3D&#39;${exec_prefix}/libexec&#39;</div><div>localedir=3D&#=
39;${datarootdir}/locale&#39;</div><div>localstatedir=3D&#39;${prefix}/var&=
#39;</div><div>mandir=3D&#39;${datarootdir}/man&#39;</div><div>mkdir_p=3D&#=
39;$(MKDIR_P)&#39;</div>
<div>oldincludedir=3D&#39;/usr/include&#39;</div><div>pdfdir=3D&#39;${docdi=
r}&#39;</div><div>prefix=3D&#39;NONE&#39;</div><div>program_transform_name=
=3D&#39;s,x,x,&#39;</div><div>psdir=3D&#39;${docdir}&#39;</div><div>sbindir=
=3D&#39;${exec_prefix}/sbin&#39;</div>
<div>sharedstatedir=3D&#39;${prefix}/com&#39;</div><div>sysconfdir=3D&#39;$=
{prefix}/etc&#39;</div><div>target_alias=3D&#39;mips-poky-linux&#39;</div><=
div>testApp2_CFLAGS=3D&#39;&#39;</div><div>testApp2_LIBS=3D&#39;&#39;</div>=
<div><br>
</div><div>## ----------- ##</div><div>## confdefs.h. ##</div><div>## -----=
------ ##</div><div><br></div><div>/* confdefs.h */</div><div>#define PACKA=
GE_NAME &quot;testApp2&quot;</div><div>#define PACKAGE_TARNAME &quot;testap=
p2&quot;</div>
<div>#define PACKAGE_VERSION &quot;0.1.0&quot;</div><div>#define PACKAGE_ST=
RING &quot;testApp2 0.1.0&quot;</div><div>#define PACKAGE_BUGREPORT &quot;&=
quot;</div><div>#define PACKAGE_URL &quot;&quot;</div><div>#define PACKAGE =
&quot;testApp2&quot;</div>
<div>#define VERSION &quot;0.1.0&quot;</div><div><br></div><div>configure: =
exit 77</div><div><br></div></div><div><br></div><div><br></div><div><br></=
div><div><br></div><div><br></div><div><br></div>-- <br>Precipice Developme=
nt International<br>
<a href=3D"http://www.precipicedevelopment.com">http://www.precipicedevelop=
ment.com</a>
</div></div>

--047d7b07230c9ab84404dd46c606--
