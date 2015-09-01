Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 208FFE00C1B; Tue,  1 Sep 2015 14:57:24 -0700 (PDT)
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
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A56CBE009EF
	for <yocto@yoctoproject.org>; Tue,  1 Sep 2015 14:57:18 -0700 (PDT)
Received: by wicjd9 with SMTP id jd9so47313850wic.1
	for <yocto@yoctoproject.org>; Tue, 01 Sep 2015 14:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=xNqhzRw0mbONbXtLdt5EBWBMgjC2GD3LujVamiXB11c=;
	b=naaXV9j5JjCxlslDixJllkKGjKPpv80/wS0B3+mzMBHoOHVF4AuHz8/T51PKTx1Z88
	m4bRaY4eu4OUExfQqEnzcflEmizPdF5CtwHGjmNjXYWuqo0pfefFW+6wNavXlcFYzRll
	7XBJwkEzO7NenFnrFDLynBxoTuNlR53GP+vpVWgYRPZ+SJ6Ox4T2GAeCBpDKov7J4nLy
	X4EKIIDIK5LoT89HrttAY6WWsOL8lUUmGaESsXVhAeiBNU+xgVWk2TdsMeGMF/5WbOch
	wnSb1X3ymWCTZqZ0cL7KfHxtS1Cp1pGpLmWmMrXBe6OE/2Vv+Ds0eO7GCUdNJRSzQ952
	r+HA==
X-Received: by 10.180.82.7 with SMTP id e7mr328114wiy.19.1441144636838;
	Tue, 01 Sep 2015 14:57:16 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id en5sm339564wib.18.2015.09.01.14.57.15
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Sep 2015 14:57:16 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 1 Sep 2015 23:57:32 +0200
To: Caio <caiortp@gmail.com>
Message-ID: <20150901215732.GF2458@jama>
References: <CAJqtCyYTZ_X-xNZTCxMJDE2QnvTxp=RW3bCUwa4uVAVQOT7huw@mail.gmail.com>
	<55E5B48B.7030309@siemens.com>
	<CAJqtCybvjh79geHsOcsvX_cvWnSL+1fCnB3scsAXS6azOj9Gwg@mail.gmail.com>
	<CAJqtCybfSCcTaqZ84LW6yK=mXS6q5nJQUjpQ6o+j2o=Mq4TNNg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJqtCybfSCcTaqZ84LW6yK=mXS6q5nJQUjpQ6o+j2o=Mq4TNNg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [meta-qt5] Missing qt5declarative rootfs
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
X-List-Received-Date: Tue, 01 Sep 2015 21:57:24 -0000
X-Groupsio-MsgNum: 26276
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="QNDPHrPUIc00TOLW"
Content-Disposition: inline

--QNDPHrPUIc00TOLW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 01, 2015 at 06:05:58PM -0300, Caio wrote:
> I created a bbappend for qtquickcontrol with ALLOW_EMPTY_${PN} =3D "1" to
> fix. (Thanks Sergio Prado)
>=20
> #cat qtquickcontrol_%.bbappend
> ALLOW_EMPTY_${PN} =3D "1"

And what do you expect from empty package installed in your rootfs?

If you need qtquickcontrol-plugins, then you should add
qtquickcontrol-plugins to RDEPENDS, installing empty package is as good
as not installing qtquickcontrol at all.

