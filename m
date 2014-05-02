Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 667C7E00985; Thu,  1 May 2014 22:24:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D67B1E00478
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 22:24:33 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 72E0527E015;
	Fri,  2 May 2014 05:24:32 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 6GmlZDFl1Wuw; Fri,  2 May 2014 05:24:30 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 6A87727E006;
	Fri,  2 May 2014 05:24:30 +0000 (UTC)
Message-ID: <53632C0B.1010401@dynamicdevices.co.uk>
Date: Fri, 02 May 2014 06:24:27 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Otavio Salvador <otavio@ossystems.com.br>, 
	Paul Eggleton <paul.eggleton@linux.intel.com>
References: <5362171B.8010000@dynamicdevices.co.uk>	<5577559.2gRHFt1x94@peggleto-mobl5.ger.corp.intel.com>	<536285BC.8010200@dynamicdevices.co.uk>
	<CAP9ODKrgW5+pPsS51QLwd+9j0q2xMd+j-Q6bjKgZdV7ho_D0WA@mail.gmail.com>
In-Reply-To: <CAP9ODKrgW5+pPsS51QLwd+9j0q2xMd+j-Q6bjKgZdV7ho_D0WA@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: yocto <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 02 May 2014 05:24:39 -0000
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

Hi Otavio, Paul,

(Thanks for your advice on this; apologies if I'm posting to the wrong
list but I thought it would be worth maintaining the thread in-situ)

Revisiting the issue, a little background might first be useful to
explain what I'm trying to achieve and why I'm doing what I'm doing.

I am currently working with a board variant based on the Freescale
imx6qsabresd.

I have a board port which a colleague did for an Android project, and
they based on u-boot-imx 2009.08 and linux-imx kernel 3.0.35

My roadmap is to forward port the changes into the newer kernel 3.10.17
for which I understand we'll also need the newer
u-boot 2013.04 for devicetree support. This is because I aim to be in
sync with FSL when Yocto daisy is supported in Q3 or
thereabouts. However I have not completed that work yet, and I need
working images now based on the older u-boot/kernel
to enable us to prove out the hardware and go to higher volume board
manufacture in the short term.

So I'm currently using Yocto poky daisy (5306aaab) and the last
meta-fsl-arm commit before you (Otavio) removed the u-boot 2009.08
recipe (fc8bcfae0)

I have my own layer in which I have various .bbappends to, e.g. modify
SRC_URI / REV / BRANCH to use the custom u-boot, kernel, bring in apps
and so forth.

Build configuration here: http://pastebin.com/M6wL1yhB

Local.conf here: http://pastebin.com/hg4LbLJ5

...

As you can see we're building for MACHINE = imx6qsabresd. Also I have
preferred providers/versions set in local.conf for u-boot-imx 2009.08,
linux-imx 3.0.35

When I run a bitbake of my image I see

NOTE: Resolving any missing task queue dependencies
NOTE: preferred version 2009.08 of u-boot-imx not available (for item
u-boot)
NOTE: versions of u-boot-imx available: 2013.04
NOTE: preferred version 2009.08 of u-boot-imx not available (for item
u-boot-imx)
NOTE: versions of u-boot-imx available: 2013.04
NOTE: preferred version 2009.08 of u-boot-imx not available (for item
u-boot-imx-dev)
NOTE: versions of u-boot-imx available: 2013.04

