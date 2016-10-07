Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E46CE00AAB; Thu,  6 Oct 2016 19:35:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.181 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3819BE00A85
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 19:35:22 -0700 (PDT)
Received: by mail-pf0-f181.google.com with SMTP id e6so17358627pfk.1
	for <yocto@yoctoproject.org>; Thu, 06 Oct 2016 19:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=zeEQ3eisu4scb+rI1nQwHICgFVQ5+gjFnVaVCAhuuEw=;
	b=B59vIJ2D4cUF+W4Bn2s3rp3liLvuvs5KkQu8Ult5pKrgQaT92/+5P9jiLJswbxyXzD
	fe3NFj0eU1S5ngXodBGs2qtiF9ap80xofPjmlzvG5ViZOSEEJ6ZlBjAxDe5jRyrkyUtE
	oAn85Z9G/rY19Yp6GA5ioawC/6kcBuePRr8hSxL04iOdZVHx6U0QztoxoAr+FwNg1rCY
	Dj/cuttIaMY4DnzUwudi2gd8WntvDwnpsk/6cIy0N8MdpYH1mlR3dDbgN7py/kjU5cow
	yI9+SmNo5vqd7ouGwiaf4DYeYEy0wAHxxz680Lz/yJlx+E9RsYDFBC4JfEy91qOkLQfj
	Reow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=zeEQ3eisu4scb+rI1nQwHICgFVQ5+gjFnVaVCAhuuEw=;
	b=ax/58kjuBMswqppV2mTWEvZpXIKSRSSKirCN65aJiIbKcxuCmYq2IOlB9xfG9Sk3aT
	NIt9s1/P9gz+How+GQWoUhe59BCQY0UPStdbadY1V6WLFj3IPB/wbJZmZSlc0/Wl/dBB
	x1Ffr4WDhf0Npv36jIP+TGAzXG1gBMtszdLpKMaoDMrI1s1uQkm4FZULNIp+YQJOxXUB
	RVdaZ0k7NoRNPkUkC1Fvd0ZegQ7dLom3D2E7pa5ULwJuEphhilMUBtT/x5xzuCRzLyf1
	QDKAVclhSEf2/q7ccixxYpEUTSe5+KGKKkb45QTnvC/PgHNZY3YCJG90mbJxKxusRhId
	ZxLg==
X-Gm-Message-State: AA6/9Rk0zKbU3yobI0CqEUtwHD83yn4x5UCCIbcXpHK+QBe0EStsoywHyzPFcdiOXF3yuA==
X-Received: by 10.98.32.209 with SMTP id m78mr24105178pfj.45.1475807721665;
	Thu, 06 Oct 2016 19:35:21 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:cd9d:6261:adca:4b85?
	([2601:646:8882:b8c:cd9d:6261:adca:4b85])
	by smtp.gmail.com with ESMTPSA id
	y126sm8986464pfy.41.2016.10.06.19.35.20
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 06 Oct 2016 19:35:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <A7265EA8-CB91-4D1B-987B-6FE4EBE52417@gmail.com>
Date: Thu, 6 Oct 2016 19:35:14 -0700
Message-Id: <FB4B6E4F-AA20-4156-958E-EB1C80F3726D@gmail.com>
References: <CAN+d=aScNFOQBaGXSCG+UGqpZ_hWzcAynrAAncgyXoW46ej6Mg@mail.gmail.com>
	<2E6C63C1-C4D3-4646-ADD4-62EBF047EA0F@sierrawireless.com>
	<A9CEB2A8-6D91-4DAA-9380-998669775326@stratagemsystems.com>
	<0DC30BE5-2A1D-43BE-BC15-DB8132E026B2@gmail.com>
	<C0308C46-B222-46A6-BF18-90D853C7B627@sierrawireless.com>
	<A7265EA8-CB91-4D1B-987B-6FE4EBE52417@gmail.com>
To: Randy Mortensen <randy.mort@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 07 Oct 2016 02:35:23 -0000
X-Groupsio-MsgNum: 32260
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A29C1004-5472-43E4-BA07-E340E082D630";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_A29C1004-5472-43E4-BA07-E340E082D630
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 6, 2016, at 7:07 PM, Randy Mortensen <randy.mort@gmail.com> =
wrote:
>=20
>=20
>> On Oct 5, 2016, at 7:14 PM, Darcy Watkins =
<dwatkins@sierrawireless.com> wrote:
>>=20
>>=20
>>=20
>>> On Oct 5, 2016, at 4:52 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>> On Oct 5, 2016, at 4:45 PM, Randy Mortensen =
<randym@stratagemsystems.com> wrote:
>>>>> On Oct 5, 2016, at 5:04 PM, Darcy Watkins =
<dwatkins@sierrawireless.com> wrote:
>>>>>=20
>>>>> =46rom what I gleaned from recent discussions of fetcher errors, =
this is somehow connected with rollout of Python related security fixes =
to various Linux distributions and/or some ...-native recipes.
>>>>>=20
>>>>> It was a bunch of tar balls that are named as mercurial hashes =
from within iced tea rather than the yocto fetch. I worked around it by =
grabbing the tarballs from a different checkout since I didn't have time =
to dig into it.
>>>>>=20
>>>>> It affected a fresh checkout I was building from scratch.
>>>>>=20
>>>> Thanks for the response. This also happened to me when trying to =
build from scratch.
>>>> For my clarification, did you already have the tar balls downloaded =
or were you able to download them from a previous (icedtea) commit =
somehow?
>>=20
>> I had the tar balls in a different build that I had around for some =
time.  The reason I never cached these ones in a shared location on our =
server was I felt that tar balls with small hashes as filenames was too =
prone to collisions, especially without a package name as a prefix.  I =
don't know if that is a convention of iced tea, or how the fetcher =
handles mercurial.
>>=20
>>> Can you check if the tarballs have been rebuilt upstream ? if so we =
should try to find out what changed.
>>> It could also be an oversight that a recipe update forgot or updated =
the checksums wrongly. but we should try to root cause it
>>=20
>> I agree here.  We should root cause it.
>>=20
>>=20
> I=E2=80=99m not sure how this is all supposed to work, but I managed =
to get past the fetch failures by changing the md5sum and sha256sum =
checksums in icedtea7-native_2.1.3.bb.
> I used the the checksums helpfully suggested by bitbake when it =
reported the errors.
>=20
> I compared one of the problematic tar balls with a =E2=80=9Cgood=E2=80=9D=
 one from a previous download and the only change I could identify was 3 =
extra lines added to a hidden file .hgtag  (which I presume maps a tag =
to a commit). Not sure why requesting the same hg commit results in a =
different tarball output.
>=20

could it be that its generating the tarballs from mercurial directly and =
thats flawed somehow ?


> Now however iced tea fails to configure due to checksum errors. The =
configure task seems to re-download each tarball and check the sha256sum =
which is failing.
>=20
> I=E2=80=99m not sure where to go from here to try and resolve so any =
more help is welcome.



>=20
>=20


--Apple-Mail=_A29C1004-5472-43E4-BA07-E340E082D630
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlf3CecACgkQuwUzVZGdMxSTBwCeOZrrTS14KKGGa0ZKJmjA9E/e
NZ4Ani+SSr1SXCOu6fjvkgmT0Hfl/XXh
=qBs8
-----END PGP SIGNATURE-----

--Apple-Mail=_A29C1004-5472-43E4-BA07-E340E082D630--
