Return-Path: <lee.changil@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8187E006B4
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 22:14:37 -0800 (PST)
Received: by mail-vb0-f48.google.com with SMTP id fc21so3722831vbb.35
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 22:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=sObe1ShxJYS2pPiAL7gOJSPHKArgRqlaLNlXfJwq5DU=;
	b=C1Ab//n2yNeXrT9DdZeEhsEct+/HeOmn56AWTKnXT6wTKB1inNF6nXleOCW114wr9B
	kUanknQH6auF1KvCu+cNaOJ0MO9iyhNqK43teUxEXArDpRtXXIJDGN7Npm7ATR4/qWJP
	Bhm1J9YBy+D/MeQu34FEZ0/vj8Fb59wTHmFqvkIV6h5OSPcAFJOBOLbrzvjlxoliX/hy
	awco8vMpXoszzePbV4xvUkiD1IeGP6+RnLXNz7v+2dkm4pz+RE94lQxoTDcwaixqmjZx
	TK7N56eEGIo5pGRAfVzUjJcoXprwrH9vb5HFhm8VivbZPy2UxKLABRFxpxxn+qzeVxEI
	eq1Q==
MIME-Version: 1.0
Received: by 10.58.221.130 with SMTP id qe2mr10865876vec.14.1355206476957;
	Mon, 10 Dec 2012 22:14:36 -0800 (PST)
Received: by 10.220.160.1 with HTTP; Mon, 10 Dec 2012 22:14:36 -0800 (PST)
Date: Tue, 11 Dec 2012 15:14:36 +0900
Message-ID: <CAOdO+zjeibMbV-D9ZZh2TdmyYMzajsx10FJF9HuKr9N4SEW5JQ@mail.gmail.com>
From: Joey Lee <lee.changil@gmail.com>
To: yocto@yoctoproject.org
Subject: Build core-image-minimal with EXTERNAL TOOLCHAIN failed
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
X-List-Received-Date: Tue, 11 Dec 2012 06:14:38 -0000
Content-Type: multipart/alternative; boundary=047d7bf0cabea8066704d08d98f7

--047d7bf0cabea8066704d08d98f7
Content-Type: text/plain; charset=UTF-8

Hello all.

I'm trying to build core-image-minimal with external toolchain (
codesourcery).

I added meta, meta-yocto, meta-yocto-bsp to my bblayer.conf and also added
below lines to local.conf

TCMODE := "external-csl"
EXTERNAL_TOOLCHAIN := "/opt/armv7/codesourcery/"

After running bitbake core-image-minimal, I've got several error messages
starting from below lines,

ERROR: Multiple .bb files are due to be built which each provide
virtual/libc (/home/joey/work/y/poky/meta/recipes-core/eglibc/eglibc_2.16.bb/home/joey/work/y/poky/meta/recipes-core/meta/
external-sourcery-toolchain.bb).
 This usually means one provides something the other doesn't and should.
ERROR: Multiple .bb files are due to be built which each provide
virtual/arm-none-linux-gnueabi-libc-for-gcc
(/home/joey/work/y/poky/meta/recipes-core/eglibc/eglibc_2.16.bb/home/joey/work/y/poky/meta/recipes-core/meta/
external-sourcery-toolchain.bb).
 This usually means one provides something the other doesn't and should.
ERROR: Multiple .bb files are due to be built which each provide
virtual/libiconv (/home/joey/work/y/poky/meta/recipes-core/eglibc/
eglibc_2.16.bb /home/joey/work/y/poky/meta/recipes-core/meta/
external-sourcery-toolchain.bb).
 This usually means one provides something the other doesn't and should.

And I got bunch of "ERROR: QA Issue: No GNU_HASH in the elf binary"
messages too.

I've also tried to add PREFERRED_PROVIDER_virtual/libc =
"external-sourcery-toolchain" to my local.conf but the error message still
shows.

Do you have any comments about building image with sourcery toolchain?

Below is the version info of each software.
======================================================================
bitbake --version
BitBake Build Tool Core version 1.16.0, bitbake version 1.16.0
======================================================================
poky
git log -1
commit 27af23e65f63b41962a7cfddba9e9372d5212396
Author: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date:   Mon Oct 22 14:22:09 2012 -0700

    documentation: yocto-project-qs - Final changes before the 1.3 lockdown

    Fixed used of "Source Directory" and Build Directory.

    (From yocto-docs rev: a4d79c5a7e73003fc99c274d876fbea453a80d20)

    Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
