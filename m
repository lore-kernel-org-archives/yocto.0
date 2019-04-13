Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50F03E00BCE; Sat, 13 Apr 2019 11:40:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6A61E00BAA
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2019 11:40:12 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 44hNqH1SRBz1rFsK;
	Sat, 13 Apr 2019 20:40:11 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 44hNqH0ybfz1qv17;
	Sat, 13 Apr 2019 20:40:11 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id rr1lyW0sr_nB; Sat, 13 Apr 2019 20:40:09 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Sat, 13 Apr 2019 20:40:09 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 83B5745403CE;
	Sat, 13 Apr 2019 20:40:08 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id m0TbwVm16h9T; Sat, 13 Apr 2019 20:40:05 +0200 (CEST)
Received: from [192.168.178.89] (stefano-MacBookPro.fritz.box [192.168.178.89])
	by babic.homelinux.org (Postfix) with ESMTPS id C39BE45403AD;
	Sat, 13 Apr 2019 20:40:04 +0200 (CEST)
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
	Alistair Francis <Alistair.Francis@wdc.com>
References: <20190411182858.11756-1-alistair.francis@wdc.com>
	<CAGAf8Lx6xBcOb_PZD=4QwTxi8FyJC99z=rR_BqckyR9JO-yW7Q@mail.gmail.com>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <3ff466e5-de1c-b83a-efab-129a2c357017@denx.de>
Date: Sat, 13 Apr 2019 20:40:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAGAf8Lx6xBcOb_PZD=4QwTxi8FyJC99z=rR_BqckyR9JO-yW7Q@mail.gmail.com>
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
X-List-Received-Date: Sat, 13 Apr 2019 18:40:15 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Zoran,

On 12/04/19 09:00, Zoran Stojsavljevic wrote:
> Hello to all,
> 
> I will ask few questions here regarding U-Boot, since U-Boot mailing
> list is too frequent/clogged...
> 
> Apropos (Regarding to) U-Boot 2019.04, I have some questions? May I?
> 
> I know for the fact the following:
> Alexander Graf (till 03.2019 SUSE developer) said (September 2018. in
> Erlangen, Bavaria, DE) that U-Boot folks will move his UEFI patches in
> master U-Boot git somewhere in midst of January 2019.
> 
> I am wondering, did these patches were moved from Alexander Graf's U-Boot git?

As far as I know, Alex's patches at the time were already integrated in
2019.01.

> 
> If yes, from which release UEFI shell support does reside in Coreboot
> (version number)?
> 
> Here is the pointer to Alex Graf's Git, I am talking about:
> https://github.com/agraf/u-boot

As far as I see, Alex's efi-2019.01 was integrated by Tom in 2019.01.
But I have not tried myself, I fear you have to post U-Boot's ML if you
need some help.

> _______
> 
> I have UEFI USB stick with already pre-compiled ready EFI shell 2.40,
> so I would like to program such an U-Boot (2019.04?!) to my BBB and
> try to get to the EFI shell with attached UEFI USB stick.
> 
> Nice exercise, won't you all agree!? ;-)
> 

Best regards,
Stefano Babic

> Thank you,
> Zoran Stojsavljevic
> _______
> 
> On Fri, Apr 12, 2019 at 12:09 AM Alistair Francis
> <Alistair.Francis@wdc.com> wrote:
>>
>> [YOCTO #13145]
>>
>> This was announced at 2019.01:
>> https://www.mail-archive.com/u-boot@lists.denx.de/msg305424.html
>>
>> Basically, am335x_boneblack is just a special subset of am335x_evm config,
>> created and owned by BeagleBoard.org community. Since it was not migrated to
>> use CONFIG_BLK in time for 2019.04 release.
>>
>> Signed-off-by: Alistair Francis <alistair.francis@wdc.com>
>> Acked-by: Denys Dmytriyenko <denys@ti.com>
>> ---
>>  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
>> index 70d3cfe..bc18ee8 100644
>> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
>> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
>> @@ -32,7 +32,7 @@ KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
>>
>>  SPL_BINARY = "MLO"
>>  UBOOT_SUFFIX = "img"
>> -UBOOT_MACHINE = "am335x_boneblack_config"
>> +UBOOT_MACHINE = "am335x_evm_defconfig"
>>  UBOOT_ENTRYPOINT = "0x80008000"
>>  UBOOT_LOADADDRESS = "0x80008000"
>>
>> --
>> 2.21.0
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

