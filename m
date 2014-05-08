Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E9A4E009A7; Thu,  8 May 2014 04:38:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from astoria.ccjclearline.com (unknown [64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECF5FE006EF
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 04:38:09 -0700 (PDT)
Received: from [99.240.204.5] (port=37716 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1WiMeR-0007Pw-VS; Thu, 08 May 2014 07:38:12 -0400
Date: Thu, 8 May 2014 07:36:05 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Diego Sueiro <diego.sueiro@gmail.com>
In-Reply-To: <CAMCfZKFHCLp2aJJQU4LEQ7nd4_NtNuOgy-ghYFaqAzO5-qtzkw@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1405080721510.4769@localhost>
References: <alpine.LFD.2.11.1405080318520.27694@localhost>
	<CAMCfZKFHCLp2aJJQU4LEQ7nd4_NtNuOgy-ghYFaqAzO5-qtzkw@mail.gmail.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: couple simple questions on building for intel galileo
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
X-List-Received-Date: Thu, 08 May 2014 11:38:12 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 8 May 2014, Diego Sueiro wrote:

> Robert,
> Here is some instructions with some workarounds:
> http://www.malinov.com/Home/sergey-s-blog/intelgalileo-buildinglinuximage
>
> And I think that you already saw meta-intel-iot-devkit:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-iot-devkit/
>
> As soon as I get my Galileo I'll try to put Yocto on it.
>
> Please, share your results with us.

  oh, i'm currently writing all this up and, at the risk of going
*slightly* off-topic, before i set up for a yocto build for this
board, i'm just trying to clarify the boot process, both without and
with the SD card, so i know i'm bulding my SD card properly.

  first, without an SD card, the board apparently boots a minimal
linux image from SPI flash. so far, so good.

  as for creating a bootable SD card, i see two possibilities. the
first is explained at sparkfun:

https://learn.sparkfun.com/tutorials/galileo-getting-started-guide/bigger-linux-image

where one can download a file called
LINUX_IMAGE_FOR_SD_Intel_Galileo_v0.7.5.7z, which uncompresses into a
simple directory structure that you copy to a FAT-formatted SD card.
so this SD card, apparently, contains a single FAT partition.

  on the other hand, over at intel's developer zone:

https://software.intel.com/en-us/iotdevkit

one can download what is described as "SD card (200MB zipped)", which
i unzipped into a file "iot-devkit-201402201605-mmcblkp0.direct",
almost 8G in size, and which "fdisk" shows me has the following
structure:

Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x0007eabb

Device                                   Boot     Start       End
Blocks  Id System
iot-devkit-201402201605-mmcblkp0.direct1 *         2048    106493   52223  83 Linux
iot-devkit-201402201605-mmcblkp0.direct2         106496  14442495 7168000  83 Linux

  which is more what i'm used to. so am i reading both of these
correctly? there are two possible formats for the bootable SD card:

* simple, single FAT partition, or
* more "standard" pair of bootable FAT partition, and linux ext
partition.

  many thanks.

rday


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

