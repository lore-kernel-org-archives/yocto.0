Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DACDEE00BC2; Thu, 10 Dec 2015 01:18:05 -0800 (PST)
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
	*      [74.125.82.53 listed in list.dnswl.org]
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7538DE00349
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 01:18:01 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id u63so14919619wmu.0
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 01:18:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=BKBWnT6G8nUvku0eTqQdcmqn1lN1OENX7aThO+bK6D0=;
	b=jurzSpZ++4beQpiNkvi99EwWC8Q32yw5z10cjfxaNIqSjJcKhHpf37t2w24pxtIpiq
	CBmzYbNnE+RFDai4d5E4L1vqNUdnH8N/pqnqF5gPIu6JzYGeMf9S17webTREbwq8QDEN
	U7g8GQxPpwrAe3UJVBClqBvr7oF8qdWlhm93uHAwngxTZprTldWmEiqmPDQdSDfFDrDN
	bcCTQ+8dxzCz5ryTOqjPIrYv03uXWhBwLEmiabsl6y2d4CquXsGvVPZdf56NxW9phiCX
	PQiGPrRp1Bs13qHfS7l7/KALzQdYrOYcsHc4NNUCcBqKbSuiz28y/nCPZWpWLA7wPJcJ
	KOsQ==
X-Received: by 10.194.209.235 with SMTP id mp11mr13158443wjc.53.1449739080606; 
	Thu, 10 Dec 2015 01:18:00 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	vr10sm11536088wjc.38.2015.12.10.01.17.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 10 Dec 2015 01:17:59 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 10 Dec 2015 10:19:43 +0100
To: Bryan Evenson <bevenson@melinkcorp.com>
Message-ID: <20151210091943.GF2246@jama>
References: <BN3PR0501MB10908B9B84564BC25761049BBBE80@BN3PR0501MB1090.namprd05.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <BN3PR0501MB10908B9B84564BC25761049BBBE80@BN3PR0501MB1090.namprd05.prod.outlook.com>
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
X-List-Received-Date: Thu, 10 Dec 2015 09:18:05 -0000
X-Groupsio-MsgNum: 27663
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="JbKQpFqZXJ2T76Sg"
Content-Disposition: inline

--JbKQpFqZXJ2T76Sg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 09, 2015 at 08:19:40PM +0000, Bryan Evenson wrote:
> All,
>=20
> I'm on poky/dizzy-1.7.3 and I'm using opkg for a package manager.  I have=
 a few script files that are part of one package that really belong with an=
other.  So I updated both recipes, removed the file from one recipe and add=
ed it to the other recipe.  I built everything, made the opkg feed repo and=
 tried to upgrade with "opkg update; opkg upgrade" to see how clean the upg=
rade was.  For each script file I moved from one package to the other I get=
 an error message of the form:
>=20
> * check_data_file_clashes: Package A wants to install file /path/to/scrip=
t/file
>         But that file is already provided by package  * B
>=20
> I know I can do "opkg upgrade --force-overwrite", but I'd like to make re=
cipe changes so that it upgrades cleanly.  All I've done in the recipes is =
remove the script files from the FILES variable and the do_install step of =
one recipe and added the script to the FILES variable and do_install step o=
f the other recipe.  I know update-alternatives can be used if more than on=
e package provides the same binary, but is that necessary in this case when=
 transferring ownership to another package?  Is there anything else I can d=
o in the recipes to prevent the opkg install errors?

Have you tried to set
RREPLACES_<pkg-new> =3D "<pkg-old>"
?

If the old package should be removed completely during opkg upgrade,
then you'll need to set whole combo, that is
RREPLACES,RCONFLICTS,RPROVIDES.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--JbKQpFqZXJ2T76Sg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlZpQ64ACgkQN1Ujt2V2gBwL3ACfRgXgs7oxW2IGR9hCz8Q34XnT
MsYAni2qe7JKkYEZ0035B8cRKIVCpEtX
=SAqS
-----END PGP SIGNATURE-----

--JbKQpFqZXJ2T76Sg--
