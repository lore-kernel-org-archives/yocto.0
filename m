Return-Path: <tom.rini@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2136BE0027E
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 10:49:07 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id wy7so1211618pbc.35
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 10:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:organization
	:user-agent; bh=NC3iXpgzCOnyZcc04IaazjEZZcAmDMwo6te3K8z2nxM=;
	b=JY8iVaSISu8HfNDGD1vV/pB0T3vsoEFUmCvdTgKK9UR8As9oW7jg15Q6j3oGL6myh5
	tvBAqaE0VPxx2xbD5GSLjKyMRjiHSTKBQpvK2UjTlT0XlGlN3q7AhhidQh0kHB4nYsAZ
	KhecNuzDqL+uzWt0MwRepEApT9sQsskcNdPrzo1kj3OZHKGifTGM76U0u67jPnPwcCUQ
	rakV+kidLh2ruQfsfVuovUlGcCqpQxogp9yafIxzujbSpt1kfYD62x1Y+64Qj90UfQJc
	UrtK6gVy64sXJO3EQ14XrZ8gFvEeR339UZl1YoQfjFkfNdciaLBbRtJ33XRBuRZkIHW+
	/4zw==
Received: by 10.68.237.106 with SMTP id vb10mr1779223pbc.112.1349891344754;
	Wed, 10 Oct 2012 10:49:04 -0700 (PDT)
Received: from bill-the-cat ([2001:470:d:eba:a4bf:d51f:ab5e:2eb6])
	by mx.google.com with ESMTPS id k4sm1175682pax.7.2012.10.10.10.49.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 10 Oct 2012 10:49:03 -0700 (PDT)
Date: Wed, 10 Oct 2012 10:49:11 -0700
From: Tom Rini <tom.rini@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Message-ID: <20121010174911.GO1137@bill-the-cat>
References: <8FDC41DC-70B4-4BCB-9B95-51CFBCA8961D@gmail.com>
MIME-Version: 1.0
In-Reply-To: <8FDC41DC-70B4-4BCB-9B95-51CFBCA8961D@gmail.com>
Organization: Texas Instruments
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: denx.de site down?
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
X-List-Received-Date: Wed, 10 Oct 2012 17:49:07 -0000
X-Groupsio-MsgNum: 10005
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="O3WNCzIuUImKerqE"
Content-Disposition: inline

--O3WNCzIuUImKerqE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 10, 2012 at 09:00:44PM +0400, Elvis Dowson wrote:

> Hi Wolfgang,
>                         I noticed that your site has been down since yest=
erday? I usually sync with your u-boot and eldk repositories, and during th=
e yocto build process, it failed because your site was un-reachable.
>=20
> I was able to get past the yocto build issue, by temporarily modifying my=
 u-boot repositories to point to the local file system.
>=20
> I'm sure others are also facing a similar issue.

I can't point to an archive of this since it probably didn't hit google
in time to be cached but yes, denx's website is currently down as their
provider needs to replace all of the disks in their RAID array.  They
hope to be back as soon as possible.

--=20
Tom

--O3WNCzIuUImKerqE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEARECAAYFAlB1tRcACgkQdZngf2G4WwMQyQCfU0lTfnt3JsXqazrUj7u0Ba5p
IvsAnArPF+TFCOTGaCqIQbYZe+7mc1Iv
=7oPV
-----END PGP SIGNATURE-----

--O3WNCzIuUImKerqE--
