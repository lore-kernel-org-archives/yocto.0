Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 920CAE00747; Mon, 31 Oct 2016 09:32:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ED1DE006C7
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:32:17 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id 68so12411128wmz.2
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=NprDlZOsaCPkBA8t+z31sl88Ys7Cmj0Et7Ggs7+fZ8o=;
	b=Z2MsHOE5SuMI81BGoUEC214057bvGjh3H98DA2KCHSHiPNtThIg3TL5x1MVkamx7/K
	+UUZWwoIizF1sLqTRk9oexXaNBPpJeS9kagO3bfp35u+71mV5ecs/ovGwNzpO+SYH7CU
	O9ePc2MxgznGDx5+U3xufRR0BMt4u8D0olyv9vevy40ZDFJO6Y8v/bFWaLsY8cSsEhNm
	2UChb26zUzQ8hbhrcPJLc7PGiaT2SLYfQWaZs7eGVFzSYro15ADms7EYXL4T+Uw1BoBv
	h/uOEyF7AurJaeiLwdND12HKR7rJ0cige1LxeJl+zLOeIG0BGgGddyKegWsULoR9LlnD
	MuSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=NprDlZOsaCPkBA8t+z31sl88Ys7Cmj0Et7Ggs7+fZ8o=;
	b=f7VBrOxlADqXnPlxtLzBnCquCYBPhDDJqW6Z0n5xlVzqnL1zpbXirWNneQ4lWqAm+8
	LUe5zCoxoBNKXOvdiRj4e/Z9G0iifdCIfbcOOAT1PODZarGLitsVJdrMl/vkkldJlNWJ
	QEVyyjVEXfMmUyzgJqCt4S+TybxKd+laCLPTWtV2Eh/koGrm4KeCHMiE4ogA9+OVS2aT
	QGsWGxgjaSTQPoQ4CHcxJP5/kvvkwoHUFtH+qxAiALQky8jpEtdkd5KhJS2ePvR+du+s
	79NRmYiwQRj1skPoibu7YgMi61ZpGpVuz9yj7lzXvYIsaLMe8XQb0X3n9fQdpdjE46cX
	sGSA==
X-Gm-Message-State: ABUngvcB0I0tScBhPZ6MEYxivVB+eXOGT5Ooy+c5+IDrld7U6lwkg2qmjY8Qy0GAqAdeoQ==
X-Received: by 10.28.46.15 with SMTP id u15mr12052566wmu.61.1477931537055;
	Mon, 31 Oct 2016 09:32:17 -0700 (PDT)
Received: from carbonA (host86-163-63-150.range86-163.btcentralplus.com.
	[86.163.63.150]) by smtp.gmail.com with ESMTPSA id
	l19sm25654988wmg.5.2016.10.31.09.32.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 09:32:16 -0700 (PDT)
Date: Mon, 31 Oct 2016 16:32:14 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20161031163214.GC3276@carbonA>
References: <20161016220857.30299-1-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161016220857.30299-1-net147@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-firmware: Correct the LICENSE for brcm43430-license
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
X-List-Received-Date: Mon, 31 Oct 2016 16:32:22 -0000
X-Groupsio-MsgNum: 32696
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XWOWbaMNXpFDWE00"
Content-Disposition: inline

--XWOWbaMNXpFDWE00
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 17, 2016 at 09:08:57AM +1100, Jonathan Liu wrote:
> The license for brcm43430-license should be the license it contains
> instead of all the licenses of the linux-firmware packages.
>
> [YOCTO #10251]
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-kernel/linux-firmware/linux-firmware_git.bbappend | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/recipes-kernel/linux-firmware/linux-firmware_git.bbappend b/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> index b4408cb..bcfadde 100644
> --- a/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> +++ b/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> @@ -20,6 +20,7 @@ do_install_append() {
>  PACKAGES =+ "${PN}-brcm43430 ${PN}-brcm43430-license"
>
>  LICENSE_${PN}-brcm43430 = "Firmware-broadcom_brcm80211"
> +LICENSE_${PN}-brcm43430-license = "Firmware-broadcom_brcm80211"
>  FILES_${PN}-brcm43430-license = "/lib/firmware/LICENSE.broadcom_brcm80211"
>  FILES_${PN}-brcm43430 = " \
>      /lib/firmware/brcm/brcmfmac43430-sdio.bin \
> --
> 2.10.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

This was merged to master. Thank you.

--
Andrei Gherzan

--XWOWbaMNXpFDWE00
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYF3IOAAoJEHO76Gt+erfPvrcQAJb2ta+AI5trfRlyOnc60ukO
P/U8j8FvOSk1AYnXoNLDq44PjuAdBJEyC+SBud0tFaHlPK+kjr3uJSwejOT0DebK
E7Li/jFjNw/gyEc3rZ0aiAEUDgkYapQSSnskp63zsx/Grsml7zx0V/rFkFuC7aZN
X4lJNkbp18nvSzWzruxvtgGv/ALLj39Y29P1+a3k20Sj14SR3Pdvn/nro47R2pp3
M9tgXHLEvs+nXl8CnEcEkuXbQ6fJn3cByb2BOB6RV+h+ITPDpbYqGbhACWZv3RbG
+M/7MZM4CQEyA1WVbvWxzcmUGCh42CBMbnpXyGvupHrj+BkbIxQJlJpLc88lLF+Y
hmOQbNsj0vi8F/KR9x9Jb/HwduE8lCsg7+ue7wdDqyXuFABOONREtTm4QiHyvHLJ
C5vclxXCXmAvlLE4RvFeJ6eKw0FgSzeWUG+/zom8t0aptd6TP38PVnXaCl4/vZ+q
4nYq95u9bO/HDLsFwpZzijIRJN7KQCpc7AUP2nEXTL9PFrmJSfyrX/nwc4PK/Pt3
yyG+m5NS06Uf91QbihhRjNudmlmFuP+8ipHg3SdZB2+nY3jG8ApjMM7A7xWZB2L6
YquT6hebgKwPXi2ZauGRfnUK/BHgikMm7ni8+zwMreHsgW148Et81nkR8OmpnVI+
xHtfL8sco/h+iE5D5W8b
=S5Zl
-----END PGP SIGNATURE-----

--XWOWbaMNXpFDWE00--
