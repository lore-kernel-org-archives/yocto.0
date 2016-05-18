Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABBC7E00B9F; Wed, 18 May 2016 09:54:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A76BE00888
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 09:54:40 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id gh9so5360031pac.0
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 09:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=HwMj64wANLiexsCdDLE6vb3FUn4Vw7nylK1t/vrFTjk=;
	b=ArlHB3+v20N1DsZI5thoY3gukaNZ/aFZd38WIJFtsf3R/ZEqraQtKn0QmVJ1Zc3RJ1
	hP7jYQx+uwfo/0GLRARPp7TY7wg3Hywe86Tv4GQdakSLt50EL7Dri8lQbVzHT4kEMTsY
	y99vBHt+9J+cnmFo9PNoXcjH8IKpIGXm0w8xPUFILfPdl9CYehz0PcLJeu+31XWeZyrz
	0Z0k6J/43UYpBSebP5apl2c01cv5IPxXhZvSZUzmTxxjHf9MLqd4QBU9DEwu+RoeLOZI
	olQk8JesMxLP2bqV1+2jr1kGp0FWOCJ5a+h+XBmSbKwy/kll5irLABiXbeh+bZjjhUTm
	h4ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=HwMj64wANLiexsCdDLE6vb3FUn4Vw7nylK1t/vrFTjk=;
	b=NKA15u8JcFlMvfeWxoBTn0USshy8VL5mLQP2cxfi9WW8+mJuEVi7tXMLSoo9OcCkkB
	OZ2Pm3zju+v4TvIsN5BK1/ZWUNo15qR+p24c/+/mmTN1wU3qSxNLxPxPZuJKmgXtWIw7
	jBRpoKEVUnGuXz0uzbKz1M+aNfsllSB6DnU1wOjlfJYZ/6aWikNnEDasDUQ6GegG+JI5
	R0qA6ckdPrVwFyOVMGm+rcA9zxAhsDVMFEdfeEVQvIvJD3z9WcHeuj4pTt0B+CHX314U
	b2LHThRPRgtJSUj7dGuGN+Fv+hf3cdRuj9msXbTlVotzxb924aWmJ5o4hIf2C7/+Nq5H
	UZoQ==
X-Gm-Message-State: AOPr4FVi1i4oW+BrT0ZUHZNiy99NuHESiVOaP7rspkvGcqpsRqEnF9L9fttnpeQKl5GoUQ==
X-Received: by 10.66.21.102 with SMTP id u6mr12670747pae.118.1463590479811;
	Wed, 18 May 2016 09:54:39 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:7175:401e:6100:ea45?
	([2601:646:8800:5a9a:7175:401e:6100:ea45])
	by smtp.gmail.com with ESMTPSA id
	80sm13534290pfx.68.2016.05.18.09.54.38
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 18 May 2016 09:54:38 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
Date: Wed, 18 May 2016 09:54:38 -0700
Message-Id: <042C73D8-2F34-4110-959F-B4E3B9FE429C@gmail.com>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
To: Herve Jourdain <herve.jourdain@neuf.fr>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 0/8] Support for vc4 graphics driver
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
X-List-Received-Date: Wed, 18 May 2016 16:54:42 -0000
X-Groupsio-MsgNum: 30046
Content-Type: multipart/signed;
	boundary="Apple-Mail=_15644E5B-6E7A-441C-8740-393AEDE36D32";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_15644E5B-6E7A-441C-8740-393AEDE36D32
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On May 18, 2016, at 5:21 AM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
>=20
> This patch series enables the support for the VC4 graphics driver from =
Eric Anholt.
> There was a previous patch series by Javier Martinez Canillas, but it =
required use of a different kernel.
> VC4 is now supported in the raspberrypi official kernel, at least for =
4.4.9+, but probably also for 4.1.
> This patch series proposes to support VC4 by only adding 'vc4graphics' =
to MACHINE_FEATURES, for raspberrypi. If this is set, it will trigger =
all the necessary configuration/changes to use the VC4 driver, including =
mesa/wayland/weston currently, and adding the overlay required.
> In order for this series to work, some previous patches are needed =
(support for .dtbo, and fix of the mesa packaging when there is no DRI =
driver).
> It was tested with wayland/weston, without the support for X11.


most of them look ok to me except 1 where I have asked a question.

>=20
> Herve Jourdain (8):
>  Support fo vc4 graphics driver: change the default providers
>  Support fo vc4 graphics driver: add vc4-kms-v3d to the overlays
>  Support fo vc4 graphics driver: upgrade firmware to prevent userland
>    to interfere with v4 graphics
>  Support fo vc4 graphics driver: add kernel configuration options
>    needed for VC4
>  Support fo vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
>  Support fo vc4 graphics driver: modify the wayland configuration for
>    vc4
>  Support fo vc4 graphics driver: modify the weston configuration for
>    vc4
>  Support fo vc4 graphics driver: modify the configuration for mesa
>=20
> conf/machine/include/rpi-default-providers.inc |  8 ++++----
> recipes-bsp/bootfiles/rpi-config_git.bb        |  8 ++++++++
> recipes-bsp/common/firmware.inc                |  4 ++--
> recipes-graphics/mesa/mesa_%.bbappend          |  4 ++++
> recipes-graphics/wayland/weston_%.bbappend     |  7 +++----
> recipes-graphics/weston/weston_%.bbappend      | 13 +++++++------
> recipes-kernel/linux/linux-raspberrypi_4.4.bb  |  4 ++--
> recipes-kernel/linux/linux-rpi.inc             | 10 ++++++++++
> 8 files changed, 40 insertions(+), 18 deletions(-)
> create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>=20
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_15644E5B-6E7A-441C-8740-393AEDE36D32
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlc8nk4ACgkQuwUzVZGdMxQ22ACbBM8HURLek+ChHk2E87u4wDrp
3EUAmwRQerrV+1o8ZdlsOvp3uUv/0QwB
=U2gy
-----END PGP SIGNATURE-----

--Apple-Mail=_15644E5B-6E7A-441C-8740-393AEDE36D32--
