Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21D67E00AB0; Wed, 14 Oct 2015 10:16:42 -0700 (PDT)
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
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C434CE00A9B
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 10:16:38 -0700 (PDT)
Received: by payp3 with SMTP id p3so11773427pay.1
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 10:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=kXODvNb//1pGLWbBfQHT8+MIP4fO/qxjYmmvCQzjjwI=;
	b=0r2wZV5tDS+ECSPc/SIbARAYiBBZb0PaeZ89fH+5juFNNVuBoJoUzmvOwuUgZoJcK8
	A5zEeYy6yHw84c17xB0mPFeB2yEgMuP/1eL8cZ8Aj1yU3MurcvIISTXYLK9XvltBRf8g
	DKXbkFkZQDteNJFNoK0HK5sEEz7oRFNixKgtP547fw24BwAf3vkYfYX3DBnmNiB4CC7s
	jf/C/lNXIpwRNGcymARHDYXpvLTC15HfcEZEZee6JB1IAMaHMC1MYRAOz/xmhzCi8vZF
	S9FOg0mFnFXs273whh5dcOkgMMdJ9JvKIbZReZlHrK1/YcCFCgUz2PM1gmnre19ErZKM
	OmMw==
X-Received: by 10.66.159.66 with SMTP id xa2mr4884940pab.28.1444842998356;
	Wed, 14 Oct 2015 10:16:38 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:6454:793b:ce8a:7835?
	([2601:646:8601:4580:6454:793b:ce8a:7835])
	by smtp.gmail.com with ESMTPSA id
	lo9sm10763094pab.19.2015.10.14.10.16.37
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 Oct 2015 10:16:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3096.1\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <24D62272-F484-4CBA-9113-6D83AD754818@curtisembedded.com>
Date: Wed, 14 Oct 2015 10:16:33 -0700
Message-Id: <E534C686-C0FF-472D-B769-EAFB2C35D302@gmail.com>
References: <24D62272-F484-4CBA-9113-6D83AD754818@curtisembedded.com>
To: Allen Curtis <allen.curtis@curtisembedded.com>
X-Mailer: Apple Mail (2.3096.1)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: mtd-utils floating point exception
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
X-List-Received-Date: Wed, 14 Oct 2015 17:16:42 -0000
X-Groupsio-MsgNum: 26840
Content-Type: multipart/signed;
	boundary="Apple-Mail=_9801A4D8-F58D-4210-87FA-3FCBEC5366C4";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_9801A4D8-F58D-4210-87FA-3FCBEC5366C4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 14, 2015, at 9:32 AM, Allen Curtis =
<allen.curtis@curtisembedded.com> wrote:
>=20
> Hello,
>=20
> When I execute any of the mtd utilities from a Yocto AM335x build, =
they terminate with a floating point exception.
>=20
> Is this a known bug?

Can you provide more details

>=20
> Is there a patch?
>=20
> TIA
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_9801A4D8-F58D-4210-87FA-3FCBEC5366C4
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlYejfQACgkQuwUzVZGdMxQnEwCfcXy8afIKfrR8zNdGXMak3PMf
05oAnj+bU0nEu1vxOstReordQKW5o7mI
=UbZ0
-----END PGP SIGNATURE-----

--Apple-Mail=_9801A4D8-F58D-4210-87FA-3FCBEC5366C4--
