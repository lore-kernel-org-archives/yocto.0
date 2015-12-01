Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED811E00ADF; Tue,  1 Dec 2015 08:22:20 -0800 (PST)
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
	*      [74.125.82.42 listed in list.dnswl.org]
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 825B1E00A4F
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 08:22:15 -0800 (PST)
Received: by wmec201 with SMTP id c201so213480267wme.0
	for <yocto@yoctoproject.org>; Tue, 01 Dec 2015 08:22:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=Pu7j5451qgALWHVYUG6/KdV5PvBn9hxAwK4qxL8r2ao=;
	b=i/QUaAWRofrbidI7GNaovJFhrYvhlk2x4NesLbjSFJIdan9iaFbP325Z+Kp75HeeEe
	Zehpx1BgtIFySLOmxUAhR95wcV3M99zR2gC7fQ2B27wsXMWY0OyUv590Ya2Grd1M6ItY
	y9+3YDN3jJQnSII5IfhTNEaPXQLK819jHlb/RluqmmjdURfUt6xvyqKB3wETezziRH8c
	FO+I/oYxncHGYpYtVWTRTb4E3E4EWN4n40aTgGJMfduzeW8WBYPDvgeF7auQzEg++aS7
	Vtr/5riQ3UObhb2Z03mr1bGxXQw6r572BsMfduTyfiMW8JF9ADDp7NHmIUaSHVEXuPbl
	iuAg==
X-Received: by 10.194.24.70 with SMTP id s6mr32616153wjf.74.1448986934674;
	Tue, 01 Dec 2015 08:22:14 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	m191sm26647944wma.3.2015.12.01.08.22.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Dec 2015 08:22:14 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 1 Dec 2015 17:23:13 +0100
To: "Luke (Lucas) Starrett" <lstarret@broadcom.com>
Message-ID: <20151201162313.GB9354@jama>
References: <DB59870584238C45879465F0A2E5C3F1807544@IRVEXCHMB14.corp.ad.broadcom.com>
MIME-Version: 1.0
In-Reply-To: <DB59870584238C45879465F0A2E5C3F1807544@IRVEXCHMB14.corp.ad.broadcom.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: generating shared-state statistics from build
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
X-List-Received-Date: Tue, 01 Dec 2015 16:22:21 -0000
X-Groupsio-MsgNum: 27551
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jq0ap7NbKX2Kqbes"
Content-Disposition: inline

--jq0ap7NbKX2Kqbes
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 01, 2015 at 03:23:01PM +0000, Luke (Lucas) Starrett wrote:
> Hi,
>=20
> Is there any existing way to track usage of shared state by a build?  In =
a multi-user environment I'm interesting in knowing how often a build is hi=
tting in the shared state cache vs. rebuilding.  Typically would have a glo=
bally visible shared state cache mirror updated by a nightly/periodic build=
, and a user-level shared state pointed to by one or more local workspaces.=
  We would want to understand if we have excessive cases for which the cach=
e is not used.
>=20
> I'm sure there's some way I can post-process numerous logs for a given im=
age to get this info, but thought maybe this has been solved already.

Inherit buildstats-summary

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--jq0ap7NbKX2Kqbes
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlZdyXAACgkQN1Ujt2V2gBxvqgCgiHRaSXyM9CYO6Slsw3CfaUSm
YmEAnRd6hSmX6dNX5hkZxTw2mrzNmoec
=YvRY
-----END PGP SIGNATURE-----

--jq0ap7NbKX2Kqbes--
