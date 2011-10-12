Return-Path: <raj.khem@gmail.com>
Received: from mail-qy0-f169.google.com (mail-qy0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B8FAE004E9
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 11:44:54 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyl38 with SMTP id 38so5523348qyl.14
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 11:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=cfUT4w+B6t3VREByuSV3ix9KpM0xXDrdbvDOZK4S7lM=;
	b=ulhS1s6lEKk4j2I/nS+XOvLMvRMD7IKMLZ2G+dZJ5yR0qOHGR92gR9bKSwJKbDUc9/
	zFQk1A9PPCceoll2DyYtTkwwbcRIDd9AdH49xuhnx5EqfS4xpVxPVh2WJavn65dOugeI
	T8XNob9d7NghLqJXS55lBBGxJHGqheGENjsnQ=
Received: by 10.68.8.195 with SMTP id t3mr2801799pba.107.1318445093214;
	Wed, 12 Oct 2011 11:44:53 -0700 (PDT)
Received: from [172.23.0.171] (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id o6sm2450544pbb.1.2011.10.12.11.44.52
	(version=SSLv3 cipher=OTHER); Wed, 12 Oct 2011 11:44:52 -0700 (PDT)
Message-ID: <4E95E020.7070201@gmail.com>
Date: Wed, 12 Oct 2011 11:44:48 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4E933C41.4000207@linux.intel.com> <4E94D624.1020107@am.sony.com>
	<4E95B87E.6050300@linux.intel.com>
In-Reply-To: <4E95B87E.6050300@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RFC: User configurable recipe features
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
X-List-Received-Date: Wed, 12 Oct 2011 18:44:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/12/2011 8:55 AM, Darren Hart wrote:
> Hi Tim,
>
> On 10/11/2011 04:49 PM, Tim Bird wrote:
>> On 10/10/2011 11:41 AM, Darren Hart wrote:
>>> As part of working on meta-tiny, I've come across a need (want?) to
>>> present users with the ability to select some set of features in a local
>>> configuration file that will impact the build of the image and a set of
>>> recipes.
>>
>> Can you tell me more about meta-tiny?  this is the first I've heard
>> about this (sorry if discussion went by on the mailing list and I
>> missed it), and I'm very interested.
>
>
> Tim,
>
> I'll be presenting things in more detail at ELCE, Friday @ 3:45 PM in
> the Kepler room. The summary is that I have received a lot of questions
> along the lines of "How small of an image can I build with Yocto?".

I guess yocto needs to define another profile(distro) to really 
demonstrate how small it can get. There are other distros based on 
oe-core e.g. micro and even slugos where the image sizes are really 
small slugos/uclibc image is around 2.7M eglibc based image is 3.5M


> core-image-minimal does a decent job at a small general purpose image,
> but it still has a lot of baggage that a truly size conscious developer
> doesn't need for a custom BSP.
>
> meta-tiny is my experimental layer where I'm looking at what we can
> build with our existing sources and infrastructure. I've found that we
> can cut the image size to about 10% of core-image-minimal without
> changes to source code, but dropping a lot of functionality. We can get
> to something like 20% while still maintaining ipv4 networking.
>
> This "recipe features" thread stems from this work. Before I can
> integrate something like this into Yocto, it needs a more suitable user
> exposed configuration mechanism.

this has a downside. I still favour that distro/machine should be one to 
dictate the features which should control recipe feature enable/disable 
behavior.

>
> I'm working from a public git repository, but it isn't in sync with my
> local development branch as things are changing by the minute still. I
> will be pushing this to a Yocto hosted git repository in time for ELCE,
> but it will still be development/experimental. If you are interested in
> seeing what is there now, you can have a look to get an idea of what I'm
> doing. Please note this tree WILL rebase, it WILL fail to build, it WILL
> destroy your tmp dir, your sstate, and waste your time as you try and
> pick through the various options to get something that builds and boots
> ;-) Also, this repo will disappear in the next few days, but if you just
> want to see it, it's here:
>
> http://git.infradead.org/users/dvhart/meta-tiny.git
>
>>
>> I'm currently doing some size-related work for Sony (including
>> some work to support 4K stacks).
>
> I'd like to have a look - is there anything out there I can read through?
>
> Post ELCE, I'd like to look at more source level changes we can make. In
> particular I'd like to see the>200k bzImage increase for ipv4 come
> down. In addition to that, I'm hoping to take a closer look at dynamic
> memory usage in the Linux kernel for small systems.
>
> Thanks,
>


