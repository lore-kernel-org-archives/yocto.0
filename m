Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E03BFE006C2
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2012 04:35:14 -0800 (PST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3Y4qJJ4kzqz3hhdx
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2012 13:35:12 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3Y4qJJ0tG8zbbhd
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2012 13:35:12 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024) with ESMTP id AowRjWFB3uqP for <yocto@yoctoproject.org>;
	Mon, 19 Nov 2012 13:32:18 +0100 (CET)
X-Auth-Info: BHNj7SvLDOFsRcfjjV66K8q5RbT7OGTPmHfnwffH+vA=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2012 13:35:06 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id D7CDE1A6D92
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2012 13:35:05 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 22FAF20032F
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2012 13:35:04 +0100 (CET)
To: yocto@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Mon, 19 Nov 2012 13:35:04 +0100
Message-Id: <20121119123504.22FAF20032F@gemini.denx.de>
Subject: Alternative SDK installation directory working?
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
X-List-Received-Date: Mon, 19 Nov 2012 12:35:15 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Hello,

I wonder if the installation of the SDK into an alternative directory
is actually working?

Trying the latest snapshot
http://autobuilder.yoctoproject.org/pub/nightly/CURRENT/toolchain/x86_64/poky-eglibc-x86_64-arm-toolchain-gmae-1.3+snapshot-20121119.sh
I get this:

Installation:

-> sh ./poky-eglibc-x86_64-arm-toolchain-gmae-1.3+snapshot-20121119.sh 
Enter target directory for SDK (default: /opt/poky/1.3+snapshot): /opt/poky-test
You are about to install the SDK to "/opt/poky-test". Proceed[Y/n]?Y
Extracting SDK...done
Setting it up...done
SDK has been successfully set up and is ready to be used.


Test:

-> cat /tmp/x.c
int main (void)
{
        return 0;
}
-> source /opt/poky-test/environment-setup-armv5te-poky-linux-gnueabi 
-> ${TARGET_PREFIX}gcc -v -o /tmp/x /tmp/x.c
Using built-in specs.
COLLECT_GCC=arm-poky-linux-gnueabi-gcc
COLLECT_LTO_WRAPPER=/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/lto-wrapper
Target: arm-poky-linux-gnueabi
Configured with: /srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/build/tmp/work-shared/gcc-4.7.2-r13/gcc-4.7.2/configure --build=x86_64-linux --host=x86_64-pokysdk-linux --target=arm-poky-linux-gnueabi --prefix=/opt/poky/1.3+snapshot/sysroots/x86_64-pokysdk-linux/usr --exec_prefix=/opt/poky/1.3+snapshot/sysroots/x86_64-pokysdk-linux/usr --bindir=/opt/poky/1.3+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi --sbindir=/opt/poky/1.3+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi --libexecdir=/opt/poky/1.3+snapshot/sysroots/x86_64-pokysdk-linux/usr/libexec/armv5te-poky-linux-gnueabi --datadir=/opt/poky/1.3+snapshot/sysroots/x86_64-pokysdk-linux/usr/share --sysconfdir=/opt/poky/1.3+snapshot/sysroots/x86_64-pokysdk-linux/etc --sharedstatedir=/opt/poky/1.3+snapshot/sysroots/x86_64-pokysdk-linux/com --localstatedir=/opt/poky/1.3+snapshot/sysroots/x86_64-pokysdk-linux/var --libdir=/opt/poky/1.3+snapshot/sysroots/x86_64-p
 okysdk-linux/usr/lib/armv5te-poky-linux-gnueabi --includedir=/opt/poky/1.3+snapshot/sysroots/x86_64-pokysdk-linux/usr/include --oldincludedir=/opt/poky/1.3+snapshot/sysroots/x86_64-pokysdk-linux/usr/include --infodir=/opt/poky/1.3+snapshot/sysroots/x86_64-pokysdk-linux/usr/share/info --mandir=/opt/poky/1.3+snapshot/sysroots/x86_64-pokysdk-linux/usr/share/man --disable-silent-rules --disable-dependency-tracking --with-libtool-sysroot=/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/build/tmp/sysroots/x86_64-nativesdk-pokysdk-linux --with-gnu-ld --enable-shared --enable-languages=c,c++ --enable-threads=posix --disable-multilib --enable-c99 --enable-long-long --enable-symvers=gnu --enable-libstdcxx-pch --program-prefix=arm-poky-linux-gnueabi- --without-local-prefix --enable-target-optspace --enable-lto --enable-libssp --disable-bootstrap --disable-libgomp --disable-libmudflap --with-system-zlib --with-linker-hash-style=gnu --with-ppl=no --with-cloog=no --enable-check
 ing=release --enable-cheaders=c_global --with-float=soft --with-gxx-include-dir=/opt/poky/1.3+snapshot/sysroots/armv5te-poky-linux-gnueabi/usr/include/c++ --with-build-time-tools=/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/build/tmp/sysroots/x86_64-linux/usr/arm-poky-linux-gnueabi/bin --with-sysroot=/opt/poky/1.3+snapshot/sysroots/armv5te-poky-linux-gnueabi --with-build-sysroot=/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/build/tmp/sysroots/qemuarm --disable-libunwind-exceptions --disable-libssp --disable-libgomp --disable-libmudflap --with-mpfr=/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/build/tmp/sysroots/x86_64-nativesdk-pokysdk-linux --with-mpc=/srv/home/pokybuild/yocto-autobuilder/yocto-slave/nightly-arm/build/build/tmp/sysroots/x86_64-nativesdk-pokysdk-linux --enable-nls
