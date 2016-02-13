Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4129AE00CD4; Sat, 13 Feb 2016 06:30:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9C39E00CD0
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 06:30:54 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id a4so2151751wme.1
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 06:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=6PJfN/PCKQwry+b18EjqB279O7vEHmA5Fq034CfzmOM=;
	b=Sdz+fhPYBQJ8Irg8k32eR4HqthIxPbYxLzYkJKjIHj3Cw7L6qW/OpqtlMu6ancfFt1
	t5ipH9FPwYkqcGaVQJM7N8Wz2kpTHB2HK00aARyKzxyJaggU5Byp5vsLxmCqGMfLQ4RK
	bdAmOYnRfLXNYhrUpRhkFZsfPZ9YFgZPwfK5f0sEG2uk+JntxBjKaGbVORy4v5eNyXwz
	085OaYjozP5bAotcFVViRZOE0O8kGeEN8etLxSjPfw2fiCneZ73M1+hXJLoF3CkSjwE6
	rqv3DJHE5iGEttTp5RCrpcqnfgshVGh0QF+4F9h5gI7WygfhOEqSsaEktyJYLI0ryHP5
	rLwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=6PJfN/PCKQwry+b18EjqB279O7vEHmA5Fq034CfzmOM=;
	b=hXFJkFe27CMTQMFSJ1QNnvAAcccXAQePQSuxv9i8UnN8N6xRxbtDxcD37hnt/P9wlx
	QXoBaqCWm3QgyHdf+VBZJgg887Qf6g89vGw578Gg+w92DC5nJPPqG0huFQmmuGv7/NoW
	xr2aY7VHKUZ4d5TEIYFOUoGe08bQ0Fp6eOgZEH5KZDdV27n39Z3JL+TT2p/QZ8bJm/dV
	HiVKRCMqDenB/rUM5zZwfT5LhwmFf7DMprFmxW/VxIP7osCRlbH7FQesl+04y4DyDD4u
	evrWXYIkP3h4m4LvxKAld0tvfDldVelR021ifh0LnfGx16l4CaIXN9FoisUwa22yl29k
	JelA==
X-Gm-Message-State: AG10YOQ+HIuet+AhdtLbe3AORmbuUwfA1vF7sY2ksAd/RNtG06PhG6tdCbdSvNsOPeLksg==
X-Received: by 10.195.13.16 with SMTP id eu16mr7900507wjd.140.1455373853664;
	Sat, 13 Feb 2016 06:30:53 -0800 (PST)
Received: from walter.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12])
	by smtp.gmail.com with ESMTPSA id i2sm4760752wje.22.2016.02.13.06.30.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 13 Feb 2016 06:30:52 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <CAJTo0LY6r8od5c3rysNWFg=-3c0jWx4STaaPQD-pcEmUmqh2Dw@mail.gmail.com>
Date: Sat, 13 Feb 2016 15:30:50 +0100
Message-Id: <2ABA8704-6F76-49C0-8DD4-8C74295CF4EB@gmail.com>
References: <CAJTo0LaMycXVjZLoPMU7Te2HDpp7+YUu8GGuNznhk8D8Yje27A@mail.gmail.com>
	<3534892.4K3lPByQ7B@nickl>
	<CAJTo0LY6r8od5c3rysNWFg=-3c0jWx4STaaPQD-pcEmUmqh2Dw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.3112)
Cc: Nick Leverton <nick@leverton.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dropping Debian 7 as supported?
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
X-List-Received-Date: Sat, 13 Feb 2016 14:30:58 -0000
X-Groupsio-MsgNum: 28466
Content-Type: multipart/signed;
	boundary="Apple-Mail=_6FCB0D47-1302-4B75-B2C9-58378B6B585B";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_6FCB0D47-1302-4B75-B2C9-58378B6B585B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> Am 11.02.2016 um 15:32 schrieb Burton, Ross <ross.burton@intel.com>:
>=20
>=20
> On 11 February 2016 at 14:21, Nick Leverton <nick@leverton.org> wrote:
> Possibly a little early - Debian 7 will be going onto LTS security =
support for
> two years, starting some time this month.  Quoting from
> https://wiki.debian.org/LTS
>=20
> Ah yes, I'd forgotten about the LTS project and was looking at the =
security team.
>=20
> This does make it less clear, but it's still an old release and we =
can't support/test on everything.

Sure, but are there some serious/expensive maintaining efforts =
continuing support Debian 7?
Or is it an approach to kick Debian from list of supported distributions =
for (above?) reasons?

Since I run some build instances on a Debian 7 machine which is not =
going to be upgraded that
soon (don't want Debian 8, but don't want to reinstall from scratch and =
migrate my Xen VM's ...),
dropping support for "it's just time to move on" is more a Desktop =
philosophy, not for embedded/datacenter
approaches ...

Cheers
--
Jens Rehsack - rehsack@gmail.com


--Apple-Mail=_6FCB0D47-1302-4B75-B2C9-58378B6B585B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJWvz4bAAoJEESZlq7c5QqdcQUP/2Ik+WdheC/paCbCNww0lhP/
SJD2NzTXgcv3EfIUXBfqisBraLN2bSeexk6CMyfTKAcAKTjsSPAISuNrf9IxJ2An
DwuWWROg7PckZjJr8usU/x98ELzO0GEwvJKqVkkeLzmN0Jujew5nZF/bVmpwGxsJ
YrjoYCawB1y9mb+tqloGPhqkZiwIpwS39LOeH7IxalYlB/Z1uSJpvclTZZq6NAnr
+mU0p1+bGSflWjx5B75bOLaidodzF/N8MsUzfH2mAHKZ8dceqe2joM/nkmjnKpyi
BM7o1TZw3L6S2WVj7wAMKisaW2VomSYUEUArQpUrQQH5zMF8qyEYkSkLQggxcPID
NDHTpmt6wYtUoWUiPyJ5FvuGNKKF+KQCbk7gKmRjTpOzBlY4Ss30I7Eiyds7DcRt
04XV/8BZCr8JdFnuxt0z4mltBBhIx2Br4xsfJVbxIw5TK9NXdQTk/mEMePgISd60
oNTAD30N083nHDnrAduVUXill7jOs2pXQp4UdkpKQQNlZ4DH4gRN0UF80nS1SaT9
r8aJ4+lFBI056d7ieNuSzwLkzuzcJo8xP0OoxplqWC/nhrNi+6NNpFk3EkeuvQds
FtsjG5F2ql07SMqCdmQargGSolKY3Ip1pfX1THPQ3xVayBrSEU39SJy+2luJ8nCQ
x+cnDVzLLn0KkZvfM1Zo
=pRbX
-----END PGP SIGNATURE-----

--Apple-Mail=_6FCB0D47-1302-4B75-B2C9-58378B6B585B--
