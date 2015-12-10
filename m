Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36476E00B6D; Thu, 10 Dec 2015 09:01:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4BE7E00736
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 09:01:28 -0800 (PST)
Received: by wmec201 with SMTP id c201so33642668wme.1
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 09:01:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=aODOwSylDLSui6JelfWbQhAOocHnbvtteFArdiJwXK4=;
	b=b6d4PTjMmkqWEv1a6vbUkdznjCUthnUnjhBIhXFYhhp8BVgsRxQNmAkbIYXSMq9IHb
	ajhUuLFo7R8VzkOyJpDfVA4RBCKEfC+5td2s+PRW8AqRxCvyx4P6137KZdINPs6ln23M
	Uq+b8TfeIoJUMeYeFzfo1Fw8D38tSv18eTf7YZEk/GwSJuZvwGW8RptH9jeDHB+QFtzG
	awAp1a4wGapufP4Z4wX8tOfu72URALi4mf1pqmuNs206recdoSd5H0IdOMgzSqELOOnm
	lNJTiEaoGplkHc7aopmI8hyp1zaAbBN4IopPJBN9yLIG7Vizg2LO3moF4JaPYmeCIEQa
	IPYQ==
X-Received: by 10.195.13.137 with SMTP id ey9mr15808791wjd.81.1449766887869;
	Thu, 10 Dec 2015 09:01:27 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	z1sm13203896wje.35.2015.12.10.09.01.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 10 Dec 2015 09:01:25 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 10 Dec 2015 18:03:10 +0100
To: Bryan Evenson <bevenson@melinkcorp.com>
Message-ID: <20151210170310.GM2246@jama>
References: <BN3PR0501MB10908B9B84564BC25761049BBBE80@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<20151210091943.GF2246@jama>
	<DM2PR0501MB1101580A303198D043E24F39BBE90@DM2PR0501MB1101.namprd05.prod.outlook.com>
	<20151210143906.GJ2246@jama>
	<DM2PR0501MB11014F9E6A9F7DB43FC43D53BBE90@DM2PR0501MB1101.namprd05.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <DM2PR0501MB11014F9E6A9F7DB43FC43D53BBE90@DM2PR0501MB1101.namprd05.prod.outlook.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cleanly moving files from one package to another
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
X-List-Received-Date: Thu, 10 Dec 2015 17:01:35 -0000
X-Groupsio-MsgNum: 27675
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ztcJpsdPpsnnlAp8"
Content-Disposition: inline

--ztcJpsdPpsnnlAp8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 10, 2015 at 04:20:45PM +0000, Bryan Evenson wrote:
> Martin,
>=20
> > -----Original Message-----
> > From: Martin Jansa [mailto:martin.jansa@gmail.com]
> > Sent: Thursday, December 10, 2015 9:39 AM
> > To: Bryan Evenson <bevenson@melinkcorp.com>
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] Cleanly moving files from one package to another
> >=20
> > On Thu, Dec 10, 2015 at 02:15:05PM +0000, Bryan Evenson wrote:
> > > Martin,
> > >
> > > > -----Original Message-----
> > > > From: Martin Jansa [mailto:martin.jansa@gmail.com]
> > > > Sent: Thursday, December 10, 2015 4:20 AM
> > > > To: Bryan Evenson <bevenson@melinkcorp.com>
> > > > Cc: yocto@yoctoproject.org
> > > > Subject: Re: [yocto] Cleanly moving files from one package to
> > > > another
> > > >
> > > > On Wed, Dec 09, 2015 at 08:19:40PM +0000, Bryan Evenson wrote:
> > > > > All,
> > > > >
> > > > > I'm on poky/dizzy-1.7.3 and I'm using opkg for a package manager.
> > > > > I have a
> > > > few script files that are part of one package that really belong wi=
th
> > another.
> > > > So I updated both recipes, removed the file from one recipe and
> > > > added it to the other recipe.  I built everything, made the opkg
> > > > feed repo and tried to upgrade with "opkg update; opkg upgrade" to
> > > > see how clean the upgrade was.  For each script file I moved from
> > > > one package to the other I get an error message of the form:
> > > > >
> > > > > * check_data_file_clashes: Package A wants to install file
> > > > /path/to/script/file
> > > > >         But that file is already provided by package  * B
> > > > >
> > > > > I know I can do "opkg upgrade --force-overwrite", but I'd like to
> > > > > make
> > > > recipe changes so that it upgrades cleanly.  All I've done in the
> > > > recipes is remove the script files from the FILES variable and the
> > > > do_install step of one recipe and added the script to the FILES
> > > > variable and do_install step of the other recipe.  I know
> > > > update-alternatives can be used if more than one package provides
> > > > the same binary, but is that necessary in this case when
> > > > transferring ownership to another package?  Is there anything else =
I can
> > do in the recipes to prevent the opkg install errors?
> > > >
> > > > Have you tried to set
> > > > RREPLACES_<pkg-new> =3D "<pkg-old>"
> > > > ?
> > >
> > > I haven't tried that because I'm not replacing a package.  Both packa=
ges still
> > exist on the system and are both needed, it's just that ownership of on=
e of
> > the files is being transferred from one package to another.  Would I st=
ill use
> > RREPLACES even if I want to keep both packages on the system?
> > >
> > > Specifically in this case, I have some script files for scheduled tas=
ks that
> > were part of one of my self-made packages.  However, they really belong
> > with cronie since this is what is calling the scripts.  So I removed th=
e script files
> > from my self-made package and added them to cronie.  My package has
> > other files still associated with it (that do belong with it) installed=
 on my
> > system.  So I want to keep both packages on my system, but I just want =
to
> > change ownership of these script files from my package to cronie.  Is
> > RREPLACES the tool for this job?
> >=20
> > > Is RREPLACES the tool for this job?
> >=20
> > Yes, see
> > https://www.debian.org/doc/debian-policy/ch-relationships.html#s-
> > replaces
> >=20
> > opkg should work the same.
>=20
> Now I'm having something happen that I haven't seen before with the PR se=
rvice.  I updated my .bbappend to add the RREPLACES as you suggested, but b=
itbake didn't rebuild the package.  I tried doing bitbake -c clean and bitb=
ake -c cleansstate and both times the built package had the same full versi=
on number as it did before I made the RREPLACES change.  I opened the ipk w=
ith Archive Manager and looked at DEBIAN/control, and there was no "Depends=
: " line in the control file.  Then I noticed that this .bbappend had "inhe=
rit pkgconfig" and it isn't needed in the .bbappend.  So while I was at it =
I deleted the line "inherit pkgconfig" and tried to build the package again=
 (without issuing a bitbake -c clean first).  This time it built the packag=
e and the PR service incremented the version.  I opened the resulting ipk a=
nd looked at DEBIAN/control again, and this time there was a "Depends:" lin=
e in the control file.
>=20
> Is changing RREPLACES not being seen as a metadata change by bitbake?  Is=
 this a bug or is there something else I'm missing?

It should invalidate sstate signature for do_package* task
(maybe just do_package_write_ipk), if it doesn't then it's a bug.

Best way to test this is to use bitbake -S package, before and after
such change and bitbake-diffsigs on generated .sigdata files to see if
it was noticed by bitbake.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ztcJpsdPpsnnlAp8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlZpsE0ACgkQN1Ujt2V2gBwjGgCeKwGTNtcWffUoXUw6mnrruczn
kPIAoKgA++dHxPAuLoK9efL9pp/owrO7
=dpEb
-----END PGP SIGNATURE-----

--ztcJpsdPpsnnlAp8--
