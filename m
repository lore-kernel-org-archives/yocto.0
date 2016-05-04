Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D9F1E00C4F; Wed,  4 May 2016 06:53:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 246AEE00C1F
	for <yocto@yoctoproject.org>; Wed,  4 May 2016 06:53:03 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id a17so95736572wme.0
	for <yocto@yoctoproject.org>; Wed, 04 May 2016 06:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=NydBZhEaq7LylHcZotdzMAzUdzJaMLuv7yqAQI9IkIo=;
	b=zr9YnAd29GU84xXW/i6V85nS3nQDcdWDdZDRKP0a5LrULV8Yq59npVKTllfz5rSAtl
	9hcxohIn3kg93XxTxhWuQ0Nn/ttptd1QydCX/mSM/3MFIQmPp5937qTywz94G+zNgaIb
	LXTLxN6yKu//+UofSHMq4XngIXwK5upUujXXUnJb84OEBG1ESJEelxZE+ya9ELSdHIvf
	bzA1sMxlp88siWXibXbVHsRPWQ/8VNohsk8DVxYZrLC5ZbAxz3+H4mdgovdmZ2lmxMta
	aXFricUPTaI2NQX46mx6teVPGPAwkQ/EBLrvShQdMrgOhE7nhTwVkB2K5Zk9R8TBFyaJ
	k1tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=NydBZhEaq7LylHcZotdzMAzUdzJaMLuv7yqAQI9IkIo=;
	b=mNa/qKUHcQkTNLIVwpX1R6FnXM+pN4ndvVpaPwJNA0lJyMCPeRY69N5VDUs4ny5Cjz
	wFiVHihm9DlkELt+sUxp7U9mqgKq37RGfJ6wlJQhQ+9y/vtlRG1oh1rawZwNRJUSbEfq
	7h9Ttmkt9bqmr3n9yfq+2wOaFUFIvXHHp6cWHrIpiGFc3Ku278FH49eidGps+Rgr4Joo
	2urE0OTiEjxB0UJkFx9FauLeRR67HkcOOHYoZZSlUz/DQvg075jmkOwr4okFydU6fJJT
	WenEzzkr34FE91jx2ikc6AsSvziRHGPFaPE82oytxxXE/J9K1qXWDaxM9pcz6AgtcVOk
	knXw==
X-Gm-Message-State: AOPr4FX151jibxiRvb0GbKYLcNYepsRPCAARsD9EnA9WvOOaWHDVCKnOgoXu4POiOjZ70g==
X-Received: by 10.28.16.17 with SMTP id 17mr29497610wmq.17.1462369981369;
	Wed, 04 May 2016 06:53:01 -0700 (PDT)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	q77sm5130030wmd.12.2016.05.04.06.53.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 May 2016 06:53:00 -0700 (PDT)
Date: Wed, 4 May 2016 15:52:48 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160504135248.GA1401@resin.home>
References: <1461895063-25231-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1461895063-25231-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: Fix do_image_rpi_sdimg tashhash mismatch
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
X-List-Received-Date: Wed, 04 May 2016 13:53:08 -0000
X-Groupsio-MsgNum: 29854
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9amGYk9869ThD9tj"
Content-Disposition: inline

--9amGYk9869ThD9tj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 29, 2016 at 11:57:43AM +1000, Jonathan Liu wrote:
> IMAGE_CMD_rpi-sdimg() uses the IMAGEDATESTAMP variable, so the taskhash
> of the function keeps changing. This results in a taskhash mismatch
> error.
>
> Fix this by excluding the IMAGEDATESTAMP variable from the checksum.
>
> Change-Id: Ie6f30ad29e279d5312ec655ac4a3bf246c8a04de
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  classes/sdcard_image-rpi.bbclass | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
> index 1b055bd..989d77a 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -67,6 +67,7 @@ SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>  FATPAYLOAD ?= ""
>
>  IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
> +IMAGE_CMD_rpi-sdimg[vardepsexclude] = "IMAGEDATESTAMP"
>
>  IMAGE_CMD_rpi-sdimg () {
>

Merged to master. Thanks.

--
Andrei Gherzan

--9amGYk9869ThD9tj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXKf6wAAoJEHO76Gt+erfP/vwP/jTHknGJ/fzLExVFEHR5OScS
ghcVAM8eQwCWEH1bpVl5NbZ0KNjIs57TJ2zOwvkPLOxWPERR/sULEpwh7GG1MKPb
WtJfUfLc1jtxs0eie9Ix2bQcqWEMCiY0QnXt5revl5ycRnDWTndJVsj9iqqCvla+
XdW7vU10Kuw+FZuFrBtLpk2JHhqEsFonNbN/dZ7lgFdpKL0alYGMeiE/0CdfHSC7
UTGUVXAsnnO0/w+Dk5Yy2+ftBaHbJ0GEgoh+au4wCRAlhdGS/vUROylJJOD+u/OL
BrzVCkzoJsBUDLRZzAPxtY4fZVnShoH+uX4FTYCi4HRxzDbhm6wsYftoA/Hm/lfa
icBlJtPzfyq3ef+wDooPvDpPUcVVSTIy/CsLt7hnOqc3+pMz+/8v3ak2mjGGKygP
29qDNEXpmaHC+t+DGEgV1Y3OgY53AyYX2NgEpXwUHAbFLBoNxiEGq3iIQR00F7HJ
ZUe9dw31k75m/1cjXZ/6gWGs6P1SI6IUVofiPpmH8H8N5qbiEVPW4UHWqq2A2J+p
SvpBnmZcgnEnmsNye4RGRuoMb6q6jVJUS9T3oImdwQmy8FabKrgQmRSA1xCBhQhf
zmZYvmZwWs01YPjU2rdgcwKiOim/ywUURSsLCi4mp/0q7t8gttgyAaJnq8l4zia6
KoUqCuyFbIAOH+5+HYv3
=9IOD
-----END PGP SIGNATURE-----

--9amGYk9869ThD9tj--
