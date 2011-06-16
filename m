Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 219F34C800C0
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2011 08:22:08 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5GDM61U023363
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 16 Jun 2011 06:22:06 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 16 Jun 2011 06:22:06 -0700
Message-ID: <4DFA037C.3010604@windriver.com>
Date: Thu, 16 Jun 2011 09:22:04 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <cover.1308204165.git.jingdong.lu@windriver.com>	<102bc7bfe29dd7c29f1aec2ad0a8113d543d3e4c.1308204165.git.jingdong.lu@windriver.com>
	<CB1B40DD-5EDC-4DAE-B5ED-9E5AF274E5C3@dominion.thruhere.net>
In-Reply-To: <CB1B40DD-5EDC-4DAE-B5ED-9E5AF274E5C3@dominion.thruhere.net>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] RTC: Ensure msecure is mux'd to be able to set RTC
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
X-List-Received-Date: Thu, 16 Jun 2011 13:22:09 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/16/11 03:27, Koen Kooi wrote:
>
> Op 16 jun 2011, om 08:07 heeft Jingdong Lu het volgende geschreven:
>
>> From: Jingdong Lu<jingdong.lu@windriver.com>
>>
>> commit e2a346a2a054f702fd76f328ff747b9ad9264a4c from git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap-2.6.git
>
> When I do 'git show e2a346a2a054f702fd76f328ff747b9ad9264a4' I get:
>
> commit e2a346a2a054f702fd76f328ff747b9ad9264a4c
> Author: Alexander Holler<holler@ahsoftware.de>
>
> ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>
> Date:   Tue Apr 5 15:40:08 2011 +0200
>
>      arm: omap3: beagle: Ensure msecure is mux'd to be able to set the RTC
>
>      Without msecure beeing high it isn't possible to set (or start)
>      the RTC.
>
>      Tested with a BeagleBoard C4.
>
>      Signed-off-by: Alexander Holler<holler@ahsoftware.de>
>      Signed-off-by: Tony Lindgren<tony@atomide.com>
>
> diff --git a/arch/arm/mach-omap2/board-omap3beagle.c b/arch/arm/mach-omap2/board-omap3beagle.c
> index be71426..d64ed97 100644
> --- a/arch/arm/mach-omap2/board-omap3beagle.c
> +++ b/arch/arm/mach-omap2/board-omap3beagle.c
> @@ -579,6 +579,9 @@ static void __init omap3_beagle_init(void)
>          omap_nand_flash_init(NAND_BUSWIDTH_16, omap3beagle_nand_partitions,
>                               ARRAY_SIZE(omap3beagle_nand_partitions));
>
> +       /* Ensure msecure is mux'd to be able to set the RTC. */
> +       omap_mux_init_signal("sys_drm_msecure", OMAP_PIN_OFF_OUTPUT_HIGH);
> +
>          /* Ensure SDRC pins are mux'd for self-refresh */
>          omap_mux_init_signal("sdrc_cke0", OMAP_PIN_OUTPUT);
>          omap_mux_init_signal("sdrc_cke1", OMAP_PIN_OUTPUT);
>
>
> So if you're going to change the author, you'd also need to remove the SOBs.

It's likely just a glitch in patch generation.

Jindong: did you cherry-pick or git am this for the import
into your tree ? Or did you use another technique ?
If done properly, the author is always maintained in our
imported patches.

Cheers,

Bruce

>
>>
>> arm: omap3: beagle: Ensure msecure is mux'd to be able to set the RTC.
>> "Msecure" signal provides for protection of the RTC register in TPS65950 be
>> disabling that function via a control signal from the OMAP3530. So ensure
>> msecure is mux'd to be able to set the RTC.
>>
>> Tested with a BeagleBoard C4.
>> Fixes bug [YOCTO #767]
>>
>> Signed-off-by: Alexander Holler<holler@ahsoftware.de>
>> Signed-off-by: Tony Lindgren<tony@atomide.com>
>> Integrated-by: Jingdong Lu<jingdong.lu@windriver.com>
>> ---
>> arch/arm/mach-omap2/board-omap3beagle.c |    3 +++
>> 1 files changed, 3 insertions(+), 0 deletions(-)
>>
>> diff --git a/arch/arm/mach-omap2/board-omap3beagle.c b/arch/arm/mach-omap2/board-omap3beagle.c
>> index af1166b..925c0b3 100644
>> --- a/arch/arm/mach-omap2/board-omap3beagle.c
>> +++ b/arch/arm/mach-omap2/board-omap3beagle.c
>> @@ -580,6 +580,9 @@ static void __init omap3_beagle_init(void)
>> 	usb_ehci_init(&ehci_pdata);
>> 	omap3beagle_flash_init();
>>
>> +	/* Ensure msecure is mux'd to be able to set the RTC. */
>> +	omap_mux_init_signal("sys_drm_msecure", OMAP_PIN_OFF_OUTPUT_HIGH);
>> +
>> 	/* Ensure SDRC pins are mux'd for self-refresh */
>> 	omap_mux_init_signal("sdrc_cke0", OMAP_PIN_OUTPUT);
>> 	omap_mux_init_signal("sdrc_cke1", OMAP_PIN_OUTPUT);
>> --
>> 1.7.0.4
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


