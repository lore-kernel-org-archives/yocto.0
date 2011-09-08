Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C48B3E012AA
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2011 09:21:53 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 Sep 2011 09:21:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,351,1312182000"; d="scan'208";a="50607335"
Received: from unknown (HELO [10.255.14.148]) ([10.255.14.148])
	by fmsmga002.fm.intel.com with ESMTP; 08 Sep 2011 09:21:53 -0700
Message-ID: <4E68EBA0.7020203@linux.intel.com>
Date: Thu, 08 Sep 2011 09:21:52 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0) Gecko/20110816 Thunderbird/6.0
MIME-Version: 1.0
To: Darren Hart <darren.hart@intel.com>
References: <CAHrDPkrjfG7A-78tkL1qmaBRab7=tbNKqooqjQ5Aw_ednMD9cg@mail.gmail.com>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A652@orsmsx501.amr.corp.intel.com>
	<CA+T6QPmfbrMmWKP_-jamDxEvQjRwvd4vPxoouGpE2ZvvH2x13A@mail.gmail.com>
	<4E68EB42.90304@intel.com>
In-Reply-To: <4E68EB42.90304@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 1.1 Beta Questions
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
X-List-Received-Date: Thu, 08 Sep 2011 16:21:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/08/2011 09:20 AM, Darren Hart wrote:
> On 09/07/2011 05:41 AM, Jason Kridner wrote:
>> Isn't bitbake supposed to be smart enough to discover and use 'screen'
>> instead now?
>
> It depends on your setting in local.conf
>
> TERMCMD = "${SCREEN_TERMCMD}"
> TERMCMDRUN = "${SCREEN_TERMCMDRUN}"
>
Actually for devshell I think it's OE_TERMINAL="screen", Chris L. was 
going to do a write up on this I think

Sau!

