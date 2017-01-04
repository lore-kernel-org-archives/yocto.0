Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 338B7E0043F; Wed,  4 Jan 2017 05:25:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1885E00405
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2017 05:25:33 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 890E068A019; Wed,  4 Jan 2017 13:25:32 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 0155C68A019;
	Wed,  4 Jan 2017 13:25:32 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 8D09B6740355;
	Wed,  4 Jan 2017 14:25:31 +0100 (CET)
To: yocto@yoctoproject.org
References: <f13af171-a99e-cfb4-176b-4c1a5d459c44@mlbassoc.com>
	<3716500.351XhGvxqH@peggleto-mobl.ger.corp.intel.com>
	<fca382f4-53b0-55e2-e635-e78e93363a46@mlbassoc.com>
	<1539248.F6glg5RPsy@peggleto-mobl.ger.corp.intel.com>
	<d8c31717-b728-65ef-782c-10918fb331bb@mlbassoc.com>
	<1483534455.28169.46.camel@intel.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <61560e1d-6f14-58ec-0a87-36320fe8c0d8@mlbassoc.com>
Date: Wed, 4 Jan 2017 14:25:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <1483534455.28169.46.camel@intel.com>
Subject: Re: esdk without using Poky?
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
X-List-Received-Date: Wed, 04 Jan 2017 13:25:35 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-01-04 13:54, Patrick Ohly wrote:
> On Wed, 2017-01-04 at 12:05 +0100, Gary Thomas wrote:
>> On 2016-11-04 04:41, Paul Eggleton wrote:
>>> On Wed, 02 Nov 2016 07:25:13 Gary Thomas wrote:
>>>> I've tested your patches for this (from the OE-core mailing list)
>>>> and I can now build and use the eSDK for my board :-)
>>>
>>> Great!
>>>
>>>> I do have a couple observations/questions:
>>>>
>>>> * I added my missing tool with this line in my local.conf
>>>>       TOOLCHAIN_HOST_TASK_append = " nativesdk-ti-cgt-pru"
>>>>    Why did this cause many of the nativesdk tools to have to be rebuilt?
>>>
>>> So just FYI this will only work for the standard SDK, it's not the right way
>>> to add these tools for the eSDK - in fact it may break the eSDK due to
>>> bringing things into the native sysroot that shouldn't be there.
>>>
>>> At the moment I think the only way to properly add this to the eSDK is to do
>>> this:
>>>
>>> SDK_TARGETS += "ti-cgt-pru-native:do_populate_sysroot"
>>>
>>> We don't document this, and it's a little awkward in any case. I'll work on
>>> it.
>>
>> This was working great for me until I just upgraded to the latest [poky]
>> master (rev dbb247cac5fbf7b037e4955f9793828451723924).  With the SDK_TARGETS
>> line in my local.conf, I get this error:
>>
>> ERROR: Error for /local/poky-cutting-edge/meta-rainier-am335x-p8701/packages/images/magicard-demo-image_1.0.bb,
>> dependency ti-cgt-pru-native:do_populate_sysroot:do_populate_sysroot
>                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>
>>  does not contain exactly one ':' character.
>>   Task 'rdepends' should be specified in the form 'packagename:task'
>>
>> Any ideas what changed and how I get it working again?
>
> I enhanced the error checking, and the rdepends varflag in your example
> indeed isn't valid. ":do_populate_sysroot" got appended twice to the
> recipe name. That error got ignored silently earlier.
>
> populate_sdk_ext.bbclass appends ":do_populate_sysroot" when setting
> do_sdk_depends[rdepends], so you should use just:
>
>    SDK_TARGETS += "ti-cgt-pru-native"
>

Thanks that worked - at least I can build, I haven't checked the esdk yet.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

