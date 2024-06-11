Return-Path: <Salahaldeen.Altous@leica-camera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CFF1C27C5E
	for <webhook@archiver.kernel.org>; Tue, 11 Jun 2024 14:30:27 +0000 (UTC)
Subject: Re: [yocto] depoly-ipks are missing the lib**.so file for shared library yocto recipe #kirkstone #yocto
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: "Altous, Salahaldeen" <Salahaldeen.Altous@leica-camera.com>
X-Originating-Location: Ankara, TR (91.93.228.103)
X-Originating-Platform: Linux Firefox 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 11 Jun 2024 07:30:24 -0700
References: <4F653B98-5776-4076-8CA4-F37D017038BC@arm.com>
In-Reply-To: <4F653B98-5776-4076-8CA4-F37D017038BC@arm.com>
Message-ID: <19666.1718116224227201000@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7cI1N2LLVzkvuUto2INq"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jun 2024 14:30:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63320

--7cI1N2LLVzkvuUto2INq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Ross,

On Mon, Jun 10, 2024 at 03:38 AM, Ross Burton wrote:

>=20
> On 10 Jun 2024, at 11:26, Altous, Salahaldeen via lists.yoctoproject.org
> <Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org> wrote:
>=20
>> Hi All,
>>=20
>> I have one yocto recipe which inherit meson as build system and generate
>> the right libs in the image folder
>>=20
>> =E2=94=9C=E2=94=80=E2=94=80 liblc_core.so -> liblc_core.so.0
>> =E2=94=9C=E2=94=80=E2=94=80 liblc_core.so.0 -> liblc_core.so.0.4.7
>> =E2=94=94=E2=94=80=E2=94=80 liblc_core.so.0.4.7
>> but in the deploy-ipks the .so symbolic link is missing
>> drwxr-xr-x root/root 0 2024-05-08 14:29 ./usr/
>> drwxr-xr-x root/root 0 2024-05-08 14:29 ./usr/lib/
>> lrwxrwxrwx root/root 0 2024-05-08 14:29 ./usr/lib/liblc_core.so.0 ->
>> liblc_core.so.0.4.7
>> -rwxr-xr-x root/root 26536 2024-05-08 14:29 ./usr/lib/liblc_core.so.0.4.=
7
>> and in the dev-ipk package the missing *.so exist
>> drwxr-xr-x root/root 0 2024-05-08 14:29 ./usr/lib/
>> lrwxrwxrwx root/root 0 2024-05-08 14:29 ./usr/lib/liblc_core.so ->
>> liblc_core.so.0
>> I need to have all in on files/symbolic-link in the release ipk, and the
>> rootfs wihtout the need to install the dev-ipk later on, any idea what I
>> need to add in the yocto recipe or the meson file
>=20
> This is intended behaviour. Conventionally, libraries are versioned (eg
> liblc_core.so < http://liblc_core.so/>.0.4.7 ) so that specific binaries
> link against specific ABIs at runtime, and there are convenience symlinks
> (liblc_core.so < http://liblc_core.so/ >) that are used at link time so y=
ou
> can just link to liblc_core.so < http://liblc_core.so/ > and that is
> resolved to a specific ABI version.
>=20
> This means that at _runtime_ you need the real library, and not the
> symlink. The symlinks are packaged into the -dev package alongside the
> headers because they=E2=80=99re only needed if you=E2=80=99re compiling c=
ode.
>=20
> This is convention, and there are exceptions. There are two possibilities
> here:
>=20
> 1) The versioned shared library shouldn=E2=80=99t be versioned, because o=
ther
> binaries use dlopen(=E2=80=9Cliblc_core.so < http://liblc_core.so/ >=E2=
=80=9D) at runtime
> instead of linking to it at build time. If this is the case then if it=E2=
=80=99s
> sensible remove the versioning entirely (as it=E2=80=99s pointless) and r=
ead https://docs.yoctoproject.org/next/dev-manual/prebuilt-libraries.html#n=
on-versioned-libraries
> .
>=20
> 2) You don=E2=80=99t actually need the .so at runtime.

thanks for the explanation, I will remove the versioning and add these vari=
ables to my recipes

SOLIBS =3D ".so"
FILES_SOLIBSDEV =3D ""

"The symlinks are packaged into the -dev package alongside the headers beca=
use they=E2=80=99re only needed if you=E2=80=99re compiling code"

Can I use the -dev package to cross compile?

similar to the sysroot in the yocto-SDK

Regards,

Salah

>=20
>=20
> Ross

