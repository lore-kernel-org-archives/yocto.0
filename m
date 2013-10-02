Return-Path: <joe@deserted.net>
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96312E015F8
	for <yocto@yoctoproject.org>; Wed,  2 Oct 2013 07:07:47 -0700 (PDT)
Received: by mail-wi0-f174.google.com with SMTP id hj3so7341010wib.7
	for <yocto@yoctoproject.org>; Wed, 02 Oct 2013 07:07:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=jpgoI0mXDXl64FIXkZqc4CLLe6UwymIDqoy/uj2Wyj8=;
	b=CTAlT2uBUrDurBZSStyCmICjoLTq0WCOYaIP2KyK+nSx1brqKJBUKgPHNDhw0QgiMP
	k1cA6ADR/0sllSoqbbQ6U+Gr+30syD2psubBW7UFD4QVWf9862rDrAV4p9DJPBoOGaOe
	2K8q9ptYb2tCbeQQQMM5RvC68ib2bzhDQAXgfHo+ctCYhy/gzW9o5kbvqE6+Sfc0HcvN
	9AyXub0we0dbXePTJtAjyyTLeMixORwWKNdixzmfxxl1AMwHRXYCzfA6h1Uc6Aqgyi42
	UBO0JQ+m518BrWT+HNxnouFd31L+1XS9R+Vj/RkrmVwB5pqLMPU+nUuKFCuuuzsaBLKw
	8tWw==
X-Gm-Message-State: ALoCoQkl44nJL2sXtp0OrazvkdNO7+HZDpsEqwO+QlD+ddpfDzpXCmcJhccA2rdFBL0npxljcp4X
X-Received: by 10.194.143.18 with SMTP id sa18mr1023827wjb.70.1380722866573;
	Wed, 02 Oct 2013 07:07:46 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id ey2sm3914534wib.5.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 02 Oct 2013 07:07:45 -0700 (PDT)
Date: Wed, 2 Oct 2013 10:07:40 -0400
From: Joe MacDonald <joe@deserted.net>
To: "Slater, Joseph" <joe.slater@windriver.com>
Message-ID: <20131002140737.GB7433@deserted.net>
References: <1378399896-28502-1-git-send-email-jslater@windriver.com>
	<3573701.ovexZDZeie@helios>
	<007BD92917A2324FA403BCF9A464CF843C508FCE@ALA-MBB.corp.ad.wrs.com>
MIME-Version: 1.0
In-Reply-To: <007BD92917A2324FA403BCF9A464CF843C508FCE@ALA-MBB.corp.ad.wrs.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] tar: add acl dependency information
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 02 Oct 2013 14:07:50 -0000
X-Groupsio-MsgNum: 16326
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="7iMSBzlTiPOCCT2k"
Content-Disposition: inline

--7iMSBzlTiPOCCT2k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [PATCH 1/1] tar: add acl dependency information] On 13.09.05 (=
Thu 17:41) Slater, Joseph wrote:

> Oops, I was so worried about sending to the right address, I forgot about
> marking it meta-selinux.

And I missed this on my missing patch sweep through the list last week.
Thanks Joe.  Merged to both master and master-next.

-J.

>=20
> Joe
>=20
>=20
> > -----Original Message-----
> > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > Sent: Thursday, September 05, 2013 10:05 AM
> > To: Slater, Joseph
> > Cc: Ouyang, Xin; Slater, Joseph; yocto@yoctoproject.org
> > Subject: Re: [yocto] [PATCH 1/1] tar: add acl dependency information
> >=20
> > Hi Joe,
> >=20
> > On Thursday 05 September 2013 09:51:36 Joe Slater wrote:
> > > If acl is a distro feature, we want to depend
> > > on it.  Note that without the xattrs patch, tar
> > > cannot deal with acl information.
> > >
> > > Signed-off-by: Joe Slater <jslater@windriver.com>
> > > ---
> > >  recipes-extended/tar/tar_1.26.bbappend |   10 +++++++++-
> > >  1 files changed, 9 insertions(+), 1 deletions(-)
> > >
> > > diff --git a/recipes-extended/tar/tar_1.26.bbappend
> > > b/recipes-extended/tar/tar_1.26.bbappend index 4b971c5..972a7b8 100644
> > > --- a/recipes-extended/tar/tar_1.26.bbappend
> > > +++ b/recipes-extended/tar/tar_1.26.bbappend
> > > @@ -1,7 +1,15 @@
> > > -PR .=3D ".2"
> > > +PR .=3D ".selinux3"
> > >
> > >  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> > >
> > >  SRC_URI +=3D "file://tar-1.24-xattrs.patch"
> > >
> > >  inherit enable-selinux
> > > +
> > > +
> > > +PACKAGECONFIG +=3D "${@base_contains('DISTRO_FEATURES', 'acl', 'acl'=
, '',
> > > d)}" +
> > > +# configure has no acl enable/disable options!
> > > +#
> > > +PACKAGECONFIG[acl] =3D ",,acl,"
> > > +
> >=20
> > Should this have been marked as [meta-selinux] ?
> >=20
> > Cheers,
> > Paul
> >=20
> > --
> >=20
> > Paul Eggleton
> > Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
-Joe MacDonald.
:wq

--7iMSBzlTiPOCCT2k
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJMKIgACgkQwFvcllog0XxjqACgmGX0//JK9JcOhQhUEJxOpjaQ
dmMAn1Wj0bHZ1U8IhPdrSOuD5wYsRnlT
=G2L2
-----END PGP SIGNATURE-----

--7iMSBzlTiPOCCT2k--
