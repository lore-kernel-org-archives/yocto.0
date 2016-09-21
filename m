Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C267E00509; Wed, 21 Sep 2016 09:05:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5311DE00444
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 09:05:07 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id b184so9419741wma.3
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 09:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=sz4Ci3Pd0/MZ5lRQPiw6fBkWKVHObJcpisCSSqSzX2Y=;
	b=g4fw5z+rx+P1lZEwU6TJ+FFrkN/V2fhsNZcTb0LS5mZs9zEOy+wSz4qQS8tpgK8S9B
	SyOTgjkUKh6eMwaEDoCnVEvfFMXxUhpRBOgWNCCDg8JmXW2icKvzWgepbis1tGQz/TEx
	xHcYJ8XIY40GUilqSu4Q9nFOsHJSSaRagMxcE1hVrfqxj5myd9/t8lqFO+pCiQL0NmGH
	zcVYnBFV1wm4aFZJGYzEA9buxK+xiBxDrf1+cEAhHpK4LEx94/0EcZr7L3QfvYrMFydS
	NHbK6sOIWI1I/vz3TIn0myDTDClBnMnIaMxZ5vFEAPlrHU+J3BQhpZZFtBK4h1gwMjZM
	hswA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=sz4Ci3Pd0/MZ5lRQPiw6fBkWKVHObJcpisCSSqSzX2Y=;
	b=U/WpOi2p4VqWZn8/5tbF1zr9VLvcvPwfZ5VD/HfNA8CiFWtHGN1WesE613hSvf5iho
	or1r7pxQWuHbtlpsO4Xnr6gr6G5v+IeTPhDoIJJq1amsHsKmadLUBrnfZe/Cnm52RmLW
	hGTZbZ2IV8tctuh3HOvyedNgGbj7WJ3JsVtcCtq6t4cXsvF10VFY6Nfy0ncGN/mYHURg
	h/IyzF9DX2U6ZSkt9X9a6vPT26VnDpvMIu6t5CIMKjMrIu/2TVxS0vXMx7Sw9KWCI88a
	Vil9ABTQGFeo1AmZtUYsNP2uxiakxTHEXKWP2cjMQvWq+MtuWB2tPBwpzYOrmfQuDG4E
	ZeHg==
X-Gm-Message-State: AE9vXwO+qf+RkIOISPPT5JVp/o7CkWASmTqAn/B/eeHShE6Vw+qcrKiiUbKGVKgzWTHF4g==
X-Received: by 10.194.97.79 with SMTP id dy15mr34233202wjb.100.1474473906290; 
	Wed, 21 Sep 2016 09:05:06 -0700 (PDT)
Received: from resin (host86-179-71-51.range86-179.btcentralplus.com.
	[86.179.71.51]) by smtp.gmail.com with ESMTPSA id
	17sm34171642wju.44.2016.09.21.09.05.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Sep 2016 09:05:04 -0700 (PDT)
Date: Wed, 21 Sep 2016 17:05:02 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160921160502.GB32726@resin>
References: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
User-Agent: Mutt/1.7.0 (2016-08-17)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v6 0/4] Support for .dtbo files for dtb overlays, required by kernels 4.4.6+
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
X-List-Received-Date: Wed, 21 Sep 2016 16:05:37 -0000
X-Groupsio-MsgNum: 32024
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="JYK4vJDZwFMowpUq"
Content-Disposition: inline

--JYK4vJDZwFMowpUq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 21, 2016 at 06:00:35AM +0800, Herve Jourdain wrote:
> v6: rebased
>
> v5: modifications after more review
> * Added an Upstream-Status to the kernel patch
> * Only one instance of KERNEL_DEVICETREE defined (with the new .dtbo syntax)
> * Modification of the KERNEL_DEVICETREE is done in linux-raspberry-base.bbclass, based on the kernel version
>
> v4: rebased
> For kernels 4.4.9+, the behavior for the device tree overlays loading has been modified on RaspberryPi.
> For overlays, it loads .dtbo files, not .dtb anymore.
> Also, it does not check for -overlay extension, so the name of the overlay that is placed in the "overlays" directory must be <overlay_name>.dtbo, instead of <overlay_name>-overlay.dtb.
>
> This patch addresses the issue for kernels 4.4+, while keeping the same behavior for older kernels.
> This patch must be used in conjunction with another patch to meta/recipes-kernel/linux-dtb.inc, which will allow the processing of .dtbo files for overlays, instead of only .dtb like before.
>
> .dtb are still in use, but only for the "real" device trees (not the overlays).
>
> Herve Jourdain (4):
>   linux-raspberrypi_4.4.bb: support for .dtbo files for dtb overlays
>   rpi-base.inc: support for .dtbo files for dtb overlays
>   linux-raspberrypi-base.bbclass: support for .dtbo files for dtb
>     overlays
>   sdcard_image-rpi.bbclass: support for .dtbo files for dtb overlays
>
>  classes/linux-raspberrypi-base.bbclass             | 19 ++++++----
>  classes/sdcard_image-rpi.bbclass                   | 15 +++++---
>  conf/machine/include/rpi-base.inc                  | 30 +++++++--------
>  .../0001-fix-dtbo-rules.patch                      | 44 ++++++++++++++++++++++
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
>  5 files changed, 81 insertions(+), 28 deletions(-)
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

The entire patchset was merged to master. Thanks.

--
Andrei Gherzan

--JYK4vJDZwFMowpUq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJX4q+uAAoJEHO76Gt+erfPPRUP+wQnz/lr8vt2K9BNtDYNefzC
Y3es+Q4j5wcklBJqQwX5ejba4hDj+zBfHnSjlnHZQMbS8xiAODk1Dy3lZan7P/Uy
rNpMLW0AyH5ksySAZbLSYVcvVuUPTVOpmLGDrj3ALUn84rDJ8ie8Ypb7VQ/NfYsO
DHjzgyFT+ELvY150ilL/IyajBoyk90ka01IlLnFWOqx6H14+1Fjlvr8TJ87+CH8L
ZZsJvevKT22Fl3SojrcYT8x4MvxPC8SZJ3cMUPqCEmPq/nmxpKDISGUhf9ONXOzb
v1bl3s+0XQ+Td8XK7BvyADtYTdhsNeTPRpYQpLajYB/WJeP5+53LyZ0GO+Z1h4Ko
f1Fxf6Rfb7+Hh9iBKq7b6suAkpuQCTgpING8qpst8Azefiv1tdPIUmNXajQzrmkT
cninb9876iyf70/aCQKHxM+QFjHHBiHOSLBq36WH9n1zcTtuM+Wj2Wo+CXqPrBzx
esOFbDeLb+cYFmLXrwlIzKnE46dfpLlah23Oc+E6CGGhVNd7+ldEHRarpQs39Imx
+NBf2QrIzwR92CAk/VbDg4JcmsHYjOBC22eVVckLqEi+GGntHAglS9OJqfD/GGqP
KeXfJzteO7bEWhKKCoJh1+UV4RqRIgVGF9U48sfdp98w+DgTwnWH3TjG4AfQ+nsI
LQAKs1AWimbdXMv8ranc
=8Jts
-----END PGP SIGNATURE-----

--JYK4vJDZwFMowpUq--
