Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9BBC34C800A6
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2011 08:54:26 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6MDsAkk014874;
	Fri, 22 Jul 2011 08:54:11 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <1310705816-31653-1-git-send-email-galak@kernel.crashing.org>
Date: Fri, 22 Jul 2011 08:54:10 -0500
Message-Id: <B948B036-A50D-446C-A04A-BE4979E7242D@kernel.crashing.org>
References: <1310705816-31653-1-git-send-email-galak@kernel.crashing.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1084)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] mpc8315e-rdb: Set TARGET_FPU correct
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
X-List-Received-Date: Fri, 22 Jul 2011 13:54:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 14, 2011, at 11:56 PM, Kumar Gala wrote:

> The MPC8315E has a e300c3 core in it with 'classic' or normal PPC
> floating point.
>=20
> 'SPE' floating point is what exists on the e500v2 core.
>=20
> Signed-off-by: Kumar Gala <galak@kernel.crashing.org>
> ---
> meta-yocto/conf/machine/mpc8315e-rdb.conf |    2 +-
> 1 files changed, 1 insertions(+), 1 deletions(-)

Richard,

ping.  Bruce has ack'd this.

https://lists.yoctoproject.org/pipermail/yocto/2011-July/001915.html

- k

>=20
> diff --git a/meta-yocto/conf/machine/mpc8315e-rdb.conf =
b/meta-yocto/conf/machine/mpc8315e-rdb.conf
> index 095d113..3f946a0 100644
> --- a/meta-yocto/conf/machine/mpc8315e-rdb.conf
> +++ b/meta-yocto/conf/machine/mpc8315e-rdb.conf
> @@ -2,7 +2,7 @@
> #@DESCRIPTION: Machine configuration for running=20
>=20
> TARGET_ARCH =3D "powerpc"
> -TARGET_FPU =3D "spe"
> +TARGET_FPU =3D "hard"
>=20
> require conf/machine/include/tune-ppc603e.inc
>=20
> --=20
> 1.7.3.4
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


