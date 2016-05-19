Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6365DE00E68; Thu, 19 May 2016 08:01:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31845E00D86
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 08:01:03 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id w143so21668617wmw.3
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 08:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=PMt9628TX6LfvIpRUANHtTET2icZAVA4Z/CCx5xeXJg=;
	b=x4TkXE7Mwty2QaD2qcl/K7Flf7NA05O8oYJdeBs888XQRqeWGHpBRcSk+gIF35uREE
	6DosAWsBVUqZet+NclYNnmnUJ0LskjHgqZkxqu6yDCeMTZg7R0VBa7T//rbOm4YTC6yd
	6lzRjeLVLQNK3EqPZycho4dmDZ0CtVBjNdYiOTl0GmYT76lSAIN3TnWyOttA6+Z8AZ3S
	hsspgN2T58G5uoD52WXCTYV+oubndH+5lQKRehxGFIHHIz1utLHsZNLvZSS/AfkZ7I3F
	5gPXvqwzlEqqDz+VGoUkTCegEb4Zyvo1CdkwQMSgeA5zAKkhPwOh87jV2e9AmO3Xn6Gw
	+TmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=PMt9628TX6LfvIpRUANHtTET2icZAVA4Z/CCx5xeXJg=;
	b=JqoQqsa74OmsxIK3KXYTRrTdAglLfqJbBiR1fGy3pvWAWU035+sVctlgg7/pj7MiLM
	52ikeu5aiWoCFtu9wf2RwSxjgSuPM5TQljTYFCYLPus+bl/CkSrvIkQtqYkeiUmIWHT8
	F+EhsDqSZ/Zs7ThOoj26M5GqK+ePM2yFgzFNGAxtLDtzUUF+n+SD4i9D5Cb+LSY7hAJO
	2n0MWmdA5roRYkp0pnTwpAjmquxfqeD068LAUBoWTT0wXn88mblQ7Mlk+HNh3l2L4tjn
	DTP8diPsv2I+NiDguYsV+NsfWje7RtdUGtrOAC8faOHX7uYh+R5bnJSgXcM5JIy+gJ3T
	O4Hg==
X-Gm-Message-State: AOPr4FUCPo+ouEA5aOKdPuGbEjA+alOAIxlM5k0Qhmu/3lRiYxGTfaN2plwtdYa8ou/m+Q==
X-Received: by 10.28.152.19 with SMTP id a19mr13952032wme.60.1463670063043;
	Thu, 19 May 2016 08:01:03 -0700 (PDT)
Received: from resin.home (ip5f5acdbc.dynamic.kabel-deutschland.de.
	[95.90.205.188]) by smtp.gmail.com with ESMTPSA id
	i4sm14837935wjj.49.2016.05.19.08.01.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 May 2016 08:01:02 -0700 (PDT)
Date: Thu, 19 May 2016 17:01:00 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160519150100.GF3601@resin.home>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-3-git-send-email-herve.jourdain@neuf.fr>
	<8CECD805-B6E5-4AED-93F4-CC026062A309@gmail.com>
	<566CADDD-A0E3-4827-9740-D45016E1D0C4@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <566CADDD-A0E3-4827-9740-D45016E1D0C4@neuf.fr>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/8] Support for vc4 graphics driver: add vc4-kms-v3d to the overlays
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
X-List-Received-Date: Thu, 19 May 2016 15:01:07 -0000
X-Groupsio-MsgNum: 30075
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="27ZtN5FSuKKSZcBU"
Content-Disposition: inline

--27ZtN5FSuKKSZcBU
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 19, 2016 at 01:25:34AM +0800, Herve Jourdain wrote:
> Hi Khem,
>
> Well, it seems to be the way it will be activated in the future as well, =
through a device tree overlay.
> The rationale being that people may not want/need the VC4 driver, because=
 they prefer to use userland or other reasons, and that only the persons wh=
o want to activate it will load the overlay.
> One thing to remember is that vc4 has the potential to conflict with othe=
r pieces, and it might not be for everybody (the firmware patch helps in th=
at regards, but before it, weston/drm was conflicting with the splash scree=
n for instance on my test setup, creating very disturbing images).
>
> If your question is, will userland disappear one day and vc4 graphics bec=
oming the only graphics driver, the overlay could be included in the base d=
evice tree itself, in like a few years from now, then I clearly don't have =
an answer to that...
>
> But I believe the overlay will stick some time around.
>

