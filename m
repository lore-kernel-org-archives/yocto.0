Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13C80E00E9D; Sun, 17 Apr 2016 22:15:14 -0700 (PDT)
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
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45A3AE00C2A
	for <yocto@yoctoproject.org>; Sun, 17 Apr 2016 22:15:10 -0700 (PDT)
Received: by mail-pa0-f43.google.com with SMTP id zm5so75134443pac.0
	for <yocto@yoctoproject.org>; Sun, 17 Apr 2016 22:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:subject:date:message-id:to:mime-version;
	bh=crAoWIkStZYz2CGbrCQkmprkIjS5bqLwlJ/vzLe3qTM=;
	b=dWHVUt2RpLV6RxhYFYHRszDYr1cOhzPvjDSsyyGLNuJuWepnxcQWwI8wYlJ96CDUpj
	5YSXoq1b8sNq+BhS8tiGdlF/0NELXJBWSjtXn1Sb9uXyiGV5QXeMJOEp5SC5yFp8inqC
	2X3fAu0jXlMLQtaG4/LXq5W0OVTUAyRsrxfVdjTIitR5F4UxNHAgFtakgtVaklgdUYqe
	Sr5qxYXXNz7Q9FKb17BKMgb5dZTHuzfotQwJb7DENe1GT8KiBWm2bqrDMjoN+d/Sgh15
	c0Qzw8/82pFxODgR459w1Qrr95x4ox1vqVWEcfSjULAgVNovvzUk5WARPpwQFTlLjpMm
	srIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:subject:date:message-id:to:mime-version;
	bh=crAoWIkStZYz2CGbrCQkmprkIjS5bqLwlJ/vzLe3qTM=;
	b=OwMKhlMlLWmgVKyiN8eFYBunweuCS3tOCR085hZj3jMw7qbkKuEn+TzM5eYXeCnzqw
	fq8maxn8IhCAIJhVXNOGr2j/g1hvXrDgdJC1Lr6Am+yaNzeiNFrS+MNEVPIOvssoL/ZD
	SWo7ZcT2o4vdFTCrmneU6N0PzhRv0NXgZkNpGr9dmE8yiqAtiiVGVkjqPj2QKYqzuARb
	tegxJZ0Q0WTlMDASktN/wB/a/F+saRkU5cH5Z85Q+dEvaLYA3GqvwmdDenaLnfUgYfIc
	kaYCw5FhYepwdrBrC0YU/8JroiEx/inPQ2Kqk6NnlAtt8TOiP1X1igV/w+u9wrF8SFq9
	qS7A==
X-Gm-Message-State: AOPr4FVVJPnP6DUrVorMqoSlmH3j+vPVBnNS15jnXYJnQDYNZK2pVuiUXWnQG6tKOs2PhA==
X-Received: by 10.66.62.232 with SMTP id b8mr46803647pas.104.1460956510485;
	Sun, 17 Apr 2016 22:15:10 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:bcd4:460b:c427:512f?
	([2601:646:8800:5a9a:bcd4:460b:c427:512f])
	by smtp.gmail.com with ESMTPSA id
	y27sm80126857pfi.11.2016.04.17.22.15.08
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 17 Apr 2016 22:15:09 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
X-Pgp-Agent: GPGMail 2.6b2
Date: Sun, 17 Apr 2016 22:15:03 -0700
Message-Id: <B1D22563-F31B-4EF1-90D6-16EB391134D5@gmail.com>
To: OE Core mailing list <openembedded-core@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [RFT] GCC 6 Recipes
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
X-List-Received-Date: Mon, 18 Apr 2016 05:15:14 -0000
X-Groupsio-MsgNum: 29474
Content-Type: multipart/signed;
	boundary="Apple-Mail=_D380721D-F5EE-491D-A6B6-0C25DCA60A6B";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_D380721D-F5EE-491D-A6B6-0C25DCA60A6B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello all,

I have put together a potential gcc6 upgrade recipe set, and pushed the =
branch to tree here


http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dkraj/gcc-6

and also at github fork of mine.

https://github.com/kraj/openembedded-core/tree/kraj/master

You need to set

GCCVERSION =3D =E2=80=9C6.%=E2=80=9D

in local.conf to enable it.


There are few recipes in OE-Core which still don=E2=80=99t compile e.g.

see

http://errors.yoctoproject.org/Errors/Build/14782/

any help in fixing them or otherwise fixing other layers is appreciated.

gcc6 is a major release for some info see

https://gcc.gnu.org/gcc-6/changes.html

and porting guide

https://gcc.gnu.org/gcc-6/porting_to.html


Thanks

-Khem

--Apple-Mail=_D380721D-F5EE-491D-A6B6-0C25DCA60A6B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlcUbVwACgkQuwUzVZGdMxRPTACfUVB+XNWT+8+tZYfq38MBc5DQ
d8YAoI475gdTOoaX/3suuYdeaqvgf83D
=eSJK
-----END PGP SIGNATURE-----

--Apple-Mail=_D380721D-F5EE-491D-A6B6-0C25DCA60A6B--
