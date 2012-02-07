Return-Path: <martin.jansa@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC511E0030B
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 23:06:35 -0800 (PST)
Received: by eaai11 with SMTP id i11so2823518eaa.35
	for <yocto@yoctoproject.org>; Mon, 06 Feb 2012 23:06:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=dzO4Q4xZ6AMrt9hjuy3L1ZJyrsXwNk9X6gtN20xi/8Q=;
	b=MOXNjl79GM7mJYSXbNMxptSd1O192qd/oXvCDOR0ORBnIMya+q4nTi5Uce3v+PqWL3
	niIeoLDFcry0OyzC4me4cnfrhJiXc/SfP+acRblfA659DOhhr9ySXL3uDDHVGtYM7NTn
	wkTSSILp8KhxnySN+GReza8c/oy8tulONXb3w=
Received: by 10.213.17.6 with SMTP id q6mr3428627eba.40.1328598394203;
	Mon, 06 Feb 2012 23:06:34 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id n17sm70243753eei.3.2012.02.06.23.06.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 06 Feb 2012 23:06:32 -0800 (PST)
Date: Tue, 7 Feb 2012 08:06:31 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Message-ID: <20120207070631.GA3893@jama.jama.net>
References: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
	<4F2AE4E8.3080809@linux.intel.com>
	<4F2AFBF7.8010307@linux.intel.com> <1405123.nGGmjXUAYO@helios>
	<4F306968.9000902@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4F306968.9000902@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: [pull-sys940x 2/4] ranpwd: Add ranpwd recipe
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
X-List-Received-Date: Tue, 07 Feb 2012 07:06:36 -0000
X-Groupsio-MsgNum: 4722
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline

--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 06, 2012 at 03:59:36PM -0800, Joshua Lock wrote:
> On 06/02/12 08:17, Paul Eggleton wrote:
> > On Thursday 02 February 2012 13:11:19 Joshua Lock wrote:
> >> Apologies. I'm wrong here. It was PRIORITY which we agreed to drop.
> >
> > It's worth noting however, at the same time PRIORITY removal was discus=
sed it
> > was acknowledged that SECTION was questionable. Logical grouping of
> > recipes/packages is a useful thing but coming up with groupings that are
> > meaningful in all contexts is hard :(
>=20
> Glad to know my recollection isn't wildly off the mark.
>=20
> I noticed that there are similar, yet different, SECTION values being=20
> used. If we opt to keep SECTION I wonder if we should try and=20
> standardise/sanitise it?

If there is standardised SECTION variable why not use
recipes-${SECTION}/foo_1.0.bb as we already have couple of recipe-*
directories and it's sometimes hard to decide to which directory
something belongs.

Or other way around, standartise recipes-* directories and let bitbake
decide SECTION from it (like it does for PV and PN).

Cheers,

>=20
> Debian's sections seem like reasonable inspiration?=20
> http://packages.debian.org/stable/
>=20
> I think SECTION is useful for tools like Hob and Narcissus, so I'm in=20
> favour of keeping them.
>=20
> Cheers,
> Joshua
> --=20
> Joshua Lock
>          Yocto Project "Johannes factotum"
>          Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ZPt4rx8FFjLCG7dd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk8wzXcACgkQN1Ujt2V2gBxomQCfV8iw9SEJJHZt4d8oCS/MA6jD
8EcAn2d8yMTiFOswz4a0ZH9naFcqGAZ0
=m02B
-----END PGP SIGNATURE-----

--ZPt4rx8FFjLCG7dd--
