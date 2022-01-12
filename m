Return-Path: <r.spencer.white@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59EEBC433F5
	for <webhook@archiver.kernel.org>; Wed, 12 Jan 2022 18:34:16 +0000 (UTC)
Subject: problem with interpreter
To: yocto@lists.yoctoproject.org
From: "swhite" <r.spencer.white@gmail.com>
X-Originating-Location: Orem, Utah, US (50.226.187.84)
X-Originating-Platform: Linux Chrome 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 12 Jan 2022 10:34:15 -0800
Message-ID: <cakt.1642012455158813295.G6KK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jI4DazR0L0AI8P0qasgx"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 18:34:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55818

--jI4DazR0L0AI8P0qasgx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I need to include an old open source project named judy for a legacy
utility dependency. The recipe I have so far is listed at the end of this e=
mail. The
build host is 64bit linux, I'm using dunfell and the MACHINE I'm build for =
is "genericx86-64".
The issue I'm seeing is when compiling judy, it builds and then executes a
binary named "JudyLTablesGen" as part of the process. However the execution
fails with:

/bin/sh: ./JudyLTablesGen: No such file or directory

The interpreter for JudyLTablesGen is set as: /lib/ld-linux-x86-64.so.2. On
the build host the library doesn't exist under /lib, but does exist as
/lib64/ld-linux-x86-64.so.2. When I run ldd on JudyLTablesGen I see ld-linu=
x-x86-64.so.2
as:

/lib/ld-linux-x86-64.so.2 =3D> /lib64/ld-linux-x86-64.so.2 (0x00007f58fa839=
000).

A potential workaround to compile it is:

ln -s /lib64/ld-linux-x86-64.so.2 /lib/ld-linux-x86-64.so.2'

But I'd like to find a way to fix this in the recipe and not have to modify=
 the build host file system. Any advice?

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

inherit pkgconfig

LICENSE =3D "LGPLv2.1"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Da2f59868b389d66faed0cf18e0caa486=
"

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
SRC_URI =3D "\
https://sourceforge.net/projects/judy/files/judy/Judy-1.0.5/Judy-1.0.5.tar.=
gz \
file://judy-1.0.5_bootstrap_automake1.16.patch \
"
SRC_URI[sha256sum] =3D "d2704089f85fdb6f2cd7e77be21170ced4b4375c03ef1ad4cf1=
075bd414a63eb"

PARALLEL_MAKE =3D ""

do_configure() {
./bootstrap
./configure -prefix=3D${D}/usr/local/ --host=3D${TARGET_SYS} --enable-64-bi=
t
}

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

--jI4DazR0L0AI8P0qasgx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I need to include an old open source project named judy for a legacy</=
div>
<div>utility dependency. The recipe I have so far is listed at the end of t=
his email. The</div>
<div>build host is 64bit linux, I'm using dunfell and the MACHINE I'm build=
 for is "genericx86-64".</div>
<div>The issue I'm seeing is when compiling judy, it builds and then execut=
es a</div>
<div>binary named "JudyLTablesGen" as part of the process. However the exec=
ution</div>
<div>fails with:</div>
<div><br />&nbsp; &nbsp; /bin/sh: ./JudyLTablesGen: No such file or directo=
ry</div>
<div>&nbsp;</div>
<div>The interpreter for JudyLTablesGen is set as: /lib/ld-linux-x86-64.so.=
2. On</div>
<div>the build host the library doesn't exist under /lib, but does exist as=
</div>
<div>/lib64/ld-linux-x86-64.so.2. When I run ldd on JudyLTablesGen I see ld=
-linux-x86-64.so.2</div>
<div>as:<br /><br />&nbsp; &nbsp; /lib/ld-linux-x86-64.so.2 =3D&gt; /lib64/=
ld-linux-x86-64.so.2 (0x00007f58fa839000).<br /><br />A potential workaroun=
d to compile it is:<br /><br />&nbsp; &nbsp; ln -s /lib64/ld-linux-x86-64.s=
o.2 /lib/ld-linux-x86-64.so.2'<br /><br />But I'd like to find a way to fix=
 this in the recipe and not have to modify the build host file system. Any =
advice?</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>inherit pkgconfig</div>
<div>&nbsp;</div>
<div>LICENSE =3D "LGPLv2.1"</div>
<div>LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Da2f59868b389d66faed0cf18e0c=
aa486"</div>
<div>&nbsp;</div>
<div>FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"</div>
<div>SRC_URI =3D "\</div>
<div>&nbsp; https://sourceforge.net/projects/judy/files/judy/Judy-1.0.5/Jud=
y-1.0.5.tar.gz \</div>
<div>&nbsp; file://judy-1.0.5_bootstrap_automake1.16.patch \</div>
<div>"</div>
<div>SRC_URI[sha256sum] =3D "d2704089f85fdb6f2cd7e77be21170ced4b4375c03ef1a=
d4cf1075bd414a63eb"</div>
<div>&nbsp;</div>
<div>PARALLEL_MAKE =3D ""</div>
<div>&nbsp;</div>
<div>do_configure() {</div>
<div>&nbsp; ./bootstrap</div>
<div>&nbsp; ./configure -prefix=3D${D}/usr/local/ --host=3D${TARGET_SYS} --=
enable-64-bit</div>
<div>}</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D</div>
<div>&nbsp;</div>

--jI4DazR0L0AI8P0qasgx--

