Return-Path: <josh@hipro.co.in>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E3ACE003E1
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2012 06:41:01 -0800 (PST)
Received: by pbcxa12 with SMTP id xa12so2437156pbc.35
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2012 06:41:01 -0800 (PST)
Received: by 10.68.136.201 with SMTP id qc9mr19298477pbb.161.1329489661266;
	Fri, 17 Feb 2012 06:41:01 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id h6sm16905653pbg.5.2012.02.17.06.40.59
	(version=SSLv3 cipher=OTHER); Fri, 17 Feb 2012 06:41:00 -0800 (PST)
Message-ID: <1329489648.2709.14.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 17 Feb 2012 20:10:48 +0530
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQngBOtq+nIhP27MIdY1Q7e6qMnDsqsDz4LdWamGu+bFZ8huEVCcJ24FCuY19dN24NrG2tY0
Subject: unable to add a new file to base-files recipe via bbappend
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
X-List-Received-Date: Fri, 17 Feb 2012 14:41:01 -0000
X-Groupsio-MsgNum: 4873
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-ZLKS4JcrcXysmcGoJJnH"

--=-ZLKS4JcrcXysmcGoJJnH
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,
	I added a base-files_3.0.14.bbappend file in my custom layer and
pointed the SRC_URI as follows

        SRC_URI +=3D "file://xorg.conf"
       =20
The xorg.conf file is at "base-files/files/xorg.conf" on my custom
layer. But, the bitbake fails to find the file.

> | ERROR: Function 'Fetcher failure for URL: 'file://xorg.conf'.=20
> Unable to fetch URL file://xorg.conf from any source.' failed

I guess, the method that I am following here to add a new source file
via the bbappend is wrong.

Please guide me.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-ZLKS4JcrcXysmcGoJJnH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8+ZvAACgkQWw85XwuSFMInowCgzGf1yOfS1bA5HXikGVX5/cXP
xloAn2ojogPlsKxUGOQEPKI0datF0uKq
=8p03
-----END PGP SIGNATURE-----

--=-ZLKS4JcrcXysmcGoJJnH--
