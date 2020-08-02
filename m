Received: from MTA-06-3.privateemail.com (MTA-06-3.privateemail.com [198.54.127.59])
 by mx.groups.io with SMTP id smtpd.web12.317.1596410480071608359
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Aug 2020 16:21:20 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: whitetree.xyz, ip: 198.54.127.59, mailfrom: yoc.dev@whitetree.xyz)
Received: from MTA-06.privateemail.com (localhost [127.0.0.1])
	by MTA-06.privateemail.com (Postfix) with ESMTP id C5C5B60049
	for <yocto@lists.yoctoproject.org>; Sun,  2 Aug 2020 19:21:17 -0400 (EDT)
Received: from [10.67.0.78] (unknown [10.20.151.243])
	by MTA-06.privateemail.com (Postfix) with ESMTPA id 55BBB6003D
	for <yocto@lists.yoctoproject.org>; Sun,  2 Aug 2020 23:21:17 +0000 (UTC)
To: yocto@lists.yoctoproject.org
From: "yoc" <yoc.dev@whitetree.xyz>
Subject: libtool: library search path "/usr/lib" is unsafe for cross-compilation
Message-ID: <2e47fc5f-dbee-1f6a-f029-23b74e62b186@whitetree.xyz>
Date: Mon, 3 Aug 2020 00:21:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

I am coming across the following issue when cross compiling: The install=20
log indicates that host include and/or library paths were used

A closer look at the log shows the following:

Making install in libfreshclam
make[1]: Entering directory=20
'/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/build/libfr=
eshclam'
make[2]: Entering directory=20
'/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/build/libfr=
eshclam'
 =C2=A0/workdir/build/tmp/hosttools/mkdir -p=20
'/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/image/usr/l=
ib'
 =C2=A0/workdir/build/tmp/hosttools/mkdir -p=20
'/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/image/usr/i=
nclude'
 =C2=A0/bin/bash ../libtool --tag CXX=C2=A0 --mode=3Dinstall=20
/workdir/build/tmp/hosttools/install -c=C2=A0=C2=A0 libfreshclam.la=20
'/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/image/usr/l=
ib'
 =C2=A0/workdir/build/tmp/hosttools/install -c -m 644=20
/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/git/libfresh=
clam/libfreshclam.h=20
'/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/image/usr/i=
nclude'
libtool: warning: relinking 'libfreshclam.la'
libtool: install: (cd=20
/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/build/libfre=
shclam;=20
/bin/bash=20
"/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/build/libto=
ol"=20
--tag CXX --mode=3Drelink aarch64-poky-linux-gcc=20
-L/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sys=
root/usr/lib=20
-L/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sys=
root/usr/lib=20
-thread-safe -version-info 2:0:0 -no-undefined=20
-Wl,--version-script,/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.=
101.5-r0/git/libfreshclam/libfreshclam.map=20
-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -fstack-protector-strong=20
-Wl,-z,relro,-z,now=20
-L/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sys=
root/usr/lib=20
-o libfreshclam.la -rpath /usr/lib output.lo optparser.lo getopt.lo=20
misc.lo cdiff.lo tar.lo cert_util.lo libfreshclam.lo=20
libfreshclam_internal.lo dns.lo cert_util_linux.lo=20
../libclamav/libclamav.la -lresolv=20
-L/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sys=
root/usr/lib=20
-lcurl=20
-L/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sys=
root/usr/lib=20
-lz -lcurl -lssl -lcrypto -lz -lltdl -lpthread -lm -inst-prefix-dir=20
/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/image)
libtool: relink: aarch64-poky-linux-g++=C2=A0 -march=3Darmv8-a+crc=20
-fstack-protector-strong=C2=A0 -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-se=
curity=20
-Werror=3Dformat-security=20
--sysroot=3D/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/=
recipe-sysroot=20
-fPIC -DPIC -shared -nostdlib=20
/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sysro=
ot/usr/lib/crti.o=20
/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sysro=
ot/usr/lib/aarch64-poky-linux/9.3.0/crtbeginS.o=20
.libs/output.o .libs/optparser.o .libs/getopt.o .libs/misc.o=20
.libs/cdiff.o .libs/tar.o .libs/cert_util.o .libs/libfreshclam.o=20
.libs/libfreshclam_internal.o .libs/dns.o .libs/cert_util_linux.o=20
-L/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sys=
root/usr/lib=20
-L/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/image/usr/=
lib=20
-L/usr/lib -lclamav -lresolv -lcurl -lssl -lcrypto -lz -lltdl -lpthread=20
-L/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sys=
root-native/usr/bin/aarch64-poky-linux/../../lib/aarch64-poky-linux/gcc/a=
arch64-poky-linux/9.3.0=20
-L/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sys=
root-native/usr/bin/aarch64-poky-linux/../../lib/aarch64-poky-linux/gcc=20
-L/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sys=
root/lib=20
-L/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sys=
root/usr/lib/aarch64-poky-linux/9.3.0=20
-lstdc++ -lm -lc -lgcc_s=20
/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sysro=
ot/usr/lib/aarch64-poky-linux/9.3.0/crtendS.o=20
/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sysro=
ot/usr/lib/crtn.o=20
-Wl,--version-script=20
-Wl,/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/git/libf=
reshclam/libfreshclam.map=20
-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -fstack-protector-strong=20
-Wl,-z -Wl,relro -Wl,-z -Wl,now -Wl,-soname -Wl,libfreshclam.so.2 -o=20
.libs/libfreshclam.so.2.0.0
/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/recipe-sysro=
ot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc=
/aarch64-poky-linux/9.3.0/ld:=20
warning: library search path "/usr/lib" is unsafe for cross-compilation
libtool: install: /workdir/build/tmp/hosttools/install -c=20
.libs/libfreshclam.so.2.0.0T=20
/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/image/usr/li=
b/libfreshclam.so.2.0.0
libtool: install: (cd=20
/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/image/usr/li=
b=20
&& { ln -s -f libfreshclam.so.2.0.0 libfreshclam.so.2 || { rm -f=20
libfreshclam.so.2 && ln -s libfreshclam.so.2.0.0 libfreshclam.so.2; }; })
libtool: install: (cd=20
/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/image/usr/li=
b=20
&& { ln -s -f libfreshclam.so.2.0.0 libfreshclam.so || { rm -f=20
libfreshclam.so && ln -s libfreshclam.so.2.0.0 libfreshclam.so; }; })
libtool: install: /workdir/build/tmp/hosttools/install -c=20
.libs/libfreshclam.lai=20
/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/image/usr/li=
b/libfreshclam.la
libtool: warning: remember to run 'libtool --finish /usr/lib'
make[2]: Leaving directory=20
'/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/build/libfr=
eshclam'
make[1]: Leaving directory=20
'/workdir/build/tmp/work/aarch64-poky-linux/clamav/0.101.5-r0/build/libfr=
eshclam'

For some reason "/usr/lib" is being injected into the libtool install=20
and I can't find out why this is happening.

For reference I am cross compiling the=20
https://github.com/Cisco-Talos/clamav-devel on rel/0.102 branch

I found reference to the following=20
https://lists.gnu.org/archive/html/libtool/2010-02/msg00001.html however=20
I was wondering whether this is an appropriate solution or is there a=20
better way to solve this issue?

Many Thanks,

Charlie

