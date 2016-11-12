Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E08BE00C1A; Sat, 12 Nov 2016 11:08:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM,RCVD_IN_SORBS_WEB
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	*  2.6 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [46.198.0.251 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20940E00BF3
	for <yocto@yoctoproject.org>; Sat, 12 Nov 2016 11:07:58 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id a20so4671877wme.2
	for <yocto@yoctoproject.org>; Sat, 12 Nov 2016 11:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=oSwhra2YzP9Mu5t/Tml8PKDDIvku1qZuBS3a66o6xZg=;
	b=FiPoqlCwLVAFFy4e1HsOW5TLYM5DVIPPzV6QAblRpdSDk7vnqXda3hi4Dk1eikf9ry
	CkCqYyoMLUE/Pkkeu6CWQfVp1qNf6OyMrc1Ks+QY10NYocnaPb8Ii1eAQB6ZR3P4wiwJ
	mMadIHK3zVnrDfJUexGT12V96OyqExsJ1Ps/qILYh08vExZLwpQNwSOQLr9+yQWeNj7i
	1akaiQ04taQxcj6aw0gYuYUa9u8/OEx9s1G45Ph1go1Un9CGK5BJp9Kg5qHD/8jXED9H
	nBjWbhb5s6dMIR0/Sf3Oe02B1eP+bJlWQhZJq3vtwFib879/v27qOVDp/P7k+GEYYjPD
	oUxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=oSwhra2YzP9Mu5t/Tml8PKDDIvku1qZuBS3a66o6xZg=;
	b=TKUF0fl4FIj5IZmTh0IjjaX1mt9xb5n25CBThSpU6bV/nSUNd+9b0/oi8w6hVK5cjh
	84PocyBsQyD/Zdavh8rreVWPr8Br7ONNP5NgT+yb1rTajce5oEH596PmLrZ4WV0slp+C
	zek66p188vW9JnArslxCX0lIZhXE1zSos78Nl3gRHQUGsKYHgXUMlMVQNPXuHQtHbpWJ
	UAXM4+j8XKGlEz1P4NBQ6+gX6SkbSuUH9AMOqkhz9TZAuNrbNCK3r5MAKhjAXP/Ol25T
	Mh2E8NXfUBfjj2+2sO2RtUbfbxafP/X/qad7f0yGILqk2JG9sS3sUgtopWe2+KDPe77t
	pDYw==
X-Gm-Message-State: ABUngvdlYjvRP5HRcCZlA6s9ckCNamK/6bngYGJASMPhOHC0LcGzf5Pd7ehLMglcjkjtrA==
X-Received: by 10.194.133.233 with SMTP id pf9mr15604634wjb.15.1478977677847; 
	Sat, 12 Nov 2016 11:07:57 -0800 (PST)
Received: from carbonA.lan (46-198-0-251.adsl.cyta.gr. [46.198.0.251])
	by smtp.gmail.com with ESMTPSA id
	n3sm18387456wjq.34.2016.11.12.11.07.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 12 Nov 2016 11:07:57 -0800 (PST)
Date: Sat, 12 Nov 2016 19:07:55 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <20161112190755.GD32346@carbonA.lan>
References: <1478080321-19857-1-git-send-email-piotr.lewicki@elfin.de>
MIME-Version: 1.0
In-Reply-To: <1478080321-19857-1-git-send-email-piotr.lewicki@elfin.de>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 0/1] linux-raspberrypi: remove not needed bundle_initramfs_append()
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
X-List-Received-Date: Sat, 12 Nov 2016 19:08:01 -0000
X-Groupsio-MsgNum: 32955
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZJcv+A0YCCLh2VIg"
Content-Disposition: inline

--ZJcv+A0YCCLh2VIg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Nov 02, 2016 at 10:52:00AM +0100, piotr.lewicki wrote:
> This append is not needed anymore and it breaks the build for the people that use initramfs, because the path to
> mkknlimg is wrong.
>
> Resending again because it did not make into the master.
>
> piotr.lewicki (1):
>   linux-raspberrypi: remove not needed bundle_initramfs_append()
>
>  recipes-kernel/linux/linux-raspberrypi.inc | 13 -------------
>  1 file changed, 13 deletions(-)
>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged to master. Thanks.
--
Andrei Gherzan

--ZJcv+A0YCCLh2VIg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYJ2iLAAoJEHO76Gt+erfPoBwP/REnRXeZTyksL1f7dMsTUG/F
MerdhpU+tMxDsQEZ3leGH0VbBIAQydv62g12L7cqb4PG+2s909iNzctZrrQhTbcn
LmmiQNFRrC5faAAnXT03aGy14W9aMQL/4RYara4igxVS6+LHD2IdwOXfVSw6IJ+T
WQGltRjl1wwte8fFiK6Anr+0vO8zRjzVqvcpGG4jAn4w+2GFCl8nzGzmRBhAs/PX
j2JxYu1Vey5dnTiU9MERnY/rUOfPIMPDhwJUMhfqf1RS4nGd/6me5OvyoGULHJ5X
9/sTErR06ixmqqTTKqL0GfOofFIhLk2ynhWvRlJk0Y2S6u4OsGk73mabIdZpJXbx
HwZCm4hunKiBT3bH/ExE4Zco8q2mSjN17n7mN0/qMJJI3V75YryEsXHiXdl/9T6N
FkHOWa+M460V0niTm+rvUKOcTd9AbgFqB+451dFQ58lt2mRY3ZrmWXSa+rLXmbKB
585XPTibCBilJF6oTSINOo62hDa5SubqB0JlftytSAkfswUlyJZogAczwDNvbZmP
erS8o5292NQZV+jPA+boWVRolR7hzZSG5Np06IE3ldomlwNqu8FXTflq+Wj8GYkv
EMNi6tX/4XnI6sjh1Tt/ANKT4ddD29Il6qbhElGcPVhw1RNVDSowz225QAV7A0HA
m1tCWWEgTjOf3qj+aCVQ
=GYf5
-----END PGP SIGNATURE-----

--ZJcv+A0YCCLh2VIg--
