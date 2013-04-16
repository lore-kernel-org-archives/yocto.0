Return-Path: <martin.jansa@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46490E0146B
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 12:54:25 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id lj1so516706pab.35
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 12:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=8AZaWGqbubpUsLXmCvQ2OQpIgj1WUMoc2iIjwb+VhT4=;
	b=l1auPqaysJm4CreCYnHefEFEuTfBPle4G47PAeOtBb3u4xsPa+BsWbUT2FWiPQzmtT
	YfTwAq5gGQvzMbyrXPH3hFSN7Jnvi4U+SJRVbgivVZSt29wm6L3Yoxc2uwDYJ7Fi6QmB
	xSjZuTQLx4TdiqmJeVmnzgoPDEDFhejJ+LIAqj1cWT47ztfBR5f8J2/RYEeF8y9memTD
	txfWwIIgIDxByV3QifHqQLsgBkOmc2QsKdGzDpkwpVLQVO8q53VTCJjEZtkmhA4OydtT
	9jd5AJ2O/5hdlZU7K019R4hPx7wdKZgKQqhlFUIYWULoeJoa1mVweauFrbN7ITuI1gPL
	Bddg==
X-Received: by 10.68.180.4 with SMTP id dk4mr5310049pbc.104.1366142065026;
	Tue, 16 Apr 2013 12:54:25 -0700 (PDT)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id fc8sm3828927pad.21.2013.04.16.12.54.22
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 16 Apr 2013 12:54:24 -0700 (PDT)
Date: Tue, 16 Apr 2013 21:54:22 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Message-ID: <20130416195422.GU10628@jama.dyndns-home.com>
References: <CANwz6nwRC9D4KUa8BEJF3siCbu9KCf9khgpmH2kV_Rcp9esZKA@mail.gmail.com>
	<CAHUNapTftvQZHdtfqZ6orYoi2BsVHFVsO-yT-myS+daKxeQjEA@mail.gmail.com>
	<CANwz6nyiR-dOb2owu_dXV_kQNH4JZRWrgfO3Z0hnkKui_sJ-6g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANwz6nyiR-dOb2owu_dXV_kQNH4JZRWrgfO3Z0hnkKui_sJ-6g@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Repository to upgrade images
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
X-List-Received-Date: Tue, 16 Apr 2013 19:54:25 -0000
X-Groupsio-MsgNum: 13200
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="dXvu6+ixFx2ZffE8"
Content-Disposition: inline

--dXvu6+ixFx2ZffE8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 16, 2013 at 01:49:13PM -0600, Edward Vidal wrote:
> With that said how does Angstrom which uses opkg upgrades images that are
> build with Angstrom.   I prefer Yocto but I had some pre-built image that

The same mechanism as Ross and Trevor said.

> came with my beagleboard and I used opkg upgrade  and opkg install
> gfortran.   Also has anyone built gfortran, libgfortran, and numpy?
> Currently these are some dependencies that I need for GNURADIO?
> Thanks Any and all help is appreciated
> Ed

gnuradio is already in meta-oe and jenkins is building it every day with
it :).

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--dXvu6+ixFx2ZffE8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlFtrG4ACgkQN1Ujt2V2gBxURACgozfoLDWkQ4Fa3yIPNGHOdOSW
SkMAoIDyHayzcLW3qiN2z7as0E2vJAzN
=A592
-----END PGP SIGNATURE-----

--dXvu6+ixFx2ZffE8--
