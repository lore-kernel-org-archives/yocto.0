Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E33BEE00BF5; Mon, 14 Dec 2015 16:35:17 -0800 (PST)
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
	*      [209.85.192.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA0D1E00546
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 16:35:12 -0800 (PST)
Received: by pfnn128 with SMTP id n128so114283325pfn.0
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 16:35:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=UAdyXz5oI//AhUk+sO7aI/ma8zwRGFqonKL2kkT6xyU=;
	b=tU0nNkZmg6B9o+E1OifDYN+1V1hLwZACGYJk+8lH9OLSaJ+s/4e1ZRNuIyGeHcnMUn
	EQEvXG+zBkRtDHi3mPO7kealcOwzk22qmnRLXRS6LvL/GQVmd626+xoVxds+qZCUiFiF
	QyXW7EgUKVShtN8qcGHQksTa4VaP20NM6brJESHBK6qYD7zFTRXNwdmZ/2P+mx2jFIeN
	P4KL4zykBxf3nZsWa/pj0/mTViliHCQFWP9MgZZTEkTsx+EZ37+U+6y+ybPiE/RQLh6o
	jYfpIyrMWDRmJTAush4HTkMeBd5uBnR7sGCoTaGlAvLXbVXy0GYCdAFcOPjYkP00zCz5
	Jt4w==
X-Received: by 10.98.42.150 with SMTP id q144mr19285525pfq.81.1450139712534;
	Mon, 14 Dec 2015 16:35:12 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:5c4d:b840:1a41:b442?
	([2601:646:8802:5d5c:5c4d:b840:1a41:b442])
	by smtp.gmail.com with ESMTPSA id
	191sm23099385pfa.20.2015.12.14.16.35.11
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 14 Dec 2015 16:35:11 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAP2S6e4+LrBUaDD=d4cwYeq_YfeES_uKKJVd+TMGSn5qa4CnXA@mail.gmail.com>
Date: Mon, 14 Dec 2015 16:35:09 -0800
Message-Id: <E0224ACE-0C79-482C-9A0B-8B527C470F6D@gmail.com>
References: <CAP2S6e4+LrBUaDD=d4cwYeq_YfeES_uKKJVd+TMGSn5qa4CnXA@mail.gmail.com>
To: Valentin Le bescond <valentin.lebescond@gmail.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-qt5] meta-toolchain-qt5 internal compiler error
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
X-List-Received-Date: Tue, 15 Dec 2015 00:35:18 -0000
X-Groupsio-MsgNum: 27711
Content-Type: multipart/signed;
	boundary="Apple-Mail=_FE347C57-3846-4523-ACDD-7E6527F9E889";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_FE347C57-3846-4523-ACDD-7E6527F9E889
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Dec 14, 2015, at 1:41 PM, Valentin Le bescond =
<valentin.lebescond@gmail.com> wrote:
>=20
> Have you ever had this issue ?
>=20
> I tried to 'bitbake meta-toolchain-qt5' 4 times.
> The first time it threw me 2 "internal compiler error :segmentation =
faults" :
> one on qt3d, and the other one on qtwebkit.
>=20

you need to provide more info to get folks to help you. What branch of =
meta-qt5 is in play ?

> the 2nd time it built the qt3d ok but threw the qtwebkit error.
> it threw the same error the third time, and the fourth time ...
> "all task succeeded"...
>=20
> I didn't modify anything between those bitbake commands... run ran =
them again...
>=20
> Is there any reason why it would fail multiple times before succeeding =
?
>=20
> If you want to know it's a custom distro based on poky 1.8.1 and a =
custom image based on "rpi-hwup-image" for raspberrypi2.
>=20

what customizations are done ?

> Cheers !
>=20
> --
> Valentin LE BESCOND
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_FE347C57-3846-4523-ACDD-7E6527F9E889
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlZvYD4ACgkQuwUzVZGdMxQ/XgCdHOGTRuZbRmdLbou91V4ib/eT
chsAn2KeRKdGtgCabNm/Tr5Oc/u9p/kP
=ZqUy
-----END PGP SIGNATURE-----

--Apple-Mail=_FE347C57-3846-4523-ACDD-7E6527F9E889--
