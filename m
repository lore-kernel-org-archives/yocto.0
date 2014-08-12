Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FFE0E0079A; Tue, 12 Aug 2014 08:48:00 -0700 (PDT)
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
	*      [74.125.82.177 listed in list.dnswl.org]
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A3C1E006EF
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 08:47:51 -0700 (PDT)
Received: by mail-we0-f177.google.com with SMTP id w62so10137324wes.22
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 08:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=6qYZ0iLnimzF264jH8w+C5GPQrOjiRlnSH+b1pyrqS0=;
	b=spe7bzEqcW12zO2zURj5iHp1LCiGgyU0ebQq39NM2WwtN7sI5qAFprXXCWdqVm/8X4
	xVwLoc8StE9rZbKn+sJ+uXSuyGJOy2c9UWWoBNpLd3wQZRR6bofhjnB2lDZj+p5ptLLB
	y04DytmTr/B5PJ8AD59Z2DIEixTpldwPgmXw6L1oALx8gobAS222qiJmILCQGt6wzDqn
	+NzEBd6JMt785vKSlSX2s/YK97mjfk4oZzXD2T2tXHjBL8jhTd7TLEgqpTgTXxrYGX6j
	4o6n65kVQaDtsZZMGW4guK1iUNS5i/VWh67QCE7k9lp7jyX8XZsJTIvFabYxkGQ41SgD
	DXmQ==
X-Received: by 10.194.89.106 with SMTP id bn10mr6072077wjb.121.1407858469983; 
	Tue, 12 Aug 2014 08:47:49 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	gi5sm10048087wjd.33.2014.08.12.08.47.48 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Aug 2014 08:47:49 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 12 Aug 2014 17:48:25 +0200
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20140812154825.GQ14848@jama>
References: <8971389.fH3VELLT3O@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <8971389.fH3VELLT3O@peggleto-mobl5.ger.corp.intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: Automatic upgrade helper
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
X-List-Received-Date: Tue, 12 Aug 2014 15:48:00 -0000
X-Groupsio-MsgNum: 21062
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="pwryyPyu+zbGuqhB"
Content-Disposition: inline

--pwryyPyu+zbGuqhB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 12, 2014 at 04:19:41PM +0100, Paul Eggleton wrote:
> Hi folks,
>=20
> I'd like to announce the immediate availability of the Automatic Upgrade=
=20
> Helper, a tool for automating the task of upgrading recipes when a new=20
> upstream release occurs. It utilises the build system to check if a new=
=20
> version of the software built by a particular recipe is available, and if=
 it=20
> is, it will attempt to upgrade the recipe to build that new version. The=
=20
> outcome of the process is emailed to the maintainer of the recipe along w=
ith a=20
> patch to do the upgrade, so that they can send the patch to be merged (if=
 the=20
> build succeeded with no warnings) or develop the patch further if problem=
s=20
> occurred.

Does it also check buildhistory output for unexpected changes in
packaging?

If it doesn't it should ask maintainer to do so manually before
submitting the patch.

> The tool is available in the following repository:
>=20
>   http://git.yoctoproject.org/cgit/cgit.cgi/auto-upgrade-helper/
>=20
> Currently it builds upon distrodata.bbclass in order to do the upstream=
=20
> version checking, but in future we'd like to make better use of BitBake's=
=20
> fetcher to do this and also move some of the additional metadata out of i=
nc=20
> files and into recipes as appropriate. There's probably other things we c=
ould=20
> do to make the tool more flexible in future as well. Feedback / contribut=
ions=20
> welcome.
>=20
> (Thanks to Laurentiu Palcu & Marius Avram who did all of the work on this=
=20
> tool.)
>=20
> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--pwryyPyu+zbGuqhB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlPqN0kACgkQN1Ujt2V2gBxW9gCfff6ngtLHeCjlNrIqnqvEUphr
kDUAoJTHZe9wBv5+XZy5pIPMa4tyn4Kw
=7tNd
-----END PGP SIGNATURE-----

--pwryyPyu+zbGuqhB--
