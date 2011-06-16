Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4E3314C800BA
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2011 08:20:28 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5GDKRIS023144
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2011 06:20:27 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 16 Jun 2011 06:20:27 -0700
Message-ID: <4DFA0319.2050300@windriver.com>
Date: Thu, 16 Jun 2011 09:20:25 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Liming Wang <liming.wang@windriver.com>
References: <cover.1308204165.git.jingdong.lu@windriver.com>	<102bc7bfe29dd7c29f1aec2ad0a8113d543d3e4c.1308204165.git.jingdong.lu@windriver.com>
	<4DF99F06.9030304@windriver.com>
In-Reply-To: <4DF99F06.9030304@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] RTC: Ensure msecure is mux'd to be able to set	RTC
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
X-List-Received-Date: Thu, 16 Jun 2011 13:20:29 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/16/11 02:13, Liming Wang wrote:
> On 2011-6-16 14:07, Jingdong Lu wrote:
>> From: Jingdong Lu<jingdong.lu@windriver.com>
>>
>> commit e2a346a2a054f702fd76f328ff747b9ad9264a4c from
>> git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap-2.6.git
> It's fine if you break this line into two lines.
>> arm: omap3: beagle: Ensure msecure is mux'd to be able to set the RTC.
>> "Msecure" signal provides for protection of the RTC register in
>> TPS65950 be
>> disabling that function via a control signal from the OMAP3530. So ensure
>> msecure is mux'd to be able to set the RTC.
>>
>> Tested with a BeagleBoard C4.
>> Fixes bug [YOCTO #767]
> I think it's best to put your comment in the top line.

And we don't want the bug tracking information directly
in the kernel commits, it just ends up cluttering things.

It's fine to include this in the 0/N email, but not in
the commit message itself.

Cheers,

Bruce

>
> Liming Wang
>> Signed-off-by: Alexander Holler<holler@ahsoftware.de>
>> Signed-off-by: Tony Lindgren<tony@atomide.com>
>> Integrated-by: Jingdong Lu<jingdong.lu@windriver.com>
>> ---
>> arch/arm/mach-omap2/board-omap3beagle.c | 3 +++
>> 1 files changed, 3 insertions(+), 0 deletions(-)
>>
>> diff --git a/arch/arm/mach-omap2/board-omap3beagle.c
>> b/arch/arm/mach-omap2/board-omap3beagle.c
>> index af1166b..925c0b3 100644
>> --- a/arch/arm/mach-omap2/board-omap3beagle.c
>> +++ b/arch/arm/mach-omap2/board-omap3beagle.c
>> @@ -580,6 +580,9 @@ static void __init omap3_beagle_init(void)
>> usb_ehci_init(&ehci_pdata);
>> omap3beagle_flash_init();
>>
>> + /* Ensure msecure is mux'd to be able to set the RTC. */
>> + omap_mux_init_signal("sys_drm_msecure", OMAP_PIN_OFF_OUTPUT_HIGH);
>> +
>> /* Ensure SDRC pins are mux'd for self-refresh */
>> omap_mux_init_signal("sdrc_cke0", OMAP_PIN_OUTPUT);
>> omap_mux_init_signal("sdrc_cke1", OMAP_PIN_OUTPUT);
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


