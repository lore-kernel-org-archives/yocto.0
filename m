Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93252E00BE8; Wed, 17 Feb 2016 10:45:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AE9CE00BC2
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2016 10:45:35 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id g62so250202012wme.0
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2016 10:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=xioyr6FwscgGZPUp/kIFZawiGDaXACghZsnsBGvGLww=;
	b=siZx3UMhNyJg8CeCE1YADrPuVyFTImiVFMutsSqY5MUaHH0pwC35blUtK/0tnfhpay
	QiUlUwbhL3BHM17u/osQSVQe9fa3CluEAGd4DnFHwNOL3WS1ZNQNS5UJLYxkhFjTyyRU
	Wgj3SxsG7TT0UYQDpEDnP+wgqE+ESSybHu6w5GKPjjo4r/p1PcU2pDjviJaI2HQKQniP
	lFSg3ac3xflaJkct1BDL3ICgCVjw6GWX1L37SCkk4SX/XQdjvprFk9qroqnZWfkdmCdz
	gKWYGFp/7knyZPPLK4/7fiYPGqoiKHfTAy8RIWSD27x7xAuSl252OzxfXcWYAspLmBc1
	XlUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=xioyr6FwscgGZPUp/kIFZawiGDaXACghZsnsBGvGLww=;
	b=l38kl0+d++xjxPWy/BC7F/3uE027QP8nMgdacEX7g9CxKZ7Y9PmwE4PM2aGrKdCtVy
	bbEXXkN85IWAM0ZKzCw45c/zivG/XOuGLUN0BimYJ9Sa2Ndx7RzpgpLL5MfutSbJU/Gy
	/nmfmAFtv9ME9SPciL7mOQw59jl4shsrTdvp7IZoAgGW8+WQ0Qglc4qdBr0qCAEx0Nwv
	Hw7i66I4cSDBxyw9bfZtb1ux6Q1mTqw17bDoSv0EZvGVieJ+3XRXLsOvoyVYEit3n3oe
	UZvfjJdJw371IpogAB5zXe9rqZ5nwuH/+Vh3jApAZlPaE96o9VhOWV2ONzBliVLEMnt4
	fmhg==
X-Gm-Message-State: AG10YOQCaddyLw5j6FuV9+cYmDqOGd9Evp4ruNT+g4pHuIdKvWK5hhVZtLxvs3hKvj6hTQ==
X-Received: by 10.194.92.68 with SMTP id ck4mr3448429wjb.144.1455734734748;
	Wed, 17 Feb 2016 10:45:34 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id lz5sm2836985wjb.5.2016.02.17.10.45.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 17 Feb 2016 10:45:33 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 17 Feb 2016 19:45:50 +0100
To: Michael Gloff <mgloff@emacinc.com>
Message-ID: <20160217184550.GA2574@jama>
References: <CALXw4G6C3AFm9FLEaKSF6nrxwKU59v4r-yX3zCTwRKTWPPbTLg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALXw4G6C3AFm9FLEaKSF6nrxwKU59v4r-yX3zCTwRKTWPPbTLg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Qtbase Poky/Jethro
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
X-List-Received-Date: Wed, 17 Feb 2016 18:45:39 -0000
X-Groupsio-MsgNum: 28500
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline

--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 03, 2016 at 03:15:26PM -0600, Michael Gloff wrote:
> All,
> I'm hoping someone can help to get qtbase to compile on a fresh checkout =
of
> poky and meta-qt5 on Jethro branch and a clean build directory. I've
> attached the log.do_compile and pasted below what I believe to be the
> error. Has anyone seen this before? Qtbase does build in master for me
> though. Are there some particular patches that need to be backported?
>=20
> Build Configuration:
> BB_VERSION        =3D "1.28.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Ubuntu-14.04"
> TARGET_SYS        =3D "x86_64-poky-linux"
> MACHINE           =3D "genericx86-64"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "2.0.1"
> TUNE_FEATURES     =3D "m64 core2"
> TARGET_FPU        =3D ""
> meta
> meta-yocto
> meta-yocto-bsp    =3D "jethro:dd0ba9ea4a11ab15348d4fe3574e4b28784db82f"
> meta-qt5          =3D "jethro:d5536e34ec985c82b621448ab4325e5cbba38560"
>=20
> |
> /home/developer/oe/poky/build/tmp/work/core2-64-poky-linux/qtbase/5.5.1+g=
itAUTOINC+5afc431323-r0/git/src/widgets/styles/qgtkstyle.cpp:
> In member function 'virtual QRect
> QGtkStyle::subControlRect(QStyle::ComplexControl, const
> QStyleOptionComplex*, QStyle::SubControl, const QWidget*) const':
> |
> /home/developer/oe/poky/build/tmp/work/core2-64-poky-linux/qtbase/5.5.1+g=
itAUTOINC+5afc431323-r0/git/src/widgets/styles/qgtkstyle.cpp:3636:24:
> error: 'isInstanceOf' is not a member of 'QStyleHelper'
> |              } else if (QStyleHelper::isInstanceOf(groupBox->styleObjec=
t,
> QAccessible::Grouping)) {
> |                         ^
> |
> /home/developer/oe/poky/build/tmp/work/core2-64-poky-linux/qtbase/5.5.1+g=
itAUTOINC+5afc431323-r0/git/src/widgets/styles/qgtkstyle.cpp:3636:74:
> error: 'QAccessible' has not been declared
> |              } else if (QStyleHelper::isInstanceOf(groupBox->styleObjec=
t,
> QAccessible::Grouping)) {
>=20
> Are there some PACKAGECONFIGs or DISTRO_FEATURES that are not part of
> default Poky that need to be enabled?

You can either remove gtkstyle (which is included by default with x11 in
DISTRO_FEATUREs) or add accessibility (which most people probably
enable, because it's needed for building qtquickcontrols as comment in
qtbase_git.bb says).

This issue is fixed in qtbase 5.6, but the populate_sysroot tasks are
failing since this oe-core commit fixed the QA checks:
http://git.openembedded.org/openembedded-core/commit/meta/classes/insane.bb=
class?id=3D3739aaf644d5a0f28e85fd07c67cecbfa5b8fb8a
I'm working on the fix for this.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--cNdxnHkX5QqsyA0e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEUEARECAAYFAlbEv4sACgkQN1Ujt2V2gBw1YQCfY0j59OpxxGqkO8Kml6JlgMmQ
MKkAlRZbzpR92wLLg112XsNS/eYAks0=
=v2GC
-----END PGP SIGNATURE-----

--cNdxnHkX5QqsyA0e--
