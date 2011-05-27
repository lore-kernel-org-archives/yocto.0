Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4DA9E4C800E0
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 16:08:27 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4RL8PxC012933
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 27 May 2011 14:08:26 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 27 May 2011 14:08:25 -0700
Message-ID: <4DE012C7.7000804@windriver.com>
Date: Fri, 27 May 2011 17:08:23 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.15) Gecko/20110419 Thunderbird/3.1.9 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1306514719.git.tom.zanussi@intel.com>
	<3ef38d9b80ebc7b23fa9a1c6712d688e6f2f5f86.1306514719.git.tom.zanussi@intel.com>
In-Reply-To: <3ef38d9b80ebc7b23fa9a1c6712d688e6f2f5f86.1306514719.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/3] ahci: AHCI mode SATA patch for Intel Patsburg SATA RAID controller
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
X-List-Received-Date: Fri, 27 May 2011 21:08:27 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-05-27 04:46 PM, tom.zanussi@intel.com wrote:
> From: Seth Heasley
>
> commit 64a3903d0885879ba8706a8bcf71c5e3e7664db2 upstream
>
> This patch adds an updated SATA RAID DeviceID for the Intel Patsburg PCH.

Looks like we already had this one in the 2.6.37 tree
via gregkh and -stable

 > git tag --contains 5618c45b
v2.6.37.5
v2.6.37.6

And hence the base yocto/standard/common-pc-64/romley
bsp branch.

So I won't do anything with this in particular. It is
interesting though how it applied in your tree. Do you
have all the -stable updates ?

I checked and it doesn't look like I've been hoarding
them, but you never know.

Bruce

>
> Signed-off-by: Seth Heasley
> Signed-off-by: Jeff Garzik
> Integrated-by: Tom Zanussi
> ---
>   drivers/ata/ahci.c |    1 +
>   1 files changed, 1 insertions(+), 0 deletions(-)
>
> diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
> index 3288263..dfc0a26 100644
> --- a/drivers/ata/ahci.c
> +++ b/drivers/ata/ahci.c
> @@ -260,6 +260,7 @@ static const struct pci_device_id ahci_pci_tbl[] = {
>   	{ PCI_VDEVICE(INTEL, 0x1d02), board_ahci }, /* PBG AHCI */
>   	{ PCI_VDEVICE(INTEL, 0x1d04), board_ahci }, /* PBG RAID */
>   	{ PCI_VDEVICE(INTEL, 0x1d06), board_ahci }, /* PBG RAID */
> +	{ PCI_VDEVICE(INTEL, 0x2826), board_ahci }, /* PBG RAID */
>
>   	/* JMicron 360/1/3/5/6, match class to avoid IDE function */
>   	{ PCI_VENDOR_ID_JMICRON, PCI_ANY_ID, PCI_ANY_ID, PCI_ANY_ID,


