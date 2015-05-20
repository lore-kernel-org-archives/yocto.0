Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47AB7E009EC; Wed, 20 May 2015 12:14:10 -0700 (PDT)
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
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFB64E009EB
	for <yocto@yoctoproject.org>; Wed, 20 May 2015 12:13:57 -0700 (PDT)
Received: by pdbqa5 with SMTP id qa5so79173492pdb.0
	for <yocto@yoctoproject.org>; Wed, 20 May 2015 12:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=rtLyzVfn+VRSWpvAPRQ0cu1o971gBDRcNEDPYYNPt/A=;
	b=g6jQyS5XqAYZnyGP/bTRgOaVBrf8Qa8spCAeUFIQVSMy5otzKZ98mTwCRPtYNbAZ8Z
	ih/qLMMARqOhuwqWVj/94jFWN5njI7m/LO/y+OvJqzEfUOFblAolAvdGmCaRTBW9YFgB
	2BSf4hf4YlNf6R5EU4StjHC8/HTpKETCRtO81XuhdUmBt8zol2o9P1WTNqV9cuWPdmfL
	zblMipxOBMUse6iejlDdKcFJH3dnc/7NsoeMNIgk7089KaOZYiJfAvDznTMKTpW9gx+1
	sI5v7fcevVnuH+i3nlTRLktW1sCLdvmLIGojCU/SB4aU6C18foPHm/4SMmMZNjFMdllx
	51LQ==
X-Received: by 10.66.66.46 with SMTP id c14mr55777424pat.71.1432149237315;
	Wed, 20 May 2015 12:13:57 -0700 (PDT)
Received: from ?IPv6:2600:1010:b04d:4ac3:5910:a868:e4de:c473?
	([2600:1010:b04d:4ac3:5910:a868:e4de:c473])
	by mx.google.com with ESMTPSA id
	yv6sm16997339pac.29.2015.05.20.12.13.56
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 20 May 2015 12:13:56 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Pgp-Agent: GPGMail 2.5b6
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CABc_YGBbN=Sp0qrDUdNsv1YKWmhNftfCPMp_7YtBiSkoMOZwAQ@mail.gmail.com>
Date: Wed, 20 May 2015 12:13:53 -0700
Message-Id: <5C2FE898-C79D-4430-8E58-120DA5444CB7@gmail.com>
References: <CABc_YGBbN=Sp0qrDUdNsv1YKWmhNftfCPMp_7YtBiSkoMOZwAQ@mail.gmail.com>
To: =?utf-8?Q?Marcin_Krzemi=C5=84ski?= <mar.krzeminski@gmail.com>
X-Mailer: Apple Mail (2.2098)
Cc: yocto@yoctoproject.org
Subject: Re: Adding machine in own layer with the same name as machine in different layer
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
X-List-Received-Date: Wed, 20 May 2015 19:14:10 -0000
X-Groupsio-MsgNum: 24909
Content-Type: multipart/signed;
	boundary="Apple-Mail=_9617AA56-76A9-4799-A702-A4FBEAD85479";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_9617AA56-76A9-4799-A702-A4FBEAD85479
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On May 20, 2015, at 5:35 AM, Marcin Krzemi=C5=84ski =
<mar.krzeminski@gmail.com> wrote:
>=20
> Hi,
>=20
> I have my own layer and I want to add machine named qemuarm to use =
runqemu scrips ac close as possible original scripts from poky. When I =
try to build this machine it seems that recipes from qemuarm are used. =
Is it possible to do it or should I use different name?
>=20

you should define a new name for your machine. may be include the =
original qemuarm policies in there. But be aware that adding a new
machine would require lot more maintenance on your part. So to set your =
expectation right, its not as simple as adding machine config, the whole =
BSP piece is open at that point.

> Regards,
> Marcin
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_9617AA56-76A9-4799-A702-A4FBEAD85479
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlVc3PEACgkQuwUzVZGdMxSYtACfWd4TQ4bpwRHUafxvXsorE426
15wAnAvjofG7Ni58o+pljBW+5g7aFV9v
=j8aH
-----END PGP SIGNATURE-----

--Apple-Mail=_9617AA56-76A9-4799-A702-A4FBEAD85479--
