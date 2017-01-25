Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99A6FE0088B; Wed, 25 Jan 2017 07:38:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f195.google.com (mail-wj0-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CCD3E00833
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 07:38:43 -0800 (PST)
Received: by mail-wj0-f195.google.com with SMTP id un2so3523886wjb.0
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 07:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=9ndhC3SznKks5684SrZqoZofhb2zi0wTV6DRdXc0PYQ=;
	b=qe6xdxL1yf3Hx1nYjxBl3GtAkuXhySTjnIHwFL0gYXaT+tWeHAEbQTa9fWSd/nehio
	2d94/QoioHUso0nuZVprgEyjrM3/+j2LDng6xYb3k12ziZ7083qlkgSwb+obg9KZZ7Lc
	ICOmLz4sDwF62Q15WGjmY3FDcjReQ5MmFa9RZT1uRHVxJbwDot/XaMZDLcMuSix1UwpQ
	9lE6C1BV/2kd2ASBD3qWjXpoyiotp+6HrRbakZetSszrguAIM8RZazlTW47wSuO94g7s
	9oVk0DAh1sJSnvZ4I/WeNR89kpu0ebXJ5vmjTIuM4jsYgxDENubdrwtVrzHkWl9LUvaz
	wbIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=9ndhC3SznKks5684SrZqoZofhb2zi0wTV6DRdXc0PYQ=;
	b=lpdEVwUuulmfbmhR0Kgchy20c24o0cmO9bbO56KWDQ/avtrDpxDC+cO+fzInF+Kmzk
	ctz9HZfC1hg0G5JPkezYfOsQUwEJrDZ/G0sjMj/eCAnS0EVQYwPN9f7EuYV6Bun+9tSe
	XZ8vywxRS+QeD8EYftUU434VMCqZl6hFdtgYUHUqQ9gKZz6useGvJcmhXwvSoD3JEhwa
	IPyvHZsnvFUFpKAIySDb+R0UPxh5/CHXto61yibTCsgA8wBhX9j4olBNkadDjnpsG8nl
	iUMnLc/qDfj4PEnWpca8Dk9aAb7yUbeq76beoojxCGKm3xyBZ8ZYUW3oZk1lf2uAk9Nr
	NAjA==
X-Gm-Message-State: AIkVDXJHpnhftK7+0tEwMf22gTlsnOVE0AxRHWN52/XI9bP8PqYsZ2km86FXnge+LBSWZQ==
X-Received: by 10.223.165.138 with SMTP id g10mr34201799wrc.105.1485358723082; 
	Wed, 25 Jan 2017 07:38:43 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118])
	by smtp.gmail.com with ESMTPSA id y1sm1253142wme.15.2017.01.25.07.38.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 25 Jan 2017 07:38:42 -0800 (PST)
Date: Wed, 25 Jan 2017 15:38:40 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Mirza Krak <mirza.krak@gmail.com>
Message-ID: <20170125153840.GB1803@carbonA>
References: <1485281798-9016-1-git-send-email-mirza.krak@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1485281798-9016-1-git-send-email-mirza.krak@gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][morty][PATCH V2] Revert "u-boot: drop patch to include lowlevel_init"
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
X-List-Received-Date: Wed, 25 Jan 2017 15:38:46 -0000
X-Groupsio-MsgNum: 34091
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hHWLQfXTYDoKhP50"
Content-Disposition: inline

