Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1112DE008CC; Thu,  3 Nov 2016 10:18:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5AE5E00509
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 10:18:44 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id n85so5376362pfi.3
	for <yocto@yoctoproject.org>; Thu, 03 Nov 2016 10:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=TrWmwWiZxKijbSf72csDM3uCjxhg/DvcWodz+dM6yLg=;
	b=VeftobaKJrvFRKlpCRMVdVyH4V4SH2+d4uBOzrZVRvab+pXi/zIy1lVE9Z/vZ9XqdU
	AzNKKQwdI/mfCmNHOO1d4/ez9IBz1gwxwrJb8SsmC+cm2OI+R1tLeAjDYT0Wxs1EMoKv
	RYALINKmNyCRlhrK9aC3YtggXfL0NoYItsQfRvBHnDrwmwRWmXMOeV+j0mu43bqm1tlq
	04J/r/OvL9zRTPZlHBfukAzMg76vBd6mRO01RJmJABElRbeyjFyLtStUSghlla0LRdVL
	AhBem/Bs0FTJxBDrzQd6J7VrZaXyB3KDuexsqr9IapRuk5fxyXpMK24+Cs8gAGdKzyJB
	WuKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=TrWmwWiZxKijbSf72csDM3uCjxhg/DvcWodz+dM6yLg=;
	b=X8NuxhsqHBEXSz+SQspmIS/KuQZMkSM9rEInMIEtDAkJyWN2cT2v3Tqql8rTFunnqx
	JFjszas9mlobDYJvfWJf2oFj3Tbtqmaeec5KP8GOJDqAj7Wr6Yi5+HK6L2MWoX2AZnnb
	MANQAE6w4brbbafy1FBwe8+kJMooWHXbcZoo3xNXkJ0S0VsKE91RE2hUzna3OKhjTTxa
	YWnSUcvxBENp4VTP9bqNBE8q/5LYnPAaH7X5bGzxiyZ3h2yOBBaEelG7xBnhX6sqxwP2
	10xKv4uRkYfqyFQaIQAMWUAe89z/RSHnuUyp3H5Uu4pkWlk9h42S3yRfwXQuMPUCyYTV
	bzWA==
X-Gm-Message-State: ABUngvfHyJ5hIWBm+0PClM8QyYrPSXzrw06K5doR/UrAXOxlIRFtm8KBVXC8P2BiGiBd4Q==
X-Received: by 10.98.66.214 with SMTP id h83mr2851589pfd.67.1478193524003;
	Thu, 03 Nov 2016 10:18:44 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:a08a:c533:b969:820?
	([2601:646:8882:b8c:a08a:c533:b969:820])
	by smtp.gmail.com with ESMTPSA id
	s7sm14129739pfg.32.2016.11.03.10.18.43
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 03 Nov 2016 10:18:43 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <DB6PR0701MB1879B53C0A23029012B0505FD3A30@DB6PR0701MB1879.eurprd07.prod.outlook.com>
Date: Thu, 3 Nov 2016 10:18:38 -0700
Message-Id: <B761F16B-6210-4C5B-B104-C40AF3760442@gmail.com>
References: <150d439e-c90f-9252-ab12-6ba0ac99668c@Net2Edge.com>
	<7EEDF13B-E1D4-46F1-99B9-1419B69F3DD1@gmail.com>
	<DB6PR0701MB1879F74E3194F73877BCB7E0D3A30@DB6PR0701MB1879.eurprd07.prod.outlook.com>
	<391b493a-2f09-163b-a411-c56715997d0f@mlbassoc.com>
	<DB6PR0701MB1879B53C0A23029012B0505FD3A30@DB6PR0701MB1879.eurprd07.prod.outlook.com>
To: Thomas Thorne <Thomas.Thorne@net2edge.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: How do I used Yocto to build an sdcard image for my Raspberry Pi 3 Model B?
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
X-List-Received-Date: Thu, 03 Nov 2016 17:18:46 -0000
X-Groupsio-MsgNum: 32823
Content-Type: multipart/signed;
	boundary="Apple-Mail=_3114AAD2-065F-44CE-9573-81DA58828334";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_3114AAD2-065F-44CE-9573-81DA58828334
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Nov 3, 2016, at 4:57 AM, Thomas Thorne <Thomas.Thorne@net2edge.com> =
wrote:
>=20
> Presumably because I have in my local.conf:
> IMAGE_FSTYPES =3D "tar.xz ext3"
>=20

yes thats the problem.

--Apple-Mail=_3114AAD2-065F-44CE-9573-81DA58828334
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgbcXIACgkQuwUzVZGdMxSsUgCgh5qbOLJtNG42J0f2X9MJUMEn
S0wAn1+cq4+5aLuJUsNvdb4AvHHftwmS
=wdbA
-----END PGP SIGNATURE-----

--Apple-Mail=_3114AAD2-065F-44CE-9573-81DA58828334--
