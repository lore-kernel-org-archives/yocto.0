Return-Path: <vidal.develone@gmail.com>
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD26DE00527
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2012 09:12:40 -0800 (PST)
Received: by mail-ie0-f180.google.com with SMTP id c10so8372721ieb.11
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2012 09:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=NxVpW3q44NPgOU5+HnqNT0xvYUzhISgAGtsFmkxdeu8=;
	b=W4YSB4AStLtNf+fyCgJ/SXnDsiCFNlqiqHuekSsT/4sSM00oqT+BKWiC2dZUMzST8N
	SmwkQiFn0yWauplupbaRO7P0Wb7WQpaBXAfOyrrRGRh7mljrAyiT+Qt0zH4zxVIY7iTF
	MCc0Ty0DazgD1NeEyuijj8hs/8qZwL9It1g8yYjEqxHpagwQsnegsrwN0urTRLaWMPlv
	9AU/lUfopxqYfSpeLQUNXevOp9efPXg7Z/FDvQTr+uzgYbI3N97vtOmD4IjIUl1LUKFm
	TK4cMGUouxXSIjglM1xmLGbnJXPagpsdkG0WjccFxDnONw6IbHXrvgFb4RqP4lNCWDno
	UHBQ==
MIME-Version: 1.0
Received: by 10.50.152.243 with SMTP id vb19mr17976179igb.16.1356282759931;
	Sun, 23 Dec 2012 09:12:39 -0800 (PST)
Received: by 10.64.40.132 with HTTP; Sun, 23 Dec 2012 09:12:39 -0800 (PST)
In-Reply-To: <CANwz6ny93K8y9rztJ+J7T-qkbTKC-NBMhpmqtXo4HYVmU7u9vg@mail.gmail.com>
References: <CANwz6ny93K8y9rztJ+J7T-qkbTKC-NBMhpmqtXo4HYVmU7u9vg@mail.gmail.com>
Date: Sun, 23 Dec 2012 10:12:39 -0700
Message-ID: <CANwz6nyy-+p+3uOid=PHDH-pKi9EX+j9ED0j+nV3HwonCV_Eeg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: wrong kernel is being downloaded
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
X-List-Received-Date: Sun, 23 Dec 2012 17:12:41 -0000
Content-Type: multipart/alternative; boundary=e89a8f3b9df31ee6f104d188305f

--e89a8f3b9df31ee6f104d188305f
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ----------
From: Edward Vidal <vidal.develone@gmail.com>
Date: Sun, Dec 23, 2012 at 10:07 AM
Subject: wrong kernel is being downloaded
To: angstrom-distro-devel <angstrom-distro-devel@linuxtogo.org>


Hello,
The command bitbake -v xfce-nm-image fails for the pandaboard but does
create a kernel (uImage-3.1.0-r1a-pandaboard-20121222162546.bin). Build
information is below for angstrom and meta-ti.

/media/POKY/build122112_panda/angstrom/setup-scripts
git log

commit a24dfb3d2ac8386d1982a8e4849abf85d7c1dc40
Author: Koen Kooi
<koen@dominion.thruhere.net<http://us.mc1816.mail.yahoo.com/mc/compose?to=
=3Dkoen@dominion.thruhere.net>
>
Date:   Thu Nov 29 11:32:24 2012 +0100

    layerman: mention layer in changelog

    Signed-off-by: Koen Kooi
<koen@dominion.thruhere.net<http://us.mc1816.mail.yahoo.com/mc/compose?to=
=3Dkoen@dominion.thruhere.net>
>

commit e2f46852e3b9216270aa3dc47c8249f55c9b8f97
Author: Koen Kooi
<koen@dominion.thruhere.net<http://us.mc1816.mail.yahoo.com/mc/compose?to=
=3Dkoen@dominion.thruhere.net>
>
Date:   Wed Nov 14 14:33:51 2012 +0100

    layers.txt: move meta-ti to track angstrom staging branch

    Signed-off-by: Koen Kooi
