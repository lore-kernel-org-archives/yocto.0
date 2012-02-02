Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43B8BE00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 13:19:42 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Feb 2012 13:19:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="105604910"
Received: from unknown (HELO [10.7.199.78]) ([10.7.199.78])
	by orsmga002.jf.intel.com with ESMTP; 02 Feb 2012 13:19:37 -0800
Message-ID: <4F2AFDE9.6030505@linux.intel.com>
Date: Thu, 02 Feb 2012 13:19:37 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CB5076AC.6E4B%belen.barros.pena@intel.com>
In-Reply-To: <CB5076AC.6E4B%belen.barros.pena@intel.com>
Cc: mikael.metthey@intel.com
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
X-List-Received-Date: Thu, 02 Feb 2012 21:19:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I really like the look Mikael has created here.

A couple of related questions, this could just be mis-calibrated 
expectation from visual design on my part so please don't take them as 
criticism - merely an attempt to clarify:

1) where the visual design differentiates from the toolkit (Gtk+) is the 
intention that we should use the toolkit provided widgets or create our 
own to more closely match the visual design?
(for example the tabs for notebook pages in the 'Building Packages' screen).

2) When implementing Hob v1 I tried to follow the GNOME HIG[1] to ensure 
the app would fit in with the common Linux desktop environments. Should 
v2 continue that trend? Where the visual design might differ with the 
HIG which should be preferred?
(i.e. the button being flush with the bottom of the window in the Image 
Configuration screen is what first struck me here).

3) where the visual design uses various colours I assume the intention 
is to use the colours from the operating systems theme? This is slightly 
more difficult programatically than hard-coding colours but leads to (in 
my opinion) a much more pleasing visual experience.
(i.e. tooltip and button colours)

Finally, I notice that the titlebar calls it HOB, instead of Hob - was 
that intentional? Hob was always mean as a name, not an acronym.

I'm probably confusing visual design for a spec but it's been a while 
since I worked with the design team and my engineers mind is very literal.

This is looking really good!

Cheers,
Joshua

1. http://developer.gnome.org/hig-book/3.0/

On 02/02/12 09:24, Barros Pena, Belen wrote:
> Mikael, our visual designer, has been working full speed on Hob 1.2. His
> work is now in the wiki too:
>
> https://wiki.yoctoproject.org/wiki/File:Hob_1.2_screens_inventory.pdf
>
>
> Belen
>
> On 02/02/2012 16:58, "Barros Pena, Belen"<belen.barros.pena@intel.com>
> wrote:
>
>> I've uploaded a document detailing the design of the Settings dialogue
>> for Hob 1.2 at
>>
>> https://wiki.yoctoproject.org/wiki/File:Settings-dialogue-design-spec-v1.0
>> .pdf
>>
>> Sorry it's a boring document instead of a video: it seemed the only way
>> to provide the necessary level of detail
>>
>> Let me know if you have any questions or comments.
>>
>> Belen
>> ---------------------------------------------------------------------
>> Intel Corporation (UK) Limited
>> Registered No. 1134945 (England)
>> Registered Office: Pipers Way, Swindon SN3 1RJ
>> VAT No: 860 2173 47
>>
>> This e-mail and any attachments may contain confidential material for
>> the sole use of the intended recipient(s). Any review or distribution
>> by others is strictly prohibited. If you are not the intended
>> recipient, please contact the sender and delete all copies.
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

