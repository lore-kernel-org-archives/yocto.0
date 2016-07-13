Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB9ECE00DC5; Wed, 13 Jul 2016 04:55:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00051E00D9D
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 04:55:37 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id x83so5594414wma.3
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 04:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=qiJc257iw1dxu3YtmIrWLEKfe9QNfvgQlGSdMIS2540=;
	b=s/sJEItpJF6TfVfkMOHoD2K5zYlwCRlyVFAcTIbSrG5vQNYohH3j1HPv8XETBaZ8T/
	YZdnLb9pgQLEZcQcsgkjGdpzvglqmzEVnJ+Oc3HFgnoHr/VYF6aa8fFeRK58A9dpYM7a
	hSnPn/0pJ6Cc3qUEveXtXWzA43vACKi3pOZqfdL4KwuxOIVaJ7hV2Rg1ikMSeynD1ZkD
	2NkTmKKObj0pDA3FhAiz+aAE4cGKazuRcIs/DGN9stEVMp2jUhjqjsxRtdR/hD/PT2fp
	7ASTn9K25EFuyzpseNvDNE9PDMYewyLwrMUKlL0VYDimk47y6uKBCzDTi128ZxIOxs70
	cWjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=qiJc257iw1dxu3YtmIrWLEKfe9QNfvgQlGSdMIS2540=;
	b=QB5RcTTTPmoWV4MOFmW4oyZfrH0Xi4kv1lwVHTwodylyKgTPXaUwDD9cLK02VXMG92
	IbIU84kKHysIKsuTcFgKrUtk+P29lExZYS9P73rLjhHbCFeW8uS1UI9SA08L6TWhbeIy
	loMA31nZPcqvduubCwP5nnrTovAoE4gsl3xhFOgpaUYPZ2hh1UmfvsrhI0XFsRuK/dEk
	T7ewd7uXeWkrKgESLpwVAoaaoQRJYxRx58VukvlGFb1ZUHnnnsdT5wS4kpGlxJVm4tOn
	SlxGVmoi4zQ7FY0dRKOzRwT4bPC4fRIYjsjCzGold3uMCxbQkVT0xVYBipdH3sTjfW44
	VtjA==
X-Gm-Message-State: ALyK8tKqhbg9+Szy7Faw32cgxggFl3FyH/hRyMlnqHOabOuFKY5ylpModzXC/OQxFKWj7g==
X-Received: by 10.28.140.194 with SMTP id o185mr9546532wmd.86.1468410937317;
	Wed, 13 Jul 2016 04:55:37 -0700 (PDT)
Received: from resin.home (host109-152-128-245.range109-152.btcentralplus.com.
	[109.152.128.245])
	by smtp.gmail.com with ESMTPSA id q5sm530779wjp.4.2016.07.13.04.55.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Jul 2016 04:55:36 -0700 (PDT)
Date: Wed, 13 Jul 2016 12:55:34 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20160713115534.GF21822@resin.home>
References: <1468192676-22030-1-git-send-email-paul@paulbarker.me.uk>
	<1468192676-22030-2-git-send-email-paul@paulbarker.me.uk>
MIME-Version: 1.0
In-Reply-To: <1468192676-22030-2-git-send-email-paul@paulbarker.me.uk>
User-Agent: Mutt/1.6.2 (2016-07-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/3] rpi-base.inc: Don't install kernel image into rootfs
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
X-List-Received-Date: Wed, 13 Jul 2016 11:55:38 -0000
X-Groupsio-MsgNum: 31028
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TeJTyD9hb8KJN2Jy"
Content-Disposition: inline

--TeJTyD9hb8KJN2Jy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 11, 2016 at 12:17:54AM +0100, Paul Barker wrote:
> The kernel image is installed into the FAT32 boot partition and does not need to
> also be installed into the rootfs.
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  conf/machine/include/rpi-base.inc | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index 56ca83e..98c047a 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -51,3 +51,9 @@ MACHINE_EXTRA_RRECOMMENDS += " kernel-modules"
>  SPLASH = "psplash-raspberrypi"
>
>  IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* ${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE}"
> +
> +# Don't install kernel image into rootfs
> +#

NIT: I would remove this extra commented new line.

> +# The kernel image is installed into the FAT32 boot partition and does not need
> +# to also be installed into the rootfs.
> +RDEPENDS_kernel-base = ""

Very good catch. Thanks.

--
Andrei Gherzan

--TeJTyD9hb8KJN2Jy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXhiw2AAoJEHO76Gt+erfPryMP/1njlSgXzMs9rKWFLxa14Ylh
mPm5a/U4dcBZ3wd4a4Esjd11qJ86ALAy4eEImj24db+0738pgdKoE8kI2ORwrPnQ
YDZoct4a+gXUlJ1AtX3lz4g4AhM+MorGpbf3uh8//peQTRUC4UAovHl6kx2edVFW
hv2TSyukvzzeULwbLyIPRICS8k4X9r81W5I9xoloiSwiA0M1JF3BTNI/4eK021Ee
HrZ79IXMQb2z3AsK4ozwRvh9dyGvkG/3AMxJMBfqs+JrSmf1Z0YYyseoqy6w0q05
9m56SEt8bWQtIGSPOY7VDRsS8V40sY04RZSSDnW7VWpy2Y5JeH+ARf1MFqm8afDU
wRqfQmQtEEE4PTpgr5rEZBRieuuV6DOBP2W47UxnlkQwQzYCmUIj0IQ8gG7DFYpP
uWqCB2wc/Dgn2vpS5SNE836YcuHQSm2XOSdHSrL/rYgJPAKNUGjnaEBD+to7FHPE
XoMVtbzqF850XlutADkVj97Tjc6/kPRFcqjMg+E/dxieh2N0hnLZgtbCL6qVv7sq
4QXmrhIJe08dn3Rgr35m5LGAUK8XqqSC1dzaktqKnLNMoDgbOiheWdxAx5bV88qV
ZIVDQI8DlN7JX8zqnPTeHijfieuRMiiQN08Ip5+oGYIQG9QuQ0kn6XXDpkRQdKZ9
XGOiG5GJEcBTCZU7UwZI
=e6Du
-----END PGP SIGNATURE-----

--TeJTyD9hb8KJN2Jy--
