Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3745CE007B9; Sat, 18 Oct 2014 02:10:22 -0700 (PDT)
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
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C00EFE006EF
	for <yocto@yoctoproject.org>; Sat, 18 Oct 2014 02:10:11 -0700 (PDT)
Received: by mail-wg0-f52.google.com with SMTP id a1so2314904wgh.23
	for <yocto@yoctoproject.org>; Sat, 18 Oct 2014 02:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=hQo+I7bd/T2Ba9H0gH1Rwc7rszN4AAxgwh6WH7ylDpI=;
	b=SWjtha47PwCY8/aL806L4hpi7XJ7WRQJ2206yoATm6ZmAsIUIPl982GS0cnaXzU+No
	7CR2K/UYnAvDlTEcT4RduEc2icu3zjNcp/drON6xnAJyeCCH00VHKk+KjZWqWpjlvuoY
	ZXLGkNfFVL/LPiKqagThw0at9xNN6qv4xkAkiPsihYVb3S8WI+KWrFr4N6i8PbVWktu1
	QgtZCHIy1wvlwp6CuIGWIjdk8g99k4H+F7LiVgyoGwzXW2eb3dC/8ShKfUgzcNFwJvgs
	LBq6+DMFL8aN7LEmXEOYEBoD+JdhfVxmhIDjw9BhS2OGdzKB2Lnr4u4KCswUuSMpxI6t
	MHKg==
X-Received: by 10.180.79.38 with SMTP id g6mr4755668wix.42.1413623410090;
	Sat, 18 Oct 2014 02:10:10 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	hp2sm4537430wjb.40.2014.10.18.02.10.09 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 18 Oct 2014 02:10:09 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Sat, 18 Oct 2014 11:10:09 +0200
To: Neuer User <auslands-kv@gmx.de>
Message-ID: <20141018091009.GD2437@jama>
References: <m1qpbo$lsa$1@ger.gmane.org>
	<9690622.nYuOPMAxm8@peggleto-mobl5.ger.corp.intel.com>
	<m1rb0r$ucm$1@ger.gmane.org>
	<2231298.4P3ZM5y4CY@peggleto-mobl5.ger.corp.intel.com>
	<m1rc1u$cvb$1@ger.gmane.org> <m1rf00$l0m$1@ger.gmane.org>
	<m1t3rp$aj2$1@ger.gmane.org> <20141018084423.GB2437@jama>
	<m1t9ml$43g$1@ger.gmane.org>
MIME-Version: 1.0
In-Reply-To: <m1t9ml$43g$1@ger.gmane.org>
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
X-List-Received-Date: Sat, 18 Oct 2014 09:10:22 -0000
X-Groupsio-MsgNum: 21846
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="3Pql8miugIZX0722"
Content-Disposition: inline

--3Pql8miugIZX0722
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 18, 2014 at 10:51:30AM +0200, Neuer User wrote:
> Am 18.10.2014 um 10:44 schrieb Martin Jansa:
> > On Sat, Oct 18, 2014 at 09:11:51AM +0200, Neuer User wrote:
> >> I don't see any chance to get this running. The whole environment seems
> >> to be missing, such as BUILD_SYS, HOST_SYS, STAGING_LIB_DIR and other.
> >>
> >> I will now completely resetup yocto from scratch, hoping that this fix=
es
> >> the problem. Will report tomorrow or as soon as I have a result.
> >=20
> > Have you tried to revert these 2 changes?
> > http://git.openembedded.org/openembedded-core/commit/?h=3Ddaisy&id=3Dde=
5797b27a358954eb15318d0d77ad1981981861
> > http://git.openembedded.org/openembedded-core/commit/?h=3Ddaisy&id=3Dae=
49adc13db10cb39eeb9377eb4c60a4db436e00
> >=20
> >=20
> >=20
> Thanks, they look very promising.
>=20
> Currently I have completely set up my yocto environment from scratch
> again. It's curently compiling. There was another error that due to some
> metadata left from the older daisy version that I needed to fix by
> cleaning the work dir. So maybe this is something similar here.
>=20
> If that doesn't help, I will look into reverting these two changes.
>=20
>=20
> Btw. do you know that the qt5 repo is currently incompatible with daisy?
> There is a patch in fsl-arm that cannot be applied:
>=20
> ./meta-fsl-arm/qt5-layer/recipes-qt/qt5/qtmultimedia_%.bbappend
>=20
> This needs to be deleted, otherwise qtmultimedia cannot be generated.

Are you using meta-qt5/daisy or meta-qt5/master?

Please report it to meta-fsl-arm maintainer, I'm not using that layer,
but I think they should either provide separate .bbappends for _5.*.bb and
*_git.bb or make sure it applies for both versions (there is 5.3.2 and
5.4-alpha in meta-qt5/master and many patches need to be slightly
different).

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--3Pql8miugIZX0722
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlRCLnEACgkQN1Ujt2V2gBwmZQCdHL8E7od48J8tIsPFh3wGZs1K
BJQAoKIrdcEAyru193+UEf4QazIfsX3M
=QbTr
-----END PGP SIGNATURE-----

--3Pql8miugIZX0722--
