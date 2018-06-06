Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DB74E01481; Wed,  6 Jun 2018 12:21:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 900 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Jun 2018 12:21:14 PDT
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3055AE00DD0
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2018 12:21:14 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1fQdiz-0003Fa-Fp
	for yocto@yoctoproject.org; Wed, 06 Jun 2018 21:04:01 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Ferry Toth <ftoth@telfort.nl>
Date: Wed, 06 Jun 2018 21:06:05 +0200
Message-ID: <pf9b6q$bns$1@blaine.gmane.org>
References: <443D9650-0A26-433A-AC22-F61DBFDE1221@gmail.com>
	<bd69dabb-1aa3-6553-4f43-2337c9cf5190@windriver.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: KNode/4.14.10
Subject: Re: partitions resizing on the fly
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
X-List-Received-Date: Wed, 06 Jun 2018 19:21:17 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7Bit

ChenQi wrote:

> On 06/05/2018 10:33 PM, Mihaela Apetroaie-Cristea wrote:
>> Hello,
>>
>> I have a minimal yocto OS built for RPI, which has three partitions:
>> boot, root and data. Is there any way to resize root and data such that
>> root expands/flattens when files and others are added/deleted? Such that
>> I can make more space for the data partition. At the moment my partitions
>> are built with minimal size and I expand them with gparted after I added
>> them on the sd card. But if I put my device somewhere unreachable it
>> would be very useful to have a way to expand and flatten portions on the
>> fly.
>>
>> Thank you,
>> Mihaela
> It is said that btrfs supports such feature? Frankly I didn't try it out.
> Yocto supports building out btrfs images. Maybe you can give it a try?
With btrfs you can have multiple partitions (on the same or different 
disks), the partitions can form a single pool. In this single pool you can 
have multiple volumes. Space from the pool gets allocated to the files in a 
particular volume. The volume size is not really restricted, but when you 
ask df, it will give you the size of the pool. With 3 volumes on the 
partition you might think you have 3x the pool available, which is not true 
of course. If you run out of space it will hit all volumes at the same time. 
But you can then (temporarily) add f.i. a usb disk to instantly add space to 
all volumes.
> Best Regards,
> Chen Qi
> --



