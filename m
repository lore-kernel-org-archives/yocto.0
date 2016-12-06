Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5471E00BB0; Tue,  6 Dec 2016 07:44:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.210.196 listed in dnsbl.sorbs.net]
Received: from mail-wj0-f196.google.com (mail-wj0-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89475E00B8F
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 07:44:12 -0800 (PST)
Received: by mail-wj0-f196.google.com with SMTP id j10so17230217wjb.3
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2016 07:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=n87KUAzNNu7kKulrcbuIazOGUT1W4dWWXJXzgN1Gxp4=;
	b=IQ4RvuAiGOMzReB8fvjJs/Hcd3WPUSzyQbmVndex2HMpjzyMrwbMObr+NtwVQqDfcv
	zhI+M6AIrJTC/sSYIvfryN5A0ykSwybqcpWKJO7++HKsqWcIXTQ3Xkkk2fgF5CeoE6Qh
	jIoPVEbXo7Mj8ZvfSxKIIGxFf7p9bNN+sGK20iZPXdMLQ++r27zlJw1TeRHAdFQi6XpO
	x+9YKuoanmEsPErYtlR+ZjutYOTabxzwB8F87UMOObz7yyCh0tBOP0eQQ2A70Qu3nkRM
	oyWPSoVPtanskZbqADoAHYrR7i8FtbKewLLd3cnTLXnCcywEtWlbvUtvhU+hmy/sArrS
	iWbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=n87KUAzNNu7kKulrcbuIazOGUT1W4dWWXJXzgN1Gxp4=;
	b=TlCyDgAIGBvzhSHSEr8sWJy6cBPNW1aDbuTRPjm0tqYLJbmdp6ODr2QGLNpbcAroUQ
	IcBbOVyqACNObBFsrzZX6H+Aes1n8CbgAvtZZer8+pnv6uE0Nv4K78qF8/HUBCuCFFcP
	5Zdkjm9g4ooKEOfOF+uKE/cmF6uuxVa6J5KyCiS2si32uOyM9Yg+j/7h40tO11JmUnK7
	Ys2SUn/iTIxDguC6UVWFXNnaHKGPDkSNlYFyrQLJxDcT2HlyC79WEX9yjo9M38thm+WX
	Lr3l9sHJc2cl019uUykW7GFHx1kXoqKs8/rrtXtbq0SPGPFhZe5rOFTuRe4//tKg2LC+
	Lbgw==
X-Gm-Message-State: AKaTC01JR+YSWpnlgEnIYMRH32CCz1rcbwuqL3vwpaEEMQaASUKCLX/uHQ+r6ggl3zXO7g==
X-Received: by 10.194.146.131 with SMTP id tc3mr56593805wjb.129.1481039051617; 
	Tue, 06 Dec 2016 07:44:11 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118])
	by smtp.gmail.com with ESMTPSA id 63sm4660049wmg.2.2016.12.06.07.44.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 07:44:10 -0800 (PST)
Date: Tue, 6 Dec 2016 15:44:09 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20161206154409.GB1636@carbonA>
References: <20161129160459.813-1-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161129160459.813-1-twoerner@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi_4.4.bb: upgrade to 4.4.35
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
X-List-Received-Date: Tue, 06 Dec 2016 15:44:25 -0000
X-Groupsio-MsgNum: 33316
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uQr8t48UFsdbeI+V"
Content-Disposition: inline

--uQr8t48UFsdbeI+V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 29, 2016 at 11:04:59AM -0500, Trevor Woerner wrote:
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> index 19e8552..35a72d7 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?= "4.4.28"
> +LINUX_VERSION ?= "4.4.35"
>
> -SRCREV = "5afda48c3408e15742d4569459a4ff668e2857f7"
> +SRCREV = "5d765c8b5782de7ed49f623c107f1b395429b560"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
>             file://0001-fix-dtbo-rules.patch \
>  "
> --
> 2.10.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.

--
Andrei Gherzan

--uQr8t48UFsdbeI+V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYRtzJAAoJEHO76Gt+erfPsmIQAMXP3c1H887uKckM3v5niEix
xpQNek3p55+3BDU5nFAZu3YR+U7vEzM3gI8JpgH1ld8rxV9ldFjVMmwTJZ6qHsSz
yVCJcs7ncv1RQvh8xIx9EZkDTz5rwmVlV7B/V93qJ9ZZJwVVsgBAnnnF8gRsAuRd
CGKhtW5LDwClAtc/FvCFnSL6ub8IcCGXV3V3CjwrcK6i6Fkrpm/bWTEn7Id+b+eW
K3oqwD+rSYW8gx6bYm+ytmC6k14I+o3DByIfFaehC05VFhpWyHRh6k6QmdjyQzMo
L8mXa4dw0jGcf1iQSHkE+ecYPoE5yItiSbWZlWuuCqU/EOL5BZEImKvyf3GyOJe4
jt7/GAkbRWoulfQpBklsTGewwJPPupK+sREg8yt+WF1Ydd/NfQNDgRC7hvvHJDJK
+7EfVeoSbO+3HimpVjjCz9FDr5gsC1oRi/P4cIPGbaw/gRxTlqPyaD4OTwAHm+83
KMLklpCUk6ASZMgaNgAIUeOY7bL45MCzboaf+GKT4cC+kKKXWJx0c8aJOkwACJob
IrdRPXzl0zozL+mhZUNJqCc1Ga+5JH25plgIsZ27uWaop47tuaH9vsMmLKMd8Py3
AQ2WfwhNqF8QT78ZGRYFtPLrcd/9Z2L+EcBezjGPBqGttKjAt8p1W5wRQlcTrP1W
RQqodv/ZWkxslnFSPtvm
=liC+
-----END PGP SIGNATURE-----

--uQr8t48UFsdbeI+V--