This is because of the lines in /poky/meta/classes/uboot-config.bbclass

 if ubootmachine and ubootconfigflags:
       raise bb.parse.SkipPackage("You cannot use UBOOT_MACHINE and
UBOOT_CONFIG at the same time.")

WIth these two lines commented out I no longer see the "not available"
notes and can succesfully build u-boot-imx 2009.08

...

If I add in some logging, e.g.

    bb.warn("ubootmachine: %s" %ubootmachine )
    bb.warn("ubootmachine: %s" %ubootconfigflags )

#    if ubootmachine and ubootconfigflags:
#       raise bb.parse.SkipPackage("You cannot use UBOOT_MACHINE and
UBOOT_CONFIG at the same time.")

I see the following,

WARNING: ubootmachine:
mx6q_sabresd_config                                                                                                                                                 
| ETA:  --:--:--
WARNING: ubootmachine: {'sata': 'mx6qsabresd_sata_config', 'mfgtool':
'mx6qsabresd_config', 'defaultval': 'sd', 'sd':
'mx6q_sabresd_android_config,sdcard'}
WARNING: ubootmachine: None
WARNING: ubootmachine: {'sata': 'mx6qsabresd_sata_config', 'sd':
'mx6qsabresd_config,sdcard', 'mfgtool': 'mx6qsabresd_config',
'defaultval': 'sd'}
WARNING: ubootmachine: None
WARNING: ubootmachine: {'sata': 'mx6qsabresd_sata_config', 'sd':
'mx6qsabresd_config,sdcard', 'mfgtool': 'mx6qsabresd_config',
'defaultval': 'sd'}
WARNING: ubootmachine: None
WARNING: ubootmachine: {'sd': 'mx6qsabresd_config,sdcard', 'mfgtool':
'mx6qsabresd_config', 'defaultval': 'sd', 'sata': 'mx6qsabresd_sata_config'}
WARNING: ubootmachine: mx6q_sabresd_config
WARNING: ubootmachine: {'sata': 'mx6qsabresd_sata_config', 'mfgtool':
'mx6qsabresd_config', 'defaultval': 'sd', 'sd':
'mx6q_sabresd_android_config,sdcard'}
WARNING: ubootmachine: None
WARNING: ubootmachine: {'sata': 'mx6qsabresd_sata_config', 'sd':
'mx6qsabresd_config,sdcard', 'mfgtool': 'mx6qsabresd_config',
'defaultval': 'sd'}
WARNING: ubootmachine: None
WARNING: ubootmachine: {'sata': 'mx6qsabresd_sata_config', 'sd':
'mx6qsabresd_config,sdcard', 'mfgtool': 'mx6qsabresd_config',
'defaultval': 'sd'}
WARNING: ubootmachine: None
WARNING: ubootmachine: {'sata': 'mx6qsabresd_sata_config', 'sd':
'mx6qsabresd_config,sdcard', 'mfgtool': 'mx6qsabresd_config',
'defaultval': 'sd'}

I'm not sure why the class is being called multiple times in this way.

...

"This should work - the python code above is checking if the value evaluates to
True, and that shouldn't be the case for an empty string." 

Paul - as you can see, sometimes ubootmachine is being set by
d.getVar("UBOOT_MACHINE", True) but it isn't being set based on a test
for true from what I understand (?)

I can't see any documentation on what the flag parameter actually does,
although I see examples in which it's set to '1' but doesn't seem to do much

I did a quick test as follows,

python __anonymous () {
  bb.data.setVar('TEST', 'testvalue', d)
  print "getVar: %s\n" %bb.data.getVar('TEST', d)
  print "getVar with flag: %s\n" %bb.data.getVar('TEST', d, True)
}

That gives me

getVar: testvalue 
getVar with flag: testvalue

So I don't believe that getVar() is actually doing a test for True (?)

...

Grepping through the sources, UBOOT_MACHINE is set in
meta-fsm-arm/recipes-bsp-u-boot-imx_2009_08.bb

UBOOT_MACHINE_imx6qsabresd = "mx6q_sabresd_config"

I can comment out that line and build u-boot-imx 2009.08 successfully

Similarly, UBOOT_CONFIG is set in conf/machine/imx6qsabresd.conf

UBOOT_CONFIG ??= "sd"
UBOOT_CONFIG[sd] = "mx6qsabresd_config,sdcard"
UBOOT_CONFIG[sata] = "mx6qsabresd_sata_config"
UBOOT_CONFIG[mfgtool] = "mx6qsabresd_config"

If I comment out these lines instead of UBOOT_MACHINE_foo I can also
build u-boot-imx 2009.08 successfully

...

So I guess I'm at the point where I'm wondering if a getVar() with a
flag is behaving as you would expect it to,
or how I might go about ensuring either UBOOT_MACHINE or UBOOT_CONFIG
isn't defined?

Thanks in advance for any advice,

Alex



