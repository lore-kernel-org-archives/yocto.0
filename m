Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52601E00B68; Fri, 16 May 2014 03:29:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from www.dynamicdevices.co.uk (unknown [89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCA7FE00975
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 03:29:39 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 30FB627E01A;
	Fri, 16 May 2014 10:29:37 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id tc75s-IlcKvi; Fri, 16 May 2014 10:29:35 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 51C7727E015;
	Fri, 16 May 2014 10:29:35 +0000 (UTC)
Message-ID: <5375E88E.9010204@dynamicdevices.co.uk>
Date: Fri, 16 May 2014 11:29:34 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
	"Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.LFD.2.11.1404291231440.3997@localhost>
	<alpine.LFD.2.11.1405130954351.7299@localhost>
	<53722D3D.4030902@dynamicdevices.co.uk>
	<1628239.GfKczbckvq@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1628239.GfKczbckvq@peggleto-mobl5.ger.corp.intel.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: can one lay hands on a galileo-based dev kit?
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
X-List-Received-Date: Fri, 16 May 2014 10:29:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 16/05/2014 11:11, Paul Eggleton wrote:
> On Tuesday 13 May 2014 15:33:33 Alex J Lennon wrote:
>> On 13/05/2014 14:56, Robert P. J. Day wrote:
>>> On Tue, 29 Apr 2014, Alex J Lennon wrote:
>>>> On 29/04/2014 17:34, Robert P. J. Day wrote:
>>>>>   i've just been asked to design a linux device drivers course based
>>>>>
>>>>> on the arduino-compatible intel galileo processor, so my first TODO
>>>>> item is to lay hands on a galileo-based dev kit, for which this looks
>>>>> like the obvious choice:
>>>>>
>>>>> https://software.intel.com/en-us/iotdevkit
>>>>>
>>>>> but that page says "upcoming". does it exist? my normal go-to source
>>>>> up here, digikey.ca, shows zero in stock. where can i lay hands on
>>>>> one (if possible)? thanks.
>>>> If it helps I had a Galileo Dev Kit delivered from RS (UK) a couple of
>>>> days ago.
>>>>
>>>> http://uk.rs-online.com/web/p/processor-microcontroller-development-kits/
>>>> 7919611/
>>>>
>>>> (I'm actually a bit confused about how the Galileo IoT collection of
>>>> meta-foo layers relates to the primary meta-foo
>>>>
>>>>  sources, as I can't seem to find an independent meta-clanton ;ayer
>>>>
>>>> which I guess I'd need. Early days yet, but am planning
>>>>
>>>>  on working through this as soon as I get some time as I want to test a
>>>>
>>>> build with meta-moo support on Galileo)
>>>>
>>>   i finally have time to play with this, and am interested in using
>>>
>>> yocto to build a bootable system for the galileo. i see that there is
>>> a version "1.0.0" of the firmware for this board -- is there a
>>> convenient yocto recipe that involves just downloading the layer info
>>> and not what looks like the current entire tarball that's stuffed with
>>> all the sources?
>>>
>>>   i suspect that, within a day or two, i'll figure that out once i
>>>
>>> start digging around. if it's already documented somewhere, that would
>>> be even better. :-)
>> Still a bit up in the air with this here Robert.
>>
>> I've not been able to work out if there's a primary source for
>> meta-clanton independent
>> of the packaged iot layer, so I grabbed meta-intel-iot-devkit in its
>> entirety from
>>  git://git.yoctoproject.org/meta-intel-iot-devkit
>>
>> I built one of my own custom mono images based on core-image-sato
>> thinking I could
>> put that on a uSD and it would "just boot" (oh the optimism... :)
>>
>> No joy there so I took a quick look through that Quark BSP guide and it
>> seemed to be
>> talking about booting some odd kind of image format from a file on uSD.
>>
>> I stepped back and had it build the iot-devkit-image which seemed to
>> need be to make a
>> change to an image dependency on python to python-core.
>>
>> That's where I had to leave it as I ran out of time. I was planning on
>> hooking up serial to the
>> Tx/Rx pins to see if anything is happening there, getting something
>> building, then replacing
>> the meta-intel-iot-devkit references in BBLAYERS (aside from
>> meta-clanton) with the daisy
>> layers I'm using on a day to day basis.
> So apologies for not replying earlier - I've not been directly involved in the
> BSP for Galileo, but I have been providing support for the team doing the IoT
> DevKit work. You should be able to build images for Galileo using what's in
> meta-intel-iot-devkit directly; you could also use the layers within it
> separately using your own separate OE-Core / Poky tree, but it's not really
> designed to be used in that way. If you really want to do it separately you
> should take care to use all three layers (meta-clanton-bsp, meta-galileo, and
> meta-iot-devkit) and set your DISTRO = "iot-devkit".
>
> FYI as of yesterday there is also now a "devkit-daisy" branch which is
> updated on top of the daisy branch, but it is a work-in-progress at the
> moment so don't be too surprised if something breaks (although it did work
> well for me here).
>
> To create a partitioned image file suitable for dd'ing to an SD card, the
> easiest way is to use the wic tool - for example, to build a final image 
> from an image called "iot-devkit-image" that you just built using the build
> system:
>
>   wic create iot-devkit -e iot-devkit-image
>
> ("iot-devkit" here points to scripts/lib/image/canned-wks/iot-devkit.wks which
> tells wic how to format the image).
>
> I'd recommend you then use the ddimage helper script that we have since it
> provides a measure of assurance that you've got the right device before
> overwriting its contents, for example:
>
>   sudo ../scripts/contrib/ddimage /var/tmp/wic/build/iot-devkit-NNNNN-mmcblkp0.direct /dev/mmcblk0
>
> Cheers,
> Paul
>

Thanks Paul. Very useful, particularly the image creation incantations.
I'll give this a go as soon as I can make some time.

I really want to be building the same distro for multiple targets here
(i.MX6, RPi, Galileo, qemu), but Poky is breaking for me.

I'm using my day to day daisy layers with the meta-intel-iot-devkit ones
I believe I need as follows: http://pastebin.com/7rFQpdiX

The latest build failure was a missing grub which I suppose is to be
expected as I'm not using the correct/recommended distro (?)

Can you comment on what the main difference is in intention/what's
supplied between the poky reference distro and the iot-devkit distro?

Cheers, Alex


