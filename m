Return-Path: <martin.jansa@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75E68E006B0
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2011 15:05:01 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkbc12 with SMTP id c12so13209823bkb.35
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2011 15:05:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=6HLiGjWOkPqdEzotodObaolJ9gU7vu2+oFdKMTqPrvs=;
	b=im2V1QT3p9Zb3q5d0gZlEXjpeS00OuOryLSTSJLnNVUxeoJ8u7wv67tM5LeLw+EgsL
	AdGzZeVO8HIf305BSLE2tNNwJU535IGEm6Huy8Ifurpw64QnF+78m/+2qJQrsuGNJMG8
	Zsgolk8NQaLDjAjLHHGZNpEh8hBtxqCtMVZ6E=
Received: by 10.204.50.88 with SMTP id y24mr52284399bkf.53.1322607900056;
	Tue, 29 Nov 2011 15:05:00 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id q6sm40214523bka.6.2011.11.29.15.04.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 29 Nov 2011 15:04:58 -0800 (PST)
Date: Wed, 30 Nov 2011 00:04:46 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20111129230446.GL7441@jama.jama.net>
References: <alpine.DEB.2.02.1111291759160.17235@oneiric>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1111291759160.17235@oneiric>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to cleanly exit a QEMU session?
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
X-List-Received-Date: Tue, 29 Nov 2011 23:05:02 -0000
X-Groupsio-MsgNum: 3610
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TnYVF1hk1c8rpHiF"
Content-Disposition: inline

--TnYVF1hk1c8rpHiF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 29, 2011 at 06:00:31PM -0500, Robert P. J. Day wrote:
>=20
>   i'm sure it's in one of the docs i missed, but how does one cleanly
> shut down a QEMU session and get back to the original terminal
> session?  i've tried shutdown and poweroff but neither of those gives
> me my shell prompt back.

Ctrl+Alt+2 to open QEMU monitor and 'quit'

or Ctrl+A+C when you're using -nographics

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--TnYVF1hk1c8rpHiF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk7VZQ4ACgkQN1Ujt2V2gBzRrQCeK2O+/YbkxHCO4gUK8nATBQPc
tScAniL2TCNkMVpXoADyeHDrcydpuhO7
=+82o
-----END PGP SIGNATURE-----

--TnYVF1hk1c8rpHiF--
