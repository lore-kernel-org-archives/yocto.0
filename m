Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 151C6E0080C; Thu, 11 Dec 2014 04:14:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19663E002F9
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 04:14:26 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id sBBCEKI5014942
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 11 Dec 2014 04:14:20 -0800 (PST)
Received: from [128.224.92.225] (128.224.92.225) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Thu, 11 Dec 2014 04:14:20 -0800
Message-ID: <54898A9A.5010403@windriver.com>
Date: Thu, 11 Dec 2014 07:14:18 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: <maciej.borzecki@open-rnd.pl>, <yocto@yoctoproject.org>
References: <1418139871-21134-1-git-send-email-maciej.borzecki@open-rnd.pl>	
	<20141209155053.GN5113@edge> <1418299506.17814.2.camel@open-rnd.pl>
In-Reply-To: <1418299506.17814.2.camel@open-rnd.pl>
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
X-List-Received-Date: Thu, 11 Dec 2014 12:14:31 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/11/2014 07:05 AM, Maciek Borzecki wrote:
> On wto, 2014-12-09 at 10:50 -0500, Denys Dmytriyenko wrote:
>> On Tue, Dec 09, 2014 at 04:44:31PM +0100, Maciej Borzecki wrote:
>>> U-boot 2014.07 in Poky expects a zImage kernel image, thus a build done with
>>> current machien config will not be directly useable. Update machine config to
>>> produce a zImage.
>>>
>>> Signed-off-by: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
>>> Signed-off-by: Maciek Borzecki <maciek.borzecki@gmail.com>
>>
>> Acked-by: Denys Dmytriyenko <denys@ti.com>
>
> Can we pick that up for master?

We really should spend the few minutes and make sure the zImage is updated
in the README as well. Since with this change, we are knowingly making
them invalid (I admit they don't work now if you can't boot the uImage,
but we shouldn't make it worse).

Bruce

>>
>> This was sitting in my tree pending fixed update to U-boot 2014.10...
>>
>>> ---
>>>   meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
>>> index a316207..fb0189d 100644
>>> --- a/meta-yocto-bsp/conf/machine/beaglebone.conf
>>> +++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
>>> @@ -24,7 +24,7 @@ SERIAL_CONSOLE = "115200 ttyO0"
>>>   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>>>   PREFERRED_VERSION_linux-yocto ?= "3.14%"
>>>
>>> -KERNEL_IMAGETYPE = "uImage"
>>> +KERNEL_IMAGETYPE = "zImage"
>>>   KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
>>>   KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
>>>
>>> --
>>> 1.9.3
>>>
>
>


