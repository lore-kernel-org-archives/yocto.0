Return-Path: <martin.jansa@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id F2CCF4C800A4
	for <yocto@yoctoproject.org>; Thu, 26 May 2011 02:39:47 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm7 with SMTP id 7so889743fxm.35
	for <yocto@yoctoproject.org>; Thu, 26 May 2011 00:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=CQspfUdAr96WEckMT7FwsdHXLrx7XEKgjfP2AlzW1ng=;
	b=sl0zJq2wFb64xR2mHQgmNk/N4D1F/oRoME5dWN2d0wbIQr4wTaPYqCK5ne6TDjNWYV
	amwQhMyXolvpPTJAIiznHeuifviCOQFbwSy0pEpBnrW9mvitsrSWXpaoBkz8ULOygzJF
	QK5ODqOwpG3Xl0uUI6m8goJXwt3Uy/dHaiBJc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	b=B+iwo3v6UE4vqpKS5yF0BnwlPxSVHdjuWfK53fIWi8pO+0SX0GoEBvclxk7vdvUK/Z
	MYOxoepkSvt1zZ/vzR7XtI7gBtzsBgYYSuaR1sszFLMzTF4Ani9pBRdNTJE9eqSjufi5
	w2wbdy66AGxRdETjce4T+Mg4vbOYnZ4joU9bA=
Received: by 10.223.73.199 with SMTP id r7mr550888faj.118.1306395586336;
	Thu, 26 May 2011 00:39:46 -0700 (PDT)
Received: from localhost ([94.230.152.115])
	by mx.google.com with ESMTPS id h9sm166196fai.30.2011.05.26.00.39.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 26 May 2011 00:39:44 -0700 (PDT)
Date: Thu, 26 May 2011 09:39:37 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Message-ID: <20110526073937.GL3222@jama.jama.net>
References: <4DDDAA38.8070404@gmail.com>
 <1306381066.22553.52.camel@elmorro>
MIME-Version: 1.0
In-Reply-To: <1306381066.22553.52.camel@elmorro>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Mailer <yocto@yoctoproject.org>,
	"dvhart@linux.intel.com" <dvhart@linux.intel.com>
Subject: Re: In consistancy in the defition of BBFILE_COLLECTIONS in layer.conf
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
X-List-Received-Date: Thu, 26 May 2011 07:39:48 -0000
X-Groupsio-MsgNum: 1463
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="kkcDP0v44wDpNmbp"
Content-Disposition: inline

--kkcDP0v44wDpNmbp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 25, 2011 at 10:37:45PM -0500, Tom Zanussi wrote:
> On Wed, 2011-05-25 at 18:17 -0700, Jeremy Puhlman wrote:
> > Opps sent from wrong account.
> >=20
> > I was working with some layerinfo code, and I noticed that the values of
> > BBFILE_COLLECTIONS in layer.conf in the meta-intel repo are kind of all=
 over the map:
> >=20
> >  for each in */conf/layer.conf; do cat $each; done | grep BBFILE_COLLEC=
TIONS
> > BBFILE_COLLECTIONS_crownbay +=3D "crownbay"
> > BBFILE_COLLECTIONS_crownbay-noemgd +=3D "crownbay-noemgd"
> > BBFILE_COLLECTIONS_fishriver +=3D "fishriver"
> > BBFILE_COLLECTIONS_jasperforest +=3D "jasperforest"
> > BBFILE_COLLECTIONS_sugarbay +=3D "sugarbay"
> >=20
> > For the above layers when I just list out oe-core and one of the above,
> > the results from BBFILE_COLLECTIONS ends up
> > just being what ever was set above.
> >=20
> > BBFILE_COLLECTIONS +=3D "n450"
> > BBFILE_COLLECTIONS +=3D "emenlow"
> >=20
> > When using these layers, the final BBFILE_COLLECTIONS is the list of all
> > the layers as expected.
> >=20
> > Was just curious if there was a intentional reason why the
> > difference(i.e. is there some code that I am missing that fixes this up=
)?
>=20
> No, not intentional - looks like a case of an overzealous overriding
> typo that propagated.  I'll cook up a patch to make them all just
> 'BBFILE_COLLECTIONS +=3D xxxx'

Using machine override has one small benefit

when I have meta-nokia layer which has only recipes with
COMPATIBLE_MACHINE =3D "nokia900" and I'm building different machine (like
om-gta02) I get this warning:
WARNING: No bb files matched BBFILE_PATTERN_nokia-layer '^/OE/shr-core/meta=
-smartphone/meta-nokia/'
because all bb files from this layer are ignored because of
COMPATIBLE_MACHINE

if I change it like this
-BBFILE_COLLECTIONS +=3D "nokia-layer"
+BBFILE_COLLECTIONS_nokia900 +=3D "nokia-layer"
maybe with more overrides per layer.conf if it supports multiple
machines, the warning is gone, but seems like sstate checksums are
different again, because during test I changed only this and another gcc
rebuild is in runqueue now :/.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--kkcDP0v44wDpNmbp
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.17 (GNU/Linux)

iEYEARECAAYFAk3eA7kACgkQN1Ujt2V2gBxXigCgtRzdQuk2OVIvmOtkufJFQYnw
ur0AoKOtfDvo8UU+8tZTBh8ysxGouGo6
=w0N5
-----END PGP SIGNATURE-----

--kkcDP0v44wDpNmbp--
