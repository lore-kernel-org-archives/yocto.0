Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85BEEE006B0
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 09:14:51 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 27 Jan 2012 09:14:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="60611679"
Received: from unknown (HELO envy.home) ([10.255.14.124])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Jan 2012 09:14:23 -0800
Message-ID: <4F22DB53.8060400@linux.intel.com>
Date: Fri, 27 Jan 2012 09:13:55 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <4F21FDEF.2010500@linux.intel.com>
	<4F220105.3080600@linux.intel.com>
	<4F220477.8030600@linux.intel.com>
	<20120127080849.GB3779@jama.jama.net>
	<1327659778.2964.16.camel@babel.joshhome>
	<20120127103001.GC3779@jama.jama.net>
In-Reply-To: <20120127103001.GC3779@jama.jama.net>
X-Enigmail-Version: 1.3.5
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: New recipes not installing in core-image-minimal
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
X-List-Received-Date: Fri, 27 Jan 2012 17:14:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/27/2012 02:30 AM, Martin Jansa wrote:
> On Fri, Jan 27, 2012 at 03:52:58PM +0530, Joshua Immanuel wrote:
>> Hello Martin,
>>
>> On Fri, 2012-01-27 at 09:08 +0100, Martin Jansa wrote:
>>>> Perhaps, but it didn't fix this particular problem. Neither
>>>> /usr/bin/ranpwd nor /etc/init.d/genmac appear in the rootfs.
>>>> However, each still appears in their respective workdir/image:
>>>
>>> Are they in workdir/packages-split/genmac/etc/init.d/genmac
>>> workdir/packages-split/ranpwd/etc/init.d/ranpwd 
>>
>> I too have a similar issue when I try to include a manually constructed
>> fstab file into the rootfs image. The file is available in the following
>> locations
>>      1. core2-poky-linux/${PN}-${PV}-${PR}/etc/fstab
>>      2. core2-poky-linux/${PN}-${PV}-${PR}/packages-split/${PN}/etc/fstab
>>
>> but not in the final rootfs image. May be I am missing something
>> trivial.
> 
> Maybe it depends on used package-manager bud I guess that at least
> opkg will refuse to overwrite /etc/fstab provided by base-files by
> /etc/fstab from your fancy PN and even if it allows it in do_rootfs, 
> then it's not good idea for image with online package management,
> because your custom fstab will be overwritten as soon as base-files are
> changed.
> 
> Why not .bbappend base-files and customize fstab there?

This is how I am modifying /etc/network/interfaces and this is working
fine for me. Joshua, I'd second Martin's suggestion.

--
Darren

> 
>> Eager to know the solution on this thread.
>>
>> Regards
>> Joshua
>> -- 
>> Joshua Immanuel
>> HiPro IT Solutions Private Limited
>> http://hipro.co.in
> 
> 
> 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

