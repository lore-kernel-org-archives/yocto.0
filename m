Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B296E0045D; Mon, 31 Oct 2016 07:47:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 666FCE00404
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 07:47:18 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id m83so18726841wmc.0
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 07:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=jeu21fMn003OrY7hYClTeyafyXU6egGgzneUmCPtj6E=;
	b=e1GZjEuYpLsaRrttiha4VFhe0sXnhzaSDp21DZ5VoyUFSqJlQxtjiKF6s8K+18TYFr
	5a9pz3sK1u+TcEun7SSmRKGmqEZ/BHieK8LGdBe3+7f4klnxh4yCNbf1APLVFcgkyUkZ
	VcIW6JEIIlDgeR9x9n9UuS+CxJogC/asSTVJ/7KldI5yYdO3ggZRypyXA6mVcTs+y29K
	764+WCT8QtO9Q3O2fKNh7SPaJ1jEa7N743vF9FdF6Hze3sYDjOuT50DxZwMcS+h/7ZjH
	OUNWK77dIfWRyZ2GOM+kxYbaobFc5WJ8/La8gHWA9aSGOLMP68d1kSc6dTmSk4n0KuJ+
	Geaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=jeu21fMn003OrY7hYClTeyafyXU6egGgzneUmCPtj6E=;
	b=kYMCa0EH/BJsLOgjVD50w1KMJ95Bs6oWjMCG/ew/ALL2lCQMgEHxZ972JO/f6zy9Ya
	3HTAKZIDVcZKyUAe8F6bDP2vDBfzhVHcje7GGWAULVFNqUmojDFjR2V07G3VGPAyFT+c
	IpOuSnf+Iwx4+tlwQ5utocnJqaiXCRXBgxg55vv+csTYxF7aV+3qY89VEZmgzNWB7RsG
	NOgAs1SwkVZfVXV//fp5CmEiiIDKvd5Dy0NMBUUXguSJ7SCahPYrDUVqwO/Et+MYTLD3
	x2dSWMbhYpI3x6O70VTRGBiEEZzN1Nd+6yOV0Tk9dbQ8bn+hpmmOm09x4seuYB2vpWgt
	IKYg==
X-Gm-Message-State: ABUngvfgME0sc9vpScAjBhHD4xblKBhkM396pYcY759WjfWX27OljcFEtoQnPep7j5wLWA==
X-Received: by 10.28.191.142 with SMTP id o14mr10328275wmi.124.1477925237030; 
	Mon, 31 Oct 2016 07:47:17 -0700 (PDT)
Received: from carbonA (host86-163-63-150.range86-163.btcentralplus.com.
	[86.163.63.150]) by smtp.gmail.com with ESMTPSA id
	194sm25029609wmj.20.2016.10.31.07.47.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 07:47:16 -0700 (PDT)
Date: Mon, 31 Oct 2016 14:47:11 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Piotr Lewicki <lewicki.pk@gmail.com>
Message-ID: <20161031144711.GA3276@carbonA>
References: <1477921355-2524-1-git-send-email-lewicki.pk@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1477921355-2524-1-git-send-email-lewicki.pk@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Fix path for mkknlimg in bundle_initramfs task
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
X-List-Received-Date: Mon, 31 Oct 2016 14:47:20 -0000
X-Groupsio-MsgNum: 32692
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline

--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 31, 2016 at 02:42:35PM +0100, Piotr Lewicki wrote:
> Task do_bundle_initramfs() was failing because of "mkknlimg: not found"
> The path to "mkknlimg" is now updated.
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> index 6184402..9d6ef5f 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -61,7 +61,7 @@ do_bundle_initramfs_append() {

The entire append here can be removed as mkknlimg tool was removed
completely. See fe92cc7e1428ba7f982c371101150851c621532a.

>              if test -n "${KERNEL_DEVICETREE}"; then
>                  # Add RPi bootloader trailer to kernel image to enable DeviceTree support
>                  for type in ${KERNEL_IMAGETYPES} ; do
> -                    ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT_DIR}/$type.initramfs ${KERNEL_OUTPUT_DIR}/$type.initramfs
> +                    ${STAGING_KERNEL_DIR}/scripts/mkknlimg --dtok ${KERNEL_OUTPUT_DIR}/$type.initramfs ${KERNEL_OUTPUT_DIR}/$type.initramfs
>                  done
>              fi
>          fi
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--J2SCkAp4GZ/dPZZf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYF1lrAAoJEHO76Gt+erfPKSUQALMv3/WhzEzAwon3uHoU+Mj9
aQEKE9tRAxVi1H5LVtZrZZzHh6jItUK/l5r6GCUicsia8yFowDpUcOlMCAyTGvcm
LoRjq+BYsuhOTPVfUwuff14zC7kehS8ZCrgKmgzJNdI+mZsrHtEe5lGJv7I3j/CB
j9fCJgXjuzqG/TI3xnST/wyRYuPqljQJpb7EDCiPIOnwStP4ZDTdl8129G6zriYD
0As+c+yMUQdyxt9ScdAsTT4k1qd+ywY11IlWyP09LsCbo3PUFmrxvCHpawKGa2T1
jDBY7h5ilRNj7McjbmAH+nGyQk3p+X69q7N4jSMMwTTfiRq43G4BYFSXwa3YDGIX
wlwXpkSHiDrH6PbWp9kDmCwDK+m9jiLcnAUU7i0Jh6q/Mxp3VBM+LGDmWvB+GCvQ
Xg8kaIgvELrSEPZVLmKMP0a6DGZfrspNbs1OrKZQVTTSgUr/YCPQTbHj4xQq7cjM
oB17Ewi1jpUJJSJunDKYLnssXuX5xFebat8tkKB2RF1IxAh78mO02IcjvLGeuGny
ryywKhdHcxyFuhakzQgZJfAnwXGCEsZfOBeYm3kORAdLJksWbJKIYP4aXuQXt+u8
leWeVJBC4cq37x59f6KttNV73kv5GVg07wyeqUQ64DE+V6SwvWxLsW+avS4Emixp
QHslFEunpDn4n9ZP1EbO
=LcZO
-----END PGP SIGNATURE-----

--J2SCkAp4GZ/dPZZf--
