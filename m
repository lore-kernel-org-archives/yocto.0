Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28A6EE00D8F; Mon, 12 Aug 2019 20:53:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2186E00D8F
	for <yocto@yoctoproject.org>; Mon, 12 Aug 2019 20:53:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x7D3qagw019675
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 12 Aug 2019 20:52:46 -0700
Received: from pek-khao-d2.corp.ad.wrs.com (128.224.137.13) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.3.468.0; Mon, 12 Aug 2019 20:52:25 -0700
Date: Tue, 13 Aug 2019 11:48:34 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Yocto Project <yocto@yoctoproject.org>, Armin Kuster <akuster808@gmail.com>
Message-ID: <20190813034834.GK12106@pek-khao-d2.corp.ad.wrs.com>
References: <20190419052335.28270-1-kexin.hao@windriver.com>
MIME-Version: 1.0
In-Reply-To: <20190419052335.28270-1-kexin.hao@windriver.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Originating-IP: [128.224.137.13]
Subject: Re: [PATCH][thud] meta-yocto-bsp: Bump to the latest stable kernel for the BSPs
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
X-List-Received-Date: Tue, 13 Aug 2019 03:53:16 -0000
X-Groupsio-MsgNum: 46268
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iSeZnk6FyAS3EJ1y"
Content-Disposition: inline

--iSeZnk6FyAS3EJ1y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 19, 2019 at 01:23:35PM +0800, Kevin Hao wrote:
> In order to fix a systemtap bug [1] on arm board, we backport a kernel
> patch from v5.0 kernel to v4.14 & v4.18 kernel, then need to bump the
> kernel version to include this patch. Even this is only an arm specific
> bug, we would like to bump the kernel version for the BSPs at the same
> time. Boot test for all the boards.
>=20
> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13273

Hi Armin,

Could you help merge this patch to thud branch?

Thanks,
Kevin

