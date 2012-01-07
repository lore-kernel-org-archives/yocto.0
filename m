Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DAB3E00307
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2012 17:50:32 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Jan 2012 17:50:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="93300794"
Received: from unknown (HELO envy.home) ([10.255.13.98])
	by azsmga001.ch.intel.com with ESMTP; 06 Jan 2012 17:50:29 -0800
Message-ID: <4F07A4D2.5010800@linux.intel.com>
Date: Fri, 06 Jan 2012 17:50:10 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <CA+YB3raMN09N4wGm-yLa-Kh3p_68vUs4NUqWQt05YEQF0f+4nw@mail.gmail.com>
	<4F078B3D.9020408@linux.intel.com>
In-Reply-To: <4F078B3D.9020408@linux.intel.com>
X-Enigmail-Version: 1.3.3
Cc: yocto@yoctoproject.org
Subject: Re: Does my build disk's filesystem make a difference?
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
X-List-Received-Date: Sat, 07 Jan 2012 01:50:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/06/2012 04:01 PM, Joshua Lock wrote:
> On 06/01/12 15:53, Jeff Osier-Mixon wrote:
>> I am creating a Yocto Project build system. For various reasons, it is a
>> dual-boot system, win7 & linux (probably mint 12, haven't decided). I
>> have a primary boot disk with both operating systems and a large
>> secondary disk to use for build trees etc.
>>
>> Does the filesystem on the big secondary disk matter? Ideally I would

Yes, it matters a great deal. Many of the features we use to ensure data
integrity and accounting slow down performance. I use a separate ext4
RAID 0 array for builds (and only for builds and other data that can be
easily recreated). I mount it without a journal and with noatime. This
significantly reduces the overhead of the filesystem and increases
performance considerably - at the cost of higher risk of data loss in
the event of an unclean shutdown.

>> like to be able to get to the large data disk from both operating
>> systems. That would necessitate NTFS, as win7 does not speak ext4
>> reliably, but I don't want to slow my builds down.

No way. See below for details.

> 
> Erk! I'm not familiar with NTFS but the thought of this scares me, I 
> expect you'd be opening yourself up to a world of hurt as:
> 
> a) NTFS isn't a first class citizen of Linux.
> b) according to wikipedia NTFS has a 255 character filename limit - I 
> don't know for certain this is a problem but I wouldn't be surprised if 
> it is.

In kernel NTFS only has experimental write support, and only to
overwrite existing files without changing their file size.

NTFS-3G provides a userspace filesystem implementation with more
features, but I'd bet my house on the performance being abysmal for builds.

--
Darren

> 
> Will you be storing anything on the disk that isn't build related? If 
> you anticipate doing a lot of builds you really want to a) use a 
> filesystem that is Linux native and b) tweak the filesystem to reduce 
> the number of writes made.
> 
> If you just want/need to be able to look at the build system pieces 
> under WinOS then you could try:
> http://www.ext2fsd.com/
> 
> Cheers,
> Joshua

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