> 2015-09-01 11:54 GMT-03:00 Caio <caiortp@gmail.com>:
>=20
> > Pascal,
> >
> > You're right, was my mistake.
> > I updated the recipe to use RDEPENDS_${PN} , but now I'm having problem
> > with dependence ( qtquickcontrols). I'm trying to fix.
> >
> >
> > SUMMARY =3D "QT5  package group"
> > LICENSE =3D "MIT"
> >
> > PR =3D "0"
> >
> > inherit packagegroup
> >
> > RDEPENDS_${PN} +=3D " \
> >     qtbase \
> >     qtbase-plugins \
> >     qtbase-fonts \
> >     qtdeclarative \
> >     qtdeclarative-plugins \
> >     qtdeclarative-qmlplugins \
> >     qtsvg \
> >     qtsvg-plugins \
> >     qtimageformats \
> >     qtimageformats-plugins \
> >     qtmultimedia \
> >     qtmultimedia-plugins \
> >     qtmultimedia-qmlplugins \
> >     qtserialport \
> >     qtscript \
> >     qtgraphicaleffects-qmlplugins \
> >     qtconnectivity-qmlplugins \
> >     qtxmlpatterns \
> >     qtquick1 \
> >     qtquick1-plugins \
> >     qtquick1-qmlplugins \
> >     qtquickcontrols \
> >     qtquickcontrols-qmlplugins \
> >     qtgstreamer \
> >     "
> >
> > Error:
> >
> > Configuring packagegroup-gstreamer.
> > Configuring opkg-collateral.
> > Configuring poky-feed-config-opkg.
> > Configuring quitbattery.
> > Configuring psplash.
> > Collected errors:
> >  * satisfy_dependencies_for: Cannot satisfy the following dependencies =
for
> > packagegroup-qt5:
> >  *     qtquickcontrols *
> >  * opkg_install_cmd: Cannot install package packagegroup-qt5.
> >
> > ERROR: Function failed: do_rootfs
> > ERROR: Logfile of failure stored in:
> > /home/icchw/fsl-community-bsp/toradex_colibri_imx6/tmp/work/colibri_imx=
6-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.3458
> > ERROR: Task 7
> > (/home/icchw/fsl-community-bsp/sources/poky/meta/recipes-core/images/
> > core-image-minimal.bb, do_rootfs) failed with exit code '1'
> >
> >
> > Thank you very much,
> >
> > Regards,
> >
> > Caio Pereira
> >
> >
> > 2015-09-01 11:22 GMT-03:00 Pascal Bach <pascal.bach@siemens.com>:
> >
> >> >
> >> >
> >> > my package group
> >> >
> >> > packagegroup-qt5_0.1.bb <http://packagegroup-qt5_0.1.bb>
> >> >
> >> > SUMMARY =3D "QT5  package group"
> >> > LICENSE =3D "MIT"
> >> >
> >> > PR =3D "0"
> >> >
> >> > inherit packagegroup
> >> >
> >> > VIRTUAL_KEYBOARD ?=3D "maliit-framework-qt5 maliit-plugins-qt5"
> >> >
> >> I don't know if you can use IMAGE_INSTALL in a package group.
> >> Unitl now I have only seen RDEPENDS_${PN} used. IMAGE_INSTALL is norma=
ly
> >> only used in images.
> >>
> >> > IMAGE_INSTALL+ =3D " \
> >> >     dbus \
> >> >     qtbase \
> >> >     qtbase-plugins \
> >> >     qtbase-fonts \
> >> >     qtdeclarative \
> >> >     qtdeclarative-plugins \
> >> >     qtdeclarative-qmlplugins \
> >> >     qtmultimedia \
> >> >     qtmultimedia-plugins \
> >> >     qtmultimedia-qmlplugins \
> >> >     qtserialport \
> >> >     qtscript \
> >> >     qtgraphicaleffects-qmlplugins \
> >> >     qtconnectivity-qmlplugins \
> >> >     qtxmlpatterns \
> >> >     qtquick1 \
> >> >     qtquickcontrols \
> >> >     qtquickcontrols-qmlplugins \
> >> >     qtgstreamer \
> >> >     qtsvg \
> >> >     qtsvg-plugins \
> >> >     qtimageformats \
> >> >     qtimageformats-plugin \
> >> >     "
> >> >
> >> > RDEPENDS_${PN}=3D "qtquickcontrols-qmlplugins qtdeclarative-qmlplugi=
ns
> >> qtdeclarative-plugins"
> >> >
> >> >
> >> Pascal
> >>
> >>
> >
> >
> > --
> > ----------------------------------------------
> > Caio Pereira
> >
>=20
>=20
>=20
> --=20
> ----------------------------------------------
> Caio Pereira

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--QNDPHrPUIc00TOLW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlXmH0sACgkQN1Ujt2V2gBzNMACfRvpNbcNXawu2D5TKpYYKsomQ
tGIAoI+2l+TorD524H7aFzP1j/UrJIW6
=bsb0
-----END PGP SIGNATURE-----

--QNDPHrPUIc00TOLW--
