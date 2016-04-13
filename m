Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC15DE00DC3; Tue, 12 Apr 2016 20:07:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D21AE00B9E
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 20:07:19 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id n3so52418403wmn.0
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 20:07:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=FOjfuioN6DRsc/Hno89q/A56YdVzr5q09ZCHeSj2+qA=;
	b=Ldo4vW1BaIooEPcY0NgWPKzopodPl6nx5NuEN2rnnL5OCvbZpdmHTR7uUbMzRvD8aQ
	ZiJNE4w9juaH2AGGNSHYkF8jZ1j0i4YTD0bbKxOk3EHmT0bG3/W9ZBMBTpFOyYiCt4N1
	0J1JKKc8MPfumCib8ywlHXussLbhtKt0XmYjhEtPi/F5cQRxzvNrGxTgiVlQGouYNlXX
	nT2H8LpgUtHMizdFewVjUrY4RNEJEmhiq0BaWMaIXKtWAr6HAw7LC21roQIC4bfmypUU
	E98sD/VJCUhL7wpeq+lDIXUsFCVCmLv0MQqCDuAK2ieHL7cxnSnnBesrSsarRr5N8P/y
	Uv2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=FOjfuioN6DRsc/Hno89q/A56YdVzr5q09ZCHeSj2+qA=;
	b=XMI3/aSrwR/sL4tbU/nJRymZLEIdHI5fDztEZxwcbt3oKRzMW60UqFkfYn2OE/dz/y
	mNIW/jJJAY6g54+Jy9Ze7xeNGBAy0wWoO8u9sRJm7xoorhT8HAh1lGwP00wVBd6627+3
	uz9GJ6DfRQmf2RWFPem4Bc4ssmKa1iEt/0Njn5qzBYtIa5IXWvU63Jx6dOQBPshImif1
	OSNrTOKWQWKkP/H08kvjAbqGlADh2jA8z4+qqchxkATUapnuafEe4WohaCfSr/oY2Hlv
	LGEqwoHYHh1JwkWrumOqZqSKdjnUNHfnskm+bv1oP67D922ITuwMqOgpq5y/mFoamz0d
	5YMQ==
X-Gm-Message-State: AOPr4FUXrkRrqzNrXX/dw2oYn4tWCMl7qi0cCPQtCb+0riqb4TW4BuUf2yq0CoJUvd8ZQg==
X-Received: by 10.28.92.69 with SMTP id q66mr7915434wmb.102.1460516838595;
	Tue, 12 Apr 2016 20:07:18 -0700 (PDT)
Received: from resin (dslb-088-076-238-192.088.076.pools.vodafone-ip.de.
	[88.76.238.192]) by smtp.gmail.com with ESMTPSA id
	j71sm25629626wmj.21.2016.04.12.20.07.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Apr 2016 20:07:18 -0700 (PDT)
Date: Wed, 13 Apr 2016 05:07:16 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: toolmmy <toolmmy@googlemail.com>
Message-ID: <20160413030716.GF22139@resin>
References: <1460198883-15445-1-git-send-email-toolmmy@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1460198883-15445-1-git-send-email-toolmmy@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org, toolmmy <toolmmy@gmail.com>
Subject: Re: [meta-raspberrypi][PATCH] linux-firmware: Rework of brcmfmac43430 firmware handling
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
X-List-Received-Date: Wed, 13 Apr 2016 03:07:24 -0000
X-Groupsio-MsgNum: 29396
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="L2Brqb15TUChFOBK"
Content-Disposition: inline

