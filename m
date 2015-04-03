Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68A61E0095C; Fri,  3 Apr 2015 00:03:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40FA8E0059F
	for <yocto@yoctoproject.org>; Fri,  3 Apr 2015 00:03:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t3373M43017631
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 3 Apr 2015 00:03:22 -0700 (PDT)
Received: from [128.224.162.236] (128.224.162.236) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Fri, 3 Apr 2015 00:03:21 -0700
Message-ID: <551E3B3C.9080306@windriver.com>
Date: Fri, 3 Apr 2015 15:03:24 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: "Yu, Chan KitX" <chan.kitx.yu@intel.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
References: <0E4D391FE2BDEC45AA0B4E32D6BD598A28AF2F@PGSMSX101.gar.corp.intel.com>	<11611765.NtzfTBFTpN@peggleto-mobl.ger.corp.intel.com>
	<0E4D391FE2BDEC45AA0B4E32D6BD598A28B04C@PGSMSX101.gar.corp.intel.com>
In-Reply-To: <0E4D391FE2BDEC45AA0B4E32D6BD598A28B04C@PGSMSX101.gar.corp.intel.com>
X-Originating-IP: [128.224.162.236]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel Panic: /sbin/init not found
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
X-List-Received-Date: Fri, 03 Apr 2015 07:03:39 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 04/03/2015 02:43 PM, Yu, Chan KitX wrote:
>
>> -----Original Message-----
>> From: Yu, Chan KitX
>> Sent: Friday, April 03, 2015 2:30 PM
>> To: 'Paul Eggleton'
>> Cc: yocto@yoctoproject.org
>> Subject: RE: [yocto] Kernel Panic: /sbin/init not found
>>
>>
>>
>>> -----Original Message-----
>>> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>>> Sent: Thursday, April 02, 2015 7:37 PM
>>> To: Yu, Chan KitX
>>> Cc: yocto@yoctoproject.org
>>> Subject: Re: [yocto] Kernel Panic: /sbin/init not found
>>>
>>> Hi Chan Kit,
>>>
>>> On Thursday 02 April 2015 09:25:35 Yu, Chan KitX wrote:
>>>> My Yocto build environment was working perfectly until last week
>>>> when I got kernel panic caused by missing/sbin/init. When I examined
>>>> the image, I found that /sbin/init is indeed absent from the root image.
>>>> To troubleshoot the issue, I tried building a stock Yocto whose
>>>> target platform is 64-bit machine using a  freshly installed Ubuntu
>>>> 14.04 from
>>> another build machine.
>>>>   Despite that, the kernel panic still occurs and that's the main
>>>> reason I'm writing here; that is to see if anyone else has the same
>>>> issue. I did not make any change or any customization to local.conf
>>>> aside from setting MACHINE to 64 bit and adding the following lines
>>>> which
>>> enable multilib:
>>>> IMAGE_INSTALL = "lib32-connman"
>>>> require conf/multilib.conf
>>>> MULTILIBS = "multilib:lib32"
>>>> DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
>>>>
>>>> I would be more than happy to provide necessary diagnostic message
>>>> shall you request so. Let me know if you guys are able to reproduce
>>>> this
>>> issue.
>>>
>>> What version of the build system are you using? What exact image are
>>> you building? What image output type are you trying this with (ext3 / live /
>> etc.)?
>>> What is your MACHINE value?
>> Build Configuration:
>> BB_VERSION        = "1.24.0"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "Ubuntu-14.04"
>> TARGET_SYS        = "x86_64-poky-linux"
>> MACHINE           = "valleyisland-64"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.7.1"
>> TUNE_FEATURES     = "m64 corei7"
>> TARGET_FPU        = ""
>> meta
>> meta-yocto
>> meta-yocto-bsp    = "dizzy:ec75238f6cc2d2d8d40e0268f6d2acc070cbe9a4"
>> meta-intel
>> meta-valleyisland = "dizzy:c39a4bf4450845fca6f1b26ccfc0db192a4567e8"
>>
>> The above is the build configuration. As of the image that I was trying to
>> build, I did the hddimg and iso. I got the KP issue from using the iso image. I
>> thought the issue might have to do with the meta-valleyisland so I switched
>> to genericx86-64 instead. No luck.
>>
>>
>> Can you attach the manifest file for the image
>>> that is broken?
>> Attached.
>>
>> UPDATE: I tried disabling the multilib feature by commenting out the
>> following in local.conf:
>>
>> IMAGE_INSTALL = "lib32-connman"

The problem is that you set IMAGE_INSTALL to "lib32-connman".

You should use the following.
IMAGE_INSTALL_append = " lib32-connman"
(Note there's a white space before lib32-connman in the assignment above.)

Regards,
Chen Qi

>> require conf/multilib.conf
>> MULTILIBS = "multilib:lib32"
>> DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
> Argh...I forgot to mention the main thing; that is the KP issue disappears iff I disable the multilib by removing/commenting those lines. As happy as I am since I found the root cause, I really need the multilib feature and hopefully we can dig deeper from here to fix this.
>
> Chan Kit
>
>