I'm not sure if this is what Raj asked about. Needs some clarification.

> Herve
>
> > Le 19 mai 2016 =E0 00:53, Khem Raj <raj.khem@gmail.com> a =E9crit :
> >
> >
> >> On May 18, 2016, at 5:21 AM, Herve Jourdain <herve.jourdain@neuf.fr> w=
rote:
> >>
> >> This patch series enables the support for the VC4 graphics driver from=
 Eric Anholt.
> >> Add vc4-kms-v3d overlay if 'vc4graphics' is in MACHINE_FEATURES.
> >> (This patch has a dependency on the patch that enables the support of =
=2Edtbo overlay files)
> >>
> >> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> >> ---
> >> recipes-bsp/bootfiles/rpi-config_git.bb | 8 ++++++++
> >> 1 file changed, 8 insertions(+)
> >>
> >> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/boo=
tfiles/rpi-config_git.bb
> >> index 4bc8eb7..79e436d 100644
> >> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> >> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> >> @@ -19,6 +19,8 @@ PITFT=3D"${@bb.utils.contains("MACHINE_FEATURES", "p=
itft", "1", "0", d)}"
> >> PITFT22=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0=
", d)}"
> >> PITFT28r=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", =
"0", d)}"
> >>
> >> +VC4GRAPHICS=3D"${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics"=
, "1", "0", d)}"
> >> +
> >> inherit deploy
> >>
> >> do_deploy() {
> >> @@ -102,6 +104,12 @@ do_deploy() {
> >>        echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> >>        echo "enable_uart=3D1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.=
txt
> >>    fi
> >> +
> >> +    # VC4 Graphics support
> >> +    if [ "${VC4GRAPHICS}" =3D "1" ]; then
> >> +        echo "# Enable VC4 Graphics" >>${DEPLOYDIR}/bcm2835-bootfiles=
/config.txt
> >> +        echo "dtoverlay=3Dvc4-kms-v3d,cma-256" >>${DEPLOYDIR}/bcm2835=
-bootfiles/config.txt
> >> +    fi
> >
> >
> > will this keep appending overtime ?
> >
> >> }
> >>
> >> addtask deploy before do_package after do_install
> >> --
> >> 2.7.4
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--27ZtN5FSuKKSZcBU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXPdUrAAoJEHO76Gt+erfPAlQP/jKJHoapgXh5e7RbMJKjl+Pd
TVcKBxShxc7RwJa8WGcm8EB2O9r8DtApUwO1FIh8wcWCYxLinD/VN8rKDOIj1u6e
oMG+LFMbAG087iWCTeLjU+aPoKfiyLvAcXT6UzfDKpSMyzK5zsNpluesufaPvvro
DpCQqU17uYybTikkchbXochu6XToy5kuQ/L8wa3nVBSFjSeKEoxkoBYD8ZBbIglt
3Pe5H90mIorvGceaF6gLzf+kgArNGgRfZSxSb67yDTtWj5Bpo6MTUK/jm6ryy2EU
D5JDpbWt6UyVIEmZc5Uelm7RVTKWLvjW14Z/zlMzlabfZhOK6DBtlGO6yuQYNNB/
rxLL9EI1bOsuamprIlFiBAe/cpcoU7kOPMy79qaOpdtKGOK+rmSzeSoDsnu3H8YZ
zJF8xssYjEAeK0udIRI18aw3gsZBq6E0qFM3lhMbXyLHXq5J1NxHFGA47oYOX8o0
6jnR+21SGCgSv9uxEqWIIp/z/Tbxo7lxXRp8c7KV+ruN+ZBygM1q9Ww9XbzurcF7
NGwMQlgJBn09Lc5YSvfos01zfEZTk60d1onajpv9GNqHkhGQp5n1+5C2H6p+OGdG
pANsax6Mo8Cjw9UXhN1SH/yDRUV2zPnDYtyMFjg4jDLdlGxRf/9sV8iW8oOFVxCJ
NsY/P393PY2YNEHzCcYB
=4mmp
-----END PGP SIGNATURE-----

--27ZtN5FSuKKSZcBU--
