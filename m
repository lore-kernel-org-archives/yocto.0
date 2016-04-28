Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6304FE00D9B; Thu, 28 Apr 2016 00:10:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E610E00D8D
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 00:10:34 -0700 (PDT)
Received: by mail-pa0-f43.google.com with SMTP id zm5so32108643pac.0
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 00:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=eYY6dU3lrzQoYt2MZMZrdyRl3cJ7fI+IkmMCEqjrD0U=;
	b=qWPNkpgyl8/v72T8ztblOsOdtHZGtNX41gJNaHLFyunEUrPsx7wtFukc+a/bIXFGwU
	IpBM0svaC8UsWt6pE1IepjaqRX25rYP39cTLEwWmqV4NteJ+WUi5njKtssfa+VAM83r+
	JpH0LZdtCGEiLZ+HYIfmGOEUh4/EhTbXMZlffkheKujtDM56PRhB5vwSY0mN7UCoon/5
	SyTFIrDGt403rtGA2qwX46mGsJQ5EDoK1HBkEEHCXfs6X+DMY1QvUbi3DUh+4edB3Ccl
	slA1rvaHqKLthpCqPjNpl23R4svo5G8QVJL8lmSGuCo+cJaC7HhzMK3dqtb5/a1d0AKr
	wdeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=eYY6dU3lrzQoYt2MZMZrdyRl3cJ7fI+IkmMCEqjrD0U=;
	b=GhA4PAGDSPHdoXTROUfcoEwU3lFtxsn7fbsEal+iSvNQy8xRCr0HO7hKf6AGkXQ84F
	qiB6eX8MzdRhtz3DrTFWc1+0NVk3eKUCEj4vxF8DvbmAK3qx5C3WveOQXw1zxnHxdcKw
	+tWOw3pn8maJWAK9Q8iEeE65KGdQq2TwT62OMMfH9TL5JrOd6rYW16W3lJCY5Jy8OPbP
	zKrPqUrWcxwr9Df9Z14T14lu8LjGaMASGS22zP1CfwqkomQvSfmDUoWKC78olFXhSvsr
	37cQLW8LIN0NxoK6ab/wmFSf1Ry+lpPmpbqMx3yUSgqIIrRIlSwpOTrZiYSqh4nS2nax
	R8MA==
X-Gm-Message-State: AOPr4FXRWDE7/hL5UOOmc/92D600hnuPB6P64nEujoem5Ac5AibGGRFXcuO55gL+YscagQ==
X-Received: by 10.66.140.17 with SMTP id rc17mr3075858pab.129.1461827434721;
	Thu, 28 Apr 2016 00:10:34 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:7c73:e571:eae0:530b?
	([2601:646:8800:5a9a:7c73:e571:eae0:530b])
	by smtp.gmail.com with ESMTPSA id e7sm5038954pfa.28.2016.04.28.00.10.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 28 Apr 2016 00:10:33 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <246f9c39-736b-7ed6-b69a-69d8c4369236@windriver.com>
Date: Thu, 28 Apr 2016 00:10:32 -0700
Message-Id: <B59F2ADC-CB7F-44CF-9AD7-AD779FC2EEC9@gmail.com>
References: <B1D22563-F31B-4EF1-90D6-16EB391134D5@gmail.com>
	<CACS+7ZSpWgziO+GF++25dM7kgP4SZ_GDV+-DcEMQ_YUGyEEnfQ@mail.gmail.com>
	<CAMKF1spQn114r9dCAk9z7c3hw-NJp3pVoVP+f3gao2mhLTBHYg@mail.gmail.com>
	<CAMKF1spwimpQwSE38B5jWmyZXwMKy6znMEF9p-NmTM4mGGr+4g@mail.gmail.com>
	<CAJTo0Lb25x1H44nGn05d6qBVLDpyiaZ3XW40fdrAWcP_D+qYwg@mail.gmail.com>
	<CAJTo0LZZ3Hs_yrm5ceik4j8Orv-UQ9T72Wu=R_PCRKw4Y9-WCw@mail.gmail.com>
	<CAMKF1sozR3_Mhy5PKSaKCo7S2yHrtLzTNrUURFhN38gV0AbkYQ@mail.gmail.com>
	<246f9c39-736b-7ed6-b69a-69d8c4369236@windriver.com>
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
X-List-Received-Date: Thu, 28 Apr 2016 07:10:37 -0000
X-Groupsio-MsgNum: 29692
Content-Type: multipart/signed;
	boundary="Apple-Mail=_48E3F51E-6CB1-41E8-ACCA-7DA3DE6B9C83";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_48E3F51E-6CB1-41E8-ACCA-7DA3DE6B9C83
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


> On Apr 27, 2016, at 11:06 AM, Mark Hatle <mark.hatle@windriver.com> =
wrote:
>=20
> On 4/27/16 12:53 PM, Khem Raj wrote:
>> thanks I think most of them come to these categories. So any help in
>> fixing them is welcome.
>>=20
>> 1. kernel older than 4.4, backport needed fixed into these branches =
or
>> move to newer kernels.
>> 2. uboot dont have gcc6 compiler header files, backport the needed =
fixes
>> 2. meta-qt4 needs to use gnu++98
>> 3. gcc6 providing its own stdlib.h in libstdc++
>> 4. gcc6 swtiching to gnu++14 for C++ as default.
>> 5. GPLv2-only versions of recipes are simply old will need fixing
>=20
> =46rom a -very- brief look, I suspect each of these fixes will be =
fairly simple.
> So as we move into the next oe-core phase, we should be able get =
through this
> pretty quickly.

I think yes, they are trivial, except the GPL-2.0 packages which might =
need patching


--Apple-Mail=_48E3F51E-6CB1-41E8-ACCA-7DA3DE6B9C83
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlcht2kACgkQuwUzVZGdMxQTcACbBE4sxSG+TKbhvShbeyl8GbSd
5t4AnjieTP1KF3VDbFWSj1TMwcr6548s
=TCWD
-----END PGP SIGNATURE-----

--Apple-Mail=_48E3F51E-6CB1-41E8-ACCA-7DA3DE6B9C83--
