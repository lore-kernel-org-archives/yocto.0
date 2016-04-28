Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83A61E00D9B; Thu, 28 Apr 2016 00:08:55 -0700 (PDT)
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
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1508DE00D8D
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 00:08:53 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id bt5so28767428pac.3
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 00:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=3hY132L/JAGNlvSpFaj0RAV4Ep4qsBHsw00XTskuFMU=;
	b=eAty2ICHuwlpDpq7Lqrxj+RdRJvqnEoJ/WSlqIOtm7B7OYAF+11fGJP/d/Zsq8O5MT
	QysjpEhqdkCYZIjwy4WWujBVcydQ/DFSjS3MD73k77gWf8+j5zN2yLgWD4IBOo3vEcnL
	NlFJVhP9JgDeeJO5DP1uUrJt0mja47AeSwKNpZK3R1vc0gopUn1TD+3mZ2br/90fYeN8
	ID6aGq1Bic57/sp6QUlDqOEWmRHMHE0c5pqMEiOsFmBiNQrJ7cr+k2UtJs1rI3o+VdKn
	A9cFUXODd8sogCzkuRKOabMfmTR6E8qX4/qTgIbri9hnUZbb1Zzb8Su7qSf1SFUXBag8
	Ws0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=3hY132L/JAGNlvSpFaj0RAV4Ep4qsBHsw00XTskuFMU=;
	b=kUSU0xJW6pW8KXlaqkJ5yKwAu+fBV5j8gKQfnRmWCJBN2yHsaZdv0GeGI5zthptvUU
	oczviXsIkrvWtg0EWAZRh4q1sNb3Cmb/kfJA1+MHPFQsB6Q2YNieTonKuUpd5+9MLsbf
	cC4xRgODEJfkZXyW+qhN0dfdf3Japp+j/HjPjeLeXX/Ni5ErRZ3RoxQ7T63JIbhRU6wM
	lXeP8x2sFG/FVBHP4Es0nXsRzoV+7XfXqLRLJffgV6JOVb9yvTkxZ0o1aRgywIqtW/qu
	84G5xJq2blk41mGqJjwOd9vQwoI/ua+Ihr3cDn9EFOQNcQ0BvRp56gVbk80iVt2Zmt9J
	G+2A==
X-Gm-Message-State: AOPr4FWu4fUH7ZQRCSvc+hsPHPJ1cczRKt3meuA/q2LdjFlCXX9TNMpmuaeRJ/LNI7fyBw==
X-Received: by 10.66.153.209 with SMTP id vi17mr18187357pab.0.1461827333100;
	Thu, 28 Apr 2016 00:08:53 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:7c73:e571:eae0:530b?
	([2601:646:8800:5a9a:7c73:e571:eae0:530b])
	by smtp.gmail.com with ESMTPSA id
	71sm11995560pfy.32.2016.04.28.00.08.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 28 Apr 2016 00:08:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20160427221005.GA19598@bill-the-cat>
Date: Thu, 28 Apr 2016 00:08:46 -0700
Message-Id: <403123E7-85F1-4CBF-9D6C-E6377B89D5EA@gmail.com>
References: <B1D22563-F31B-4EF1-90D6-16EB391134D5@gmail.com>
	<CACS+7ZSpWgziO+GF++25dM7kgP4SZ_GDV+-DcEMQ_YUGyEEnfQ@mail.gmail.com>
	<CAMKF1spQn114r9dCAk9z7c3hw-NJp3pVoVP+f3gao2mhLTBHYg@mail.gmail.com>
	<CAMKF1spwimpQwSE38B5jWmyZXwMKy6znMEF9p-NmTM4mGGr+4g@mail.gmail.com>
	<CAJTo0Lb25x1H44nGn05d6qBVLDpyiaZ3XW40fdrAWcP_D+qYwg@mail.gmail.com>
	<CAJTo0LZZ3Hs_yrm5ceik4j8Orv-UQ9T72Wu=R_PCRKw4Y9-WCw@mail.gmail.com>
	<CAMKF1sozR3_Mhy5PKSaKCo7S2yHrtLzTNrUURFhN38gV0AbkYQ@mail.gmail.com>
	<20160427221005.GA19598@bill-the-cat>
To: Tom Rini <trini@konsulko.com>
X-Mailer: Apple Mail (2.3124)
Cc: Yocto Project <yocto@yoctoproject.org>,
	OE Core mailing list <openembedded-core@lists.openembedded.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 6 Recipes
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
X-List-Received-Date: Thu, 28 Apr 2016 07:08:55 -0000
X-Groupsio-MsgNum: 29691
Content-Type: multipart/signed;
	boundary="Apple-Mail=_9996E5F6-1EC4-4693-8A7D-3882C063CFF0";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_9996E5F6-1EC4-4693-8A7D-3882C063CFF0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Apr 27, 2016, at 3:10 PM, Tom Rini <trini@konsulko.com> wrote:
>=20
> On Wed, Apr 27, 2016 at 10:53:52AM -0700, Khem Raj wrote:
>> thanks I think most of them come to these categories. So any help in
>> fixing them is welcome.
>>=20
>> 1. kernel older than 4.4, backport needed fixed into these branches =
or
>> move to newer kernels.
>> 2. uboot dont have gcc6 compiler header files, backport the needed =
fixes
>=20
> 9b2c282b348dfe966bbba967dc7a45ce817cce50 from mainline.
>=20
>> 2. meta-qt4 needs to use gnu++98
>> 3. gcc6 providing its own stdlib.h in libstdc++
>> 4. gcc6 swtiching to gnu++14 for C++ as default.
>> 5. GPLv2-only versions of recipes are simply old will need fixing
>>=20
>> I will take a stab at fixing the nativesdk recipes which is mostly =
due
>> to stdlib.h issue.
>=20
> Please do, I'd like to see some SDKs so I can get more U-Boot testing
> done with gcc-6 :)
>=20

I have pushed couple of more fixes which should now fix the nativesdk =
issues and SDKs should be building

Tree is here. Let me know how it goes.

http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dkraj/gcc-6

and also to github

https://github.com/kraj/openembedded-core/tree/kraj/master

--Apple-Mail=_9996E5F6-1EC4-4693-8A7D-3882C063CFF0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlchtwMACgkQuwUzVZGdMxTRxQCeJQqXvEq4+19tUZJ8JEjL3DLH
v6QAn199pD+6ApzCiIfMu52I9ZSK8Ypm
=uR5z
-----END PGP SIGNATURE-----

--Apple-Mail=_9996E5F6-1EC4-4693-8A7D-3882C063CFF0--
