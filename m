Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B8E6E00D9A; Thu,  5 May 2016 06:45:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61B95E00D13
	for <yocto@yoctoproject.org>; Thu,  5 May 2016 06:45:43 -0700 (PDT)
Received: by mail-pf0-f181.google.com with SMTP id 77so37863171pfv.2
	for <yocto@yoctoproject.org>; Thu, 05 May 2016 06:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=sHNeBCiRpAduvctu0ioSYxAjnBetsuebngHJhKRMiVE=;
	b=BqObb3MdVHPD+v6f/1ICn6Ypw572zzqAU11AQ6MieX6OunvNHrGs4S0BtRP1E2klNb
	pR08DlE19zDb4ZIhbjnNCaxL6gylyl6qDKO9f9jNvyTxlkLacdLIq0R68hYrj08vhxQT
	szwrWBJgQ6v+MFSjBqHscfBIbyd/Ve9l3IGh/l/R8hS687Tu7WP0NCgQEJeEtxYphB+S
	YQVFR1EB+iQ+ULAABeijRkifIHTbYKGK5sxSDexeqjk7ARzR2tNBEsPFHDA0iQfREqme
	OFJjPe4tVkp1LEagGq3u++64EFrOmfDCHtyexvdtiPkET+lCQ+SRDNwdnc9ZvzTVc8ZJ
	juMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=sHNeBCiRpAduvctu0ioSYxAjnBetsuebngHJhKRMiVE=;
	b=j23wz6iAIh56n9FrvcT+Mg29/ikivdz6iBO5yJ+/RSsmv4zUtKZIsU4GJKo2WrB1ft
	dCw5VRW3eF817CTNeYPJbFpW2ACFPSM3TnMmhgeXxCX8VJLWc/V3fDaCt92VtTsYIjLn
	JmwwcdaLjpbtXXyd+7Jqt/xFk4se1ld2Qp5t78Mtu7oCGGanfxd0qEfofzCootqUSlge
	9MFv9J1725xtFHFMHB21UNR22rfgTOc3eOBqjDc2L5EXIlNJKzo8+0pfgS4yeI8Au61J
	/6OiXiHkw+3BWck6VhWA64zDkymshZivO17HzMglO3WEivLEwkYnpZdpViDdW7TVGU9w
	eqYg==
X-Gm-Message-State: AOPr4FWv4W2MI401s4e8uj4bgWcLb0nf8DYEVp06vLuOF/dsmgns3N3horQucpw8wBXShA==
X-Received: by 10.98.89.28 with SMTP id n28mr20773011pfb.41.1462455943210;
	Thu, 05 May 2016 06:45:43 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:71b9:fe2a:3a93:3971?
	([2601:646:8800:5a9a:71b9:fe2a:3a93:3971])
	by smtp.gmail.com with ESMTPSA id
	e87sm13992709pfb.76.2016.05.05.06.45.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 May 2016 06:45:41 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20160505020837.GA20829@nyx.americas.hpqcorp.net>
Date: Thu, 5 May 2016 06:45:36 -0700
Message-Id: <6311B206-D2A3-4CC1-A034-7900EF2E6E21@gmail.com>
References: <20160505020837.GA20829@nyx.americas.hpqcorp.net>
To: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: Multiple MACHINEs in a single build?
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
X-List-Received-Date: Thu, 05 May 2016 13:45:45 -0000
X-Groupsio-MsgNum: 29864
Content-Type: multipart/signed;
	boundary="Apple-Mail=_0862EA5E-A8A5-4BF5-A930-3FFFA1A6865B";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_0862EA5E-A8A5-4BF5-A930-3FFFA1A6865B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On May 4, 2016, at 7:08 PM, Marcelo E. Magallon =
<marcelo.magallon@hpe.com> wrote:
>=20
> Hi,
>=20
> I suspect this is documented in a FAQ somewhere, but I'm failing to =
hit
> the correct keywords when googling...
>=20
> Is there a way to support building images for multiple MACHINEs in a
> single workspace at the same time?
>=20
> This works:
>=20
> 	$ MACHINE=3Dqemux86 bitbake core-image-minimal
> 	$ MACHINE=3Dqemux86-64 bitbake core-image-minimal
>=20
> and bitbake parallelizes the build across tasks. What I'm trying to
> figure out is if it's possible to run two bitbake instances with
> different MACHINE values on different hosts but writing to the same
> workspace (say, over NFS).

Thats not possible and its by design.

>=20
> Thanks!
>=20
> Marcelo
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_0862EA5E-A8A5-4BF5-A930-3FFFA1A6865B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlcrToQACgkQuwUzVZGdMxTg1gCeNAp7TQLax2wFPBvj90o60ZwU
aE4AnRLVS0ubib/euZLnPAG3jtI2MjuQ
=zAqT
-----END PGP SIGNATURE-----

--Apple-Mail=_0862EA5E-A8A5-4BF5-A930-3FFFA1A6865B--
