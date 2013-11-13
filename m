Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1B82E01821
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:08:28 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 23192F811EB; Wed, 13 Nov 2013 09:08:28 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E98B0F811DC;
	Wed, 13 Nov 2013 09:08:25 -0700 (MST)
Message-ID: <5283A3FB.3050305@mlbassoc.com>
Date: Wed, 13 Nov 2013 09:08:27 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1384357651-26684-1-git-send-email-andrei@gherzan.ro>
	<5283A0BB.2010001@philipp-wagner.com>
In-Reply-To: <5283A0BB.2010001@philipp-wagner.com>
Subject: Re: [meta-raspberrypi][PATCH 1/6] linux-raspberrypi: Move patch in inc file
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
X-List-Received-Date: Wed, 13 Nov 2013 16:08:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-11-13 08:54, Philipp Wagner wrote:
> Am 13.11.2013 16:47, schrieb Andrei Gherzan:
>> In order to avoid duplicated code, move sl030raspberrypii2ckernel.patch
>> in linux-raspberrypi.inc.
>
> I'm not convinced this is a good idea. Maybe it's the case for this patch, but most patches probably don't apply for all kernel versions the same. Hopefully this patch goes
> upstream at some point (what's the status of that anyway), and then it's not needed any more.

I agree - putting patches in .inc is probably going to just cause problems later on.

>>
>> Change-Id: I8c3e7a70224672a8def6518baecd4ef86bbb15c4
>> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
>> ---
>>   recipes-kernel/linux/linux-raspberrypi.inc       | 2 ++
>>   recipes-kernel/linux/linux-raspberrypi_3.11.0.bb | 4 +---
>>   recipes-kernel/linux/linux-raspberrypi_3.2.27.bb | 4 +---
>>   recipes-kernel/linux/linux-raspberrypi_3.6.11.bb | 4 +---
>>   recipes-kernel/linux/linux-raspberrypi_3.8.13.bb | 4 +---
>>   5 files changed, 6 insertions(+), 12 deletions(-)
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
>> index e756b57..3397bcb 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi.inc
>> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>> @@ -11,6 +11,8 @@ PV_append = "+git${SRCREV}"
>>
>>   S = "${WORKDIR}/git"
>>
>> +SRC_URI += "file://sl030raspberrypii2ckernel.patch"
>> +
>>   # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
>>   KERNEL_DEFCONFIG = "bcmrpi_defconfig"
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb b/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
>> index 1ae39b2..b197289 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
>> +++ b/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
>> @@ -1,6 +1,4 @@
>>   SRCREV = "d7474694bdc9836af17f4b4d839509f9aad7ffa7"
>> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y \
>> -           file://sl030raspberrypii2ckernel.patch \
>> -          "
>> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y"
>>
>>   require linux-raspberrypi.inc
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb b/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
>> index cc4ee38..7c593a8 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
>> +++ b/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
>> @@ -1,6 +1,4 @@
>>   SRCREV = "ada8b4415ff44d535d63e4291a0eca733bc2ad0f"
>> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27 \
>> -           file://sl030raspberrypii2ckernel.patch \
>> -          "
>> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27"
>>
>>   require linux-raspberrypi.inc
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
>> index 5314f5d..5f173f9 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
>> +++ b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
>> @@ -1,6 +1,4 @@
>>   SRCREV = "cbd6672e7e1b2dc5026f5dc7929a13a9a68f2a62"
>> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y \
>> -           file://sl030raspberrypii2ckernel.patch \
>> -          "
>> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y"
>>
>>   require linux-raspberrypi.inc
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb b/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
>> index dc8cf0a..613c172 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
>> +++ b/recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
>> @@ -1,6 +1,4 @@
>>   SRCREV = "d996a1b91b2bf3dc06f4f4f822a56f4496457aa1"
>> -SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.8.y \
>> -           file://sl030raspberrypii2ckernel.patch \
>> -          "
>> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.8.y"
>>
>>   require linux-raspberrypi.inc
>>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

