Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4132FE0050B; Tue, 25 Oct 2016 08:52:46 -0700 (PDT)
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
	*      [209.85.192.170 listed in list.dnswl.org]
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFDE4E0049B
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 08:52:43 -0700 (PDT)
Received: by mail-pf0-f170.google.com with SMTP id n85so5053708pfi.1
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 08:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=OIayF9IUmVHeWOWe4JRainamOZ7EbdDW0SXa9t+3kTs=;
	b=RSMw7tlH1ZErfTNUNg2+qI64kMvH9LAUeZ15q3DHvxPEUkCH4gpzf5MfS+ArTgNQ0r
	9vprR7GPQT5cGmnd3FY+gWog6pP+H4bZ0sbBv2rLzPIBLcwViOY0lWj6OYLXPsqhe0/y
	Q7y5bFFSdEzT+IEXsTSIctgqVMjz1meXeKM/7Bbqfk10uI/NMPNY5GieWmyNHa9TpFJM
	oFUVkcLSS7RwbdcUmDuJ9P4WRA7eXBS/87LueJ/sSm0lcSpxcV/SfNX83XL8O+K4RyYM
	Jp4joApmiJsO1LccUtImUyF8jF1tGRdJi7F/vJMvdjU/pi0GNjjMfkrOJTiWadBqic3e
	f3JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=OIayF9IUmVHeWOWe4JRainamOZ7EbdDW0SXa9t+3kTs=;
	b=BXqRHDaYEMlH9XGx3JHmjn2BBEtw+71uflp5DNuLSOyXIK4LSM+tFdt6coPqK/0dpV
	OOuFJtGXG4/RWQb5WZ+L6PF2TFAFpkFrCq/7DZ4PPFo/zu1hdRguWEyytBGGOGoj9sNK
	N6HjQvZbn+Mvv+qgFhJDMSAtGtycWGEShdDHyNq6pjpgxfV6kCYk/Q/C169dRy0d2pYc
	w+D6odAUy/8tTrqG284lABT8uoPDFQGd3H2/6pmjR4cR+kQ5Edn8eoBgzP1LJ0+UAJZX
	2dliwbY3b7Sv03xpIWmYtM5WfqXwMXvcOSTmBmuQUAu/feQeyWhyVkKwEbWvFIy1XsR3
	xUpg==
X-Gm-Message-State: ABUngvfOfE6Yd6mXmYGj+ZR5xQ8KaDCiPIncokoLr1a7mygUprVSB9+EraIhBXwCPj6Xog==
X-Received: by 10.98.26.205 with SMTP id a196mr40731334pfa.50.1477410763090;
	Tue, 25 Oct 2016 08:52:43 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:d813:dd87:8425:bae3?
	([2601:646:8882:b8c:d813:dd87:8425:bae3])
	by smtp.gmail.com with ESMTPSA id
	t6sm34499304paa.45.2016.10.25.08.52.42
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 25 Oct 2016 08:52:42 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <4149546b-649a-8af6-73d6-373de9186233@rt-rk.com>
Date: Tue, 25 Oct 2016 08:52:32 -0700
Message-Id: <CF46495B-4429-47A0-9C76-3B749859F8D4@gmail.com>
References: <CADzUK1LHq12OB=gigH37empg5cr6amjozt_fPS2FQ5+v4ub9YA@mail.gmail.com>
	<4149546b-649a-8af6-73d6-373de9186233@rt-rk.com>
To: Nikola Popovic <nikola.popovic@rt-rk.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: How to change the startup application
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
X-List-Received-Date: Tue, 25 Oct 2016 15:52:46 -0000
X-Groupsio-MsgNum: 32619
Content-Type: multipart/signed;
	boundary="Apple-Mail=_CC42610E-BA9B-488C-8A50-0798079812F1";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_CC42610E-BA9B-488C-8A50-0798079812F1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 25, 2016, at 6:02 AM, Nikola Popovic <nikola.popovic@rt-rk.com> =
wrote:
>=20
> Greetings.
>=20
> Is there any possibility to make recipe which start and run =
application inside weston terminal when Yocto starts.

weston init does have mechanism for such usecases see weston.ini. I =
would recommend to read through weston docs.

>=20
> Tnx !
>=20
>=20
> --
> Nikola Popovic
> Software Engineer
> Tel: +381 21 4801 1304
> E-mail : nikola.popovic@rt-rk.com
>=20
> RT-RK LLC
> Narodnog fronta 23a
> 21000 Novi Sad
> Serbia
> www.rt-rk.com
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_CC42610E-BA9B-488C-8A50-0798079812F1
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgPf8kACgkQuwUzVZGdMxTwugCfZGhHTW7LMWJCmx8Uwllqst9v
gFsAmwYjmYybzko3fC/i3cFR0AAsQQSW
=qa0G
-----END PGP SIGNATURE-----

--Apple-Mail=_CC42610E-BA9B-488C-8A50-0798079812F1--