>=20
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_4.14.bbappend   | 20 ++++++++++----=
------
>  .../recipes-kernel/linux/linux-yocto_4.18.bbappend   | 20 ++++++++++----=
------
>  2 files changed, 20 insertions(+), 20 deletions(-)
>=20
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappen=
d b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
> index 502485a94b15..426757e48c9e 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
> @@ -8,11 +8,11 @@ KMACHINE_genericx86 ?=3D "common-pc"
>  KMACHINE_genericx86-64 ?=3D "common-pc-64"
>  KMACHINE_beaglebone-yocto ?=3D "beaglebone"
> =20
> -SRCREV_machine_genericx86    ?=3D "2c5caa7e84311f2a0097974a697ac1f590305=
30e"
> -SRCREV_machine_genericx86-64 ?=3D "2c5caa7e84311f2a0097974a697ac1f590305=
30e"
> -SRCREV_machine_edgerouter ?=3D "e06bfa18c727bd0e6e10cf26d9f161e4c791f52b"
> -SRCREV_machine_beaglebone-yocto ?=3D "b8805de77dcf8f59d8368fee4921c146c1=
300a6a"
> -SRCREV_machine_mpc8315e-rdb ?=3D "f88e87360b10f8fbd853a7d412982e6620f3f9=
6d"
> +SRCREV_machine_genericx86    ?=3D "5252513a39b4b3773debab1f77071d7c430ec=
b10"
> +SRCREV_machine_genericx86-64 ?=3D "5252513a39b4b3773debab1f77071d7c430ec=
b10"
> +SRCREV_machine_edgerouter ?=3D "d8fb40cd0e99325715c70aed6f361a8318097829"
> +SRCREV_machine_beaglebone-yocto ?=3D "c67809688bd22cb4cb909bcf1a1045e633=
7c3229"
> +SRCREV_machine_mpc8315e-rdb ?=3D "258ee8228e0a512c6dbe2a0dadcd9f030ba459=
64"
> =20
>  COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
>  COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
> @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter =3D "edgerouter"
>  COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"
>  COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
> =20
> -LINUX_VERSION_genericx86 =3D "4.14.76"
> -LINUX_VERSION_genericx86-64 =3D "4.14.76"
> -LINUX_VERSION_edgerouter =3D "4.14.71"
> -LINUX_VERSION_beaglebone-yocto =3D "4.14.71"
> -LINUX_VERSION_mpc8315e-rdb =3D "4.14.71"
> +LINUX_VERSION_genericx86 =3D "4.14.98"
> +LINUX_VERSION_genericx86-64 =3D "4.14.98"
> +LINUX_VERSION_edgerouter =3D "4.14.98"
> +LINUX_VERSION_beaglebone-yocto =3D "4.14.98"
> +LINUX_VERSION_mpc8315e-rdb =3D "4.14.98"
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappen=
d b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
> index 7f15843f3a90..11b35cc1c2f8 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
> @@ -8,11 +8,11 @@ KMACHINE_genericx86 ?=3D "common-pc"
>  KMACHINE_genericx86-64 ?=3D "common-pc-64"
>  KMACHINE_beaglebone-yocto ?=3D "beaglebone"
> =20
> -SRCREV_machine_genericx86    ?=3D "db2d813869a0501782469ecdb17e277a501c9=
f57"
> -SRCREV_machine_genericx86-64 ?=3D "db2d813869a0501782469ecdb17e277a501c9=
f57"
> -SRCREV_machine_edgerouter ?=3D "28e7781d57a59227bf1c08c7f3dbdfee16aa0dc2"
> -SRCREV_machine_beaglebone-yocto ?=3D "28e7781d57a59227bf1c08c7f3dbdfee16=
aa0dc2"
> -SRCREV_machine_mpc8315e-rdb ?=3D "99071a599d8650b069fb8135866fca203f3753=
50"
> +SRCREV_machine_genericx86    ?=3D "b24d9d2146d4ce4ef3ad7251b936f35c69dcf=
0c4"
> +SRCREV_machine_genericx86-64 ?=3D "b24d9d2146d4ce4ef3ad7251b936f35c69dcf=
0c4"
> +SRCREV_machine_edgerouter ?=3D "b24d9d2146d4ce4ef3ad7251b936f35c69dcf0c4"
> +SRCREV_machine_beaglebone-yocto ?=3D "b24d9d2146d4ce4ef3ad7251b936f35c69=
dcf0c4"
> +SRCREV_machine_mpc8315e-rdb ?=3D "0802dc980cbc8bdb156d6fe305e7b88e6b6026=
34"
> =20
>  COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
>  COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
> @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter =3D "edgerouter"
>  COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"
>  COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
> =20
> -LINUX_VERSION_genericx86 =3D "4.18.22"
> -LINUX_VERSION_genericx86-64 =3D "4.18.22"
> -LINUX_VERSION_edgerouter =3D "4.18.25"
> -LINUX_VERSION_beaglebone-yocto =3D "4.18.25"
> -LINUX_VERSION_mpc8315e-rdb =3D "4.18.25"
> +LINUX_VERSION_genericx86 =3D "4.18.35"
> +LINUX_VERSION_genericx86-64 =3D "4.18.35"
> +LINUX_VERSION_edgerouter =3D "4.18.35"
> +LINUX_VERSION_beaglebone-yocto =3D "4.18.35"
> +LINUX_VERSION_mpc8315e-rdb =3D "4.18.35"
> --=20
> 2.14.4
>=20

--iSeZnk6FyAS3EJ1y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHc6qFoLCZqgJD98Zk1jtMN6usXEFAl1SMxIACgkQk1jtMN6u
sXHfsQgApOzNm4Qqb1CTZ3fYxlj4bTR+ggDji9c2hD0QGoRvrZFcRMkF9FDT5n8W
1YWdo9ob1vgx4Vz1RyWpU5tjS7h/fEJEam4zm645gsDpbJuX1OWFIZAMFrpDYeL+
yNxXooUJpBa5NXUricagUYrWFkO/u33m/+v1/XOGjsB+uoZaXK5OIHAHOc+81cCx
z7oa8Kbh0UIE70ORYcXE8fgdIkRbwLEZwPs/uF33yaihhSz0TfUpJzAP6b/GgvJo
tymcEo0DQ75hM7TnZ7pzc+2iIZm3mdXXqy8HyvPUfuMZWc84zv3eiTkkIzLbssDy
qJOuQyP5xG0UyQiAgTOFM6E8Hm3rYQ==
=hupF
-----END PGP SIGNATURE-----

--iSeZnk6FyAS3EJ1y--
