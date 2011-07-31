Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CEE534C803E4
	for <yocto@yoctoproject.org>; Sat, 30 Jul 2011 20:13:21 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6V1DIG0003796
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 30 Jul 2011 18:13:18 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.20.136) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sat, 30 Jul 2011 18:13:18 -0700
Message-ID: <4E34AC2C.9050604@windriver.com>
Date: Sat, 30 Jul 2011 21:13:16 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <4E31F60D.2000504@linux.intel.com> <2706741.aE89dPi517@perseus>
In-Reply-To: <2706741.aE89dPi517@perseus>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Sun, 31 Jul 2011 01:13:22 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-07-30 2:34 PM, Khem Raj wrote:
> On Thursday, July 28, 2011 04:51:41 PM Darren Hart wrote:
>> Bruce,
>>
>> Please apply to yocto/base. Fixes a boot issue for a
>> tunnel creek development board.
>>
>> --
>>
>> commit 2b934c6236983392d01bef22e43af3051cac16f5
>>
>> If dmi_get_system_info() returns NULL, pch_phub_probe() will dereferencea
>> a zero pointer.
>>
>> This oops was observed on an Atom based board which has no BIOS, but a
>> bootloder which doesn't privde DMI data.
>>
>> Signed-off-by: Alexander Stein<alexander.stein@systec-electronic.com>
>> Cc: Tomoya MORINAGA<tomoya-linux@dsn.okisemi.com>
>> Cc: Greg KH<gregkh@suse.de>
>> Signed-off-by: Andrew Morton<akpm@linux-foundation.org>
>> Signed-off-by: Linus Torvalds<torvalds@linux-foundation.org>
>> ---
>>   drivers/misc/pch_phub.c |    5 ++++-
>>   1 files changed, 4 insertions(+), 1 deletions(-)
>>
>> diff --git a/drivers/misc/pch_phub.c b/drivers/misc/pch_phub.c
>> index 5fe79df..01eb67b 100644
>> --- a/drivers/misc/pch_phub.c
>> +++ b/drivers/misc/pch_phub.c
>> @@ -686,6 +686,8 @@ static int __devinit pch_phub_probe(struct pci_dev
>> *pdev, }
>>
>>   	if (id->driver_data == 1) { /* EG20T PCH */
>> +		const char *board_name;
>> +
>>   		retval = sysfs_create_file(&pdev->dev.kobj,
>>   					&dev_attr_pch_mac.attr);
>>   		if (retval)
>> @@ -701,7 +703,8 @@ static int __devinit pch_phub_probe(struct pci_dev
>> *pdev, CLKCFG_CANCLK_MASK);
>>
>>   		/* quirk for CM-iTC board */
>> -		if (strstr(dmi_get_system_info(DMI_BOARD_NAME), "CM-iTC"))
>> +		board_name = dmi_get_system_info(DMI_BOARD_NAME);
>> +		if (board_name&&  strstr(board_name, "CM-iTC"))
>
> May be it could be just if ( dmi_get_system_info(DMI_BOARD_NAME)&&
> strstr(board_name, "CM-iTC"))
>
> although I think compiler will already do it internally

Could very well be. I grabbed this one directly from linus' tree,
so I've got it as-is for now, but I've tagged it to be considered
later if we do decide that we want to send a tweak of this upstream

Thanks!

Bruce

>
>>   			pch_phub_read_modify_write_reg(chip,
>>   						(unsigned int)CLKCFG_REG_OFFSET,
>>   						CLKCFG_UART_48MHZ | CLKCFG_BAUDDIV |


