Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB2A5E011AC
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 12:46:42 -0800 (PST)
Received: from cpc8-live22-2-0-cust106.know.cable.virginmedia.com
	([82.42.168.107] helo=[127.0.0.1])
	by www.dynamicdevices.co.uk with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.69)
	(envelope-from <ajlennon@dynamicdevices.co.uk>)
	id 1TqV9C-0000ch-KQ; Wed, 02 Jan 2013 20:42:46 +0000
Message-ID: <50E49C8A.3000603@dynamicdevices.co.uk>
Date: Wed, 02 Jan 2013 20:46:02 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Autif Khan <autif.mlist@gmail.com>
References: <50DB2E67.4090602@dynamicdevices.co.uk>
	<CADzUK1+kiKx_=ZHKL2WXskDv+rrg5SSLFtHQoLAOaPb0s4Z0Gg@mail.gmail.com>
	<CADzUK1+ZHRrPT6ysoOLsc5NaNcB6bRYRMc-FZDkGR52p9BjpQA@mail.gmail.com>
In-Reply-To: <CADzUK1+ZHRrPT6ysoOLsc5NaNcB6bRYRMc-FZDkGR52p9BjpQA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mono] Support for Visual Studio debugging on Yocto/OE targets (e.g. RPi)
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
X-List-Received-Date: Wed, 02 Jan 2013 20:46:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 02/01/2013 20:27, Autif Khan wrote:
> On Thu, Dec 27, 2012 at 12:10 PM, Autif Khan <autif.mlist@gmail.com> wrote:
>> On Wed, Dec 26, 2012 at 12:05 PM, Alex J Lennon
>> <ajlennon@dynamicdevices.co.uk> wrote:
>>> Hi all, Autif,
>>>
>>> I've been working to support .NET development on Linux
>>> over the past few days.
>>>
>>> There is a Visual Studio plugin, MonoTools for Visual Studio
>>> which provides support for local and remote debugging of
>>> .NET applications with Mono.
>>>
>>> This requires a remote stub to be running on the target
>>> platform, monotools-server.
>>>
>>> I've created a recipe to build monotools-server, which in
>>> turn required me to pull in Openembedded Legacy recipes
>>> for mono-xsp and gtk-sharp.
>>>
>>> As it stands I'm now able to build an X enabled image for
>>> the Raspberry Pi and remote-debug some simple Windows
>>> Forms .NET applications within the Visual Studio IDE.
>>>
>>> Recipes are hosted here in 'recipes-mono'
>>>
>>> git@git.assembla.com:ciseco-eve.meta-eve.git
> 
> I could not "git clone" the repo.

Apologies. I should have given you the public r/o link.

Originally I was trying to avoid modifying meta-mono, adding .bbappends
into my own meta-eve layer instead, but since my last post to you I
found I couldn't build against the current HEAD of Yocto due to some odd
file location issues which I couldn't overlay. (i.e. it didn't seem to
be able to pick up the patches where you had them - although was fine
with an older commit of the Yocto core).

As a result I've moved the original meta-mono patches that weren't being
picked up by bitbake and merged my additions into a fork of meta-mono
which is here:

git://git.assembla.com/ciseco-eve.meta-mono.git

I'm coming up the curve on Git, as I migrate from mainly Subversion use.
Can I issue a "pull request" to you or some such?

> Presumably, you want to release the recipes with the MIT and/or GPLv2 licenses.
> 
> If the license is different for monotools-server or mono-xsp or
> gtk-sharp, you will likely have to submit a patch for README file too.
> Even otherwise, section 4 in README needs to be updated. If you have
> any tasks left - please add them to section 10.
> 

Will double check this. I am waiting for feedback from the
monotools-server people on their license as there's nothing explicit in
their source.

> The guidelines for the Yocto project are very similar to other FOSS
> projects including the Linux kernel. They are outlined here:
> 
> https://wiki.yoctoproject.org/wiki/Contribution_Guidelines
> 
> I used the following as a guide when I have submitted my patches in
> the past. This is for the Linux kernel, adapt as appropriate for
> meta-mono.
> 
> http://linux.koolsolutions.com/2011/02/26/howto-create-and-submit-your-first-linux-kernel-patch/
> 
> Please submit separate patches for each of the recipes (presumably
> there are no changes to the mono/libGDI+ recipes)
> 
> Please add me to the "To:" recipient (I filter a lot of PATCH related
> traffic) - this should allow the emails to be caught by the filter
> instead of archiving.
> 
> In case I do not respond within 72 hours, please email me with a
> gentle reminder :-)
> 
> I have not had the opportunity to integrate patches just yet, please
> bear with me in case I screw up.
> 
> Thanks again for contributing!
> 
> PS #1: If you do not want to go thru the hassle - please email me the
> tar.gz as an attachment and I will check it in directly - a bad side
> effect of this would be that you will not get any "git" credit for
> this
> 
> PS #2: I am still on vacation, but had a few hours - the 72 hour clock
> will start only after Monday :-)
> 
> And finally, PS #3:
> 
> http://marc.info/?l=linux-usb&m=135229956521385&w=2
> http://marc.info/?l=linux-usb&m=135119051922403&w=2
> http://marc.info/?l=linux-usb&m=134858043613838&w=2
> http://marc.info/?l=linux-usb&m=134791970203982&w=2
> ... many others ...
> 
> Please refrain from top posting :-)

Happy to try if that's the etiquette here - like this?

> Autif
> 
>>> If there is interest in migrating these recipes into meta-mono
>>> and  somebody will review them then I'll be pleased to make
>>> whatever changes are needed to comply with relevant
>>> Yocto policies.
>>
>> Absolutely!
>>
>> I am about to embark on a vacation returning to work on Jan 7.
>>
>> More then - Unfortunately, I will not have time to look at this today
>> or until Jan 7.
>>
>> Working hard - then playing hard :-)
>>
>> I will dig into then when I return.
>>
>> (Side note - we gave up on GTK# recipe and decided that Windows forms
>> are 'good enough' for us. This makes me glad :-)
>>
>>>
>>> Best Regards, (& Happy Holidays)
>>>
>>> Alex
>>>
>>>


