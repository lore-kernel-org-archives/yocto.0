Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72BAFE00EA4; Fri, 14 Oct 2016 05:41:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f49.google.com (mail-lf0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5025E00E73
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 05:41:28 -0700 (PDT)
Received: by mail-lf0-f49.google.com with SMTP id l131so152013454lfl.2
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 05:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=HoysyLuQJdWXD3DFjKLzMybMBQTGMeOU6aZ5EcK1m/4=;
	b=i+ts7FX7KFQ22mVejOioLQwHqiiuygaHUEbmlLf8kLGz0rHiXF9FGQULDmSxK5L7mC
	qUpTQ3FEJ7hLuI2GVQQrSkK8eRJoz3w+yOO0OyJQrLRfZPdzGu7IdSOTltN1RB9TUKo/
	FDgkvPw6B9mwBuv3Ws345k6iPuMN1Xrt53H1AUd3R3kqA0XbuHFkFR/OERoswTRdFOOe
	5trQzV6PlwgSP0+zG16Nyew+in3fNdP5OHiDrv3G2rCvxD7+KM/rq9JemJSYCJt2qMxz
	6U6NZxK+9jtABHNJ3Cv9L4eC+d1NaTZYLw1/PIlrEcOpGt/6v7uYMF6/XfhSLFFbQ5eZ
	1GhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=HoysyLuQJdWXD3DFjKLzMybMBQTGMeOU6aZ5EcK1m/4=;
	b=bHc82Zc3rR6S0N/7V1WqGrvac7OwtKfSKEbqMtwi2tWmdhpPVlNjgHyR/7clldJY6H
	IsL6W0zwj9Az0k9G/u+U2kV8AIsQ3hdZ7XUWp5H3e02zcFAnQBRvnFsjsiFmvFRl/nEB
	XTq+Tv5yOaAwFlcEoS3INalsKqF3LMITy1jVUAX3xhH4I0ASamLgWAhoMFdriaTTywWM
	vg+qaFrlrA31fNaErftKR6AkDAnvTpCnq4oUHZqCW7w23Mw4Y4R7ISEjkLwzahlSyyuk
	rBsHveJB9Yg9y3VxqrNNqdV2R61heXqBX2kJh2piaq//IoT+zFsZJWY0TdNW7Zx0XhmQ
	dZdA==
X-Gm-Message-State: AA6/9RngJ/kqFrNA+9dzusD/PCrKqfopbvyz2rqFpEYS5K8bettdwsKFJ6rsHscjkTpA/g==
X-Received: by 10.28.156.73 with SMTP id f70mr1500266wme.45.1476448886865;
	Fri, 14 Oct 2016 05:41:26 -0700 (PDT)
Received: from resin ([88.128.80.33]) by smtp.gmail.com with ESMTPSA id
	r1sm31579385wjc.43.2016.10.14.05.41.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Oct 2016 05:41:26 -0700 (PDT)
Date: Fri, 14 Oct 2016 13:41:23 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Karim ATIKI <karim_atiki@hotmail.com>
Message-ID: <20161014124123.GB29587@resin>
References: <HE1PR01MB1883689936BC3BB3FEECED4092C00@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
MIME-Version: 1.0
In-Reply-To: <HE1PR01MB1883689936BC3BB3FEECED4092C00@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: failed to copy the final ***rootfs.rpi-sdimg image file
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
X-List-Received-Date: Fri, 14 Oct 2016 12:41:33 -0000
X-Groupsio-MsgNum: 32404
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6sX45UoQRIJXqkqR"
Content-Disposition: inline

--6sX45UoQRIJXqkqR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Oct 01, 2016 at 01:58:49PM +0000, Karim ATIKI wrote:
> hi,
>
>
> I'm building a custom core-image-x11 for my raspberrypi3 board, with poky krogoth.
>
> In the very last steps:
>
>
> ERROR: core-image-x11-1.0-r0 do_image_rpi_sdimg: Function failed: do_image_rpi_sdimg (log file is located at /home/kai/yocto/build-rpi3/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-x11/1.0-r0/temp/log.do_image_rpi_sdimg.16110)
>
> ERROR: Logfile of failure stored in: /home/kai/yocto/build-rpi3/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-x11/1.0-r0/temp/log.do_image_rpi_sdimg.16110
>
> Log data follows:
> | DEBUG: Executing python function set_image_size
> | DEBUG: Python function set_image_size finished
> | DEBUG: Executing shell function do_image_rpi_sdimg
> | Creating filesystem with Boot partition 40960 KiB and RootFS 430080 KiB
>
> | dd: failed to open '/core-image-x11-raspberrypi3-20161001194728.rootfs.rpi-sdimg': Permission denied
>
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_image_rpi_sdimg (log file is located at /home/kai/yocto/build-rpi3/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-x11/1.0-r0/temp/log.do_image_rpi_sdimg.16110)
> ERROR: Task 16 (/home/kai/yocto/poky-krogoth/meta/recipes-graphics/images/core-image-x11.bb, do_image_rpi_sdimg) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 4771 tasks of which 4770 didn't need to be rerun and 1 failed.
> No currently running tasks (4367 of 4773)
>
>
>
> It looks like it tries to create the image in the path:     /core-image-x11-raspberrypi3-20161001194728.rootfs.rpi-sdimg': Permission denied
>
>
> I looked into the bbclass, and at first glance I'd say that the respective path is "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>
>
> So ${IMGDEPLOYDIR} seems to be empty.
>
>
> I haven't found any reference to IMGDEPLOYDIR elsewhere.
>
>
> Weird.
>
>
> Karim
>
>

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

This should be fixed now by using krogoth meta-rpi branch with the poky
krogoth branch. Otherwise just use both masters and it should work as
well.

--
Andrei Gherzan

--6sX45UoQRIJXqkqR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYANJzAAoJEHO76Gt+erfPtz4P/3zyv0Aggk5lM6FGPP8GWK9q
gESAOXljOTjpnh8gmp9WyyuAiLcnL0/ZPFCy/vdMAsJp4iFohW9Nrp5nc+BzQbd4
DhS4htQUJqp4ssVd0aMsfSx4Tr0LQOrIcmmvpKXCORMAdASlweYo6dyfAtf2aCs9
RbawGH0fKGaVI+kla31iQ8t1whwtT/5vYTVDE9OfCNXLTPyxTsFT7vUaX12jxdAs
UQbTKmGI+qUwvTkDu3RWGZOTj6iBzm7hcidN6XPnwXFbUE2Nw1UvCyuk1JT1PMkp
Ad8UrXowJXsq6SCl9FWYUyQ1WNl22xPrZlqI5EZeT1uiMAmzCvTCHkkmbAvjbhrL
n4OAq8G4zLbeN6VrAt7Sss6MA2K4CAMX04vRbGXZ3GNpB7W0TxSjsOkkWLBx2roy
YE/A++1UxB+lwHVAhcDsaVIH3ov6eqjwXCvoDQ92nHCNd/uI4fNXcRah18mE84rN
UL7ZNL+MsL8C695u3ss1AfbWEmfDgmY/Bt9IaIn09dBHFteBEPfr15vUpGco84s7
OMyg4lRHTYdwk7T5+MO3hRyPsMUw2xXnrekZzfu6caD2DYk+9M2KcBsDPvGn3FFO
rMOerTD1/qEOxihFgwz5OkkyzvgmG4811SDgB717HmLXK0sPY+gijxWEid022WbO
oF9/YStX8dWAfcb8TQ8V
=8NPL
-----END PGP SIGNATURE-----

--6sX45UoQRIJXqkqR--
