Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65D53E00AB4; Tue,  4 Aug 2015 12:01:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62499E00B2E
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 12:01:25 -0700 (PDT)
Received: by pacgq8 with SMTP id gq8so15005375pac.3
	for <yocto@yoctoproject.org>; Tue, 04 Aug 2015 12:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=/eToDhGKc9L0PivwBuTqQFuxm7NVnekosDmMAEBxpmw=;
	b=Ost+fULpy68eDH5xN7phbl6FLSHQ26JRArknLm4oo3oolXwPBbDmoYumgUZVyTYXGf
	vMGdA1X/osOQ/3cvhuv8QR2GioJZ8/4x8DSjQYMtx7peDxqt4TvEp6xUnDYNzYUA+Nc+
	aVxeQkk+UzbbrtefH2ymBp2NXGm5LNClNySA5j/fKBv1nnj+G+8ykCUKUoUieDvtoBeB
	UdhYDX8k0YgJFudlT+7KMAofaGozxb7/rQRwfhrF7ovo2xfotT4MtryLyVXxbkp3LB3S
	Rcrkgk/WdTjPWwa6/cp6r7F/VT2t6ozt6+bcOwkzzC+MoS1mSOkDM5m08BGB4erkB24E
	Mw9A==
X-Received: by 10.66.116.81 with SMTP id ju17mr10845447pab.35.1438714885550;
	Tue, 04 Aug 2015 12:01:25 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:b519:4241:e041:610a?
	([2601:646:8601:4580:b519:4241:e041:610a])
	by smtp.gmail.com with ESMTPSA id
	je11sm126165pbd.77.2015.08.04.12.01.23
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 04 Aug 2015 12:01:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1438245251-20437-6-git-send-email-javier@osg.samsung.com>
Date: Tue, 4 Aug 2015 12:01:16 -0700
Message-Id: <4731B312-4D73-4951-8E73-1579D8C54BD5@gmail.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
To: Javier Martinez Canillas <javier@osg.samsung.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org, Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Derek Foreman <derekf@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 5/5] rpi-default-providers: Switch providers according to used gfx stack
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
X-List-Received-Date: Tue, 04 Aug 2015 19:01:39 -0000
X-Groupsio-MsgNum: 25867
Content-Type: multipart/signed;
	boundary="Apple-Mail=_84090E3B-726B-4293-A503-6EC2A7642DC1";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_84090E3B-726B-4293-A503-6EC2A7642DC1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jul 30, 2015, at 1:34 AM, Javier Martinez Canillas =
<javier@osg.samsung.com> wrote:
>=20
> From: Derek Foreman <derekf@osg.samsung.com>
>=20
> The Raspberry Pi boards can use one of two graphics stacks: The =
"userland"
> user-space driver or the VC4 drm/kms kernel driver. This patch allows =
the
> user to choose if the VC4 driver has to be used instead and set the =
right
> preferred providers for that case.
>=20
> Signed-off-by: Derek Foreman <derekf@osg.samsung.com>
> [javier: Extend commit msg and made conditional instead removing =
userland]
> Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>
>=20
> ---
>=20
> conf/machine/include/rpi-default-providers.inc | 8 ++++----
> conf/machine/include/rpi-default-versions.inc  | 2 +-
> 2 files changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/conf/machine/include/rpi-default-providers.inc =
b/conf/machine/include/rpi-default-providers.inc
> index ee3a3acce7bd..233f177bd16e 100644
> --- a/conf/machine/include/rpi-default-providers.inc
> +++ b/conf/machine/include/rpi-default-providers.inc
> @@ -3,8 +3,8 @@
> PREFERRED_PROVIDER_virtual/kernel =3D "linux-raspberrypi"
> PREFERRED_PROVIDER_u-boot =3D "u-boot-rpi"
> PREFERRED_PROVIDER_virtual/xserver =3D "xserver-xorg"
> -PREFERRED_PROVIDER_virtual/egl ?=3D "userland"
> -PREFERRED_PROVIDER_virtual/libgles2 ?=3D "userland"
> -PREFERRED_PROVIDER_virtual/libgl ?=3D "mesa-gl"
> -PREFERRED_PROVIDER_virtual/mesa ?=3D "mesa-gl"
> +PREFERRED_PROVIDER_virtual/egl ?=3D =
"${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'userland', =
d)}"
> +PREFERRED_PROVIDER_virtual/libgles2 ?=3D =
"${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'userland', =
d)}"
> +PREFERRED_PROVIDER_virtual/libgl ?=3D =
"${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'mesa-gl', =
d)}"
> +PREFERRED_PROVIDER_virtual/mesa ?=3D =
"${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'mesa-gl', =
d)}=E2=80=9D

who defines the distro feature ?


> PREFERRED_PROVIDER_jpeg =3D "jpeg"
> diff --git a/conf/machine/include/rpi-default-versions.inc =
b/conf/machine/include/rpi-default-versions.inc
> index bcf78281b6ff..c07ecac5924b 100644
> --- a/conf/machine/include/rpi-default-versions.inc
> +++ b/conf/machine/include/rpi-default-versions.inc
> @@ -1,3 +1,3 @@
> # RaspberryPi BSP default versions
>=20
> -PREFERRED_VERSION_linux-raspberrypi ?=3D "3.18.%"
> +PREFERRED_VERSION_linux-raspberrypi ?=3D =
"${@bb.utils.contains("DISTRO_FEATURES", "vc4-gfx", "4.1.%", "3.18.%", =
d)}"
> --
> 2.4.3
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_84090E3B-726B-4293-A503-6EC2A7642DC1
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXBDAMACgkQuwUzVZGdMxSxawCggXVdpQzU4KrX2Brcj+DgfQ5j
2gUAnRUD2DqeDY1W22w5io5jjPTOfi8B
=8KkF
-----END PGP SIGNATURE-----

--Apple-Mail=_84090E3B-726B-4293-A503-6EC2A7642DC1--
