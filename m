Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD4F2E0095D; Tue,  9 Dec 2014 10:13:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46762E0083A
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 10:13:24 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id sB9IDHXb014260
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 9 Dec 2014 10:13:18 -0800 (PST)
Received: from [128.224.20.249] (128.224.20.249) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Tue, 9 Dec 2014 10:13:17 -0800
Message-ID: <54873BBA.609@windriver.com>
Date: Tue, 9 Dec 2014 13:13:14 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: <maciej.borzecki@open-rnd.pl>
References: <1418139871-21134-1-git-send-email-maciej.borzecki@open-rnd.pl>	
	<54871A89.4020704@windriver.com>
	<1418147975.2572.3.camel@open-rnd.pl>
In-Reply-To: <1418147975.2572.3.camel@open-rnd.pl>
Cc: yocto@yoctoproject.org, Tom Zanussi <tom.zanussi@linux.intel.com>,
	Denys Dmytriyenko <denys@ti.com>
Subject: Re: [meta-yocto-bsp][PATCH] beaglebone.conf: update KERNEL_IMAGETYPE to match u-boot
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
X-List-Received-Date: Tue, 09 Dec 2014 18:13:29 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/09/2014 12:59 PM, Maciek Borzecki wrote:
> On wto, 2014-12-09 at 10:51 -0500, Bruce Ashfield wrote:
>> On 12/09/2014 10:44 AM, Maciej Borzecki wrote:
>>> U-boot 2014.07 in Poky expects a zImage kernel image, thus a build done with
>>> current machien config will not be directly useable. Update machine config to
>>> produce a zImage.
>>
>> poky's README.hardware should be updated as well. When we wrote the
>> instructions
>> (and tested on 3.14) the uImage worked, so that is what is referenced
>> in the instructions :)
>
> Actually README.hardware section about BBB can be updated with info
> about wic. Starting with 1.7 working SD card images for BBB can be built
> out of the box, without going through manual partitiong, untarring,
> etc.
>

I wouldn't remove the raw commands for wic-only instructions.  Since there
are multiple ways to do it .. they can all be documented.

Bruce

> AFAIK the same applies to x86 images, though Tom would be the best
> person to comment here.
>
>
>> Bruce
>>
>>>
>>> Signed-off-by: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
>>> Signed-off-by: Maciek Borzecki <maciek.borzecki@gmail.com>
>>> ---
>>>    meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
>>> index a316207..fb0189d 100644
>>> --- a/meta-yocto-bsp/conf/machine/beaglebone.conf
>>> +++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
>>> @@ -24,7 +24,7 @@ SERIAL_CONSOLE = "115200 ttyO0"
>>>    PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>>>    PREFERRED_VERSION_linux-yocto ?= "3.14%"
>>>
>>> -KERNEL_IMAGETYPE = "uImage"
>>> +KERNEL_IMAGETYPE = "zImage"
>>>    KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
>>>    KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
>>>
>>>
>>
>
>


