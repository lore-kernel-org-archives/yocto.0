Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B69DE00A16; Fri, 21 Apr 2017 09:04:45 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE3CEE0074B
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 09:04:43 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id d79so5695493wmi.2
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 09:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Q5UAfZLR9vzccezqx7vJnbQz+/D9A9+kYlFS/7vR0Ak=;
	b=wOthGhdPeK27bvT1l3OeutVKrvXBDzDoPwnuCt+rA0GeleUilsoZLHwgTdjX8SjZG5
	SRHihMPZgylNX/Jt2vJW/QBZfn8618jUgyl8RjRhRLq8aVzaXz+jNggQAzGomrdWk5vI
	eH6GT39ZNZn2TA3KalmneNqbpsxZBTdz9wiv5IUpGGglaIqklNwzJaCjKsXBUYATJGIv
	kYmp/hQlcblAN1ZeWW1QbLurygCtEVySYvdYQuA03EVmPJph9zF2gIXpLI6Pchkua7MO
	MglysfUQqtlTuPumgWipHYOULjQoB/iDcFltyHwzD+pwJXb6npC2au7/Jm+ofFYFWXiG
	Z1yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Q5UAfZLR9vzccezqx7vJnbQz+/D9A9+kYlFS/7vR0Ak=;
	b=kt/lfCfeMS/Xa/PXkDrLGjD2LbiVJg06XqYz8wJoNG8kLNzxYnjAvLw4D3ebUIRmRu
	gcJgNFBgzAxUFdcrWzPr7z/LxOpDKDycaToeX9ahWgYqvmk6fzfIvGeadYbHK+mtCTYQ
	fTuM7ImjBmils9YaPlE4rmEUFQ0qjhCj17frT3zQFDLALXYpWJxssHQog/lCWgqexw9v
	k8rL8JoMIcbGFJBHdFZVzau2dFhfsqbwiGioxG/nPhpDmgPwwkHKT1mvr7pVIK52Zoac
	EiToN5vOnfwMzZces/hBZuuN961ziPm0mRWUQkWvQNLUlfgRBsM0VaVOUQiddBXmuRr4
	VuYw==
X-Gm-Message-State: AN3rC/7v2NRdRQl+8N239TV78dfEon40bUIm2P0XhH/gm3B6zacI+Gk8
	zCBBzvIijFQ2QQ==
X-Received: by 10.28.150.21 with SMTP id y21mr4764281wmd.12.1492790682428;
	Fri, 21 Apr 2017 09:04:42 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191]) by smtp.gmail.com with ESMTPSA id
	w186sm2487132wme.26.2017.04.21.09.04.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Apr 2017 09:04:41 -0700 (PDT)
Date: Fri, 21 Apr 2017 17:04:40 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andrea Galbusera <gizero@gmail.com>
Message-ID: <20170421160440.GB32138@carbonA>
References: <1492763872-21212-1-git-send-email-gizero@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1492763872-21212-1-git-send-email-gizero@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] rpi-base: fix make_dtb_boot_files() for raspberrypi3-64
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
X-List-Received-Date: Fri, 21 Apr 2017 16:04:45 -0000
X-Groupsio-MsgNum: 35721
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xgyAXRrhYN0wYx8y"
Content-Disposition: inline

--xgyAXRrhYN0wYx8y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 21, 2017 at 10:37:52AM +0200, Andrea Galbusera wrote:
> Building the stock wic image for raspberrypi3-64 failed to find dtbs listed in
> IMAGE_BOOT_FILES. This patch updates the make_dtb_boot_files() function to
> account for dtbs listed in KERNEL_DEVICETREE that do include a path prefix:
> this is the case for things like broadcom/bcm2710-rpi-3-b.dtb (the dts dir
> layout in the kernel sources is different for arm64). Use the same approach
> already used for overlays/ dir. While at it also fix a typo in dtb overlay
> code path comments.
>
> Signed-off-by: Andrea Galbusera <gizero@gmail.com>
> ---
>  conf/machine/include/rpi-base.inc | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index 517d5ba..4a0ea2a 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -61,16 +61,17 @@ def make_dtb_boot_files(d):
>
>      def transform(dtb):
>          if dtb.endswith('dtb'):
> -            # eg: bcm2708-rpi-b.dtb has:
> +            # eg: whatever/bcm2708-rpi-b.dtb has:
>              #     DEPLOYDIR file: ${KERNEL_IMAGETYPE}-bcm2708-rpi-b.dtb
>              #     destination: bcm2708-rpi-b.dtb
> -            src = '{}-{}'.format(imgtyp, dtb)
> -            dst = dtb
> +            base = os.path.basename(dtb)
> +            src = '{}-{}'.format(imgtyp, base)
> +            dst = base
>              return '{};{}'.format(src, dst)
>          elif dtb.endswith('dtbo'):
>              # overlay dtb:
>              # eg: overlays/hifiberry-amp.dtbo has:
> -            #     DEPLOYDIR file: ${KERNEL_IMAGETYPE}-hifiberry-amp.dtbp
> +            #     DEPLOYDIR file: ${KERNEL_IMAGETYPE}-hifiberry-amp.dtbo

Looks good to me but this seems like a typo.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--xgyAXRrhYN0wYx8y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj6LZcACgkQJrqo2vax
FPYltg/+J+KTBBR3NkUC4vjCr3ePza4LkZwUI+BVTZb68Imi585uKwE2DHeSCVyn
nP5GT0rbLj8nvvBBrWMhnm3X/xDEbKxIVcbcDkbwHVOqKm65vjYfBq1bZCslCAGS
E2fAKchTkZcp7JRlbPf/Frc0PSewxpRq+Z8Buo7RBLHmO9OhuO3IGhuQXVCfHhnb
pY0/zT5uxC0t9yXQrBPmJF+f0Gy8lW3/mABs9/B4KvN1s4G/A5gyu9y4lil+chNX
FDWAOuiKua7G/AF0K7en4dY9+ecqthEsybJ4086UspWBVd0xvThJYb1MJzyPeEuj
/JP0pjY/leQZTZG7de+oZtml6Z+50jCiTjAVMapBq1ntvdrtoW3julc8dU298cbo
kiJ6SXbpCglZ6K8YUNsU+4JbUpCYSuUdWrDt6zf11feXP7hSacQMnmaLIOs7Rbko
D3wGzXGvM00N3J7+rJLAHvJggRXRHs0/EmM990u/uaUEAb6Y0ceK3ad4boDgX+zX
rWuoM3tYD8VO6xfp9+tDPZPHoO3vkuse3B1BEE53ZW8wFxqdRDy2mHl3e0VfDqlG
40vNGgbkoUIBDgYHGnfXo0481ijr3sfkbfpZl/dsmzwXlr+LMHgfYp/VfJdw/hJb
X1kUGzOXp8ZdQPPj1i8YmYnhZYfgvklsrlerI3QoaveIcrudJF4=
=UTXY
-----END PGP SIGNATURE-----

--xgyAXRrhYN0wYx8y--
