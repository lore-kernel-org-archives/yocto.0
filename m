Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECEB3E00838; Tue, 15 Mar 2016 14:19:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08AD4E00833
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 14:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default;
	h=To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Content-Type;
	bh=CSCcNzSSz9Di7L2EB3Ipn+PrM+p8/JCDPqsR1VXn1iE=;
	b=FFxLJtDCO0Rrva+unItWOjaOQA
	6jto9EtQHtddYXOZ7C6rPPqhDPw2xhsRv4s8w1vu5ZX/g+7IWmU0j6ZfJs4icl6t/nZnV6Wr7q0X1
	rEO+EoBGH2Voo2VjrWz/j8muTN9anPeXZm6Rs6iUhJMWLmrVZZgxQemECJCkK4SIOWaU=; 
Received: from durham.keylevel.com ([88.97.63.243]:33868
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.86_1) (envelope-from <opensource@keylevel.com>)
	id 1afwMk-000l6s-Fj
	for yocto@yoctoproject.org; Tue, 15 Mar 2016 21:18:58 +0000
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <AFBE2F12-5F5E-4982-BB3D-65C7D390485F@keylevel.com>
Date: Tue, 15 Mar 2016 21:18:52 +0000
Message-Id: <1C07DFF1-0460-47DC-8AB2-E31932C10D57@keylevel.com>
References: <AFBE2F12-5F5E-4982-BB3D-65C7D390485F@keylevel.com>
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
Subject: Re: Starting Pulseaudio automatically
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
X-List-Received-Date: Tue, 15 Mar 2016 21:19:09 -0000
X-Groupsio-MsgNum: 29037
Content-Type: multipart/signed;
	boundary="Apple-Mail=_077A766E-2BB1-4F75-A73B-2FFA82EBA94C";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_077A766E-2BB1-4F75-A73B-2FFA82EBA94C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

To answer my own question=E2=80=A6

I just need to enable autospawn for root in client.conf:

allow-autospawn-for-root =3D yes

> On 15 Mar 2016, at 21:05, Chris Tapp <opensource@keylevel.com> wrote:
>=20
> I=E2=80=99ve got an X11 application which uses Pulseaudio. Everything =
works as expected when built under =E2=80=9Cdaisy=E2=80=9D (Pulseaudio =
5), but the same system built under =E2=80=9Cjethro=E2=80=9D (Pulseaudio =
6) fails as Pulseaudio doesn=E2=80=99t start automatically.
>=20
> It looks like this is down to a difference in start-pulseaudio-x11. =
The following is present in =E2=80=9Cdaisy=E2=80=9D:
>=20
>   pulseaudio --start
>=20
> but this isn=E2=80=99t there in =E2=80=9Cjethro=E2=80=9D. Adding this =
line makes Pulseaudio start as expected, allowing the application to =
run.
>=20
> Why was this removed in Pulseaudio 6? Is it supposed to be started =
another way?
>=20
> --
>=20
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>=20
> ----
> You can tell you're getting older when your car insurance gets real =
cheap!
>=20
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


--Apple-Mail=_077A766E-2BB1-4F75-A73B-2FFA82EBA94C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJW6HxEAAoJEAM2GeiJDBSGwWgQAJeZ8Igp/T8t1E7WSFqt3hfp
5566Rh92e3y2q9IQEGSEV1ZCftnALFhdeeId//CiNPFR874cqigrrCb8Kk1d50Qd
up+gMylQOl/p6mSe0fZdy5QP503eHTQRVpI9s3/RqcuQmu1Vg2BdBmJPP2gJbkb0
0Ad0o2M3nKi5KalO7Bs5nHklZ/kd31PihURg3e/tT+33wR6cxYjQ5yeRpQoz5Gcf
KeC7luxJPDQgmxcvcpyobB2dK+g8uho7glQ9qcZwiTVpTNot6oKTWnQKHihYMdiz
iP3cQSEDt878sNaJk9sQyc4jZRcbHldE2BLMHR1OZaiO2VwBUNRuJ/LtPws1FVDc
R8ExukiqGDTkXb8OMdOlryDbE0EjYR2iBcnu+wmG1OST+xeoUjkTsmYfrB77nR33
g2BSRrZ33Zk95QFrmnKHld/e+a2H93PFFNT/OT6JhVzx1d5d1tsWBNZc27z9In19
uLzf6Y/RMPzTX4U5RWNqMPVrlmKWOOU9Cb8hHODfd99ompvz1G4lVnoj4tdNH3bA
9bpXHN8Bni7cgA1aP4V8ff7MEpdCSDugAZhopXy1QaBfWqZeurKM0yWAwccCkNjZ
EJUTgM06ng90aXhepJR7yUE2Bq4XZ2lgBtBBa1UATCwe18DHggkYYsD+VEknjEFh
H4F/cbsb/D/G17FMq4OX
=+f46
-----END PGP SIGNATURE-----

--Apple-Mail=_077A766E-2BB1-4F75-A73B-2FFA82EBA94C--
