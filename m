Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1762BE004D2
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2012 16:27:22 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Jan 2012 16:27:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="99799911"
Received: from unknown (HELO envy.home) ([10.7.199.56])
	by orsmga001.jf.intel.com with ESMTP; 23 Jan 2012 16:27:21 -0800
Message-ID: <4F1DFAD0.2050001@linux.intel.com>
Date: Mon, 23 Jan 2012 16:26:56 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4F188C59.5090109@linux.intel.com> <4F1CDBA6.5080909@windriver.com>
In-Reply-To: <4F1CDBA6.5080909@windriver.com>
X-Enigmail-Version: 1.3.4
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH][linux-yocto] pch_gbe: Do not abort probe on bad MAC
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
X-List-Received-Date: Tue, 24 Jan 2012 00:27:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/22/2012 08:01 PM, Bruce Ashfield wrote:
> On 12-01-19 4:34 PM, Darren Hart wrote:
>> Bruce, please apply to linux-yocto-3.0/yocto/standard/base
> 
> Queued.

I don't see this in the repository yet, is it still pending? I'm trying
to write a BSP that is dependent on it.

Thanks,

Darren

> 
> Bruce
> 
>>
>> Upstream-Status: Accepted (Linux 3.3)
>>
>> If the MAC is invalid or not implemented, do not abort the probe. Issue
>> a warning and prevent bringing the interface up until a MAC is set manually
>> (via ifconfig $IFACE hw ether $MAC).
>>
>> Tested on two platforms, one with a valid MAC, the other without a MAC. The real
>> MAC is used if present, the interface fails to come up until the MAC is set on
>> the other. They successfully get an IP over DHCP and pass a simple ping and
>> login over ssh test.
>>
>> This is meant to allow the Inforce SYS940X development board:
>> http://www.inforcecomputing.com/SYS940X_ECX.html
>> (and others suffering from a missing MAC) to work with the mainline kernel.
>> Without this patch, the probe will fail and the interface will not be created,
>> preventing the user from configuring the MAC manually.
>>
>> This does not make any attempt to address a missing or invalid MAC for the
>> pch_phub driver.
>>
>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>> CC: Arjan van de Ven<arjan@linux.intel.com>
>> CC: Alan Cox<alan@linux.intel.com>
>> CC: Tomoya MORINAGA<tomoya.rohm@gmail.com>
>> CC: Jeff Kirsher<jeffrey.t.kirsher@intel.com>
>> CC: "David S. Miller"<davem@davemloft.net>
>> CC: Paul Gortmaker<paul.gortmaker@windriver.com>
>> CC: Jon Mason<jdmason@kudzu.us>
>> CC: netdev@vger.kernel.org
>> CC: Mark Brown<broonie@opensource.wolfsonmicro.com>
>> CC: David Laight<David.Laight@ACULAB.COM>
>> CC: Joe Perches<joe@perches.com>
>> ---
>>   drivers/net/pch_gbe/pch_gbe_main.c |   17 ++++++++++++++---
>>   1 files changed, 14 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/pch_gbe/pch_gbe_main.c b/drivers/net/pch_gbe/pch_gbe_main.c
>> index eac3c5c..e7412f2 100644
>> --- a/drivers/net/pch_gbe/pch_gbe_main.c
>> +++ b/drivers/net/pch_gbe/pch_gbe_main.c
>> @@ -1701,6 +1701,12 @@ int pch_gbe_up(struct pch_gbe_adapter *adapter)
>>   	struct pch_gbe_rx_ring *rx_ring = adapter->rx_ring;
>>   	int err;
>>
>> +	/* Ensure we have a valid MAC */
>> +	if (!is_valid_ether_addr(adapter->hw.mac.addr)) {
>> +		pr_err("Error: Invalid MAC address\n");
>> +		return -EINVAL;
>> +	}
>> +
>>   	/* hardware has been reset, we need to reload some things */
>>   	pch_gbe_set_multi(netdev);
>>
>> @@ -2392,9 +2398,14 @@ static int pch_gbe_probe(struct pci_dev *pdev,
>>
>>   	memcpy(netdev->dev_addr, adapter->hw.mac.addr, netdev->addr_len);
>>   	if (!is_valid_ether_addr(netdev->dev_addr)) {
>> -		dev_err(&pdev->dev, "Invalid MAC Address\n");
>> -		ret = -EIO;
>> -		goto err_free_adapter;
>> +		/*
>> +		 * If the MAC is invalid (or just missing), display a warning
>> +		 * but do not abort setting up the device. pch_gbe_up will
>> +		 * prevent the interface from being brought up until a valid MAC
>> +		 * is set.
>> +		 */
>> +		dev_err(&pdev->dev, "Invalid MAC address, "
>> +		                    "interface disabled.\n");
>>   	}
>>   	setup_timer(&adapter->watchdog_timer, pch_gbe_watchdog,
>>   		    (unsigned long)adapter);
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

