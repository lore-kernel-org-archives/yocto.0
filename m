Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25045E00E96; Fri, 14 Oct 2016 05:40:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.193 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.193 listed in list.dnswl.org]
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C876EE00E53
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 05:40:00 -0700 (PDT)
Received: by mail-qk0-f193.google.com with SMTP id n189so8488557qke.1
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 05:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=l23X2kcxXarDo2FC1E3VGn+xnyw/FQ1kX/tH6FlDW/w=;
	b=ZD654L7FTvTAU82KNjZUuNeahe2wknq2GM0vgXT/x2w0wxQndwfr4xSvLvtJMXeK2h
	MLVEW7SJdKf8DktSAB6lxaPcqWKmu+xyePDH9+zrannDRrQhKwwIvs7wMuNBBbnUVhgj
	6O8uKf3ysW5mLexD/Pp6s/hEemrE4UyveE3fQskG3ZYOHXP4UwIv4VCtTObhhI03xMlH
	4lwlAy4JIWeQkwX25/BaK+32LZcRWuB/SZDgomynH62HQmktP67KaX13HiCAq/8hYlgf
	wYXg6wGwXpFmWZArbm4sMVPagh16B5eEKL0S0jB0O7m+MYtFreN4o/OPTahPaQvt+Kd0
	QC6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=l23X2kcxXarDo2FC1E3VGn+xnyw/FQ1kX/tH6FlDW/w=;
	b=K+gPiDTDOnFktGmTmMEJECMimWQ6bsiNhq21aLBEU9/j0HxkWKQQwyQ3PpCNvAoXr+
	CdI8QeU21qKXDD2v5hfklsQYWU4uPagi+I1zvrTzYrKJ146ttRaQ66ILazu6JSe664Ci
	uSvFKtLmLmVQ6rdkgp7OqMZqBjsVPPEIrTIf2H96w98s7gdjzSXsQi1BtILcNI/kO6Ki
	Q8bF5KsCM0D64DLDVA+cKyjHB+dg7IZ7BcHXMQz2nC9O8sTJn21gTjVUnOPILl2r3qs/
	TzSWegiDB9Vzme09IfIhnWnFBI6zBM95FR3A5L9lGT9yubHdI/FJQOmSbIU3BGUhMm0A
	1YrA==
X-Gm-Message-State: AA6/9RkNAKiK3WNOxv12Cw28Nmt/XseYeOq9V/B2fAgffh7casT8ecFVwsA7yOHMIr7uHA==
X-Received: by 10.194.78.42 with SMTP id y10mr1880066wjw.104.1476448799725;
	Fri, 14 Oct 2016 05:39:59 -0700 (PDT)
Received: from resin ([88.128.80.33]) by smtp.gmail.com with ESMTPSA id
	bl3sm31581286wjc.26.2016.10.14.05.39.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Oct 2016 05:39:58 -0700 (PDT)
Date: Fri, 14 Oct 2016 13:39:50 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Samuli Piippo <samuli.piippo@qt.io>
Message-ID: <20161014123950.GA29587@resin>
References: <1475574694-25319-1-git-send-email-samuli.piippo@qt.io>
MIME-Version: 1.0
In-Reply-To: <1475574694-25319-1-git-send-email-samuli.piippo@qt.io>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] bluez5: correctly append brcm43438 service
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
X-List-Received-Date: Fri, 14 Oct 2016 12:40:03 -0000
X-Groupsio-MsgNum: 32403
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lrZ03NoBR/3+SXJZ"
Content-Disposition: inline

--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 04, 2016 at 12:51:34PM +0300, Samuli Piippo wrote:
> Cannot use += operator together with machine override.
>
> Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
> ---
>  recipes-connectivity/bluez5/bluez5_%.bbappend | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-connectivity/bluez5/bluez5_%.bbappend b/recipes-connectivity/bluez5/bluez5_%.bbappend
> index 89798a4..956d776 100644
> --- a/recipes-connectivity/bluez5/bluez5_%.bbappend
> +++ b/recipes-connectivity/bluez5/bluez5_%.bbappend
> @@ -23,4 +23,4 @@ FILES_${PN}_append_raspberrypi3 = " \
>      /lib/firmware/brcm/BCM43430A1.hcd \
>      "
>
> -SYSTEMD_SERVICE_${PN}_raspberrypi3 += "brcm43438.service"
> +SYSTEMD_SERVICE_${PN}_append_raspberrypi3 = " brcm43438.service"
> --
> 1.9.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Megred to master. Thanks, Samuli.

--
Andrei Gherzan

--lrZ03NoBR/3+SXJZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYANIWAAoJEHO76Gt+erfPukEP/3c/LwwnzeRdQThkxD29g9bq
SHruBeg+F9t0ByiHEQoXHQ84zdad7m1NwtQsa65RRLvLmJfjk5vGq2Ea+ds8oKqZ
VxYHWlq3FeyK/Z1M2Yu3P++OVxzJMnK4eVD92J+Up1u7MUkvzqFE1J0mENUVnoNF
zJ0zSimcWZDQqmpTddEOPiXhXSEmeJAgVg6VqDcHi+Ve7lpNCfhSRJpBCCD8eziH
ycsyd5u6uZO4tcSBoxEF2yBVSSnbc9oChNMe2N5wrrwy9mAReeowaPw+a7+oeV7m
fvewe5bbHUstKug6CETylBEcf+oORiDqlrQIcpfkFQjD7Rb1rcb3YJi6kZbVxynI
Erih2RHzVsIoL6qu9ymooQmKFo1aKnYF8BavFpHbqvotksuCuJ2HP0FrZO3bKztV
SQDZrSYjPVwDZ+6tNURAZ8+64gku817H4vbcg+37fDfUcu+y/rr1XQUWMdTps7QD
8x+tjo1RDno6RXO9V/7FUkVCK2Fgn/ufF1uzjhVbj8zNMUOPTvr86uK83SphOaFk
wTF+Oc1Zgi4wvuo4uaG2I3dDLoheUqaaj6ApM+Sl1vnZX5sqjVUvzbz8+n4lWVMF
jMlsMwc5LabwKxhn6MG+5jUWNt12MxkMbsZ72Laj/+HlMsoUNXL0hGV/z0LrYXj0
zQXMg/Wj+bQG+liK0Agc
=ALN2
-----END PGP SIGNATURE-----

--lrZ03NoBR/3+SXJZ--
