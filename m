Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BB39E00E84; Fri,  8 Jul 2016 04:09:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 019D1E00575
	for <yocto@yoctoproject.org>; Fri,  8 Jul 2016 04:09:15 -0700 (PDT)
Received: by mail-qk0-f195.google.com with SMTP id 82so7530418qko.1
	for <yocto@yoctoproject.org>; Fri, 08 Jul 2016 04:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=0n1WxvNnProf03hF30XjY7vNjxP1kWI3HUt5bkxumUY=;
	b=JRJQ3H8r3b7cNShFBYdr6HDBG3XEI4JxtrkI7J1owNYOOsv5OLwusNi82XOIjVcq8Q
	6R+UNrpudsetlcT50nRYK9Nu9poBZOecUbjQIG09YKjWJQolra6h+Gg+tlPGfmmj7j1R
	T5e4IyHLyQ6ldgDT3oxZh4lZ0Jd9wHMK2gq4cExdTBcrXttzABJhPqwZ3RXu2euz0LYv
	Aqp/A1WRJJ+G2XoYLXrZHr4SKTENJiOONbaOlwE2V75AxOhkkwDTenB2ZB6gpwHFWxfD
	9eeNGQnYZXoKYkuduUMp09LR0gqm56LV9sbj/13lf27cJ2B4HKGFT8/Yc0fQftjebWfY
	J8aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=0n1WxvNnProf03hF30XjY7vNjxP1kWI3HUt5bkxumUY=;
	b=EgdggdXnLNiLgTBwN9nVS1WJMXWXwkWmeXQXz9jbSpYZHq7aAOKeazzssvQkfdEhAv
	yX8CgaHtcxXXt5rhZcgEtBQ4W5cjRwyoBTj2sr0wro8Ul1wBHLemkyNan5ASmXoPqm3h
	KdCQijhCRv2hkslbDATrZMQlk1+k46Sk21QVE+o4/Q1/6kGUF/t9BVjiiaCd1T6J++t0
	IAa4dlj5SpN4GFm3lLNd/dkINe+yd4ShFKTHUL3Hqr3RFU9Rh0Khia6MK6tB4G/K9y1J
	OGi5JkXlYV3CAKavWZZ20LT2wk4gTqkTPzft73oGIaaFhjHBF10g8/V5FRoSR1OB/LiD
	Py+Q==
X-Gm-Message-State: ALyK8tIMCLCFm8oe65URmeUqPT946s5uGgSuv75lh+tgZCrpn44HsIls18xP2e2nCQ5Qyw==
X-Received: by 10.194.5.40 with SMTP id p8mr4837844wjp.56.1467976154281;
	Fri, 08 Jul 2016 04:09:14 -0700 (PDT)
Received: from resin.home (host86-179-71-94.range86-179.btcentralplus.com.
	[86.179.71.94])
	by smtp.gmail.com with ESMTPSA id q69sm2518789wmd.4.2016.07.08.04.09.13
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Jul 2016 04:09:13 -0700 (PDT)
Date: Fri, 8 Jul 2016 12:09:08 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20160708110908.GA14479@resin.home>
References: <1465948220-31466-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1465948220-31466-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.6.1 (2016-04-27)
Subject: Re: [PATCH 1/2] packagegroup-rpi-test: Poky moved the license so fix LIC_FILES_CHKSUM
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
X-List-Received-Date: Fri, 08 Jul 2016 11:09:19 -0000
X-Groupsio-MsgNum: 30951
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ew6BAiZeqk4r7MaW"
Content-Disposition: inline

--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 15, 2016 at 12:50:19AM +0100, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-core/packagegroups/packagegroup-rpi-test.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-core/packagegroups/packagegroup-rpi-test.bb b/recipes-core/packagegroups/packagegroup-rpi-test.bb
> index ae16cec..a47aeb2 100644
> --- a/recipes-core/packagegroups/packagegroup-rpi-test.bb
> +++ b/recipes-core/packagegroups/packagegroup-rpi-test.bb
> @@ -1,6 +1,6 @@
>  DESCRIPTION = "RaspberryPi Test Packagegroup"
>  LICENSE = "MIT"
> -LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
> +LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3f40d7994397109285ec7b81fdeb3b58"
>
>  inherit packagegroup
>
> --
> 2.8.2
>

Merged to master.

--
Andrei Gherzan

--ew6BAiZeqk4r7MaW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXf4nUAAoJEHO76Gt+erfPxSYP/2fFITDK5VpKGIQ/UIvucHER
BJkH3pvCopjcMcv2jf1dicH3JhBym/y+uhvvRA2pM412REIZzKLJCJC9xYTMdx9q
YZewEem2GcFAwYj8fV8CMLRbjJxijKZgTpzAEGd5fEW1xLlyek7FTBkmTegCYBHj
Ar565CXVocr3lbMtz/1DQcH+58IF864Igna2QAwKrQfGEfv1t8FV/cisSx81LhjH
4WlkoExB2gYytaltccps4TaxaTWFbFkH1KxKZ5ZS+iGMRS3BBaFaopwH4etEkGd0
qjOXEAcy9+Wv5ovPLUo+8WOtTan5DHKFMMHaxGmHYJuFbK49DhSYUDuqJ6iFCFtF
pV/4mO1Dwaex/zSEq8uzrANO+JVeVWjHKm8BXigUG1WS08MpMTd8TdpTKI1wqC+n
//YTvmZo+GudYVBG3tuGfCG4412Rqx3IcD9FJzVklgX4vbbEbony/viN6yxpymcK
wPlgkREIQ1CN7NynO5q58Avm0NIIpNe0CN89Dqn1rHfkedd8eDzZ9huWDR2/9+K5
25UsaC5JRmBoZR5DrgPtH6mWNvXtQOQx4S0Nl/GP3k0O4K53ptgHTHejkk9YgX0p
uchQkR4LM56cH/JCzHq1KQLBZpEwU983PBQBSXeRGlau1uY+x18W9yo5dkm2ijsQ
dlu52dg6fev0kT9YRMkB
=Ludu
-----END PGP SIGNATURE-----

--ew6BAiZeqk4r7MaW--
