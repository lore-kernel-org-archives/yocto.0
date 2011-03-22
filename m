Return-Path: <madison@cisco.com>
Received: from sj-iport-1.cisco.com (sj-iport-1.cisco.com [171.71.176.70])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5DF0C4C80050
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 12:10:17 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=madison@cisco.com;
	x-dkim-adsp=none (insecure policy)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=madison@cisco.com; l=2883; q=dns/txt;
	s=iport; t=1300813817; x=1302023417;
	h=date:subject:from:to:cc:message-id:in-reply-to:
	mime-version:content-transfer-encoding;
	bh=mj+cZjNcGDvbdRC7ZNDokPL4qV9qSW8x0wlSqJ0pF5I=;
	b=KU8gF6aJmNBhT1pGHsc8E6nGJNvoDgBc1o2b5cGgX5cLwtgCofRhIrL/
	exth4wtrvt1MWtZXFJ6hUeLAGyO006lWwAxj4k6TFeQ+FsxeUz6ClCQR7
	iRCnLdVur5AK75tiisGcOf51DSCCMlEQWcFOLEEjJ456+AW07SGwpacv4 0=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Av0AAFB0iE2rRDoH/2dsb2JhbACYAY00AneITZ4gnEODDoJaBIU1hhiBHoNYhUk
X-IronPort-AV: E=Sophos;i="4.63,225,1299456000"; d="scan'208";a="416905842"
Received: from mtv-core-2.cisco.com ([171.68.58.7])
	by sj-iport-1.cisco.com with ESMTP; 22 Mar 2011 17:10:16 +0000
Received: from xbh-sjc-211.amer.cisco.com (xbh-sjc-211.cisco.com
	[171.70.151.144])
	by mtv-core-2.cisco.com (8.14.3/8.14.3) with ESMTP id p2MHAGGV015704;
	Tue, 22 Mar 2011 17:10:16 GMT
Received: from xmb-sjc-217.amer.cisco.com ([171.70.151.175]) by
	xbh-sjc-211.amer.cisco.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 22 Mar 2011 10:10:16 -0700
Received: from 128.107.159.176 ([128.107.159.176]) by
	xmb-sjc-217.amer.cisco.com ([171.70.151.175]) with Microsoft
	Exchange Server HTTP-DAV ; Tue, 22 Mar 2011 17:10:15 +0000
User-Agent: Microsoft-Entourage/12.28.0.101117
Date: Tue, 22 Mar 2011 10:10:07 -0700
From: Matt Madison <madison@cisco.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	Mark Hatle <mark.hatle@windriver.com>
Message-ID: <C9AE25FF.3EB4A%madison@cisco.com>
Thread-Topic: [yocto] Older versions of Linux as build hosts?
Thread-Index: AcvosPeBWjAn0ceaTYWqBoK/lj6xagAAWnEQAABnNPo=
In-Reply-To: <DE8BA75F34A0404282AC5E15F691BC765074554D@orsmsx504.amr.corp.intel.com>
Mime-version: 1.0
X-OriginalArrivalTime: 22 Mar 2011 17:10:16.0544 (UTC)
	FILETIME=[03C8CE00:01CBE8B4]
Cc: Yocto Mailer <yocto@yoctoproject.org>
Subject: Re: Older versions of Linux as build hosts?
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
X-List-Received-Date: Tue, 22 Mar 2011 17:10:17 -0000
Content-type: text/plain;
	charset="US-ASCII"
Content-transfer-encoding: 7bit

OK, sounds good.  I'll go through my notes and transcribe them to the wiki.

-Matt 


On 3/22/11 10:00 , "Rifenbark, Scott M" <scott.m.rifenbark@intel.com> wrote:

> Yes - the wiki is a great place for this type of information.  All the
> specifics for a particular build system and the steps you have to take to make
> it work can be collected there.  Then from the Quick Start we can mention
> where to get support information for older versions.
> 
> ScottR
> 
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Mark Hatle
> Sent: Tuesday, March 22, 2011 9:48 AM
> To: Matt Madison
> Cc: Yocto Mailer
> Subject: Re: [yocto] Older versions of Linux as build hosts?
> 
> On 3/22/11 11:40 AM, Matt Madison wrote:
>> Hi,
>> 
> 
> I have done builds with both RHEL 4 and RHEL 5.  Both on machines in which I
> do
> not have root access.
> 
> For me I was able to simply provide an update python, some additional tools
> and
> it worked.  (Note, I haven't tried it in the last 2 months though, so
> something
> may have broken since then.)
> 
>> I know the documentation mentions that you should be running a "reasonably
>> current" Linux as your build host, but in my enterprise environment I'm stuck
>> with having to run fairly old versions, based on RHEL 4 and 5.  I've got some
>> patches that I've been maintaining so I can bootstrap Bernard builds on these
>> systems.  Is there any interest in supporting older systems as build hosts?
>> Any
>> thoughts on how far back "reasonably current" is going to be with each Yocto
>> release?  I'm trying to work with my IT group to upgrade a bit more
>> frequently,
>> and for developer workstations, that might be possible, but I'm not sure I'll
>> be
>> able to convince them to do that for servers in our data centers.
>> 
>> Is anyone else having this kind of problem?
> 
> I think this is a fairly typical problem.  In my experience it's usually
> easier
> to solve in a commercial space then pure open source.
> 
> As for the question about interest, we're always interested in patches.  At a
> minimum, it would be nice to document what steps you had to do and what
> patches
> you may have had to apply in order to get "unsupported" functionality out of
> the
> build environment.  The yocto wiki seems a fairly natural place for this.
> 
> So please send what you have, or start an account on the Yocto Wiki and post
> it
> there.
> 
> --Mark
> 
>> Thanks,
>> -Matt
>> 
>> 
>> 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


