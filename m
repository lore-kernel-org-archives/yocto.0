Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C91CFE00B3F; Thu,  8 May 2014 11:00:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from astoria.ccjclearline.com (unknown [64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55BEAE00B30
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 11:00:30 -0700 (PDT)
Received: from [99.240.204.5] (port=42849 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1WiScU-0005V9-1D; Thu, 08 May 2014 14:00:34 -0400
Date: Thu, 8 May 2014 13:58:28 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Diego Sueiro <diego.sueiro@gmail.com>
In-Reply-To: <CAMCfZKFHCLp2aJJQU4LEQ7nd4_NtNuOgy-ghYFaqAzO5-qtzkw@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1405081346150.9802@localhost>
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
X-List-Received-Date: Thu, 08 May 2014 18:00:34 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 8 May 2014, Diego Sueiro wrote:

> Robert,
> Here is some instructions with some workarounds:
> http://www.malinov.com/Home/sergey-s-blog/intelgalileo-buildinglinuximage
>
> And I think that you already saw meta-intel-iot-devkit:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-iot-devkit/

  at the moment, i am at my wit's end trying to build a simple
bootable SD card for the galileo, and since i need one of those to
boot my eventual yocto build, i figure this is at least remotely on
topic.

  what is the proper and acceptable format for a bootable SD card for
the galileo, and how does one boot from it? i have read *numerous*
online recipes, all of which differ subtlely but maddeningly from one
another. there is an alleged linux image file one can download:

  LINUX_IMAGE_FOR_SD_Intel_Galileo_v0.7.5.7z

which uncompresses and unloads into the following:

./core-image-minimal-initramfs-clanton.cpio.gz
./bzImage
./image-full-clanton.ext3
./boot
./boot/grub
./boot/grub/grub.conf

but how one "installs" that on an SD card that is bootable by a
galileo board is a mystery i have yet to fathom, and various recipes
online differ in what they think is required:

* some recipes insist the filesystem must be FAT or FAT16, while
others claim FAT or FAT32
* one recipe will claim that the partition must be bootable, another
insists it works without that
* some recipes explain that the SD card should contain one partition
(as in, you know, /dev/sdc1), while another recipe *appears* to claim
that you need to format the *raw* SD card as a FAT partition

  i have tried various incantations of fdisk and mkfs and so on, to
the point where i am quite prepared to toss this board out a second
story window.

  can anyone point me at a set of instructions that will give me a
bootable SD card for this board?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


