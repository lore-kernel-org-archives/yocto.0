Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4554BE00DDC; Thu, 28 Apr 2016 08:29:37 -0700 (PDT)
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
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C0B7E00DD9
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 08:29:36 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id 77so2486667pfv.2
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 08:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=Si73L8jxKSngTfPBfCjkOevGU5HaTlaBSCFVwpR8NbA=;
	b=UJ+NNBHwydg2X8p6XkCk3qv2FxmOISSRfPHj8Lljr+T2gsl70sFFd7GSNTgWdN6+eY
	RroWslQp3+zWjZqzV4IsJPQJhHr8RCFWUe71CyA/Ad5XxqS9QyLw9MaLwKS1PP6J3kzS
	LgSwDq3PefZSYsm1AzugYCB6C0Z+F29C/eEAUrVW0wGyer0Q7Ndv3S6wMmKNGeOcRerb
	DakvpI3urqvJps+Knmze7zP6xmVLofGQnz5tynzb/II3pnuEnm638oaiTlsePWntLZ6n
	Vwbjh9YxpM4IJFECmPo3zcPSR4Vxca39HTEnq9/0YXWRpyTAUVm4856MF/rta9jS/QqC
	2iSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=Si73L8jxKSngTfPBfCjkOevGU5HaTlaBSCFVwpR8NbA=;
	b=J83mW9wALEMBtuGU3TzHabGnLcLa5g4pSEhmqML1AoFdlQ/TzrqUln1nYfQyXECZcl
	9PyK4zXbh80P7/gNMS/58RJUO1pMOZqT/snsQTDrD/vFz0Ho/nf8XTp5n6O7Hh1tvl1g
	mE6VJePxmhnYsxybGmfysERn5bwL1eSUULWCe4G491lOoF4o7rqY+7YWYO6D5teKFit3
	JC9d6IY7v1fPFdzDITQ/E/V1DCLpR/PrE725dGFCp2Z41tTQCOmdYVokWK0W7lmzSBzr
	ejgm29DZm+PHdNpk2cXK0GxKiscnfk/QRv8An1q6/fWul26TRNjSg/2mgDdMcOZsJ1FG
	xuAA==
X-Gm-Message-State: AOPr4FUK0Fo9dxE0UgPGUCoBgrg6+sUI3w7qsigXDLcCcBWCq5Hay8mGr7Q/q5CqiSuyhA==
X-Received: by 10.98.80.150 with SMTP id g22mr21404098pfj.132.1461857375916;
	Thu, 28 Apr 2016 08:29:35 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:7c73:e571:eae0:530b?
	([2601:646:8800:5a9a:7c73:e571:eae0:530b])
	by smtp.gmail.com with ESMTPSA id
	x64sm15952038pfx.95.2016.04.28.08.29.34
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 28 Apr 2016 08:29:35 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <748495f9-7383-ce65-a41b-7343aa1c6004@windriver.com>
Date: Thu, 28 Apr 2016 08:29:30 -0700
Message-Id: <2D704C56-775E-4E1A-BFBD-0C14455EFE1A@gmail.com>
References: <B1D22563-F31B-4EF1-90D6-16EB391134D5@gmail.com>
	<CACS+7ZSpWgziO+GF++25dM7kgP4SZ_GDV+-DcEMQ_YUGyEEnfQ@mail.gmail.com>
	<CAMKF1spQn114r9dCAk9z7c3hw-NJp3pVoVP+f3gao2mhLTBHYg@mail.gmail.com>
	<CAMKF1spwimpQwSE38B5jWmyZXwMKy6znMEF9p-NmTM4mGGr+4g@mail.gmail.com>
	<CAJTo0Lb25x1H44nGn05d6qBVLDpyiaZ3XW40fdrAWcP_D+qYwg@mail.gmail.com>
	<CAJTo0LZZ3Hs_yrm5ceik4j8Orv-UQ9T72Wu=R_PCRKw4Y9-WCw@mail.gmail.com>
	<CAMKF1sozR3_Mhy5PKSaKCo7S2yHrtLzTNrUURFhN38gV0AbkYQ@mail.gmail.com>
	<246f9c39-736b-7ed6-b69a-69d8c4369236@windriver.com>
	<B59F2ADC-CB7F-44CF-9AD7-AD779FC2EEC9@gmail.com>
	<748495f9-7383-ce65-a41b-7343aa1c6004@windriver.com>
To: Mark Hatle <mark.hatle@windriver.com>
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
X-List-Received-Date: Thu, 28 Apr 2016 15:29:37 -0000
X-Groupsio-MsgNum: 29727
Content-Type: multipart/signed;
	boundary="Apple-Mail=_BDF74206-D697-4F7D-B23D-82FBB4BB27F7";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_BDF74206-D697-4F7D-B23D-82FBB4BB27F7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


> On Apr 28, 2016, at 8:19 AM, Mark Hatle <mark.hatle@windriver.com> =
wrote:
>=20
> On 4/28/16 2:10 AM, Khem Raj wrote:
>>=20
>>> On Apr 27, 2016, at 11:06 AM, Mark Hatle <mark.hatle@windriver.com> =
wrote:
>>>=20
>>> On 4/27/16 12:53 PM, Khem Raj wrote:
>>>> thanks I think most of them come to these categories. So any help =
in
>>>> fixing them is welcome.
>>>>=20
>>>> 1. kernel older than 4.4, backport needed fixed into these branches =
or
>>>> move to newer kernels.
>>>> 2. uboot dont have gcc6 compiler header files, backport the needed =
fixes
>>>> 2. meta-qt4 needs to use gnu++98
>>>> 3. gcc6 providing its own stdlib.h in libstdc++
>>>> 4. gcc6 swtiching to gnu++14 for C++ as default.
>>>> 5. GPLv2-only versions of recipes are simply old will need fixing
>>>=20
>>> =46rom a -very- brief look, I suspect each of these fixes will be =
fairly simple.
>>> So as we move into the next oe-core phase, we should be able get =
through this
>>> pretty quickly.
>>=20
>> I think yes, they are trivial, except the GPL-2.0 packages which =
might need patching
>>=20
>=20
> Ha, actually that was what I was referring to.  The couple I looked at =
seemed to
> be trivial.. :)

yes they are just the fact that compiler has gone stricter compliance =
with standards compared
to when code was written. In worst case we might downgrade -std for =
these recipe but that
may not be enough in some cases
>=20
> If someone doesn't get to it first, I expect some of my guys will in =
about a month.
>=20

OK cool. I think we should make it merge worthy and get it early into =
master and fix the fallouts


> --Mark


--Apple-Mail=_BDF74206-D697-4F7D-B23D-82FBB4BB27F7
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlciLF0ACgkQuwUzVZGdMxTTWgCff6MZthKDGvmigvquBtFre8x/
oIcAnjzUq+24lF/U1rpSosh0G2O9b6Zo
=/FwU
-----END PGP SIGNATURE-----

--Apple-Mail=_BDF74206-D697-4F7D-B23D-82FBB4BB27F7--