<koen@dominion.thruhere.net<http://us.mc1816.mail.yahoo.com/mc/compose?to=
=3Dkoen@dominion.thruhere.net>
>

/media/POKY/build122112_panda/angstrom/setup-scripts/sources/meta-ti
git log
commit edfd9649cbd16b2cdb5385954c0441c7bba92f8d
Author: Koen Kooi
<koen@dominion.thruhere.net<http://us.mc1816.mail.yahoo.com/mc/compose?to=
=3Dkoen@dominion.thruhere.net>
>
Date:   Wed Nov 21 13:42:36 2012 +0100

    linux-ti33x-psp 3.2: update to 3.2.34

    Signed-off-by: Koen Kooi
<koen@dominion.thruhere.net<http://us.mc1816.mail.yahoo.com/mc/compose?to=
=3Dkoen@dominion.thruhere.net>
>

commit 3b5b6e59c3215914ab5f572aee41e533ab581faa
Author: Koen Kooi
<koen@dominion.thruhere.net<http://us.mc1816.mail.yahoo.com/mc/compose?to=
=3Dkoen@dominion.thruhere.net>
>
Date:   Wed Nov 21 13:39:33 2012 +0100

    linux-ti33x-psp 3.2: add support for LCD4 LED

    Signed-off-by: Koen Kooi
<koen@dominion.thruhere.net<http://us.mc1816.mail.yahoo.com/mc/compose?to=
=3Dkoen@dominion.thruhere.net>
>

linux-omap4-3.1.0-r1a is downloaded and compiles and creates
/media/POKY/build122112_panda/angstrom/setup-scripts/build/tmp-angstrom_v20=
12_05-eglibc/deploy/images/pandaboard/uImage-3.1.0-r1a-pandaboard-201212221=
62546.bin
&
/media/POKY/build122112_panda/angstrom/setup-scripts/build/tmp-angstrom_v20=
12_05-eglibc/deploy/images/pandaboard/modules-3.1.0-r1a-pandaboard.tgz

Added the meta-ti to yocto and made the following chgs to conf/local.conf
MACHINE=3D"pandaboard"
BBMASK=3D"meta-ti/recipes-misc"
Also modified conf/
BBLAYERS ?=3D " \
  /media/POKY/build122112_panda/poky/meta \
  /media/POKY/build122112_panda/poky/meta-yocto \
  /media/POKY/build122112_panda/poky/meta-yocto-bsp \
BBLAYERS ?=3D " \
  /media/POKY/build122112_panda/poky/meta \
  /media/POKY/build122112_panda/poky/meta-yocto \
  /media/POKY/build122112_panda/poky/meta-ti \
  /media/POKY/build122112_panda/poky/meta-yocto-bsp \

The command bitbake -v  core-image-sato-sdk hangs do_fetch at
linux-omap4-3.1.0-r0.

/media/POKY/build122112_panda/poky
git log

commit 90c0eb29f0b41e4ac2d3d17ebad7295c2ebdc02a
Author: Mark Hatle
<mark.hatle@windriver.com<http://us.mc1816.mail.yahoo.com/mc/compose?to=3Dm=
ark.hatle@windriver.com>
>
Date:   Wed Dec 19 09:29:05 2012 -0600

    rootfs_rpm.bbclass: remove debug code

    Debugging code was accidently left in the previous commit.  Remove
    the code as it prevents multiple concurrent bitbake builds.

    (From OE-Core rev: bbd55cc34ca893c7202634fe138cedb2f380be56)

    Signed-off-by: Mark Hatle
<mark.hatle@windriver.com<http://us.mc1816.mail.yahoo.com/mc/compose?to=3Dm=
ark.hatle@windriver.com>
>
    Signed-off-by: Richard Purdie
<richard.purdie@linuxfoundation.org<http://us.mc1816.mail.yahoo.com/mc/comp=
ose?to=3Drichard.purdie@linuxfoundation.org>
>

