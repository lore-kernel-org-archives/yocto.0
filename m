Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 021B1E0030F
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 10:23:29 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Feb 2012 10:23:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="105996543"
Received: from unknown (HELO [10.255.14.217]) ([10.255.14.217])
	by orsmga002.jf.intel.com with ESMTP; 03 Feb 2012 10:23:28 -0800
Message-ID: <4F2C2620.7070906@linux.intel.com>
Date: Fri, 03 Feb 2012 10:23:28 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
References: <CB5185EC.703D%belen.barros.pena@intel.com>
In-Reply-To: <CB5185EC.703D%belen.barros.pena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob 1.2 design - Settings dialogue
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
X-List-Received-Date: Fri, 03 Feb 2012 18:23:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 03/02/12 06:42, Barros Pena, Belen wrote:
> Your verbose mode it's pretty helpful (as it happens with most verbose
> modes), so please don't turn it off.
>
> Answers below.
>
> Belen
>
> On 02/02/2012 21:51, "Joshua Lock"<josh@linux.intel.com>  wrote:
>
>> Hi Belen,
>>
>> Sorry this is so long, I don't know how to turn off my verbose switch.
>>
>> On page 4 you mention Shane's intention to have proxy settings in the UI
>> - I just want to point out that this is usually an OS level
>> configuration and we should be wary about how we implement it.
>> I'd suggest we go so far as to just have a "Change system proxy
>> settings" button which launches the OS's network configuration settings.
>>
>> Of course, this opens us up to potential issues around supporting the
>> multitude of available network configuration tools on Linux but I'd
>> suggest we start with a lowest common denominator approach and have the
>> program behave intelligently.
>>
>> Explicitly we can detect whether the binary gnome-control-center and the
>> so file /usr/lib64/control-center-1/panels/libnetwork.so exist (being
>> clever about that path, too) and if so we can execute:
>>
>> "gnome-control-center display network"
>>
>> Which will display the network configuration (and therefore proxy)
>> settings for stock Fedora and Ubuntu desktops.
>
> You guys are the experts. You tell me how you want it to work and I'll
> design the UI for it! :)

My concern here was not to duplicate OS GUI to change OS settings, feels 
to me that this is generally a bad idea. However I see from an 
alternative thread that the intention is to only set the proxy 
configuration for Yocto, if this is achievable through the site.conf I'm 
all for it!

>> I understand why the Machines option might be more useful as a list
>> widget (p5), rather than a combo box, but feel that this is devalued at
>> least slightly by the fact that the list of available Machines isn't
>> static and therefore it's not unlikely a user would have to scroll that
>> list.
>
> Yes, the list will scroll at some point. I am not too worried about it
> though, since I don't think that changing the image types will be
> something users will do very often. I might be wrong though.

I've made similar assumptions too, and as we don't have any data I'm in 
no rush to disagree with either of us :-)

>> One suggestion might be to favour machines with a higher layer priority
>> by listing them higher in the list?
>
> I don¹t know how the layer priorities work. Who sets those priorities? Are
> they aligned with user's priorities? If they are, yes, we should use the
> layer priorities to determine the order of that list of machines.

Layer priority currently is set by the layers author, but is editable by 
the layers user (it's "just" a text file).

Maybe something to consider for future. There's been discussion about 
making it easier to enable system users to alter the layer priority, 
perhaps we'll make GUI changes if something like that happens? Or 
perhaps we'll make the change for the sake of the GUI? More thought 
required.

>> Although the next page, 5, mentions that the machine list is a combo
>> box. Is that the case?
>
> It is the case in the Image configuration screen, where users, before
> building an image, select their machine using a combo box. This screen is
> different from the Settings dialogue, where you set some BibBake output
> and system variables (the image output types between them). This document
> in the wiki
>
> http://wiki.yoctoproject.org/wiki/File:Hob_1.2_screens_inventory.pdf
>
> might help making sense of the different screens.

Gotcha!

>> Love the package format selection pieces!
>>
>> For the two parallel threads buttons we should recommend a default value
>> and set a maximum based on the number of CPU cores - I think there's
>> been a lot of discussion about this but I'm not certain what the
>> recommendation which came out of it was.
>
> That would be really useful. Is it easy to accurately determine how many
> cores are supported by the CPU of the machine running Hob?

We can easily detect that, yes. The difficulty with enabling this kind 
of feature in the past has been balancing between providing an accurate 
recommendation and allowing the user to ignore it.

I wonder if this would be better as a feature for later to allow us more 
time to get it right?


>> For the directories on page 13 would it make sense to have a reset
>> button to more easily get back to the defaults?
>
> Yes, this probably makes sense. I'll add that to the document next week.

Great, thanks.

Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