--L2Brqb15TUChFOBK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Apr 09, 2016 at 12:48:03PM +0200, toolmmy wrote:
> The current version of the recipe produces the following warnings while createing an image:
>
> WARNING: The license listed Firmware-broadcom_brcm80211 was not in the licenses collected for recipe linux-firmwa
> re
> WARNING: [log_check] td-core-image: found a warning message in the logfile (keyword 'WARNING:'):
> [log_check] WARNING: The license listed Firmware-broadcom_brcm80211 was not in the licenses collected for recipe
> linux-firmware
>
> This commit contains a rework of the brcm80211 firmware handling and deploys the firmware and the LICENSE files that fixes the warning messages.
>
> Signed-off-by: Tom Doehring <toolmmy@gmail.com>
> ---
>  .../linux-firmware/linux-firmware_git.bbappend       | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
>
> diff --git a/recipes-kernel/linux-firmware/linux-firmware_git.bbappend b/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> index f0c9fe2..20ef05f 100644
> --- a/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> +++ b/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> @@ -1,6 +1,10 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> -LIC_FILES_CHKSUM_append = "file://${WORKDIR}/LICENSE.broadcom_brcm80211;md5=8cba1397cda6386db37210439a0da3eb"
> +LICENSE_append = " & Firmware-broadcom_brcm80211"
> +
> +LIC_FILES_CHKSUM_append = " file://${WORKDIR}/LICENSE.broadcom_brcm80211;md5=8cba1397cda6386db37210439a0da3eb"
> +
> +NO_GENERIC_LICENSE[Firmware-broadcom_brcm80211] = "LICENSE.broadcom_brcm80211"
>
>  SRC_URI_append = " \
>      file://brcmfmac43430-sdio.bin \
> @@ -9,21 +13,21 @@ SRC_URI_append = " \
>      "
>
>  do_install_append() {
> -    cp ${WORKDIR}/brcmfmac43430-sdio.* ${D}/lib/firmware/brcm
> +    cp ${WORKDIR}/brcmfmac43430-sdio.* ${D}/lib/firmware/brcm/
> +    cp ${WORKDIR}/LICENSE.broadcom_brcm80211 ${D}/lib/firmware/
>  }
>
> -PACKAGES =+ "${PN}-brcm43430"
> +PACKAGES =+ "${PN}-brcm43430 ${PN}-brcm43430-license"
> +
> +LICENSE_${PN}-brcm43430 = "Firmware-broadcom_brcm80211"
> +FILES_${PN}-brcm43430-license = "/lib/firmware/LICENSE.broadcom_brcm80211"
>  FILES_${PN}-brcm43430 = " \
>      /lib/firmware/brcm/brcmfmac43430-sdio.bin \
>      /lib/firmware/brcm/brcmfmac43430-sdio.txt \
>      "
>
> -LICENSE_append = " & Firmware-broadcom_brcm80211"
> -NO_GENERIC_LICENSE[Firmware-broadcom_brcm80211] = "LICENCE.broadcom_brcm80211"
> -LICENSE_${PN}-brcm43430 = "LICENSE.broadcom_brcm80211"
> +RDEPENDS_${PN}-brcm43430 += "${PN}-brcm43430-license"
>
>  ALTERNATIVE_LINK_NAME[brcmfmac-sdio.bin] = "/lib/firmware/brcm/brcmfmac-sdio.bin"
>  ALTERNATIVE_TARGET_linux-firmware-brcm43430[brcmfmac-sdio.bin] = "/lib/firmware/brcm/brcmfmac43430-sdio.bin"
>  ALTERNATIVE_linux-firmware-brcm43430 = "brcmfmac-sdio.bin"
> -
> -RDEPENDPS_${PN}-brcm43430 += "${PN}-broadcom-license"
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.

--
Andrei Gherzan

--L2Brqb15TUChFOBK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXDbfkAAoJEHO76Gt+erfP8V8QALZPKybAuW0LWhD5Vu2qgqoq
3ZYLGPS1HNcPnCNRS7rRnKmZDcNgYJp9rf4bh/9s1PMgeDTWKdDcFBYNCly4VsOo
c66OpP7xLHBVMnwXyPorH8QHRZftNIoNH0QAxDM9M48Nsm+FGVLt8O5voF/m1VMB
w34wgrwMbpX1Rlos4sysm8ho7PCuvTLfspBMPbt2+24m9ry5kcnbGtSFDN35fpg9
9ndGWXN1hkJR/lI+tcGbi22aetvT+rrDhfZQjHeLKX25ptYDUzmQtDIzN8rV5wtU
TbRwymiDnjvDfB4LyG/2WjnIbBAG08NvJkmVD8EILFiUYNYawYCM3N2cItt/XeZE
OYcgO7+BT5LDDUG+FkA1SUh/99mFu5SVqSDnU2kfeUcYCGv7ir35cdWGIQB2xY7J
7jHVSV8Z8sqtSAGKCJpE0uzf3crL1T4BEuhawD6yIvUCCBIQmzFR38r1q4VcAA9T
k2h3nrUJ3J73gzkYQ70WYTfo5Vt2RR1EDzJyjx8QwDiOzDcUjTDPzKwcK6f0Aq8e
xWOhmJAAX+kmt0otIT2aV5LzWGFuy8ckRxUqN2W9zcpB1jY+67pdfFzvFWQMT1oo
ScIcLMNPWSQhiEK2o6nbMXRRv9t1PxmSv96X86yj8wAjpIRilA+4x5Bdt55unbP+
6BjMKN9mGQKUvo0bl8Jw
=wS1G
-----END PGP SIGNATURE-----

--L2Brqb15TUChFOBK--
