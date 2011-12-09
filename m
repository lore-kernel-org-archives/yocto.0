Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A3EAE00303
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 11:38:10 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Dec 2011 11:38:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="85521742"
Received: from unknown (HELO [10.255.13.9]) ([10.255.13.9])
	by orsmga002.jf.intel.com with ESMTP; 09 Dec 2011 11:38:09 -0800
Message-ID: <4EE263A1.4080604@linux.intel.com>
Date: Fri, 09 Dec 2011 11:38:09 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Sathishkumar Duraisamy <bewithsathish@gmail.com>
References: <CAJV8fDYuV2Hb3jdU25prLoW5-CxFFH0tWvmMUWGfwrqdNJx3+w@mail.gmail.com>
	<4EE132C5.6040007@linux.intel.com>
	<CANJvwR-GVN+=JaS29oxmGM6mr-D6ncv+vsyVT2OaT+vOEaU8qA@mail.gmail.com>
	<4EE1957E.1060506@linux.intel.com>
	<CANJvwR9dvuxk8Mz_67igs2cge5LY=mi4PnnaKocQSmPF3kL95Q@mail.gmail.com>
In-Reply-To: <CANJvwR9dvuxk8Mz_67igs2cge5LY=mi4PnnaKocQSmPF3kL95Q@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: HOB usage
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
X-List-Received-Date: Fri, 09 Dec 2011 19:38:10 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 08/12/11 21:07, Sathishkumar Duraisamy wrote:
> On Fri, Dec 9, 2011 at 10:28 AM, Joshua Lock <josh@linux.intel.com> wrote:
>> On 08/12/11 20:52, Sathishkumar Duraisamy wrote:
>>> Hi,
>>>
>>> I migrating from Openembedded to yocto project and using Beagleboard
>>> as playground.
>>>
>>> On Fri, Dec 9, 2011 at 3:27 AM, Joshua Lock <josh@linux.intel.com> wrote:
>>>>
>>>> On 05/12/11 10:35, madeeha javed wrote:
>>>>> I an using Yocto Edison. My machine configuration is beagleboard. And
>>>>> when I launch hob and Bake. I get a message that Output Image Type is
>>>>> not set.When I Edit-> Preferences, I see that jffs2 and tar.bz2 are
>>>>> set. And even if I select a different type, the message keeps is
>>>>> there.
>>>>
>>> I too faced similar problem for hob.
>>>
>>>> Madeeha,
>>>>
>>>> I'm not able to replicate this issue. Have you modified any of the
>>>> configuration files by hand? The three key files in build/conf are
>>>> hob-post.conf, hob-pre.conf, local.conf
>>>
>>> Please find these files in the attachment.

Nothing is jumping out here. Interesting.

Would you be willing to file a bug at bugzilla.yoctoproject.org where we
can track and resolve this issue?

Could you provide information on what MACHINE you're building for and
any custom configuration files?
For example if this is a machine which isn't in OE-Core/Yocto it'd be
useful to have a look at the machine.conf

Further can you share in that report the method you use to start the Hob
GUI, i.e. wrapper script or some other invocation.

Thanks,
Joshua

-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

