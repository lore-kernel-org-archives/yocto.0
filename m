Return-Path: <joe@deserted.net>
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F964E00BA7
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 16:57:29 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id as1so3133225iec.39
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 16:57:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=zVgWO+z0W26ROmReMw5xCt07LAcmn4AkfqNYRSU5AcQ=;
	b=FtNAYCXdMI9HGPB3v8Kgwa1nBXocR8Gc5d4kuixI5SYAVUVmM7lCmXJG9AcpLP1imI
	SUD8JFedAcKgGSEdQqssqdj/t2RLV9zF/yZ6v/XKUJcoN8vyIVryeySD3UJJQlpP7nRR
	AKclp0F+Y/Ru+lTtQREtIX5UjUkgRsxR0f0OFjDOTdpT8jf5591c2cjTbhr5e743DHuT
	Dk9swwxxZvEkE2F9ZPrz6uZtKa7tilclecxWWWFhQrCGU/I8ch3XhsLs9yECLMEU/F2E
	LAD8cPIRgAwQsJJy2qbX/4ebZ41NOn0CvAkgqN1Kdp+ouOOP3oxtQL5olHAa6MC4xm5z
	RVYg==
X-Gm-Message-State: ALoCoQnBE2Gz0B7Bvj+xKIqHYueTA0+QBndb9Iuqyhf/ewupcSFXC4c5MT6jyg2zhzbzD1X+YBkU
X-Received: by 10.50.136.229 with SMTP id qd5mr1798431igb.48.1398383848510;
	Thu, 24 Apr 2014 16:57:28 -0700 (PDT)
Received: from deserted.net (24-246-4-250.cable.teksavvy.com. [24.246.4.250])
	by mx.google.com with ESMTPSA id
	p7sm3163199igg.15.2014.04.24.16.57.27 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 24 Apr 2014 16:57:27 -0700 (PDT)
Date: Thu, 24 Apr 2014 19:57:24 -0400
From: Joe MacDonald <joe@deserted.net>
To: wenzong.fan@windriver.com
Message-ID: <20140424235722.GB10115@deserted.net>
References: <cover.1398238471.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
In-Reply-To: <cover.1398238471.git.wenzong.fan@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/4] some minor fixes to udevd, initscripts, policycoreutils
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
X-List-Received-Date: Thu, 24 Apr 2014 23:57:35 -0000
X-Groupsio-MsgNum: 19204
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="nVMJ2NtxeReIH9PS"
Content-Disposition: inline

--nVMJ2NtxeReIH9PS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.
-J.

[[yocto] [meta-selinux][PATCH 0/4] some minor fixes to udevd, initscripts, =
policycoreutils] On 14.04.23 (Wed 03:42) wenzong.fan@windriver.com wrote:

> From: Wenzong Fan <wenzong.fan@windriver.com>
>=20
> * udevd: it creates /dev/shm, /dev/pts, restorecon for them as well;
> * initscripts: always force to restore file contexts for /var/lib
> * policycoreutils:
>   get semanage process the ValueError from sepolicy, seobject;
>   fix TypeError from seobject.py
>=20
> The following changes since commit 0362287928bc0a58b755488ebd74441c28eeee=
e2:
> policycoreutils
>   audit: Fix lack of a default audit.rules (2014-04-07 09:55:49 -0400)
>=20
> are available in the git repository at:
>=20
>   git://git.pokylinux.org/poky-contrib wenzong/several-fixes
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dwenzong/several=
-fixes
>=20
> Wenzong Fan (4):
>   udev init: restorecon for /dev/shm, /dev/pts
>   always force to restore file contexts for /var/lib
>   semanage: process ValueError for sepolicy, seobject
>   policycoreutils: fix TypeError for seobject.py
>=20
>  recipes-core/initscripts/initscripts_1.0.bbappend  |    2 +-
>  recipes-core/udev/udev/init                        |    2 +-
>  ...cycoreutils-fix-TypeError-for-seobject.py.patch |   32 +++++++++++++
>  ...-process-ValueError-for-sepolicy-seobject.patch |   48 ++++++++++++++=
++++++
>  recipes-security/selinux/policycoreutils_2.2.5.bb  |    2 +
>  5 files changed, 84 insertions(+), 2 deletions(-)
>  create mode 100644 recipes-security/selinux/policycoreutils/policycoreut=
ils-fix-TypeError-for-seobject.py.patch
>  create mode 100644 recipes-security/selinux/policycoreutils/policycoreut=
ils-process-ValueError-for-sepolicy-seobject.patch
>=20
> --=20
> 1.7.9.5
>=20
--=20
-Joe MacDonald.
:wq

--nVMJ2NtxeReIH9PS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlNZpOIACgkQwFvcllog0XycTgCaAyuged3OXzYqEOthE1UZEZ+Z
25wAoIDVPSYb2elPSmcwkDDVPMelRd8c
=Kux4
-----END PGP SIGNATURE-----

--nVMJ2NtxeReIH9PS--
