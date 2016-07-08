Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C2D5E00E8A; Fri,  8 Jul 2016 04:31:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98CBCE00D52
	for <yocto@yoctoproject.org>; Fri,  8 Jul 2016 04:31:54 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id n127so5751305wme.0
	for <yocto@yoctoproject.org>; Fri, 08 Jul 2016 04:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=SrfFyVif/+4WrBMZJLAB+GwvH7o0+tCSjJxY+Bv4IRk=;
	b=Ym95cT+M6jhGABEn3478vxqXuLM4NTQsARAg9SsLx2Zdd9qpLZzbeLoaIlo6Z2CAjQ
	pcYYkgeChCJY60r7+vdXPo7vi2mKfNXglcTTPkV4dejLSWeky/dxjl5f+LrA18B5Np2w
	t82PPqXQldSGWxNQlWgiT7rDGImdIX01kDRT6B6l+BFHT7I+YxklcUEUTFrRDMKIGh6D
	05s++5Vjhhlo02Xq8QJHWjdCeWiCHoKvWR8hmkRH6jqSbSCJjJFWlwaCdhDowiZhcwwD
	SES20YoCN2pdvCEysq1PXLUv2gn00RcQY5MOx0/EUBlH+yPXeqC5jHYBxdN6JUqhe4N3
	cvGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=SrfFyVif/+4WrBMZJLAB+GwvH7o0+tCSjJxY+Bv4IRk=;
	b=YniZClOZHf8xJV35FQYgwR6aCqGCENw+jTJ4vdjJd4opNPzkaEdhOuEiebUq32rubC
	El529bQBC8IBBZURETzKbIygHR0nAuIqXFOAm2utxJLJr+Iy4BUaSYxyvhhTU/bQedDk
	LhsD6u0G/eZYcQqTAL0Yuf/RkGZ0GYGtw6kfvkPsknxs673jkQY3tW2NRKoUUb3OYGV/
	MN423WaZdB9uUZqiL3y3NwBlq5+GwYDOQy4UmbbIrlJ1L36AhfNzywNQhr3ZNmnf4CKl
	s5+zdoZaFns7IGx8Y87Ukokzr5q4OYaLi0tfT9b2kV5wNIefP2YSz7/68p2DW4BaTqev
	t3Ng==
X-Gm-Message-State: ALyK8tI+fCmHHJL82BljdBwvghqqUfP1bMzQvVpwxDHMIAfCQS6CAmQ/5Qxdq90LcgXyFw==
X-Received: by 10.28.20.194 with SMTP id 185mr3153327wmu.0.1467977513719;
	Fri, 08 Jul 2016 04:31:53 -0700 (PDT)
Received: from resin.home (host86-179-71-94.range86-179.btcentralplus.com.
	[86.179.71.94]) by smtp.gmail.com with ESMTPSA id
	x194sm2590382wmf.13.2016.07.08.04.31.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Jul 2016 04:31:52 -0700 (PDT)
Date: Fri, 8 Jul 2016 12:31:51 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20160708113151.GC14479@resin.home>
References: <1466248026-4838-1-git-send-email-paul@paulbarker.me.uk>
MIME-Version: 1.0
In-Reply-To: <1466248026-4838-1-git-send-email-paul@paulbarker.me.uk>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH V3 0/4] Drop rpi-mkimage and use upstream u-boot
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
X-List-Received-Date: Fri, 08 Jul 2016 11:31:59 -0000
X-Groupsio-MsgNum: 30953
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rQ2U398070+RC21q"
Content-Disposition: inline

--rQ2U398070+RC21q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jun 18, 2016 at 12:07:02PM +0100, Paul Barker wrote:
> Following discussion on the Raspberry Pi tools bug tracker it was found that
> rpi-mkimage is no longer needed with recent firmware. It can therefore be
> dropped from the layer completely.
>
> Whilst looking into this I also found that the u-boot-rpi recipe in
> meta-raspberrypi can now be replaced by direct use of the mainline u-boot recipe
> from oe-core. The 2016.03 release of u-boot supports the original Raspberry Pi
> and the Raspberry Pi 2. Configuration of the u-boot environment to directly boot
> the uImage file on the SD card must still be done manually - I'm going to look
> into making this work by default in the near future.
>
> Changes for V2:
>     * Don't remove linux-raspberrypi 3.18 just yet
>     * Drop move of PV setting out of linux-raspberrypi.inc
>
> Changes for V3:
>     * Rebase onto latest master
>
> Paul Barker (4):
>   linux-raspberrypi: rpi-mkimage is no longer needed
>   u-boot: Use mainline u-boot recipe from oe-core
>   rpi-mkimage: Remove unused recipe
>   sdcard_image-rpi: Always install dtb files
>
>  classes/sdcard_image-rpi.bbclass                   | 42 +++++++++++-----------
>  conf/machine/include/rpi-default-providers.inc     |  1 -
>  conf/machine/raspberrypi.conf                      |  2 ++
>  conf/machine/raspberrypi2.conf                     |  2 ++
>  recipes-bsp/rpi-mkimage/rpi-mkimage/License        | 25 -------------
>  .../open-files-relative-to-script.patch            | 17 ---------
>  recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb         | 22 ------------
>  recipes-bsp/u-boot/u-boot-rpi_git.bb               | 29 ---------------
>  recipes-kernel/linux/linux-raspberrypi.inc         | 20 -----------
>  9 files changed, 25 insertions(+), 135 deletions(-)
>  delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage/License
>  delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch
>  delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
>  delete mode 100644 recipes-bsp/u-boot/u-boot-rpi_git.bb
>

Merged to master. Thank you.

--
Andrei Gherzan

--rQ2U398070+RC21q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXf48mAAoJEHO76Gt+erfPsUIQAKgHH0ktnxPNbAEFihRZiQ0x
mkPJa5/Dcj1loXKqj1r6rLhDyJOlTSRdNtgS6U8fTYfkLrQc+ZucV4Fq//zQCAMu
OyYk6cQHJdBizZHcGqkC2vQKm4eRNIIXOuXkFQldoR2HAo2PMpaBu3trHyQWupRM
A3VOoonQT29aBlO0EYeA/F0NuwjCEI1QWj6ZZ25QbLK6RstwqJKmz20cwr+Fxm2A
DF1iXn3xUcSidHgNHe3vJthGIOw5jE+yBwuZ0SuJvUI4bEiY88/QwsxGYebGNw6a
uFfJzNiC2/148mNHpmfBqNr3rH+3eDvNIdHNI91SeAUeQ9GZw99R6yvowcfqVdKu
cb9vcmei685ZboIpbmz6ps0vsvyh/KiBwPbKGS4Gem1EbHitmyn0yfFcs/89ArPT
F6zqiC4zly3cPpqrI/H+6v5UCCbMpCQEhxITrfVamkZLW/SPcu/24fP83xR0iFz9
07kdD2Nf19+v7LRVQW6Ro4NCTqxQhxvrTWs5qEd0Gn8Gn1kBwlSDlcLL9B50QGlW
aIy9QHwFadXeRI90q0NUX62FKNm1unROS1K1JV5HcJZZ8Mm1Z+vhsoiTZU9qHTdn
P2o1FRmuQGMaspJ7hqDurx5gqHwnQFZPe4JUiuvN0e1vT78bt+2MvjfHz0oeyhBm
4sdeKIVevKiN/bNagvTe
=DMeC
-----END PGP SIGNATURE-----

--rQ2U398070+RC21q--
