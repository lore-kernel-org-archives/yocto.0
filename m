Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DC17E00C9C; Fri,  1 Apr 2016 04:38:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A254E00C96
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 04:38:46 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id 20so19506549wmh.1
	for <yocto@yoctoproject.org>; Fri, 01 Apr 2016 04:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=5YaxVvbQKOiv77NRo9dPCOS5JEl9/FOYyGJ3Ht/R/ig=;
	b=q4AsBc5mxiF2WsHZm5WHYtF88XMEzfWyI5Skzbjqk2I4FmHVCbBSsrRtJ97QwtuVwP
	L36gmNedH+Gbk4ws+M3mtwt+JRrf43CXJA691zWGEPyXCnqvQ13x4BkMrfeRErIyzukL
	2Q4E9yWQO56e/0EmbmbQy6XgwIzL6qL0AI/GsN9aPE0cPmFwOOhXX2BiDlweJXChflWw
	mEMG9jj1pUzM4s87DSbOsOxreBe/lgNvqR8X+cGrtVxPh4TGMm0TS4OPywpIfVtkO2yV
	NsTTNoCrkNJZYc8DyAN/JJLXLFjtU+95+O1I6QmBTz8EafY0mlq97XD9LMfglabj69If
	35Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=5YaxVvbQKOiv77NRo9dPCOS5JEl9/FOYyGJ3Ht/R/ig=;
	b=ehrR3bMNe4m9cYTDRRQsO46eCgGKsnJ3XfabvHYLw2e3CqpplzUMsZVXm/NhsKdNk9
	+O4k+OaVok19VVh75KNi55/rBtmkRKsGNSwokcl6BX9kBe9MNJ191U6wPq7j8SCRAE+N
	Ak2RQSyZxDllGT8Ec6JUdL/lzUXREORnTCC1bMIfTE/W7j/X7MC6hxzcppSmMrv15zIT
	/afH396WDefW2TlwSnMgPqhBlK/gFxiw7nernC5vVhJ8Ub5rG4B3KIE0QNAxagphbGVc
	TU93DlBaGd5QGe2ItUmxcy3fv0o8dy/qenYH6A82oZE/RPNXAjG3907LlknGOBUtt6Sy
	vY4w==
X-Gm-Message-State: AD7BkJJ6g8kgUW0Wb8nexDCt9sa5uOTPzbh+nE8W9dcOKwhZW+sxbb1TDAoJ0rN8t5pj4w==
X-Received: by 10.194.216.40 with SMTP id on8mr4804368wjc.40.1459510725861;
	Fri, 01 Apr 2016 04:38:45 -0700 (PDT)
Received: from resin (dslb-088-076-238-192.088.076.pools.vodafone-ip.de.
	[88.76.238.192]) by smtp.gmail.com with ESMTPSA id
	jv7sm13643517wjb.36.2016.04.01.04.38.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 Apr 2016 04:38:45 -0700 (PDT)
Date: Fri, 1 Apr 2016 13:38:38 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160401113838.GA10485@resin>
References: <1459309471-13065-1-git-send-email-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1459309471-13065-1-git-send-email-raj.khem@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] firmware: Update to 20160326
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
X-List-Received-Date: Fri, 01 Apr 2016 11:38:49 -0000
X-Groupsio-MsgNum: 29233
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KsGdsel6WgEHnImy"
Content-Disposition: inline

--KsGdsel6WgEHnImy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 29, 2016 at 08:44:30PM -0700, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-bsp/common/firmware.inc | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
> index 2c4f497..c1117d6 100644
> --- a/recipes-bsp/common/firmware.inc
> +++ b/recipes-bsp/common/firmware.inc
> @@ -1,5 +1,5 @@
> -RPIFW_SRCREV ?= "028b1f6585280bd0a21885973589c4b101355597"
> -RPIFW_DATE ?= "20160303"
> +RPIFW_SRCREV ?= "046effa13ebc4cc7601df4f06f4834bd0eebb0f8"
> +RPIFW_DATE ?= "20160326"
>  RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
>  RPIFW_S ?= "${WORKDIR}/git"
>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.

--
Andrei Gherzan

--KsGdsel6WgEHnImy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJW/l25AAoJEHO76Gt+erfPsIAP/3J6FZ/votSg+nAyffUhuHOS
WncMHaiCNPfFmhkqnG72CBVsrqLRvqHCRlsAnOanuDQ9nmqUEm+FCcAZN2m8n7m8
9AQUt+958I1W+4tq0RaktpwRIZQU431c6W/CHWHuRVD1Yekq1x8ViBnECGEa6EuU
DdYdgpy7mxmNrywotLa0/dkL6WDvv10lxE+smDp3q51n+RXofZqrjCviNm2vQmUn
hckHVw3QKoLIy9HxTuh/XWc0v7sGpFcAIJ5eawL38105+uqY64Riv1m+IyKaoiuy
4aapZqHeLKFVwROVgkyrGPj8LWgPDAIeUUr1pn9ZwXCxwg7N9f6yJyHdSxE8wE+S
dFgXqdNa2c2XxZaE4AVQt7pD7qaUDhErdJwmhT2ZFwJY51PW3A1d0+IwL2vfih7A
A6mlo7Z5mcZqLyOCwGwgeYlyCYSrhMD5nHF8PjIt0gO30xZEXu6KFLfvXRf6942h
8+E+78f0rWVep0IWjq1odtkxL1KaFYFC1V+EDczM34AtS+I6T1bWSfsoOo3tsHTB
A3IW8C5ySHLrg1+GbX9Iei+nD8maMx1DsT1XmuVwQJGbeHZLtIvlPTxbkj98MHKy
4IHwETv9M8OJEhUHHR0plj5n1fYaJ4hO8d7myRu6CRsX0YHZiql4so4zO14Ccoyt
Raf8C7UVFwk9wpvefZcs
=ZxWO
-----END PGP SIGNATURE-----

--KsGdsel6WgEHnImy--
