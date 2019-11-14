Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AA9DE00E4C; Wed, 13 Nov 2019 23:12:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 999D2E00E43
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 23:12:42 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xAE7CYcc025336
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 23:12:34 -0800
Received: from [128.224.158.209] (128.224.158.209) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.468.0;
	Wed, 13 Nov 2019 23:12:28 -0800
To: Khem Raj <raj.khem@gmail.com>, <yocto@yoctoproject.org>,
	<pjtexier@koncepto.io>
References: <20191114060410.37069-1-hongxu.jia@windriver.com>
	<9b25d589f66bb9a4a7850e089a5828b62ddb0bde.camel@gmail.com>
From: Hongxu Jia <hongxu.jia@windriver.com>
Message-ID: <fb18bbec-e560-cea7-7c5a-f8f2dac7e0dd@windriver.com>
Date: Thu, 14 Nov 2019 15:12:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <9b25d589f66bb9a4a7850e089a5828b62ddb0bde.camel@gmail.com>
Subject: Re: [meta-raspberrypi][PATCH] wic: add swap partition and set /root and /swap size
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
X-List-Received-Date: Thu, 14 Nov 2019 07:12:43 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

On 11/14/19 2:30 PM, Khem Raj wrote:
> On Thu, 2019-11-14 at 06:04 +0000, Hongxu Jia wrote:
>> - Add swap partition to workaround memory limitation
>>
>> - Support to set /root and /swap size, 4G /root and 1G /swap by
>> default
>>
>> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
>> ---
>>   conf/machine/include/rpi-base.inc                           | 5
>> ++++-
>>   wic/{sdimage-raspberrypi.wks => sdimage-raspberrypi.wks.in} | 3 ++-
>>   2 files changed, 6 insertions(+), 2 deletions(-)
>>   rename wic/{sdimage-raspberrypi.wks => sdimage-raspberrypi.wks.in}
>> (75%)
>>
>> diff --git a/conf/machine/include/rpi-base.inc
>> b/conf/machine/include/rpi-base.inc
>> index 36a8daf..de2f366 100644
>> --- a/conf/machine/include/rpi-base.inc
>> +++ b/conf/machine/include/rpi-base.inc
>> @@ -6,7 +6,10 @@ SOC_FAMILY = "rpi"
>>   include conf/machine/include/soc-family.inc
>>   
>>   IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
>> -WKS_FILE ?= "sdimage-raspberrypi.wks"
>> +
>> +PI_WKS_ROOT_SIZE ?= "--size=4096M --overhead-factor 1"
> this means we need minimum 4G cards.
>
>> +PI_WKS_SWAP_SIZE ?= "--size=1024M --overhead-factor 1"
> I think these options should be not set here. if someone wants they
> should be injected by local config.

OK, I will comments them out as a example

//Hongxu

>> +WKS_FILE ?= "sdimage-raspberrypi.wks.in"
>>   
>>   XSERVER = " \
>>       xserver-xorg \
>> diff --git a/wic/sdimage-raspberrypi.wks b/wic/sdimage-
>> raspberrypi.wks.in
>> similarity index 75%
>> rename from wic/sdimage-raspberrypi.wks
>> rename to wic/sdimage-raspberrypi.wks.in
>> index 01fbaea..81707c7 100644
>> --- a/wic/sdimage-raspberrypi.wks
>> +++ b/wic/sdimage-raspberrypi.wks.in
>> @@ -3,4 +3,5 @@
>>   # Raspberry Pi. Boot files are located in the first vfat partition.
>>   
>>   part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat
>> --label boot --active --align 4096 --size 20
>> -part / --source rootfs --ondisk mmcblk0 --fstype=ext4 --label root
>> --align 4096
>> +part / --source rootfs --ondisk mmcblk0 --fstype=ext4 --label root
>> --align 4096 ${PI_WKS_ROOT_SIZE}
>> +part swap --ondisk mmcblk0 --size 44 --label swap --fstype=swap
>> ${PI_WKS_SWAP_SIZE}
> its using --size 44, perhaps thats default if its not set via
> PI_WKS_SWAP_SIZE
>
>> -- 
>> 2.17.1
>>
>


