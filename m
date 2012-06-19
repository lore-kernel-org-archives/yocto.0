Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3FE9E00746
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 00:11:52 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so4689828wgb.11
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 00:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=lNQVBU56XVlVh+HAEZcaKg5U6m47KuYsDh66/FO7kCo=;
	b=OphYDCFPBSsbpJu2Gk8vknXUwSUGgwunvh6dSLnWq+L1zS5ltZXBwdtjGajmmE95HG
	yd9F2nJEUyfxOLu9JvAovlBMY6YOL7M4HMIXuwCBMlOQYLle+l5ecsMDH3pa04FND846
	kQMP7UVXaDJbcvYh7JGJz+AcQe0seUuWznj+EYR3R2sfTtkkxkPrgBwgI2olhOydxx1j
	MIj/7bGSq2+huBB1UI5Rf19X65XXucd29zlB4Yj4WPSjQwt6xGbCYpIFON3zVfFF/8Pv
	BVO5jiJAoDUkTr4u9n4JpM6wqBgQvMGGAdC7QUdOZqKk0/mn/AdaQQNHUXx0sVsdXhJy
	+Ytw==
Received: by 10.180.83.197 with SMTP id s5mr766831wiy.9.1340089911275;
	Tue, 19 Jun 2012 00:11:51 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id j4sm30674049wiz.1.2012.06.19.00.11.49
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 19 Jun 2012 00:11:49 -0700 (PDT)
Date: Tue, 19 Jun 2012 09:11:51 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20120619071151.GP3178@jama.jama.net>
References: <cover.1338305162.git.Martin.Jansa@gmail.com>
	<20120616063615.GZ3140@jama.jama.net>
MIME-Version: 1.0
In-Reply-To: <20120616063615.GZ3140@jama.jama.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [opkg-utils][PATCH 0/2] opkg-utils fix for python-2.6 and fix for missing getopts
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
X-List-Received-Date: Tue, 19 Jun 2012 07:11:53 -0000
X-Groupsio-MsgNum: 7304
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="+W7ryvxEk4RRyt+P"
Content-Disposition: inline

--+W7ryvxEk4RRyt+P
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 16, 2012 at 08:36:15AM +0200, Martin Jansa wrote:
> On Tue, May 29, 2012 at 05:34:13PM +0200, Martin Jansa wrote:
> > The following changes since commit 44df9dd3dc411ca1255cb4b23bde7eb71aed=
4778:
> >=20
> >   opkg-make-index: disable filelist by default (2012-04-26 11:39:42 +01=
00)
>=20
> ping?

Can I get push access to this repo, I know you're all busy but waiting
20+ days for small fixes to get applied is not very efficient. Another
guy on #oe asked today why package-index is always failing in oe-classic..

Cheers,
=20
> > are available in the git repository at:
> >   git://github.com/shr-project/opkg-utils jansa/pull
> >   https://github.com/shr-project/opkg-utils/tree/jansa/pull
> >=20
> > Chris Diamand (1):
> >   Changed call to subprocess.check_output which isn't compatible with
> >     Python 2.6
> >=20
> > Ondics Githubler (1):
> >   Option "C" ist shown in usage() and implemented, but was missing in
> >     getopts. Added "C".
> >=20
> >  opkg-build      |    2 +-
> >  opkg-make-index |    2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >=20
> > --=20
> > 1.7.8.6
> >=20
>=20
> --=20
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com



--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--+W7ryvxEk4RRyt+P
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk/gJjcACgkQN1Ujt2V2gBzNlgCeI5KZTwLpD3sc8oBjWkyAgQJ6
RzgAninZ+mpu1doexhEdFK61RBM4enYI
=egDb
-----END PGP SIGNATURE-----

--+W7ryvxEk4RRyt+P--
