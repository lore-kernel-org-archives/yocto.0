Return-Path: <joe@deserted.net>
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14A15E00B77
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 12:20:35 -0700 (PDT)
Received: by mail-qc0-f180.google.com with SMTP id w7so2361119qcr.25
	for <yocto@yoctoproject.org>; Thu, 03 Apr 2014 12:20:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=73PEe7Q2CMbQ0QMXIwKV3sM9dsxQDBw5fBadycU3Ocg=;
	b=ks4v8qvyCVym7gti3+n8GMfI5teby3PpR0c7BCIqQrpbUgF/GOVRsPWbelCGyKVHLn
	32Fr6BSv2qQy4OHHFF/UL2C4jBsaO6I6D3g5G4mVuX4QG28q8F+gzndM+PDCLGOUUTO2
	7e0x7p4uGpHjAyJ+YwQ7k915/swYY8AXDpZItIiZLdhZk81MsAhRBky6o1rmHyMUAzFX
	JVLBle/iYiEv9wV4RohE3vE3BxGuOSFKVypC6q2o8GL+HF16EQZ8Eb1YtFXHPjDJZG+5
	rto/52A+aky1AAROvTYk8rNXWBJ5TYj6RbtY5LrV02pJPwPNykXjkX343AlOD2wk2qQf
	TZDA==
X-Gm-Message-State: ALoCoQmILfHKwSX+nee9/oWtGVkBjejfUkAn+AhY6Vh+ocuUzyXV+ChrplV6tM02LVQ2aSrnPd8l
X-Received: by 10.140.86.166 with SMTP id p35mr8898718qgd.81.1396552835041;
	Thu, 03 Apr 2014 12:20:35 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id b37sm7996695qge.16.2014.04.03.12.20.31
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 03 Apr 2014 12:20:31 -0700 (PDT)
Date: Thu, 3 Apr 2014 15:20:29 -0400
From: Joe MacDonald <joe@deserted.net>
To: wenzong.fan@windriver.com
Message-ID: <20140403192027.GM4075@deserted.net>
References: <cover.1395709062.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
In-Reply-To: <cover.1395709062.git.wenzong.fan@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/4] add targeted/minimum policy and some updates
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
X-List-Received-Date: Thu, 03 Apr 2014 19:20:38 -0000
X-Groupsio-MsgNum: 18843
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="YIwHDYD8sUXtBKvt"
Content-Disposition: inline

--YIwHDYD8sUXtBKvt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Wenzong,

I merged two of these four.

[[yocto] [meta-selinux][PATCH 0/4] add targeted/minimum policy and some upd=
ates] On 14.03.24 (Mon 21:07) wenzong.fan@windriver.com wrote:

> From: Wenzong Fan <wenzong.fan@windriver.com>
>=20
> Changes:
> * backport tmpfs_t patch from upstream;
> * add rules for /var/log symlink on poky;

These both went in.  These:

> * add targeted policy type
> * add minimum targeted policy

I'm less clear on.  They both look like significant changes to
refpolicy-* behaviour, which is fine, but in that case I think it'd be
better to give them a different name.  Or one that differentiates them
significantly.  For example the "minimum" policy has users unconfined
and applications confined?  Or neither?  I'm not sure what the value is
of these.

If they really are just specialized versions of the standard reference
policy, they should at least be ported to use the refpolicy_common
infrastructure Phil set up a while back.

Thanks,
-J.

>=20
> The following changes since commit a6079a43719e79e12a57e609923a0cccdba069=
16:
>=20
>   refpolicy: fix real path for su.shadow (2014-02-13 10:52:07 -0500)
>=20
> are available in the git repository at:
>=20
>   git://git.pokylinux.org/poky-contrib wenzong/ref-minimum
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dwenzong/ref-min=
imum
>=20
> Wenzong Fan (4):
>   refpolicy: associate tmpfs_t (shm) to device_t (devtmpfs) file
>     systems
>   refpolicy: add rules for /var/log symlink on poky
>   refpolicy: add targeted policy type
>   refpolicy: add minimum targeted policy
>=20
>  ...associate-tmpfs_t-shm-to-device_t-devtmpf.patch |   30 +++
>  ...ky-policy-add-rules-for-syslogd_t-symlink.patch |   30 +++
>  ...rules-for-var-log-symlink-audisp_remote_t.patch |   29 +++
>  .../refpolicy/refpolicy-minimum_2.20130424.bb      |   46 +++++
>  ...olicy-fix-optional-issue-on-sysadm-module.patch |   60 ++++++
>  .../refpolicy-unconfined_u-default-user.patch      |  198 ++++++++++++++=
++++++
>  .../refpolicy/refpolicy-targeted_2.20130424.bb     |   18 ++
>  .../refpolicy/refpolicy_2.20130424.inc             |    3 +
>  8 files changed, 414 insertions(+)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/files=
ystem-associate-tmpfs_t-shm-to-device_t-devtmpf.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-=
policy-add-rules-for-syslogd_t-symlink.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-=
policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-minimum_2.201304=
24.bb
>  create mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpoli=
cy-fix-optional-issue-on-sysadm-module.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpoli=
cy-unconfined_u-default-user.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20130=
424.bb
>=20
--=20
-Joe MacDonald.
:wq

--YIwHDYD8sUXtBKvt
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlM9tHsACgkQwFvcllog0XwjeQCeO8CZD1jYOwxweOMr3jQ9Ia8r
O2gAnjAwQnbq8GwMEWcgmSOJD5Y6D7/k
=8qKu
-----END PGP SIGNATURE-----

--YIwHDYD8sUXtBKvt--
