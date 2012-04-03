Return-Path: <tom.rini@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAE28E0044D
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 09:40:42 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so2335500yhf.35
	for <yocto@yoctoproject.org>; Tue, 03 Apr 2012 09:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:organization
	:user-agent; bh=Lk+HY3WJ4u9cbvlvD9h4YfHf6bZhckzUeIzxFwJfoJc=;
	b=o+IP5hgdTl96E8PF4+/OQoj1kpHBa15SjT1KVzdSuRngzXTLhifl55avgS215lyb9Y
	5mAKmfNTnm4Pu+orWRUxuvFmmSfzcfI2U+dJazgbgcJz/d6pYvPb9jR9VTY+FfBVdJKx
	kmZLxYn3qK4tjN8dIY6wFtefkmDQqDiWwQdfx/pZSsKzd8ci2+8Xiq1R4Lve1Fhyap6Y
	R40CIDVBNSJQDJhkuDoVwRVDgeZmIl0haE/Mf8w9LpP11NERIBsAkgjRt75zEApRgxKh
	oXhaYoDk3zxoC9HlFxotNDTX/csrNMFzf3toLXgbreKaPMGt7Wem/GNAbz28ewpWXngy
	ehgQ==
Received: by 10.60.4.170 with SMTP id l10mr19641143oel.67.1333471241952;
	Tue, 03 Apr 2012 09:40:41 -0700 (PDT)
Received: from bill-the-cat (ip68-230-54-74.ph.ph.cox.net. [68.230.54.74])
	by mx.google.com with ESMTPS id k7sm17274382oei.0.2012.04.03.09.40.39
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Apr 2012 09:40:40 -0700 (PDT)
Date: Tue, 3 Apr 2012 09:40:43 -0700
From: Tom Rini <tom.rini@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20120403164043.GE4816@bill-the-cat>
References: <1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
	<4F764FB7.2080508@linux.intel.com>
	<95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
	<20120402171356.GE4829@bill-the-cat>
	<4F7B1EBD.1030500@linux.intel.com>
	<20120403162541.GB3943@jama.jama.net>
	<4F7B261B.1090101@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4F7B261B.1090101@linux.intel.com>
Organization: Texas Instruments
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Tue, 03 Apr 2012 16:40:43 -0000
X-Groupsio-MsgNum: 5763
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="/3yNEOqWowh/8j+e"
Content-Disposition: inline

--/3yNEOqWowh/8j+e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 03, 2012 at 09:32:27AM -0700, Darren Hart wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>=20
> On 04/03/2012 09:25 AM, Martin Jansa wrote:
> > On Tue, Apr 03, 2012 at 09:01:01AM -0700, Darren Hart wrote:
> >> -----BEGIN PGP SIGNED MESSAGE----- Clear reproducible testing
> >> results. Whether or not a pair of git clones and some tinkering
> >> can result in the same thing as a poky repository or not isn't
> >> relevant in my opinion. I believe that we need a consistent mode
> >> of validating support for a Yocto Project X.Y release. Now if
> >> that is accomplished by building with the poky repository of the
> >> same vintage or by running some script that pulls the right bits
> >> together independently.... I honestly don't care, but I do think
> >> it should be consistent.
> >=20
> > so teach setup script something like: poky.sh checkout X.Y (which
> > checkouts whatever parts are needed for X.Y) poky.sh update X.Y
> > (dtto)
> >=20
> > Which creates the same structure like poky repository has, but by=20
> > checkouting upstream repositories or using submodules or whatever.
> >=20
> > That's what oebb.sh and SHR makefile does for master/shr HEADs, but
> > can be extended do it for particular version too.
>=20
>=20
> This is certainly doable, but it doesn't address the stabilization
> buffer poky provides that I mentioned.

While I want to reply to your whole email, I want to ask now, is there
really a stabilization buffer being provided?  I could see that being
the case if we were talking about depending on something independent of
this effort (gcc, eglibc, make) but we're talking about oe-core and
bitbake.  The folks in charge of poky the repo are in charge of oe-core
and bitbake.  There might be an unintentional lag between when Richard
can push changes to poky the repo, but I don't think it's great (and
hey, freeing up Richard's time for other stuff is probably a good thing
:)).

--=20
Tom

--/3yNEOqWowh/8j+e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAk97KAsACgkQdZngf2G4WwP3pgCeIwFDihVbYvH+bKWaU5XIXI9j
3t8AoItBJA/eB62ri8tRD2jOZGoookoQ
=IUza
-----END PGP SIGNATURE-----

--/3yNEOqWowh/8j+e--
