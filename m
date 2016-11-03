Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E454E00BB0; Wed,  2 Nov 2016 22:57:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2574E00A08
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 22:57:27 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id n85so3774570pfi.3
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 22:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=rP+QLGPdhLZ9Vttqjt7hqzIt3DQVnwS+/EQPMqMi/7s=;
	b=HG+oc06McCiQV13rGd3VqB9u/czBZmyWeXnzXnrkkftfzgdKg9A4IvpTsamOJWiZER
	vOy5FfUL9k8DxmnVc3y74dGPopgzNATrqw3iBLgFK/sbHkeP8Z/GYFTKBxXnnjdNG45e
	6zTx4UqQmHR5kdKgzUYaFpGK3/HeBfTjrXZMZJNUr6VbSphiy2uGQ4Xoe5Q/yBDQMa8D
	HO1H6tRdtQ5fxknaMc7fV8rUOlSFVxTmkd4nCHJY7sbgZEnfNpIFbVV6WJb8MtD4Klxo
	Wuqjm7xs99WSmAvmYYAYsCoZXEl4LZdQbjAJKiLocR7FREGzHUlSdJJDYp+yKHPhZLZS
	1x+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=rP+QLGPdhLZ9Vttqjt7hqzIt3DQVnwS+/EQPMqMi/7s=;
	b=SSmch4XP0DXONi1r3b1tgHoc36jW9G3X0gM/x5eKUmAH3bb935kHxOnUdFHNeCsDLk
	9M2hVzfD7/6d4GT9FYE1BiDdWTgJiMeyT1bsNnKZpKMas63uzdSJrLT5HeisCzXsu7+c
	zQqQlt41UssnqRjwVkX0LEPE/dllzqjik9VHm8x42fd3QmDZ7bZD64ih70sU8ZU2ah9y
	oeYpK/dnSn6BqoDkgURuBHsu8EMOBdZxcSf1GDXrZ+sCNvcK9Ss8x8SMXgJbhPo0Yvlv
	WIhANsJpghVR4gciIrCl6UTfl/HMWTZ2PQAO5b+WQpyytMwM617h5bWTg3INn6mlmEOY
	c/Gw==
X-Gm-Message-State: ABUngvff7eBy5UXCopKZ4kqAFmY48FqpZgueohi9LClpp8iiGowUHo/NCdMABBciP8ozfA==
X-Received: by 10.98.144.83 with SMTP id a80mr14031030pfe.156.1478152646947;
	Wed, 02 Nov 2016 22:57:26 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:99b5:6af1:c0c3:9e76?
	([2601:646:8882:b8c:99b5:6af1:c0c3:9e76])
	by smtp.gmail.com with ESMTPSA id
	g78sm9064606pfe.19.2016.11.02.22.57.25
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 02 Nov 2016 22:57:26 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1478080321-19857-2-git-send-email-piotr.lewicki@elfin.de>
Date: Wed, 2 Nov 2016 22:57:20 -0700
Message-Id: <D94CA25B-901D-402A-BFE1-1EF6024B17F8@gmail.com>
References: <1478080321-19857-1-git-send-email-piotr.lewicki@elfin.de>
	<1478080321-19857-2-git-send-email-piotr.lewicki@elfin.de>
To: "piotr.lewicki" <piotr.lewicki@elfin.de>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/1] linux-raspberrypi: remove not needed bundle_initramfs_append()
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
X-List-Received-Date: Thu, 03 Nov 2016 05:57:31 -0000
X-Groupsio-MsgNum: 32794
Content-Type: multipart/signed;
	boundary="Apple-Mail=_12A2BCC8-322F-4305-999E-09D9085146AF";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_12A2BCC8-322F-4305-999E-09D9085146AF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Nov 2, 2016, at 2:52 AM, piotr.lewicki <piotr.lewicki@elfin.de> =
wrote:
>=20
> ---
> recipes-kernel/linux/linux-raspberrypi.inc | 13 -------------
> 1 file changed, 13 deletions(-)
>=20
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc =
b/recipes-kernel/linux/linux-raspberrypi.inc
> index 6184402..98229d9 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -54,16 +54,3 @@ do_deploy_append() {
>     fi
>     echo "${CMDLINE}${PITFT_PARAMS}" > =
${DEPLOYDIR}/bcm2835-bootfiles/cmdline.txt
> }
> -
> -do_bundle_initramfs_append() {
> -    if [ ! -z "${INITRAMFS_IMAGE}" -a x"${INITRAMFS_IMAGE_BUNDLE}" =3D =
x1 ]; then
> -        if test "x${KERNEL_IMAGETYPE}" !=3D "xuImage" ; then
> -            if test -n "${KERNEL_DEVICETREE}"; then
> -                # Add RPi bootloader trailer to kernel image to =
enable DeviceTree support
> -                for type in ${KERNEL_IMAGETYPES} ; do
> -                    ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok =
${KERNEL_OUTPUT_DIR}/$type.initramfs =
${KERNEL_OUTPUT_DIR}/$type.initramfs
> -                done
> -            fi
> -        fi
> -    fi
> -}

I have staged it form testing.


--Apple-Mail=_12A2BCC8-322F-4305-999E-09D9085146AF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlga0cUACgkQuwUzVZGdMxRh8gCdGKBxog/Uz908DzjUsFZ+bpDf
gUMAnimC5VhDI7Q6iVbPl2GVuQmXZSog
=mhjM
-----END PGP SIGNATURE-----

--Apple-Mail=_12A2BCC8-322F-4305-999E-09D9085146AF--
