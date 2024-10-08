Return-Path: <salahaldeen.altous@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F33A7CEF154
	for <webhook@archiver.kernel.org>; Tue,  8 Oct 2024 11:18:10 +0000 (UTC)
Subject: Re: [yocto] How I can update the Yocto SDK incrementally/partially?
To: "Yoann Congal" <yoann.congal@smile.fr>, yocto@lists.yoctoproject.org
From: "salahaldeen.altous@yahoo.com" <salahaldeen.altous@yahoo.com>
X-Originating-Location: Ankara, TR (176.232.20.207)
X-Originating-Platform: Linux Firefox 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Oct 2024 04:18:10 -0700
References: <CAMSfU+5HUJE_5OSNdB3WuOBntX-S=Zb_pxgLBfaeSYtVhW7ePQ@mail.gmail.com>
In-Reply-To: <CAMSfU+5HUJE_5OSNdB3WuOBntX-S=Zb_pxgLBfaeSYtVhW7ePQ@mail.gmail.com>
Message-ID: <13803.1728386290751880136@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pBLmtg6p3O9tEcNmPuVw"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 11:18:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63968

--pBLmtg6p3O9tEcNmPuVw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 8, 2024 at 02:38 AM, Yoann Congal wrote:

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
>> I have the need to update the yocto SDK incrementally without the need t=
o
>> rebuild it every time from scratch.
>> I have the package management ipk enabled in my configuration.
>>=20
>> can I use opkg install after sourcing the SDK script? which requirement =
I
>> need to get it running?
>> updating the rootfs on the target is working fine, but updating the SDK =
is
>> not working
>>=20
>=20
>=20
> That sounds like the eSDK : https://docs.yoctoproject.org/sdk-manual/exte=
nsible.html#applying-updates-to-an-installed-extensible-sdk
>=20
> Have you tried it?
>=20

I was planning to used the normal SDK becuase the eSDK is 5 times bigger fo=
r my custom board ~13 GB, I was looking for similar function to install onl=
y few packages on the top of the normally SDK without rebuilding again. Thi=
s would be helpful for the application developer who have no possibility to=
 bitbake a new SDK !! and receiveing incremental updates.

Regards,
Salahaldeen Altous

>=20
>=20
>=20
>=20
>=20
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

--pBLmtg6p3O9tEcNmPuVw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Tue, Oct 8, 2024 at 02:38 AM, Yoann Congal wrote:</div>
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
<div>Hi All,<br /><br />I have the need to update the yocto SDK incremental=
ly without the need to rebuild it every time from scratch.<br />I have the =
package management ipk enabled in my configuration. <br /><br />can I use o=
pkg install after sourcing the SDK script? which requirement I need to get =
it running?<br />updating the rootfs on the target is working fine, but upd=
ating the SDK is not working</div>
</blockquote>
<div>&nbsp;</div>
<div>That sounds like the eSDK : <a href=3D"https://docs.yoctoproject.org/s=
dk-manual/extensible.html#applying-updates-to-an-installed-extensible-sdk">=
https://docs.yoctoproject.org/sdk-manual/extensible.html#applying-updates-t=
o-an-installed-extensible-sdk</a></div>
<div>Have you tried it?</div>
</div>
</div>
</blockquote>
<br />I was planning to used the normal SDK becuase the eSDK is 5 times big=
ger for my custom board ~13 GB, I was looking for similar function to insta=
ll only few packages on the top of the normally SDK without rebuilding agai=
n. This would be helpful for the application developer who have no possibil=
ity to bitbake a new SDK !! and receiveing incremental updates.<br /><br />=
Regards,<br />Salahaldeen Altous<br />
<blockquote>
<div dir=3D"ltr">
<div class=3D"gmail_quote">
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; borde=
r-left: 1px solid #cccccc; padding-left: 1ex;">
<div>Regards,<br />Salahaldeen</div>
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

--pBLmtg6p3O9tEcNmPuVw--

