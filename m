Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC036E00948; Thu, 21 Apr 2016 10:43:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2934E00948
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:43:24 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id u206so144467698wme.1
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=mceng4Y8VHEo0xKTCi/zYN1CtGPAlBPxx+yBUH5GhI4=;
	b=K4WPsJ4CakLr+JCEMTjVtrL7olJKtPZWwiVEGGqp50cq9MZxhOIIHGl4HOjg3Dzlbn
	GU7fdqvfRTjADLfaENVWvqLqAg2dnqKdruSpJSZ4wtU1wR3kOXiZAAAXEunWRVNcReTY
	IpT89YaNHm9nUHpAhJ3RjTUkj58fEFioZcPTK9UpCZfEl5jdDEPTUJS/7xPufnsiqtOk
	uMWkTjoYvZHj7aFCHVALF7WNq9vbFjS87i9deYrVxfygI0C/rrYUe/Pm+bfcsFeLKcPt
	Wa1fZWFBSVul+Cvu5X45BY2AeRvabQIY6cG3dKM1YQskYKg4pZEkMPF/aMHxaP73173r
	RTvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=mceng4Y8VHEo0xKTCi/zYN1CtGPAlBPxx+yBUH5GhI4=;
	b=AnXqD8rRiIfXSpXWWJvwt6fJqqHfkYpEnTYyXDH668DwjXORdY2sPyszLKUfAKiHaJ
	D5Fg2wul00YJAOrikigjLVa84awHu46Y/xJXSnjOmhMbwG5t56CY8QjWU2jZKMcA1rqk
	S4YI43BCvt8hgldm+eXifa1d2RSoWeMO9tJmGt6hRHi12KbluY/MuFmYzgWnFRIVCTav
	9/sxmj2t+3Cvwa2Odej+8tXxx9iIP1jI6l2BVt3ii3R5FQmqaprNFC8icpFkBGdefQjD
	wnLRl/DcNT8IOGBrn4tIJv3bT9ZCUr/PvNhdTTKqexOOyOk3ErFWO4whAIMg+bUO7Z1Q
	Ewjw==
X-Gm-Message-State: AOPr4FVufKnGKpF4gGVV3zeC0Hv+Wpg0UPTaXsaRymyvavFyK8MVgCf9fDHsRopQolx7vw==
X-Received: by 10.194.176.129 with SMTP id ci1mr15597096wjc.166.1461260603158; 
	Thu, 21 Apr 2016 10:43:23 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	r204sm15937266wmg.20.2016.04.21.10.43.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 Apr 2016 10:43:21 -0700 (PDT)
Date: Thu, 21 Apr 2016 19:43:19 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Theodor Gherzan <theodor@gherzan.ro>
Message-ID: <20160421174319.GQ1588@resin>
References: <1461259933-1661-1-git-send-email-theodor@gherzan.ro>
	<1461259933-1661-3-git-send-email-theodor@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1461259933-1661-3-git-send-email-theodor@gherzan.ro>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 3/5] rpi-config: Add UART enabler
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
X-List-Received-Date: Thu, 21 Apr 2016 17:43:25 -0000
X-Groupsio-MsgNum: 29556
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="By57YlnFViWR/M0S"
Content-Disposition: inline

--By57YlnFViWR/M0S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Apr 21, 2016 at 06:32:11PM +0100, Theodor Gherzan wrote:
> From: Theodor Gherzan <theodor@resin.io>
>
> Signed-off-by: Theodor Gherzan <theodor@resin.io>
> ---
>  recipes-bsp/bootfiles/rpi-config_git.bb | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
> index 4d41723..6ddf843 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -90,6 +90,12 @@ do_deploy() {
>          echo "# Enable PITFT22 display" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>          echo "dtoverlay=pitft22,rotate=270,speed=32000000,txbuflen=32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>      fi
> +
> +    # UART support
> +    if [ "${ENABLE_UART}" = "1" ]; then
> +        echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "enable_uart=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
What is the default value of enable_uart?

--
Andrei Gherzan

--By57YlnFViWR/M0S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXGRE3AAoJEHO76Gt+erfPLl4P/3EPEkb9DkFuu1TSHy7QO5tr
cKYyfguL0gx72CIHWyEvkmFfOPALwEndJ14ran5QcNL3MEQdvZVWLCfPoaDNpKNq
UXOoWZ5X0UEO27CMm4bkSSp/9WQUQ2MQkNOskj/5pI7Uq6HHKidF2dCAM+NmmWt4
EsED0NFwUGYoarbprpM5y1LadHi8SuOx1nDOJIB/KgjKDHNxyqtt0Vn17hSd2/Xv
DYDWOL16T8AMqvDey7YIP2XPh7DzhcqZuAEbFppEM4k+ZhL5hr5k9ekDPlhM0jWJ
8ydCSMZ6a1ETu94Hse2umSKgsI2ytOX0A5BqxXaMAMRm9WZ9R0NG8HC1lYhVVlgG
zCQi9jl7V9GMIBPnSvnj1xCdG9aVTTR5wWrxLooUtW42lcLe0Wrn4ULHgfaCeY3f
YpaiWI3zd2ikafk1q1cudajpMFsFEs266wTKMBSfivyEJ8uk76VqYqvS/TnAYg4U
JJau/MMWiptJRrzYPW0za1bgThnCPtQ8hLQXbHDojAWl32f0RRIcfh9tcyAFyZnU
pJsmhbTPVPJiaTTBwC/f4Vtj8phabpMD9jd+z9JgsTm79c+hs/99D25Vq8DYGW5+
fEjLSr6Dyjn/K/OZ+iOsU+rZF5aEX+2eU7mvp7MouJyy3CDyjE7LIM0LusvunhAZ
YRzogEdXTzN/cEWmCGck
=KuiS
-----END PGP SIGNATURE-----

--By57YlnFViWR/M0S--
