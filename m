Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DA97E00906; Fri, 14 Nov 2014 04:11:17 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48C6DE008EC
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 04:11:04 -0800 (PST)
Received: by mail-wi0-f173.google.com with SMTP id n3so2475977wiv.6
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 04:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=Cx/bF3B8NfMy/m327zf163nhDFl6CBEJgcUVd0baf7I=;
	b=EdzuTWKh0BLHtbQNXDaYgtCc/ftoHrSo5S2Qje5quKk9AqMLQergUbbe7kdM6P8sa+
	QM1LstKuAho0CP5mZdrhtpsjlCOLX3sAnjeIfsEs97T2NQG8Lq3qGqg+F7TT1U5dtXrs
	aZR5FAPHGBmHmfMo+/IvQPLVWqGZd98AGvhrWRjaotAA3VvsJcXcKrmI8jOeFHGT0BPs
	r72zVvzqR9KkErA1yQWfXB66KzJgy8IatepC5M0j/J7ia0JBmzjC2eFDEI/FMJ7/o7ji
	BACSROnUdklzGEJUaaablM130LxWhyu0AOn+dRUQ9VVQD+Jsv2p7PJga3z0kytUeaips
	QVYg==
X-Received: by 10.180.90.45 with SMTP id bt13mr6784672wib.75.1415967060978;
	Fri, 14 Nov 2014 04:11:00 -0800 (PST)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	dm10sm3184202wib.18.2014.11.14.04.10.59 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Nov 2014 04:11:00 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 14 Nov 2014 13:11:06 +0100
To: Joseph Andrew de la =?iso-8859-1?Q?Pe=F1a?= <jdelapena@lexmark.com>
Message-ID: <20141114121106.GF2458@jama>
References: <43F0718C449F6A46B393DA2BEC8E01280C645342@post>
	<CAJrRHk4CVfUUJ-N8940s6d3-DoL9jTdH=ibsSpWZ5pqt4X8Qsw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJrRHk4CVfUUJ-N8940s6d3-DoL9jTdH=ibsSpWZ5pqt4X8Qsw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: icecc
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
X-List-Received-Date: Fri, 14 Nov 2014 12:11:17 -0000
X-Groupsio-MsgNum: 22216
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="5Mfx4RzfBqgnTE/w"
Content-Disposition: inline

--5Mfx4RzfBqgnTE/w
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Try to use INHERIT_DISTRO_append.

On Fri, Nov 14, 2014 at 05:10:56PM +0800, Joseph Andrew de la Pe=F1a wrote:
> Good day Peter,
>=20
> Maybe you want to verify first the prioritization of the layers in your
> set-up.
> Please execute bitbake-layers show-layers to really see if meta-yocto is
> really executed after your layer (meta-mydist)
>=20
> If you verified that it is,
> please add in your conf/layer.conf, BBFILE_PRIORITY_mydist =3D "any number
> after meta-yocto".
>=20
> Maybe that will work for you.
>=20
> Thanks,
> -J
>=20
> On Tue, Oct 28, 2014 at 8:12 PM, Peter Bergin <peter.bergin@tritech.se>
> wrote:
>=20
> > Hi,
> >
> > I am trying to get icecc working together with Poky (daisy branch). I
> > follow the Yocto Project Reference Manual chapter "7.45. icecc.bbclass"=
 and
> > I can not get it working.
> >
> > The manual states that I on a distribution level can add the following:
> >
> >     INHERIT_DISTRO +=3D "icecc"
> >     ICECC_DISABLED ??=3D "1"
> >
> > This will make sure my builders use the same sstate signatures regardle=
ss
> > if they use icecc or not. The way I did it to test was to create my own
> > distro layer, called mydist, that inherits from Poky.
> >
> >     $ cat ../meta-mydist/conf/distro/mydist.conf
> >
> >     require conf/distro/poky.conf
> >
> >     DISTRO =3D "mydist"
> >     DISTRO_NAME =3D "MyDist"
> >
> >     INHERIT_DISTRO +=3D "icecc"
> >     ICECC_DISABLED ??=3D "1"
> >
> > In my bblayers.conf I added this layer directly after the meta-yocto
> > layer. But with this addition my build environment will not work anymor=
e.
> > What happens is that the variable INHERIT_DISTRO is overwritten because=
 my
> > layer is picked before the poky/meta/conf/distro/defaultsetup.conf. I g=
et
> > the same behaviour if i edit the poky.conf and not use my own distro.
> >
> >     $ bitbake core-image-base -e
> >
> >     ...
> >
> >     #
> >     # $INHERIT_DISTRO [3 operations]
> >     #   append /work/yocto/course/meta-mydist/conf/distro/mydist.conf:6
> >     #     "icecc"
> >     #   set? /work/yocto/course/poky/meta/conf/distro/defaultsetup.conf=
:22
> >     #     "debian devshell sstate license"
> >     #   set /work/yocto/course/poky/meta/conf/documentation.conf:226
> >     #     [doc] "Lists classes that will be inherited at the distributi=
on
> > level. It is unlikely that you want to edit this variable."
> >     # computed:
> >     #   " icecc"
> >     INHERIT_DISTRO=3D" icecc"
> >     #
> >
> >     ...
> >
> > What is wrong here, documentation or my setup? Can someone give me advi=
ce?
> >
> > Regards,
> > /Peter
> >
> >
> >
> >
> >
> >
> > Peter Bergin
> >
> >
> >
> > peter.bergin@tritech.se
> > +46 733 35 21 05
> >
> >
> > www.tritech.se
> > +46 31 763 38 00
> > Nordstadstorget 6
> > SE-411 05 G?teborg, Sweden
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--5Mfx4RzfBqgnTE/w
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlRl8VoACgkQN1Ujt2V2gBwV9wCfdeJCySGvr6AP8oQVcOHemxCi
/hEAn02BCAW0i2adLVj/wMEb4qNINkR9
=Std0
-----END PGP SIGNATURE-----

--5Mfx4RzfBqgnTE/w--
