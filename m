Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F892E014DA
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 12:34:13 -0700 (PDT)
Received: by wgx1 with SMTP id 1so664697wgx.11
	for <yocto@yoctoproject.org>; Wed, 05 Sep 2012 12:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=kqGS+R3TPXH4/NNraGF+lKBgOCSVWwXVKSg55hieOAo=;
	b=03Y0VfEnIqqdjGK6VWtjcc5C61sIaq6LgXLsA3f5iRxsTbQsfd4/LW1zlHfS5Pa9cr
	m4fU38DOiXBQJxJFI9CUBi9nvUG19lYBUsMhy4BNWwglLZIY1W0ygEH0bJR3YLo1Jbpu
	XdjpsKSaKC2YEqKpOe2mvhKYVT63z4DXEKCjzFPTrCrU57DGHsVfbLiSPFHrWvQt9mkv
	S3yWTDt1cprA3jdt7hPUCitSw2nk5GGa5eT3vVGvMimBkIrgtKAwj71F6l8eCoiT764w
	PVyQUv/iVoVtP/vxMmRJcYG7xw6jBG5WMkIGQa+Vf8sTc8ALxKAMytLClJP/mlfczN64
	XTbg==
Received: by 10.217.3.1 with SMTP id q1mr13591282wes.38.1346873652148;
	Wed, 05 Sep 2012 12:34:12 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id l5sm271230wix.5.2012.09.05.12.34.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 05 Sep 2012 12:34:09 -0700 (PDT)
Date: Wed, 5 Sep 2012 21:34:39 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20120905193439.GS3372@jama.jama.net>
References: <50450DC6.20303@r-finger.com> <504663C0.6050907@ti.com>
	<50471207.8080104@r-finger.com> <2612934.gZ3vcrfUaE@helios>
	<50471ECE.8000502@r-finger.com> <1346849303.21985.56.camel@ted>
MIME-Version: 1.0
In-Reply-To: <1346849303.21985.56.camel@ted>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: yocto beagleboard.conf -- should it not go away?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Sep 2012 19:34:14 -0000
X-Groupsio-MsgNum: 9145
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="JMCz+drDJ1SjddZX"
Content-Disposition: inline

--JMCz+drDJ1SjddZX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 05, 2012 at 01:48:23PM +0100, Richard Purdie wrote:
> On Wed, 2012-09-05 at 10:43 +0100, Tomas Frydrych wrote:
> > On 05/09/12 10:15, Paul Eggleton wrote:
> > > On Wednesday 05 September 2012 09:49:11 Tomas Frydrych wrote:
> > > It has been considered witin OE to be best practice to append to BBPA=
TH and=20
> > > not prepend, the thinking being that then the search path matches the=
 order of=20
> > > the layers listed in bblayers.conf rather than the reverse.
> >=20
> > Then meta-yocto should follow that convention ... and it needs to be
> > well documented, with the consequence of breaking that convention
> > explained, and the terrible punishments to come described in great and
> > sordid detail. Because this needs to be more than a convention, it needs
> > to be an article of faith.
>=20
> I just want to clarify something here.
>=20
> Its accepted that most layers will append to BBPATH. I do think its
> acceptable for a distro policy layer to prepend though and this is why
> meta-yocto does this. I don't remember the exact reason right now but
> the principle stands.

Then the reason should be documented in layer's README file with warning
that this layer wants to be first or last in BBPATH so whoever is
setting BBLAYERS can decide where to put it.

> The root of the problem is that meta-yocto mixes up policy and hardware
> support which is bad. It also means its not compliant with the new Yocto
> Project compliance criteria and hence is not Yocto Project Compatible.
>=20
> Now we've got the compliance criteria sorted out there are some
> adjustments that need to be made and I will shortly be cleaving
> meta-yocto into two pieces to resolve this. I hadn't looked at this
> until now mainly in case there were changes to the criteria.
>=20
> FWIW I think this shows the strength of those criteria as by following
> them, we'd avoid a real world problem here.
>=20
> Cheers,
>=20
> Richard
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--JMCz+drDJ1SjddZX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlBHqU8ACgkQN1Ujt2V2gBzYZwCeL8JMEwO+GG4kl4b7FSATCjzo
uFEAn0J5hnUo7nvohve0VavXHtzpcY04
=y9RH
-----END PGP SIGNATURE-----

--JMCz+drDJ1SjddZX--
