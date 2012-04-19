Return-Path: <josh@hipro.co.in>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E0E9E0140E
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 05:48:20 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so13075305pbb.35
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 05:48:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:content-type:x-mailer:mime-version:x-gm-message-state;
	bh=PLaJQAh0OvHiV1yQmp8PxVLe9ljqxsnZN41b9DwTBLQ=;
	b=WTXqKpR2opf4EFn9Ztx++7fiMl7Unw6vkM77B0r/zMp/oFY1yihEJD0TxxwspOASsx
	NzQNuQU4/JvahHVyQhg2g4ateU3hhPktbeudsoa0JsyPmKeaq1/kMe8YvtYF5h23TeEV
	AozgdLu5Dh6egyU7xuu1qAnPLc/Aa6NvNUvCt+UCTPW/3aSl0dkc151MvFFgXFygymsm
	23AspNAtL5PGSxT78a9nzdP9+jKArfyi17CWpaCyBP9srKW2hzMWgehgive03kf+FQHA
	koCp2ym+LnGvUj3KOhSK3mLhzjjPW/xkszXFWRBX6s2Hz5dgTUSTCp8UOOEcvLfeBeQM
	JJSA==
Received: by 10.68.236.197 with SMTP id uw5mr3415489pbc.27.1334839700212;
	Thu, 19 Apr 2012 05:48:20 -0700 (PDT)
Received: from [192.168.10.211] ([59.99.251.45])
	by mx.google.com with ESMTPS id wf6sm2190137pbc.8.2012.04.19.05.48.16
	(version=SSLv3 cipher=OTHER); Thu, 19 Apr 2012 05:48:19 -0700 (PDT)
Message-ID: <1334839692.2799.61.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Thu, 19 Apr 2012 18:18:12 +0530
In-Reply-To: <1334306723.7309.54.camel@ted>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com> <20120412140802.GA3176@giant>
	<4F86E7E0.4080704@linux.intel.com> <1334306723.7309.54.camel@ted>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1 
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQmblk54mhY4rG2bE7l21RnTOwxzLWZQj9/QoYE18b4nA/9qoFJkczmqsgpYC3htWKdRNqtP
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Build time data
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
X-List-Received-Date: Thu, 19 Apr 2012 12:48:20 -0000
X-Groupsio-MsgNum: 6176
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-Sg1KiIvVM6eNndu2pmzr"

--=-Sg1KiIvVM6eNndu2pmzr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

On Fri, 2012-04-13 at 09:45 +0100, Richard Purdie wrote:
> There are undoubtedly ways we can improve performance but I think
> we've done the low hanging fruit and we need some fresh ideas.

Is there a way to integrate distcc in yocto so that we could distribute
the build across machines.
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-Sg1KiIvVM6eNndu2pmzr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEABECAAYFAk+QCYwACgkQWw85XwuSFMLbGwCgnlLapf9ucyciJ7KmSCgpjouU
BoUAoIV7MIDSndFY0P/gGtKcKKsywJ1J
=h4JI
-----END PGP SIGNATURE-----

--=-Sg1KiIvVM6eNndu2pmzr--