Thread model: posix
gcc version 4.7.2 (GCC) 
COLLECT_GCC_OPTIONS='-v' '-o' '/tmp/x' '-mfloat-abi=soft' '-mtls-dialect=gnu'
 /opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/cc1 -quiet -v -iprefix /opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../lib/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ /tmp/x.c -quiet -dumpbase x.c -mfloat-abi=soft -mtls-dialect=gnu -auxbase x -version -o /tmp/ccPYybgy.s
GNU C (GCC) version 4.7.2 (arm-poky-linux-gnueabi)
        compiled by GNU C version 4.7.2, GMP version 5.0.5, MPFR version 3.1.0, MPC version 0.8.2
GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
ignoring nonexistent directory "/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../lib/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/../../../../../arm-poky-linux-gnueabi/include"
ignoring duplicate directory "/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../lib/armv5te-poky-linux-gnueabi/gcc/../../../lib/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/include"
ignoring nonexistent directory "/opt/poky/1.3+snapshot/sysroots/armv5te-poky-linux-gnueabi/usr/local/include"
ignoring duplicate directory "/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../lib/armv5te-poky-linux-gnueabi/gcc/../../../lib/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/include-fixed"
ignoring nonexistent directory "/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../lib/armv5te-poky-linux-gnueabi/gcc/../../../lib/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/../../../../../arm-poky-linux-gnueabi/include"
ignoring nonexistent directory "/opt/poky/1.3+snapshot/sysroots/armv5te-poky-linux-gnueabi/usr/include"
#include "..." search starts here:
#include <...> search starts here:
 /opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../lib/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/include
 /opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../lib/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/include-fixed
End of search list.
GNU C (GCC) version 4.7.2 (arm-poky-linux-gnueabi)
        compiled by GNU C version 4.7.2, GMP version 5.0.5, MPFR version 3.1.0, MPC version 0.8.2
GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
Compiler executable checksum: 4a741725e1b29efa4cbc59640ac72296
COLLECT_GCC_OPTIONS='-v' '-o' '/tmp/x' '-mfloat-abi=soft' '-mtls-dialect=gnu'
 /opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/as -v -mfloat-abi=soft -meabi=5 -o /tmp/ccQ6wgHT.o /tmp/ccPYybgy.s
GNU assembler version 2.22 (arm-poky-linux-gnueabi) using BFD version (GNU Binutils) 2.22
COMPILER_PATH=/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/:/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/
LIBRARY_PATH=/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../lib/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/:/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../lib/armv5te-poky-linux-gnueabi/gcc/
COLLECT_GCC_OPTIONS='-v' '-o' '/tmp/x' '-mfloat-abi=soft' '-mtls-dialect=gnu'
 /opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/collect2 --sysroot=/opt/poky/1.3+snapshot/sysroots/armv5te-poky-linux-gnueabi --eh-frame-hdr --hash-style=gnu -dynamic-linker /lib/ld-linux.so.3 -X -m armelf_linux_eabi -o /tmp/x crt1.o crti.o crtbegin.o -L/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../lib/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2 -L/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../lib/armv5te-poky-linux-gnueabi/gcc /tmp/ccQ6wgHT.o -lgcc --as-needed -lgcc_s --no-as-needed -lc -lgcc --as-needed -lgcc_s --no-as-needed crtend.o crtn.o
/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find crt1.o: No such file or directory
/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find crti.o: No such file or directory
/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find crtbegin.o: No such file or directory
/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lgcc
/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lgcc_s
/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lc
/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lgcc
/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lgcc_s
/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find crtend.o: No such file or directory
/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find crtn.o: No such file or directory
collect2: error: ld returned 1 exit status


What am I missing here?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Doubt isn't the opposite of faith; it is an element of faith.
- Paul Tillich, German theologian and historian