--hHWLQfXTYDoKhP50
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 24, 2017 at 07:16:38PM +0100, Mirza Krak wrote:
> From: Mirza Krak <mirza.krak@gmail.com>
>
> Not applicable on U-boot 2016.03 which is used in poky/morty and causes an build
> error when KERNEL_IMAGETYPE = "uImage".
>
> This reverts commit 031e26954b95d49a66ea4677b9e867d08441f450.
>
> [Issue #43]
>
> Signed-off-by: Mirza Krak <mirza.krak@gmail.com>
> ---
>
> Changes in V2:
> - Fixed spelling and improved commit message
>
>  .../0003-Include-lowlevel_init.o-for-rpi2.patch    | 25 ++++++++++++++++++++++
>  recipes-bsp/u-boot/u-boot_%.bbappend               |  1 +
>  2 files changed, 26 insertions(+)
>  create mode 100644 recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch
>
> diff --git a/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch b/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch
> new file mode 100644
> index 0000000..ce0273f
> --- /dev/null
> +++ b/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch
> @@ -0,0 +1,25 @@
> +From 1eb01436bc57ad32519a4567a1c9ec82d52d60a1 Mon Sep 17 00:00:00 2001
> +From: Paul Barker <paul@paulbarker.me.uk>
> +Date: Tue, 29 Nov 2016 19:47:49 +0000
> +Subject: [PATCH] Include lowlevel_init.o for rpi2
> +
> +Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> +Upstream-status: Inappropriate
> +    (not needed upstream as rpi_2 board directory is removed in latest
> +    version)
> +---
> + board/raspberrypi/rpi_2/Makefile | 1 +
> + 1 file changed, 1 insertion(+)
> +
> +diff --git a/board/raspberrypi/rpi_2/Makefile b/board/raspberrypi/rpi_2/Makefile
> +index d82cd21..9f865c5 100644
> +--- a/board/raspberrypi/rpi_2/Makefile
> ++++ b/board/raspberrypi/rpi_2/Makefile
> +@@ -5,3 +5,4 @@
> + #
> +
> + obj-y	:= ../rpi/rpi.o
> ++obj-y	+= ../rpi/lowlevel_init.o
> +--
> +2.1.4
> +
> diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
> index 0edc8dc..a4545f0 100644
> --- a/recipes-bsp/u-boot/u-boot_%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot_%.bbappend
> @@ -3,4 +3,5 @@ RDEPENDS_${PN}_append_rpi = " rpi-u-boot-scr"
>  SRC_URI_append_rpi = " \
>      file://0001-arm-add-save_boot_params-for-ARM1176.patch \
>      file://0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch \
> +    file://0003-Include-lowlevel_init.o-for-rpi2.patch \
>      "
> --
> 2.1.4
>

Merged to morty. Thank you.

--
Andrei Gherzan

--hHWLQfXTYDoKhP50
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEQvNqws+Dz7aX1cEEc7voa356t88FAliIxoAACgkQc7voa356
t88Enw/8CFOxWJDzkMoKZpAMc6TtYv95lKStJSVz0IusovEk8WFknqJM/5TEQ1Qi
E52qDmJLFXCXMF1C203LkIWXxQ5q7xueFY9dioD5ZlNfnAqeUAdbgcJobiJR53Gj
dwzw7XUgMB9V2SxnFvMW0N+3i1gBAZ0BUijfclffnu+Gzj1TbH9Q8/njxBSX1mlp
9Fffi0vhv71xIiLMLc225JZgQNhFR/24rvf/qlbbrVKvo83zi+n2lfRlMj76IQc+
eFbigPTCOYMhaXrSahDIyAhJrFbMMHwv19VdHQBNjuVTxkA7EAQRzFsoFPCKRbhj
dV99l4p6Koh4JeHeZgxsvzToqm8y+5WTHfoCnGfGkkBqggTts1EI+Ee0lJtHGYde
0QapU/nGjWiOiRQCekvTtFtRA7CMUd3ZGKU8UFEdPIWFFCWv6Z3L59Rce8Kb65pS
5VI07LbsAXNs8B6/2U6IP/y3pcVwQN1tGmcIBHnyuDehr4SkXZROshncA5H63b+A
NQS7wJpQOBMfKqjV4KaDL+B5K3Cblf6gkLra6p6vME+4vV0KOZRWQ3pGT1axbG7Y
PLzJuBG0IxAzlX1Snc/Jt0f1jOfB+c3caMXVMwZ2BywZjIyuDC7gHi4ED6yCk0vB
Bi7TACx/9aUcn+sbIsEYMX7f/7VXzNJyS5IEs7ZboBnnZNQVq9E=
=BJIs
-----END PGP SIGNATURE-----

--hHWLQfXTYDoKhP50--
