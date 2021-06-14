Received: from proxima.lasnet.de (proxima.lasnet.de [78.47.171.185])
 by mx.groups.io with SMTP id smtpd.web09.27511.1623661473847944006
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jun 2021 02:04:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@datenfreihafen.org header.s=2021 header.b=pPhOYxWt;
 spf=pass (domain: datenfreihafen.org, ip: 78.47.171.185, mailfrom: stefan@datenfreihafen.org)
Received: from [IPv6:2003:e9:d709:46c5:895f:5712:ed71:b02d] (p200300e9d70946c5895f5712ed71b02d.dip0.t-ipconnect.de [IPv6:2003:e9:d709:46c5:895f:5712:ed71:b02d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: stefan@datenfreihafen.org)
	by proxima.lasnet.de (Postfix) with ESMTPSA id 1CE7DC0209;
	Mon, 14 Jun 2021 11:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datenfreihafen.org;
	s=2021; t=1623661472;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gScyPJYkkebYLszV5d/NF7k66GxSF/RR6hSo1KGvb5Q=;
	b=pPhOYxWtbPMsxro4achJWVXN+eM5dWe65tCZe0GUScEOu/fUlKKhr2/rZsp4KyBD7OnGnt
	tDSImw5lXpABEce+ecaB37SYUacLK6rMH2Uy1gsaiIvsNPrs55vObebdGxKRMI3+DVsMmd
	daqCn9bS38ta7CSUi/LZcuP0woQjvr8PTUUyHybgzZjJmShQ1kV2p43QrPinjlpph13inC
	aZJyxg5J6RrnAGKzLn3aNKcuN44nI7pTiHou1rLiMm5jeRtDz7VvGOvTXpZ0gVqJbst7Ub
	QhJf15hZbso2ZSh+xrGrLUVAR++zXY3HYZECpJ9n2FwX9BR9uRqDy5BXaqHzjg==
Subject: Re: [yocto] [meta-zephyr][PATCH v2 1/2] zephyr-kernel: Add OpenThread add module to build
To: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: Stefan Schmidt <stefan.schmidt@huawei.com>
References: <20210610082731.3820-1-stefan@datenfreihafen.org>
 <c9e28126afae401cbea54236836daaca@intel.com>
From: "Stefan Schmidt" <stefan@datenfreihafen.org>
Message-ID: <8be0811d-6310-f3ab-e3e3-fe53d808fb64@datenfreihafen.org>
Date: Mon, 14 Jun 2021 11:04:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <c9e28126afae401cbea54236836daaca@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hello.

On 11.06.21 03:26, Saini, Naveen Kumar wrote:
> 
> 
>> -----Original Message-----
>> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
>> Behalf Of Stefan Schmidt
>> Sent: Thursday, June 10, 2021 4:28 PM
>> To: yocto@lists.yoctoproject.org
>> Cc: Stefan Schmidt <stefan@datenfreihafen.org>; Stefan Schmidt
>> <stefan.schmidt@huawei.com>
>> Subject: [yocto] [meta-zephyr][PATCH v2 1/2] zephyr-kernel: Add
>> OpenThread add module to build
>>
>> From: Stefan Schmidt <stefan.schmidt@huawei.com>
>>
>> OpenThread support in Zephyr is realised as an external module. Make sure
>> we pull it in and have it available for applications to use it.
>>
>> Signed-off-by: Stefan Schmidt <stefan.schmidt@huawei.com>
>> ---
>>   recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc    | 1 +
>>   recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc | 1 +
>>   recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc       | 1 +
>>   3 files changed, 3 insertions(+)
>>
>> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
>> b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
>> index 330fe59..35c4106 100644
>> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
>> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
>> @@ -29,6 +29,7 @@ ZEPHYR_MODULES_append_arm =
>> "\;${S}/modules/cmsis"
>>   ZEPHYR_MODULES_append_nordic = "\;${S}/modules/hal/nordic"
>>   ZEPHYR_MODULES_append_stm32 = "\;${S}/modules/hal/stm32"
>>   ZEPHYR_MODULES_append_openamp = "\;${S}/modules/lib/open-
>> amp\;${S}/modules/hal/libmetal"
>> +ZEPHYR_MODULES_append_openthread =
>> "\;${S}/modules/lib/openthread"
> 
> This is not required. It already listed in required sample recipe. Please remove it.

Fixed.

>>
>>   EXTRA_OECMAKE_append = " -DZEPHYR_MODULES=${ZEPHYR_MODULES}"
>>
>> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
>> b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
>> index 8475b5b..4910db2 100644
>> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
>> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
>> @@ -4,6 +4,7 @@ SRCREV_cmsis =
>> "c3bd2094f92d574377f7af2aec147ae181aa5f8e"
>>   SRCREV_nordic = "574493fe29c79140df4827ab5d4a23df79d03681"
>>   SRCREV_stm32 = "f8ff8d25aa0a9e65948040c7b47ec67f3fa300df"
>>   SRCREV_open-amp = "6010f0523cbc75f551d9256cf782f173177acdef"
>> +SRCREV_openthread = "385e19da1ae15f27872c2543b97276a42f102ead"
>>   SRCREV_libmetal = "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
>>   SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
>>   SRCREV_mbedtls = "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
>> diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-
>> kernel/zephyr-kernel/zephyr-kernel-src.inc
>> index 5e43583..4937a77 100644
>> --- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
>> +++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
>> @@ -15,6 +15,7 @@ SRC_URI = "\
>>       git://github.com/zephyrproject-
>> rtos/hal_stm32.git;protocol=https;destsuffix=git/modules/hal/stm32;name=
>> stm32 \
>>       git://github.com/zephyrproject-
>> rtos/mbedtls.git;protocol=https;destsuffix=git/modules/lib/mbedtls;name=
>> mbedtls \
>>       git://github.com/zephyrproject-rtos/open-
>> amp.git;protocol=https;destsuffix=git/modules/lib/open-amp;name=open-
>> amp \
>> +
>> + git://github.com/zephyrproject-rtos/openthread.git;protocol=https;bran
>> + ch=zephyr;destsuffix=git/modules/lib/openthread;name=openthread \
>>       git://github.com/zephyrproject-
> 
> 
> It  would cause build failure with v2.5.0. So add SRCREV_openthread in zephyr-kernel-src-2.5.0.inc too.

Indeed, I did not test with 2.5. Thanks for spotting. Fixed.

I send a v3 now.

regards
Stefan Schmidt
