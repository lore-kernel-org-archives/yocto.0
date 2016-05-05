Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 304CAE00DD7; Thu,  5 May 2016 03:52:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3133E00D7F
	for <yocto@yoctoproject.org>; Thu,  5 May 2016 03:52:07 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id v200so2725519wmv.1
	for <yocto@yoctoproject.org>; Thu, 05 May 2016 03:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=/uP4nITLMibnduUu0+8ycl18F28ycEooyXPsWdPeovI=;
	b=ZS0OFVRke5bXq8APBtpXplTN6gDO63GD41fzJcdDT3DRiTa7XpTdtd605Dvsx2OIUE
	yLTYNknQGcxklA/8I77WI3a29dKEINqOJw+PdOxVlxzUWzL4M9ceJAlBWmlyFElWSqe5
	mNbSo03TSYRucp3h1ALpoMcmcKTkG3hEZBTiMDA8ShrgXVF3LZ0lnnW7o/K/LvoZiyUa
	W5icKhYD6c4yH0oUWn27GA+AWrlBZbfO8LywegRlGOrpm3QvLT9jaR6yrI3CEca1cLne
	2nvyWm3NkLmBA1iLR0j6+bBw6S5OhEN2v1U26i8XBIFHStwtTESGh3mVsGlKQRwe2qlq
	9xbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=/uP4nITLMibnduUu0+8ycl18F28ycEooyXPsWdPeovI=;
	b=Ww+s4SXi0hh9mAwV/wDY1V8mAYhdlai+vUqlS9GwoJlySPjWjQMAaG5x8xBcfxsXDo
	ta4nlZNwLopsPv1yP+Svk7ofHB4RqLMwoM5XO2ORWQq84OrGCHNSIXIhNgsmXJ//kkZP
	cFtlzxnwZRmKcU68K5DYocYjVB8GqT1dYsxz9Ln5Ey5917cJecpZV65zQHJEUPAESl93
	ohA3JdLC/b4jKLx+0zfpSJ/7jyOXA5+rs4NySje50D1qqLrcMNHJuQLOCLyG0DInp2/d
	+mglq/gURBDGMD3ao7XCBsO3aOa1ybRPLg8tUOj0gzMxTS/jQVOsBrUNHuwK48+VWv+S
	octQ==
X-Gm-Message-State: AOPr4FWJ6ikNDdXJdopBkmAj2BGkEGVxrlbylrpa3EXiqyW73bufEnbaeUrm3pECbXw1xg==
X-Received: by 10.194.86.129 with SMTP id p1mr13258114wjz.117.1462445526681;
	Thu, 05 May 2016 03:52:06 -0700 (PDT)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	r75sm2563516wme.18.2016.05.05.03.52.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 05 May 2016 03:52:06 -0700 (PDT)
Date: Thu, 5 May 2016 12:52:04 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andreas =?iso-8859-1?Q?M=FCller?= <schnitzeltony@googlemail.com>
Message-ID: <20160505105204.GC1401@resin.home>
References: <1462018164-10212-1-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
In-Reply-To: <1462018164-10212-1-git-send-email-schnitzeltony@googlemail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] replace base_contains by bb.utils.contains
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
X-List-Received-Date: Thu, 05 May 2016 10:52:12 -0000
X-Groupsio-MsgNum: 29862
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="L6iaP+gRLNZHKoI4"
Content-Disposition: inline

--L6iaP+gRLNZHKoI4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 30, 2016 at 02:09:24PM +0200, Andreas M=FCller wrote:
> Signed-off-by: Andreas M=FCller <schnitzeltony@googlemail.com>
> ---
>  recipes-connectivity/bluez5/bluez5_%.bbappend | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-connectivity/bluez5/bluez5_%.bbappend b/recipes-conn=
ectivity/bluez5/bluez5_%.bbappend
> index eec52e0..89798a4 100644
> --- a/recipes-connectivity/bluez5/bluez5_%.bbappend
> +++ b/recipes-connectivity/bluez5/bluez5_%.bbappend
> @@ -13,7 +13,7 @@ do_install_append_raspberrypi3() {
>      install -d ${D}/lib/firmware/brcm/
>      install -m 0644 ${WORKDIR}/BCM43430A1.hcd ${D}/lib/firmware/brcm/BCM=
43430A1.hcd
>
> -    if ${@base_contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d=
)}; then
> +    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false=
', d)}; then
>          install -d ${D}${systemd_unitdir}/system
>          install -m 0644 ${WORKDIR}/brcm43438.service ${D}${systemd_unitd=
ir}/system
>      fi

Merged to master. Thanks.

--
Andrei Gherzan

--L6iaP+gRLNZHKoI4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXKyXUAAoJEHO76Gt+erfPEUkQAJJbLFLB+htM2cvOSkV7AlLI
73+YoVY+V+53xkw+eGbbNkXsloTnk4+VmxW2P4uhQJy9WcTnnBCLWBh6QkONzjPl
SIFrQNKsrWaTwoHtxuoQcj14o9YXXAtdIGmNQ+2MIugSD6uhTRAYXmZVaoM9VKDg
xMg85hrjC1qlp7lNSMOlMT+w2kSvOaj57jVbBx3d8TdXttgYDckyNhL0J37dx9Lr
0KqanfhkIqrZwjHE3cMm8USj+dQzfjy2k3mEc4OMzY8pirbjcSnbyd377PJpSEKm
QPd/gYht/tuQXRg0FOMkrVOLB5gi86tEWU/3+48h2LZ7PRbHgpgd3HBXVjWiUU5Q
HU0AHbg0FjRyIdmoQken1Qgk0wEwEkZNxVZG7ERXBF+GkyCm+rzjPPEaZ4D5mBJ1
XNFXOeii7KugiLoUUk8IfiSGeWNRY7Pv3TdSbAhktmVjquehnKEYHyiwISVDazgz
l4E9bjMb7YW0UABaTQc3jIyIsiVl6gd0RMzM943EK4wQIsO6rENsTx2YuMA+kCMN
gAYQy2m/8OwS1UZ81sOh9K5uszgLFCqlcHlddnNCQrqyld05tPERbxQlGbbUxEh7
u7SFqAf96Oki6gNcQ4Sy2lxukF8BrxSYdyWYp+KUOKgv60bA4I416e6Ttgb8lw+w
y4xrInCwgZ6+42Q3XbFU
=J3LH
-----END PGP SIGNATURE-----

--L6iaP+gRLNZHKoI4--
