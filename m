Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBD6EE00BE8; Wed, 27 Sep 2017 10:31:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37E9EE00B53
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 10:31:53 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id m72so21104420wmc.1
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 10:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=iek/tv4WwTusb4hh6w54u8SkSJ68FUQJBCBJqsQ5DlE=;
	b=HQbO9QUYHWeYhJk9bW8sND/aHmgSc/TvFymt1rime2VpIbVT2cSBrzWL7jUX7ERXps
	UhHDVVEjzXARE7Pt2Sa66qbkggAUo4BNFUu8tQ8+ESQZGmescOLuHrrMycDMxRVAy0+I
	3hz/PgRKGXIkQKSjKWvksUDrL5v7fv8GYE26cmx1u+NDzE9RGnumjFnIyAcqgVKp3dnd
	bVfXYQhZvrxMnLXHobXLwdF63Ga99QkETfgeppBh2eW8iAshW5rGyGlqkS3VLLukSliZ
	MziKxa/SD76jSSQRoWXYb2c3D2zmuSvti29/RF8mqhzR+Cw/mCdVhjqJ7Q5DjcTX/D9o
	kOcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=iek/tv4WwTusb4hh6w54u8SkSJ68FUQJBCBJqsQ5DlE=;
	b=mHgj7IPo1F26BHPFqk0v3apswPzT9BYLNEcs9C+i7CP7rUoXWycKyRt/Cj6AFh7/rK
	FDoQybk+enQziyQfWv6BFraMosEO6p9fcCkEwkRaRT499/79bvK5qklt3GR3RgPQd+SB
	bZtqZTn38uM5X1MZEndy80+hcRYn9GJZBx/ccztcAcx6KnAWTzynKEEmHt3K0WMDM/hP
	FbcPYhBn3rlAjdCiuSZvxXNDVk0rkxqhNiY0NptUYmZoty1XP6Kp39AKBJSbZKbHoxm9
	PK/EyMd6DqNiMP7JigrON5ndlgBWMa7bilbEAwgMfjLL3XJqphO6t0oAVjmCgwAG5pAC
	9F5Q==
X-Gm-Message-State: AHPjjUgK75aYCUgYBZBWrKvuJNhrsDX4S8t1wBOYks/hYyHySYQ6aekC
	d4X2CGjMXw6Vn4A4zc4xWL+ptw==
X-Google-Smtp-Source: AOwi7QDE/qawxMEL8ceiHLWoGbIX8fMQCtXvtZbU1ejIum0VXEDjIUUoYCRq8CDQHi+4pvwJIqEHuQ==
X-Received: by 10.28.170.76 with SMTP id t73mr855563wme.118.1506533513182;
	Wed, 27 Sep 2017 10:31:53 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	k52sm20401724wrf.62.2017.09.27.10.31.51
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 27 Sep 2017 10:31:52 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 27 Sep 2017 19:34:31 +0200
To: Otavio Salvador <otavio.salvador@ossystems.com.br>
Message-ID: <20170927173431.GA4112@jama>
References: <1506525799-219-1-git-send-email-Martin.Jansa@gmail.com>
	<CAK18fxE0LZZE0tZ=R_f1e=ACixGjE=KRbq1K7c+NzUE7Q10Fvg@mail.gmail.com>
	<CAP9ODKqsz6mYt6K0q2RqZeTr3X8zq+7B+7vsj8c6HkUbqgTp3w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAP9ODKqsz6mYt6K0q2RqZeTr3X8zq+7B+7vsj8c6HkUbqgTp3w@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
Cc: yocto@lists.yoctoproject.org, Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [meta-raspberrypi][PATCH] Revert "qtbase: Enable EGLFS support"
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
X-List-Received-Date: Wed, 27 Sep 2017 17:31:54 -0000
X-Groupsio-MsgNum: 38082
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ibTvN161/egqYuK8"
Content-Disposition: inline

--ibTvN161/egqYuK8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 27, 2017 at 02:23:43PM -0300, Otavio Salvador wrote:
> Hello Andrei,
>=20
> On Wed, Sep 27, 2017 at 2:13 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > On Wed, Sep 27, 2017 at 4:23 PM, Martin Jansa <martin.jansa@gmail.com>
> > wrote:
> >>
> >> * this reverts commit 04b37dbdb79638b17a670280058400ffaf1b6ccb.
> >> * this makes qtbase and everything which depends on some qt* recipe to
> >>   be effectivelly MACHINE_ARCH
> >>
> >> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> >> ---
> >>  dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 3 ---
> >>  1 file changed, 3 deletions(-)
> >>  delete mode 100644
> >> dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> >>
> >> diff --git a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> >> b/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> >> deleted file mode 100644
> >> index ae3f1d3..0000000
> >> --- a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> >> +++ /dev/null
> >> @@ -1,3 +0,0 @@
> >> -# Copyright (C) 2017 O.S. Systems Software LTDA.
> >> -
> >> -PACKAGECONFIG_GL_rpi   =3D "gles2 eglfs"
> >
> >
> > What would be the solution though?
>=20
> It would use something similar we use for meta-freescale where we
> change the package architecture depending on the SoC.
>=20
> Martin, do you have any idea how other alternative we have?

In theory you can set QT_PACKAGES_ARCH to MACHINE_ARCH in rpi-base.inc
to make it explicit, but that's also really bad (as e.g. rpi2 and rpi3
will each build it's own qtwebengine and all it's deps even when it
should be the same for both).

I think the only usable solution is to let DISTRO to decide the policy,
as Khem suggested DISTRO_FEATURES is first step, if it isn't enough (in
this case it's difficult to distinguish e.g. opengl and gles2 when there
is opengl in DISTRO_FEATURES). So I would leave it to DISTRO maintainers
to decide if they can enable "gles2 eglfs" globally for all MACHINEs in
distro bbappend, or they can enable it only for some DEFAULT_TUNE (or
e.g. for all arm MACHINEs and leave desktop gl for x86).

But forcing this policy from BSP is bad.

Regards,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ibTvN161/egqYuK8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCWcvhJgAKCRA3VSO3ZXaA
HCgpAKCostYFQpt+EogEr4F0iE859CZKjQCgiyttD0Hc+Y+dtLFgKemY3eLgOSE=
=uguw
-----END PGP SIGNATURE-----

--ibTvN161/egqYuK8--
