Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A222CE0034A
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 11:09:43 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so2514020pbb.35
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 11:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=YwAJu9L9m9garC4NK46+m9gA5JNk5IpWeUIratE5uIA=;
	b=LgEWWfU6kP5uEjxgavsETkQWggN+YRqutWeH89zUj7CvQy/D8wuRFNSHI9CuMv/Rwj
	U59tFr5V6cXzffdXKY1AwJm24G3w3FitKH/Pmr/SVTB+2RiKyT3tSZ8CGkPD3nLSJd62
	QAgbopWGBT24Vb2ePR/2CkzVj+adrnVNCxEEEnG2LswTfUSmXZsD+oSXRQZNDa0xnmbq
	GRgWpoQbExj0UuQ7u66xkTlLj4cCyGkBsmXye3tPItfvi9SzZ6azX5UvwtR4kRR1AEMm
	2mfFSv1QeqN7y1jHuCiFd+N0tLtIBBdD23ag0eMKU7czaluQpKUuOWh25Ob4yEGvYXtS
	ODNg==
Received: by 10.68.221.3 with SMTP id qa3mr14699904pbc.42.1344622183398;
	Fri, 10 Aug 2012 11:09:43 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id sh10sm3776921pbc.29.2012.08.10.11.09.40
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 10 Aug 2012 11:09:42 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 10 Aug 2012 22:09:37 +0400
Message-Id: <9C539FF3-34FD-4EE0-96DA-B4476B2EB410@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: external-sourcery-toolchain: do_compile failed for sqlite3-3.7.13
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
X-List-Received-Date: Fri, 10 Aug 2012 18:09:43 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_004F32D1-65C2-4526-A875-7B2E2E8DDFAE"

