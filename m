Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CA91E0123F
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 12:47:27 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jan 2012 12:47:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="106118026"
Received: from unknown (HELO [10.255.14.12]) ([10.255.14.12])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jan 2012 12:47:27 -0800
Message-ID: <4F0DF55E.4030605@linux.intel.com>
Date: Wed, 11 Jan 2012 12:47:26 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
In-Reply-To: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
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
X-List-Received-Date: Wed, 11 Jan 2012 20:47:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 11/01/12 06:41, Brian Hutchinson wrote:
> Hi,
>
> I followed the example in the "Yocto Project Development Manual" for
> setting up a local kernel repo and it didn't go so well.
>
> A month or two ago I checked out Edison and was able to build all the
> images required for Beagleboard and it booted fine (using command line
> ... not hob.  Tried hob but couldn't get it to work).
>
> So then I checked out linux-yocto-3.0 kernel and setup a local kernel
> git repo and went through the process of setting up poky-extras,
> modifying bblayers.conf etc. to point to my local repo.
>
> Any time I try to build core-image-minimal it looks like it always
> wants to use the 2.6.37 recipe instead of finding my 3.0 repo.  I've
> tried everything I can think of and I must me missing something.

In meta-yocto/conf/distro/poky.conf there's a line which sets:

PREFERRED_VERSION_linux-yocto ?= "2.6.37+git%"

Which is then overridden for the qemu machines to:

PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.0%"

If you add a similar line for beagleboard to a conf file, such as 
local.conf, it would look for a 3.0 kernel version and use your tree.

PREFERRED_VERSION_linux-yocto_beagleboard ?= "3.0%"

I know you've switched to master but I wanted to help you understand the 
system is doing what it is.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

