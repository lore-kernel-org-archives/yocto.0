Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f170.google.com (mail-ea0-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1417EE007C6
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 04:42:59 -0800 (PST)
Received: by mail-ea0-f170.google.com with SMTP id k10so801063eaj.1
	for <yocto@yoctoproject.org>; Wed, 08 Jan 2014 04:42:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=v5P4RXGTcC7Wx8b2Tj43mihCO3M1t4FmuIsLWC8/stQ=;
	b=kVTLKkkaMQbo3FmdNq0thAo6QcAQmQ3v4cLRIOMUn9sLFhd0iIg+ZKPEMoyZclkcIP
	ERTiJvvLM60xcFbKa7wgYIzoI8vzrxS7FHBq9Vlq0dKYlTQZhAluNDZWBkdgdrlc96/v
	jyk1/57fFmdgy3zTooqdF54WXR11TeD7Rl3Y6/IQ4TP9t1lk5MX3t/eoadDwX1FAIqeZ
	ITuzXOF0G6PvXF/2RQErO2gd5bUY6d4fRJFOUFDFFKiAzwUod2v7223DsJ2cdcOYaTz6
	egUx0WZjC+K92WYlIb14kzp9eU79d91VQpnFemVXCcxLTaS45axPEvx5E0dwUDFHSIA1
	gIqg==
X-Received: by 10.14.221.193 with SMTP id r41mr26366231eep.92.1389184977795;
	Wed, 08 Jan 2014 04:42:57 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107]) by mx.google.com with ESMTPSA id
	b41sm189206571eef.16.2014.01.08.04.42.55 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Jan 2014 04:42:56 -0800 (PST)
Date: Wed, 8 Jan 2014 13:43:06 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20140108124306.GY3709@jama>
References: <52CD3DCC.9070807@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <52CD3DCC.9070807@mlbassoc.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: PR server question
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
X-List-Received-Date: Wed, 08 Jan 2014 12:43:02 -0000
X-Groupsio-MsgNum: 17707
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wRyyN4gAPkNkeCwp"
Content-Disposition: inline

--wRyyN4gAPkNkeCwp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 08, 2014 at 05:00:12AM -0700, Gary Thomas wrote:
> I'm using a local PR server for my builds, working on my Linux
> kernel.  When I run this sequence:
>    $ bitbake virtual/kernel -c devshell
>      ... fiddle with some kernel sources
>    $ bitbake virtual/kernel -C compile; bitbake package-index
> I notice that the package revision for 'kernel-image-*' goes up
> by 3 on every iteration.
>=20
> Not that it makes much difference (or does it?), but does this
> make sense?  Why does it not just increase by 1 since I've only
> actually rebuilt the package once?

I don't remember if it was resolved already, but before it was caused by
qemuarm/qemux86/qemux86-64 using different SRCREVs so it was bumped 3
times every time it was parsed (and causing continual rebuilds for
multi-machine builds).

Now the continual rebuilds should be fixed by PR server returning the
same number to each MACHINE, but maybe there was something left.

>=20
> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--wRyyN4gAPkNkeCwp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlLNR9oACgkQN1Ujt2V2gBxs/ACghbB/5juHjReIDatPEkpck5Ht
o54AnRYQSycC5bKbctjauFYA19FzsTOo
=/CpS
-----END PGP SIGNATURE-----

--wRyyN4gAPkNkeCwp--
