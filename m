Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CF1AE00FDC; Tue, 23 Aug 2016 06:18:44 -0700 (PDT)
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
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B36C8E00FDA
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 06:18:42 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id i5so18124548wmg.2
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 06:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=e43tWt9xhYESLeHilQnTyMQliqryDRDv/QI/G+aBY9c=;
	b=m6uHbyJOdU2IPGPQ9gPyDgELl4tqzPja6f2mSuoY5k1xKvJd6SVG0pZ2O3OMZMdIKA
	syfry3kuVmgdzqUvDo2aj5jZAKY5kTeFbgWwwKrlSyLUZ9ahCmz5RT8ufOHdgKbjdEb9
	n4ksWNn6NG7oPpoqKgbv1uWBttP2TEWTmQVK69jb4flJd6qt7pa0AIgcUXorf5nwkEZm
	J9ZY4o/wh7esfzH6dwK3asnxcqjr0qnL/0AF+ddwTPQbtItatF/01GkRfvUR8gPnUfJJ
	rh0smw22R2PeYf7Bga9JvioGax2lczzIKBxEsenQdq1EjK+gCT/2yCsqIo19mynnLm5E
	gnEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=e43tWt9xhYESLeHilQnTyMQliqryDRDv/QI/G+aBY9c=;
	b=meNKOIgrxPIns26oPyP+N4YRqOONrAPOsrmdni4GiGL+nTGCkuirEK1BbTj6U89YNv
	lWT6OezTri2bdkirZLGGLmNYdJoU3gbJdku/FGpgf6rZQfNU0BKDMTpg5H731E/Iyehs
	7CTkXALCXkL5ERGJb63D84FIh+cyGio6V9PlygqDX5gry9wPReRYIbqbzo8Di1gotkbs
	Rn2xLi/7q1845aHq6TeTEA9T4dmgYCIcDeLWhAsGvUZM3gVLcL4BLTmO6hHOPt7BaCm4
	/oWJAUOmpYlCL9RXpa/AnxCdDJn1biM8F+Hw12FW0ZKanmOFI7PKu1p0Pfups7u1vHVY
	rziw==
X-Gm-Message-State: AEkooutI8b5OVJNpC8D52RCI3fSA2Yd61EXOyvDk8OJ+gKuiNGsihKOh7YGNG651OY4yVQ==
X-Received: by 10.194.75.198 with SMTP id e6mr23770939wjw.31.1471958321525;
	Tue, 23 Aug 2016 06:18:41 -0700 (PDT)
Received: from localhost (ip-89-176-104-169.net.upcbroadband.cz.
	[89.176.104.169])
	by smtp.gmail.com with ESMTPSA id 3sm4465826wms.1.2016.08.23.06.18.39
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 23 Aug 2016 06:18:39 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 23 Aug 2016 15:18:40 +0200
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20160823131840.dkxlcyn3rrfe35cu@jama>
References: <1471593718-23587-1-git-send-email-maxin.john@intel.com>
	<20160819081331.xuaqej3p7l6yon7m@jama>
	<20160819084237.GC16863@mbabyjoh-desk.ger.corp.intel.com>
	<CAJTo0LY4dgMJz_mh37BQhnkhSCkcOvrn1z0vm51thAGAJGgMnA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LY4dgMJz_mh37BQhnkhSCkcOvrn1z0vm51thAGAJGgMnA@mail.gmail.com>
User-Agent: Mutt/1.6.2 (2016-06-11)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-qt4][PATCH 1/2] qt4-embedded.inc: provide PACKAGECONFIG for tslib
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
X-List-Received-Date: Tue, 23 Aug 2016 13:18:44 -0000
X-Groupsio-MsgNum: 31611
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yd5tubsdsci25azj"
Content-Disposition: inline

--yd5tubsdsci25azj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 22, 2016 at 09:37:56PM +0100, Burton, Ross wrote:
> On 19 August 2016 at 09:42, Maxin B. John <maxin.john@intel.com> wrote:
>=20
> > (A quick grep in meta-qt4 for PACKAGECONFIG_CONFARGS returned zero resu=
lts)
> >
>=20
> FWIW it's a relatively new feature: when PACKAGECONFIG is evaluated it
> writes the enabled/disabled values to PACKAGECONFIG_CONFARGS, which class=
es
> can then use to set the relevant variable.  For now it also sets
> EXTRA_OECONF but that was meant to be changed now that we're unfrozen.
>=20
> Martin, would you be able to write and test the change to remove
> EXTRA_OECONF from the PACKAGECONFIG handling?

I've prepared such change and will include it in next world build to see
how many things still abuse EXTRA_OECONF (hopefully buildhistory will
catch at least some differences once the options are gone from the
build).

Unfortunately the world status isn't so great now, so many issues might
be hidden.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--yd5tubsdsci25azj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAle8TS8ACgkQN1Ujt2V2gBzuOACeMeG/g/ksUDOF7btHSedNi3ja
KxoAniMPmlptOSpl0e6HN8wlW1Wq5CsG
=+11G
-----END PGP SIGNATURE-----

--yd5tubsdsci25azj--
