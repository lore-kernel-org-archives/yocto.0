Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1459E0079D; Tue,  6 Dec 2016 10:11:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A731E00571
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 10:11:13 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id u144so22991756wmu.0
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2016 10:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=KhQwpDLXZEixftTxT1IpAJCfLtbwB5XO6xdo5OFgpr4=;
	b=QFShB0z0oLZxreHZyL1R6bVz0zFFfhOGn7JQEpriO7Frn7ZSCrSscdLhwgSI9+O6/j
	v4p8O19CShVLG/S0w4jM0z9AeiRu76Z1U4iDgL6ncN+VxcnSo5Alb97/Ne4D21XEEnvy
	2q7CkjuwvDlP5Gll1SJ3FO01O9agWjtzxiQXbNkwi+AZC5pAARlzsiUzJj+wTBvLl1E6
	U/YcdYB27tb2m5jwmDB+ll32ZwdcdYaO/JAYY3lyAQW0fEWb5Lz+J9IcEGeh1Hc9s69o
	EocHV1Q7V+Ebt6ymc043HwOZ0pLO13BMW0MHl10ewzs2XHVYPMo/4aKQ1Fyzmsgut0z+
	h24g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=KhQwpDLXZEixftTxT1IpAJCfLtbwB5XO6xdo5OFgpr4=;
	b=mHnmJo+FdEx15qEwWfLNn3+g+VsL9n7Aihlouy0vk8X55DrhlVDb22dArnZGZj94fZ
	RhbBq+xUF89s2ZzVw3u0HIbxndSbS9902f0215eg8led/BkTS/7p8WMNmFFYn14yZ/ic
	QyDBYnjpG9mFz5qwCpe65CdG5S3pQqbR97OBAHiTkj513IZYuouQ6BL6pbWC1tniq7QM
	byI8D4GNkLqMKQ7mCtK1N6v8LJBWw+jdUe21JLDNrabzn21t0QiGR1tRgpVMkAnlNZ+a
	m8BhOK6jMuyg0WfXgKrYFX5bpcR69E3/L9WGsKBpDr9PyslCafx8tsf861wzUtXto7SR
	SaEg==
X-Gm-Message-State: AKaTC02apRwQlX9a1eHuoT/Z3YlwgSgMuhP1b4tDMfYI0/SBSpQirvty4MnEVIr3l5fa3A==
X-Received: by 10.28.149.135 with SMTP id x129mr4090608wmd.71.1481047872736;
	Tue, 06 Dec 2016 10:11:12 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118])
	by smtp.gmail.com with ESMTPSA id f3sm5257674wmf.10.2016.12.06.10.11.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 10:11:11 -0800 (PST)
Date: Tue, 6 Dec 2016 18:11:10 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20161206181110.GG1636@carbonA>
References: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
	<20161203141606.2899e98c@nuc.betafive.co.uk>
	<CAK18fxFm3ttr1TJxw3+-PJD0A8WMDb0SKMMq2cJxiOwuY7=H1A@mail.gmail.com>
	<9f5e8157-ba81-7486-d761-3fd0ec5de3f9@mlbassoc.com>
	<CAMKF1sq0U1G-c266eCNCGAdw=B0Dcv0dXF7LjG8G=yPd4dFBXg@mail.gmail.com>
	<CAK18fxHR-X12Hr0R2Ba8=UToVtvWmb979k9+eQi+6yqHvbUN2w@mail.gmail.com>
	<009401d24feb$33bc8f30$9b35ad90$@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <009401d24feb$33bc8f30$9b35ad90$@neuf.fr>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org, 'Gary Thomas' <gary@mlbassoc.com>
Subject: Re: ***SPAM*** Re: [meta-raspberrypi] Current master broken
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
X-List-Received-Date: Tue, 06 Dec 2016 18:11:17 -0000
X-Groupsio-MsgNum: 33324
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4eRLI4hEmsdu6Npr"
Content-Disposition: inline

--4eRLI4hEmsdu6Npr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 06, 2016 at 07:04:31PM +0100, Herve Jourdain wrote:
> Hi Andrei,
>
> But I believe that the core of the problem is not necessarily the patch in
> oe-core to detect the kernel version itself, but like Khem mentioned the
> fact that a "well known" SRCREV is only valid for a brief period of time
> under the RPI tree "constant" rebasing we've been experiencing lately.
> So basically, the SRCREV that is used is not corresponding to what it used
> to be, if it's still there in the tree, and the oe-core detects that - the
> SRCREV thought it was one version of the kernel, and it just happened that
> it corresponds to a different codebase with a different linux version.
> Killing the error reporting by a patch will probably not prevent the
> mismatch happening behind the scene.
> So like Khem mentioned, either we find a way to "prevent" the rebasing at
> the source, or we need to track down every version we want to support, and
> update SRCREV and corresponding kernel version for those.

Got it now. What do you mean by "track down every version we want"?
--
Andrei Gherzan

--4eRLI4hEmsdu6Npr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYRv8+AAoJEHO76Gt+erfP9z0P/02gmSMtU/0mnyvc8YhMFACp
qQ4isdeYJUnNjBRJOeQk0kuOoTz4TFOFAb+m/d85R5Pyj5Qhai/psdaDNxZ2weUV
cnjynxvzNs1FW0RPsoKx/n3RLqHFW0XIcFn7qKTyHaexAB/R794LyIRdy1C+XAbA
usRkzMU4fH4XGAnX++pw/g+4laYYY3F1Hku6Smu+dOtAr0qlLxpqM9t8/ckWWJhL
UegnXVzGUvuJHOsClwOvysqZy2zvwjAb6Ud+MFxjXxoKhqXc1GO0lAyJ29/b0N70
qR2an2IWfHbM1k0xvJHK+qM+C7liCEMCKlBvvsGsFE43F0WK99FcPt0s2iejYUbu
ReTcPU5tBe41jza1Uc61eP4fNXmaOW1r87poQRQe3pZ+TATuK6nRyW6s3qVjCkpq
zKpOaViIAJ6S5GuDKGCgc5YbopxTVUXW+btmY+3kN1O7li8nAE/hfo/71jASAhYw
s9QAMsYTXphoBvBZXqXzjbMjDqXrZNSwaP2jcJRUoeEDt3ctc/2dMXKle7DQ7tml
5cFaSGADU84+Rn85I3xU5F+YSqyWoqaZq/cBCYRrLs7Ezg13n8HG5rr97QWmUUO3
2tG+aflSGdrH/IKgeziomUpw6hDpaoUpyrOKCdnHwa1ee3JeQsnGSkPnl4CrN/oZ
ZAGRyhg9rI/KOkrYVr34
=3I3Y
-----END PGP SIGNATURE-----

--4eRLI4hEmsdu6Npr--