--Apple-Mail=_004F32D1-65C2-4526-A875-7B2E2E8DDFAE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      I get a build failure for sqlite3-3.7.13 with =
external-sourcery-toolchain =
mentor-2012.03-71-powerpc-mentor-linux-gnu.bin:


ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/sqlite3-3.7.13-r0/temp/l=
og.do_compile.48315 for further information)
ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/sqlite3-3.7.13-r0/temp/l=
og.do_compile.48315
Log data follows:
| DEBUG: SITE files ['endian-big', 'bit-32', 'powerpc-common', =
'common-linux', 'common-glibc', 'powerpc32-linux', 'powerpc-linux', =
'common']
| DEBUG: Executing shell function do_compile
| NOTE: make -j 6
| ./powerpc-poky-linux-libtool --tag=3DCC   --mode=3Dcompile =
powerpc-mentor-linux-gnu-gcc  -m32  -msoft-float -mcpu=3D440 =
-msoft-float --sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
-DPACKAGE_NAME=3D\"sqlite\" -DPACKAGE_TARNAME=3D\"sqlite\" =
-DPACKAGE_VERSION=3D\"3.7.13\" -DPACKAGE_STRING=3D\"sqlite\ 3.7.13\" =
-DPACKAGE_BUGREPORT=3D\"http://www.sqlite.org\" -DPACKAGE_URL=3D\"\" =
-DPACKAGE=3D\"sqlite\" -DVERSION=3D\"3.7.13\" -D_FILE_OFFSET_BITS=3D64 =
-DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 =
-DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 =
-DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 =
-DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" =
-DHAVE_FDATASYNC=3D1 -DHAVE_USLEEP=3D1 -DHAVE_LOCALTIME_R=3D1 =
-DHAVE_GMTIME_R=3D1 -DHAVE_DECL_STRERROR_R=3D1 -DHAVE_STRERROR_R=3D1 =
-DHAVE_READLINE=3D1 -DHAVE_POSIX_FALLOCATE=3D1 -I.    -D_REENTRANT=3D1 =
-DSQLITE_THREADSAFE=3D1  -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_RTREE -O2 =
-pipe -g -feliminate-unused-debug-types -c -o sqlite3.lo sqlite3.c
| powerpc-mentor-linux-gnu-gcc  -m32  -msoft-float -mcpu=3D440 =
-msoft-float --sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
-DPACKAGE_NAME=3D\"sqlite\" -DPACKAGE_TARNAME=3D\"sqlite\" =
-DPACKAGE_VERSION=3D\"3.7.13\" -DPACKAGE_STRING=3D\"sqlite\ 3.7.13\" =
-DPACKAGE_BUGREPORT=3D\"http://www.sqlite.org\" -DPACKAGE_URL=3D\"\" =
-DPACKAGE=3D\"sqlite\" -DVERSION=3D\"3.7.13\" -D_FILE_OFFSET_BITS=3D64 =
-DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 =
-DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 =
-DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 =
-DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" =
-DHAVE_FDATASYNC=3D1 -DHAVE_USLEEP=3D1 -DHAVE_LOCALTIME_R=3D1 =
-DHAVE_GMTIME_R=3D1 -DHAVE_DECL_STRERROR_R=3D1 -DHAVE_STRERROR_R=3D1 =
-DHAVE_READLINE=3D1 -DHAVE_POSIX_FALLOCATE=3D1 -I.    -D_REENTRANT=3D1 =
-DSQLITE_THREADSAFE=3D1  -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_RTREE -O2 =
-pipe -g -feliminate-unused-debug-types -c shell.c
| powerpc-poky-linux-libtool: compile:  powerpc-mentor-linux-gnu-gcc =
-m32 -msoft-float -mcpu=3D440 -msoft-float =
--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
-DPACKAGE_NAME=3D\"sqlite\" -DPACKAGE_TARNAME=3D\"sqlite\" =
-DPACKAGE_VERSION=3D\"3.7.13\" "-DPACKAGE_STRING=3D\"sqlite 3.7.13\"" =
-DPACKAGE_BUGREPORT=3D\"http://www.sqlite.org\" -DPACKAGE_URL=3D\"\" =
-DPACKAGE=3D\"sqlite\" -DVERSION=3D\"3.7.13\" -D_FILE_OFFSET_BITS=3D64 =
-DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 =
-DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 =
-DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 =
-DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" =
-DHAVE_FDATASYNC=3D1 -DHAVE_USLEEP=3D1 -DHAVE_LOCALTIME_R=3D1 =
-DHAVE_GMTIME_R=3D1 -DHAVE_DECL_STRERROR_R=3D1 -DHAVE_STRERROR_R=3D1 =
-DHAVE_READLINE=3D1 -DHAVE_POSIX_FALLOCATE=3D1 -I. -D_REENTRANT=3D1 =
-DSQLITE_THREADSAFE=3D1 -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_RTREE -O2 =
-pipe -g -feliminate-unused-debug-types -c sqlite3.c  -fPIC -DPIC -o =
.libs/sqlite3.o
| powerpc-poky-linux-libtool: compile:  powerpc-mentor-linux-gnu-gcc =
-m32 -msoft-float -mcpu=3D440 -msoft-float =
--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
-DPACKAGE_NAME=3D\"sqlite\" -DPACKAGE_TARNAME=3D\"sqlite\" =
-DPACKAGE_VERSION=3D\"3.7.13\" "-DPACKAGE_STRING=3D\"sqlite 3.7.13\"" =
-DPACKAGE_BUGREPORT=3D\"http://www.sqlite.org\" -DPACKAGE_URL=3D\"\" =
-DPACKAGE=3D\"sqlite\" -DVERSION=3D\"3.7.13\" -D_FILE_OFFSET_BITS=3D64 =
-DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 =
-DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 =
-DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 =
-DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" =
-DHAVE_FDATASYNC=3D1 -DHAVE_USLEEP=3D1 -DHAVE_LOCALTIME_R=3D1 =
-DHAVE_GMTIME_R=3D1 -DHAVE_DECL_STRERROR_R=3D1 -DHAVE_STRERROR_R=3D1 =
-DHAVE_READLINE=3D1 -DHAVE_POSIX_FALLOCATE=3D1 -I. -D_REENTRANT=3D1 =
-DSQLITE_THREADSAFE=3D1 -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_RTREE -O2 =
-pipe -g -feliminate-unused-debug-types -c sqlite3.c -o sqlite3.o =
>/dev/null 2>&1
| ./powerpc-poky-linux-libtool --tag=3DCC   --mode=3Dlink =
powerpc-mentor-linux-gnu-gcc  -m32  -msoft-float -mcpu=3D440 =
-msoft-float --sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
-D_REENTRANT=3D1 -DSQLITE_THREADSAFE=3D1  -DSQLITE_ENABLE_FTS3 =
-DSQLITE_ENABLE_RTREE -O2 -pipe -g -feliminate-unused-debug-types =
-no-undefined -version-info 8:6:8 -Wl,-O1 -Wl,--hash-style=3Dgnu -o =
libsqlite3.la -rpath /usr/lib sqlite3.lo  -ldl -lpthread
| powerpc-poky-linux-libtool: link: powerpc-mentor-linux-gnu-gcc  -m32  =
-msoft-float -mcpu=3D440 -msoft-float =
--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 -shared  -fPIC =
-DPIC  .libs/sqlite3.o   -ldl -lpthread  -m32 -msoft-float -mcpu=3D440 =
-msoft-float --sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 -O2 =
-Wl,-O1 -Wl,--hash-style=3Dgnu   -Wl,-soname -Wl,libsqlite3.so.0 -o =
.libs/libsqlite3.so.0.8.6
| powerpc-poky-linux-libtool: link: (cd ".libs" && rm -f =
"libsqlite3.so.0" && ln -s "libsqlite3.so.0.8.6" "libsqlite3.so.0")
| powerpc-poky-linux-libtool: link: (cd ".libs" && rm -f "libsqlite3.so" =
&& ln -s "libsqlite3.so.0.8.6" "libsqlite3.so")
| powerpc-poky-linux-libtool: link: powerpc-mentor-linux-gnu-ar cru =
.libs/libsqlite3.a  sqlite3.o
| powerpc-poky-linux-libtool: link: powerpc-mentor-linux-gnu-ranlib =
.libs/libsqlite3.a
| powerpc-poky-linux-libtool: link: ( cd ".libs" && rm -f =
"libsqlite3.la" && ln -s "../libsqlite3.la" "libsqlite3.la" )
| ./powerpc-poky-linux-libtool --tag=3DCC   --mode=3Dlink =
powerpc-mentor-linux-gnu-gcc  -m32  -msoft-float -mcpu=3D440 =
-msoft-float --sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
-D_REENTRANT=3D1 -DSQLITE_THREADSAFE=3D1  -DSQLITE_ENABLE_FTS3 =
-DSQLITE_ENABLE_RTREE -O2 -pipe -g -feliminate-unused-debug-types  =
-Wl,-O1 -Wl,--hash-style=3Dgnu -o sqlite3 shell.o ./libsqlite3.la =
-lreadline -lcurses  -ldl -lpthread
| powerpc-poky-linux-libtool: link: powerpc-mentor-linux-gnu-gcc -m32 =
-msoft-float -mcpu=3D440 -msoft-float =
--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 -D_REENTRANT=3D1 =
-DSQLITE_THREADSAFE=3D1 -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_RTREE -O2 =
-pipe -g -feliminate-unused-debug-types -Wl,-O1 -Wl,--hash-style=3Dgnu =
-o .libs/sqlite3 shell.o  ./.libs/libsqlite3.so -lreadline -lcurses -ldl =
-lpthread
| ./.libs/libsqlite3.so: undefined reference to `__gcc_qtod'
| ./.libs/libsqlite3.so: undefined reference to `__gcc_qneg'
| ./.libs/libsqlite3.so: undefined reference to `__gcc_qge'
| ./.libs/libsqlite3.so: undefined reference to `__gcc_qlt'
| ./.libs/libsqlite3.so: undefined reference to `__gcc_itoq'
| ./.libs/libsqlite3.so: undefined reference to `__gcc_qtoi'
| ./.libs/libsqlite3.so: undefined reference to `__gcc_qgt'
| ./.libs/libsqlite3.so: undefined reference to `__gcc_dtoq'
| collect2: ld returned 1 exit status
| make: *** [sqlite3] Error 1
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/sqlite3-3.7.13-r0/temp/l=
og.do_compile.48315 for further information)
NOTE: package sqlite3-3.7.13-r0: task do_compile: Failed


