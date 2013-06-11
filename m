Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f170.google.com (mail-ea0-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CD6CE01594
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 02:06:46 -0700 (PDT)
Received: by mail-ea0-f170.google.com with SMTP id h10so6241541eaj.1
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 02:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=egXliwn6QnVmO4W0+704/bWMbYV8NTDlyplmBcHt7qY=;
	b=zmURjfR5Kb5F2JUF4siq4mL4fjiAfOnL2P8vv0gEwXWP28LD9JKCEIBYTd/mB9feIS
	g3FroUe4uRVJCkdMEBvpUI49PUkLrN9EvpjQ1gRwEf61+VxxDDYqmEgE+n6pL6T6n2Kf
	35J5447S1oyULjOJPJl39rI130OD4X0RCLKGxqfhjfUTZc3yRADj6YZP/SeRji5KgI2M
	qaZUzhU5YcnnNjLojVQOlVeTDP6E6wfynUo3R0HwiBVPJOg7fZSyjCCasYzC4Rnf+T1I
	fO1o23op+Pr9lcP1QtcI15YMclmV/eZlqA+GzZhgi2kZ0vwu7iAgHeWY9Kyhj6W1rZOr
	St1Q==
X-Received: by 10.15.64.202 with SMTP id o50mr15504285eex.44.1370941605964;
	Tue, 11 Jun 2013 02:06:45 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	y44sm28911942eel.10.2013.06.11.02.06.44 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 11 Jun 2013 02:06:45 -0700 (PDT)
Date: Tue, 11 Jun 2013 11:07:08 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20130611090708.GC3233@jama>
References: <CAPMJ7HqEvt4UWPC=648nQ=RwJDqrv0qmcfmEkaVggX4wCCZs3w@mail.gmail.com>
	<51B1BFDF.1010806@mlbassoc.com>
	<CAMKF1soLrkdRWc5CoUGDsRU9aHQickPnnnBRLK=DeU6E8wdW-Q@mail.gmail.com>
	<2513519.TnlYEDHE6H@helios>
MIME-Version: 1.0
In-Reply-To: <2513519.TnlYEDHE6H@helios>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 11 Jun 2013 09:06:48 -0000
X-Groupsio-MsgNum: 14245
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="FsscpQKzF/jJk6ya"
Content-Disposition: inline

--FsscpQKzF/jJk6ya
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 11, 2013 at 09:20:05AM +0100, Paul Eggleton wrote:
> On Monday 10 June 2013 20:16:22 Khem Raj wrote:
> > On Fri, Jun 7, 2013 at 4:11 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> > > Looks interesting and I think I'd like to try it myself.  However, th=
at
> > > page has a reference to
> > > http://bugs.openembedded.org/attachment.cgi?id=3D1032&action=3Dview
> > > which seems to be down at the moment (tested from both sides of the p=
ond)
> >=20
> > OE bugzilla has been decommissioned long ago.
>=20
> In that case the "Using IceCC" page on the OE wiki [1] should not be link=
ing=20
> to it. Can someone who has actually used IceCC in conjunction with OE (or=
 has=20
> contact with someone who has) please update the page? Martin?

We're not using create-icecc-env.sh script, I've updated the page how to
use icecc service in ubuntu and removed old link.

>=20
> Thanks,
> Paul
>=20
> [1] http://www.openembedded.org/wiki/Using_IceCC
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--FsscpQKzF/jJk6ya
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.20 (GNU/Linux)

iEYEARECAAYFAlG26LwACgkQN1Ujt2V2gBw+FQCfeTznxJI7GK6gn1vrkPoFKLUI
760AoK0Uz/aVXp9QNDGKeOQ0Ir+3GfBS
=Ssjm
-----END PGP SIGNATURE-----

--FsscpQKzF/jJk6ya--
