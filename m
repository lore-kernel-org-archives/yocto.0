Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99361E0047F
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 10:38:31 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r0FIcScP020747
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 15 Jan 2013 10:38:28 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Tue, 15 Jan 2013 10:38:28 -0800
Message-ID: <50F5A221.2070209@windriver.com>
Date: Tue, 15 Jan 2013 13:38:25 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Patrick Turley <PatrickTurley@gamestop.com>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
	<50F5992C.9070705@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D97A@GV1HQPEX03.babgsetc.pvt>
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C35D97A@GV1HQPEX03.babgsetc.pvt>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>, Brian Lloyd <blloyd@familyhonor.net>
Subject: Re: Build external module against Yocto kernel
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
X-List-Received-Date: Tue, 15 Jan 2013 18:38:31 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-01-15 01:26 PM, Patrick Turley wrote:
> On Jan 15, 2013, at 12:00 PM, Bruce Ashfield <bruce.ashfield@windriver.com>
>   wrote:
>
>> On 13-01-15 12:54 PM, Patrick Turley wrote:
>>> Thank you for directing me toward that documentation. As it happens, I
>>> have already read that, and it doesn't apply.
>>
>> There are ways to do this, your requirement is the same as the on-target
>> module building requirement. Have enough of the kernel source packaged
>> to build modules on the target, after it has booted.
>
> Well, I still want to cross-compile them, but I see your point.
>
>> The trick is packaging things properly to not get binary/target elements
>> in the SDK/native packages, and to package just enough for the build. But
>> the issues have been explored and there was a plan. I know that Darren
>> (cc'd) has looked into this more than I have recently.
>>
>> I can't locate the bugzilla entries on this at the moment, but I recall
>> that some parts were still missing, but may be addressed in yocto 1.4,
>> when I find the bug numbers, I'll have a better idea.
>
> As I expected, someone else has already thought about this. This isn't the most common approach so it makes sense that it's been a lower priority. The good news for me is that I know I'm not missing something, so I can stop looking for it.

I finally found the entries that I was recalling earlier. They are:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=241
https://bugzilla.yoctoproject.org/show_bug.cgi?id=1614
https://bugzilla.yoctoproject.org/show_bug.cgi?id=2968

1614 and 2968 are the most interesting for what you are asking.

As you can see the net result of those bugs is that you can get the
right parts of the kernel tree in SDK packages, since they include
dev packages, and with what is currently in kernel-dev .. it should
be enough to build against in the SDK (perhaps with just the LDFLAGS
tweaks mentioned in the other thread). The sources should be part
of the sysroot, and hence available when that is packaged for use
outside of bitbake/yocto.

If you aren't seeing kernel-dev in the SDK image, it might be that
TOOLCHAIN_TARGET_TASK doesn't have kernel-dev by default, or something
else is different in the SDK that is being generated in your testing.

I'm only speculating about what might be missing, since I'm not 100%
familiar with the SDK, but perhaps Jessica or others can chime in if
I've led you astray :)

Cheers,

Bruce


>