Elvis Dowson


--Apple-Mail=_004F32D1-65C2-4526-A875-7B2E2E8DDFAE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><div>Hi,</div><div>&nbsp; &nbsp; &nbsp; I get a build failure =
for&nbsp;sqlite3-3.7.13 with external-sourcery-toolchain <a =
href=3D"http://sourcery.mentor.com/public/gnu_toolchain/powerpc-mentor-lin=
ux-gnu/mentor-2012.03-71-powerpc-mentor-linux-gnu.bin">mentor-2012.03-71-p=
owerpc-mentor-linux-gnu.bin</a>:</div><div><br></div><div><br></div><div><=
div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: =
Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/sqlite3-3.7.13-r0/temp/l=
og.do_compile.48315 for further information)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: Logfile of =
failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/sqlite3-3.7.13-r0/temp/l=
og.do_compile.48315</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Log data follows:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| DEBUG: SITE =
files ['endian-big', 'bit-32', 'powerpc-common', 'common-linux', =
'common-glibc', 'powerpc32-linux', 'powerpc-linux', =
'common']</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| DEBUG: Executing shell function =
do_compile</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| NOTE: make -j 6</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
./powerpc-poky-linux-libtool --tag=3DCC &nbsp; --mode=3Dcompile =
powerpc-mentor-linux-gnu-gcc &nbsp;-m32 &nbsp;-msoft-float -mcpu=3D440 =
-msoft-float --sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
-DPACKAGE_NAME=3D\"sqlite\" -DPACKAGE_TARNAME=3D\"sqlite\" =
-DPACKAGE_VERSION=3D\"3.7.13\" -DPACKAGE_STRING=3D\"sqlite\ 3.7.13\" =
-DPACKAGE_BUGREPORT=3D\"<a =
href=3D"http://www.sqlite.org\">http://www.sqlite.org\</a>" =
-DPACKAGE_URL=3D\"\" -DPACKAGE=3D\"sqlite\" -DVERSION=3D\"3.7.13\" =
-D_FILE_OFFSET_BITS=3D64 -DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=3D1 =
-DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 =
-DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 =
-DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 =
-DLT_OBJDIR=3D\".libs/\" -DHAVE_FDATASYNC=3D1 -DHAVE_USLEEP=3D1 =
-DHAVE_LOCALTIME_R=3D1 -DHAVE_GMTIME_R=3D1 -DHAVE_DECL_STRERROR_R=3D1 =
-DHAVE_STRERROR_R=3D1 -DHAVE_READLINE=3D1 -DHAVE_POSIX_FALLOCATE=3D1 -I. =
&nbsp; &nbsp;-D_REENTRANT=3D1 -DSQLITE_THREADSAFE=3D1 =
&nbsp;-DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_RTREE -O2 -pipe -g =
-feliminate-unused-debug-types -c -o sqlite3.lo =
sqlite3.c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| powerpc-mentor-linux-gnu-gcc &nbsp;-m32 =
&nbsp;-msoft-float -mcpu=3D440 -msoft-float =
--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
-DPACKAGE_NAME=3D\"sqlite\" -DPACKAGE_TARNAME=3D\"sqlite\" =
-DPACKAGE_VERSION=3D\"3.7.13\" -DPACKAGE_STRING=3D\"sqlite\ 3.7.13\" =
-DPACKAGE_BUGREPORT=3D\"<a =
href=3D"http://www.sqlite.org\">http://www.sqlite.org\</a>" =
-DPACKAGE_URL=3D\"\" -DPACKAGE=3D\"sqlite\" -DVERSION=3D\"3.7.13\" =
-D_FILE_OFFSET_BITS=3D64 -DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=3D1 =
-DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 =
-DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 =
-DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 =
-DLT_OBJDIR=3D\".libs/\" -DHAVE_FDATASYNC=3D1 -DHAVE_USLEEP=3D1 =
-DHAVE_LOCALTIME_R=3D1 -DHAVE_GMTIME_R=3D1 -DHAVE_DECL_STRERROR_R=3D1 =
-DHAVE_STRERROR_R=3D1 -DHAVE_READLINE=3D1 -DHAVE_POSIX_FALLOCATE=3D1 -I. =
&nbsp; &nbsp;-D_REENTRANT=3D1 -DSQLITE_THREADSAFE=3D1 =
&nbsp;-DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_RTREE -O2 -pipe -g =
-feliminate-unused-debug-types -c shell.c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
powerpc-poky-linux-libtool: compile: &nbsp;powerpc-mentor-linux-gnu-gcc =
-m32 -msoft-float -mcpu=3D440 -msoft-float =
--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
-DPACKAGE_NAME=3D\"sqlite\" -DPACKAGE_TARNAME=3D\"sqlite\" =
-DPACKAGE_VERSION=3D\"3.7.13\" "-DPACKAGE_STRING=3D\"sqlite 3.7.13\"" =
-DPACKAGE_BUGREPORT=3D\"<a =
href=3D"http://www.sqlite.org\">http://www.sqlite.org\</a>" =
-DPACKAGE_URL=3D\"\" -DPACKAGE=3D\"sqlite\" -DVERSION=3D\"3.7.13\" =
-D_FILE_OFFSET_BITS=3D64 -DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=3D1 =
-DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 =
-DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 =
-DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 =
-DLT_OBJDIR=3D\".libs/\" -DHAVE_FDATASYNC=3D1 -DHAVE_USLEEP=3D1 =
-DHAVE_LOCALTIME_R=3D1 -DHAVE_GMTIME_R=3D1 -DHAVE_DECL_STRERROR_R=3D1 =
-DHAVE_STRERROR_R=3D1 -DHAVE_READLINE=3D1 -DHAVE_POSIX_FALLOCATE=3D1 -I. =
-D_REENTRANT=3D1 -DSQLITE_THREADSAFE=3D1 -DSQLITE_ENABLE_FTS3 =
-DSQLITE_ENABLE_RTREE -O2 -pipe -g -feliminate-unused-debug-types -c =
sqlite3.c &nbsp;-fPIC -DPIC -o .libs/sqlite3.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
powerpc-poky-linux-libtool: compile: &nbsp;powerpc-mentor-linux-gnu-gcc =
-m32 -msoft-float -mcpu=3D440 -msoft-float =
--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
-DPACKAGE_NAME=3D\"sqlite\" -DPACKAGE_TARNAME=3D\"sqlite\" =
-DPACKAGE_VERSION=3D\"3.7.13\" "-DPACKAGE_STRING=3D\"sqlite 3.7.13\"" =
-DPACKAGE_BUGREPORT=3D\"<a =
href=3D"http://www.sqlite.org\">http://www.sqlite.org\</a>" =
-DPACKAGE_URL=3D\"\" -DPACKAGE=3D\"sqlite\" -DVERSION=3D\"3.7.13\" =
-D_FILE_OFFSET_BITS=3D64 -DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=3D1 =
-DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 =
-DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 =
-DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 =
-DLT_OBJDIR=3D\".libs/\" -DHAVE_FDATASYNC=3D1 -DHAVE_USLEEP=3D1 =
-DHAVE_LOCALTIME_R=3D1 -DHAVE_GMTIME_R=3D1 -DHAVE_DECL_STRERROR_R=3D1 =
-DHAVE_STRERROR_R=3D1 -DHAVE_READLINE=3D1 -DHAVE_POSIX_FALLOCATE=3D1 -I. =
-D_REENTRANT=3D1 -DSQLITE_THREADSAFE=3D1 -DSQLITE_ENABLE_FTS3 =
-DSQLITE_ENABLE_RTREE -O2 -pipe -g -feliminate-unused-debug-types -c =
sqlite3.c -o sqlite3.o &gt;/dev/null 2&gt;&amp;1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
./powerpc-poky-linux-libtool --tag=3DCC &nbsp; --mode=3Dlink =
powerpc-mentor-linux-gnu-gcc &nbsp;-m32 &nbsp;-msoft-float -mcpu=3D440 =
-msoft-float --sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
-D_REENTRANT=3D1 -DSQLITE_THREADSAFE=3D1 &nbsp;-DSQLITE_ENABLE_FTS3 =
-DSQLITE_ENABLE_RTREE -O2 -pipe -g -feliminate-unused-debug-types =
-no-undefined -version-info 8:6:8 -Wl,-O1 -Wl,--hash-style=3Dgnu -o =
libsqlite3.la -rpath /usr/lib sqlite3.lo &nbsp;-ldl =
-lpthread</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| powerpc-poky-linux-libtool: link: =
powerpc-mentor-linux-gnu-gcc &nbsp;-m32 &nbsp;-msoft-float -mcpu=3D440 =
-msoft-float --sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
-shared &nbsp;-fPIC -DPIC &nbsp;.libs/sqlite3.o &nbsp; -ldl -lpthread =
&nbsp;-m32 -msoft-float -mcpu=3D440 -msoft-float =
--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 -O2 -Wl,-O1 =
-Wl,--hash-style=3Dgnu &nbsp; -Wl,-soname -Wl,libsqlite3.so.0 -o =
.libs/libsqlite3.so.0.8.6</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
powerpc-poky-linux-libtool: link: (cd ".libs" &amp;&amp; rm -f =
"libsqlite3.so.0" &amp;&amp; ln -s "libsqlite3.so.0.8.6" =
"libsqlite3.so.0")</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| powerpc-poky-linux-libtool: link: (cd =
".libs" &amp;&amp; rm -f "libsqlite3.so" &amp;&amp; ln -s =
"libsqlite3.so.0.8.6" "libsqlite3.so")</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
powerpc-poky-linux-libtool: link: powerpc-mentor-linux-gnu-ar cru =
.libs/libsqlite3.a &nbsp;sqlite3.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
powerpc-poky-linux-libtool: link: powerpc-mentor-linux-gnu-ranlib =
.libs/libsqlite3.a</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| powerpc-poky-linux-libtool: link: ( cd =
".libs" &amp;&amp; rm -f "libsqlite3.la" &amp;&amp; ln -s =
"../libsqlite3.la" "libsqlite3.la" )</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
./powerpc-poky-linux-libtool --tag=3DCC &nbsp; --mode=3Dlink =
powerpc-mentor-linux-gnu-gcc &nbsp;-m32 &nbsp;-msoft-float -mcpu=3D440 =
-msoft-float --sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 =
-D_REENTRANT=3D1 -DSQLITE_THREADSAFE=3D1 &nbsp;-DSQLITE_ENABLE_FTS3 =
-DSQLITE_ENABLE_RTREE -O2 -pipe -g -feliminate-unused-debug-types =
&nbsp;-Wl,-O1 -Wl,--hash-style=3Dgnu -o sqlite3 shell.o ./libsqlite3.la =
-lreadline -lcurses &nbsp;-ldl -lpthread</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
powerpc-poky-linux-libtool: link: powerpc-mentor-linux-gnu-gcc -m32 =
-msoft-float -mcpu=3D440 -msoft-float =
--sysroot=3D/tool/yocto/poky/build/tmp/sysroots/virtex5 -D_REENTRANT=3D1 =
-DSQLITE_THREADSAFE=3D1 -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_RTREE -O2 =
-pipe -g -feliminate-unused-debug-types -Wl,-O1 -Wl,--hash-style=3Dgnu =
-o .libs/sqlite3 shell.o &nbsp;./.libs/libsqlite3.so -lreadline -lcurses =
-ldl -lpthread</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./.libs/libsqlite3.so: undefined reference =
to `__gcc_qtod'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./.libs/libsqlite3.so: undefined reference =
to `__gcc_qneg'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./.libs/libsqlite3.so: undefined reference =
to `__gcc_qge'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./.libs/libsqlite3.so: undefined reference =
to `__gcc_qlt'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./.libs/libsqlite3.so: undefined reference =
to `__gcc_itoq'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./.libs/libsqlite3.so: undefined reference =
to `__gcc_qtoi'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./.libs/libsqlite3.so: undefined reference =
to `__gcc_qgt'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ./.libs/libsqlite3.so: undefined reference =
to `__gcc_dtoq'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| collect2: ld returned 1 exit =
status</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| make: *** [sqlite3] Error 1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| ERROR: =
oe_runmake failed</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/sqlite3-3.7.13-r0/temp/l=
og.do_compile.48315 for further information)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: package =
sqlite3-3.7.13-r0: task do_compile: =
Failed</font></div></div><div><br></div><div><br></div><div>Elvis =
Dowson</div><div><br></div></body></html>=

--Apple-Mail=_004F32D1-65C2-4526-A875-7B2E2E8DDFAE--
