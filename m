Return-Path: <josh@hipro.co.in>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BC6DE0127D
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 03:02:32 -0800 (PST)
Received: by pbcc11 with SMTP id c11so4544828pbc.35
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 03:02:32 -0800 (PST)
Received: by 10.68.223.68 with SMTP id qs4mr40583814pbc.112.1327921352486;
	Mon, 30 Jan 2012 03:02:32 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id h9sm46304006pbq.14.2012.01.30.03.02.30
	(version=SSLv3 cipher=OTHER); Mon, 30 Jan 2012 03:02:31 -0800 (PST)
Message-ID: <1327921347.2519.8.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon, 30 Jan 2012 16:32:27 +0530
In-Reply-To: <4F22DB53.8060400@linux.intel.com>
References: <4F21FDEF.2010500@linux.intel.com>
	<4F220105.3080600@linux.intel.com> <4F220477.8030600@linux.intel.com>
	<20120127080849.GB3779@jama.jama.net>
	<1327659778.2964.16.camel@babel.joshhome>
	<20120127103001.GC3779@jama.jama.net>
	<4F22DB53.8060400@linux.intel.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1 
Mime-Version: 1.0
Subject: Re: New recipes not installing in core-image-minimal
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
X-List-Received-Date: Mon, 30 Jan 2012 11:02:33 -0000
X-Groupsio-MsgNum: 4486
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-UAxmsJo4sxxan3HeHI9C"

--=-UAxmsJo4sxxan3HeHI9C
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Darren, Martin,

Thanks for the reply.

On Fri, 2012-01-27 at 09:13 -0800, Darren Hart wrote:
> > Why not .bbappend base-files and customize fstab there?
>=20
> This is how I am modifying /etc/network/interfaces and this is working
> fine for me. Joshua, I'd second Martin's suggestion.=20

As you suggested I'll use this approach instead of creating a new
package.

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-UAxmsJo4sxxan3HeHI9C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8meMMACgkQWw85XwuSFMKaAQCePeDxvKzSwKNWqBITEQK4Qf4W
vbwAnjqy2lHIaE7dP+ok7vYCT30xw14A
=E2A2
-----END PGP SIGNATURE-----

--=-UAxmsJo4sxxan3HeHI9C--
