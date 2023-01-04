Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D88E2C4332F
	for <webhook@archiver.kernel.org>; Wed,  4 Jan 2023 09:06:00 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web11.7838.1672823151588814796
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Jan 2023 01:05:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=gm1 header.b=O4EdYhgz;
 spf=pass (domain: pbarker.dev, ip: 217.70.183.193, mailfrom: paul@pbarker.dev)
Received: (Authenticated sender: paul@paulbarker.me.uk)
	by mail.gandi.net (Postfix) with ESMTPSA id D7DD4240002;
	Wed,  4 Jan 2023 09:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; s=gm1;
	t=1672823149;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gzGFcvgkfepOZYXUSbWY6lfxwZpHWrCV4CQ7KQQz3hw=;
	b=O4EdYhgznF5n3lBKuULW6EAa9xI+vYqWzvg3jDKGVARCkEmOz6vj6OTsn1ycbEtElxNb0Y
	I8kxvX6QH/6XFNF1Br1S8ZrGHmBGI+CF1hFZdkYc+t5I3LQiXDIC17vpb6ZgOWmghxsyb5
	65x6bSK2EsiJgVrCZwJnSu0K7dC9jaN1dirvNDoAYoThGkFDIW2YDBygGAXD4XlBM0UXQy
	XPHO4G8BVnP3l2z/Npq+Oi6vYfxP0rNTI+DuWQDobrchBGyuX7DRzeca6lxjzW5oyHTwlT
	vu/28EmjrEx1cf9HX6/iR/0mMXQaO+3ZqQX+Fd1Ayfa8MioB809XNIR1+sXnDQ==
Message-ID: <12b46a00-0e3e-152c-d865-5b038b2cb809@pbarker.dev>
Date: Wed, 4 Jan 2023 09:05:46 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] Layer index update for meta-linux-mainline
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: yocto@lists.yoctoproject.org,
 Paul Eggleton <paul.eggleton@linux.microsoft.com>,
 Tim Orling <ticotimo@gmail.com>
References: <53a8df93-9880-0945-b334-020753a1771b@pbarker.dev>
 <CAP71WjzAL4DJNVMQGaTTEGJArA77sUHYezz6CYvMuzRRZTKNRw@mail.gmail.com>
From: Paul Barker <paul@pbarker.dev>
In-Reply-To: <CAP71WjzAL4DJNVMQGaTTEGJArA77sUHYezz6CYvMuzRRZTKNRw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------I6I6EZacJlrnwrxOcx3jzJln"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Jan 2023 09:06:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58924

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------I6I6EZacJlrnwrxOcx3jzJln
Content-Type: multipart/mixed; boundary="------------TRNcwV23DLoGfHeRQE0BolpH";
 protected-headers="v1"
From: Paul Barker <paul@pbarker.dev>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: yocto@lists.yoctoproject.org,
 Paul Eggleton <paul.eggleton@linux.microsoft.com>,
 Tim Orling <ticotimo@gmail.com>
Message-ID: <12b46a00-0e3e-152c-d865-5b038b2cb809@pbarker.dev>
Subject: Re: [yocto] Layer index update for meta-linux-mainline
References: <53a8df93-9880-0945-b334-020753a1771b@pbarker.dev>
 <CAP71WjzAL4DJNVMQGaTTEGJArA77sUHYezz6CYvMuzRRZTKNRw@mail.gmail.com>
In-Reply-To: <CAP71WjzAL4DJNVMQGaTTEGJArA77sUHYezz6CYvMuzRRZTKNRw@mail.gmail.com>

--------------TRNcwV23DLoGfHeRQE0BolpH
Content-Type: multipart/mixed; boundary="------------004gkpQe1Fls2ovqopOYg0fc"

--------------004gkpQe1Fls2ovqopOYg0fc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 04/01/2023 08:52, Nicolas Dechesne wrote:
>=20
>=20
> On Wed, Jan 4, 2023 at 9:37 AM Paul Barker <paul@pbarker.dev <mailto:pa=
ul@pbarker.dev>> wrote:
>=20
>     Hi folks,
>=20
>     I'm unable to make updates to the meta-linux-mainline layer on the =
layer
>     index. It still has an old email address in the maintainer field wh=
ich I
>     no longer have access to.
>=20
>     The layer can be seen on the dunfell branch here:
>     https://layers.openembedded.org/layerindex/branch/dunfell/layer/met=
a-linux-mainline/ <https://layers.openembedded.org/layerindex/branch/dunf=
ell/layer/meta-linux-mainline/>
>=20
>     Is it possible to update the layer index so that the current detail=
s are
>     used?
>=20
>     Repository URL: https://github.com/unnecessary-abstraction/meta-lin=
ux-mainline <https://github.com/unnecessary-abstraction/meta-linux-mainli=
ne>
>     Maintainer email: paul@pbarker.dev <mailto:paul@pbarker.dev>
>=20
>=20
> I've made the changes, please check. there is still some old data, hope=
fully it will be fixed when the index is updated.=C2=A0
> =C2=A0

Thanks Nico!

I'll check again at the end of the week to see if it has updated.

Regards,

--=20
Paul Barker
--------------004gkpQe1Fls2ovqopOYg0fc
Content-Type: application/pgp-keys; name="OpenPGP_0x74975C81B7E66BAC.asc"
Content-Disposition: attachment; filename="OpenPGP_0x74975C81B7E66BAC.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
xdPVMr4GgrOqcYY+JVnUSomnPpyoiDgRRg=3D=3D
=3DeG/b
-----END PGP PUBLIC KEY BLOCK-----

--------------004gkpQe1Fls2ovqopOYg0fc--

--------------TRNcwV23DLoGfHeRQE0BolpH--

--------------I6I6EZacJlrnwrxOcx3jzJln
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCY7VBagUDAAAAAAAKCRCrY1Tsnbr0bs8u
AP9dUQcDiYQLhCYefFxemckG5I7Y0NJx7ZHjQVjthBz39gEAp8Nvw3TddUsduEef6Kp1aBb7cJ7k
aCz8kkvwOC4O+ws=
=UAhO
-----END PGP SIGNATURE-----

--------------I6I6EZacJlrnwrxOcx3jzJln--

