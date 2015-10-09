Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA437E00C0E; Fri,  9 Oct 2015 00:25:26 -0700 (PDT)
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
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DEE4E0053A
	for <yocto@yoctoproject.org>; Fri,  9 Oct 2015 00:25:25 -0700 (PDT)
Received: by pablk4 with SMTP id lk4so79014072pab.3
	for <yocto@yoctoproject.org>; Fri, 09 Oct 2015 00:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=MOncY+AXO1/WGtRJK3WPfwkRN6gejjItCk/YReq5fQo=;
	b=Z4Gjsvwgpv3yDfDV+hJ0m/f1lClFx+z7EVH4Nh4xcf+zZXLxGptM5SnvzL6TGoRA9C
	DIuI5M10FhpsJ5OdLz4QezNhEWzEvZ45+z5JVzhwUd0E3E6XInHJkSFv0sr2BUOfIsGn
	yIQBXe8ByWLYQEiV050FPgiM6fTFbQLnKKQ9Ax3mkHDIwqrM3tULxtxfIrvu3jHPUhSw
	fQi7TZFFgjpoY26TMpE8PeqMLq91CHnImIxnYSGnZxwBW+2oM43RROgCdJLLcsim0W/G
	SJxVZWVD4X8knuz6/DMk0Id+sfka2DiYZXYMejMJXYNAok7G+sH3qsIE1ph0G78t8Wqa
	umBg==
X-Received: by 10.66.138.11 with SMTP id qm11mr13542997pab.126.1444375525157; 
	Fri, 09 Oct 2015 00:25:25 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:24ad:a72d:669c:5092?
	([2601:646:8601:4580:24ad:a72d:669c:5092])
	by smtp.gmail.com with ESMTPSA id i9sm396694pbq.84.2015.10.09.00.25.24
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 09 Oct 2015 00:25:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3096.1\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAF3SDA4AiYrxqdTTY5VVFizmgMKOXjYTJzaz8kNN9D6j9iwccA@mail.gmail.com>
Date: Fri, 9 Oct 2015 00:25:23 -0700
Message-Id: <59F9D88E-3EF1-42A6-A04B-4516D2F48FB5@gmail.com>
References: <CAF3SDA4AiYrxqdTTY5VVFizmgMKOXjYTJzaz8kNN9D6j9iwccA@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
X-Mailer: Apple Mail (2.3096.1)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel-module- prefix for out-of-tree modules mandatory?
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
X-List-Received-Date: Fri, 09 Oct 2015 07:25:26 -0000
X-Groupsio-MsgNum: 26765
Content-Type: multipart/signed;
	boundary="Apple-Mail=_5964597C-370E-4A70-8B19-7239B871ABBD";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_5964597C-370E-4A70-8B19-7239B871ABBD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 8, 2015, at 1:29 PM, Daniel. <danielhilst@gmail.com> wrote:
>=20
> Hi all,
>=20
> Is the kernel-module- prefix mandatory for out-of-tree modules
> compiled inside Yocto? And, This prefix applies to package names or
> recipe names? Should I rename my recipe file with this prefix or setup
> PN stuff?

if you inherit module bbclass then the split will happen automatically
you can name your recipe anything you like, the naming applies to out =
packages only

>=20
> Cheers,
>=20
> --
> "Do or do not. There is no try"
>  Yoda Master
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_5964597C-370E-4A70-8B19-7239B871ABBD
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlYXa+MACgkQuwUzVZGdMxTXxQCfYUxRP1CYkLcOSllfAYLZoKc1
rOUAn3SHGh70EX5jiw9hAc80Jk4kSnVf
=Dwi1
-----END PGP SIGNATURE-----

--Apple-Mail=_5964597C-370E-4A70-8B19-7239B871ABBD--
