Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D9FCE0087C; Mon,  3 Nov 2014 08:05:32 -0800 (PST)
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
	*      [209.85.212.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC84FE00874
	for <yocto@yoctoproject.org>; Mon,  3 Nov 2014 08:05:27 -0800 (PST)
Received: by mail-wi0-f172.google.com with SMTP id bs8so6910333wib.5
	for <yocto@yoctoproject.org>; Mon, 03 Nov 2014 08:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=xs6l3hdzYUiQhpoBwMolA569IQWP+mEhudzE8Fvg7OQ=;
	b=pWCS/CewwdQ61ZJTJzlFaWkodVRdCLHCYSTB6DPBbtSeN7ydxCOGvQTJDDDcxXX+4D
	ZMY7JSGkJTQmZrDMgtZBSSz5VBzTlAkp1u0fSGcCHdVcKKW1KQLUfvJDWghaszBaQu7h
	9rSav6lfEFRjYvCVl9dr3ircitBpBM9rI1rqJNZoRT2fKDOhLh85P7WPJTZdbG26nMAV
	YmPLpBbx4mRTXIZeFfcT4Hk90xGMQ5obLsh159dZf+rB6Z5XB0uxeGVxrVO4NC1kRdzZ
	ZF8CQCzczeOfWh2ClgswO3X26oeiQQfOy8KkV8revsyONdalMGLSkmnYYMSgYTPbr8WU
	WKVg==
X-Received: by 10.180.19.234 with SMTP id i10mr17791375wie.28.1415030726112;
	Mon, 03 Nov 2014 08:05:26 -0800 (PST)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	r10sm9174632wiy.19.2014.11.03.08.05.25 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Nov 2014 08:05:25 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 3 Nov 2014 17:05:28 +0100
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Message-ID: <20141103160528.GB2799@jama>
References: <30C2D590D16A5C46ADFE652191037798411583BD@AZ-US1EXMB03.global.avaya.com>
	<1415027190.5111.17.camel@ted>
	<30C2D590D16A5C46ADFE652191037798411585F0@AZ-US1EXMB03.global.avaya.com>
MIME-Version: 1.0
In-Reply-To: <30C2D590D16A5C46ADFE652191037798411585F0@AZ-US1EXMB03.global.avaya.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Another sstate rebuild issue, badly need help understanding sstate
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
X-List-Received-Date: Mon, 03 Nov 2014 16:05:32 -0000
X-Groupsio-MsgNum: 22039
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="p2kqVDKq5asng8Dg"
Content-Disposition: inline

--p2kqVDKq5asng8Dg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 03, 2014 at 03:09:43PM +0000, Vuille, Martin (Martin) wrote:
> Hi Richard,
>=20
> > -----Original Message-----
> > From: Richard Purdie [mailto:richard.purdie@linuxfoundation.org]
> > Sent: November 03, 2014 10:06 AM
> >=20
> > On Mon, 2014-11-03 at 12:53 +0000, Vuille, Martin (Martin) wrote:
> > > I have a variable =E2=80=9CREV_TOOLS=E2=80=9D defined in distro/conf/=
somename.conf in
> > > a custom distro layer from a git repo.
> > >
> > > This variable is assigned to SRCREV in a number of recipes (SRCREV =3D
> > > =E2=80=9C${REV_TOOLS}=E2=80=9D) for packages included in my images an=
d SDKs.
> >=20
> > Can you describe how the value of REV_TOOLS is set? Is it just assigned
> > some value or done with some code?
> >=20
>=20
> REV_TOOLS =3D "<some git commit hash string>"
>=20
> > Does clearing the bitbake cache make things rebuild as expected (mv
> > tmp/cache tmp/cache-old) ?
> >=20
>=20
> I did a cleansstate on the affected packages and they rebuild as expected.

Do your packages have SRCPV in PV?

SRCREV isn't included in sstate signature without SRCPV in PV or this
patch:

commit a414b17e1d783ad68a2d0f7d5922967449c05797
Author: Ross Burton <ross.burton@intel.com>
Date:   Mon Sep 29 15:40:14 2014 +0100

    base.bbclass: add SRCREV to do_fetch() hash

but even with this patch it doesn't work for recipes with multiple
repositories (you can find an e-mail with more details in oe-core ML).

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--p2kqVDKq5asng8Dg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlRXp8gACgkQN1Ujt2V2gBxtJgCeOKTfaAzM2T1nPe9LgffjAvyy
lasAoLc8GGsX3UxSbMj+zrVId2KnzjAb
=p4bB
-----END PGP SIGNATURE-----

--p2kqVDKq5asng8Dg--
