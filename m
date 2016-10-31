Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F72EE0080D; Mon, 31 Oct 2016 09:58:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D46F1E00828
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:58:16 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id c17so19245880wmc.3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=cjriVeSnfctdJR1Cd2YXyCm9IsCTyiHNmf8hokrbjTE=;
	b=nIxWfedLugLApsrrQC5wB/zrs+iuv99sjfuH4VanMfPagTFYeD3/biyyI3uhDdy7rR
	GRDAVXu5XrkdhhYqoXsc8AOAULG7aYp8QjQ/+j0GE/7dS3jgGeTeeAh/n1rylYrfoUSD
	48JjefYOqdoXsSzpYoAniKOBJj1Q1ZWyHPBIdwGGFtxRMPTsUd2jRgTPHso9hHNb2XkS
	xeZ21T4BSwUjD9bzTcwVhs/DFgSD6ETbbAUeeoiRTsXdVC5gQPV+sxG7Acxvw7yO7et+
	svP1APKdYGvTo8wh0f72/i6VJu3H9Ds7chVGFhL7+bhI0JCN+GRlmcuuMOBrRfhR3UGI
	rM4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=cjriVeSnfctdJR1Cd2YXyCm9IsCTyiHNmf8hokrbjTE=;
	b=F8hSeJEebYqzusk7JORCkov2GdBVbvRm569RYX2xWNNlEhYOCOa+LQHvy/2pf50w/k
	FebRcvPO/0kc9CTDTQVMGthIWYSaHMhrgl/OtBsrbi188HCDWHoXdjdJ6vqcmUO8e4z5
	XpMJP/tEqi3NrIYJUz7PYomc7Qu1+ijW4J7AbgEbr0m3TDvEcLfeUOZGTFftkw9JP5I1
	qvr/H4kcuc4F/YaS+bBvclQeJURZRF8eu/eErnA73uPiAK5JaYzZ62tjPzthr/L6AAM2
	RrjLSkbVrdyyWNIZzenH/U30Fz5fF+c3Y29hmqPJushExOkJT+4gYzVD8oYDaey2PJPi
	2sbA==
X-Gm-Message-State: ABUngvduYWjD3O7kPJ5Zt+GH/rZygzIkU7Wfgxf1RRsQ/Oe5eOz1XECrTFNM6aGiNfhFmQ==
X-Received: by 10.28.216.17 with SMTP id p17mr11403585wmg.11.1477933096044;
	Mon, 31 Oct 2016 09:58:16 -0700 (PDT)
Received: from carbonA (host86-163-63-150.range86-163.btcentralplus.com.
	[86.163.63.150]) by smtp.gmail.com with ESMTPSA id
	jq10sm30898136wjb.46.2016.10.31.09.58.15 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 09:58:15 -0700 (PDT)
Date: Mon, 31 Oct 2016 16:58:14 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20161031165814.GE3276@carbonA>
References: <1477931993-21342-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1477931993-21342-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.7.1 (2016-10-04)
Subject: Re: [PATCH 1/1] linux-raspberrypi: Update to 4.8.4
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
X-List-Received-Date: Mon, 31 Oct 2016 16:58:19 -0000
X-Groupsio-MsgNum: 32709
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lkTb+7nhmha7W+c3"
Content-Disposition: inline

--lkTb+7nhmha7W+c3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 31, 2016 at 05:39:53PM +0100, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.8.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> index 7934747..528cfef 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?= "4.8.2"
> +LINUX_VERSION ?= "4.8.4"
>
> -SRCREV = "0105b0ea92b1614ac00329a530da940053e64a4a"
> +SRCREV = "d8f7c2da3d33ea4fb4f67411badad374b1160b44"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
>  "
>  require linux-raspberrypi.inc
> --
> 2.7.4
>

Merged to master.

--
Andrei Gherzan

--lkTb+7nhmha7W+c3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYF3gmAAoJEHO76Gt+erfPXJkQAJEFxhwM5aYXHVjrgpkmAiRr
n9nqZPy7XN2ZVacAIFv0zJXDEJ3i5N73gKsdrcU+gJ59PnWaQ2fat8fjFiK1qWtg
FFxJg6G66FFE10jRmSZ6iMaGVLAHrJYW90iuYdLxsLy8czLFxz5bY3YExm3mjEiK
KSN84/Tp23NzMBqKcswixAsHi60nr5EeG35Y1yB7AoZVWxrMFB8qOZyLrWgXtp4X
SQobzIyH/OuGgU9MOYRMtle1Zii6r8Tr1EKYlnCSO0nKjIalzpi1YT8S41nBGQFD
e+zGxvGo+7bCYwBjtEpYW/XjaUvyY7Pe2JAeLWf63KYfuk0Di89hqtA7GhXPNNmU
pOO8oFhQ3r1VWwy9GKkvKBZED9+YFsSADl86eYeQPaVIro7J3YTv0yNL9tO1wQMR
a0HL8j7SVYdmJ1IoHtedrRC152SX/86e6xunq6YcBvtUc4Y7ypCRTbPSI7/GD1h+
4Rar8tV0yp97n1JzkKAbWEau999KZ6GYKoKZulIjym1izM7UQNmOJWtbMTqIk7E8
rZ3ebcaUc9e7AEjaZwK7NFCILpnyjKdnYFnplRKBh0pynRi0SXR0NAtKhR5NKv72
+3nAS37wdat+WSpYFoieHaJuKq3gRvYszTOJgXtepzSyHLZjDdIRFoaRdYJ+evmi
9vTQKdB2/i5E5Qy2WE9Q
=iSK/
-----END PGP SIGNATURE-----

--lkTb+7nhmha7W+c3--
