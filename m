Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57CF5E0071C; Thu, 29 Dec 2016 10:52:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BE52E006E3
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2016 10:52:16 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id u144so67716457wmu.0
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2016 10:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=t+1gMDbiuW4FILc1hpK2SAlVCJutl3qqrscGbug9JYc=;
	b=ZNqC66+SrjfP1HvPWL0oMSkV6Ueg0jb7ffIFw0VfJtLtkzQe3KNgypD5eZQjiv2SQW
	QuV3BxJ3jNMWMON8cB/8PYCpSJa7JNkF5rJt0UiLsI0YbcfCph6UChv94KXgV8OhSdJQ
	TzBqUWHLmzUV31EuusFUIrmTSmIuzs7/rez+NKiQZKcOX8kWc9X/mPDxnN/uqJDaCW2y
	zYTOM4kX1EUZstx/OmA67hDRDgr7aqi9tnL2hBm3b+ynUd4KhI1tYhXI6Ju8mQyM3v7+
	mcuprZY6QbWIKdCesvYS4B8Jxib6+wY55XkdwhSsMzr1664GD90jj162mOeyi4lSazqx
	IYXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=t+1gMDbiuW4FILc1hpK2SAlVCJutl3qqrscGbug9JYc=;
	b=hNxo30iS6VNB7Gi2/Ktf4oMi3eRJIPi6lIdIEXIPAl066pMLRYHSF8ObcyyenMBW0o
	cxk2eeVuUsdPxkrfxAwC4WbHEQwd19v+rYhsB3EGz0CCFkOEKpcChibD122yfAfurelQ
	VckEDOlwPYG4ladilaS3ER2E1THSvTDbivFfwQvKSKogd///ldYycMIb3SLRxwzZciB8
	cCL1PlZhetqbiVP4KJrAAI1nwXr0Flyac2gKg51Ro3rE6jp2E1y3RXiLtfSQYuqQZ09j
	30Wy3uFfJ7O+KAdlRKKqtUaNfeSa90cOZJrpnl5hw69i64Gk20bm7AQg8kcCMj/f1GzB
	HiIg==
X-Gm-Message-State: AIkVDXLoH01iPMwD/Foml+0Y4khST9KN1FKSpynGE1JD2y+M8R+oPc02PkYuexW82zR1KQ==
X-Received: by 10.28.159.143 with SMTP id i137mr28156950wme.75.1483037536014; 
	Thu, 29 Dec 2016 10:52:16 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118])
	by smtp.gmail.com with ESMTPSA id 6sm69948418wjt.5.2016.12.29.10.52.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 Dec 2016 10:52:15 -0800 (PST)
Date: Thu, 29 Dec 2016 18:52:13 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Andreas =?iso-8859-1?Q?M=FCller?= <schnitzeltony@googlemail.com>
Message-ID: <20161229185213.GH26059@carbonA>
References: <1481539989-27626-1-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
In-Reply-To: <1481539989-27626-1-git-send-email-schnitzeltony@googlemail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] rpi-base.inc: add xserver-xorg-extension-glx to XSERVER for vc4 enabled
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
X-List-Received-Date: Thu, 29 Dec 2016 18:52:19 -0000
X-Groupsio-MsgNum: 33599
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mhjHhnbe5PrRcwjY"
Content-Disposition: inline

--mhjHhnbe5PrRcwjY
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 12, 2016 at 11:53:08AM +0100, Andreas M=FCller wrote:
> make glxinfo/glggears/.. work
>
> Signed-off-by: Andreas M=FCller <schnitzeltony@googlemail.com>
> ---
>  conf/machine/include/rpi-base.inc | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi=
-base.inc
> index 497dd29..9ce647d 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -9,6 +9,7 @@ IMAGE_FSTYPES ?=3D "tar.bz2 ext3 rpi-sdimg"
>
>  XSERVER =3D " \
>      xserver-xorg \
> +    ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "xserver-xor=
g-extension-glx", "", d)} \
>      xf86-input-evdev \
>      xf86-input-mouse \
>      xf86-input-keyboard \
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Both patches merged to master. Thanks.

--
Andrei Gherzan

--mhjHhnbe5PrRcwjY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYZVtdAAoJEHO76Gt+erfPnbcP/0eu1Pj0uuzVrgxXr8zQC4hh
kKdXK1dO+PE0NcBHLE0QNeFJ6U7ldHSrMDpWA7pfgvAYPlKCdMzi0kI1jGwpUzum
Bb5i+EXyC0rwaK4EFwIIy/T27fzQcZo50vol74Q5PP3hkR4awZsuCAXLEv4yqKiF
oxQc7RSyDdBngZj7LO1BrllljRGoDrUg+IZCQIAjr6jI8uQ0QgqUx2lWYIDCW4eM
aEhplUUimO3AjcVYXw8eoby/t6jIJj15FGdqsEEkvxGuIrKuY+WB0wnJzyYoQI2n
bH2cwZOSNwzYD4sZQVamLcs1QObMAHDnJYZ78ZRPCVQICQkUVAaYzQKnoRBz5dgF
qk1JZ/JA24dTKE706kDtmdXiC50Az8ceWPIIV9ZqAiHYKJQfZHyhDQATtJzeidri
Wu0hToO4cINvLVYYutHrM5otkz7n4AqMITmX9W2R2VTZVxagukcVO7dEiyGBzCsb
yzS8Yj8VlZiMWqVoZlurS96CDYoMvd7WOBpA8MiIhm4Jy6PUFfTaBDUdq9p8yHTZ
DoFpX/JXhvsroxLdrt+5xvYcHsqINuJKvm5o5R9mFu/FZR1HMlQT6cf9BrM5/O1E
kWVTB33q2xOVpt7YGs3oK/yWAN2wmEOqqOG/srU0lbY5pHD3jFmQtxziZFd8uYXM
VXJ1oO5bop1vPJ+ijAyW
=8rO+
-----END PGP SIGNATURE-----

--mhjHhnbe5PrRcwjY--
