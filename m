Return-Path: <salahaldeen.altous@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC114CEF14F
	for <webhook@archiver.kernel.org>; Tue,  8 Oct 2024 10:54:30 +0000 (UTC)
Subject: Re: [yocto] Does yocto recipe support fetching from SRC_URC as ipk pakage?
To: "Yoann Congal" <yoann.congal@smile.fr>, yocto@lists.yoctoproject.org
From: "salahaldeen.altous@yahoo.com" <salahaldeen.altous@yahoo.com>
X-Originating-Location: Ankara, TR (176.232.20.207)
X-Originating-Platform: Linux Firefox 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Oct 2024 03:54:27 -0700
References: <CAMSfU+6teJrU0C6w3dFXCA37mvVL0eSLCqXe1dwgnrEb67+CUQ@mail.gmail.com>
In-Reply-To: <CAMSfU+6teJrU0C6w3dFXCA37mvVL0eSLCqXe1dwgnrEb67+CUQ@mail.gmail.com>
Message-ID: <11278.1728384867629046470@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="3O5E5S0j6gpiqk65YBDO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 10:54:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63967

--3O5E5S0j6gpiqk65YBDO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Oct 8, 2024 at 02:36 AM, Yoann Congal wrote:

>=20
>=20
>=20
> Le=C2=A0mar. 8 oct. 2024 =C3=A0=C2=A011:27, salahaldeen.altous@yahoo.com =
via lists.yoctoproject.org
> ( http://lists.yoctoproject.org ) <salahaldeen.altous=3D yahoo.com@lists.=
yoctoproject.org
> > a =C3=A9crit=C2=A0:
>=20
>> Hi All,
>>=20
>> I have one request from one custom to fetch the recipe from ipk package,
>> is this recommended?
>> Does any one tested fetching from ipk?
>>=20
>> the recipe looks like this
>>=20
>> SRC_URI =3D " http://your-server-url/path/to/package.ipk "
>> # Fetches the IPK and unpacks it
>> do_unpack[depends] +=3D "opkg-native:do_populate_sysroot"
>> S =3D "${WORKDIR}"
>>=20
>> # Install the package using opkg
>> do_install() {
>> opkg-cl -o ${D} install ${WORKDIR}/package.ipk
>> }
>>=20
>=20
>=20
> This looks like the bin_package class:
> https://git.yoctoproject.org/poky/plain/meta/classes-recipe/bin_package.b=
bclass
>=20
> https://docs.yoctoproject.org/ref-manual/classes.html#bin-package
>=20
> Have you found/looked into it?
>=20

This looks similar, I will check it.

Regards,
Salahaldeen

>=20
>=20
>=20
>=20
>>=20
>> Regards,
>> Salahaldeen
>>=20
>>=20
>>=20
>=20
>=20
>=20
>=20
> --
> Yoann Congal
> Smile ECS - Tech expert
>=20
>

--3O5E5S0j6gpiqk65YBDO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,<br /><br />On Tue, Oct 8, 2024 at 02:36 AM, Yoann Congal wrote:</d=
iv>
<div>
<blockquote>
<div dir=3D"ltr">
<div dir=3D"ltr">&nbsp;</div>
<br />
<div class=3D"gmail_quote">
<div class=3D"gmail_attr" dir=3D"ltr">Le&nbsp;mar. 8 oct. 2024 &agrave;&nbs=
p;11:27, <a href=3D"mailto:salahaldeen.altous@yahoo.com">salahaldeen.altous=
@yahoo.com</a> via <a href=3D"http://lists.yoctoproject.org">lists.yoctopro=
ject.org</a> &lt;salahaldeen.altous=3D<a href=3D"mailto:yahoo.com@lists.yoc=
toproject.org">yahoo.com@lists.yoctoproject.org</a>&gt; a &eacute;crit&nbsp=
;:</div>
<blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; borde=
r-left: 1px solid #cccccc; padding-left: 1ex;">
<div>Hi All,<br /><br />I have one request from one custom to fetch the rec=
ipe from ipk package, is this recommended?<br />Does any one tested fetchin=
g from ipk?<br /><br />the recipe looks like this <br /><br />
<div>SRC_URI =3D "<a href=3D"http://your-server-url/path/to/package.ipk" ta=
rget=3D"_blank" rel=3D"noopener">http://your-server-url/path/to/package.ipk=
</a>"</div>
<div># Fetches the IPK and unpacks it<br />do_unpack[depends] +=3D "opkg-na=
tive:do_populate_sysroot"<br />S =3D "${WORKDIR}"</div>
<div><br /># Install the package using opkg<br />do_install() {<br />&nbsp;=
 &nbsp; opkg-cl -o ${D} install ${WORKDIR}/package.ipk<br />}</div>
</div>
</blockquote>
<div>&nbsp;</div>
<div>This looks like the bin_package class:&nbsp;</div>
<div><a href=3D"https://git.yoctoproject.org/poky/plain/meta/classes-recipe=
/bin_package.bbclass">https://git.yoctoproject.org/poky/plain/meta/classes-=
recipe/bin_package.bbclass</a></div>
<div><a href=3D"https://docs.yoctoproject.org/ref-manual/classes.html#bin-p=
ackage">https://docs.yoctoproject.org/ref-manual/classes.html#bin-package</=
a></div>
<div>&nbsp;</div>
<div>Have you found/looked into it?</div>
</div>
</div>
</blockquote>
This looks similar, I will check it.<br /><br />Regards,<br />Salahaldeen<b=
r />
<blockquote>
<div dir=3D"ltr">
<div class=3D"gmail_quote">
<div>&nbsp;</div>
<div>&nbsp;</div>
<blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; borde=
r-left: 1px solid #cccccc; padding-left: 1ex;">
<div>
<div><br />Regards,<br />Salahaldeen</div>
</div>
<br /><br /></blockquote>
</div>
<br clear=3D"all" /><br /><span class=3D"gmail_signature_prefix">-- </span>=
<br />
<div class=3D"gmail_signature" dir=3D"ltr">
<div dir=3D"ltr"><span style=3D"font-family: Raleway, regular;">Yoann Conga=
l</span>
<div><span style=3D"font-family: Raleway, regular;">Smile ECS - Tech expert=
<br /></span></div>
</div>
</div>
</div>
</blockquote>
</div>

--3O5E5S0j6gpiqk65YBDO--

