Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BCB8E00C5B; Wed, 16 Nov 2016 04:01:08 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D014E00C60
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 04:00:57 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id u144so10351505wmu.0
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 04:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=STFP3d82xf7h+CvHqoiBicAQgsqL+lyZYGcEn+aBAm4=;
	b=FoIaRlOq3DJYquMNVkNbZME5SECI0GYdS/1ht6iC8W6AwVVYKXQzOHUd9M4HRbtwpp
	4RxEEzR2z/DwoSHqDYYdq5HJY2xh/L7QmC8bTIYypn4QObRywjX/+JoS4sU49B8gzrXY
	TsO6btFMl079+33kY1BRfcnpZaAzJ6iVOBzLcS8cmps+ZYBw9MDXu61sExfJHyKfMG0U
	GXfeGmmenVdgdmCJ2sSzmmz0ouxlg4ObK6WPAmYvqgHzkHhGj2bC67dsKgsSITBlyKre
	kKU8llwt6zOECFf0sTPC2vhogo3tw68rvBcFhL5zeuWgUWOaFJzAYx2KG8oAID1ZU28B
	fb8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=STFP3d82xf7h+CvHqoiBicAQgsqL+lyZYGcEn+aBAm4=;
	b=gxpx75Ckm4YZoOAd9bZJW1Rj6TCiwseWcjXfxoQrmZyO6uMOh74N2DSbJR9vq8+v1y
	dcaGhHHvWEBdV+wk4pNY+wX1ylR6/M3w83LKukqjQ6RwEpQLeLZYGsnJPb5mCi8VQPpJ
	U9comUDN75DMji1thhZ5/6nowCJubY4yPezH1jWqSD/AcGAXGLdbHWc93bTZZHHE2jUp
	3m/xina5okAYHRP4y13/uM0IG8aiuodQZgsiyBEESL8kf7arRQcqTZ4HdJE9mbgD2oDr
	ZLWB47Tb1pffOFfEWxSEZ0VMk/o0B4IxF7xQv5cETgg9eH+kxHYsR3H+oCHtitYoYPLH
	n61g==
X-Gm-Message-State: ABUngvcMA95uDtNue8IrsocGV40Bm7Qsjx0qSogIpJvNMUyZVtnwnfqlKpp02yeaCEkzkg==
X-Received: by 10.28.107.21 with SMTP id g21mr9478390wmc.131.1479297657200;
	Wed, 16 Nov 2016 04:00:57 -0800 (PST)
Received: from carbonA (host86-163-63-150.range86-163.btcentralplus.com.
	[86.163.63.150]) by smtp.gmail.com with ESMTPSA id
	di9sm40112155wjc.37.2016.11.16.04.00.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 16 Nov 2016 04:00:56 -0800 (PST)
Date: Wed, 16 Nov 2016 12:00:50 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Piotr Lewicki <piotr.lewicki@elfin.de>
Message-ID: <20161116120050.GA6492@carbonA>
References: <1479198088-6559-1-git-send-email-piotr.lewicki@elfin.de>
MIME-Version: 1.0
In-Reply-To: <1479198088-6559-1-git-send-email-piotr.lewicki@elfin.de>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 0/1] raspberrypi3.conf: fix typo for BCM43430
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
X-List-Received-Date: Wed, 16 Nov 2016 12:01:08 -0000
X-Groupsio-MsgNum: 32996
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline

--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 15, 2016 at 09:21:27AM +0100, Piotr Lewicki wrote:
> From: "piotr.lewicki" <piotr.lewicki@elfin.de>
>
> New linux-firmware subpackage is called "bcm43430" and not "bcrm43430".
> Renaming it because the test image is not building with the typo.
>
> piotr.lewicki (1):
>   raspberrypi3.conf: fix typo for BCM43430
>
>  conf/machine/raspberrypi3.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged this to master. Thanks guys.

--
Andrei Gherzan

--VS++wcV0S1rZb1Fb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYLEpyAAoJEHO76Gt+erfPI74P/i0TeUVWr1urSWu3qkf1E6v1
lnKfmfpolFYq4iaprY3iZAjPV5tXlLNrZxEAiPCPNm2DGxcQ20NJ5k+gd3U8Dz3G
CN7oq+UvPd0lKFML/RB/xiqjM+2fbERxfpgSQRyeih3bj0An5EgI7lFnRM7Bx7oI
S/ZTPpxxnlB+3Hn8kS5yjIdPiXeAqRUZf/cxwnO/yYCD3FXHts28bzOumHhE1/Ls
/pq2e0EYwoaB93Ir1DAPLrUhu1hDZUi0ny5BqSqo8WRGGx++0DyaUEXix2M4Thqa
CXqSQirImfL3yVcJ2qqbfaL5jzfJAxdevehUbBkRWHBeTMfeREgP38jTHNe1xGbw
R5NHMzf7mp7u3FpISWGXMctcribbVSar3hWUbpymy0uRageksIqhxsW+1+y4kM00
k1r0k0Aney9w5eLTlfcDKH72tpYsaeZHQyJjTosz4+Qhu/oaaC1yHQghy4fWOo92
CGQsa2uymJOJBsgVuMwVtHVqbUCRYzMQxIv17y2HWrxbMDT1BUYYKY7Jja6iZuI2
rHWvzhhPMgCcULlNe0DDHSHKHt0NBoN/Q3OjbaXJEmn3XPJO6FhQ9PC3TR5XUXcK
jwjfXyzdOMthumNF5SQZ+/rneu/WrlSZIIlTojVmBVmiGUQIJZbUein/tJJ3K1jU
Zkx4mq18jYV+u7g4aS6l
=/wG2
-----END PGP SIGNATURE-----

--VS++wcV0S1rZb1Fb--