The meta-ti was  added with

git clone https://github.com/Angstrom-distribution/meta-ti.git

/media/POKY/build122112_panda/poky/meta-ti

git log

commit d3ff5630a74640f46ca2ceaef1aa1baa86b9b795
Author: Andreas M=FCller
<schnitzeltony@googlemail.com<http://us.mc1816.mail.yahoo.com/mc/compose?to=
=3Dschnitzeltony@googlemail.com>
>
Date:   Mon Jul 9 14:35:36 2012 +0200

    netbase: follow oe-core to v5.0

    Signed-off-by: Andreas M=FCller
<schnitzeltony@googlemail.com<http://us.mc1816.mail.yahoo.com/mc/compose?to=
=3Dschnitzeltony@googlemail.com>
>
    Signed-off-by: Denys Dmytriyenko
<denys@ti.com<http://us.mc1816.mail.yahoo.com/mc/compose?to=3Ddenys@ti.com>
>
In the file /media/POKY/build122112_panda/poky/meta-ti/recipes-kernel/linux=
/
linux-omap4_3.1.0.bb
I see the following
MACHINE_KERNEL_PR_append =3D "a"
and in
/media/POKY/build122112_panda/poky/meta-ti/conf/machine/include/ompa4.inc
I see the folowing
# Increase this everytime you change something in the kernel
MACHINE_KERNEL_PR =3D "r1"

Why is the  linux-omap4-3.1.0-r0 being downloaded instead of
linux-omap4-3.1.0-r1a?
Thanks any help will be appreciated.

--e89a8f3b9df31ee6f104d188305f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">---------- Forwarded message ----------<=
br>From: <b class=3D"gmail_sendername">Edward Vidal</b> <span dir=3D"ltr">&=
lt;<a href=3D"mailto:vidal.develone@gmail.com">vidal.develone@gmail.com</a>=
&gt;</span><br>
Date: Sun, Dec 23, 2012 at 10:07 AM<br>Subject: wrong kernel is being downl=
oaded<br>To: angstrom-distro-devel &lt;<a href=3D"mailto:angstrom-distro-de=
vel@linuxtogo.org">angstrom-distro-devel@linuxtogo.org</a>&gt;<br><br><br>
Hello,<br> The command bitbake -v xfce-nm-image fails for the pandaboard
 but does create a kernel=20
(uImage-3.1.0-r1a-pandaboard-20121222162546.bin). Build information is=20
below for angstrom and meta-ti.=A0 <br><br>/media/POKY/build122112_panda/an=
gstrom/setup-scripts<br>git log<br><br>commit a24dfb3d2ac8386d1982a8e4849ab=
f85d7c1dc40<br>Author: Koen Kooi &lt;<a href=3D"http://us.mc1816.mail.yahoo=
.com/mc/compose?to=3Dkoen@dominion.thruhere.net" target=3D"_blank"><span>ko=
en@dominion.thruhere.net</span></a>&gt;<br>

Date:=A0=A0=A0Thu Nov 29 11:32:24 2012 +0100<br><br>=A0 =A0 layerman: menti=
on layer in changelog<br>=A0 =A0 <br>=A0 =A0 Signed-off-by: Koen Kooi &lt;<=
a href=3D"http://us.mc1816.mail.yahoo.com/mc/compose?to=3Dkoen@dominion.thr=
uhere.net" target=3D"_blank">koen@dominion.thruhere.net</a>&gt;<br>

<br>commit e2f46852e3b9216270aa3dc47c8249f55c9b8f97<br>Author: Koen Kooi &l=
t;<a href=3D"http://us.mc1816.mail.yahoo.com/mc/compose?to=3Dkoen@dominion.=
thruhere.net" target=3D"_blank">koen@dominion.thruhere.net</a>&gt;<br>Date:=
=A0=A0=A0Wed Nov 14 14:33:51 2012 +0100<br>

