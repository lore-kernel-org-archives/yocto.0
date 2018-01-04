Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7D53E00DA3; Wed,  3 Jan 2018 18:30:58 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0BD8E00D81
	for <yocto@yoctoproject.org>; Wed,  3 Jan 2018 18:30:57 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w042Urpc008659
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 3 Jan 2018 18:30:53 -0800 (PST)
Received: from server.local (128.224.22.104) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.361.1;
	Wed, 3 Jan 2018 18:30:53 -0800
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <a56c815971a74fedaf7f9676840447f1@sakuraus.com>
	<3d3ef818-08f3-f706-45ae-264cc7cf7fff@windriver.com>
	<8acdc20521304e4aaf197d661e63b7fd@sakuraus.com>
	<8e9d6bf9-b92f-e0f4-10d6-10db758c66a1@windriver.com>
	<b53033627c9a435e8919289e32b4d167@sakuraus.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <9f114a5a-119a-b471-fd2f-fd0618938fa8@windriver.com>
Date: Wed, 3 Jan 2018 21:30:52 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <b53033627c9a435e8919289e32b4d167@sakuraus.com>
Subject: Re: Kernel configuration problem/confusion
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
X-List-Received-Date: Thu, 04 Jan 2018 02:30:58 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2017-12-27 12:11 PM, Greg Wilson-Lindberg wrote:
> Hi Bruce,
> 
> First, the kernel is 4.4.50, the recipe is linux-raspberrypi_4.4.bb in 
> meta-raspberrypi. My image recipe is based on one from Qt, but it is 
> using the kernel recipe in meta-raspberry.
> 
> 
> I changed my .bbappend to:
> 
> # Scribe additions to kernel configuration
> 
> # Enable MAX9768
> #CONFIG_SOC_ALL_CODECS=m
> #CONFIG_COMPILE_TEST=y
> #CONFIG_SND_SOC_MAX9768=m
> 
> # Enable MAX11606
> IIO=y
> CONFIG_MAX1363=m
> 
> and I get:
> 
> WARNING: linux-raspberrypi-1_4.4.50+gitAUTOINC+04c8e47067-r0 
> do_kernel_configcheck: [kernel config]: specified values did not make it 
> into the kernel's final configuration:
> 
> ---------- CONFIG_MAX1363 -----------------
> Config: CONFIG_MAX1363
> From: 
> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> Requested value:  CONFIG_MAX1363=m
> Actual value:     # CONFIG_MAX1363 is not set
> 
> Config 'MAX1363' has the following conditionals:
>    I2C (value: "y")
> Dependency values are:
>    I2C [y]
> 
> It's acting like there is some hidden dependency that it is not telling 
> us about. I tried running menuconfig and that allows me so set it 
> without any problems.

Sorry for the slow reply. I've been out of the office (and will be
until the 8th).

Are you still looking into this ? Rather than me make mistakes in
the exact configuration, can you send me (offlist, or here, doesn't
really matter) your bblayers to make sure I'm building exactly the
same thing ?

Bruce

