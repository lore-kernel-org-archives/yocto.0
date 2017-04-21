Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63FB2E0095F; Fri, 21 Apr 2017 09:38:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D2FBE0074B
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 09:38:10 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id o81so5876347wmb.0
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 09:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=0WwNshupi+/sLzXnxbIRPqCTl8YaXiY4jyMNBz+taAw=;
	b=vlJ0XIdJglQs9JlW/feLKgfBkqdu+YbYM/4hbvw3d0Mnn/GiUPDeDA6f4FDyXrzmHM
	+1WcvbIYqkoVWqodCCYgErND2HVHg3teKlpMkYm4k3yiBw5DmH99F8AzCcQmFNdDavP4
	p7g9EsDw03oN5hQXmGr6P4v359jJkUAfqwmpuhRBB1D4gIV28FK7TRlK8442YlFkD2M9
	+13v1v78bV7Hl6l5R7Ji/AUfbv2G0dwRLP/HchkEOfka2LUTSn0DN3bx1AngShV1aAej
	GO8LqACTjzLJ0Rrfs6Otoe8MB5abLWAWNmaKCQUUk4eFvP1o2KuvHpvz9XWK2chYZYbj
	2EAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=0WwNshupi+/sLzXnxbIRPqCTl8YaXiY4jyMNBz+taAw=;
	b=SxjBaRo2nDfXSe7Syi9y1ZTbSlxJhhn06oqdOc5lWGNmPcR2yMtOUG/gzkmjocggrW
	iyuUYikmSWFrkc2iynB+PRfU8yZRzu1KdS9ZXb7T5n3Ze9DT1+OuEraG1d+uRLIO6bTr
	xQnqDhEzLxHiHM09LekjpGy2ngihHNGMgzyL+syCOJJPPAujHSY/hBdUyQGLQGj0YyhE
	4usgduFJm3+lTdLrYUgGdqwjqgP+UyJfrWffJphgi0s8SX/9fxrod0bUdO8bBjCV/Esi
	LX9L6b+O3seCES0eaceoig4/chHl49sxlfgusAlylFvkFfbvNt16ZKiWFlaYfHT6HR4v
	kk3A==
X-Gm-Message-State: AN3rC/5LiND+uB6FU4UjUHm2wiv1KONr7bTlzy70ttFjJtIoQeKiitaE
	2T/SzJGA4D5UCA==
X-Received: by 10.28.161.66 with SMTP id k63mr9099993wme.46.1492792689785;
	Fri, 21 Apr 2017 09:38:09 -0700 (PDT)
Received: from carbonA (host86-158-8-191.range86-158.btcentralplus.com.
	[86.158.8.191]) by smtp.gmail.com with ESMTPSA id
	92sm12230175wra.18.2017.04.21.09.38.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Apr 2017 09:38:08 -0700 (PDT)
Date: Fri, 21 Apr 2017 17:38:05 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andrea Galbusera <gizero@gmail.com>
Message-ID: <20170421163805.GC32138@carbonA>
References: <1492763872-21212-1-git-send-email-gizero@gmail.com>
	<20170421160440.GB32138@carbonA>
MIME-Version: 1.0
In-Reply-To: <20170421160440.GB32138@carbonA>
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
X-List-Received-Date: Fri, 21 Apr 2017 16:38:13 -0000
X-Groupsio-MsgNum: 35722
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="JgQwtEuHJzHdouWu"
Content-Disposition: inline

--JgQwtEuHJzHdouWu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 21, 2017 at 05:04:40PM +0100, Andrei Gherzan wrote:
> On Fri, Apr 21, 2017 at 10:37:52AM +0200, Andrea Galbusera wrote:
> > Building the stock wic image for raspberrypi3-64 failed to find dtbs listed in
> > IMAGE_BOOT_FILES. This patch updates the make_dtb_boot_files() function to
> > account for dtbs listed in KERNEL_DEVICETREE that do include a path prefix:
> > this is the case for things like broadcom/bcm2710-rpi-3-b.dtb (the dts dir
> > layout in the kernel sources is different for arm64). Use the same approach
> > already used for overlays/ dir. While at it also fix a typo in dtb overlay
> > code path comments.
> >
> > Signed-off-by: Andrea Galbusera <gizero@gmail.com>
> > ---
> >  conf/machine/include/rpi-base.inc | 9 +++++----
> >  1 file changed, 5 insertions(+), 4 deletions(-)
> >
> > diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> > index 517d5ba..4a0ea2a 100644
> > --- a/conf/machine/include/rpi-base.inc
> > +++ b/conf/machine/include/rpi-base.inc
> > @@ -61,16 +61,17 @@ def make_dtb_boot_files(d):
> >
> >      def transform(dtb):
> >          if dtb.endswith('dtb'):
> > -            # eg: bcm2708-rpi-b.dtb has:
> > +            # eg: whatever/bcm2708-rpi-b.dtb has:
> >              #     DEPLOYDIR file: ${KERNEL_IMAGETYPE}-bcm2708-rpi-b.dtb
> >              #     destination: bcm2708-rpi-b.dtb
> > -            src = '{}-{}'.format(imgtyp, dtb)
> > -            dst = dtb
> > +            base = os.path.basename(dtb)
> > +            src = '{}-{}'.format(imgtyp, base)
> > +            dst = base
> >              return '{};{}'.format(src, dst)
> >          elif dtb.endswith('dtbo'):
> >              # overlay dtb:
> >              # eg: overlays/hifiberry-amp.dtbo has:
> > -            #     DEPLOYDIR file: ${KERNEL_IMAGETYPE}-hifiberry-amp.dtbp
> > +            #     DEPLOYDIR file: ${KERNEL_IMAGETYPE}-hifiberry-amp.dtbo
>
> Looks good to me but this seems like a typo.

Scratch that. Looks good all together.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--JgQwtEuHJzHdouWu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAlj6NW0ACgkQJrqo2vax
FPZY+g//TEf1C67O2S1PdtpK0+EZ6OTZY71WJfYPyVHbOr8CXsiL7EVplDgmuROQ
ahW1B8B6lwqKsJMqUxQgJHBc08SMrWZehwgJLleSqm66S8PA5ZZogA0f4C5qLR00
z3jwl80ZpIP/PpH5PfIF2f1+w4YitjzLWdvn31zG4konNY2vyOnUlQX74ceYFHtM
KOR5jouwpFmvUp4kKUDNQoOyyyY10DN37TECYv9catRnByDj0x/CnZRRYzhpZl7g
CHXQ/jjZ8Rn6zckJcOeE5P/5kpDcAA75kVha1VuvIR5gTQBTUOZwJw0lavk4nwjj
JePineXu2yYzrWoQyKYrP+1/+4XzDGe/2S+anMmVqkMRApqlNETLUzgEI/4D72Yv
knkj/Q4ita/UjQeVDTaj4SyCPE6B0K3/lbcmsOGyAjGgIonsNT5JC7qzyct4fykZ
BRGT0t8oann7h12TlPS4i6pkFscrvdcbUmYDNJj0NVrtbBgBZHp3ceI0fDVdljp/
VSVgA5Wit2EOefWgIsPTDBLcTkw+CJcGqM5Ig9QGPHW+wRG9cr72WJRYU58/UoEx
eVwdjG547ZccVoCJuFFRR9qgnikTwawFePAf5UERUA02uvqk6vvh8bDEkRV5f2KH
uTAw06eEBxVILAeG6bRinb7eRIomCSABIQyw5JXpDm9U9dytyGA=
=gPCa
-----END PGP SIGNATURE-----

--JgQwtEuHJzHdouWu--
