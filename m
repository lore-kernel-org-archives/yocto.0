Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12CD4E00A44; Thu,  1 May 2014 11:35:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB04FE009C5
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 11:35:00 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 2103E27E015;
	Thu,  1 May 2014 18:34:59 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id j_Pk7f-Mpcr8; Thu,  1 May 2014 18:34:58 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 149B727E006;
	Thu,  1 May 2014 18:34:58 +0000 (UTC)
Message-ID: <536293D0.2010605@dynamicdevices.co.uk>
Date: Thu, 01 May 2014 19:34:56 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Otavio Salvador <otavio@ossystems.com.br>
References: <5362171B.8010000@dynamicdevices.co.uk>	<5577559.2gRHFt1x94@peggleto-mobl5.ger.corp.intel.com>	<536285BC.8010200@dynamicdevices.co.uk>
	<CAP9ODKrgW5+pPsS51QLwd+9j0q2xMd+j-Q6bjKgZdV7ho_D0WA@mail.gmail.com>
In-Reply-To: <CAP9ODKrgW5+pPsS51QLwd+9j0q2xMd+j-Q6bjKgZdV7ho_D0WA@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>
Subject: Re: Undefining a variable in a recipe?
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
X-List-Received-Date: Thu, 01 May 2014 18:35:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 01/05/2014 18:54, Otavio Salvador wrote:
> On Thu, May 1, 2014 at 2:34 PM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk> wrote:
>> On 01/05/2014 14:54, Paul Eggleton wrote:
>>> Hi Alex,
>>>
>>> On Thursday 01 May 2014 10:42:51 Alex J Lennon wrote:
>>>> I have an issue with the build of an old u-boot (2009.08) which is
>>>> failing a check in poky as both UBOOT_CONFIG and UBOOT_MACHINE are being
>>>> defined for some reason.
>>>>
>>>> poky/meta/classes/uboot-config.bbclass
>>>>
>>>>  ubootmachine = d.getVar("UBOOT_MACHINE", True)
>>>>  ubootconfigflags = d.getVarFlags('UBOOT_CONFIG')
>>>>
>>>> ..
>>>>
>>>>  if ubootmachine and ubootconfigflags:
>>>>        raise bb.parse.SkipPackage("You cannot use UBOOT_MACHINE and
>>>> UBOOT_CONFIG at the same time.")
>>>>
>>>>
>>>> I have a .bbappend on the original u-boot recipe and could solve the
>>>> problem by undefining UBOOT_MACHINE if I could work out how to do this
>>>> in the .bbappend
>>>>
>>>> I've tried setting it to None or an empty string, and I tried an
>>>> anonymous python function but those approaches didn't help,
>>>>
>>>> e.g. (in the .bbappend
>>>>
>>>> UBOOT_MACHINE = ""
>>> This should work - the python code above is checking if the value evaluates to
>>> True, and that shouldn't be the case for an empty string. I suspect something
>>> else is at work here - either the check is running before your value gets set,
>>> or the value is being set using an override somewhere and therefore your value
>>> isn't being used.
>>>
>>> (adding Otavio on CC since these are his checks and his layer)
>> Thanks for coming back to me on this Paul. OK, I must be
>> misunderstanding something.
>>
>> I was outputting the UBOOT_MACHINE to test and it's not a True value at
>> any point as you
>> might expect as it's set to the machine type if set, but my build was
>> still failing to pick up
>> my preferred recipe version unless I commented out the if/raise, in
>> which case all worked
>> as expected.
>>
>> Caught up with something at the minute but I will go through this  again
>> first thing tomorrow.
> When you debug it let me know and I can try to help in solve it.
>

Much appreciated thanks Otavio. Will do.


