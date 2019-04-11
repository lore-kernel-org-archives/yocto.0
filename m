Return-Path: <denis@denix.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB56BE00D33; Thu, 11 Apr 2019 11:12:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 336 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Apr 2019 11:12:20 PDT
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CD3EE00D30
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 11:12:20 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id A298F40B8F;
	Thu, 11 Apr 2019 18:06:43 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id kKWjXaOlTcRf; Thu, 11 Apr 2019 18:06:43 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net
	[100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 55410407DA;
	Thu, 11 Apr 2019 18:06:39 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 0D37816DD24; Thu, 11 Apr 2019 14:06:39 -0400 (EDT)
Date: Thu, 11 Apr 2019 14:06:38 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Alistair Francis <Alistair.Francis@wdc.com>
Message-ID: <20190411180638.GP2112@denix.org>
References: <20190411172609.16625-1-alistair.francis@wdc.com>
MIME-Version: 1.0
In-Reply-To: <20190411172609.16625-1-alistair.francis@wdc.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"alistair23@gmail.com" <alistair23@gmail.com>,
	"denys@ti.com" <denys@ti.com>
Subject: Re: [meta-yocto-bsp][PATCH] beaglebone-yocto: Update u-boot config to match u-boot 19.04
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
X-List-Received-Date: Thu, 11 Apr 2019 18:12:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 11, 2019 at 05:27:25PM +0000, Alistair Francis wrote:
> Signed-off-by: Alistair Francis <alistair.francis@wdc.com>

Acked-by: Denys Dmytriyenko <denys@ti.com>

[YOCTO #13145]

This was announced at 2019.01:
https://www.mail-archive.com/u-boot@lists.denx.de/msg305424.html

Basically, am335x_boneblack is just a special subset of am335x_evm config, 
created and owned by BeagleBoard.org community. Since it was not migrated to 
use CONFIG_BLK in time for 2019.04 release, I was going to do the same - just 
switch it over to am335x_evm config, which supports all BeagleBone variants 
just fine.


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

