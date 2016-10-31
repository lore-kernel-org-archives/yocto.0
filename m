Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5141E00B04; Mon, 31 Oct 2016 09:59:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DD59E0098A
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:58:57 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id 68so12512686wmz.2
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Fwdt4jfVnDRQQ6U6OCKMh9vht47wkCbJA1PXpGJWhV8=;
	b=hUeT3vXKEppmKF/jIKkyuRowd3FFvSXY+fRQohR5XY0DNTVqhAKjgx15Vb3mgVN4hF
	nEGp+fFolHXfc6I0dBx8Dr3xr1PwiSDZb+RAHPAL2DsnheI4bmL7jgn5K93ZFg5DGihB
	3BN06BvWx/1WbJnMRIVCrLW8fONPgoraJCNRVUUARWFhIRVSICx6ZmQnYlg6lBlzURMu
	uDWVX384ZpVFSGgpdFyjU/bPqbJTxorg/s3hwkOWs0sOBitrnbSwrPhmcOkZv1unLq9A
	qouW+23i1p9hWVISf0gSp2j/YWf6y9SI6ND6VVZSZF7MtMezy+Iw2AFX6HLH1eN1Hd9r
	socA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Fwdt4jfVnDRQQ6U6OCKMh9vht47wkCbJA1PXpGJWhV8=;
	b=i3k+y7tpgZbQM9/VMD37vxpVAoVjf7eAjzVAC7iF5CarkF59RDx+hVG1s0YwbBlpNp
	lun9r0oEaJjpu/PdjpgHYkrRASRdgEVl/ni2o8drBL+mCXFmfovvT9RjY+QDP2w60did
	e4oeR3OvQunE9FwipW0iJWlEwQheVbI2cT8gkNjTvggcIgGh25l/H45mbbYrPaKibWhp
	wFdJdBnZDObuEtzi+Sh1RU96MXn+3zRUbHWfN/UbICXv39FMGSIvWCKtTdS3l8lbDA8X
	f9Y3+xLx/n7LNipZuV1TJvneOeXT8ZC32TkrpmDWZCcG/31naAmJ0h8+KekoJC9pshXC
	65tQ==
X-Gm-Message-State: ABUngve3nU5gjhV69wvJdHmMXoj6VJjNXKKqPGK3fi+h+2TdPGbaasmG9i9OqqezJDQWJQ==
X-Received: by 10.28.26.87 with SMTP id a84mr5849003wma.93.1477933136656;
	Mon, 31 Oct 2016 09:58:56 -0700 (PDT)
Received: from carbonA (host86-163-63-150.range86-163.btcentralplus.com.
	[86.163.63.150]) by smtp.gmail.com with ESMTPSA id
	r4sm25776253wmb.19.2016.10.31.09.58.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 09:58:56 -0700 (PDT)
Date: Mon, 31 Oct 2016 16:58:54 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161031165854.GF3276@carbonA>
References: <20161021050957.26429-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161021050957.26429-1-raj.khem@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] firmware: Update to latest
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
X-List-Received-Date: Mon, 31 Oct 2016 16:59:09 -0000
X-Groupsio-MsgNum: 32710
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="JcvBIhDvR6w3jUPA"
Content-Disposition: inline

--JcvBIhDvR6w3jUPA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 20, 2016 at 10:09:56PM -0700, Khem Raj wrote:
> Fixes issues with display not starting with weston
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-bsp/common/firmware.inc | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
> index 29f9c01..6ce89a5 100644
> --- a/recipes-bsp/common/firmware.inc
> +++ b/recipes-bsp/common/firmware.inc
> @@ -1,5 +1,5 @@
> -RPIFW_SRCREV ?= "ec63df146f454e8cab7080380f9138246d877013"
> -RPIFW_DATE ?= "20161005"
> +RPIFW_SRCREV ?= "ec5a517ed6051974a5a09f7b7811d21c443a7c74"
> +RPIFW_DATE ?= "20161020"
>  RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
>  RPIFW_S ?= "${WORKDIR}/git"
>
> --
> 2.10.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged both to master. Thanks.

--
Andrei Gherzan

--JcvBIhDvR6w3jUPA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYF3hOAAoJEHO76Gt+erfPLPYP/i2Bk4WV3Wa7dP+1cTjg5DUv
VkECOEIJX1QapmZVAAlCV3NLHnDgbFzKoNIs8KUVrbKLvzDhUvfdeukszQj++1Im
iYb8apkOizzqQpmocZK3uwxuNuEmbV4JxQ4H6jNYoF4dTvuCz01EiD6N+WEjPxJ/
E9t7TLfJ060yoV77f3IdFgQ4UINxT7UXPwqsWOa+P+NDN2VBT+uA6Jn1bFk645iO
GguNPfAXObXsN6u/MQHSpBbQK/YI5T2raOMn0cYWG6yNIshMM93J+e91TfN/pn22
PICmlAAYfXLEWtdSBPNHnW8aV/z+unSzZSHwF0vvjL8Md7QhgYPG7RaHjMKiTiJn
2zlHFD2BvKz0O6a7ej+rv6jplWJgWlfuwb9LhvTQdyewG1vd7cNi/0R3pXPspD5Z
WhatcQJq/MnyjePzYu7zAbf9f/hCQPQQNAqplW8tNiyCa81ZTeTfz+xr5Jrnfgml
1WARrsUyULljDNYmbB0p8zl/ioWBf+9PVnOC1L8ofAPoLk4VhQYLecgPWyZ/MA/+
GzFYKXBImRIMjvNUGQkmftMSef+jZKg+V054fiOpCmpeTYLADLtTAslSeeXpbzqQ
NdkzsRFum68i8ARVA8jWJeoSReoO7S4F7H75NNFVWxoSik8E73mngpNTK4+gmmay
SdOLrrQAscnEa2E+7d7Y
=bWFQ
-----END PGP SIGNATURE-----

--JcvBIhDvR6w3jUPA--
