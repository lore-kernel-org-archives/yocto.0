Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 182D4E01789
	for <yocto@yoctoproject.org>; Sun, 27 Oct 2013 11:18:32 -0700 (PDT)
Received: from pool-98-118-28-194.bstnma.fios.verizon.net ([98.118.28.194]
	helo=[172.16.1.10])
	by www.twobit.us with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VaUup-0002Oz-3j; Sun, 27 Oct 2013 18:18:31 +0000
Message-ID: <526D58DF.2010104@twobit.us>
Date: Sun, 27 Oct 2013 14:18:07 -0400
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130922 Icedove/17.0.9
MIME-Version: 1.0
To: Joe MacDonald <joe@deserted.net>
X-Enigmail-Version: 1.5.1
X-SA-Exim-Connect-IP: 98.118.28.194
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-selinux] mesa + libselinux linking issue
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
X-List-Received-Date: Sun, 27 Oct 2013 18:18:33 -0000
X-Groupsio-MsgNum: 16722
Content-Type: multipart/mixed; boundary="------------070909050005000405030404"

--------------070909050005000405030404
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hey Joe,

I ran into a linking issue when trying to build mesa w/ selinux enabled.
The linking step for mesa is unable to resolve -lselinux with the
meta-selinux bbappend in effect. Pretty sure this is a matter of getting
the linker to look for libselinux.so in the right place but I'm still
pretty new to dealing with cross-compile issues. Part of me wants to
just append the sysroot where libselinux.so lands but that seems
especially naive.

Easiest way to repro is to:
1) checkout HEAD from bitbake, oe-core and meta-selinux
2) set DISTRO to oe-selinux in local.conf
3) add 'opengl' to oe-selinux.conf DISTRO_FEATURES
4) bitbake mesa

Attached is a log from my build for completeness. Any help would be
appreciated.

Regards,
- Philip

--------------070909050005000405030404
Content-Type: text/plain; charset=UTF-8;
 name="log.do_compile.779"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="log.do_compile.779"

DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common', 'common-linux'=
, 'common-glibc', 'i586-linux', 'common']
DEBUG: Executing shell function do_compile
NOTE: make -j 16
Making all in src
make[1]: Entering directory `/usr/src/selinux-build-scripts/tmp-eglibc/work=
/i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src'
Making all in mapi/glapi/gen
make[2]: Entering directory `/usr/src/selinux-build-scripts/tmp-eglibc/work=
/i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/glapi/gen'
python2  ../../../../src/mapi/mapi/mapi_abi.py \
		--printer glapi --mode lib ./gl_and_es_API.xml > ../../../../src/mapi/gla=
pi/glapi_mapi_tmp.h
python2  gl_procs.py -f ./gl_and_es_API.xml > ../../../../src/mapi/glapi/gl=
procs.h
python2  gl_apitemp.py -f ./gl_and_es_API.xml > ../../../../src/mapi/glapi/=
glapitemp.h
python2  gl_table.py -f ./gl_and_es_API.xml > ../../../../src/mapi/glapi/gl=
apitable.h
python2  gl_gentable.py -f ./gl_and_es_API.xml > ../../../../src/mapi/glapi=
/glapi_gentable.c
python2  gl_enums.py -f ./gl_and_es_API.xml > ../../../../src/mesa/main/enu=
ms.c
python2  gl_genexec.py -f ./gl_and_es_API.xml > ../../../../src/mesa/main/a=
pi_exec.c
python2  gl_table.py -f ./gl_and_es_API.xml -m remap_table > ../../../../sr=
c/mesa/main/dispatch.h
python2  remap_helper.py -f ./gl_and_es_API.xml > ../../../../src/mesa/main=
/remap_helper.h
python2  glX_proto_send.py -f ./gl_API.xml -m proto \
	  | cat  > ../../../../src/glx/indirect.c
python2  glX_proto_send.py -f ./gl_API.xml -m init_h > ../../../../src/glx/=
indirect.h
python2  glX_proto_send.py -f ./gl_API.xml -m init_c > ../../../../src/glx/=
indirect_init.c
python2  glX_proto_size.py -f ./gl_API.xml -m size_h --only-set \
	    -h _INDIRECT_SIZE_H_ \
	  | cat  > ../../../../src/glx/indirect_size.h
python2  glX_proto_size.py -f ./gl_API.xml -m size_c --only-set \
	  | cat  > ../../../../src/glx/indirect_size.c
make  all-am
make[3]: Entering directory `/usr/src/selinux-build-scripts/tmp-eglibc/work=
/i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/glapi/gen'
make[3]: Nothing to be done for `all-am'.
make[3]: Leaving directory `/usr/src/selinux-build-scripts/tmp-eglibc/work/=
i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/glapi/gen'
make[2]: Leaving directory `/usr/src/selinux-build-scripts/tmp-eglibc/work/=
i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/glapi/gen'
Making all in mapi/shared-glapi
make[2]: Entering directory `/usr/src/selinux-build-scripts/tmp-eglibc/work=
/i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/shared-glapi'
python2  ../../../src/mapi/mapi/mapi_abi.py --mode lib --printer shared-gla=
pi ../../../src/mapi/glapi/gen/gl_and_es_API.xml > glapi_mapi_tmp.h
make  all-am
make[3]: Entering directory `/usr/src/selinux-build-scripts/tmp-eglibc/work=
/i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/shared-glapi'
../../../i586-oe-linux-libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux=
-gcc  -m32 -march=3Di586 --sysroot=3D/usr/src/selinux-build-scripts/tmp-egl=
ibc/sysroots/qemux86 -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\"=
 -DPACKAGE_VERSION=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE=
_BUGREPORT=3D\"https://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\"=
 -DPACKAGE_URL=3D\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEA=
DERS=3D1 -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -=
DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES=
_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJD=
IR=3D\".libs/\" -DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREA=
D=3D1 -DHAVE_LIBSELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.  -D_GNU_SOURCE -DHAVE_P=
THREAD -DHAVE_DLOPEN -DHAVE_POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -=
DGLX_INDIRECT_RENDERING -DGLX_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD=
 -DUSE_EXTERNAL_DXTN_LIB=3D1 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -D=
HAVE_LIBUDEV -I../../../include -I../../../src/mapi -I../../../src/mapi -DM=
API_MODE_GLAPI -DMAPI_ABI_HEADER=3D\"shared-glapi/glapi_mapi_tmp.h\"  -pthr=
ead -O2 -pipe -g -feliminate-unused-debug-types -fno-omit-frame-pointer -Wa=
ll -std=3Dc99 -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-pro=
totypes -fno-strict-aliasing -fno-builtin-memcmp  -c -o entry.lo `test -f '=
../../../src/mapi/mapi/entry.c' || echo './'`../../../src/mapi/mapi/entry.c
../../../i586-oe-linux-libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux=
-gcc  -m32 -march=3Di586 --sysroot=3D/usr/src/selinux-build-scripts/tmp-egl=
ibc/sysroots/qemux86 -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\"=
 -DPACKAGE_VERSION=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE=
_BUGREPORT=3D\"https://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\"=
 -DPACKAGE_URL=3D\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEA=
DERS=3D1 -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -=
DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES=
_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJD=
IR=3D\".libs/\" -DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREA=
D=3D1 -DHAVE_LIBSELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.  -D_GNU_SOURCE -DHAVE_P=
THREAD -DHAVE_DLOPEN -DHAVE_POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -=
DGLX_INDIRECT_RENDERING -DGLX_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD=
 -DUSE_EXTERNAL_DXTN_LIB=3D1 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -D=
HAVE_LIBUDEV -I../../../include -I../../../src/mapi -I../../../src/mapi -DM=
API_MODE_GLAPI -DMAPI_ABI_HEADER=3D\"shared-glapi/glapi_mapi_tmp.h\"  -pthr=
ead -O2 -pipe -g -feliminate-unused-debug-types -fno-omit-frame-pointer -Wa=
ll -std=3Dc99 -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-pro=
totypes -fno-strict-aliasing -fno-builtin-memcmp  -c -o mapi_glapi.lo `test=
 -f '../../../src/mapi/mapi/mapi_glapi.c' || echo './'`../../../src/mapi/ma=
pi/mapi_glapi.c
../../../i586-oe-linux-libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux=
-gcc  -m32 -march=3Di586 --sysroot=3D/usr/src/selinux-build-scripts/tmp-egl=
ibc/sysroots/qemux86 -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\"=
 -DPACKAGE_VERSION=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE=
_BUGREPORT=3D\"https://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\"=
 -DPACKAGE_URL=3D\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEA=
DERS=3D1 -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -=
DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES=
_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJD=
IR=3D\".libs/\" -DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREA=
D=3D1 -DHAVE_LIBSELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.  -D_GNU_SOURCE -DHAVE_P=
THREAD -DHAVE_DLOPEN -DHAVE_POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -=
DGLX_INDIRECT_RENDERING -DGLX_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD=
 -DUSE_EXTERNAL_DXTN_LIB=3D1 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -D=