======================================================================
arm-none-linux-gnueabi-gcc -v
Using built-in specs.
Target: arm-none-linux-gnueabi
Configured with:
/scratch/julian/2010q1-release-linux-lite/src/gcc-4.4-2010q1/configure
--build=i686-pc-linux-gnu --host=i686-pc-linux-gnu
--target=arm-none-linux-gnueabi --enable-threads --disable-libmudflap
--disable-libssp --disable-libstdcxx-pch --enable-extra-sgxxlite-multilibs
--with-arch=armv5te --with-gnu-as --with-gnu-ld
--with-specs='%{funwind-tables|fno-unwind-tables|mabi=*|ffreestanding|nostdlib:;:-funwind-tables}
%{O2:%{!fno-remove-local-statics: -fremove-local-statics}}
%{O*:%{O|O0|O1|O2|Os:;:%{!fno-remove-local-statics:
-fremove-local-statics}}}' --enable-languages=c,c++ --enable-shared
--disable-lto --enable-symvers=gnu --enable-__cxa_atexit
--with-pkgversion='Sourcery G++ Lite 2010q1-202' --with-bugurl=
https://support.codesourcery.com/GNUToolchain/ --disable-nls
--prefix=/opt/codesourcery
--with-sysroot=/opt/codesourcery/arm-none-linux-gnueabi/libc
--with-build-sysroot=/scratch/julian/2010q1-release-linux-lite/install/arm-none-linux-gnueabi/libc
--with-gmp=/scratch/julian/2010q1-release-linux-lite/obj/host-libs-2010q1-202-arm-none-linux-gnueabi-i686-pc-linux-gnu/usr
--with-mpfr=/scratch/julian/2010q1-release-linux-lite/obj/host-libs-2010q1-202-arm-none-linux-gnueabi-i686-pc-linux-gnu/usr
--with-ppl=/scratch/julian/2010q1-release-linux-lite/obj/host-libs-2010q1-202-arm-none-linux-gnueabi-i686-pc-linux-gnu/usr
--with-host-libstdcxx='-static-libgcc -Wl,-Bstatic,-lstdc++,-Bdynamic -lm'
--with-cloog=/scratch/julian/2010q1-release-linux-lite/obj/host-libs-2010q1-202-arm-none-linux-gnueabi-i686-pc-linux-gnu/usr
--disable-libgomp --enable-poison-system-directories
--with-build-time-tools=/scratch/julian/2010q1-release-linux-lite/install/arm-none-linux-gnueabi/bin
--with-build-time-tools=/scratch/julian/2010q1-release-linux-lite/install/arm-none-linux-gnueabi/bin
Thread model: posix
gcc version 4.4.1 (Sourcery G++ Lite 2010q1-202)
======================================================================

Best regards,
Joey.

--047d7bf0cabea8066704d08d98f7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello all.<div><br></div><div>I&#39;m trying to build core-image-minimal wi=
th external toolchain ( codesourcery).</div><div><br></div><div>I added met=
a, meta-yocto, meta-yocto-bsp to my bblayer.conf and also added below lines=
 to local.conf</div>
