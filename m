Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AF31E0027D
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 09:48:52 -0700 (PDT)
Received: by weyu3 with SMTP id u3so4213187wey.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 09:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=gQOrQ9RLyKC+1i3vYxMO6mhaGoswvgg9hXjYeYf2cZo=;
	b=xrm2GjMUZGKD5Xdsk+lIhsdapXYNuxHxYnMyy5vWJ1l6vgPmCNHFXaf7L/A8a0x6Qs
	znst4muLhbECZI2228iS3isUBhnNvxO2VDRuWl9G7PpMqWQ1qByRLjdAIlrRsYt78J4F
	carXtkZKORV/KyJbQY9UOoRSi0MhwGUeigPA5x7+4bVPaUdVw7lAQ0FFIViKIyjZzZkY
	tnWde1Ljt8hw4yYo5M5SbSmkjCeRJC8IEzlghflu5a+rreLcHhwU1S4N15CjaXa7Bgpd
	2tWMBpSw0BPVyWSIqn1gj1nFMrWMlO+O+/7D7/J89FoHhdxiCWNx6VcnKFYfN95Wq2iW
	HE8A==
Received: by 10.180.78.2 with SMTP id x2mr27975658wiw.10.1343666930653;
	Mon, 30 Jul 2012 09:48:50 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id t8sm17283139wiy.3.2012.07.30.09.48.49
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 30 Jul 2012 09:48:49 -0700 (PDT)
Date: Mon, 30 Jul 2012 18:48:45 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Message-ID: <20120730164845.GM3261@jama.jama.net>
References: <2C433563-B7CA-458C-B27F-68E3D5D2408C@gmail.com>
MIME-Version: 1.0
In-Reply-To: <2C433563-B7CA-458C-B27F-68E3D5D2408C@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: ERROR: Task 7 (/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, do_populate_sdk) failed with exit code '1'
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
X-List-Received-Date: Mon, 30 Jul 2012 16:48:52 -0000
X-Groupsio-MsgNum: 8270
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="aiCxlS1GuupXjEh3"
Content-Disposition: inline

--aiCxlS1GuupXjEh3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 30, 2012 at 08:43:33PM +0400, Elvis Dowson wrote:
> Hi,
>       I just updated my yocto repositories and ran into the following err=
or:
>=20
> | ERROR: Function failed: populate_sdk_image (see /tool/yocto/poky/build/=
tmp/work/ppc440-poky-linux/meta-toolchain-1.0-r7/temp/log.do_populate_sdk.2=
5279 for further information)
> NOTE: package meta-toolchain-1.0-r7: task do_populate_sdk: Failed
> ERROR: Task 7 (/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb,=
 do_populate_sdk) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1878 tasks of which 236 didn't need to be =
rerun and 1 failed.
> ERROR: An uncaught exception occured in runqueue, please see the failure =
below:
>=20
> Summary: 1 task failed:
>   /tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, do_populate_=
sdk
> Summary: There were 3 WARNING messages shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>=20
> Is there a fix for this?=20

Attach log.do_populate_sdk.25279

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--aiCxlS1GuupXjEh3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlAWuu0ACgkQN1Ujt2V2gBzp6gCguEhinTAsBntBAeduUqQtcLHx
QPAAn2vWoiMeXOu4nMasaAbsOqUKE6W/
=qXoz
-----END PGP SIGNATURE-----

--aiCxlS1GuupXjEh3--
