Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C31E3E00EF1; Fri, 19 Aug 2016 01:13:35 -0700 (PDT)
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
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6428AE00E94
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2016 01:13:32 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id i138so2428850wmf.3
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2016 01:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=bsEcE7IoIHLXU36F2nTcYdu2pVVtmRc+dSlBKT90O5c=;
	b=Lk5D86zKSOV0R3VmcPST+CaOvH24xb7zqWjlbj/7BjmTMyY3syHj179MYFvdLwklg8
	zm5P/MuvmGCtc9wdCm3bPqpoM8pk8PeLhITDSeNLbEZH/s1AMZJwC0c08FPXv2ssF1AL
	hhTj8+EGVmF6nk2YXZ2Rr28aVaVKoA+j8BK3Dd8YknQHHZHpH7t1iPo3WSZYuZcivTCt
	2NB2plED9IaCAhq5u0rsWf3nY34+kkxhjZxHgPihDqBRMWHyu8hu6chBYgmnU14qQMYz
	FATeL//RdddjBPbZQoBjPQQtq47hPkJI7B6E1hCM2rnGJKz5Fy4vuDt6+Mdyr1ZWSTwV
	k4pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=bsEcE7IoIHLXU36F2nTcYdu2pVVtmRc+dSlBKT90O5c=;
	b=Tdj/K2RjzG5wGPHG6wVz1APzUj+Q0pGcyDjHt05fbiNHVVWHaa/420XDW03AkD6PbT
	7LtRYQ2MxmSxP/fI2Hh/dtf8J0gaI66TqipozSQTYo5yWrJxTPuRamlaDQ8jUZ84O4JM
	PIycr2rz2Q3TkM1ZnORje8GVWC8M3wG8/wV18RZNLuF0Lv2rcXRHexq0Wkl2WKoV5f9O
	zGphoKB505UyF+HFSRxGD/70ZJT0/Mu+CLYS+ReJRw1aROaBSZzuxiBNXrVx/qrnyfq2
	2SZ+W2D/ix/7K8x1JcABfsvQWBjOeBAWP9xOg8Co+KnLh7xLrIkvh7L6lhU8eyw4NemN
	AL0w==
X-Gm-Message-State: AEkoousU6JYU8U3+Gb8FCx4YKbHgE3SdJkI1dRiE12fJWY0WyE6jloy26HM20du/2/k63w==
X-Received: by 10.194.118.70 with SMTP id kk6mr5166478wjb.180.1471594412028;
	Fri, 19 Aug 2016 01:13:32 -0700 (PDT)
Received: from localhost (ip-89-176-104-169.net.upcbroadband.cz.
	[89.176.104.169]) by smtp.gmail.com with ESMTPSA id
	v134sm3266608wmf.10.2016.08.19.01.13.30
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 19 Aug 2016 01:13:30 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 19 Aug 2016 10:13:31 +0200
To: "Maxin B. John" <maxin.john@intel.com>
Message-ID: <20160819081331.xuaqej3p7l6yon7m@jama>
References: <1471593718-23587-1-git-send-email-maxin.john@intel.com>
MIME-Version: 1.0
In-Reply-To: <1471593718-23587-1-git-send-email-maxin.john@intel.com>
User-Agent: Mutt/1.6.2 (2016-06-11)
Cc: yocto@yoctoproject.org, paul.eggleton@linux.intel.com
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
X-List-Received-Date: Fri, 19 Aug 2016 08:13:35 -0000
X-Groupsio-MsgNum: 31548
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="hw6eazu63njsgpuw"
Content-Disposition: inline

--hw6eazu63njsgpuw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 19, 2016 at 11:01:57AM +0300, Maxin B. John wrote:
> make tslib dependency optional
>=20
> Signed-off-by: Maxin B. John <maxin.john@intel.com>
> ---
>  recipes-qt4/qt4/qt4-embedded.inc | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/recipes-qt4/qt4/qt4-embedded.inc b/recipes-qt4/qt4/qt4-embed=
ded.inc
> index 3f40b82..6e7cd86 100644
> --- a/recipes-qt4/qt4/qt4-embedded.inc
> +++ b/recipes-qt4/qt4/qt4-embedded.inc
> @@ -2,7 +2,9 @@ SUMMARY =3D "Cross-platform UI toolkit and application fr=
amework (framebuffer vers
>  DESCRIPTION =3D "Qt is a versatile cross-platform application framework =
-- this is the embedded (framebuffer) version."
>  SECTION =3D "libs"
>  HOMEPAGE =3D "http://qt-project.org/"
> -DEPENDS +=3D "tslib"
> +
> +PACKAGECONFIG ??=3D ""
> +PACKAGECONFIG[tslib] =3D "QT_EMBEDDED_EXTRA_FLAGS_append =3D'  -plugin-m=
ouse-tslib', , tslib"

Does this really work? Why don't you append PACKAGECONFIG_CONFARGS
variable to QT_EMBEDDED_EXTRA_FLAGS and leave only -plugin-mouse-tslib
in PACKAGECONFIG?

>  QT4EDEPENDS =3D ""
>  QT_BASE_LIB  ?=3D "libqt-embedded"
> @@ -18,7 +20,7 @@ QT_EMBEDDED_FLAGS ?=3D " \
>  "
>  QT_EMBEDDED_EXTRA_FLAGS ?=3D " \
>      -plugin-gfx-transformed -plugin-gfx-qvfb -plugin-gfx-vnc \
> -    -plugin-mouse-tslib -qt-mouse-pc -qt-mouse-qvfb -qt-mouse-linuxinput=
 \
> +    -qt-mouse-pc -qt-mouse-qvfb -qt-mouse-linuxinput \
>      -qt-kbd-tty -qt-kbd-linuxinput \
>  "
>  QT_EMBEDDED_KEYPAD_FLAGS ?=3D " \
> --=20
> 2.4.0
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--hw6eazu63njsgpuw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAle2v6oACgkQN1Ujt2V2gBzb6QCeNh/aH84AHCajQ7REGZFycK5m
yKwAoLpjU9+OqMMMXyM2sWDhacGUIsRD
=B41/
-----END PGP SIGNATURE-----

--hw6eazu63njsgpuw--
