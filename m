Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA493E0044D
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 09:25:45 -0700 (PDT)
Received: by werc1 with SMTP id c1so3305569wer.35
	for <yocto@yoctoproject.org>; Tue, 03 Apr 2012 09:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=QMCzUKnjrVEABWjjGxbeYcVTypecg8csOYz55u7J0Us=;
	b=upX1Bnc1cfqfOtJ2sWiZyPHreRiyLNYlNt4130Aq2k++TRYUFC0aO7kISudTE0AeSl
	1pK5ZYK1I8WT7zeawpWAEPFniarRUrT6KaNy1aWDX1kej73gaMc2ZYB+LFQufZyLJijc
	K/nZr3NYla3TgLKDxSE4yhTizlMGYFwQxNkb78a5s5gpH2ozqM3db5LoCPbweCHNNqnU
	tYXcwPuSNhwo+D/ybXRt5loeFJWBXHcGffT+vmZtHsWMyx/4MK0XI2t8tFe0slWsdUwS
	J2SSI7AOErdAC5YnPbmT4LGVTqQZyaH4DpmpDpqeOK2d4Agyk+n/DLMKK4n1P8oqN53k
	jS3g==
Received: by 10.180.83.72 with SMTP id o8mr37962148wiy.5.1333470344255;
	Tue, 03 Apr 2012 09:25:44 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id n15sm43948576wiw.6.2012.04.03.09.25.42
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Apr 2012 09:25:42 -0700 (PDT)
Date: Tue, 3 Apr 2012 18:25:42 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20120403162541.GB3943@jama.jama.net>
References: <1333141865.18082.120.camel@ted> <4F764759.1070801@linux.intel.com>
	<1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
	<4F764FB7.2080508@linux.intel.com>
	<95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
	<20120402171356.GE4829@bill-the-cat>
	<4F7B1EBD.1030500@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4F7B1EBD.1030500@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
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
X-List-Received-Date: Tue, 03 Apr 2012 16:25:46 -0000
X-Groupsio-MsgNum: 5760
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ftEhullJWpWg/VHq"
Content-Disposition: inline

--ftEhullJWpWg/VHq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 03, 2012 at 09:01:01AM -0700, Darren Hart wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Clear reproducible testing results. Whether or not a pair of git
> clones and some tinkering can result in the same thing as a poky
> repository or not isn't relevant in my opinion. I believe that we need
> a consistent mode of validating support for a Yocto Project X.Y
> release. Now if that is accomplished by building with the poky
> repository of the same vintage or by running some script that pulls
> the right bits together independently.... I honestly don't care, but I
> do think it should be consistent.

so teach setup script something like:
poky.sh checkout X.Y (which checkouts whatever parts are needed for X.Y)
poky.sh update X.Y   (dtto)

Which creates the same structure like poky repository has, but by
checkouting upstream repositories or using submodules or whatever.

That's what oebb.sh and SHR makefile does for master/shr HEADs, but can
be extended do it for particular version too.

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ftEhullJWpWg/VHq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk97JIUACgkQN1Ujt2V2gBxsfwCfVjRlmIYYO9OhWctppgkvNQyj
40AAn2zSEM3mKIgF7UW2gSBJRl46fGs2
=1sIp
-----END PGP SIGNATURE-----

--ftEhullJWpWg/VHq--
