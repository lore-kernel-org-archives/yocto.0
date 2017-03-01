Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15D5AE00A08; Wed,  1 Mar 2017 02:32:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacobchen110[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1306E00992
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 02:32:21 -0800 (PST)
Received: by mail-qk0-f194.google.com with SMTP id u188so9458236qkc.3
	for <yocto@yoctoproject.org>; Wed, 01 Mar 2017 02:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=9RhpNYHKzFhUMWP0WpmspDJWKydX71SiD3/lqTJGKpA=;
	b=UOl2ht4ryx/kdiVCZTv7dun0SX1GqW0Lathk/nBHrU85wMDUhPeuCsWV+JIwxLTnpc
	ls76bTDkqH+c+B6kCRoforB70pe1pqhTcf/AGBhp4C6NbLc8mUAPskem9v94ie2t2FY4
	XNqQR/Ij+wlVXcSLgoHhTyM8aKoW6g41U1Gvh8ZPgRUeqM/G7KWcVqKFmFWToFxUiLg6
	umLbR7pjf0BvO+i77fHEhU3h9DLs/abJx3ojePwt6TONA0tuc9O57oNtuxTQt/mNbQ+i
	TCFQ78bbZoEybIYnmBBa2N9lQo0RGdctov2n8PUtfGNqd40s1OVG9DFlaeFF4lWarOE2
	y9JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=9RhpNYHKzFhUMWP0WpmspDJWKydX71SiD3/lqTJGKpA=;
	b=fqhKgnCfEoAXy2LdzzEfSGTQVvjD0ebr07Ua4fC+BWIlGgVzkZqd/r6cHNJZXTubNY
	lYXxnpVqhABxJfxEUhxLOj5tnONv/GdK2mtcRVdk7sSotuGd8tUMbdg/dpZem/9WlyLA
	kCf7rnVEEjl+1RC8Ln25PoBgAgcxEUSaqEW0xeu9H5c8RRM5K/KDg7bjy7A/pKi+kW8j
	g5l9FNAY0TNLq77osU24HsL4EHbYanHXKNSjWAtOkPPV4TqrSMGPb2+ua4TeAQeJByth
	xpitklzP7Iuqp57SDZOatBp0TkRrFSU0oLLWA8zAcalaZAn8/S/dAnoUS2W4P7L7hSK7
	cYcQ==
X-Gm-Message-State: AMke39l81ZXGnEHCOBT/ah9n1/cx6HVAjmSd+0EyCy7gHK3ukWyDIrqdNQz4zpqxceXavMjf3yp7h3LFFOWd5Q==
X-Received: by 10.200.46.35 with SMTP id r32mr8800836qta.56.1488364340647;
	Wed, 01 Mar 2017 02:32:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.104.145 with HTTP; Wed, 1 Mar 2017 02:32:20 -0800 (PST)
In-Reply-To: <1488364210-15435-1-git-send-email-jacob-chen@iotwrt.com>
References: <1488364210-15435-1-git-send-email-jacob-chen@iotwrt.com>
From: Jacob Chen <jacobchen110@gmail.com>
Date: Wed, 1 Mar 2017 18:32:20 +0800
Message-ID: <CAFLEztSzPjJfksbXHKmRA7H3Ph+6nRk-wj2vPBH_d-KM-+NDXw@mail.gmail.com>
To: yocto@yoctoproject.org, Eddie Cai <eddie.cai.linux@gmail.com>, 
	Romain Perier <romain.perier@gmail.com>,
	Trevor Woerner <twoerner@gmail.com>
Subject: Re: [PATCH] recipes-graphics: Add recipe for libdrm-rk
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
X-List-Received-Date: Wed, 01 Mar 2017 10:32:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

oh=EF=BC=8C i forget to add meta-rockchip too.

2017-03-01 18:30 GMT+08:00 Jacob Chen <jacob-chen@iotwrt.com>:
> It's rockchip modified libdrm, we can call rga by this libdrm.
>
> Our development work in libdrm has not yet completed, so it have not push=
ed to the upstream.
> We temporarily maintain it by ourself.
> ---
>  recipes-graphics/libdrm/libdrm_rk.bb | 47 ++++++++++++++++++++++++++++++=
++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 recipes-graphics/libdrm/libdrm_rk.bb
>
> diff --git a/recipes-graphics/libdrm/libdrm_rk.bb b/recipes-graphics/libd=
rm/libdrm_rk.bb
> new file mode 100644
> index 0000000..6af5b6f
> --- /dev/null
> +++ b/recipes-graphics/libdrm/libdrm_rk.bb
> @@ -0,0 +1,47 @@
> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +SECTION =3D "x11/base"
> +LICENSE =3D "MIT"
> +LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbc=
b788c80a0384361b4de20420"
> +PROVIDES =3D "drm"
> +DEPENDS =3D "libpthread-stubs udev libpciaccess"
> +
> +SRCREV =3D "${AUTOREV}"
> +SRCBRANCH ?=3D "rockchip-2.4.74"
> +SRC_URI =3D "git://github.com/rockchip-linux/libdrm-rockchip.git;branch=
=3D${SRCBRANCH}"
> +
> +S =3D "${WORKDIR}/git"
> +
> +inherit autotools pkgconfig
> +
> +EXTRA_OECONF +=3D "--disable-cairo-tests \
> +                 --enable-omap-experimental-api \
> +                 --enable-install-test-programs \
> +                 --disable-manpages \
> +                 --disable-valgrind \
> +                                --enable-rockchip-experimental-api \
> +                "
> +
> +ALLOW_EMPTY_${PN}-drivers =3D "1"
> +PACKAGES =3D+ "${PN}-tests ${PN}-drivers ${PN}-radeon ${PN}-nouveau ${PN=
}-omap \
> +             ${PN}-intel ${PN}-exynos ${PN}-kms ${PN}-freedreno ${PN}-am=
dgpu \
> +                        ${PN}-rockchip "
> +
> +RRECOMMENDS_${PN}-drivers =3D "${PN}-radeon ${PN}-nouveau ${PN}-omap ${P=
N}-intel \
> +                             ${PN}-exynos ${PN}-freedreno ${PN}-amdgpu $=
{PN}-rockchip"
> +
> +FILES_${PN}-tests =3D "${bindir}/*"
> +FILES_${PN}-radeon =3D "${libdir}/libdrm_radeon.so.*"
> +FILES_${PN}-nouveau =3D "${libdir}/libdrm_nouveau.so.*"
> +FILES_${PN}-omap =3D "${libdir}/libdrm_omap.so.*"
> +FILES_${PN}-intel =3D "${libdir}/libdrm_intel.so.*"
> +FILES_${PN}-exynos =3D "${libdir}/libdrm_exynos.so.*"
> +FILES_${PN}-kms =3D "${libdir}/libkms*.so.*"
> +FILES_${PN}-freedreno =3D "${libdir}/libdrm_freedreno.so.*"
> +FILES_${PN}-amdgpu =3D "${libdir}/libdrm_amdgpu.so.*"
> +FILES_${PN}-rockchip =3D "${libdir}/libdrm_rockchip.so.*"
> +
> +do_configure_prepend() {
> +       ${S}/autogen.sh ${CONFIGUREOPTS} ${EXTRA_OECONF}
> +}
> --
> 2.7.4
>

