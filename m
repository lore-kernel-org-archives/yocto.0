Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E34DE00563; Mon, 18 Aug 2014 12:08:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A501E004F5
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 12:08:19 -0700 (PDT)
Received: by mail-la0-f44.google.com with SMTP id el20so5008723lab.31
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 12:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=iMUA0ZsmP1FD2IbVnxp2LAd1ACgY4byeiuPqQNbXjR8=;
	b=ODFIK9xxlPgyp36slaegTSKtAW6aXMzjWQ2YfennhMqpWJCPeg6GOWRDCNEHV4iRUy
	ZM4M1KWoM/WWYPFKxgHagzBmnQPVR7PW/XKd6NhNdKpvwRs3q5LxDeA0yeh9pMGWXFH9
	2cm+b6yIS5syb2GhJbNAU97LtuRv7TDNgKzGnwxpY7tlG2FIgbHcuswexLR/pVgJYxrT
	VGeMXLx4EzGlVZb1AxP6oDZ4LHSNhvORqnRBvyKBBP0GbYsgktXQAaUwrHbZdHy0JeDx
	AbBf17p4x2J8rpAw3idCtDqMSJ4XBWhjwiVVX8KAHJvOOEUaw43IeRdZY3Zdc5mqgzma
	UFjA==
X-Received: by 10.152.22.165 with SMTP id e5mr10452955laf.57.1408388898704;
	Mon, 18 Aug 2014 12:08:18 -0700 (PDT)
Received: from gmail.com (ygg.betafive.co.uk. [5.9.90.21])
	by mx.google.com with ESMTPSA id pz3sm28406413lbb.1.2014.08.18.12.08.16
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 18 Aug 2014 12:08:17 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
Date: Mon, 18 Aug 2014 19:08:14 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20140818190814.GB7174@gmail.com>
References: <CAMKF1sp9Z6vj1Dz96_WYiHOtYFqa-zECrNHOFgb=dBUDJN2Z_g@mail.gmail.com>
	<20140818181424.GG12992@gmail.com>
	<CAMKF1srjVfmfAWZ0mx+AfE_nR4erYtAEYt2OVhEsU+q++XKVrg@mail.gmail.com>
	<20140818185009.GA7174@gmail.com>
	<CAMKF1spkQkfbZMkL2Gg41hF9bm=+HS8sU8LME3pV6yMzDLLs-Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1spkQkfbZMkL2Gg41hF9bm=+HS8sU8LME3pV6yMzDLLs-Q@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, musl@lists.openwall.com,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Announcing meta-musl OE/Yocto layer supporting musl C library
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
X-List-Received-Date: Mon, 18 Aug 2014 19:08:23 -0000
X-Groupsio-MsgNum: 21146
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="eAbsdosE1cNLO4uF"
Content-Disposition: inline

--eAbsdosE1cNLO4uF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 18, 2014 at 12:04:54PM -0700, Khem Raj wrote:
> On Mon, Aug 18, 2014 at 11:50 AM, Paul Barker <paul@paulbarker.me.uk> wro=
te:
> > On Mon, Aug 18, 2014 at 11:26:26AM -0700, Khem Raj wrote:
> >>
> >> Thanks cool. Can you open a ticket on github with this information ?
> >
> > Will do. Do you want just want one ticket or do you want to separate th=
ese into
> > one ticket per failing recipe or similar?
> >
>=20
> That would be handy too. But I wanted was to keep this info in project
> for folks to try it out.
>=20

I'll just post one ticket for now.

I think I've got a fix for e2fsprogs as well.

Cheers,

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--eAbsdosE1cNLO4uF
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJT8k8eAAoJEBwoJlo7UPQDCOcH/iJFLEIGQBNsYf/7QWowUUe9
Cdef877UsoXNfPcwAKrmgu/G+fuUHvRICZlZgv/MEC5/J2WTC+ayt7okE7k0fvs0
T4NJch5P8llRRqHx0r2PRQtaqPx3VgIqiBxOTmnTD7LeVAY2axsCz02LU4F4/Q37
R/OBH9ZivN8K8qyqTqCxx0mU2PuV7YSWM7GoR87yuVzqQMZZM661p09u1JYUVrBD
h3HPClt3lPlJPVWJ1d+m8VEvatp23XM/LzkadnoBbVhKXHy40l3U3F6MOmCiVJQi
ADNfST2D3jEAz+879Go6tlHbXG7MQ/xpzhA8cmRQaUSCDYbkl1pmJZvVSqnDJUY=
=WPck
-----END PGP SIGNATURE-----

--eAbsdosE1cNLO4uF--
