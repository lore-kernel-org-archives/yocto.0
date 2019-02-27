Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01EE7E00D1B; Wed, 27 Feb 2019 09:06:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9341E00D13
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 09:06:20 -0800 (PST)
Received: by mail-ed1-f49.google.com with SMTP id j89so14496203edb.9
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 09:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=a7351Crx69owZ/zpQU2EdzFPuecq5cAu9JLuSpZYlMM=;
	b=AA7qWhj3uGhVGosnIP5u4MiCvlCxWAcI5F+z3ru+8PJg2ppeyyUSkovlvSTB5VY6bl
	0xfL7eIAxquWEXnHDOYZvZl2Qe3p0b7MiH1tpv+Kg7ju5OZRp+w1nfB5dKVK+fkLFnKG
	rqTDEFazjssDEW77HKKLfZNcDJUpoNc2TOv5U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=a7351Crx69owZ/zpQU2EdzFPuecq5cAu9JLuSpZYlMM=;
	b=Mkc7IrOrNAfpkEdZ/1MXTZyLXH0GFmj/vhZVQUYDtnN4sfWWqh0gTRHP3kDV6VLwUo
	PG/AUlRzXNOHFdTqyUDRxZIz4rTU9N/wMdh7UMNrJtBhUPLHuv0opvalHcTpfwgUOhXZ
	rSwwk1kbf+LsfBarghhqxLJSWZ223M2ieVWJcD4vJMrzfxNU8PdMzoM7OnE7Bss6OrOr
	azFjIwPhbXnDM9tILlTt6X1LJ4meNP+0R8F0UsWAla51hJBRWpZUZGCQHO4L4mLa1cwR
	L508tjEH4F1Cl9O+COYtmk/2tsWglNRx/kE/A+11mAx73AOaCnRDT0WtTVY6dhe1Q50P
	ya7A==
X-Gm-Message-State: AHQUAubtmYuvKoiL600LTrCxd+RtnM9JrSg2G8BqA1I/SuST6nfqUlnW
	3GYQRMuAC7MYKWO1BS7htD+/hg==
X-Google-Smtp-Source: AHgI3IYlyubOaYKDOV+5At1aEH+DPFptO5AzlewkI9GL3lzMrbjdET6YU6K+Dnr9skK9qJK/HdNH4g==
X-Received: by 2002:a17:906:7711:: with SMTP id
	q17mr2282951ejm.174.1551287179521; 
	Wed, 27 Feb 2019 09:06:19 -0800 (PST)
Received: from bill-the-cat
	(cpe-2606-A000-1401-880D-84B8-DE84-7E3B-D376.dyn6.twc.com.
	[2606:a000:1401:880d:84b8:de84:7e3b:d376])
	by smtp.gmail.com with ESMTPSA id
	gq12sm2770508ejb.21.2019.02.27.09.06.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Feb 2019 09:06:18 -0800 (PST)
Date: Wed, 27 Feb 2019 12:06:14 -0500
From: Tom Rini <trini@konsulko.com>
To: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
Message-ID: <20190227170614.GV12046@bill-the-cat>
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
MIME-Version: 1.0
In-Reply-To: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Wed, 27 Feb 2019 17:06:22 -0000
X-Groupsio-MsgNum: 44242
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="G6ArjEZjY3m60389"
Content-Disposition: inline

--G6ArjEZjY3m60389
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 27, 2019 at 01:16:56PM +0100, Jean-Christian de Rivaz wrote:

> Hi all,
>=20
> After reading the thread "Removing busybox completely from the generated
> image" I tested to reproduce the method but this doesn't work as expected.
>=20
> git clone git://git.yoctoproject.org/poky -b thud
> cd poky
> echo 'require conf/distro/poky.conf' > meta-poky/conf/distro/poky-ng.conf
> echo 'DISTRO =3D "poky-ng"' >> meta-poky/conf/distro/poky-ng.conf
> echo 'VIRTUAL-RUNTIME_base-utils =3D ""' >> meta-poky/conf/distro/poky-ng=
=2Econf
> sed -i 's/^DISTRO.*/DISTRO =3D "poky-ng"/' conf/local.conf
> bitbake core-image-minimal
> runqemu core-image-minimal kvm
>=20
> After login as root there still a lot of links to busybox inside /sbin/
> /bin/ /usr/sbin/ and /usr/bin/ .
>=20
> Can someone provides a working method ?

You're missing a few more things, yes.  What I have is:
# Switch to systemd
DISTRO_FEATURES +=3D "systemd"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
VIRTUAL-RUNTIME_initscripts =3D ""
VIRTUAL-RUNTIME_syslog =3D ""
VIRTUAL-RUNTIME_login_manager =3D "shadow-base"
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"

# Replace busybox
PREFERRED_PROVIDER_virtual/base-utils =3D "coreutils"
VIRTUAL-RUNTIME_base-utils =3D "coreutils"
VIRTUAL-RUNTIME_base-utils-hwclock =3D "util-linux-hwclock"
VIRTUAL-RUNTIME_base-utils-syslog =3D ""

If you aren't using systemd you'll need to move the login_manager
example over as well, otherwise busybox gets pulled for that.

I'm using the above on thud, today.  And that's not a 1:1 replacement as
my image pulls in a number of other packages for various things I
want/need.

--=20
Tom

--G6ArjEZjY3m60389
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJcdsOGAAoJEIf59jXTHXZSvnUQAJ8JYlJJtcFXRi1jQhuWB8Ii
DlXcOsQbY3pWGlUDPqjI4jepKlu17X9AhY00LE18mg4Ri6+Hjk68PCHhI+sLvprn
mZUMBAlqDHks4jzq3Wxm4c2WEQnKqqjdR5XgExPLGivBZjsiHs0Kt/qqCpX3Qfq5
/DGYmU3L7lj6Tun1yxFyDAjtDLipS8Xvkvuxq5xD+68qYzjxWQe8XSex4wUFPOCz
NwDVSUGpa8KyxHi9j3y95TytMwZRP03vS3RDdwkeTc6AG8B3nBNuOwuVbC8JLsPf
rigQyrMIeoDfyn2Q0dxTx114d3QT6C+5YxcFkzI7hw4IVjcGUsgi+4ox+XAkwGFV
9D65nlL/AnfzIYTsxEb9xcObiBzXZ4QjoWTiTES0n2DWhaNSzDVgtPjN9aF4lR0M
gGIgyFt8DjSFWoLpBGHUhQJj3Jx6SZDp0rsFW60x3g6PU/RbDOl6ZugOti5wpasX
3HLb7rO0rp9I7miwoGDe5e8rb1XWIhjh8Cs5CMHUk1xGU3TCtg8qEBhbnvrltAaI
JlPU9/qNH/ACnBiFc/xAliFQdPHMpbhvqIgdLP2+pmHA/KY1AIDwcsGelSNC9jPD
IjjevMujntRlzuW+UOt9SNHW9rewMLYHr5RqI83c4fu3hiNwXCFFS9KEMcBoxGox
iVy3j1f+LLb2sVDTy2Uo
=XTUL
-----END PGP SIGNATURE-----

--G6ArjEZjY3m60389--
