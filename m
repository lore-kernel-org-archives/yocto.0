Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8082CE00566; Mon, 31 Oct 2016 08:56:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00EFFE00546
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 08:56:20 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id p190so12768730wmp.1
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 08:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=TArksSYmC0wOdnfLzBo7sLHEyzRXemzkgeblo0zhvzg=;
	b=iJCTra0aeNQz1vh+YiPH9YrnhbyB4Wln8f1JZBwjyi1uubIVO6Rw4yA/iWpkeeWMc3
	+pKJ2RtshONMU0hmwNC4CM5HO0kTO+ImOxgAXtiPihyKHsz4O0RydpSpZ7QzT/8VIKdx
	HVI/SBHJdmsnXSd+nSTsVfZcZrvfX2muDhbeRZpaxOuJqbIE+g9qxi22bKnYkdv1pTnx
	rgpKqZ7Q5PgXBeTyXnBODSpDy+vkHsYkc7IQcNbaHF7/efarXqZmEGppvLlTw+w+Opu/
	2DxYALfQcrTMwUhXM9lcXJQsP6hUO/TdGLagmeJaD5CObMPkcfi1rEge4Lc3P5o/kT2t
	VPQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=TArksSYmC0wOdnfLzBo7sLHEyzRXemzkgeblo0zhvzg=;
	b=j11k61dHhOrgYxrFjDiu6RCuNDkspIzyx3uISoK8X6vPVG+1NgHfzRzBi4cdPb9itE
	/BRdHz52qUkIvvalOIzMgMZuOmXfHrsJAYT+Uo6gcgdyq/5lpRzrJoy+wQsHySE+FTlG
	no6AJNan4HJD5JUlB516XPP8vndPujUduWC++vl3r3HA+v4DHVzRKOWjOxjJMrl4lWvD
	cITVf3foI4HX9I6/8lJTglBwFN+pkm/N2Cnw3Md33sJMRfZl3dlzm+IeVHupaxfzUhUV
	EZMMvYeZ5pdTvAnHxiBkeKO+HgW8b1jLtzNHLB8kRQIjv5L6yT327YDaCzBwe76tyP8g
	CT3A==
X-Gm-Message-State: ABUngvcyXJf7ljIQVatXpkzqx4mzSKFBL/ctdUw7GEjv5SD1P4Vd7TDry2eL32ILdOE+YA==
X-Received: by 10.28.211.71 with SMTP id k68mr10841393wmg.21.1477929380069;
	Mon, 31 Oct 2016 08:56:20 -0700 (PDT)
Received: from carbonA (host86-163-63-150.range86-163.btcentralplus.com.
	[86.163.63.150]) by smtp.gmail.com with ESMTPSA id
	n6sm30597385wjg.30.2016.10.31.08.56.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 08:56:19 -0700 (PDT)
Date: Mon, 31 Oct 2016 15:56:16 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20161031155616.GB3276@carbonA>
References: <1477165797-27121-1-git-send-email-paul@paulbarker.me.uk>
MIME-Version: 1.0
In-Reply-To: <1477165797-27121-1-git-send-email-paul@paulbarker.me.uk>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2 0/4] U-boot/kernel improvements
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
X-List-Received-Date: Mon, 31 Oct 2016 15:56:25 -0000
X-Groupsio-MsgNum: 32693
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/WwmFnJnmDyWGHa4"
Content-Disposition: inline