<br>=A0 =A0 layers.txt: move meta-ti to track angstrom staging branch<br>=
=A0 =A0 <br>=A0 =A0 Signed-off-by: Koen Kooi &lt;<a href=3D"http://us.mc181=
6.mail.yahoo.com/mc/compose?to=3Dkoen@dominion.thruhere.net" target=3D"_bla=
nk">koen@dominion.thruhere.net</a>&gt;<br>

<br>/media/POKY/build122112_panda/angstrom/setup-scripts/sources/meta-ti<br=
>git log<br>commit edfd9649cbd16b2cdb5385954c0441c7bba92f8d<br>Author: Koen=
 Kooi &lt;<a href=3D"http://us.mc1816.mail.yahoo.com/mc/compose?to=3Dkoen@d=
ominion.thruhere.net" target=3D"_blank">koen@dominion.thruhere.net</a>&gt;<=
br>

Date:=A0=A0=A0Wed Nov 21 13:42:36 2012 +0100<br><br>=A0 =A0 linux-ti33x-psp=
 3.2: update to 3.2.34<br>=A0 =A0 <br>=A0 =A0 Signed-off-by: Koen Kooi &lt;=
<a href=3D"http://us.mc1816.mail.yahoo.com/mc/compose?to=3Dkoen@dominion.th=
ruhere.net" target=3D"_blank">koen@dominion.thruhere.net</a>&gt;<br>

<br>commit 3b5b6e59c3215914ab5f572aee41e533ab581faa<br>Author: Koen Kooi &l=
t;<a href=3D"http://us.mc1816.mail.yahoo.com/mc/compose?to=3Dkoen@dominion.=
thruhere.net" target=3D"_blank">koen@dominion.thruhere.net</a>&gt;<br>Date:=
=A0=A0=A0Wed Nov 21 13:39:33 2012 +0100<br>

<br>=A0 =A0 linux-ti33x-psp 3.2: add support for LCD4 LED<br>=A0 =A0 <br>=
=A0 =A0 Signed-off-by: Koen Kooi &lt;<a href=3D"http://us.mc1816.mail.yahoo=
.com/mc/compose?to=3Dkoen@dominion.thruhere.net" target=3D"_blank">koen@dom=
inion.thruhere.net</a>&gt;<br>
<br>
linux-omap4-3.1.0-r1a is downloaded and compiles and creates <br>/media/POK=
Y/build122112_panda/angstrom/setup-scripts/build/tmp-angstrom_v2012_05-egli=
bc/deploy/images/pandaboard/uImage-3.1.0-r1a-pandaboard-20121222162546.bin
 &amp; <br>=20
/media/POKY/build122112_panda/angstrom/setup-scripts/build/tmp-angstrom_v20=
12_05-eglibc/deploy/images/pandaboard/modules-3.1.0-r1a-pandaboard.tgz<br><=
br>Added the meta-ti to yocto and made the following chgs to conf/local.con=
f<br>

MACHINE=3D&quot;pandaboard&quot;<br>BBMASK=3D&quot;meta-ti/recipes-misc&quo=
t;<br>Also modified conf/ <br>BBLAYERS ?=3D &quot; \<br>=A0 /media/POKY/bui=
ld122112_panda/poky/meta \<br>=A0 /media/POKY/build122112_panda/poky/meta-y=
octo \<br>

=A0 /media/POKY/build122112_panda/poky/meta-yocto-bsp \<br>BBLAYERS ?=3D &q=
uot; \<br>=A0 /media/POKY/build122112_panda/poky/meta \<br>=A0 /media/POKY/=
build122112_panda/poky/meta-yocto \<br>=A0 /media/POKY/build122112_panda/po=
ky/meta-ti \<br>

=A0 /media/POKY/build122112_panda/poky/meta-yocto-bsp \<br> <br>The command=
 bitbake -v=A0 core-image-sato-sdk hangs do_fetch at linux-omap4-3.1.0-r0.<=