HAVE_LIBUDEV -I../../../include -I../../../src/mapi -I../../../src/mapi -DM=
API_MODE_GLAPI -DMAPI_ABI_HEADER=3D\"shared-glapi/glapi_mapi_tmp.h\"  -pthr=
ead -O2 -pipe -g -feliminate-unused-debug-types -fno-omit-frame-pointer -Wa=
ll -std=3Dc99 -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-pro=
totypes -fno-strict-aliasing -fno-builtin-memcmp  -c -o stub.lo `test -f '.=
./../../src/mapi/mapi/stub.c' || echo './'`../../../src/mapi/mapi/stub.c
../../../i586-oe-linux-libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux=
-gcc  -m32 -march=3Di586 --sysroot=3D/usr/src/selinux-build-scripts/tmp-egl=
ibc/sysroots/qemux86 -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\"=
 -DPACKAGE_VERSION=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE=
_BUGREPORT=3D\"https://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\"=
 -DPACKAGE_URL=3D\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEA=
DERS=3D1 -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -=
DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES=
_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJD=
IR=3D\".libs/\" -DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREA=
D=3D1 -DHAVE_LIBSELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.  -D_GNU_SOURCE -DHAVE_P=
THREAD -DHAVE_DLOPEN -DHAVE_POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -=
DGLX_INDIRECT_RENDERING -DGLX_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD=
 -DUSE_EXTERNAL_DXTN_LIB=3D1 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -D=
HAVE_LIBUDEV -I../../../include -I../../../src/mapi -I../../../src/mapi -DM=
API_MODE_GLAPI -DMAPI_ABI_HEADER=3D\"shared-glapi/glapi_mapi_tmp.h\"  -pthr=
ead -O2 -pipe -g -feliminate-unused-debug-types -fno-omit-frame-pointer -Wa=
ll -std=3Dc99 -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-pro=
totypes -fno-strict-aliasing -fno-builtin-memcmp  -c -o table.lo `test -f '=
../../../src/mapi/mapi/table.c' || echo './'`../../../src/mapi/mapi/table.c
../../../i586-oe-linux-libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux=
-gcc  -m32 -march=3Di586 --sysroot=3D/usr/src/selinux-build-scripts/tmp-egl=
ibc/sysroots/qemux86 -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\"=
 -DPACKAGE_VERSION=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE=
_BUGREPORT=3D\"https://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\"=
 -DPACKAGE_URL=3D\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEA=
DERS=3D1 -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -=
DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES=
_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJD=
IR=3D\".libs/\" -DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREA=
D=3D1 -DHAVE_LIBSELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.  -D_GNU_SOURCE -DHAVE_P=
THREAD -DHAVE_DLOPEN -DHAVE_POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -=
DGLX_INDIRECT_RENDERING -DGLX_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD=
 -DUSE_EXTERNAL_DXTN_LIB=3D1 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -D=
HAVE_LIBUDEV -I../../../include -I../../../src/mapi -I../../../src/mapi -DM=
API_MODE_GLAPI -DMAPI_ABI_HEADER=3D\"shared-glapi/glapi_mapi_tmp.h\"  -pthr=
ead -O2 -pipe -g -feliminate-unused-debug-types -fno-omit-frame-pointer -Wa=
ll -std=3Dc99 -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-pro=
totypes -fno-strict-aliasing -fno-builtin-memcmp  -c -o u_current.lo `test =
-f '../../../src/mapi/mapi/u_current.c' || echo './'`../../../src/mapi/mapi=
/u_current.c
../../../i586-oe-linux-libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux=
-gcc  -m32 -march=3Di586 --sysroot=3D/usr/src/selinux-build-scripts/tmp-egl=
ibc/sysroots/qemux86 -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\"=
 -DPACKAGE_VERSION=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE=
_BUGREPORT=3D\"https://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\"=
 -DPACKAGE_URL=3D\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEA=
DERS=3D1 -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -=
DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES=
_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJD=
IR=3D\".libs/\" -DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREA=
D=3D1 -DHAVE_LIBSELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.  -D_GNU_SOURCE -DHAVE_P=
THREAD -DHAVE_DLOPEN -DHAVE_POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -=
DGLX_INDIRECT_RENDERING -DGLX_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD=
 -DUSE_EXTERNAL_DXTN_LIB=3D1 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -D=
HAVE_LIBUDEV -I../../../include -I../../../src/mapi -I../../../src/mapi -DM=
API_MODE_GLAPI -DMAPI_ABI_HEADER=3D\"shared-glapi/glapi_mapi_tmp.h\"  -pthr=
ead -O2 -pipe -g -feliminate-unused-debug-types -fno-omit-frame-pointer -Wa=
ll -std=3Dc99 -Werror=3Dimplicit-function-declaration -Werror=3Dmissing-pro=
totypes -fno-strict-aliasing -fno-builtin-memcmp  -c -o u_execmem.lo `test =
-f '../../../src/mapi/mapi/u_execmem.c' || echo './'`../../../src/mapi/mapi=
/u_execmem.c
i586-oe-linux-libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sys=
root=3D/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/qemux86 -DPACKAGE=
_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSION=3D\"9.1.6\"=
 "-DPACKAGE_STRING=3D\"Mesa 9.1.6\"" "-DPACKAGE_BUGREPORT=3D\"https://bugs.=
freedesktop.org/enter_bug.cgi?product=3DMesa\"" -DPACKAGE_URL=3D\"\" -DPACK=
AGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=
=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 -DHAVE_M=
EMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 =
-DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DYYTEXT_PO=
INTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBSELINUX=3D1=
 -DHAVE_LIBEXPAT=3D1 -I. -D_GNU_SOURCE -DHAVE_PTHREAD -DHAVE_DLOPEN -DHAVE_=
POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -DGLX_INDIRECT_RENDERING -DGL=
X_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD -DUSE_EXTERNAL_DXTN_LIB=3D1=
 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -DHAVE_LIBUDEV -I../../../incl=
ude -I../../../src/mapi -I../../../src/mapi -DMAPI_MODE_GLAPI -DMAPI_ABI_HE=
ADER=3D\"shared-glapi/glapi_mapi_tmp.h\" -pthread -O2 -pipe -g -feliminate-=
unused-debug-types -fno-omit-frame-pointer -Wall -std=3Dc99 -Werror=3Dimpli=
cit-function-declaration -Werror=3Dmissing-prototypes -fno-strict-aliasing =
-fno-builtin-memcmp -c ../../../src/mapi/mapi/entry.c  -fPIC -DPIC -o .libs=
/entry.o
i586-oe-linux-libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sys=
root=3D/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/qemux86 -DPACKAGE=
_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSION=3D\"9.1.6\"=
 "-DPACKAGE_STRING=3D\"Mesa 9.1.6\"" "-DPACKAGE_BUGREPORT=3D\"https://bugs.=
freedesktop.org/enter_bug.cgi?product=3DMesa\"" -DPACKAGE_URL=3D\"\" -DPACK=
AGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=
=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 -DHAVE_M=
EMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 =
-DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DYYTEXT_PO=
INTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBSELINUX=3D1=
 -DHAVE_LIBEXPAT=3D1 -I. -D_GNU_SOURCE -DHAVE_PTHREAD -DHAVE_DLOPEN -DHAVE_=
POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -DGLX_INDIRECT_RENDERING -DGL=
X_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD -DUSE_EXTERNAL_DXTN_LIB=3D1=
 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -DHAVE_LIBUDEV -I../../../incl=
ude -I../../../src/mapi -I../../../src/mapi -DMAPI_MODE_GLAPI -DMAPI_ABI_HE=
ADER=3D\"shared-glapi/glapi_mapi_tmp.h\" -pthread -O2 -pipe -g -feliminate-=
unused-debug-types -fno-omit-frame-pointer -Wall -std=3Dc99 -Werror=3Dimpli=
cit-function-declaration -Werror=3Dmissing-prototypes -fno-strict-aliasing =
-fno-builtin-memcmp -c ../../../src/mapi/mapi/mapi_glapi.c  -fPIC -DPIC -o =
.libs/mapi_glapi.o
i586-oe-linux-libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sys=
root=3D/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/qemux86 -DPACKAGE=
_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSION=3D\"9.1.6\"=
 "-DPACKAGE_STRING=3D\"Mesa 9.1.6\"" "-DPACKAGE_BUGREPORT=3D\"https://bugs.=
freedesktop.org/enter_bug.cgi?product=3DMesa\"" -DPACKAGE_URL=3D\"\" -DPACK=
AGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=
=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 -DHAVE_M=
EMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 =
-DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DYYTEXT_PO=
INTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBSELINUX=3D1=
 -DHAVE_LIBEXPAT=3D1 -I. -D_GNU_SOURCE -DHAVE_PTHREAD -DHAVE_DLOPEN -DHAVE_=
POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -DGLX_INDIRECT_RENDERING -DGL=
X_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD -DUSE_EXTERNAL_DXTN_LIB=3D1=
 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -DHAVE_LIBUDEV -I../../../incl=
ude -I../../../src/mapi -I../../../src/mapi -DMAPI_MODE_GLAPI -DMAPI_ABI_HE=
ADER=3D\"shared-glapi/glapi_mapi_tmp.h\" -pthread -O2 -pipe -g -feliminate-=
unused-debug-types -fno-omit-frame-pointer -Wall -std=3Dc99 -Werror=3Dimpli=
cit-function-declaration -Werror=3Dmissing-prototypes -fno-strict-aliasing =
-fno-builtin-memcmp -c ../../../src/mapi/mapi/u_execmem.c  -fPIC -DPIC -o .=
libs/u_execmem.o
i586-oe-linux-libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sys=
root=3D/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/qemux86 -DPACKAGE=
_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSION=3D\"9.1.6\"=
 "-DPACKAGE_STRING=3D\"Mesa 9.1.6\"" "-DPACKAGE_BUGREPORT=3D\"https://bugs.=
freedesktop.org/enter_bug.cgi?product=3DMesa\"" -DPACKAGE_URL=3D\"\" -DPACK=
AGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=
=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 -DHAVE_M=
EMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 =
-DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DYYTEXT_PO=
INTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBSELINUX=3D1=
 -DHAVE_LIBEXPAT=3D1 -I. -D_GNU_SOURCE -DHAVE_PTHREAD -DHAVE_DLOPEN -DHAVE_=
POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -DGLX_INDIRECT_RENDERING -DGL=
X_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD -DUSE_EXTERNAL_DXTN_LIB=3D1=
 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -DHAVE_LIBUDEV -I../../../incl=
ude -I../../../src/mapi -I../../../src/mapi -DMAPI_MODE_GLAPI -DMAPI_ABI_HE=
ADER=3D\"shared-glapi/glapi_mapi_tmp.h\" -pthread -O2 -pipe -g -feliminate-=
unused-debug-types -fno-omit-frame-pointer -Wall -std=3Dc99 -Werror=3Dimpli=
cit-function-declaration -Werror=3Dmissing-prototypes -fno-strict-aliasing =
-fno-builtin-memcmp -c ../../../src/mapi/mapi/stub.c  -fPIC -DPIC -o .libs/=
stub.o
i586-oe-linux-libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sys=
root=3D/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/qemux86 -DPACKAGE=
_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSION=3D\"9.1.6\"=
 "-DPACKAGE_STRING=3D\"Mesa 9.1.6\"" "-DPACKAGE_BUGREPORT=3D\"https://bugs.=
freedesktop.org/enter_bug.cgi?product=3DMesa\"" -DPACKAGE_URL=3D\"\" -DPACK=
AGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=
=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 -DHAVE_M=
EMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 =
-DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DYYTEXT_PO=
INTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBSELINUX=3D1=
 -DHAVE_LIBEXPAT=3D1 -I. -D_GNU_SOURCE -DHAVE_PTHREAD -DHAVE_DLOPEN -DHAVE_=
POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -DGLX_INDIRECT_RENDERING -DGL=
X_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD -DUSE_EXTERNAL_DXTN_LIB=3D1=
 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -DHAVE_LIBUDEV -I../../../incl=
ude -I../../../src/mapi -I../../../src/mapi -DMAPI_MODE_GLAPI -DMAPI_ABI_HE=
ADER=3D\"shared-glapi/glapi_mapi_tmp.h\" -pthread -O2 -pipe -g -feliminate-=
unused-debug-types -fno-omit-frame-pointer -Wall -std=3Dc99 -Werror=3Dimpli=
cit-function-declaration -Werror=3Dmissing-prototypes -fno-strict-aliasing =
-fno-builtin-memcmp -c ../../../src/mapi/mapi/u_current.c  -fPIC -DPIC -o .=
libs/u_current.o
i586-oe-linux-libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sys=
root=3D/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/qemux86 -DPACKAGE=
_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSION=3D\"9.1.6\"=
 "-DPACKAGE_STRING=3D\"Mesa 9.1.6\"" "-DPACKAGE_BUGREPORT=3D\"https://bugs.=
freedesktop.org/enter_bug.cgi?product=3DMesa\"" -DPACKAGE_URL=3D\"\" -DPACK=
AGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=
=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 -DHAVE_M=
EMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 =
-DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DYYTEXT_PO=
INTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBSELINUX=3D1=
 -DHAVE_LIBEXPAT=3D1 -I. -D_GNU_SOURCE -DHAVE_PTHREAD -DHAVE_DLOPEN -DHAVE_=
POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -DGLX_INDIRECT_RENDERING -DGL=
X_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD -DUSE_EXTERNAL_DXTN_LIB=3D1=
 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -DHAVE_LIBUDEV -I../../../incl=