> 
> Regards,
> Greg
> 
> 
> ------------------------------------------------------------------------
> *From:* Bruce Ashfield <bruce.ashfield@windriver.com>
> *Sent:* Saturday, December 23, 2017 7:29 PM
> *To:* Greg Wilson-Lindberg; yocto@yoctoproject.org
> *Subject:* Re: [yocto] Kernel configuration problem/confusion
> 
> 
> On 12/22/2017 6:17 PM, Greg Wilson-Lindberg wrote:
>> Hi Bruce,
>> First, thanks for the unbelievably quick response.
>> 
>> I searched the Yocto sources and didn't find anything that was trying to 
>> manipulate either of the variables except my .cfg.
>> 
>> The memuconfig search for MAX9768 results in:
>> Symbol: SND_SOC_MAX9768 [=n]
>>      Type  : tristate
>>        Defined at sound/soc/codecs/Kconfig:917
>>        Depends on: SOUND [=y] && !M68K && !UML && SND [=m] && SND_SOC [=m]
>>        Selected by: SND_SOC_ALL_CODECS [=n] && SOUND [=y] && !M68K && 
>> !UML && SND [=m] && SND_SOC [=m] && COMPILE_TEST [=n] && I2C [=y]
>> To my (untrained) eye it seems that I need SND_SOC_ALL_CODECS 
>> & COMPILE_TEST. I tried setting them but I get a similar error 
>> for COMPILE_TEST. A search for it yields:
>>   Symbol: COMPILE_TEST [=n]
>>      Type  : boolean
>>      Prompt: Compile also drivers which will not load
>>        Location:
>>      (1) -> General setup
>>        Defined at init/Kconfig:56
>> Which doesn't seem to suggest that there should be any problems setting it.
> 
> 
> True, but since SND_SOC_MAX9768 doesn't have any help text (aka
> a prompt in Kconfig speak) then it isn't something that you can
> actually reach by menuconfig and by extension .. it must be selected
> by other code. So you are on the right track. Either those symbols
> are also missing dependencies, or MAX9768 itself is missing a
> dependency.
> 
>> 
>> The search for MAX1363 yields:
>>   Symbol: MAX1363 [=n]
>>      Type  : tristate
>>       Prompt: Maxim max1363 ADC driver
>>        Location:
>>          -> Device Drivers
>>            -> Industrial I/O support (IIO [=m])
>>      (1)     -> Analog to digital converters
>>        Defined at drivers/iio/adc/Kconfig:218
>>        Depends on: IIO [=m] && I2C [=y]
>>        Selects: IIO_BUFFER [=y] && IIO_TRIGGERED_BUFFER [=n]
>> Which doesn't seem to mereveal any reason that I shouldn't be able to 
>> set it.
> 
> At a glance, I'm also not seeing the reason. Did you try forcing
> IIO=y and seeing if there's a difference ? =m should satisfy that
> Kconfig dependency, but it is worth checking.
> 
> Is this a mainline kernel ? or something else that I could build ?
> Maybe with a quick test here, it would be more obvious.
> 
> Bruce
> 
>> 
>> Regards,
>> Greg
>> ------------------------------------------------------------------------
>> *From:* Bruce Ashfield <bruce.ashfield@windriver.com>
>> *Sent:* Friday, December 22, 2017 12:27:22 PM
>> *To:* Greg Wilson-Lindberg; yocto@yoctoproject.org
>> *Subject:* Re: [yocto] Kernel configuration problem/confusion
>> 
>> 
>> On 12/22/2017 3:51 PM, Greg Wilson-Lindberg wrote:
>>> I'm trying to add some kernel configuration to a Raspberry pi3 yocto 
>>> build.  I've got the .cfg fragment being read in, but I'm getting 
>>> warnings that indicate that they are not making the desired changes.
>>> 
>>> 
>>> The first one is CONFIG_SND_SOC_MAX9768. This is a sound codec and the 
>>> Kconfig file has it in a long list of select's. the one for the MAX9768 is:
>>> 
>>>      select CONFIG_SND_SOC_MAX9768 if I2C
>>> 
>>> I2C is set, but CONFIG_SND_SOC_MAX9768 ends up undefined. the warning 
>>> I'm getting is:
>>> 
>>> ---------- CONFIG_SND_SOC_MAX9768 -----------------
>>> Config: CONFIG_SND_SOC_MAX9768
>>> From: 
>>> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
>>> Requested value:  CONFIG_SND_SOC_MAX9768=y
>>> Actual value:
>>> 
>>> Config 'SND_SOC_MAX9768' has the following conditionals:
>>> Dependency values are:
>>> 
>>> SND_SOC_MAX9768 ends up not being selected even though I try to set it 
>>> ti 'y'
>>> 
>>> 
>>> The second one is CONFIG_MAX1363, this is an ADC that I'm trying to set, 
>>> the warning is:
>>> 
>>> ---------- CONFIG_MAX1363 -----------------
>>> Config: CONFIG_MAX1363
>>> From: 
>>> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
>>> Requested value:  CONFIG_MAX1363=y
>>> Actual value:     # CONFIG_MAX1363 is not set
>>> 
>>> Config 'MAX1363' has the following conditionals:
>>>    I2C (value: "y")
>>> Dependency values are:
>>>    I2C [y]
>>> 
>>> It ends up being not set. In both cases the value that I'm trying to set 
>>> is ignored. Any insight would be greatly appreciated.
>> 
>> The python library that tries to detangle the Kconfig dependencies
>> isn't perfect (but I do have an update for it pending), so you might
>> not be getting the entire story in that information dumb.
>> 
>> Two things to check:
>> 
>>    - there are no other fragments that are disabling the same option
>>    - use menuconfig in the kernel to search the option and see what it
>>      reports for the dependencies.
>> 
>> There's some constraint or overriding command that is not allowing the
>> option into the final config, we just need to track it down.
>> 
>> Bruce
>> 
>>> 
>>> 
>>> Regards,
>>> 
>>> Greg
>>> 
>>> 
>>> 


