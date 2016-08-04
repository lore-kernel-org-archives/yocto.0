Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5584DE00EC6; Thu,  4 Aug 2016 06:22:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3808E00EBE
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2016 06:22:02 -0700 (PDT)
Received: by mail-ua0-f195.google.com with SMTP id 88so4679776uaj.0
	for <yocto@yoctoproject.org>; Thu, 04 Aug 2016 06:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=mbhvdpbfa7l/W4yekLSVts5aNaffcq99BA4WhLzhh8c=;
	b=sNM8/y9urSKu9+N5E6BYRKzUDEqOeEQrNsJTQsS8XX9LHO88HVLnmMADazg0cx3HDu
	2JUgWqdTKgpU87tbIe7Y7SK5rQMcK3BfrjJpPlV4axAzplj0GVko2QV9tJKfQ1gFMp7w
	R1h0u1PdyEH5uPy2LzINStdyMa/vGhFmv15TtCUI1yPM2wrHxE5p1rK7bbjuErsrUqFr
	pltIJuajW2LwbKwPXbe4dBgbcwdbTP0ocm+usNsLxGTaAJHNv6fvkYdXjZ9edlwPvDN3
	CAN8eoUSLKvI00CD/prZomtdioOOzr/g81fb8JKIf2aB14UZc0enPIMlzP/E8gyqyoti
	AywA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=mbhvdpbfa7l/W4yekLSVts5aNaffcq99BA4WhLzhh8c=;
	b=OySxdTcQSANvSSpqZtvME8iOdNayb991v92zLr9q6NIK9PiLS0O8D8VlArjkh7GydS
	sw0JRYtXxE88c/UWS+ArhOb9+5wcq1ApS5nqcA3snh0WNytGM64Qdlr0sCA9Y2fOLFss
	VjTK3IjLSKb/hlCPlKbtXmo2zwm/njLhhiYxGHujWOX2ERFnDcAivseG+hIRyREV/5NR
	qhXOWSv4jIWtx6UqVa+N2Z/Af7mCwHS2fiqVId0iYZ18npIc0nQ9L3uerGZ5r8HqZwrw
	YwHc9oQ8T0bKaoxf4BT0NxWKr1d7RxQDDPNFhB19+Mzg5AtsbTTnalwNkOiGf1+lZ/Qb
	DNsw==
X-Gm-Message-State: AEkoouuh8Be45w4+LBjTf1WE3GZ9WHvs40oHihmKooUqu/5/I6FmgUBmUMT046v6yb3LI83FGL3CoESXcvboZg==
X-Received: by 10.176.68.4 with SMTP id m4mr37382992uam.12.1470316921652; Thu,
	04 Aug 2016 06:22:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.31.208 with HTTP; Thu, 4 Aug 2016 06:21:41 -0700 (PDT)
In-Reply-To: <DB6PR0601MB26639479A0DD3507DB733BF1CF070@DB6PR0601MB2663.eurprd06.prod.outlook.com>
References: <DB6PR0601MB26639479A0DD3507DB733BF1CF070@DB6PR0601MB2663.eurprd06.prod.outlook.com>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Date: Thu, 4 Aug 2016 15:21:41 +0200
Message-ID: <CAD4b0_Js_XrQSGLbzqbGO5ihN9x-LkdYBz7vM-BTEdeGfh-0hA@mail.gmail.com>
To: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Layer priorities & package selection
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
X-List-Received-Date: Thu, 04 Aug 2016 13:22:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 4, 2016 at 9:28 AM, Gujulan Elango, Hari Prasath (H.)
<hgujulan@visteon.com> wrote:
>
> Hello all,
>
>
> We are having two yocto layers in our project. One is SoC specific layer =
and the other is the meta-ivi. Now we have two packages provided by both th=
ese layers. wayland_1.9.0 & weston_1.9.0. We want both these packages from =
the SoC specific layer and not the ones that are coming from meta-ivi. The =
reason being that the SoC vendor has done some modifications for hw acceler=
ation and stuff like that. Since meta-ivi is having higher priority( Priori=
ty: 7) than the SoC specific layer(Priority : 6) , naturally these packages=
 are provided by meta-ivi and not the Soc layer which we actually want.
>
>
> How to modify the layer priority without touching the layer specific conf=
 file ? Can we have a append to the layer conf file ?

Try moving the recipe to your layer (provided yours is of higher
priority). I often go with per project BSP layers that adjust the low
level pieces of the target, such as kernel configs etc., while
applications stay in application-only layer.

Another option that I see is to set BBMASK =3D
"meta-ivi/recipes-graphics/wayland/" in local.conf, but that's a bit
ugly, hence I'd say it's a temporary solution only.

>
>
>
> meta-ivi:
>
> [mailto:hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0=
/monarch-distribution/meta-ivi$]hgujulan@chipd010:~/project/monarch/release=
_testing/monarch-1.2.0/monarch-distribution/meta-ivi$ find . -name "wayland=
*"
> ./meta-ivi/recipes-graphics/wayland
> ./meta-ivi/recipes-graphics/wayland/wayland_1.9.0.bb
>
>
> [mailto:hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0=
/monarch-distribution/meta-ivi$]hgujulan@chipd010:~/project/monarch/release=
_testing/monarch-1.2.0/monarch-distribution/meta-ivi$ find . -name "weston*=
"
> ./meta-ivi/recipes-graphics/wayland/weston
> ./meta-ivi/recipes-graphics/wayland/weston/weston.png
> ./meta-ivi/recipes-graphics/wayland/weston/weston.desktop
> ./meta-ivi/recipes-graphics/wayland/weston_1.9.0.bb
> ./meta-ivi/recipes-graphics/wayland/weston_1.9.0.bbappend
> ./meta-ivi-bsp/recipes-graphics/weston
>
>
>
> meta-renesas:
>
>
>
> [mailto:hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0=
/monarch-distribution/meta-renesas$]hgujulan@chipd010:~/project/monarch/rel=
ease_testing/monarch-1.2.0/monarch-distribution/meta-renesas$ find . -name =
"wayland*"
> ./meta-rcar-gen3/recipes-graphics/wayland
> ./meta-rcar-gen3/recipes-graphics/wayland/wayland_1.9.0.bb
>
>
>
> [mailto:hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0=
/monarch-distribution/meta-renesas$]hgujulan@chipd010:~/project/monarch/rel=
ease_testing/monarch-1.2.0/monarch-distribution/meta-renesas$ find . -name =
"weston*"
> ./meta-rcar-gen3/recipes-graphics/wayland/weston.inc
> ./meta-rcar-gen3/recipes-graphics/wayland/weston-init.bbappend
> ./meta-rcar-gen3/recipes-graphics/wayland/weston
> ./meta-rcar-gen3/recipes-graphics/wayland/weston/weston.png
> ./meta-rcar-gen3/recipes-graphics/wayland/weston/weston.desktop
> ./meta-rcar-gen3/recipes-graphics/wayland/weston_%.bbappend
> ./meta-rcar-gen3/recipes-graphics/wayland/weston-init
> ./meta-rcar-gen3/recipes-graphics/wayland/weston-init/weston.service
> ./meta-rcar-gen3/recipes-graphics/wayland/weston_1.9.0.bb
> ./meta-rcar-gen3/recipes-graphics/wayland/weston_1.9.0.bbappend
>
>
>
> Thanks & Regards,
>
> Hari Prasath
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
Maciej Borzecki
RnDity

