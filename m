Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEC10E00C98; Wed,  5 Oct 2016 16:52:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66912E00547
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 16:52:08 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id cd13so150652pac.3
	for <yocto@yoctoproject.org>; Wed, 05 Oct 2016 16:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=H6NsbJVt6mebTz9X0t4Kn028TWece/VPXDi96qsA4Xo=;
	b=rWOod9TXKsvDyl7gnj/uIhT1H8Z4hbLYKVLygHvj60zMFv0TqavqTz3b9h6sPGdW6t
	notSPRE+SNpquupVvPwfEpY7+B1rkN3lW4vDbx/XfNyyKG+YRtPuoik/SOBzzTB5VvN5
	aRT04zQPU5exP9xxioLQlMXUo/T74lLVZ952UUjwdnJvB29LDuunOE7BCgNWiUis4dRR
	5cEJGoL7/W6d0d4a+UAVubbYvYDXqJppjl/2uaUHGzQZjoLVmp4AGVSZLl4bpl02NkED
	g1KZv3AFtZgHOIdLfyaKb5zdXQYjtCIUp0oVEHkUkPytv8Yxk+w7VT1m7p7Ek07zDhUM
	HEAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=H6NsbJVt6mebTz9X0t4Kn028TWece/VPXDi96qsA4Xo=;
	b=FV/izS6+O60hnr98Z6KC8DjmJT+B1O2J5ccV7M0nG6VCTskNliN23SF6Gbew9VoHOx
	le0Sx35DH08BKkdkgqsNKpg0SDTy9A8jw37sqW8b5bkDcN7qS2Xg6PjvarxVMKzJVM5l
	hgBmiqn8guHUeyoN8Bg3wVQ9egY/YoptXnUvT8aMzrHY3EWeD0NpXVgcGOv/J+Qjij4y
	teOdnzXKB1y/eYt+oicZnVKivL5nejNSlAtp4TcP0C0H4HOrpPaMlnNYyWdPprl+e0HZ
	lReZq5T1Tjag9INfXQ2YDjNmCAyO57ZRAmyFwW3w7QTXZaeCeW6bRkksR2nLptONyhth
	F8nQ==
X-Gm-Message-State: AA6/9Rk5TzspGlOpc4x5gjlljjDNLBiPkG7b7MJ9bBaZfFG3dsOK8UIXZ6IAgxL9tzPp9A==
X-Received: by 10.66.122.239 with SMTP id lv15mr17109820pab.192.1475711527518; 
	Wed, 05 Oct 2016 16:52:07 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:80cb:b789:7a19:7ecc?
	([2601:646:8882:b8c:80cb:b789:7a19:7ecc])
	by smtp.gmail.com with ESMTPSA id
	r12sm23728618pfj.82.2016.10.05.16.52.06
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 05 Oct 2016 16:52:06 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <A9CEB2A8-6D91-4DAA-9380-998669775326@stratagemsystems.com>
Date: Wed, 5 Oct 2016 16:52:05 -0700
Message-Id: <0DC30BE5-2A1D-43BE-BC15-DB8132E026B2@gmail.com>
References: <CAN+d=aScNFOQBaGXSCG+UGqpZ_hWzcAynrAAncgyXoW46ej6Mg@mail.gmail.com>
	<2E6C63C1-C4D3-4646-ADD4-62EBF047EA0F@sierrawireless.com>
	<A9CEB2A8-6D91-4DAA-9380-998669775326@stratagemsystems.com>
To: Randy Mortensen <randym@stratagemsystems.com>
X-Mailer: Apple Mail (2.3124)
Cc: Randy Mortensen <randy.mort@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: openjdk build fails due to checksum mismatches from icedtea-native
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
X-List-Received-Date: Wed, 05 Oct 2016 23:52:15 -0000
X-Groupsio-MsgNum: 32238
Content-Type: multipart/signed;
	boundary="Apple-Mail=_00093A3C-8EF3-43BC-96F7-B3180F310764";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_00093A3C-8EF3-43BC-96F7-B3180F310764
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 5, 2016, at 4:45 PM, Randy Mortensen =
<randym@stratagemsystems.com> wrote:
>=20
>=20
>> On Oct 5, 2016, at 5:04 PM, Darcy Watkins =
<dwatkins@sierrawireless.com> wrote:
>>=20
>> =46rom what I gleaned from recent discussions of fetcher errors, this =
is somehow connected with rollout of Python related security fixes to =
various Linux distributions and/or some ...-native recipes.
>>=20
>> It was a bunch of tar balls that are named as mercurial hashes from =
within iced tea rather than the yocto fetch. I worked around it by =
grabbing the tarballs from a different checkout since I didn't have time =
to dig into it.
>>=20
>> It affected a fresh checkout I was building from scratch.
>>=20
>>=20
> Thanks for the response. This also happened to me when trying to build =
from scratch.
> For my clarification, did you already have the tar balls downloaded or =
were you able to download them from a previous (icedtea) commit somehow?


Can you check if the tarballs have been rebuilt upstream ? if so we =
should try to find out what changed.
It could also be an oversight that a recipe update forgot or updated the =
checksums wrongly. but we should try to root cause it

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_00093A3C-8EF3-43BC-96F7-B3180F310764
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlf1kiUACgkQuwUzVZGdMxRKVACePn9NlkFpIAQq27VTW256Y7Ev
yMMAnRckCW/vmX3NlFEfhs0XHJS8U6lB
=Nl4C
-----END PGP SIGNATURE-----

--Apple-Mail=_00093A3C-8EF3-43BC-96F7-B3180F310764--