ude -I../../../src/mapi -I../../../src/mapi -DMAPI_MODE_GLAPI -DMAPI_ABI_HE=
ADER=3D\"shared-glapi/glapi_mapi_tmp.h\" -pthread -O2 -pipe -g -feliminate-=
unused-debug-types -fno-omit-frame-pointer -Wall -std=3Dc99 -Werror=3Dimpli=
cit-function-declaration -Werror=3Dmissing-prototypes -fno-strict-aliasing =
-fno-builtin-memcmp -c ../../../src/mapi/mapi/table.c  -fPIC -DPIC -o .libs=
/table.o
../../../i586-oe-linux-libtool  --tag=3DCC   --mode=3Dlink i586-oe-linux-gc=
c  -m32 -march=3Di586 --sysroot=3D/usr/src/selinux-build-scripts/tmp-eglibc=
/sysroots/qemux86 -pthread -O2 -pipe -g -feliminate-unused-debug-types -fno=
-omit-frame-pointer -Wall -std=3Dc99 -Werror=3Dimplicit-function-declaratio=
n -Werror=3Dmissing-prototypes -fno-strict-aliasing -fno-builtin-memcmp  -n=
o-undefined -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o libglapi.la -=
rpath /usr/lib entry.lo mapi_glapi.lo stub.lo table.lo u_current.lo u_execm=
em.lo -lpthread -lselinux -lselinux=20
i586-oe-linux-libtool: link: i586-oe-linux-gcc  -m32 -march=3Di586 --sysroo=
t=3D/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/qemux86 -shared  -fP=
IC -DPIC  .libs/entry.o .libs/mapi_glapi.o .libs/stub.o .libs/table.o .libs=
/u_current.o .libs/u_execmem.o   -lpthread -lselinux  -m32 -march=3Di586 --=
sysroot=3D/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/qemux86 -pthre=
ad -O2 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed   -pthread -Wl,-sonam=
e -Wl,libglapi.so.0 -o .libs/libglapi.so.0.0.0
i586-oe-linux-libtool: link: (cd ".libs" && rm -f "libglapi.so.0" && ln -s =
"libglapi.so.0.0.0" "libglapi.so.0")
i586-oe-linux-libtool: link: (cd ".libs" && rm -f "libglapi.so" && ln -s "l=
ibglapi.so.0.0.0" "libglapi.so")
i586-oe-linux-libtool: link: ( cd ".libs" && rm -f "libglapi.la" && ln -s "=
../libglapi.la" "libglapi.la" )
/bin/mkdir -p ../../../lib
ln -f .libs/libglapi.so.0.0.0 ../../../lib/libglapi.so.0.0.0
ln -sf libglapi.so.0.0.0 ../../../lib/libglapi.so.0
ln -sf libglapi.so.0 ../../../lib/libglapi.so
make[3]: Leaving directory `/usr/src/selinux-build-scripts/tmp-eglibc/work/=
i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/shared-glapi'
make[2]: Leaving directory `/usr/src/selinux-build-scripts/tmp-eglibc/work/=
i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/shared-glapi'
Making all in mapi/glapi
make[2]: Entering directory `/usr/src/selinux-build-scripts/tmp-eglibc/work=
/i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/glapi'
../../../i586-oe-linux-libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux=
-gcc  -m32 -march=3Di586 --sysroot=3D/usr/src/selinux-build-scripts/tmp-egl=
ibc/sysroots/qemux86 -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\"=
 -DPACKAGE_VERSION=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE=
_BUGREPORT=3D\"https://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\"=
 -DPACKAGE_URL=3D\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEA=
DERS=3D1 -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -=
DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES=
_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJD=
IR=3D\".libs/\" -DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREA=
D=3D1 -DHAVE_LIBSELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.  -D_GNU_SOURCE -DHAVE_P=
THREAD -DHAVE_DLOPEN -DHAVE_POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -=
DGLX_INDIRECT_RENDERING -DGLX_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD=
 -DUSE_EXTERNAL_DXTN_LIB=3D1 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -D=
HAVE_LIBUDEV -I../../../include -I../../../src/mapi -I../../../src/mapi -I.=
./../../src/mesa -DMAPI_MODE_BRIDGE -DMAPI_ABI_HEADER=3D\"glapi/glapi_mapi_=
tmp.h\"    -O2 -pipe -g -feliminate-unused-debug-types -fno-omit-frame-poin=
ter -Wall -std=3Dc99 -Werror=3Dimplicit-function-declaration -Werror=3Dmiss=
ing-prototypes -fno-strict-aliasing -fno-builtin-memcmp  -c -o entry.lo `te=
st -f '../../../src/mapi/mapi/entry.c' || echo './'`../../../src/mapi/mapi/=
entry.c
i586-oe-linux-libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sys=
root=3D/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/qemux86 -DPACKAGE=
_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSION=3D\"9.1.6\"=
 "-DPACKAGE_STRING=3D\"Mesa 9.1.6\"" "-DPACKAGE_BUGREPORT=3D\"https://bugs.=
freedesktop.org/enter_bug.cgi?product=3DMesa\"" -DPACKAGE_URL=3D\"\" -DPACK=
AGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=
=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 -DHAVE_M=
EMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 =
-DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DYYTEXT_PO=
INTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBSELINUX=3D1=
 -DHAVE_LIBEXPAT=3D1 -I. -D_GNU_SOURCE -DHAVE_PTHREAD -DHAVE_DLOPEN -DHAVE_=
POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -DGLX_INDIRECT_RENDERING -DGL=
X_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD -DUSE_EXTERNAL_DXTN_LIB=3D1=
 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -DHAVE_LIBUDEV -I../../../incl=
ude -I../../../src/mapi -I../../../src/mapi -I../../../src/mesa -DMAPI_MODE=
_BRIDGE -DMAPI_ABI_HEADER=3D\"glapi/glapi_mapi_tmp.h\" -O2 -pipe -g -felimi=
nate-unused-debug-types -fno-omit-frame-pointer -Wall -std=3Dc99 -Werror=3D=
implicit-function-declaration -Werror=3Dmissing-prototypes -fno-strict-alia=
sing -fno-builtin-memcmp -c ../../../src/mapi/mapi/entry.c  -fPIC -DPIC -o =
.libs/entry.o
../../../i586-oe-linux-libtool  --tag=3DCC   --mode=3Dlink i586-oe-linux-gc=
c  -m32 -march=3Di586 --sysroot=3D/usr/src/selinux-build-scripts/tmp-eglibc=
/sysroots/qemux86  -O2 -pipe -g -feliminate-unused-debug-types -fno-omit-fr=
ame-pointer -Wall -std=3Dc99 -Werror=3Dimplicit-function-declaration -Werro=
r=3Dmissing-prototypes -fno-strict-aliasing -fno-builtin-memcmp   -Wl,-O1 -=
Wl,--hash-style=3Dgnu -Wl,--as-needed -o libglapi.la    entry.lo  -lselinux=
=20
i586-oe-linux-libtool: link: i586-oe-linux-ar cru .libs/libglapi.a .libs/en=
try.o=20
i586-oe-linux-libtool: link: i586-oe-linux-ranlib .libs/libglapi.a
i586-oe-linux-libtool: link: ( cd ".libs" && rm -f "libglapi.la" && ln -s "=
../libglapi.la" "libglapi.la" )
make[2]: Leaving directory `/usr/src/selinux-build-scripts/tmp-eglibc/work/=
i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/glapi'
Making all in mapi/es1api
make[2]: Entering directory `/usr/src/selinux-build-scripts/tmp-eglibc/work=
/i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/es1api'
python2  ../../../src/mapi/mapi/mapi_abi.py --mode lib --printer es1api ../=
glapi/gen/gl_and_es_API.xml > glapi_mapi_tmp.h
make  all-am
make[3]: Entering directory `/usr/src/selinux-build-scripts/tmp-eglibc/work=
/i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/es1api'
../../../i586-oe-linux-libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux=
-gcc  -m32 -march=3Di586 --sysroot=3D/usr/src/selinux-build-scripts/tmp-egl=
ibc/sysroots/qemux86 -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\"=
 -DPACKAGE_VERSION=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE=
_BUGREPORT=3D\"https://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\"=
 -DPACKAGE_URL=3D\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEA=
DERS=3D1 -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -=
DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES=
_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJD=
IR=3D\".libs/\" -DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREA=
D=3D1 -DHAVE_LIBSELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.  -D_GNU_SOURCE -DHAVE_P=
THREAD -DHAVE_DLOPEN -DHAVE_POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -=
DGLX_INDIRECT_RENDERING -DGLX_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD=
 -DUSE_EXTERNAL_DXTN_LIB=3D1 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -D=
HAVE_LIBUDEV -I../../../include -I../../../src/mapi -DMAPI_MODE_BRIDGE -DMA=
PI_ABI_HEADER=3D\"glapi_mapi_tmp.h\"  -fvisibility=3Dhidden -O2 -pipe -g -f=
eliminate-unused-debug-types -fno-omit-frame-pointer -Wall -std=3Dc99 -Werr=
or=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes -fno-strict=
-aliasing -fno-builtin-memcmp  -c -o entry.lo `test -f '../mapi/entry.c' ||=
 echo './'`../mapi/entry.c
i586-oe-linux-libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sys=
root=3D/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/qemux86 -DPACKAGE=
_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSION=3D\"9.1.6\"=
 "-DPACKAGE_STRING=3D\"Mesa 9.1.6\"" "-DPACKAGE_BUGREPORT=3D\"https://bugs.=
freedesktop.org/enter_bug.cgi?product=3DMesa\"" -DPACKAGE_URL=3D\"\" -DPACK=
AGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=
=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 -DHAVE_M=
EMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 =
-DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DYYTEXT_PO=
INTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBSELINUX=3D1=
 -DHAVE_LIBEXPAT=3D1 -I. -D_GNU_SOURCE -DHAVE_PTHREAD -DHAVE_DLOPEN -DHAVE_=
POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -DGLX_INDIRECT_RENDERING -DGL=
X_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD -DUSE_EXTERNAL_DXTN_LIB=3D1=
 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -DHAVE_LIBUDEV -I../../../incl=
ude -I../../../src/mapi -DMAPI_MODE_BRIDGE -DMAPI_ABI_HEADER=3D\"glapi_mapi=
_tmp.h\" -fvisibility=3Dhidden -O2 -pipe -g -feliminate-unused-debug-types =
-fno-omit-frame-pointer -Wall -std=3Dc99 -Werror=3Dimplicit-function-declar=
ation -Werror=3Dmissing-prototypes -fno-strict-aliasing -fno-builtin-memcmp=
 -c ../mapi/entry.c  -fPIC -DPIC -o .libs/entry.o
../../../i586-oe-linux-libtool  --tag=3DCC   --mode=3Dlink i586-oe-linux-gc=
c  -m32 -march=3Di586 --sysroot=3D/usr/src/selinux-build-scripts/tmp-eglibc=
/sysroots/qemux86 -fvisibility=3Dhidden -O2 -pipe -g -feliminate-unused-deb=
ug-types -fno-omit-frame-pointer -Wall -std=3Dc99 -Werror=3Dimplicit-functi=
on-declaration -Werror=3Dmissing-prototypes -fno-strict-aliasing -fno-built=
in-memcmp  -version-number 1:1 -no-undefined -Wl,-O1 -Wl,--hash-style=3Dgnu=
 -Wl,--as-needed -o libGLESv1_CM.la -rpath /usr/lib entry.lo -ldrm  -lm -lp=
thread -ldl ../shared-glapi/libglapi.la -lselinux=20
i586-oe-linux-libtool: link: i586-oe-linux-gcc  -m32 -march=3Di586 --sysroo=
t=3D/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/qemux86 -shared  -fP=
IC -DPIC  .libs/entry.o   /usr/src/selinux-build-scripts/tmp-eglibc/sysroot=
s/qemux86/usr/lib/libdrm.so -lm -ldl ../shared-glapi/.libs/libglapi.so -lpt=
hread -lselinux  -m32 -march=3Di586 --sysroot=3D/usr/src/selinux-build-scri=
pts/tmp-eglibc/sysroots/qemux86 -O2 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as=
-needed   -pthread -Wl,-soname -Wl,libGLESv1_CM.so.1 -o .libs/libGLESv1_CM.=
so.1.1.0
i586-oe-linux-libtool: link: (cd ".libs" && rm -f "libGLESv1_CM.so.1" && ln=
 -s "libGLESv1_CM.so.1.1.0" "libGLESv1_CM.so.1")
i586-oe-linux-libtool: link: (cd ".libs" && rm -f "libGLESv1_CM.so" && ln -=
s "libGLESv1_CM.so.1.1.0" "libGLESv1_CM.so")
i586-oe-linux-libtool: link: ( cd ".libs" && rm -f "libGLESv1_CM.la" && ln =
-s "../libGLESv1_CM.la" "libGLESv1_CM.la" )
/bin/mkdir -p ../../../lib;
ln -f .libs/libGLESv1_CM.so ../../../lib/libGLESv1_CM.so
ln -f .libs/libGLESv1_CM.so.1 ../../../lib/libGLESv1_CM.so.1
ln -f .libs/libGLESv1_CM.so.1.1.0 ../../../lib/libGLESv1_CM.so.1.1.0
make[3]: Leaving directory `/usr/src/selinux-build-scripts/tmp-eglibc/work/=
i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/es1api'
make[2]: Leaving directory `/usr/src/selinux-build-scripts/tmp-eglibc/work/=
i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/es1api'
Making all in mapi/es2api
make[2]: Entering directory `/usr/src/selinux-build-scripts/tmp-eglibc/work=
/i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/es2api'
python2  ../../../src/mapi/mapi/mapi_abi.py --mode lib --printer es2api ../=
glapi/gen/gl_and_es_API.xml > glapi_mapi_tmp.h
make  all-am
make[3]: Entering directory `/usr/src/selinux-build-scripts/tmp-eglibc/work=
/i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/es2api'
../../../i586-oe-linux-libtool  --tag=3DCC   --mode=3Dcompile i586-oe-linux=
-gcc  -m32 -march=3Di586 --sysroot=3D/usr/src/selinux-build-scripts/tmp-egl=
ibc/sysroots/qemux86 -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\"=
 -DPACKAGE_VERSION=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE=
_BUGREPORT=3D\"https://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\"=
 -DPACKAGE_URL=3D\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEA=
DERS=3D1 -DHAVE_SYS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -=
DHAVE_STRING_H=3D1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES=
_H=3D1 -DHAVE_STDINT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJD=
IR=3D\".libs/\" -DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREA=
D=3D1 -DHAVE_LIBSELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.  -D_GNU_SOURCE -DHAVE_P=
THREAD -DHAVE_DLOPEN -DHAVE_POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -=
DGLX_INDIRECT_RENDERING -DGLX_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD=
 -DUSE_EXTERNAL_DXTN_LIB=3D1 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -D=
HAVE_LIBUDEV -I../../../include -I../../../src/mapi -DMAPI_MODE_BRIDGE -DMA=
PI_ABI_HEADER=3D\"glapi_mapi_tmp.h\"  -fvisibility=3Dhidden -O2 -pipe -g -f=
eliminate-unused-debug-types -fno-omit-frame-pointer -Wall -std=3Dc99 -Werr=
or=3Dimplicit-function-declaration -Werror=3Dmissing-prototypes -fno-strict=
-aliasing -fno-builtin-memcmp  -c -o entry.lo `test -f '../mapi/entry.c' ||=
 echo './'`../mapi/entry.c
i586-oe-linux-libtool: compile:  i586-oe-linux-gcc -m32 -march=3Di586 --sys=
root=3D/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/qemux86 -DPACKAGE=
_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSION=3D\"9.1.6\"=
 "-DPACKAGE_STRING=3D\"Mesa 9.1.6\"" "-DPACKAGE_BUGREPORT=3D\"https://bugs.=
freedesktop.org/enter_bug.cgi?product=3DMesa\"" -DPACKAGE_URL=3D\"\" -DPACK=
AGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_SYS_TYPES_H=
=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D1 -DHAVE_M=
EMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STDINT_H=3D1 =
-DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -DYYTEXT_PO=
INTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBSELINUX=3D1=
 -DHAVE_LIBEXPAT=3D1 -I. -D_GNU_SOURCE -DHAVE_PTHREAD -DHAVE_DLOPEN -DHAVE_=
POSIX_MEMALIGN -DMESA_SELINUX -DIN_DRI_DRIVER -DGLX_INDIRECT_RENDERING -DGL=
X_DIRECT_RENDERING -DGLX_USE_TLS -DHAVE_PTHREAD -DUSE_EXTERNAL_DXTN_LIB=3D1=
 -DIN_DRI_DRIVER -DHAVE_ALIAS -DHAVE_MINCORE -DHAVE_LIBUDEV -I../../../incl=
ude -I../../../src/mapi -DMAPI_MODE_BRIDGE -DMAPI_ABI_HEADER=3D\"glapi_mapi=
_tmp.h\" -fvisibility=3Dhidden -O2 -pipe -g -feliminate-unused-debug-types =
-fno-omit-frame-pointer -Wall -std=3Dc99 -Werror=3Dimplicit-function-declar=
ation -Werror=3Dmissing-prototypes -fno-strict-aliasing -fno-builtin-memcmp=
 -c ../mapi/entry.c  -fPIC -DPIC -o .libs/entry.o
../../../i586-oe-linux-libtool  --tag=3DCC   --mode=3Dlink i586-oe-linux-gc=
c  -m32 -march=3Di586 --sysroot=3D/usr/src/selinux-build-scripts/tmp-eglibc=
/sysroots/qemux86 -fvisibility=3Dhidden -O2 -pipe -g -feliminate-unused-deb=
ug-types -fno-omit-frame-pointer -Wall -std=3Dc99 -Werror=3Dimplicit-functi=
on-declaration -Werror=3Dmissing-prototypes -fno-strict-aliasing -fno-built=
in-memcmp  -version-number 2 -no-undefined -Wl,-O1 -Wl,--hash-style=3Dgnu -=
Wl,--as-needed -o libGLESv2.la -rpath /usr/lib entry.lo -ldrm  -lm -lpthrea=
d -ldl ../shared-glapi/libglapi.la -lselinux=20
i586-oe-linux-libtool: link: i586-oe-linux-gcc  -m32 -march=3Di586 --sysroo=
t=3D/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/qemux86 -shared  -fP=
IC -DPIC  .libs/entry.o   /usr/src/selinux-build-scripts/tmp-eglibc/sysroot=
s/qemux86/usr/lib/libdrm.so -lm -ldl ../shared-glapi/.libs/libglapi.so -lpt=
hread -lselinux  -m32 -march=3Di586 --sysroot=3D/usr/src/selinux-build-scri=
pts/tmp-eglibc/sysroots/qemux86 -O2 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as=
-needed   -pthread -Wl,-soname -Wl,libGLESv2.so.2 -o .libs/libGLESv2.so.2.0=
.0
i586-oe-linux-libtool: link: (cd ".libs" && rm -f "libGLESv2.so.2" && ln -s=
 "libGLESv2.so.2.0.0" "libGLESv2.so.2")
i586-oe-linux-libtool: link: (cd ".libs" && rm -f "libGLESv2.so" && ln -s "=
libGLESv2.so.2.0.0" "libGLESv2.so")
i586-oe-linux-libtool: link: ( cd ".libs" && rm -f "libGLESv2.la" && ln -s =
"../libGLESv2.la" "libGLESv2.la" )
/bin/mkdir -p ../../../lib;
ln -f .libs/libGLESv2.so ../../../lib/libGLESv2.so
ln -f .libs/libGLESv2.so.2 ../../../lib/libGLESv2.so.2
ln -f .libs/libGLESv2.so.2.0.0 ../../../lib/libGLESv2.so.2.0.0
make[3]: Leaving directory `/usr/src/selinux-build-scripts/tmp-eglibc/work/=
i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/es2api'
make[2]: Leaving directory `/usr/src/selinux-build-scripts/tmp-eglibc/work/=
i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/mapi/es2api'
Making all in gtest
make[2]: Entering directory `/usr/src/selinux-build-scripts/tmp-eglibc/work=
/i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/gtest'
make[2]: Nothing to be done for `all'.
make[2]: Leaving directory `/usr/src/selinux-build-scripts/tmp-eglibc/work/=
i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/gtest'
Making all in glsl
make[2]: Entering directory `/usr/src/selinux-build-scripts/tmp-eglibc/work=
/i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/glsl'
make  all-recursive
make[3]: Entering directory `/usr/src/selinux-build-scripts/tmp-eglibc/work=
/i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/glsl'
Making all in builtin_compiler
make[4]: Entering directory `/usr/src/selinux-build-scripts/tmp-eglibc/work=
/i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/glsl/builtin_compiler'
gcc -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -Wall -std=3Dc=
99 -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-hash_tab=
le.o `test -f '../../../src/mesa/main/hash_table.c' || echo './'`../../../s=
rc/mesa/main/hash_table.c
gcc -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -Wall -std=3Dc=
99 -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-imports.=
o `test -f '../../../src/mesa/main/imports.c' || echo './'`../../../src/mes=
a/main/imports.c
gcc -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -Wall -std=3Dc=
99 -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-prog_has=
h_table.o `test -f '../../../src/mesa/program/prog_hash_table.c' || echo '.=
/'`../../../src/mesa/program/prog_hash_table.c
gcc -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -Wall -std=3Dc=
99 -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-symbol_t=
able.o `test -f '../../../src/mesa/program/symbol_table.c' || echo './'`../=
../../src/mesa/program/symbol_table.c
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-builti=
n_stubs.o `test -f '../../../src/glsl/builtin_compiler/builtin_stubs.cpp' |=
| echo './'`../../../src/glsl/builtin_compiler/builtin_stubs.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-standa=
lone_scaffolding.o `test -f '../../../src/glsl/standalone_scaffolding.cpp' =
|| echo './'`../../../src/glsl/standalone_scaffolding.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-main.o=
 `test -f '../../../src/glsl/main.cpp' || echo './'`../../../src/glsl/main.=
cpp
gcc -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -Wall -std=3Dc=
99 -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-glcpp-le=
x.o `test -f '../../../src/glsl/glcpp/glcpp-lex.c' || echo './'`../../../sr=
c/glsl/glcpp/glcpp-lex.c
gcc -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -Wall -std=3Dc=
99 -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-glcpp-pa=
rse.o `test -f '../../../src/glsl/glcpp/glcpp-parse.c' || echo './'`../../.=
./src/glsl/glcpp/glcpp-parse.c
gcc -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -Wall -std=3Dc=
99 -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ralloc.o=
 `test -f '../../../src/glsl/ralloc.c' || echo './'`../../../src/glsl/rallo=
c.c
gcc -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -Wall -std=3Dc=
99 -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-pp.o `te=
st -f '../../../src/glsl/glcpp/pp.c' || echo './'`../../../src/glsl/glcpp/p=
p.c
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-glsl_l=
exer.o `test -f '../../../src/glsl/glsl_lexer.cpp' || echo './'`../../../sr=
c/glsl/glsl_lexer.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-glsl_p=
arser.o `test -f '../../../src/glsl/glsl_parser.cpp' || echo './'`../../../=
src/glsl/glsl_parser.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ast_ex=
pr.o `test -f '../../../src/glsl/ast_expr.cpp' || echo './'`../../../src/gl=
sl/ast_expr.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ast_fu=
nction.o `test -f '../../../src/glsl/ast_function.cpp' || echo './'`../../.=
./src/glsl/ast_function.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ast_to=
_hir.o `test -f '../../../src/glsl/ast_to_hir.cpp' || echo './'`../../../sr=
c/glsl/ast_to_hir.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ast_ty=
pe.o `test -f '../../../src/glsl/ast_type.cpp' || echo './'`../../../src/gl=
sl/ast_type.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-builti=
n_variables.o `test -f '../../../src/glsl/builtin_variables.cpp' || echo '.=
/'`../../../src/glsl/builtin_variables.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-glsl_p=
arser_extras.o `test -f '../../../src/glsl/glsl_parser_extras.cpp' || echo =
'./'`../../../src/glsl/glsl_parser_extras.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-glsl_t=
ypes.o `test -f '../../../src/glsl/glsl_types.cpp' || echo './'`../../../sr=
c/glsl/glsl_types.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-glsl_s=
ymbol_table.o `test -f '../../../src/glsl/glsl_symbol_table.cpp' || echo '.=
/'`../../../src/glsl/glsl_symbol_table.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-hir_fi=
eld_selection.o `test -f '../../../src/glsl/hir_field_selection.cpp' || ech=
o './'`../../../src/glsl/hir_field_selection.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_bas=
ic_block.o `test -f '../../../src/glsl/ir_basic_block.cpp' || echo './'`../=
../../src/glsl/ir_basic_block.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_bui=
lder.o `test -f '../../../src/glsl/ir_builder.cpp' || echo './'`../../../sr=
c/glsl/ir_builder.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_clo=
ne.o `test -f '../../../src/glsl/ir_clone.cpp' || echo './'`../../../src/gl=
sl/ir_clone.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_con=
stant_expression.o `test -f '../../../src/glsl/ir_constant_expression.cpp' =
|| echo './'`../../../src/glsl/ir_constant_expression.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir.o `=
test -f '../../../src/glsl/ir.cpp' || echo './'`../../../src/glsl/ir.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_exp=
ression_flattening.o `test -f '../../../src/glsl/ir_expression_flattening.c=
pp' || echo './'`../../../src/glsl/ir_expression_flattening.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_fun=
ction_can_inline.o `test -f '../../../src/glsl/ir_function_can_inline.cpp' =
|| echo './'`../../../src/glsl/ir_function_can_inline.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_fun=
ction_detect_recursion.o `test -f '../../../src/glsl/ir_function_detect_rec=
ursion.cpp' || echo './'`../../../src/glsl/ir_function_detect_recursion.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_fun=
ction.o `test -f '../../../src/glsl/ir_function.cpp' || echo './'`../../../=
src/glsl/ir_function.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_hie=
rarchical_visitor.o `test -f '../../../src/glsl/ir_hierarchical_visitor.cpp=
' || echo './'`../../../src/glsl/ir_hierarchical_visitor.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_hv_=
accept.o `test -f '../../../src/glsl/ir_hv_accept.cpp' || echo './'`../../.=
./src/glsl/ir_hv_accept.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_imp=
ort_prototypes.o `test -f '../../../src/glsl/ir_import_prototypes.cpp' || e=
cho './'`../../../src/glsl/ir_import_prototypes.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_pri=
nt_visitor.o `test -f '../../../src/glsl/ir_print_visitor.cpp' || echo './'=
`../../../src/glsl/ir_print_visitor.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_rea=
der.o `test -f '../../../src/glsl/ir_reader.cpp' || echo './'`../../../src/=
glsl/ir_reader.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_rva=
lue_visitor.o `test -f '../../../src/glsl/ir_rvalue_visitor.cpp' || echo '.=
/'`../../../src/glsl/ir_rvalue_visitor.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_set=
_program_inouts.o `test -f '../../../src/glsl/ir_set_program_inouts.cpp' ||=
 echo './'`../../../src/glsl/ir_set_program_inouts.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_val=
idate.o `test -f '../../../src/glsl/ir_validate.cpp' || echo './'`../../../=
src/glsl/ir_validate.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-ir_var=
iable_refcount.o `test -f '../../../src/glsl/ir_variable_refcount.cpp' || e=
cho './'`../../../src/glsl/ir_variable_refcount.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-linker=
.o `test -f '../../../src/glsl/linker.cpp' || echo './'`../../../src/glsl/l=
inker.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-link_f=
unctions.o `test -f '../../../src/glsl/link_functions.cpp' || echo './'`../=
../../src/glsl/link_functions.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-link_u=
niforms.o `test -f '../../../src/glsl/link_uniforms.cpp' || echo './'`../..=
/../src/glsl/link_uniforms.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-link_u=
niform_initializers.o `test -f '../../../src/glsl/link_uniform_initializers=
.cpp' || echo './'`../../../src/glsl/link_uniform_initializers.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-link_u=
niform_block_active_visitor.o `test -f '../../../src/glsl/link_uniform_bloc=
k_active_visitor.cpp' || echo './'`../../../src/glsl/link_uniform_block_act=
ive_visitor.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-link_u=
niform_blocks.o `test -f '../../../src/glsl/link_uniform_blocks.cpp' || ech=
o './'`../../../src/glsl/link_uniform_blocks.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-link_v=
aryings.o `test -f '../../../src/glsl/link_varyings.cpp' || echo './'`../..=
/../src/glsl/link_varyings.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-loop_a=
nalysis.o `test -f '../../../src/glsl/loop_analysis.cpp' || echo './'`../..=
/../src/glsl/loop_analysis.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-loop_c=
ontrols.o `test -f '../../../src/glsl/loop_controls.cpp' || echo './'`../..=
/../src/glsl/loop_controls.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-loop_u=
nroll.o `test -f '../../../src/glsl/loop_unroll.cpp' || echo './'`../../../=
src/glsl/loop_unroll.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
clip_distance.o `test -f '../../../src/glsl/lower_clip_distance.cpp' || ech=
o './'`../../../src/glsl/lower_clip_distance.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
discard.o `test -f '../../../src/glsl/lower_discard.cpp' || echo './'`../..=
/../src/glsl/lower_discard.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
discard_flow.o `test -f '../../../src/glsl/lower_discard_flow.cpp' || echo =
'./'`../../../src/glsl/lower_discard_flow.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
if_to_cond_assign.o `test -f '../../../src/glsl/lower_if_to_cond_assign.cpp=
' || echo './'`../../../src/glsl/lower_if_to_cond_assign.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
instructions.o `test -f '../../../src/glsl/lower_instructions.cpp' || echo =
'./'`../../../src/glsl/lower_instructions.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
jumps.o `test -f '../../../src/glsl/lower_jumps.cpp' || echo './'`../../../=
src/glsl/lower_jumps.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
mat_op_to_vec.o `test -f '../../../src/glsl/lower_mat_op_to_vec.cpp' || ech=
o './'`../../../src/glsl/lower_mat_op_to_vec.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
noise.o `test -f '../../../src/glsl/lower_noise.cpp' || echo './'`../../../=
src/glsl/lower_noise.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
packed_varyings.o `test -f '../../../src/glsl/lower_packed_varyings.cpp' ||=
 echo './'`../../../src/glsl/lower_packed_varyings.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
packing_builtins.o `test -f '../../../src/glsl/lower_packing_builtins.cpp' =
|| echo './'`../../../src/glsl/lower_packing_builtins.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
texture_projection.o `test -f '../../../src/glsl/lower_texture_projection.c=
pp' || echo './'`../../../src/glsl/lower_texture_projection.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
variable_index_to_cond_assign.o `test -f '../../../src/glsl/lower_variable_=
index_to_cond_assign.cpp' || echo './'`../../../src/glsl/lower_variable_ind=
ex_to_cond_assign.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
vec_index_to_cond_assign.o `test -f '../../../src/glsl/lower_vec_index_to_c=
ond_assign.cpp' || echo './'`../../../src/glsl/lower_vec_index_to_cond_assi=
gn.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
vec_index_to_swizzle.o `test -f '../../../src/glsl/lower_vec_index_to_swizz=
le.cpp' || echo './'`../../../src/glsl/lower_vec_index_to_swizzle.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
vector.o `test -f '../../../src/glsl/lower_vector.cpp' || echo './'`../../.=
./src/glsl/lower_vector.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
output_reads.o `test -f '../../../src/glsl/lower_output_reads.cpp' || echo =
'./'`../../../src/glsl/lower_output_reads.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-lower_=
ubo_reference.o `test -f '../../../src/glsl/lower_ubo_reference.cpp' || ech=
o './'`../../../src/glsl/lower_ubo_reference.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_al=
gebraic.o `test -f '../../../src/glsl/opt_algebraic.cpp' || echo './'`../..=
/../src/glsl/opt_algebraic.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_ar=
ray_splitting.o `test -f '../../../src/glsl/opt_array_splitting.cpp' || ech=
o './'`../../../src/glsl/opt_array_splitting.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_co=
nstant_folding.o `test -f '../../../src/glsl/opt_constant_folding.cpp' || e=
cho './'`../../../src/glsl/opt_constant_folding.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_co=
nstant_propagation.o `test -f '../../../src/glsl/opt_constant_propagation.c=
pp' || echo './'`../../../src/glsl/opt_constant_propagation.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_co=
nstant_variable.o `test -f '../../../src/glsl/opt_constant_variable.cpp' ||=
 echo './'`../../../src/glsl/opt_constant_variable.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_co=
py_propagation.o `test -f '../../../src/glsl/opt_copy_propagation.cpp' || e=
cho './'`../../../src/glsl/opt_copy_propagation.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_co=
py_propagation_elements.o `test -f '../../../src/glsl/opt_copy_propagation_=
elements.cpp' || echo './'`../../../src/glsl/opt_copy_propagation_elements.=
cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_de=
ad_code.o `test -f '../../../src/glsl/opt_dead_code.cpp' || echo './'`../..=
/../src/glsl/opt_dead_code.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_de=
ad_code_local.o `test -f '../../../src/glsl/opt_dead_code_local.cpp' || ech=
o './'`../../../src/glsl/opt_dead_code_local.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_de=
ad_functions.o `test -f '../../../src/glsl/opt_dead_functions.cpp' || echo =
'./'`../../../src/glsl/opt_dead_functions.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_fu=
nction_inlining.o `test -f '../../../src/glsl/opt_function_inlining.cpp' ||=
 echo './'`../../../src/glsl/opt_function_inlining.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_if=
_simplification.o `test -f '../../../src/glsl/opt_if_simplification.cpp' ||=
 echo './'`../../../src/glsl/opt_if_simplification.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_no=
op_swizzle.o `test -f '../../../src/glsl/opt_noop_swizzle.cpp' || echo './'=
`../../../src/glsl/opt_noop_swizzle.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_re=
dundant_jumps.o `test -f '../../../src/glsl/opt_redundant_jumps.cpp' || ech=
o './'`../../../src/glsl/opt_redundant_jumps.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_st=
ructure_splitting.o `test -f '../../../src/glsl/opt_structure_splitting.cpp=
' || echo './'`../../../src/glsl/opt_structure_splitting.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_sw=
izzle_swizzle.o `test -f '../../../src/glsl/opt_swizzle_swizzle.cpp' || ech=
o './'`../../../src/glsl/opt_swizzle_swizzle.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-opt_tr=
ee_grafting.o `test -f '../../../src/glsl/opt_tree_grafting.cpp' || echo '.=
/'`../../../src/glsl/opt_tree_grafting.cpp
g++ -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -=
Wall -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-s_expr=
ession.o `test -f '../../../src/glsl/s_expression.cpp' || echo './'`../../.=
./src/glsl/s_expression.cpp
gcc -DPACKAGE_NAME=3D\"Mesa\" -DPACKAGE_TARNAME=3D\"mesa\" -DPACKAGE_VERSIO=
N=3D\"9.1.6\" -DPACKAGE_STRING=3D\"Mesa\ 9.1.6\" -DPACKAGE_BUGREPORT=3D\"ht=
tps://bugs.freedesktop.org/enter_bug.cgi\?product=3DMesa\" -DPACKAGE_URL=3D=
\"\" -DPACKAGE=3D\"mesa\" -DVERSION=3D\"9.1.6\" -DSTDC_HEADERS=3D1 -DHAVE_S=
YS_TYPES_H=3D1 -DHAVE_SYS_STAT_H=3D1 -DHAVE_STDLIB_H=3D1 -DHAVE_STRING_H=3D=
1 -DHAVE_MEMORY_H=3D1 -DHAVE_STRINGS_H=3D1 -DHAVE_INTTYPES_H=3D1 -DHAVE_STD=
INT_H=3D1 -DHAVE_UNISTD_H=3D1 -DHAVE_DLFCN_H=3D1 -DLT_OBJDIR=3D\".libs/\" -=
DYYTEXT_POINTER=3D1 -DHAVE_CLOCK_GETTIME=3D1 -DHAVE_PTHREAD=3D1 -DHAVE_LIBS=
ELINUX=3D1 -DHAVE_LIBEXPAT=3D1 -I.   -isystem/usr/src/selinux-build-scripts=
/tmp-eglibc/sysroots/x86_64-linux/usr/include -I ../../../include -I ../../=
../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/=
glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/src/selinux-build-sc=
ripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -pipe -Wall -std=3Dc=
99 -fno-strict-aliasing -fno-builtin-memcmp -c -o builtin_compiler-strtod.o=
 `test -f '../../../src/glsl/strtod.c' || echo './'`../../../src/glsl/strto=
d.c
../../../i586-oe-linux-libtool  --tag=3DCXX   --mode=3Dlink g++ -I ../../..=
/include -I ../../../src/mapi -I ../../../src/mesa -I ../../../src/glsl -I =
../../../src/glsl/glcpp -I ../../../src/glsl -D_GNU_SOURCE  -isystem/usr/sr=
c/selinux-build-scripts/tmp-eglibc/sysroots/x86_64-linux/usr/include -O2 -p=
ipe -fpermissive -Wall -fno-strict-aliasing -fno-builtin-memcmp  -L/usr/src=
/selinux-build-scripts/tmp-eglibc/sysroots/x86_64-linux/usr/lib -L/usr/src/=
selinux-build-scripts/tmp-eglibc/sysroots/x86_64-linux/lib -Wl,-rpath-link,=
/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/x86_64-linux/usr/lib -Wl=
,-rpath-link,/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/x86_64-linu=
x/lib -Wl,-rpath,/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/x86_64-=
linux/usr/lib -Wl,-rpath,/usr/src/selinux-build-scripts/tmp-eglibc/sysroots=
/x86_64-linux/lib -Wl,-O1 -o builtin_compiler builtin_compiler-hash_table.o=
 builtin_compiler-imports.o builtin_compiler-prog_hash_table.o builtin_comp=
iler-symbol_table.o builtin_compiler-builtin_stubs.o builtin_compiler-stand=
alone_scaffolding.o builtin_compiler-main.o builtin_compiler-glcpp-lex.o bu=
iltin_compiler-glcpp-parse.o builtin_compiler-ralloc.o builtin_compiler-pp.=
o builtin_compiler-glsl_lexer.o builtin_compiler-glsl_parser.o builtin_comp=
iler-ast_expr.o builtin_compiler-ast_function.o builtin_compiler-ast_to_hir=
.o builtin_compiler-ast_type.o builtin_compiler-builtin_variables.o builtin=
_compiler-glsl_parser_extras.o builtin_compiler-glsl_types.o builtin_compil=
er-glsl_symbol_table.o builtin_compiler-hir_field_selection.o builtin_compi=
ler-ir_basic_block.o builtin_compiler-ir_builder.o builtin_compiler-ir_clon=
e.o builtin_compiler-ir_constant_expression.o builtin_compiler-ir.o builtin=
_compiler-ir_expression_flattening.o builtin_compiler-ir_function_can_inlin=
e.o builtin_compiler-ir_function_detect_recursion.o builtin_compiler-ir_fun=
ction.o builtin_compiler-ir_hierarchical_visitor.o builtin_compiler-ir_hv_a=
ccept.o builtin_compiler-ir_import_prototypes.o builtin_compiler-ir_print_v=
isitor.o builtin_compiler-ir_reader.o builtin_compiler-ir_rvalue_visitor.o =
builtin_compiler-ir_set_program_inouts.o builtin_compiler-ir_validate.o bui=
ltin_compiler-ir_variable_refcount.o builtin_compiler-linker.o builtin_comp=
iler-link_functions.o builtin_compiler-link_uniforms.o builtin_compiler-lin=
k_uniform_initializers.o builtin_compiler-link_uniform_block_active_visitor=
.o builtin_compiler-link_uniform_blocks.o builtin_compiler-link_varyings.o =
builtin_compiler-loop_analysis.o builtin_compiler-loop_controls.o builtin_c=
ompiler-loop_unroll.o builtin_compiler-lower_clip_distance.o builtin_compil=
er-lower_discard.o builtin_compiler-lower_discard_flow.o builtin_compiler-l=
ower_if_to_cond_assign.o builtin_compiler-lower_instructions.o builtin_comp=
iler-lower_jumps.o builtin_compiler-lower_mat_op_to_vec.o builtin_compiler-=
lower_noise.o builtin_compiler-lower_packed_varyings.o builtin_compiler-low=
er_packing_builtins.o builtin_compiler-lower_texture_projection.o builtin_c=
ompiler-lower_variable_index_to_cond_assign.o builtin_compiler-lower_vec_in=
dex_to_cond_assign.o builtin_compiler-lower_vec_index_to_swizzle.o builtin_=
compiler-lower_vector.o builtin_compiler-lower_output_reads.o builtin_compi=
ler-lower_ubo_reference.o builtin_compiler-opt_algebraic.o builtin_compiler=
-opt_array_splitting.o builtin_compiler-opt_constant_folding.o builtin_comp=
iler-opt_constant_propagation.o builtin_compiler-opt_constant_variable.o bu=
iltin_compiler-opt_copy_propagation.o builtin_compiler-opt_copy_propagation=
_elements.o builtin_compiler-opt_dead_code.o builtin_compiler-opt_dead_code=
_local.o builtin_compiler-opt_dead_functions.o builtin_compiler-opt_functio=
n_inlining.o builtin_compiler-opt_if_simplification.o builtin_compiler-opt_=
noop_swizzle.o builtin_compiler-opt_redundant_jumps.o builtin_compiler-opt_=
structure_splitting.o builtin_compiler-opt_swizzle_swizzle.o builtin_compil=
er-opt_tree_grafting.o builtin_compiler-s_expression.o builtin_compiler-str=
tod.o  -lselinux=20
i586-oe-linux-libtool: link: g++ -I ../../../include -I ../../../src/mapi -=
I ../../../src/mesa -I ../../../src/glsl -I ../../../src/glsl/glcpp -I ../.=
./../src/glsl -D_GNU_SOURCE -isystem/usr/src/selinux-build-scripts/tmp-egli=
bc/sysroots/x86_64-linux/usr/include -O2 -pipe -fpermissive -Wall -fno-stri=
ct-aliasing -fno-builtin-memcmp -Wl,-rpath-link -Wl,/usr/src/selinux-build-=
scripts/tmp-eglibc/sysroots/x86_64-linux/usr/lib -Wl,-rpath-link -Wl,/usr/s=
rc/selinux-build-scripts/tmp-eglibc/sysroots/x86_64-linux/lib -Wl,-rpath -W=
l,/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/x86_64-linux/usr/lib -=
Wl,-rpath -Wl,/usr/src/selinux-build-scripts/tmp-eglibc/sysroots/x86_64-lin=
ux/lib -Wl,-O1 -o builtin_compiler builtin_compiler-hash_table.o builtin_co=
mpiler-imports.o builtin_compiler-prog_hash_table.o builtin_compiler-symbol=
_table.o builtin_compiler-builtin_stubs.o builtin_compiler-standalone_scaff=
olding.o builtin_compiler-main.o builtin_compiler-glcpp-lex.o builtin_compi=
ler-glcpp-parse.o builtin_compiler-ralloc.o builtin_compiler-pp.o builtin_c=
ompiler-glsl_lexer.o builtin_compiler-glsl_parser.o builtin_compiler-ast_ex=
pr.o builtin_compiler-ast_function.o builtin_compiler-ast_to_hir.o builtin_=
compiler-ast_type.o builtin_compiler-builtin_variables.o builtin_compiler-g=
lsl_parser_extras.o builtin_compiler-glsl_types.o builtin_compiler-glsl_sym=
bol_table.o builtin_compiler-hir_field_selection.o builtin_compiler-ir_basi=
c_block.o builtin_compiler-ir_builder.o builtin_compiler-ir_clone.o builtin=
_compiler-ir_constant_expression.o builtin_compiler-ir.o builtin_compiler-i=
r_expression_flattening.o builtin_compiler-ir_function_can_inline.o builtin=
_compiler-ir_function_detect_recursion.o builtin_compiler-ir_function.o bui=
ltin_compiler-ir_hierarchical_visitor.o builtin_compiler-ir_hv_accept.o bui=
ltin_compiler-ir_import_prototypes.o builtin_compiler-ir_print_visitor.o bu=
iltin_compiler-ir_reader.o builtin_compiler-ir_rvalue_visitor.o builtin_com=
piler-ir_set_program_inouts.o builtin_compiler-ir_validate.o builtin_compil=
er-ir_variable_refcount.o builtin_compiler-linker.o builtin_compiler-link_f=
unctions.o builtin_compiler-link_uniforms.o builtin_compiler-link_uniform_i=
nitializers.o builtin_compiler-link_uniform_block_active_visitor.o builtin_=
compiler-link_uniform_blocks.o builtin_compiler-link_varyings.o builtin_com=
piler-loop_analysis.o builtin_compiler-loop_controls.o builtin_compiler-loo=
p_unroll.o builtin_compiler-lower_clip_distance.o builtin_compiler-lower_di=
scard.o builtin_compiler-lower_discard_flow.o builtin_compiler-lower_if_to_=
cond_assign.o builtin_compiler-lower_instructions.o builtin_compiler-lower_=
jumps.o builtin_compiler-lower_mat_op_to_vec.o builtin_compiler-lower_noise=
.o builtin_compiler-lower_packed_varyings.o builtin_compiler-lower_packing_=
builtins.o builtin_compiler-lower_texture_projection.o builtin_compiler-low=
er_variable_index_to_cond_assign.o builtin_compiler-lower_vec_index_to_cond=
_assign.o builtin_compiler-lower_vec_index_to_swizzle.o builtin_compiler-lo=
wer_vector.o builtin_compiler-lower_output_reads.o builtin_compiler-lower_u=
bo_reference.o builtin_compiler-opt_algebraic.o builtin_compiler-opt_array_=
splitting.o builtin_compiler-opt_constant_folding.o builtin_compiler-opt_co=
nstant_propagation.o builtin_compiler-opt_constant_variable.o builtin_compi=
ler-opt_copy_propagation.o builtin_compiler-opt_copy_propagation_elements.o=
 builtin_compiler-opt_dead_code.o builtin_compiler-opt_dead_code_local.o bu=
iltin_compiler-opt_dead_functions.o builtin_compiler-opt_function_inlining.=
o builtin_compiler-opt_if_simplification.o builtin_compiler-opt_noop_swizzl=
e.o builtin_compiler-opt_redundant_jumps.o builtin_compiler-opt_structure_s=
plitting.o builtin_compiler-opt_swizzle_swizzle.o builtin_compiler-opt_tree=
_grafting.o builtin_compiler-s_expression.o builtin_compiler-strtod.o  -L/u=
sr/src/selinux-build-scripts/tmp-eglibc/sysroots/x86_64-linux/usr/lib -L/us=
r/src/selinux-build-scripts/tmp-eglibc/sysroots/x86_64-linux/lib -lselinux
/usr/bin/ld: cannot find -lselinux
collect2: error: ld returned 1 exit status
make[4]: *** [builtin_compiler] Error 1
make[4]: Leaving directory `/usr/src/selinux-build-scripts/tmp-eglibc/work/=
i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/glsl/builtin_compiler'
make[3]: *** [all-recursive] Error 1
make[3]: Leaving directory `/usr/src/selinux-build-scripts/tmp-eglibc/work/=
i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/glsl'
make[2]: *** [all] Error 2
make[2]: Leaving directory `/usr/src/selinux-build-scripts/tmp-eglibc/work/=
i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src/glsl'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/usr/src/selinux-build-scripts/tmp-eglibc/work/=
i586-oe-linux/mesa/2_9.1.6-r0/Mesa-9.1.6/src'
make: *** [all-recursive] Error 1
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_compile (log file is located at /usr/src/selinux=
-build-scripts/tmp-eglibc/work/i586-oe-linux/mesa/2_9.1.6-r0/temp/log.do_co=
mpile.779)

--------------070909050005000405030404--
