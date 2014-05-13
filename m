Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91F8DE00B74; Tue, 13 May 2014 13:12:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from www.dynamicdevices.co.uk (unknown [89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AE96E00770
	for <yocto@yoctoproject.org>; Tue, 13 May 2014 13:12:46 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 89EA327E01E;
	Tue, 13 May 2014 20:12:44 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id tM967R9Vai3S; Tue, 13 May 2014 20:12:43 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id D977027E01A;
	Tue, 13 May 2014 20:12:42 +0000 (UTC)
Message-ID: <53727CB3.3050908@dynamicdevices.co.uk>
Date: Tue, 13 May 2014 21:12:35 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.LFD.2.11.1404291231440.3997@localhost>
	<535FD6BF.4040004@dynamicdevices.co.uk>
	<alpine.LFD.2.11.1405130954351.7299@localhost>
In-Reply-To: <alpine.LFD.2.11.1405130954351.7299@localhost>
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
X-List-Received-Date: Tue, 13 May 2014 20:12:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 13/05/2014 14:56, Robert P. J. Day wrote:
> i finally have time to play with this, and am interested in using
> yocto to build a bootable system for the galileo. i see that there is
> a version "1.0.0" of the firmware for this board -- is there a
> convenient yocto recipe that involves just downloading the layer info
> and not what looks like the current entire tarball that's stuffed with
> all the sources? i suspect that, within a day or two, i'll figure that
> out once i start digging around. if it's already documented somewhere,
> that would be even better. :-) rday 

I've made some progress with this Robert, although I confess it was more
challenging than I had expected.

I suspect I am using components that are out of sync, maybe the
installed grub loader vs the images I'm trying to build and boot, or
perhaps because I'm trying to target a poky distribution instead of the
iot one. Maybe I'm just missing something blindingly obvious and making
a rod for my back.

The Galileo didn't seem to want to play nicely from the start. I wasn't
able to do the simple Arduino IDE firmware update the docs suggest - no
response to query - and couldn't get any life out of UART0 on the TTL
pins. The USB client was enumerating as a serial gadget once I copied
across the 'magic' usbser.sys driver file on my Windows host though, so
there was some proof of life at least.

(I was a bit concerned for a while I might have bricked the thing when I
spotted the caveats about not powering USB without +V from the PSU.
Seems a bit like an accident waiting to happen, particularly if this is
being marketed as an Arduino replacement. Big red sticker on the box
needed for us software engineers at the very least).

I finally realised that I needed to wire up a 3.5mm jack cable to see
the Linux console (at RS232-C line levels no less....) A shame that
wasn't included in the box, but I guess if you just want an
Arduino-a-like (and the USB comms. actually works...) then maybe you
don't need to see what's really going on.

I worked through the Quark_BSPBuildGuide as it says that "you must
update the firmware the first time you use the board", which has been
superceded, so I wondered if maybe I was running some old code in the
supplied board that needed updating.

The capsule files from the
LITTLE_LINUX_IMAGE_FirmwareUpdate_Intel_Galileo download installed OK
and that got me to a shell with Poky 1.4

"Poky 9.0.2 (Yocto Project 1.4 Reference Distro) 1.4.2 clanton /dev/ttyS1"

It was picking up an IP address, I could SSH in and all was good.

...

So then I had a look at what was involved in booting from the uSD
instead of the image that I presume the capsule installed to the SPI flash.

As I mentioned earlier I had grabbed meta-intel-iot-devkit. Perhaps that
was my mistake. I had built up an image with the packaged layers to
start, and I then tried to copy across my new build so I could boot it.

I was hoping for something a little like what is offered out of the
meta-fsl-arm builds, i.e. a FAT boot partition and then an ext3 rootfs
partition, but this layer seems to be using a single FAT partition with
an initrd and an ext3 file mounted as root.

First I tried dd'ing the .hddimg file I had generated but that seemed to
result in an EFI boot configuration that the Galileo bootloader wasn't
picking up.

So I reverted to copying across my new bzImage and
iot-devkit-image-clanton.ext3 as per the BSP Build docs and that at
least did boot the kernel.

It then failed to mount the rootfs as it couldn't find /media/realroot
in the .ext3 file. Maybe this is because I'm targeting poky not the iot
distro?

With that added to my image I was able to boot to a Poky 1.5.1 shell,
and I had mono 3.4.0 up and running on poky which was what I wanted to
achieve.

That said I seem to have lost the ethernet interface along the way so
will need to see where that has gone.
...

Lastly I've tried to eliminate use of the bblayers from
meta-intel-iot-devkit in favour of my day to day Poky 1.6 daisy layers.

I needed to copy across 
./meta-intel-iot-devkit/meta/conf/machine/include/ia32-base.inc to
poky/meta, remove dependencies on meta-iot-devkit and meta-hob from
bblayers, and remove a couple of orphaned .bbappends in meta-galileo
(iot-devkit-spi-image.bbappend, iot-devkit-image.bbappend) but it seems
to be building now at least.

I'm waiting to see how far that gets.

...

Apologies for the length of this, but perhaps some of it is useful. If
there's an easier way to build a poky daisy distro for Galileo I'd love
to hear it :)

Cheers, Alex

 

