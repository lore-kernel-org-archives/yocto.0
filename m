Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C329E00307
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2012 16:01:02 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Jan 2012 16:01:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="104415655"
Received: from unknown (HELO [10.255.13.185]) ([10.255.13.185])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jan 2012 16:01:01 -0800
Message-ID: <4F078B3D.9020408@linux.intel.com>
Date: Fri, 06 Jan 2012 16:01:01 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+YB3raMN09N4wGm-yLa-Kh3p_68vUs4NUqWQt05YEQF0f+4nw@mail.gmail.com>
In-Reply-To: <CA+YB3raMN09N4wGm-yLa-Kh3p_68vUs4NUqWQt05YEQF0f+4nw@mail.gmail.com>
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
X-List-Received-Date: Sat, 07 Jan 2012 00:01:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/01/12 15:53, Jeff Osier-Mixon wrote:
> I am creating a Yocto Project build system. For various reasons, it is a
> dual-boot system, win7 & linux (probably mint 12, haven't decided). I
> have a primary boot disk with both operating systems and a large
> secondary disk to use for build trees etc.
>
> Does the filesystem on the big secondary disk matter? Ideally I would
> like to be able to get to the large data disk from both operating
> systems. That would necessitate NTFS, as win7 does not speak ext4
> reliably, but I don't want to slow my builds down.

Erk! I'm not familiar with NTFS but the thought of this scares me, I 
expect you'd be opening yourself up to a world of hurt as:

a) NTFS isn't a first class citizen of Linux.
b) according to wikipedia NTFS has a 255 character filename limit - I 
don't know for certain this is a problem but I wouldn't be surprised if 
it is.

Will you be storing anything on the disk that isn't build related? If 
you anticipate doing a lot of builds you really want to a) use a 
filesystem that is Linux native and b) tweak the filesystem to reduce 
the number of writes made.

If you just want/need to be able to look at the build system pieces 
under WinOS then you could try:
http://www.ext2fsd.com/

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

