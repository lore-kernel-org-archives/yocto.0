Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F136CE008F2; Sat, 11 Mar 2017 16:59:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9598E0074B
	for <yocto@yoctoproject.org>; Sat, 11 Mar 2017 16:59:38 -0800 (PST)
Received: by mail-pf0-f181.google.com with SMTP id j5so55528564pfb.2
	for <yocto@yoctoproject.org>; Sat, 11 Mar 2017 16:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=TP6SbQMCX4sbuioBYQq/VGo3LNrOB0dBFHqwYtTx6QQ=;
	b=lb1newqfGgvHCuUt08IO0wwfsdkeShLArtXGnUJ+/N6C57EvZVr6YEYnfixOI0w76g
	iKDiajAUfLyRfrm9ug8cKK/QREen4YErE6KfBbUzmODk30LXj2DtbAw4Ln9/C0dRd+J0
	e8AYA4ctztzEeQTHGkA2pKf7aXBMo6GfJy1TvYVg8X8p5EvRgv13UQMaNaAoe0SVFnGV
	V751IrsAwbfZgyEcXB03iw6XR+MhMdAtPRQ81VreBAw+yl4/1ovtKx3LSQFfLHywpC4Y
	ec5OKq2fSWl4EPDf3h0g12yWHIXpikWy97+UtC6kjBJF3SFSFH/+RGVdInOwLCvvOr6J
	r3hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=TP6SbQMCX4sbuioBYQq/VGo3LNrOB0dBFHqwYtTx6QQ=;
	b=Jin0qhmC02e8lOYg43jmNtJ1eC1McqgFWc9fAopO8k0nSG2e9MHeO5tqFduSORLvL0
	7mXpDe6Zs6WdBvtONy1UIbSlCfY+Gl/GqSpg+SbrvwidUaf63GjzSGmd4QzDsL44mQKr
	TGWVfaLqkiR065qRONoLLsaLK2B1XMCmccs3zqGil1Qn83scQiNrK49sK/rK3wLP/ZbB
	R3Q1GkhjewdeUBMjQmYwYI4EXFg1viRg06AyqgeIFOYELhyyG91yLhv0O67m8cp4jaou
	X5b8h+pE3Xn14ILvPVV5P7pqnAQmODpDVMIcLKOMDmlMyeUx9Z+h8GbdD4LOk2SIbF5o
	LvhA==
X-Gm-Message-State: AMke39k8qJjg8rrXO2HaGRZkOPpi4C8fGdh8IBkg1UQdqxopmXGyXAw6x7AUPaE5Rp7noA==
X-Received: by 10.84.196.164 with SMTP id l33mr37198717pld.0.1489280377624;
	Sat, 11 Mar 2017 16:59:37 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:cc95:4c5a:d83a:64d2])
	by smtp.gmail.com with ESMTPSA id
	p129sm26005562pfp.118.2017.03.11.16.59.35
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Mar 2017 16:59:35 -0800 (PST)
To: yocto@yoctoproject.org
References: <SG2PR0301MB20164EBE7DDD10BD3A4BFE69D1230@SG2PR0301MB2016.apcprd03.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <9c9bd988-e130-c48e-e8e4-e0c51da151f3@gmail.com>
Date: Sat, 11 Mar 2017 16:59:29 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <SG2PR0301MB20164EBE7DDD10BD3A4BFE69D1230@SG2PR0301MB2016.apcprd03.prod.outlook.com>
Subject: Re: Raspberry pi build with gstreamer1.0 error - No recipes avalible.
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
X-List-Received-Date: Sun, 12 Mar 2017 00:59:40 -0000
X-Groupsio-MsgNum: 34995
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="sCdev4jd0SCx6Kiqa2EFXiHba0hqi26oD"

--sCdev4jd0SCx6Kiqa2EFXiHba0hqi26oD
Content-Type: multipart/mixed; boundary="eb31OddMOQbgal3OVpsGF5krIhBkxqa9g";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <9c9bd988-e130-c48e-e8e4-e0c51da151f3@gmail.com>
Subject: Re: [yocto] Raspberry pi build with gstreamer1.0 error - No recipes
 avalible.
References: <SG2PR0301MB20164EBE7DDD10BD3A4BFE69D1230@SG2PR0301MB2016.apcprd03.prod.outlook.com>
In-Reply-To: <SG2PR0301MB20164EBE7DDD10BD3A4BFE69D1230@SG2PR0301MB2016.apcprd03.prod.outlook.com>

--eb31OddMOQbgal3OVpsGF5krIhBkxqa9g
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 3/11/17 5:19 AM, Steve Plant wrote:
> Hi all,
>=20
> Starting a brand new project for the rasberry pi2, on the master branch=
, using toaster to start/monitor the build.
>=20
> Everything set up for the most basic build, however when I build "rpi-b=
asic-image" it fails with this error:
>=20
> No recipes available for:
>   /home/steve/Yocto/poky/_toaster_clones/_git___git.yoctoproject.org_me=
ta-raspberrypi_master/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0=
=2Ebbappend
>   /home/steve/Yocto/poky/_toaster_clones/_git___git.yoctoproject.org_me=
ta-raspberrypi_master/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.b=
bappend
>=20
>=20
> Looking through some of the recent changes on this mailing list, the
> gstreamer1.0 package got a change recently. has anybody else come acros=
s
> this error?
>=20
>=20

Its a known problem

Please use kraj/master branch from https://github.com/kraj/meta-raspberry=
pi

for now. I will send a pull request tonight for upstream.

>=20
> Regards, Steve.
>=20
>=20


--eb31OddMOQbgal3OVpsGF5krIhBkxqa9g--

--sCdev4jd0SCx6Kiqa2EFXiHba0hqi26oD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAljEnXYACgkQuwUzVZGdMxQeYACghCdp8VpPsrXof3Wuzktd5Vlt
IjEAnAo9dAIsyl5J2PMfbaUDmzd621s/
=j95o
-----END PGP SIGNATURE-----

--sCdev4jd0SCx6Kiqa2EFXiHba0hqi26oD--
