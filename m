Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B2CCE007B9; Sat, 18 Oct 2014 02:36:26 -0700 (PDT)
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
	*      [209.85.212.181 listed in list.dnswl.org]
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 345CEE006EF
	for <yocto@yoctoproject.org>; Sat, 18 Oct 2014 02:36:21 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id hi2so2903852wib.2
	for <yocto@yoctoproject.org>; Sat, 18 Oct 2014 02:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=YVLerQ4j1p0OPREXuDpc5ig6vIZKKjo/V64jNcdPVOY=;
	b=PUeJO3t6nRxem9oQFHXYWxqzkMGzVh8ZFnETLtW4zPZlFVwaUs9t9aHYn6Wwcmt8J5
	cDKJ2Pmw0bb+l53CqXUy2nDrL4kJRiPIxlfC84++2Q8LooOn71YbBNRMy4vsFIGvumtU
	xxsyianOWcd8pRKWnI7be2C7cVG15OBsgXu5o1s12WiwQHb1KGicg85WZIwJEvg4rxat
	NviSVettvcUX2zdn2z9icbg22KFGpv669ynmFo/8WsgEEneCNPKhn45FMZVNt4/y8UDN
	7/sjCNfsYwCzeMm53I2gtEWqtIO7SGfJjE8+NSagPYOZwar+9DONJ+xAiN4sTocGEbD9
	MKig==
X-Received: by 10.194.172.234 with SMTP id bf10mr16968349wjc.81.1413624980825; 
	Sat, 18 Oct 2014 02:36:20 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id u8sm4642721wjq.1.2014.10.18.02.36.19
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 18 Oct 2014 02:36:19 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Sat, 18 Oct 2014 11:36:20 +0200
To: Neuer User <auslands-kv@gmx.de>
Message-ID: <20141018093620.GF2437@jama>
References: <9690622.nYuOPMAxm8@peggleto-mobl5.ger.corp.intel.com>
	<m1rb0r$ucm$1@ger.gmane.org>
	<2231298.4P3ZM5y4CY@peggleto-mobl5.ger.corp.intel.com>
	<m1rc1u$cvb$1@ger.gmane.org> <m1rf00$l0m$1@ger.gmane.org>
	<m1t3rp$aj2$1@ger.gmane.org> <20141018084423.GB2437@jama>
	<m1t9ml$43g$1@ger.gmane.org> <20141018091009.GD2437@jama>
	<m1tbak$ko0$1@ger.gmane.org>
MIME-Version: 1.0
In-Reply-To: <m1tbak$ko0$1@ger.gmane.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: Updating daisy -> Python.h not found
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
X-List-Received-Date: Sat, 18 Oct 2014 09:36:26 -0000
X-Groupsio-MsgNum: 21849
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="pyE8wggRBhVBcj8z"
Content-Disposition: inline

--pyE8wggRBhVBcj8z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 18, 2014 at 11:19:14AM +0200, Neuer User wrote:
> Am 18.10.2014 um 11:10 schrieb Martin Jansa:
> > On Sat, Oct 18, 2014 at 10:51:30AM +0200, Neuer User wrote:
> >> Btw. do you know that the qt5 repo is currently incompatible with dais=
y?
> >> There is a patch in fsl-arm that cannot be applied:
> >>
> >> ./meta-fsl-arm/qt5-layer/recipes-qt/qt5/qtmultimedia_%.bbappend
> >>
> >> This needs to be deleted, otherwise qtmultimedia cannot be generated.
> >=20
> > Are you using meta-qt5/daisy or meta-qt5/master?
> >=20
> Hmm, master. Didn't know there was a daisy branch. Did a diff between
> the two branches now and do not see any difference though which could
> solve the above problem (just seems to add some things such as
> noqtwebkit option). I will try it though.

There is very different version of qtmultimedia and gst-1.0 support

 recipes-qt/qt5/qtmultimedia-git/0001-Initial-porting-effort-to-GStreamer-1=
=2E0.patch                  | 2369 ++++++++++++++++++++++++++++++++++++++++=
++++++++
 recipes-qt/qt5/qtmultimedia-git/0002-qtmultimedia.pro-Respect-OE_GSTREAMER=
_ENABLED-OE_GST.patch     |   53 ++
 recipes-qt/qt5/qtmultimedia.inc                                           =
                          |   18 +-
 recipes-qt/qt5/qtmultimedia/0001-Initial-porting-effort-to-GStreamer-1.0.p=
atch                      | 2381 ++++++++++++++++++++++++++++++++++++++++++=
+++++++
 recipes-qt/qt5/qtmultimedia/0002-qtmultimedia.pro-Respect-OE_GSTREAMER_ENA=
BLED-OE_GST.patch         |   53 ++
 recipes-qt/qt5/qtmultimedia_5.2.1.bb                                      =
                          |    5 -
 recipes-qt/qt5/qtmultimedia_5.3.2.bb                                      =
                          |    5 +
 recipes-qt/qt5/qtmultimedia_git.bb                                        =
                          |   10 +-

> > Please report it to meta-fsl-arm maintainer, I'm not using that layer,
> > but I think they should either provide separate .bbappends for _5.*.bb =
and
> > *_git.bb or make sure it applies for both versions (there is 5.3.2 and
> > 5.4-alpha in meta-qt5/master and many patches need to be slightly
> > different).
> >=20
>=20
> Ok. will send that to the maintainer.
>=20
> Cheers
>=20
> Michael
>=20
>=20
> P.S.: My yocto install is still compiling but I already saw that the
> error is still there. So I will now try to revert the two patches you
> mentioned.
>=20
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--pyE8wggRBhVBcj8z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlRCNJQACgkQN1Ujt2V2gBy3hwCgucigwDtByurlvS1P9CAu/Q9Z
LcgAoLK/K4lTKuMNOTExDCeOs8Ds9Dsm
=Mgf8
-----END PGP SIGNATURE-----

--pyE8wggRBhVBcj8z--
