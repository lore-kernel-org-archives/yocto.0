Return-Path: <martin.jansa@gmail.com>
Received: from mail-pb0-f46.google.com (mail-pb0-f46.google.com
	[209.85.160.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3F5FE01496
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 07:27:31 -0700 (PDT)
Received: by mail-pb0-f46.google.com with SMTP id xa7so814898pbc.19
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 07:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=9L9kftyU5Em3nmV2niUeBxaxFgobpULkKfv0tPLtsMc=;
	b=C7Trudd8je2tPOOYGN2eTMocSuvEm3WbtkqCGT48bdlX6aQlP4nahsbEBHVQ9BdfpH
	cKmbazrYPD9Ac8+hJ6uXjp1p/FcoQz+O2nELX4PGCPzcvk0gvvMakJ12nt0idaexMY99
	ANZh3LPtRIpGuq7oWa082zumcqoPo/DTQydNSUIW2DHihw6/AlUYNQGgPMu73C8uBEjw
	twMI6dnguE3HvJROvNXd2rTP7d/Zk/f+CR4wFmMhUVPU62QOFWW98U6gxSjdOXDI4usf
	0pVzTz6qfA3bAKjDD25NV33x5BVo9wrwR0MBJ8uW9JhVFKrnNJBknlzhRBKhIz47iG1p
	F5QQ==
X-Received: by 10.68.78.37 with SMTP id y5mr53261352pbw.28.1366900051782;
	Thu, 25 Apr 2013 07:27:31 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	be7sm8380524pad.20.2013.04.25.07.27.29 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 25 Apr 2013 07:27:30 -0700 (PDT)
Date: Thu, 25 Apr 2013 16:27:41 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Jon Szymaniak <jon.szymaniak@gmail.com>
Message-ID: <20130425142741.GH5538@jama.dyndns-home.com>
References: <CANge7vWGtcVQE6Sv1rn1dxWR25W99eK53UdDJjBVp2zQW=nr+Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANge7vWGtcVQE6Sv1rn1dxWR25W99eK53UdDJjBVp2zQW=nr+Q@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Finding/Generating Rootfs Package List
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
X-List-Received-Date: Thu, 25 Apr 2013 14:27:32 -0000
X-Groupsio-MsgNum: 13446
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="kHRd/tpU31Zn62xO"
Content-Disposition: inline

--kHRd/tpU31Zn62xO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 25, 2013 at 10:10:31AM -0400, Jon Szymaniak wrote:
> Hi all,
>=20
> I generally like to keep a little manifest file with my rootfs images,
> containing a list of installed packages and their associated versions.  On
> images where I keep package data around, I usually generate this via 'opkg
> list'.
>=20
> In my current situation, I have a small read-only image where I can't
> afford to ship pkg data, and wanted to gather this info on the host side =
of
> things.  I assume this information is tracked somewhere in the poky build
> directory, but I'm having some trouble finding it.
>=20
> Could someone kindly point me towards this information or the documentati=
on
> section(s) that I may have overlooked.

buildhistory is what you're looking for

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--kHRd/tpU31Zn62xO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlF5PV0ACgkQN1Ujt2V2gBxo5ACdFhJNL4Kh6JGilol6rDirYZcD
cv0AoJGFpPE5LEfiCINWm5rTm+tEVb8s
=HPH3
-----END PGP SIGNATURE-----

--kHRd/tpU31Zn62xO--
