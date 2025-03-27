Return-Path: <rajesh.d@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9E5C3600B
	for <webhook@archiver.kernel.org>; Thu, 27 Mar 2025 10:31:08 +0000 (UTC)
Subject: Issue Booting Yocto Scarthgap (core-image-sato) Image on AIMB-288E (Intel based target board)  #kirkstone #scarthgap #yocto
To: yocto@lists.yoctoproject.org
From: rajesh.d@mindteck.com
X-Originating-Location: Bengaluru, Karnataka, IN (14.142.4.2)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 27 Mar 2025 03:31:06 -0700
Message-ID: <XD94.1743071466814370904.20IX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xcOOI5giUg9xrXkxbfp3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Mar 2025 10:31:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65025

--xcOOI5giUg9xrXkxbfp3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am working with the AIMB-288E Intel-based board and have successfully bui=
lt and booted a Yocto *Kirkstone* image (core-image-sato) and abel to get t=
he default GUI on the screen ,hear by default we get the linux kernel versi=
on 5.15. i have used the MACHINE =3D "genericx86-64" in locl.conf file to b=
uild my yocto image .

However, I require the latest *Linux kernel 6.x*. so decided to build a yoc=
to Scarthgap,

I tried to build a *Yocto Scarthgap* image (core-image-sato) with kernel 6.=
x and=C2=A0 MACHINE =3D "genericx86-64" in locl.conf file.=C2=A0The build c=
ompleted successfully, but when I try to boot the target board, I encounter=
 an issue:

*=20

The system starts booting.

*=20

The GRUB menu appears and stays for about 5 seconds.

*=20

After selecting an option, some logs appear, but shortly after, the system =
*exits*.

Has anyone successfully used kernel 6.x on a similar setup? Are there any k=
nown issues or recommended configurations for enabling support on the AIMB-=
288E board? Whether genericx86-64=C2=A0is suitable for AIMB-288E

Any guidance would be appreciated!

--xcOOI5giUg9xrXkxbfp3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"" data-start=3D"184" data-end=3D"355">I am working with the AIM=
B-288E Intel-based board and have successfully built and booted a Yocto <st=
rong data-start=3D"281" data-end=3D"294">Kirkstone</strong> image (core-ima=
ge-sato) and abel to get the default GUI on the screen ,hear by default we =
get the linux kernel version 5.15. i have used the MACHINE =3D "genericx86-=
64" in locl.conf file to build my yocto image .&nbsp;</p>
<p class=3D"" data-start=3D"184" data-end=3D"355">However, I require the la=
test <strong data-start=3D"332" data-end=3D"352">Linux kernel 6.x</strong>.=
 so decided to build a yocto Scarthgap,</p>
<p class=3D"" data-start=3D"357" data-end=3D"597">I tried to build a <stron=
g data-start=3D"397" data-end=3D"417">Yocto Scarthgap</strong> image (core-=
image-sato) with kernel 6.x and&nbsp; MACHINE =3D "genericx86-64" in locl.c=
onf file.&nbsp;The build completed successfully, but when I try to boot the=
 target board, I encounter an issue:</p>
<ol data-start=3D"662" data-end=3D"848">
<li class=3D"" data-start=3D"662" data-end=3D"693">
<p class=3D"" data-start=3D"665" data-end=3D"693">The system starts booting=
.</p>
</li>
<li class=3D"" data-start=3D"694" data-end=3D"751">
<p class=3D"" data-start=3D"697" data-end=3D"751">The GRUB menu appears and=
 stays for about 5 seconds.</p>
</li>
<li class=3D"" data-start=3D"752" data-end=3D"848">
<p class=3D"" data-start=3D"755" data-end=3D"848">After selecting an option=
, some logs appear, but shortly after, the system <strong data-start=3D"830=
" data-end=3D"845">exits</strong>.</p>
</li>
</ol>
<p class=3D"" data-start=3D"599" data-end=3D"762">Has anyone successfully u=
sed kernel 6.x on a similar setup? Are there any known issues or recommende=
d configurations for enabling support on the AIMB-288E board? Whether gener=
icx86-64&nbsp;is suitable for AIMB-288E</p>
<p class=3D"" data-start=3D"764" data-end=3D"800">Any guidance would be app=
reciated!</p>

--xcOOI5giUg9xrXkxbfp3--

