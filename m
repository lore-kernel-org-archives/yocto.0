Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64AFCE00ED8; Fri, 20 May 2016 03:37:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C041E00ED5
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 03:37:38 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id v200so3948728wmv.1
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 03:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=70cZQCRClj8A78jEC2N9ensd9IZP4EaIr2fF0TMCbL8=;
	b=UNQyZKIAolDtxw3iMKr3Hl6RYTWitcFla9ses+oFfRuUo/Uq/UGVuW4vSQl+O2v+7I
	qDAlvONTsX90zPrq+bCoXkgpcdLx95fARQalNxtSEgG7BrktRsHRkhmOy621r3ZLxZbW
	+sf18mSJHMoNgeTTnJK8U+3MgllelaU0J2F5Nszz55IvynEkqFGIdGNlKt4Fypoo3q64
	ZMwiNIiOKXzt0whgz56ot161hUAvyzMzTI9Mis2Dzlf+j4H3Beygyu/jkBehD3OY0Anw
	5SBxW3L/coTUsslqwCDS2sIpMabubKrQSRaVIVvdRd/JiiibOxb3fopWvFvu7I0Vxt2U
	ag4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=70cZQCRClj8A78jEC2N9ensd9IZP4EaIr2fF0TMCbL8=;
	b=JQWhqOBJmsk+/tWHqxbyyphpIXANtX510C4cA9IOfEfv6K4U4hwdaQ5tNiH8PZtIgX
	06ma9j4K5sh2F5t6PfWpxWg6RkWF2z1/qi+Egizu+yHcs4+CUDRpDTm28CKnUzPT3mYA
	MK3NCPkEcTLEjCq8T6AomGmTcjYAjxQsKnNmYDfcqeMxWWlZ9nCf8eyPhCI18qwG9M99
	0eXnYwo3Qgb64/AqrHsZmPsULG0GHD2UcEajbDX0Mjd/ffyFtqehboXGelbKQNNpmcO+
	Wp62wKSvI/N0644qy/i9ZwHlDvyenI8/MGXCNgva+h2VH2Cqfzq3+tsyitfLyrzmRM02
	Visg==
X-Gm-Message-State: AOPr4FXlTp6V7jgbl4EoZEPnu5J683OZTs8bm0DBqdwAdaiVdovx2WiAklD3m8mslnWEqQ==
X-Received: by 10.28.126.133 with SMTP id z127mr2862050wmc.68.1463740657318;
	Fri, 20 May 2016 03:37:37 -0700 (PDT)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id w82sm3941839wmw.5.2016.05.20.03.37.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 20 May 2016 03:37:35 -0700 (PDT)
Date: Fri, 20 May 2016 12:37:33 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160520103733.GH9848@resin.home>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-3-git-send-email-herve.jourdain@neuf.fr>
	<20160519145702.GE3601@resin.home>
	<03c501d1b278$1217bbe0$364733a0$@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <03c501d1b278$1217bbe0$364733a0$@neuf.fr>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/8] Support for vc4 graphics driver: add vc4-kms-v3d to the overlays
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
X-List-Received-Date: Fri, 20 May 2016 10:37:42 -0000
X-Groupsio-MsgNum: 30102
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wayzTnRSUXKNfBqd"
Content-Disposition: inline

--wayzTnRSUXKNfBqd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 20, 2016 at 11:14:50AM +0200, Herve Jourdain wrote:
> Hi Andrei,
>
> While I totally agree with that, the other lines above do not add the
> space...
> And I've been asked before to not modify the formatting - albeit that was in
> a case of spaces replacing tabs, which is slightly different - which is why
> I did this way.
> Do you want me to do the modification only for my 2 lines, or also for the
> other similar lines - while I'm at it...
>

Definitely what we have now is not perfect in terms of formatting. But,
if a change touches lines that we can improve in formatting too, I would
definitely do it.
--
Andrei Gherzan

--wayzTnRSUXKNfBqd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXPujqAAoJEHO76Gt+erfPZcAQAMK7IoVh/74tUJb+V4MVSeBi
ayN2+9ZAKCoXGoXKttoNzgvTHd0g4EezJ5DmOB2+oOqQYZSqM6lyUFavWvq2i3pN
fndqKQJw0EqbncSLzF92ZuhQYNMMK5yvx4H7nFHd/uYZz4CPsIFYG+JQTEWDc/Ae
Qc2uQE/agmCokOnKMU4OJiwoCTegbz/r6ndD/+gRq22a6GsWMJE7TmaQSArOJDo7
hTI/PaLMP7KGSfKjvRGqbDForqg+EBr2tj+pkvSZAe1Onh5i7jclFAj64eSo34FR
DoLPlUbcMuMXmLSg/ntEC1cwfzYGWvr3acB5mugYSSv99fsLheNBzGYhXLxU6f4a
PqNRt+mWfpxycKbRtD5hMD4hn2aV0wnltXELAnFJgQP2HnDi8wXOdpgvr+7ZoSZY
+ZdlaP1hIW8ne300nBCL+ZegX38dOy5YxeVhTWEvf+lHpiG3IvzQgj/Lxem+vqE4
6guVmIVahFcAA0GQSn7pZB0Gxp67JX0yOvY8yJYfo76UEcRA/71uJCwnr9PrCXSA
t2ea8vQyHR2UdWBe4PZjhCIp9tueKz9a7PNWwLW4SG3pBJCmBh9C8NcnpOjndAmR
tIrQmr496sQG+mkhydM1HWLVTVRauVvWHoR0/WzQCuu+07rOzJKV7BM+LNCiuC5v
rFKfGIOu3PvVc4R3lkVG
=sqCC
-----END PGP SIGNATURE-----

--wayzTnRSUXKNfBqd--
