Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 353E4E00571; Tue,  6 Dec 2016 08:03:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f195.google.com (mail-wj0-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1A5BE00546
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 08:03:13 -0800 (PST)
Received: by mail-wj0-f195.google.com with SMTP id xy5so44693761wjc.1
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2016 08:03:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=HDByc6X8nQBpdkCeMD6NcFj31OW5jl/H8pakr/f+B7k=;
	b=W/eJb+ZBrod9y4zgFXPRoAIRA+yeKa4nNfDFBdl8qZcueoW07EZQU07QN8yjXGYjVg
	osdQ+oXGNoGYTY5FDUosQkZolzD71xuyaqYTJA/xg4O1L6AhuU8XNQK3oG+5QfrFvsYu
	ksSrUwFpsAQBQ2BZf7Gzydw8HZ3Ro24OOCJfvU7zohAOk+sq7fUnXisnQ1pxbxjjwh4f
	FZqsJKZR41kQDCjiZIKq7MHpXg6EAKaIE8EYk3SNf6jbalkd0nqnpKepYukbh+zqY/Iw
	E+44qH013PO7bd+1YfFFnGpZMYR2DLr6auKGjHWak+N2yZpu9Z970WE7bsNcsOlX7flU
	7pIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=HDByc6X8nQBpdkCeMD6NcFj31OW5jl/H8pakr/f+B7k=;
	b=CNTumrI0r+38SdP9tFOuu/uHpZRoZOuUE9AYriGzUCNBiDsby9L/Oq3TvFoKLTrAt5
	Bj7XiEVi4YCftjJ5hpXszHbQmkBWXGUJYWj3Z8SKxMV4x9YOVHW5ghrpVc6HRBoqozSc
	yXDt+830zirs6jkS93g9EDtLvBorbJ2ig377u+NgbPUyC3pQ3SS/o5lYduzah+evpujG
	TPPajEP4ODukIbc2J7fhRkJMJSKuvbDlgozHrT64rZgH6gyRxPgZtoBf2Zp85LaTxOju
	aqa/ZxWAaab+g4wah2KxbtwKju0ejJQ9jq9z0hrizshQtThqkFgm9by2s/qYqvDCcnvH
	P5Yg==
X-Gm-Message-State: AKaTC01QgJqz5DWnGQigNYmxqhRLgINTV5IQeO6kbECU4vnm145WoaQhR4WllGEz/h1Nmg==
X-Received: by 10.194.82.163 with SMTP id j3mr64832996wjy.232.1481040192546;
	Tue, 06 Dec 2016 08:03:12 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118])
	by smtp.gmail.com with ESMTPSA id l67sm4806090wmf.0.2016.12.06.08.03.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 08:03:12 -0800 (PST)
Date: Tue, 6 Dec 2016 16:03:07 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20161206160307.GD1636@carbonA>
References: <20161205110027.13585-1-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161205110027.13585-1-net147@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] firmware: Update to 20161125
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
X-List-Received-Date: Tue, 06 Dec 2016 16:03:15 -0000
X-Groupsio-MsgNum: 33319
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GyRA7555PLgSTuth"
Content-Disposition: inline

--GyRA7555PLgSTuth
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 05, 2016 at 10:00:27PM +1100, Jonathan Liu wrote:
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-bsp/common/firmware.inc | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
> index 8862f58..1961b48 100644
> --- a/recipes-bsp/common/firmware.inc
> +++ b/recipes-bsp/common/firmware.inc
> @@ -1,10 +1,10 @@
> -RPIFW_DATE ?= "20161020"
> +RPIFW_DATE ?= "20161125"
>  RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
>  RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
>
>  SRC_URI = "${RPIFW_SRC_URI}"
> -SRC_URI[md5sum] = "d3c388c114af4c672dd3ee0ed8e984d3"
> -SRC_URI[sha256sum] = "1c7c49d58800aab2dd1b5ff59a1e297934f9ea6f47ebdf0a3f90632561dc690b"
> +SRC_URI[md5sum] = "a9281d2869e2d7673a83d41bacfa66c2"
> +SRC_URI[sha256sum] = "744e050630621c70991c91e0ee8663dc2f579e743583ca762b13b00bc75859bc"
>
>  PV = "${RPIFW_DATE}"
>
Merged to master. Thanks.

--
Andrei Gherzan

--GyRA7555PLgSTuth
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYRuE4AAoJEHO76Gt+erfPxhYQAKsK3ev5KPwgsSZxUrUnPzal
udutrOuuVW/p/Y67WG6pXCj+tt/kR4pgFjkn2JBSalcRmi4KBB7rOtF/N9BHdxwL
yeE52oEjYgiYN11rph3/miQ8mANq0LXnZ5Gr/5dwrsgQbJhzebWVBOpTqLPMByzp
d8hZcJgRp2hqhJaYl10AXOX5URvZtSOyakn+nrJHOqkDkcMkmZlujOURBw/qJnt6
p8H1Lq+6MEyDwPEXd8/ynw7rMeSUDZLGuQ546sSHFtIQ/zMmcaWDlvWLPVox2LSt
T794biiYUvGr5bgKvOrVZrh4gq/w/dPCJAO/J5nZ1cC52sK9O8EQPodCuspYJhHn
AHhDgzjR+YgKLLtEURtJ4BsJ+LjmY/4ygjwY4msb332+Qx6u1xO1qGlHyVFRKpeU
9Mlse/gAdtz9RgBZ/UKRJJfCuoVjiq57uzFDrs8zR2DPxAAr430Ogz8N/9PxTh0T
P26FkRXKHGvgLMe2A+vojh6FtkoFQHcvSIE7Y/oNa+PBtmLsfelYEAol1BMtPrHB
20+/Ja3y3E0WJRI4PW6dqBkJxeCfG9ld1VEFqOJv5xW1lotQ3Z/fvRfai0YMP4XC
nFUQy7oFJhX0p0SQLqJC0rIGPe3vhQ6NFn5vfcJ7n8Gh7gm/Iq2yNnDzLPKPFCVP
gCrEh1YM7eCjI5hqumeL
=jxYy
-----END PGP SIGNATURE-----

--GyRA7555PLgSTuth--
