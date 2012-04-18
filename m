Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1984EE01421
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 07:53:32 -0700 (PDT)
Received: by wibhm17 with SMTP id hm17so643276wib.11
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 07:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=/AfPcDLfyS07Mc+zEPCC7aaspYhkijURQ7zhC8ev+1w=;
	b=JkmBahWs9ChZ/CLAswqkztNol39f7NVEjtouhEJD0wSVAYwguJe8GbsS+VsIFiiCfu
	d9/weGBcl7SY37H302DI8QWeIMTeb3ZG1uYKtEzI5fGomAWlv8QIB9p32LR5xEQ6uRjo
	SF1gGgm3V9Ey6lFPIdADtK1gLuPOZly6sxy0n/bwlriDNfSfqOQKzmcjrDXGjL76Hv2a
	nYO+R9yz7iMmZaw+UUIOAeqtS28IhykgPIEH0Sav0Akr4NlB8TxKMRaA3yNusGRzoKhK
	wFw4ExmWSGdaDoIQbQ5df97lLbTL8eamc2mmRp2n+OGMrsEdZ4alsqn8F5cfGuc3zgFv
	pgPQ==
Received: by 10.216.132.140 with SMTP id o12mr1621368wei.67.1334760810428;
	Wed, 18 Apr 2012 07:53:30 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id n20sm56104313wiw.5.2012.04.18.07.53.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 18 Apr 2012 07:53:29 -0700 (PDT)
Date: Wed, 18 Apr 2012 16:53:30 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Message-ID: <20120418145330.GM3635@jama.jama.net>
References: <1334760467.24091.100.camel@ted>
MIME-Version: 1.0
In-Reply-To: <1334760467.24091.100.camel@ted>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [OE-core] Yocto Project 1.2 Release Status
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
X-List-Received-Date: Wed, 18 Apr 2012 14:53:33 -0000
X-Groupsio-MsgNum: 6153
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="6CiRFyVmOOJ3DkBX"
Content-Disposition: inline

--6CiRFyVmOOJ3DkBX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 18, 2012 at 03:47:47PM +0100, Richard Purdie wrote:
> I thought I'd update everyone with the current 1.2 status.
>=20
> I'm going to branch master for release at this point. We've fixed a lot
> of issues, I'm hoping the -rc4 build will be a good one. There are signs
> there are some more minor issues around and bugs do keep getting opened.
> These are still being investigated so we'll continue to let that happen.
> Once we have a QA report for -rc4, we'll be in a better position to make
> a call on how things are looking.

Does it mean that after creating branch, master will be open for
postponed patches from ML and master-next or do you want to keep master
as close to release branch as possible for some time (e.g. for those
1.2.1 fixes)?

> If people don't have 1.2 issues to work on, I'd like people to start
> looking at the bugs marked as 1.2.1. The reasoning here is simple, if we
> do have to go to a -rc5 and the fixes are good enough, they might make
> it into 1.2 (but no promises). We need to fix these issues in master and
> for any 1.2.1 release anyway. I'd prefer people not to start working on
> new features at this point but concentrate on improving the quality of
> the release and fixing bugs.
>=20
> Cheers,
>=20
> Richard
>=20
>=20
>=20
>=20
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-core

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--6CiRFyVmOOJ3DkBX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk+O1WoACgkQN1Ujt2V2gBzuqACgu3CkfafQV1s23ZR5z8QEeCV1
QlwAn0vwaY0evsJgF6fg0MF8A2Un3/Gh
=GjvE
-----END PGP SIGNATURE-----

--6CiRFyVmOOJ3DkBX--
