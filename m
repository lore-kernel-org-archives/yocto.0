Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7422AE004E5; Tue, 28 Mar 2017 13:35:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.51 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f51.google.com (mail-pg0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E72D6E003C1
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 13:35:14 -0700 (PDT)
Received: by mail-pg0-f51.google.com with SMTP id 21so83202896pgg.1
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 13:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=vbACdN84gfeCw09vnHjBjD9197WeR+m/yrz9r4DaiC8=;
	b=VtJXYhRBcm8UFk6Mo3o8bQ9mLhA5a7vJEqULche5BcfAQbtrl+hfeeSrHgs7Oq5kE7
	gy3uDDlxlVdeCyLvt1lMDzd7V+lyHSCytSaOb3Zyy3t3Zg4MKrd9Ps6NBRzLnJEBl0F0
	dR/39OLaKrN6beFqXvx28psG8Vqp7FT6AN9sS9LfwYPTMd0s/lXONYX8XinFtcZKemDN
	LwVa7aZRlw2oGQQJr2YJCrFTlHJ38JFxWDGgJ4DkPM5FEVPc2d8CSmGQpdF2ZoJQLpMS
	n9HZ/ybLC0hMQH8UPoUEeLZ5cVj7deqGp71gnVD9trBIdkB9rFgvMH5T7l+xj7FPbzWT
	t2VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=vbACdN84gfeCw09vnHjBjD9197WeR+m/yrz9r4DaiC8=;
	b=cj/+UB5qOXBswjkHRlUb/RqVSY71jOj9/l/MUUpMLtG4mbhbvjalIEyrYe7NH4ZJH1
	uWLb0yN55985eB6jt/dHZtFkxU0ygIYw9ryYSEpp4keFL/tEvSGEihc7IT0sq8Pplv9F
	W6/HzfMuKGNkFWcfH81zt87NJTQnp2gh3E7nuVYVpq2BVyYA1t31Gd8OH/dPs2JTCBGk
	ERf6WNmj5LnUy9itvtWmFPx3JslOeBsPYt8j4vaRhEsSZ443zQFN3efDIfzl2CDig66x
	MHNwFaN15Q9PFDfPDTFy/jTzUy/WIdH813MGFR7jc1Hc3SU7yhMFDt3Mk4FzOt/KyOg+
	9owA==
X-Gm-Message-State: AFeK/H0X4FdnJft+hnP+oI9uMtw2s9UDEbwpZ6yhn2h9CZCXMVSZmb/77BGseA8WYr5ycQ==
X-Received: by 10.98.30.3 with SMTP id e3mr4172883pfe.48.1490733314106;
	Tue, 28 Mar 2017 13:35:14 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:647:4c00:23ec:1153:8bec:b665:1636])
	by smtp.gmail.com with ESMTPSA id
	c19sm9082907pfd.85.2017.03.28.13.35.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 28 Mar 2017 13:35:12 -0700 (PDT)
To: Ian Welch <ian_welch@trimble.com>, yocto@yoctoproject.org
References: <CACgq_DoCsbs2-a9UbeKj_EhsKwJDTNBNT8qNYmA=5ZFm7oT83w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <74fdd551-c061-94ba-7179-e02130a80fd9@gmail.com>
Date: Tue, 28 Mar 2017 13:35:04 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CACgq_DoCsbs2-a9UbeKj_EhsKwJDTNBNT8qNYmA=5ZFm7oT83w@mail.gmail.com>
Subject: Re: Using ${SRCVP} in PR of BB file
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
X-List-Received-Date: Tue, 28 Mar 2017 20:35:16 -0000
X-Groupsio-MsgNum: 35280
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="1fEqJAttWQfhP8Wh7hBhNFfJj3ilboFt8"

--1fEqJAttWQfhP8Wh7hBhNFfJj3ilboFt8
Content-Type: multipart/mixed; boundary="MwgKpDCLAkEbtcbUhgL0Q0BL937fCNrIo";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Ian Welch <ian_welch@trimble.com>, yocto@yoctoproject.org
Message-ID: <74fdd551-c061-94ba-7179-e02130a80fd9@gmail.com>
Subject: Re: [yocto] Using ${SRCVP} in PR of BB file
References: <CACgq_DoCsbs2-a9UbeKj_EhsKwJDTNBNT8qNYmA=5ZFm7oT83w@mail.gmail.com>
In-Reply-To: <CACgq_DoCsbs2-a9UbeKj_EhsKwJDTNBNT8qNYmA=5ZFm7oT83w@mail.gmail.com>

--MwgKpDCLAkEbtcbUhgL0Q0BL937fCNrIo
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 3/28/17 1:27 PM, Ian Welch wrote:
> Hello,
>       We are preparing to move to PRservice in Yocto to handle auto
> rolling our revisions on every build. As an interim step we are doing
> some reordering or our current PR and PV parameters in our bitbake
> files. Our current syntax is as follows and works as expected
>=20
> ----BB File----
> SRC_URI =3D
> "git://myrepo.git;branch=3Dmybranch;subpath=3DLinux/bcastforwd;destsuff=
ix=3DLinux/bcastforwd;protocol=3Dssh"
> SRCREV =3D "${AUTOREV}"
> PV =3D "1.1"
> PR =3D "r0"
> PV_append =3D "+git${SRCPV}"
>=20
> ----Output from build----
>=20
> bcastforwd_1.0-r0git0+afc68d4a00_arm926ejste.ipk
>=20
>=20
>=20
> When we change git${SRCPV} to append to the PR we get "AUTOINC" in plac=
e
> of the revision number
>=20
> ----BB File----
> "git://myrepo.git;branch=3Dmybranch;subpath=3DLinux/bcastforwd;destsuff=
ix=3DLinux/bcastforwd;protocol=3Dssh"
> SRCREV =3D "${AUTOREV}"
> PV =3D "1.1"
> PR =3D "r0"
> PR_append =3D "+git${SRCPV}"
>=20
> ----ipk Output from build----
>=20
> bcastforwd_1.0-r0gitAUTOINC+afc68d4a00_arm926ejste.ipk
>=20
>=20
> I took a look at the package.bbclass file which appears to be the magic=
 sauce for searching and replacing the "AUTOINC" string but nothing jumpe=
d out at me as to why this would work for PV but not PR.
>=20
>=20
> Is it possible to support AUTOREV on PR?

git0 and gitAUTOINC is the difference you are seeing however when PR is
bumped r0 would change to r0.0 or something which is preceding the
AUTOINC difference and you should be able to upgrade. Although I would
discourage you from using AUTOREVs in release environment. Use locked
SHA values, it will also help you with reproducible builds.

>=20
>=20
>=20
> Thanks,
>      Ian Welch
>      Trimble Inc.=20
>=20
>=20


--MwgKpDCLAkEbtcbUhgL0Q0BL937fCNrIo--

--1fEqJAttWQfhP8Wh7hBhNFfJj3ilboFt8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAljayP8ACgkQuwUzVZGdMxSUoACfXw/d1Y6Yt8JFA9bNhQSWuBiP
AQsAn0cB2RJ3SJ1Mv8KNmLM2EjQQZJ6+
=8cTy
-----END PGP SIGNATURE-----

--1fEqJAttWQfhP8Wh7hBhNFfJj3ilboFt8--
