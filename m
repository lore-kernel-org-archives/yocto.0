Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A3B4E009F3; Tue,  1 Dec 2015 01:40:06 -0800 (PST)
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
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7840BE0088C
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 01:40:01 -0800 (PST)
Received: by wmuu63 with SMTP id u63so164776115wmu.0
	for <yocto@yoctoproject.org>; Tue, 01 Dec 2015 01:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=JHmq4rC3H359+s91yVZFyoa5mtzSVQj/dnte/xQ0kPE=;
	b=CnCu80kBhgXDlXPvXpWtnoDn9quSKxecNHsIJzIlm4ERwayx2P19dI5Cjm/mmNEMBb
	GVeXNSvl44PWNb5uVosEAsC/Df5SsF5eZVkKnHpl2IF8HXAYTFBSs6jnKDrB42UKFh0M
	g/T1afo7fARj6gCUlXAWbxhz1pn41FciscYbrt3aE+ee5LJpy0+UyAHNHmOdvs7WcWDp
	VM5v+WSHnYdFD8jUhTKK8/lMYheX1AswFWwa3mB3m4QbMX5535L08RJTWNPwDtJT/rYv
	dI+dVeuzCL0YzQ9cwdvSkoafqohjkzlhiav02N4q/vKrUlyg6FERGYkU7IGmPH2gAhCn
	exNw==
X-Received: by 10.28.14.209 with SMTP id 200mr35094019wmo.103.1448962800748;
	Tue, 01 Dec 2015 01:40:00 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	jo6sm50808097wjb.48.2015.12.01.01.39.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Dec 2015 01:39:59 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 1 Dec 2015 10:40:58 +0100
To: Paul Eggleton <paul.eggleton@intel.com>
Message-ID: <20151201094058.GA2251@jama>
References: <1448920985-995-1-git-send-email-alejandro.franco@linux.intel.com>
	<2603447.ByLEse0mF5@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <2603447.ByLEse0mF5@peggleto-mobl.ger.corp.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCHv2] [layerindex-web] recipe blacklisted information
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
X-List-Received-Date: Tue, 01 Dec 2015 09:40:06 -0000
X-Groupsio-MsgNum: 27537
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="CE+1k2dSO48ffgeK"
Content-Disposition: inline

--CE+1k2dSO48ffgeK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 01, 2015 at 11:22:01AM +1300, Paul Eggleton wrote:
> Hi Alex,
>=20
> On Mon, 30 Nov 2015 16:03:05 Alex Franco wrote:
> > Display blacklisted information for recipes on Layerindex, in the
> > recipe details, as well as the recipe search page, and layer page
> > tables. This information is pulled from the PNBLACKLIST variable.
> > Includes a hover text containing the reason for blacklist labels.
> >=20
> > Changes to Django and Layerindex files:
> > - models.py, update.py
> > - migration file
> > - templates and static content (stylesheet)
> >=20
> > [YOCTO #7855]
> >=20
> > Signed-off-by: Alex Franco <alejandro.franco@linux.intel.com>
> > ---
> >  .../0010_auto__add_field_recipe_blacklisted.py     | 197
> > +++++++++++++++++++++ layerindex/models.py                             =
  |=20
> >  1 +
> >  layerindex/static/css/additional.css               |  19 +-
> >  layerindex/update.py                               |   1 +
> >  templates/layerindex/detail.html                   |   3 +-
> >  templates/layerindex/recipedetail.html             |  13 +-
> >  templates/layerindex/recipes.html                  |   3 +-
> >  7 files changed, 232 insertions(+), 5 deletions(-)
> >  create mode 100644
> > layerindex/migrations/0010_auto__add_field_recipe_blacklisted.py
> >=20
> This looks great, thanks.
>=20
> Another thing that just occurred to me though - apologies for not raising=
 it=20
> earlier - for the benefit of newer users it may be useful to explain=20
> implications of the blacklisting. What I'd suggest is we put a line after=
 the=20
> reason on the recipe detail page saying "This means that the recipe will =
not=20
> be buildable until the PNBLACKLIST value is cleared and the issue that ca=
used=20
> it to be added has been fixed or worked around." (Just on the recipe deta=
il=20
> page - not in the popup.)
>=20
> Does that sound OK?

Maybe some more information how to clear PNBLACKLIST (people often don't
know that they can just set it to empty value in their bbappend or even
distro/local config).

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--CE+1k2dSO48ffgeK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlZdaykACgkQN1Ujt2V2gBwRxgCePwcZ2VqCcEBAYTK69lnDI8MI
PnsAn0KxOw/T9vcTp3BeLdyAZLuE2kVX
=/umg
-----END PGP SIGNATURE-----

--CE+1k2dSO48ffgeK--
