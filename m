Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5387AE0030B
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2012 00:32:40 -0700 (PDT)
Received: by werc1 with SMTP id c1so783279wer.35
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2012 00:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=10Zu/SYaXMK7zOmOBN0wTeLAYOXFnrsd6jSD5MAWYpE=;
	b=PQXzmHj6CYuQC4nCesWVc7jHGc+OqYAU5RiApVuTcWBLR67q+wC0lMpI0xLS5UaRjp
	7gVG1KQ/3r8ArJvLTRG49UBO7Gg0FQz97+nXXUToZQH+PmXP4MTbyq8x1AArVFZYpgsH
	ZF/XxbFZSqnB+18J7UbIcplPExjSijpNrK9gfv3FWq76leV+z8+hyfLPRNYk+9px/nqe
	rgcyN0DW1X4MKmTWXILbUK6J4tqowaKK8Y+479n2uQRJusgoKVdorHZt+DwJSBGU+hrB
	duMtmNBQTZGyM8vBDrdclweEoDbxr6X5ao5d/hj3+Uod7lh5btkq/Ir2Ya1Oie6WaOMj
	4DBw==
Received: by 10.180.83.72 with SMTP id o8mr13871103wiy.5.1335425559088;
	Thu, 26 Apr 2012 00:32:39 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id w10sm8318333wiy.3.2012.04.26.00.32.37
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 26 Apr 2012 00:32:37 -0700 (PDT)
Date: Thu, 26 Apr 2012 09:32:40 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Apelete Seketeli <apelete@seketeli.net>
Message-ID: <20120426073240.GA3646@jama.jama.net>
References: <20120425214752.GA3525@hermes>
MIME-Version: 1.0
In-Reply-To: <20120425214752.GA3525@hermes>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [opkg-utils] Asking for an old patch review
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
X-List-Received-Date: Thu, 26 Apr 2012 07:32:40 -0000
X-Groupsio-MsgNum: 6224
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="FL5UXtIhxfXey3p5"
Content-Disposition: inline

--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 25, 2012 at 11:47:52PM +0200, Apelete Seketeli wrote:
> Hello,
>=20
> I'm trying to get a patch for opkg-utils into oe-classic, and it seems
> some of the changes of my patch were already submitted to yocto a
> month ago:
>=20
> https://lists.yoctoproject.org/pipermail/yocto/2012-March/007851.html
>=20
> Since the opkg-utils recipe in oe-classic is using the yocto
> repository as SRC_URI, the patch mentioned in the link above should be
> applied to the yocto repository before I make further changes to
> opkg-utils.
>=20
> Could someone here do a review of the above mentioned patch please ?

FWIW: I'm using all those changes squashed together
http://git.openembedded.org/openembedded-core-contrib/commit/?h=3Dshr&id=3D=
b355502a48371cd7fb676eb01cf15c9b9c941352

and when that patchset get applied upstream we'll just change SRCREV and
drop shr.patch..=20

feel free to do it that way in oe-classic too, if it's not applied
soon..

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--FL5UXtIhxfXey3p5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk+Y+hgACgkQN1Ujt2V2gBwXlQCfRToX4kyqUGILHcm7iDzTmXRS
O04AoKyEjdsfzdBeQXovaFwS2NUJtnWb
=7fuV
-----END PGP SIGNATURE-----

--FL5UXtIhxfXey3p5--