--7cI1N2LLVzkvuUto2INq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Ross,</p>
<p>&nbsp;</p>
<p>On Mon, Jun 10, 2024 at 03:38 AM, Ross Burton wrote:</p>
<blockquote>On 10 Jun 2024, at 11:26, Altous, Salahaldeen via lists.yoctopr=
oject.org &lt;Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org&=
gt; wrote:<br />
<blockquote>Hi All,<br /><br />I have one yocto recipe which inherit meson =
as build system and generate the right libs in the image folder<br /><br />=
=E2=94=9C=E2=94=80=E2=94=80 liblc_core.so -&gt; liblc_core.so.0<br />=E2=94=
=9C=E2=94=80=E2=94=80 liblc_core.so.0 -&gt; liblc_core.so.0.4.7<br />=E2=94=
=94=E2=94=80=E2=94=80 liblc_core.so.0.4.7<br />but in the deploy-ipks the .=
so symbolic link is missing <br />drwxr-xr-x root/root 0 2024-05-08 14:29 .=
/usr/<br />drwxr-xr-x root/root 0 2024-05-08 14:29 ./usr/lib/<br />lrwxrwxr=
wx root/root 0 2024-05-08 14:29 ./usr/lib/liblc_core.so.0 -&gt; liblc_core.=
so.0.4.7<br />-rwxr-xr-x root/root 26536 2024-05-08 14:29 ./usr/lib/liblc_c=
ore.so.0.4.7<br />and in the dev-ipk package the missing *.so exist<br />dr=
wxr-xr-x root/root 0 2024-05-08 14:29 ./usr/lib/<br />lrwxrwxrwx root/root =
0 2024-05-08 14:29 ./usr/lib/liblc_core.so -&gt; liblc_core.so.0<br />I nee=
d to have all in on files/symbolic-link in the release ipk, and the rootfs =
wihtout the need to install the dev-ipk later on, any idea what I need to a=
dd in the yocto recipe or the meson file</blockquote>
This is intended behaviour. Conventionally, libraries are versioned (eg lib=
lc_core.so &lt;<a href=3D"http://liblc_core.so/&gt;.0.4.7" target=3D"_blank=
" rel=3D"noopener">http://liblc_core.so/&gt;.0.4.7</a>) so that specific bi=
naries link against specific ABIs at runtime, and there are convenience sym=
links (liblc_core.so &lt;<a href=3D"http://liblc_core.so/" target=3D"_blank=
" rel=3D"noopener">http://liblc_core.so/</a>&gt;) that are used at link tim=
e so you can just link to liblc_core.so &lt;<a href=3D"http://liblc_core.so=
/" target=3D"_blank" rel=3D"noopener">http://liblc_core.so/</a>&gt; and tha=
t is resolved to a specific ABI version.<br /><br />This means that at _run=
time_ you need the real library, and not the symlink. The symlinks are pack=
aged into the -dev package alongside the headers because they&rsquo;re only=
 needed if you&rsquo;re compiling code.<br /><br />This is convention, and =
there are exceptions. There are two possibilities here:<br /><br />1) The v=
ersioned shared library shouldn&rsquo;t be versioned, because other binarie=
s use dlopen(&ldquo;liblc_core.so &lt;<a href=3D"http://liblc_core.so/" tar=
get=3D"_blank" rel=3D"noopener">http://liblc_core.so/</a>&gt;&rdquo;) at ru=
ntime instead of linking to it at build time. If this is the case then if i=
t&rsquo;s sensible remove the versioning entirely (as it&rsquo;s pointless)=
 and read <a href=3D"https://docs.yoctoproject.org/next/dev-manual/prebuilt=
-libraries.html#non-versioned-libraries" target=3D"_blank" rel=3D"noopener"=
>https://docs.yoctoproject.org/next/dev-manual/prebuilt-libraries.html#non-=
versioned-libraries</a>.<br /><br />2) You don&rsquo;t actually need the .s=
o at runtime.</blockquote>
<p>&nbsp;</p>
<p>thanks for the explanation, I will remove the versioning and add these v=
ariables to my recipes</p>
<p>SOLIBS =3D ".so"<br />FILES_SOLIBSDEV =3D ""</p>
<p><em>"The symlinks are packaged into the -dev package alongside the heade=
rs because they&rsquo;re only needed if you&rsquo;re compiling code"</em></=
p>
<p>Can I use the -dev package to cross compile?</p>
<p>similar to the sysroot in the yocto-SDK</p>
<p>&nbsp;</p>
<p>Regards,</p>
<p>Salah</p>
<blockquote><br />Ross</blockquote>

--7cI1N2LLVzkvuUto2INq--

