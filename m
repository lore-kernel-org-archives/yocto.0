Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30948C369C2
	for <webhook@archiver.kernel.org>; Tue, 22 Apr 2025 04:41:32 +0000 (UTC)
Subject: Re: [yocto] GPL License Compliance - Automatically detect linking against GPL libraries
To: "Hanke Fabian (DC/PAR)" <fabian.hanke@bosch.com>, yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: CH (147.161.251.101)
X-Originating-Platform: Windows Chrome 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Apr 2025 21:41:26 -0700
References: <918.1717162801361364915@lists.yoctoproject.org>
In-Reply-To: <918.1717162801361364915@lists.yoctoproject.org>
Message-ID: <24438.1745296886216583159@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yy2Wm9Z6DoRG7GDqHjpW"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Apr 2025 04:41:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65217

--yy2Wm9Z6DoRG7GDqHjpW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 31, 2024 at 03:40 PM, Hanke Fabian (DC/PAR) wrote:

>=20
> Hello,
>=20
> thank you for all the responses so far. I guess we will have a look at
> fossology and fossas, but we would prefer a solution which does not
> require an additional thirdparty service. We know that there are differen=
t
> types of GPL licenses which bring different obligations.
>=20
> We are searching for an automatic mechanism to detect linking to a shared
> library from a GPL package. We thought there might be a way to utilize th=
e
> build system=E2=80=99s shared library resolver which is used for the auto=
matic
> runtime added runtime dependencies [1].
>=20
> For static libraries we found that they are disabled by default [2].

Could someone explain what it means that static libraries are disabled? Doe=
s this refer to staticdev-pkgs in IMAGE_FEATURES?

Cheers,
Aleksandar

>=20
>=20
> [1] https://docs.yoctoproject.org/overview-manual/concepts.html#automatic=
ally-added-runtime-dependencies
>=20
> [2] https://docs.yoctoproject.org/dev/dev-manual/licenses.html#compliance=
-limitations-with-executables-built-from-static-libraries
>=20
> --------------------------------
>=20
> Bosch Rexroth AG
>=20
> Registered Office: Stuttgart, Registration Court: Amtsgericht Stuttgart
> HRB 23192 Executive Board: Dr. Steffen Haack (President), Roland
> Bittenauer, Thomas Fechner, Holger von Hebel, Reinhard Sch=C3=A4fer Chair=
man of
> the Supervisory Board: Dr. Markus Forschner

--yy2Wm9Z6DoRG7GDqHjpW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Fri, May 31, 2024 at 03:40 PM, Hanke Fabian (DC/PAR) wrote:</div>
<div>
<blockquote>Hello,<br /><br />thank you for all the responses so far. I gue=
ss we will have a look at fossology and fossas, but we would prefer a solut=
ion which does not require an additional thirdparty service. We know that t=
here are different types of GPL licenses which bring different obligations.=
 <br /><br />We are searching for an automatic mechanism to detect linking =
to a shared library from a GPL package. We thought there might be a way to =
utilize the build system&rsquo;s shared library resolver which is used for =
the automatic runtime added runtime dependencies [1].<br /><br />For static=
 libraries we found that they are disabled by default [2].</blockquote>
Could someone explain what it means that static libraries are disabled? Doe=
s this refer to staticdev-pkgs in IMAGE_FEATURES?</div>
<div>&nbsp;</div>
<div>Cheers,</div>
<div>Aleksandar<br />
<blockquote><br />[1] <a href=3D"https://docs.yoctoproject.org/overview-man=
ual/concepts.html#automatically-added-runtime-dependencies" target=3D"_blan=
k" rel=3D"noopener">https://docs.yoctoproject.org/overview-manual/concepts.=
html#automatically-added-runtime-dependencies</a><br />[2] <a href=3D"https=
://docs.yoctoproject.org/dev/dev-manual/licenses.html#compliance-limitation=
s-with-executables-built-from-static-libraries" target=3D"_blank" rel=3D"no=
opener">https://docs.yoctoproject.org/dev/dev-manual/licenses.html#complian=
ce-limitations-with-executables-built-from-static-libraries</a><br />------=
--------------------------<br /><br />Bosch Rexroth AG<br /><br />Registere=
d Office: Stuttgart, Registration Court: Amtsgericht Stuttgart HRB 23192 Ex=
ecutive Board: Dr. Steffen Haack (President), Roland Bittenauer, Thomas Fec=
hner, Holger von Hebel, Reinhard Sch&auml;fer Chairman of the Supervisory B=
oard: Dr. Markus Forschner</blockquote>
</div>

--yy2Wm9Z6DoRG7GDqHjpW--

