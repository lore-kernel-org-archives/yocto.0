Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF976E009C9; Tue,  8 Nov 2016 03:38:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AAD9E00571
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 03:38:54 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id u144so21983285wmu.0
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 03:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=bgUyVWiROriJmrA5kvW0rYkqUzcszMp3t34MJAitYnA=;
	b=0+eiZsR69ndbb3Zr/9BbJ3PYSIXzpIoc/DLt+E4Wv80sB/MAWmXDnsbsFi5eIdLqdo
	KWpybmAAZVeI0KIwiL2TSq13HWDMiB5vuSkNsqMe9sxqjcqPgSf7sgQ/Hs4PpJtfp5ks
	NCHyF7ginvcHhj3vzufgw8qkyaiQyCt+J5FY/Mlz/ms8IP8wGsgCGZ5Z5V/bflHuJ5RB
	Gc4t3fmUL3zW8BgHPoBkBJuB3ddJ0munhurWQxXivMeqFPhd0ibMY/5S1h0prVpWNHN1
	K3cBEmjEotx/mHRWNeTp0CKLvtKR4p+30v/kHIaFA74v0UnTV64vnorrgjuJOXXW25II
	nB4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=bgUyVWiROriJmrA5kvW0rYkqUzcszMp3t34MJAitYnA=;
	b=dIq2Fysr+zy2a6ePU896NE2WvqVeSH2qt7mGPCSF4k6ILXUdsDBGsvW6oF0IBl0on/
	NF8Zwv4SX4PkrhyD71AcErHD45N4g/olb3vblm9mcIR8+IFXyVdDuBHqVIZOPRwMaBvD
	/X8zLbQxLNeNUTv8W+UXedJkooQ7RuvuJjW7w6/PxduhCei1sqPRxV9ZCuYPQML83Iq7
	A4PnUU3kdoKEd0hzaFzXFQwJNF0BtfIV3tmRPk71jxjglzkkWpHxyOxVU2g8PvVTuoD+
	RCXvXihz+CABJyenBp72GGYuJG+BaWBgSWSBVaw+v3lo74VM+QeX4XcnGf9XGlKcQmL2
	5AsA==
X-Gm-Message-State: ABUngvf5hyLjlCihoptlmkJwMGe4Cu5+69c3XtTSKS2/61PLlKrGLqE0fw204o7Pe/JWNQ==
X-Received: by 10.28.166.20 with SMTP id p20mr11534110wme.87.1478605133918;
	Tue, 08 Nov 2016 03:38:53 -0800 (PST)
Received: from carbonA (adsl-191.109.242.150.tellas.gr. [109.242.150.191])
	by smtp.gmail.com with ESMTPSA id f3sm534177wmf.10.2016.11.08.03.38.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Nov 2016 03:38:53 -0800 (PST)
Date: Tue, 8 Nov 2016 11:38:38 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20161108113838.GC19379@carbonA>
References: <20161106072515.3505-1-raj.khem@gmail.com>
	<CAK18fxEVW3NTsxOUbJQfM3XP6V7==G_V_dPG7P9-cjxVoWhpNg@mail.gmail.com>
	<ebb5bf5e-6ac5-a97d-09b3-d292f1f72995@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <ebb5bf5e-6ac5-a97d-09b3-d292f1f72995@mlbassoc.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] firmware: Use release tarballs
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
X-List-Received-Date: Tue, 08 Nov 2016 11:38:55 -0000
X-Groupsio-MsgNum: 32917
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WplhKdTI2c8ulnbP"
Content-Disposition: inline

--WplhKdTI2c8ulnbP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 08, 2016 at 12:35:47PM +0100, Gary Thomas wrote:
> On 2016-11-08 12:16, Andrei Gherzan wrote:
> > On Sun, Nov 6, 2016 at 7:25 AM, Khem Raj <raj.khem@gmail.com> wrote:
> > > This is a binary repo and its quite large in size
> > > we do not need the whole history of this repo since
> > > most of stuff needed is binaries, therefore switch
> > > to release tarballs
> > >
> > > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > > ---
> > >  recipes-bsp/common/firmware.inc | 12 +++++++-----
> > >  1 file changed, 7 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
> > > index ed0782f..8862f58 100644
> > > --- a/recipes-bsp/common/firmware.inc
> > > +++ b/recipes-bsp/common/firmware.inc
> > > @@ -1,8 +1,10 @@
> > > -RPIFW_SRCREV ?= "413fc664838e81caeabdc4118dc51e138d5d6c71"
> > > -RPIFW_DATE ?= "20161030"
> > > -RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
> > > -RPIFW_S ?= "${WORKDIR}/git"
> > > +RPIFW_DATE ?= "20161020"
> > > +RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
> > > +RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
> > >
> > >  SRC_URI = "${RPIFW_SRC_URI}"
> > > -SRCREV = "${RPIFW_SRCREV}"
> > > +SRC_URI[md5sum] = "d3c388c114af4c672dd3ee0ed8e984d3"
> > > +SRC_URI[sha256sum] = "1c7c49d58800aab2dd1b5ff59a1e297934f9ea6f47ebdf0a3f90632561dc690b"
> > > +
> > >  PV = "${RPIFW_DATE}"
> >
> > Merged to master. Thanks.
>
> Sadly, the firmware revision went backwards in this change.
> Do you want a new patch to play catch-up?
>

Good catch. I'll fix it. Thanks.

--
Andrei Gherzan

--WplhKdTI2c8ulnbP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYIbk+AAoJEHO76Gt+erfP6h4P/2xzOl3p2Z5bstloqH1LBkgk
BB9Fk5gun5NwTRkl45kmovz+Lu+EU2KyQl7I/yI2PlkIvbpYDnrPnwf+5o0EXB5r
GCOtVtIMcat56+77OjUYxiBM7McZYYE3wLOijLwYPN7x1xp8S/AVjRgCOvSGyJ5i
M3/7L9P/o9y1uVVR9EY9fPQzgNF8gEgmkjWWVC2Ew7YdgKczn2Ytrqp39X+RyXtj
3fXIXDOZ2XL+ZAiBvX12AOQ2Jil138++ZmdOsgMLsF2GrYn58uo6sSelTdOPbVsI
U3+mA9rEp/3NObgfjuNPn9tkcjk0YCa/ifSTPc8umVPrfhWDIZFS+RwOefW9iErs
olky7CH9Q5fXeQAoaGQFwdc0wkLGvyZf4CVQgOH/M1wqfyeXozA1h0n+7Q1THL6z
EdTEXkF6zkVXanWH1+/Awr17w4289wI8TntN69JbTE5WStuZU9TSjemoGUxwVdxu
PHG30hBEbqNFsb43EAfscdXiCpxJOh1msCstPReIUUhlVx1jhflckPRYR5xYWY/2
w53rs5JN8aJC9y+517PpGkjau/CWWCW7qIBc7Xsctir+TGeMvFmxWwrERNftLS4n
Hx0xBQ2aNIej1kmN8RS6mFhgssun7GY54xMUhI6ls1PDWfiBuiAIjZHfosfrH+8W
77WwjpuzCzSiFV3OyIpv
=w79X
-----END PGP SIGNATURE-----

--WplhKdTI2c8ulnbP--
