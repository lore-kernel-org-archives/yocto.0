Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6AE624C803E4
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2011 20:38:50 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6T1cl5A023972
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Jul 2011 18:38:47 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.20.112) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 28 Jul 2011 18:38:47 -0700
Message-ID: <4E320F26.2060003@windriver.com>
Date: Thu, 28 Jul 2011 21:38:46 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4E31F60D.2000504@linux.intel.com>
In-Reply-To: <4E31F60D.2000504@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 29 Jul 2011 01:38:50 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-07-28 7:51 PM, Darren Hart wrote:
> Bruce,
>
> Please apply to yocto/base. Fixes a boot issue for a
> tunnel creek development board.

I fetched and updated master in linux-yocto-3.0 and cherry picked
this into yocto/base, and merged it out.

    e6625fa..55f9c40  master -> master
    935b896..c33fc74  yocto/base -> yocto/base
    67283c12..30a2cec yocto/standard/arm-versatile-926ejs -> 
yocto/standard/arm-versatile-926ejs
    dee149a..318b059  yocto/standard/base -> yocto/standard/base
    850784c..f79313d  yocto/standard/beagleboard -> 
yocto/standard/beagleboard
    b584e72..c30a568  yocto/standard/common-pc-64/base -> 
yocto/standard/common-pc-64/base
    8064012..61da1e3  yocto/standard/common-pc-64/jasperforest -> 
yocto/standard/common-pc-64/jasperforest
    69faf26..ac5c59d  yocto/standard/common-pc-64/romley -> 
yocto/standard/common-pc-64/romley
    1da9aad..c49c587  yocto/standard/common-pc-64/sugarbay -> 
yocto/standard/common-pc-64/sugarbay
    287479a..9e321ee  yocto/standard/common-pc/atom-pc -> 
yocto/standard/common-pc/atom-pc
    f56a137..efaab1f  yocto/standard/common-pc/base -> 
yocto/standard/common-pc/base
    34a9e0e..9a259cf  yocto/standard/crownbay -> yocto/standard/crownbay
    311152b..8c09403  yocto/standard/emenlow -> yocto/standard/emenlow
    813ec5a..e556c2a  yocto/standard/fishriver -> yocto/standard/fishriver
    2d19d3f..5e08aa8  yocto/standard/fri2 -> yocto/standard/fri2
    1562ec0..a8eef04  yocto/standard/fsl-mpc8315e-rdb -> 
yocto/standard/fsl-mpc8315e-rdb
    ac0f36e..f9b9688  yocto/standard/mti-malta32-be -> 
yocto/standard/mti-malta32-be
    7d24c08..bb024ac  yocto/standard/mti-malta32-le -> 
yocto/standard/mti-malta32-le
    40381c3..6c76d97  yocto/standard/preempt-rt/base -> 
yocto/standard/preempt-rt/base
    40381c3..5ae5cb6  yocto/standard/preempt-rt/common-pc -> 
yocto/standard/preempt-rt/common-pc
    38525f1..a46a4c3  yocto/standard/qemu-ppc32 -> yocto/standard/qemu-ppc32
    5eaea5c..df9213c  yocto/standard/routerstationpro -> 
yocto/standard/routerstationpro

You'll need to use kernel-dev or update your SRCREVs manually to pick
it up. I've got a pending update that I'll send out later. But we'd have
to wait for it to merge into poky master anyway.

Cheers,

Bruce


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
> Signed-off-by: Alexander Stein<alexander.stein@systec-electronic.com>
> Cc: Tomoya MORINAGA<tomoya-linux@dsn.okisemi.com>
> Cc: Greg KH<gregkh@suse.de>
> Signed-off-by: Andrew Morton<akpm@linux-foundation.org>
> Signed-off-by: Linus Torvalds<torvalds@linux-foundation.org>
> ---
>   drivers/misc/pch_phub.c |    5 ++++-
>   1 files changed, 4 insertions(+), 1 deletions(-)
>
> diff --git a/drivers/misc/pch_phub.c b/drivers/misc/pch_phub.c
> index 5fe79df..01eb67b 100644
> --- a/drivers/misc/pch_phub.c
> +++ b/drivers/misc/pch_phub.c
> @@ -686,6 +686,8 @@ static int __devinit pch_phub_probe(struct pci_dev *pdev,
>   	}
>
>   	if (id->driver_data == 1) { /* EG20T PCH */
> +		const char *board_name;
> +
>   		retval = sysfs_create_file(&pdev->dev.kobj,
>   					&dev_attr_pch_mac.attr);
>   		if (retval)
> @@ -701,7 +703,8 @@ static int __devinit pch_phub_probe(struct pci_dev *pdev,
>   					       CLKCFG_CANCLK_MASK);
>
>   		/* quirk for CM-iTC board */
> -		if (strstr(dmi_get_system_info(DMI_BOARD_NAME), "CM-iTC"))
> +		board_name = dmi_get_system_info(DMI_BOARD_NAME);
> +		if (board_name&&  strstr(board_name, "CM-iTC"))
>   			pch_phub_read_modify_write_reg(chip,
>   						(unsigned int)CLKCFG_REG_OFFSET,
>   						CLKCFG_UART_48MHZ | CLKCFG_BAUDDIV |


