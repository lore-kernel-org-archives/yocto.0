Return-Path: <chgans@googlemail.com>
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C1EAE013E8
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 15:01:53 -0700 (PDT)
Received: by mail-pd0-f174.google.com with SMTP id 10so8619946pdc.19
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 15:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=Qs/zeGA1SvSGmsYKLw/O34+bEOxrA/ZJm/vyJxSTDXM=;
	b=dvrikLBLD5LCxNADU/B7dxI/gfxUmjxsqrHPTmqddip82JP7LSUMjgInd08PIO872y
	GhD4Pp408brKsQzQZxWfcqULltDWBHkBeNXDFTYj0SjRpq4C3D//0PqaB3ir2Q61/4CA
	YStOZc6ApxdAzSZWczDeXbb+PBTkrF3QpTyN1XJRK70LxnnNqCcgq5xVAVRMkpV/KsPE
	A/gF+ZVV1hrIHMhp8Fr54h8YHx3wEp+/YCAXYBmI1S4wIMtC11ayIZd+SG+fuqVCWPMq
	jbGi70twZyzPJvHdaDMgifE31MjNnF3cfTHb8/raQ/1bEVzrSSr6dtGafkIPR2H/SWu6
	b+/A==
X-Received: by 10.66.155.163 with SMTP id vx3mr39642592pab.67.1374616912837;
	Tue, 23 Jul 2013 15:01:52 -0700 (PDT)
Received: from krys-red.trunet.local ([210.48.94.225])
	by mx.google.com with ESMTPSA id
	iq3sm43807830pbb.20.2013.07.23.15.01.50 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 23 Jul 2013 15:01:51 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <51EEFD4B.1090009@gna.org>
Date: Wed, 24 Jul 2013 10:01:47 +1200
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAFZh4h9-+XQBWxHh22zQ+jwQBYiaUwifzcdpLPF2kU+kn5Pg9A@mail.gmail.com>
	<1503447.VStvRngV5W@helios> <20130723153440.GC21440@denix.org>
In-Reply-To: <20130723153440.GC21440@denix.org>
Subject: Re: Should I be worried about this nativesdk-packagegroup-sdk-host warning while building meta-toolchain
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
X-List-Received-Date: Tue, 23 Jul 2013 22:01:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 24/07/13 03:34, Denys Dmytriyenko wrote:
> On Tue, Jul 23, 2013 at 04:13:18PM +0100, Paul Eggleton wrote:
>> On Tuesday 23 July 2013 10:13:10 Brian Hutchinson wrote:
>>> I'm using master branch of Yocto and meta-ti (and meta-openembedded).
>>>
>>> I built meta-toolchain for beaglebone machine type and then I went into my
>>> local.conf and changed sdkmachine to i686 as I need both 64bit & 32bit
>>> toolchains.  After modifying my local.conf I ran bitbake meta-toolchain
>>> again and received these warnings:
>>>
>>> hutch@neo:~/yocto_master_beaglebone/poky/build$ bitbake meta-toolchain
>>> WARNING: Host distribution "Debian-7.1" has not been validated with this
>>> version of the build system; you may possibly experience unexpected
>>> failures. It is recommended that you use a tested distribution.
>>> WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV}
>>> ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig
>>> ${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la
>>> ${base_libdir}/*.la) replaces original key FILES_ti-ipc-dev (${libdir}/*).
>>>
>>> WARNING: Variable key FILES_${PN}-dev (${includedir} ${FILES_SOLIBSDEV}
>>> ${libdir}/*.la ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig
>>> ${datadir}/aclocal ${base_libdir}/*.o ${libdir}/${BPN}/*.la
>>> ${base_libdir}/*.la) replaces original key FILES_ti-syslink-dev
>>> (${libdir}/*).
>
> These FILES_${PN}-dev warnings indeed come from meta-ti and so far harmless -
> I haven't had bandwidth to fix them, as they seem low priority.

I got these ones as well (using poky, meta-oe, meta-ti and meta-qt5 all 
on Dylan), good to hear they are harmless.

Thanks,
Chris

>
>
>>> Parsing recipes: 100%
>>>
>>> NOTE: Resolving any missing task queue dependencies
>>> NOTE: Preparing runqueue
>>> NOTE: Executing SetScene Tasks
>>> NOTE: Executing RunQueue Tasks
>>> WARNING: The recipe nativesdk-packagegroup-sdk-host is trying to install
>>> files into a shared area when those files already exist. Those files and
>>> their manifest location are:
>>>
>>>   /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
>>> x/nativesdk-packagegroup-sdk-host Matched in
>>> manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
>>>
>>>   /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
>>> x/runtime/nativesdk-packagegroup-sdk-host.packaged Matched in
>>> manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
>>>
>>>   /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
>>> x/runtime/nativesdk-packagegroup-sdk-host Matched in
>>> manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
>>>
>>>   /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
>>> x/runtime-reverse/nativesdk-packagegroup-sdk-host Matched in
>>> manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata Please verify
>>> which package should provide the above files.
>>>
>>>
>>> Should I be worried or do I need to do something about the
>>> nativesdk-packagegroup-sdk-host warnings?
>>>
>>> I've never seen them before and I couldn't find anyone else talking about
>>> them so I thought I'd ask.
>>
>> Depends. Without looking at the recipe and output closely it's hard to tell
>> whether this is indicative or a problem or not, but it should be resolved by
>> the meta-ti maintainers. Denys, you might want to take a closer look at this.
>
> And the warnings in question about nativesdk-packagegroup-sdk-host have
> absolutely nothing to do with meta-ti - there are no SDK packagegroup recipes
> in meta-ti.
>


