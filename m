Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f171.google.com (mail-ea0-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9374FE01538
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 02:45:23 -0700 (PDT)
Received: by mail-ea0-f171.google.com with SMTP id m14so6060748eaj.16
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 02:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=vZAJjZ8oTbbnpw4sIOaFn9JNPBXLcBGNutFwutimAwA=;
	b=AYMJgYj5rQDsNofWXZgy0qZKjn9Qc2WuOEVmamFLLzwyztLdieqIUk/trSrkAdyhmf
	xe0z+UOV7xt3/w5bwtwtjV3cnW2BEwGYUewHZUkEdu2r3b2AOOA8BGkFSpgvhHrp+mqA
	SuViDgMhl6b0/Fn7xmHuM5wCy47IvOmKWVQG3WWtYyUxy2rXg54HKj9NSTW3hzbmeAQC
	FjyRn6OxAkMeAsFGWLkyTJd8EBcFhz62vzEwj4/Yu4S3GpDFWFGSsu3QGmxVHiif+uoQ
	ybNvadKuZoTiuFY6y8RuiZ8ivmpTuL9PgRk1uK6FXTLTjDsir5UQhs9gxP0K15mdHsKd
	r79A==
X-Received: by 10.15.100.129 with SMTP id bn1mr15329014eeb.93.1370943922446;
	Tue, 11 Jun 2013 02:45:22 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	y10sm29192115eev.3.2013.06.11.02.45.21 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 11 Jun 2013 02:45:21 -0700 (PDT)
Date: Tue, 11 Jun 2013 11:45:45 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20130611094545.GD3233@jama>
References: <CAPMJ7HqEvt4UWPC=648nQ=RwJDqrv0qmcfmEkaVggX4wCCZs3w@mail.gmail.com>
	<51B1BFDF.1010806@mlbassoc.com>
	<CAMKF1soLrkdRWc5CoUGDsRU9aHQickPnnnBRLK=DeU6E8wdW-Q@mail.gmail.com>
	<2513519.TnlYEDHE6H@helios> <20130611090708.GC3233@jama>
	<51B6ED57.8010307@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <51B6ED57.8010307@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Distributing Compilation of Yocto
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
X-List-Received-Date: Tue, 11 Jun 2013 09:45:24 -0000
X-Groupsio-MsgNum: 14247
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="EP0wieDxd4TSJjHq"
Content-Disposition: inline

--EP0wieDxd4TSJjHq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 11, 2013 at 10:26:47AM +0100, Gary Thomas wrote:
> On 2013-06-11 10:07, Martin Jansa wrote:
> > On Tue, Jun 11, 2013 at 09:20:05AM +0100, Paul Eggleton wrote:
> >> On Monday 10 June 2013 20:16:22 Khem Raj wrote:
> >>> On Fri, Jun 7, 2013 at 4:11 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> >>>> Looks interesting and I think I'd like to try it myself.  However, t=
hat
> >>>> page has a reference to
> >>>> http://bugs.openembedded.org/attachment.cgi?id=3D1032&action=3Dview
> >>>> which seems to be down at the moment (tested from both sides of the =
pond)
> >>>
> >>> OE bugzilla has been decommissioned long ago.
> >>
> >> In that case the "Using IceCC" page on the OE wiki [1] should not be l=
inking
> >> to it. Can someone who has actually used IceCC in conjunction with OE =
(or has
> >> contact with someone who has) please update the page? Martin?
> >
> > We're not using create-icecc-env.sh script, I've updated the page how to
> > use icecc service in ubuntu and removed old link.
>=20
> I'm confused (sorry) - there are still references to that script on the W=
iki page.
> If you're not using the create-icecc-env.sh, how do you set it up and wha=
t does
> ICECC_ENV_EXEC point to?

icecc.bbclass:
ICECC_ENV_EXEC ?=3D "${STAGING_BINDIR_NATIVE}/icecc-create-env"

> Also I assume based on the current page that your patch to icecc.bbclass =
is not
> yet merged?

Thanks, I've removed reference to that patch which is now merged.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--EP0wieDxd4TSJjHq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.20 (GNU/Linux)

iEYEARECAAYFAlG28ckACgkQN1Ujt2V2gBz6hwCfaNL3AxTgHPitWAVg55V/L+UV
n3oAn14FgG6MdM+a7+Eof6J15R7Qj5rn
=np56
-----END PGP SIGNATURE-----

--EP0wieDxd4TSJjHq--
