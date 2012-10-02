Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7AA9E00524
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 11:57:48 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id hm2so1120275wib.5
	for <yocto@yoctoproject.org>; Tue, 02 Oct 2012 11:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=JX2PT6ICOC6pb8Xr0fHqhHF8I32Jl5kqYW6wagp7RFA=;
	b=Vs+UJi/RokETO+odxuq5wl9udG1eEZNuutIUTKbodcBSnHernjvmeG5kEossGKz6hw
	ZMihSO8gygo2X8gAHGkQnBZfLqr3p4U5ZKwBXckCPQ8wA6kZWxeJkhf0KNHWfDyVTPxR
	YdB7rSaQbcYPV4rrkh67eiv3OUD8M7CQ8D8jChxCYetzfMpK32uDr8mTgOmUj1YJHljN
	w0yF4B+hd+Q1sK160THBrom6UugsgUtKOSBS5keRouN6JRw1JGkKnICsscpEtDus1w3V
	wG/wnZIAM81swX+63RzPgxqO/i0vIUnAnnHWghym2/KvU0SfvP0Yg80z0PtHnA6R3IPW
	K52w==
Received: by 10.216.93.80 with SMTP id k58mr9330683wef.98.1349204263267;
	Tue, 02 Oct 2012 11:57:43 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id v3sm3856183wiy.5.2012.10.02.11.57.40
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 02 Oct 2012 11:57:41 -0700 (PDT)
Date: Tue, 2 Oct 2012 20:57:40 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Jerrod Peach <peachj@lexmark.com>
Message-ID: <20121002185740.GC15881@jama.jama.net>
References: <CA+QkY1CX70KjdW8RufaMcUYoK+wLwW-jUKpM7aDmDmmLbWEvKg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+QkY1CX70KjdW8RufaMcUYoK+wLwW-jUKpM7aDmDmmLbWEvKg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: How do you release distros produced with Yocto? How should I?
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
X-List-Received-Date: Tue, 02 Oct 2012 18:57:49 -0000
X-Groupsio-MsgNum: 9755
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="3siQDZowHQqNOShm"
Content-Disposition: inline

--3siQDZowHQqNOShm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 02, 2012 at 12:43:27PM -0400, Jerrod Peach wrote:
> All,
>=20
> After spending a few years working with a several-years old forked and
> heavily-modified version of BitBake, my company is looking at switching to
> using Yocto to build embedded Linux for its printers.  I've been playing
> with/writing tools and process around Yocto for a couple of months now, a=
nd
> I'm getting to the point where I can produce integration builds without a
> problem.
>=20
> Now I'm starting to think about how our release process should work with
> pure Yocto and I'm running into a conundrum.  Before I get into that,
> though, let me very briefly explain how we release code currently in terms
> of Yocto as it is today.  This is not exactly what we do, but if I had to
> explain the real process, it would take a while because of all the
> customization we bolted on top of our forked BitBake.  Basically, we have=
 a
> branch in a repository containing the equivalent of local.conf, and we put
> fixed revisions of every package for that release into the local.conf file
> within that branch.  As patches for a release come in, the local.conf file
> is updated to point to the new patches.
>=20
> I was thinking about doing something very close to that in actual Yocto,
> except I'd store only the revisions/branches that were different from what
> the bb file prescribed in local.conf.  I ran that idea by a couple of
> colleagues separately and they both immediately pointed out a concern: th=
ey
> didn't want to have two different places that could manage the revision of
> the package, i.e. local.conf and the package bb file.  They don't like how
> that works in the system we have today.  Instead, they wanted to branch a=
ll
> the metadata and have people update individual bb files with different
> revisions as necessary.  That leaves only one place to manage the revisio=
n:
> the package bb file.  Doing all that branching concerns me (it seems
> heavier-weight than it needs to be, at the very least), but I can't say
> specifically why branching the bb files is harmful.  If you guys can think
> of a reason why, let me know.  If you think it's reasonable, let me know
> that too.

I think that branching (or tagging) whole metadata is best option, use
AUTOREV from some .inc file (included in local.conf) for development and
then just before release update in recipe SRCREVs with small script from
bitbake persistent cache (tmp-eglibc/cache/bb_persist_data.sqlite3).

This way you will get correct SRCREVs in branched metadata and won't
need so many recipe updates during development to move SRCREV too often.

Cheers,

> I'm also starting to think there might be a better way to handle this with
> Yocto's concept of distros (perhaps have a distro for printer X, and a
> different one for printer Y, each pointing at versions of code that are
> good for the respective printer), but my research so far hasn't given me
> enough information on distros to know if this is a reasonable approach.
>  (I've poked through some of the documentation and the mailing list
> archives.)  So, what do you all do for releasing code?  Does anyone have a
> situation similar to mine?  (I can't imagine I'm unique, but maybe I'm mo=
re
> special than I thought.)  Even if you don't have a situation like mine,
> what would you suggest I do for releasing code for our printers?
>=20
> Kind regards,
>=20
> Jerrod

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--3siQDZowHQqNOShm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlBrOSQACgkQN1Ujt2V2gBxzXQCdGU8uN4psTvWUgpid80HGQ8sy
93gAoKkmf/rD/MBuSKhIZufrrJctZ3lD
=mTSh
-----END PGP SIGNATURE-----

--3siQDZowHQqNOShm--
