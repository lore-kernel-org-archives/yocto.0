Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9A8CE00C1F; Mon, 31 Oct 2016 09:59:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69B0AE00B04
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:59:33 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id 68so12514643wmz.2
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=fVzw3m8UrS0uhxQc4BPcbssCIblVDYzWouraqvAtnOY=;
	b=RVQcTHHcw5KoZUcqWoaJwcftm0RoUyOn7h7hzNPbjCnfuwUK895HX09PKlxF+IEhbC
	76LX8ls1qH+Jbom0kyy97GlV2Cgj/WW4NaKhpHfb9Mv36WxRTTOLb7njKsgo0m/oq3uN
	yC23vaFF0MOGKZ8fFSVIZrdCXXgpZwNFMpXauWIdnKBq3Xypn0N45IJvOEsdI05r8mAQ
	Svd4hwoOb05NRWITRy5EPIeYd/pSz7MhYuPkfqJbigSTLTfSsMg9tfldaFMIWCW6PFvK
	9CtTmpZOq+ZYqCvx8OUyC5d04ginqTqxc2so+pnrYIvVpziq6wSJCveL11cSRjZVB6TT
	d5Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=fVzw3m8UrS0uhxQc4BPcbssCIblVDYzWouraqvAtnOY=;
	b=SyYN9rZBrpigCzI6w3cXD1o65tiNlmva5SuskJ/N3IaNR9FkXj/8jlDFUPVNq4Agx7
	zMwik45tPOEVENkJWeFjgtEjovmKTTzztux1lWFXhaWGg+VTdv+rzXWe0bE2PVhsTQoD
	eyub1HOupCcF6Cy7+8OF1mr5ZM/l5+fEG05kj+q6f1Bp8m31zyvlqGkmbDZ91hanyvaQ
	jQGyhb/zXabTc8lGimh8xCOH5V2FEkFjWFFvYTFDMErAzPG28kB62G9XKhAu9iBrc8/Q
	agzRKLWHaMKK7KaP/YonFJqw36ilBu4Mn/EwcdaSCkh3jFHTgPdSkJs+pJ6I1zRQ0yIq
	GUnw==
X-Gm-Message-State: ABUngveghj0eoVm85S1gb8q0Tbe9ET8b+aHpcG328pOFPBFpx4pCtLuIhMT5eNoJwpIjoA==
X-Received: by 10.194.123.197 with SMTP id mc5mr22315487wjb.231.1477933172706; 
	Mon, 31 Oct 2016 09:59:32 -0700 (PDT)
Received: from carbonA (host86-163-63-150.range86-163.btcentralplus.com.
	[86.163.63.150]) by smtp.gmail.com with ESMTPSA id
	l19sm25772139wmg.5.2016.10.31.09.59.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 09:59:32 -0700 (PDT)
Date: Mon, 31 Oct 2016 16:59:30 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20161031165930.GG3276@carbonA>
References: <20161016022739.26984-1-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161016022739.26984-1-net147@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-firmware: Fix "No generic license file exists" warning
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
X-List-Received-Date: Mon, 31 Oct 2016 16:59:42 -0000
X-Groupsio-MsgNum: 32711
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pE2VAHO2njSJCslu"
Content-Disposition: inline

--pE2VAHO2njSJCslu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Oct 16, 2016 at 01:27:39PM +1100, Jonathan Liu wrote:
> The NO_GENERIC_LICENSE map value for Firmware-broadcom_brcm80211 needs
> to have the full path to LICENSE.broadcom_brcm80211 from the URL
> instead of just the filename.
>
> Fixes the following warning building the linux-firmware recipe:
> WARNING: linux-firmware-1_0.0+gitAUTOINC+42ad5367dd-r0 do_populate_lic: linux-firmware: No generic license file exists for: Firmware-broadcom_brcm80211 in any provider
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-kernel/linux-firmware/linux-firmware_git.bbappend | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-kernel/linux-firmware/linux-firmware_git.bbappend b/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> index 20ef05f..b4408cb 100644
> --- a/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> +++ b/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> @@ -4,7 +4,7 @@ LICENSE_append = " & Firmware-broadcom_brcm80211"
>
>  LIC_FILES_CHKSUM_append = " file://${WORKDIR}/LICENSE.broadcom_brcm80211;md5=8cba1397cda6386db37210439a0da3eb"
>
> -NO_GENERIC_LICENSE[Firmware-broadcom_brcm80211] = "LICENSE.broadcom_brcm80211"
> +NO_GENERIC_LICENSE[Firmware-broadcom_brcm80211] = "${WORKDIR}/LICENSE.broadcom_brcm80211"
>
>  SRC_URI_append = " \
>      file://brcmfmac43430-sdio.bin \
> --
> 2.10.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.

--
Andrei Gherzan

--pE2VAHO2njSJCslu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYF3hyAAoJEHO76Gt+erfPDa4QALxaCNLvjKdC4SXL7xIHPpSa
bJlHLffOscwxfc6eDynK2MHywoc7v/G8dIl8nm5K/+34kanmUi85rBbTfhkwGEiB
7FtWhEo3bol7BUp7IAeUHeiEFM1t+nB9iK3txou9Q6ub/ZWIrgh1AkKpqg+uGVCm
zPYkOHHy59sYsJfCVr2sRcYAQqrG8aWSuRTIozouA9+Jvo4yN+JRy4uPLSrCjERO
mu5Gw3bHZ4o/ADGZ2x26kAbUf9kXcqs+yQSTkcRhdx0SFn2DLfou7AhoGivIFkZS
con2Ohc0VsLdOC6J5f8DqRl/gxBNoJ7Gcz7vCKYINVY0jDWGQMs4U0ABprXJJWIn
dVTer5rQzC7tzJUlZsH1lN2E8dsZlXwQgrNcN9Wh/LsFVvrpNu4YIgJ08q52vflp
WhsMmCx3AIIvnuwt/5g3RgBPjZFvI0FxyDcZ8O+cDawVbYkd23hY83zKiZ8KvdMK
u7kIRWhniu1JvSTIs4kwLlw+JxZiMkTs9HE48/OenhsIzh0yB2b8fMrJVBnnV3pT
cJ2xhcvSL5sW789Ln9DTiy3X6lk0bxB3zHmxDB/4wvULgvWjfp0+4u4FD1oHPN58
aWMpn3kxr642orV5HFvSRo1hFU7ayklpy6kpHKk47xQvNuF9VNtlusVDjtAafBlD
xHPgHIiGwDSZ1OLfhIVH
=+V1l
-----END PGP SIGNATURE-----

--pE2VAHO2njSJCslu--
