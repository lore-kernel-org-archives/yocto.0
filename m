Return-Path: <josh@hipro.co.in>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB218E004D2
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2012 21:40:47 -0800 (PST)
Received: by dadp13 with SMTP id p13so7791324dad.35
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2012 21:40:47 -0800 (PST)
Received-SPF: pass (google.com: domain of josh@hipro.co.in designates
	10.68.228.198 as permitted sender) client-ip=10.68.228.198; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of josh@hipro.co.in
	designates 10.68.228.198 as permitted sender)
	smtp.mail=josh@hipro.co.in
Received: from mr.google.com ([10.68.228.198])
	by 10.68.228.198 with SMTP id sk6mr34013291pbc.53.1329802847591
	(num_hops = 1); Mon, 20 Feb 2012 21:40:47 -0800 (PST)
Received: by 10.68.228.198 with SMTP id sk6mr28603169pbc.53.1329802847545;
	Mon, 20 Feb 2012 21:40:47 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id h6sm26707070pbg.5.2012.02.20.21.40.45
	(version=SSLv3 cipher=OTHER); Mon, 20 Feb 2012 21:40:46 -0800 (PST)
Message-ID: <1329802836.2743.7.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Scott Garman <scott.a.garman@intel.com>
Date: Tue, 21 Feb 2012 11:10:36 +0530
In-Reply-To: <4F428FC8.5080806@intel.com>
References: <1329746626.2728.10.camel@babel.joshhome>
	<4F428FC8.5080806@intel.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQn4wq90wnv8WTArdxpDGWwtLkDPGmycArpnV1wf2mCDwYOyMOyt5vOznAhoVDRviMuUOH/R
Cc: yocto@yoctoproject.org
Subject: Re: how do I contribute to yocto
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
X-List-Received-Date: Tue, 21 Feb 2012 05:40:48 -0000
X-Groupsio-MsgNum: 4888
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-fQOdOOvB2Qyeqv5RRRPv"

--=-fQOdOOvB2Qyeqv5RRRPv
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Scott,

On Mon, 2012-02-20 at 10:24 -0800, Scott Garman wrote:
> I'd put your layer up on a git repo somewhere (GitHub?) and make sure=20
> you have a note in your layer's README file that mentions that the
> layer is intended for use with the edison release.

But my entire layer won't be useful to everyone, as it contains recipes
for my user space applications too. But, there are certain recipes for
some useful packages which are not available in edison and master
branch. So, how to go about it?

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-fQOdOOvB2Qyeqv5RRRPv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk9DLlQACgkQWw85XwuSFMLeGQCgjSHsTpYUubfwmgIU4AObJsaH
31QAoMBU79uchIor/t0WW95Z3peYm8/g
=ccdO
-----END PGP SIGNATURE-----

--=-fQOdOOvB2Qyeqv5RRRPv--
