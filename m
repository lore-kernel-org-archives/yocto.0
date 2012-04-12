Return-Path: <josh@hipro.co.in>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1B4FE00746
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 00:35:12 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so2676341pbb.35
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 00:35:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:content-type:x-mailer:mime-version:x-gm-message-state;
	bh=6YAOFebYtuY+XxKZtamvdJtDAC1PmyKj8zEAp1ADDk4=;
	b=W+KHbPr5xst7Y6vhDbONIvisrXtUoLTYNAms7TNnQb+zQBotnrqhT8/gMyl1jByPbM
	K3yziwYXhpekVDyMqZ3G9zIyCUtLx+YRnFbZTw4RL/qYFEuKwQc6zo/XzShNvnTxDKKw
	LmNSCYfPcIYZPndZAbuAdAyVfEqeZn/gjXVRJG6MVr2m0owPcvZzwXlDGtgX7Wvq1zeG
	eAycf19delU1LySwTeQjSCsgOG5lFZj6vO/DnVHkjgX7lKOr81ACggAFY9LC42YIGAge
	FE9dkQXefiDEXsfpG/Y9qrSKCOpFNUsVILEY6wrJ7TLdfhC3Z5twSDasHtZyMAY4R1Ax
	K2TA==
Received: by 10.68.221.35 with SMTP id qb3mr1082906pbc.136.1334216112698;
	Thu, 12 Apr 2012 00:35:12 -0700 (PDT)
Received: from [192.168.10.207] ([59.99.251.45])
	by mx.google.com with ESMTPS id d3sm4946824pbq.9.2012.04.12.00.35.09
	(version=SSLv3 cipher=OTHER); Thu, 12 Apr 2012 00:35:11 -0700 (PDT)
Message-ID: <1334216100.2759.2.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Darren Hart <dvhart@linux.intel.com>
Date: Thu, 12 Apr 2012 13:05:00 +0530
In-Reply-To: <4F862237.50200@linux.intel.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1 
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQmYaPnmHYDGTF/yBJ3dtmSekLjAVSzMbvJHEhIH8ZihhfQuY+uyAq23SsoITBCz0xsyBn8T
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 12 Apr 2012 07:35:13 -0000
X-Groupsio-MsgNum: 6038
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-67MulP6a8WQueGI+5gf9"

--=-67MulP6a8WQueGI+5gf9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Darren,

On Wed, 2012-04-11 at 17:30 -0700, Darren Hart wrote:
> I run on a beast with 12 cores, 48GB of RAM, OS and sources on a G2
> Intel SSD, with two Seagate Barracudas in a RAID0 array for my /build
> partition. I run a headless Ubuntu 11.10 (x86_64) installation running
> the 3.0.0-16-server kernel. I can build core-image-minimal in < 30
> minutes and core-image-sato in < 50 minutes from scratch.=20

wow. Can I get a shell? :D
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-67MulP6a8WQueGI+5gf9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEABECAAYFAk+GhaQACgkQWw85XwuSFMLVjACggMEIZPFRB5pwUkEBWvTyItLz
gmUAn0Zl7rkhMRz3MtHCO2Zp+7WqrBun
=wAwU
-----END PGP SIGNATURE-----

--=-67MulP6a8WQueGI+5gf9--
