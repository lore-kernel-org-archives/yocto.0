Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 725FBE007EA; Mon, 11 Jan 2016 09:51:47 -0800 (PST)
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
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7F8EE0070F
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 09:51:44 -0800 (PST)
Received: by mail-pa0-f46.google.com with SMTP id yy13so231997493pab.3
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 09:51:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=wDw7GyytG5bObtO6z7RPvibNiHgT+kN2DpMz2J4Lg44=;
	b=QGvxRi2lWRbqUKtY7ts8JqEsjP6V9lfeGKwvb/REo1z9jIQsWss9DbxltSINpJRFOF
	88PW7loUF4ZiiOk22N3cxzDQMocpZW4R7iPyVd+kWMa+f3iZ03vQVKjVwUm7QGOpEid+
	hrck1Yo7Ec/3X4skK8gAP6Rmsr6hF47JEhaasieEUUKC1vpKEbtQljNlbVqVshmqgpjY
	buagnaFsgPTRk/R3vkDggRmF+sF7Rm3gjek6jG4BYzxzhNPTUHwkIe+a+9qU6dbhjp6p
	Q+eJBsKn+swFHM/r2Lo8DOcp2EteI/YESrC8UaQmlTy3+DwwanOMiaNFo5q3D4l184mW
	UzUA==
X-Received: by 10.66.161.227 with SMTP id xv3mr9806468pab.117.1452534703661;
	Mon, 11 Jan 2016 09:51:43 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:d5b:ee56:59f:5eeb?
	([2601:646:8802:5d5c:d5b:ee56:59f:5eeb])
	by smtp.gmail.com with ESMTPSA id
	i76sm24728702pfj.68.2016.01.11.09.51.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 11 Jan 2016 09:51:42 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAOsp8o-7Dp239XrWww86Ztn=Fm8CPD521akwUBKw+6Y7_xBYzg@mail.gmail.com>
Date: Mon, 11 Jan 2016 09:51:37 -0800
Message-Id: <D453F7A3-485A-4F5A-85CB-CB936F260326@gmail.com>
References: <CAOsp8o-7Dp239XrWww86Ztn=Fm8CPD521akwUBKw+6Y7_xBYzg@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: Global git fetcher override for http?
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
X-List-Received-Date: Mon, 11 Jan 2016 17:51:47 -0000
X-Groupsio-MsgNum: 27923
Content-Type: multipart/signed;
	boundary="Apple-Mail=_54E00EC9-E561-4043-9E5C-0CADEF55E7E8";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_54E00EC9-E561-4043-9E5C-0CADEF55E7E8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jan 11, 2016, at 9:33 AM, Michael Habibi <mikehabibi@gmail.com> =
wrote:
>=20
> Unfortunately I don't think this will work well, because generally =
http protocol URLs are slightly different than git protocol URLs. =
However, in my work environment, our firewall blocks git protocol. This =
means that for all mirrors that do not include an http protocol mirror, =
the recipe will outright fail because it can't fetch via git://.
>=20
> Is there a way to indicate this at a configuration level, so it knows =
not to bother with git:// protocol? This may help me more easily =
identify the recipes that need modification.

Take a look at meta/conf/site.conf.sample
that might be a good starting point.

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_54E00EC9-E561-4043-9E5C-0CADEF55E7E8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaT66wACgkQuwUzVZGdMxS+wgCeIXitGw/jYDy3Ihl3QKgkCCZ6
z4kAnRIhMxOPXFYee9w9rr50tidY57R3
=2+Wg
-----END PGP SIGNATURE-----

--Apple-Mail=_54E00EC9-E561-4043-9E5C-0CADEF55E7E8--