>
> --
> Darren
>
>>
>> On Tue, Sep 6, 2011 at 9:07 PM, Stewart, David C
>> <david.c.stewart@intel.com>  wrote:
>>> Yeah, I ran into the same thing, Brian. Installing xterm is missing from the
>>> quickstart and the beta instructions. Sorry about that.
>>>
>>>
>>> Sent from my Blackberry
>>>
>>> From: Brian Duffy [mailto:brduffy@gmail.com]
>>> Sent: Tuesday, September 06, 2011 04:51 PM
>>> To: Osier-mixon, Jeffrey; yocto@yoctoproject.org<yocto@yoctoproject.org>
>>> Subject: Re: [yocto] Yocto 1.1 Beta Questions
>>>
>>> Okay, so it turns out that I had already downloaded what I needed with the
>>> instructions from the latest blog post for the beta release. It specifically
>>> mentions certain command to replace from the quick start guide. So I went
>>> into the "oe-beta" directory and ran . ./oe-init-build-env ~/my-build and
>>> that set up my environment variables. When I ran bitbake core-image-minimal
>>> I got an error stating that xterm was not installed. That might be something
>>> to include in the quick start section of things to install first. Anyway, it
>>> seems to be happily building a minimal linux distro for the emulator to run.
>>> I'll let you know if it works out.
>>> thnx
>>> Brian
>>>
>>> On Tue, Sep 6, 2011 at 3:28 PM, Osier-mixon, Jeffrey
>>> <jeffrey.osier-mixon@intel.com>  wrote:
>>>>
>>>> One more thing - if you prefer a tarball to git (easier on some corporate
>>>> networks) the process is the same, just un-tar the tarball into a working
>>>> directory and cd into the poky subdir and go from there. The tarball should
>>>> be the latest stable release.
>>>>
>>>> On Tue, Sep 6, 2011 at 12:27 PM, Osier-mixon, Jeffrey
>>>> <jeffrey.osier-mixon@intel.com>  wrote:
>>>>>
>>>>> Hi Brian, sorry for the delay.
>>>>> If you download the poky tarball or use git to grab it and then follow
>>>>> the instructions on the quick-start, the tools should build automatically.
>>>>>   In a nutshell, try this:
>>>>> git clone git://git.yoctoproject.org/poky.git
>>>>> cd poky
>>>>> . ./oe-core-build-env
>>>>> [that should put you into a build directory]
>>>>> vi conf/local.conf  [set at least MACHINE, instructions in the file]
>>>>> bitbake core-minimal
>>>>> I hope this helps!  I'm on IRC as Jefro or available by email, let me
>>>>> know if I can help at all.
>>>>>
>>>>> On Sat, Sep 3, 2011 at 5:52 PM, Brian Duffy<brduffy@gmail.com>  wrote:
>>>>>>
>>>>>> Thanks for the input Jeff. I have not downloaded the tools yet. I'll
>>>>>> probably download the tarball since I don't have much experience with git.
>>>>>> I'll set the bbpath in local.conf and uninstall bitbake from the package
>>>>>> manager before I do so. I guess building the tools will take care of bitbake
>>>>>> and pseudo. Any help with how to build the tools would be appreciated, but
>>>>>> no hurry, enjoy the holiday!
>>>>>> thnx
>>>>>> Brian
>>>>>>
>>>>>> On Sat, Sep 3, 2011 at 5:50 PM, Osier-mixon, Jeffrey
>>>>>> <jeffrey.osier-mixon@intel.com>  wrote:
>>>>>>>
>>>>>>> Hi Brian - both bitbake and pseudo are part of the Yocto toolset. The
>>>>>>> standard bitbake from the package manager on your host is not the correct
>>>>>>> one. Make sure you have set your environment properly by sourcing the
>>>>>>> build-env script, and it should be set correctly.
>>>>>>> As Jason says, set BBPATH in your project directory in conf/local.conf
>>>>>>> How did you download the tools, tarball or git?  I find it easiest to
>>>>>>> do this:
>>>>>>> git clone git://git.yoctoproject.org/poky.git
>>>>>>> Note that responses may be delayed on a US holiday weekend :)
>>>>>>> On Sat, Sep 3, 2011 at 1:48 PM, Jason Kridner
>>>>>>> <jkridner@beagleboard.org>  wrote:
>>>>>>>>
>>>>>>>> On Sat, Sep 3, 2011 at 2:43 PM, Brian Duffy<brduffy@gmail.com>  wrote:
>>>>>>>>> Hi Yocto group. I am new to Yocto. I followed the starters guide and
>>>>>>>>> When
>>>>>>>>> running bitbake I get some errors. first it complains that pseudo is
>>>>>>>>> not
>>>>>>>>> available but required, and then it complains that bbpath is not
>>>>>>>>> set. What
>>>>>>>>> is pseudo?
>>>>>>>>
>>>>>>>> Google should have helped you with this question:
>>>>>>>> http://www.yoctoproject.org/projects/pseudo.
>>>>>>>>
>>>>>>>> I believe the primary purpose is to be able to create files with root
>>>>>>>> ownership without root access.  This is critical for building your
>>>>>>>> file system.
>>>>>>>>
>>>>>>>>> I have sudo installed and setup to work for me, but I don't know
>>>>>>>>> what pseudo is. Also, bitbake was not installed on my fresh install
>>>>>>>>> of
>>>>>>>>> Fedora 15 so I installed it through the package manager.
>>>>>>>>
>>>>>>>> I doubt you want to do that, but I don't see anything in the
>>>>>>>> instructions provided to tell you where to get it either.
>>>>>>>>
>>>>>>>>> I guess that was
>>>>>>>>> not included in the packages from the getting started guide. Where
>>>>>>>>> do I set
>>>>>>>>> the bbpath?
>>>>>>>>
>>>>>>>> Did you edit conf/local.conf?
>>>>>>>>
>>>>>>>>> I followed the getting started guide and replaced the
>>>>>>>>> appropriate commands with the ones from Davids blog post for the
>>>>>>>>> latest
>>>>>>>>> release.
>>>>>>>>>
>>>>>>>>> thnx
>>>>>>>>> Brian
>>>>>>>>> --
>>>>>>>>> Duff
>>>>>>>>>
>>>>>>>>> _______________________________________________
>>>>>>>>> yocto mailing list
>>>>>>>>> yocto@yoctoproject.org
>>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>>>
>>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> yocto mailing list
>>>>>>>> yocto@yoctoproject.org
>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> --
>>>>>>> Jeff Osier-Mixon http://jefro.net/blog
>>>>>>> Yocto Project Community Manager @Intel http://yoctoproject.org
>>>>>>
>>>>>>
>>>>>>
>>>>>> --
>>>>>> Duff
>>>>>
>>>>>
>>>>>
>>>>> --
>>>>> Jeff Osier-Mixon http://jefro.net/blog
>>>>> Yocto Project Community Manager @Intel http://yoctoproject.org
>>>>
>>>>
>>>>
>>>> --
>>>> Jeff Osier-Mixon http://jefro.net/blog
>>>> Yocto Project Community Manager @Intel http://yoctoproject.org
>>>
>>>
>>>
>>> --
>>> Duff
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