<div><br></div><div>TCMODE :=3D &quot;external-csl&quot;<br></div><div><div=
>EXTERNAL_TOOLCHAIN :=3D &quot;/opt/armv7/codesourcery/&quot;=C2=A0<br></di=
v></div><div><br></div><div>After running bitbake core-image-minimal, I&#39=
;ve got several error messages starting from below lines,</div>
<div><br></div><div><div>ERROR: Multiple .bb files are due to be built whic=
h each provide virtual/libc (/home/joey/work/y/poky/meta/recipes-core/eglib=
c/<a href=3D"http://eglibc_2.16.bb">eglibc_2.16.bb</a> /home/joey/work/y/po=
ky/meta/recipes-core/meta/<a href=3D"http://external-sourcery-toolchain.bb"=
>external-sourcery-toolchain.bb</a>).</div>
<div>=C2=A0This usually means one provides something the other doesn&#39;t =
and should.</div><div>ERROR: Multiple .bb files are due to be built which e=
ach provide virtual/arm-none-linux-gnueabi-libc-for-gcc (/home/joey/work/y/=
poky/meta/recipes-core/eglibc/<a href=3D"http://eglibc_2.16.bb">eglibc_2.16=
.bb</a> /home/joey/work/y/poky/meta/recipes-core/meta/<a href=3D"http://ext=
ernal-sourcery-toolchain.bb">external-sourcery-toolchain.bb</a>).</div>
<div>=C2=A0This usually means one provides something the other doesn&#39;t =
and should.</div><div>ERROR: Multiple .bb files are due to be built which e=
ach provide virtual/libiconv (/home/joey/work/y/poky/meta/recipes-core/egli=
bc/<a href=3D"http://eglibc_2.16.bb">eglibc_2.16.bb</a> /home/joey/work/y/p=
oky/meta/recipes-core/meta/<a href=3D"http://external-sourcery-toolchain.bb=
">external-sourcery-toolchain.bb</a>).</div>
<div>=C2=A0This usually means one provides something the other doesn&#39;t =
and should.</div></div><div><br></div><div>And I got bunch of &quot;ERROR: =
QA Issue: No GNU_HASH in the elf binary&quot; messages too.</div><div><br><=
/div>
<div>I&#39;ve also tried to add PREFERRED_PROVIDER_virtual/libc =3D &quot;e=
xternal-sourcery-toolchain&quot; to my local.conf but the error message sti=
ll shows.</div><div><br></div><div>Do you have any comments about building =
image with sourcery toolchain?</div>
<div><br></div><div>Below=C2=A0is the version info of each software.</div><=
div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div=
><div><div>bitbake --version</div><div>BitBake Build Tool Core version 1.16=
.0, bitbake version 1.16.0</div>
</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
></div><div><div>poky</div><div>git log -1</div><div>commit 27af23e65f63b41=
962a7cfddba9e9372d5212396</div><div>Author: Scott Rifenbark &lt;<a href=3D"=
mailto:scott.m.rifenbark@intel.com">scott.m.rifenbark@intel.com</a>&gt;</di=
v>
<div>Date: =C2=A0 Mon Oct 22 14:22:09 2012 -0700</div><div><br></div><div>=
=C2=A0 =C2=A0 documentation: yocto-project-qs - Final changes before the 1.=
3 lockdown</div><div><br></div><div>=C2=A0 =C2=A0 Fixed used of &quot;Sourc=
e Directory&quot; and Build Directory.</div>
<div><br></div><div>=C2=A0 =C2=A0 (From yocto-docs rev: a4d79c5a7e73003fc99=
c274d876fbea453a80d20)</div><div><br></div><div>=C2=A0 =C2=A0 Signed-off-by=
: Scott Rifenbark &lt;<a href=3D"mailto:scott.m.rifenbark@intel.com">scott.=
m.rifenbark@intel.com</a>&gt;</div>
<div>=C2=A0 =C2=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:rich=
ard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt;<=
/div></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</div>
<div><div>arm-none-linux-gnueabi-gcc -v</div><div>Using built-in specs.</di=
v><div>Target: arm-none-linux-gnueabi</div><div>Configured with: /scratch/j=
ulian/2010q1-release-linux-lite/src/gcc-4.4-2010q1/configure --build=3Di686=
-pc-linux-gnu --host=3Di686-pc-linux-gnu --target=3Darm-none-linux-gnueabi =
--enable-threads --disable-libmudflap --disable-libssp --disable-libstdcxx-=
pch --enable-extra-sgxxlite-multilibs --with-arch=3Darmv5te --with-gnu-as -=
-with-gnu-ld --with-specs=3D&#39;%{funwind-tables|fno-unwind-tables|mabi=3D=
*|ffreestanding|nostdlib:;:-funwind-tables} %{O2:%{!fno-remove-local-static=
s: -fremove-local-statics}} %{O*:%{O|O0|O1|O2|Os:;:%{!fno-remove-local-stat=
ics: -fremove-local-statics}}}&#39; --enable-languages=3Dc,c++ --enable-sha=
red --disable-lto --enable-symvers=3Dgnu --enable-__cxa_atexit --with-pkgve=
rsion=3D&#39;Sourcery G++ Lite 2010q1-202&#39; --with-bugurl=3D<a href=3D"h=
ttps://support.codesourcery.com/GNUToolchain/">https://support.codesourcery=
.com/GNUToolchain/</a> --disable-nls --prefix=3D/opt/codesourcery --with-sy=
sroot=3D/opt/codesourcery/arm-none-linux-gnueabi/libc --with-build-sysroot=
=3D/scratch/julian/2010q1-release-linux-lite/install/arm-none-linux-gnueabi=
/libc --with-gmp=3D/scratch/julian/2010q1-release-linux-lite/obj/host-libs-=
2010q1-202-arm-none-linux-gnueabi-i686-pc-linux-gnu/usr --with-mpfr=3D/scra=
tch/julian/2010q1-release-linux-lite/obj/host-libs-2010q1-202-arm-none-linu=
x-gnueabi-i686-pc-linux-gnu/usr --with-ppl=3D/scratch/julian/2010q1-release=
-linux-lite/obj/host-libs-2010q1-202-arm-none-linux-gnueabi-i686-pc-linux-g=
nu/usr --with-host-libstdcxx=3D&#39;-static-libgcc -Wl,-Bstatic,-lstdc++,-B=
dynamic -lm&#39; --with-cloog=3D/scratch/julian/2010q1-release-linux-lite/o=
bj/host-libs-2010q1-202-arm-none-linux-gnueabi-i686-pc-linux-gnu/usr --disa=
ble-libgomp --enable-poison-system-directories --with-build-time-tools=3D/s=
cratch/julian/2010q1-release-linux-lite/install/arm-none-linux-gnueabi/bin =
--with-build-time-tools=3D/scratch/julian/2010q1-release-linux-lite/install=
/arm-none-linux-gnueabi/bin</div>
<div>Thread model: posix</div><div>gcc version 4.4.1 (Sourcery G++ Lite 201=
0q1-202)</div></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br></div><div><br></div><div>Best regards,</div><div>
Joey.</div>

--047d7bf0cabea8066704d08d98f7--
