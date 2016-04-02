Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9D10E00CC7; Sat,  2 Apr 2016 01:05:20 -0700 (PDT)
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
	*      [209.85.192.178 listed in list.dnswl.org]
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B465BE00CC8
	for <yocto@yoctoproject.org>; Sat,  2 Apr 2016 01:05:00 -0700 (PDT)
Received: by mail-pf0-f178.google.com with SMTP id e128so85821698pfe.3
	for <yocto@yoctoproject.org>; Sat, 02 Apr 2016 01:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=DItyCXjkoz10eu9KP0VVpxTKWMfXrWYkHdXpoP3AG4o=;
	b=eIGY5ppAMonB0yedINqBLVz8nY+Oti+698lcHtqTLCWPUBqTvGNq8itS6cmBnQwZbp
	MgQs5UN4q75QW/MnAvkdjYjKS8dv/K43vlhPiPKMnhHyQ+Fa7LwpB8HsvRJUvNQkU8Q7
	TCUjj3Df78rsYZjp5RE9H276j7LE6oFcNdwJWp3/9A7+vaZ2ak4Bqco2YKLleZxuCiHw
	uCM3RE/18OSI3Rcc+A5KKMo4R+3cVWk+mHlZaxWRp3x9nSaWTyoZN/lhAZgy0uEw4NuK
	AxT/34DMCBxnbLUWT10T+bm3yE3BT0PP1F8a2RZPHNdV91qNeiqiTwPtflIQWH+YEBtX
	ogGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=DItyCXjkoz10eu9KP0VVpxTKWMfXrWYkHdXpoP3AG4o=;
	b=P2PJwbm3Hr5hEPKDCXalPc5+EIqPMO6SwJ0pnGoN4jMojHw96umVTv7Lr0AV+uonBL
	8idSe/FfnocGoMRSZJpwfiv00HHp5Pj3Gl/3d9OoBU9clLb5m4c0sU4SGDtxybSTJHaa
	jxVWf8t3Yq+T/Q/vgPUSSauzDxVntGRc/xawdofc4mTRheZeGMNL/W150QjYEsl82I6h
	0CR8VvBdfnLuCd284+oFGvGlnmhoTH8FhBeMPONGkJBs88SMfVV3Bmqy0DE9ckKG/N4p
	50b3CUUQO2/9rCAlX8hNvdWgCt9SU1TIunD0yRcHd/6bl9bijeVb5bZF7b4gbyb9eulo
	sYdQ==
X-Gm-Message-State: AD7BkJLRAMnKFimkuSR0mU0SwW9Fn8amAyEkQXUsvSeEx+hOYyWW0glDwWHmpKDBGMUYVw==
X-Received: by 10.98.18.1 with SMTP id a1mr4589310pfj.39.1459584299946;
	Sat, 02 Apr 2016 01:04:59 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:1156:ef7c:5e3a:2bb9?
	([2601:646:8800:5a9a:1156:ef7c:5e3a:2bb9])
	by smtp.gmail.com with ESMTPSA id
	by3sm26908948pab.39.2016.04.02.01.04.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 02 Apr 2016 01:04:58 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <05908ff25fd54be287c631f4bc5b006b@SI-MBX1022.de.bosch.com>
Date: Sat, 2 Apr 2016 01:04:58 -0700
Message-Id: <5F0CE727-8975-478F-BA68-3EC8347774AE@gmail.com>
References: <05908ff25fd54be287c631f4bc5b006b@SI-MBX1022.de.bosch.com>
To: "Olsson Rikard (RBSN/ESW1)" <Rikard.Olsson@se.bosch.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Append to bblayers.conf and local.conf
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
X-List-Received-Date: Sat, 02 Apr 2016 08:05:20 -0000
X-Groupsio-MsgNum: 29250
Content-Type: multipart/signed;
	boundary="Apple-Mail=_6A61A09C-2D32-4882-9124-C0A07C0DB8F8";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_6A61A09C-2D32-4882-9124-C0A07C0DB8F8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Apr 1, 2016, at 5:59 AM, Olsson Rikard (RBSN/ESW1) =
<Rikard.Olsson@se.bosch.com> wrote:
>=20
> Hello Yocto team,
>=20
> We are receiving bblayer.conf and local.conf from external supplier =
which already have layers/configuration added. Now we want to add our =
own layers/configuration by appending to these files this to avoid =
manual merge work each time a delivery from external supplier is made.
>=20
> Question:
> How do I append layers/configuration to bblayer.conf and local.conf?

look at bitbake-layers tool

bitbake-layers add-layer <your-layer>

might be helpful.

>=20
> Best regards
> Rikard Olsson
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_6A61A09C-2D32-4882-9124-C0A07C0DB8F8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlb/fSoACgkQuwUzVZGdMxTjTwCfezPokjkhPFXysMYfybgrCsD2
5EsAnRDNPaQG+awSxNPdsOFg/Lb/4Q4h
=4COt
-----END PGP SIGNATURE-----

--Apple-Mail=_6A61A09C-2D32-4882-9124-C0A07C0DB8F8--
