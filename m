Return-Path: <marex@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD72DE00DC3; Mon,  8 Jan 2018 06:29:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 966F9E00D9B
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 06:29:09 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3zFd1w44Fhz1qvC4;
	Mon,  8 Jan 2018 15:29:08 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 3zFd1w3n0rz26T1y;
	Mon,  8 Jan 2018 15:29:08 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id K5bXXe693DM1; Mon,  8 Jan 2018 15:29:07 +0100 (CET)
X-Auth-Info: TnZTSEaWSk5YEeeCuHyU8nJ4BetW6YO+fn9xjcmXfW8=
Received: from [IPv6:::1] (unknown [195.140.253.167])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Mon,  8 Jan 2018 15:29:07 +0100 (CET)
To: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <mnhu@prevas.dk>, yocto@yoctoproject.org
References: <20180107161641.30206-1-marex@denx.de>
	<3e538aaf-fded-9ea7-7b9c-b43559346bbd@prevas.dk>
From: Marek Vasut <marex@denx.de>
Message-ID: <b5b9c450-c53b-507b-32c1-0488d53e4ab2@denx.de>
Date: Mon, 8 Jan 2018 15:29:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <3e538aaf-fded-9ea7-7b9c-b43559346bbd@prevas.dk>
X-Mailman-Approved-At: Thu, 11 Jan 2018 09:16:41 -0800
Cc: Joshua Lock <joshua.g.lock@intel.com>
Subject: Re: [PATCH] beaglebone: Fix serial console device node
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
X-List-Received-Date: Mon, 08 Jan 2018 14:29:10 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 01/08/2018 12:28 PM, Martin Hundebøll wrote:
> Hi Marek,
> 
> On 2018-01-07 17:16, Marek Vasut wrote:
>> The serial console on BBB is on /dev/ttyS0 , not /dev/ttyO0 .
>> This changed again, so fix this.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> Cc: Joshua Lock <joshua.g.lock@intel.com>
>> Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
>> ---
>>   meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
>> b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
>> index 990c967416..4f6c05f3ea 100644
>> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
>> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
>> @@ -20,7 +20,7 @@ WKS_FILE ?= "beaglebone-yocto.wks"
>>   IMAGE_INSTALL_append = " kernel-devicetree kernel-image-zimage"
>>   do_image_wic[depends] += "mtools-native:do_populate_sysroot
>> dosfstools-native:do_populate_sysroot"
>>   -SERIAL_CONSOLE = "115200 ttyO0"
>> +SERIAL_CONSOLE = "115200 ttyS0"
> 
> You can add both to SERIAL_CONSOLES instead:
> 
>   SERIAL_CONSOLES = "115200;ttyS0 115200;ttyO0"
> 
> Maybe add a comment with hints about which kernels versions that make
> the change(s).
> 
> OE-core wraps *getty with in script that checks for the existence of the
> configured devices before starting *getty.
> 
> This also makes the recipe work on kernel versions still using ttyO0.

Done, V2 is out.

-- 
Best regards,
Marek Vasut

