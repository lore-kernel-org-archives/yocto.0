Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D7B2E00A84; Sun, 16 Aug 2015 00:39:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D560EE006BC
	for <yocto@yoctoproject.org>; Sun, 16 Aug 2015 00:39:52 -0700 (PDT)
Received: by pacgr6 with SMTP id gr6so86628309pac.2
	for <yocto@yoctoproject.org>; Sun, 16 Aug 2015 00:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=9xErqfCi2p1AV/yiQXNTQ20IiPPxsaLPPhPOI9Qu4m8=;
	b=LTWBeC4qWftzh08QIXcQQhS6RrSaHsJ8PITqJcvTgk906ahggqUXnQfvRKTKwCq0eZ
	1vnJvIUPYgUEKGKLbuzscKpS1xnvLSHx+3cYRZW0TmyaVb4+tWq6svtyYFKFtz/5nWnB
	Ams4Hfbp7VE0SjB4bLFX0j/vGl6PCL01uBORZ1dHqmsBu3DidLDuDKnGmrIgju5tftq8
	roQo7SpFbcfvA3adpck1+nVnnJCpTsdxHXtPjqhRnFrxz+rSgiDTA7ZCQpjIUy6YoPc6
	JKMD4PczKhHxWBOaOjKrw8+hHrEAD4SSru4awfFLrOSsResUbnreS1Bg/seniKL2w6Ut
	jHiw==
X-Received: by 10.69.3.228 with SMTP id bz4mr106445213pbd.79.1439710791612;
	Sun, 16 Aug 2015 00:39:51 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:f5b7:823c:7f00:1ba7?
	([2601:646:8601:4580:f5b7:823c:7f00:1ba7])
	by smtp.gmail.com with ESMTPSA id
	f4sm10690858pdc.95.2015.08.16.00.39.50
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 16 Aug 2015 00:39:50 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <558A7025.4050204@actia.se>
Date: Sun, 16 Aug 2015 00:39:43 -0700
Message-Id: <7F6CA5E4-057A-4CFB-B4AE-F2F65A565A8D@gmail.com>
References: <558A7025.4050204@actia.se>
To: John Ernberg <john.ernberg@actia.se>
X-Mailer: Apple Mail (2.2104)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Deploying 2 machines, u-boot does not include with both.
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
X-List-Received-Date: Sun, 16 Aug 2015 07:39:55 -0000
X-Groupsio-MsgNum: 26135
Content-Type: multipart/signed;
	boundary="Apple-Mail=_33E11230-3E41-4A38-9FA3-1C81E52704CF";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_33E11230-3E41-4A38-9FA3-1C81E52704CF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jun 24, 2015, at 1:53 AM, John Ernberg <john.ernberg@actia.se> =
wrote:
>=20
> Hi
>=20
> This is a weird one that I have been researching for a while trying to
> figure out how this can happen.
> We recently had to extend our targets with another machine, they have
> the same core CPU architecture, but we provide different =
configurations
> of the kernel for them. Along with some IMAGE_INSTALL changes.
>=20
> Since very little needs to be rebuilt, and the only thing needed to
> change target machine is to edit the MACHINE variable, we chose to =
build
> the images using the same build directory.
>=20
> This means we set the MACHINE variable to machine_A. run bitbake
> [machine_A_image], change the MACHINE variable to machine_B, and then
> run bitbake [machine_B_image].
>=20
> Here is when the weird happens. After machine_A has built, we can find
> everything we expect to find in the machine_A image deploy directory.
> When we change the MACHINE variable and build machine_B, we find that
> the u-boot image from the machine_A directory has disappeared.
> Depending on build machine it has moved into the machine_B directory, =
in
> addition to u-boot image for machine_B being present in this =
directory,
> OR it has just been removed.
> Changing back to building machine_A, the u-boot(s) are removed from =
the
> machine_B directory, and the machine_A u-boot will show up in the
> machine_A directory.
>=20
> What could be at play here to cause such a strange behaviour? How can =
I
> debug such a behaviour? I could not find anything on Google regarding
> this, nor anything in the logs generated by bitbake.
>=20

u-boot is machine specific package so in theory, it should have rebuilt =
for each of your target machines
and deploy images directory is also per machine so there should be no =
conflicts at all, unless you modify
the u-boot recipes such that they are made to be SOC family specific or =
some other voodoo, share your configurations
and recipes to get clear picture and may be something can come out.

> We're using the Daisy branch of Yocto.
>=20
> Thank you in advance.
>=20
> Best regards // John Ernberg
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_33E11230-3E41-4A38-9FA3-1C81E52704CF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXQPkUACgkQuwUzVZGdMxT8IQCeIsd5vOIhttW1TP2nqkjBKYNg
cYAAnjA2SV9ZFsJgpe8H/PegdosyXy4b
=gav3
-----END PGP SIGNATURE-----

--Apple-Mail=_33E11230-3E41-4A38-9FA3-1C81E52704CF--
