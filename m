Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38490C47072
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 11:08:39 +0000 (UTC)
Subject: Re: Architecture did not match
To: yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.1.74)
X-Originating-Platform: Linux Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Nov 2023 03:08:31 -0800
References: <CAMKF1sqv9_Gu_qYO5dPN85oi+X2M14QJaHMdfZc36C7mPNRmxA@mail.gmail.com>
In-Reply-To: <CAMKF1sqv9_Gu_qYO5dPN85oi+X2M14QJaHMdfZc36C7mPNRmxA@mail.gmail.com>
Message-ID: <17365.1700046511543194654@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="nmUXCiteTDnNXC05NBFh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 11:08:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61694

--nmUXCiteTDnNXC05NBFh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 14, 2023 at 11:45 PM, Khem Raj wrote:

>=20
> in your recipe, you need to add runtime dependencies. e.g.
>=20
> RDEPENDS:${PN} +=3D "bash"
>=20
> or you can ignore the deps if your image has them all in already.
> since your package is binary only.
> add
> INSANE_SKIP:${PN} =3D "file-rdeps"
>=20
>=20

Tested but still the same error. Also its not a binary file, i couldnt crea=
te nodejs binary using yocto. *Let me know if such feature is available.* S=
o the files I have actually is an complete application inside the Edge fold=
er containing the application along with the package-json and the node_modu=
les.
Also I have referred to the nodejs page but its not as easy to load the pac=
kages as it looks, specially when you have lots of npm packages to download=
. Do let me know if you have any easier alternatives.

Regards,
Hassan

--nmUXCiteTDnNXC05NBFh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 14, 2023 at 11:45 PM, Khem Raj wrote:<br />
<blockquote>in your recipe, you need to add runtime dependencies. e.g.<br /=
><br />RDEPENDS:${PN} +=3D "bash"<br /><br />or you can ignore the deps if =
your image has them all in already.<br />since your package is binary only.=
<br />add<br />INSANE_SKIP:${PN} =3D "file-rdeps"<br /><br /></blockquote>
Tested but still the same error. Also its not a binary file, i couldnt crea=
te nodejs binary using yocto. <strong>Let me know if such feature is availa=
ble.</strong> So the files I have actually is an complete application insid=
e the Edge folder containing the application along with the package-json an=
d the node_modules.<br />Also I have referred to the nodejs page but its no=
t as easy to load the packages as it looks, specially when you have lots of=
 npm packages to download. Do let me know if you have any easier alternativ=
es.<br /><br />Regards,<br />Hassan

--nmUXCiteTDnNXC05NBFh--

