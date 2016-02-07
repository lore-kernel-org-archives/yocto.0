Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64B1EE007DC; Sun,  7 Feb 2016 13:49:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [89.248.60.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A091E00404
	for <yocto@yoctoproject.org>; Sun,  7 Feb 2016 13:49:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default;
	h=To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Content-Type;
	bh=W/C5dMHHEaLapt8OSZnaHwOK3s4gkXLCsKTzY6XP4MI=;
	b=ITM1HNa4nZ70HEoEvGsyUQzAFO
	W9jTuVEQJBmfrnImosdcUFyFtKuzzvcfBCSqT3mtRpZ77QW5897e0lUvN5cq3hmUO2zhNVlSxUlJt
	spITxscvMV3/S78BSwJJ5ryzmn2O4YxwlS14urWUVHQxYCER5r/rhO2U/VmiIGOGPZuM=; 
Received: from durham.keylevel.com ([88.97.63.243]:14464
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.86) (envelope-from <opensource@keylevel.com>)
	id 1aSXCl-0022BS-OK
	for yocto@yoctoproject.org; Sun, 07 Feb 2016 21:49:15 +0000
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <020DD3FF-9405-4003-9C1B-F29F060567BD@keylevel.com>
Date: Sun, 7 Feb 2016 21:49:08 +0000
Message-Id: <A705D969-9C1F-4429-97EA-3A9E3A8BB8E4@keylevel.com>
References: <020DD3FF-9405-4003-9C1B-F29F060567BD@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.3112)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
X-Authenticated-Sender: a180.4uh.net: chris.tapp@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: Installing only part of linux-firmware
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
X-List-Received-Date: Sun, 07 Feb 2016 21:49:26 -0000
X-Groupsio-MsgNum: 28337
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A3F697DD-3B0F-4C0E-833F-C14395D3D47C";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_A3F697DD-3B0F-4C0E-833F-C14395D3D47C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

On 7 Feb 2016, at 16:50, Chris Tapp <opensource@keylevel.com> wrote:
>=20
> Is there a way I can just pull in part of the linux-firmware package =
into my image? I need rtl_nic, but to get this I have to pull in the =
whole of linux-firmware, which is 54M and forms over 1/3 of the final =
image.
>=20
> It looks to me as if I=E2=80=99m going to have to find some way of =
packaging this myself?
>=20
> I=E2=80=99m currently building under =E2=80=98daisy=E2=80=99.

I=E2=80=99ve now done this by creating a bbappend for linux-firmware:

PACKAGES =3D+ "${PN}-rtl_nic"

FILES_${PN}-rtl_nic =3D " \
  /lib/firmware/rtl_nic/* \
=E2=80=9C

Does what I want, but is that the best way of doing it?

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_A3F697DD-3B0F-4C0E-833F-C14395D3D47C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJWt7veAAoJEAM2GeiJDBSGEKsQAKQub1SBfVE+VWMJusTT7Dl9
eItZK2gpcM7rJac3JyFezeuCnB5hVGqsXmm6oMGQQlkb0UrXZ/j94TFvWzR+LPPl
NjznWDdT3Ugs029r5gDBAYpHZqeSRBatn18tbJO5cXpMRMJ1LSOCtMUr84IN8h4B
wry6+A3sQQ47rxflppq5u169WMzeNkHt6wtxjvNlL7vVW/O+zF02IT77LkvYB5MD
ng9//YZVnJytMoHDIYMxP8C2yVrB3NlCZfh0TC2R3nm3HpekPNULSYowxmqXRExl
zR7kugkZgXm1xbN6stoAyBqCHNZMmLUA7dv0ajkz0R2XqpIIQxA+lCMd6zxW4MeX
g6E1OZ09+WwEUJQXfasCtMKw5+ME1YtuJZHDWvxCr9nTioCLz/zd4b/OmFHPvejE
GFyLe+wS3MYB2z5T8+V2HCCJxbFabA/q06gK8RPgYhryiHr8XzCuTr3lfpYfEakL
2sz2yQoxlZSgDHa2/AU/rkABYUbVXv8qmn4nYm6Vvu++nXNxBcI2daXn/bqH/mOT
dvS3mA3xE/yvj2olcDztRuZGnPuDoYCnDQ9M56ZpBvzpzgethbVr6TLGx7jrs8Zy
Ru1gCyGkxFIsW8pg1swh9SepVbf/eXkQxbQ6obK41FoixpFqOXEvqFCjxSAAPQao
4K/NRdQgOe24HBfG9JFV
=PQmr
-----END PGP SIGNATURE-----

--Apple-Mail=_A3F697DD-3B0F-4C0E-833F-C14395D3D47C--
