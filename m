Return-Path: <martin.jansa@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3A07E004F1
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2011 08:06:31 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkbzu5 with SMTP id zu5so3704800bkb.35
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2011 08:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=AUQ0whwi8QLFWDl6UQXPzTNctIGZ3cppa4JOPBWSXj8=;
	b=LMKhGHf771nTMnfyTZfrups2p6Qz0GbD9h+KfOBZSEgMDrqxgGMjkDGAc5p4lWHzIq
	MxW88CYwJQl3rx+N+B/gSQK2ehWFTVSt1Muh1YrbeUTrjkOQvCfO8849inDtHoWCtB8w
	n+ZiiJ7pGZxwJKSY029QbaWWRa1RuIUG03l3w=
Received: by 10.204.132.9 with SMTP id z9mr821285bks.333.1316099188605;
	Thu, 15 Sep 2011 08:06:28 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id t16sm3693680bkv.11.2011.09.15.08.06.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 15 Sep 2011 08:06:27 -0700 (PDT)
Date: Thu, 15 Sep 2011 17:06:19 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Enric Balletbo i Serra <eballetbo@gmail.com>
Message-ID: <20110915150619.GC7445@jama.jama.net>
References: <1316098483-3446-1-git-send-email-eballetbo@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1316098483-3446-1-git-send-email-eballetbo@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org, Enric Balletbo i Serra <eballetbo@iseebcn.com>
Subject: Re: [PATCH] openssh: Create /etc/ssh/ssh_host_ecdsa_key if it doesn't exist
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
X-List-Received-Date: Thu, 15 Sep 2011 15:06:32 -0000
X-Groupsio-MsgNum: 2787
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="t0UkRYy7tHLRMCai"
Content-Disposition: inline

--t0UkRYy7tHLRMCai
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 15, 2011 at 04:54:43PM +0200, Enric Balletbo i Serra wrote:
> From: Enric Balletbo i Serra <eballetbo@iseebcn.com>
>=20
> After OpenSSH 5.7 the ECDSA is the preferred key algorithm when
> both the client and server support it.

Please use right mailing list for oe-core patches..
http://lists.linuxtogo.org/pipermail/openembedded-core/2011-September/00961=
3.html

--t0UkRYy7tHLRMCai
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk5yFGsACgkQN1Ujt2V2gBwPhwCbBIioLpHkVx3fRyf/YtPgpC+d
RoMAn013t2p1aU4fW1zYArBnqo4emL0V
=uIwf
-----END PGP SIGNATURE-----

--t0UkRYy7tHLRMCai--
