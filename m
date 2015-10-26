Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB799E00B94; Mon, 26 Oct 2015 04:45:22 -0700 (PDT)
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
	*      [209.85.212.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F131E009D7
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 04:45:21 -0700 (PDT)
Received: by wicll6 with SMTP id ll6so110158024wic.1
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 04:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=86i2P+T+7nSCNwc7HKoNs8nxL0EMddPZp4NwUFhc3z8=;
	b=lpfZ/yCvL16YWT2oSrxlkKN1awvGgbCxHslYmHXh+qhQ8Ezl0aEFq/nRRPm6lUQ6AX
	Tj7TEfOzj9pniN+VOviLaI8cFochYzl73eVJJDcCfX0DkNdsZm6A6h9AWs2SQDplB+8z
	fN/sPr9p7bXiN9JzeFl8Jzs5X7nZ/pt4o9Ctrd4OSgxYria6J+qe90IINUXVxjFdNyqL
	fgaR+6Oe2cO+S2tg7fe7r/NoPkqsPZPEtwIYboj+FOZxlpWsNPWVEONfXj42F4SJJATB
	GzyPVY+fl8V7qXboeO/5ogijomQH70jth7Mp0B5zV7AYP3W4Uu/YmgZA64NlI2z4pBuN
	Grrw==
X-Received: by 10.180.91.103 with SMTP id cd7mr20055250wib.74.1445859920973;
	Mon, 26 Oct 2015 04:45:20 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	jt9sm23461557wjc.24.2015.10.26.04.45.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Oct 2015 04:45:20 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 26 Oct 2015 12:45:31 +0100
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20151026114531.GB2554@jama>
References: <1445812988-6456-1-git-send-email-net147@gmail.com>
	<22952530.4yyL14nzOX@peggleto-mobl.ger.corp.intel.com>
	<562E04F8.6090309@gmail.com>
	<3091928.1ZnyljVrr4@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <3091928.1ZnyljVrr4@peggleto-mobl.ger.corp.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Mon, 26 Oct 2015 11:45:22 -0000
X-Groupsio-MsgNum: 27039
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="GRPZ8SYKNexpdSJ7"
Content-Disposition: inline

--GRPZ8SYKNexpdSJ7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 26, 2015 at 10:54:43AM +0000, Paul Eggleton wrote:
> On Monday 26 October 2015 21:48:24 Jonathan Liu wrote:
> > On 26/10/2015 8:41 PM, Paul Eggleton wrote:
> > > On Monday 26 October 2015 10:15:49 Andrei Gherzan wrote:
> > >> Hi Paul,
> > >>=20
> > >> On Mon, Oct 26, 2015 at 08:08:29AM +0000, Paul Eggleton wrote:
> > >>> On Monday 26 October 2015 09:43:08 Jonathan Liu wrote:
> > >>>> [Support #16]
> > >>>>=20
> > >>>> Signed-off-by: Jonathan Liu <net147@gmail.com>
> > >>>> ---
> > >>>>=20
> > >>>>   recipes-qt/qt5/qtbase_%.bbappend | 6 ++++++
> > >>>>   1 file changed, 6 insertions(+)
> > >>>>   create mode 100644 recipes-qt/qt5/qtbase_%.bbappend
> > >>>>=20
> > >>>> diff --git a/recipes-qt/qt5/qtbase_%.bbappend
> > >>>> b/recipes-qt/qt5/qtbase_%.bbappend new file mode 100644
> > >>>> index 0000000..3e5e667
> > >>>> --- /dev/null
> > >>>> +++ b/recipes-qt/qt5/qtbase_%.bbappend
> > >>>> @@ -0,0 +1,6 @@
> > >>>> +do_configure_prepend_rpi() {
> > >>>> +    cat > ${S}/mkspecs/oe-device-extra.pri << 'EOF'
> > >>>> +EGLFS_DEVICE_INTEGRATION =3D eglfs_brcm
> > >>>> +QMAKE_LIBS_EGL =3D -lEGL -lGLESv2
> > >>>> +EOF
> > >>>> +}
> > >>>=20
> > >>> I'm wondering if this is a good idea or not. I appreciate the inten=
tion,
> > >>> but does bbappending non-machine-specific recipes like this play we=
ll
> > >>> when you have other machines enabled in the same distro?
> > >>=20
> > >> But this change will be applied only for _rpi. How is this affecting
> > >> other
> > >> machines?
> > >=20
> > > If everything works such that the resulting packages get marked as
> > > machine-
> > > specific and the package manager correctly installs them in preferenc=
e to
> > > the generic architecture packages on the machines in question, then t=
here
> > > won't be a massive problem (though the side-effect is probably that a=
ny
> > > recipes depending on qtbase will also become machine-specific, that is
> > > possibly more of an issue).
> > >=20
> > > Cheers,
> > > Paul
> >=20
> > Good point. The package arch needs to machine-specific. I will send a v3
> > to fix this.
>=20
> I think that will get taken care of automatically by virtue of the machin=
e-
> specific override. My question is more about:

machine-specific override to set PACKAGE_ARCH works only when it's used as
subdirectory in SRC_URI, doesn't it? And it sets it only for qtbase, not
all other recipes which depend on qtbase (see my other reply in this
thread).

> 1) Will that mechanism entirely work, including desired behaviours in bot=
h the=20
> build system and the package manager, and
>=20
> 2) Are any side-effects worth it?
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

--GRPZ8SYKNexpdSJ7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlYuEloACgkQN1Ujt2V2gByBRgCeIETo4tP41hNPLch/142J7isG
SDcAoLtv/0vw2UEGB09q+rwM8F2rvYjK
=DFJj
-----END PGP SIGNATURE-----

--GRPZ8SYKNexpdSJ7--