--/WwmFnJnmDyWGHa4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Oct 22, 2016 at 08:49:53PM +0100, Paul Barker wrote:
> These changes allow u-boot to successfully boot Linux without a manual sequence
> of commands being entered at boot time. This has been tested on an old Raspberry
> Pi B+ as well as a Raspberrypi 3. It should work for other models as well.
>
> Also, the kernel image is removed from the main rootfs /boot directory as it is
> not needed outside the FAT32 boot partition.
>
> Changes in V2 (a bit late sorry!):
>     * Rebased onto latest master
>     * Address review comments from V1
>     * Set COMPATIBLE_MACHINE in rpi-u-boot-scr
>
> Paul Barker (4):
>   rpi-base.inc: Don't install kernel image into rootfs
>   rpi-u-boot-scr: Add recipe to create u-boot boot script
>   u-boot: Add RDEPENDS on rpi-u-boot-scr
>   sdcard_image-rpi.bbclass: Include boot script when using u-boot
>
>  classes/sdcard_image-rpi.bbclass                    |  1 +
>  conf/machine/include/rpi-base.inc                   |  4 ++++
>  .../rpi-u-boot-scr/files/raspberrypi/boot.cmd       |  6 ++++++
>  .../rpi-u-boot-scr/files/raspberrypi0/boot.cmd      |  6 ++++++
>  .../rpi-u-boot-scr/files/raspberrypi2/boot.cmd      |  6 ++++++
>  .../rpi-u-boot-scr/files/raspberrypi3/boot.cmd      |  6 ++++++
>  recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb        | 21 +++++++++++++++++++++
>  recipes-bsp/u-boot/u-boot_2016.03.bbappend          |  1 +
>  8 files changed, 51 insertions(+)
>  create mode 100644 recipes-bsp/rpi-u-boot-scr/files/raspberrypi/boot.cmd
>  create mode 100644 recipes-bsp/rpi-u-boot-scr/files/raspberrypi0/boot.cmd
>  create mode 100644 recipes-bsp/rpi-u-boot-scr/files/raspberrypi2/boot.cmd
>  create mode 100644 recipes-bsp/rpi-u-boot-scr/files/raspberrypi3/boot.cmd
>  create mode 100644 recipes-bsp/rpi-u-boot-scr/rpi-u-boot-scr.bb
>  create mode 100644 recipes-bsp/u-boot/u-boot_2016.03.bbappend
>
> --
> 2.1.4
>

Thanks Paul for this. I merged these in master.

--
Andrei Gherzan

--/WwmFnJnmDyWGHa4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYF2mbAAoJEHO76Gt+erfPY8EQAKW1tkAH9DqAhWBR8C31kY+E
AqW4tgczOf/m3idNOnKKecMFIGR2MhJHF7S9bqq+70jqQ/smccksX/oQRKPx4jjl
GS48ViOmRFM04qhkhHWItfO8LyOh/l0GxVsqF6scZGFkmfzWzsp+UHqZ3M5k9MUO
u09wCCD+9NLI/+jyKtg27DZCRM4IJJNM8F3NmQVxEE2hoBRKfSlAqj6a+Gu5tbsr
QOW2Sz0BVSiWbjQDnoblTfoukF3/khrItGjYpWIfIFoGYErR9zKWR7Qoo6QDi74e
x1Pl0zh6PkhmEkMumG+Vtx8qyCaSI1VFKtj1EHil42wCQv035CVgZC3I10EFMZR+
A/JkJDN068nMN2aWEC3OaeLcv1UJ4MMbcahYQhLeXu/m1LR+wUZcNGk5s/CXbi4L
TuEBN3QiL4wnAwlZxLSja+8AWqOJQkK2J59IXq4wKkfgLy0GwiTifYGGWnNSxv4N
2UFp7q5lWwsG8iZspIf8qttU56/1olzUCag2Js6UaKiXe7b2h+76b1r2LyHh6DV2
V7M5dhHGq6IaxJWP3B3aGYEPZ2o8lUEepdP53I+Vdnz5HNmebM/PJUDRmxR9Auwn
i8FzudonR998njL6Kt9krzDU/lUQ1Dhs5XiYL6YTWx/WlUBTS9o36hByaoGyHc1M
Z1hnlDufcF8+6qOCEiGs
=tsr0
-----END PGP SIGNATURE-----

--/WwmFnJnmDyWGHa4--
