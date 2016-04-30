Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 539D2E00D84; Fri, 29 Apr 2016 19:26:34 -0700 (PDT)
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
	*      [209.85.220.41 listed in list.dnswl.org]
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B984EE00D7C;
	Fri, 29 Apr 2016 19:26:32 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id r5so53213898pag.1;
	Fri, 29 Apr 2016 19:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=2gIcGiACtDXU78P5XD4W+wGCxOj3UPx8C5Iu9Q+5qpA=;
	b=m9QuCqYFiL8eAVDVVzLxoTiwlWqWDb1rm9AbelJrlqNLbmdGes+x243L7U8gVjT6u7
	UbwHcbjjd8j0A1cTl5/Jhfcpe3WFpHEuB5C8PRDif6MKtzGG2cZlbBwo48HqoxPLiP5p
	cKGrokETXf2oWObD1y8CvgrARRT5EznwlOnJi7YZOB6Q31KTfot/stD8LEfaUW4YFUoA
	Qrh2VuqAowH0ZUHEFmbPN0cYuU3uCBkXfn9ZsvKY4sZT2FOzuAHIdV2NqM/j3p292PlF
	LaoRAvu2H1acXXmsYKNwi/makoOBoMLYMaEdqIyq6GWmxoZW0xcMt2Z/cpBbVpjyVW7J
	UMYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=2gIcGiACtDXU78P5XD4W+wGCxOj3UPx8C5Iu9Q+5qpA=;
	b=VzEZFtLHxsJ8P1VA+EObYkhDZV7udS3z3bonvYAl4tJfBFOCcYXdrdmqbg6FVxkf4U
	InavDEi7CY12J7GwTeCvsf2Ins6+BM+wGMD4GMoTMAJJDubBs58GP3APIjp5V+7Uj9Lt
	fQPN+bai5ZK4g/U7um5ru+iEeKtp0gzZOnq3UmlDdVMgxunJbh196cDBO2OnicXMYwfU
	nsgFuWczySGWjmYfr7bsVHAvEj0Y9sRb1c1FglK8wjORD9hPlylFO+VhYWF88V0rDWoM
	aHhMmm7xM9q+XpFmTnsorSzNaHuE1mFZL+yLNlbxkjjHNVZgMToS++qfyfTt8PUxiMF/
	iTbg==
X-Gm-Message-State: AOPr4FVrk9q336oG3q5mJKTSs13IU+xhFdm3AJDarevx8gTfbrJK6s5SXrx/xd/FdNWMfQ==
X-Received: by 10.66.246.165 with SMTP id xx5mr33877023pac.87.1461983192006;
	Fri, 29 Apr 2016 19:26:32 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:9475:a54c:5e22:a356?
	([2601:646:8800:5a9a:9475:a54c:5e22:a356])
	by smtp.gmail.com with ESMTPSA id
	87sm26730285pfq.93.2016.04.29.19.26.30
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 29 Apr 2016 19:26:31 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1461919494.5465.79.camel@linuxfoundation.org>
Date: Fri, 29 Apr 2016 19:26:26 -0700
Message-Id: <199F5178-FEB0-4D4C-9BC1-402E3FA6AB97@gmail.com>
References: <1461919494.5465.79.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.3124)
Cc: meta-freescale <meta-freescale@yoctoproject.org>,
	yocto <yocto@yoctoproject.org>
Subject: Re: Removing builds of meta-fsl-* from the autobuilder
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
X-List-Received-Date: Sat, 30 Apr 2016 02:26:34 -0000
X-Groupsio-MsgNum: 29779
Content-Type: multipart/signed;
	boundary="Apple-Mail=_5C42E53E-2123-4B39-8596-D739421C02A7";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_5C42E53E-2123-4B39-8596-D739421C02A7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Apr 29, 2016, at 1:44 AM, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>=20
> NXP has decided to lower its contributions to the support of the
> project and is no longer eligible for the level of automated testing
> we've been making of meta-fsl-ppc and meta-fsl-arm. As such we're =
going
> to disable those builds going forward.

I think that will ease out the pressure on system quite a bit
and testing toolchain changes will become a bit easier for me :)

Do we want to consider adding some popular community board BSP layers

>=20
> I don't like doing that but equally this does put a considerable load
> on the infrastructure and the people running the builds and triaging
> bugs and this is what we warned would have to happen.

agreed.

>=20
> Beth: Could you make the necessary changes please?
>=20
> Richard
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_5C42E53E-2123-4B39-8596-D739421C02A7
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlckF9YACgkQuwUzVZGdMxT3hACfTqul5mWBssF9B9qeOn7HeHLr
3z8An1UXEfc/zbkOKmmlQB4gIzH7paqp
=Pdey
-----END PGP SIGNATURE-----

--Apple-Mail=_5C42E53E-2123-4B39-8596-D739421C02A7--
