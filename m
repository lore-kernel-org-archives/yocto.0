Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C63B8E00C4D; Tue, 12 Apr 2016 19:18:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ADE3E00B9E
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 19:18:42 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id n3so51241618wmn.0
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 19:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=c0kNQ3QwdLMo24WukNSG15wu7M2DbRXheSYtl9FIJM0=;
	b=CRWT3IxzHf6ssUERmbB6QyCvhS5TyUJXBvFtCFomtUUBglZoNfQ6mV0yrkkTSX/XSV
	9ikAGQ+i29eZtHbFhCoYhG0DgRYBv0Woj/NHpoetBniu2RjcMkdZr3y0fo2eH/MlOVSv
	uDRnrD7TEwutgZgDEGiiuF3h8gjewpL/M9UivZEaQCJHRddETz14ohqc2tgxgDRWJiDX
	G+AttBox6No/EqxAjHBuja/5YZRd685vBc1hpuW/J0R+/iuqMKKbg+8HswBLEclYRo+Y
	wGpz/6uCnW/SK2/1gU7/Sta+aZAxSkNih96kCdHSUdM85PH2dn2Ii9MdVibMR0A4t203
	bhjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=c0kNQ3QwdLMo24WukNSG15wu7M2DbRXheSYtl9FIJM0=;
	b=J0XcPrKBhazuEXPpI+MbkVuhGyt8Dl/gh6iz7f86l6SZq1RqniGN062xBxNoTQPuFZ
	L1geLgk6TlTe9Q3j6Caw4QBy+OAQxSMhVrxseOw71aAdhtc6iXAWHUG8ME0zEGI0fdT1
	g7qEF/GcDmGUWbkiUSsjQXevo/wYo++NxQeWav/wCCIDGvzKCsk6vP9MxIR6D9C5pcSa
	9+ow30W8J22iIFt27O9/3P4tEr0o2VdmB4Aw1li7b1KHjPe48pSTFWSvsxdQ6PiRtfn2
	0Asols+cVEd2DTOfWKzffkvsjjBbHTe/2fAHtlO2F5na6X3rk2Bi50YzEEalodyg1YBq
	287Q==
X-Gm-Message-State: AOPr4FWznUaSsJJzA1ssYpNr2nNoOTgJzc7nuqOtFY3IyiROtEEb3qu/Unhx0JfBgHFsng==
X-Received: by 10.194.174.231 with SMTP id bv7mr6811312wjc.17.1460513921851;
	Tue, 12 Apr 2016 19:18:41 -0700 (PDT)
Received: from resin (dslb-088-076-238-192.088.076.pools.vodafone-ip.de.
	[88.76.238.192]) by smtp.gmail.com with ESMTPSA id
	r10sm24050968wjf.2.2016.04.12.19.18.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Apr 2016 19:18:41 -0700 (PDT)
Date: Wed, 13 Apr 2016 04:18:39 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Alan Stice <alan@alanstice.com>
Message-ID: <20160413021839.GB22139@resin>
References: <1460399745-22611-1-git-send-email-alan@alanstice.com>
	<CAPn_zGuj0p5xQFryUeq45WYNcnAZ87HZJ12CGMUgcQ7RZyZwGQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPn_zGuj0p5xQFryUeq45WYNcnAZ87HZJ12CGMUgcQ7RZyZwGQ@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Rename linux.inc to linux-rpi.inc Rename linux.inc to prevent it from impacting other machines
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
X-List-Received-Date: Wed, 13 Apr 2016 02:18:44 -0000
X-Groupsio-MsgNum: 29392
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BwCQnh7xodEAoBMC"
Content-Disposition: inline

--BwCQnh7xodEAoBMC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 11, 2016 at 11:37:50AM -0700, Alan Stice wrote:
> Attempting submitting this patch from my linux machine to hopefully correct
> the line wrapping issue.
>

Is fine now. Merged to master. Thanks.

--
Andrei Gherzan

--BwCQnh7xodEAoBMC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXDax/AAoJEHO76Gt+erfPfe8P/0JOXfxtb6SgqC8GfxoeUUA9
SUAHytlXpsfjLK/ykimztqWSl1vOxXGa62mCu24oX3mD02Amgh1W/r4WJC7wG0xz
ThZorva7EuqpozXPK5m4RNby0rcbtTT3oG3bFi2y2okzExbb7t/FpvluOQsR8TLS
jFcKM0GWeso0AAjfi0/mrfKzM1gLJUweN9olCwt540Cp7n/FqCpHBbyW43Bbwe7M
9bQuYY/bAWTbizYiTKyLffJ3e7EI9xCsjMivYeXhfT1JEWmsjLSbcMP/8Y1ZFylw
c58IL5ulvouBmab4vjtPZ59aNswZVkLj1gqbEZt+i+l9CJIqqQOiCRhSCPJsbcSp
QJ3Y+afa3IGz/UXVIj9ToMcnrR/ihHH/UgzIXp7H6vxNtixRqN4r4I+g6ttXUtKW
zZ+a/DEaR9PSJlhwcs65yrBmrWBW+hBh99RHXvCCCm8Kwl2ubn/yHMY8iM4AlgRy
aECeSi6tMP2BVK8flSYJec0xRIbQojh788HLFxesWCZ0Hln5cdU/N04UXy/BZUJz
ZEw9IZ45Q3IpTYGTh91YK1dM/banSBpWYLc61SVNq+SKITfUt8FnGig+14IHj2BB
5VTCGv9DPjR8Hb7mVM+28DEb+aDMSeoNp3ejNyBFoaz10Hvf67WVHfSSiyezLwJM
N/flxbnA6FAPhFo2BQgI
=qk1p
-----END PGP SIGNATURE-----

--BwCQnh7xodEAoBMC--
