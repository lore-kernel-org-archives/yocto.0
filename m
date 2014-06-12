Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B943E00BEA; Thu, 12 Jun 2014 13:47:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C471EE00BDF
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 13:47:26 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 27F4727E02B;
	Thu, 12 Jun 2014 20:47:25 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id sgP_PZ0Fn9vZ; Thu, 12 Jun 2014 20:47:22 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 6624127E02A;
	Thu, 12 Jun 2014 20:47:22 +0000 (UTC)
Message-ID: <539A11D5.5030805@dynamicdevices.co.uk>
Date: Thu, 12 Jun 2014 21:47:17 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Jonatan Magnusson <jonatan.magnusson@gmail.com>, 
 yocto@yoctoproject.org
References: <17C5D232-0433-4ADB-AA99-40D08E56A436@cmteknik.se>
In-Reply-To: <17C5D232-0433-4ADB-AA99-40D08E56A436@cmteknik.se>
X-Enigmail-Version: 1.6
Subject: Re: [meta-raspberrypi] how to customize kernel config?
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
X-List-Received-Date: Thu, 12 Jun 2014 20:47:31 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit


On 12/06/2014 07:48, Jonatan Magnusson wrote:
> Hi
>
> I’m trying to use the meta-raspberrypi BSP with Yocto (1.6, Daisy).
>
> It works great, except I have no idea how to use a custom kernel config!
>
> I have a custom kernel recipe that bbappends to the meta-raspberrypi kernel recipe.
>
> I’ve tried using defconfig as well as configuration fragments, but neither work.
>
> I’ve also tried using the kernel_configure_variable function, and that almost works, except if I try to disable an option that is enabled earlier in the the config file, the option is still enabled since kernel_configure_variable only appends to the config file.
>
> Example:
>
> do_configure_append() {
>   kernel_configure_variable SPI_SPIDEV n
> }
>
> So I wonder: how is this supposed to work?
>
> In my case I need to enable CONFIG_IEEE802154_MRF24J40 and it’s dependencies and disable CONFIG_SPI_SPIDEV and a few more.
>
> I’ve found no help on IRC and all Google comes up with is this old discussion, which does not lead to a solution:
>
> https://lists.yoctoproject.org/pipermail/yocto/2013-November/017113.html
>
> I would be very happy to get any hints on how this is supposed to work!

Jonatan,

I have a patch set here which I believe will enable configuration
fragment support (yocto-ization) for the RPi as detailed in the Yocto
Kernel Development Manual.

It needs more testing before I would be comfortable releasing it, and I
am short of time right now. The kernel builds and my testing shows that
the config and config. fragments seem to get picked up, but I haven't
tested on a board yet as I have run into trouble moving up from Yocto
daisy to master.

I wonder if you would be interested in taking a look at it with me?
If/when it worked/works you should be able to simply add a foo.cfg file
with your CONFIG_foo to SRC_URI in a .bbappend and that should get
pulled in as you need.

Cheers,

Alex


Cheer

