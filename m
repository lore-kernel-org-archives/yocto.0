Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E849E00A21; Sat, 18 Feb 2017 19:49:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D2BDE009F8
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 19:49:40 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id a123so5747760pgc.3
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 19:49:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=mTiP9GzczAqBzR6s796TOui+AhAzFSm65F1czGj1wHQ=;
	b=DMn3jUvOfb9Irbm/svEtWMI00YRmVPC8zo9RxGVfK+qvdirHozfv22wzAxZsgZ3YJW
	2lbFl1xJnX5PziQDK6sNES1vp7FbioMuf6/Ao0/xJw4PPpQ1jo8xorNcMCmHIr5NXYg3
	VAWj7diQSbLLoawN/05vYKsQY2riwrU9k/UfWv9YdagvJbGAakL5qjyhDFBGtEVWJwvv
	2uQ3ff8HR7aSbbTat5u/fp7Kv186Bjfi/IK/n/LUNlZaQ4Emdu2tLMjm1425C2+/nYfd
	cxZMjGbyYN3yuhYFlEDgNMtSofsnzh9EzOpgZkiMj9LvQd76YeGUe3f8XTyU8XXDCgA6
	bvHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=mTiP9GzczAqBzR6s796TOui+AhAzFSm65F1czGj1wHQ=;
	b=i+ESq9eS5OjEfLgBFjsjTJltwdVwqbrnqHUmbbnjs2nh0BvQdKrY/1j6ZPjE5To3oQ
	JAKnPsZb4MlnCYVWc/j9h7alfHhq6aUOfvdUpgj/f863jZUipJe+F+MMqvVEiaJEcPZe
	PbNi4/7TMx2/hFLo7NcWCScS2dwQ6IAvFp4Mpgnf/pn6pK61nR+hc0pxdwgDTFeD8H83
	7JzjDhBZUNBPKcV/TELMMTkq0xyBZcD8sKVeuv0w6CSupYjE2m70/Ex9hVJM5F7iNrRK
	l/8BGJTqh1NSz2V+UjOhlBWHg1Dbpv+DeHrRRZRC1lHCibQAHg0ixPrYDHEgqs6nezUC
	ROPw==
X-Gm-Message-State: AMke39mtziHxQTYKBPKOipishpSR67bDGifbsKuXDGQ/XTA3+MD81cmlcdBMF68aXNaxHQ==
X-Received: by 10.98.10.216 with SMTP id 85mr3798891pfk.3.1487476180339;
	Sat, 18 Feb 2017 19:49:40 -0800 (PST)
Received: from carbonA (c-73-109-7-33.hsd1.wa.comcast.net. [73.109.7.33])
	by smtp.gmail.com with ESMTPSA id
	b74sm27363365pfc.129.2017.02.18.19.49.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 18 Feb 2017 19:49:39 -0800 (PST)
Date: Sat, 18 Feb 2017 19:49:30 -0800
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170219034930.GA6680@carbonA>
References: <20170218195101.29116-1-paul@paulbarker.me.uk>
	<CAMKF1sr3_rtYKnTaC5JcGKauFTdzKr6CLHm4TfxX=P7CAMjPdg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sr3_rtYKnTaC5JcGKauFTdzKr6CLHm4TfxX=P7CAMjPdg@mail.gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH RFC 0/3] Use AUTOREV in linux-raspberrypi_dev
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
X-List-Received-Date: Sun, 19 Feb 2017 03:49:43 -0000
X-Groupsio-MsgNum: 34594
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="17pEHd4RhPHOinZp"
Content-Disposition: inline

--17pEHd4RhPHOinZp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Feb 18, 2017 at 06:56:18PM -0800, Khem Raj wrote:
> On Sat, Feb 18, 2017 at 11:50 AM,  <paul@paulbarker.me.uk> wrote:
> > From: Paul Barker <paul@paulbarker.me.uk>
> >
> > This is currently an RFC as I'd like some input from Khem and anyone else
> > interested in this before these patches get merged.
> >
> > The hope is that by using AUTOREV we won't have to update the _dev recipe so
> > frequently in the future.
>
> for dev I am fine with it.

Looks good for me too.

>
> >
> > The third patch depends on a change not yet committed to oe-core. Please apply
> > the following patch if you'd like to test this:
> >     http://lists.openembedded.org/pipermail/openembedded-core/2017-February/132499.html
> >
> > Paul Barker (3):
> >   linux-raspberrypi_dev: Use AUTOREV
> >   linux-raspberrypi_dev: Allow branch override
> >   linux-raspberrypi_dev: Disable version sanity check
> >
> >  recipes-kernel/linux/linux-raspberrypi_dev.bb | 11 ++++++++---
> >  1 file changed, 8 insertions(+), 3 deletions(-)
> >
> > --
> > 2.11.0
> >

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--17pEHd4RhPHOinZp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlipFcoACgkQJrqo2vax
FPbjRg/8CI4BONc2NfvYxZAA7HegBe0/tvHz4A0AWHWTQLVMBt0H/jWzZ3QC09ct
Y5UdUKGlFPvwFwU0o2DwIyriLZVgTfWKs3Yxqt/W+scdUwu1b73UTOarom3US3HH
kt5Aj8t3TmWAC27ek0o3NwcKFCbtWZsS+A9Q2LkA4xeFgGCCXHYPM4R0WIxMDSTE
KLgMAmAjAYT/AV3BACh4hBMTN/uIu1uMrw1YfLg/ashJ+oXxASeF+v+XZFLSufj3
mKGupLAx4s2Zxe5Vdf2aDXD6IW2ux3rGRBxpZWr5qKmyJgGjaMNQv1Nwv0uk0Ejh
8xkImmLEFl2izX0HK4MuC53GFEwW9YAnCsTFVAPP/XtncNUmuLUVwLQh6ap9Mr1D
ujcA10eZ6DBrI7Zo9yHiuU3wy5aZqo1qFSW2d+1/PyU4BJEtyIlsmbxxxnwtnLxA
QCBUSG0DSy6iDei/yxqdHj7+Q85F8kRh8X/9j6h8QbC2ys4g5nzCr2ul/t5D3Kru
x0n6Fh8iV+UBWqRLcDxKTMiCYM1Kk9/pq57SyKATdzas0oK1hBXafktAl1t9cQa9
ip1qCBYcF5i4XO4kwjejaX8totb9y7fnYZgQQWitRcm8YpurwSlJtOMBn2pQuM9/
xYFjyes7Eb91pQaoYM3mGqDp6x7s+ok1CHSkp3TwnifPkyBhSCE=
=dBc/
-----END PGP SIGNATURE-----

--17pEHd4RhPHOinZp--
