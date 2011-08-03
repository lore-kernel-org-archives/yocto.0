Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 667D14C80053
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2011 23:30:45 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Aug 2011 21:30:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,308,1309762800"; d="scan'208";a="34542036"
Received: from unknown (HELO [10.255.14.155]) ([10.255.14.155])
	by azsmga001.ch.intel.com with ESMTP; 02 Aug 2011 21:30:44 -0700
Message-ID: <4E38CEF4.7010507@linux.intel.com>
Date: Tue, 02 Aug 2011 21:30:44 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
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
X-List-Received-Date: Wed, 03 Aug 2011 04:30:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 07/30/2011 11:34 AM, Khem Raj wrote:
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
>> Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
>> Cc: Tomoya MORINAGA <tomoya-linux@dsn.okisemi.com>
>> Cc: Greg KH <gregkh@suse.de>
>> Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
>> Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
>> ---
>>  drivers/misc/pch_phub.c |    5 ++++-
>>  1 files changed, 4 insertions(+), 1 deletions(-)
>>
>> diff --git a/drivers/misc/pch_phub.c b/drivers/misc/pch_phub.c
>> index 5fe79df..01eb67b 100644
>> --- a/drivers/misc/pch_phub.c
>> +++ b/drivers/misc/pch_phub.c
>> @@ -686,6 +686,8 @@ static int __devinit pch_phub_probe(struct pci_dev
>> *pdev, }
>>
>>  	if (id->driver_data == 1) { /* EG20T PCH */
>> +		const char *board_name;
>> +
>>  		retval = sysfs_create_file(&pdev->dev.kobj,
>>  					   &dev_attr_pch_mac.attr);
>>  		if (retval)
>> @@ -701,7 +703,8 @@ static int __devinit pch_phub_probe(struct pci_dev
>> *pdev, CLKCFG_CANCLK_MASK);
>>
>>  		/* quirk for CM-iTC board */
>> -		if (strstr(dmi_get_system_info(DMI_BOARD_NAME), "CM-iTC"))
>> +		board_name = dmi_get_system_info(DMI_BOARD_NAME);
>> +		if (board_name && strstr(board_name, "CM-iTC"))
> 
> May be it could be just if ( dmi_get_system_info(DMI_BOARD_NAME) && 
> strstr(board_name, "CM-iTC"))

Where does board_name get initialized in your version?


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

