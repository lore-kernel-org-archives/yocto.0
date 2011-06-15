Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3845B4C800B3
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2011 20:54:51 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5F1sojr026626
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 14 Jun 2011 18:54:50 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.218) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 14 Jun 2011 18:54:49 -0700
Message-ID: <4DF810E7.7020608@windriver.com>
Date: Tue, 14 Jun 2011 21:54:47 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1308084441-6399-1-git-send-email-bruce.ashfield@windriver.com>
	<1308084441-6399-2-git-send-email-bruce.ashfield@windriver.com>
	<4DF7F6F4.7050306@linux.intel.com>
In-Reply-To: <4DF7F6F4.7050306@linux.intel.com>
Cc: yocto@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH] meta-intel/linux-yocto: update to match the renamed linux-yocto recipes
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
X-List-Received-Date: Wed, 15 Jun 2011 01:54:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-06-14 8:04 PM, Darren Hart wrote:
> On 06/14/2011 01:47 PM, Bruce Ashfield wrote:
>> The linux-yocto recipes have been renamed to include explicit
>> version numbers. The meta-intel bbappends must be updated to
>> follow the new naming convention.
>>
>> As a consequence of the recipe renames any SRCREV specificiations
>> that were part of a machine.conf have been moved to the corresponding
>> bbappend file. This allows the 2.6.34 and 2.6.37 SRCREVs to co-exist.
>>
>> Signed-off-by: Bruce Ashfield<bruce.ashfield@windriver.com>
>
> ...
>
>> diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
>> index 6634102..baf3310 100644
>> --- a/meta-crownbay/conf/machine/crownbay.conf
>> +++ b/meta-crownbay/conf/machine/crownbay.conf
>> @@ -14,7 +14,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
>>   KERNEL_IMAGETYPE = "bzImage"
>>
>>   PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
>> -PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
>> +#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
>
>
> I assume this was an accident? If I don't hear from you shortly I'll
> commit without this change and we can add it back if it was intentional.
> It wasn't in the commit message, so I'm assuming not.

Drop this. I was on the way out, and had made this change to
speed up my builds.

Thanks!

Bruce

>


