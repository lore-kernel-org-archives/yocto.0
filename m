Return-Path: <alexander.rodatos@brose.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F21A7C05027
	for <webhook@archiver.kernel.org>; Fri, 10 Feb 2023 07:16:33 +0000 (UTC)
Subject: Re: [meta-oe][dunfell]nativesdk-postgresql - causing chown: invalid user: 'postgres:postgres'
To: yocto@lists.yoctoproject.org
From: alexander.rodatos@brose.com
X-Originating-Location: Frankfurt am Main, Hesse, DE (185.125.227.20)
X-Originating-Platform: Windows Chrome 108
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 09 Feb 2023 23:16:28 -0800
References: <d368d084803c72f68105dd1cefed730bafd40330.camel@linuxfoundation.org>
In-Reply-To: <d368d084803c72f68105dd1cefed730bafd40330.camel@linuxfoundation.org>
Message-ID: <14845.1676013388213194929@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ELb0YI5A8lCxI3yJkPFX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Feb 2023 07:16:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59206

--ELb0YI5A8lCxI3yJkPFX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, i did send my answer to Richard only, i re post it for context:

>=20
>=20
>=20
> On Thu, 2023-02-09 at 06:44 -0800, alexander.rodatos@brose.com wrote:
>=20
>=20
>=20
> > Hello Richard,
>=20
>=20
>=20
> >
>=20
>=20
>=20
> > will this commit be integrated into the dunfell branche or can i
>=20
>=20
>=20
> > integrate it by my self?
>=20
>=20
>=20
> > At least i don't see the changes of the commit in the latest version
>=20
>=20
>=20
> > of the dunfell branch.
>=20
>=20
>=20
> >
>=20
>=20
>=20
> > Is there a best practice to integrate this patches when they are not
>=20
>=20
>=20
> > available on the branch?
>=20
>=20
>=20
> >
>=20
>=20
>=20
> > Thanks for pointing me to the commit.
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> I did cc: the stable release maintainer on the commit. I think the
>=20
>=20
>=20
> might be persuaded to backport that change if it doesn't show problems
>=20
>=20
>=20
> in testing.
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> Cheers,
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> Richard
>=20
>=20

I integrated the changes of the commit you posted, however i still have the=
 same error message coming up. Do i need to make changes in the recipe to m=
ake the=C2=A0 intercept work?

Best Regards

Alexander

--ELb0YI5A8lCxI3yJkPFX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi, i did send my answer to Richard only, i re post it for context:</p>
<p>&nbsp;</p>
<blockquote>
<p class=3D"MsoPlainText">On Thu, 2023-02-09 at 06:44 -0800, <a href=3D"mai=
lto:alexander.rodatos@brose.com">alexander.rodatos@brose.com</a> wrote:</p>
<p class=3D"MsoPlainText">&gt; Hello Richard,&nbsp;</p>
<p class=3D"MsoPlainText">&gt;</p>
<p class=3D"MsoPlainText">&gt; will this commit be integrated into the dunf=
ell branche or can i</p>
<p class=3D"MsoPlainText">&gt; integrate it by my self?&nbsp;</p>
<p class=3D"MsoPlainText">&gt; At least i don't see the changes of the comm=
it in the latest version</p>
<p class=3D"MsoPlainText">&gt; of the dunfell branch.&nbsp;</p>
<p class=3D"MsoPlainText">&gt;</p>
<p class=3D"MsoPlainText">&gt; Is there a best practice to integrate this p=
atches when they are not</p>
<p class=3D"MsoPlainText">&gt; available on the branch?&nbsp;</p>
<p class=3D"MsoPlainText">&gt;</p>
<p class=3D"MsoPlainText">&gt; Thanks for pointing me to the commit.&nbsp;<=
/p>
<p class=3D"MsoPlainText">&nbsp;</p>
<p class=3D"MsoPlainText">I did cc: the stable release maintainer on the co=
mmit. I think the</p>
<p class=3D"MsoPlainText">might be persuaded to backport that change if it =
doesn't show problems</p>
<p class=3D"MsoPlainText">in testing.</p>
<p class=3D"MsoPlainText">&nbsp;</p>
<p class=3D"MsoPlainText">Cheers,</p>
<p class=3D"MsoPlainText">&nbsp;</p>
<p class=3D"MsoPlainText">Richard</p>
</blockquote>
<p>I integrated the changes of the commit you posted, however i still have =
the same error message coming up. Do i need to make changes in the recipe t=
o make the&nbsp; intercept work?</p>
<p>&nbsp;</p>
<p>Best Regards</p>
<p>&nbsp;</p>
<p>Alexander</p>
<p>&nbsp;</p>

--ELb0YI5A8lCxI3yJkPFX--

