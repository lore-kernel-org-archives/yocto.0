Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67EA7E006D9
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 10:20:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q5THKjBk001319
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 29 Jun 2012 10:20:45 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 29 Jun 2012 10:20:45 -0700
Message-ID: <4FEDE3DE.909@windriver.com>
Date: Fri, 29 Jun 2012 13:20:30 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Markus Hubig <mhubig@imko.de>
References: <CAGws1TuNe+=5YzBOMJv30KgY7o+N9_1kqryRPKpB+27Un0=CZQ@mail.gmail.com>
	<4FE9B6EE.4010901@windriver.com>
	<CAGws1TsrdgjaOfi80PXNadBDmYuzV75P7gdGJJQ3tUVokWiRpA@mail.gmail.com>
	<4FE9C097.60400@windriver.com>
	<CAGws1TtBH8wvXAL9KDaA1EAE_hb-Lxv32EkpgPyem1fyP5U2ZA@mail.gmail.com>
	<4FE9D6CB.1080800@windriver.com>
	<CAGws1Tt-UuLbVt0gqwV_v9H0oxWhe26tEG73y5w6TY1WE8VRgg@mail.gmail.com>
	<4FEDB1DA.1040504@windriver.com>
	<CAGws1TtREZg6Fa2+KKcshRHP-XJz372NkYMZ2jWM5m7vxoVrfg@mail.gmail.com>
In-Reply-To: <CAGws1TtREZg6Fa2+KKcshRHP-XJz372NkYMZ2jWM5m7vxoVrfg@mail.gmail.com>
Cc: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Re: BSP for taskit stamp9g20
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
X-List-Received-Date: Fri, 29 Jun 2012 17:20:47 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-06-29 11:08 AM, Markus Hubig wrote:
> On Fri, Jun 29, 2012 at 3:47 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com>  wrote:
>>
>> On 12-06-29 09:34 AM, Markus Hubig wrote:
>>>
>>> I guess the config variables inside features_not_found.txt are the one
>>> I need to include into
>>> the stamp9g20.cfg, stamp9g20-non_hardware.cfg files? (Ok except the
>>> ones that get enabled
>>
>> I wouldn't say that, was your input .config a minimal defconfig ?
>
> Hmm yes (or no) it's the .config file that gets created with
> make ARCH=arm stamp9g20_defconfig. I doubt this is minimal,
> but that's the only reference I have.
>
> Uhh, I found something more minimal:
>
> linux-yocto-3.2-work/arch/arm/configs/stamp9g20_defconfig
>
> maybe this is what I need? (just 129 lines ;-)

At times .. smaller is better, at least it's less to sort in this case.
Plus it lets the default yocto kernel policy make it through the the
.config without any intervention required.

>
>> You really don't need to list option in your BSPs configuration that
>> are not already defined, are not hardware and are the default
>> selection of the kernel already.
>
> Hmm ok ... I'll put my BSP repo online later today and maybe you can
> take a quick look if it's ok? This would be really helpfull! ;-)

I can definitely have a look, I've reviewed several hundred of these
over the years .. so I know what to look for :)

>
>> There are also the on-target scripts and techniques for streamling
>> your configuration that can result in a smaller input .config that you'd
>> feed to any process for streamlining a board's configuration.
>>
>>> by some kernel dependency stuff ... but how to figure out this?)
>>>
>>> Is there a better way to go? Maybe one where you don't have to have
>>> magical powers? ;-)
>>
>> There are few things that can help here:
>>
>>   - I've just revived a script that takes a defconfig that has been
>>     fed to the kernel auditing subsystem and breaks it apart into the
>>     options that you really do or don't need in your BSP config
>
> Oh I would really like to try this! This would be really helpful for me,
> and I think there are a lot of people out there who have a working
> kernel .config file (like I do) and are looking for an easy way to
> include this into a BSP. And the most relevant information one needs
> to do so are (IMHO):
>
> 1. What config options can I ignore because there are handled by yocto.
> 2. What config options can I ignore because there are set by dependencies.
> 3. What config options do I absolutely have to set.

Agreed, and I'm working to address this with some scripts that both
work on the config, and can report the policy options clearly. The script
is quite raw at the moment, and needs work, but it is better than
nothing.

>
>>   - A lot of work on kernel configuration updating and policy has
>>     happened in the 3.4 kernel, and will be part of yocto 1.3. As part
>>     of that, the policy options (what you inherit), will be clear, or
>>     discoverable by script, as will optional and hardware configuration
>>     items.
>
> I wish I could have this now ... looking forward to it!
>
>>   - there is a kernel-features.rc file that is part of the meta branch
>>     that will be further exposed. It lists all of the configuration
>>     fragments, with a description and whether or not they can be
>>     optionally included.
>>
>> The end goal is that a developer / BSP that wants a quick bootstrap on
>> top of the existing configuration can just focus on the options that
>> make their board work and initially not be concerned with those software/
>> policy option .. until you get into a tuning phase on a BSP. Having
>> visibility and some scripts around this is part of the implementation
>> of that goal.
>
> Thank you for this explanation!

No problem, it is this sort of thing that shows where the gaps are, and
where we should spend time improving things.

Cheers,

Bruce

>
> - Markus
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


