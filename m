Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B552E00AEA; Thu, 10 Dec 2015 06:37:27 -0800 (PST)
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
	*      [74.125.82.50 listed in list.dnswl.org]
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97E21E00718
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 06:37:24 -0800 (PST)
Received: by wmec201 with SMTP id c201so27602500wme.1
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 06:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=WntQB4qcfpcK3jXPApiEAiqYVMTLW/ZrCdUYhlCmO+I=;
	b=fcM/rCQtvSHX5XZagYt3DQdbjHzfDCTL5kRGV8zdIS3InDgDVdEj61rs0YaPBh8aSJ
	vLyWKaesYIauvUNVgb8nrTafSWqmBNXQTPdOX1PYobUrbq4PM6N6YYaTFQBbPzbBklcj
	ShkYO4AAfO/1VzmdcymVgJYfbxWmoDX7NhWnS76WUOUe2Y8GPej1J7wygNHcDGrcbil7
	oQcR2lmuupNBNPr1ZPqoYNOu89Hhf1fe5huoNROVWDFH5d6xQ5Zs2ZtLgc6ZfiK85Mth
	tSVuSyv2Pppg9JEOHtgdNG9a/dpIESswVv+xbcexNkPCVxPHqKz1k+WElDTleRGzvNM5
	Rx9g==
X-Received: by 10.194.122.73 with SMTP id lq9mr15102388wjb.65.1449758243069;
	Thu, 10 Dec 2015 06:37:23 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id t5sm13109318wmt.1.2015.12.10.06.37.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 10 Dec 2015 06:37:21 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 10 Dec 2015 15:39:06 +0100
To: Bryan Evenson <bevenson@melinkcorp.com>
Message-ID: <20151210143906.GJ2246@jama>
References: <BN3PR0501MB10908B9B84564BC25761049BBBE80@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<20151210091943.GF2246@jama>
	<DM2PR0501MB1101580A303198D043E24F39BBE90@DM2PR0501MB1101.namprd05.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <DM2PR0501MB1101580A303198D043E24F39BBE90@DM2PR0501MB1101.namprd05.prod.outlook.com>
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
X-List-Received-Date: Thu, 10 Dec 2015 14:37:27 -0000
X-Groupsio-MsgNum: 27669
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Ah40dssYA/cDqAW1"
Content-Disposition: inline

--Ah40dssYA/cDqAW1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 10, 2015 at 02:15:05PM +0000, Bryan Evenson wrote:
> Martin,
>=20
> > -----Original Message-----
> > From: Martin Jansa [mailto:martin.jansa@gmail.com]
> > Sent: Thursday, December 10, 2015 4:20 AM
> > To: Bryan Evenson <bevenson@melinkcorp.com>
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] Cleanly moving files from one package to another
> >=20
> > On Wed, Dec 09, 2015 at 08:19:40PM +0000, Bryan Evenson wrote:
> > > All,
> > >
> > > I'm on poky/dizzy-1.7.3 and I'm using opkg for a package manager.  I =
have a
> > few script files that are part of one package that really belong with a=
nother.
> > So I updated both recipes, removed the file from one recipe and added i=
t to
> > the other recipe.  I built everything, made the opkg feed repo and trie=
d to
> > upgrade with "opkg update; opkg upgrade" to see how clean the upgrade
> > was.  For each script file I moved from one package to the other I get =
an error
> > message of the form:
> > >
> > > * check_data_file_clashes: Package A wants to install file
> > /path/to/script/file
> > >         But that file is already provided by package  * B
> > >
> > > I know I can do "opkg upgrade --force-overwrite", but I'd like to make
> > recipe changes so that it upgrades cleanly.  All I've done in the recip=
es is
> > remove the script files from the FILES variable and the do_install step=
 of one
> > recipe and added the script to the FILES variable and do_install step o=
f the
> > other recipe.  I know update-alternatives can be used if more than one
> > package provides the same binary, but is that necessary in this case wh=
en
> > transferring ownership to another package?  Is there anything else I ca=
n do in
> > the recipes to prevent the opkg install errors?
> >=20
> > Have you tried to set
> > RREPLACES_<pkg-new> =3D "<pkg-old>"
> > ?
>=20
> I haven't tried that because I'm not replacing a package.  Both packages =
still exist on the system and are both needed, it's just that ownership of =
one of the files is being transferred from one package to another.  Would I=
 still use RREPLACES even if I want to keep both packages on the system?
>=20
> Specifically in this case, I have some script files for scheduled tasks t=
hat were part of one of my self-made packages.  However, they really belong=
 with cronie since this is what is calling the scripts.  So I removed the s=
cript files from my self-made package and added them to cronie.  My package=
 has other files still associated with it (that do belong with it) installe=
d on my system.  So I want to keep both packages on my system, but I just w=
ant to change ownership of these script files from my package to cronie.  I=
s RREPLACES the tool for this job?

> Is RREPLACES the tool for this job?

Yes, see
https://www.debian.org/doc/debian-policy/ch-relationships.html#s-replaces

opkg should work the same.

> > If the old package should be removed completely during opkg upgrade, th=
en
> > you'll need to set whole combo, that is RREPLACES,RCONFLICTS,RPROVIDES.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--Ah40dssYA/cDqAW1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlZpjokACgkQN1Ujt2V2gBwg9ACfd+4u+ERiHNeu9xdApX0nDMQL
rTAAoIaqpraq1GSwU/T8XGvZGLyHxtHq
=viwm
-----END PGP SIGNATURE-----

--Ah40dssYA/cDqAW1--
