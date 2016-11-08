Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 500B4E009BF; Tue,  8 Nov 2016 02:58:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA82EE00571
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 02:58:08 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id a20so10977909wme.2
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 02:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=PFk06XzrYtia3wcjiNiffcRbQEWhHmkMCffaF4OLHYU=;
	b=nl/4VMaFBq6tzLPiyn0/jr5c3C5f5MOXhkJnFrajIs6fPx6kQUqbm2kHJxw68XLweS
	zTQB8fRn9WYuPCgBcOqx01amGs2Vuz9fVvAxSoV4D8lk4DJ8wwv5AAks36MrsHYPmqrK
	fN17fqi4sGAh8L6LfVJm80JubNPaVyVW3X0Zq6vorJhZSsNLUXxkXfboTSknYRSDuQ9O
	o6qVSGHnKhIh9yfwmKPTw91KES98HACzMHXmz6TllWiooEbnn5awJOfQR43rUpz6gPGt
	ca4mJwUv/U4BDym4qGGIZvOgNZ6Befw+c9XNoQvA5acneKSUtOODvol6RBm1ZhSxAfgc
	0YOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=PFk06XzrYtia3wcjiNiffcRbQEWhHmkMCffaF4OLHYU=;
	b=R6xabehNIsDymyUJ4yE0HJg8Y/eK2Ay6+Vq3KnsZ2c+PBzl3KdQUcxGupH/3EzFdYE
	VER/89k5o31wA9wLwhlkkmK1AI3LYaw2xGNSMh22qjdjjK0dospmh+uDn0CgvFxrKuGi
	sS+JJwgVcgk+1MdwdoTTIIBdEPd31xfq+6BcSIhPISF4dLTE2k61MspCzraEjTKFHbdr
	rMnEz9ZTjQ+ZYBC/HV0lPw7RYC31GDxUa+tVukDG05ShUQktEFD0sXOtF5ahdREunmH1
	xncmahERA/ciGRR4A9N2j41nTxDGHrkFOm3/SEJrfAtF3NxqxTl3BH2Ll6c8EUux3ZFf
	/9LA==
X-Gm-Message-State: ABUngvdliWjpIrXLrQiieldHV4MkvYsT+cDNuw1MsG7bV0p84uVUw1xIBiauDUZsyQ+BtA==
X-Received: by 10.194.8.226 with SMTP id u2mr9548060wja.91.1478602687190;
	Tue, 08 Nov 2016 02:58:07 -0800 (PST)
Received: from carbonA (adsl-10.109.242.134.tellas.gr. [109.242.134.10])
	by smtp.gmail.com with ESMTPSA id
	wn5sm36332525wjb.42.2016.11.08.02.58.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Nov 2016 02:58:06 -0800 (PST)
Date: Tue, 8 Nov 2016 10:57:54 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161108105754.GC19465@carbonA>
References: <20161031165208.16286-1-raj.khem@gmail.com>
	<20161031165208.16286-5-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161031165208.16286-5-raj.khem@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 5/6] firmware: Update to 20161030
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
X-List-Received-Date: Tue, 08 Nov 2016 10:58:12 -0000
X-Groupsio-MsgNum: 32907
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yLVHuoLXiP9kZBkt"
Content-Disposition: inline

--yLVHuoLXiP9kZBkt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 31, 2016 at 09:52:07AM -0700, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-bsp/common/firmware.inc | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
> index 6ce89a5..ed0782f 100644
> --- a/recipes-bsp/common/firmware.inc
> +++ b/recipes-bsp/common/firmware.inc
> @@ -1,5 +1,5 @@
> -RPIFW_SRCREV ?= "ec5a517ed6051974a5a09f7b7811d21c443a7c74"
> -RPIFW_DATE ?= "20161020"
> +RPIFW_SRCREV ?= "413fc664838e81caeabdc4118dc51e138d5d6c71"
> +RPIFW_DATE ?= "20161030"
>  RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
>  RPIFW_S ?= "${WORKDIR}/git"
>
> --
> 2.10.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.

--
Andrei Gherzan

--yLVHuoLXiP9kZBkt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYIa+yAAoJEHO76Gt+erfPn/wQAK67PYHpW8Z972/EuQUclr8y
e+c+j5JKdZdqR3vWJtKhE0a2OXnS4O3LACn4DDbbkGPM7h/29P48zF6YupZlifOv
KFcdfLEqq6PsxEZUmL1/Ru0rPJQrvbmwhMv5eHpBRdbgia9ritb1LySK+3ULUfE5
2RR6toEaamiZ6CKlvJyoDtokpuNNqbLLVSl1ZFzr7mJDD5yfTmAUZoA7CwTzRQtL
aqfKlYxY1NXgoepYzE7L7LlkNqNw6kNI8WGyi7dl3CNUzSR204BH6gHFsNbSbyRH
TO47XEUPKDcjrd+MiNG79RbXHTN+bShYh8loPOxqXW97w/y6lWIi7DtYYA5ojNpb
wSe2QcVL5K+vXTxNmyrfnu4CC/JtrZ8ScY8x3feFr222uSCvUU4xIywWcWf99xDu
XXI0fm7uY1EwT9Va/TeU7mKPghQt4jDsdqABj0yqtbODWXyuU0WKLHOFe4ipu9RP
C/RSvJ9YMtgCCa4zMOI+g/tz7ItOGx/RrlmITaNGls+v9qAue+SJnbGOgNPe1cAy
Q3ZIVCOARoa3b9O77pYCpz92pOe3Q+QV1ITyoUrAoWvmd81xRL3qV0DVYDWLbBVe
egbMx66pYd1AWZgM3GVnrP5T6AsWq18h0rRbQykH8MCE9KgKwCHzoyci+mMH55t/
P+I6mly7EeQ6vmHIG2lO
=z5rM
-----END PGP SIGNATURE-----

--yLVHuoLXiP9kZBkt--
