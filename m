Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 694ACE00530
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 09:32:32 -0800 (PST)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id D95E2860F0;
	Thu, 27 Feb 2014 17:32:30 +0000 (UTC)
Message-ID: <530F76AD.9000608@dynamicdevices.co.uk>
Date: Thu, 27 Feb 2014 17:32:29 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
	Khem Raj <raj.khem@gmail.com>
References: <cover.1393510407.git.ajlennon@dynamicdevices.co.uk>
	<530F60C9.7090204@dynamicdevices.co.uk>
	<6621EB19-F8E0-4CF6-8070-841D28363501@gmail.com>
	<1600678.J4ox3s7bCg@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1600678.J4ox3s7bCg@peggleto-mobl5.ger.corp.intel.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mono] [PATCH 1/1] gtk-sharp: Updated to GTK# 2.12.21
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
X-List-Received-Date: Thu, 27 Feb 2014 17:32:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 27/02/2014 17:09, Paul Eggleton wrote:
> On Thursday 27 February 2014 08:30:10 Khem Raj wrote:
>> On Feb 27, 2014, at 7:59 AM, Alex J Lennon <ajlennon@dynamicdevices.co.uk>
>> wrote:
>>> On 27/02/2014 15:50, Khem Raj wrote:
>>>       > On Feb 27, 2014, at 6:16 AM, Alex J Lennon
>>>       
>>>       <ajlennon@dynamicdevices.co.uk> wrote:
>>>       >> +PR = "r1"
>>>       >> 
>>>       >> +
>>>       > 
>>>       > get rid of that
>>>
>>> Why is that Khem?
>> we have automatic PR server now a days, its enabled by default.
> FWIW, I don't think it's enabled by default, at least not in OE-Core/Poky. The 
> point still stands though, it's the way PR should be managed rather than 
> manual bumping.
>

<googling/> Are we talking about the "network based PR service"? 

Is this a single globally available nework service or a service that's
intended to be running local to a specific build farm?

My reading of the wiki page seems to imply it's intended to be local to
a build farm, or system, rather than globally unique?

So if I'm releasing packages to production this now becomes a critical
part of my infrastructure as I'll lose all my package revisions if
something goes wrong with it?

And my packages will have different revisions from somebody elses's
packages when they are running their own network based PR service?

I suppose the other question is, if I release a package of revision X,
then another which is up-rev'd' to Y as I made a change to the recipe
and so the NBPRS up-revs, then somebody comes back to me and tells me
they are having a problem with Xm then how do I link that rev X to the
specific commit that went to build it so I can audit ?

I haven't enabled this here, so does that mean all my package revisions
will be r0 as I remove the PR variables from recipes ?

Thanks,

Alex
 

