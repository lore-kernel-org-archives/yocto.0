Return-Path: <hchanuy@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C1A4CE7AF6
	for <webhook@archiver.kernel.org>; Fri,  6 Sep 2024 09:23:34 +0000 (UTC)
Subject: How to use i686-linux-gnu-gcc instead of install multilib when using luajit
To: yocto@lists.yoctoproject.org
From: hchanuy@gmail.com
X-Originating-Location: Helsinki, Uusimaa, FI (87.92.135.50)
X-Originating-Platform: Linux Firefox 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 06 Sep 2024 02:23:26 -0700
Message-ID: <8axl.1725614606267108811.qj7E@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="vLANDLymBqRtmfs1JZ0g"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Sep 2024 09:23:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63791

--vLANDLymBqRtmfs1JZ0g
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Build machine: Ubuntu 22.04
Target machine architecture: armv7hf

I'm trying to use this recipe https://layers.openembedded.org/layerindex/re=
cipe/399848/ and encountered the error

>=20
> In file included from host/buildvm_asm.c:6:
> host/buildvm.h:9:10: fatal error: sys/types.h: No such file or directory
> 9 | #include <sys/types.h>
> | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~
> compilation terminated.
> In file included from
> /usr/lib/gcc/x86_64-linux-gnu/11/include/limits.h:203,
> from /usr/lib/gcc/x86_64-linux-gnu/11/include/syslimits.h:7,
> from /usr/lib/gcc/x86_64-linux-gnu/11/include/limits.h:34,
> from host/minilua.c:33:
> /usr/include/limits.h:26:10: fatal error: bits/libc-header-start.h: No
> such file or directory
> 26 | #include <bits/libc-header-start.h>
> | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~~~~~~~~~
> compilation terminated.
>=20

I digged through the mailing list and saw this thread https://lists.yoctopr=
oject.org/g/yocto/topic/61298057#msg21690 suggesting that a solution to thi=
s is installing the `gcc-multilib` package. However, when I tried to instal=
l this package, it conflicts left and right with the current packages I hav=
e so I cannot install it.

The instruction from the website ( https://luajit.org/install.html#cross ) =
states that using a cross compiler is possible

>=20
> On some distro versions, multilib conflicts with cross-compilers. The
> workaround is to install the x86 cross-compiler package gcc-i686-linux-gn=
u
> and use it to build the host part ( HOST_CC=3Di686-linux-gnu-gcc ).
>=20

So I installed the ` gcc-i686-linux-gnu` package, and modify the recipe fro=
m using `HOST_CC=3D${BUILD_CC}` to `HOST_CC=3Di686-linux-gnu-gcc`. Checking=
 the installation gives

>=20
> =E2=9D=AF i686-linux-gnu-gcc --version
> i686-linux-gnu-gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
> Copyright (C) 2021 Free Software Foundation, Inc.
> This is free software; see the source for copying conditions. =C2=A0There=
 is NO
> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR
> PURPOSE.
>=20

When I tried building luajit, I encoutered the error saying `i686-linux-gnu=
-gcc` is not found

>=20
> make[1]: i686-linux-gnu-gcc: No such file or directory
> make[1]: *** [Makefile:722: host/buildvm_asm.o] Error 127
>=20

How do I solve this?

--vLANDLymBqRtmfs1JZ0g
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Build machine: Ubuntu 22.04</div>
<div>Target machine architecture: armv7hf</div>
<div><br />I'm trying to use this recipe <a href=3D"https://layers.openembe=
dded.org/layerindex/recipe/399848/" target=3D"_blank" rel=3D"noopener">http=
s://layers.openembedded.org/layerindex/recipe/399848/</a> and encountered t=
he error</div>
<div>
<blockquote>
<div>In file included from host/buildvm_asm.c:6:<br />host/buildvm.h:9:10: =
fatal error: sys/types.h: No such file or directory<br />&nbsp; &nbsp; 9 | =
#include &lt;sys/types.h&gt;<br />&nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;^~~~~~~~~~~~~<br />compilation terminated.</div>
<div>In file included from /usr/lib/gcc/x86_64-linux-gnu/11/include/limits.=
h:203,<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;f=
rom /usr/lib/gcc/x86_64-linux-gnu/11/include/syslimits.h:7,<br />&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /usr/lib/gcc/x86_6=
4-linux-gnu/11/include/limits.h:34,<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;from host/minilua.c:33:<br />/usr/include/limit=
s.h:26:10: fatal error: bits/libc-header-start.h: No such file or directory=
<br />&nbsp; &nbsp;26 | #include &lt;bits/libc-header-start.h&gt;<br />&nbs=
p; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~~~~~~=
~~~~<br />compilation terminated.</div>
</blockquote>
I digged through the mailing list and saw this thread <a href=3D"https://li=
sts.yoctoproject.org/g/yocto/topic/61298057#msg21690" target=3D"_blank" rel=
=3D"noopener">https://lists.yoctoproject.org/g/yocto/topic/61298057#msg2169=
0</a> suggesting that a solution to this is installing the `gcc-multilib` p=
ackage. However, when I tried to install this package, it conflicts left an=
d right with the current packages I have so I cannot install it.</div>
<div>&nbsp;</div>
<div>The instruction from the website (<a href=3D"https://luajit.org/instal=
l.html#cross" target=3D"_blank" rel=3D"noopener">https://luajit.org/install=
.html#cross</a>) states that using a cross compiler is possible</div>
<blockquote>
<div>On some distro versions, multilib conflicts with cross-compilers. The =
workaround is to install the x86 cross-compiler package <tt>gcc-i686-linux-=
gnu</tt> and use it to build the host part (<tt>HOST_CC=3Di686-linux-gnu-gc=
c</tt>).</div>
</blockquote>
<div>So I installed the `<tt>gcc-i686-linux-gnu` package, and modify the re=
cipe from using `HOST_CC=3D${BUILD_CC}` to `HOST_CC=3Di686-linux-gnu-gcc`. =
Checking the installation gives</tt></div>
<blockquote>
<div>=E2=9D=AF i686-linux-gnu-gcc --version<br />i686-linux-gnu-gcc (Ubuntu=
 11.4.0-1ubuntu1~22.04) 11.4.0<br />Copyright (C) 2021 Free Software Founda=
tion, Inc.<br />This is free software; see the source for copying condition=
s. &nbsp;There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR =
A PARTICULAR PURPOSE.</div>
</blockquote>
<div><tt>When I tried building luajit, I encoutered the error saying `i686-=
linux-gnu-gcc` is not found</tt></div>
<blockquote>
<div>make[1]: i686-linux-gnu-gcc: No such file or directory<br />make[1]: *=
** [Makefile:722: host/buildvm_asm.o] Error 127</div>
</blockquote>
<div>How do I solve this?</div>

--vLANDLymBqRtmfs1JZ0g--

