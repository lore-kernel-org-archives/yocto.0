Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 494A6E00786; Mon,  6 Oct 2014 13:57:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,URIBL_RHS_DOB
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 URIBL_RHS_DOB Contains an URI of a new domain (Day
	Old Bread) *      [URIs: github.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E0D5E004D8
	for <yocto@yoctoproject.org>; Mon,  6 Oct 2014 13:57:00 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 5096DF811DB; Mon,  6 Oct 2014 14:57:00 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 66BA9F811D8;
	Mon,  6 Oct 2014 14:56:59 -0600 (MDT)
Message-ID: <54330224.9060104@mlbassoc.com>
Date: Mon, 06 Oct 2014 14:57:08 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>	<CAMCfZKE0uEAXz6yDbqs5v1M4MX9LqCqGzv7+4XunNC=GFXbJpQ@mail.gmail.com>
	<20141006194352.GB25997@denix.org>
In-Reply-To: <20141006194352.GB25997@denix.org>
Subject: Re: yocto 1.6 - beaglebone black - cape manager
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
X-List-Received-Date: Mon, 06 Oct 2014 20:57:09 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-10-06 13:43, Denys Dmytriyenko wrote:
> On Thu, Sep 04, 2014 at 07:02:13PM -0300, Diego Sueiro wrote:
>>> I'm build yocto 1.6, My hardware is beaglebone black I successfull
>>> build system image. But I can't see cape manager.
>>> I need them to use SPI - enable spidev -
>>> http://elinux.org/BeagleBone_Black_Enable_SPIDEV .
>>> What do i do to build yocto with a cape manager?
>>
>> As far as I know, you have to use meta-beagleboard
>> <https://github.com/beagleboard/meta-beagleboard> (almost 1 year without
>> any new commit) as your BSP layer to get capemanager support with Yocto.
>> Take a look here
>> <https://github.com/beagleboard/meta-beagleboard/blob/dylan/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bb>.
>> The kernel version is 3.8.
>>
>> Here we have good news of having capemanager support on mainline:
>> http://beagleboard.org/blog/2014-08-27-device-tree-overlay-support-lands-upstream/
>>
>> Here you have a beaglebord.org linux repo with capemanager support:
>> https://github.com/beagleboard
>> I don't know if there is any WIP to get this kernel compiled by Yocto/OE.
>
> Hi,
>
> [I was asked to provide additional comments to this topic - I'm the maintainer
> of meta-ti and the author of BeagleBone Black support in meta-yocto-bsp]
>
> I see that Diego has pretty much covered all the basics above. I'll just add
> few clarifications and details...
>
>
> There are few different OE/Yocto BSPs for BeagleBone Black:
>
> 1. meta-yocto-bsp provides "reference" BSPs for each of the supported
> architectures. One for ARM (BeagleBone Black), one for MIPS, PPC and x86.
> The keyword is "reference", as it is based on the mainline kernel/bootloader
> and does not support any advanced features or anything not in the upstream
> mainline kernel - e.g. no capes, no power management, no hardware
> acceleration, no 3D, no PRU, etc. The purpose of this BSP is to have some
> basic out-of-box experience for the select hardware platforms within Poky to
> evaluate the Yocto Project and OpenEmbedded framework, but not the specific
> hardware platforms. For proper and more comprehensive HW support users are
> directed to the corresponding official BSPs - meta-intel, meta-ti, meta-fsl
> (ARM, PPC), meta-amd, etc. etc.
>
> 2. meta-ti is the official Texas Instruments BSP that provides the latest WIP
> "staging" kernel and bootloader with most of the advanced features and
> peripheral support for the wider range of latest TI platforms, including
> BeagleBone Black. Most of the work in the "staging" area is being upstreamed,
> so it eventually appears in the mainline kernel and u-boot. It doesn't support
> capes on BBB, at least not yet - see below.
>
> 3. meta-beagleboard (now defunct) was a split-off from meta-ti few years ago
> to concentrate on the development of the BeagleBoard and BeagleBone specifics,
> such as capes. At the time it was based on 3.8 kernel and had large patchsets
> to add device tree overlays and cape management, among other things. Although,
> meta-beagleboard seems to be dead now, the work on the devtree overlays and
> cape manager has continued, thanks to Pantelis Antoniou - see the blog post on
> beagleboard.org, linked by Diego above.
>
>
> The plan always was for meta-ti and meta-beagleboard to meet upstream, hence
> meta-ti will eventually have all the necessary pieces to support capes, once
> it lands upstream. Meanwhile, TI now concentrates on supporting all the other
> advanced features and upstreaming everything to mainline.
>
> BTW, the kernel repo from Robert Nelson (the last link from Diego above) is
> now based on the TI "staging" kernel, i.e. the one provided by meta-ti, plus
> some additional patches not yet accepted upstream. I might look into adding a
> recipe to meta-ti to pull in that tree, but haven't decided yet...

Which, if any, of these choices is suitable for accelerated graphics?
Which device(s) will that choice support?  HDMI, LCD cape, ???
Can accelerated graphics, e.g. SGX, be supported by QT5?  If so, what
additional magic needs to be done?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

