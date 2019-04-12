Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 487D8E00AD5; Fri, 12 Apr 2019 00:01:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
	[209.85.160.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14F66E00A84
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 00:01:06 -0700 (PDT)
Received: by mail-qt1-f196.google.com with SMTP id x12so10074074qts.7
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 00:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=BPCrU7EfNDDk6ikgzmpv8mTDIUMP+UIvDOxBNrC07UE=;
	b=KVqJjPYzcSPhPljD5MPbbsZnwmOgpPKYQrRki+pvhEAAyEAXKunHKM/aJkeySy1T3Z
	91c82yXz8CY4BfJg96zbxWNueD1UJMWRSip1t8SuHvPWFupojHgaQwDqdelp/bFvc7ah
	RIB45wlYr37PZwTpb12iJkH8iHwqqzjcJXM65YbnqZucKnaHZxc+TcJpx1xrB9uLKPVM
	vZQAbPCsVKhsJUpCb8FdY+DvzkBJrO7KlV/hV6tR38HSCWlOIraTkErLVK6qd/FWX4oy
	di9HKedkescvmoTlkwMux5t7gMw7WZMIXWzgcHkXBS2hASiVyQ0qvxzYIbZIEiVxi8nL
	O5Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=BPCrU7EfNDDk6ikgzmpv8mTDIUMP+UIvDOxBNrC07UE=;
	b=UI9ABgsz/hUWqjD8ejarcBt/BNtM8VF6jmnZ0FSVZf8vSNdWNI6Sdr+Yp5V/GtlQIk
	rB3m21GQioZYqZfgK0EHAVucfzEvb09+x/SozhLSZRWm0etV1/xGQvrYBqyX/UH+6XGw
	IEONgalY9/5HOqS1Z2u3PwM0w+L7U5DYjiWGYnhbfFhfGJuz0GEDx+JZX0x/7H3TmcJ5
	oPVvE2qUySDMdej1uDZ9MwBfm+JdbZJxiqPCUKdQ+6NuHQrXtqthQIJ2k9tWjJKqpEPk
	sTJkGtLb6oS2gAnMKvSr+p71/fgmJA3jSwvzpcI8YCuMtVnYx89CtDwC5wQB5wJvQmsz
	Cfsw==
X-Gm-Message-State: APjAAAUPXehXaTbhAxolPpU56q0yurN3abs081B5g/WIgnF4QWPwDH0M
	a3JyBMihds6teCcz1uL8r7GJJw6LFdpe6DopG2c=
X-Google-Smtp-Source: APXvYqynqu61TI1dzVMGKRRgZ4kOlnZHE7w2Yzp0Wk0gJ0btZHhF1ZAXoQ33ZG5Uig+/r4nMpWhbmw8Cm2Br4pGWEtU=
X-Received: by 2002:a0c:b0c7:: with SMTP id p7mr44722557qvc.142.1555052466283; 
	Fri, 12 Apr 2019 00:01:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190411182858.11756-1-alistair.francis@wdc.com>
In-Reply-To: <20190411182858.11756-1-alistair.francis@wdc.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 12 Apr 2019 09:00:54 +0200
Message-ID: <CAGAf8Lx6xBcOb_PZD=4QwTxi8FyJC99z=rR_BqckyR9JO-yW7Q@mail.gmail.com>
To: Alistair Francis <Alistair.Francis@wdc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"denys@ti.com" <denys@ti.com>,
	"alistair23@gmail.com" <alistair23@gmail.com>
Subject: Re: [meta-yocto-bsp][PATCH v2] beaglebone-yocto: Update u-boot config to match u-boot 19.04
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
X-List-Received-Date: Fri, 12 Apr 2019 07:01:10 -0000
Content-Type: text/plain; charset="UTF-8"

Hello to all,

I will ask few questions here regarding U-Boot, since U-Boot mailing
list is too frequent/clogged...

Apropos (Regarding to) U-Boot 2019.04, I have some questions? May I?

I know for the fact the following:
Alexander Graf (till 03.2019 SUSE developer) said (September 2018. in
Erlangen, Bavaria, DE) that U-Boot folks will move his UEFI patches in
master U-Boot git somewhere in midst of January 2019.

I am wondering, did these patches were moved from Alexander Graf's U-Boot git?

If yes, from which release UEFI shell support does reside in Coreboot
(version number)?

Here is the pointer to Alex Graf's Git, I am talking about:
https://github.com/agraf/u-boot
_______

I have UEFI USB stick with already pre-compiled ready EFI shell 2.40,
so I would like to program such an U-Boot (2019.04?!) to my BBB and
try to get to the EFI shell with attached UEFI USB stick.

Nice exercise, won't you all agree!? ;-)

Thank you,
Zoran Stojsavljevic
_______

On Fri, Apr 12, 2019 at 12:09 AM Alistair Francis
<Alistair.Francis@wdc.com> wrote:
>
> [YOCTO #13145]
>
> This was announced at 2019.01:
> https://www.mail-archive.com/u-boot@lists.denx.de/msg305424.html
>
> Basically, am335x_boneblack is just a special subset of am335x_evm config,
> created and owned by BeagleBoard.org community. Since it was not migrated to
> use CONFIG_BLK in time for 2019.04 release.
>
> Signed-off-by: Alistair Francis <alistair.francis@wdc.com>
> Acked-by: Denys Dmytriyenko <denys@ti.com>
> ---
>  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> index 70d3cfe..bc18ee8 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> @@ -32,7 +32,7 @@ KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
>
>  SPL_BINARY = "MLO"
>  UBOOT_SUFFIX = "img"
> -UBOOT_MACHINE = "am335x_boneblack_config"
> +UBOOT_MACHINE = "am335x_evm_defconfig"
>  UBOOT_ENTRYPOINT = "0x80008000"
>  UBOOT_LOADADDRESS = "0x80008000"
>
> --
> 2.21.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

