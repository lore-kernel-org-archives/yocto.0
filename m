Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31911E00895; Mon, 13 Jul 2015 11:04:43 -0700 (PDT)
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
	*      [209.85.212.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EE4CE00476
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2015 11:04:40 -0700 (PDT)
Received: by wibud3 with SMTP id ud3so36557189wib.1
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2015 11:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=RwhzkPyglw9zwWyWMWKAb744UqblHKtiF6NHN1OUDG8=;
	b=VAgOlkEKXxcZPFQaid0T4+pUOJJAPNfo1B0XI5Xtj5BmGV/yAq9UO3UH/X+K1BPeoZ
	R3N5/JPPa43j8gfUCWsph7R2mmmFkqBOI3hfz2XT7OoB9fcf+eYf96g3sYNIg3CCzOkG
	nqWewingWxU2tLk7wO4AYbBYwbUy31Jpzk0gdmjpah3AbieJm0iFCrAN0OQ9OTWTixNJ
	ScVye8r2r7O0Ti6sPeOgd2yvLsXO+DnuaEWLQCMelCocTgDw4HzZsOJ6lnUyUxAMFtf/
	cO6/wixCVRmhlv2xbsLRWTgbdCo0ILIQ7/yTvnDCGazw5sQjkT3PY2YYhHdGcmJeEeVb
	/94g==
X-Received: by 10.194.23.167 with SMTP id n7mr43447909wjf.112.1436810679389;
	Mon, 13 Jul 2015 11:04:39 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	v20sm30517253wjw.17.2015.07.13.11.04.37
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 13 Jul 2015 11:04:38 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 13 Jul 2015 20:04:42 +0200
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20150713180442.GB2407@jama>
References: <1436797408174.67011@selex-es.com>
	<22658_1436803637_55A3E234_22658_12077_1_10339148.fJj1pddUcL@peggleto-mobl.ger.corp.intel.com>
	<1436804334217.6373@selex-es.com>
	<10339162.sO6SsRz4fR@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <10339162.sO6SsRz4fR@peggleto-mobl.ger.corp.intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Which is the best strategy to customize Qt configuration?
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
X-List-Received-Date: Mon, 13 Jul 2015 18:04:43 -0000
X-Groupsio-MsgNum: 25451
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="SkvwRMAIpAhPCcCJ"
Content-Disposition: inline

--SkvwRMAIpAhPCcCJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 13, 2015 at 05:38:59PM +0100, Paul Eggleton wrote:
> On Monday 13 July 2015 16:18:55 Pampolini Matteo wrote:
> > It was also my idea to override QT_PHONON variable inside my .bbappend =
file,
> > but the fact is that this does not prevent BitBake from downloading and
> > compiling glib/gstreamer.
> >=20
> > In my first hack, when I modified the original qt.inc file, I had to ma=
ke
> > both changes, DEPENDS variable for BitBake and QT_PHONON for Qt itself.
> >=20
> > As I wrote in my answer to Leonardo the issue is: how can I override the
> > value of DEPENDS variable in my own layer, if possible?
>=20
> You can set DEPENDS in the qt4-x11-free bbappend just as with any other=
=20
> variable. In this instance you could use the _remove operator e.g.
>=20
> DEPENDS_remove =3D "gstreamer gst-plugins-base"

Will this work if gstreamer gst-plugins-base aren't next to each other
in DEPENDS?

I think good convention is to use:
DEPENDS_remove =3D "gstreamer"
DEPENDS_remove =3D "gst-plugins-base"
for it to work even after original DEPENDS in the recipe is re-ordered
or changed.

Regards,

> (This will only work here having additionally set QT_PHONON =3D "-no-phon=
on" to=20
> disable the underlying depenendency, of course.)
>=20
> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--SkvwRMAIpAhPCcCJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlWj/bkACgkQN1Ujt2V2gBzTMACghzc1x/YwPkyTfmG8cZ39MVmA
jZkAoIEfLkHVxxsg+pjR8JQMpFZT46z1
=ATl6
-----END PGP SIGNATURE-----

--SkvwRMAIpAhPCcCJ--
