Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08B0EE00307
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2012 06:40:11 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Feb 2012 06:40:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="64837948"
Received: from unknown (HELO envy.home) ([10.255.14.252])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Feb 2012 06:40:08 -0800
Message-ID: <4F33DAA3.60002@linux.intel.com>
Date: Thu, 09 Feb 2012 06:39:31 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: autif khan <autif.mlist@gmail.com>
References: <CADzUK1+ATfTW6FAPGZ97WhstFm_hq-Msdbf9wQ6HG6gLtUjS8w@mail.gmail.com>
	<4F281BFB.9010701@windriver.com> <4F281CD1.70305@linux.intel.com>
	<CADzUK1LhPBORwptVg-AvGJ7ex52iHS0y4h2S0onVKxLG-6ue4A@mail.gmail.com>
In-Reply-To: <CADzUK1LhPBORwptVg-AvGJ7ex52iHS0y4h2S0onVKxLG-6ue4A@mail.gmail.com>
X-Enigmail-Version: 1.3.5
Cc: yocto@yoctoproject.org
Subject: Re: How do I patch the kernel before it is built?
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
X-List-Received-Date: Thu, 09 Feb 2012 14:40:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Autif,

All good questions. I'm traveling right now and don't know the answers
off the top of my head. I'd try module_autoload and see if that does
what you want. I'll be back briefly next week and then off to ELC. I
should be able to assist next week though if you don't resolve this on
your own. I don't believe this is documented. We need to resolve that.
The "how do I" is a reasonable start, but ultimately it needs to be in
some combination of the BSP Guide, the Kernel Arch manual, and the
Developers Manual.

--
Darren

On 02/08/2012 07:31 AM, autif khan wrote:
>>>> I have a meta layer where I am keeping my changes. I am guessing that I need to:
>>>>
>>>> a) write a bbappend file to accomplish #1
>>>> b) write a recipe to accomplish #3
>>>>
>>>> I have written recipes before, but just for libraries and autotools
>>>> based applications. Not for a kernel module. If there is a recipe out
>>>> there for some other module, I would be happy to steal from it.
>>>>
>>>> Please advise how I can go about patching the kernel and if there is a
>>>
>>> It's just like any other package. If your changes are simple, then
>>> generating patches and putting them on the SRC_URI via a bbappend in
>>> your layer is all you need. If you have complex changes, there are options
>>> to manage them via git or via feature descriptions.
>>>
>>>> recipe for a kernel module - please point me to it.
>>>
>>> Darren validated and updated the kernel module example, so he'd probably
>>> got this closer at hand than I do.
>>
>> See the hello-mod example under meta/recipes-kernel/hello-mod
> 
> Now, I want to load my module at startup.
> 
> The preferred way to load my module at startup would be by to place a
> file called hello-mod in /etc/modutils
> 
> Is this correct?
> 
> Is there a recipe already that does this?
> 
> I see this line in kernel.bbclass - module_autoload_ipv6 = "ipv6"
> 
> So will appending module_autoload_hello-mod = "hello-mod" to this
> class achieve this? I know how to append a recipe, but how do I append
> a class?
> 
> When I boot my device it seems like minix and ipv6 modules are loaded,
> but I can not follow how they are loaded.
> 
> Seems like ipv6 is in /etc/modutils, but minix is not.
> 
> minix is in /etc/filesystems - but I am not sure what role that file plays
> 
> Last but, not the least - was this documented somewhere and I just
> could not/did not find it? Should I add this to the "How do I ..."
> section of the wiki?
> 
> Thanks
> 
> Autif

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

