Return-Path: <nickdademo@gmail.com>
Received: from mail-oa0-f41.google.com (mail-oa0-f41.google.com
	[209.85.219.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48590E0055C
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2013 06:18:16 -0800 (PST)
Received: by mail-oa0-f41.google.com with SMTP id g12so10710453oah.28
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2013 06:18:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=mHdU5V8W90mp7F6b0lwUTOyH34CAcLmGAAewquWwX70=;
	b=eNPP8VZSc56zVxL9omJsVxfeyN3XJez5CswNR6GItECFcheox/9SeRXCQJP5uSotOy
	qxElPxl6mIHSFc2XUoNCgcgXJPvO1QHjMOtrBIeE5Ok7n+gjW+JQvGrJP+Hfp9GRHwPE
	nEmi6lgaSEBoANxryIi/zryeU+vaBRlNTVHP2rvW7QWUDznzaqlQrdhEZskYfpjNEU2K
	fDJ1yQi78VYxIbQQt5rXcEcUH/UI8vZDvAB8AtQE3BlMtT9gRwxEBLL27F74jnGkhw23
	wzHsFJn4n5xU2NDPdR219d9YGxe5/eCJWR4UdDfJs18ZiTdKHaigwfaFuttp596JmNXn
	RPYg==
X-Received: by 10.60.58.71 with SMTP id o7mr674842oeq.51.1384957095585; Wed,
	20 Nov 2013 06:18:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.133.130 with HTTP; Wed, 20 Nov 2013 06:17:55 -0800 (PST)
From: "Nick D'Ademo" <nickdademo@gmail.com>
Date: Thu, 21 Nov 2013 01:17:55 +1100
Message-ID: <CANR6C56jHhErDpNceMYwCrP6c+LUeck0WOPdX55uAeLr103gTA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: MULTILIB builds with Yocto: Status?
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
X-List-Received-Date: Wed, 20 Nov 2013 14:18:17 -0000
Content-Type: multipart/alternative; boundary=089e01538594b6313204eb9c7352

--089e01538594b6313204eb9c7352
Content-Type: text/plain; charset=ISO-8859-1

From what I've read so far, by adding the following to the local.conf file
(e.g. for a x86_64 build; in my case for the Intel NUC machine), Yocto will
build an image which also contains 32-bit compiled system libraries (+ any
32-bit packages/recipes you have specified):

require conf/multilib.conf
MULTILIBS = "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 = "x86"

However, running BitBake with the above added to local.conf results in a
large number of build errors. To name a few:

grub_2.0.0.bb:
...
| checking whether the C compiler works... no
| configure: error: in
`/home/nick/poky/build/tmp/work/x86_64-poky-linux/grub/2.00-r1/build':
| configure: error: C compiler cannot create executables
...

ntp_4.2.6p5.bb:
...
| configure: exit 77
| ERROR: oe_runconf failed
...

Is there something I'm missing here? What is the status of MULTILIB support
with Yocto? Has anyone attempted it lately?

[The following guide seems a little outdated:
https://wiki.yoctoproject.org/wiki/Multilib]

Thanks,
Nick

--089e01538594b6313204eb9c7352
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>From what I&#39;ve read so far, by add=
ing the following to the local.conf file (e.g. for a x86_64 build; in my ca=
se for the Intel NUC machine), Yocto will build an image which also contain=
s 32-bit compiled system libraries (+ any 32-bit packages/recipes you have =
specified):<br>




<br>require conf/multilib.conf<br>MULTILIBS =3D &quot;multilib:lib32&quot;<=
br>DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;x86&quot;<br><br></div>Ho=
wever, running BitBake with the above added to local.conf results in a larg=
e number of build errors. To name a few:<br>




<br></div><a href=3D"http://grub_2.0.0.bb" target=3D"_blank">grub_2.0.0.bb<=
/a>:<br>...<br>| checking whether the C compiler works... no<br>| configure=
: error: in `/home/nick/poky/build/tmp/work/x86_64-poky-linux/grub/2.00-r1/=
build&#39;:<br>



| configure: error: C compiler cannot create executables<br>...<br>
<br><a href=3D"http://ntp_4.2.6p5.bb" target=3D"_blank">ntp_4.2.6p5.bb</a>:=
<br>...<br>| configure: exit 77<br>| ERROR: oe_runconf failed<br>...<br><br=
></div>Is there something I&#39;m missing here? What is the status of MULTI=
LIB support with Yocto? Has anyone attempted it lately?<br>


<br></div>[The following guide seems a little outdated: <a href=3D"https://=
wiki.yoctoproject.org/wiki/Multilib" target=3D"_blank">https://wiki.yoctopr=
oject.org/wiki/Multilib</a>]<br><div><br></div><div>Thanks,<br>Nick<br>
</div></div>

--089e01538594b6313204eb9c7352--
