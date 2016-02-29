Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F813E00CC3; Sun, 28 Feb 2016 17:46:28 -0800 (PST)
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
	*      [209.85.220.43 listed in list.dnswl.org]
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08DC6E00C90
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 17:46:23 -0800 (PST)
Received: by mail-pa0-f43.google.com with SMTP id yy13so82621661pab.3
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 17:46:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=mivQ/827xN/MdcLpCo/YGcnYK42N19slb2/vfrPID1U=;
	b=1F8V/eMYkx8tX7AChS1i59uz2TkqFiPk5w+lZPPGWkFyERaV1QcTB41e3KI3bM2PCS
	KY01nm3Xn3+lgDPT8VduKZ5oBCLjSMdufdirFP9U2nHTHic6zFj1MnibeI0AzC4ixFZS
	3zK/0TtsChhtZlwG12uMUG1MmN8//AE4d1yPhfFKPjDiGJwCYxLpxwgodSy/szGE/NIS
	khFEd1zuu9DFibK+R7iibIgiAcdpShNo0v2T2h/KImjaqqsd9dZY+o7clduGBvUFO6uq
	WGZlLPmokOsNYYDOUmhxO2Qn2iNRJIlf+aBPkCHr22iodKVTTEiayUhZ2aFW0Kr1naqu
	Ydgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=mivQ/827xN/MdcLpCo/YGcnYK42N19slb2/vfrPID1U=;
	b=hst7YsZE/J7VR5wdPznjhQmR/omf8aY5JmuJho5J9kaJSllyKyFVOLmLJdVEWEjPWz
	wJbykoEjaQTJ3B+OtZrOj17hYyOQqnTMtfuO1cJhaYw/ftc0/kbomYGuy6OUuM+NBKid
	ynJceH3NzQEHW90uQIAjmKuu5hbLta7qHjxgjFnsLirfgXui5zYrZGe1TNCgZMuwIS+u
	eZhb8IMxgNMNkv9TawxMoQ5M5+bT2MWsX3G/ltnCfbafr8dTd2LL5IYU+5UGuwNarEhz
	q9jrepVVdRF2Uwh1JMZJU/yCy158U/QAy3EoR9frLUWE4EvnPtvK3XcMWKAnSO7MtUMk
	gr7w==
X-Gm-Message-State: AD7BkJJBtoA65Re7uawrgn+U7UU3kT0DVFIB+XdV1kf5NwRNcUxvclV4v80F2nuueFcLMg==
X-Received: by 10.67.8.100 with SMTP id dj4mr18792003pad.88.1456710382915;
	Sun, 28 Feb 2016 17:46:22 -0800 (PST)
Received: from ?IPv6:2601:646:8800:5a9a:84d:892b:d60c:cf63?
	([2601:646:8800:5a9a:84d:892b:d60c:cf63])
	by smtp.gmail.com with ESMTPSA id
	fk10sm33576575pab.33.2016.02.28.17.46.21
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Feb 2016 17:46:22 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <3327973.x6IgOsuVxr@peggleto-mobl.ger.corp.intel.com>
Date: Sun, 28 Feb 2016 17:46:18 -0800
Message-Id: <AAAE6561-746E-498D-A499-C5A0E2668D9C@gmail.com>
References: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
	<3327973.x6IgOsuVxr@peggleto-mobl.ger.corp.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.3112)
Cc: Yocto Project <yocto@yoctoproject.org>, Brian Avery <brian.avery@intel.com>,
	openembedded-architecture@lists.openembedded.org
Subject: Re: [Openembedded-architecture] Standalone image writer
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
X-List-Received-Date: Mon, 29 Feb 2016 01:46:28 -0000
X-Groupsio-MsgNum: 28725
Content-Type: multipart/signed;
	boundary="Apple-Mail=_82F9BF44-497D-4E5A-B11B-53FBF57378BE";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_82F9BF44-497D-4E5A-B11B-53FBF57378BE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Feb 28, 2016, at 4:17 PM, Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:
>=20
> (changing subject line so people don't miss this slight tangent)
>=20
> I'd almost completely forgotten, but the part of what we wrote for Hob =
to
> write images to a USB stick or SD card (bitbake/bin/image-writer) is =
actually
> a standalone application. There's not a lot to it - pick your image =
file and
> then the device you want to write it to; it has some logic in it to =
not let
> you accidentally write to devices that aren't USB sticks.
>=20
> A few points:
>=20
> - I'm not sure very many people know this tool exists, so it's likely =
it's not
> being widely used. Having said that it is a nice simple UI that does =
the job.
>=20
> - It shares some code with Hob, but mostly not the bits with code =
quality
> issues, though it is still GTK+ 2 based.
>=20
> - It doesn't support the advanced SD card writing functionality that =
has been
> implented within wic over the last few releases, which is pretty =
important for
> devices where a special partition layout is expected by the =
bootloader.
>=20
> - Toaster can't really have this functionality in it because it's web =
based
> and the web server might not be running locally, so writing to a local =
USB
> stick or SD card isn't going to be practical from there; about all it =
could do
> is provide instructions on how to write the image once you've =
downloaded it.
>=20
> - I believe there are other equivalent tools out there that various =
distros
> use for taking a downloadable ISO image and writing it to a USB stick. =
I
> haven't done a survey to find out if if any of them work in quite the =
same way;
> I know some of them actually unpack the image and then re-create a =
filesystem
> on the device, which isn't the right thing for our images.
>=20
> - We do have a command-line equivalent in the form of =
scripts/contrib/ddimage
> in OE-Core. Of course it's command-line and thus less friendly but it =
does the
> job (and also has some safeguards against writing to the wrong =
device).
>=20
> So what do we do with this? We have two choices really:
>=20
> A) Drop bitbake/bin/imagewriter along with Hob; we could potentially
> resurrect it again later if desired
>=20
> B) Preserve it along with the shared modules that it requires
>=20
> Thoughts?


Option A. There are USB writer tool in your favorite distros and OSes, =
and I have
seen people use those tools more often.

>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> Openembedded-architecture mailing list
> Openembedded-architecture@lists.openembedded.org
> =
http://lists.openembedded.org/mailman/listinfo/openembedded-architecture


--Apple-Mail=_82F9BF44-497D-4E5A-B11B-53FBF57378BE
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlbTou0ACgkQuwUzVZGdMxRtNwCdHh53KXw5xpPKkpVqjzneQRsy
d7gAoIZFtRnWMC9kE1B+N+SPy/BZB4Ay
=wUMS
-----END PGP SIGNATURE-----

--Apple-Mail=_82F9BF44-497D-4E5A-B11B-53FBF57378BE--
