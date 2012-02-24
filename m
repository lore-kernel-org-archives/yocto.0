Return-Path: <josh@hipro.co.in>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48D53E0059A
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 01:44:46 -0800 (PST)
Received: by dadp13 with SMTP id p13so2766233dad.35
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 01:44:46 -0800 (PST)
Received-SPF: pass (google.com: domain of josh@hipro.co.in designates
	10.68.136.33 as permitted sender) client-ip=10.68.136.33; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of josh@hipro.co.in
	designates 10.68.136.33 as permitted sender)
	smtp.mail=josh@hipro.co.in
Received: from mr.google.com ([10.68.136.33])
	by 10.68.136.33 with SMTP id px1mr5437688pbb.38.1330076686203 (num_hops
	= 1); Fri, 24 Feb 2012 01:44:46 -0800 (PST)
Received: by 10.68.136.33 with SMTP id px1mr4507243pbb.38.1330076686158;
	Fri, 24 Feb 2012 01:44:46 -0800 (PST)
Received: from [192.168.10.207] ([59.99.251.45])
	by mx.google.com with ESMTPS id y9sm3950600pbi.3.2012.02.24.01.44.43
	(version=SSLv3 cipher=OTHER); Fri, 24 Feb 2012 01:44:45 -0800 (PST)
Message-ID: <1330076669.3803.46.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 24 Feb 2012 15:14:29 +0530
In-Reply-To: <1330075610.3803.39.camel@babel.joshhome>
References: <1330075610.3803.39.camel@babel.joshhome>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQmoGC+svlFPssS9g63aBFPGsMX0r8Fvq/6ciL88yzMaKrp81xbuSK1jf5KfLdG3TKwwVq+j
Subject: Re: how do I find the filename of the kernel
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
X-List-Received-Date: Fri, 24 Feb 2012 09:44:46 -0000
X-Groupsio-MsgNum: 4916
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-11D5OD3LHOHeKc3DjTnR"

--=-11D5OD3LHOHeKc3DjTnR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

On Fri, 2012-02-24 at 14:56 +0530, Joshua Immanuel wrote:
>         I find in kernel.bbclass that the kernel file name is
> constructed from "${KERNEL_IMAGETYPE}-${KERNEL_VERSION}". And the
> KERNEL_VERSION is filled from the 'get_kernelversion' method in
> linux-kernel-base.bbclass, which needs the location of kernel's build
> directory (${B}). Obviously, this build directory location will not be
> available in other recipes.=20

Aww. Missed this. In kernel_do_install method of kernel.bbclass I found
that KERNEL_VERSION is echoed into a file
(${D}/kernel/kernel-abiversion). And this file is added to
sysroot_stage_dir. I guess, that I have to read that file in order to
get construct the kernel filename. Am I right?

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-11D5OD3LHOHeKc3DjTnR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk9HW/0ACgkQWw85XwuSFML1UwCgsUbXLSoM1GCbkTpIVGgMrI0J
P+AAniDT2prlCDOf8LLmIWkeW99aJTb/
=9vby
-----END PGP SIGNATURE-----

--=-11D5OD3LHOHeKc3DjTnR--
