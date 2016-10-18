Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E896E00C18; Mon, 17 Oct 2016 18:03:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DB5EE00AF2
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 18:03:20 -0700 (PDT)
Received: by mail-pf0-f180.google.com with SMTP id r16so61851886pfg.1
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 18:03:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=nvwqFl1pKS7VqjRwRV8Ls11slUofvLp/L5ot/IsgEGo=;
	b=gLAvcgrA1XOE70VZZzfBfvATaf+/waRUCPbGy5es94vherm4DNI1MewEJxDZhl58lj
	vW24Haz6FFzgC0xO0SmhzoRuM38jBpcfZv/v3LcMT1O7DqCACrb/aqr8Tc+4aL/xIs3e
	YGmESxklHxd8fxvu0xyCs5q1ZgxEQ9ZazJlTbW2EcwuTbMbGepRnil6Sm4o3ITvU0+Zp
	okytuff30pD4Air/oRUJqWb6Djz6EUE+9PKZWyGnKgfORXOIFx7aC5Heo7kFjTFWPoNP
	Q1Of4UNqzhnLOxAHE730vji9PE9jRgY7zkjhFesbOPX/pGO4NTmbdk4qSg93fkK5s1ih
	5Bxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=nvwqFl1pKS7VqjRwRV8Ls11slUofvLp/L5ot/IsgEGo=;
	b=LVxyKqWFdiZdrR8W71+3zLuWNlNRnOPl3431PCg18SvK/k8WG0u4maKvKxXoPkQubR
	ZqjLaVuaPEUdPvkD5Qj+GjOyU4jdccslAM3v/Z/fYXpWvBO6ZjMZHFnCjpeWR1Q7yFfn
	Xfnmf7P+KLtL9E0VuHwaojHo/amA4x7bFevSNLSi1Y1WMPG2OED/TbLVZ29JKnVwY+QH
	5S93jEntGBuQ+pmud2aF3tiUhNnMQbYAE4OI4q+n0Zimwg3dHQ9BtGM0iZjxppkvwzay
	XqLcYgbHxshp8M4yzMCVm+/d+IO5ncbj+B6jVu2EI9+eNnhHJeAdVkpzokrV5eBhYW3i
	0giQ==
X-Gm-Message-State: AA6/9Rl7Yr5gYIhdXQCbwjskvVO6CQUHq5hgd0NKkqCtJBDYC6BeVWEdcukP6otX3SHoSQ==
X-Received: by 10.98.112.195 with SMTP id l186mr415915pfc.35.1476752599942;
	Mon, 17 Oct 2016 18:03:19 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:ec00:906:f8cb:31c1?
	([2601:646:8882:b8c:ec00:906:f8cb:31c1])
	by smtp.gmail.com with ESMTPSA id
	dj3sm40156898pad.1.2016.10.17.18.03.19
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 18:03:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAJ58UNnx3UwYdCQPBt2P_xmeVsnaNFPnCbr3LBPGdos62DC4uw@mail.gmail.com>
Date: Mon, 17 Oct 2016 18:03:13 -0700
Message-Id: <D250A379-04BF-49DB-99B0-3FFF6C02A15C@gmail.com>
References: <CAJ58UNnx3UwYdCQPBt2P_xmeVsnaNFPnCbr3LBPGdos62DC4uw@mail.gmail.com>
To: Vijayakumar Badiger <vijayakumarmb@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yoctoproject <yocto@yoctoproject.org>
Subject: Re: Error during configuration.
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
X-List-Received-Date: Tue, 18 Oct 2016 01:03:24 -0000
X-Groupsio-MsgNum: 32482
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B3DF32AF-E6DC-4ED1-9DD4-4E7DA0A11AC1";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_B3DF32AF-E6DC-4ED1-9DD4-4E7DA0A11AC1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 17, 2016, at 5:57 PM, Vijayakumar Badiger =
<vijayakumarmb@gmail.com> wrote:
>=20
> Hello All,
>=20
> I am getting an error while doing configuration. I see many people =
have got this error, but I don't see any full threads mentioning how the =
issue got fixed.
> Please someone help to me fix this issue.
>=20
> I am attaching the logs for your reference.
>=20
> configure:12619: aarch64-poky-linux-g++  =
--sysroot=3D/local/mnt/workspace/LV-kerneltest/poky/build/tmp-glibc/sysroo=
ts/msm8996 -qversion >&5
> aarch64-poky-linux-g++: error: unrecognized command line option =
'-qversion'
> aarch64-poky-linux-g++: fatal error: no input files
> compilation terminated.

This is not your error actually. The real error is

configure:16457: error: bad value =
'/local/mnt/workspace/LV-kerneltest/poky/build/tmp-glibc/work-shared/msm89=
96/kernel-build-artifacts' for --with-kernel; cannot find =
'/local/mnt/workspace/LV-kerneltest/poky/build/tmp-glibc/work-shared/msm89=
96/kernel-build-artifacts/Makefile'


so it seems your recipe has dependency on kernel but its missing in =
DEPENDS section of recipe.

>=20
> Cheers,
> Vijay
>=20
> <config.log><log.do_configure.23174>--
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_B3DF32AF-E6DC-4ED1-9DD4-4E7DA0A11AC1
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgFdNYACgkQuwUzVZGdMxQpjgCfQnx0+2dj7jJ6O/QmnUM+neOj
3zEAn16WxFK9uJ5a5pvC4qHkmO2S/7iC
=sGYE
-----END PGP SIGNATURE-----

--Apple-Mail=_B3DF32AF-E6DC-4ED1-9DD4-4E7DA0A11AC1--
