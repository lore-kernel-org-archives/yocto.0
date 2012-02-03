Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79850E0030F
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 10:32:24 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Feb 2012 10:32:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="113777151"
Received: from unknown (HELO [10.255.14.217]) ([10.255.14.217])
	by fmsmga001.fm.intel.com with ESMTP; 03 Feb 2012 10:32:23 -0800
Message-ID: <4F2C2837.8040606@linux.intel.com>
Date: Fri, 03 Feb 2012 10:32:23 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
References: <CB5167DE.6F4D%belen.barros.pena@intel.com>
In-Reply-To: <CB5167DE.6F4D%belen.barros.pena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Metthey,
	Mikael" <mikael.metthey@intel.com>
Subject: Re: Hob 1.2 design - visuals
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
X-List-Received-Date: Fri, 03 Feb 2012 18:32:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/02/12 03:52, Barros Pena, Belen wrote:
> Hi Joshua,
>
> Thanks for the feedback. I don't have definite answers to your questions:
> I think they should come out of a discussion between design and dev teams.

I agree.

> My first stab to some answers below.
>
>> 1) where the visual design differentiates from the toolkit (Gtk+) is the
>> intention that we should use the toolkit provided widgets or create our
>> own to more closely match the visual design?
>> (for example the tabs for notebook pages in the 'Building Packages'
>> screen).
>
> I have no experience with GTK, but I would hope that standard widgets can
> be themed. So the idea would be using toolkit widgets themed to match the
> visual style. Is this assumption incorrect?

The widgets can indeed be themed, but in the favour of visual 
consistency across the system I usually try to avoid it unless there's a 
compelling reason to do so.

Perhaps we can address differences between visual design and toolkit on 
a case-by-case basis? Implement with the toolkit provided widgets and OS 
theme and review which things we might want to enhance later?

> If no toolkit widget exist for a certain UI control, we have to either
> replace it with a toolkit widget or create our own, but I really hope this
> is the exception rather than the rule.

Oh yes, I don't think that's the case for Hob. It was the exception for 
some work I did on Moblin but certainly not the rule, in fact that 
widget is part of the standard toolkit now.

>> 2) When implementing Hob v1 I tried to follow the GNOME HIG[1] to ensure
>> the app would fit in with the common Linux desktop environments. Should
>> v2 continue that trend? Where the visual design might differ with the
>> HIG which should be preferred?
>> (i.e. the button being flush with the bottom of the window in the Image
>> Configuration screen is what first struck me here).
>
> Nothing in the design should blatantly contradict the GNOME HIG: in
> general they are good design practice and we wouldn't ignore them without
> a reason to do so. If there are any exceptions (like the primary action
> button one) we could look at them on a case by case basis. I don't think
> leaving 12 pixels between the bottom of the window edge and the button
> will make or break the interface. What's important is that the location
> and spacing of those 'primary action' buttons are consistent across the
> whole Hob. If we feel we shouldn't break the 12px rule, I am sure Mikael
> will agree that the button effect is not that important, and that we can
> lift it up to fit the spacing GNOME rules.

This is great to read. I was hoping to elicit such a response and just 
wanted to make sure engineering and design are on the same page here. It 
feels like we are?

I understand that 12px won't make or break the interface but I'm 
definitely pro consistent UI across the whole OS where possible. I 
expect I'm preaching to the choir here, so I'll leave it at that.

>> 3) where the visual design uses various colours I assume the intention
>> is to use the colours from the operating systems theme? This is slightly
>> more difficult programatically than hard-coding colours but leads to (in
>> my opinion) a much more pleasing visual experience.
>> (i.e. tooltip and button colours)
>
> Yes, using the colours from the OS theme is probably the best thing to do.

Awesome! I'd go so far as to say it's definitely the best thing to do. I 
didn't manage it with Hob 1 and had some ugly screenshots sent my way 
from poor users who dared to use a different theme than me.

>> Finally, I notice that the titlebar calls it HOB, instead of Hob - was
>> that intentional? Hob was always mean as a name, not an acronym.
>
> It's a typo: sorry about that. It should say Hob of course.

No need to apologise. Just wanted to make sure.

Thanks for your response,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

