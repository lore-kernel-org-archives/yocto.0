Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 980F3E0059A
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 06:06:52 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 1DF44F81217; Thu, 26 Jan 2012 07:06:51 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 91E39F8120E;
	Thu, 26 Jan 2012 07:06:40 -0700 (MST)
Message-ID: <4F215DF0.4020503@mlbassoc.com>
Date: Thu, 26 Jan 2012 07:06:40 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2133BB.8090408@communistcode.co.uk>
	<43D8289B-2551-43ED-AC5F-5C571A22990E@beagleboard.org>
	<4F21409C.9080807@communistcode.co.uk>
	<4F21487D.3030406@mlbassoc.com> <4F2154AA.5040103@mlbassoc.com>
	<4F215A28.4030409@communistcode.co.uk>
In-Reply-To: <4F215A28.4030409@communistcode.co.uk>
Subject: Re: BeagleBone with meta-ti layer
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
X-List-Received-Date: Thu, 26 Jan 2012 14:06:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-26 06:50, Jack Mitchell wrote:
> On 26/01/12 13:27, Gary Thomas wrote:
>> On 2012-01-26 05:35, Gary Thomas wrote:
>>> On 2012-01-26 05:01, Jack Mitchell wrote:
>>>> On 26/01/12 12:00, Koen Kooi wrote:
>>>>> Op 26 jan. 2012, om 12:06 heeft Jack Mitchell het volgende geschreven:
>>>>>
>>>>>> Hello everyone,
>>>>>>
>>>>>> I will soon be receiving a Beaglebone and I wish to transfer the work I have been doing with Yocto on the Beagleboard over to the Beaglebone, to show my company how the same
>>>>>> application codebase can be run different platforms using Linux/Yocto/etc..
>>>>>>
>>>>>> I have been looking at the meta-ti layer and trying to figure out how it works and how I will integrate it into the yocto build environment, but I thought I would just throw a
>>>>>> query out to see if anybody is doing this and if there are any pitfalls I should avoid.
>>>>> There's a README in the meta-ti layer, follow the instructions in there.
>>>>
>>>> Hi Koen,
>>>>
>>>> I understand that there is a readme in the meta-ti layer however this refers specifically to using Angstrom and associated layers, where as I want to build specifically for yocto.
>>>> So I was looking for pointers for abstracting the meta-ti layer form angstrom over to Yocto.
>>>
>>> I gave this a try, just adding the meta-ti layer into my stack.
>>> Sadly, it blew up right away with this error:
>>>
>>> ERROR: Failure expanding variable FILESPATH, expression was ${@base_contains('DISTRO_FEATURES', 'tipspkernel',
>>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/linux-gnueabi:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/arm:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/build-linux:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/pn-linux-ti33x-psp:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/beaglebone:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/armv7a:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/amltd:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/forcevariable:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/${FEED_ARCH}:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/ti33x:/home/local/poky-multi/meta-ti/recipes-
k
>>>
> e
>>>
>> rn
>>>
>>> el/linux/linux-ti33x-psp-3.1/tipspkernel/libc-glibc:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/linux-gnueabi:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/arm:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/build-linux:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/pn-linux-ti33x-psp:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/beaglebone:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/armv7a:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/amltd:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/forcevariable:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/${FEED_ARCH}:/home/local/poky-multi/meta-t
i
>>>
> /
>>>
>> re
>>>
>>> cipes-kernel/linux/linux-ti33x-psp/tipspkernel/ti33x:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/libc-glibc:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/:/home/local/poky-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/linux-gnueabi:/home/local/poky-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/arm:/home/local/poky-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/build-linux:/home/local/poky-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/pn-linux-ti33x-psp:/home/local/poky-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/beaglebone:/home/local/poky-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/armv7a:/home/local/poky-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/amltd:/home/local/poky-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/forcevariable:/home/local/poky-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/${FEED_ARCH}:/home/local/poky-multi/meta-ti/
r
>>>
> e
>>>
>> ci
>>>
>>> pes-kernel/linux/files/tipspkernel/ti33x:/home/local/poky-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/libc-glibc:/home/local/poky-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/:",
>>>
>>> "", d)}${@base_set_filespath([ "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1-r0",
>>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1", "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp",
>>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1", "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp",
>>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/files", "/home/local/poky-multi/meta-ti/recipes-kernel/linux" ], d)} which triggered exception SyntaxError: EOL while scanning
>>> string literal (FILESPATH, line 1)
>>> ERROR: Command execution failed: Exited with 1
>>>
>>> I'm not sure what this means or how to diagnose what's wrong.
>>
>> I worked past this. I turns out that my <DISTRO>.conf file had
>> this line in it (needed by some of the OLD meta-texasinstruments
>> recipes):
>> OVERRIDES .= ":${FEED_ARCH}:${SOC_FAMILY}"
>> I took out the FEED_ARCH and now I'm getting farther.
>>
>> Next hurdle:
>> Could not include required file recipes-images/angstrom/systemd-image.bb
>>
>>>
>>> n.b. I have done the same thing successfully before with the
>>> Angstrom meta-texasinstruments layer (which I know has been
>>> deprecated and replaced by meta-ti), so I know the process can
>>> work.
>>>
>>
>  From a clean poky edison build directory with machine_beagleboard selected and the meta-ti layer enabled last in my bblayers conf I receive this error:
>
> ERROR: Could not inherit file classes/systemd.bbclass
>
> However I cannot find where this is being called from in the meta-ti layer.. it seems very similar to what Gary has run into...

Try adding this to local.conf
   BBMASK = ".*/meta-ti/recipes-misc/"
This will let bitbake skip the troublesome recipes.  Since you're
interested in building Yocto, it should be OK.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

