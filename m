Return-Path: <josh@hipro.co.in>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 802FAE013A3
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 07:50:10 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so7023055ghb.35
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 07:50:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:content-type:x-mailer:mime-version:x-gm-message-state;
	bh=oFLLVPGwrU/9NuN6gf47SrqzZnvoRLbTGxaHdY3FZsI=;
	b=gwKm9w3vUXS3EnmGnVIZv0z/3DUHxvgmKkcucCzAOZjer9naxSeX3SziG+JVxhSiEl
	1EHI2AvyzUqVVt0F5linbzv4Ud0D+KkYNVmxszHgnGUAQlMgSXDwYmucpbp0sru9plE4
	f1VECGfC9aB0je/d3BlQ5lISbM6Asmx+N3F31AcZPscQOeN5wgb2rxv6Nd+nqH7YLdmX
	pGFyZ1woiiH7LnroKeeYXLMACB9c/rSQ9bxWdIbwUZvI2BtzFNhP3gHje45oznr96zXU
	LeMxCFPgR9nWz31KsNPs+joUZ4qHizX/CJcQoAHc8450IJX86fwRDvLxrxB/WOq7O2S+
	QtEA==
Received: by 10.68.125.168 with SMTP id mr8mr23307514pbb.21.1332168608460;
	Mon, 19 Mar 2012 07:50:08 -0700 (PDT)
Received: from [192.168.10.207] ([59.99.251.45])
	by mx.google.com with ESMTPS id f3sm11494577pbr.61.2012.03.19.07.50.04
	(version=SSLv3 cipher=OTHER); Mon, 19 Mar 2012 07:50:07 -0700 (PDT)
Message-ID: <1332168601.17273.15.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Scott Garman <scott.a.garman@intel.com>
Date: Mon, 19 Mar 2012 20:20:01 +0530
In-Reply-To: <4F620A03.4000902@intel.com>
References: <1331816822.19369.7.camel@babel.joshhome>
	<4F620A03.4000902@intel.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQlyRToRkAXCwZmSQHHUkqfLA/cE7Iq9A6xZTr4lwWJs2mPfdffq9E6YxaHKdTdVWyVZTkjK
Cc: yocto@yoctoproject.org
Subject: Re: syslinux filesystem size limitation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 19 Mar 2012 14:50:10 -0000
X-Groupsio-MsgNum: 5384
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-KmNDWWXKFLMWXk8TsjEP"

--=-KmNDWWXKFLMWXk8TsjEP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Scott,

On Thu, 2012-03-15 at 08:25 -0700, Scott Garman wrote:
> Yes, this sounds worthy of filing a bug. Bonus points for patch=20
> submissions to fix it. ;)

I've filed the bug report for it.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2138

Will try to add patch if possible.=20

Regards
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-KmNDWWXKFLMWXk8TsjEP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEABECAAYFAk9nR5kACgkQWw85XwuSFMJSrwCgnCXxsU57ZJ24zKWCatPgfiPx
9xcAoNA77/3Q5D1w77quIAK5q2OKOZKZ
=I+hH
-----END PGP SIGNATURE-----

--=-KmNDWWXKFLMWXk8TsjEP--
