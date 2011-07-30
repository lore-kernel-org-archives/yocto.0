Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f50.google.com (mail-pz0-f50.google.com
	[209.85.210.50])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D7424C8007E
	for <yocto@yoctoproject.org>; Sat, 30 Jul 2011 13:34:18 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk2 with SMTP id 2so12806347pzk.23
	for <yocto@yoctoproject.org>; Sat, 30 Jul 2011 11:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=from:to:subject:date:message-id:organization:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding:content-type;
	bh=xf4ptsvUfSPD+/vqenEI0rh3sI2x+3PBY6V8geepqWE=;
	b=g5CA53340G6diNe1CLfcGr7yzYmXBNMsaTkBY+B3AfDnmPccXNLEd4Tna1ltB8oTE5
	wCEemxh1FUw723aYVG0A1SXkb1p0JCauvfPF8zQaQONnYTAUfJAMsut8sk30jH8r+V3d
	YoNcRrA6Y/c4bIF7WOpwpKHqUxGCW9UJ4VQ+c=
Received: by 10.142.143.19 with SMTP id q19mr1667196wfd.194.1312050858073;
	Sat, 30 Jul 2011 11:34:18 -0700 (PDT)
Received: from perseus.localnet (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id t20sm1968403wfe.12.2011.07.30.11.34.17
	(version=SSLv3 cipher=OTHER); Sat, 30 Jul 2011 11:34:17 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 30 Jul 2011 11:34:15 -0700
Message-ID: <2706741.aE89dPi517@perseus>
Organization: Sakrah
User-Agent: KMail/4.7.0  (Linux/2.6.38-10-generic; KDE/4.7.0; i686; ; )
In-Reply-To: <4E31F60D.2000504@linux.intel.com>
References: <4E31F60D.2000504@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [PATCH][linux-yocto-3.0] drivers/misc/pch_phub.c: don't oops if dmi_get_system_info returns NULL
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 30 Jul 2011 18:34:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, July 28, 2011 04:51:41 PM Darren Hart wrote:
> Bruce,
> 
> Please apply to yocto/base. Fixes a boot issue for a
> tunnel creek development board.
> 
> --
> 
> commit 2b934c6236983392d01bef22e43af3051cac16f5
> 
> If dmi_get_system_info() returns NULL, pch_phub_probe() will dereferencea
> a zero pointer.
> 
> This oops was observed on an Atom based board which has no BIOS, but a
> bootloder which doesn't privde DMI data.
> 
> Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
> Cc: Tomoya MORINAGA <tomoya-linux@dsn.okisemi.com>
> Cc: Greg KH <gregkh@suse.de>
> Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
> Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
> ---
>  drivers/misc/pch_phub.c |    5 ++++-
>  1 files changed, 4 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/misc/pch_phub.c b/drivers/misc/pch_phub.c
> index 5fe79df..01eb67b 100644
> --- a/drivers/misc/pch_phub.c
> +++ b/drivers/misc/pch_phub.c
> @@ -686,6 +686,8 @@ static int __devinit pch_phub_probe(struct pci_dev
> *pdev, }
> 
>  	if (id->driver_data == 1) { /* EG20T PCH */
> +		const char *board_name;
> +
>  		retval = sysfs_create_file(&pdev->dev.kobj,
>  					   &dev_attr_pch_mac.attr);
>  		if (retval)
> @@ -701,7 +703,8 @@ static int __devinit pch_phub_probe(struct pci_dev
> *pdev, CLKCFG_CANCLK_MASK);
> 
>  		/* quirk for CM-iTC board */
> -		if (strstr(dmi_get_system_info(DMI_BOARD_NAME), "CM-iTC"))
> +		board_name = dmi_get_system_info(DMI_BOARD_NAME);
> +		if (board_name && strstr(board_name, "CM-iTC"))

May be it could be just if ( dmi_get_system_info(DMI_BOARD_NAME) && 
strstr(board_name, "CM-iTC"))

although I think compiler will already do it internally

>  			pch_phub_read_modify_write_reg(chip,
>  						(unsigned int)CLKCFG_REG_OFFSET,
>  						CLKCFG_UART_48MHZ | CLKCFG_BAUDDIV |
-- 
Khem Raj