br><br>/media/POKY/build122112_panda/poky<br>git log<br><br>commit 90c0eb29=
f0b41e4ac2d3d17ebad7295c2ebdc02a<br>

Author: Mark Hatle &lt;<a href=3D"http://us.mc1816.mail.yahoo.com/mc/compos=
e?to=3Dmark.hatle@windriver.com" target=3D"_blank">mark.hatle@windriver.com=
</a>&gt;<br>Date:=A0=A0=A0Wed Dec 19 09:29:05 2012 -0600<br><br>=A0 =A0 roo=
tfs_rpm.bbclass: remove debug code<br>

=A0 =A0 <br>=A0 =A0 Debugging code was accidently left in the previous comm=
it.=A0 Remove<br>=A0 =A0 the code as it prevents multiple concurrent bitbak=
e builds.<br>=A0 =A0 <br>=A0 =A0 (From OE-Core rev: bbd55cc34ca893c7202634f=
e138cedb2f380be56)<br>

=A0 =A0 <br>=A0 =A0 Signed-off-by: Mark Hatle &lt;<a href=3D"http://us.mc18=
16.mail.yahoo.com/mc/compose?to=3Dmark.hatle@windriver.com" target=3D"_blan=
k">mark.hatle@windriver.com</a>&gt;<br>=A0 =A0 Signed-off-by: Richard Purdi=
e &lt;<a href=3D"http://us.mc1816.mail.yahoo.com/mc/compose?to=3Drichard.pu=
rdie@linuxfoundation.org" target=3D"_blank"><span>richard.purdie@linuxfound=
ation.org</span></a>&gt;<br>

<br>The meta-ti was=A0 added with <br><br>git clone <a href=3D"https://gith=
ub.com/Angstrom-distribution/meta-ti.git" target=3D"_blank">https://github.=
com/Angstrom-distribution/meta-ti.git</a><br><br>/media/POKY/build122112_pa=
nda/poky/meta-ti<br>

<br>git log<br><br>commit d3ff5630a74640f46ca2ceaef1aa1baa86b9b795<br>Autho=
r: Andreas M=FCller &lt;<a href=3D"http://us.mc1816.mail.yahoo.com/mc/compo=
se?to=3Dschnitzeltony@googlemail.com" target=3D"_blank"><span>schnitzeltony=
@googlemail.com</span></a>&gt;<br>

Date:=A0=A0=A0Mon Jul 9 14:35:36 2012 +0200<br><br>=A0 =A0 netbase: follow =
oe-core to v5.0<br>=A0 =A0 <br>=A0 =A0 Signed-off-by: Andreas M=FCller &lt;=
<a href=3D"http://us.mc1816.mail.yahoo.com/mc/compose?to=3Dschnitzeltony@go=
oglemail.com" target=3D"_blank">schnitzeltony@googlemail.com</a>&gt;<br>

=A0 =A0 Signed-off-by: Denys Dmytriyenko &lt;<a href=3D"http://us.mc1816.ma=
il.yahoo.com/mc/compose?to=3Ddenys@ti.com" target=3D"_blank"><span>denys@ti=
.com</span></a>&gt;<br>In the file /media/POKY/build122112_panda/poky/meta-=
ti/recipes-kernel/linux/<a href=3D"http://linux-omap4_3.1.0.bb" target=3D"_=
blank">linux-omap4_3.1.0.bb</a><br>

I see the following <br>MACHINE_KERNEL_PR_append =3D &quot;a&quot;<br>and i=
n /media/POKY/build122112_panda/poky/meta-ti/conf/machine/include/ompa4.inc=
<br>I see the folowing <br># Increase this everytime you change something i=
n the kernel<br>

MACHINE_KERNEL_PR =3D &quot;r1&quot;<br><br> Why is the=A0 linux-omap4-3.1.=
0-r0 being downloaded instead of linux-omap4-3.1.0-r1a?<br>Thanks any help =
will be appreciated.<br><br>
</div><br>

--e89a8f3b9df31ee6f104d188305f--
