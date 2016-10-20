Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71B15E00944; Thu, 20 Oct 2016 10:46:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.49 listed in dnsbl.sorbs.net]
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4E45E00848
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 10:46:11 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id 4so185688560itv.0
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 10:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=sXKku6Gw2ce3bflNLoHZ+UFKEtp1OxWWz5Mobcirw1o=;
	b=HvuegocHgRZsY/QAswDpShPV2ozxBlNhNwP/EUHb+HNWlVbh69CZ24aJbfNG4716fM
	B9Z61n5c8DTvba8XHwtCL0K8FTRwJNqlVge4ommKvlHsu+KNYlEkw5layQmmJRWn1eA1
	/ARinec8kh+53HdqaYu28wmP5YYqKLfS0z8XZemrQwCJmPiBw1g+4raT0w+lKvRF+KMI
	Gypa0ejNMjHj7BB0HukXsv3vK0b9NZbqHBfXHP9IHFIiq5Uvb0Sm9F+E5yjZD3vlBXV5
	2dVNWR8iDT2dkohPL4kkm4ms0gjfI9qFIsr0FkuiX8J4L6FBxcP6MBm99/Tuj1UStFci
	tlYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=sXKku6Gw2ce3bflNLoHZ+UFKEtp1OxWWz5Mobcirw1o=;
	b=aeEl3+AkkjflW729mbnx9+IbNy9m2SfImSQSsae+FWeKAwObpK+U/QsnbnEzAFCzAZ
	jYyKQtSg0Mk+BR9PVL7giBZzfYJw6621g6+dLRz6YgwGzwSXOkdSPVH/W6pntqY5aApl
	797cHmmMnqzEqbd7vA3lrujvE7niD8QTDUCJgZO+GzaywvA6W9IY/Wr36vrcBjYe3g+T
	Du9kMvgRy9l2cPdhzFGNkb6IeIEvYitHp8ggZsVCkvGAr0oB9hfiIEhRkbRfphxHi0fI
	+HxCH/qgfJPl4EL/0rStcNt0Vi7qAf0PCO/VuKXGsidHSw52tv3TlRKd9XY2rYrzAkMO
	wHFA==
X-Gm-Message-State: AA6/9RnTUa72O2XzEmm3csmpz52tw2G6MEPW34CkURODlpEiNflNOmfP9gERLGolVtvReA==
X-Received: by 10.36.80.66 with SMTP id m63mr9951394itb.56.1476985569775;
	Thu, 20 Oct 2016 10:46:09 -0700 (PDT)
Received: from [192.168.0.130] (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id e12sm508399ioe.14.2016.10.20.10.46.08
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 20 Oct 2016 10:46:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CACfi_Z1THW3LYcqZbnsXWCKw3tyRPW00cSXOrsdzTRapixL_BQ@mail.gmail.com>
Date: Thu, 20 Oct 2016 10:46:02 -0700
Message-Id: <E901E1FD-CF6F-42DD-8DD8-4EBA9279E721@gmail.com>
References: <CACfi_Z1THW3LYcqZbnsXWCKw3tyRPW00cSXOrsdzTRapixL_BQ@mail.gmail.com>
To: Davis Roman <davis.roman84@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: Deciding between yocto kernels and soc vendor kernels
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
X-List-Received-Date: Thu, 20 Oct 2016 17:46:13 -0000
X-Groupsio-MsgNum: 32543
Content-Type: multipart/signed;
	boundary="Apple-Mail=_AD92D277-B8CA-44EA-BA5D-0C6AF14F490B";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_AD92D277-B8CA-44EA-BA5D-0C6AF14F490B
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_34D56296-7BB2-44DF-A3D3-2E07A1DFA515"

--Apple-Mail=_34D56296-7BB2-44DF-A3D3-2E07A1DFA515
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 20, 2016, at 10:32 AM, Davis Roman <davis.roman84@gmail.com> =
wrote:
>=20
> Hello Yocto Community,
>=20
> As I understand it, the Yocto project team cherry-picks certain kernel =
versions from kernel.org <http://kernel.org/> to be dedicated as Yocto =
Project Linux Kernels that have support for the officially supported arm =
target boards.
>=20
> However, if I'm using a silicon vendor, such as nxp, for a custom =
i.mx6 board then I'll need to stick with nxp's kernel but the problem =
that I see here is that they may not support that version of kernel for =
too long.
>=20
> Are there any best practices or advice when it comes to how to avoid =
getting locked into an evil vendor kernel ?

You can try to check if needed support for the given SOC is upstreamed. =
Sometimes, vendor kernel have additional stuff but the base support is =
upstream, if you are lucky
and dont need the things which are on top of such base port then you can =
try switching to kernel.org kernel and unshackles yourself.

Secondly, you can work with vendor to upstream the needed bits at =
priority, may be helping out with testing or whatever you can.

if vendor kernels are having too much stuff that is essential to support =
the basic stuff on chip then you are at the vendors behest for support, =
there may be
some OSVs that can help may be or some other consultancies.

>=20
> Thank you,
>=20
> Davis
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_34D56296-7BB2-44DF-A3D3-2E07A1DFA515
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 20, 2016, at 10:32 AM, Davis Roman &lt;<a =
href=3D"mailto:davis.roman84@gmail.com" =
class=3D"">davis.roman84@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">Hello Yocto Community,<div class=3D""><br class=3D""></div><div=
 class=3D"">As I understand it, the Yocto project team cherry-picks =
certain kernel versions from <a href=3D"http://kernel.org/" =
class=3D"">kernel.org</a> to be dedicated as Yocto Project Linux Kernels =
that have support for the officially supported arm target =
boards.</div><div class=3D""><br class=3D""></div><div class=3D"">However,=
 if I'm using a silicon vendor, such as nxp, for a custom i.mx6 board =
then I'll need to stick with nxp's kernel but the problem that I see =
here is that they may not support that version of kernel for too =
long.</div><div class=3D""><br class=3D""></div><div class=3D"">Are =
there any best practices or advice when it comes to how to avoid getting =
locked into an evil vendor kernel =
?</div></div></div></blockquote><div><br class=3D""></div><div>You can =
try to check if needed support for the given SOC is upstreamed. =
Sometimes, vendor kernel have additional stuff but the base support is =
upstream, if you are lucky</div><div>and dont need the things which are =
on top of such base port then you can try switching to <a =
href=3D"http://kernel.org" class=3D"">kernel.org</a> kernel and =
unshackles yourself.</div><div><br class=3D""></div><div>Secondly, you =
can work with vendor to upstream the needed bits at priority, may be =
helping out with testing or whatever you can.</div><div><br =
class=3D""></div><div>if vendor kernels are having too much stuff that =
is essential to support the basic stuff on chip then you are at the =
vendors behest for support, there may be</div><div>some OSVs that can =
help may be or some other consultancies.&nbsp;</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D""><br class=3D""></div><div =
class=3D"">Thank you,</div><div class=3D""><br class=3D""></div><div =
class=3D"">Davis</div><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D""><br =
class=3D""></div></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_34D56296-7BB2-44DF-A3D3-2E07A1DFA515--

--Apple-Mail=_AD92D277-B8CA-44EA-BA5D-0C6AF14F490B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgJAt4ACgkQuwUzVZGdMxT4+gCfbQAV6TimpX64OXdwj7fS0XM3
8ssAoIpOF1VP/K5LvXV2RKgaLBawaSQt
=5RoQ
-----END PGP SIGNATURE-----

--Apple-Mail=_AD92D277-B8CA-44EA-BA5D-0C6AF14F490B--
