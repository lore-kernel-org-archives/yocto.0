Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D70B2E00998; Mon, 13 Apr 2015 03:50:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F06FDE00963
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2015 03:50:37 -0700 (PDT)
Received: by wgin8 with SMTP id n8so76117873wgi.0
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2015 03:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=gGNRiPWjJx6FrFQOaMP+kQQRz0iWsHWRcifX99/ShlY=;
	b=s/1ja19lm1vVhco/5414I/KekWUlH/2IkGelBKMG07DrgGxItYY0Jv3ZPRRRSZ8kep
	FuJiy+39de5wvGV9CquUNK7fCwNQ8qL5ACuq7OAItllXtE5wkvp6/PS4IYQVqn61+HO5
	RYL8b608EeBXp3A1GjazqfWuVxKsHG8ExNLZyjaP8namy9veBDY0jxneLeiKwDt/SZai
	QY0S9X2TNxR3qvKmo7wBANVwje6oaqwYzgWslSSBHLR80tQ1aI1wCIweAPASg+1K1Mv4
	bzfuVYdNxCPlPte05xTgy5AX0BKKZJXeRdW4ersxJvKRMNWC2JAKtn2vDCq0RF1bL0J8
	4B6A==
X-Received: by 10.194.236.225 with SMTP id ux1mr26901301wjc.52.1428922236494; 
	Mon, 13 Apr 2015 03:50:36 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by mx.google.com with ESMTPSA id h5sm10937295wjn.20.2015.04.13.03.50.35
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 13 Apr 2015 03:50:35 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 13 Apr 2015 12:50:40 +0200
To: wenzong.fan@windriver.com
Message-ID: <20150413105040.GB2330@jama>
References: <1428917063-2713-1-git-send-email-wenzong.fan@windriver.com>
	<20150413104719.GA2330@jama>
MIME-Version: 1.0
In-Reply-To: <20150413104719.GA2330@jama>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][meta-selinux] tar: cleanup duplicate PACKAGECONFIG
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
X-List-Received-Date: Mon, 13 Apr 2015 10:50:38 -0000
X-Groupsio-MsgNum: 24431
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="kORqDWCi7qDJ0mEj"
Content-Disposition: inline

--kORqDWCi7qDJ0mEj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 13, 2015 at 12:47:19PM +0200, Martin Jansa wrote:
> On Mon, Apr 13, 2015 at 05:24:23PM +0800, wenzong.fan@windriver.com wrote:
> > From: Wenzong Fan <wenzong.fan@windriver.com>
> >=20
> > The tar_1.28.bb has defined this:
> >=20
> > PACKAGECONFIG[acl] =3D "--with-posix-acls, --without-posix-acls, acl,"
> >=20
> > Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> > ---
> >  recipes-extended/tar/tar_%.bbappend | 6 ------
> >  1 file changed, 6 deletions(-)
> >=20
> > diff --git a/recipes-extended/tar/tar_%.bbappend b/recipes-extended/tar=
/tar_%.bbappend
> > index 54c8a90..53d381e 100644
> > --- a/recipes-extended/tar/tar_%.bbappend
> > +++ b/recipes-extended/tar/tar_%.bbappend
> > @@ -2,10 +2,4 @@ FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> > =20
> >  inherit with-selinux
> > =20
> > -
> >  PACKAGECONFIG +=3D "${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'ac=
l', '', d)}"
> > -
> > -# configure has no acl enable/disable options!
>=20
> tar 1.17 (still available in oe-core) next to 1.28 doesn't have these
> options, so dropping this will cause QA warnings.

Ah nevermind, it's fixed in master with:
commit faf469f9b5fbf794311d83db26cdf7f1042785c0
Author: Robert Yang <liezhi.yang@windriver.com>
Date:   Tue Jan 27 00:31:21 2015 -0800

    tar 1.17: fix unknown-configure-option

> Maybe should fix both in oe-core first and then you can even drop
> "PACKAGECONFIG +=3D" line.

Moving
"${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '', d)}"
still seems to be useful as other recipes are also already using acl
DISTRO_FEATURES.

$ git grep PACKAGECONFIG.*DISTRO_FEATURES.*acl meta/recipes-core/coreutils/=
coreutils_6.9.bb:PACKAGECONFIG ??=3D "${@bb.utils.contains('DISTRO_FEATURES=
', 'acl', 'acl', '', d)}"
meta/recipes-core/coreutils/coreutils_8.23.bb:PACKAGECONFIG_class-target ??=
=3D "${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '', d)}"
meta/recipes-devtools/strace/strace_4.10.bb:PACKAGECONFIG_class-target ?=3D=
 "libaio ${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '',
d)}"

>=20
> > -#
> > -PACKAGECONFIG[acl] =3D ",,acl,"
> > -
> > --=20
> > 1.9.1
> >=20
> > --=20
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
> --=20
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com



--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--kORqDWCi7qDJ0mEj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlUrn4AACgkQN1Ujt2V2gBx8qgCfYg79vE5WiqX51sjCBx4eIIng
J4kAoLNGn6oNdHwoYh3UVQNSFNvvp4rw
=DXnQ
-----END PGP SIGNATURE-----

--kORqDWCi7qDJ0mEj--
